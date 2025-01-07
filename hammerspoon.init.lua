local function toggleApp(name)
	local app = hs.application.find(name)
	if not app or app:isHidden() then
		hs.application.launchOrFocus(name)
	elseif hs.application.frontmostApplication() ~= app then
		app:activate()
	else
		app:hide()
	end
end

-- Global terminal toggle
hs.hotkey.bind({ "ctrl" }, "`", function()
	toggleApp("alacritty")
end)

