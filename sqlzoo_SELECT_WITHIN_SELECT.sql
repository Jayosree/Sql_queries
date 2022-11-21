--6.Which countries have a GDP greater than every country in Europe? [Give the name only.] (Some countries may have NULL gdp values)
select name from world where
gdp> all
(SELECT gdp FROM world WHERE continent ='Europe' and gdp>0);

--7. Find the largest country (by area) in each continent, show the continent, the name and the area:
select continent,name,area from world where area in 
(select max(area) from world 
group by continent);

--8.List each continent and the name of the country that comes first alphabetically.
SELECT continent, name FROM world x WHERE name <= ALL(SELECT name FROM world y WHERE x.continent = y.continent);

-- 9.Find the continents where all countries have a population <= 25000000. Then find the names of the countries associated with these continents. Show name, 
-- continent and population.
select name,continent,population from world where
continent not in 
(select continent from world where population>25000000) 

-- 10.Some countries have populations more than three times that of all of their neighbours (in the same continent). Give the countries and continents.
