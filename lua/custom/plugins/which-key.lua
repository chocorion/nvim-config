return {
  'folke/which-key.nvim',
  config = function() -- This is the function that runs, AFTER loading
    local wk = require 'which-key'
    wk.setup()

    -- Document existing key chains
    wk.add {
      { '<leader>a', group = '[A]ngular' },
      { '<leader>a_', hidden = true },

      { '<leader>l', group = '[L]sp' },
      { '<leader>l_', hidden = true },

      { '<leader>d', group = '[D]ocument' },
      { '<leader>d_', hidden = true },

      { '<leader>f', group = '[F]ile' },
      { '<leader>f_', hidden = true },

      { '<leader>fh', group = '[H]arpoon' },
      { '<leader>fh_', hidden = true },

      { '<leader>h', group = 'Git [H]unk' },
      { '<leader>h_', hidden = true },

      { '<leader>r', group = '[R]ename' },
      { '<leader>r_', hidden = true },

      { '<leader>s', group = '[S]earch' },
      { '<leader>s_', hidden = true },

      { '<leader>S', group = '[S]earch all files' },
      { '<leader>S_', hidden = true },

      { '<leader>t', group = '[T]oggle' },
      { '<leader>t_', hidden = true },

      { '<leader>w', group = '[W]orkspace' },
      { '<leader>w_', hidden = true },

      { '<leader>x', group = 'Diagnostic' },
      { '<leader>x_', hidden = true },

      { '<leader>t', group = 'Test' },
      { '<leader>t_', hidden = true },
    }
    -- visual mode

    wk.add {
      { '<leader>h', desc = 'Git [H]unk', mode = 'v' },
    }
  end,
}
