Customisation of Kali 

This is based on the default VM Build of Kali Linux and provides basic customisations

## To Install:

```bash
sudo apt install git -y
git clone https://github.com/n3ph0s/kali-n3ph0s.git
cd kali-n3ph0s
sudo ./install.sh
```
## Post Install

```bash
cd kali-n3ph0s/
./post-install.sh
```
**NOTE**: You will be prompted for the root password when installing the starship prompt

Once the system reboots you will need to do some manual configuration as follows:

- Go to Default Applications and change the Browser to Brave and the Terminal to Kitty
- Keyboard Shortcuts for the following:
    - Terminal (to have this launch tmux when launched modify the command by appending `-e tmux`)
    - Flameshot (command is `flameshot gui`)
    - Brave Browser

The first time that NeoVim is launched it will install the required packages.  For TMUX Package Manager it is `<prefix> + I` which will install the require packages.  

