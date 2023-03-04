; Adapted from Logic Puzzle 4 
; https://parade.com/970343/parade/logic-puzzles/
; A man has 53 socks in his drawer: 21 identical blue, 15 identical black, and 17 identical red. 
; The lights are out and he is completely in the dark. 
; How many socks can he take out that would make 100 percent certain he has at least one pair of black socks?

; Variable declarations
; Three colors of socks
(declare-fun blue () Int)
(declare-fun black () Int)
(declare-fun red () Int)
(declare-fun socksRemoved () Int)

; Constraints
(assert (>= black 2))                            ; at least 2 black socks
(assert (<= blue 21))                            ; 21 blue socks 
(assert (<= black 15))                           ; 15 black socks
(assert (<= red 17))                             ; 17 red socks
(assert (= socksRemoved (+ blue (+ black red)))) ; total socks removed

; Solve
(check-sat)
(get-model)
