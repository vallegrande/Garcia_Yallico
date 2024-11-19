-- Crear base de datos
IF EXISTS (SELECT * FROM sys.databases WHERE name = 'Garcia_Yallico')
BEGIN
    DROP DATABASE Garcia_Yallico;  -- Eliminar la base de datos si existe
END
CREATE DATABASE Garcia_Yallico;  -- Crear la nueva base de datos
GO  -- Asegúrate de que la instrucción anterior se complete antes de continuar

USE Garcia_Yallico;-- Usar la nueva base de datos

-- tables
-- Table: campus
CREATE TABLE campus (
    id int  NOT NULL,
    register_date datetime  NOT NULL,
    name varchar(10)  NOT NULL,
    direction varchar(100)  NOT NULL,
    place varchar(100)  NOT NULL,
    status char(1)  NOT NULL DEFAULT 'A',
    CONSTRAINT campus_pk PRIMARY KEY  (id)
);

-- Table: careers
CREATE TABLE careers (
    id int  NOT NULL,
    names varchar(100)  NOT NULL,
    descriptions varchar(100)  NOT NULL,
    durations int  NOT NULL,
    register_date datetime  NOT NULL,
    status char(1)  NOT NULL DEFAULT 'A',
    CONSTRAINT careers_pk PRIMARY KEY  (id)
);

-- Table: course
CREATE TABLE course (
    id int  NOT NULL,
    name varchar(100)  NOT NULL,
    credits int  NOT NULL,
    status char(1)  NOT NULL DEFAULT 'A',
    CONSTRAINT course_pk PRIMARY KEY  (id)
);

-- Table: creers_detail
CREATE TABLE creers_detail (
    id int  NOT NULL,
    careers_id int  NOT NULL,
    course_code Char(4)  NOT NULL,
    teachers_id int  NOT NULL,
    careers_2_id int  NOT NULL,
    teachers_2_id int  NOT NULL,
    course_id int  NOT NULL,
    CONSTRAINT creers_detail_pk PRIMARY KEY  (id)
);

-- Table: enrollment
CREATE TABLE enrollment (
    id int  NOT NULL,
    register_date datetime  NOT NULL,
    student_id int  NOT NULL,
    seller_code char(4)  NOT NULL,
    careers_id int  NOT NULL,
    campus_code char(4)  NOT NULL,
    price decimal(10,2)  NOT NULL,
    start_date date  NOT NULL,
    status Char(1) NOT NULL DEFAULT 'A',
    student_2_id int  NOT NULL,
    careers_2_id int  NOT NULL,
    seller_id int  NOT NULL,
    campus_id int  NOT NULL,
    CONSTRAINT enrollment_pk PRIMARY KEY  (id)
);

-- Table: seller
CREATE TABLE seller (
    id int  NOT NULL,
    names varchar(100)  NOT NULL,
    last_name varchar(100)  NOT NULL,
    email varchar(100) UNIQUE NOT NULL,
    birthday date  NOT NULL,
    place varchar(150)  NOT NULL,
    salary decimal(10,2)  NOT NULL,
    status char(1) NOT NULL DEFAULT 'A',
    CONSTRAINT seller_pk PRIMARY KEY  (id)
);

-- Table: student
CREATE TABLE student (
    id int  NOT NULL,
    names varchar(100)  NOT NULL,
    last_name varchar(100)  NOT NULL,
    email varchar(100) UNIQUE NOT NULL,
    register_date datetime  NOT NULL,
    birthday date  NOT NULL,
    status char(1)  NOT NULL DEFAULT 'A',
    CONSTRAINT student_pk PRIMARY KEY  (id)
);

-- Table: teachers
CREATE TABLE teachers (
    id int  NOT NULL,
    register_date datetime  NOT NULL,
    names varchar(100)  NOT NULL,
    last_names varchar(100)  NOT NULL,
    speciality varchar(50)  NOT NULL,
    phone Char(9)  NOT NULL,
    email varchar(120)  NOT NULL,
    status CHAR(1) NOT NULL DEFAULT 'A',
    CONSTRAINT teachers_pk PRIMARY KEY  (id)
);


-- foreign keys
-- Reference: creers_detail_careers (table: creers_detail)
ALTER TABLE creers_detail ADD CONSTRAINT creers_detail_careers
    FOREIGN KEY (careers_2_id)
    REFERENCES careers (id);

-- Reference: creers_detail_course (table: creers_detail)
ALTER TABLE creers_detail ADD CONSTRAINT creers_detail_course
    FOREIGN KEY (course_id)
    REFERENCES course (id);

-- Reference: creers_detail_teachers (table: creers_detail)
ALTER TABLE creers_detail ADD CONSTRAINT creers_detail_teachers
    FOREIGN KEY (teachers_2_id)
    REFERENCES teachers (id);

-- Reference: enrollment_campus (table: enrollment)
ALTER TABLE enrollment ADD CONSTRAINT enrollment_campus
    FOREIGN KEY (campus_id)
    REFERENCES campus (id);

-- Reference: enrollment_careers (table: enrollment)
ALTER TABLE enrollment ADD CONSTRAINT enrollment_careers
    FOREIGN KEY (careers_2_id)
    REFERENCES careers (id);

-- Reference: enrollment_seller (table: enrollment)
ALTER TABLE enrollment ADD CONSTRAINT enrollment_seller
    FOREIGN KEY (seller_id)
    REFERENCES seller (id);

-- Reference: enrollment_student (table: enrollment)
ALTER TABLE enrollment ADD CONSTRAINT enrollment_student
    FOREIGN KEY (student_2_id)
    REFERENCES student (id);










