alias ga='git add'
alias gaa='git add --all'  # Add all files, both tracked & untracked
alias gad='git add .'  # Add the files in the current directory
alias gau='git add --update'  # Add all tracked files

alias gb='git branch'
alias gba='git branch --all'
alias gbd='git branch --delete --force'  # Force delete a local branch
alias gbr='git branch --remote'  # Act on remote branches

alias gch='git checkout'

alias gcl='git clone'

alias gcm='git commit'
alias gcmf='git commit --no-verify'

alias gcma='git commit --amend'
alias gcman='git commit --amend --no-edit'
alias gcmanf='git commit --amend --no-edit --no-verify'

alias gcmm='git commit --message'
alias gcmmf='git commit --no-verify --message'

alias gcmw='git commit --message "🚧 WIP"'
alias gcmwf='git commit --no-verify --message "🚧 WIP"'

alias gcf='git config'
alias gcfg='git config --global'

alias gcp='git cherry-pick'  # Apply the changes introduced by some existing commits

alias gdf='git diff' # Show changes between commits, commit and working tree, etc.
alias gdft='git difftool'

alias gf='git fetch'
alias gfp='git fetch --prune'  # Remove unused remote branches
alias gfu='git fetch upstream'  # Fetch the upstream repository

alias gl='git lg'
alias glm='git lg origin..HEAD'  # Show the log since the divergence from the main branch

alias gm='gitmoji'
alias gmc='gitmoji --config'
alias gmi='gitmoji --init'
alias gmr='gitmoji --remove'

alias gpl='git pull'

alias gps='git push'
alias gpsf='git push --force'
alias gpsu='git push --set-upstream'  # Set the upstream of a local branch and push it (needed iff autoSetupRemote is not True)

alias grb='git rebase'
alias grbi='git rebase --interactive'
alias grbm='git rebase origin/main'
alias grbms='git rebase origin/master'
alias grbmi='git rebase origin/main --interactive'
alias grbmsi='git rebase origin/master --interactive'

# Actions during rebase:
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbs='git rebase --skip'

alias grm='git rm'  # Remove a file from the repository and the file system
alias grmc='git rm --cached'  # Remove a file from the reposiory but not from the file system

alias grs='git reset'  # Mixed reset: reset commits but keep their changes as unstaged
alias grsl='git reset HEAD~1'  # Mixed reset the last commit
function grsn(){ git reset HEAD~$1 }  # Mixed reset the N last commits

alias grsh='git reset --hard'  # Hard reset: reset commits and discard all their changes
alias grshl='git reset --hard HEAD~1'  # Hard reset the last commit
function grshn(){ git reset --hard HEAD~$1 }  # Hard reset the N last commits

alias grss='git reset --soft'  # Soft reset: reset commits and keep their changes as staged
alias grssl='git reset --soft HEAD~1'  # Soft reset the last commit
function grssn(){ git reset --soft HEAD~$1 }  # Soft reset the N last commits

alias grt='git restore'  # Discard the changes of the targeted unstaged files
alias grtd='git restore .'
alias grts='git restore --staged'  # Unstage the targeted staged files
alias grtsd='git restore --staged .'

alias grv='git revert'
alias grvl='git revert HEAD'  # Revert the last commit

alias gs='git status'
alias gsd='git status .'
alias gst='git status'  # Alias for git status, used in some keymaps

alias gsh='git stash'  # Stash the uncommited changes
alias gsha='git stash apply'  # Re-apply the last stashed changes (don't clear them)
alias gshc='git stash clear'
alias gshl='git stash list'
alias gshp='git stash pop'  # Re-apply the last stashed changes & clear them

alias gso='git show'  # Show various types of objects

alias gsw='git switch'  # Switch branches
alias gswc='git switch --create'  # Create a new local branch
alias gswm='git switch main'
alias gswms='git switch master'
alias gswp='git switch -'  # Switch to the previous branch

alias gt='git tag'
alias gtd='git tag --delete'  # Delete the provided tag locally
alias gtdr='git push --delete origin'  # Delete the provided tag remotely
alias gtp='git push --tags'  # Push all local tags
