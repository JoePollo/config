# config.nu
# version = "0.102.0"

# Define color theme
let base00 = "#1c1c1c"
let base01 = "#262626"
let base02 = "#3a3a3a"
let base03 = "#4e4e4e"
let base04 = "#bcbcbc"
let base05 = "#dcdcdc"
let base06 = "#e4e4e4"
let base07 = "#ffffff"
let base08 = "#d75f5f"
let base09 = "#ffaf5f"
let base0a = "#ffd787"
let base0b = "#87af87"
let base0c = "#5fafaf"
let base0d = "#87afd7"
let base0e = "#af87af"
let base0f = "#d7875f"

let bearded_theme = {
    separator: $base03
    leading_trailing_space_bg: $base04
    header: $base0b
    date: $base0e
    filesize: $base0d
    row_index: $base0c
    bool: $base08
    int: $base0b
    duration: $base08
    range: $base08
    float: $base08
    string: $base04
    nothing: $base08
    binary: $base08
    cellpath: $base08
    hints: dark_gray
    shape_garbage: { fg: "#FFFFFF" bg: "#FF0000" attr: b}
    shape_bool: $base0d
    shape_int: { fg: $base0e attr: b}
    shape_float: { fg: $base0e attr: b}
    shape_range: { fg: $base0a attr: b}
    shape_internalcall: { fg: $base0c attr: b}
    shape_external: $base0c
    shape_externalarg: { fg: $base0b attr: b}
    shape_literal: $base0d
    shape_operator: $base0a
    shape_signature: { fg: $base0b attr: b}
    shape_string: $base0b
    shape_filepath: $base0d
    shape_globpattern: { fg: $base0d attr: b}
    shape_variable: $base0e
    shape_flag: { fg: $base0d attr: b}
    shape_custom: {attr: b}
}

# Update PATH
$env.PATH = ($env.PATH | prepend [
  "~/.linuxbrew/bin"
  "/home/linuxbrew/.linuxbrew/bin"
  "/home/linuxbrew/.linuxbrew/sbin"
  "/usr/local/go/bin"
  "~/go/bin"
  "/opt/"
  "~/.cargo/bin"
  "~/.bun/bin"
  "/home/yoyomusho/.local/bin"
])

# Basic configuration
$env.config = {
  show_banner: false
  render_right_prompt_on_last_line: true
  buffer_editor: "hx"
}

# Set up Starship prompt
$env.PROMPT_COMMAND = { |span_duration| starship prompt --cmd-duration $span_duration }

# Other environment variables
$env.TERM = "wezterm"
$env.ENV = "dev"

# Create directory for autoload scripts
mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")

# Define aliases
alias zen = /opt/zen/zen
alias sleep = systemctl suspend
alias monitors = ~/.screenlayout/monitors.sh
alias python = python3
alias volume = pavucontrol
alias whatsapp = flatpak run io.github.mimbrero.WhatsAppDesktop
alias o = bash -c "/home/yoyomusho/apps/Obsidian-1.8.9.AppImage &"
alias blueman = bash -c "blueman-manager &"

# Load Cargo environment
source "~/.cargo/env.nu"

# Configure appearance and behavior
# These need to be set differently in Nushell 0.102.0
# You may need to check the current documentation for the correct way to set these
# or use the `config` command to modify them interactively
