
if settings.startup["af-mining-drones-no-burner-drill"].value then
	local events = {
		defines.events.on_player_joined_game,
		defines.events.on_player_created,
		-- This is bad for performance, but unfortunately,
		-- on previous events player's inventory isn't filled yet
		defines.events.on_player_main_inventory_changed,
	}

	script.on_event(events, function (event)
		local player = game.get_player(event.player_index)
		-- log("\n-- AF-MDH: event: " .. event.name .. ", player " .. player.name .. " items: " .. player.get_item_count() .. " \n")
		player.remove_item({name="burner-mining-drill", count=10})
	end)
end
