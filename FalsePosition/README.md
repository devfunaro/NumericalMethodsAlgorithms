#### FalsePosition is a matlab function intended too find the roots of a function within a bracket
###### The FalsePosition method is implemented for this algorithm (This method is explained [here](https://en.wikipedia.org/wiki/False_position_method)) 
---


 This Function finds roots based on the false position method 
   falsePosition(func,xl,xu,es,maxiter)

###### INFO
---

1.   there must be a sign change between func(xl) and func(xu)

2.   xl and xu MUST bracket the root you are searching for, additionaly xl and xu MUST NOT bracket more than one root.

###### Input Explanation
--- 
   func - char vector of the function you want evaluated   
   xl - the lower bound of the search  
   xu - the upper bound of the search  
   es - *optional(defaults to .0.0001%)* stopping crieterion in percent  
   maxiter - *optional(defaults to 200)* maximum iterations   

###### Output Expanation
---
   root - The estimate for the root bracketed by user interval  
   fx - The function that's root is being estimated  
   ea - approximate percent relative error  
   iter - the iteration it took to arrive at the estimate  

#### false_position_test is a matlab script that enable easy testing of the falsePosition algorithm
---

This script allows automates the testing procedure of the algorithm with multiple functions and variable input criteria. This testing script is important for quick development while creating the algorithm. 
