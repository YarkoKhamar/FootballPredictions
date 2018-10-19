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
disp('All statistics together: ');
curs.Data