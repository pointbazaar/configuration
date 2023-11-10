from libqtile import bar, layout, widget
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal

mod = "mod4" # OS key
terminal = guess_terminal()

# these are the arrow keys in my keymap
aleft  = "h"
aright = "n"
aup    = "c"
adown  = "t";

keys = [
    # A list of available commands that can be bound to keys can be found
    # at https://docs.qtile.org/en/latest/manual/config/lazy.html
    # Switch between windows
    Key([mod], aleft, 	lazy.layout.left(), 	desc="Move focus to left"),
    Key([mod], aright,	lazy.layout.right(), 	desc="Move focus to right"),
    Key([mod], adown, 	lazy.layout.down(), 	desc="Move focus down"),
    Key([mod], aup, 	lazy.layout.up(), 		desc="Move focus up"),
    
    # Move windows between left/right columns or move up/down in current stack.
    # Moving out of range in Columns layout will create new column.
    Key([mod, "shift"], aleft, 	lazy.layout.shuffle_left(), 	desc="Move window to the left"),
    Key([mod, "shift"], aright, lazy.layout.shuffle_right(), 	desc="Move window to the right"),
    Key([mod, "shift"], adown, 	lazy.layout.shuffle_down(), 	desc="Move window down"),
    Key([mod, "shift"], aup, 	lazy.layout.shuffle_up(), 		desc="Move window up"),
    
    # Grow windows. If current window is on the edge of screen and direction
    # will be to screen edge - window would shrink.
    Key([mod, "control"], aleft, 	lazy.layout.grow_left(), 	desc="Grow window to the left"),
    Key([mod, "control"], aright, 	lazy.layout.grow_right(), 	desc="Grow window to the right"),
    Key([mod, "control"], adown, 	lazy.layout.grow_down(), 	desc="Grow window down"),
    Key([mod, "control"], aup, 		lazy.layout.grow_up(), 		desc="Grow window up"),

    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),
    Key([mod], "w", lazy.window.kill(), desc="Kill focused window"),
    Key([mod, "control"], "r", lazy.reload_config(), desc="Reload the config"),
    Key([mod], "l", lazy.spawn("slock", shell=True), desc="lock the screen"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
    Key([mod], "r", lazy.spawncmd(), desc="Spawn a command using a prompt widget"),
]

def grpstr(n, s):
    return "["+str(n)+"] "+s

groups = [
        Group(
            name = "1", 
            label = grpstr(1, "dev"), 
            spawn = "kitty",
            exclusive = True,
            matches=[Match(wm_class=["kitty"])]
        ),
        Group(
            name = "2", 
            label = grpstr(2, "web"), 
            spawn = "firefox",
            exclusive = False,
            matches=[Match(wm_class=["Firefox","Firefox-esr","firefox","xpdf","Xpdf","Atril","qutebrowser","Zathura", "feh","Gitk","gitk"])]
        ),
        Group(name = "3",
            label = grpstr(3, "edit"),
            exclusive = False,
            matches=[Match(wm_class=["geany","freecad","FreeCAD"])]
        ),
        Group(name = "4", label = grpstr(4, "games"), matches=[Match(wm_class=["steam","Steam"])]),
        Group(name = "5",
            label = grpstr(5, "email"),
            spawn = "thunderbird",
            exclusive = False,
            matches=[Match(wm_class=["thunderbird","Thunderbird"])]
        ),
]

color_fg           = "#d75f5f"
color_border       = "#b09796"
color_border_focus = "#f00000"
color_transparent  = "#000000"

for i in groups:
    keys.extend(
        [
            # mod1 + letter of group = switch to group
            Key(
                [mod],
                i.name,
                lazy.group[i.name].toscreen(),
                desc="Switch to group {}".format(i.name),
            ),
        ]
    )

layouts = [
    layout.Columns(
        num_columns = 3, #TODO: calculate number of columns based on screen width
		border_normal = color_border,
		border_focus  = color_border_focus,
		border_width  = 5,
		margin        = 6,
        wrap_focus_columns = False,
        wrap_focus_rows    = False,
		fair = False,
	),
    layout.Max(),
]

widget_defaults = dict(
    font="monospace",
    fontsize=14,
    padding=3,
    foreground=color_fg,
)
extension_defaults = widget_defaults.copy()

def make_screen():
    return Screen(
        bottom = make_bar(),
        # link for image
        # https://pixabay.com/get/gde77e33939eabe6d80c038bcaf154f29d8cfaae8f3f36a76c10e2c1db24981e45b86d0d13b87e74d79f3b91bb943bd62f2a4bc5edf82502a9f802f1e63bbc136f59d974730be92537e2b855f7cad1f7f_1920.jpg
        wallpaper = "~/Pictures/space.png"
    )

def make_bar():
    return bar.Bar(
        [
            widget.GroupBox(
                active=color_fg, 
                inactive=color_fg+"30",
                highlight_color=color_border,
                highlight_method='line',
                use_mouse_wheel=False,
            ),
            widget.Prompt(),
            #widget.Sep(padding=12),
            #widget.WindowName(),
            widget.Chord(
                chords_colors={
                    "launch": (color_fg, "#ffffff"),
                },
                name_transform=lambda name: name.upper(),
            ),
            widget.Spacer(),
            #widget.TextBox("[&lt;M-r&gt; - spawn]"),
            #widget.TextBox("[&lt;M-ctrl-r&gt; - reload config]"),
            #widget.TextBox("[&lt;M-w&gt; - close window]"),
            widget.Clock(format="%A, %d.%m.%Y        %H:%M"),
        ],
        24,
        background=color_border+"90"
    )

screens = [make_screen(), make_screen()]

dgroups_key_binder = None
dgroups_app_rules = []  # type: list
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(
    float_rules=[
        # Run the utility of `xprop` to see the wm class and name of an X client.
        *layout.Floating.default_float_rules,
        Match(wm_class="confirmreset"),  # gitk
        Match(wm_class="makebranch"),  # gitk
        Match(wm_class="maketag"),  # gitk
        Match(wm_class="ssh-askpass"),  # ssh-askpass
        Match(title="branchdialog"),  # gitk
        Match(title="pinentry"),  # GPG key password entry
    ]
)
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True

# If things like steam games want to auto-minimize themselves when losing
# focus, should we respect this or not?
auto_minimize = True

# When using the Wayland backend, this can be used to configure input devices.
wl_input_rules = None

# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"
