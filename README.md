# homebrew-tap

Homebrew tap for docodego — the intent-and-evidence layer for the agent age.

```sh
brew install docodego/tap/docodego
```

Binaries come straight from the
[release assets](https://github.com/DoCoDeGo/docodego-alpha/releases) —
checksummed upstream, checksummed again by Homebrew.

**Why not plain `brew install docodego`?** `docodego` is not in
homebrew-core, so bare names only resolve on machines that have this tap —
and Homebrew 7 refuses to load a bare-name match from an untrusted
third-party tap (anti-typosquatting). One-time:

```sh
brew trust docodego/tap
brew install docodego     # now resolves on your machine
```
