return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<leader>bD"] = {
            function()
              require("astronvim.utils.status").heirline.buffer_picker(
                function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
              )
            end,
            desc = "Pick to close",
          },
          -- tables with the `name` key will be registered with which-key if it's installed
          -- this is useful for naming menus
          ["<leader>b"] = { name = "Buffers" },
          -- quick save
          -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
          -- Tabs
          ["<tab>"] = {
            function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
            desc = "Next buffer",
          },
          -- Spectre
          ["<leader>s"] = { desc = "Spectre" },
          ["<leader>so"] = { "<cmd>lua require('spectre').open()<CR>", desc = "[s]pectre [o]pen" },
          ["<leader>sw"] = {
            "<cmd>lua require('spectre').open_visual({select_word=true})<CR>",
            desc = "[s]pectre search [w]ord",
          },
          -- Telescope Plugins
          ["<leader>T"] = { desc = "Telescope plugins" },
          ["<leader>Tf"] = {
            "<Cmd>lua require('telescope').extensions.frecency.frecency({ workspace = 'CWD' })<CR>",
            desc = "[T]elescope [f]requency",
          },
          ["<leader>Tb"] = {
            ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
            desc = "[T]elescope file [b]rowser",
          },
          ["<leader>Tm"] = { ":Telescope mapper<CR>", desc = "[T]elescope [m]apper" },
          -- Neo Tree
          ["<leader>N"] = { desc = "[N]eo tree" },
          ["<leader>Ng"] = { "<cmd> Neotree git_status<CR>", desc = "[N]eotree [g]it status" },
          ["<leader>Nb"] = { "<cmd> Neotree buffers<CR>", desc = "[N]eotree [b]uffers" },
          ["<leader>Nf"] = { "<cmd> Neotree filesystem<CR>", desc = "[N]eotree [f]ile system" },
          -- LazyGit
          ["<leader>gz"] = { "<cmd> LazyGit <CR>", desc = "[g]it La[z]yGit" },
        },
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      mappings = {
        n = {
          -- this mapping will only be set in buffers with an LSP attached
          K = {
            function() vim.lsp.buf.hover() end,
            desc = "Hover symbol details",
          },
          -- condition for only server with declaration capabilities
          gD = {
            function() vim.lsp.buf.declaration() end,
            desc = "Declaration of current symbol",
            cond = "textDocument/declaration",
          },
        },
      },
    },
  },
}
