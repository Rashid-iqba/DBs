create table item
(
	i_no number(5) primary key,
	i_name varchar2(10),
	i_price number(5),
	qty_stock number(5)
);

create table bonus
(
	ename varchar2(10) primary key,
	job varchar2(9),
	sal number,
	comm number
);

create table dummy (dummy number);


create table supp
(
	s_no number(5) primary key,
	s_name varchar2(20) check(s_name=initcap(s_name)),
	state varchar2(10)
);

create table ord_mas
(
	o_no number(5) primary key,
	o_date date check(o_date between to_date('01-jan-2007','dd-mon-yyyy') and to_date('31-dec-2010','dd-mon-yyyy')),
	s_no number(5) references supp(s_no) on delete cascade
);

create table ord_det
(
	o_no number(5) references ord_mas on delete cascade,
	i_no number(5) references item on delete cascade,
	qty number(5),
	primary key(o_no,i_no)
);


	
	