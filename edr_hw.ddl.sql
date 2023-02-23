CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY, 
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    last_visited DATE,
    email VARCHAR(100),
    phone_number VARCHAR(18)
);  

CREATE TABLE Tickets(
    tickets_id SERIAL PRIMARY KEY,
    quantity INT,
    ticket_typeA_quantity INT,
    ticket_typeB_quantity INT, 
    ticket_A_price MONEY,
    ticket_B_price MONEY, 
    number_of_tickets_sold INT, 
    gross_income MONEY,
    date_info DATE);   


 CREATE TABLE order_info(
    order_id SERIAL PRIMARY KEY,
    ticket_id INT,
    FOREIGN KEY(ticket_id) REFERENCES Tickets(tickets_id), 
    ticket_A_price MONEY,  
    ticket_typeA_quantity INT, 
    ticket_B_price MONEY,
    ticket_typeB_quantity INT,
    amount_paid MONEY, 
    gold_rewards_member VARCHAR(50),
    date_info DATE
 );

CREATE TABLE Concessions(
    concessions_id SERIAL PRIMARY KEY, 
    order_number SERIAL,
    product VARCHAR(100),
    quantity_sold INT, 
    amount_paid MONEY   
)  

CREATE TABLE Movies(
    movie_id SERIAL PRIMARY KEY,  
    name_of_movie VARCHAR(100), 
    theater_number VARCHAR(50),
    number_of_tickets_sold INT
);

# Fix tables 2 add FK constraints 
ALTER TABLE Movies
ADD FOREIGN KEY(number_of_tickets_sold) REFERENCES Tickets(tickets_id);  

ALTER TABLE Order_info 
ADD FOREIGN KEY(ticket_typeA_quantity) REFERENCES Tickets(tickets_id);  

ALTER TABLE Order_info 
ADD FOREIGN KEY(ticket_typeB_quantity) REFERENCES Tickets(tickets_id);    

ALTER TABLE Order_info 
ADD customer_id INT;   

ALTER TABLE Order_info 
ADD FOREIGN KEY(customer_id) REFERENCES Customer(customer_id);    

ALTER TABLE customer 
ALTER COLUMN first_name  SET NOT NULL;  

ALTER TABLE customer 
ALTER COLUMN last_name  SET NOT NULL;   

ALTER TABLE customer 
ADD gold_rewards_member  VARCHAR(4);  

ALTER TABLE Movies
DROP KEY number_of_tickets_sold;  


