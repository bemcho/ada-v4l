pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;

package getopt_h is

  -- Declarations for getopt.
  --   Copyright (C) 1989-2016 Free Software Foundation, Inc.
  --   This file is part of the GNU C Library.
  --   The GNU C Library is free software; you can redistribute it and/or
  --   modify it under the terms of the GNU Lesser General Public
  --   License as published by the Free Software Foundation; either
  --   version 2.1 of the License, or (at your option) any later version.
  --   The GNU C Library is distributed in the hope that it will be useful,
  --   but WITHOUT ANY WARRANTY; without even the implied warranty of
  --   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  --   Lesser General Public License for more details.
  --   You should have received a copy of the GNU Lesser General Public
  --   License along with the GNU C Library; if not, see
  --   <http://www.gnu.org/licenses/>.   

  -- If __GNU_LIBRARY__ is not already defined, either we are being used
  --   standalone, or this is the first header included in the source file.
  --   If we are being used with glibc, we need to include <features.h>, but
  --   that does not exist if we are standalone.  So: if __GNU_LIBRARY__ is
  --   not defined, include <ctype.h>, which will pull in <features.h> for us
  --   if it's from glibc.  (Why ctype.h?  It's guaranteed to exist and it
  --   doesn't flood the namespace with stuff the way some other headers do.)   

  -- For communication from `getopt' to the caller.
  --   When `getopt' finds an option that takes an argument,
  --   the argument value is returned here.
  --   Also, when `ordering' is RETURN_IN_ORDER,
  --   each non-option ARGV-element is returned here.   

   optarg : Interfaces.C.Strings.chars_ptr;  -- /usr/include/getopt.h:57
   pragma Import (C, optarg, "optarg");

  -- Index in ARGV of the next element to be scanned.
  --   This is used for communication to and from the caller
  --   and for communication between successive calls to `getopt'.
  --   On entry to `getopt', zero means this is the first call; initialize.
  --   When `getopt' returns -1, this is the index of the first of the
  --   non-option elements that the caller should itself scan.
  --   Otherwise, `optind' communicates from one call to the next
  --   how much of ARGV has been scanned so far.   

   optind : aliased int;  -- /usr/include/getopt.h:71
   pragma Import (C, optind, "optind");

  -- Callers store zero here to inhibit the error message `getopt' prints
  --   for unrecognized options.   

   opterr : aliased int;  -- /usr/include/getopt.h:76
   pragma Import (C, opterr, "opterr");

  -- Set to an option character which was unrecognized.   
   optopt : aliased int;  -- /usr/include/getopt.h:80
   pragma Import (C, optopt, "optopt");

  -- Describe the long-named options requested by the application.
  --   The LONG_OPTIONS argument to getopt_long or getopt_long_only is a vector
  --   of `struct option' terminated by an element containing a name which is
  --   zero.
  --   The field `has_arg' is:
  --   no_argument		(or 0) if the option does not take an argument,
  --   required_argument	(or 1) if the option requires an argument,
  --   optional_argument 	(or 2) if the option takes an optional argument.
  --   If the field `flag' is not NULL, it points to a variable that is set
  --   to the value given in the field `val' when the option is found, but
  --   left unchanged if the option is not found.
  --   To have a long-named option do something other than set an `int' to
  --   a compiled-in constant, such as set a value from `optarg', set the
  --   option's `flag' field to zero and its `val' field to a nonzero
  --   value (the equivalent single-letter option character, if there is
  --   one).  For long options that have a zero `flag' field, `getopt'
  --   returns the contents of the `val' field.   

  -- has_arg can't be an enum because some compilers complain about
  --     type mismatches in all the code that assumes it is an int.   

  -- Names for the values of the `has_arg' field of `struct option'.   
  -- Get definitions and prototypes for functions to process the
  --   arguments in ARGV (ARGC of them, minus the program name) for
  --   options given in OPTS.
  --   Return the option character from OPTS just read.  Return -1 when
  --   there are no more options.  For unrecognized options, or options
  --   missing arguments, `optopt' is set to the option letter, and '?' is
  --   returned.
  --   The OPTS string is a list of characters which are recognized option
  --   letters, optionally followed by colons, specifying that that letter
  --   takes an argument, to be placed in `optarg'.
  --   If a letter in OPTS is followed by two colons, its argument is
  --   optional.  This behavior is specific to the GNU `getopt'.
  --   The argument `--' causes premature termination of argument
  --   scanning, explicitly telling `getopt' that there are no more
  --   options.
  --   If OPTS begins with `--', then non-option arguments are treated as
  --   arguments to the option '\0'.  This behavior is specific to the GNU
  --   `getopt'.   

  -- Many other libraries have conflicting prototypes for getopt, with
  --   differences in the consts, in stdlib.h.  To avoid compilation
  --   errors, only prototype getopt for the GNU C library.   

   function getopt
     (arg1 : int;
      arg2 : System.Address;
      arg3 : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/getopt.h:150
   pragma Import (C, getopt, "getopt");

  -- The GNU getopt has more functionality than the standard version.  The
  --   additional functionality can be disable at runtime.  This redirection
  --   helps to also do this at runtime.   

  -- Make sure we later can get all the definitions and declarations.   
end getopt_h;
