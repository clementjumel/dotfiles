# List all available themes, and their descriptions (default one first, then in alphabetical order of main themes, then from darkest to
# lightest)
TERMINAL_THEMES="default                     -- black, lean & simple
catppuccin-mocha            -- darkest & modern Catppucin theme
catppuccin-macchiato        -- intermmediatly dark & lean Catppucin theme
catppuccin-frappe           -- least dark & vintage Catppucin theme
catppuccin-latte            -- light & modern Catppucin theme
gruvbox-dark                -- dark & vintage Gruvbox theme
gruvbox-light               -- light & vintage Gruvbox theme
kanagawa-dragon             -- darkest & modern Kanagawa theme
kanagawa-wave               -- least dark & modern Kanagawa theme
kanagawa-lotus              -- light & modern Kanagawa theme
nord                        -- blueish & modern dark theme
onedark                     -- dark & vintage One theme
onelight                    -- light & vintatge One theme
rose-pine-main              -- darkest & lean Rose-pine theme
rose-pine-moon              -- least dark & lean Rose-pine theme
rose-pine-dawn              -- light & lean Rose-pine theme
tokyonight-night            -- darkest & modern Tokyonight theme
tokyonight-moon             -- intermmediatly dark & modern Tokyonight theme
tokyonight-storm            -- least dark & modern Tokyonight theme
tokyonight-day              -- light & modern Tokyonight theme"

# Change the terminal theme with fzf by prompting the user for a new theme & creating the relevant symlinks
function change_theme() {
    # Make the user select a theme using fzf among the available ones
    selected_theme_and_description=$(echo "$TERMINAL_THEMES" | fzf --prompt="Theme > ")
    selected_theme=$(echo "$selected_theme_and_description" | head -n1 | awk '{print $1;}')

    # Exit if no theme is selected, to avoid creating broken symlinks
    if [[ -z $selected_theme ]]; then
        return
    fi

    # Create symlinks to the selected theme (overwrite existing ones)
    ln -sf ~/.config/wezterm/theme/"$selected_theme".lua ~/.config/wezterm/theme/current.lua
    ln -sf ~/.config/tmux/theme/"$selected_theme"/tmux-pre-tpm.conf ~/.config/tmux/theme/tmux-pre-tpm.conf
    ln -sf ~/.config/tmux/theme/"$selected_theme"/tmux-post-tpm.conf ~/.config/tmux/theme/tmux-post-tpm.conf
    ln -sf ~/.config/nvim/lua/theme/"$selected_theme".lua ~/.config/nvim/lua/theme/current.lua
}

alias ct='change_theme' # Change theme: prompt the user to select a new terminal theme & set it up
