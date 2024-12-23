--- STEAMODDED HEADER
--- MOD_NAME: Small Decks
--- MOD_ID: smalldecks
--- MOD_AUTHOR: [MiniRebel]
--- MOD_DESCRIPTION: this mod litterally just adds different decks of all enhancements
--- DEPENDENCIES: [Steamodded>=1.0.0~ALPHA-0812d]

----------------------------------------------
------------MOD CODE -------------------------

-- config
local config = {
--enhancements
enhancements = true,
--editions
editions = true,
-- induvidual ranks
induvidual = true,
}

--atlas
SMODS.Atlas {
    key = 'Deck',
    path = 'deck_atlas.png',
    px = 71,
    py = 95
}

--deck

--||||||||||||
--enhancements
--||||||||||||

if config.enhancements then
SMODS.Back{
	name = "Bonus Deck",
	key = "bonus",
	pos = {x = 1, y = 1},
	loc_txt = {
		name = "Bonus Deck",
		text ={
			"Start with a Deck",
			"full of {C:blue,T:m_bonus}bonus{} cards"
		},
    },
	apply = function()
		G.E_MANAGER:add_event(Event({
			func = function()
				for i = #G.playing_cards, 1, -1 do
					G.playing_cards[i]:set_ability(G.P_CENTERS.m_bonus)
				end
				return true
			end
		}))
	end
}

SMODS.Back{
	name = "Mult Deck",
	key = "mult",
	pos = {x = 2, y = 1},
	loc_txt = {
		name = "Mult Deck",
		text ={
			"Start with a Deck",
			"full of {C:red,T:m_mult}mult{} cards"
		},
    },
	apply = function()
		G.E_MANAGER:add_event(Event({
			func = function()
				for i = #G.playing_cards, 1, -1 do
					G.playing_cards[i]:set_ability(G.P_CENTERS.m_mult)
				end
				return true
			end
		}))
	end
}

SMODS.Back{
	name = "Wild Deck",
	key = "wild",
	pos = {x = 3, y = 1},
	loc_txt = {
		name = "Wild Deck",
		text ={
			"Start with a Deck",
			"full of {C:red,T:m_wild}wild{} cards"
		},
    },
	apply = function()
		G.E_MANAGER:add_event(Event({
			func = function()
				for i = #G.playing_cards, 1, -1 do
					G.playing_cards[i]:set_ability(G.P_CENTERS.m_wild)
				end
				return true
			end
		}))
	end
}

SMODS.Back{
	name = "Glass Deck",
	key = "glass",
	pos = {x = 5, y = 1},
	loc_txt = {
		name = "Glass Deck",
		text ={
			"Start with a Deck",
			"full of {C:red,T:m_glass}glass{} cards"
		},
    },
	apply = function()
		G.E_MANAGER:add_event(Event({
			func = function()
				for i = #G.playing_cards, 1, -1 do
					G.playing_cards[i]:set_ability(G.P_CENTERS.m_glass)
				end
				return true
			end
		}))
	end
}

SMODS.Back{
	name = "Steel Deck",
	key = "steel",
	pos = {x = 6, y = 1},
	loc_txt = {
		name = "Steel Deck",
		text ={
			"Start with a Deck",
			"full of {C:red,T:m_steel}steel{} cards"
		},
    },
	apply = function()
		G.E_MANAGER:add_event(Event({
			func = function()
				for i = #G.playing_cards, 1, -1 do
					G.playing_cards[i]:set_ability(G.P_CENTERS.m_steel)
				end
				return true
			end
		}))
	end
}

SMODS.Back{
	name = "Stone Deck",
	key = "stone",
	pos = {x = 5, y = 0},
	loc_txt = {
		name = "Stone Deck",
		text ={
			"Start with a Deck",
			"full of {C:red,T:m_stone}stone{} cards"
		},
    },
	apply = function()
		G.E_MANAGER:add_event(Event({
			func = function()
				for i = #G.playing_cards, 1, -1 do
					G.playing_cards[i]:set_ability(G.P_CENTERS.m_stone)
				end
				return true
			end
		}))
	end
}

