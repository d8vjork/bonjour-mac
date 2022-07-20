# Bonjour Mac

![bonjour](https://raw.githubusercontent.com/d8vjork/bonjour-mac/main/bonjour-mac.gif)

[![Take a peek on VSCode online](https://img.shields.io/badge/vscode-Take%20a%20peek-blue?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAYAAAAfSC3RAAACJklEQVQoFYVSS2hTURCdue8l7cv3NT8bYrMqCtYitRZEKKIrwW6kGy0obtzpoqCIC/GBoEUptKDQLgRBKIo7FUW6EHFTN1XxW900IAZFbEiwecn9jPNSGkWwDgz3ztxzzswwF+E/Nujdj8Ri0dPRTGHUyeSnmwT3arF4BTfiDU7MF22CC4LoeDxXENFcEYjgtQG6+U/i0JUn3dRUM4g0wmgrni1AdFOR6wQUXLV3XHu5hSg8LBU8fD++rQxAOODN56Uv5/i+t9URGaUIpTLgBDEBRbBv+u0zvu3h8Kk2NCFWSnVEaxIQhwIQ669y1dls70DWdqJjBCACqq2MniHC7Qi4j/vvJzsiofGzG4QVsD4LglNuyn1MHZHzynCtQI3NXip8uN1b2trJiSlCkYFIhgVZ1K9+stA6unT54PMAOHynGhxtE33vwGp8K2m5Ulaq6QPPAcpJgUz2VPxkTwd4gQrngvwfLr7XwscUwaRs1F3540tdKvVVcksKxC5lzFy+89VYi8gtMY6d39htxpzRRscR4Y0gdQIFaq3hBoDp5yELYOBW5uKLnX6jEbND4XarNhl9xADuN026W7k+WgpeUpcWD5PGqyx8oDUwmZO1atWPd6W57bXVt7YJnofsPMFvc7yFzRaEpwjwEBglXNeFRCq3DjBr9PXwrzN2bjErQzQLWo8wMZRI5yTvdxk3+nJtDW8hEdbW2USya3fCTT8wWj9aLqc//gJwC/Y8vXqalgAAAABJRU5ErkJggg==)](https://vscode.dev/github/skore/laravel-json-api)

Let's give your new Mac a warm bonjour with an "D8vjork-style"

## Already user of Apple Silicon?

Please, [read this first](https://docs.brew.sh/FAQ#why-is-the-default-installation-prefix-opthomebrew-on-apple-silicon).

**Then you'll know exactly what to do, uncomment all the stuff related (with a TODO:) in the `.commonrc` file.**

## What's inside?

All right... I'll try to make the list for you as much as I can:

### Brew terminal stuff and required utilities

- php (Only stable releases on this as its my main programing language)
- composer
- fnm (Faster than nvm as its written in Rust and it just works!)
- gh
- htop
- wget
- antigen (**I believe the most used and supported addons manager for Zsh, required!**)
- coreutils (GNU stuff needed for date calculations made for the zsh miliseconds spent on each command, **required**)
- grep (Needed for easy swap PHP versions, kudos to https://localheinz.com/blog/2020/05/05/switching-between-php-versions-when-using-homebrew/ **required**)
- wakeonlan (hacking stuff 😎 just joking... I guess... same as the 2 below)
- telnet 
- nmap
- awscli (used to manage all the servers and stuff from companies)
- qcachegrind (I use this sometimes for debugging with XDebug)
- mas (let you install App Store apps from the terminal by commands, **required**)
- lazydocker
- lazygit

### Brew casks managed

- Docker (the one must-go, trying podman as well but I'm mostly friendly on simplicity)
- ksdiff (for Kaleidoscope, you might need to pay for this if you want)
- iterm2
- VS Code (**main IDE**, also aliased so can do `code my_project_folder` and will open it with your folder)
- Sublime Text (**secondary IDE**, for quick editting stuff, I also use nano in the terminal, depends)
- Tower (**main GUI git client, you may need to pay for this so I'll let you choose**)
- Notion (**used for different companies organisation, you may need to pay for this if you want**)
- Spotify
- TablePlus (**used as my must-go database management app, just a must pay if you're an DBA or something in between like DevOps**)
- Microsoft Edge (**used as main**, as for now is the only one that performs the best in Mac OS disabling all the telemetry stuff)
- Firefox (**good to have variety of engines to test on**, not using chrome/chromium because is using the exact same engines as Edge, V8 + Blink)
- BetterZip (must have / pay, specially for all the useful addons they add to Mac OS like the Preview one, supports a very large list of compression algos and formats)
- IINA (free mpv based multimedia player, I use it specially for video, just a great Mac OS must-have free & open source app)
- Shuttle
- Tuxera NTFS (ntfs on Mac OS, hope one day Microsoft will open source their filesystem...)
- SoundSource (such a great app for something that Mac OS doesn't have, a per-app based volume controller + ecualizer & effects / postprocess, plus it can also control input/output devices!)
- Discord

### Mas CLI

- 1Password 7 - Password Manager **(you might need to pay for this if you want)**
- Pixelmator Pro **(you might need to pay for this if you want)**
- Kaleidoscope **(you might need to pay for this if you want)**
- iStat Menus **(you might need to pay for this if you want)**
- Magnet
- Telegram (I hate WhatsApp iframe/webapp so...)
- Dato (pretty calendar for )
- XCode (heavy tool I know, but it installs so much stuff that you'll require and don't even know, like for node-gyp compiling some resources using Apple's compilers or just using first level languages like Rust, go, etc)
- Redis Server
- Bear
- Slack (used for some of my companies, I know, I hate such webapps but anyways...)
- Discord
- Gaplin (useful, specially for the Preview addon that this adds to Mac OS, **just press space when an .svg file is highlighted in Finder**)
- Transmit 5
- ColorSlurp (quick & useful color picker)

## End result on a project folder

![image](https://user-images.githubusercontent.com/2331052/141961104-9153e8f6-d771-467b-a7d6-ac9ac5ae7432.png)

## License

This project is unlicensed and will remain as is. All for your free joy guys.
