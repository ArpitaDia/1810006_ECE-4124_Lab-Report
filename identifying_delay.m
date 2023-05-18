clc;
clear all;

t=0:0.1:10;
x= sin(t);
y= sin(t-2);
x1=square(x);
y1=square(y);
corr=xcorr(x1,y1);

[max_val,max_idx]=max(abs(corr));
time_delay=(max_idx-1)/10;
lag=-length(x1)+1:length(y1)-1;

figure(1);
subplot(2,1,1);
plot(t,x1);
hold on;
plot(t,y1);
xlabel('Time');
ylabel('amplitude');
title('Square signals');
grid on;
subplot(2,1,2);
plot(lag/10,corr);
xlabel('Time');
ylabel('amplitude');
title('correlated signal');
grid on;
fprintf('Time delay between x1,y1 is %.2f sec.\n',time_delay);