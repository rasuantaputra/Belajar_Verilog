module T37_opening_n_closing_file;  
    // Declare a variable to store the file handler  
    integer fd;  
  
    initial begin  
        // Open a new file by the name "my_file.txt"  
        // with "write" permissions, and store the file  
        // handler pointer in variable "fd"  
        fd = $fopen("my_file.txt", "w");  
  
        // Close the file handle pointed to by "fd"  
        // $fclose(fd);  
    end  
endmodule 