# GDB Configuration

## Instalation

```bash
git clone ssh://git@git.intmain.io:8322/Intmain/dot_gdb.git ~/.gdb
git clone https://github.com/geraldolsribeiro/dot_gdb.git ~/.gdb
ln -s ~/.gdb/gdbinit ~/.gdbinit
```

## Bugfix para mac

Veja em [GDB kind of doesn't work on macOS
Sierra](https://stackoverflow.com/questions/39702871/gdb-kind-of-doesnt-work-on-macos-sierra)

```conf
set startup-with-shell off
```

## Project specific configuration

Note: you must enable project specific `.gdbinit` files with the `set auto-load local-gdbinit`.


```conf
set auto-load local-gdbinit
```


## History


```conf
set history filename ~/.gdb_history
set history save on
```


## Appearance


```conf
set print pretty on
set confirm off
set verbose off
```


## References
* [Apple’s GDB Bug?](https://reverse.put.as/2008/11/28/apples-gdb-bug/)
* [github/gdbinit/Gdbinit](https://github.com/gdbinit/gdbinit)
* [Reverse Engineering Mac OS X](https://reverse.put.as/)