SMODS.Back{
	name = "Gold Deck",
	key = "gold",
	pos = {x = 6, y = 0},
	loc_txt = {
		name = "Gold Deck",
		text ={
			"Start with a Deck",
			"full of {C:money,T:m_gold}gold{} cards"
		},
    },
	apply = function()
		G.E_MANAGER:add_event(Event({
			func = function()
				for i = #G.playing_cards, 1, -1 do
					G.playing_cards[i]:set_ability(G.P_CENTERS.m_gold)
				end
				return true
			end
		}))
	end
}

SMODS.Back{
	name = "Lucky Deck",
	key = "lucky",
	pos = {x = 4, y = 1},
	loc_txt = {
		name = "Lucky Deck",
		text ={
			"Start with a Deck",
			"full of {C:money,T:m_lucky}lucky{} cards"
		},
    },
	apply = function()
		G.E_MANAGER:add_event(Event({
			func = function()
				for i = #G.playing_cards, 1, -1 do
					G.playing_cards[i]:set_ability(G.P_CENTERS.m_lucky)
				end
				return true
			end
		}))
	end
}
end

--||||||||
--editions
--||||||||

if config.editions then
SMODS.Back{
	name = "Base Deck",
	key = "base",
	atlas = 'Deck',
	pos = {x = 0, y = 0},
	loc_txt = {
		name = "Base Deck",
		text ={
			"Start with a Deck",
			"without any modifications at all!"
		},
    },
	apply = function()
		G.E_MANAGER:add_event(Event({
			func = function()
				return true
			end
		}))
	end
}

SMODS.Back{
	name = "Foil Deck",
	key = "foil",
	pos = {x = 0, y = 3},
	loc_txt = {
		name = "Foil Deck",
		text ={
			"Start with a Deck",
			"full of {C:blue,T:tag_foil}Foil{} cards"
		},
    },
	apply = function()
		G.E_MANAGER:add_event(Event({
			func = function()
				for i = #G.playing_cards, 1, -1 do
					G.playing_cards[i]:set_edition({
						foil = true
					}, true, true)
				end
				return true
			end
		}))
	end
}

SMODS.Back{
	name = "Holographic Deck",
	key = "Holographic",
	pos = {x = 0, y = 3},
	loc_txt = {
		name = "Holographic Deck",
		text ={
			"Start with a Deck",
			"full of {C:red,T:tag_Holographic}Holographic{} cards"
		},
    },
	apply = function()
		G.E_MANAGER:add_event(Event({
			func = function()
				for i = #G.playing_cards, 1, -1 do
					G.playing_cards[i]:set_edition({
						Holographic = true
					}, true, true)
				end
				return true
			end
		}))
	end
}

SMODS.Back{
	name = "Polychrome Deck",
	key = "polychrome",
	pos = {x = 0, y = 3},
	loc_txt = {
		name = "Polychrome Deck",
		text ={
			"Start with a Deck",
			"full of {C:red,T:tag_polychrome}Polychrome{} cards"
		},
    },
	apply = function()
		G.E_MANAGER:add_event(Event({
			func = function()
				for i = #G.playing_cards, 1, -1 do
					G.playing_cards[i]:set_edition({
						polychrome = true
					}, true, true)
				end
				return true
			end
		}))
	end
}

SMODS.Back{
	name = "Negative Deck",
	key = "negative",
	pos = {x = 0, y = 3},
	loc_txt = {
		name = "Negative Deck",
		text ={
			"Start with a Deck",
			"full of {C:red,T:tag_negative}negative{} cards"
		},
    },
	apply = function()
		G.E_MANAGER:add_event(Event({
			func = function()
				for i = #G.playing_cards, 1, -1 do
					G.playing_cards[i]:set_edition({
						negative = true
					}, true, true)
				end
				return true
			end
		}))
	end
}
end

