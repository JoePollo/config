# config.nu
#
# Installed by:
# version = "0.102.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# This file is loaded after env.nu and before login.nu
#
# You can open this file in your default editor using:
# config nu
#
# See `help config nu` for more options
#
# You can remove these comments if you want or leave
# them for future reference.

$env.PATH = ($env.PATH | prepend [
  "~/.linuxbrew/bin"
  "/home/linuxbrew/.linuxbrew/bin"
  "/home/linuxbrew/.linuxbrew/sbin"
  "/usr/local/go/bin"
  "~/go/bin"
  "/opt/"
  "~/.cargo/bin"
  "~/.bun/bin"
])
$env.config.buffer_editor = "hx"
mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")
alias zen = /opt/zen/zen

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

let config = {
  filesize_metric: true
  table_mode: rounded
  use_ls_colors: true
  color_config: $bearded_theme
  use_grid_icons: true
  footer_mode: always
  animate_prompt: false
  float_precision: 2
  use_ansi_coloring: true
  filesize_format: "b"
  edit_mode: emacs
  max_history_size: 10000
  log_level: error
}
