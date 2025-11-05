-- 4NF violation example
-- If a table is already in 3NF and doesn't contain
-- Any multi-valued dependencies, then it's in 4NF
CREATE TABLE aspirants
(
    a_id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    age NUMBER,
    email VARCHAR2(50)
);

INSERT INTO aspirants (a_id, name, age, email) VALUES (101, 'Alex King', 22, 'alex@email.com');
INSERT INTO aspirants (a_id, name, age, email) VALUES (102, 'Sara Khan', 25, 'sara@email.com');
INSERT INTO aspirants (a_id, name, age, email) VALUES (103, 'Mike Chen', 19, 'mike@email.com');
INSERT INTO aspirants (a_id, name, age, email) VALUES (104, 'Lena Ortiz', 28, 'lena@email.com');

SELECT * FROM aspirants;

CREATE TABLE aspirant_interests
(
    aspirant_id NUMBER REFERENCES aspirants(a_id),
    skill VARCHAR2(50),
    hobby VARCHAR2(100)
);

INSERT INTO aspirant_interests VALUES(101, 'Java', 'Skating');
INSERT INTO aspirant_interests VALUES(101, 'Python', 'Gaming');
INSERT INTO aspirant_interests VALUES(101, 'UI/UX', 'Skating');

INSERT INTO aspirant_interests VALUES (102, 'Java', 'Reading');
INSERT INTO aspirant_interests VALUES (102, 'Java', 'Cooking');
INSERT INTO aspirant_interests VALUES (102, 'Java', 'Yoga');

INSERT INTO aspirant_interests VALUES (103, 'Design', 'Drawing');
INSERT INTO aspirant_interests VALUES (103, 'UI/UX', 'Drawing');

INSERT INTO aspirant_interests VALUES (104, 'Testing', 'Running');
INSERT INTO aspirant_interests VALUES (104, 'Leadership', 'Guitar');
INSERT INTO aspirant_interests VALUES (104, 'C++', 'Sailing');

SELECT * FROM aspirant_interests;

create table aspirant_skills as
(
    select distinct aspirant_id,skill from aspirant_interests
);
select * from aspirant_skills;

alter table aspirant_skills add constraint asp_fk foreign key(aspirant_id) references aspirants(a_id);

ALTER TABLE aspirant_skills
ADD constraint skill_pk
primary key(aspirant_id,skill);

create table aspirant_hobbies as 
(
    select distinct aspirant_id,hobby from aspirant_interests
);
select * from aspirant_hobbies;

alter table aspirant_hobbies add constraint aspirant_fk foreign key(aspirant_id) references aspirants(a_id);

ALTER TABLE aspirant_hobbies
ADD constraint hobby_pk
primary key(aspirant_id,hobby);

drop table aspirant_interests;

select * from aspirants where name between 'A' and '';