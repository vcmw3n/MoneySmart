/*Create table name pageview_acitivity_log*/
CREATE TABLE pageview_activity_log(Id int, user_id int, page_id int,visit_date date, visit_time time); 

/*Inserting data*/
INSERT INTO pageview_activity_log VALUES (1,1,54,'2018-01-01','11:54:34');
INSERT INTO pageview_activity_log VALUES (2,1,55,'2018-01-01','11:55:10');
INSERT INTO pageview_activity_log VALUES (3,1,56,'2018-01-02','13:11:12');
INSERT INTO pageview_activity_log VALUES (4,1,55,'2018-01-02','17:10:08');
INSERT INTO pageview_activity_log VALUES (5,1,56,'2018-01-02','17:12:45');
INSERT INTO pageview_activity_log VALUES (6,2,55,'2018-01-01','10:25:18');
INSERT INTO pageview_activity_log VALUES (7,2,55,'2018-01-01','17:30:12');
INSERT INTO pageview_activity_log VALUES (8,2,55,'2018-01-01','17:45:57');
INSERT INTO pageview_activity_log VALUES (9,3,54,'2018-01-02','00:00:12');
INSERT INTO pageview_activity_log VALUES (10,3,56,'2018-01-02','00:03:22');
INSERT INTO pageview_activity_log VALUES (11,3,55,'2018-01-02','01:20:11');
INSERT INTO pageview_activity_log VALUES (12,3,56,'2018-01-02','01:40:09');

/*Check on data imported*/
select * from pageview_activity_log

/*Qn1 to find the total number of user sessions each page has each day*/
select page_id, visit_date, count((user_id)) as total_user_sessions
from pageview_activity_log
group by page_id, visit_date
order by page_id, visit_date;
