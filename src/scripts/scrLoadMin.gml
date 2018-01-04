///scrLoadMin()

if !file_exists (working_directory+"\save"+string(argument0)+".txt")
{
    return 0;
}

file = file_text_open_read (working_directory+"\save"+string(argument0)+".txt");

repeat 8
{
    file_text_readln (file);
}
if file_text_eof (file)
{
    numb = 0;
}
else
    numb = real (base64_decode (file_text_read_string (file)));
    
file_text_close (file);
return numb;
