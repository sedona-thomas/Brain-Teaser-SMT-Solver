# Brain-Teaser-SMT-Solver

Two Brain Teasers Solved from [https://parade.com/970343/parade/logic-puzzles/](https://parade.com/970343/parade/logic-puzzles/): 


## 5. Logic Puzzle: The day before two days after the day before tomorrow is Saturday. What day is it today?

Answer: Friday. The “day before tomorrow” is today; “the day before two days after” is really one day after. So if “one day after today is Saturday,” then it must be Friday.

### Steps taken:
* encoded sequential days of two weeks
* broke down the three days referred to in the puzzle
    - "the day ... is Saturday" and is (implied one day) "before"
    - "two days after"
    - "the day before tomorrow"
* compared the value of today to the different weekdays

***reordered example solution in `days_of_the_week_solution_example.model`

## 4. Logic Puzzle: A man has 53 socks in his drawer: 21 identical blue, 15 identical black and 17 identical red. The lights are out and he is completely in the dark. How many socks must he take out to make 100 percent certain he has at least one pair of black socks?

Answer: 40 socks. If he takes out 38 socks (adding the two biggest amounts, 21 and 17), although it is very unlikely, it is possible they could all be blue and red. To make 100 percent certain that he also has a pair of black socks he must take out a further two socks.

### Adapted Version: A man has 53 socks in his drawer: 21 identical blue, 15 identical black, and 17 identical red. The lights are out and he is completely in the dark. How many socks can he take out that would make 100 percent certain he has at least one pair of black socks?

Answer: 40 or more socks. If he takes out 38 socks (adding the two biggest amounts, 21 and 17), although it is very unlikely, it is possible they could all be blue and red. To make 100 percent certain that he also has a pair of black socks he must take out a further two socks.

### Steps taken:
* encoded numbers of socks
* constrained the minimum number of black socks allowed
* calculated the total number of socks
