-- insert data scripts
INSERT INTO warehouse (warehouse_id, address, phone) VALUES
(1, '648 E 800 S, Orem, UT', '234-123-4567'),
(2, '2400 Monument Blvd, Concord, CA', '455-987-6543'),
(3, '198 N 1200 E, Lehi, UT', '123-222-3333'),
(4, '3 Chome-1-4 Kawasaki, Kanagawa 210-0832, Japan', '901-444-5555'),
(5, '555 Maple St, Citytown', '456-797-8888');

INSERT INTO members (member_id, first_name, last_name, address, phone, warehouse_id) VALUES
(13579246, 'Emily', 'Taylor', '2222 Elm Street, Chicago, IL', '481-932-6754', 1),
(24681357, 'William', 'Anderson', '3333 Maple Avenue, Atlanta, GA', '706-548-2193', 2),
(98765432, 'Sophia', 'Moore', '4444 Oak Lane, Denver, CO', '916-327-8405', 3),
(87654321, 'Alexander', 'Wilson', '5555 Pine Road, Detroit, MI', '503-976-1284', 4),
(56789123, 'Charlotte', 'Jackson', '6666 Cedar Boulevard, Philadelphia, PA', '724-615-3890', 5),
(43215678, 'Mason', 'White', '7777 Willow Drive, Phoenix, AZ', '316-854-9702', 1),
(78901234, 'Ava', 'Harris', '8888 Birch Street, Dallas, TX', '208-539-7614', 2),
(21987654, 'Ethan', 'Martin', '9999 Elm Avenue, Miami, FL', '625-731-0948', 3),
(98761234, 'Amelia', 'Thompson', '1010 Oak Boulevard, San Francisco, CA', '409-287-6135', 4),
(74185296, 'Oliver', 'Garcia', '1111 Maple Court, Seattle, WA', '942-631-8075', 5),
(15975346, 'Emma', 'Martinez', '1212 Pine Lane, Boston, MA', '537-408-9612', 1),
(36925814, 'Liam', 'Jones', '1313 Cedar Street, Houston, TX', '165-792-4803', 2),
(75395128, 'Avery', 'Lee', '1414 Willow Avenue, Nashville, TN', '812-495-3670', 3),
(85296314, 'Harper', 'Brown', '1515 Elm Lane, Minneapolis, MN', '946-712-3805', 4),
(45678912, 'Evelyn', 'Davis', '1616 Birch Road, Portland, OR', '734-890-2561', 5);

INSERT INTO department (dept_id, dept_name, phone_ext, warehouse_id) VALUES
(1, 'Membership', '588', 1),  
(2, 'Front End', '217', 1), 
(3, 'Pharmacy', '313', 1), 
(4, 'Foods', '805', 1), 
(5, 'Deli', '398', 1), 
(6, 'Meat', '191', 1), 
(7, 'Bakery', '152', 1), 
(8, 'Hardlines', '947', 1), 
(9, 'Optical', '356', 1), 
(10, 'Hearing Aid', '963', 1);

INSERT INTO employee (employee_id, first_name, last_name, job_title, wage, phone, address, dept_id) VALUES
(1234567, 'John', 'Smith', 'Store Manager', 60000.00, '212-555-1234', '123 Main St, Seattle, WA', 1),
(2345678, 'Emily', 'Johnson', 'Assistant Manager', 45000.00, '415-555-2345', '456 Elm St, San Francisco, CA', 2),
(3456789, 'Michael', 'Williams', 'Cashier', 30000.00, '312-555-3456', '789 Oak St, Chicago, IL', 3),
(4567890, 'Sarah', 'Brown', 'Stock Clerk', 32000.00, '832-555-4567', '123 Pine St, Houston, TX', 4),
(5678901, 'David', 'Jones', 'Pharmacy Technician', 40000.00, '305-555-5678', '456 Maple St, Miami, FL', 5),
(6789012, 'Olivia', 'Garcia', 'Bakery Associate', 32000.00, '206-555-6789', '789 Cedar St, Seattle, WA', 6),
(7890123, 'Daniel', 'Martinez', 'Optician', 42000.00, '310-555-7890', '123 Elm St, Los Angeles, CA', 7),
(8901234, 'Ava', 'Lopez', 'Tire Sales Associate', 35000.00, '404-555-8901', '456 Oak St, Atlanta, GA', 8),
(9012345, 'Noah', 'Nguyen', 'Food Service Assistant', 31000.00, '713-555-9012', '789 Pine St, Houston, TX', 9),
(9876543, 'Sophia', 'Wang', 'Electronics Sales Associate', 38000.00, '702-555-9876', '123 Maple St, Las Vegas, NV', 10);

