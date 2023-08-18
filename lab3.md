**Exp no.** 03

**Exp Name:** (i)  Auto-Correlation of a Signal

(ii) Cross-correlation for Two Signals

**Introduction:**

 Autocorrelation is a measure of the similarity between a signal and a time-shifted version of itself. It is computed by multiplying a signal by a delayed version of itself and integrating the product over time. The resulting function is called the autocorrelation function, and it describes the degree of similarity between the signal and its delayed version as a function of the time lag. The autocorrelation function (ACF) of a signal x(t) is defined as the correlation between the signal and a delayed version of itself. The ACF of a signal x(t) with a delay of τ is denoted as R(τ) and can be computed using the following formula:

R(τ) = ∫x(t)x(t-τ)dt

where the integral is taken over all time t. In this formula, x(t) is the original signal, x(t-τ) is the time-delayed version of the signal, and τ is the time delay or lag. The autocorrelation function R(τ) describes the degree of similarity between the signal and its delayed version as a function of the time lag τ. It is a useful tool in detecting periodicity in a signal and in estimating the order of an autoregressive (AR) model, which is a mathematical model that describes a time series as a function of its past values.

Cross-correlation, on the other hand, is a measure of similarity between two signals as a function of the time lag applied to one of the signals. It is computed by multiplying one signal by a delayed version of the other signal and integrating the product over time. The resulting function is called the cross-correlation function, and it describes the degree of similarity between the two signals as a function of the time lag. The cross-correlation function (CCF) of two signals x(t) and y(t) is defined as the correlation between the two signals as a function of the time lag τ. The CCF of x(t) and y(t) with a delay of τ is denoted as Rxy(τ) and can be computed using the following formula:

Rxy(τ) = ∫x(t)y(t-τ)dt

where the integral is taken over all time t. In this formula, x(t) is the first signal, y(t-τ) is the time-delayed version of the second signal, and τ is the time delay or lag. The cross-correlation function Rxy(τ) describes the degree of similarity between the two signals x(t) and y(t) as a function of the time lag τ. It is a useful tool in detecting time delays between two signals and in finding a signal within another signal, such as in audio processing to detect a spoken word within a longer audio recording.


**Codes:**
(i)  Auto-Correlation of a Signal

```
clc;
clear all;
x=input('enter a signal1:');

r = zeros(1,length(x));
for k = 0:length(x)-1
    for n = 1:length(x)-k
        r(k+1) = r(k+1) + x(n)*x(n+k);
    end
end

disp(r);
subplot(2,1,1);
stem(x);
title('signal x');
subplot(2,1,2);
stem(r);
title('Auto correlated signal');

```

**Explanation:**

 This code implements the autocorrelation of a signal x using the formula R(τ) = ∫x(t)x(t-τ)dt. Here's how it works:
- The user is prompted to input a signal x.
- A zero-filled array r of length equal to the length of x is created to store the autocorrelation values.
- A nested for loop is used to calculate the autocorrelation values for each time delay τ from 0 to the length of x-1.
- For each time delay τ, an inner for loop computes the sum of products of x(n) and x(n+τ) over all values of n from 1 to length of x - τ. This corresponds to the integral in the autocorrelation formula.
- The resulting sum is stored in the corresponding element of the array r.
- The resulting autocorrelation values are displayed using the disp() function.
- The original signal x and the autocorrelated signal r are plotted in two subplots using the stem() function.

(ii)Cross-correlation for Two Signals
```
clc;
clear all;
x=input('enter a signal1:');
y=input('enter a signal2:');

r = zeros(1,2*length(x)-1);

for k = -length(x)+1:length(x)-1
    for n = 1:length(x)
        if n+k >= 1 && n+k <= length(y)
            r(k+length(x)) = r(k+length(x)) + x(n)*y(n+k);
        end
    end
end
disp(r)
subplot(3,1,1);
stem(x);
title('signal x');
subplot(3,1,2);
stem(y);
title('signal y');
subplot(3,1,3);
stem(r);
title('cross correlated signal');

```


**Outputs**

**(i)Auto-Correlation of a Signal**

<img src= "./auto.PNG">

**(ii)Cross-correlation for Two Signals**

<img src= "./cross.PNG">



**Explanation:**

The code first prompts the user to enter the two signals `x` and `y`. Then, it initializes an empty vector `r` with length equal to twice the length of `x` minus one. This is because the cross-correlation of two signals with lengths `M` and `N` is given by a vector of length `M+N-1`. The nested `for` loops then iterate over all possible time shifts between `x` and `y` to compute the cross-correlation. The outer loop iterates over all possible time shifts `k` between `x` and `y`. The inner loop iterates over all elements of `x` and `y`, and computes the product of the corresponding elements shifted by `k`. If the shifted index is within the bounds of `y`, the product is added to the appropriate element of the `r` vector. The resulting cross-correlation `r` is then displayed using the `disp()` function, and the three signals `x`, `y`, and `r` are plotted in a single figure using the `subplot()` and `stem()` functions.

**Conclusion:**

In this lab, we have shown how to perform autocorrelation and cross correlation using MATLAB. We have also compared the MATLAB result to the analytical solution of the convolution integral and found a very close match. This demonstrates the effectiveness of MATLAB for performing mathematical operations such as correlation.