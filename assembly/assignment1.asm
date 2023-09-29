  ;THIS PROGRAM PRINTS STRING MASSAGE TO THE SCREEN

.model small
.stack 100H
.data 

str1 db "Student Information $"
str2 db "Name:           $"   
str5 db "ID:$"
str3 db "Department:         $"
str4 db "Gender:             $"


.code 
MAIN PROC
    
   mov ax,@data
   mov ds,ax
   
     ;print tab
     mov dx,9
     mov ah,2
     int 21h 
     
     ;one backspace to align at center
     mov dx,8
     mov ah,2
     int 21h
        ;print msg1
   mov dx,offset str1 
   mov ah,09H 
   int 21h 
        ;prints a newline
   mov dx,10
   mov ah,2 ;PRINTS A CHARACTER
   int 21h  
       
   mov dx,13
   mov ah,2 
   int 21h 
       
   mov dx,10
   mov ah,2 
   int 21h  
          
   mov dx,13
   mov ah,2 
   int 21h
         ;PRINT STR2
   mov dx,offset str2
   mov ah,9
   int 21h   
   
   ;PRINT TAB
   mov dx,09
   mov ah,2
   int 21h
   
   ;print str5
   mov dx,offset str5
   mov ah,09h
   int 21h
   
          ;prints a newline
   mov dx,10
   mov ah,2 
   int 21h  
          
   mov dx,13
   mov ah,2 
   int 21h
           
   mov dx,10
   mov ah,2 
   int 21h  

   mov dx,13
   mov ah,2 
   int 21h
         ;PRINT STR3
   mov dx,offset str3
   mov ah,9
   int 21h 
          ;PRINT A NEW LINE
   mov dx,10
   mov ah,2 
   int 21h  

   mov dx,13
   mov ah,2 
   int 21h

   mov dx,10
   mov ah,2 
   int 21h  

   mov dx,13
   mov ah,2 
   int 21h 
         ;PRINT STR4
   mov dx,offset str4
   mov ah,9
   int 21h 

   mov dx,10
   mov ah,2 
   int 21h  
   
   mov dx,13
   mov ah,2 
   int 21h
   
   mov dx,10
   mov ah,2 
   int 21h  

   mov dx,13
   mov ah,2 
   int 21h
       ;END OF PROC
  mov ax,4c00h
  int 21h 
 MAIN endp
END MAIN