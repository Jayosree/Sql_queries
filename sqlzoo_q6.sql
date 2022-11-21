select continent,name,area from world where area in 
(select max(area) from world 
group by continent);
