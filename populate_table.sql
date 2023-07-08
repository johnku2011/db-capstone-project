#*******************************************************#
# Insert query to populate "Menu" table:
#*******************************************************#
INSERT INTO littlelemondb.menu (menu_id,type,name)
VALUES
(1, 'Starters','Olives'),
(2,'Starters','Flatbread'),
(3,'Starters','Minestrone'),
(4,'Starters','Tomato bread'),
(5, 'Starters','Falafel');

#*******************************************************#
# Insert query to populate "Orders" table:
#*******************************************************#
SET FOREIGN_KEY_CHECKS=0;
INSERT INTO littlelemondb.orders (order_id, order_date, quantity, total_cost, menu_id, booking_id)
VALUES
(1, '2023-01-05 00:00:00', 2, 4, 1, 2),
(2, '2023-01-01 00:00:00', 1, 10, 11, 4),
(3, '2023-01-02 00:00:00', 3, 4, 2, 3),
(4, '2023-01-03 00:00:00', 32, 4, 3, 5),
(5, '2023-01-05 00:00:00', 22, 4, 2, 6);

SET FOREIGN_KEY_CHECKS=1;
#*******************************************************#
# Insert query to populate "Employees" table:
#*******************************************************#
insert_employees = """
INSERT INTO employees (EmployeeID, Name, Role, Address, Contact_Number, Email, Annual_Salary)
VALUES
(01,'Mario Gollini','Manager','724, Parsley Lane, Old Town, Chicago, IL',351258074,'Mario.g@littlelemon.com','$70,000'),
(02,'Adrian Gollini','Assistant Manager','334, Dill Square, Lincoln Park, Chicago, IL',351474048,'Adrian.g@littlelemon.com','$65,000'),
(03,'Giorgos Dioudis','Head Chef','879 Sage Street, West Loop, Chicago, IL',351970582,'Giorgos.d@littlelemon.com','$50,000'),
(04,'Fatma Kaya','Assistant Chef','132  Bay Lane, Chicago, IL',351963569,'Fatma.k@littlelemon.com','$45,000'),
(05,'Elena Salvai','Head Waiter','989 Thyme Square, EdgeWater, Chicago, IL',351074198,'Elena.s@littlelemon.com','$40,000'),
(06,'John Millar','Receptionist','245 Dill Square, Lincoln Park, Chicago, IL',351584508,'John.m@littlelemon.com','$35,000');"""


#*******************************************************#
# Insert query to populate "bookings" table:
#*******************************************************#
SET FOREIGN_KEY_CHECKS=0;
INSERT INTO littlelemondb.bookings (booking_id, order_date, table_number, staff_id, customer_id)
VALUES
(1, '2023-01-05 00:00:00', 1, 1, 2),
(2, '2023-01-01 00:00:00', 2, 11, 4),
(3, '2023-01-02 00:00:00', 3, 2, 3),
(4, '2023-01-03 00:00:00', 4, 3, 5),
(5, '2023-01-05 00:00:00', 5, 2, 6);