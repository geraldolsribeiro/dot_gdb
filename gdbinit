#   # GDB Configuration
#   
#   ## Instalation
#   
#   ```bash
#   git clone ssh://git@git.intmain.io:8322/Intmain/dot_gdb.git ~/.gdb
#   git clone https://github.com/geraldolsribeiro/dot_gdb.git ~/.gdb
#   ln -s ~/.gdb/gdbinit ~/.gdbinit
#   ```
#   
#   ## Bugfix para mac
#   
#   Veja em [GDB kind of doesn't work on macOS
#   Sierra](https://stackoverflow.com/questions/39702871/gdb-kind-of-doesnt-work-on-macos-sierra)
#
#{{{
set startup-with-shell off
#}}}
#
#   ## Project specific configuration
#   
#   To enable project specific `.gdbinit` files.
#   
#{{{
set auto-load local-gdbinit
#}}}
#   
#   ## History
#   
#{{{
set history filename ~/.gdb_history
set history save on
#}}}
#   
#   ## Appearance
#   
#{{{
set prompt ❯ 
set print pretty on
set confirm off
set verbose off
set style enabled on

# These make gdb never pause in its output
set height 0
set width 0

# set enable-color on
# set colors stacktrace on
# set colors breakpoint on
# set colors source on
#}}}

set print elements 100

# show full information for each frame:
# set backtrace full

# Enable pretty printing for STL containers
# python
# import gdb
# from gdb.printing import PrettyPrinter
# gdb.pretty_printers.append(PrettyPrinter())
# end

set startup-quietly on

# set tui border-kind ascii
# set tui current-line

# Create custom alias
define my_breakpoint
  break main
  print myVariable
end

# Automatic Ctrl+L after next
define hook-next
    refresh
end

#   
#   ## References
#
#   * [Apple’s GDB Bug?](https://reverse.put.as/2008/11/28/apples-gdb-bug/)
#   * [github/gdbinit/Gdbinit](https://github.com/gdbinit/gdbinit)
#   * [Reverse Engineering Mac OS X](https://reverse.put.as/)

