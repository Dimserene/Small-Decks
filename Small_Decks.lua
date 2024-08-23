--- STEAMODDED HEADER
--- MOD_NAME: Small Decks
--- MOD_ID: smalldecks
--- MOD_AUTHOR: [MiniRebel]
--- MOD_DESCRIPTION: this mod litterally just adds different decks of all enhancements
--- DEPENDENCIES: [Steamodded>=1.0.0~ALPHA-0812d]

----------------------------------------------
------------MOD CODE -------------------------

SMODS.Back{
	name = "bonus Deck",
	key = "bonus",
	pos = {x = 0, y = 3},
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
					G.playing_cards[i]:set_edition({
						negative = true
					}, true, true)
				end
				return true
			end
		}))
	end
}

SMODS.Back{
	name = "glass Deck",
	key = "glass",
	pos = {x = 0, y = 3},
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
					G.playing_cards[i]:set_edition({
						negative = true
					}, true, true)
				end
				return true
			end
		}))
	end
}

SMODS.Back{
	name = "gold Deck",
	key = "gold",
	pos = {x = 0, y = 3},
	loc_txt = {
		name = "gold deck",
		text ={
			"Start with a Deck",
			"full of {C:red,T:m_gold}gold{} cards"
		},
    },
	apply = function()
		G.E_MANAGER:add_event(Event({
			func = function()
				for i = #G.playing_cards, 1, -1 do
					G.playing_cards[i]:set_ability(G.P_CENTERS.m_gold)
					G.playing_cards[i]:set_edition({
						negative = true
					}, true, true)
				end
				return true
			end
		}))
	end
}

SMODS.Back{
	name = "lucky Deck",
	key = "lucky",
	pos = {x = 0, y = 3},
	loc_txt = {
		name = "lucky deck",
		text ={
			"Start with a Deck",
			"full of {C:red,T:m_lucky}lucky{} cards"
		},
    },
	apply = function()
		G.E_MANAGER:add_event(Event({
			func = function()
				for i = #G.playing_cards, 1, -1 do
					G.playing_cards[i]:set_ability(G.P_CENTERS.m_lucky)
					G.playing_cards[i]:set_edition({
						negative = true
					}, true, true)
				end
				return true
			end
		}))
	end
}

SMODS.Back{
	name = "mult Deck",
	key = "mult",
	pos = {x = 0, y = 3},
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
					G.playing_cards[i]:set_edition({
						negative = true
					}, true, true)
				end
				return true
			end
		}))
	end
}

SMODS.Back{
	name = "steel Deck",
	key = "steel",
	pos = {x = 0, y = 3},
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
					G.playing_cards[i]:set_edition({
						negative = true
					}, true, true)
				end
				return true
			end
		}))
	end
}

SMODS.Back{
	name = "stone Deck",
	key = "stone",
	pos = {x = 0, y = 3},
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
					G.playing_cards[i]:set_edition({
						negative = true
					}, true, true)
				end
				return true
			end
		}))
	end
}

SMODS.Back{
	name = "wild Deck",
	key = "wild",
	pos = {x = 0, y = 3},
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
					G.playing_cards[i]:set_edition({
						negative = true
					}, true, true)
				end
				return true
			end
		}))
	end
}

----------------------------------------------
------------MOD CODE END----------------------
