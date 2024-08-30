
/* 1 join*/
/* lists products of order O004*/
SELECT Order_position.*, Book.title AS product_title
FROM Order_position 
JOIN Order_  ON Order_position.FKorderID = Order_.orderID
JOIN Price_offer ON Order_position.FKpriceID = Price_offer.priceID
JOIN Book ON Price_offer.FKbookID = Book.bookID
WHERE Order_.FKcustomerID = 'C004';

/* 1 aregatte function, 1 join, 1 order by*/
-- ranking of books that were ordered the most with respect to genre
SELECT Book.book_type AS genre, SUM(Order_position.quantity) AS total_quantity_sold
FROM Order_position
JOIN Price_offer ON Order_position.FKpriceID = Price_offer.priceID
JOIN Book ON Price_offer.FKbookID = Book.bookID
GROUP BY Book.book_type
ORDER BY SUM(Order_position.quantity) DESC;


/* 1 agregate function,  1 grouping*/
-- lists orders that were placed after a specific date
SELECT Order_.orderID, Order_.order_date, COUNT(Order_position.productID) AS order_positions_count
FROM Order_ 
LEFT JOIN Order_position  ON Order_.orderID = Order_position.FKorderID
WHERE Order_.order_date > '2023-06-15'
GROUP BY Order_.orderID, Order_.order_date, Order_.stat;


-- 1 subquery
-- listing the content of the orders from the previous query
SELECT Order_position.productID, Order_position.quantity, Order_position.FKorderID, Book.title
FROM Order_position
JOIN Price_offer ON Order_position.FKpriceID = Price_offer.priceID
JOIN Book ON Price_offer.FKbookID = Book.bookID
WHERE Order_position.FKorderID IN (
    SELECT Order_.orderID
    FROM Order_
    WHERE Order_.order_date > '2023-06-15'
);


-- 1 group BY
--ranking of months in which the greatest number of orders was placed
SELECT MONTH(Order_.order_date) AS MONTH,
       SUM(Order_position.quantity) AS total_products_ordered,
       COUNT(DISTINCT Order_.orderID) AS number_of_orders
FROM Order_
JOIN Order_position ON Order_.orderID = Order_position.FKorderID 
GROUP BY MONTH(Order_.order_date)
ORDER BY SUM(Order_position.quantity) DESC;


-- 1 subquery
-- for spwcific order, showing the adress of order and products' placements
SELECT Order_.orderID, Delivery.adress AS delivery_adress, Order_position.productID, Warehouse.adress AS warehouse_adress
FROM Delivery
JOIN Order_ ON Delivery.deliveryID = Order_.FKdeliveryID
JOIN Order_position ON Order_.orderID = Order_position.FKorderID
JOIN (
    SELECT FKproductID, FKwarehouseID
    FROM Product_placement
) AS Product_placement_sub 
    ON Order_position.productID = Product_placement_sub.FKproductID
JOIN Warehouse ON Product_placement_sub.FKwarehouseID = Warehouse.warehouseID
WHERE Delivery.deliveryID = 'D001';


-- compares number of orders before and after change of price
SELECT
    COUNT(CASE WHEN Order_.order_date < Price_offer.date_of_change THEN 1 END) AS orders_before_change,
    COUNT(CASE WHEN Order_.order_date >= Price_offer.date_of_change THEN 1 END) AS orders_after_change,
    Price_offer.date_of_change, Price_offer.curr_p, Price_offer.prev_p
FROM Price_offer
JOIN Order_position ON Price_offer.priceID = Order_position.FKpriceID
JOIN Order_ ON Order_position.FKorderID = Order_.orderID
WHERE Price_offer.priceID = 'P016'
GROUP BY Price_offer.date_of_change, Price_offer.curr_p, Price_offer.prev_p;

