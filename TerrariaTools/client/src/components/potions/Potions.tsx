import { Potion, PotionCategoryId } from "../../modules/types/potion"
import { ChangeEvent, useCallback, useEffect, useState, useRef } from "react"
import PotionCard from "./PotionCard"
import { getPotions } from "../../modules/database/potionsManager"
import { Button, Modal, ModalBody, ModalFooter, ModalHeader } from "reactstrap"
import "./potions.css"
import Searchbar from "../../helpers/Searchbar"
import Select from "../../helpers/Select"
import { getEnumValues } from "../../modules/functions/getEnumValues"
import { calculatePotionIngredients } from "../../modules/functions/calculatePotionIngredients"
import copyToClipboard from "../../modules/functions/copyToClipboard"

function Potions() {
    const [potions, setPotions] = useState<Potion[]>([]),
        [filteredPotions, setFilteredPotions] = useState<Potion[]>([]),
        [potionCategoryId, setPotionCategoryId] = useState<PotionCategoryId | 0>(0),
        [onlyHardmode, setOnlyHardmode] = useState<Boolean | null>(null),
        [searchValue, setSearchValue] = useState(""),
        [showSidebar, setShowSidebar] = useState(false),
        [showModal, setShowModal] = useState(false),
        clipboardText = useRef("")

    const forceRender = useCallback(() => {
        setPotions([...potions])
    }, [potions])

    const resetState = useCallback(() => {
        potions.forEach(potion => potion.setAmount(0))

        setSearchValue("")
        setPotionCategoryId(0)
        setOnlyHardmode(null)
        setShowSidebar(false)
    }, [potions])

    const getPotionData = useCallback((potions: Potion[], returnType: "JSX" | "plainText"): JSX.Element[] | string => {
        if (returnType === "JSX") {
            return calculatePotionIngredients(potions)
                .sort((a, b) => b.amount - a.amount)
                .map((ingredient, i, arr) => {
                    if (ingredient.group) {
                        const matchingGroupIngredients = arr.filter(ing => ing.group === ingredient.group)

                        if (matchingGroupIngredients[0] === ingredient) return <></>;

                        return (
                            <div>
                                {ingredient.amount}x {matchingGroupIngredients.map(ing => ing.material.name).join(" or ")}
                                {matchingGroupIngredients.map(ing => <img className="potion--inline-img" src={ing.material.imageUrl} alt="" />)}
                            </div>
                        )
                    }

                    return (
                        <div>
                            {ingredient.amount}x {ingredient.material.name}
                            <img className="potion--inline-img" src={ingredient.material.imageUrl} alt="" />
                        </div>
                    )
                })
        }

        let text = ""

        calculatePotionIngredients(potions)
            .sort((a, b) => b.amount - a.amount)
            .forEach((ingredient, i, arr) => {
                if (ingredient.group) {
                    const matchingGroupIngredients = arr.filter(ing => ing.group === ingredient.group)

                    if (matchingGroupIngredients[0] === ingredient) return;

                    text
                        ? text = `${text}
${ingredient.amount}x ${matchingGroupIngredients.map(ing => ing.material.name).join(" or ")}`
                        : text = `${ingredient.amount}x ${matchingGroupIngredients.map(ing => ing.material.name).join(" or ")}`

                    return;
                }

                text
                    ? text = `${text}
${ingredient.amount}x ${ingredient.material.name}`
                    : text = `${ingredient.amount}x ${ingredient.material.name}`
            })

        return text
    }, [])

    /**
     * @param name Text to filter potions by name
     * @param categoryId PotionCategoryId or 0 to filter potions by
     * @updates filteredPotions state
     */
    const filterPotions = useCallback((name: string, categoryId: PotionCategoryId | 0, onlyHardmode: Boolean | null): void => {
        let potionArray: Potion[] = [...potions]

        potionArray = potionArray.filter(potion => potion.name.toLowerCase().includes(name.toLowerCase().trim()))

        if (onlyHardmode !== null) {
            potionArray = potionArray.filter(potion => potion.getRecipesForOne().every(recipe => onlyHardmode ? recipe.potionIngredients.some(ingredient => ingredient.ingredient?.isHardmode) : recipe.potionIngredients.every(ingredient => !ingredient.ingredient?.isHardmode)))
        }

        setFilteredPotions(categoryId !== 0 ? potionArray.filter(potion => potion.categoryId === categoryId) : potionArray)
    }, [potions])

    //! Initial data fetching
    useEffect(() => {
        getPotions().then(data => {
            const basePotions = data.filter(potion => potion.potionRecipes.length).map(potion => new Potion({ ...potion }))
            setPotions(basePotions)
            setFilteredPotions(basePotions)
        })
    }, [])

    //! Filter potions
    useEffect(() => {
        filterPotions(searchValue, potionCategoryId, onlyHardmode)
    }, [searchValue, potionCategoryId, onlyHardmode, filterPotions])

    //! Check whether or not to show the sidebar
    useEffect(() => {
        const selectedPotions: Potion[] = potions.filter(potion => potion.getAmount() > 0)

        setShowSidebar(selectedPotions.length > 0)
    }, [potions])

    return (
        <section id="potions--section">
            <h2>Potions</h2>
            <section id="potions-filters--section">
                <Searchbar
                    label="Search for Potions"
                    onChange={(e: ChangeEvent<HTMLInputElement>) => setSearchValue(e.target.value)}
                    value={searchValue} />
                <Select
                    onChange={(e: ChangeEvent<HTMLSelectElement>) => setPotionCategoryId(parseInt(e.target.value))}
                    values={[{ label: "All", value: "0" }, ...getEnumValues(PotionCategoryId)]}
                    name="select"
                    label="Category"
                    value={potionCategoryId} />
                <Select
                    onChange={(e: ChangeEvent<HTMLSelectElement>) => setOnlyHardmode(e.target.value === "" ? null : e.target.value === "1")}
                    values={[{ label: "All", value: "" }, { label: "Pre-Hardmode", value: "0" }, { label: "Hardmode", value: "1" }]}
                    name="select"
                    label="Game Stage"
                    value={onlyHardmode === null ? "" : onlyHardmode ? "1" : "0"}
                />
                <Button onClick={resetState}>Reset</Button>
            </section>
            <article id={showSidebar ? "potions--article-left" : "potions--article-center"}>
                {
                    filteredPotions.map(potion => <PotionCard potion={potion} forceRenderParent={forceRender} />)
                }
            </article>
            {
                showSidebar &&
                <aside id="potions--aside" /* sidebar */ >
                    <section id="potions--aside-list">
                        {potions.map(potion =>
                            potion.getAmount() > 0
                                ? (
                                    <div>
                                        <img className="potion--inline-img" src={potion.imageUrl} alt="" />
                                        {potion.name}: {potion.getAmountCrafted()}x
                                    </div>
                                ) : <></>
                        )}
                    </section>
                    <Button
                        color="primary"
                        onClick={() => {
                            setShowModal(!showModal)
                            clipboardText.current = getPotionData(potions, "plainText") as string
                        }}
                    >
                        Calculate Ingredients
                    </Button>
                </aside>
            }
            <Modal isOpen={showModal} toggle={() => setShowModal(!showModal)}>
                <ModalHeader toggle={() => setShowModal(!showModal)}>Ingredients</ModalHeader>
                <ModalBody>
                    {getPotionData(potions, "JSX")}
                </ModalBody>
                <ModalFooter>
                    <Button onClick={() => { copyToClipboard(clipboardText.current); clipboardText.current = "" }}>Copy</Button>
                    <Button onClick={() => setShowModal(!showModal)}>Close</Button>
                </ModalFooter>
            </Modal>
        </section>
    )
}

export default Potions