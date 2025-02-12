# LOCAL~~HOST~~BEST

## "Let's gather all our tools to start"

### "A pig is not a tool! A lightning bolt is not a tool!"

* macOS
* zsh
* Nix
* Mise
* Github Actions
* Runme.dev
* `runnn`: "it's like xargs but commits to your long running dotfiles"
  * Powered by [Atuin]? 

### "For putting together"

- Nix for Bootstrapping (see inspiration: [1]):
  - Dotfiles & Configs
    - `indexzero/dotfiles` (public dotfiles target)
    - `indexzero/dotfiles.private` (private dotfiles target)
  - Core macOS Requirements
    - macOS version
    - XCode version
    - `git` version is runnable
    - macOS system modifications (e.g. `defaults write com.apple.screencapture location "$HOME/Screenshots"`) 
  - `ghcd` compatible file system
    - `ghcd` as a `nix` package?
    - global `.gitconfig`
  - Runtimes & convience package managers
    - `brew`
    - `docker`
    - `node` (`npm`, `bun`, `deno`, etc.)
    - `python3` (`pip`, `uv`, `conda`, `venv`)
    - `rust` (`cargo`, etc)
  - Text Editors 
    - VSCode
    - st3
    - editorconfig
  - Opinionated OSS release management. Consider:
    - [release-it](https://github.com/release-it/release-it)

### "And taking apart"

- Github Actions ensures that every commit is runnable from scratch
- Github Actions ensures that every commit is a valid upgrade target for `HEAD~${X}`

## **OPEN QUESTIONS**

- Which framework for:
  - Core `zsh` (e.g. stick with `zim`?)
- Which manager for:
  - Node.js (e.g. stick with `volta`?)
- Which shell?
- Which terminal(s)?
  - Default macOS terminal is so obv old & busted, but tried & true at the same time
  - What about `warp`? https://www.warp.dev/
  - What about `ghostty`? https://ghostty.org/
  - What about `waveterm`? https://github.com/wavetermdev/waveterm. Ironically, I question the choice of JavaScript here 🤣
- Which prompt?
  - Current one is old & busted
  - What about https://starship.rs/? 
- Do I need an App Launcher? 
  - Probably Raycast
- Do I need `espanso`? 
  - Yes! Definitely for the world of Prompt Engineering
- Config language?
  - KDL 2.0, maybe? https://kdl.dev/

## "Let's build a road up to the moon"

- Go through `Install Me Maybe` stars
- Consider:
  - https://github.com/sissbruecker/linkding
  - Aider

[1]: https://github.com/rayhanadev/dotfiles/blob/main/home/default.nix
[Atuin]: https://atuin.sh/
