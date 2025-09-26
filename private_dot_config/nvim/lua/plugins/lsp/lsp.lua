return {
  "neovim/nvim-lspconfig",
  -- event = { "BufReadPre", "BufNewFile" },
  config = function()
    local keymap = vim.keymap -- for conciseness

    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = { buffer = ev.buf, silent = true }

        -- set keybinds
        -- buffer
        opts.desc = "LSP: See available code actions"
        keymap.set({ "n", "v" }, "<leader>lca", vim.lsp.buf.code_action, opts) -- See available code actions, in visual mode will apply to selection

        opts.desc = "LSP: Smart rename"
        keymap.set("n", "<leader>lrn", vim.lsp.buf.rename, opts) -- smart rename

        opts.desc = "LSP: Go to declaration"
        keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration

        opts.desc = "LSP: Show documentation for what is under cursor"
        keymap.set("n", "K", vim.lsp.buf.hover, opts) -- Show documentation for what is under cursor

        -- diagnostics
        opts.desc = "LSP: Show line diagnostics"
        keymap.set("n", "<leader>lds", vim.diagnostic.open_float, opts) -- show diagnostics for line

        opts.desc = "LSP: Go to previous diagnostic"
        keymap.set("n", "<leader>ldp", vim.diagnostic.goto_prev, opts) -- Jump to previous diagnostic in buffer

        opts.desc = "LSP: Go to next diagnostic"
        keymap.set("n", "<leader>ldn", vim.diagnostic.goto_next, opts) -- Jump to next diagnostic in buffer

        opts.desc = "LSP: Show buffer diagnostics"
        keymap.set("n", "<leader>ldo", "<cmd>lua Snacks.picker.diagnostics_buffer()<CR>", opts) -- show diagnostics for file

        -- picker
        opts.desc = "LSP: Show LSP references"
        keymap.set("n", "gR", "<cmd>lua Snacks.picker.lsp_references()<CR>", opts) -- show definition, references

        opts.desc = "LSP: Show LSP definitions"
        keymap.set("n", "gd", "<cmd>lua Snacks.picker.lsp_definitions()<CR>", opts) -- show lsp definitions

        opts.desc = "LSP: Show LSP implementations"
        keymap.set("n", "gi", "<cmd>lua Snacks.picker.lsp_implementations()<CR>", opts) -- show lsp implementations

        opts.desc = "LSP: Show LSP type definitions"
        keymap.set("n", "gt", "<cmd>lua Snacks.picker.lsp_type_definitions()<CR>", opts) -- show lsp type definitions

        -- other
        opts.desc = "LSP: Switch between header and source"
        keymap.set("n", "gh", "<cmd>ClangdSwitchSourceHeader<CR>", opts)
      end,
    })

    -- Change the Diagnostic symbols in the sign column (gutter)
    local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end
  end,
}
