#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#define BUFER_SIZE 8000 // Buffer size in bytes

char *in_file_name = "index.html";
uint32_t in_file_name_size = 0;
char *out_file_name = "outFile.c";
char *var_name = "var_name";



char *http_header = "HTTP/1.0 200 OK\r\nServer: lwIP/2.0.3d http://savannah.nongnu.org/projects/lwip)\r\n";
char *content_type = "Content-Type: text/html\r\n";

int main(int argc, char** argv){


    char c;
    int i = 0;

    char *endpoint = (char*) malloc(256);
    endpoint = "";
    if(argc >= 2){
        var_name = argv[1];
    }
    if(argc >= 3){
        endpoint = argv[2];
    }
    

    printf("%s\n", endpoint);
    FILE *inFile, *outFile;

    inFile = fopen(in_file_name, "rb");
    outFile = fopen(out_file_name, "w");
    char *buffer = (char*) malloc(BUFER_SIZE);
    size_t file_size = fread(buffer, sizeof(char), BUFER_SIZE, inFile);

 
    if(strcmp(endpoint, "") != 0){
        strcat(endpoint, "/");
       
    }
    strcat(endpoint, in_file_name);
    printf("%s\n", endpoint);


    fprintf(outFile, "static const unsigned char FSDATA_ALIGN_PRE data__%s_html[] FSDATA_ALIGN_POST = ", var_name);
    fprintf(outFile, "{\r\n");
    fprintf(outFile, "//Filename %s\r\n", endpoint);
    //Filename
    do{
        c = endpoint[i];
        fprintf(outFile, "0x%02x,  ",c);
        i++;
    }while(c != '\0');
    in_file_name_size = i;

    fprintf(outFile, "\r\n//Http Header");
    i = 0;
    //Http Header
    do{
        c = http_header[i];
        if(i % 16 == 0){
            fprintf(outFile, "\r\n");
        }
        if(c != '\0'){
            fprintf(outFile, "0x%02x, ", c);  
        }
        i++;
    }while(c != '\0');

    //Content Length
    fprintf(outFile, "\r\n//Content Length - %d bytes", file_size);
    char *content_length = (char*) malloc(256);
    snprintf(content_length, 100, "Content-Length: %ld\r\n", file_size);
    i = 0;
    do{
        c = content_length[i];
        if(i % 16 == 0){
            fprintf(outFile, "\r\n");
        }
        if(c != '\0'){
            fprintf(outFile, "0x%02x, ", (unsigned char) c);  
        }
        i++;
    }while(c != '\0');

    //Content Type
    fprintf(outFile, "\r\n//Content Type (text/html)");
    i=0;
    do{
        c = content_type[i];
        if(i % 16 == 0){
            fprintf(outFile, "\r\n");
        }
        if(c != '\0'){
            fprintf(outFile, "0x%02x, ", c);  
        }
        i++;
    }while(c != '\0');

    // Newline between header and data
    fprintf(outFile, "0x0d, 0x0a, "); 

    // File contents
    fprintf(outFile, "\r\n//Raw Data");
    for(i = 0; i < file_size; i++){
        c = buffer[i];
        printf("%c", c);
        if((i % 16) == 0) {
            fprintf(outFile, "\r\n");
        }
        if(c != '\0'){
            fprintf(outFile, "0x%02x, ", c);  
        }
    }

    fprintf(outFile, "\r\n};\r\n");
    fprintf(outFile, "struct fsdata_file file__%s_html[] = {{\n", var_name);
    fprintf(outFile, "  file_NULL,\n");
    fprintf(outFile, "  data__%s_html,\n", var_name);
    fprintf(outFile, "  data__%s_html + %d,\n", var_name, in_file_name_size);
    fprintf(outFile, "  sizeof(data__%s_html) - %d,\n", var_name, in_file_name_size);
    fprintf(outFile, "  FS_FILE_FLAGS_HEADER_INCLUDED | FS_FILE_FLAGS_HEADER_PERSISTENT,\n");
    fprintf(outFile, "}};");
    
    fclose(inFile);
    fclose(outFile);
    return 0;
}