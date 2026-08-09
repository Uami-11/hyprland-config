hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("qs -c $qsConfig ipc call brightness increment || brightnessctl -d intel_backlight s 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("qs -c $qsConfig ipc call brightness decrement || brightnessctl -d intel_backlight s 5%-"), { locked = true, repeating = true })

hl.bind("CTRL+SUPER+ALT+Slash", hl.dsp.exec_cmd("xdg-open ~/.config/hypr/custom/keybinds.lua"), {description = "Edit user keybinds"} )

-- Close window: SUPER+SHIFT+Q (restores old behavior, unbinds SUPER+Q)
hl.unbind("SUPER + Q")
hl.bind("SUPER + SHIFT + Q", hl.dsp.window.close(), { description = "Window: Close" })

-- Keep the ALT+F4 hint pointing at the correct close keybind
hl.unbind("ALT + F4")
hl.bind("ALT + F4", function()
    hl.exec_cmd("notify-send \"Wrong close keybind\" \"Super+Shift+Q to close. Use Alt+F4 for Windows VMs\" -a Hyprland")
end, { non_consuming = true })

-- Move window to workspace (SUPER+SHIFT+1-0, follows like the old movetoworkspace)
for i = 1, 10 do
    hl.bind("SUPER + SHIFT + " .. (i % 10), function()
        hl.dispatch(hl.dsp.window.move({ workspace = workspace_in_group(i) }))
    end, { description = "Window: Send to workspace " .. i })
end
