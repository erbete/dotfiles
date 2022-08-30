local keymap = vim.keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ","

-- window navigation
keymap.set("n", "<C-h>", "<C-w>h", opts)
keymap.set("n", "<C-j>", "<C-w>j", opts)
keymap.set("n", "<C-k>", "<C-w>k", opts)
keymap.set("n", "<C-l>", "<C-w>l", opts)

-- resize window
keymap.set("n", "<M-j>", ":resize -2<CR>", opts)
keymap.set("n", "<M-k>", ":resize +2<CR>", opts)
keymap.set("n", "<M-h>", ":vertical resize -2<CR>", opts)
keymap.set("n", "<M-l>", ":vertical resize +2<CR>", opts)

-- lsp
keymap.set("n", "<leader>d", "<CMD>lua vim.lsp.buf.hover()<CR>", opts)
keymap.set("n", "<leader>rn", "<CMD>lua vim.lsp.buf.rename()<CR>", opts)
keymap.set("n", "<leader>ca", "<CMD>lua vim.lsp.buf.code_action()<CR>", opts)

-- cmp
local cmp = require "cmp"
cmp.setup {
  mapping = {
    ["<C-p>"] = cmp.mapping.select_prev_item(),
    ["<C-n>"] = cmp.mapping.select_next_item(),
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-u>"] = cmp.mapping.scroll_docs(4),
    ["<C-e>"] = cmp.mapping.close(),
    ["<CR>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true, -- hit enter to select first suggestion
    },
  },
}

-- telescope
keymap.set("n", "<leader>f", "<CMD>Telescope find_files theme=ivy<CR>", opts)
keymap.set("n", "<leader>ff", "<CMD>Telescope find_files cwd=$HOME theme=ivy<CR>", opts)
keymap.set("n", "<leader>fg", "<CMD>Telescope git_files theme=ivy<CR>", opts)
keymap.set("n", "<leader>fr", "<CMD>Telescope live_grep theme=ivy<CR>", opts)
keymap.set("n", "<leader>fs", "<CMD>Telescope grep_string theme=ivy<CR>", opts)
keymap.set("n", "<leader>fb", "<CMD>Telescope buffers theme=ivy<CR>", opts)
keymap.set("n", "<leader>fz", "<CMD>Telescope current_buffer_fuzzy_find theme=ivy<CR>", opts)
keymap.set("n", "<leader>re", "<CMD>Telescope lsp_references theme=ivy<CR>", opts)
keymap.set("n", "<leader>dd", "<CMD>Telescope diagnostics bufnr=0 theme=ivy<CR>", opts)
keymap.set("n", "<leader>wd", "<CMD>Telescope diagnostics theme=ivy<CR>", opts)
keymap.set("n", "<leader>i", "<CMD>Telescope lsp_implementations theme=ivy<CR>", opts)
keymap.set("n", "<leader>df", "<CMD>Telescope lsp_definitions theme=ivy<CR>", opts)
keymap.set("n", "<leader>b", "<CMD>Telescope file_browser theme=ivy<CR>", opts)
keymap.set("n", "<leader>fd", "<CMD>Telescope lsp_document_symbols theme=ivy<CR>", opts)

-- cycle between buffers
keymap.set("n", "<S-Tab>", ":bn<CR>", opts)

-- move line
keymap.set("n", "<S-Up>", ":m .-2<CR>==", opts)
keymap.set("n", "<S-Down>", ":m .+1<CR>==", opts)