INSERT INTO items (item_id, item_name, price, item_desc, quantity, dept_id) VALUES
(1, 'Kirkland Signature Organic Olive Oil', 12.99, 'Cold-pressed, high-quality olive oil.', 100, 1),
(2, 'Samsung 65-inch 4K UHD Smart TV', 899.99, 'Crystal-clear picture quality and smart functionality.', 50, 2),
(3, 'Calvin Klein Men\'s Slim-Fit Dress Shirt', 49.99, 'Professional and stylish dress shirt for men.', 80, 3),
(4, 'Cuisinart 14-Cup Stainless Steel Food Processor', 149.95, 'Versatile and powerful food processor for your kitchen.', 30, 4),
(5, 'Ashley Furniture Larkinhurst Sofa', 649.99, 'Classic sofa with a weathered faux leather look.', 25, 5),
(6, 'Harry Potter Complete Book Collection', 69.99, 'The entire Harry Potter series in a beautiful box set.', 120, 6),
(7, '1/4 Carat Diamond Stud Earrings', 199.99, 'Timeless and elegant diamond stud earrings.', 40, 7),
(8, 'Yeti Tundra 65 Cooler', 349.99, 'High-quality cooler with superior ice retention.', 15, 8),
(9, 'Bose QuietComfort 35 Wireless Headphones II', 299.00, 'Top-tier noise-canceling headphones for immersive listening.', 50, 9),
(10, 'DeWalt 20V MAX Cordless Drill Combo Kit', 199.00, 'Powerful drill kit for various home projects.', 35, 10),
(11, 'Kirkland Signature Organic Coconut Water', 9.99, 'Refreshing and hydrating coconut water.', 120, 1),
(12, 'Sony PlayStation 5 Console', 499.99, 'Next-gen gaming console for immersive gaming experiences.', 20, 2),
(13, 'Adidas Men\'s Ultraboost Running Shoes', 179.95, 'Comfortable and responsive running shoes for men.', 70, 3),
(14, 'Instant Pot Duo 7-in-1 Electric Pressure Cooker', 79.95, 'Versatile pressure cooker for fast and easy meals.', 40, 4),
(15, 'Dyson V11 Torque Drive Cordless Vacuum', 599.99, 'Powerful cordless vacuum with intelligent suction.', 30, 5),
(16, 'Canon EOS Rebel T7 DSLR Camera', 549.00, 'Entry-level DSLR camera for beginners and enthusiasts.', 25, 6),
(17, 'Michael Kors Women\'s Jet Set Tote Bag', 148.00, 'Chic and spacious tote bag for daily use.', 60, 7),
(18, 'YETI Rambler 30 oz Tumbler', 34.99, 'Insulated tumbler for hot and cold beverages.', 100, 8),
(19, 'Apple AirPods Pro', 249.00, 'Wireless earbuds with active noise cancellation.', 45, 9),
(20, 'Black+Decker 20V MAX Drill & Home Tool Kit', 79.00, 'Compact and versatile tool kit for home repairs.', 40, 10);

INSERT INTO orders (order_id, order_date, total, member_id) VALUES
(1, '2023-06-20', 45.98, 45678912),
(2, '2023-07-12', 899.99, 56789123),
(3, '2023-08-05', 69.99, 15975346),
(4, '2023-09-15', 149.95, 78901234),
(5, '2023-10-02', 199.99, 45678912);

INSERT INTO ordered_items (order_id, item_id, quantity) VALUES
(1, 1, 1),
(1, 6, 2),
(2, 12, 1),
(3, 3, 1),
(3, 17, 2),
(4, 2, 1),
(4, 9, 1),
(5, 14, 1),
(5, 20, 2),
(1, 4, 1),
(2, 8, 1),
(2, 15, 1),
(3, 5, 1),
(4, 10, 1),
(4, 18, 1),
(5, 11, 1),
(1, 7, 1),
(2, 13, 1),
(3, 16, 1),
(5, 19, 1);

INSERT INTO shipment (shipment_id, courrier, receive_date, warehouse_id) VALUES
(1, 'Swift', '2023-01-15', 1),
(2, 'Werner Enterprises', '2023-02-20', 1),
(3, 'Hamlin Hamlin McGill', '2023-03-10', 2),
(4, 'J.B. Hunt Transport', '2023-04-05', 3),
(5, 'C.R. England', '2023-05-18', 1);

INSERT INTO shipped_items (shipment_id, item_id, quantity) VALUES
(1, 1, 1),
(1, 2, 2),
(1, 3, 1),
(1, 4, 3),
(2, 5, 1),
(2, 6, 1),
(2, 7, 2),
(2, 8, 1),
(3, 9, 2),
(3, 10, 1),
(3, 11, 1),
(3, 12, 2),
(4, 13, 1),
(4, 14, 1),
(4, 15, 2),
(4, 16, 1),
(5, 17, 1),
(5, 18, 2),
(5, 19, 1),
(5, 20, 1);