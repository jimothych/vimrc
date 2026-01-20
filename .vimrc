call plug#begin()

Plug 'tpope/vim-surround'
Plug 'justinmk/vim-sneak'

call plug#end()

set scrolloff=999
nnoremap J 5j
nnoremap K 5k
vnoremap J 5j
vnoremap K 5k
inoremap <C-e> <C-o>a
set number

" VSCODEVIM SETTINGS
" {
"     "workbench.colorTheme": "Monokai Dimmed",
"     "vscode-pets.petSize": "small",
"     "vscode-pets.theme": "autumn",
"     "editor.fontSize": 22,
"     "indentRainbow.colors": [
"         "rgba(247, 37, 133,0.15)",
"         "rgba(181, 23, 158,0.15)",
"         "rgba(114, 9, 183, 0.15)",
"         "rgba(86, 11, 173,0.15)",
"         "rgba(72, 12, 168,0.15)",
"         "rgba(58, 12, 163,0.15)",
"         "rgba(63, 55, 201,0.15)",
"         "rgba(63, 55, 201,0.1)",
"         "rgba(63, 55, 201,0.05)",
"         "rgba(63, 55, 201,0.025)"
"     ],
"     "files.autoSave": "afterDelay",
"     "editor.tabSize": 2,
"     "github.copilot.enable": {
"         "*": false,
"         "plaintext": false,
"         "markdown": false,
"         "scminput": false
"     },
"     "vim.normalModeKeyBindingsNonRecursive": [
"         { "before": [":", "n"], "commands": [":tabn"] },
"         { "before": [":", "p"], "commands": [":tabp"] },
"         { "before": [":", "o"], "commands": [":tabo"] },
"         { "before": ["`"], "after": ["<C-w>", "h"] },
"         { "before": ["J"], "after": ["5", "j"] },
"         { "before": ["K"], "after": ["5", "k"] },
"         { "before": ["u"], "commands": ["undo"] },
"         { "before": ["<C-r>"], "commands": ["redo"] }
"     ],
"     "vim.visualModeKeyBindingsNonRecursive": [
"         { "before": [":", "n"], "commands": [":tabn"] },
"         { "before": [":", "p"], "commands": [":tabp"] },
"         { "before": [":", "o"], "commands": [":tabo"] },
"         { "before": ["`"], "after": ["<C-w>", "h"] },
"         { "before": ["J"], "after": ["5", "j"] },
"         { "before": ["K"], "after": ["5", "k"] },
"         { "before": ["u"], "commands": ["undo"] },
"         { "before": ["<C-r>"], "commands": ["redo"] }
"     ],
"     "vim.sneak": true,
"     "editor.cursorSurroundingLines": 100,
"     "vim.handleKeys": {
"         "<C-f>": false, 
"         "<C-d>": false,
"         "<C-s>": false,
"         "<C-z>": false
"     },
"     "editor.inlayHints.enabled": "offUnlessPressed",
"     "vim.insertModeKeyBindingsNonRecursive": [
"         { "before": ["<C-l>"], "after": ["<C-o>", "l"] },
"         { "before": ["<C-h>"], "after": ["<C-o>", "h"] },
"         { "before": ["<C-j>"], "after": ["<C-o>", "j"] },
"         { "before": ["<C-k>"], "after": ["<C-o>", "k"] }
"     ]
" }







" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2019 Dec 17
"
" To use it, copy it to
"	       for Unix:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"	 for MS-Windows:  $VIM\_vimrc
"	      for Haiku:  ~/config/settings/vim/vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings, bail
" out.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
augroup END

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif
