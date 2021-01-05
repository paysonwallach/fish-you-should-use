set --global FISH_YOU_SHOULD_USE_VERSION "1.2.0"

__ysu__set_default NONE (set_color normal)
__ysu__set_default BOLD (set_color -o normal)
__ysu__set_default RED (set_color red)
__ysu__set_default YELLOW (set_color yellow)
__ysu__set_default VIOLET (set_color magenta)

set --global YSU__MESSAGE_POSITION "after"
set --global YSU__HARDCORE_MODE false

functions -q __ysu__check_aliases
functions -q __ysu__check_git_aliases
functions -q __ysu__flush_buffer
