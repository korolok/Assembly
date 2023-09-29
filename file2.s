result: db 0
arr: db [0,10]

def fill {
    mov cl, 1
    mov di, offset arr
    repeat:
    mov byte [di], cl
    inc di
    inc cl
    cmp cl, 10
    jnz repeat
ret
}

def summ {
        mov si, offset arr
        mov cl, 0
        mov ax, 0
    read:
        add al, byte [si]
        inc si
        cmp cl, 10
        jnz read
    ret
}

start:
    call fill
    call summ