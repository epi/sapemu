sapemu
======

**sapemu** is a native player for SAP (Slight Atari Player) music files. It was first written in 2003 to make people able to listen those files on the platform they originally come from.


Requirements
------------

Any XL/XE Atari with at least 64kB of extended memory.


Usage
-----

### Memory configuration

**sapemu** needs some extended memory to swap its code and data with the "emulated" computer memory. When started, **sapemu** detects all extended memory banks in a non-destructive way, and prompts to choose which four of them you wish to use.

You set up four banks, but the number of actually used banks depends only on the size of loaded files. Up to 16kB, only the first bank is used, and so on.

<strong>+, *</strong> - move cursor

**-, =** - select bank

**Return** - accept and proceed to file selector

Under SpartaDOS X 4.47 or newer, extended memory banks are selected automatically based on the system configuration, and the bank selector is skipped entirely.

### File selector

**1...9** - select drive

**Space** - read current directory

**+, *, -, =** - move highlight

**Return** - enter subdirectory or load file

**Esc** - exit to DOS

Under SpartaDOS, a file name can be specified as the command line parameter, in which case the selector is omitted and the file is loaded and played immediately.

### Player

**Return** - play (Space to stop)

**1...9** - select subsong

**Tab** - back to file selector

**Esc** - exit to DOS

During playback, any key will stop playing and return to song info screen, or to DOS if a file was specified in the command line.

Bugs and restrictions
---------------------

**sapemu** plays SAP files of types **B**, **M**, **C**, **D** and **S**. The following memory areas are available for the loaded modules: $80-$FF, $0200-$CFFF, $DB80-$FFF9.
Since no checks are done, songs that use other memory areas may (and usually they do) hang the computer. Some other songs (especially large **D** type files) may cause crash as well - there may be various reasons, different in each individual case.


Version history
---------------

<dl>
 <dt>0.4 (2023-01-22)</dt>
 <dd>Under SpartaDOS X, extended memory banks are now configured automatically and name of the file to play can be specified as command line argument.</dd>
 <dt>0.3 (2012-10-28)</dt>
 <dd>fixed parsing unknown tags; TIME tag recognized but ignored</dd>
 <dt>0.2 (2008-09-15)</dt>
 <dd>added file selector</dd>
 <dt>0.1 (2003-05-14)</dt>
 <dd>first release</dd>
</dl>


License
-------

Copyright 2003, 2008, 2012, 2023 Adrian Matoga

This work 'as-is' we provide.<br />
No warranty express or implied.<br />
We've done our best,<br />
to debug and test.<br />
Liability for damages denied.<br />

Permission is granted hereby,<br />
to copy, share, and modify.<br />
Use as is fit,<br />
free or for profit.<br />
These rights, on this notice, rely.<br />
