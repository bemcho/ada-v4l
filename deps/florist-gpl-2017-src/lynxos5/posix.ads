--  DO NOT EDIT THIS FILE.
--  It is generated automatically, by program c-posix.c
------------------------------------------------------------------------------
--                                                                          --
--   POSIX Ada95 Bindings for Protocol Independent Interfaces (P1003.5c)    --
--                                                                          --
--                                 P O S I X                                --
--                                                                          --
--                                   S p e c                                --
--                                                                          --
--                                                                          --
--                                                                          --
--  This  file  is a component of  FLORIST,  an  Ada  application  program  --
--  interface for operating system services for use with the GNAT compiler  --
--  and the  Gnu  Ada  Runtime  Library (GNARL).   FLORIST  is intended to  --
--  conform to the IEEE POSIX Ada standards, 1003.5-1992 and 1003.5b-1993.  --
--  It also includes support for Draft 1 of IEEE Project 1003.5c.           --
--                                                                          --
--  This package specification contains some text extracted from  IEEE STD  --
--  1003.5: 1990, Information Technology -- POSIX Ada Language  Interfaces  --
--  Part 1: Binding  for  System Application Program Interface, as amended  --
--  by IEEE STD 1003.5b: 1996, Amendment 1: Realtime Extensions, copyright  --
--  1996 by the Institute of Electrical and Electronics Engineers, Inc.     --
--                                                                          --
--  The package specifications in the IEEE standards cited above represent  --
--  only a  portion  of  the  documents  and  are  not to be interpreteted  --
--  outside the context  of  the documents.  The standards must be used in  --
--  conjunction  with  the  package   specifications  in  order  to  claim  --
--  conformance.   The IEEE takes no responsibility for and will assume no  --
--  liability for damages resulting from the reader's misinterpretation of  --
--  said  information resulting from its out-of-context nature.   To order  --
--  copies of the IEEE standards,  please contact the  IEEE Service Center  --
--  at 445 Hoes Lane, PO Box 1331, Piscataway, NJ 08855-1331; via phone at  --
--  1-800-678-IEEE, 908-981-1393; or via fax at 908-981-9667.               --
--                                                                          --
--  These  package  specifications are  distributed in  the hope that they  --
--  will  be useful, but  WITHOUT  ANY  WARRANTY; without even the implied  --
--  warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.        --
--                                                                          --
------------------------------------------------------------------------------
with Ada_Streams;
with Interfaces;
package POSIX is


   --  2.4.1 Constants and Static Subtypes

   --   Version Identification

   POSIX_Version : constant := 1995_06;
   POSIX_Ada_Version : constant := 1995_00;

   --  Optional Facilities (obsolescent, 0)
   --  See package POSIX.Limits for preferred interfaces.

   subtype Job_Control_Support is Boolean range
      True .. True;
   subtype Saved_IDs_Support is Boolean range
      True .. True;
   subtype Change_Owner_Restriction is Boolean range
      True .. True;
   subtype Filename_Truncation is Boolean range
      True .. True;
   --  Bytes and I/O Counts

   Byte_Size : constant :=  8;

   type IO_Count is range -2**31 .. (2**31)-1;

   for IO_Count'Size use 32;
   subtype IO_Count_Maxima is IO_Count range
      32767 .. IO_Count'Last;
   --  System Limits (obsolescent)
   --  See package POSIX.Limits for preferred interfaces.

   Portable_Groups_Maximum :
      constant Natural := 0;
   subtype Groups_Maxima is Natural range
      8 .. Natural'Last;
   Portable_Argument_List_Maximum :
      constant Natural := 4096;
   subtype Argument_List_Maxima is Natural range
      4096 .. Natural'Last;
   Portable_Child_Processes_Maximum :
      constant Natural := 6;
   subtype Child_Processes_Maxima is Natural range
      25 .. Natural'Last;
   Portable_Open_Files_Maximum :
      constant Natural := 16;
   subtype Open_Files_Maxima is Natural range
      20 .. Natural'Last;
   Portable_Stream_Maximum :
      constant Natural := 8;
   subtype Stream_Maxima is Natural range
      8 .. Natural'Last;
   Portable_Time_Zone_String_Maximum :
      constant Natural := 3;
   subtype Time_Zone_String_Maxima is Natural range
      10 .. 10;
   --  Pathname Variable Values (obsolescent)
   --  See package POSIX.Limits for preferred interfaces.

   Portable_Link_Limit_Maximum :
      constant Natural := 8;
   subtype Link_Limit_Maxima is Natural range
      32767 .. 32767;
   Portable_Input_Line_Limit_Maximum :
      constant IO_Count := 255;
   subtype Input_Line_Limit_Maxima is IO_Count range
      512 .. 512;
   Portable_Input_Queue_Limit_Maximum :
      constant IO_Count := 255;
   subtype Input_Queue_Limit_Maxima is IO_Count range
      256 .. 256;
   Portable_Filename_Limit_Maximum :
      constant Natural := 14;
   subtype Filename_Limit_Maxima is Natural range
      255 .. 255;
   Portable_Pathname_Limit_Maximum :
      constant Natural := 255;
   subtype Pathname_Limit_Maxima is Natural range
      1024 .. 1024;
   Portable_Pipe_Limit_Maximum :
      constant IO_Count := 512;
   subtype Pipe_Limit_Maxima is IO_Count range
      512 .. 512;
   --  Blocking Behavior Values
   type Blocking_Behavior is (Tasks, Program, Special);
   subtype Text_IO_Blocking_Behavior is Blocking_Behavior
      range Tasks .. Tasks;
   IO_Blocking_Behavior               : constant Blocking_Behavior
                                      := Tasks;
   File_Lock_Blocking_Behavior        : constant Blocking_Behavior
                                      := Tasks;
   Wait_For_Child_Blocking_Behavior   : constant Blocking_Behavior
                                      := Tasks;
   subtype Realtime_Blocking_Behavior is Blocking_Behavior
      range Tasks .. Program;
   --  Signal Masking
   type Signal_Masking is (No_Signals, RTS_Signals, All_Signals);
   --  Characters and Strings
   type POSIX_Character is new Standard.Character;
   --  We rely here on the fact that the GNAT type Character
   --  is the same as the GCC type char in C,
   --  which in turn must be the same as POSIX_Character.

   NUL : constant POSIX_Character := POSIX_Character (ASCII.NUL);
   SOH : constant POSIX_Character := POSIX_Character (ASCII.SOH);
   STX : constant POSIX_Character := POSIX_Character (ASCII.STX);
   ETX : constant POSIX_Character := POSIX_Character (ASCII.ETX);
   EOT : constant POSIX_Character := POSIX_Character (ASCII.EOT);
   ENQ : constant POSIX_Character := POSIX_Character (ASCII.ENQ);
   ACK : constant POSIX_Character := POSIX_Character (ASCII.ACK);
   BEL : constant POSIX_Character := POSIX_Character (ASCII.BEL);
   BS  : constant POSIX_Character := POSIX_Character (ASCII.BS);
   HT  : constant POSIX_Character := POSIX_Character (ASCII.HT);
   LF  : constant POSIX_Character := POSIX_Character (ASCII.LF);
   VT  : constant POSIX_Character := POSIX_Character (ASCII.VT);
   FF  : constant POSIX_Character := POSIX_Character (ASCII.FF);
   CR  : constant POSIX_Character := POSIX_Character (ASCII.CR);
   SO  : constant POSIX_Character := POSIX_Character (ASCII.SO);
   SI  : constant POSIX_Character := POSIX_Character (ASCII.SI);
   DLE : constant POSIX_Character := POSIX_Character (ASCII.DLE);
   DC1 : constant POSIX_Character := POSIX_Character (ASCII.DC1);
   DC2 : constant POSIX_Character := POSIX_Character (ASCII.DC2);
   DC3 : constant POSIX_Character := POSIX_Character (ASCII.DC3);
   DC4 : constant POSIX_Character := POSIX_Character (ASCII.DC4);
   NAK : constant POSIX_Character := POSIX_Character (ASCII.NAK);
   SYN : constant POSIX_Character := POSIX_Character (ASCII.SYN);
   ETB : constant POSIX_Character := POSIX_Character (ASCII.ETB);
   CAN : constant POSIX_Character := POSIX_Character (ASCII.CAN);
   EM  : constant POSIX_Character := POSIX_Character (ASCII.EM);
   SUB : constant POSIX_Character := POSIX_Character (ASCII.SUB);
   ESC : constant POSIX_Character := POSIX_Character (ASCII.ESC);
   FS  : constant POSIX_Character := POSIX_Character (ASCII.FS);
   GS  : constant POSIX_Character := POSIX_Character (ASCII.GS);
   RS  : constant POSIX_Character := POSIX_Character (ASCII.RS);
   US  : constant POSIX_Character := POSIX_Character (ASCII.US);

   type POSIX_String is array (Positive range <>) of aliased POSIX_Character;
   function To_POSIX_String (Str : String) return POSIX_String;
   function To_POSIX_String (Str : Wide_String) return POSIX_String;
   function To_String (Str : POSIX_String) return String;
   function To_Wide_String (Str : POSIX_String) return Wide_String;
   function To_Stream_Element_Array (Buffer : POSIX_String)
      return Ada_Streams.Stream_Element_Array;
   function To_POSIX_String (Buffer : Ada_Streams.Stream_Element_Array)
      return POSIX_String;
   subtype Filename is POSIX_String;
   subtype Pathname is POSIX_String;
   function Is_Filename (Str : POSIX_String) return Boolean;
   function Is_Pathname (Str : POSIX_String) return Boolean;
   function Is_Portable_Filename (Str : POSIX_String) return Boolean;
   function Is_Portable_Pathname (Str : POSIX_String) return Boolean;
   --  String Lists
   type POSIX_String_List is limited private;
   Empty_String_List : constant POSIX_String_List;
   procedure Make_Empty (List : in out POSIX_String_List);
   procedure Append (List : in out POSIX_String_List;
                     Str  : in POSIX_String);
   generic
      with procedure Action
        (Item : in POSIX_String;
        Quit : in out Boolean);
   procedure For_Every_Item (List : in POSIX_String_List);
   function Length (List : POSIX_String_List) return Natural;
   function Value
     (List  : POSIX_String_List;
      Index : Positive) return POSIX_String;
   --  option sets
   type Option_Set is private;
   function Empty_Set return Option_Set;
   function "+" (L, R : Option_Set) return Option_Set;
   function "-" (L, R : Option_Set) return Option_Set;
   function "<" (Left, Right : Option_Set) return Boolean;
   function "<="(Left, Right : Option_Set) return Boolean;
   function ">" (Left, Right : Option_Set) return Boolean;
   function ">="(Left, Right : Option_Set) return Boolean;
   Option_1 :  constant Option_Set;
   Option_2 :  constant Option_Set;
   Option_3 :  constant Option_Set;
   Option_4 :  constant Option_Set;
   Option_5 :  constant Option_Set;
   Option_6 :  constant Option_Set;
   Option_7 :  constant Option_Set;
   Option_8 :  constant Option_Set;
   Option_9 :  constant Option_Set;
   Option_10 :  constant Option_Set;
   Option_11 :  constant Option_Set;
   Option_12 :  constant Option_Set;
   Option_13 :  constant Option_Set;
   Option_14 :  constant Option_Set;
   Option_15 :  constant Option_Set;
   Option_16 :  constant Option_Set;
   Option_17 :  constant Option_Set;
   Option_18 :  constant Option_Set;
   Option_19 :  constant Option_Set;
   Option_20 :  constant Option_Set;
   Option_21 :  constant Option_Set;
   Option_22 :  constant Option_Set;
   Option_23 :  constant Option_Set;
   Option_24 :  constant Option_Set;
   Option_25 :  constant Option_Set;
   Option_26 :  constant Option_Set;
   Option_27 :  constant Option_Set;
   Option_28 :  constant Option_Set;
   Option_29 :  constant Option_Set;
   Option_30 :  constant Option_Set;
   Option_31 :  constant Option_Set;
   --  Exceptions and error codes
   POSIX_Error : exception;
   type Error_Code is range -2**31 .. (2**31)-1;
   for Error_Code'Size use 32;
   function Get_Error_Code return Error_Code;
   procedure Set_Error_Code (Error : in Error_Code);
   function Is_POSIX_Error (Error : Error_Code) return Boolean;
   function Image (Error : Error_Code) return String;
   No_Error : constant Error_Code := 0;
   --  Error code constants with negative values correspond to
   --  error codes that are not supported by the current system.
   --  error codes
   E2BIG,
   Argument_List_Too_Long : constant := 7;
   EACCES,
   Permission_Denied : constant := 13;
   EADDRINUSE,
   Address_In_Use : constant := 48;
   EADDRNOTAVAIL,
   Address_Not_Available : constant := 49;
   EAFNOSUPPORT,
   Inappropriate_Family : constant := 47;
   EAGAIN,
   Resource_Temporarily_Unavailable : constant := 11;
   EALREADY,
   Already_Awaiting_Connection : constant := 37;
   EBADF,
   Bad_File_Descriptor : constant := 9;
   ENOTSUP,
   Operation_Not_Supported : constant := 77;
   EBUSY,
   Resource_Busy : constant := 16;
   ECANCELED,
   Operation_Canceled : constant := 69;
   ECHILD,
   No_Child_Process : constant := 10;
   ECONNABORTED,
   Connection_Aborted : constant := 53;
   ECONNREFUSED,
   Connection_Refused : constant := 61;
   ECONNRESET,
   Connection_Reset : constant := 54;
   EDEADLK,
   Resource_Deadlock_Avoided : constant := 72;
   EDOM,
   Domain_Error : constant := 33;
   EEXIST,
   File_Exists : constant := 17;
   EFAULT,
   Bad_Address : constant := 14;
   EFBIG,
   File_Too_Large : constant := 27;
   EHOSTDOWN,
   Host_Down : constant := 64;
   EHOSTUNREACH,
   Host_Unreachable : constant := 65;
   EINPROGRESS,
   Operation_In_Progress : constant := 36;
   EINTR,
   Interrupted_Operation : constant := 4;
   EINVAL,
   Invalid_Argument : constant := 22;
   EIO,
   Input_Output_Error : constant := 5;
   EISCONN,
   Is_Already_Connected : constant := 56;
   EISDIR,
   Is_A_Directory : constant := 21;
   EMFILE,
   Too_Many_Open_Files : constant := 24;
   EMLINK,
   Too_Many_Links : constant := 31;
   EMSGSIZE,
   Message_Too_Long : constant := 40;
   ENAMETOOLONG,
   Filename_Too_Long : constant := 63;
   ENETDOWN,
   Network_Down : constant := 50;
   ENETRESET,
   Network_Reset : constant := 52;
   ENETUNREACH,
   Network_Unreachable : constant := 51;
   ENFILE,
   Too_Many_Open_Files_In_System : constant := 23;
   ENOBUFS,
   No_Buffer_Space : constant := 55;
   ENODEV,
   No_Such_Operation_On_Device : constant := 19;
   ENOENT,
   No_Such_File_Or_Directory : constant := 2;
   ENOPROTOOPT,
   Unknown_Protocol_Option : constant := 42;
   ENOEXEC,
   Exec_Format_Error : constant := 8;
   ENOLCK,
   No_Locks_Available : constant := 46;
   ENOMEM,
   Not_Enough_Space : constant := 12;
   ENOSPC,
   No_Space_Left_On_Device : constant := 28;
   ENOTCONN,
   Not_Connected : constant := 57;
   ENOTSOCK,
   Not_A_Socket : constant := 38;
   EBADMSG,
   Bad_Message : constant := 77;
   ENOTDIR,
   Not_A_Directory : constant := 20;
   ENOTEMPTY,
   Directory_Not_Empty : constant := 66;
   ENOSYS,
   Operation_Not_Implemented : constant := 99;
   ENOTTY,
   Inappropriate_IO_Control_Operation : constant := 25;
   ENXIO,
   No_Such_Device_Or_Address : constant := 6;
   EOPNOTSUPP,
   Option_Not_Supported : constant := 45;
   EPERM,
   Operation_Not_Permitted : constant := 1;
   EPIPE,
   Broken_Pipe : constant := 32;
   EPROTONOSUPPORT,
   Protocol_Not_Supported : constant := 43;
   EPROTOTYPE,
   Wrong_Protocol_Type : constant := 41;
   ERANGE,
   TBD2 : constant := 34;
   EROFS,
   Read_Only_File_System : constant := 30;
   ESOCKTNOSUPPORT,
   Socket_Not_Supported : constant := 44;
   ESPIPE,
   Invalid_Seek : constant := 29;
   ESRCH,
   No_Such_Process : constant := 3;
   ETIMEDOUT,
   Timed_Out : constant := 60;
   EWOULDBLOCK,
   Would_Block : constant := 11;
   EXDEV,
   Improper_Link : constant := 18;
   Host_Not_Found : constant := 1;
   NO_DATA,
   No_Address_Available : constant := 4;
   NO_RECOVERY,
   Unrecoverable_Error : constant := 3;
   EAI_ADDRFAMILY,
   Unknown_Address_Type : constant := 10001;
   EAI_AGAIN,
   Try_Again : constant := 10002;
   EAI_BADFLAGS,
   Invalid_Flags : constant := 10003;
   EAI_FAIL,
   Name_Failed : constant := 10004;
   EAI_FAMILY,
   Unknown_Protocol_Family : constant := 10005;
   EAI_MEMORY,
   Memory_Allocation_Failed : constant := 10006;
   EAI_NODATA,
   No_Address_For_Name : constant := 10007;
   EAI_NONAME,
   Name_Not_Known : constant := 10008;
   EAI_SERVICE,
   Service_Not_Supported : constant := 10009;
   EAI_SOCKTYPE,
   Unknown_Socket_Type : constant := 10010;
   subtype Addrinfo_Error_Code is Error_Code
      range 10000 .. 10010;
   TACCES,
   Insufficient_Permission : constant := 100003;
   --  *** MISSING: TADDRBUSY ***  --
   TADDRBUSY,
   XTI_Address_In_Use : constant := -1;
   TBADADDR,
   Incorrect_Address_Format : constant := 100001;
   TBADDATA,
   Illegal_Data_Range : constant := 100010;
   TBADF,
   Invalid_File_Descriptor : constant := 100004;
   TBADFLAG,
   Invalid_Flag : constant := 100016;
   --  *** MISSING: TBADNAME ***  --
   TBADNAME,
   Invalid_Communications_Provider : constant := -1;
   TBADOPT,
   Incorrect_Or_Illegal_Option : constant := 100002;
   --  *** MISSING: TBADQLEN ***  --
   TBADQLEN,
   Endpoint_Queue_Length_Is_Zero : constant := -1;
   TBADSEQ,
   Invalid_Sequence_Number : constant := 100007;
   TBUFOVFLW,
   Buffer_Not_Large_Enough : constant := 100011;
   TFLOW,
   Flow_Control_Error : constant := 100012;
   --  *** MISSING: TINDOUT ***  --
   TINDOUT,
   Outstanding_Connection_Indications : constant := -1;
   TLOOK,
   Event_Requires_Attention : constant := 100009;
   TNOADDR,
   Could_Not_Allocate_Address : constant := 100005;
   TNODATA,
   No_Data_Available : constant := 100013;
   TNODIS,
   No_Disconnect_Indication_On_Endpoint : constant := 100014;
   --  *** MISSING: TPROVMISMATCH ***  --
   TPROVMISMATCH,
   Communications_Provider_Mismatch : constant := -1;
   TNOREL,
   No_Orderly_Release_Indication_On_Endpoint : constant := 100017;
   --  *** MISSING: TNOSTRUCTYPE ***  --
   TNOSTRUCTYPE,
   Unsupported_Object_Type_Requested : constant := -1;
   TNOTSUPPORT,
   Function_Not_Supported : constant := 100018;
   TNOUDERR,
   No_Unitdata_Error_On_Endpoint : constant := 100015;
   TOUTSTATE,
   Function_Not_Valid_For_State : constant := 100006;
   --  *** MISSING: TPROTO ***  --
   TPROTO,
   Protocol_Error : constant := -1;
   --  *** MISSING: TQFULL ***  --
   TQFULL,
   Endpoint_Queue_Full : constant := -1;
   TSTATECHNG,
   State_Change_In_Progress : constant := 100019;
   --  *** MISSING: TRESADDR ***  --
   TRESADDR,
   Surrogate_File_Descriptor_Mismatch : constant := -1;
   --  *** MISSING: TRESQLEN ***  --
   TRESQLEN,
   Incorrect_Surrogate_Queue_Length : constant := -1;
   subtype XTI_Error_Code is Error_Code
      range 100000 .. 100019;
   --  System Identification
   function System_Name return POSIX_String;
   function Node_Name return POSIX_String;
   function Release return POSIX_String;
   function Version return POSIX_String;
   function Machine return POSIX_String;
   type Seconds is new Integer;
   type Minutes is new Integer;
   type Nanoseconds_Base is new Integer;
   subtype Nanoseconds   is Nanoseconds_Base range 0 .. (10**9) - 1;
   type Timespec         is private;
   function Get_Seconds (Time : Timespec) return Seconds;
   procedure Set_Seconds
      (Time : in out Timespec;
       S    : in Seconds);
   function Get_Nanoseconds (Time : Timespec) return Nanoseconds;
   procedure Set_Nanoseconds
      (Time : in out Timespec;
       NS   : in Nanoseconds);
   procedure Split
      (Time : in  Timespec;
       S    : out Seconds;
       NS   : out Nanoseconds);
   function To_Timespec
      (S  : Seconds;
       NS : Nanoseconds) return Timespec;
   function "+" (Left, Right : Timespec) return Timespec;
   function "+" (Left : Timespec; Right : Nanoseconds)
     return Timespec;
   function "-" (Right : Timespec) return Timespec;
   function "-" (Left, Right : Timespec) return Timespec;
   function "-" (Left : Timespec; Right : Nanoseconds)
      return Timespec;
   function "*" (Left : Timespec; Right : Integer)
      return Timespec;
   function "*" (Left : Integer; Right : Timespec)
      return Timespec;
   function "/" (Left : Timespec; Right : Integer)
      return Timespec;
   function "/" (Left, Right  : Timespec) return Integer;
   function "<" (Left, Right  : Timespec) return Boolean;
   function "<=" (Left, Right : Timespec) return Boolean;
   function ">" (Left, Right  : Timespec) return Boolean;
   function ">=" (Left, Right : Timespec) return Boolean;
   function To_Duration (Time : Timespec) return Duration;
   --  pragma Inline (To_Duration);
   function To_Timespec (D : Duration) return Timespec;
   --  pragma Inline (To_Timespec);

   -------------------------------------------
   --  Host-Network Byte Order Conversions  --
   -------------------------------------------

   Host_Byte_Order_Is_Net_Byte_Order : Boolean := False;

   function Host_To_Network_Byte_Order (Host_32 : Interfaces.Unsigned_32)
      return Interfaces.Unsigned_32;
   function Host_To_Network_Byte_Order (Host_16 : Interfaces.Unsigned_16)
      return Interfaces.Unsigned_16;
   function Network_To_Host_Byte_Order (Host_32 : Interfaces.Unsigned_32)
      return Interfaces.Unsigned_32;
   function Network_To_Host_Byte_Order (Host_16 : Interfaces.Unsigned_16)
      return Interfaces.Unsigned_16;
   XTI_Blocking_Behavior     : constant Blocking_Behavior
      := Tasks;
   Sockets_Blocking_Behavior     : constant Blocking_Behavior
      := Tasks;

   --------------------------
   --  Octet declarations  --
   --------------------------

   type Octet is mod 2 ** 8;
   type Octet_Array is
      array (Integer range <>) of aliased Octet;
   type Octet_Array_Pointer is access all Octet_Array;
