CREATE DATABASE HR;
-- departments
use HR;
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);
INSERT INTO departments VALUES
(10, 'IT'),
(20, 'HR'),
(30, 'Finance'),
(40, 'Sales'),
(50, 'Operations');

-- jobs
CREATE TABLE jobs (
    job_id INT PRIMARY KEY,
    job_title VARCHAR(100),
    min_salary INT,
    max_salary INT
);
INSERT INTO jobs VALUES
(1, 'Software Engineer', 50000, 90000),
(2, 'Senior Engineer', 80000, 120000),
(3, 'HR Executive', 40000, 70000),
(4, 'Finance Analyst', 60000, 100000),
(5, 'Sales Executive', 45000, 80000),
(6, 'Operations Manager', 70000, 110000);
-- employees
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    hire_date DATE,
    job_id INT,
    department_id INT,
    manager_id INT,

    FOREIGN KEY (job_id) REFERENCES jobs(job_id),
    FOREIGN KEY (department_id) REFERENCES departments(department_id),
    FOREIGN KEY (manager_id) REFERENCES employees(employee_id)
);
INSERT INTO employees VALUES
(1,'Aarav','Sharma','aarav@corp.com','2020-01-10',2,10,NULL),
(2,'Sneha','Iyer','sneha@corp.com','2020-02-15',1,10,1),
(3,'Raj','Mehta','raj@corp.com','2020-03-18',1,10,1),
(4,'Neha','Singh','neha@corp.com','2020-04-20',1,10,1),
(5,'Vikram','Patel','vikram@corp.com','2020-05-25',1,10,1),

(6,'Anita','Verma','anita@corp.com','2020-01-12',3,20,NULL),
(7,'Rohit','Kapoor','rohit@corp.com','2020-02-18',3,20,6),
(8,'Kiran','Joshi','kiran@corp.com','2020-03-22',3,20,6),
(9,'Pooja','Nair','pooja@corp.com','2020-04-27',3,20,6),
(10,'Amit','Shah','amit@corp.com','2020-05-30',3,20,6),

(11,'Suresh','Rao','suresh@corp.com','2021-01-10',4,30,NULL),
(12,'Nidhi','Gupta','nidhi@corp.com','2021-02-14',4,30,11),
(13,'Rakesh','Bansal','rakesh@corp.com','2021-03-18',4,30,11),
(14,'Meena','Kumari','meena@corp.com','2021-04-22',4,30,11),
(15,'Arjun','Malhotra','arjun@corp.com','2021-05-26',4,30,11),

(16,'Rahul','Khanna','rahul@corp.com','2021-01-15',6,50,NULL),
(17,'Sunita','Das','sunita@corp.com','2021-02-20',6,50,16),
(18,'Manoj','Yadav','manoj@corp.com','2021-03-25',6,50,16),
(19,'Kavita','Mishra','kavita@corp.com','2021-04-28',6,50,16),
(20,'Deepak','Soni','deepak@corp.com','2021-05-30',6,50,16),

(21,'Imran','Ali','imran@corp.com','2022-01-10',5,40,NULL),
(22,'Saloni','Chopra','saloni@corp.com','2022-02-14',5,40,21),
(23,'Vikas','Agarwal','vikas@corp.com','2022-03-19',5,40,21),
(24,'Ritu','Saxena','ritu@corp.com','2022-04-23',5,40,21),
(25,'Mohit','Jain','mohit@corp.com','2022-05-27',5,40,21),

(26,'Akash','Pandey','akash@corp.com','2022-06-01',1,10,1),
(27,'Divya','Arora','divya@corp.com','2022-06-05',1,10,1),
(28,'Sahil','Goel','sahil@corp.com','2022-06-10',1,10,1),
(29,'Isha','Bajaj','isha@corp.com','2022-06-15',1,10,1),
(30,'Tarun','Joshi','tarun@corp.com','2022-06-20',1,10,1),

(31,'Pankaj','Mishra','pankaj@corp.com','2023-01-10',3,20,6),
(32,'Rina','Sen','rina@corp.com','2023-01-15',3,20,6),
(33,'Abhishek','Roy','abhishek@corp.com','2023-01-20',3,20,6),
(34,'Shweta','Kulkarni','shweta@corp.com','2023-01-25',3,20,6),
(35,'Naveen','Kumar','naveen@corp.com','2023-01-30',3,20,6),

(36,'Ayesha','Khan','ayesha@corp.com','2023-02-05',4,30,11),
(37,'Harish','Patel','harish@corp.com','2023-02-10',4,30,11),
(38,'Preeti','Chauhan','preeti@corp.com','2023-02-15',4,30,11),
(39,'Lokesh','Verma','lokesh@corp.com','2023-02-20',4,30,11),
(40,'Bhavna','Rathore','bhavna@corp.com','2023-02-25',4,30,11),

(41,'Nitin','Arora','nitin@corp.com','2023-03-01',5,40,21),
(42,'Payal','Shukla','payal@corp.com','2023-03-05',5,40,21),
(43,'Sanjay','Dubey','sanjay@corp.com','2023-03-10',5,40,21),
(44,'Monika','Bedi','monika@corp.com','2023-03-15',5,40,21),
(45,'Kunal','Mathur','kunal@corp.com','2023-03-20',5,40,21),

(46,'Ramesh','Thakur','ramesh@corp.com','2023-04-01',6,50,16),
(47,'Seema','Lal','seema@corp.com','2023-04-05',6,50,16),
(48,'Yogesh','Rawat','yogesh@corp.com','2023-04-10',6,50,16),
(49,'Pallavi','Deshpande','pallavi@corp.com','2023-04-15',6,50,16),
(50,'Ankur','Seth','ankur@corp.com','2023-04-20',6,50,16);