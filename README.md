# Git Logg: Enhanced Git Log Alias

## 🌟 Overview
<img src="https://github.com/user-attachments/assets/112501ef-5d90-4c3d-b40e-5a53a92291b1" alt="Git Logg" width="900" />

> **Git Logg** is a alias that enhances the `git log` experience, providing a more structured and easily navigable view of your commit history.

## 📝 What is improved

<img src="https://github.com/user-attachments/assets/883c8736-8285-4b38-9d7c-d54778b6768f" alt="Git Log Graph Oneline" width="650" />

> git log --graph --all --decorate --oneline

<img src="https://github.com/user-attachments/assets/fdecbb77-e3ea-4ea3-a0e1-9991f881e690" alt="Git Log Graph" width="650" />

> git log --graph --all --decorate

- **Compact Display**: Utilizing compact `git log --oneline` output with detailed commit history.
- **Enhanced Format**: Improves readability by truncating email addresses, clearly displaying author names and dates, and adding timestamps.
- **Detailed Information**: Displays timestamp, author, commit hash, and branch info.
- **Graph Representation**: Utilizes `--graph` to enhance the readability of branching in the commit history.


## 🚀 How to install
### **[Linux]** Installer
```shell
git clone https://github.com/peplxx/git-logg
cd git-logg
./install.sh
```
### Manual installation
Alternatively, you can add the alias directly to your Git configuration (`~/.gitconfig`):
```conf
[alias]
  logg = log --all --color --date='format:%Y-%m-%d %H:%M:%S' --decorate=short --graph --pretty=format:'%C(bold dim white)%ad%C(reset) %C(bold dim cyan)%<(20,trunc)%an%C(reset) %C(bold cyan)%h%C(reset)%C(auto)%d%C(reset)%n%C(dim white)%<(19,trunc)%ar%C(reset) %C(dim cyan)%<(20,trunc)%ae%C(reset) %C(bold white)Commit:%C(reset) %C(white)%s%C(reset)%n'
```
