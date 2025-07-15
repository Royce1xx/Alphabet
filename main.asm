mov ah, 0x0e
mov al, 'A'

upper:
    int 0x10
    inc al
    cmp al, 'Z'+1
    jl upper

mov al, 0x0D
int 0x10
mov al, 0x0A
int 0x10

mov al, 'a'
lower:
    int 0x10
    inc al
    cmp al, 'z'+1
    jl lower

jmp $

times 510-($-$$) db 0
db 0x55, 0xaa