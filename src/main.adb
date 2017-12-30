with libv4l2_h; use libv4l2_h;
with Ada.Text_IO; use Ada.Text_IO;
with stddef_h; use stddef_h;
with stdio_h; use stdio_h;
with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with POSIX.C;


--
--  test program, reading images from the camera
--

procedure Main is
  package  PC renames POSIX.C;
  package  IC renames Interfaces.C;
  package STD renames stddef_h;
  package STDIO renames stdio_h;
  type buffer is array (0 .. 1024, 0 .. 1024) of Integer;
  fd, close_result : IC.int;
  buf : buffer;
  read_size : constant STD.size_t := 1024 * 1024;
  result : STDIO.ssize_t;

begin
  fd := v4l2_open (IC.Strings.New_String ("/dev/video0"), PC.O_RDWR);
  Put_Line ("Video opened");
  Put_Line (" Read an Image");

  for i in 1 .. 100 loop
    declare
      --  a : constant Stream_Element_Array := Get_Image(H);

    begin
      result := v4l2_read (fd, buf'Address, read_size);
      Put_Line ("Frame number : " & Integer'Image (i));
      Put_Line ("v4l2_read returned : " & Integer'Image (Integer (result)));
    end;
  end loop;


  close_result := v4l2_close (fd);
  Put_Line ("v4l2_close returned: " & Integer'Image (Integer (close_result)));
end Main;
