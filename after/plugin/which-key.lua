local wk = require("which-key")

wk.add({
  { "<leader>f", group = "[F]ind" },
  { "<leader>fb", desc = "[F]ind [B]uffer in open file" },
  { "<leader>ff", desc = "[F]ind [F]ile in project" },
  { "<leader>fg", desc = "[F]ind [G]rep in project" },
  { "<leader>fh", desc = "[F]ind [H]elp" },
  { "<leader>fw", desc = "[F]ind [W]ord in project" },
  { "<leader>w", group = "[W]indow" },
  { "<leader>wg", desc = "[W]indow ta[G]bar" },
  { "<leader>wt", desc = "[W]indow [T]erminal" },
  }
)
