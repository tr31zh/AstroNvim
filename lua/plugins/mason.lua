--if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Mason plugins

---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "lua_ls",
        -- Python
        "pyright",
        -- Latex
        "texlab",
        -- Typescript
        "tsserver",
        -- HTML
        "html",
        -- Haskell
        "hls",
        -- Docker
        "docker_compose_language_service",
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        "stylua",
        -- Python
        "black",
        "pylint",
        -- Latex
        "texlab",
        "latexindent",
        "vale",
        -- Typescript
        "eslint_d",
        "prettier",
        -- Haskell
        "fourmolu",
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = {
        "python",
        -- Typescript
        "firefox",
        "chrome",
        -- Haskell
        "haskell",
      },
    },
  },
}
