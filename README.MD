```bash
git clone https://github.com/your-username/zsh-setup.git
cd zsh-setup
./setup.sh

--------------------

This will set up zsh, install oh-my-zsh, configure plugins, and copy the .zshrc file to the home directory, 
applying all the necessary configurations automatically.

```


### Step To Setup Manually
```bash 
#1. Install ZSH, Syntax Highlighting and Auto Suggestions
sudo add-apt-repository universe
sudo apt update
sudo apt install zsh zsh-syntax-highlighting zsh-autosuggestions
zsh
```

```bash 
#2. Add syntax-highlighting and autosuggestions to your zshrc file
cp ~/.zshrc ~/.zshrcbackup
echo "source $(dpkg -L zsh-autosuggestions | grep 'zsh$')" | tee -a ~/.zshrc
echo "source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" | tee -a ~/.zshrc
```

```bash 
#3. Source your ~/.zshrc file to apply the changes (if you are in bash or another shell, run the zsh command first)
zsh
source ~/.zshrc
```

```bash 
#4. Make zsh the default shell
chsh -s $(which zsh)
```

```bash 
#5. Open .zshrc file in text editor (for simplicity i've used xed you can use nano/ vim/ code or any other text editor)
xed ~/.zshrc
```


```bash 
#6.Add this following lines to ~/.zshrc file
HISTFILE="$HOME/.zsh_history"
HISTSIZE=500000
SAVEHIST=500000
setopt appendhistory
setopt INC_APPEND_HISTORY  
setopt SHARE_HISTORY
```

```bash 
#7.Save the file === source your ~/.zshrc file to apply the changes (Repeat Step 4)
source ~/.zshrc
```






