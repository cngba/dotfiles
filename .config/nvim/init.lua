-- cngba - NVim config
-- 2026-04-29

-- MAP LEADER
vim.g.mapleader = " "

local o = vim.opt
require("config.lazy")
require("config.keymaps")

-- --- General Settings ---
o.number = true -- Show line numbers
o.relativenumber = true -- Relative numbers
o.mouse = "a" -- Enable mouse support

-- Autoread when a file is changed from outside
o.autoread = true

-- --- Indentation & Tabs ---
o.expandtab = true -- Convert tabs to spaces
o.tabstop = 4 -- 4 spaces for a tab
o.shiftwidth = 4 -- Indent width
o.softtabstop = 4 -- Backspace deletes 4 spaces
o.autoindent = true -- Copy indent from current line
o.smartindent = true -- Smart indentation

-- --- Search ---
o.hlsearch = true -- Highlight search results
o.incsearch = true -- Search as you type
o.ignorecase = true -- Ignore case when searching
o.smartcase = true -- Case sensitive if capital letter used

-- --- UI & Performance ---
o.cursorline = true -- Highlight current line
o.showmatch = true -- Highlight matching brackets
o.wildmenu = true -- Visual autocomplete
o.laststatus = 2 -- Always display the status line
o.errorbells = false -- No error bells
o.visualbell = false -- No visual bell
o.foldcolumn = "1" -- Extra margin to left
o.linebreak = true -- Linebreak
o.textwidth = 500 -- Text width

-- --- Status line ---
-- This mimics your specific statusline format
o.statusline = " %{v:lua.HasPaste()}%F%m%r%h %w CWD: %{getcwd()} Line: %l Column: %c"

-- --- Mapping ---
-- 0 to first non-blank
vim.keymap.set("n", "0", "^", { noremap = true })

-- --- Misc ---
-- Add confirmation
o.confirm = true

-- --- Helper ---
-- Function to show Paste Mode in status line
function _G.HasPaste()
  if o.paste:get() then
    return "PASTE MODE "
  end
  return ""
end
-- You can add %{v:lua.HasPaste()} to your statusline string if needed
