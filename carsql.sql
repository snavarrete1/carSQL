--Create tables--
CREATE TABLE salesperson(
	staff_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	contact_num VARCHAR(150),
	email VARCHAR(200)
)

CREATE TABLE car_inventory(
	serial_id INTEGER PRIMARY KEY,
	make VARCHAR(15),
	model VARCHAR(15),
	staff_id INTEGER, 
	FOREIGN KEY (staff_id) REFERENCES salesperson,
	customer_id INTEGER,
	FOREIGN KEY (customer_id) REFERENCES customer
	
)

CREATE TABLE customer_info(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	email VARCHAR(100),
	address VARCHAR(200),
	phone VARCHAR(15)
)

CREATE TABLE sales_invoice(
	sales_id SERIAL PRIMARY KEY,
	amount NUMERIC(9,2),
	purchase_date DATE,
	serial_id INTEGER,
	FOREIGN KEY (serial_id) REFERENCES car_inventory,
	staff_id INTEGER,
	FOREIGN KEY (staff_id) REFERENCES salesperson,
	customer_id INTEGER,
	FOREIGN KEY (customer_id) REFERENCES customer
	
)


CREATE TABLE mechanic_record(
	record_id SERIAL PRIMARY KEY,
	service_id INTEGER,
	FOREIGN KEY (service_id) REFERENCES service_invoice,
	mechanic_id INTEGER,
	FOREIGN KEY(mechanic_id) REFERENCES mechanic
)

CREATE TABLE mechanic(
	mechanic_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	email VARCHAR(100),
	address VARCHAR(200),
	phone VARCHAR(15)
	
)


CREATE TABLE service_invoice(
	service_id SERIAL PRIMARY KEY,
	order_date DATE,
	amount NUMERIC(8,2),
	total_cost NUMERIC(10,2),
	description VARCHAR(500),
	customer_id INTEGER,
	item_id INTEGER
	
	
)


CREATE TABLE parts(
	parts_id SERIAL PRIMARY KEY,
	part_type VARCHAR(100),
	part_price NUMERIC(6,2),
	service_id INTEGER,
	FOREIGN KEY (service_id) REFERENCES service_invoice
)

--Insert DATA into salesperson table--
INSERT INTO salesperson(
	staff_id,
	first_name,
	last_name,
	contact_num,
	email
)

VALUES(
	1,
	'Jacob',
	'Myers',
	'555-456-7777',
	's25@gmail.com'

)

INSERT INTO salesperson(
	staff_id,
	first_name,
	last_name,
	contact_num,
	email
)

VALUES(
	2,
	'Jessica',
	'Damilio',
	'555-777-9000',
	'j30@gmail.com'

)

--Insert DATA into car inventory table--
INSERT INTO car_inventory(
	serial_id,
	make,
	model,
	staff_id, 
	customer_id
	
)

VALUES(
	1001,
	'Tesla',
	'G45',
	1,
	1
)

INSERT INTO car_inventory(
	serial_id,
	make,
	model,
	staff_id, 
	customer_id
	
)

VALUES(
	1002,
	'BMW',
	'T-Series',
	2,
	2
)
--Insert DATA into customer info--
INSERT INTO customer_info(
	customer_id,
	first_name,
	last_name,
	email,
	address,
	phone 
)

VALUES(
	1,
	'Sarah',
	'Galio',
	'sarah3@gmail.com',
	'5678 S Rockford, New York, NYC, 10001',
	'676-568-9000'

)

INSERT INTO customer_info(
	customer_id,
	first_name,
	last_name,
	email,
	address,
	phone 
)

VALUES(
	2,
	'Robert',
	'Peters',
	'robertp56@gmail.com',
	'8800 N Mayfair, New York, NYC, 10002',
	'676-700-9230'

)
--Insert DATA into sales invoice--
INSERT INTO sales_invoice(
	sales_id,
	amount,
	purchase_date,
	serial_id,
	staff_id,
	customer_id
	
	
)

VALUES(
	1,
	55000,
	'12-18-2019',
	1001,
	1,
	1
	

)

INSERT INTO sales_invoice(
	sales_id,
	amount,
	purchase_date,
	serial_id,
	staff_id,
	customer_id
	
	
)

VALUES(
	2,
	65000,
	'1-11-2019',
	1002,
	2,
	2
	

)
--Insert DATA into mechanic record table--
INSERT INTO mechanic_record(
	record_id,
	service_id,
	mechanic_id
	

)

VALUES(
	1,
	1,
	1

)

INSERT INTO mechanic_record(
	record_id,
	service_id,
	mechanic_id
	

)

VALUES(
	2,
	2,
	2

)


--Insert DATA into mechanic table--
INSERT INTO mechanic(
	mechanic_id,
	first_name,
	last_name,
	email,
	address,
	phone
)

VALUES(
	1,
	'Harold',
	'Peterson',
	'hp3434@gmail.com',
	'5676 N Bord, Chicago, IL 60632',
	'773-888-9999'
)

INSERT INTO mechanic(
	mechanic_id,
	first_name,
	last_name,
	email,
	address,
	phone
)

VALUES(
	2,
	'Chris',
	'Matano',
	'chrismatano11@gmail.com',
	'9900 S Parson, Chicago, IL 60632',
	'773-344-9988'
)




--Insert DATA into service info table--
INSERT INTO service_invoice(
	service_id,
	order_date,
	amount,
	total_cost,
	description,
	customer_id

)

VALUES(
	1,
	'2019-06-15',
	'35.00',
	'35.00',
	'oil change',
	1
	
	
	
)

INSERT INTO service_invoice(
	service_id,
	order_date,
	amount,
	total_cost,
	description,
	customer_id

)

VALUES(
	2,
	'2019-03-27',
	'25.00',
	'25.00',
	'check brakes',
	2
	
	
	
)


--Insert DATA into parts table--
INSERT INTO parts(
	parts_id,
	part_type,
	part_price,
	service_id
	
)

VALUES(
	1,
	'tires',
	120,
	1

)

INSERT INTO parts(
	parts_id,
	part_type,
	part_price,
	service_id
	
)

VALUES(
	2,
	'glass window',
	80,
	2

)
