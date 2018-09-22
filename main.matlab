#Approximation of solutions to nonlinear functions using Newton's method

#set tolerance levels, a and b
tol = 0.0001;
x = 2;
i = 0;

#define the function here
function y = f(x)
  y = (x.^2 + log(x) - 2);
endfunction

function y = ff(x)
  y = (2*x + 1/x);
endfunction

err = 3*tol;

while err > tol
  i += 1
  z = f(x)/ff(x);
  err = abs(z);
  x = x - z;
  printf("At Iter [%d]: the absolute error is:%e , the approximated value of x is: %f \n",i,err, x)
endwhile

[x]


#Secant method
#set tolerance levels, a and b
tol = 0.0000000001;
x = 2;
X = 5;
M = 4;
I = 10;


#define the function here
function y = f(x)
  y = (x.^2 + log(x) - 2);
endfunction


err = 3*tol;
i = 0;

while err > tol
  i += 1;
  z = f(x)*(x - X)/(f(x) - f(X));
  err = abs(z);
  X = x;
  x = x - z;
  printf("At Iter [%d]: the absolute error is:%e , the approximated value of x is: %f \n",i,err, x)
endwhile

printf("the approximated value of x is: %e \n", x)



#Bisection method
#set tolerance levels, a and b
tol = 0.0001;
a = 1;
b = 3;
#define the function here
function y = f(x)
  y = (x.^2 + log(x) - 2);
endfunction

#define the process of bisection
err = (b - a)/2;

while err > tol
    c = (a + b)/2;
    if ( f(c) == 0 )
       break;
    elseif ( f(a)*f(c) < 0 )
       b = c;
    else
       a = c;
    end
    err = (b - a)/2
printf("At Iter [%d]: the absolute error is:%e , the approximated value of x is: %f \n",i,err, x)
endwhile
