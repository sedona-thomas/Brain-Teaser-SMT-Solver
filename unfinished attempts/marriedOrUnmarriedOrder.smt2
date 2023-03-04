; "exists" call displaying "(error "line 14 column 38: invalid sort, symbol or '_' expected")"

; Adapted from Logic Puzzle 3 
; https://parade.com/970343/parade/logic-puzzles/
; Jack is looking at Anne. Anne is looking at George. 
; Jack is married, George is not, and we don’t know if Anne is married. 
; There exists a married person who is looking at an unmarried person.
; What can Anne's marriage status be?

; Variable declarations
(declare-datatypes () ((Person (Jack) (Anne) (George))))
(declare-fun isMarried (Person) Bool)
(declare-fun isLookingAt (Person Person) Bool)

; Constraints
(assert (exists ((x Person) (exists ((y Person) (and (isMarried x Person) (not (isMarried y Person))))))))
(assert (= (isMarried Jack) true))
(assert (= (isMarried George) false))

; Solve
(check-sat)
(get-model)
