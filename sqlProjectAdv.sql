sqlProject=# insert into todo (title, priority, created_at, completed_at) values ('clean up for the girls', 3, 'now', 'now');
INSERT 0 1
sqlProject=# insert into todo (title, priority, created_at, completed_at) values ('eat lunch', 2, 'now', 'now');
INSERT 0 1
sqlProject=# insert into todo (title, priority, created_at, completed_at) values ('eat peice of bread with butter', 2, 'now', 'now');
INSERT 0 1
sqlProject=# insert into todo (title, priority, created_at, completed_at) values ('tell matt to clean up', 5, 'now', 'now');
INSERT 0 1
sqlProject=# insert into todo (title, priority, created_at, completed_at) values ('consider other options', 4, 'now', 'now');
INSERT 0 1
sqlProject=# select * from todo
sqlProject-# ;
 id |             title              | details | priority |         created_at         |        completed_at        
----+--------------------------------+---------+----------+----------------------------+----------------------------
  6 | spin around                    |         |        1 | 2017-08-29 12:14:36.697748 | 2017-08-29 12:14:36.697748
  7 | stop spinning                  |         |        1 | 2017-08-29 12:15:17.681084 | 2017-08-29 12:15:17.681084
  8 | eat more hotdogs               |         |        1 | 2017-08-29 12:16:37.951598 | 
  9 | eat a burrito                  |         |        2 | 2017-08-29 12:17:16.497017 | 
 10 | finish user directory project  |         |        5 | 2017-08-29 12:17:49.240511 | 
 11 | eat a porkchop when get home   |         |        4 | 2017-08-29 12:18:18.159959 | 
 12 | make smoothie for tomorrow     |         |        3 | 2017-08-29 12:18:41.74359  | 
 13 | clean up for the girls         |         |        3 | 2017-08-29 12:20:05.493884 | 2017-08-29 12:20:05.493884
 14 | eat lunch                      |         |        2 | 2017-08-29 12:20:30.637257 | 2017-08-29 12:20:30.637257
 15 | eat peice of bread with butter |         |        2 | 2017-08-29 12:20:55.017869 | 2017-08-29 12:20:55.017869
 16 | tell matt to clean up          |         |        5 | 2017-08-29 12:21:21.033402 | 2017-08-29 12:21:21.033402
 17 | consider other options         |         |        4 | 2017-08-29 12:23:00.045233 | 2017-08-29 12:23:00.045233
(12 rows)

sqlProject=# insert into todo (title, priority, created_at, completed_at) values ('smell fried food', 3, 'now', 'now');
INSERT 0 1
sqlProject=# insert into todo (title, priority, created_at, completed_at) values ('eat fried food', 3, 'now', 'now');
INSERT 0 1
sqlProject=# select * from todo WHERE completed_at IS NULL;
 id |             title             | details | priority |         created_at         | completed_at 
----+-------------------------------+---------+----------+----------------------------+--------------
  8 | eat more hotdogs              |         |        1 | 2017-08-29 12:16:37.951598 | 
  9 | eat a burrito                 |         |        2 | 2017-08-29 12:17:16.497017 | 
 10 | finish user directory project |         |        5 | 2017-08-29 12:17:49.240511 | 
 11 | eat a porkchop when get home  |         |        4 | 2017-08-29 12:18:18.159959 | 
 12 | make smoothie for tomorrow    |         |        3 | 2017-08-29 12:18:41.74359  | 
(5 rows)

sqlProject=# select * from todo WHERE completed_at IS NULL and priority = 3;
 id |           title            | details | priority |        created_at         | completed_at 
----+----------------------------+---------+----------+---------------------------+--------------
 12 | make smoothie for tomorrow |         |        3 | 2017-08-29 12:18:41.74359 | 
(1 row)

sqlProject=# select * from todo WHERE completed_at IS NULL; 
 id |             title             | details | priority |         created_at         | completed_at 
----+-------------------------------+---------+----------+----------------------------+--------------
  8 | eat more hotdogs              |         |        1 | 2017-08-29 12:16:37.951598 | 
  9 | eat a burrito                 |         |        2 | 2017-08-29 12:17:16.497017 | 
 10 | finish user directory project |         |        5 | 2017-08-29 12:17:49.240511 | 
 11 | eat a porkchop when get home  |         |        4 | 2017-08-29 12:18:18.159959 | 
 12 | make smoothie for tomorrow    |         |        3 | 2017-08-29 12:18:41.74359  | 
(5 rows)

                 ^
sqlProject=# select * from todo ORDER BY completed_at;
 id |                        title                         | details | priority |         created_at         |        completed_at        
----+------------------------------------------------------+---------+----------+----------------------------+----------------------------
  6 | spin around                                          |         |        1 | 2017-08-29 12:14:36.697748 | 2017-08-29 12:14:36.697748
  7 | stop spinning                                        |         |        1 | 2017-08-29 12:15:17.681084 | 2017-08-29 12:15:17.681084
 13 | clean up for the girls                               |         |        3 | 2017-08-29 12:20:05.493884 | 2017-08-29 12:20:05.493884
 14 | eat lunch                                            |         |        2 | 2017-08-29 12:20:30.637257 | 2017-08-29 12:20:30.637257
 15 | eat peice of bread with butter                       |         |        2 | 2017-08-29 12:20:55.017869 | 2017-08-29 12:20:55.017869
 16 | tell matt to clean up                                |         |        5 | 2017-08-29 12:21:21.033402 | 2017-08-29 12:21:21.033402
 17 | consider other options                               |         |        4 | 2017-08-29 12:23:00.045233 | 2017-08-29 12:23:00.045233
 18 | smell fried food                                     |         |        3 | 2017-08-29 12:25:19.189833 | 2017-08-29 12:25:19.189833
 19 | eat fried food                                       |         |        3 | 2017-08-29 12:25:44.709647 | 2017-08-29 12:25:44.709647
 20 | cook for friends when they come over, after cleaning |         |        3 | 2017-08-29 12:34:52.946889 | 2017-08-29 12:34:52.946889
  8 | eat more hotdogs                                     |         |        1 | 2017-08-29 12:16:37.951598 | 
 12 | make smoothie for tomorrow                           |         |        3 | 2017-08-29 12:18:41.74359  | 
 11 | eat a porkchop when get home                         |         |        4 | 2017-08-29 12:18:18.159959 | 
 10 | finish user directory project                        |         |        5 | 2017-08-29 12:17:49.240511 | 
  9 | eat a burrito                                        |         |        2 | 2017-08-29 12:17:16.497017 | 
(15 rows)

                                 ^
sqlProject=# select * from todo WHERE priority = (select MAX (priority) from todo);
 id |             title             | details | priority |         created_at         |        completed_at        
----+-------------------------------+---------+----------+----------------------------+----------------------------
 10 | finish user directory project |         |        5 | 2017-08-29 12:17:49.240511 | 
 16 | tell matt to clean up         |         |        5 | 2017-08-29 12:21:21.033402 | 2017-08-29 12:21:21.033402
(2 rows)


sqlProject=# select * from todo order by created_at limit 1;
 id |    title    | details | priority |         created_at         |        completed_at        
----+-------------+---------+----------+----------------------------+----------------------------
  6 | spin around |         |        1 | 2017-08-29 12:14:36.697748 | 2017-08-29 12:14:36.697748
(1 row)


