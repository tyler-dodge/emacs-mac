rem  Hack to change/add environment variables in the makefiles for the
rem  Windows platform.
rem
rem  Copyright (c) 2003 Free Software Foundation, Inc.
rem
rem  This file is part of GNU Emacs.
rem
rem  GNU Emacs is free software; you can redistribute it and/or modify
rem  it under the terms of the GNU General Public License as published by
rem  the Free Software Foundation; either version 2, or (at your option)
rem  any later version.
rem
rem  GNU Emacs is distributed in the hope that it will be useful,
rem  but WITHOUT ANY WARRANTY; without even the implied warranty of
rem  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
rem  GNU General Public License for more details.
rem
rem  You should have received a copy of the GNU General Public License
rem  along with GNU Emacs; see the file COPYING.  If not, write to
rem  the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
rem  Boston, MA 02111-1307, USA.
rem
rem
rem  Usage:
rem    envadd "ENV1=VAL1" "ENV2=VAL2" ... /C <command line>
rem
rem  The "/C" switch marks the end of environment variables, and the
rem  beginning of the command line.
rem
rem  By Peter 'Luna' Runestig <peter@runestig.com> 2003

:Loop
if .%1% == ./C goto EndLoop
rem just to avoid an endless loop:
if .%1% == . goto EndLoop
set %1
shift
goto Loop
:EndLoop

rem Eat the "/C"
shift
rem Now, run the command line
%1 %2 %3 %4 %5 %6 %7 %8 %9
