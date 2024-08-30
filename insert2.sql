INSERT INTO (authorID, a_name, surname)
VALUES
('A001', 'F. Scott', 'Fitzgerald'),
('A002', 'George', 'Orwell'),
('A003', 'Harper', 'Lee'),
('A004', 'Jane', 'Austen'),
('A005', 'J.D.', 'Salinger'),
('A006', 'J.R.R.', 'Tolkien'),
('A007', 'J.K.', 'Rowling'),
('A008', 'Ernest', 'Hemingway'),
('A009', 'Toni', 'Morrison'),
('A010', 'Gabriel', 'Garc’a M‡rquez');

INSERT INTO dbo.Book (bookID, title, book_type, b_language, num_of_pages, ratings, FKauthorID)
VALUES
('B001', 'The Great Gatsby', 'Fiction', 'Polish', 180, 4.5, 'A001'),
('B002', '1984', 'Dystopian', 'English', 328, 4.8, 'A002'),
('B003', 'To Kill a Mockingbird', 'Fiction', 'Polish', 281, 4.7, 'A003'),
('B004', 'Pride and Prejudice', 'Romance', 'English', 432, 4.6, 'A004'),
('B005', 'The Catcher in the Rye', 'Fiction', 'Polish', 224, 4.4, 'A005'),
('B006', 'Brave New World', 'Dystopian', 'English', 325, 4.6, 'A002'),
('B007', 'The Hobbit', 'Fantasy', 'Polish', 310, 4.9, 'A006'),
('B008','The Lord of the Rings', 'Fantasy', 'English', 1200, 4.9, 'A006'),
('B009', 'Harry Potter and the Philosopher''s Stone', 'Fantasy', 'Polish', 336, 4.7, 'A007'),
('B010', 'Animal Farm', 'Allegory', 'English', 112, 4.5, 'A002'),
('B011', 'The Old Man and the Sea', 'Fiction', 'Polish', 127, 4.1, 'A008'),
('B012', 'Beloved', 'Fiction', 'English', 321, 4.3, 'A009'),
('B013', 'One Hundred Years of Solitude', 'Magical Realism', 'Spanish', 417, 4.5, 'A010'),
('B014', 'The Norton Anthology of English Literature', 'collection of novels', 'Polish', 417, 4.5, 'A010'),
('B015', 'The Portable Dorothy Parker', 'collection of short stories', 'English', 417, 4.5, 'A010'),
('B016', 'The Best American Short Stories of the Century', 'short stories', 'Polish', 417, 4.5, 'A010'),
('B017', 'The Penguin Book of Modern British Short Stories', 'short stories', 'English', 417, 4.5, 'A010'),
('B018', 'THe Oxford Book of American Poetry', 'poems', 'Polish', 417, 4.5, 'A010');

INSERT INTO Literary_Work (literary_workID, title, publishing_year, literary_period)
VALUES
('LW01', 'The Great Gatsby', 1925, 'Modernist'),
('LW02', '1984', 1949, 'Modernist'),
('LW03', 'To Kill a Mockingbird', 1960, 'Contemporary'),
('LW04', 'Pride and Prejudice', 1813, 'Regency'),
('LW05', 'The Catcher in the Rye', 1951, 'Contemporary'),
('LW06', 'Brave New World', 1932, 'Modernist'),
('LW07', 'The Hobbit', 1937, 'Modernist'),
('LW08', 'The Lord of the Rings', 1954, 'Contemporary'),
('LW09', 'Harry Potter and the Philosopher''s Stone', 1997, 'Contemporary'),
('LW10', 'Animal Farm', 1945, 'Modernist'),
('LW11', 'The Old Man and the Sea', 1952, 'Contemporary'),
('LW12', 'Beloved', 1987, 'Contemporary'),
('LW13', 'One Hundred Years of Solitude', 1967, 'Contemporary'),
('LW14', 'Pride and Prejudice', 1813, 'Regency'),
('LW15', 'Big *****', 1929, 'Modernist'),
('LW16', 'The Swimmer', 1964, 'Contemporary'),
('LW17', 'The Flypaper', 1981, 'Contemporary'),
('LW18', 'The Waste Land', 1922, 'Modernist');


INSERT INTO Affiliation
VALUES
('B001', 'LW01'),
('B002', 'LW02'),
('B003', 'LW03'),
('B004', 'LW04'),
('B005', 'LW05'),
('B006', 'LW06'),
('B007', 'LW07'),
('B008', 'LW08'),
('B009', 'LW09'),
('B010', 'LW10'),
('B011', 'LW11'),
('B012', 'LW12'),
('B013', 'LW13'),
('B014', 'LW14'),
('B015', 'LW15'),
('B016', 'LW16'),
('B017', 'LW17'),
('B018', 'LW18');

