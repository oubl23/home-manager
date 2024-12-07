{ zsh }:''

[colors]
draw_bold_text_with_bright_colors = true

[colors.bright]
black = "0x5c6370"
blue = "0x61afef"
cyan = "0x56b6c2"
green = "0x98c379"
magenta = "0xc678dd"
red = "0xe06c75"
white = "0xffffff"
yellow = "0xd19a66"

[colors.normal]
black = "0x282c34"
blue = "0x61afef"
cyan = "0x56b6c2"
green = "0x98c379"
magenta = "0xc678dd"
red = "0xe06c75"
white = "0xabb2bf"
yellow = "0xd19a66"

[colors.primary]
background = "0x282c34"
foreground = "0xabb2bf"

[cursor]
style = "Block"
unfocused_hollow = true

[debug]
log_level = "Warn"
persistent_logging = false
print_events = false
#ref_test = false
render_timer = false

#[dpi]
#x = 500.0
#y = 500.0

[font]
size = 12.0
[font.normal]
family = "jetbrains mono nerd font"

[font.glyph_offset]
x = 0
y = 0

[font.offset]
x = 0
y = 0

[[keyboard.bindings]]
action = "Paste"
key = "V"
mods = "Control|Shift"

[[keyboard.bindings]]
action = "Copy"
key = "C"
mods = "Control|Shift"

[[keyboard.bindings]]
action = "PasteSelection"
key = "Insert"
mods = "Shift"

[[keyboard.bindings]]
action = "ResetFontSize"
key = "Key0"
mods = "Control"

[[keyboard.bindings]]
action = "IncreaseFontSize"
key = "Equals"
mods = "Control"

[[keyboard.bindings]]
action = "DecreaseFontSize"
key = "Minus"
mods = "Control"

[[keyboard.bindings]]
action = "ToggleFullscreen"
key = "Return"
mods = "Alt"

[[keyboard.bindings]]
action = "Paste"
key = "Paste"

[[keyboard.bindings]]
action = "Copy"
key = "Copy"

[[keyboard.bindings]]
chars = """

"""
key = "NumpadEnter"

[mouse]
hide_when_typing = false

[[mouse.bindings]]
action = "PasteSelection"
mouse = "Middle"

#[mouse.double_click]
#threshold = 300

#[mouse.triple_click]
#threshold = 300

[scrolling]
history = 10000
multiplier = 3

[selection]
save_to_clipboard = true
semantic_escape_chars = ",│`|:\"' ()[]{}<>"

#[visual_bell]
#animation = "EaseOutExpo"
#color = "0xffffff"
#duration = 0

[window]
decorations = "full"
dynamic_padding = false
opacity = 0.95
startup_mode = "Windowed"

[window.dimensions]
columns = 0
lines = 0

[window.padding]
x = 0
y = 0

[general]
#alt_send_esc = true
#dynamic_title = true
#enable_experimental_conpty_backend = false
live_config_reload = true
working_directory = "None"

[terminal.shell]
args = ["--login"]
program = "${zsh}/bin/zsh"

''
