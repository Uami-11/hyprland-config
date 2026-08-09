hl.on("hyprland.start", function()
    hl.exec_cmd("ssh-agent -s")
    hl.exec_cmd("awww-daemon")
end)
