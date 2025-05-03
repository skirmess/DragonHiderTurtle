
-- Copyright (c) 2009-2025 Sven Kirmess

local Version = 14

local initFrame = CreateFrame("Frame", "DragonHiderTurtleInitFrame", UIParent)

initFrame:RegisterEvent("PLAYER_ENTERING_WORLD")

initFrame:SetScript("OnEvent", function()

	if ( event == "PLAYER_ENTERING_WORLD" ) then
		this:UnregisterEvent("PLAYER_ENTERING_WORLD")

		MainMenuBarLeftEndCap:Hide()
		MainMenuBarRightEndCap:Hide()

		DEFAULT_CHAT_FRAME:AddMessage(string.format("DragonHider %i loaded.", Version ))
	end

end)
