# neovimsettings

Why Vim or Neo Vim ?

https://console.dev/articles/neovim-best-code-editor-ide-for-developers/

Plugins for VIM

https://hannadrehman.com/top-neovim-plugins-for-developers-in-2022

https://chmanie.com/post/2020/07/17/modern-c-development-in-neovim/

https://www.twilio.com/blog/5-must-have-vim-plugins-that-will-change-your-workflow

https://opensource.com/article/19/11/vim-plugins

Vim Template:

https://marcgg.com/blog/2016/03/01/vimrc-example/

https://gist.github.com/simonista/8703722

Start Up Screens:

https://alpha2phi.medium.com/neovim-startup-screen-edd933ec8261

https://github.com/goolord/alpha-nvim/discussions/16

Important to read:

https://stackoverflow.com/questions/2596805/how-do-i-make-git-use-the-editor-of-my-choice-for-editing-commit-messages

https://stackoverflow.com/questions/9616144/how-to-find-all-occurrences-of-a-variable-in-vim

Neovim:

#installing neovim

https://github.com/junegunn/vim-plug

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

sudo apt install unifont


in blammer

let l:command = 'git -C ' . l:dir_path . ' --no-pager blame --since=3.weeks --line-porcelain -L ' . a:line_number . ',' . l:end_line . ' -- ' . l:file_path_escaped


Vim:

![image](https://user-images.githubusercontent.com/32228946/198881723-f3244ae9-29cf-4571-b08c-a2bc48f7ae64.png)

![image](https://user-images.githubusercontent.com/32228946/198881760-d56478ca-2916-4e41-a59f-754e07b7a83c.png)

![image](https://user-images.githubusercontent.com/32228946/198881793-f92cf0ab-d90d-4bf3-9c59-e363d6c7ef48.png)

NeoVim (Nord Theme):

![image](https://user-images.githubusercontent.com/32228946/201435674-ec0661c8-91c3-4d9d-a3b2-450a6d7581bb.png)

![image](https://user-images.githubusercontent.com/32228946/201435699-cdb03f7f-aed5-4d92-bc35-4bc09bcda729.png)

![image](https://user-images.githubusercontent.com/32228946/201435733-4aa323f8-5251-4f25-8ff7-e276a38cfae9.png)

Neovim (Norddisk Theme):

![image](https://user-images.githubusercontent.com/32228946/202894974-95288655-dc70-4098-93be-7821877e6fdd.png)

![image](https://user-images.githubusercontent.com/32228946/202894989-f5e4db23-b03d-4494-808f-3b4a8557dee8.png)

![image](https://user-images.githubusercontent.com/32228946/202895008-fde82892-f6a7-4db2-ab99-5191dc723bca.png)


Important:

https://stackoverflow.com/questions/2596805/how-do-i-make-git-use-the-editor-of-my-choice-for-editing-commit-messages

Start Up Screens

https://alpha2phi.medium.com/neovim-startup-screen-edd933ec8261

TODO LIST: 

Besseres Syntax Highliting 
CLang funktioniert nicht in großen Projekten 

Vim with no Plugins: 

https://gist.github.com/w0ng/7e3f41b75c50fa3eb984

For .bashrc:

```

# .bashrc
  2
  3 # Source global definitions
  4 if [ -f /etc/bashrc ]; then
  5   . /etc/bashrc
  6 fi
  7
  
 if [ -e /usr/share/terminfo/x/xterm-256color ]; then
          export TERM='xterm-256color'
 else
          export TERM='xterm-color'
 fi

 alias COMPILE_D='./build.sh Debug Ninja gcc'
 alias COMPILE_R='./build.sh Release Ninja gcc'
 
 function build_cscope_db_func() {
      find . -name '*.c' -o -name '*.h'  > cscope.files
      cscope -Rbkq cscope.files
 }
 
 alias csbuild=build_cscope_db_func
 
 alias gdc='git diff --color=always | less -RN'
 
 export LATEST_JAVA_HOME=/usr/java/latest
 
 export JAVA_HOME="${LATEST_JAVA_HOME}"

 export GIT_EDITOR="vim -u ~/.my-custom-vimrc"

```

for .gitconfig:

```
[user]
 name = Markus Gruber
 email = markus.gruber@mindbreeze.com
[pull]
 rebase = true
[merge]
  ff = no
  commit = no
[core]
  longpaths = true
  autocrlf = false
  editor = 'vim -u ~/.my-custom-vimrE'
[diff]
  tool = gdc
```

My vim without plugins:

```
"
" ~/.vimrc
"
" No plugins. Based on https://github.com/w0ng/dotfiles/blob/master/.vimrc

" Compatability
set nocompatible         " use vim defaults instead of vi
set encoding=utf-8       " always encode in utf
filetype plugin indent on
syntax on

" General
set backspace=2           " enable <BS> for everything
"set colorcolumn=120       " visual indicator of column
set completeopt-=preview  " dont show preview window
"set cursorline            " visual indicator of current line
set hidden                " hide when switching buffers, don't unload
set laststatus=2          " always show status line
set lazyredraw            " don't update screen when executing macros
"set mouse=a               " enable mouse in all modes
set showmode              " show mode in status line
set nowrap                " disable word wrap
set number                " show line numbers
set showcmd               " show command on last line of screen
set showmatch             " show bracket matches
set spelllang=en_au       " spell check with Australian English
set textwidth=0           " don't break lines after some maximum width
set ttyfast               " increase chars sent to screen for redrawing
"set ttyscroll=3           " limit lines to scroll to speed up display
set title                 " use filename in window title
set wildmenu              " enhanced cmd line completion

" Folding
set foldignore=           " don't ignore anything when folding
set foldlevelstart=99     " no folds closed on open
set foldmethod=indent     " collapse code using indent levels
set foldnestmax=20        " limit max folds for indent and syntax methods

" Tabs
set autoindent            " copy indent from previous line
set expandtab             " replace tabs with spaces
set shiftwidth=4          " spaces for autoindenting
set smarttab              " <BS> removes shiftwidth worth of spaces
set softtabstop=4         " spaces for editing, e.g. <Tab> or <BS>
set tabstop=4             " spaces for <Tab>

" Searches
set hlsearch              " highlight search results
set incsearch             " search whilst typing
set ignorecase            " case insensitive searching
set smartcase             " override ignorecase if upper case typed

" Colours
set t_Co=256
set background=dark

" Copy to OSX CLIPBOARD
"vnoremap ,c "*y

" vimdiff display
if &diff
    set diffopt=filler,foldcolumn:0
endif
```

TODO: Checck shortkey binding F3,F4,F5 and so on.

https://stackoverflow.com/questions/27906004/differences-when-using-grep-in-terminal-and-grep-in-vim

" Grep settings
set grepprg=grep\ -n\ $*
