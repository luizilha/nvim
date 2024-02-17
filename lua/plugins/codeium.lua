return {
  "Exafunction/codeium.vim",
  config = function()
    vim.keymap.set("i", "<c-k>", function()
      return vim.fn["codeium#CycleCompletions"](1)
    end, { expr = true })
    vim.keymap.set("i", "<c-b>", function()
      return vim.fn["codeium#CycleCompletions"](-1)
    end, { expr = true })
    vim.keymap.set("i", "<c-x>", function()
      return vim.fn["codeium#Complete"]()
    end, { expr = true })
  end,
}
