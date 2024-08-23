--- STEAMODDED HEADER
--- MOD_NAME: Small Decks
--- MOD_ID: smalldecks
--- MOD_AUTHOR: [MiniRebel]
--- MOD_DESCRIPTION: this mod litterally just adds different decks of all enhancements
--- DEPENDENCIES: [Steamodded>=1.0.0~ALPHA-0812d]

----------------------------------------------
------------MOD CODE -------------------------

local config = {
--enhancements
enhancements = true,
--editions
editions = true,
-- induvidual ranks
induvidual = true,
}

--||||||||||||
--enhancements
--||||||||||||

if config.enhancements then
SMODS.Back{
	name = "bonus Deck",
	key = "bonus",
	pos = {x = 1, y = 1},
	loc_txt = {
		name = "bonus deck",
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
	name = "mult Deck",
	key = "mult",
	pos = {x = 2, y = 1},
	loc_txt = {
		name = "mult deck",
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
	name = "wild Deck",
	key = "wild",
	pos = {x = 3, y = 1},
	loc_txt = {
		name = "wild deck",
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
	name = "glass Deck",
	key = "glass",
	pos = {x = 5, y = 1},
	loc_txt = {
		name = "glass deck",
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
	name = "steel Deck",
	key = "steel",
	pos = {x = 6, y = 1},
	loc_txt = {
		name = "steel deck",
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
	name = "stone Deck",
	key = "stone",
	pos = {x = 5, y = 0},
	loc_txt = {
		name = "stone deck",
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
	name = "gold Deck",
	key = "gold",
	pos = {x = 6, y = 0},
	loc_txt = {
		name = "gold deck",
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
	name = "lucky Deck",
	key = "lucky",
	pos = {x = 4, y = 1},
	loc_txt = {
		name = "lucky deck",
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
	name = "base Deck",
	key = "base",
	pos = {x = 1, y = 0},
	loc_txt = {
		name = "base deck",
		text ={
			"Start with a Deck",
			"full of {C:WHITE,T:m_bonus}base{} cards"
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
	name = "foil Deck",
	key = "foil",
	pos = {x = 0, y = 3},
	loc_txt = {
		name = "foil deck",
		text ={
			"Start with a Deck",
			"full of {C:blue,T:tag_foil}foil{} cards"
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
		name = "Holographic deck",
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
	name = "polychrome Deck",
	key = "polychrome",
	pos = {x = 0, y = 3},
	loc_txt = {
		name = "polychrome deck",
		text ={
			"Start with a Deck",
			"full of {C:red,T:tag_polychrome}poly{} cards"
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
	name = "negative Deck",
	key = "negative",
	pos = {x = 0, y = 3},
	loc_txt = {
		name = "negative deck",
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
	name = "Deck of two",
	key = "two",
	pos = {x = 1, y = 0},
	config = {only_one_rank = '2'},
	loc_txt = {
		name ="Deck of two",
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
	name = "Deck of three",
	key = "three",
	pos = {x = 1, y = 0},
	config = {only_one_rank = '3'},
	loc_txt = {
		name ="Deck of three",
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
	name = "Deck of four",
	key = "four",
	pos = {x = 1, y = 0},
	config = {only_one_rank = '4'},
	loc_txt = {
		name ="Deck of fours",
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
	name = "Deck of five",
	key = "five",
	pos = {x = 1, y = 0},
	config = {only_one_rank = '5'},
	loc_txt = {
		name ="Deck of five",
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
	name = "Deck of six",
	key = "six",
	pos = {x = 1, y = 0},
	config = {only_one_rank = '6'},
	loc_txt = {
		name ="Deck of six",
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
	name = "Deck of seven",
	key = "seven",
	pos = {x = 1, y = 0},
	config = {only_one_rank = '7'},
	loc_txt = {
		name ="Deck of seven",
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
	name = "Deck of eight",
	key = "eight",
	pos = {x = 1, y = 0},
	config = {only_one_rank = '8'},
	loc_txt = {
		name ="Deck of eight",
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
	name = "Deck of nine",
	key = "nine",
	pos = {x = 1, y = 0},
	config = {only_one_rank = '9'},
	loc_txt = {
		name ="Deck of nine",
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
	name = "Deck of ten",
	key = "ten",
	pos = {x = 1, y = 0},
	config = {only_one_rank = '10'},
	loc_txt = {
		name ="Deck of ten",
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
	name = "Deck of jacks",
	key = "jack",
	pos = {x = 1, y = 0},
	config = {only_one_rank = 'Jack'},
	loc_txt = {
		name ="Deck of jacks",
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
	name = "Deck of queens",
	key = "queen",
	pos = {x = 1, y = 0},
	config = {only_one_rank = 'Queen'},
	loc_txt = {
		name ="Deck of queens",
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
	name = "Deck of kings",
	key = "king",
	pos = {x = 1, y = 0},
	config = {only_one_rank = 'King'},
	loc_txt = {
		name ="Deck of kings",
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
	name = "Deck of ace's",
	key = "ace",
	pos = {x = 1, y = 0},
	config = {only_one_rank = 'Ace'},
	loc_txt = {
		name ="Deck of ace's",
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
