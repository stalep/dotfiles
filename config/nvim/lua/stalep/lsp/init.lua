local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "stalep.lsp.mason"
require("stalep.lsp.handlers").setup()
require "stalep.lsp.null-ls"
