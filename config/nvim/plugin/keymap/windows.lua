local  windows = {
  name = "window",
  s = "new split window",
  v = "new split window vertically",
  w = "switch window",
  q = "quit window",
  T = "break window into a new tab",
  x = "swap current with next",
  ["-"] = "decrease height",
  ["+"] = "increase height",
  ["<lt>"] = "decrease width",
  [">"] = "increase width",
  ["|"] = "max out the width",
  ["_"] = "max out the height",
  ["="] = "equally high and wide",
  h = "go to left window (hjkl)",
  H = "move window to most left (HJKL)",
  -- l = "go to right window",
  -- k = "go to up window",
  -- j = "go to down window",
  n = "new buffer in new window",
  ["^"] = "open alternate buffer (#) in new window",
  o = "close other windows",
  N = {"<cmd>enew<cr>", "new buffer in current window"},
  Q = {"<cmd>q!<cr>", "quit window forcely"},
}
require("which-key").register(windows, { mode = "n", prefix = "<c-w>", preset = true })
