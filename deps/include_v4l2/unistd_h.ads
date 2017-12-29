pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with x86_64_linux_gnu_bits_types_h;
with Interfaces.C.Strings;
with System;
with stddef_h;
with stdio_h;

package unistd_h is

   --  unsupported macro: STDIN_FILENO 0
   --  unsupported macro: STDOUT_FILENO 1
   --  unsupported macro: STDERR_FILENO 2
   --  unsupported macro: R_OK 4
   --  unsupported macro: W_OK 2
   --  unsupported macro: X_OK 1
   --  unsupported macro: F_OK 0
   --  unsupported macro: L_SET SEEK_SET
   --  unsupported macro: L_INCR SEEK_CUR
   --  unsupported macro: L_XTND SEEK_END
   --  unsupported macro: F_ULOCK 0
   --  unsupported macro: F_LOCK 1
   --  unsupported macro: F_TLOCK 2
   --  unsupported macro: F_TEST 3
  -- Copyright (C) 1991-2016 Free Software Foundation, Inc.
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

  -- *	POSIX Standard: 2.10 Symbolic Constants		<unistd.h>
  --  

  -- These may be used to determine what facilities are present at compile time.
  --   Their values can be obtained at run time from `sysconf'.   

  -- POSIX Standard approved as ISO/IEC 9945-1 as of September 2008.   
  -- POSIX Standard approved as ISO/IEC 9945-1 as of December 2001.   
  -- POSIX Standard approved as ISO/IEC 9945-1 as of June 1995.   
  -- POSIX Standard approved as ISO/IEC 9945-1 as of September 1993.   
  -- POSIX Standard approved as ISO/IEC 9945-1 as of September 1990.   
  -- These are not #ifdef __USE_POSIX2 because they are
  --   in the theoretically application-owned namespace.   

  -- The utilities on GNU systems also correspond to this version.   
  -- The utilities on GNU systems also correspond to this version.   
  -- The utilities on GNU systems also correspond to this version.   
  -- The utilities on GNU systems also correspond to this version.   
  -- The utilities on GNU systems also correspond to this version.   
  -- This symbol was required until the 2001 edition of POSIX.   
  -- If defined, the implementation supports the
  --   C Language Bindings Option.   

  -- If defined, the implementation supports the
  --   C Language Development Utilities Option.   

  -- If defined, the implementation supports the
  --   Software Development Utilities Option.   

  -- If defined, the implementation supports the
  --   creation of locales with the localedef utility.   

  -- X/Open version number to which the library conforms.  It is selectable.   
  -- Commands and utilities from XPG4 are available.   
  -- We are compatible with the old published standards as well.   
  -- The X/Open Unix extensions are available.   
  -- Encryption is present.   
  -- The enhanced internationalization capabilities according to XPG4.2
  --   are present.   

  -- The legacy interfaces are also available.   
  -- Get values of POSIX options:
  --   If these symbols are defined, the corresponding features are
  --   always available.  If not, they may be available sometimes.
  --   The current values can be obtained with `sysconf'.
  --   _POSIX_JOB_CONTROL		Job control is supported.
  --   _POSIX_SAVED_IDS		Processes have a saved set-user-ID
  --				and a saved set-group-ID.
  --   _POSIX_REALTIME_SIGNALS	Real-time, queued signals are supported.
  --   _POSIX_PRIORITY_SCHEDULING	Priority scheduling is supported.
  --   _POSIX_TIMERS		POSIX.4 clocks and timers are supported.
  --   _POSIX_ASYNCHRONOUS_IO	Asynchronous I/O is supported.
  --   _POSIX_PRIORITIZED_IO	Prioritized asynchronous I/O is supported.
  --   _POSIX_SYNCHRONIZED_IO	Synchronizing file data is supported.
  --   _POSIX_FSYNC			The fsync function is present.
  --   _POSIX_MAPPED_FILES		Mapping of files to memory is supported.
  --   _POSIX_MEMLOCK		Locking of all memory is supported.
  --   _POSIX_MEMLOCK_RANGE		Locking of ranges of memory is supported.
  --   _POSIX_MEMORY_PROTECTION	Setting of memory protections is supported.
  --   _POSIX_MESSAGE_PASSING	POSIX.4 message queues are supported.
  --   _POSIX_SEMAPHORES		POSIX.4 counting semaphores are supported.
  --   _POSIX_SHARED_MEMORY_OBJECTS	POSIX.4 shared memory objects are supported.
  --   _POSIX_THREADS		POSIX.1c pthreads are supported.
  --   _POSIX_THREAD_ATTR_STACKADDR	Thread stack address attribute option supported.
  --   _POSIX_THREAD_ATTR_STACKSIZE	Thread stack size attribute option supported.
  --   _POSIX_THREAD_SAFE_FUNCTIONS	Thread-safe functions are supported.
  --   _POSIX_THREAD_PRIORITY_SCHEDULING
  --				POSIX.1c thread execution scheduling supported.
  --   _POSIX_THREAD_PRIO_INHERIT	Thread priority inheritance option supported.
  --   _POSIX_THREAD_PRIO_PROTECT	Thread priority protection option supported.
  --   _POSIX_THREAD_PROCESS_SHARED	Process-shared synchronization supported.
  --   _POSIX_PII			Protocol-independent interfaces are supported.
  --   _POSIX_PII_XTI		XTI protocol-indep. interfaces are supported.
  --   _POSIX_PII_SOCKET		Socket protocol-indep. interfaces are supported.
  --   _POSIX_PII_INTERNET		Internet family of protocols supported.
  --   _POSIX_PII_INTERNET_STREAM	Connection-mode Internet protocol supported.
  --   _POSIX_PII_INTERNET_DGRAM	Connectionless Internet protocol supported.
  --   _POSIX_PII_OSI		ISO/OSI family of protocols supported.
  --   _POSIX_PII_OSI_COTS		Connection-mode ISO/OSI service supported.
  --   _POSIX_PII_OSI_CLTS		Connectionless ISO/OSI service supported.
  --   _POSIX_POLL			Implementation supports `poll' function.
  --   _POSIX_SELECT		Implementation supports `select' and `pselect'.
  --   _XOPEN_REALTIME		X/Open realtime support is available.
  --   _XOPEN_REALTIME_THREADS	X/Open realtime thread support is available.
  --   _XOPEN_SHM			Shared memory interface according to XPG4.2.
  --   _XBS5_ILP32_OFF32		Implementation provides environment with 32-bit
  --				int, long, pointer, and off_t types.
  --   _XBS5_ILP32_OFFBIG		Implementation provides environment with 32-bit
  --				int, long, and pointer and off_t with at least
  --				64 bits.
  --   _XBS5_LP64_OFF64		Implementation provides environment with 32-bit
  --				int, and 64-bit long, pointer, and off_t types.
  --   _XBS5_LPBIG_OFFBIG		Implementation provides environment with at
  --				least 32 bits int and long, pointer, and off_t
  --				with at least 64 bits.
  --   If any of these symbols is defined as -1, the corresponding option is not
  --   true for any file.  If any is defined as other than -1, the corresponding
  --   option is true for all files.  If a symbol is not defined at all, the value
  --   for a specific file can be obtained from `pathconf' and `fpathconf'.
  --   _POSIX_CHOWN_RESTRICTED	Only the super user can use `chown' to change
  --				the owner of a file.  `chown' can only be used
  --				to change the group ID of a file to a group of
  --				which the calling process is a member.
  --   _POSIX_NO_TRUNC		Pathname components longer than
  --				NAME_MAX generate an error.
  --   _POSIX_VDISABLE		If defined, if the value of an element of the
  --				`c_cc' member of `struct termios' is
  --				_POSIX_VDISABLE, no character will have the
  --				effect associated with that element.
  --   _POSIX_SYNC_IO		Synchronous I/O may be performed.
  --   _POSIX_ASYNC_IO		Asynchronous I/O may be performed.
  --   _POSIX_PRIO_IO		Prioritized Asynchronous I/O may be performed.
  --   Support for the Large File Support interface is not generally available.
  --   If it is available the following constants are defined to one.
  --   _LFS64_LARGEFILE		Low-level I/O supports large files.
  --   _LFS64_STDIO			Standard I/O supports large files.
  --    

  -- Get the environment definitions from Unix98.   
  -- Standard file descriptors.   
  -- All functions that are not declared anywhere else.   
  -- The Single Unix specification says that some more types are
  --   available here.   

   subtype gid_t is x86_64_linux_gnu_bits_types_h.uu_gid_t;  -- /usr/include/unistd.h:235

   subtype uid_t is x86_64_linux_gnu_bits_types_h.uu_uid_t;  -- /usr/include/unistd.h:240

   subtype useconds_t is x86_64_linux_gnu_bits_types_h.uu_useconds_t;  -- /usr/include/unistd.h:258

   subtype pid_t is x86_64_linux_gnu_bits_types_h.uu_pid_t;  -- /usr/include/unistd.h:263

   subtype intptr_t is x86_64_linux_gnu_bits_types_h.uu_intptr_t;  -- /usr/include/unistd.h:270

   subtype socklen_t is x86_64_linux_gnu_bits_types_h.uu_socklen_t;  -- /usr/include/unistd.h:277

  -- Values for the second argument to access.
  --   These may be OR'd together.   

  -- Test for access to NAME using the real UID and real GID.   
   function c_access (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : int) return int;  -- /usr/include/unistd.h:290
   pragma Import (C, c_access, "access");

  -- Test for access to NAME using the effective UID and GID
  --   (as normal file operations use).   

  -- An alias for `euidaccess', used by some other systems.   
  -- Test for access to FILE relative to the directory FD is open on.
  --   If AT_EACCESS is set in FLAG, then use effective IDs like `eaccess',
  --   otherwise use real IDs like `access'.   

   function faccessat
     (arg1 : int;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int;
      arg4 : int) return int;  -- /usr/include/unistd.h:307
   pragma Import (C, faccessat, "faccessat");

  -- Values for the WHENCE argument to lseek.   
  -- Old BSD names for the same constants; just for compatibility.   
  -- Move FD's file position to OFFSET bytes from the
  --   beginning of the file (if WHENCE is SEEK_SET),
  --   the current position (if WHENCE is SEEK_CUR),
  --   or the end of the file (if WHENCE is SEEK_END).
  --   Return the new file position.   

   function lseek
     (arg1 : int;
      arg2 : x86_64_linux_gnu_bits_types_h.uu_off_t;
      arg3 : int) return x86_64_linux_gnu_bits_types_h.uu_off_t;  -- /usr/include/unistd.h:337
   pragma Import (C, lseek, "lseek");

  -- Close the file descriptor FD.
  --   This function is a cancellation point and therefore not marked with
  --   __THROW.   

   function close (arg1 : int) return int;  -- /usr/include/unistd.h:356
   pragma Import (C, close, "close");

  -- Read NBYTES into BUF from FD.  Return the
  --   number read, -1 for errors or 0 for EOF.
  --   This function is a cancellation point and therefore not marked with
  --   __THROW.   

   function read
     (arg1 : int;
      arg2 : System.Address;
      arg3 : stddef_h.size_t) return stdio_h.ssize_t;  -- /usr/include/unistd.h:363
   pragma Import (C, read, "read");

  -- Write N bytes of BUF to FD.  Return the number written, or -1.
  --   This function is a cancellation point and therefore not marked with
  --   __THROW.   

   function write
     (arg1 : int;
      arg2 : System.Address;
      arg3 : stddef_h.size_t) return stdio_h.ssize_t;  -- /usr/include/unistd.h:369
   pragma Import (C, write, "write");

  -- Read NBYTES into BUF from FD at the given position OFFSET without
  --   changing the file pointer.  Return the number read, -1 for errors
  --   or 0 for EOF.
  --   This function is a cancellation point and therefore not marked with
  --   __THROW.   

   function pread
     (arg1 : int;
      arg2 : System.Address;
      arg3 : stddef_h.size_t;
      arg4 : x86_64_linux_gnu_bits_types_h.uu_off_t) return stdio_h.ssize_t;  -- /usr/include/unistd.h:379
   pragma Import (C, pread, "pread");

  -- Write N bytes of BUF to FD at the given position OFFSET without
  --   changing the file pointer.  Return the number written, or -1.
  --   This function is a cancellation point and therefore not marked with
  --   __THROW.   

   function pwrite
     (arg1 : int;
      arg2 : System.Address;
      arg3 : stddef_h.size_t;
      arg4 : x86_64_linux_gnu_bits_types_h.uu_off_t) return stdio_h.ssize_t;  -- /usr/include/unistd.h:387
   pragma Import (C, pwrite, "pwrite");

  -- Read NBYTES into BUF from FD at the given position OFFSET without
  --   changing the file pointer.  Return the number read, -1 for errors
  --   or 0 for EOF.   

  -- Write N bytes of BUF to FD at the given position OFFSET without
  --   changing the file pointer.  Return the number written, or -1.   

  -- Create a one-way communication channel (pipe).
  --   If successful, two file descriptors are stored in PIPEDES;
  --   bytes written on PIPEDES[1] can be read from PIPEDES[0].
  --   Returns 0 if successful, -1 if not.   

   function pipe (arg1 : access int) return int;  -- /usr/include/unistd.h:420
   pragma Import (C, pipe, "pipe");

  -- Same as pipe but apply flags passed in FLAGS to the new file
  --   descriptors.   

  -- Schedule an alarm.  In SECONDS seconds, the process will get a SIGALRM.
  --   If SECONDS is zero, any currently scheduled alarm will be cancelled.
  --   The function returns the number of seconds remaining until the last
  --   alarm scheduled would have signaled, or zero if there wasn't one.
  --   There is no return value to indicate an error, but you can set `errno'
  --   to 0 and check its value after calling `alarm', and this might tell you.
  --   The signal may come late due to processor scheduling.   

   function alarm (arg1 : unsigned) return unsigned;  -- /usr/include/unistd.h:435
   pragma Import (C, alarm, "alarm");

  -- Make the process sleep for SECONDS seconds, or until a signal arrives
  --   and is not ignored.  The function returns the number of seconds less
  --   than SECONDS which it actually slept (thus zero if it slept the full time).
  --   If a signal handler does a `longjmp' or modifies the handling of the
  --   SIGALRM signal while inside `sleep' call, the handling of the SIGALRM
  --   signal afterwards is undefined.  There is no return value to indicate
  --   error, but if `sleep' returns SECONDS, it probably didn't work.
  --   This function is a cancellation point and therefore not marked with
  --   __THROW.   

   function sleep (arg1 : unsigned) return unsigned;  -- /usr/include/unistd.h:447
   pragma Import (C, sleep, "sleep");

  -- Set an alarm to go off (generating a SIGALRM signal) in VALUE
  --   microseconds.  If INTERVAL is nonzero, when the alarm goes off, the
  --   timer is reset to go off every INTERVAL microseconds thereafter.
  --   Returns the number of microseconds remaining before the alarm.   

   function ualarm (arg1 : x86_64_linux_gnu_bits_types_h.uu_useconds_t; arg2 : x86_64_linux_gnu_bits_types_h.uu_useconds_t) return x86_64_linux_gnu_bits_types_h.uu_useconds_t;  -- /usr/include/unistd.h:455
   pragma Import (C, ualarm, "ualarm");

  -- Sleep USECONDS microseconds, or until a signal arrives that is not blocked
  --   or ignored.
  --   This function is a cancellation point and therefore not marked with
  --   __THROW.   

   function usleep (arg1 : x86_64_linux_gnu_bits_types_h.uu_useconds_t) return int;  -- /usr/include/unistd.h:463
   pragma Import (C, usleep, "usleep");

  -- Suspend the process until a signal arrives.
  --   This always returns -1 and sets `errno' to EINTR.
  --   This function is a cancellation point and therefore not marked with
  --   __THROW.   

   function pause return int;  -- /usr/include/unistd.h:472
   pragma Import (C, pause, "pause");

  -- Change the owner and group of FILE.   
   function chown
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : x86_64_linux_gnu_bits_types_h.uu_uid_t;
      arg3 : x86_64_linux_gnu_bits_types_h.uu_gid_t) return int;  -- /usr/include/unistd.h:476
   pragma Import (C, chown, "chown");

  -- Change the owner and group of the file that FD is open on.   
   function fchown
     (arg1 : int;
      arg2 : x86_64_linux_gnu_bits_types_h.uu_uid_t;
      arg3 : x86_64_linux_gnu_bits_types_h.uu_gid_t) return int;  -- /usr/include/unistd.h:481
   pragma Import (C, fchown, "fchown");

  -- Change owner and group of FILE, if it is a symbolic
  --   link the ownership of the symbolic link is changed.   

   function lchown
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : x86_64_linux_gnu_bits_types_h.uu_uid_t;
      arg3 : x86_64_linux_gnu_bits_types_h.uu_gid_t) return int;  -- /usr/include/unistd.h:486
   pragma Import (C, lchown, "lchown");

  -- Change the owner and group of FILE relative to the directory FD is open
  --   on.   

   function fchownat
     (arg1 : int;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : x86_64_linux_gnu_bits_types_h.uu_uid_t;
      arg4 : x86_64_linux_gnu_bits_types_h.uu_gid_t;
      arg5 : int) return int;  -- /usr/include/unistd.h:494
   pragma Import (C, fchownat, "fchownat");

  -- Change the process's working directory to PATH.   
   function chdir (arg1 : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/unistd.h:500
   pragma Import (C, chdir, "chdir");

  -- Change the process's working directory to the one FD is open on.   
   function fchdir (arg1 : int) return int;  -- /usr/include/unistd.h:504
   pragma Import (C, fchdir, "fchdir");

  -- Get the pathname of the current working directory,
  --   and put it in SIZE bytes of BUF.  Returns NULL if the
  --   directory couldn't be determined or SIZE was too small.
  --   If successful, returns BUF.  In GNU, if BUF is NULL,
  --   an array is allocated with `malloc'; the array is SIZE
  --   bytes long, unless SIZE == 0, in which case it is as
  --   big as necessary.   

   function getcwd (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : stddef_h.size_t) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/unistd.h:514
   pragma Import (C, getcwd, "getcwd");

  -- Return a malloc'd string containing the current directory name.
  --   If the environment variable `PWD' is set, and its value is correct,
  --   that value is used.   

  -- Put the absolute pathname of the current working directory in BUF.
  --   If successful, return BUF.  If not, put an error message in
  --   BUF and return NULL.  BUF should be at least PATH_MAX bytes long.   

   function getwd (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/unistd.h:528
   pragma Import (C, getwd, "getwd");

  -- Duplicate FD, returning a new file descriptor on the same file.   
   function dup (arg1 : int) return int;  -- /usr/include/unistd.h:534
   pragma Import (C, dup, "dup");

  -- Duplicate FD to FD2, closing FD2 and making it open on the same file.   
   function dup2 (arg1 : int; arg2 : int) return int;  -- /usr/include/unistd.h:537
   pragma Import (C, dup2, "dup2");

  -- Duplicate FD to FD2, closing FD2 and making it open on the same
  --   file while setting flags according to FLAGS.   

  -- NULL-terminated array of "NAME=VALUE" environment variables.   
  -- Replace the current process, executing PATH with arguments ARGV and
  --   environment ENVP.  ARGV and ENVP are terminated by NULL pointers.   

   function execve
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : System.Address;
      arg3 : System.Address) return int;  -- /usr/include/unistd.h:554
   pragma Import (C, execve, "execve");

  -- Execute the file FD refers to, overlaying the running program image.
  --   ARGV and ENVP are passed to the new program, as for `execve'.   

   function fexecve
     (arg1 : int;
      arg2 : System.Address;
      arg3 : System.Address) return int;  -- /usr/include/unistd.h:560
   pragma Import (C, fexecve, "fexecve");

  -- Execute PATH with arguments ARGV and environment from `environ'.   
   function execv (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : System.Address) return int;  -- /usr/include/unistd.h:566
   pragma Import (C, execv, "execv");

  -- Execute PATH with all arguments after PATH until a NULL pointer,
  --   and the argument after that for environment.   

   function execle (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int;  -- /usr/include/unistd.h:571
   pragma Import (C, execle, "execle");

  -- Execute PATH with all arguments after PATH until
  --   a NULL pointer and environment from `environ'.   

   function execl (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int;  -- /usr/include/unistd.h:576
   pragma Import (C, execl, "execl");

  -- Execute FILE, searching in the `PATH' environment variable if it contains
  --   no slashes, with arguments ARGV and environment from `environ'.   

   function execvp (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : System.Address) return int;  -- /usr/include/unistd.h:581
   pragma Import (C, execvp, "execvp");

  -- Execute FILE, searching in the `PATH' environment variable if
  --   it contains no slashes, with all arguments after FILE until a
  --   NULL pointer and environment from `environ'.   

   function execlp (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int;  -- /usr/include/unistd.h:587
   pragma Import (C, execlp, "execlp");

  -- Execute FILE, searching in the `PATH' environment variable if it contains
  --   no slashes, with arguments ARGV and environment from `environ'.   

  -- Add INC to priority of the current process.   
   function nice (arg1 : int) return int;  -- /usr/include/unistd.h:601
   pragma Import (C, nice, "nice");

  -- Terminate program execution with the low-order 8 bits of STATUS.   
   --  skipped func _exit

  -- Get the `_PC_*' symbols for the NAME argument to `pathconf' and `fpathconf';
  --   the `_SC_*' symbols for the NAME argument to `sysconf';
  --   and the `_CS_*' symbols for the NAME argument to `confstr'.   

  -- Get file-specific configuration information about PATH.   
   function pathconf (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : int) return long;  -- /usr/include/unistd.h:615
   pragma Import (C, pathconf, "pathconf");

  -- Get file-specific configuration about descriptor FD.   
   function fpathconf (arg1 : int; arg2 : int) return long;  -- /usr/include/unistd.h:619
   pragma Import (C, fpathconf, "fpathconf");

  -- Get the value of the system variable NAME.   
   function sysconf (arg1 : int) return long;  -- /usr/include/unistd.h:622
   pragma Import (C, sysconf, "sysconf");

  -- Get the value of the string-valued system variable NAME.   
   function confstr
     (arg1 : int;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : stddef_h.size_t) return stddef_h.size_t;  -- /usr/include/unistd.h:626
   pragma Import (C, confstr, "confstr");

  -- Get the process ID of the calling process.   
   function getpid return x86_64_linux_gnu_bits_types_h.uu_pid_t;  -- /usr/include/unistd.h:631
   pragma Import (C, getpid, "getpid");

  -- Get the process ID of the calling process's parent.   
   function getppid return x86_64_linux_gnu_bits_types_h.uu_pid_t;  -- /usr/include/unistd.h:634
   pragma Import (C, getppid, "getppid");

  -- Get the process group ID of the calling process.   
   function getpgrp return x86_64_linux_gnu_bits_types_h.uu_pid_t;  -- /usr/include/unistd.h:637
   pragma Import (C, getpgrp, "getpgrp");

  -- Get the process group ID of process PID.   
   --  skipped func __getpgid

   function getpgid (arg1 : x86_64_linux_gnu_bits_types_h.uu_pid_t) return x86_64_linux_gnu_bits_types_h.uu_pid_t;  -- /usr/include/unistd.h:642
   pragma Import (C, getpgid, "getpgid");

  -- Set the process group ID of the process matching PID to PGID.
  --   If PID is zero, the current process's process group ID is set.
  --   If PGID is zero, the process ID of the process is used.   

   function setpgid (arg1 : x86_64_linux_gnu_bits_types_h.uu_pid_t; arg2 : x86_64_linux_gnu_bits_types_h.uu_pid_t) return int;  -- /usr/include/unistd.h:649
   pragma Import (C, setpgid, "setpgid");

  -- Both System V and BSD have `setpgrp' functions, but with different
  --   calling conventions.  The BSD function is the same as POSIX.1 `setpgid'
  --   (above).  The System V function takes no arguments and puts the calling
  --   process in its on group like `setpgid (0, 0)'.
  --   New programs should always use `setpgid' instead.
  --   GNU provides the POSIX.1 function.   

  -- Set the process group ID of the calling process to its own PID.
  --   This is exactly the same as `setpgid (0, 0)'.   

   function setpgrp return int;  -- /usr/include/unistd.h:663
   pragma Import (C, setpgrp, "setpgrp");

  -- Create a new session with the calling process as its leader.
  --   The process group IDs of the session and the calling process
  --   are set to the process ID of the calling process, which is returned.   

   function setsid return x86_64_linux_gnu_bits_types_h.uu_pid_t;  -- /usr/include/unistd.h:670
   pragma Import (C, setsid, "setsid");

  -- Return the session ID of the given process.   
   function getsid (arg1 : x86_64_linux_gnu_bits_types_h.uu_pid_t) return x86_64_linux_gnu_bits_types_h.uu_pid_t;  -- /usr/include/unistd.h:674
   pragma Import (C, getsid, "getsid");

  -- Get the real user ID of the calling process.   
   function getuid return x86_64_linux_gnu_bits_types_h.uu_uid_t;  -- /usr/include/unistd.h:678
   pragma Import (C, getuid, "getuid");

  -- Get the effective user ID of the calling process.   
   function geteuid return x86_64_linux_gnu_bits_types_h.uu_uid_t;  -- /usr/include/unistd.h:681
   pragma Import (C, geteuid, "geteuid");

  -- Get the real group ID of the calling process.   
   function getgid return x86_64_linux_gnu_bits_types_h.uu_gid_t;  -- /usr/include/unistd.h:684
   pragma Import (C, getgid, "getgid");

  -- Get the effective group ID of the calling process.   
   function getegid return x86_64_linux_gnu_bits_types_h.uu_gid_t;  -- /usr/include/unistd.h:687
   pragma Import (C, getegid, "getegid");

  -- If SIZE is zero, return the number of supplementary groups
  --   the calling process is in.  Otherwise, fill in the group IDs
  --   of its supplementary groups in LIST and return the number written.   

   function getgroups (arg1 : int; arg2 : access x86_64_linux_gnu_bits_types_h.uu_gid_t) return int;  -- /usr/include/unistd.h:692
   pragma Import (C, getgroups, "getgroups");

  -- Return nonzero iff the calling process is in group GID.   
  -- Set the user ID of the calling process to UID.
  --   If the calling process is the super-user, set the real
  --   and effective user IDs, and the saved set-user-ID to UID;
  --   if not, the effective user ID is set to UID.   

   function setuid (arg1 : x86_64_linux_gnu_bits_types_h.uu_uid_t) return int;  -- /usr/include/unistd.h:703
   pragma Import (C, setuid, "setuid");

  -- Set the real user ID of the calling process to RUID,
  --   and the effective user ID of the calling process to EUID.   

   function setreuid (arg1 : x86_64_linux_gnu_bits_types_h.uu_uid_t; arg2 : x86_64_linux_gnu_bits_types_h.uu_uid_t) return int;  -- /usr/include/unistd.h:708
   pragma Import (C, setreuid, "setreuid");

  -- Set the effective user ID of the calling process to UID.   
   function seteuid (arg1 : x86_64_linux_gnu_bits_types_h.uu_uid_t) return int;  -- /usr/include/unistd.h:713
   pragma Import (C, seteuid, "seteuid");

  -- Set the group ID of the calling process to GID.
  --   If the calling process is the super-user, set the real
  --   and effective group IDs, and the saved set-group-ID to GID;
  --   if not, the effective group ID is set to GID.   

   function setgid (arg1 : x86_64_linux_gnu_bits_types_h.uu_gid_t) return int;  -- /usr/include/unistd.h:720
   pragma Import (C, setgid, "setgid");

  -- Set the real group ID of the calling process to RGID,
  --   and the effective group ID of the calling process to EGID.   

   function setregid (arg1 : x86_64_linux_gnu_bits_types_h.uu_gid_t; arg2 : x86_64_linux_gnu_bits_types_h.uu_gid_t) return int;  -- /usr/include/unistd.h:725
   pragma Import (C, setregid, "setregid");

  -- Set the effective group ID of the calling process to GID.   
   function setegid (arg1 : x86_64_linux_gnu_bits_types_h.uu_gid_t) return int;  -- /usr/include/unistd.h:730
   pragma Import (C, setegid, "setegid");

  -- Fetch the real user ID, effective user ID, and saved-set user ID,
  --   of the calling process.   

  -- Fetch the real group ID, effective group ID, and saved-set group ID,
  --   of the calling process.   

  -- Set the real user ID, effective user ID, and saved-set user ID,
  --   of the calling process to RUID, EUID, and SUID, respectively.   

  -- Set the real group ID, effective group ID, and saved-set group ID,
  --   of the calling process to RGID, EGID, and SGID, respectively.   

  -- Clone the calling process, creating an exact copy.
  --   Return -1 for errors, 0 to the new process,
  --   and the process ID of the new process to the old process.   

   function fork return x86_64_linux_gnu_bits_types_h.uu_pid_t;  -- /usr/include/unistd.h:759
   pragma Import (C, fork, "fork");

  -- Clone the calling process, but without copying the whole address space.
  --   The calling process is suspended until the new process exits or is
  --   replaced by a call to `execve'.  Return -1 for errors, 0 to the new process,
  --   and the process ID of the new process to the old process.   

   function vfork return x86_64_linux_gnu_bits_types_h.uu_pid_t;  -- /usr/include/unistd.h:767
   pragma Import (C, vfork, "vfork");

  -- Return the pathname of the terminal FD is open on, or NULL on errors.
  --   The returned storage is good only until the next call to this function.   

   function ttyname (arg1 : int) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/unistd.h:773
   pragma Import (C, ttyname, "ttyname");

  -- Store at most BUFLEN characters of the pathname of the terminal FD is
  --   open on in BUF.  Return 0 on success, otherwise an error number.   

   function ttyname_r
     (arg1 : int;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : stddef_h.size_t) return int;  -- /usr/include/unistd.h:777
   pragma Import (C, ttyname_r, "ttyname_r");

  -- Return 1 if FD is a valid descriptor associated
  --   with a terminal, zero if not.   

   function isatty (arg1 : int) return int;  -- /usr/include/unistd.h:782
   pragma Import (C, isatty, "isatty");

  -- Return the index into the active-logins file (utmp) for
  --   the controlling terminal.   

   function ttyslot return int;  -- /usr/include/unistd.h:788
   pragma Import (C, ttyslot, "ttyslot");

  -- Make a link to FROM named TO.   
   function link (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/unistd.h:793
   pragma Import (C, link, "link");

  -- Like link but relative paths in TO and FROM are interpreted relative
  --   to FROMFD and TOFD respectively.   

   function linkat
     (arg1 : int;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int;
      arg4 : Interfaces.C.Strings.chars_ptr;
      arg5 : int) return int;  -- /usr/include/unistd.h:799
   pragma Import (C, linkat, "linkat");

  -- Make a symbolic link to FROM named TO.   
   function symlink (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/unistd.h:806
   pragma Import (C, symlink, "symlink");

  -- Read the contents of the symbolic link PATH into no more than
  --   LEN bytes of BUF.  The contents are not null-terminated.
  --   Returns the number of characters read, or -1 for errors.   

   function readlink
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : stddef_h.size_t) return stdio_h.ssize_t;  -- /usr/include/unistd.h:812
   pragma Import (C, readlink, "readlink");

  -- Like symlink but a relative path in TO is interpreted relative to TOFD.   
   function symlinkat
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : int;
      arg3 : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/unistd.h:819
   pragma Import (C, symlinkat, "symlinkat");

  -- Like readlink but a relative PATH is interpreted relative to FD.   
   function readlinkat
     (arg1 : int;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : stddef_h.size_t) return stdio_h.ssize_t;  -- /usr/include/unistd.h:823
   pragma Import (C, readlinkat, "readlinkat");

  -- Remove the link NAME.   
   function unlink (arg1 : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/unistd.h:829
   pragma Import (C, unlink, "unlink");

  -- Remove the link NAME relative to FD.   
   function unlinkat
     (arg1 : int;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int) return int;  -- /usr/include/unistd.h:833
   pragma Import (C, unlinkat, "unlinkat");

  -- Remove the directory PATH.   
   function rmdir (arg1 : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/unistd.h:838
   pragma Import (C, rmdir, "rmdir");

  -- Return the foreground process group ID of FD.   
   function tcgetpgrp (arg1 : int) return x86_64_linux_gnu_bits_types_h.uu_pid_t;  -- /usr/include/unistd.h:842
   pragma Import (C, tcgetpgrp, "tcgetpgrp");

  -- Set the foreground process group ID of FD set PGRP_ID.   
   function tcsetpgrp (arg1 : int; arg2 : x86_64_linux_gnu_bits_types_h.uu_pid_t) return int;  -- /usr/include/unistd.h:845
   pragma Import (C, tcsetpgrp, "tcsetpgrp");

  -- Return the login name of the user.
  --   This function is a possible cancellation point and therefore not
  --   marked with __THROW.   

   function getlogin return Interfaces.C.Strings.chars_ptr;  -- /usr/include/unistd.h:852
   pragma Import (C, getlogin, "getlogin");

  -- Return at most NAME_LEN characters of the login name of the user in NAME.
  --   If it cannot be determined or some other error occurred, return the error
  --   code.  Otherwise return 0.
  --   This function is a possible cancellation point and therefore not
  --   marked with __THROW.   

   function getlogin_r (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : stddef_h.size_t) return int;  -- /usr/include/unistd.h:860
   pragma Import (C, getlogin_r, "getlogin_r");

  -- Set the login name returned by `getlogin'.   
   function setlogin (arg1 : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/unistd.h:865
   pragma Import (C, setlogin, "setlogin");

  -- Get definitions and prototypes for functions to process the
  --   arguments in ARGV (ARGC of them, minus the program name) for
  --   options given in OPTS.   

  -- Put the name of the current host in no more than LEN bytes of NAME.
  --   The result is null-terminated if LEN is large enough for the full
  --   name and the terminator.   

   function gethostname (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : stddef_h.size_t) return int;  -- /usr/include/unistd.h:882
   pragma Import (C, gethostname, "gethostname");

  -- Set the name of the current host to NAME, which is LEN bytes long.
  --   This call is restricted to the super-user.   

   function sethostname (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : stddef_h.size_t) return int;  -- /usr/include/unistd.h:889
   pragma Import (C, sethostname, "sethostname");

  -- Set the current machine's Internet number to ID.
  --   This call is restricted to the super-user.   

   function sethostid (arg1 : long) return int;  -- /usr/include/unistd.h:894
   pragma Import (C, sethostid, "sethostid");

  -- Get and set the NIS (aka YP) domain name, if any.
  --   Called just like `gethostname' and `sethostname'.
  --   The NIS domain name is usually the empty string when not using NIS.   

   function getdomainname (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : stddef_h.size_t) return int;  -- /usr/include/unistd.h:900
   pragma Import (C, getdomainname, "getdomainname");

   function setdomainname (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : stddef_h.size_t) return int;  -- /usr/include/unistd.h:902
   pragma Import (C, setdomainname, "setdomainname");

  -- Revoke access permissions to all processes currently communicating
  --   with the control terminal, and then send a SIGHUP signal to the process
  --   group of the control terminal.   

   function vhangup return int;  -- /usr/include/unistd.h:909
   pragma Import (C, vhangup, "vhangup");

  -- Revoke the access of all descriptors currently open on FILE.   
   function revoke (arg1 : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/unistd.h:912
   pragma Import (C, revoke, "revoke");

  -- Enable statistical profiling, writing samples of the PC into at most
  --   SIZE bytes of SAMPLE_BUFFER; every processor clock tick while profiling
  --   is enabled, the system examines the user PC and increments
  --   SAMPLE_BUFFER[((PC - OFFSET) / 2) * SCALE / 65536].  If SCALE is zero,
  --   disable profiling.  Returns zero on success, -1 on error.   

   function profil
     (arg1 : access unsigned_short;
      arg2 : stddef_h.size_t;
      arg3 : stddef_h.size_t;
      arg4 : unsigned) return int;  -- /usr/include/unistd.h:920
   pragma Import (C, profil, "profil");

  -- Turn accounting on if NAME is an existing file.  The system will then write
  --   a record for each process as it terminates, to this file.  If NAME is NULL,
  --   turn accounting off.  This call is restricted to the super-user.   

   function acct (arg1 : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/unistd.h:928
   pragma Import (C, acct, "acct");

  -- Successive calls return the shells listed in `/etc/shells'.   
   function getusershell return Interfaces.C.Strings.chars_ptr;  -- /usr/include/unistd.h:932
   pragma Import (C, getusershell, "getusershell");

  -- Discard cached info.   
   procedure endusershell;  -- /usr/include/unistd.h:933
   pragma Import (C, endusershell, "endusershell");

  -- Rewind and re-read the file.   
   procedure setusershell;  -- /usr/include/unistd.h:934
   pragma Import (C, setusershell, "setusershell");

  -- Put the program in the background, and dissociate from the controlling
  --   terminal.  If NOCHDIR is zero, do `chdir ("/")'.  If NOCLOSE is zero,
  --   redirects stdin, stdout, and stderr to /dev/null.   

   function daemon (arg1 : int; arg2 : int) return int;  -- /usr/include/unistd.h:940
   pragma Import (C, daemon, "daemon");

  -- Make PATH be the root directory (the starting point for absolute paths).
  --   This call is restricted to the super-user.   

   function chroot (arg1 : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/unistd.h:947
   pragma Import (C, chroot, "chroot");

  -- Prompt with PROMPT and read a string from the terminal without echoing.
  --   Uses /dev/tty if possible; otherwise stderr and stdin.   

   function getpass (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/unistd.h:951
   pragma Import (C, getpass, "getpass");

  -- Make all changes done to FD actually appear on disk.
  --   This function is a cancellation point and therefore not marked with
  --   __THROW.   

   function fsync (arg1 : int) return int;  -- /usr/include/unistd.h:959
   pragma Import (C, fsync, "fsync");

  -- Make all changes done to all files on the file system associated
  --   with FD actually appear on disk.   

  -- Return identifier for the current host.   
   function gethostid return long;  -- /usr/include/unistd.h:972
   pragma Import (C, gethostid, "gethostid");

  -- Make all changes done to all files actually appear on disk.   
   procedure sync;  -- /usr/include/unistd.h:975
   pragma Import (C, sync, "sync");

  -- Return the number of bytes in a page.  This is the system's page size,
  --   which is not necessarily the same as the hardware page size.   

   function getpagesize return int;  -- /usr/include/unistd.h:981
   pragma Import (C, getpagesize, "getpagesize");

  -- Return the maximum number of file descriptors
  --   the current process could possibly have.   

   function getdtablesize return int;  -- /usr/include/unistd.h:986
   pragma Import (C, getdtablesize, "getdtablesize");

  -- Truncate FILE to LENGTH bytes.   
   function truncate (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : x86_64_linux_gnu_bits_types_h.uu_off_t) return int;  -- /usr/include/unistd.h:996
   pragma Import (C, truncate, "truncate");

  -- Truncate the file FD is open on to LENGTH bytes.   
   function ftruncate (arg1 : int; arg2 : x86_64_linux_gnu_bits_types_h.uu_off_t) return int;  -- /usr/include/unistd.h:1019
   pragma Import (C, ftruncate, "ftruncate");

  -- Set the end of accessible data space (aka "the break") to ADDR.
  --   Returns zero on success and -1 for errors (with errno set).   

   function brk (arg1 : System.Address) return int;  -- /usr/include/unistd.h:1040
   pragma Import (C, brk, "brk");

  -- Increase or decrease the end of accessible data space by DELTA bytes.
  --   If successful, returns the address the previous end of data space
  --   (i.e. the beginning of the new space, if DELTA > 0);
  --   returns (void *) -1 for errors (with errno set).   

   function sbrk (arg1 : intptr_t) return System.Address;  -- /usr/include/unistd.h:1046
   pragma Import (C, sbrk, "sbrk");

  -- Invoke `system call' number SYSNO, passing it the remaining arguments.
  --   This is completely system-dependent, and not often useful.
  --   In Unix, `syscall' sets `errno' for all errors and most calls return -1
  --   for errors; in many systems you cannot pass arguments or get return
  --   values for all system calls (`pipe', `fork', and `getppid' typically
  --   among them).
  --   In Mach, all system calls take normal arguments and always return an
  --   error code (zero for success).   

   function syscall (arg1 : long  -- , ...
      ) return long;  -- /usr/include/unistd.h:1061
   pragma Import (C, syscall, "syscall");

  -- NOTE: These declarations also appear in <fcntl.h>; be sure to keep both
  --   files consistent.  Some systems have them there and some here, and some
  --   software depends on the macros being defined without including both.   

  -- `lockf' is a simpler interface to the locking facilities of `fcntl'.
  --   LEN is always relative to the current file position.
  --   The CMD argument is one of the following.
  --   This function is a cancellation point and therefore not marked with
  --   __THROW.   

   function lockf
     (arg1 : int;
      arg2 : int;
      arg3 : x86_64_linux_gnu_bits_types_h.uu_off_t) return int;  -- /usr/include/unistd.h:1084
   pragma Import (C, lockf, "lockf");

  -- Evaluate EXPRESSION, and repeat as long as it returns -1 with `errno'
  --   set to EINTR.   

  -- Synchronize at least the data part of a file with the underlying
  --   media.   

   function fdatasync (arg1 : int) return int;  -- /usr/include/unistd.h:1115
   pragma Import (C, fdatasync, "fdatasync");

  -- XPG4.2 specifies that prototypes for the encryption functions must
  --   be defined here.   

  -- Encrypt at most 8 characters from KEY using salt to perturb DES.   
  -- Encrypt data in BLOCK in place if EDFLAG is zero; otherwise decrypt
  --   block in place.   

  -- Swab pairs bytes in the first N bytes of the area pointed to by
  --   FROM and copy the result to TO.  The value of TO must not be in the
  --   range [FROM - N + 1, FROM - 1].  If N is odd the first byte in FROM
  --   is without partner.   

  -- The Single Unix specification demands this prototype to be here.
  --   It is also found in <stdio.h>.   

  -- Return the name of the controlling terminal.   
  -- Define some macros helping to catch buffer overflows.   
end unistd_h;
