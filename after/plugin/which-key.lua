local wk = require("which-key")

wk.register({
	f = {
		name = "[F]ind", -- optional group name
		f = { "[F]ind [F]ile in project" }, -- create a binding with label
		g = { "[F]ind [G]rep in project"},
		b = { "[F]ind [B]uffer in open file"},
		h = { "[F]ind [H]elp"},
		w = { "[F]ind [W]ord in project"},
	},
	w = {
		name = "[W]indow",
		t = { "[W]indow [T]erminal" },
		g = { "[W]indow ta[G]bar" },
	},
}, { prefix = "<leader>" })
