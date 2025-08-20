# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Architecture Overview

This is a Neovim configuration using lazy.nvim as the plugin manager. The configuration follows a modular structure:

- `init.lua`: Bootstrap lazy.nvim and loads core configuration
- `lua/vim-config.lua`: Core Vim settings and keybindings
- `lua/plugins/`: Individual plugin configurations, each returning a lazy.nvim plugin spec
- `lazy-lock.json`: Plugin version lockfile managed by lazy.nvim

## Plugin System

Plugins are managed through lazy.nvim with each plugin defined in its own file under `lua/plugins/`. Each plugin file returns a table with the plugin specification including:
- Plugin repository
- Configuration function
- Dependencies
- Lazy loading settings

Key plugins:
- **LSP**: Mason + mason-lspconfig + nvim-lspconfig for language server management
- **Telescope**: Fuzzy finder with UI-select integration
- **Neo-tree**: File explorer
- **Treesitter**: Syntax highlighting and parsing
- **ToggleTerm**: Terminal integration
- **Catppuccin**: Colorscheme

## LSP Configuration

Ruby development is the primary focus with Solargraph LSP configured globally (not using bundler). The LSP configuration includes:
- Global Solargraph installation expected
- Diagnostics, completion, and formatting enabled
- Standard LSP keybindings with `<leader>` prefix

## Key Bindings

Leader key is set to space. Important bindings:
- `<C-p>`: Telescope find files
- `<C-b>`: Toggle Neo-tree
- `<leader>tt`: Toggle terminal
- `<leader>yp`: Copy relative file path
- `<leader>yP`: Copy absolute file path
- LSP bindings: `<leader>gd` (definition), `<leader>gr` (references), `<leader>gf` (format), `<leader>ca` (code actions), `<leader>rn` (rename)

## Development Notes

- Configuration uses 2-space indentation consistently
- Relative line numbers enabled
- Clipboard integration with system clipboard
- Terminal mode escape with `<Esc>` key
- Yank highlighting feedback enabled
- File watching enabled for Neo-tree
- Treesitter parsers for Lua, JavaScript, and Ruby

## Plugin Management

Use `:Lazy` to manage plugins. The lockfile should be committed to track plugin versions. Plugin files should return lazy.nvim specs and be added to the `lua/plugins/` directory.