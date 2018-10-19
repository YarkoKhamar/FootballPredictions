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

C = cellstr(sqlGetAvg);
query = strjoin(C);

curs = exec(conn,query);
setdbprefs('DataReturnFormat','cellarray');
curs = fetch(curs);
ID = cell2mat(curs.Data(1:20,1));
P = cell2mat(curs.Data(1:20,2));
W = cell2mat(curs.Data(1:20,3));
D = cell2mat(curs.Data(1:20,4));
L = cell2mat(curs.Data(1:20,5));
GF = cell2mat(curs.Data(1:20,6));
GA = cell2mat(curs.Data(1:20,7));
GD = cell2mat(curs.Data(1:20,8));
Pts = cell2mat(curs.Data(1:20,9));
PPG = cell2mat(curs.Data(1:20,10));
Wh = cell2mat(curs.Data(1:20,11));
Dh = cell2mat(curs.Data(1:20,12));
Lh = cell2mat(curs.Data(1:20,13));
GFh = cell2mat(curs.Data(1:20,14));
GAh = cell2mat(curs.Data(1:20,15));
Wa = cell2mat(curs.Data(1:20,16));
Da = cell2mat(curs.Data(1:20,17));
La = cell2mat(curs.Data(1:20,18));
GFa = cell2mat(curs.Data(1:20,19));
GAa = cell2mat(curs.Data(1:20,20));
Position = cell2mat(curs.Data(1:20,21));

TLrn = table(ID,P,W,D,L,GF,GA,GD,Pts,PPG,Wh,Dh,Lh,GFh,GAh,Wa,Da,La,GFa,GAa,Position);
disp('Average statistics for last 6 seasons: ');
disp(TLrn);

close(curs);
close(conn);