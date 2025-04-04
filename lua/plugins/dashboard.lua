-- I created the first text image with the help of the `asciiart` website: [https://www.asciiart.eu/text-to-ascii-art](https://www.asciiart.eu/text-to-ascii-art),
-- while the crocodile image was taken from [https://ascii.co.uk/art/crocodile](https://ascii.co.uk/art/crocodile)

-- disabling this file as snacks.nvim has its own dashboard plugin now, and its now the default one in LazyVim
-- ref: https://github.com/folke/snacks.nvim/blob/main/docs/dashboard.md
-- TODO: remove this file later once you are comfortable with the new dashboard plugin
if true then
  return {}
end

return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  opts = function()
    local logo = [[
  _____                                                               _____
  ( ___ )                                                             ( ___ )
  |   |~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|   |
  |   | ███╗   ███╗ █████╗ ██╗  ██╗██╗███╗   ███╗██╗   ██╗███╗   ███╗ |   |
  |   | ████╗ ████║██╔══██╗╚██╗██╔╝██║████╗ ████║██║   ██║████╗ ████║ |   |
  |   | ██╔████╔██║███████║ ╚███╔╝ ██║██╔████╔██║██║   ██║██╔████╔██║ |   |
  |   | ██║╚██╔╝██║██╔══██║ ██╔██╗ ██║██║╚██╔╝██║██║   ██║██║╚██╔╝██║ |   |
  |   | ██║ ╚═╝ ██║██║  ██║██╔╝ ██╗██║██║ ╚═╝ ██║╚██████╔╝██║ ╚═╝ ██║ |   |
  |   | ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝     ╚═╝ ╚═════╝ ╚═╝     ╚═╝ |   |
  |   |                                                               |   |
  |   |                      .-._   _ _ _ _ _ _ _ _                   |   |
  |   |            .-''-.__.-'00  '-' ' ' ' ' ' ' ' '-.               |   |
  |   |            '.___ '    .   .--_'-' '-' '-' _'-' '._            |   |
  |   |            V: V 'vv-'   '_   '.       .'  _..' '.'.           |   |
  |   |              '=.____.=_.--'   :_.__.__:_   '.   : :           |   |
  |   |                      (((____.-'        '-.  /   : :           |   |
  |   |                                        (((-'\ .' /            |   |
  |   |                                      _____..'  .'             |   |
  |   |                                      '-._____.-'              |   |
  |   |                                                               |   |
  |   | ██╗      █████╗ ███████╗██╗███╗   ██╗███████╗███████╗███████╗ |   |
  |   | ██║     ██╔══██╗╚══███╔╝██║████╗  ██║██╔════╝██╔════╝██╔════╝ |   |
  |   | ██║     ███████║  ███╔╝ ██║██╔██╗ ██║█████╗  ███████╗███████╗ |   |
  |   | ██║     ██╔══██║ ███╔╝  ██║██║╚██╗██║██╔══╝  ╚════██║╚════██║ |   |
  |   | ███████╗██║  ██║███████╗██║██║ ╚████║███████╗███████║███████║ |   |
  |   | ╚══════╝╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═══╝╚══════╝╚══════╝╚══════╝ |   |
  |___|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|___|
  (_____)                                                             (_____)
    ]]

    logo = string.rep("\n", 1) .. logo .. "\n"

    local opts = {
      theme = "doom",
      hide = {
        -- this is taken care of by lualine
        -- enabling this messes up the actual laststatus setting after loading a file
        statusline = false,
      },
      config = {
        header = vim.split(logo, "\n"),
          -- stylua: ignore
          center = {
            { action = "Telescope find_files",                                     desc = " Find file",       icon = " ", key = "f" },
            { action = "ene | startinsert",                                        desc = " New file",        icon = " ", key = "n" },
            { action = "Telescope oldfiles",                                       desc = " Recent files",    icon = " ", key = "r" },
            { action = "Telescope live_grep",                                      desc = " Find text",       icon = " ", key = "g" },
            { action = [[lua require("lazyvim.util").telescope.config_files()()]], desc = " Config",          icon = " ", key = "c" },
            { action = 'lua require("persistence").load()',                        desc = " Restore Session", icon = " ", key = "s" },
            { action = "LazyExtras",                                               desc = " Lazy Extras",     icon = " ", key = "x" },
            { action = "Lazy",                                                     desc = " Lazy",            icon = "󰒲 ", key = "l" },
            { action = "qa",                                                       desc = " Quit",            icon = " ", key = "q" },
          },
        footer = function()
          local stats = require("lazy").stats()
          local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
          return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
        end,
      },
    }

    for _, button in ipairs(opts.config.center) do
      button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
      button.key_format = "  %s"
    end

    -- close Lazy and re-open when the dashboard is ready
    if vim.o.filetype == "lazy" then
      vim.cmd.close()
      vim.api.nvim_create_autocmd("User", {
        pattern = "DashboardLoaded",
        callback = function()
          require("lazy").show()
        end,
      })
    end

    return opts
  end,
}