INSERT INTO dbo.Customer
VALUES
('C001', 'John', 'Doe', 'john@gmail.com'),
('C002', 'Alice', 'Smith', 'alice@gmail.com'),
('C003', 'Bob', 'Johnson', 'bob@gmail.com'),
('C004', 'Emily', 'Brown', 'emily@gmail.com'),
('C005', 'Michael', 'Davis', 'michael@gmail.com'),
('C006', 'Sophia', 'Wilson', 'sophia@gmail.com'),
('C007', 'William', 'Clark', 'william@gmail.com'),
('C008', 'Olivia', 'Martinez', 'olivia@gmail.com'),
('C009', 'James', 'Taylor', 'james@gmail.com'),
('C010', 'Ava', 'Thomas', 'ava@gmail.com');

INSERT INTO dbo.Warehouse
VALUES
('W001', 'ul. Marszalkowska 1, Warsaw, Poland'),
('W002',  'ul. Szewska 7, Krakow, Poland'),
('W003', 'ul. Targ Rybny 6, Gdansk, Poland'),
('W004', 'ul. Ruska 45, Wroclaw, Poland'),
('W005', 'ul. Paderewskiego 8, Poznan, Poland'),
('W006', 'ul. Nowogrodzka 50, Warsaw, Poland'),
('W007', 'ul. Floriana 12, Krakow, Poland'),
('W008', 'ul. Dlugie Pobrzeze 15, Gdansk, Poland'),
('W009', 'ul. Kazimierza Wielkiego 10, Wroclaw, Poland'),
('W010', 'ul. Swiety Marcin 80, Poznan, Poland');

INSERT INTO dbo.Price_offer
VALUES
('P001', 15.99, NULL, NULL, 'B001'),
('P002', 12.49, 10.99, '2023-12-29', 'B002'),
('P003', 10.99, NULL, NULL, 'B003'),
('P004', 14.79, NULL, NULL, 'B004'),
('P005', 9.99, 14.49, '2023-05-18', 'B005'),
('P006', 13.29, 12.99, '2023-06-22', 'B006'),
('P007', 19.99, NULL, NULL, 'B007'),
('P008', 24.99, 22.99, '2023-08-05', 'B008'),
('P009', 16.49, 19.79, '2023-09-12', 'B009'),
('P010', 11.99, 10.39, '2023-11-25', 'B010'),
('P011', 18.49, NULL, NULL, 'B011'),
('P012', 22.99, 17.49, '2023-12-01', 'B012'),
('P013', 20.79, 19.29, '2023-12-10', 'B013'),
('P014', 22.99, 17.49, '2023-12-01', 'B014'),
('P015', 22.99, 17.49, '2023-12-01', 'B015'),
('P016', 17.49, 22.99, '2023-12-08', 'B016'),
('P017', 22.99, 17.49, '2023-12-01', 'B017'),
('P018', 22.99, 17.49, '2023-12-01', 'B018');

INSERT INTO Delivery_company
VALUES
('DC01', 'Inpost', '+48123456789', 'Lodz'),
('DC02', 'Inpost', '+48123456789', 'Warsaw'),
('DC03', 'Inpost', '+48123456789', 'Gdansk'),
('DC04', 'Inpost', '+48123456789', 'Krakow'),
('DC05', 'Inpost', '+48123456789', 'Wroclaw'),
('DC06', 'Inpost', '+48123456789', 'Poznan');

INSERT INTO dbo.Delivery(deliveryID, part_num, adress, stat, FKcustomerID)
VALUES
('D001', 1, 'ul. Rysy 8, Lodz, Poland', 'Pending', 'C001'),
('D002', 2, 'ul. Mickiewicza 21, Gdansk, Poland',  'Pending', 'C002'),
('D003', 1, 'ul. Gdanska 12, Gdansk, Poland',  'Pending', 'C003'),
('D004', 3, 'ul. Krakowska 7, Krakow, Poland', 'Pending', 'C004'),
('D005', 1, 'ul. Piotrkowska 15, Lodz, Poland', 'Pending', 'C005'),
('D006', 2, 'ul. Wojska Polskiego 3, Wroclaw, Poland', 'Pending', 'C006'),
('D007', 1, 'ul. Podwale 5, Warsaw, Poland',  'Pending', 'C007'),
('D008', 3, 'ul. Dworcowa 18, Gdansk, Poland',  'Delivered', 'C008'),
('D009', 2, 'ul. Sienkiewicza 10, Krakow, Poland',  'Pending', 'C009'),
('D010', 1, 'ul. Roosevelta 22, Poznan, Poland', 'Shipped', 'C010'),
('D011', 3, 'ul. Dworcowa 18, Gdansk, Poland',  'Delivered', 'C001'),
('D012', 2, 'ul. Mickiewicza 21, Gdansk, Poland',  'Pending', 'C002'),
('D013', 2, 'ul. Sienkiewicza 10, Krakow, Poland',  'Pending', 'C003');

