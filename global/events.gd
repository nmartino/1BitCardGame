extends Node

# Card-related events
signal card_drag_started(card_ui: CardUI)
signal card_drag_ended(card_ui: CardUI)
signal card_aim_started(card_ui: CardUI)
signal card_aim_ended(card_ui: CardUI)
signal card_played(card: Card)
signal card_tooltip_requested(card: Card)
signal tooltip_hide_requested

#player-related events
signal player_hand_drawn
signal player_hand_discarded
signal player_turn_ended
signal player_hit
signal player_died

#enemy related events
signal enemy_action_completed(enemy: Enemy)
signal enemy_turn_ended

#Battle-related events
signal battle_over_screen_requested(text: String, type: BattleOverPanel.Type)
signal battle_won

#Map related events
signal map_exited(room: Room)

#shop related events
signal shop_exited

#campfire related events
signal campfire_exited

#battle reward related events
signal battle_reward_exited

#treasure room related events
signal treasure_room_exited
