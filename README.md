<h1 align="center">CodeArt</h1>


<div align="center">
  <a href="https://github.com/artart222/CodeArt/blob/main/LICENSE">
    <img src="https://img.shields.io/github/license/artart222/CodeArt?color=important&style=flat-square" alt="License">
  </a>

  <img src="https://img.shields.io/github/repo-size/artart222/CodeArt?style=flat-square" alt="Repo size">

  <!--
  <a href="https://discordapp.com/channels/875388658637754428">
    <img src="https://img.shields.io/discord/875388658637754428?style=flat-square" alt="Discord server">
  </a>
  -->

  <a href="https://github.com/artart222/CodeArt/issues">
    <img src="https://img.shields.io/github/issues/artart222/CodeArt?color=ff0000&style=flat-square" alt="Open issues">
  </a>

  <a href="https://github.com/artart222/CodeArt/pulse">
    <img src="https://img.shields.io/github/last-commit/artart222/CodeArt?color=blueviolet&style=flat-square" alt="Last commit">
  </a>
</div>


<h2>Install CodeArt easily</h2>

On linux:
```bash
sudo pip3 install distro
python3 install.py
```

<h2>IMPORTANT NOTE: macOS installer is not tested because I dont have a device with macOS</h2>

On macOS:
```bash
python3 install.py
```

on Windows:
```powershell
Set-ExecutionPolicy AllSigned
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") 
python3.exe installer\windows2.py
```

<h2>Install plugins:</h2>
<p>Open NeoVim and type <kbd>:PackerInstall</kbd></p>

<h2>Install lsp and treesitter</h2>
<ul>
  <li>You can install lsp for a language with <kbd>:LspInstall &ltlanguage&gt</kbd></li>
  <li>and you can install treesitter with <kbd>:TSInstall &ltlanguage&gt</kbd></li>
</ul>

<p>for completing installation you must run <kbd>:call mkdp#util#install()</kbd> to add markdown preview support</p>


<h2>Screenshots:</h2>
<img src="./utils/media/Screenshot1.png" alt="Screenshot 1">

<h2>Many themes!</h2>
<img src="./utils/media/Screenshot2.png" alt="Screenshot 2">
<img src="./utils/media/Screenshot3.png" alt="Screenshot 3">
<img src="./utils/media/Screenshot4.png" alt="Screenshot 4">
<img src="./utils/media/Screenshot5.png" alt="Screenshot 5">
<img src="./utils/media/Screenshot6.png" alt="Screenshot 6">
<img src="./utils/media/Screenshot7.png" alt="Screenshot 7">
<img src="./utils/media/Screenshot8.png" alt="Screenshot 8">
<img src="./utils/media/Screenshot9.png" alt="Screenshot 9">
<img src="./utils/media/Screenshot10.png" alt="Screenshot 10">
<img src="./utils/media/Screenshot11.png" alt="Screenshot 11">
<img src="./utils/media/Screenshot12.png" alt="Screenshot 12">
<img src="./utils/media/Screenshot13.png" alt="Screenshot 13">
<img src="./utils/media/Screenshot14.png" alt="Screenshot 14">

# TODOS:

1. - [x] Move from lueline to feline or to [this fork of lualine](https://github.com/shadmansaleh/lualine.nvim)
2. - [x] Add lsp status to lualine
3. - [ ] Lazy load plugins
4. - [ ] Find a way to install NeoVim 0.5 on debian based operating systems
5. - [ ] Find a way to install ueberzug on rhel based operating systems and opensuse
6. - [ ] Make new install script for windows
7. - [ ] Test current MacOS script
8. - [ ] Clean current codebase and convert vimscripts(I mean vimscripts in luafiles) to lua and maybe remove some plugins
9. - [ ] Move to shell script for macOS and linux installer and powershell for windows installer
10. - [ ] Implement a way to update CodeArt
11. - [ ] Write a proper WhichKey
12. - [ ] Move from compe to cmp
