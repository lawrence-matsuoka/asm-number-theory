.intel_syntax noprefix
.section .data
fmt:
    .asciz "GCD of %d and %d is %d\n"

.section .text
.global main

.extern printf
.extern atoi

main:
    push ebp
    mov ebp, esp

    mov eax, [ebp + 8]        
    mov eax, [ebp + 12]      
    mov eax, [eax + 4]      
    push eax
    call atoi
    add esp, 4
    mov esi, eax           

    mov eax, [ebp + 12]
    mov eax, [eax + 8] 
    push eax
    call atoi
    add esp, 4
    mov edi, eax      

    mov ecx, esi     
    mov edx, edi    

euclid_loop:
    cmp edi, 0
    je done
    mov eax, esi
    xor edx, edx
    div edi        
    mov esi, edi
    mov edi, edx
    jmp euclid_loop

done:
    push eax      
    push edx     
    push ecx    
    push offset fmt
    call printf
    add esp, 16

    mov eax, 0
    leave
    ret

