# [[ Status ]]

alias g='git status'          # Show the status of the repository
alias gg='git status --short' # Show the status of the repository in short format

# [[ Branch ]]

alias gb='git branch'           # Branch: list local branches
alias gbr='git branch --remote' # Branch remote: list remote branches
alias gba='git branch --all'    # Branch all: list local & remote branches

alias gbd='git branch --delete'          # Branch delete: delete a local branch
alias gbdf='git branch --delete --force' # Branch delete force: delete a local branch even if not merged

# [[ Clone ]]

alias gcl='git clone'         # Clone: clone a repository
alias gclb='git clone --bare' # Clone bare: clone a repository as a bare repository (useful when working with git worktrees)

# [[ Commit ]]

# Add a "c" like "create" for consistency with Neogit & to avoid conflicts with other `gc` aliases
alias gcc='git commit'              # Commit create: create a regular commit
alias gccf='git commit --no-verify' # Commit create force: create a regular commit without running hooks

alias gca='git commit --amend'                         # Commit amend: add staged changes to last commit
alias gcaf='git commit --amend --no-verify'            # Commit amend force: add staged changes to last commit without running hooks
alias gcan='git commit --amend --no-edit'              # Commit amend no-edit: add staged changes to last commit without editing the commit message
alias gcanf='git commit --amend --no-edit --no-verify' # Commit amend no-edit force: add staged changes to last commit without editing the commit message & without running hooks

function git_commit_fixup() {
    git reset --message "fixup! $1"
}
function git_commit_fixup_force() {
    git reset --message "fixup! $1" --no-verify
}
alias gcf='git_commit_fixup'        # Commit fixup: create a fixup commit
alias gcff='git_commit_fixup_force' # Commit fixup force: create a fixup commit without running hooks

alias gcw='git commit --message "🚧 WIP [skip ci]"'              # Commit WIP: create a WIP commit
alias gcwf='git commit --message "🚧 WIP [skip ci]" --no-verify' # Commit WIP force: create a WIP commit without running hooks

# [[ Diff ]]

alias gd='git diff'           # [D]iff: show differences between working tree and staging area (index), i.e. unstaged changes
alias gds='git diff --staged' # [D]iff [S]taged: show differences between staging area (index) and last commit (head), i.e. staged changes

# [[ Fetch ]]

alias gf='git fetch'           # Fetch: download objects and refs from the remote repository
alias gfp='git fetch --prune'  # Fetch prune: download objects and refs from the remote repository & remove refs to deleted remote branches
alias gfu='git fetch upstream' # Fetch upstream: download objects and refs from the upstream repository (useful to update forks)

# [[ Init ]]

alias gi='git init' # Init: create a new local Git repository

# [[ Log ]]

alias gl='git lg'   # Log: show the commit log using in the short log format
alias gll='git log' # Log long: show the commit log using the long log format

# [[ Pull ]]

alias gpl='git pull' # Pull: download objects and refs from the remote repository & merge them into the current branch

# [[ Push ]]

alias gps='git push'                  # Push: upload the current branch to the remote repository
alias gpsf='git push --force'         # Push force: upload the current branch to the remote repository & overwrite any conflicting changes
alias gpsu='git push --set-upstream'  # Push upstream: upload the current branch to the remote repository and set the relevant upstream if needed
alias gpst='git push --tags'          # Push tags: upload the current branch & all local tags to the remote repository
alias gpsd='git push --delete origin' # Push delete: delete the listed ref (e.g. tag) from the remote repository

# [[ Rebase ]]

alias grb='git rebase --autostash'                           # Rebase: apply the current branch changes on top of another branch
alias grbi='git rebase --autostash --interactive'            # Rebase interactive: apply the current branch selected changes & actions on top of another branch
alias grbo='git rebase --autostash --strategy-option=theirs' # Rebase overwrite: apply the current branch changes on top of another branch & overwrite conflicting changes

alias grba='git rebase --abort'    # Rebase abort: stop a rebase in progress
alias grbc='git rebase --continue' # Rebase continue: continue a rebase in progress
alias grbs='git rebase --skip'     # Rebase skip: skip a commit's changes during a rebase in progress

# [[ Remove ]]

alias grm='git rm'           # Remove: delete a file from the Git repository and the file system
alias grmc='git rm --cached' # Remove cached: delete a file from the Git repository but not from the file system

# [[ Reset ]]
# `reset` can be used in 3 forms:
#   - with nothing (target all tracked files/directories),
#   - with a path (target the corresponding tracked files/directories),
#   - or with a commit reference.
# It can also be used with 3 modes:
#   - mixed (unstage & keep the changes),
#   - soft (keep the changes as staged),
#   - or hard (unstage & discard the changes).
# I only use `git reset` to act on commits, as I prefer to use the `git unstage` & `git discard` aliases (they are not actual Git keywords)
# for files and directories

