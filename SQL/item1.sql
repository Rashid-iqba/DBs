insert into supp values(10001,'Binary','WB');
insert into supp values(10002,'Sysquest','WB');
insert into supp values(10003,'Delta','USA');
insert into supp values(10004,'Compaq','Singapore');
insert into supp values(10006,'Wipro','Delhi');


insert into item values(20001,'Cabinet',50,10);
insert into item values(20002,'Processor',90,15);
insert into item values(20003,'HDD',55,5);
insert into item values(20004,'Monitor',40,20);
insert into item values(20005,'Keyboard',10,80);
insert into item values(20007,'FDD',5,90);


insert into ord_mas values(30001,to_date('10-jan-2007'),10001);
insert into ord_mas values(30002,to_date('10-jan-2008'),10002);
insert into ord_mas values(30003,to_date('10-jan-2009'),10003);
insert into ord_mas values(30004,to_date('10-jan-2010'),10004);
insert into ord_mas values(30005,to_date('20-jan-2007'),10001);
insert into ord_mas values(30006,to_date('10-feb-2007'),10002);
insert into ord_mas values(30007,to_date('10-feb-2008'),10003);
insert into ord_mas values(30008,to_date('10-mar-2010'),10004);


insert into ord_det values(30001,20001,10);
insert into ord_det values(30001,20002,15);
insert into ord_det values(30001,20003,20);
insert into ord_det values(30001,20004,30);
insert into ord_det values(30002,20001,20);
insert into ord_det values(30002,20002,30);
insert into ord_det values(30002,20005,5);
insert into ord_det values(30003,20001,20);
insert into ord_det values(30003,20005,10);
insert into ord_det values(30004,20001,30);
insert into ord_det values(30004,20005,30);
insert into ord_det values(30005,20001,50);
insert into ord_det values(30006,20002,60);
insert into ord_det values(30007,20002,15);
insert into ord_det values(30008,20005,80);