private
   Florist_Version : constant String := "Florist-3.15p  (20020604)";

   type String_List;
   --  See package body for comments on String_List.
   type POSIX_String_List is access all String_List;
   Empty_String_List : constant POSIX_String_List := null;

   type Timespec is record
      Val : Duration := 0.0;
   end record;
   --  The value is of type Duration because we can do more
   --  efficient arithmetic on that type than on a two-part C struct.
   --  We rely that GNAT implements type Duration with enough
   --  precision (64 bits) to hold a full C timespec value.
   --  The enclosing record is to permit implicit initialization.
   type Bits is mod 2**32;
   for Bits'Size use 32;
   --  Bits and the C int type are always the same size.
   --  We don't define int here, since we want to be able to
   --  use it in the visible parts of child packages.

   type Option_Set is
      record
         Option : Bits := 0;
      end record;
   Option_1  : constant Option_Set := (Option => 2**0);
   Option_2  : constant Option_Set := (Option => 2**1);
   Option_3  : constant Option_Set := (Option => 2**2);
   Option_4  : constant Option_Set := (Option => 2**3);
   Option_5  : constant Option_Set := (Option => 2**4);
   Option_6  : constant Option_Set := (Option => 2**5);
   Option_7  : constant Option_Set := (Option => 2**6);
   Option_8  : constant Option_Set := (Option => 2**7);
   Option_9  : constant Option_Set := (Option => 2**8);
   Option_10  : constant Option_Set := (Option => 2**9);
   Option_11  : constant Option_Set := (Option => 2**10);
   Option_12  : constant Option_Set := (Option => 2**11);
   Option_13  : constant Option_Set := (Option => 2**12);
   Option_14  : constant Option_Set := (Option => 2**13);
   Option_15  : constant Option_Set := (Option => 2**14);
   Option_16  : constant Option_Set := (Option => 2**15);
   Option_17  : constant Option_Set := (Option => 2**16);
   Option_18  : constant Option_Set := (Option => 2**17);
   Option_19  : constant Option_Set := (Option => 2**18);
   Option_20  : constant Option_Set := (Option => 2**19);
   Option_21  : constant Option_Set := (Option => 2**20);
   Option_22  : constant Option_Set := (Option => 2**21);
   Option_23  : constant Option_Set := (Option => 2**22);
   Option_24  : constant Option_Set := (Option => 2**23);
   Option_25  : constant Option_Set := (Option => 2**24);
   Option_26  : constant Option_Set := (Option => 2**25);
   Option_27  : constant Option_Set := (Option => 2**26);
   Option_28  : constant Option_Set := (Option => 2**27);
   Option_29  : constant Option_Set := (Option => 2**28);
   Option_30  : constant Option_Set := (Option => 2**29);
   Option_31  : constant Option_Set := (Option => 2**30);
end POSIX;
