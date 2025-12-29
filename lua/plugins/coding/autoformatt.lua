return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" }, -- Carrega o plugin antes de salvar
  cmd = { "ConformInfo" },
  opts = {
    formatters_by_ft = {
      -- Defina aqui quais linguagens o Prettier deve cuidar
      javascript = { "prettier" },
      typescript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
      json = { "prettier" },
      html = { "prettier" },
      css = { "prettier" },
      markdown = { "prettier" },
    },
    -- Configuração para formatar ao salvar
    format_on_save = {
      lsp_fallback = true, -- Se não tiver prettier, tenta usar o LSP
      timeout_ms = 500,
    },
  },
}
