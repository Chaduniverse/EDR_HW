-- #insert into our tables    
INSERT INTO customer(
    first_name, 
    last_name, 
    last_visited,
    gold_rewards_member,
    email,
    phone_number
)
VALUES (
    'John',
    'Melvin',
    '2023-02-14', 
    'yes',
    'seanjohn82@hotmail.com',
    '912-612-6666' 
),  
(   
 'Lisa',
 'Sumter',
 '2023-01-24', 
 'no', 
 'lisalisa76789@gmail.com', 
 '555-346-9876'
); 

INSERT INTO Order_info(
    ticket_A_price,
    ticket_typeA_quantity,
    ticket_B_price,
    ticket_typeB_quantity,
    amount_paid,
    gold_rewards_member
    

)
VALUES (
    12.99,
    2,
    7.99,
    0,
    27.12,
    'yes'
    );

INSERT INTO Tickets(
    quantity,
    ticket_typeA_quantity,
    ticket_typeB_quantity,
    ticket_A_price,
    ticket_B_price,
    number_of_tickets_sold,
    gross_income,
    date_info
) Values (
    2500, 
    1250,
    1250,
    13.99,
    8.99,
    237,
    3315.63,
    '2023-02-22'
);
SELECT * 
FROM Tickets;   

INSERT INTO Movies (
    name_of_movie, 
    theater_number, 
    number_of_tickets_sold
) VALUES (
    'Black Panther: Wakanda Forever',
    'Theater 12',
    120
);  

INSERT INTO concessions (
    product, 
    cost,
    quantity_sold,
    amount_paid
) VALUES (
    'Popcorn',
    10.99,
    2,
    22.97
),(
    'Soda',
    6.99,
    2,
    13.57

);