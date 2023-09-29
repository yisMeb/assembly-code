          ;THIS PROGRAM PRINTS ALL EVEN NUMBERS STARTING FROM 0-50
.MODEL SMALL
.STACK 100H
.DATA
        NUM DW ?                                   
        NEWLINE db 13,10,'$'
        numstr db '$$$$$'  ;STRING FOR 4 DIGITS.

.CODE
     MAIN PROC
          MOV AX,@DATA
          MOV DS,AX
          MOV NUM, 2         ;FIRST NUMBER.
     START:
         CMP NUM, 50       
         JBE PRINT          ;DISPLAY NUM.           
         JMP END

     PRINT:
         ;CONVERT NUMBER TO STRING.
         MOV SI, offset numstr
         MOV  AX, NUM
         CALL HEXTODEC
     ;DISPLAY
         MOV  AH, 09H
         MOV  DX, offset numstr
         INT 21H     

     ;DISPLAY NEWLINE.
         MOV  AH, 09H
         MOV  DX, offset NEWLINE
         INT 21H    
         INC NUM
         INC NUM		 
         JMP START
END:
      MOV Ax,4C00H
      INT 21H
      MAIN ENDP

HEXTODEC PROC
    ;SI = POINTING WHERE TO STORE STRING 
  CALL dollars ;FILL STRING WITH $.
  MOV  BX, 10  ; DIVIDE BY 10.
  MOV  CX, 0   
LOOP1:       
  MOV  DX, 0   ;NECESSARY TO DIVIDE BY BX.
  DIV  BX      ;AX=AX / 10
  PUSH DX       
  INC  CX       
  CMP  AX, 0  
  JNE  LOOP1    
LOOP2:  
  POP  DX        
  ADD  DL, 48  ;CONVERT DIGIT TO CHARACTER.
  MOV  [ SI ], DL
  INC  SI
  LOOP LOOP2  
  RET
HEXTODEC ENDP       

dollars PROC      
    ;FILLS VARIABLE WITH '$'          
  MOV  CX, 5
  MOV  DI, offset numstr
dollars_loop:      
  MOV  BL, '$'
  MOV  [ DI ], BL
  INC  DI
  LOOP dollars_loop
  RET
endp  
END MAIN