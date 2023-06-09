import { Material } from "../types/material";
import { Potion, PotionIngredient } from "../types/potion";

export interface CombinedIngredient {
    material: Material | Potion,
    amount: number,
    group?: number
}

/**
 * Calculates the ingredients needed to make a list of potions, grouping interchangeable ingredients
 * @param potions List of potions to calculate the ingredients for
 * @returns A list of potionIngredients, amount, and group 
 */
export function calculatePotionIngredients(potions: Potion[]): CombinedIngredient[] {

    let group = 1

    const result: CombinedIngredient[] = []

    potions.forEach(potion => {
        //? Store the amount of crafts in a variable
        const amount = potion.getAmount()

        //? If that variable is <1, no calculations are needed
        if (amount < 1) return;

        //! Check if the potion has a valid recipe
        if (potion.getRecipes().some(recipe => recipe.potionIngredients.some(ingredient => !ingredient.potion && !ingredient.ingredient))) {
            throw Error("The provided list of Potion[] contains potion(s) without recipe ingredients.")
        }

        //* Store the list of recipes for the potion in a variable 
        const recipes = potion.getRecipes()

        //* Store the list of ingredients in an array 
        const ingredients: PotionIngredient[] = []

        for (const recipe of recipes) {
            recipe.potionIngredients.forEach(ing => {
                if (!ingredients.some(addedIng => (addedIng.ingredientId ?? addedIng.potionId) === (ing.ingredientId ?? ing.potionId))) {
                    ingredients.push(ing)
                }
            })
        }

        //! Loop over each ingredient to store it in the "result" array
        ingredients.forEach(ing => {
            //? Create a variable to check if the ingredient is already among the list of ingredients
            let existingIngredient: CombinedIngredient | undefined = result.find(obj => obj.material.name === (ing.ingredient?.name ?? ing.potion?.name))

            //! Check if the ingredient is present in every recipe for the potion
            const isShared: Boolean = recipes.every(recipe => recipe.potionIngredients.some(x => (x.ingredientId ?? x.potionId) === (ing.ingredientId ?? ing.potionId)))
            //* Add the ingredient to the "result" array or update its amount
            if (typeof existingIngredient === "undefined") {
                const newMaterial: CombinedIngredient = {
                    material: (ing.potion ?? ing.ingredient)!,
                    amount: ing.amount
                }

                if (!isShared) {
                    newMaterial.group = group
                }

                result.push(newMaterial)
            } else {
                existingIngredient.amount += ing.amount
            }
        })

        //! Increase the group # as needed
        if (recipes.length > 1) group++;
    })
    return result
}