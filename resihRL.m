function[rx,ry] = resihRL(xrefs,yrefs,xrefe,yrefe,xshift,yshift)

 rx1=[0.0017 0.0826 0.1041 0.1529 0.2025 0.2479 0.2967 0.3438 0.3702 0.5372 0.5471 0.5579 0.5736 0.5934 0.6149 0.6347 0.6537 0.6711 0.6851 0.6934 0.7041 0.7099 0.714 0.7116 0.705 0.6926 0.6785 0.6653 0.6579 0.6545 0.6537 0.6628 0.6702 0.6785 0.6975 0.7116 0.7281 0.7413 0.7512 0.7678 0.7843 0.7942 0.8033 0.8116 0.8174 0.8215 0.824 0.8264 0.8223 0.819 0.8116 0.7967 0.7802 0.7727 0.7694 0.7694 0.7719 0.7777 0.7851 0.7926 0.8107 0.8215 0.8339 0.8479 0.8636 0.8769 0.8917 0.9033 0.914 0.9231 0.9314 0.9364 0.938 0.9388 1];
 ry1=[-0.0345 -0.0345 0.977 -1.0115 1 -1.0115 1 -1.046 -0.0345 -0.0345 0.2989 0.5977 0.8161 1.0115 1.1379 1.1609 1.1034 0.9885 0.8506 0.6782 0.4483 0.1954 -0.046 -0.3218 -0.6207 -0.7931 -0.8621 -0.7126 -0.4598 -0.1954 0.092 0.3333 0.5287 0.6897 0.931 1.0575 1.1149 1.1264 1.1264 1.092 0.977 0.8621 0.7471 0.6092 0.4713 0.3333 0.1264 -0.1034 -0.3333 -0.5517 -0.7586 -0.8506 -0.7241 -0.5402 -0.2989 -0.0805 0.1724 0.3448 0.5287 0.6552 0.8736 0.9885 1.069 1.1034 1.1034 1.1034 1.0115 0.9195 0.7931 0.6667 0.4598 0.2529 0.0805 -0.0345 -0.0345 ];

%rx1=[0 0.31	0.36 0.4 0.44 0.48 0.53	0.57 0.61 0.65 0.7 1];
%ry1=[0 0 0.85 -0.89	0.98 -0.91 0.96 -0.89 1 -0.82 0	0.02];

len=length(rx1);
a1=min(rx1);
b1=max(rx1);
c1=xrefs;
d1=xrefe;
b2=min(ry1);
a2=max(ry1);
c2=yrefs;
d2=yrefe;
for R=1:len
    a=((rx1(R)-a1)*(d1-c1)/(b1-a1))+c1;
    rx(R)=a;
    b=((ry1(R)-a2)*(d2-c2)/(b2-a2))+c2;
    ry(R)=b;
end



%rx =[((0-a1)*(d1-c1)/(b1-a1))+c1, ((0.31-a1)*(d1-c1)/(b1-a1))+c1, ((0.36-a1)*(d1-c1)/(b1-a1))+c1, ((0.4-a1)*(d1-c1)/(b1-a1))+c1, ((0.44-a1)*(d1-c1)/(b1-a1))+c1, ((0.48-a1)*(d1-c1)/(b1-a1))+c1, ((0.53-a1)*(d1-c1)/(b1-a1))+c1, ((0.57-a1)*(d1-c1)/(b1-a1))+c1, ((0.61-a1)*(d1-c1)/(b1-a1))+c1, ((0.65-a1)*(d1-c1)/(b1-a1))+c1, ((0.7-a1)*(d1-c1)/(b1-a1))+c1, ((1-a1)*(d1-c1)/(b1-a1))+c1];
%ry =[((0-a2)*(d2-c2)/(b2-a2))+c2, ((0-a2)*(d2-c2)/(b2-a2))+c2, ((0.85-a2)*(d2-c2)/(b2-a2))+c2, ((-0.89-a2)*(d2-c2)/(b2-a2))+c2, ((0.98-a2)*(d2-c2)/(b2-a2))+c2, ((-0.91-a2)*(d2-c2)/(b2-a2))+c2, ((0.96-a2)*(d2-c2)/(b2-a2))+c2, ((-0.89-a2)*(d2-c2)/(b2-a2))+c2, ((1-a2)*(d2-c2)/(b2-a2))+c2, ((-0.82-a2)*(d2-c2)/(b2-a2))+c2, ((0-a2)*(d2-c2)/(b2-a2))+c2, ((0.02-a2)*(d2-c2)/(b2-a2))+c2];
rx=xshift+rx;
ry=yshift+ry;