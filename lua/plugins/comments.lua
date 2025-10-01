return {
  "terrortylor/nvim-comment",
  config = function()
    require("nvim_comment").setup({
      -- твои опции
      marker_padding = true,
      comment_empty = true,
      line_mapping = "gcc",
      operator_mapping = "gc",
      comment_chunk_text_object = "ic",
    })
  end,
}

