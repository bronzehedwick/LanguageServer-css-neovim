# LanguageServer-css-neovim

A simple CSS/LESS/SASS language server plugin for
[LanguageClient-neovim](https://github.com/autozimu/LanguageClient-neovim).

I almost code nothing for this plugin. It's just a package for easy setup,
which uses the great [css-languageserver](https://github.com/vscode-langservers/vscode-css-languageserver-bin)

## Installation

Assumming you're using [vim-plug](https://github.com/junegunn/vim-plug).

```vim
Plug 'CandySunPlus/LanguageServer-css-neovim',  {'do': 'npm i'}
```

If you're installing this plugin manually, remember to execute `npm i` after.

For auto-completion popup, you might need to install
[nvim-completion-manager](https://github.com/roxma/nvim-completion-manager).

