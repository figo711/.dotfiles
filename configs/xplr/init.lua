version = '0.21.3'


local home = os.getenv("HOME")
package.path = home
.. "/.config/xplr/plugins/?/init.lua;"
.. home
.. "/.config/xplr/plugins/?.lua;"
.. package.path

require"icons".setup()
require("zentable").setup()
require("tree-view").setup({
    mode = "switch_layout",
    key = "T",

    -- If you feel slowness, you might want to toggle back to the default view.
    toggle_layout_mode = "default",
    toggle_layout_key = "esc",

    -- Press backspace to close all and back and close
    close_all_and_back_mode = "default",
    close_all_and_back_key = "backspace",

    -- Toggle expansion without entering
    toggle_expansion_mode = "default",
    toggle_expansion_key = "o",

    -- Toggle expansion of all the nodes under pwd
    toggle_expansion_all_mode = "default",
    toggle_expansion_all_key = "O",

    -- Focus on the next visible line, not compatible with up/down action
    focus_next_mode = "default",
    focus_next_key = "]",

    -- Focus on the previous visible line, not compatible with up/down action
    focus_prev_mode = "default",
    focus_prev_key = "[",

    -- Go to the next deep level directory that's open
    goto_next_open_mode = "default",
    goto_next_open_key = ")",

    -- Go to the previous deep level directory that's open
    goto_prev_open_mode = "default",
    goto_prev_open_key = "(",

    -- Whether to display the tree in full screen
    fullscreen = false,

    -- Indent for the branches of the tree
    indent = "  ",

    -- Start xplr with tree view layout
    as_initial_layout = false,

    -- Disables toggling layout.
    as_default_layout = false,

    -- Automatically fallback to this layout for better performance if the
    -- branch contains # of nodes more than the threshold value
    fallback_layout = "Table",
    fallback_threshold = 500,  -- default: nil (disabled)
})


local xpm_path = home .. "/.local/share/xplr/dtomvan/xpm.xplr"
local xpm_url = "https://github.com/dtomvan/xpm.xplr"

package.path = package.path
  .. ";"
  .. xpm_path
  .. "/?.lua;"
  .. xpm_path
  .. "/?/init.lua"

os.execute(
  string.format(
    "[ -e '%s' ] || git clone '%s' '%s'",
    xpm_path,
    xpm_url,
    xpm_path
  )
)

require("xpm").setup({
  plugins = {
    -- Let xpm manage itself
    'dtomvan/xpm.xplr',
    { name = 'sayanarijit/fzf.xplr' },
    { 'gitlab:hartan/web-devicons.xplr'},
    { 
      'dtomvan/extra-icons.xplr',
      after = function()
          xplr.config.general.table.row.cols[2] = { format = "custom.icons_dtomvan_col_1" }
      end
    },
  },
  auto_install = true,
  auto_cleanup = true,
})

-- Image viewer (using imv)
xplr.config.modes.builtin.default.key_bindings.on_key.P = {
  help = "preview",
  messages = {
    {
      BashExecSilently0 = [===[
        FIFO_PATH="/tmp/xplr.fifo"

        if [ -e "$FIFO_PATH" ]; then
          "$XPLR" -m StopFifo
          rm -f -- "$FIFO_PATH"
        else
          mkfifo "$FIFO_PATH"
          "$HOME/.local/bin/imv-open.sh" "$FIFO_PATH" "$XPLR_FOCUS_PATH" &
          "$XPLR" -m 'StartFifo: %q' "$FIFO_PATH"
        fi
      ]===],
    },
  },
}

