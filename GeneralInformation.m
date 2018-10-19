conn = database('PremierLeague1016','','');

sqlGetAll10 = 'SELECT * FROM PL201011 ORDER BY ID';
sqlGetAll11 = 'SELECT * FROM PL201112 ORDER BY ID';
sqlGetAll12 = 'SELECT * FROM PL201213 ORDER BY ID';
sqlGetAll13 = 'SELECT * FROM PL201314 ORDER BY ID';
sqlGetAll14 = 'SELECT * FROM PL201415 ORDER BY ID';
sqlGetAll15 = 'SELECT * FROM PL201516 ORDER BY ID';

curs = exec(conn,sqlGetAll10);
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
disp('***Premier League 2010\11***');
disp(TLrn);

close(curs);

curs = exec(conn,sqlGetAll11);
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
disp('***Premier League 2011\12***');
disp(TLrn);

close(curs);

curs = exec(conn,sqlGetAll12);
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
disp('***Premier League 2012\13***');
disp(TLrn);

close(curs);

curs = exec(conn,sqlGetAll13);
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
disp('***Premier League 2013\14***');
disp(TLrn);

close(curs);

curs = exec(conn,sqlGetAll14);
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
disp('***Premier League 2014\15***');
disp(TLrn);

close(curs);

curs = exec(conn,sqlGetAll15);
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
disp('***Premier League 2015\16***');
disp(TLrn);

close(curs);
close(conn);