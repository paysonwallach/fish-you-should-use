# To Do

* ## Hardcore Mode

  Currently, hardcore mode only writes that it is enabled to the buffer. It appears that actaully halting command execution is rather tricky in fish, namely because event hooks are called asynchronoulsy, rather than as callbacks. See "[Prevent fish command from executing through fish_preexec](https://stackoverflow.com/questions/50979775/prevent-fish-command-from-executing-through-fish-preexec)."

* ## `check-alias-usage`
