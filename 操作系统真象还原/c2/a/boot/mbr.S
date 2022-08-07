SECTION MBR vstart=0x7c00
    mov ax,cs
    mov ds,ax
    mov es,ax
    mov ss,ax
    mov fs,ax
    mov sp,0x7c00

;INT 0x10 功能号：0x06 功能描述：上卷窗口,功能号与int的区别联系是啥？一个int中存在多个功能号
    mov ax, 0x600
    mov bx, 0x700
    mov cx, 0
    mov dx, 0x184f

    int 0x10

    mov ah, 3
    mov bh, 0

    int 0x10

    mov ax, message
    mov bp, ax
    mov cx, 5
    mov ax, 0x1301  ;子功能号13存入ah寄存器，al设置写字符方式al=01,表示显示字符串，光标随着移动
    mov bx, 0x2     ;bl是字符属性，属性黑底绿字（bl = 02h）

    int 0x10

    jmp $

    message db "1 MBR"
    times 510-($-$$) db 0
    db 0x55,0xaa