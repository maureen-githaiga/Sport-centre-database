## Sport-centre-database

This project involves storing information about guided group exercise into the database of a sports centre: group
exercise classes, categories, instructors and halls.

**The objectives of the project:**

Learn the fundamentals of database design, including entity-relationship modeling (ER diagrams).
Learn to map ER diagrams into SQL database schemas.
To gain proficiency in managing and querying a database system.

**The following information is given.**

We want to store information about guided group exercise into the database of a sports centre: group
exercise classes, categories, instructors and halls.
For each group exercise class, an ID, a name, description, duration in minutes and difficulty level (1-4) are
needed. The ID of the group exercise class is an artificial, integer type identifier that allows group exercise
classes to be identified. The name of the group exercise class is also unique.
Information that is needed about categories includes an ID and name. The category ID is an artificial,
integer type ID that allows the categories to be identified. The category name is also unique. Group
exercise class always falls into one category and the same category may include several group exercise
classes. For example, a group exercise class called Basics of yoga could fall into a category called Body
maintenance.
For each instructor, an ID (an artificial, integer type unique identifier), name and date of birth are needed.
The database needs to find out what group exercise classes can be instructed by each instructor (the
instructor is qualified to instruct). One instructor can instruct multiple group exercise classes and the same
group exercise class can be instructed by multiple instructors.
In addition, information on the timetable has to be found in the database: on which days of the week and at
what time the group exercise classes are held. The information needed about the classes in the timetable
includes the day of the week, start time, end time, and maximum number of participants. Suppose that
there is only one implementation of the same group exercise class on the same day of the week at the
same time. Thus, the classes in the timetable can be identified by the combination of the group exercise
class, the day of the week and the start time. One class in the timetable is always instructed by one
instructor and the same instructor can instruct several classes in the timetable.
Information needed about the halls includes the id, name and number of places. The hall id is an artificial,
integer type identifier that allows halls to be identified. The name of the hall is also unique. A class in the
timetable is always held in one hall while many classes in the timetable can be held in the same hall.
Cardinality ratios and some participation constraints are given in the above. The rest of the constraints must
be thought through for yourself. The description has been simplified and covers only part of the application
area so that the work is able to be done with skills obtained in this course and reasonable workload. It is
completely missing, e.g., customers’ information and their participation in classes on specific dates.
Autumn, spring and summer seasons usually have their own timetables, but this, too, has been deliberately
omitted.
