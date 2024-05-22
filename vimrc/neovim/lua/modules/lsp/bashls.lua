local lspconfig = require("lspconfig")

local M = {}

M.setup = function(on_attach, capabilities)
  lspconfig.bashls.setup({
    on_attach = on_attach,
    capabilities = capabilities or {},
    filetypes = { "sh" },
    single_file_support = true
  })
end

return M