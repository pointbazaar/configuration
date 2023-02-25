import os
import re
import sys

# qutebrowser binding
from qutebrowser.config.configfiles import ConfigAPI
from qutebrowser.config.config import ConfigContainer

#
# == modes ==
#
# - normal
# - insert
# - command
# - caret
# - passthrough
#

#### initial steps ####

config = config;
c      = c;

# do not load any default settings
for mode in c.bindings.default:
    entries = c.bindings.default[mode]
    for entry in entries:
        print(mode + " -- " + entry + " -- " + entries[entry])
    print("\n")

# discard default key bindings
c.bindings.default = {}

# do not load settings configured via the gui
config.load_autoconfig(False);

#### helpers ####

def bind(key, com, mode):

    config.bind(key, com, mode = mode);

def unbind(key, mode):

    config.unbind(key, mode = mode);

#### settings ####

#
# hints (dvorak home row chars)
#
c.hints.chars = 'etuhonas';

#
# startpage
#
c.url.default_page = 'https://www.google.com/';
c.url.start_pages  = [ c.url.default_page ];

#
# search engines
#
c.url.searchengines = {

    'DEFAULT': 'https://google.com/search?hl=en&q={}'
};

#
# misc
#
c.downloads.location.directory = '~/Downloads/';
c.auto_save.session            = True;
c.session.lazy_restore         = True;


#### keybindings for 'normal' mode ####

bind(':',           'set-cmd-text :',  'normal'); # command prompt
bind('<ctrl-t>',    'open -t',         'normal'); # new tab
bind('<ctrl-w>',    'tab-close',       'normal'); # close tab
bind('<ctrl-up>',   'forward',         'normal'); # forward
bind('<ctrl-down>', 'back',            'normal'); # backward
bind('<ctrl-pgup>',  'tab-prev',       'normal'); # prev tab
bind('<ctrl-pgdown>','tab-next',       'normal'); # next tab
bind('<ctrl-r>',    'reload',          'normal'); # page refresh
bind('<ctrl-l>',    'set-cmd-text --space :open', 'normal'); # edit url prompt
bind('f',           'hint',              'normal'); # edit url prompt
bind('i',           'mode-enter insert', 'normal'); # insert mode
bind('/',           'set-cmd-text /',    'normal'); # search


#### keybindings for 'insert' mode ####

bind('<escape>', 'mode-leave', 'insert') # leave mode


#### keybindings for 'hint' mode ####

bind('<return>', 'hint-follow', 'hint') # leave mode
bind('<escape>', 'mode-leave', 'hint') # leave mode


#### keybindings for 'command' mode ####

bind('<return>',  'command-accept',                       'command') # leave mode
bind('<escape>',  'mode-leave',                           'command') # leave mode
bind('<up>',      'completion-item-focus --history prev', 'command') # prev
bind('<down>',    'completion-item-focus --history next', 'command') # next


#### keybindings for 'prompt' mode ####

bind('<return>', 'prompt-accept',          'prompt') # prompt accept
bind('<escape>', 'mode-leave',             'prompt') # prompt leave
bind('<up>',     'prompt-item-focus prev', 'prompt') # prompt item focus prev
bind('<down>',   'prompt-item-focus prev', 'prompt') # prompt item focus prev
