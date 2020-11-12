.model small
.stack  100h
.data
nhap db 'Hay nhap chuoi ky tu (Ket thuc bang Enter): $'
Ketqua db 13,10, 'Chuoi nguoc: $'



.code
mov ax,@data
mov ds,ax

;nhac nhap
lea dx,nhap
mov ah,9
int 21h
 
 
mov cx,0
mov ah,1

call NHAPCHUOI
;nhap chuoi 
NHAPCHUOI proc
pop bx
int 21h
cmp al,13
je XUONGDONG
mov bl,al
push bx
call NHAPCHUOI
ret
NHAPCHUOI endp

XUONGDONG:
mov ah,9
lea dx,Ketqua
int 21h
jmp XUATCHUOI

;xuat chuoi
XUATCHUOI: 
pop bx
cmp sp,100h
jg END
mov ah,2
mov dx,bx
int 21h
loop XUATCHUOI

END:
mov ah,4ch
int 21h

end
         
         