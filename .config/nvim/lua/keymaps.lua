function Map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

Map("n", "<Leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle Explorer" })
Map("n", "<Leader>n", ":tabnew<CR>", { desc = "New Buffer" })
Map("n", "<Leader>o", ":NvimTreeFocus<CR>", { desc = "Focus Explorer" })
Map("n", "<Leader>z", ":ZenMode<CR>", { desc = "Toggle ZenMode" })
Map("n", "<Leader>x", ":TroubleToggle<CR>", { desc = "Toggle Trouble Menu" })
Map("n", "<A-,>", ":BufferPrevious<CR>")
Map("n", "<A-.>", ":BufferNext<CR>")
Map("n", "<A-<>", ":BufferMovePrevious<CR>")
Map("n", "<A->>", ":BufferMoveNext<CR>")
Map("n", "<leader>1", ":BufferGoto 1<CR>")
Map("n", "<leader>2", ":BufferGoto 2<CR>")
Map("n", "<leader>3", ":BufferGoto 3<CR>")
Map("n", "<leader>4", ":BufferGoto 4<CR>")
Map("n", "<leader>5", ":BufferGoto 5<CR>")
Map("n", "<leader>6", ":BufferGoto 6<CR>")
Map("n", "<leader>7", ":BufferGoto 7<CR>")
Map("n", "<leader>8", ":BufferGoto 8<CR>")
Map("n", "<leader>9", ":BufferGoto 9<CR>")
Map("n", "<leader>0", ":BufferLast<CR>")
Map("n", "<leader>p", ":BufferPin<CR>")
Map("n", "<leader>c", ":BufferClose<CR>")
Map("n", "<A-p>", ":BufferPick<CR>")
Map("n", "<Leader>bb", ":BufferOrderByBufferNumber<CR>")
Map("n", "<Leader>bd", ":BufferOrderByDirectory<CR>")
Map("n", "<Leader>bl", ":BufferOrderByLanguage<CR>")
Map("n", "<Leader>bw", ":BufferOrderByWindowNumber<CR>")

require("which-key").register()
