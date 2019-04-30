#### This function integrates a table of values using simpsons 1/3 rule
###### This algorithm utilizes simspons 1/3 rule which is explained [here](https://en.wikipedia.org/wiki/Simpson%27s_rule)

###### NOTES:
---
1.  : If an odd number of intervals are specefied then the trapezoidal rule is applied to the last interval of the data. A warning letting the user know this is the case is also displayed.
2.  : Equal interval spacing is required for the function (x variable)    
3.  : X and Y vectors must be the same length 

###### INPUT: 
---
X : Array of equally spaced x coordinates that corespond with y values 
Y : An array of data to be integrated with respect to the x values 

###### OUTPUT:
---
I : The value of the integral using sympsons 1/3 rule to numerically integrate the data
