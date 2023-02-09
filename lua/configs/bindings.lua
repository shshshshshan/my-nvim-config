--------------------
-- Custom Keybinds --
---------------------

local function noremap(m, k, v)
    vim.api.nvim_set_keymap(m, k, v, { noremap = true })
end

local function map(m, k, v)
    vim.api.nvim_set_keymap(m, k, v, { silent = true })
end

vim.api.nvim_set_keymap("n", "<Space>", "", { noremap = true })
-----------------
-- Insert Mode --
-----------------

-- Completion --
noremap("i", "<A-.>", "<C-N>") -- Show next suggestion
noremap("i", "<A-,>", "<C-P>") -- Show previous suggestion
noremap("i", "<A-Space>", "<C-e>") -- Undo a suggestion

-- Window navigation --
noremap("i", "<A-h>", "<C-\\><C-N><C-w>h") -- Move cursor to left window
noremap("i", "<A-j>", "<C-\\><C-N><C-w>j") -- Move cursor to below window
noremap("i", "<A-k>", "<C-\\><C-N><C-w>k") -- Move cursor to above window
noremap("i", "<A-l>", "<C-\\><C-N><C-w>l") -- Move cursor to right window

noremap("i", "<A-x>", "<C-\\><C-N><C-w>o") -- Close all but current window
noremap("i", "<A-q>", "<C-\\><C-N><C-w>q") -- Close current window
noremap("i", "<A-Q>", "<Cmd>qall<CR>") -- Close all windows

noremap("i", "<A-w>", "<Cmd>w<CR>") -- Save changes on current window
noremap("i", "<A-W>", "<Cmd>wall<CR>") -- Save changes on all windows

noremap("i", "<A-`>", "<C-\\><C-N><C-w>w") -- Cycles through each windows
noremap("i", "<A-=>", "<C-\\><C-N><C-w>=") -- Makes all windows the same height and width

noremap("i", "<A-H>", "<C-\\><C-N><C-w>H") -- Moves the window to the farthest left
noremap("i", "<A-J>", "<C-\\><C-N><C-w>J") -- Moves the window to the farthest up
noremap("i", "<A-K>", "<C-\\><C-N><C-w>K") -- Moves the window to the farthest down
noremap("i", "<A-L>", "<C-\\><C-N><C-w>L") -- Moves the window to the farthest right

-- Another way to exit insert mode --
noremap("i", "<A-n>", "<C-\\><C-N>") -- Exit insert mode by typing jk

-----------------
-- Normal Mode --
-----------------

-- Window navigation --
noremap("n", "<A-h>", "<C-w>h") -- Move cursor to left window
noremap("n", "<A-j>", "<C-w>j") -- Move cursor to below window
noremap("n", "<A-k>", "<C-w>k") -- Move cursor to above window
noremap("n", "<A-l>", "<C-w>l") -- Move cursor to right window

noremap("n", "<A-x>", "<C-w>o") -- Close all but current window
noremap("n", "<A-q>", "<C-w>q") -- Close current window
noremap("n", "<A-Q>", "<Cmd>qall<CR>") -- Close all windows

noremap("n", "<A-w>", "<Cmd>w<CR>") -- Save changes on current window
noremap("n", "<A-W>", "<Cmd>wall<CR>") -- Save changes on all windows

noremap("n", "<A-`>", "<C-w>w") -- Cycles through each windows
noremap("n", "<A-=>", "<C-w>=") -- Makes all windows the same height and width

noremap("n", "<A-H>", "<C-w>H") -- Moves the window to the farthest left
noremap("n", "<A-J>", "<C-w>J") -- Moves the window to the farthest up
noremap("n", "<A-K>", "<C-w>K") -- Moves the window to the farthest down
noremap("n", "<A-L>", "<C-w>L") -- Moves the window to the farthest right

map("n", "<Leader>/", "<Cmd>q!<CR>") -- Force quits a window

-- Line manipulation --
map("n", "<Leader>j", "<Cmd>move +1<CR>") -- Moves the current line upwards while shifting the other lines down
map("n", "<Leader>k", "<Cmd>move .-2<CR>") -- Moves the current line upwards while shifting the other lines down
map("n", "<Leader>;", "<Cmd>normal 0<CR><Cmd>normal yy<CR><Cmd>normal p<CR>") -- Duplicates the current line

