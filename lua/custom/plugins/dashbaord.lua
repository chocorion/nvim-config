return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  opts = {
    theme = 'doom',
    config = {
      header = {
        '',
        '',
        '',
        '',
        '',
        '  ,-.       _,---._ __  / \\   ',
        " /  )    .-'       `./ /   \\  ",
        "(  (   ,'            `/    /| ",
        ' \\  `-"             \\\'\\   / | ',
        '  `.              ,  \\ \\ /  | ',
        "   /`.          ,'-`----Y   | ",
        "  (            ;        |   ' ",
        "  |  ,-.    ,-'         |  /  ",
        '  |  | (   |            | /   ',
        '  )  |  \\  `.___________|/    ',
        "  `--'   `--'                ",
        '',
        '',
        '',
      },
      center = {
        {
          icon = ' ',
          icon_hl = 'Title',
          desc = 'Find File           ',
          desc_hl = 'String',
          key = 'f',
          keymap = 'SPC s',
          key_hl = 'Number',
          key_format = ' %s', -- remove default surrounding `[]`
          action = 'Telescope find_files',
        },
        {
          icon = ' ',
          desc = 'Open file browser',
          key = 'o',
          keymap = 'SPC',
          key_format = ' %s', -- remove default surrounding `[]`
          action = 'Yazi toggle',
        },
      },
      footer = {}, --your footer
    },
  },
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
