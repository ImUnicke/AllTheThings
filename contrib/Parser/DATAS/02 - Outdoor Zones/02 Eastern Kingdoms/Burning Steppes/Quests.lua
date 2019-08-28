---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(13, {	-- Eastern Kingdoms
		m(36, {	-- Burning Steppes
			n(-17, {	-- Quests
				ach(4901, {	-- Burning Steppes Quests
					crit(1, {	-- Preparation
						["sourceQuests"] = {
							28183,	-- Return to Keeshan (alliance)
							28425,	-- Return to Ariok (horde)
						},
					}),
					crit(2, {	-- Annihilation
						["sourceQuests"] = {
							28322,	-- The Spoils of War (alliance)
							28456,	-- The Spoils of War (horde)
						},
					}),
					crit(3, {	-- Infiltration
						["sourceQuests"] = {
							28286,	-- Enough Damage For One Day (alliance)
							28441,	-- Enough Damage For One Day (horde)
						},
					}),
					crit(4, {	-- Anticipation
						["sourceQuests"] = {
							28326,	-- Placing the Pawns (alliance)
							28449,	-- Placing the Pawns (horde)
						},
					}),
				}),
				q(28316, {	-- A Deal With a Dragon
					["qg"] = 48306,	-- John J. Keeshan
					["coord"] = { 73.5, 67.2, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = {
						28313,	-- A Heap of Delicious Worg
						28311,	-- Blackened Ashes
						28312,	-- Latent Demons of the Land
					},
				}),
				q(28448, {	-- A Deal With a Dragon
					["qg"] = 48565,	-- Ariok
					["coord"] = { 54.7, 24.5, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						28445,	-- A Heap of Delicious Worg
						28443,	-- Blackened Ashes
						28444,	-- Latent Demons of the Land
					},
				}),
				q(28318, {	-- A Delivery for Neeralak
					["qg"] = 48307,	-- Colonel Troteman
					["coord"] = { 73.6, 67.1, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 28326 },	-- Placing the Pawns
				}),
				q(28451, {	-- A Delivery for Neeralak
					["qg"] = 48569,	-- Eitrigg
					["coord"] = { 54.6, 24.4, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 28449 },	-- Placing the Pawns
				}),
				q(28317, {	-- A Delivery for Thorg'izog
					["qg"] = 48307,	-- Colonel Troteman
					["coord"] = { 73.6, 67.1, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 28326 },	-- Placing the Pawns
				}),
				q(28450, {	-- A Delivery for Thorg'izog
					["qg"] = 48569,	-- Eitrigg
					["coord"] = { 54.6, 24.4, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 28449 },	-- Placing the Pawns
				}),
				q(28319, {	-- A Delivery for Xi'lun
					["qg"] = 48307,	-- Colonel Troteman
					["coord"] = { 73.6, 67.1, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 28326 },	-- Placing the Pawns
				}),
				q(28452, {	-- A Delivery for Xi'lun
					["qg"] = 48569,	-- Eitrigg
					["coord"] = { 54.6, 24.4, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 28449 },	-- Placing the Pawns
				}),
				q(28178, {	-- A Future Project
					["qg"] = 47811,	-- John J. Keeshan
					["coord"] = { 17.2, 52.0, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 28174, 28416 },	-- Burning Vengeance
				}),
				q(28420, {	-- A Future Project
					["qg"] = 48559,	-- Ariok
					["coord"] = { 17.4, 51.6, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 28418 },	-- Burning Vengeance
				}),
				q(28313, {	-- A Heap of Delicious Worg
					["qg"] = 48307,	-- Colonel Troteman
					["coord"] = { 73.6, 67.1, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 28310 },	-- Morgan's Vigil
				}),
				q(28445, {	-- A Heap of Delicious Worg
					["qg"] = 48569,	-- Eitrigg
					["coord"] = { 54.6, 24.4, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 28442 },	-- Flame Crest
				}),
				q(28254, {	-- A Needle in a Hellhole
					["qg"] = 48109,	-- John J. Keeshan
					["coord"] = { 46.3, 46.0, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 28184 },	-- Chiselgrip, Heart of the Steppes
				}),
				q(28427, {	-- A Needle in a Hellhole
					["qg"] = 48568,	-- Eitrigg
					["coord"] = { 44.5, 44.4, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 28426 },	-- Chiselgrip, the Heart of the Steppes
				}),
				q(28202, {	-- A Perfect Costume
					["qg"] = 48001,	-- Thelaron Direneedle
					["coord"] = { 45.4, 46.3, 36 },
					["races"] = { 3, 29 },	-- Dwarf, Void Elf
					["sourceQuests"] = { 28254 },	-- A Needle in a Hellhole
				}),
				q(28203, {	-- A Perfect Costume
					["qg"] = 48001,	-- Thelaron Direneedle
					["coord"] = { 45.4, 46.3, 36 },
					["races"] = { 11, 22 },	-- Draenei, Worgen, Lightforged Draenei
					["sourceQuests"] = { 28254 },	-- A Needle in a Hellhole
				}),
				q(28204, {	-- A Perfect Costume
					["qg"] = 48001,	-- Thelaron Direneedle
					["coord"] = { 45.4, 46.3, 36 },
					["races"] = { 7 },	-- Gnome
					["sourceQuests"] = { 28254 },	-- A Needle in a Hellhole
				}),
				q(28205, {	-- A Perfect Costume
					["qg"] = 48001,	-- Thelaron Direneedle
					["coord"] = { 45.4, 46.3, 36 },
					["races"] = { 4 },	-- Night Elf
					["sourceQuests"] = { 28254 },	-- A Needle in a Hellhole
				}),
				q(28428, {	-- A Perfect Costume
					["qg"] = 48001,	-- Thelaron Direneedle
					["coord"] = { 45.4, 46.3, 36 },
					["races"] = { 2, 5 },	-- Orc, Undead
					["sourceQuests"] = { 28427 },	-- A Needle in a Hellhole
				}),
				q(28429, {	-- A Perfect Costume (NEEDS CONFIRMATION ON HIGHMOUNTAIN TAUREN)
					["qg"] = 48001,	-- Thelaron Direneedle
					["coord"] = { 45.4, 46.3, 36 },
					["races"] = { 6, 26, 28 },	-- Tauren, Pandaren, Highmountain Tauren (UNCONFIRMED)
					["sourceQuests"] = { 28427 },	-- A Needle in a Hellhole
				}),
				q(28430, {	-- A Perfect Costume
					["qg"] = 48001,	-- Thelaron Direneedle
					["coord"] = { 45.4, 46.3, 36 },
					["races"] = { 9 },	-- Goblin
					["sourceQuests"] = { 28427 },	-- A Needle in a Hellhole
				}),
				q(28431, {	-- A Perfect Costume
					["qg"] = 48001,	-- Thelaron Direneedle
					["coord"] = { 45.4, 46.3, 36 },
					["races"] = { 8, 10, 27 },	-- Troll, Blood Elf, Nightborne
					["sourceQuests"] = { 28427 },	-- A Needle in a Hellhole
				}),
				q(4024,  {	-- A Taste of Flame
					["u"] = 40,
					["g"] = {
						un(2, i(12066)),	-- Shaleskin Cape
						un(2, i(12083)),	-- Valconian Sash
						un(2, i(12082)),	-- Wyrmhide Spaulders
					},
				}),
				q(28279, {	-- Abuse of Power
					["qg"] = 48110,	-- Colonel Troteman
					["coord"] = { 46.3, 45.9, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 28266 },	-- Trial by Magma
				}),
				q(28440, {	-- Abuse of Power
					["qg"] = 48568,	-- Eitrigg
					["coord"] = { 44.5, 44.4, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 28438 },	-- Trial by Magma
				}),
				o(207304, {	-- Adventure Board
					["model"] = 199475,
					["coord"] = { 17.0, 51.7, 36 },
					["g"] = {
						q(28068, {	-- Adventurers Wanted: Blackrock Depths
							["races"] = ALLIANCE_ONLY,
							["description"] = "Only available between level 47 and 56.",
							["isBreadcrumb"] = true,
						}),
					},
				}),
				o(207303, {	-- Adventure Board
					["model"] = 199475,
					["coord"] = { 17.0, 51.7, 36 },
					["g"] = {
						q(28069, {	-- Adventurers Wanted: Blackrock Depths
							["races"] = HORDE_ONLY,
							["description"] = "Only available between level 47 and 56.",
							["isBreadcrumb"] = true,
						}),
					},
				}),
				q(28320, {	-- Assault on Dreadmaul Rock
					["qg"] = 48306,	-- John J. Keeshan
					["coord"] = { 73.5, 67.2, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 28327 },	-- Locked and Loaded
				}),
				q(28454, {	-- Assault on Dreadmaul Rock
					["qg"] = 48565,	-- Ariok
					["coord"] = { 54.7, 24.5, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 28453 },	-- Locked and Loaded
				}),
				q(28311, {	-- Blackened Ashes
					["qg"] = 48307,	-- Colonel Troteman
					["coord"] = { 73.6, 67.1, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 28310 },	-- Morgan's Vigil
				}),
				q(28443, {	-- Blackened Ashes
					["qg"] = 48569,	-- Eitrigg
					["coord"] = { 54.6, 24.4, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 28442 },	-- Flame Crest
				}),
				q(27471, {	-- Blackrock Anomaly -- aa
					["qg"] = 9562,	-- Hellendis Riverhorn
					["coord"] = { 73.4, 66.2, 36 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(28314, {	-- Blood Tour
					["qg"] = 48306,	-- John J. Keeshan
					["coord"] = { 73.5, 67.2, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = {
						28313,	-- A Heap of Delicious Worg
						28311,	-- Blackened Ashes
						28312,	-- Latent Demons of the Land
					},
				}),
				q(28446, {	-- Blood Tour
					["qg"] = 48565,	-- Ariok
					["coord"] = { 54.7, 24.5, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						28445,	-- A Heap of Delicious Worg
						28443,	-- Blackened Ashes
						28444,	-- Latent Demons of the Land
					},
				}),
				i(142344, {	-- Broken Axe Blade
					["requireSkill"] = 164,	-- Classic Blacksmithing
					["crs"] = {
						48201,	-- Blackrock Sergeant
						7027,	-- Blackrock Slayer
						7025,	-- Blackrock Soldier
						48120,	-- Firegut Reaver
						48118,	-- Smolderthorn Shaman
					},
					["g"] = {
						q(44926),	-- A Familiar Axe to Grind
					},
				}),
				q(28174, {	-- Burning Vengeance -- aa
					["qg"] = 47811,	-- John J. Keeshan
					["coord"] = { 17.2, 52.0, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 28666 },	-- Hero's Call: Burning Steppes!
					["description"] = "Provided to players who DID NOT complete John J. Keeshan's questline in Redridge Mountains."
				}),
				q(28416, {	-- Burning Vengeance -- aa
					["qg"] = 47811,	-- John J. Keeshan
					["coord"] = { 17.2, 52.0, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 28666 },	-- Hero's Call: Burning Steppes!
					["description"] = "Provided to players who DID complete John J. Keeshan's questline in Redridge Mountains."
				}),
				q(28418, {	-- Burning Vengeance -- aa
					["qg"] = 48559,	-- Ariok
					["coord"] = { 17.4, 51.6, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 28667 },	-- Warchief's Command: Burning Steppes!
				}),
				q(28184, {	-- Chiselgrip, the Heart of the Steppes
					["qg"] = 47811,	-- John J. Keeshan
					["coord"] = { 17.2, 52.0, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = {
						28172,	-- Done Nothing Wrong
						28183,	-- Return to Keeshan
					},
					["g"] = {
						i(64510),	-- Oreknuckle Gun
						i(64509),	-- Unburdened Pauldrons
						i(64508),	-- Black Tooth Helm
						i(64507),	-- Vest of Welcome
					},
				}),
				q(28426, {	-- Chiselgrip, the Heart of the Steppes
					["qg"] = 48559,	-- Ariok
					["coord"] = { 17.4, 51.5, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						28417,	-- Done Nothing Wrong
						28425,	-- Return to Ariok
					},
					["g"] = {
						i(64514),	-- Oreknuckle Gun
						i(64513),	-- Unburdened Pauldrons
						i(64512),	-- Black Tooth Helm
						i(64511),	-- Vest of Welcome
					},
				}),
				q(28172, {	-- Done Nothing Wrong
					["qg"] = 47779,	-- Mouton Flamestar
					["coord"] = { 16.9, 51.3, 36 },
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(64496),	-- Hatchlings' Protector
						i(64495),	-- Whelp Keeper's Staff
						i(64497),	-- Flamestar Amulet
					},
				}),
				q(28417, {	-- Done Nothing Wrong
					["qg"] = 47779,	-- Mouton Flamestar
					["coord"] = { 16.9, 51.3, 36 },
					["races"] = HORDE_ONLY,
					["g"] = {
						i(64500),	-- Flamestar Amulet
						i(64499),	-- Hatchlings' Protector
						i(64498),	-- Whelp Keeper's Staff
						i(156964),	-- Clutch Rearrangement Tool
					},
				}),
				q(28315, {	-- Draconic Vanguard
					["qg"] = 48306,	-- John J. Keeshan
					["coord"] = { 73.5, 67.2, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = {
						28313,	-- A Heap of Delicious Worg
						28311,	-- Blackened Ashes
						28312,	-- Latent Demons of the Land
					},
				}),
				q(28447, {	-- Draconic Vanguard
					["qg"] = 48565,	-- Ariok
					["coord"] = { 54.7, 24.5, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						28445,	-- A Heap of Delicious Worg
						28443,	-- Blackened Ashes
						28444,	-- Latent Demons of the Land
					},
				}),
				q(28286, {	-- Enough Damage For One Day
					["qg"] = 48110,	-- Colonel Troteman
					["coord"] = { 46.3, 45.9, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 28279 },	-- Abuse of Power
					["g"] = {
						i(64537),	-- Breastplate of the Mobile Batallion
						i(64536),	-- Gauntlents of Completion
						i(64535),	-- Belt of Preparation
						i(64534),	-- Kubit's Dagger
						i(64533),	-- Stratagem Band
					},
				}),
				q(28441, {	-- Enough Damage For One Day
					["qg"] = 48568,	-- Eitrigg
					["coord"] = { 44.5, 44.4, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 28440 },	-- Abuse of Power
					["g"] = {
						i(64542),	-- Worn Argent Crusader's Breastplate
						i(64541),	-- Blackrock Shaman's Gloves
						i(64540),	-- Belt of Preparation
						i(64539),	-- Kubit's Dagger
						i(64538),	-- Stratagem Band
					},
				}),
				q(28442, {	-- Flame Crest
					["qg"] = 48568,	-- Eitrigg
					["coord"] = { 44.5, 44.4, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 28441 },	-- Enough Damage for One Day
				}),
				q(27469, {	-- Friends on The Other Side -- aa -- this is available to alliance despite being in horde territory
					["qg"] = 56899,	-- Ragged Jong
					["coord"] = { 54.1, 23.8, 36 },
					["isBreadcrumb"] = true,
				}),
				q(28265, {	-- General Thorg'izog
					["qg"] = 48109,	-- John J. Keeshan
					["coord"] = { 46.3, 46.0, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = {
						28227,	-- Golem Training
						28253,	-- Taking the Horn For Ourselves
					},
				}),
				q(28437, {	-- General Thorg'izog
					["qg"] = 48568,	-- Eitrigg
					["coord"] = { 44.5, 44.4, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						28227,	-- Golem Training
						28436,	-- Taking the Horn For Ourselves
					},
				}),
				q(28321, {	-- Glory Amidst Chaos
					["qg"] = 48307,	-- Colonel Troteman
					["coord"] = { 73.6, 67.1, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 28320 },	-- Assault on Dreadmaul Rock
				}),
				q(28455, {	-- Glory Amidst Chaos
					["qg"] = 48569,	-- Eitrigg
					["coord"] = { 54.6, 24.5, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 28454 },	-- Assault on Dreadmaul Rock
				}),
				q(28227, {	-- Golem Training
					["qg"] = 48033,	-- Stebben Oreknuckle
					["coord"] = { 46.8, 44.0, 36 },
					["sourceQuests"] = {
						28225,	-- Prove Yer Allegiance
						28226,	-- Scrapped Golems
					},
					["g"] = {
						i(64524),	-- Chiselgrip Shield
						i(64523),	-- Combat Training Vest
						i(64522),	-- Bracers of Friendly Favors
						i(64521),	-- Tutor's Cloak
					},
				}),
				q(28245, {	-- Grunt Work
					["qg"] = 48085,	-- Quartermaster Kaoshin
					["coord"] = { 45.3, 51.7, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 28239 },	-- Into the Black Tooth Hovel
				}),
				q(28433, {	-- Grunt Work
					["qg"] = 48085,	-- Quartermaster Kaoshin
					["coord"] = { 45.3, 51.7, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 28432 },	-- Into the Black Tooth Hovel
				}),
				q(28278, {	-- I Am the Law and I Am the Lash
					["qg"] = 48133,	-- General Thorg'izog
					["coord"] = { 30.6, 33.7, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 28266 },	-- Trial by Magma
				}),
				q(28439, {	-- I Am the Law and I Am the Lash
					["qg"] = 48133,	-- General Thorg'izog
					["coord"] = { 30.6, 33.7, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 28438 },	-- Trial by Magma
				}),
				q(4263,  {	-- Incendius!
					["u"] = 40,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						un(2, i(12112)),	-- Crypt Demon Bracers
						un(2, i(12114)),	-- Nightfall Gloves
						un(2, i(12115)),	-- Stalwart Clutch
						un(2, i(12113)),	-- Sunborne Cape
					},
				}),
				q(28239, {	-- Into the Black Tooth Hovel
					["qg"] = 48109,	-- John J. Keeshan
					["coord"] = { 46.3, 46.0, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 28202, 28203, 28204, 28205 },	-- A Perfect Costume (Alliance Versions)
				}),
				q(28432, {	-- Into the Black Tooth Hovel
					["qg"] = 48568,	-- Eitrigg
					["coord"] = { 44.5, 44.4, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 28428, 28429, 28430, 28431 },	-- A Perfect Costume (Horde versions)
				}),
				q(3822,  {	-- Krom'Grul
					["u"] = 40,
					["races"] = HORDE_ONLY,
					["g"] = {
						un(2, i(11869)),	-- Sha'ni's Ring
					},
				}),
				q(28312, {	-- Latent Demons of the Land
					["qg"] = 48307,	-- Colonel Troteman
					["coord"] = { 73.6, 67.1, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 28310 },	-- Morgan's Vigil
				}),
				q(28444, {	-- Latent Demons of the Land
					["qg"] = 48569,	-- Eitrigg
					["coord"] = { 54.6, 24.4, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 28442 },	-- Flame Crest
				}),
				q(28327, {	-- Locked and Loaded
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = {
						28318,	-- A Delivery for Neeralak
						28317,	-- A Delivery for Thorg'izog
						28319,	-- A Delivery for Xi'lun
					},
					["g"] = {
						i(64563),	-- Bracers of Misbehavior
						i(64562),	-- Mischievous Spaulders
						i(64561),	-- Sly Slider Gloves
						i(64560),	-- Faux Warlock Slippers
						i(64559),	-- Glassy Band
					},
				}),
				q(28453, {	-- Locked and Loaded
					["qg"] = 48569,	-- Eitrigg
					["coord"] = { 54.6, 24.4, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						28451,	-- A Delivery for Neeralak
						28450,	-- A Delivery for Thorg'izog
						28452,	-- A Delivery for Xi'lun
					},
					["g"] = {
						i(64568),	-- Bracers of Misbehavior
						i(64567),	-- Mischievous Spaulders
						i(64566),	-- Sly Slider Gloves
						i(64565),	-- Faux Warlock Slippers
						i(64564),	-- Glassy Band
					},
				}),
				q(5081,  {	-- Maxwell's Mission
					["u"] = 40,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						un(2, i(13961)),	-- Halcyon's Muzzle
						un(2, i(13959)),	-- Omokk's Girth Restrainer
						un(2, i(13963)),	-- Voone's Vice Grips
						un(2, i(13962)),	-- Vosh'gajin's Strand
						un(2, i(13958)),	-- Wyrmthalak's Shackles
					},
				}),
				q(28310, {	-- Morgan's Vigil
					["qg"] = 48110,	-- Colonel Troteman
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 28286 },	-- Enough Damage for One Day
				}),
				q(28179, {	-- Mud Hunter
					["qg"] = 47811,	-- John J. Keeshan
					["coord"] = { 17.2, 52.0, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 28174, 28416 },	-- Burning Vengeance
					["g"] = {
						i(64505),	-- Obsidian-Flecked Cowl
					},
				}),
				q(28421, {	-- Mud Hunter
					["qg"] = 48559,	-- Ariok
					["coord"] = { 17.4, 51.6, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 28418 },	-- Burning Vengeance
					["g"] = {
						i(64506),	-- Obsidian-Flecked Cowl
					},						
				}),
				q(28491, {	-- Not Fireflies, Flameflies
					["qg"] = 10260,	-- Kibler
					["coord"] = { 54.9, 22.5, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 28442 },	-- Flame Crest
					["g"] = {
						i(64558),	-- Lava Boots
						i(64557),	-- Flamefly Spaulders
						i(64556),	-- Petting Gloves
						i(66080),	-- Tiny Flamefly
					},
				}),
				q(3825,  {	-- Ogre Head On A Stick = Party
					["u"] = 40,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						un(2, i(11868)),	-- Choking Band
						un(2, i(11867)),	-- Maddening Gauntlets
					},
				}),
				q(28326, {	-- Placing the Pawns
					["qg"] = 48307,	-- Colonel Troteman
					["coord"] = { 73.6, 67.1, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = {
						28316,	-- A Deal With a Dragon
						28314,	-- Blood Tour
						28315,	-- Draconic Vanguard
					},
					["g"] = {
						i(64546),	-- Breastplate of the Undercover Thorium Brother
						i(64545),	-- Subversive Steps
						i(64544),	-- Bracers of Vigil
						i(64543),	-- Pawn's Bracers
					},
				}),
				q(28449, {	-- Placing the Pawns
					["qg"] = 48569,	-- Eitrigg
					["coord"] = { 54.6, 24.4, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						28448,	-- A Deal With a Dragon
						28446,	-- Blood Tour
						28447,	-- Draconic Vanguard
					},
					["g"] = {
						i(64550),	-- Breastplate of the Undercover Thorium Brother
						i(64549),	-- Subversive Steps
						i(64548),	-- Flame Crest Bracers
						i(64547),	-- Pawn's Bracers
					},
				}),
				q(28225, {	-- Prove Yer Allegiance
					["qg"] = 48033,	-- Stebben Oreknuckle
					["coord"] = { 46.7, 44.0, 36 },
					["sourceQuests"] = { 28184, 28426 },	-- Chiselgrip, the Heart of the Steppes (A/H versions)
				}),
				q(4701,  {	-- Put Her Down
					["u"] = 40,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						un(2, i(15824)),	-- Astoria Robes
						un(2, i(15827)),	-- Jadescale Breastplate
						un(2, i(15825)),	-- Traphook Jerkin
					},
				}),
				q(28425, {	-- Return to Ariok
					["qg"] = 14437,	-- Gorzeeki Wildeyes
					["coord"] = { 8.3, 35.7, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						28424,	-- Shadow Boxing
						28423,	-- Warlocks Have the Neatest Stuff
					},
				}),
				q(28183, {	-- Return to Keeshan
					["qg"] = 14437,	-- Gorzeeki Wildeyes
					["coord"] = { 8.3, 35.7, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = {
						28182,	-- Shadow Boxing
						28181,	-- Warlocks Have the Neatest Stuff
					},
				}),
				q(28226, {	-- Scrapped Golems
					["qg"] = 48033,	-- Stebben Oreknuckle
					["coord"] = { 46.7, 44.0, 36 },
					["sourceQuests"] = { 28184, 28426 },	-- Chiselgrip, the Heart of the Steppes (A/H versions)
				}),
				q(28415, {	-- SEVEN! YUP!
					["qg"] = 9177,	-- Oralius
					["coord"] = { 71.8, 67.9, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 28310 },	-- Morgan's Vigil
					["g"] = {
						i(64554),	-- Gor'Tesh's Boots
						i(64553),	-- Flamefly Spaulders
						i(64552),	-- Belly Rubbers
						i(66080),	-- Tiny Flamefly
					},
				}),
				q(28182, {	-- Shadow Boxing
					["qg"] = 14437,	-- Gorzeeki Wildeyes
					["coord"] = { 8.3, 35.7, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 28180 },	-- The Sand, the Cider, and the Orb
				}),
				q(28424, {	-- Shadow Boxing
					["qg"] = 14437,	-- Gorzeeki Wildeyes
					["coord"] = { 8.3, 35.7, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 28422 },	-- The Sand the Cider, and the Orb
				}),
				q(28177, {	-- Stocking Up
					["qg"] = 47811,	-- John J. Keeshan
					["coord"] = { 17.2, 52.0, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 28174, 28416 },	-- Burning Vengeance
					["g"] = {
						i(64501),	-- Sharp Scorpid Barb
						i(156965),	-- Enchanted Scorpid Tail 
						i(157011),	-- Envenomed Scorpid Tail
					},
				}),
				q(28419, {	-- Stocking Up
					["qg"] = 48559,	-- Ariok
					["coord"] = { 17.4, 51.6, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 28418 },	-- Burning Vengeance
					["g"] = {
						i(64502),	-- Sharp Scorpid Barb
						i(156965),	-- Enchanted Scorpid Tail
					},
				}),
				q(28246, {	-- Strategic Cuts
					["qg"] = 48110,	-- Colonel Troteman
					["coord"] = { 46.3, 45.9, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 28245 },	-- Grunt Work
				}),
				q(28434, {	-- Strategic Cuts
					["qg"] = 28432,	-- Eitrigg
					["coord"] = { 44.5, 44.4, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 28433 },	-- Grunt Work (procs after accepting)
				}),
				q(28253, {	-- Taking the Horn For Ourselves
					["qg"] = 48110,	-- Colonel Troteman
					["coord"] = { 46.3, 45.9, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 28252 },	-- The Kodocaller's Horn
					["g"] = {
						i(64517),	-- Helm of Serendipity
						i(64516),	-- Improvised Breastplate
						i(64515),	-- Leggings of the Steppes
					},
				}),
				q(28436, {	-- Taking the Horn For Ourselves
					["qg"] = 48568,	-- Eitrigg
					["coord"] = { 44.5, 44.4, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 28435 },	-- The Kodocaller's Horn
					["g"] = {
						i(64520),	-- Helm of Serendipity
						i(64519),	-- Improvised Breastplate
						i(64518),	-- Leggings of the Steppes
					},
				}),
				q(28569, {	-- The Bogpaddle Bullet
					["qg"] = 9177,	-- Oralius
					["lvl"] = 40,
					["coord"] = { 71.8, 68.0, 36 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(28570, {	-- The Bogpaddle Bullet
					["qg"] = 10260,	-- Kibler
					["lvl"] = 40,
					["coord"] = { 54.9, 22.6, 36 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(28252, {	-- The Kodocaller's Horn
					["qg"] = 48085,	-- Quartermaster Kaoshin
					["coord"] = { 45.3, 51.7, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 28245 },	-- Grunt Work
				}),
				q(28435, {	-- The Kodocaller's Horn
					["qg"] = 48085,	-- Quartermaster Kaoshin
					["coord"] = { 45.3, 51.7, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 28433 },	-- Grunt Work
				}),
				q(28180, {	-- The Sand, the Cider, and the Orb
					["qg"] = 47811,	-- John J. Keeshan
					["coord"] = { 17.2, 52.0, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = {
						28178,	-- A Future Project
						28179,	-- Mud Hunter
						28177,	-- Stocking Up
					},
				}),
				q(28422, {	-- The Sand, the Cider, and the Orb
					["qg"] = 48559,	-- Ariok
					["coord"] = { 17.4, 51.6, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						28420,	-- A Future Project
						28421,	-- Mud Hunter
						28419,	-- Stocking Up
					},
				}),
				q(28322, {	-- The Spoils of War
					["qg"] = 48307,	-- Colonel Troteman
					["coord"] = { 73.6, 67.1, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 28321 },	-- Glory Amidst Chaos
					["g"] = {
						i(64574),	-- Golem-Smasher's Grips
						i(64573),	-- Razor-Sharp Scorpid Belt
						i(64572),	-- Ember Worg Boots
						i(64571),	-- xi'lun's Signet
						i(64569),	-- Obsidian-Flecked Cape
						i(64570),	-- Cracked Orb of Dominion
					},
				}),
				q(28456, {	-- The Spoils of War
					["qg"] = 48569,	-- Eitrigg
					["coord"] = { 54.6, 24.4, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 28455 },	-- Glory Amidst Chaos
					["g"] = {
						i(64580),	-- Golem-Smasher's Grips
						i(64579),	-- Razor-Sharp Scorpid Belt
						i(64578),	-- Ember Worg Boots
						i(64577),	-- Xi'lun's Signet
						i(64575),	-- Obsidian-Flecked Cape
						i(64576),	-- Cracked Orb of Dominion
					},
				}),
				q(28266, {	-- Trial by Magma
					["qg"] = 48133,	-- General Thorg'izog
					["coord"] = { 30.6, 33.7, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 28265 },	-- General Thorg'izog
					["g"] = {
						i(64527),	-- Bracers of Gladiatorial Combat
						i(64526),	-- Poorly Styled Gloves
						i(64525),	-- Magma Lord Cloak
					},
				}),
				q(28438, {	-- Trial by Magma
					["qg"] = 48133,	-- General Thorg'izog
					["coord"] = { 30.6, 33.7, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 28437 },	-- General Thorg'izog
					["g"] = {
						i(64532),	-- Thorg'izog's Band
						i(64531),	-- Bracers of Gladiatorial Combat
						i(64530),	-- Poorly Styled Gloves
						i(64529),	-- Magma Lord Cloak
					},
				}),
				q(28181, {	-- Warlocks Have the Neatest Stuff
					["qg"] = 14437,	-- Gorzeeki Wildeyes
					["coord"] = { 8.3, 35.7, 36 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 28180 },	-- The Sand, the Cider, and the Orb
				}),
				q(28423, {	-- Warlocks Have the Neatest Stuff
					["qg"] = 14437,	-- Gorzeeki Wildeyes
					["coord"] = { 8.3, 35.7, 36 },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 28422 },	-- The Sand, the Cider, and the Orb
				}),
				q(4903,  {	-- Warlord's Command
					["u"] = 40,
					["races"] = HORDE_ONLY,
					["g"] = {
						un(2, i(13961)),	-- Halcyon's Muzzle
						un(2, i(13959)),	-- Omokk's Girth Restrainer
						un(2, i(13963)),	-- Voone's Vice Grips
						un(2, i(13962)),	-- Vosh'gajin's Strand
						un(2, i(13958)),	-- Wyrmthalak's Shackles
					},
				}),
				q(44927, {	-- Worth Its Weight in Steel
					["qg"] = 115805,	-- Hoddruc Bladebender
					["coord"] = { 46.8, 44.9, 36 },
					["sourceQuests"] = { 44926 },	-- A Familiar Axe to Grind
					["requireSkill"] = 164,	-- Classic Blacksmithing
					["g"] = {
						i(142346),	-- Plans: Bleakwood Hew
					},
				}),
			}),
		}),
	}),
};
