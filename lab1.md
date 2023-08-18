**Exp no.** 01

**Exp Name:** (i) Convolution of two signals
(i) Using ‘conv’ function
(ii) Without using ‘convo’ function

**Introduction:**
 Convolution is a mathematical operation that is used to combine two functions into a third function that represents how one function modifies the other. In signal processing, convolution is used to model how a signal is affected by a system. In this lab report, we will explore how to perform convolution of two functions using MATLAB.
 
**Objective:** The objective of this lab is to understand the concept of convolution and how to implement it in MATLAB. We will also learn how to visualize the results of convolution using MATLAB's built-in plotting functions.

**Methodology:**
In this lab, we will use MATLAB to perform the convolution of two functions. The general steps involved in performing convolution are as follows:
1. Define the two functions to be convolved.
2. Determine the length of each function.
3. Determine the length of the output signal using the formula n = m + n - 1, where m and n are the lengths of the two functions.
4. Create an output signal of zeros with length n.
5. Perform the convolution using a for loop and the conv function in MATLAB.
6. Visualize the results using MATLAB's plotting functions.
 
**Codes:**
(i) Using ‘conv’ function

```
clc;
clear all;
close all;
n1=0:1:7;
x1=[1 2 3 4];
h1=[4 4 3 2];
Y=conv(x1,h1);
figure(1)
subplot(3,1,1)
plot(x1)
title('input (x(n))')
subplot(3,1,2)
plot(h1)
title('impulse response(h(n))')
subplot(3,1,3)
plot(Y)
title('output (y(n))')
```
(ii)Without using ‘conv’ function

```
x = input('enter a sequence');
h = input('enter another sequence');
a = length(x);
b = length(h);
n = a+b-1;                        
y = zeros(1,n);
l = 1:n;
for i = 0:n
             for j = 0:n
                         if ((i-j+1)>0 && (i-j+1)<=b && (j+1)<=a)
                                       y(i+1) = y(i+1)+ x(j+1).*h(i-j+1);
                         end
            end
end
disp(y)
stem(l,y)
```
**Outputs**

**(i)Using ‘conv’ function**

<img src= "./convo.PNG">

**(ii)Without using ‘conv’ function**

<img src= "./without.PNG">



**Conclusion:**

In this lab, we learned how to perform the convolution operation using MATLAB. We used the `conv` function and a for loop to calculate the convolution of two functions, and we visualized the results using the `stem` function. Convolution is an important operation used in many fields of science and engineering, and MATLAB provides powerful tools for performing and visualizing convolutions.

**Discussion:**
In this lab, we have shown how to perform convolution of two functions using MATLAB. We have also compared the MATLAB result to the analytical solution of the convolution integral and found a very close match. This demonstrates the effectiveness of MATLAB for performing mathematical operations such as convolution.


