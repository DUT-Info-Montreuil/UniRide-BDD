DROP SCHEMA uniride CASCADE;
CREATE SCHEMA uniride;

CREATE TABLE uniride.ur_role(
   p_id SERIAL,
   p_name VARCHAR(30) NOT NULL,
   p_description VARCHAR(100),
   p_timestamp_addition timestamp NOT NULL,
   p_timestamp_modification timestamp NOT NULL,
   PRIMARY KEY(p_id)
);

CREATE TABLE uniride.ur_address(
   a_id SERIAL,
   a_street_number VARCHAR(10) NOT NULL,
   a_street_name VARCHAR(255) NOT NULL,
   a_city VARCHAR(255) NOT NULL,
   a_postal_code VARCHAR(5) NOT NULL,
   a_latitude DECIMAL(15,10) NOT NULL,
   a_longitude DECIMAL(15,10) NOT NULL,
   a_description VARCHAR(50),
   a_timestamp_modification timestamp NOT NULL,
   PRIMARY KEY(a_id)
);

CREATE TABLE uniride.ur_daily(
   q_id SERIAL,
   q_day_id INT,
   q_timestamp_departure timestamp NOT NULL,
   q_timestamp_return timestamp NOT NULL,
   q_active boolean NOT NULL,
   PRIMARY KEY(q_id)
);

CREATE TABLE uniride.ur_user(
   u_id SERIAL,
   u_login VARCHAR(50) NOT NULL UNIQUE,
   u_lastname VARCHAR(50) NOT NULL,
   u_student_email VARCHAR(50) NOT NULL UNIQUE,
   u_password TEXT NOT NULL,
   u_timestamp_creation timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
   u_timestamp_modification timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
   u_profile_picture_path TEXT,
   u_gender VARCHAR(2) NOT NULL,
   u_firstname VARCHAR(50) NOT NULL,
   u_phone_number VARCHAR(9) NOT NULL,
   u_email_verified BOOLEAN NOT NULL DEFAULT false,
   u_status BOOLEAN NOT NULL DEFAULT false,
   u_description VARCHAR(100),
   u_home_adress_id INT,
   u_work_adress_id INT,
   PRIMARY KEY(u_id),
   FOREIGN KEY(u_home_adress_id) REFERENCES uniride.ur_address(a_id) ON DELETE CASCADE,
   FOREIGN KEY(u_work_adress_id) REFERENCES uniride.ur_address(a_id) ON DELETE CASCADE
);

CREATE TABLE uniride.ur_document_verification(
   v_id SERIAL,
   v_license_verified BOOLEAN NOT NULL,
   v_id_card_verified BOOLEAN NOT NULL,
   v_school_certificate_verified BOOLEAN NOT NULL,
   v_timestamp_modification VARCHAR(50),
   u_id INT,
   PRIMARY KEY(v_id),
   FOREIGN KEY(u_id) REFERENCES uniride.ur_user(u_id) ON DELETE CASCADE
);

CREATE TABLE uniride.ur_documents(
   d_id SERIAL,
   d_license TEXT,
   d_id_card TEXT,
   d_school_certificate TEXT,
   d_timestamp_addition timestamp NOT NULL,
   d_timestamp_modification timestamp NOT NULL,
   u_id INT,
   PRIMARY KEY(d_id),
   FOREIGN KEY(u_id) REFERENCES uniride.ur_user(u_id) ON DELETE CASCADE
);

CREATE TABLE uniride.ur_vehicle(
   v_id SERIAL,
   v_model VARCHAR(64) NOT NULL,
   v_license_plate VARCHAR(16),
   v_country_license_plate VARCHAR(2) NOT NULL,
   v_color VARCHAR(15) NOT NULL,
   v_brand VARCHAR(50) NOT NULL,
   v_timestamp_addition timestamp NOT NULL,
   v_timestamp_modification timestamp NOT NULL,
   u_id INT NOT NULL,
   PRIMARY KEY(v_id),
   UNIQUE(u_id),
   FOREIGN KEY(u_id) REFERENCES uniride.ur_user(u_id) ON DELETE CASCADE
);

CREATE TABLE uniride.ur_trip(
   t_id SERIAL,
   t_total_passenger_count INT NOT NULL,
   t_date_proposed timestamp NOT NULL,
   t_timestamp_creation timestamp NOT NULL,
   t_timestamp_occurrence timestamp NOT NULL,
   t_status INT,
   t_price numeric NOT NULL,
   q_id INT NOT NULL,
   u_id INT NOT NULL,
   a_id INT NOT NULL,
   a_id_1 INT NOT NULL,
   PRIMARY KEY(t_id),
   UNIQUE(q_id),
   FOREIGN KEY(q_id) REFERENCES uniride.ur_daily(q_id),
   FOREIGN KEY(u_id) REFERENCES uniride.ur_user(u_id) ON DELETE CASCADE,
   FOREIGN KEY(a_id) REFERENCES uniride.ur_address(a_id),
   FOREIGN KEY(a_id_1) REFERENCES uniride.ur_address(a_id)
);

CREATE TABLE uniride.ur_message(
   m_id SERIAL,
   m_content TEXT NOT NULL,
   m_timestamp_sent timestamp NOT NULL,
   m_read BOOLEAN NOT NULL,
   u_id INT NOT NULL,
   u_id_1 INT NOT NULL,
   PRIMARY KEY(m_id),
   FOREIGN KEY(u_id) REFERENCES uniride.ur_user(u_id) ON DELETE CASCADE,
   FOREIGN KEY(u_id_1) REFERENCES uniride.ur_user(u_id) ON DELETE CASCADE
);

CREATE TABLE uniride.ur_email_verification(
   ur_id SERIAL,
   v_timestamp timestamp NOT NULL,
   v_code CHAR(5) NOT NULL,
   u_id INT NOT NULL,
   PRIMARY KEY(ur_id),
   UNIQUE(u_id),
   FOREIGN KEY(u_id) REFERENCES uniride.ur_user(u_id) ON DELETE CASCADE
);

CREATE TABLE uniride.ur_trip_validation(
   v_id SERIAL,
   v_code CHAR(4) NOT NULL,
   u_id INT NOT NULL,
   t_id INT NOT NULL,
   u_id_1 INT NOT NULL,
   PRIMARY KEY(v_id),
   UNIQUE(u_id),
   UNIQUE(u_id_1),
   FOREIGN KEY(u_id) REFERENCES uniride.ur_user(u_id) ON DELETE CASCADE,
   FOREIGN KEY(t_id) REFERENCES uniride.ur_trip(t_id),
   FOREIGN KEY(u_id_1) REFERENCES uniride.ur_user(u_id) ON DELETE CASCADE
);

CREATE TABLE uniride.ur_assign(
   p_id INT,
   u_id INT,
   PRIMARY KEY(p_id, u_id),
   FOREIGN KEY(p_id) REFERENCES uniride.ur_role(p_id),
   FOREIGN KEY(u_id) REFERENCES uniride.ur_user(u_id) ON DELETE CASCADE
);

CREATE TABLE uniride.ur_join(
   u_id INT,
   t_id INT,
   q_id INT,
   r_accepted BOOLEAN NOT NULL,
   r_passenger_count INT,
   r_date_requested timestamp NOT NULL,
   PRIMARY KEY(u_id, t_id, q_id),
   FOREIGN KEY(u_id) REFERENCES uniride.ur_user(u_id) ON DELETE CASCADE,
   FOREIGN KEY(t_id) REFERENCES uniride.ur_trip(t_id),
   FOREIGN KEY(q_id) REFERENCES uniride.ur_daily(q_id)
);
