-- USE test;
-- CREATE TABLE Customers(
--   CustomerID INT PRIMARY KEY,
--   CustomerName VARCHAR(255),
--   Address VARCHAR(255),
--   City VARCHAR(63),
--   Country VARCHAR(63)
-- );

-- CREATE TABLE Products(
--   ProductID INT PRIMARY KEY,
--   ProductName VARCHAR(255),
--   Category VARCHAR(63),
--   Unit VARCHAR(255),
--   Price DECIMAL
-- );

-- CREATE TABLE Orders(
--   OrderID INT PRIMARY KEY,
--   CustomerID INT,
--   OrderDate DATE
-- );

-- CREATE TABLE OrderDetails(
--   OrderDetailID INT PRIMARY KEY,
--   OrderID INT,
--   ProductID INT,
--   Quantity INT
-- );

INSERT INTO Customers VALUES(1, 'Alfreds Futterkiste', 'Obere Str. 57', 'Berlin', 'Germany');
INSERT INTO Customers VALUES(2, 'Ana Trujillo Emparedados y helados', 'Avda. de la Constitución 2222', 'México D.F.', 'Mexico');
INSERT INTO Customers VALUES(3, 'Antonio Moreno Taquería', 'Mataderos 2312', 'México D.F.', 'Mexico');
INSERT INTO Customers VALUES(4, 'Around the Horn', '120 Hanover Sq.', 'London', 'UK');
INSERT INTO Customers VALUES(5, 'Berglunds snabbköp', 'Berguvsvägen 8', 'Luleå', 'Sweden');
INSERT INTO Customers VALUES(6, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', 'Germany');
INSERT INTO Customers VALUES(7, 'Blondel père et fils', '24, place Kléber', 'Strasbourg', 'France');
INSERT INTO Customers VALUES(8, 'Bólido Comidas preparadas', 'C/ Araquil, 67', 'Madrid', 'Spain');
INSERT INTO Customers VALUES(9, 'Bon app''', '12, rue des Bouchers', 'Marseille', 'France');
INSERT INTO Customers VALUES(10, 'Bottom-Dollar Marketse', '23 Tsawassen Blvd.', 'Tsawassen', 'Canada');
INSERT INTO Customers VALUES(11, 'B''s Beverages', 'Fauntleroy Circus', 'London', 'UK');
INSERT INTO Customers VALUES(12, 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', 'Argentina');
INSERT INTO Customers VALUES(13, 'Centro comercial Moctezuma', 'Sierras de Granada 9993', 'México D.F.', 'Mexico');
INSERT INTO Customers VALUES(14, 'Chop-suey Chinese', 'Hauptstr. 29', 'Bern', 'Switzerland');
INSERT INTO Customers VALUES(15, 'Comércio Mineiro', 'Av. dos Lusíadas, 23', 'São Paulo', 'Brazil');
INSERT INTO Customers VALUES(16, 'Consolidated Holdings', 'Berkeley Gardens 12 Brewery', 'London', 'UK');
INSERT INTO Customers VALUES(17, 'Drachenblut Delikatessend', 'Walserweg 21', 'Aachen', 'Germany');
INSERT INTO Customers VALUES(18, 'Du monde entier', '67, rue des Cinquante Otages', 'Nantes', 'France');
INSERT INTO Customers VALUES(19, 'Eastern Connection', '35 King George', 'London', 'UK');
INSERT INTO Customers VALUES(20, 'Ernst Handel', 'Kirchgasse 6', 'Graz', 'Austria');
INSERT INTO Customers VALUES(21, 'Familia Arquibaldo', 'Rua Orós, 92', 'São Paulo', 'Brazil');
INSERT INTO Customers VALUES(22, 'FISSA Fabrica Inter. Salchichas S.A.', 'C/ Moralzarzal, 86', 'Madrid', 'Spain');
INSERT INTO Customers VALUES(23, 'Folies gourmandes', '184, chaussée de Tournai', 'Lille', 'France');
INSERT INTO Customers VALUES(24, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', 'Sweden');
INSERT INTO Customers VALUES(25, 'Frankenversand', 'Berliner Platz 43', 'München', 'Germany');
INSERT INTO Customers VALUES(26, 'France restauration', '54, rue Royale', 'Nantes', 'France');
INSERT INTO Customers VALUES(27, 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', 'Italy');
INSERT INTO Customers VALUES(28, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', 'Portugal');
INSERT INTO Customers VALUES(29, 'Galería del gastrónomo', 'Rambla de Cataluña, 23', 'Barcelona', 'Spain');
INSERT INTO Customers VALUES(30, 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', 'Spain');
INSERT INTO Customers VALUES(31, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'Brazil');
INSERT INTO Customers VALUES(32, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'USA');
INSERT INTO Customers VALUES(33, 'GROSELLA-Restaurante', '5ª Ave. Los Palos Grandes', 'Caracas', 'Venezuela');
INSERT INTO Customers VALUES(34, 'Hanari Carnes', 'Rua do Paço, 67', 'Rio de Janeiro', 'Brazil');
INSERT INTO Customers VALUES(35, 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Venezuela');
INSERT INTO Customers VALUES(36, 'Hungry Coyote Import Store', 'City Center Plaza 516 Main St.', 'Elgin', 'USA');
INSERT INTO Customers VALUES(37, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Ireland');
INSERT INTO Customers VALUES(38, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'UK');
INSERT INTO Customers VALUES(39, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', 'Germany');
INSERT INTO Customers VALUES(40, 'La corne d''abondance', '67, avenue de l''Europe', 'Versailles', 'France');
INSERT INTO Customers VALUES(41, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', 'France');
INSERT INTO Customers VALUES(42, 'Laughing Bacchus Wine Cellars', '1900 Oak St.', 'Vancouver', 'Canada');
INSERT INTO Customers VALUES(43, 'Lazy K Kountry Store', '12 Orchestra Terrace', 'Walla Walla', 'USA');
INSERT INTO Customers VALUES(44, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', 'Germany');
INSERT INTO Customers VALUES(45, 'Let''s Stop N Shop', '87 Polk St. Suite 5', 'San Francisco', 'USA');
INSERT INTO Customers VALUES(46, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Venezuela');
INSERT INTO Customers VALUES(47, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Venezuela');
INSERT INTO Customers VALUES(48, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'USA');
INSERT INTO Customers VALUES(49, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', 'Italy');
INSERT INTO Customers VALUES(50, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', 'Belgium');
INSERT INTO Customers VALUES(51, 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Canada');
INSERT INTO Customers VALUES(52, 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', 'Germany');
INSERT INTO Customers VALUES(53, 'North/South', 'South House 300 Queensbridge', 'London', 'UK');
INSERT INTO Customers VALUES(54, 'Océano Atlántico Ltda.', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', 'Argentina');
INSERT INTO Customers VALUES(55, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'USA');
INSERT INTO Customers VALUES(56, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', 'Germany');
INSERT INTO Customers VALUES(57, 'Paris spécialités', '265, boulevard Charonne', 'Paris', 'France');
INSERT INTO Customers VALUES(58, 'Pericles Comidas clásicas', 'Calle Dr. Jorge Cash 321', 'México D.F.', 'Mexico');
INSERT INTO Customers VALUES(59, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', 'Austria');
INSERT INTO Customers VALUES(60, 'Princesa Isabel Vinhoss', 'Estrada da saúde n. 58', 'Lisboa', 'Portugal');
INSERT INTO Customers VALUES(61, 'Que Delícia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'Brazil');
INSERT INTO Customers VALUES(62, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'São Paulo', 'Brazil');
INSERT INTO Customers VALUES(63, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', 'Germany');
INSERT INTO Customers VALUES(64, 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', 'Argentina');
INSERT INTO Customers VALUES(65, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'USA');
INSERT INTO Customers VALUES(66, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', 'Italy');
INSERT INTO Customers VALUES(67, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'Brazil');
INSERT INTO Customers VALUES(68, 'Richter Supermarkt', 'Grenzacherweg 237', 'Genève', 'Switzerland');
INSERT INTO Customers VALUES(69, 'Romero y tomillo', 'Gran Vía, 1', 'Madrid', 'Spain');
INSERT INTO Customers VALUES(70, 'Santé Gourmet', 'Erling Skakkes gate 78', 'Stavern', 'Norway');
INSERT INTO Customers VALUES(71, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'USA');
INSERT INTO Customers VALUES(72, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', 'UK');
INSERT INTO Customers VALUES(73, 'Simons bistro', 'Vinbæltet 34', 'København', 'Denmark');
INSERT INTO Customers VALUES(74, 'Spécialités du monde', '25, rue Lauriston', 'Paris', 'France');
INSERT INTO Customers VALUES(75, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'USA');
INSERT INTO Customers VALUES(76, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', 'Belgium');
INSERT INTO Customers VALUES(77, 'The Big Cheese', '89 Jefferson Way Suite 2', 'Portland', 'USA');
INSERT INTO Customers VALUES(78, 'The Cracker Box', '55 Grizzly Peak Rd.', 'Butte', 'USA');
INSERT INTO Customers VALUES(79, 'Toms Spezialitäten', 'Luisenstr. 48', 'Münster', 'Germany');
INSERT INTO Customers VALUES(80, 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', 'Mexico');
INSERT INTO Customers VALUES(81, 'Tradição Hipermercados', 'Av. Inês de Castro, 414', 'São Paulo', 'Brazil');
INSERT INTO Customers VALUES(82, 'Trail''s Head Gourmet Provisioners', '722 DaVinci Blvd.', 'Kirkland', 'USA');
INSERT INTO Customers VALUES(83, 'Vaffeljernet', 'Smagsløget 45', 'Århus', 'Denmark');
INSERT INTO Customers VALUES(84, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', 'France');
INSERT INTO Customers VALUES(85, 'Vins et alcools Chevalier', '59 rue de l''Abbaye', 'Reims', 'France');
INSERT INTO Customers VALUES(86, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', 'Germany');
INSERT INTO Customers VALUES(87, 'Wartian Herkku', 'Torikatu 38', 'Oulu', 'Finland');
INSERT INTO Customers VALUES(88, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'Brazil');
INSERT INTO Customers VALUES(89, 'White Clover Markets', '305 - 14th Ave. S. Suite 3B', 'Seattle', 'USA');
INSERT INTO Customers VALUES(90, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', 'Finland');
INSERT INTO Customers VALUES(91, 'Wolski', 'ul. Filtrowa 68', 'Walla', 'Poland');
INSERT INTO Customers VALUES(94, 'Grandma Kelly''s Homestead', null, 'Ann Arbor', '');
INSERT INTO Customers VALUES(95, 'Tokyo Traders', null, 'Tokyo', '');
INSERT INTO Customers VALUES(96, 'Cooperativa de Quesos ''Las Cabras''', null, 'Oviedo', '');
INSERT INTO Customers VALUES(97, 'Mayumi''s', null, 'Osaka', '');
INSERT INTO Customers VALUES(98, 'Pavlova, Ltd.', null, 'Melbourne', '');
INSERT INTO Customers VALUES(99, 'Specialty Biscuits, Ltd.', null, 'Manchester', '');
INSERT INTO Customers VALUES(100, 'PB Knäckebröd AB', null, 'Göteborg', '');
INSERT INTO Customers VALUES(101, 'Refrescos Americanas LTDA', null, 'São Paulo', '');
INSERT INTO Customers VALUES(102, 'Heli Süßwaren GmbH & Co. KG', null, 'Berlin', '');
INSERT INTO Customers VALUES(103, 'Plutzer Lebensmittelgroßmärkte AG', null, 'Frankfurt', '');
INSERT INTO Customers VALUES(104, 'Nord-Ost-Fisch Handelsgesellschaft mbH', null, 'Cuxhaven', '');
INSERT INTO Customers VALUES(105, 'Formaggi Fortini s.r.l.', null, 'Ravenna', '');
INSERT INTO Customers VALUES(106, 'Norske Meierier', null, 'Sandvika', '');
INSERT INTO Customers VALUES(107, 'Bigfoot Breweries', null, 'Bend', '');
INSERT INTO Customers VALUES(108, 'Svensk Sjöföda AB', null, 'Stockholm', '');
INSERT INTO Customers VALUES(109, 'Aux joyeux ecclésiastiques', null, 'Paris', '');
INSERT INTO Customers VALUES(110, 'New England Seafood Cannery', null, 'Boston', '');
INSERT INTO Customers VALUES(111, 'Leka Trading', null, 'Singapore', '');
INSERT INTO Customers VALUES(112, 'Lyngbysild', null, 'Lyngby', '');
INSERT INTO Customers VALUES(113, 'Zaanse Snoepfabriek', null, 'Zaandam', '');
INSERT INTO Customers VALUES(114, 'Karkki Oy', null, 'Lappeenranta', '');
INSERT INTO Customers VALUES(115, 'G''day, Mate', null, 'Sydney', '');
INSERT INTO Customers VALUES(116, 'Ma Maison', null, 'Montréal', '');
INSERT INTO Customers VALUES(117, 'Pasta Buttini s.r.l.', null, 'Salerno', '');
INSERT INTO Customers VALUES(118, 'Escargots Nouveaux', null, 'Montceau', '');
INSERT INTO Customers VALUES(119, 'Gai pâturage', null, 'Annecy', '');
INSERT INTO Customers VALUES(120, 'Forêts d''érables', null, 'Ste-Hyacinthe', '');
INSERT INTO Customers VALUES(121, 'Heli Süßwaren GmbH & Co. KG', null, 'Berlin', '');
INSERT INTO Customers VALUES(122, 'Plutzer Lebensmittelgroßmärkte AG', null, 'Frankfurt', '');
INSERT INTO Customers VALUES(123, 'Nord-Ost-Fisch Handelsgesellschaft mbH', null, 'Cuxhaven', '');

SELECT * FROM Customers;