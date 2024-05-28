alias g='git status --show-stash' # Show the status of the git repository, including about the stash
alias gg='g'                      # Alias to `g`, for when the key is sticky
alias ggg='g'                     # Alias to `g`, for when the key is sticky

alias gb='git branch'                    # List local branches
alias gba='git branch --all'             # List both local & remote branches
alias gbd='git branch --delete'          # Delete a local branch but fail if not merged
alias gbdf='git branch --delete --force' # Force delete a local branch (delete it even if not merged)
alias gbr='git branch --remote'          # List remote branches

alias gca='git commit --amend'              # Amend last commit with staged changes
alias gcah='git commit --amend --no-verify' # Amend last commit with staged changes, disable hooks

# Add a "c" for create, for consistency with Neogit & to avoid conflicts with other `gc` aliases
alias gcc='git commit'              # Create commit
alias gcch='git commit --no-verify' # Create commit, disable hooks

alias gcf='git commit --message "🚧 FIXUP"' # Create a fixup commit

alias gcl='git clone'         # Clone a repository
alias gclb='git clone --bare' # Clone a repository as a bare repository (useful when working with git worktrees)

alias gcw='git commit --no-verify --message "🚧 WIP [skip ci]"' # Create a WIP commit, without commit hooks & with a default message that skips any CI

alias gd='git diff'      # Show changes between commits, commit and working tree, etc.
alias gdt='git difftool' # Show changes between commits, commit and working tree, etc. using a difftool

alias gf='git fetch'           # Fetch the remote repository
alias gfp='git fetch --prune'  # Fetch & remove unused remote branches
alias gfu='git fetch upstream' # Fetch the remote repository upstream branch (useful to update forks)

alias gi='git init' # Initialize a new git repository

alias gl='git lg' # Show the commit log

alias gpl='git pull' # Fetch the remote repository & merge it into the current branch

alias gps='git push'                 # Push the current branch to the remote repository
alias gpsf='git push --force'        # Force push the current branch to the remote repository
alias gpsu='git push --set-upstream' # Set the upstream of a local branch and push it (not needed if `autoSetupRemote` is `true`)

alias grb='git rebase --autostash'                           # Rebase the current branch on top of another branch
alias grbo='git rebase --autostash --strategy-option=theirs' # Rebase the current branch on top of another branch & overwrite conflicting changes
alias grbi='git rebase --autostash --interactive'            # Interactively rebase the current branch on top of another branch
alias grba='git rebase --abort'                              # Abort a rebase in progress
alias grbc='git rebase --continue'                           # Continue a rebase in progress
alias grbs='git rebase --skip'                               # Skip a commit during a rebase in progress

alias grm='git rm'           # Remove a file from the repository and the file system
alias grmc='git rm --cached' # Remove a file from the repository but not from the file system

# `reset` can be used in 3 forms: with nothing (target all tracked files/directories), with a path (target the corresponding tracked
# files/directories), or with a commit reference, and with 3 modes: mixed (unstage & keep the changes), soft (keep the changes as staged),
# and hard (unstage & discard the changes)
function git_reset_last() {
    git reset --mixed HEAD~"$1"
}
function git_reset_soft_last() {
    git reset --soft HEAD~"$1"
}
function git_reset_hard_last() {
    git reset --hard HEAD~"$1"
}
alias grs='git reset'             # Mixed reset the targeted files/directories or commit(s)
alias grsl='git_reset_last'       # Mixed reset a number of the last commits
alias grss='git reset --soft'     # Soft reset the targeted commit(s)
alias grssl='git_reset_soft_last' # Soft reset a number of the last commits
alias grsh='git reset --hard'     # Hard reset the targeted commit(s)
alias grshl='git_reset_hard_last' # Hard reset the last $1 commit(s)

alias grv='git revert'             # Revert the targeted commit(s)
alias grvl='git revert HEAD'       # Revert the last commit
alias grva='git revert --abort'    # Abort a revert in progress
alias grvc='git revert --continue' # Continue a revert in progress
alias grvs='git revert --skip'     # Skip a commit during a revert in progress

# I prefer `git stage` over `git add` for several reasons:
#   - in Gitsigns & Neogit I use "stage" as well, so this is consistent with that ("a", like "add", cannot be used properly with Gitsigns
#       in visual mode with Hydra, due to conflicts with "arround" text-objects)
#   - it's the proper term for staging changes in Git
#   - it goes well with the "unstage" alias I define below & which is used in Gitsigns & Neogit
alias gs='git stage'           # Stage the targeted files
alias gsa='git stage --all'    # Stage all the files
alias gsu='git stage --update' # Stage all the unstaged files (not untracked ones)

alias gsh='git stash'                      # Stash local changes in tracked files
alias gshu='git stash --include-untracked' # Stash local changes in tracked & untracked files
alias gsha='git stash apply'               # Apply the last stash entry
alias gshc='git stash clear'               # Clear all the stash entries
alias gshd='git stash drop'                # Drop one stash entry (last one by default)
alias gshl='git stash list'                # List all the stash entries
alias gshp='git stash pop'                 # Like `git stash apply` but remove the applied stash entry if applied without conflict

alias gso='git show' # Show various types of objects

alias gsw='git switch'           # Switch to a branch by its name
alias gswc='git switch --create' # Create & switch to a new branch
alias gswp='git switch -'        # Switch to the previous branch

alias gt='git tag'
alias gtd='git tag --delete'          # Delete the provided tag locally
alias gtdr='git push --delete origin' # Delete the provided tag remotely
alias gtp='git push --tags'           # Push all local tags

alias gw='git worktree'         # Base command for git worktree
alias gwa='git worktree add'    # Add a new worktree
alias gwl='git worktree list'   # List all the worktrees
alias gwr='git worktree remove' # Remove a worktree

# I introduce the "git unstage" aliases for several reasons:
#  - in Gitsigns & Neogit I use "unstage" as well, so this is consistent with that
#  - since I introduced the "git stage" alias, it makes sense to have a corresponding "git unstage" alias
#  - it reduces the burden on the "gr" aliases, as alternatives would involve "git restore" or "git reset"
alias gu='git restore --staged'     # (git unstage) Unstage the targeted files
alias gua='git restore --staged :/' # (git unstage --all) Unstage all the files

# I introduce the "git discard" aliases for several reasons:
#   - in Gitsigns & Neogit I use "x" for discard as well, so this is consistent with that
#   - it's the proper term for discarding changes in Git
#   - it reduces the burden on the "gr" & "gc" aliases, as alternatives would involve "git restore" or "git clean"
alias gx='git restore'       # (git discard) Discard the unstaged changes of the targeted tracked files
alias gxa='git restore :/'   # (git discard --all) Discard all unstaged changes in tracked files
alias gxu='git clean -dn'    # (git discard --untracked) Dry-run to discard untracked files (except ignored)
alias gxuf='git clean -df'   # (git discard --untracked --force) Force discard untracked files (except ignored)
alias gxui='git clean -di'   # (git discard --intracked --interactive) Interactively discard untracked files (except ignored)
alias gxua='git clean -dxn'  # (git discard --untracked --all) Dry-run to discard all untracked files
alias gxuaf='git clean -dxf' # (git discard --untracked --all --force) Force discard all untracked files
alias gxuai='git clean -dxi' # (git discard --untracked --all --interactive) Interactively discard all untracked files
