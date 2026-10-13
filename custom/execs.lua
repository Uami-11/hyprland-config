hl.on("hyprland.start", function()
    hl.exec_cmd("ssh-agent -s")
    hl.exec_cmd("awww-daemon")

    -- Cursor
    hl.exec_cmd("hyprctl setcursor Ralsei-Prxy 64")
end)
