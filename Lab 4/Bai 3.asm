.model small
.stack 100h
.data
nhap db 'Nhap vao 1 chu thuong (a-z): $'
chuyen db 13,10, 'Chu hoa tuong ung la: '
KyTu db ?,'$'
.code
Main proc
mov ax,@data
mov ds,ax

;nhac nhap
lea dx,nhap
mov ah,9

int 21h
;nhap
mov ah,1
int 21h
sub al,20h
mov KyTu,al

;in chu hoa
lea dx,chuyen
mov ah,9
int 21h


mov ah,4ch
int 21h

Main endp
end
