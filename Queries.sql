-- Retrieve the following information about the timetable classes of the group exercise classes belonging to the category called Body maintenance: day of week, start time, name of the group exercise class and duration.
-- Sort the result rows in ascending order by day of week, start time and name.
SELECT t.day_of_week, t.start_time, g.gc_name, g.duration
FROM tt_class t
LEFT OUTER JOIN g_class g
ON t.gc_id = g.gc_id
LEFT OUTER JOIN category c
ON g.c_id = c.c_id
WHERE c.c_name = 'Body maintenance'
ORDER BY t.day_of_week, t.start_time, g.gc_name;

-- Retrieve the following information about the timetable classes of the group exercise classes belonging to the Body Maintenance category, with the day of week Tue 
--(Tuesday shortened to the character string Tue) or the duration of 50 minutes: day of week, start time, name of the group exercise class, duration and level.
-- Sort the result rows in ascending order by day of week, start time and name.
SELECT t.day_of_week, t.start_time, g.gc_name, g.duration,g.level
FROM tt_class t
INNER JOIN g_class g ON t.gc_id = g.gc_id
INNER JOIN category c ON g.c_id = c.c_id
WHERE c.c_name = 'Body maintenance' 
AND (t.day_of_week LIKE 'Tue%' OR g.duration = 50) 
ORDER BY t.day_of_week, t.start_time, g.gc_name;
-- Retrieve the following information for the shortest group exercise class: the name and duration of the class. 
-- Sort the result rows in ascending order by the name of the class.
SELECT gc_name,duration
FROM g_class
WHERE duration = (SELECT MIN(duration)
					FROM g_class
					);
-- Retrieve the following information for the shortest group exercise class: the name and duration of the class and the name of the category. 
-- Sort the result rows in ascending order by the name of the class.
SELECT g.gc_name,g.duration,c.c_name
FROM g_class g 
LEFT OUTER JOIN category c
ON g.c_id = c.c_id
WHERE g.duration = (SELECT MIN(duration)
					FROM g_class);
					
-- Retrieve ids and names of instructors who can instruct both classes in the category called Indoor cycling and 
-- classes in the category called Body maintenance.
-- Sort the result rows in ascending order by the instructor id.
SELECT  i.i_id, i.i_name
FROM category c 
INNER JOIN g_class g ON g.c_id = c.c_id
INNER JOIN can_instruct ci ON g.gc_id = ci.gc_id
INNER JOIN  instructor i ON ci.i_id =  i.i_id
WHERE c.c_name = 'Body maintenance'
INTERSECT
SELECT  i.i_id, i.i_name
FROM category c 
INNER JOIN g_class g ON g.c_id = c.c_id
INNER JOIN can_instruct ci ON g.gc_id = ci.gc_id
INNER JOIN  instructor i ON ci.i_id =  i.i_id
WHERE c.c_name = 'Indoor cycling' ; 

-- For each category, retrieve
-- the name of the category,
-- the number of group exercise classes belonging to the category,
-- as well as the minimum duration and
-- maximum duration of group exercise classes.
-- Sort the result rows in ascending order by the name of the category.

SELECT 	c.c_name,
		COUNT(g.gc_id) AS no_group_classes,
		MIN(g.duration) AS min_duration,
		MAX(g.duration) AS max_duration
FROM g_class g 
LEFT OUTER JOIN category c
ON g.c_id = c.c_id
GROUP BY c.c_id
ORDER BY c.c_name;
-- For each category, retrieve
-- the name of the category,
-- the number of group exercise classes belonging to the category, 
-- the number of timetable classes belonging to the category, and
-- the number of different instructors instructing the timetable classes belonging to the category.
-- Sort the result rows in ascending order by the name of the category.

SELECT 	c.c_name,
		COUNT(DISTINCT g.gc_id) AS no_group_classes,
		COUNT(t.gc_id) AS no_timetable_classes,
		COUNT( DISTINCT t.i_id) AS no_instructors
FROM tt_class t 
FULL OUTER JOIN g_class g
ON t.gc_id = g.gc_id
FULL OUTER JOIN category c
ON g.c_id = c.c_id
GROUP BY c.c_id
ORDER BY c.c_name;