INSERT INTO dbo.Order_(orderID, order_date, quantity, total_cost, stat, FKcustomerID, FKdeliveryID)
VALUES
('O001', '2023-01-05', 3, 39.47, 'Pending',  'C001', 'D001'),
('O002', '2023-02-10', 2, 39.98, 'Completed',  'C002', 'D002'),
('O003', '2023-03-15', 1, 10.99, 'Pending',  'C003', 'D003'),
('O004', '2023-04-20', 4, 71.36, 'Completed', 'C004', 'D004'),
('O005', '2023-05-25', 2, 22.98, 'Pending',  'C005', 'D005'),
('O006', '2023-06-30', 3, 56.27, 'Completed',  'C006', 'D006'),
('O007', '2023-07-05', 1, 10.39, 'Pending',  'C007', 'D007'),
('O008', '2023-08-10', 1, 17.49, 'Completed',  'C008', 'D008'),
('O009', '2023-09-15', 2, 24.28, 'Pending',  'C009', 'D009'),
('O010', '2023-10-20', 3, 38.47, 'Completed', 'C010', 'D010'),
('O011', '2023-12-04', 3, 38.47, 'Completed', 'C001', 'D011'),
('O012', '2023-12-10', 3, 38.47, 'Completed', 'C005', 'D012'),
('O013', '2023-12-17', 3, 38.47, 'Completed', 'C006', 'D013');



INSERT INTO dbo.Order_position(productID, quantity, FKorderID, FKpriceID)
VALUES
('OP01', 1, 'O001', 'P001'),
('OP02', 1, 'O001', 'P002'),
('OP03', 1, 'O001', 'P003'),
('OP04', 2, 'O002', 'P007'),
('OP05', 1, 'O003', 'P003'),
('OP06', 1, 'O004', 'P009'),
('OP07', 2, 'O004', 'P013'),
('OP08', 1, 'O004', 'P006'),
('OP09', 1, 'O005', 'P006'),
('OP10', 1, 'O005', 'P005'),
('OP11', 1, 'O006', 'P011'),
('OP12', 1, 'O006', 'P004'),
('OP13', 1, 'O006', 'P008'),
('OP14', 1, 'O007', 'P010'),
('OP15', 1, 'O008', 'P012'),
('OP16', 1, 'O009', 'P006'),
('OP17', 1, 'O009', 'P003'),
('OP18', 2, 'O010', 'P005'),
('OP19', 1, 'O010', 'P011'),
('OP20', 1, 'O011', 'P016'),
('OP21', 1, 'O011', 'P007'),
('OP22', 1, 'O011', 'P008'),
('OP23', 1, 'O012', 'P016'),
('OP24', 1, 'O012', 'P015'),
('OP25', 1, 'O012', 'P018'),
('OP26', 1, 'O013', 'P016'),
('OP27', 1, 'O013', 'P011'),
('OP28', 1, 'O013', 'P011');


INSERT INTO dbo.Product_placement
VALUES
('OP01', 'W009'),
('OP02', 'W001'),
('OP03', 'W010'),
('OP04', 'W002'),
('OP05', 'W003'),
('OP06', 'W001'),
('OP07', 'W008'),
('OP08', 'W006'),
('OP09', 'W005'),
('OP10', 'W005'),
('OP11', 'W005'),
('OP12', 'W004'),
('OP13', 'W009'),
('OP14', 'W007'),
('OP15', 'W001'),
('OP16', 'W004'),
('OP17', 'W006'),
('OP18', 'W008'),
('OP19', 'W009'),
('OP20', 'W005'),
('OP21', 'W005'),
('OP22', 'W004'),
('OP23', 'W009'),
('OP24', 'W007'),
('OP25', 'W001'),
('OP26', 'W004'),
('OP27', 'W006'),
('OP28', 'W008');


INSERT INTO Payment (paymentID, ammount, date_ofpayment, stat, method, FKcustomerID, FKorderID)
VALUES
('P001', 39.47, '2023-01-06', 'Completed', 'Credit Card', 'C001', 'O001'),
('P002', 39.98, '2023-02-12', 'Completed', 'PayPal', 'C002', 'O002'),
('P003', 10.99, '2023-03-18', 'Pending', 'Cash', 'C003', 'O003'),
('P004', 71.36, '2023-04-25', 'Completed', 'Credit Card', 'C004', 'O004'),
('P005', 22.98, '2023-05-28', 'Pending', 'Cash', 'C005', 'O005'),
('P006', 56.27, '2023-07-03', 'Completed', 'Credit Card', 'C006', 'O006'),
('P007', 10.39, '2023-07-08', 'Pending', 'PayPal', 'C007', 'O007'),
('P008', 17.49, '2023-08-15', 'Completed', 'Credit Card', 'C008', 'O008'),
('P009', 24.28, '2023-09-20', 'Pending', 'Cash', 'C009', 'O009'),
('P010', 38.47, '2023-10-25', 'Completed', 'Credit Card', 'C010', 'O010'),
('P011', 38.47, '2023-12-05', 'Completed', 'Credit Card', 'C001', 'O011'),
('P012', 38.47, '2023-12-12', 'Completed', 'PayPal', 'C005', 'O012'),
('P013', 38.47, '2023-12-19', 'Completed', 'Credit Card', 'C006', 'O013');