--||||||||||||||||
--induvidual ranks
--||||||||||||||||

if config.induvidual then

SMODS.Back{
	name = "Deck of 2",
	key = "two",
	atlas = 'Deck',
	pos = {x = 1, y = 0},
	config = {only_one_rank = '2'},
	loc_txt = {
		name ="Deck of 2",
		text={
			"Start with a Deck",
			"full of rank {C:attention}2's{}",
		},
    },
	apply = function(self)
		G.E_MANAGER:add_event(Event({
			func = function()
                for _, card in ipairs(G.playing_cards) do
					assert(SMODS.change_base(card, nil, self.config.only_one_rank))
				end
				return true
			end
		}))
	end
}

SMODS.Back{
	name = "Deck of 3",
	key = "three",
	atlas = 'Deck',
	pos = {x = 2, y = 0},
	config = {only_one_rank = '3'},
	loc_txt = {
		name ="Deck of 3",
		text={
			"Start with a Deck",
			"full of rank {C:attention}3's{}",
		},
    },
	apply = function(self)
		G.E_MANAGER:add_event(Event({
			func = function()
                for _, card in ipairs(G.playing_cards) do
					assert(SMODS.change_base(card, nil, self.config.only_one_rank))
				end
				return true
			end
		}))
	end
}

SMODS.Back{
	name = "Deck of 4",
	key = "four",
	atlas = 'Deck',
	pos = {x = 3, y = 0},
	config = {only_one_rank = '4'},
	loc_txt = {
		name ="Deck of 4",
		text={
			"Start with a Deck",
			"full of {C:attention}4's{}",
		},
    },
	apply = function(self)
		G.E_MANAGER:add_event(Event({
			func = function()
                for _, card in ipairs(G.playing_cards) do
					assert(SMODS.change_base(card, nil, self.config.only_one_rank))
				end
				return true
			end
		}))
	end
}

SMODS.Back{
	name = "Deck of 5",
	key = "five",
	atlas = 'Deck',
	pos = {x = 4, y = 0},
	config = {only_one_rank = '5'},
	loc_txt = {
		name ="Deck of 5",
		text={
			"Start with a Deck",
			"full of rank {C:attention}5's{}",
		},
    },
	apply = function(self)
		G.E_MANAGER:add_event(Event({
			func = function()
                for _, card in ipairs(G.playing_cards) do
					assert(SMODS.change_base(card, nil, self.config.only_one_rank))
				end
				return true
			end
		}))
	end
}

SMODS.Back{
	name = "Deck of 6",
	key = "six",
	atlas = 'Deck',
	pos = {x = 5, y = 0},
	config = {only_one_rank = '6'},
	loc_txt = {
		name ="Deck of 6",
		text={
			"Start with a Deck",
			"full of rank {C:attention}6's{}",
		},
    },
	apply = function(self)
		G.E_MANAGER:add_event(Event({
			func = function()
                for _, card in ipairs(G.playing_cards) do
					assert(SMODS.change_base(card, nil, self.config.only_one_rank))
				end
				return true
			end
		}))
	end
}

SMODS.Back{
	name = "Deck of 7",
	key = "seven",
	atlas = 'Deck',
	pos = {x = 6, y = 0},
	config = {only_one_rank = '7'},
	loc_txt = {
		name ="Deck of 7",
		text={
			"Start with a Deck",
			"full of rank {C:attention}7's{}",
		},
    },
	apply = function(self)
		G.E_MANAGER:add_event(Event({
			func = function()
                for _, card in ipairs(G.playing_cards) do
					assert(SMODS.change_base(card, nil, self.config.only_one_rank))
				end
				return true
			end
		}))
	end
}

SMODS.Back{
	name = "Deck of 8",
	key = "eight",
	atlas = 'Deck',
	pos = {x = 0, y = 1},
	config = {only_one_rank = '8'},
	loc_txt = {
		name ="Deck of 8",
		text={
			"Start with a Deck",
			"full of rank {C:attention}8's{}",
		},
    },
	apply = function(self)
		G.E_MANAGER:add_event(Event({
			func = function()
                for _, card in ipairs(G.playing_cards) do
					assert(SMODS.change_base(card, nil, self.config.only_one_rank))
				end
				return true
			end
		}))
	end
}

