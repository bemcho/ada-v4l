pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with stdio_h;
with Interfaces.C.Strings;
with System;
with stddef_h;
with stdint_h;

package libv4l2_h is

   --  unsupported macro: V4L2_DISABLE_CONVERSION 0x01
   --  unsupported macro: V4L2_ENABLE_ENUM_FMT_EMULATION 0x02
  --#             (C) 2008 Hans de Goede <hdegoede@redhat.com>
  --# This program is free software; you can redistribute it and/or modify
  --# it under the terms of the GNU Lesser General Public License as published by
  --# the Free Software Foundation; either version 2.1 of the License, or
  --# (at your option) any later version.
  --#
  --# This program is distributed in the hope that it will be useful,
  --# but WITHOUT ANY WARRANTY; without even the implied warranty of
  --# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  --# GNU Lesser General Public License for more details.
  --#
  --# You should have received a copy of the GNU Lesser General Public License
  --# along with this program; if not, write to the Free Software
  --# Foundation, Inc., 51 Franklin Street, Suite 500, Boston, MA  02110-1335  USA
  -- 

  -- Point this to a FILE opened for writing when you want to log error and
  --   status messages to a file, when NULL errors will get send to stderr  

   v4l2_log_file : access stdio_h.FILE;  -- /usr/include/libv4l2.h:38
   pragma Import (C, v4l2_log_file, "v4l2_log_file");

  -- Just like your regular open/close/etc, except that format conversion is
  --   done if necessary when capturing. That is if you (try to) set a capture
  --   format which is not supported by the cam, but is supported by libv4lconvert,
  --   then the try_fmt / set_fmt will succeed as if the cam supports the format
  --   and on dqbuf / read the data will be converted for you and returned in
  --   the request format. enum_fmt will also report support for the formats to
  --   which conversion is possible.
  --   Another difference is that you can make v4l2_read() calls even on devices
  --   which do not support the regular read() method.
  --   Note the device name passed to v4l2_open must be of a video4linux2 device,
  --   if it is anything else (including a video4linux1 device), v4l2_open will
  --   fail.
  --   Note that the argument to v4l2_ioctl after the request must be a valid
  --   memory address of structure of the appropriate type for the request (for
  --   v4l2 requests which expect a structure address). Passing in NULL or an
  --   invalid memory address will not lead to failure with errno being EFAULT,
  --   as it would with a real ioctl, but will cause libv4l2 to break, and you
  --   get to keep both pieces.
  -- 

   function v4l2_open (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : int  -- , ...
      ) return int;  -- /usr/include/libv4l2.h:63
   pragma Import (C, v4l2_open, "v4l2_open");

   function v4l2_close (arg1 : int) return int;  -- /usr/include/libv4l2.h:64
   pragma Import (C, v4l2_close, "v4l2_close");

   function v4l2_dup (arg1 : int) return int;  -- /usr/include/libv4l2.h:65
   pragma Import (C, v4l2_dup, "v4l2_dup");

   function v4l2_ioctl (arg1 : int; arg2 : unsigned_long  -- , ...
      ) return int;  -- /usr/include/libv4l2.h:66
   pragma Import (C, v4l2_ioctl, "v4l2_ioctl");

   function v4l2_read
     (arg1 : int;
      arg2 : System.Address;
      arg3 : stddef_h.size_t) return stdio_h.ssize_t;  -- /usr/include/libv4l2.h:67
   pragma Import (C, v4l2_read, "v4l2_read");

   function v4l2_write
     (arg1 : int;
      arg2 : System.Address;
      arg3 : stddef_h.size_t) return stdio_h.ssize_t;  -- /usr/include/libv4l2.h:68
   pragma Import (C, v4l2_write, "v4l2_write");

   function v4l2_mmap
     (arg1 : System.Address;
      arg2 : stddef_h.size_t;
      arg3 : int;
      arg4 : int;
      arg5 : int;
      arg6 : stdint_h.int64_t) return System.Address;  -- /usr/include/libv4l2.h:69
   pragma Import (C, v4l2_mmap, "v4l2_mmap");

   function v4l2_munmap (arg1 : System.Address; arg2 : stddef_h.size_t) return int;  -- /usr/include/libv4l2.h:71
   pragma Import (C, v4l2_munmap, "v4l2_munmap");

  -- Misc utility functions  
  -- This function takes a value of 0 - 65535, and then scales that range to
  --   the actual range of the given v4l control id, and then if the cid exists
  --   and is not locked sets the cid to the scaled value.
  --   Normally returns 0, even if the cid did not exist or was locked, returns
  --   non 0 when an other error occured.  

   function v4l2_set_control
     (arg1 : int;
      arg2 : int;
      arg3 : int) return int;  -- /usr/include/libv4l2.h:82
   pragma Import (C, v4l2_set_control, "v4l2_set_control");

  -- This function returns a value of 0 - 65535, scaled to from the actual range
  --   of the given v4l control id. When the cid does not exist, or could not be
  --   accessed -1 is returned.  

   function v4l2_get_control (arg1 : int; arg2 : int) return int;  -- /usr/include/libv4l2.h:87
   pragma Import (C, v4l2_get_control, "v4l2_get_control");

  -- "low level" access functions, these functions allow somewhat lower level
  --   access to libv4l2 (currently there only is v4l2_fd_open here)  

  -- Flags for v4l2_fd_open's v4l2_flags argument  
  -- Disable all format conversion done by libv4l2, this includes the software
  --   whitebalance, gamma correction, flipping, etc. libv4lconvert does. Use this
  --   if you want raw frame data, but still want the additional error checks and
  --   the read() emulation libv4l2 offers.  

  -- This flag is *OBSOLETE*, since version 0.5.98 libv4l *always* reports
  --   emulated formats to ENUM_FMT, except when conversion is disabled.  

  -- v4l2_fd_open: open an already opened fd for further use through
  --   v4l2lib and possibly modify libv4l2's default behavior through the
  --   v4l2_flags argument.
  --   Returns fd on success, -1 if the fd is not suitable for use through libv4l2
  --   (note the fd is left open in this case).  

   function v4l2_fd_open (arg1 : int; arg2 : int) return int;  -- /usr/include/libv4l2.h:110
   pragma Import (C, v4l2_fd_open, "v4l2_fd_open");

end libv4l2_h;
