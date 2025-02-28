return {
  {
    'saghen/blink.cmp',
    opts = {
      -- to prevent enter from selecting and using the first suggestion
      -- ... use ctrl-y for that
      completion = {
        list = { selection = { preselect = false, auto_insert = false } },
      }
    },
  }
}
