![thumbnail](./readme_asset/thumbnail2.png)
# 22 8086 Assembly Problems & Solutions
## Link to repo: [https://github.com/emondsarker/8086-Assembly](https://github.com/emondsarker/8086-Assembly)
By: Emon Sarker

This repository contains all the **x86 assembly** code problems I completed in my microprocessor course (CSE331).
The code has comments that explain the thought process behind each solution.

However if you have any questions, email me: emon331@gmail.com

## List of problems

Table of Content
1. [Invert an array without using a loop](#1-invert-an-array-without-using-a-loop)
2. [Demonstrating of calling a procedure](#2-demonstrating-of-calling-a-procedure)
3. [Demostrating JMP function](#3-demostrating-jmp-function)
4. [Counting number of char in a string](#4-counting-number-of-char-in-a-string)
5. [Calculating the factorial of a number](#5-calculating-the-factorial-of-a-number)
6. [Printing out a pre-defined string](#6-printing-out-a-pre-defined-string)
7. [Reversing a string](#7-reversing-a-string)
8. [Finding sum of an array of numbers](#8-finding-sum-of-an-array-of-numbers)
9. [Counting number of a specific char in string](#9-counting-number-of-a-specific-char-in-string)
10. [String concatanation](#10-string-concatanation)
11. [Finding length of a string](#11-finding-length-of-a-string)
12. [Reverse a string](#12-reverse-a-string)
13. [Shift right using SHR dynamically](#13-shift-right-using-shr-dynamically)
14. [Shift left using SHL dynamically](#14-shift-left-using-shl-dynamically)
15. [Check if input strings are equal](#15-check-if-input-strings-are-equal)
16. [String reversal using Stack](#16-string-reversal-using-stack)
17. [Find index of char in a string](#17-find-index-of-char-in-a-string)
18. [Take 16bit input and convert to decimal](#18-take-16bit-input-and-convert-to-decimal)
19. [Print largest value in an array input](#19-print-largest-value-in-an-array-input)
20. [Add two arrays together by index](#20-add-two-arrays-together-by-index)
21. [Check if input is a prime number](#21-check-if-input-is-a-prime-number)
22. [Lexicography question](#22-lexicography-question)


### 1. Invert an array without using loop
Declare an array variable with 5 random values. Declare a second array in which you store the values of the first array but inverted

Link to [solution](https://github.com/emondsarker/8086-Assembly/blob/main/01%20invert%20an%20array%20without%20loop.asm)

``` 
;Invert an array then
;store it in another array
;WITHOUT using loops

ORG 100H
    
    ;use register al to swap
    
    mov al, array[4]
    mov array2[0], al
    
    mov al, array[3]
    mov array2[1], al
    
    mov al, array[2]
    mov array2[2], al
    
    mov al, array[1]
    mov array2[3], al
    
    mov al, array[0]
    mov array2[4], al

RET

;variables

array1 DB 1H, 2H, 3H, 4H, 5H
array2 DB 5 DUP(?)
```
![Screenshot](./readme_asset/Problem_1.png)


### 2. Demonstrating of calling a procedure

Link to [solution](https://github.com/emondsarker/8086-Assembly/blob/main/02%20procedure%20call%20demo.asm)

![Screenshot](./readme_asset/Problem_2.png)

### 3. Demostrating JMP function

Link to [solution](https://github.com/emondsarker/8086-Assembly/blob/main/03%20jump%20function%20demo.asm)

![Screenshot](./readme_asset/Problem_3.png)

### 4. Counting number of char in a string

Link to [solution](https://github.com/emondsarker/8086-Assembly/blob/main/04%20count%20number%20of%20char%20in%20string.asm)

![Screenshot](./readme_asset/Problem_4.png)

### 5. Calculating the factorial of a number

Link to [solution](https://github.com/emondsarker/8086-Assembly/blob/main/05%20calculating%20factorial.asm)

![Screenshot](./readme_asset/Problem_5.png)

### 6. Printing out a pre-defined string

Link to [solution](https://github.com/emondsarker/8086-Assembly/blob/main/06%20print%20out%20a%20string.asm)

![Screenshot](./readme_asset/Problem_6.png)

### 7. Reversing a string

Link to [solution](https://github.com/emondsarker/8086-Assembly/blob/main/07%20string%20reversal.asm)

![Screenshot](./readme_asset/Problem_7.png)

### 8. Finding sum of an array of numbers

Link to [solution](https://github.com/emondsarker/8086-Assembly/blob/main/08%20sum%20an%20array%20of%20numbers.asm)

![Screenshot](./readme_asset/Problem_8.png)

### 9. Counting number of a specific char in string

Link to [solution](https://github.com/emondsarker/8086-Assembly/blob/main/09%20counting%20specific%20chars%20in%20string%20with%20JNZ.asm)

![Screenshot](./readme_asset/Problem_9.png)

### 10. String concatanation

Link to [solution](https://github.com/emondsarker/8086-Assembly/blob/main/10%20string%20concatenation.asm)

![Screenshot](./readme_asset/Problem_10.png)

### 11. Finding length of a string

Link to [solution](https://github.com/emondsarker/8086-Assembly/blob/main/11%20length%20of%20string.asm)

![Screenshot](./readme_asset/Problem_11.png)

### 12. Reverse a string

Link to [solution](https://github.com/emondsarker/8086-Assembly/blob/main/12%20reverse%20a%20string.asm)

![Screenshot](./readme_asset/Problem_12.png)

### 13. Shift right using SHR dynamically

Link to [solution](https://github.com/emondsarker/8086-Assembly/blob/main/13%20shift%20right%20using%20SHR%20dynamically.asm)

![Screenshot](./readme_asset/Problem_13.png)

### 14. Shift left using SHL dynamically

Link to [solution](https://github.com/emondsarker/8086-Assembly/blob/main/14%20shift%20left%20using%20SHL%20dynamically.asm)

![Screenshot](./readme_asset/Problem_14.png)

### 15. Check if input strings are equal

Link to [solution](https://github.com/emondsarker/8086-Assembly/blob/main/15%20check%20if%20input%20strings%20are%20equal.asm)

![Screenshot](./readme_asset/Problem_15_1.png)

### 16. String reversal using Stack

Link to [solution](https://github.com/emondsarker/8086-Assembly/blob/main/16%20reverse%20a%20string%20with%20stack.asm)

![Screenshot](./readme_asset/Problem_16.png)

### 17. Find index of char in a string

Link to [solution](https://github.com/emondsarker/8086-Assembly/blob/main/17%20find%20index%20of%20chars%20in%20a%20string%20input.asm)

![Screenshot](./readme_asset/Problem_17.png)

### 18. Take 16bit input and convert to decimal

Link to [solution](https://github.com/emondsarker/8086-Assembly/blob/main/18%20taking%2016bit%20input%20and%20converting%20it%20to%20decimal.asm)

![Screenshot](./readme_asset/Problem_18.png)

### 19. Print largest value in an array input

Link to [solution](https://github.com/emondsarker/8086-Assembly/blob/main/19%20print%20largest%20value%20from%20array%20of%20inputs.asm)

![Screenshot](./readme_asset/Problem_19.png)

### 20. Add two arrays together by index

Link to [solution](https://github.com/emondsarker/8086-Assembly/blob/main/20%20add%20two%20arrays%20together%20by%20index.asm)

![Screenshot](./readme_asset/Problem_20.png)

### 21. Check if input is a prime number

Link to [solution](https://github.com/emondsarker/8086-Assembly/blob/main/21%20check%20if%20input%20is%20a%20prime%20number.asm)

![Screenshot](./readme_asset/Problem_21_1.png)

![Screenshot](./readme_asset/Problem_21_2.png)

### 22. Lexicography question

Link to [solution](https://github.com/emondsarker/8086-Assembly/blob/main/22%20lexicography%20question.asm)

![Screenshot](./readme_asset/Problem_22_1.png)

![Screenshot](./readme_asset/Problem_22_2.png)


