return {
  'folke/which-key.nvim',
  config = function() -- This is the function that runs, AFTER loading
    local wk = require 'which-key'
    wk.setup()

    -- Document existing key chains
    wk.add {
      { '<leader>a', group = '[a]ngular' },
      { '<leader>a_', hidden = true },

      { '<leader>l', group = '[l]sp' },
      { '<leader>l_', hidden = true },

      { '<leader>d', group = '[d]ocument' },
      { '<leader>d_', hidden = true },

      { '<leader>f', group = '[f]ile' },
      { '<leader>f_', hidden = true },

      { '<leader>g', group = '[g]it' },
      { '<leader>g_', hidden = true },

      { '<leader>gh', group = '[h]unk' },
      { '<leader>gh_', hidden = true },

      { '<leader>fh', group = '[h]arpoon' },
      { '<leader>fh_', hidden = true },

      { '<leader>r', group = '[r]ename' },
      { '<leader>r_', hidden = true },

      { '<leader>s', group = '[s]earch' },
      { '<leader>s_', hidden = true },

      { '<leader>S', group = '[S]earch all files' },
      { '<leader>S_', hidden = true },

      { '<leader>T', group = '[T]oggle' },
      { '<leader>T_', hidden = true },

      { '<leader>t', group = '[t]ab' },
      { '<leader>t_', hidden = true },

      { '<leader>w', group = '[w]indow' },
      { '<leader>w_', hidden = true },

      { '<leader>x', group = 'Diagnostic' },
      { '<leader>x_', hidden = true },

      { '<leader>p', group = '[p]roject' },
      { '<leader>p_', hidden = true },

      { '<leader>pt', group = '[t]est' },
      { '<leader>pt_', hidden = true },
    }

    -- visual mode
    wk.add {
      { '<leader>h', desc = 'Git [H]unk', mode = 'v' },
    }
  end,
}
