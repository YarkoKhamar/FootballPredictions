conn = database('PremierLeague1016','','');

sqlGetAvg = ['SELECT ID,AVG(P),AVG(W),AVG(D),AVG(L),AVG(GF),AVG(GA),'...
    ,'AVG(GD),AVG(Pts),AVG(PPG),AVG(Wh),AVG(Dh),AVG(Lh),'...
    ,'AVG(GFh),AVG(GAh),AVG(Wa),AVG(Da),AVG(La),AVG(GFa),'...
    ,'AVG(GAa),AVG(Position) AS total FROM (select ID,P,W,D,L,'...
    ,'GF,GA,GD,Pts,PPG,Wh,Dh,Lh,GFh,GAh,Wa,Da,La,GFa,GAa,'...
    ,'Position from PL201011 union all select ID,P,W,D,L,GF,'...
    ,'GA,GD,Pts,PPG,Wh,Dh,Lh,GFh,GAh,Wa,Da,La,GFa,GAa,Position '...
    ,'from PL201112 union all select ID,P,W,D,L,GF,GA,GD,Pts,'...
    ,'PPG,Wh,Dh,Lh,GFh,GAh,Wa,Da,La,GFa,GAa,Position from '...
    ,'PL201213 union all select ID,P,W,D,L,GF,GA,GD,Pts,PPG,'...
    ,'Wh,Dh,Lh,GFh,GAh,Wa,Da,La,GFa,GAa,Position from PL201314 '...
    ,'union all select ID,P,W,D,L,GF,GA,GD,Pts,PPG,Wh,Dh,Lh,'...
    ,'GFh,GAh,Wa,Da,La,GFa,GAa,Position from PL201415 union all '...
    ,'select ID,P,W,D,L,GF,GA,GD,Pts,PPG,Wh,Dh,Lh,GFh,GAh,Wa,'...
    ,'Da,La,GFa,GAa,Position from PL201516)  AS total GROUP BY ID;'];

pt1 = [38;21;7;10;63;58;5;70;1.842105263;10;3;6;39;29;11;4;4;24;29];
pt2 = [38;4;14;10;45;58;-13;56;1.473684211;7;7;5;30;20;7;7;5;15;38];
pt3 = [38;25;3;10;70;55;15;78;2.052631579;18;1;0;50;30;7;2;10;20;25];
pt4 = [38;2;10;16;55;55;0;46;1.210526316;6;6;7;40;20;6;4;9;15;35];
pt5 = [38;23;12;3;78;45;33;81;2.131578947;15;3;1;57;21;8;9;2;21;24];

C = cellstr(sqlGetAvg);
query = strjoin(C);

curs = exec(conn,query);
setdbprefs('DataReturnFormat','cellarray');
curs = fetch(curs);

p1  = cell2mat(curs.Data(1,2:20)');  
p2  = cell2mat(curs.Data(2,2:20)');
p3  = cell2mat(curs.Data(3,2:20)');
p4  = cell2mat(curs.Data(4,2:20)');
p5  = cell2mat(curs.Data(5,2:20)');
p6  = cell2mat(curs.Data(6,2:20)');
p7  = cell2mat(curs.Data(7,2:20)');
p8  = cell2mat(curs.Data(8,2:20)');
p9  = cell2mat(curs.Data(9,2:20)');
p10 = cell2mat(curs.Data(10,2:20)');
p11 = cell2mat(curs.Data(11,2:20)');
p12 = cell2mat(curs.Data(12,2:20)');
p13 = cell2mat(curs.Data(13,2:20)');
p14 = cell2mat(curs.Data(14,2:20)');
p15 = cell2mat(curs.Data(15,2:20)');
p16 = cell2mat(curs.Data(16,2:20)');
p17 = cell2mat(curs.Data(17,2:20)');
p18 = cell2mat(curs.Data(18,2:20)');
p19 = cell2mat(curs.Data(19,2:20)');
p20 = cell2mat(curs.Data(20,2:20)');

P = {p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20};
T = {1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20};

Pt = {pt1 pt2 pt3 pt4 pt5};

net = newpnn(cell2mat(P),ind2vec(cell2mat(T)+1));

% net.trainParam.epochs = 100;
% net = train(net, P, T);
net.IW
% disp(sim(net,P));
disp(vec2ind(sim(net,cell2mat(P)))-1);
disp('Results:');
disp(vec2ind(sim(net,cell2mat(Pt)))-1)