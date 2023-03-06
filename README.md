# Brain-Teaser-SMT-Solver

Two Brain Teasers Solved from [https://parade.com/970343/parade/logic-puzzles/](https://parade.com/970343/parade/logic-puzzles/): 


## 5. Logic Puzzle: The day before two days after the day before tomorrow is Saturday. What day is it today?

Answer: Friday. The “day before tomorrow” is today; “the day before two days after” is really one day after. So if “one day after today is Saturday,” then it must be Friday.

### SMT Encoding Strategy

This problem is modeled using Linear Ineger Arithmetic (LIA). The order of each day over the span of two weeks is encoded as a integer, and the ordering constraints are inequalities. A two week span was chosen to simplify the model rather than framing days of the week using modular arithmatic. The puzzle was then broken into each relative day: 1) "the day ... is Saturday" and is (implied one day) "before", 2) "two days after", and 3) "the day before tomorrow". So, the problem relies on three unknown days. Then, the relationships between these three days were encoded as constraints. For clarity, the relationships for "today" and "tomorrow" were also encoded. This means there will be five variables and 14 constants.

### SMT Encoding

The SMT encoding can be found in the `day_of_the_week.smt2` file.

### SMT Output

An example SMT output can be found in the `day_of_the_week_solution_example.model` file.

### Interpreting the Output

When a model is generated, today can be determined by comparing the interger for today to the day of the week encoded by the same integer.


## 4. Logic Puzzle: A man has 53 socks in his drawer: 21 identical blue, 15 identical black and 17 identical red. The lights are out and he is completely in the dark. How many socks must he take out to make 100 percent certain he has at least one pair of black socks?

Answer: 40 socks. If he takes out 38 socks (adding the two biggest amounts, 21 and 17), although it is very unlikely, it is possible they could all be blue and red. To make 100 percent certain that he also has a pair of black socks he must take out a further two socks.

### Adapted Version: A man has 53 socks in his drawer: 21 identical blue, 15 identical black, and 17 identical red. The lights are out and he is completely in the dark. How many socks can he take out that would make 100 percent certain he has at least one pair of black socks?

Answer: 40 or more socks. If he takes out 38 socks (adding the two biggest amounts, 21 and 17), although it is very unlikely, it is possible they could all be blue and red. To make 100 percent certain that he also has a pair of black socks he must take out a further two socks.

### SMT Encoding Strategy

This problem is modeled using Linear Ineger Arithmetic (LIA). The number of each sock color is encoded as a integer, and the numbers of chosen socks are encoded as inequalities. The total number of socks chosen is also encoded as an equality constraint. So, we will need four variables.

### SMT Encoding

The SMT encoding can be found in the `number_of_socks.smt2` file.

### SMT Output

An example SMT output can be found in the `number_of_socks_solution_example.model` file.

### Interpreting the Output

when a model is generated, a solution can be determined by simply identifying the socksRemoved variable.
