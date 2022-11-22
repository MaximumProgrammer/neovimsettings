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

export GIT_EDITOR="vim -u NONE"

.gitconfig

 1 [user]
  2   name = Markus Gruber
  3   email = markus.gruber@mindbreeze.com
  4 [pull]
  5   rebase = true
  6 [merge]
  7   ff = no
  8   commit = no
  9 [core]
 10   longpaths = true
 11   autocrlf = false
 12   editor = 'vim -u NONE'
 13 [diff]
 14   tool = vimdiff

Start Up Screens

https://alpha2phi.medium.com/neovim-startup-screen-edd933ec8261

TODO LIST: 

Besseres Syntax Highliting 
CLang funktioniert nicht in großen Projekten 
