return {
  "akinsho/bufferline.nvim",
  config = function()
    require("bufferline").setup({
      options = {
        diagnostics = "nvim_lsp",
        offsets = {
          {
            filetype = "NvimTree",
            separator = true,
            text_align = "left",
          }
        }
      }
    })
  end
}
