# Dot files for system configs
A "bare" Git repository

# 🧠 Big picture

On a new machine, you do **not copy files manually**.

You:

> install a minimal shell → clone dotfiles → “apply” them onto the system

---

# 🚀 Full new-machine workflow

## 1. Install basics (once)

On a fresh machine:

* Git
* Zsh (usually already there on macOS/Linux)
* optional: curl

---

## 2. Clone your dotfiles repo (bare style)

You don’t clone into a folder like normal repos.

You do:

```bash id="c1"
git clone --bare <your-repo-url> $HOME/.cfg
```

---

## 3. Create the alias

```bash id="c2"
alias config='git --git-dir=$HOME/.cfg --work-tree=$HOME'
```

Then make it permanent:

```bash id="c3"
echo "alias config='git --git-dir=$HOME/.cfg --work-tree=$HOME'" >> ~/.zshrc
source ~/.zshrc
```

---

## 4. Hide untracked files (important)

Without this, your home dir will look chaotic:

```bash id="c4"
config config --local status.showUntrackedFiles no
```

---

## 5. Checkout your dotfiles onto the machine

This is the key step:

```bash id="c5"
config checkout
```

This:

* writes `.zshrc`
* populates `.config/nvim`
* restores tmux/yabai/etc

---

## ⚠️ If conflicts happen

If the machine already has files:

```bash id="c6"
config checkout -f
```

(or manually back them up first)

---

## 6. Install dependencies (optional but typical)

Dotfiles don’t install software — they only configure it.

So you usually also run:

```bash id="c7"
brew install neovim tmux kitty
```

or your OS equivalent.

---

## 7. Restart shell

```bash id="c8"
exec zsh
```

Now everything is active.

---

# 🧠 What just happened

You effectively:

> turned your Git repo into a “home directory overlay”

So:

| Layer             | Role                 |
| ----------------- | -------------------- |
| system defaults   | OS baseline          |
| dotfiles checkout | your personal config |
| running shell     | combined result      |

---

# 🔥 Mental model (important)

Think of it like this:

```text id="m1"
dotfiles repo = blueprint
checkout = applying blueprint onto machine
home directory = final rendered system
```

---

# 🚨 Common misconception

> “Do I need to copy files manually?”

No.

That defeats the entire system.

---

# 🧭 Even better (pro-level upgrade)

Most modern setups add:

```bash id="p1"
install.sh
```

Which does everything:

```bash id="p2"
git clone --bare ...
config checkout
install dependencies
set defaults
```

So onboarding becomes:

```bash id="p3"
curl install.sh | sh
```

---

# 🚀 One-line answer

> On a new machine you clone the bare repo into `~/.cfg`, set the `config` alias, run `config checkout`, and your home directory is reconstructed from your dotfiles automatically.
