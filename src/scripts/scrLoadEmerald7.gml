///scrLoadEmerald7()

if !file_exists (working_directory+"\save"+string(argument0)+".txt")
{
    return false;
}
file = file_text_open_read (working_directory+"\save"+string(argument0)+".txt");

file_text_readln(File);

if(file_text_eof(File))
    numb = 0;
else    
    numb =  real(base64_decode(file_text_read_string(File)));

file_text_close(file);
return numb;
