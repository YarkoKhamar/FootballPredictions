p1  = [52;3;1;3;2];                                                 
p2  = [58;4;1;2;2];
p3  = [46;2;1;2;2];
p4  = [55;2;1;2;2];
p5  = [57;1;1;0;1];
p6  = [62;3;1;1;2];
p7  = [54;4;1;2;4];
p8  = [64;4;1;1;4];
p9  = [66;4;0;0;2];
p10  = [73;2;0;0;1];
p11 = [58;3;1;2;2];
p12 = [61;4;1;2;2];
p13 = [58;4;1;0;2];
p14 = [49;1;1;2;1];
p15 = [51;3;1;15;2];
p16 = [61;2;1;2;1];
p17 = [74;1;1;3;3];
p18 = [63;2;1;2;2];
p19 = [58;2;1;0;2];
p20 = [70;2;1;2;2];
p21 = [58;4;1;1;2];
p22 = [56;2;1;3;2];
p23 = [75;2;0;1;3];
p24 = [49;4;1;0;2];
p25 = [68;3;1;3;1];

pt1 = [44;4;1;2;2];
pt2 = [52;1;1;4;1];
pt3 = [56;2;1;2;2];
pt4 = [59;2;1;0;2];
pt5 = [63;2;1;2;1];

P = {p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 ...
    p20 p21 p22 p23 p24 p25};
T = {0 0 1 0 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 1 1 0 1 1 1};

Pt = {pt1 pt2 pt3 pt4 pt5};
Tt = {1 1 0 0 1};

net = newgrnn(cell2mat(P),cell2mat(T),0.7);

% net.trainParam.epochs = 100;
% net = train(net, P, T);
net.IW
disp(sim(net,P));
disp('Results:');
disp(sim(net,Pt));