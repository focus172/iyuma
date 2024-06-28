return {
    -- See `<cmd> :help vim.lsp.*` for documentation on any of the below functions
    -- {
    --     "<leader>cl",
    --     "<cmd>LspInfo<cr>",
    --     desc = "Lsp Info",
    -- },
    -- {
    --     "gr",
    --     "<cmd>Telescope lsp_references<cr>",
    --     desc = "References"
    -- },
    -- {
    --     "gD",
    --     vim.lsp.buf.declaration,
    --     desc = "Goto Declaration"
    -- },
    -- {
    --     "gI",
    --     function() require("telescope.builtin").lsp_implementations({ reuse_win = true }) end,
    --     desc = "Goto Implementation"
    -- },
    -- {
    --     "gy",
    --     function() require("telescope.builtin").lsp_type_definitions({ reuse_win = true }) end,
    --     desc = "Goto T[y]pe Definition"
    -- },
    -- {
    --     "K",
    --     vim.lsp.buf.hover,
    --     desc = "Hover"
    -- },
    -- {
    --     "gK",
    --     vim.lsp.buf.signature_help,
    --     desc = "Signature Help",
    -- },
    -- {
    --     "<c-k>",
    --     vim.lsp.buf.signature_help,
    --     mode = "i",
    --     desc = "Signature Help"
    -- },
    -- {
    --     "]d",
    --     vim.diagnostic.goto_next,
    --     desc = "Next Diagnostic"
    -- },
    -- {
    --     "[d",
    --     vim.diagnostic.goto_prev,
    --     desc = "Prev Diagnostic"
    -- },
    -- {
    --     "<leader>cf",
    --     vim.lsp.buf.format,
    --     desc = "Format Document",
    -- },
    n = {
        -- {
        --     "gd",
        --     function() require("telescope.builtin").lsp_definitions({ reuse_win = true }) end,
        --     desc = "Goto Definition"
        -- },

        -- ["todo"] = {
        --  function()
        --      vim.lsp.buf.rename()
        --  end,
        --    "Lsp Rename"
        -- },


        -- ["<leader>f"] = {
        --   function()
        --     vim.diagnostic.open_float { border = "rounded" }
        --   end,
        --   "Floating diagnostic",
        -- },
        -- ["<leader>q"] = {
        --     function()
        --         vim.diagnostic.setloclist()
        --     end,
        --     "Diagnostic setloclist",
        -- },
        -- ["<leader>wa"] = {
        --     function()
        --         vim.lsp.buf.add_workspace_folder()
        --     end,
        --     "Add workspace folder",
        -- },
        --
        -- ["<leader>wr"] = {
        --     function()
        --         vim.lsp.buf.remove_workspace_folder()
        --     end,
        --     "Remove workspace folder",
        -- },
        -- ["<leader>wl"] = {
        --     function()
        --         print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        --     end,
        --     "List workspace folders",
        -- },
    },
}

-- local opts = { buffer = bufnr, remap = false, desc = "test" }
--
-- opts.desc = "[G]o to [D]efinition";
-- vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
-- opts.desc = "Show codelens";
-- vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
-- opts.desc = "Show symbol in wors[S]pace";
-- vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
-- opts.desc = "Open [D]iagnostics";
-- vim.keymap.set("n", "<leader>d", function() vim.diagnostic.open_float() end, opts)
-- opts.desc = "Next diagnostic";
-- vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
-- opts.desc = "Prev diagnostic";
-- vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
-- opts.desc = "[C]ode [A]ctions";
-- vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
-- opts.desc = "[V]ariable [R]eferences";
-- vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
-- opts.desc = "[V]ariable [R]e[N]ame";
-- vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
-- opts.desc = "Get signature [HELP]";
-- vim.keymap.set("n", "<leader>help", vim.lsp.buf.signature_help, opts)

-- Buffer local mappings.
-- See `:help vim.lsp.*` for documentation on any of the below functions
-- vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
-- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
-- vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
-- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
-- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
-- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
-- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
-- vim.keymap.set('n', '<space>wl', function()
--     print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
-- end, opts)
-- vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
-- vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
-- vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
-- vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
-- vim.keymap.set('n', '<space>f', function()
--     vim.lsp.buf.format { async = true }
-- end, opts)
