conn = database('PremierLeague1016Ind','','');
sqlGetAll = ['SELECT * FROM PL201011 UNION ALL SELECT * FROM PL201112 '...
            ,'UNION ALL SELECT * FROM PL201213 UNION ALL SELECT * FROM '...
            ,'PL201314 UNION ALL SELECT * FROM PL201415 UNION ALL '...
            ,'SELECT * FROM PL201516 ORDER BY ID;'];
        
C = cellstr(sqlGetAll);
query = strjoin(C);

curs = exec(conn,query);
setdbprefs('DataReturnFormat','cellarray');
curs = fetch(curs);

pt1 = [38;21;7;10;63;58;5;70;1.842105263;10;3;6;39;29;11;4;4;24;29];
pt2 = [38;4;14;10;45;58;-13;56;1.473684211;7;7;5;30;20;7;7;5;15;38];
pt3 = [38;25;3;10;70;55;15;78;2.052631579;18;1;0;50;30;7;2;10;20;25];
pt4 = [38;2;10;16;55;55;0;46;1.210526316;6;6;7;40;20;6;4;9;15;35];
pt5 = [38;23;12;3;78;45;33;81;2.131578947;15;3;1;57;21;8;9;2;21;24];

Pt = {pt1 pt2 pt3 pt4 pt5};

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

