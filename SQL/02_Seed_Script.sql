use TerrariaTools
GO

INSERT INTO dbo.PotionCategory ([Label]) 
	VALUES	('Buff'),
			('Utility'),
			('Luck'),
			('Fishing'),
			('SpawnRates'),
			('Mining'),
			('Flask'),
			('Healing'),
			('Mana'),
			('Misc')


INSERT INTO dbo.CraftingStation ([Name], ImageUrl)
	VALUES	('Placed Bottle/Alchemy Table', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/4/43/Alchemy_Table.png'),
			('Imbuing Station', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/6/6a/Imbuing_Station.png')


INSERT INTO dbo.Material ([Name], ImageUrl, IsHardmode)
	VALUES	('Bottled Water', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/1/16/Bottled_Water.png', 0),
			('Double Cod', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/1/1d/Double_Cod.png', 0),
			('Moonglow', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/5/5b/Moonglow.png', 0),
			('Daybloom', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/0/02/Daybloom.png', 0),
			('Lens', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/a/ae/Lens.png', 0),
			('Deathweed', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/c/c8/Deathweed.png', 0),
			('Vertebra', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/6/67/Vertebra.png', 0),
			('Rotten Chunk', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/0/04/Rotten_Chunk.png', 0),
			('Blinkroot', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/7/7c/Blinkroot.png', 0),
			('Shiverthorn', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/2/23/Shiverthorn.png', 0),
			('Damselfish', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/a/a6/Damselfish.png', 0),
			('Amber', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/0/01/Amber.png', 0),
			('Waterleaf', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/4/49/Waterleaf.png', 0),
			('Cobweb', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/4/48/Cobweb.png', 0),
			('Armored Cavefish', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/5/50/Armored_Cavefish.png', 0),
			('Feather', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/3/33/Feather.png', 0),
			('Crispy Honey Block', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/7/7e/Crispy_Honey_Block.png', 0),
			('Coral', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/b/b1/Coral.png', 0),
			('Fireblossom', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/9/92/Fireblossom.png', 0),
			('Ladybug', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/3/38/Ladybug.png', 0),
			('Pink Pearl', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/d/d2/Pink_Pearl.png', 0),
			('Crimson Tigerfish', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/c/cc/Crimson_Tigerfish.png', 0),
			('Shark Fin', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/9/9b/Shark_Fin.png', 0),
			('Flarefin Koi', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/f/f8/Flarefin_Koi.png', 0),
			('Obsidifish', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/5/5f/Obsidifish.png', 0),
			('Iron Ore', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/8/87/Iron_Ore.png', 0),
			('Lead ore', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/2/2e/Lead_Ore.png', 0),
			('White Pearl', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/e/e2/White_Pearl.png', 0),
			('Prismite', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/b/bf/Prismite.png', 1),
			('Princess Fish', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/6/69/Princess_Fish.png', 1),
			('Black Pearl', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/4/4c/Black_Pearl.png', 0),
			('Fallen Star', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/9/9c/Fallen_Star.png', 0),
			('Antlion Mandible', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/b/be/Antlion_Mandible.png', 0),
			('Obsidian', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/2/23/Obsidian.png', 0),
			('Hemophiranha', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/9/9d/Hemopiranha.png', 0),
			('Mushroom', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/8/8c/Mushroom.png', 0),
			('Glowing Mushroom', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/1/1c/Glowing_Mushroom.png', 0),
			('Gold Ore', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/f/f7/Gold_Ore.png', 0),
			('Platinum Ore', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/b/b0/Platinum_Ore.png', 0),
			('Stinkfish', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/2/2d/Stinkfish.png', 0),
			('Variegated Lardfish', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/a/a7/Variegated_Lardfish.png', 0),
			('Cactus', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/a/a6/Cactus.png', 0),
			('Worm Tooth', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/2/23/Worm_Tooth.png', 0),
			('Stinger', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/b/b6/Stinger.png', 0),
			('Bone', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/2/2c/Bone.png', 0),
			('Frost Minnow', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/0/06/Frost_Minnow.png', 0),
			('EbonKoi', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/a/ac/Ebonkoi.png', 0),
			('Cursed Flame', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/1/19/Cursed_Flame.png', 1),
			('Hellstone', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/8/8f/Hellstone.png', 0),
			('Gold Dust', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/4/43/Gold_Dust.png', 1),
			('Ichor', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/4/47/Ichor.png', 1),
			('Nanites', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/a/a8/Nanites.png', 1),
			('Confetti', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/7/72/Confetti.png', 0),
			('Vial of Venom', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/3/30/Vial_of_Venom.png', 1),
			('Specular Fish', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/1/10/Specular_Fish.png', 0),
			('Pixie Dust', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/6/65/Pixie_Dust.png', 1),
			('Crystal Shard', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/1/19/Crystal_Shard.png', 1),
			('Gel', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/3/3f/Gel.png', 0),
			('Nebula Fragment', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/b/b0/Nebula_Fragment.png', 1),
			('Solar Fragment', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/2/26/Solar_Fragment.png', 1),
			('Stardust Fragment', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/e/ec/Stardust_Fragment.png', 1),
			('Vortex Fragment', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/e/e0/Vortex_Fragment.png', 1),
			('Unicorn Horn', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/6/67/Unicorn_Horn.png', 1),
			('Bottle', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/5/5d/Bottle.png', 0)
		

INSERT INTO dbo.Potion ([Name], ImageUrl, PotionCategoryId)
	VALUES	('Ammo Reservation Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/9/96/Ammo_Reservation_Potion.png', 1),
			('Archery Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/9/9f/Archery_Potion.png', 1),
			('Battle Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/7/7c/Battle_Potion.png', 5),
			('Builder Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/1/1c/Builder_Potion.png', 2),
			('Calming Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/d/d8/Calming_Potion.png', 5),
			('Crate Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/f/f9/Crate_Potion.png', 4),
			('Dangersense Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/f/f3/Dangersense_Potion.png', 2),
			('Endurance Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/9/93/Endurance_Potion.png', 1),
			('Featherfall Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/7/7b/Featherfall_Potion.png', 2),
			('Fishing Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/f/fa/Fishing_Potion.png', 4),
			('Flipper Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/6/64/Flipper_Potion.png', 1),
			('Gills Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/3/3d/Gills_Potion.png', 2),
			('Gravitation Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/0/09/Gravitation_Potion.png', 2),
			('Greater Luck Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/3/3b/Greater_Luck_Potion.png', 3),
			('Heartreach Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/3/3c/Heartreach_Potion.png', 1),
			('Hunter Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/7/72/Hunter_Potion.png', 2),
			('Inferno Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/e/e5/Inferno_Potion.png', 1),
			('Invisibility Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/c/c1/Invisibility_Potion.png', 5),
			('Ironskin Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/9/9f/Ironskin_Potion.png', 1),
			('Lesser Luck Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/7/7b/Lesser_Luck_Potion.png', 3),
			('Lifeforce Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/2/25/Lifeforce_Potion.png', 1),
			('Love Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/3/3b/Love_Potion.png', 10),
			('Luck Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/4/44/Luck_Potion.png', 3),
			('Magic Power Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/2/2c/Magic_Power_Potion.png', 1),
			('Mana Regeneration Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/c/cc/Mana_Regeneration_Potion.png', 1),
			('Mining Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/d/d5/Mining_Potion.png', 6),
			('Night Owl Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/2/20/Night_Owl_Potion.png', 2),
			('Obsidian Skin Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/c/c8/Obsidian_Skin_Potion.png', 2),
			('Rage Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/e/ec/Rage_Potion.png', 1),
			('Regeneration Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/2/2d/Regeneration_Potion.png', 1),
			('Shine Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/8/83/Shine_Potion.png', 2),
			('Sonar Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/c/c8/Sonar_Potion.png', 4),
			('Spelunker Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/0/03/Spelunker_Potion.png', 6),
			('Stink Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/2/21/Stink_Potion.png', 10),
			('Summoning Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/9/91/Summoning_Potion.png', 1),
			('Swiftness Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/3/3f/Swiftness_Potion.png', 1),
			('Thorns Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/1/1c/Thorns_Potion.png', 1),
			('Titan Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/5/59/Titan_Potion.png', 1),
			('Warmth Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/3/31/Warmth_Potion.png', 10),
			('Water Walking Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/2/21/Water_Walking_Potion.png', 2),
			('Wrath Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/d/d7/Wrath_Potion.png', 1),
			('Wormhole Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/3/3b/Wormhole_Potion.png', 2),
			('Recall Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/6/67/Recall_Potion.png', 10),
			('Flask of Cursed Flames', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/0/08/Flask_of_Cursed_Flames.png', 7),
			('Flask of Fire', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/7/77/Flask_of_Fire.png', 7),
			('Flask of Gold', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/9/92/Flask_of_Gold.png', 7),
			('Flask of Ichor', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/7/71/Flask_of_Ichor.png', 7),
			('Flask of Nanites', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/6/64/Flask_of_Nanites.png', 7),
			('Flask of Party', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/9/9f/Flask_of_Party.png', 7),
			('Flask of Poison', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/c/cd/Flask_of_Poison.png', 7),
			('Flask of Venom', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/f/f0/Flask_of_Venom.png', 7),
			('Lesser Healing Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/e/e1/Lesser_Healing_Potion.png', 8),
			('Healing Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/4/47/Healing_Potion.png', 8),
			('Greater Healing Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/a/a5/Greater_Healing_Potion.png', 8),
			('Super Healing Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/0/00/Super_Healing_Potion.png', 8),
			('Lesser Mana Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/2/2e/Lesser_Mana_Potion.png', 9),
			('Mana Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/8/80/Mana_Potion.png', 9),
			('Greater Mana Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/c/c6/Greater_Mana_Potion.png', 9),
			('Super Mana Potion', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/4/43/Super_Mana_Potion.png', 9)
GO


INSERT INTO dbo.PotionRecipe (Amount, PotionId, CraftingStationId)
	VALUES	(1, 1, 1),
			(1, 2, 1),
			(1, 3, 1),
			(1, 3, 1),
			(1, 4, 1),
			(1, 5, 1),
			(1, 6, 1),
			(1, 7, 1),
			(1, 8, 1),
			(1, 9, 1),
			(1, 10, 1),
			(1, 11, 1),
			(1, 12, 1),
			(1, 13, 1),
			(1, 14, 1),
			(1, 15, 1),
			(1, 16, 1),
			(1, 17, 1),
			(1, 18, 1),
			(1, 19, 1),
			(1, 19, 1),
			(1, 20, 1),
			(1, 21, 1),
			(1, 22, 1),
			(1, 23, 1),
			(1, 24, 1),
			(1, 25, 1),
			(1, 26, 1),
			(1, 27, 1),
			(1, 28, 1),
			(1, 29, 1),
			(1, 30, 1), 
			(1, 31, 1),
			(1, 32, 1),
			(1, 33, 1),
			(1, 33, 1),
			(1, 34, 1),
			(1, 35, 1),
			(1, 36, 1),
			(1, 37, 1),
			(1, 38, 1),
			(1, 39, 1),
			(1, 40, 1),
			(1, 41, 1), -- Last buff potion (Wrath)
			(3, 42, 1), -- Wormhole
			(1, 43, 1), -- Recall
			(1, 44, 2),
			(1, 45, 2),
			(1, 46, 2),
			(1, 47, 2),
			(1, 48, 2),
			(1, 49, 2),
			(1, 50, 2),
			(1, 51, 2), -- Last flask (Venom)
			(2, 52, 1),
			(1, 53, 1),
			(3, 54, 1),
			(4, 55, 1), -- Last Healing (Super)
			(1, 57, 1),
			(15, 59, 1) -- Last Mana (Super)
GO


INSERT INTO dbo.PotionIngredient (Amount, IngredientId, PotionId, PotionRecipeId)
	VALUES	(1, 1, 1, 1),
			(1, 2, NULL, 1),
			(1, 3, NULL, 1),
			(1, 1, NULL, 2),
			(1, 4, NULL, 2),
			(1, 5, NULL, 2),
			(1, 1, NULL, 3),
			(1, 6, NULL, 3),
			(1, 7, NULL, 3),
			(1, 1, NULL, 4),
			(1, 6, NULL, 4),
			(1, 8, NULL, 4),
			(1, 1, NULL, 5),
			(1, 9, NULL, 5),
			(1, 10, NULL, 5),
			(1, 3, NULL, 5),
			(1, 1, NULL, 6),
			(1, 11, NULL, 6),
			(1, 4, NULL, 6),
			(1, 1, NULL, 7),
			(1, 12, NULL, 7),
			(1, 3, NULL, 7),
			(1, 10, NULL, 7),
			(1, 13, NULL, 7),
			(1, 1, NULL, 8),
			(1, 10, NULL, 8),
			(10, 14, NULL, 8),
			(1, 1, NULL, 9),
			(1, 15, NULL, 9),
			(1, 9, NULL, 9),
			(1, 1, NULL, 10),
			(1, 4, NULL, 10),
			(1, 9, NULL, 10),
			(1, 16, NULL, 10),
			(1, 1, NULL, 11),
			(1, 17, NULL, 11),
			(1, 13, NULL, 11),
			(1, 1, NULL, 12),
			(1, 10, NULL, 12),
			(1, 13, NULL, 12),
			(1, 1, NULL, 13),
			(1, 13, NULL, 13),
			(1, 18, NULL, 13),
			(1, 1, NULL, 14),
			(1, 19, NULL, 14),
			(1, 6, NULL, 14),
			(1, 9, NULL, 14),
			(1, 16, NULL, 14),
			(1, 1, NULL, 15),
			(1, 13, NULL, 15),
			(1, 20, NULL, 15),
			(1, 21, NULL, 15),
			(1, 1, NULL, 16),
			(1, 22, NULL, 16),
			(1, 4, NULL, 16),
			(1, 1, NULL, 17),
			(1, 4, NULL, 17),
			(1, 9, NULL, 17),
			(1, 23, NULL, 17),
			(1, 1, NULL, 18),
			(1, 24, NULL, 18),
			(2, 25, NULL, 18),
			(1, 19, NULL, 18),
			(1, 1, NULL, 19),
			(1, 9, NULL, 19),
			(1, 3, NULL, 19),
			(1, 1, NULL, 20),
			(1, 4, NULL, 20),
			(1, 26, NULL, 20),
			(1, 1, NULL, 21),
			(1, 4, NULL, 21),
			(1, 27, NULL, 21),
			(1, 1, NULL, 22),
			(1, 13, NULL, 22),
			(1, 20, NULL, 22),
			(1, 28, NULL, 22),
			(1, 1, NULL, 23),
			(1, 29, NULL, 23),
			(1, 3, NULL, 23),
			(1, 10, NULL, 23),
			(1, 13, NULL, 23),
			(1, 1, NULL, 24),
			(1, 30, NULL, 24),
			(1, 10, NULL, 24),
			(1, 1, NULL, 25),
			(1, 13, NULL, 25),
			(1, 20, NULL, 25),
			(1, 31, NULL, 25),
			(1, 1, NULL, 26),
			(1, 3, NULL, 26),
			(1, 6, NULL, 26),
			(1, 32, NULL, 26),
			(1, 1, NULL, 27),
			(1, 3, NULL, 27),
			(1, 4, NULL, 27),
			(1, 32, NULL, 27),
			(1, 1, NULL, 28),
			(1, 33, NULL, 28),
			(1, 9, NULL, 28),
			(1, 1, NULL, 29),
			(1, 4, NULL, 29),
			(1, 9, NULL, 29),
			(1, 1, NULL, 30),
			(1, 19, NULL, 30),
			(1, 13, NULL, 30),
			(1, 34, NULL, 30),
			(1, 1, NULL, 31),
			(1, 35, NULL, 31),
			(1, 6, NULL, 31),
			(1, 1, NULL, 32),
			(1, 4, NULL, 32),
			(1, 36, NULL, 32),
			(1, 1, NULL, 33),
			(1, 4, NULL, 33),
			(1, 37, NULL, 33),
			(1, 1, NULL, 34),
			(1, 13, NULL, 34),
			(1, 18, NULL, 34),
			(1, 1, NULL, 35),
			(1, 9, NULL, 35),
			(1, 3, NULL, 35),
			(1, 38, NULL, 35),
			(1, 1, NULL, 36),
			(1, 9, NULL, 36),
			(1, 3, NULL, 36),
			(1, 39, NULL, 36),
			(1, 1, NULL, 37),
			(1, 40, NULL, 37),
			(1, 6, NULL, 37),
			(1, 1, NULL, 38),
			(1, 41, NULL, 38),
			(1, 3, NULL, 38),
			(1, 1, NULL, 39),
			(1, 9, NULL, 39),
			(1, 42, NULL, 39),
			(1, 1, NULL, 40),
			(1, 6, NULL, 40),
			(1, 42, NULL, 40),
			(1, 1, NULL, 41),
			(1, 45, NULL, 41),
			(1, 6, NULL, 41),
			(1, 10, NULL, 41),
			(1, 1, NULL, 42),
			(1, 46, NULL, 42),
			(1, 10, NULL, 42),
			(1, 1, NULL, 43),
			(1, 13, NULL, 43),
			(1, 23, NULL, 43),
			(1, 1, NULL, 44),
			(1, 47, NULL, 44),
			(1, 6, NULL, 44), -- Last Buff Potion (Wrath)
			(1, 1, NULL, 45),
			(1, 55, NULL, 45),
			(1, 9, NULL, 45),
			(1, 1, NULL, 46),
			(1, 55, NULL, 46),
			(1, 4, NULL, 46), -- Last Recall Potion Ingredient
			(1, 1, NULL, 47),
			(2, 48, NULL, 47),
			(1, 1, NULL, 48),
			(3, 49, NULL, 48),
			(1, 1, NULL, 49),
			(5, 50, NULL, 49),
			(1, 1, NULL, 50),
			(2, 51, NULL, 50),
			(1, 1, NULL, 51),
			(5, 52, NULL, 51),
			(1, 1, NULL, 52),
			(5, 53, NULL, 52),
			(1, 1, NULL, 53),
			(1, 44, NULL, 53),
			(1, 1, NULL, 54),
			(5, 54, NULL, 54), -- Last Flask (Venom)
			(1, 36, NULL, 55),
			(2, 58, NULL, 55),
			(2, 64, NULL, 55),
			(2, NULL, 52, 56),
			(1, 37, NULL, 56),
			(3, 1, NULL, 57),
			(3, 56, NULL, 57),
			(1, 57, NULL, 57),
			(4, NULL, 57, 58),
			(1, 59, NULL, 58),
			(1, 60, NULL, 58),
			(1, 61, NULL, 58),
			(1, 62, NULL, 58), -- Last Healing (Super)
			(2, NULL, 55, 59),
			(1, 37, NULL, 59),
			(15, NULL, 57, 60),
			(1, 32, NULL, 60),
			(3, 57, NULL, 60),
			(1, 63, NULL, 60) -- Last Mana (Super)