SMODS.Back{
	name = "Deck of 9",
	key = "nine",
	atlas = 'Deck',
	pos = {x = 1, y = 1},
	config = {only_one_rank = '9'},
	loc_txt = {
		name ="Deck of 9",
		text={
			"Start with a Deck",
			"full of rank {C:attention}9's{}",
		},
    },
	apply = function(self)
		G.E_MANAGER:add_event(Event({
			func = function()
                for _, card in ipairs(G.playing_cards) do
					assert(SMODS.change_base(card, nil, self.config.only_one_rank))
				end
				return true
			end
		}))
	end
}

SMODS.Back{
	name = "Deck of 10",
	key = "ten",
	atlas = 'Deck',
	pos = {x = 2, y = 1},
	config = {only_one_rank = '10'},
	loc_txt = {
		name ="Deck of 10",
		text={
			"Start with a Deck",
			"full of rank {C:attention}10's{}",
		},
    },
	apply = function(self)
		G.E_MANAGER:add_event(Event({
			func = function()
                for _, card in ipairs(G.playing_cards) do
					assert(SMODS.change_base(card, nil, self.config.only_one_rank))
				end
				return true
			end
		}))
	end
}
end

SMODS.Back{
	name = "Deck of Jacks",
	key = "jack",
	atlas = 'Deck',
	pos = {x = 3, y = 1},
	config = {only_one_rank = 'Jack'},
	loc_txt = {
		name ="Deck of Jacks",
		text={
			"Start with a Deck",
			"full of {C:attention}jacks{}",
		},
    },
	apply = function(self)
		G.E_MANAGER:add_event(Event({
			func = function()
                for _, card in ipairs(G.playing_cards) do
					assert(SMODS.change_base(card, nil, self.config.only_one_rank))
				end
				return true
			end
		}))
	end
}

SMODS.Back{
	name = "Deck of Queens",
	key = "queen",
	atlas = 'Deck',
	pos = {x = 4, y = 1},
	config = {only_one_rank = 'Queen'},
	loc_txt = {
		name ="Deck of Queens",
		text={
			"Start with a Deck",
			"full of {C:attention}queens{}",
		},
    },
	apply = function(self)
		G.E_MANAGER:add_event(Event({
			func = function()
                for _, card in ipairs(G.playing_cards) do
					assert(SMODS.change_base(card, nil, self.config.only_one_rank))
				end
				return true
			end
		}))
	end
}

SMODS.Back{
	name = "Deck of Kings",
	key = "king",
	atlas = 'Deck',
	pos = {x = 5, y = 1},
	config = {only_one_rank = 'King'},
	loc_txt = {
		name ="Deck of Kings",
		text={
			"Start with a Deck",
			"full of {C:attention}kings{}",
		},
    },
	apply = function(self)
		G.E_MANAGER:add_event(Event({
			func = function()
                for _, card in ipairs(G.playing_cards) do
					assert(SMODS.change_base(card, nil, self.config.only_one_rank))
				end
				return true
			end
		}))
	end
}

SMODS.Back{
	name = "Deck of Ace's",
	key = "ace",
	atlas = 'Deck',
	pos = {x = 6, y = 1},
	config = {only_one_rank = 'Ace'},
	loc_txt = {
		name ="Deck of Ace's",
		text={
			"Start with a Deck",
			"full of {C:attention}ace's{}",
		},
    },
	apply = function(self)
		G.E_MANAGER:add_event(Event({
			func = function()
                for _, card in ipairs(G.playing_cards) do
					assert(SMODS.change_base(card, nil, self.config.only_one_rank))
				end
				return true
			end
		}))
	end
}

----------------------------------------------
------------MOD CODE END----------------------
