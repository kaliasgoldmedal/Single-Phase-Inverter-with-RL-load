function[rx,ry] = resi(xref,yref)

rx1=[0.5	0.5	1	0	1	0	1	0	1	0	0.5	0.5];
ry1=[5	2.777777778	2.638888889	2.5	2.361111111	2.222222222	2.083333333	1.944444444	1.805555556	1.666666667	1.666666667	0];
%0.483329961
rx = xref+rx1;
ry = yref+ry1;