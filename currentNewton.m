function [I] = currentNewton(Il,Iinitial,Is,V,Rs,y,T,Rsh)
% This function performs Newton method 21 times to Calculate the current I
global q K n
V = V/n;
Iprev = Iinitial;
    for i= 0:1:20
        exppow = (q*(V+(Iprev*Rs)))/(y*K*T);
        f = Il - Iprev - Is *(exp(exppow) - 1) - ((V+(Iprev*Rs))/Rsh);
        df = -1 - Is*((q*Rs)/(y*K*T))*(exp(exppow)) - (Rs/Rsh);
        I = Iprev - (f/df);
        Iprev = I;
    end

end
