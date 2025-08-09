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

## "For putting together"

### MUST support multiple additional remotes
- `indexzero/dotfiles` (public dotfiles target)
- `indexzero/dotfiles.private` (private dotfiles target)

### Uses XDG spec for placement of things
- https://wiki.archlinux.org/title/XDG_Base_Directory

### Nix for Bootstrapping (see inspiration: [1]):

#### Which version of nix? `Determinate Nix`
Why? There are many active forks right now – and they are maturing well – but our goal here is ASAP (as simple as practical), so we'll stick with the most well funded software (for now)
- https://tvix.dev/ (used by https://devenv.sh/, [because drama])
- https://lix.systems/ (which has [more drama])

#### What "nix for my stuff" thingy? [`home-manager`](https://nix-community.github.io/home-manager/)

Why? Although devenv.sh & nix-darwin are interesting, they don't appear to have strong multi-user support which will be important at times when this becomes part of my home computer/IT duties.

Additionally, if we're going to build a proper layercake here devenv.sh tries to do too much that might be better accomplished by [mise] (or perhaps [mise-nix]?)

- Known issues
  - https://discourse.nixos.org/t/advice-needed-how-best-to-integrate-nix-home-manager-config-and-homebrew-macos/26512
- Further reading
  - https://blog.6nok.org/how-i-use-nix-on-macos/
  - [`nix-darwin` features to find for `home-manager`][nix-darwin-goodies]
  - https://github.com/danielcorin/nix-config?tab=readme-ov-file

### "Packages" that need to be atomic

- Core macOS Requirements
  - macOS version
  - XCode version
  - `git` version is runnable
  - macOS system modifications (e.g. `defaults write com.apple.screencapture location "$HOME/Screenshots"`)
- Core git requirements
  - Multiple git configs (e.g. [includeIf "gitdir:~/git/{work,github,orgs}"])
  - Perhaps using something like this? https://github.com/LucasPickering/env-select
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
- "AI Text Editor" (unstable channel, probably both for now)
  - Zed
    - https://github.com/skarline/zed-fleet-themes
  - Cursor
- Opinionated OSS release management. Consider:
  - ~[release-it](https://github.com/release-it/release-it)~
  - NOPE! Changesets all the way baby!

### "And taking apart"

- Github Actions ensures that every commit is runnable from scratch
- Github Actions ensures that every commit is a valid upgrade target for `HEAD~${X}`

## Channels

Inspired by [Arena channels](https://are.na) this part of LOCALBEST attempts to allow you to "test" or "promote" different new tools to perform the same operation. e.g.

```
find 
# vs https://github.com/sharkdp/fd
fd
```

## **DECISION**

- Which shell?
  - **Decision: Keep `zsh` in Stable Channel (4) because Principle of Least Change**
- Which terminal(s)?
  - **Decision: Move `ghostty` to Stable Channel (4). Why? https://steipete.me/posts/2025/claude-code-is-my-computer**
  - **Decision: Keep `Terminal.app` in Stable Channel (4) Why? Default macOS terminal is so obv old & busted, but tried & true at the same time**
  - **Decision: Move `warp` to Experimental Channel (1) ?** https://www.warp.dev/
  - ~What about `waveterm`? https://github.com/wavetermdev/waveterm. Ironically, I question the choice of JavaScript here 🤣~
- Which package manager for what?:
  - **Decision: Eject volta due to lack of transparency in globally installed tools (pre-compilation is not what I want because I read the code)**
  - **Decision: Move `mise` to Stable Channel 94) to replace `volta` for the items it manages**
     - https://mise.jdx.dev/
  - **Decision: Move `nix` to Stable Channel (4) for defining custom packages, and if the nix version of a package is available install it**
  - **Decision: Keep `homebrew` at Stable Channel (4) for items not supported by mise or nix**

## **OPEN QUESTIONS**

- Which framework for:
  - Core `zsh` or `fish`? (e.g. stick with `zim`?)
- Which prompt?
  - Current one is old & busted
  - What about https://starship.rs/? 
  - For the git parts: https://github.com/magicmonty/bash-git-prompt
- Do I need an App Launcher? 
  - Probably Raycast
- Do I need `espanso`? 
  - Yes! Definitely for the world of Prompt Engineering
- Config language?
  - KDL 2.0, maybe? https://kdl.dev/
- Writing custom expansions?
  - Probably [omelette](https://github.com/f/omelette) because JIFASNIF
- Do I `tmux`? 
  - https://github.com/tmux/tmux/wiki
  - https://www.redhat.com/en/blog/introduction-tmux-linux
  - https://hamvocke.com/blog/a-quick-and-easy-guide-to-tmux/
  - https://github.com/fcsonline/tmux-thumbs
  - https://github.com/tmux-plugins/tpm

## "Let's build a road up to the moon"

- Go through `Install Me Maybe` stars
- Consider:
  - https://github.com/sissbruecker/linkding
  - Aider

[1]: https://github.com/rayhanadev/dotfiles/blob/main/home/default.nix
[Atuin]: https://atuin.sh/

[nix-darwin]: https://github.com/LnL7/nix-darwin
[nix-darwin-goodies]: https://nixcademy.com/posts/nix-on-macos/

[because drama]: https://devenv.sh/blog/2024/10/22/devenv-is-switching-its-nix-implementation-to-tvix/
[more drama]: https://lix.systems/faq/

[mise]: https://mise.jdx.dev/getting-started.html
[mise-nix]: https://github.com/chadac/mise-nix
