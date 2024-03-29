# [Oh-My-Zsh](https://ohmyz.sh)

I use [Zsh](https://www.zsh.org/) as terminal shell, as it is the default for MacOS. I set it up
with `oh-my-zsh`, a community-driven framework to bring many features to Zsh, especially to add sane
default options, a nicer default terminal prompt and manage easily custom aliases.

**Requirements:**

- `curl` or `wget`
- `git`

**Install:**

<details>
<summary>MacOS</summary>

Zsh is the default terminal shell in MacOS, there's no need to install it.

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# or: sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

</details>
<details>
<summary>Ubuntu</summary>

```shell
apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# or: sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

</details>
