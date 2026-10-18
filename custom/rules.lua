hl.window_rule({ match = { class = "^(code-oss)$" }, opacity = "0.85 0.85" })

-- foot: neon-green outline (matches its cursor), thicker than the global border, sharp corners
hl.window_rule({
	match = { class = "^foot$", fullscreen = false },
	border_color = "rgb(39ff14) rgb(39ff14)",
	border_size = 10,
	rounding = 0,
})

-- foot: no outline while fullscreen
hl.window_rule({
	match = { class = "^foot$", fullscreen = true },
	border_size = 0,
})