-- Line movement override --
noremap("n", "j", "gj") -- Moves through wrapped-around lines
noremap("n", "k", "gk") -- Moves through wrapped-around lines

-- Terminal window in split view --
map("n", "<F12>", "<Cmd>vsplit term://bash<CR>") -- Opens a new terminal instance in split mode

-- Tagbar and NERDTree window --
map("n", "<F3>", "<Cmd>TagbarToggle<CR><Cmd>TagbarTogglePause<CR>") -- Opens a tagbar instance
map("n", "<F4>", "<Cmd>NERDTreeToggle<CR>") -- Opens a tagbar instance

map("n", "<F7>", "<Cmd>windo diffthis<CR>") -- Opens diff view mode
map("n", "<F8>", "<Cmd>diffoff<CR>") -- Closes diff view mode

-- Hotkey Help --
map("n", "<Leader>h", "<Cmd>vert sview ~/.config/nvim/hotkeys.txt<CR>") -- Opens the hotkeys help in a split view

-- Inserting new line --
map("n", "<Leader>o", "o<Esc>") -- Inserts blank line below without exiting normal mode
map("n", "<Leader>O", "O<Esc>") -- Inserts blank line above without exiting normal mode

-------------------
-- Terminal Mode --
-------------------

-- Window navigation --
noremap("t", "<A-h>", "<C-\\><C-N><C-w>h") -- Move cursor to left window
noremap("t", "<A-j>", "<C-\\><C-N><C-w>j") -- Move cursor to below window
noremap("t", "<A-k>", "<C-\\><C-N><C-w>k") -- Move cursor to above window
noremap("t", "<A-l>", "<C-\\><C-N><C-w>l") -- Move cursor to right window

noremap("t", "<A-x>", "<C-\\><C-N><C-w>o") -- Close all but current window
noremap("t", "<A-q>", "<C-\\><C-N><C-w>q") -- Close current window
noremap("t", "<A-Q>", "<Cmd>qall<CR>") -- Close all windows

noremap("t", "<A-w>", "<Cmd>w<CR>") -- Save changes on current window
noremap("t", "<A-W>", "<Cmd>wall<CR>") -- Save changes on all windows

noremap("t", "<A-`>", "<C-\\><C-N><C-w>w") -- Cycles through each windows
noremap("t", "<A-=>", "<C-\\><C-N><C-w>=") -- Makes all windows the same height and width

noremap("t", "<A-H>", "<C-\\><C-N><C-w>H") -- Moves the window to the farthest left
noremap("t", "<A-J>", "<C-\\><C-N><C-w>J") -- Moves the window to the farthest up
noremap("t", "<A-K>", "<C-\\><C-N><C-w>K") -- Moves the window to the farthest down
noremap("t", "<A-L>", "<C-\\><C-N><C-w>L") -- Moves the window to the farthest right
noremap("t", "<A-n>", "<C-\\><C-N>") -- Switches the mode to Normal mode

---------------------
-- Tab Navigations --
---------------------

map("n", "<A-r>", "<Cmd>tabn<CR>") -- Moves cursor to next tab
map("n", "<A-e>", "<Cmd>tabp<CR>") -- Moves cursor to previous tab
map("n", "<Leader>q", "<Cmd>tabc!<CR>") -- Closes all tabs
map("n", "<Leader>w", "<Cmd>tabo!<CR>") -- Closes all other tabs except current
map("n", "<Leader>z", "<Cmd>tab ba<CR>") -- Converts all buffers as tabs
map("n", "<Leader>x", "<Cmd>vert ba<CR>") -- Converts all buffers as vertical windows

------------------------
-- Buffer Navigations --
------------------------
map("n", "<Leader>]", "<Cmd>bn<CR>") -- Moves cursor to next buffer
map("n", "<Leader>[", "<Cmd>bp<CR>") -- Moves cursor to prev buffer
map("n", "<Leader>-", "<Cmd>bd!<CR>") -- Delete a buffer without saving

---------------------------
-- Distraction-free Mode --
---------------------------
map("n", "<Leader>g", "<Cmd>Goyo<CR>") -- Enter distraction-free mode

--------------
-- Undotree --
--------------
map("n", "<Leader>u", "<Cmd>UndotreeToggle<CR>") -- Open Undotree in a split view

------------------
-- Fuzzy finder --
------------------
map("n", "<Leader>f", "<Cmd>FZF ~<CR>") -- Opens fuzzy finder inside Neovim
