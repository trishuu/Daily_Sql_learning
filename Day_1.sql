create schema programs;
use programs;
create table cust_dimen(Cust_ID varchar(100)  not null,City varchar(121) default null,State varchar(121) default null,Customer_Segment varchar(125) default null,primary key(Cust_ID));
# Inserting Values
insert into cust_dimen values
("2201", "Kolkata","WB","ULOEDU"),
("2202","Mumbai","MH","MUMBAIMAIL"),
("2204","Vizag","AP","SEAWAYS"),
("2205","Bhubaneswar","OD","STARBUKS"),
("2206","Mundra","GJ","ADANI"),
("2207","Hydrabad","TG","INFOSES"),
("2208","Truvanantapuram","TN","TCS"),
("2209","Bhopal","MP","GASPLANT"),
("2210","Kota","RJ","ALLEN");

select * from cust_dimen;

update cust_dimen set city="Mumbai" where State="GJ";
update cust_dimen set State="MH" where Cust_ID=2206;

select * from cust_dimen;

alter table cust_dimen add column Cust_purchase int;

update cust_dimen set Cust_purchase=6543 where Cust_ID=2201;
update cust_dimen set Cust_purchase=54876 where Cust_ID=2202;
update cust_dimen set Cust_purchase=5678 where Cust_ID=2203;
update cust_dimen set Cust_purchase=8976 where Cust_ID=2204;
update cust_dimen set Cust_purchase=9852 where Cust_ID=2205;
update cust_dimen set Cust_purchase=1543 where Cust_ID=2206;
update cdimen set Cust_purchase=12689 where Cust_ID=2207;
update cust_dimen set Cust_purchase=86452 where Cust_ID=2208;
update cust_dimen set Cust_purchase=1985 where Cust_ID=2209;
update cust_dimen set Cust_purchase=7586 where Cust_ID=2210;

select * from cust_dimen;

delete from cust_dimen where Cust_ID = 2209;

drop table cust_dimen;