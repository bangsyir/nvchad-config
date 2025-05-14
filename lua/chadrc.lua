-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "ayu_dark",
  transparency = true,
  hl_override = {
    ["@comment"] = { bold = true, underline = true, italic = true, fg = "light_grey" },
    LineNr = { fg = "light_grey" },
    FloatBorder = { fg = "light_grey", bg = "NONE" },
    WinSeparator = { fg = "light_grey", bg = "NONE" },
    BufferLineTab = { fg = "light_grey", bg = "NONE" },
    TelescopeBorder = { fg = "light_grey", bg = "NONE" },
    ["@text.line_number"] = { fg = "light_grey" },
    Visual = { bg = "light_grey", fg = "NONE" },
    TodoSignFix,
    -- override nvim-tree
    NvimTreeWinSeparator = { fg = "light_grey" },
    NvimTreeIndentMarker = { fg = "light_grey" },
    NvimTreeWindowPicker = { fg = "light_grey" },
    NvimTreeCursorLine = { bg = "light_grey" },
    TbTabOn = { bg = "light_grey" },
  },
}

M.ui = {
  statusline = {
    theme = "default",
    separator_style = "round",
  },
}

return M
