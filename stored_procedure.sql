/*Get Max Quantity Stored Procedures*/
CREATE DEFINER=`course`@`%` PROCEDURE `GetMaxQuantity`()
SELECT MAX(quantity) as MaxQuantity FROM littlelemondb.orders;

/*Get Get Order Detail Prepared Statements*/
PREPARE GetOrderDetail FROM 'SELECT * FROM orders Where order_id = ?';
SET @id = 1;
EXECUTE GetOrderDetail USING @id;
DEALLOCATE PREPARE GetOrderDetail;

/*Get Cancel Order Stored Procedures*/
CREATE DEFINER=`course`@`%` PROCEDURE `CancelOrder`(IN input_order_id bigint)
DELETE FROM littlelemondb.orders
where order_id = input_order_id;

/*Get Cancel Booking Stored Procedures*/
CREATE DEFINER=`course`@`%` PROCEDURE `CancelBooking`(IN input_booking_id bigint)
DELETE FROM littlelemondb.bookings
where booking_id = input_booking_id;

/*Get Update Booking Stored Procedures*/
CREATE DEFINER=`course`@`%` PROCEDURE `UpdateBooking`(IN input_booking_id bigint, IN new_order_date datetime)
Update littlelemondb.bookings
Set order_date = new_order_date
where booking_id = input_booking_id;

/*Get Add Booking Stored Procedures*/
CREATE DEFINER=`course`@`%` PROCEDURE `AddBooking`(
IN input_booking_id bigint
, IN input_order_date datetime
, IN input_table_number bigint
, IN input_staff_id bigint
, IN input_customer_id bigint
)
INSERT INTO littlelemondb.bookings (booking_id, order_date, table_number, staff_id, customer_id)
VALUES
(input_booking_id, input_order_date, input_table_number, input_staff_id, input_customer_id);


