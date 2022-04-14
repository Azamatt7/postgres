
--DATE FORMAT => YYYY - MM DD: 2022- 04-12
INSERT INTO students (id, name, birth_day, gender, email)
VALUES (1,'Barchynai','1995-05-05','Female','barchynai@gmail.com');

  INSERT INTO students(id, name, birth_day, gender, email) VALUES
  (2,'Nargizai','1995-05-05','Female','nargiza@gmail.com');

INSERT INTO students(id, name, birth_day, gender, email)
   VALUES (3,'Adilet','2004-02-02','Male','adilet@gmail.com');

SELECT * FROM students;

CREATE TABLE students(
   id INTEGER PRIMARY KEY ,
   name VARCHAR NOT NULL ,
   birth_day DATE ,
   gender VARCHAR check ( gender = 'FEMALE' or gender = 'MALE' ),
   email VARCHAR UNIQUE NOT NULL

);


create table  laptops(
    id int primary key ,
    brand varchar not null ,
    name varchar not null ,
    memory int not null ,
    cpu varchar not null
);
alter table students add column laptop_id int references laptop(id);

insert into laptop(id, brand, name, memory, cpu) VALUES (1,'Macbook','air 2020',265,'apple silicon'),
                                                        (2,'acer','aser',500,'intel');
alter table laptop rename to laptops;

update students
    set laptop_id = 1
where id = 1;