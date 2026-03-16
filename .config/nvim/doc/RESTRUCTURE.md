nvim/
├── init.lua              # Bootstraps lazy.nvim and loads core modules & plugins
└── lua/
    ├── core/             # Base configurations
    │   ├── options.lua   # All vim.opt.* and variables
    │   ├── keymaps.lua   # General keybindings 
    │   └── autocmds.lua  # General autocommands
    ├── plugins/          # Structured plugin modules
    │   ├── cmp.lua       # Autocompletion setup
    │   ├── conform.lua   # Code formatting setup
    │   ├── editor.lua    # Editor plugins (which-key, gitsigns, etc)
    │   ├── lsp.lua       # LSP configuration and mason setup
    │   ├── telescope.lua # Fuzzy finder setup
    │   ├── tools.lua     # Tools (oil, opencode, test, etc)
    │   ├── treesitter.lua# Syntax highlighting
    │   └── ui.lua        # UI plugins (catppuccin, mini, trouble, etc)
    ├── custom/           # Your existing custom modules
    └── kickstart/        # Your existing kickstart modules
