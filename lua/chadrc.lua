-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "everforest",
  transparency = true,
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}
-- ["hrsh7th/nvim-cmp"] = {
--    override_options = function()
--      local cmp = require "cmp"
--
--      return {
--        mapping = {
--          ["<Up>"] = cmp.mapping.select_prev_item(),
--          ["<Down>"] = cmp.mapping.select_next_item(),
--        },
--      }
--    end,
--  },

return M
