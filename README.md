# mason-jit-installation.nvim

This is a wrapper for
[mason-lspconfig-jit-installation.nvim](https://github.com/brandoncc/mason-lspconfig-jit-installation.nvim)
and
[mason-null-ls-jit-installation.nvim](https://github.com/brandoncc/mason-null-ls-jit-installation.nvim).
The wrapper allows you to specify your LSP servers and null-ls/none-ls
sources in one place.

## Setup

`require('mason-jit-installation').setup()` should be called with an options
table. Valid options keys are `lspconfig` and `"null-ls"`. Each key's value should be specified according to the documentation for the relevant plugin.

I use lazy.nvim, so that is the example I'm adding. I will happily accept pull
requests adding more examples.

### lazy.nvim

This is an example of combining the setup examples from
[mason-lspconfig-jit-installation.nvim](https://github.com/brandoncc/mason-lspconfig-jit-installation.nvim)
and
[mason-null-ls-jit-installation.nvim](https://github.com/brandoncc/mason-null-ls-jit-installation.nvim)

```lua
{
  "brandoncc/mason-jit-installation.nvim",
  dependencies = {
    "brandoncc/mason-lspconfig-jit-installation.nvim",
    "brandoncc/mason-null-ls-jit-installation.nvim",
  },
  opts = {
    lspconfig = {
      servers = {
        "lua_ls",
      },
    },
    ["null-ls"] = {
      sources = {
        eslint_d = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
        stylua = { "lua" },
      },
    },
  },
}
```
