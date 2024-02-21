; print 쓰고 싶을 때는 이거 비활성화 하기
; #lang sicp

(#%require (only racket/base
                 print
                 print-as-expression
                 print-pair-curly-braces
                 print-mpair-curly-braces))


; 로그 찍는 게 개같아서 대충 짰다.
(define (out ...) (display ...) (newline))

; 1.1

; 좋은 프로그래밍 언어는 3가지.
; 기본 식 (Primitive expression) - number tupe, char type, +-*/...
5
; 엮어내는 수단 (Means of combination) - 엮어내는 수단은 기본 식을 조합하여 더 복잡한 식을 만드는 수단이다.)
(+ 5 5)
; 추상화 수단 (Means of abstraction) - 복잡한 식을 이름을 붙여서 하나로 다룰 있는 방법.( function, class- 결국 Primitive의 조합이다. 다 까보면 number랑 string 이랑 byte배열들뿐. 다만 거기에 이름을 붙일 뿐이다. )
(define (square x)
    (* x x))

(square 5)

; Lisp은 앞가지 쓰기인데. +도 함수라고 생각하면 좀 더 직관적이지 않나 싶다. ()로 묶으면 그게 return이고. ㅇ
; 맙소사. 완전 단순하잖아. 그러니까... 모든 건 함수다.
(+ 13 19)


; 추상화 수단을 좀 더 보자. define이 있다.
(define a 30)
(define b 20)

;(define co (open-output-string))

(out (+ a b))


; 엮은 식은...
; 1. subexpression을 모두 구한다.
; 2. 맨 왼쪽이 프로시저. 나머지는 인자.