p21  = cell2mat(curs.Data(21,2:20)');  
p22  = cell2mat(curs.Data(22,2:20)');
p23  = cell2mat(curs.Data(23,2:20)');
p24  = cell2mat(curs.Data(24,2:20)');
p25  = cell2mat(curs.Data(25,2:20)');
p26  = cell2mat(curs.Data(26,2:20)');
p27  = cell2mat(curs.Data(27,2:20)');
p28  = cell2mat(curs.Data(28,2:20)');
p29  = cell2mat(curs.Data(29,2:20)');
p30 = cell2mat(curs.Data(30,2:20)');
p31 = cell2mat(curs.Data(31,2:20)');
p32 = cell2mat(curs.Data(32,2:20)');
p33 = cell2mat(curs.Data(33,2:20)');
p34 = cell2mat(curs.Data(34,2:20)');
p35 = cell2mat(curs.Data(35,2:20)');
p36 = cell2mat(curs.Data(36,2:20)');
p37 = cell2mat(curs.Data(37,2:20)');
p38 = cell2mat(curs.Data(38,2:20)');
p39 = cell2mat(curs.Data(39,2:20)');
p40 = cell2mat(curs.Data(40,2:20)');

p41  = cell2mat(curs.Data(41,2:20)');  
p42  = cell2mat(curs.Data(42,2:20)');
p43  = cell2mat(curs.Data(43,2:20)');
p44  = cell2mat(curs.Data(44,2:20)');
p45  = cell2mat(curs.Data(45,2:20)');
p46  = cell2mat(curs.Data(46,2:20)');
p47  = cell2mat(curs.Data(47,2:20)');
p48  = cell2mat(curs.Data(48,2:20)');
p49  = cell2mat(curs.Data(49,2:20)');
p50 = cell2mat(curs.Data(50,2:20)');
p51 = cell2mat(curs.Data(51,2:20)');
p52 = cell2mat(curs.Data(52,2:20)');
p53 = cell2mat(curs.Data(53,2:20)');
p54 = cell2mat(curs.Data(54,2:20)');
p55 = cell2mat(curs.Data(55,2:20)');
p56 = cell2mat(curs.Data(56,2:20)');
p57 = cell2mat(curs.Data(57,2:20)');
p58 = cell2mat(curs.Data(58,2:20)');
p59 = cell2mat(curs.Data(59,2:20)');
p60 = cell2mat(curs.Data(60,2:20)');

p61  = cell2mat(curs.Data(61,2:20)');  
p62  = cell2mat(curs.Data(62,2:20)');
p63  = cell2mat(curs.Data(63,2:20)');
p64  = cell2mat(curs.Data(64,2:20)');
p65  = cell2mat(curs.Data(65,2:20)');
p66  = cell2mat(curs.Data(66,2:20)');
p67  = cell2mat(curs.Data(67,2:20)');
p68  = cell2mat(curs.Data(68,2:20)');
p69  = cell2mat(curs.Data(69,2:20)');
p70 = cell2mat(curs.Data(70,2:20)');
p71 = cell2mat(curs.Data(71,2:20)');
p72 = cell2mat(curs.Data(72,2:20)');
p73 = cell2mat(curs.Data(73,2:20)');
p74 = cell2mat(curs.Data(74,2:20)');
p75 = cell2mat(curs.Data(75,2:20)');
p76 = cell2mat(curs.Data(76,2:20)');
p77 = cell2mat(curs.Data(77,2:20)');
p78 = cell2mat(curs.Data(78,2:20)');
p79 = cell2mat(curs.Data(79,2:20)');
p80 = cell2mat(curs.Data(80,2:20)');

p81  = cell2mat(curs.Data(81,2:20)');  
p82  = cell2mat(curs.Data(82,2:20)');
p83  = cell2mat(curs.Data(83,2:20)');
p84  = cell2mat(curs.Data(84,2:20)');
p85  = cell2mat(curs.Data(85,2:20)');
p86  = cell2mat(curs.Data(86,2:20)');
p87  = cell2mat(curs.Data(87,2:20)');
p88  = cell2mat(curs.Data(88,2:20)');
p89  = cell2mat(curs.Data(89,2:20)');
p90 = cell2mat(curs.Data(90,2:20)');
p91 = cell2mat(curs.Data(91,2:20)');
p92 = cell2mat(curs.Data(92,2:20)');
p93 = cell2mat(curs.Data(93,2:20)');
p94 = cell2mat(curs.Data(94,2:20)');
p95 = cell2mat(curs.Data(95,2:20)');
p96 = cell2mat(curs.Data(96,2:20)');
p97 = cell2mat(curs.Data(97,2:20)');
p98 = cell2mat(curs.Data(98,2:20)');
p99 = cell2mat(curs.Data(99,2:20)');
p100 = cell2mat(curs.Data(100,2:20)');

p101  = cell2mat(curs.Data(101,2:20)');  
p102  = cell2mat(curs.Data(102,2:20)');
p103  = cell2mat(curs.Data(103,2:20)');
p104  = cell2mat(curs.Data(104,2:20)');
p105  = cell2mat(curs.Data(105,2:20)');
p106  = cell2mat(curs.Data(106,2:20)');
p107  = cell2mat(curs.Data(107,2:20)');
p108  = cell2mat(curs.Data(108,2:20)');
p109  = cell2mat(curs.Data(109,2:20)');
p110 = cell2mat(curs.Data(110,2:20)');
p111 = cell2mat(curs.Data(111,2:20)');
p112 = cell2mat(curs.Data(112,2:20)');
p113 = cell2mat(curs.Data(113,2:20)');
p114 = cell2mat(curs.Data(114,2:20)');
p115 = cell2mat(curs.Data(115,2:20)');
p116 = cell2mat(curs.Data(116,2:20)');
p117 = cell2mat(curs.Data(117,2:20)');
p118 = cell2mat(curs.Data(118,2:20)');
p119 = cell2mat(curs.Data(119,2:20)');
p120 = cell2mat(curs.Data(120,2:20)');


P = {p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120};

T = {1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20};

net = newpnn(cell2mat(P),ind2vec(cell2mat(T)+1));

net.trainParam.epochs = 100;
net = train(net, P, T);
net.IW
disp(sim(net,P));
disp(vec2ind(sim(net,cell2mat(P)))-1);
disp('Results:');
disp(vec2ind(sim(net,cell2mat(Pt)))-1);
net.trainParam.epochs = 100;
net = train(net,P,T);

disp(sim(net,P)');
disp('Results:');
res = sim(net,Pt);
team1 = res(1);
team2 = res(2);
team3 = res(3);
team4 = res(4);
team5 = res(5);
positionsPrecise = [team1;team2;team3;team4;team5];
positionsRounded = [round(cell2mat(team1));round(cell2mat(team2));round(cell2mat(team3));round(cell2mat(team4));round(cell2mat(team5))];
rows = {'team1','team2','team3','team4','team5'};
TLrn = table(positionsPrecise,positionsRounded,'RowNames',rows);
disp(TLrn);
% disp(sim(net,Pt));

close(curs);
close(conn);