function git_reset_mixed_head() {
    git reset --mixed HEAD~"$1"
}
function git_reset_soft_head() {
    git reset --soft HEAD~"$1"
}
function git_reset_hard_head() {
    git reset --hard HEAD~"$1"
}
alias grsm='git reset --mixed'     # [R]eset [M]ixed: undo & unstage the targeted commit(s), or unstage the targeted files' changes
alias grsmh='git_reset_mixed_head' # [R]eset [M]ixed [H]ead: undo & unstage a number of the last commits (default to 1)
alias grss='git reset --soft'      # [R]eset [S]oft: undo but keep staged the targeted commit(s)
alias grssh='git_reset_soft_head'  # [R]eset [S]oft [H]ead: undo but keep staged a number of the last commits (default to 1)
alias grsh='git reset --hard'      # [R]eset [H]ard: undo & discard the changes of the targeted commit(s), or discard the targeted files' changes
alias grshh='git_reset_hard_head'  # [R]eset [H]ard [H]ead: undo & discard the changes of a number of the last commits (default to 1)

# [[ Revert ]]

function git_revert_head() {
    git revert --no-commit HEAD~"$1"..
    git commit
}
alias grv='git revert'       # [R]e[V]ert: create a new commit to undo the targeted commit
alias grvh='git_revert_head' # [R]e[V]ert [H]ead: create a new commit to undo a number of the last commits (default to 1)

alias grva='git revert --abort'    # Revert abort: stop a revert in progress
alias grvc='git revert --continue' # Revert continue: resume a revert in progress
alias grvs='git revert --skip'     # Revert skip: skip a commit during a revert in progress

# [[ Stage ]]
# I prefer `git stage` over `git add` to add changes to the staging area out of consistency with my Neovim keymaps (for technical reasons,
# "a" can't be used as nicely as "s" in git-related keymaps) and because I find this wording a bit clearer

alias gs='git stage'           # Stage: add the targeted files' changes to the staging area
alias gsu='git stage --update' # Stage update: add the tracked files' changes to the staging area
alias gsa='git stage --all'    # Stage all: add all files' changes to the staging area

# [[ Show ]]

function git_show_head() {
    if [ -z "$1" ]; then
        git show HEAD
    else
        git show HEAD~"$1"
    fi
}
alias gsh='git show'       # [S][H]ow: give details on the targeted object (commit, tag, etc.)
alias gshh='git_show_head' # [S][H]ow [H]ead: give details on the n'th latest commit (default to 0, the latest one)

# [[ Switch ]]

alias gsw='git switch'           # Switch: change the current local branch to a new one
alias gswc='git switch --create' # Switch create: create a new branch & change the current local branch to it
alias gswp='git switch -'        # Switch previous: change the current local branch back to the previous one

# [[ Tag ]]

alias gt='git tag'           # Tag: create a local tag
alias gtd='git tag --delete' # Tag delete: delete a local tag

# [[ Unstage ]]
# `git unstage` is not an actual git command, but I introduced it out of consistency with my Neovim keymaps and because it's a nice &
# simple feature

alias gu='git restore --staged'     # Unstage: remove from the staging area the targeted files' changes
alias gua='git restore --staged :/' # Unstage all: remove from the staging area all the changes

# [[ Worktree ]]

alias gw='git worktree'         # Worktree: base command for Git worktrees
alias gwa='git worktree add'    # Worktree add: create a new worktree
alias gwl='git worktree list'   # Worktree list: list all existing worktrees
alias gwr='git worktree remove' # Worktree remove: delete a worktree

# [[ Discard ]]
# `git discard` is not an actual git command, but I introduced it out of consistency with my Neovim keymaps and because it's a nice &
# simple feature

alias gx='git restore'                     # Discard: discard the unstaged changes of the targeted file(s)
alias gxt='git restore :/'                 # Discard tracked: discard the unstaged changes of all tracked files
alias gxu='git clean -dfq'                 # Discard untracked: discard all untracked but not ignored files
alias gxa='git restore :/; git clean -dfq' # Discard all: discard the unstaged changes of all tracked files & discard all untracked but not ignored files
alias gxi='git clean -dXf'                 # Discard ignored: discard all ignored files
alias gxin='git clean -dXn'                # Discard ignored dry-run: dry-run to discard all ignored files
alias gxii='git clean -dXi'                # Discard ignored interactive: interactively discard all ignored files

# [[ Stash ]]
# In Neovim (with Neogit and my Gitsigns keymaps), keys "s" (stage), "u" (unstage), and "x" (discard) are sanctified to manipulate Git
# hunks. To be consistent with that and because this command is supported in Neogit and can't be used with the "s" key, let's not use "s"
# for the "git stash" command here.

alias gz='git stash'                      # Stash: move local changes in tracked files to the stash
alias gzu='git stash --include-untracked' # Stash with untracked: move local changes in tracked & untracked files to the stash

alias gza='git stash apply' # Stash apply: copy the stash changes to the local files
alias gzc='git stash clear' # Stash clear: remove all the stash entries
alias gzd='git stash drop'  # Stash drop: remove one stash entry (default to the last)
alias gzl='git stash list'  # Stash list: list the stash entries
alias gzp='git stash pop'   # Stash pop: move the statsh changes to the local files (or copy them if there is any conflict)
