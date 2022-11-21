--Q7. Find the largest country (by area) in each continent, show the continent, the name and the area:
select continent,name,area from world where area in 
(select max(area) from world 
group by continent);
