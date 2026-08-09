hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("qs -c $qsConfig ipc call brightness increment || brightnessctl -d intel_backlight s 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("qs -c $qsConfig ipc call brightness decrement || brightnessctl -d intel_backlight s 5%-"), { locked = true, repeating = true })

hl.bind("CTRL+SUPER+ALT+Slash", hl.dsp.exec_cmd("xdg-open ~/.config/hypr/custom/keybinds.lua"), {description = "Edit user keybinds"} )
