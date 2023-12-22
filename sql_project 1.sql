create database cars_dekho;
use cars_dekho;
1) --READ DATA--
select*from car_data; 
2) --total cars ; to get count of total records--
select count(*)
from car_data #7927
3)--how many cars will be available in 2023--
 select count(*)
from car_data
where year = 2023 #6
4)--how many cars is available in 2020,2021,2022--
*cars for 2020
select count(*)
from car_data
where year = 2020;   #74
*cars for 2021
select count(*)
from car_data
where year = 2021;   #7
*cars for 2022
select count(*)
from car_data
where year = 2022;   #7
*cars combined 2020,2021,2022
select count(*)
from car_data
where year in(2020,2021,2022)  #88
5)--client asked me to print the total of all cars by year . i domt see the details--
select year, count(name)
from car_data
group by year;
6)--how many dieseal cars will be there in 2020--
select count(*)
from car_data
where fuel = "diesel" and year = 2020;   #20
7)--how many petrol cars will be there in 2020--
select count(*)
from car_data
where fuel = "petrol" and year = 2020;   #51
8)--the manager told the employees to give a print of all fuel cars(petrol,disel,cng) come all by year--
select year,count(fuel)
from car_data
where fuel in ("petrol" , "diesel" , "cng")
group by year;
*petrol 
select year,count(fuel)
from car_data
where fuel = "petrol"
group by year
*diesel
select year,count(fuel)
from car_data
where fuel = "diesel"
group by year
*cng
select year,count(fuel)
from car_data
where fuel = "cng"
group by year
9)manager said there were more than 100 cars in agiven year,which year had more than 100 cars
select year , count(*)
from car_data
group by year
having count(*) > 100
10)the managers said to employee to get all cars count detail between 2015 and 2023 we need a complete list;
total
select count(*)
from car_data
where year between 2015 and 2023
11)--the managers said to employee to get all cars  detail between 2015 and 2023 we need a complete list--
select *
from car_data
where year between 2015 and 2023;








