; Logic Puzzle 5
; https://parade.com/970343/parade/logic-puzzles/
; The day before two days after the day before tomorrow is Saturday.
; What day is it today?


; Variable declarations
(declare-fun Sunday1 () Int)
(declare-fun Monday1 () Int)
(declare-fun Tuesday1 () Int)
(declare-fun Wednesday1 () Int)
(declare-fun Thursday1 () Int)
(declare-fun Friday1 () Int)
(declare-fun Saturday1 () Int)
(declare-fun Sunday2 () Int)
(declare-fun Monday2 () Int)
(declare-fun Tuesday2 () Int)
(declare-fun Wednesday2 () Int)
(declare-fun Thursday2 () Int)
(declare-fun Friday2 () Int)
(declare-fun Saturday2 () Int)

(declare-fun today () Int)
(declare-fun tomorrow () Int)
(declare-fun day1 () Int)
(declare-fun day2 () Int)
(declare-fun day3 () Int)

; Constraints
(assert (< Sunday1 Monday1))
(assert (< Monday1 Tuesday1))
(assert (< Tuesday1 Wednesday1))
(assert (< Wednesday1 Thursday1))
(assert (< Thursday1 Friday1))
(assert (< Friday1 Saturday1))
(assert (< Saturday1 Sunday2))
(assert (< Sunday2 Monday2))
(assert (< Monday2 Tuesday2))
(assert (< Tuesday2 Wednesday2))
(assert (< Wednesday2 Thursday2))
(assert (< Thursday2 Friday2))
(assert (< Friday2 Saturday2))

(assert (= day1 Saturday1)) ; the day ... is Saturday
(assert (= day1 (- day2 1))) ; (implied one day) before
(assert (= day2 (+ day3 2))) ; two days after
(assert (= day3 (- tomorrow 1))) ; the day before tomorrow
(assert (= today (- tomorrow 1))) ; today is the day before tomorrow

; Solve
(check-sat)
(get-model) ; check which day has the same value as "today"

