
-- Use the eCommerce database
USE EcomMindDB;

-- Create Pricing & Inventory Table
CREATE TABLE IF NOT EXISTS PricingInventory (
    sku VARCHAR(20) PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    category VARCHAR(100) NOT NULL,
    brand VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL
);

-- Insert 200 Product Records into Pricing & Inventory Table
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-30685', 'Milk Powder', 'Grocery', 'Brand C', 16.73, 128);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-53340', 'Air Freshener', 'Household', 'Brand D', 13.52, 460);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-24767', 'Rice', 'Grocery', 'Brand B', 19.87, 81);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-83921', 'Sugar', 'Grocery', 'Brand B', 7.37, 292);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-91821', 'Air Freshener', 'Household', 'Brand C', 13.54, 293);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-35449', 'Sponges', 'Household', 'Brand A', 21.05, 143);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-54305', 'Sugar', 'Grocery', 'Brand A', 40.03, 220);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-64965', 'Mop', 'Household', 'Brand D', 23.43, 222);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-41344', 'Milk Powder', 'Grocery', 'Brand C', 18.03, 145);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-36758', 'Dish Soap', 'Household', 'Brand C', 41.36, 265);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-16718', 'Olive Oil', 'Grocery', 'Brand B', 3.4, 485);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-84548', 'Pasta', 'Grocery', 'Brand A', 29.84, 414);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-30329', 'Sponges', 'Household', 'Brand B', 28.45, 344);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-97093', 'Wheat Flour', 'Grocery', 'Brand D', 49.36, 166);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-49701', 'Salt', 'Grocery', 'Brand D', 45.27, 457);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-39004', 'Olive Oil', 'Grocery', 'Brand A', 16.0, 372);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-21872', 'Detergent', 'Household', 'Brand B', 22.81, 158);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-39068', 'Air Freshener', 'Household', 'Brand B', 32.71, 464);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-40902', 'Salt', 'Grocery', 'Brand C', 35.75, 203);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-23493', 'Garbage Bags', 'Household', 'Brand A', 44.21, 222);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-47704', 'Detergent', 'Household', 'Brand B', 48.58, 258);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-39949', 'Sponges', 'Household', 'Brand D', 6.16, 161);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-17707', 'Milk Powder', 'Grocery', 'Brand C', 37.68, 392);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-53295', 'Milk Powder', 'Grocery', 'Brand D', 4.35, 99);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-88854', 'Garbage Bags', 'Household', 'Brand A', 6.11, 105);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-68755', 'Laundry Softener', 'Household', 'Brand C', 47.38, 85);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-68151', 'Rice', 'Grocery', 'Brand B', 26.28, 288);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-24580', 'Garbage Bags', 'Household', 'Brand D', 1.36, 266);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-36174', 'Milk Powder', 'Grocery', 'Brand A', 4.88, 222);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-16177', 'Rice', 'Grocery', 'Brand C', 14.77, 140);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-18371', 'Olive Oil', 'Grocery', 'Brand D', 41.14, 494);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-25660', 'Mop', 'Household', 'Brand A', 4.63, 83);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-13874', 'Mop', 'Household', 'Brand A', 17.31, 107);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-91063', 'Mop', 'Household', 'Brand D', 14.46, 58);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-56858', 'Air Freshener', 'Household', 'Brand B', 8.84, 276);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-62354', 'Pasta', 'Grocery', 'Brand B', 10.82, 475);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-40710', 'Mop', 'Household', 'Brand B', 37.43, 80);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-66837', 'Detergent', 'Household', 'Brand A', 46.06, 245);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-42528', 'Sugar', 'Grocery', 'Brand C', 5.05, 90);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-68737', 'Toilet Paper', 'Household', 'Brand C', 9.52, 488);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-65369', 'Toilet Paper', 'Household', 'Brand A', 26.74, 291);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-91794', 'Wheat Flour', 'Grocery', 'Brand A', 38.12, 490);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-53463', 'Milk Powder', 'Grocery', 'Brand C', 26.75, 341);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-73717', 'Laundry Softener', 'Household', 'Brand C', 33.17, 294);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-94129', 'Garbage Bags', 'Household', 'Brand D', 35.54, 217);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-83283', 'Coffee', 'Grocery', 'Brand B', 19.08, 389);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-88834', 'Mop', 'Household', 'Brand C', 42.87, 90);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-27170', 'Air Freshener', 'Household', 'Brand D', 17.18, 352);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-88123', 'Dish Soap', 'Household', 'Brand B', 5.68, 84);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-99879', 'Sponges', 'Household', 'Brand D', 33.02, 96);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-81635', 'Wheat Flour', 'Grocery', 'Brand C', 30.07, 259);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-82940', 'Milk Powder', 'Grocery', 'Brand A', 36.25, 183);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-53237', 'Toilet Paper', 'Household', 'Brand B', 1.25, 313);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-33217', 'Broom', 'Household', 'Brand D', 21.43, 266);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-14206', 'Garbage Bags', 'Household', 'Brand C', 32.98, 112);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-33651', 'Sponges', 'Household', 'Brand C', 40.88, 109);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-52997', 'Tea', 'Grocery', 'Brand A', 11.73, 451);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-11595', 'Dish Soap', 'Household', 'Brand C', 30.35, 213);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-48644', 'Coffee', 'Grocery', 'Brand B', 12.73, 203);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-79129', 'Mop', 'Household', 'Brand D', 6.26, 212);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-17460', 'Coffee', 'Grocery', 'Brand D', 35.96, 440);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-45522', 'Wheat Flour', 'Grocery', 'Brand A', 21.35, 78);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-70685', 'Rice', 'Grocery', 'Brand C', 28.44, 152);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-35233', 'Rice', 'Grocery', 'Brand D', 14.15, 248);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-62316', 'Garbage Bags', 'Household', 'Brand A', 39.18, 84);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-69006', 'Mop', 'Household', 'Brand A', 14.55, 149);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-52592', 'Tea', 'Grocery', 'Brand D', 8.33, 248);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-76090', 'Wheat Flour', 'Grocery', 'Brand B', 9.77, 420);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-73162', 'Broom', 'Household', 'Brand C', 38.28, 492);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-42369', 'Toilet Paper', 'Household', 'Brand B', 8.29, 366);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-91281', 'Dish Soap', 'Household', 'Brand A', 23.66, 479);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-57855', 'Milk Powder', 'Grocery', 'Brand B', 14.96, 91);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-70091', 'Detergent', 'Household', 'Brand C', 36.84, 257);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-91450', 'Mop', 'Household', 'Brand D', 5.62, 408);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-50118', 'Sponges', 'Household', 'Brand C', 24.96, 60);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-28977', 'Wheat Flour', 'Grocery', 'Brand B', 34.72, 500);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-50829', 'Olive Oil', 'Grocery', 'Brand C', 21.92, 347);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-59635', 'Salt', 'Grocery', 'Brand D', 2.12, 335);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-10161', 'Honey', 'Grocery', 'Brand C', 1.64, 176);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-51766', 'Toilet Paper', 'Household', 'Brand A', 10.24, 41);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-48002', 'Dish Soap', 'Household', 'Brand C', 11.35, 129);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-91524', 'Rice', 'Grocery', 'Brand B', 36.26, 418);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-72875', 'Pasta', 'Grocery', 'Brand D', 7.03, 444);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-50491', 'Detergent', 'Household', 'Brand D', 39.28, 464);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-23996', 'Salt', 'Grocery', 'Brand B', 41.19, 356);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-54636', 'Air Freshener', 'Household', 'Brand A', 19.4, 284);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-12320', 'Garbage Bags', 'Household', 'Brand C', 15.51, 17);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-84259', 'Detergent', 'Household', 'Brand A', 12.72, 134);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-20313', 'Paper Towels', 'Household', 'Brand C', 37.72, 277);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-40133', 'Olive Oil', 'Grocery', 'Brand C', 15.07, 489);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-29189', 'Salt', 'Grocery', 'Brand C', 42.95, 300);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-87800', 'Garbage Bags', 'Household', 'Brand B', 27.53, 161);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-39554', 'Paper Towels', 'Household', 'Brand C', 16.34, 182);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-99771', 'Milk Powder', 'Grocery', 'Brand B', 17.64, 81);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-57844', 'Rice', 'Grocery', 'Brand A', 6.23, 95);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-19815', 'Rice', 'Grocery', 'Brand B', 26.72, 35);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-20138', 'Milk Powder', 'Grocery', 'Brand A', 9.47, 351);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-40041', 'Dish Soap', 'Household', 'Brand C', 37.07, 494);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-85259', 'Sugar', 'Grocery', 'Brand A', 11.17, 203);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-73726', 'Milk Powder', 'Grocery', 'Brand D', 27.42, 458);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-14770', 'Wheat Flour', 'Grocery', 'Brand C', 43.43, 410);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-81973', 'Coffee', 'Grocery', 'Brand D', 43.61, 434);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-98734', 'Air Freshener', 'Household', 'Brand C', 36.47, 394);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-44548', 'Garbage Bags', 'Household', 'Brand B', 33.09, 228);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-89707', 'Honey', 'Grocery', 'Brand A', 16.08, 326);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-51114', 'Wheat Flour', 'Grocery', 'Brand A', 21.01, 215);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-54850', 'Pasta', 'Grocery', 'Brand A', 16.84, 96);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-62114', 'Honey', 'Grocery', 'Brand D', 13.47, 242);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-93446', 'Sugar', 'Grocery', 'Brand A', 43.64, 317);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-89172', 'Tea', 'Grocery', 'Brand A', 13.74, 321);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-11805', 'Paper Towels', 'Household', 'Brand D', 17.64, 429);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-32709', 'Coffee', 'Grocery', 'Brand A', 32.91, 299);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-25602', 'Honey', 'Grocery', 'Brand B', 13.89, 495);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-39659', 'Rice', 'Grocery', 'Brand C', 16.17, 466);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-94065', 'Paper Towels', 'Household', 'Brand B', 36.37, 237);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-58161', 'Pasta', 'Grocery', 'Brand C', 35.39, 18);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-19764', 'Rice', 'Grocery', 'Brand C', 18.05, 45);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-34098', 'Pasta', 'Grocery', 'Brand D', 12.63, 51);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-49361', 'Honey', 'Grocery', 'Brand C', 22.44, 259);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-53782', 'Air Freshener', 'Household', 'Brand C', 48.98, 421);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-64408', 'Paper Towels', 'Household', 'Brand C', 12.12, 500);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-33234', 'Sponges', 'Household', 'Brand B', 15.33, 440);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-88953', 'Air Freshener', 'Household', 'Brand C', 32.57, 164);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-35192', 'Salt', 'Grocery', 'Brand D', 38.2, 116);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-66947', 'Salt', 'Grocery', 'Brand B', 46.04, 424);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-11272', 'Air Freshener', 'Household', 'Brand C', 16.14, 311);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-54060', 'Coffee', 'Grocery', 'Brand D', 27.43, 481);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-59477', 'Olive Oil', 'Grocery', 'Brand C', 13.76, 261);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-76097', 'Milk Powder', 'Grocery', 'Brand B', 16.36, 431);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-10125', 'Olive Oil', 'Grocery', 'Brand A', 45.27, 203);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-95830', 'Pasta', 'Grocery', 'Brand D', 47.94, 394);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-31550', 'Mop', 'Household', 'Brand C', 35.37, 274);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-54348', 'Dish Soap', 'Household', 'Brand A', 40.44, 236);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-44779', 'Rice', 'Grocery', 'Brand A', 37.97, 241);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-26479', 'Sugar', 'Grocery', 'Brand D', 16.46, 253);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-17149', 'Pasta', 'Grocery', 'Brand B', 21.43, 207);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-30779', 'Mop', 'Household', 'Brand A', 17.81, 112);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-53005', 'Broom', 'Household', 'Brand D', 41.55, 65);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-60304', 'Milk Powder', 'Grocery', 'Brand D', 33.74, 237);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-10835', 'Wheat Flour', 'Grocery', 'Brand C', 15.78, 429);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-80782', 'Air Freshener', 'Household', 'Brand A', 16.67, 110);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-99050', 'Coffee', 'Grocery', 'Brand D', 27.94, 159);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-57898', 'Paper Towels', 'Household', 'Brand B', 16.21, 371);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-76418', 'Honey', 'Grocery', 'Brand A', 48.28, 361);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-54251', 'Garbage Bags', 'Household', 'Brand D', 31.68, 230);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-56020', 'Mop', 'Household', 'Brand A', 28.86, 289);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-82126', 'Laundry Softener', 'Household', 'Brand C', 1.97, 82);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-85419', 'Mop', 'Household', 'Brand A', 36.2, 215);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-39854', 'Garbage Bags', 'Household', 'Brand A', 31.38, 228);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-77523', 'Rice', 'Grocery', 'Brand A', 30.13, 237);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-92200', 'Salt', 'Grocery', 'Brand C', 41.39, 427);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-55883', 'Honey', 'Grocery', 'Brand D', 11.71, 453);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-89139', 'Broom', 'Household', 'Brand A', 42.13, 11);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-94560', 'Honey', 'Grocery', 'Brand A', 4.17, 74);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-77610', 'Tea', 'Grocery', 'Brand C', 40.43, 379);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-92145', 'Sugar', 'Grocery', 'Brand D', 43.17, 267);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-61503', 'Tea', 'Grocery', 'Brand D', 41.0, 158);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-78930', 'Laundry Softener', 'Household', 'Brand A', 36.72, 436);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-47932', 'Rice', 'Grocery', 'Brand C', 14.64, 475);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-53234', 'Sponges', 'Household', 'Brand D', 42.56, 217);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-13884', 'Coffee', 'Grocery', 'Brand D', 13.29, 346);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-23905', 'Sponges', 'Household', 'Brand B', 19.97, 432);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-49047', 'Sponges', 'Household', 'Brand C', 20.57, 247);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-69201', 'Sugar', 'Grocery', 'Brand A', 36.38, 161);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-34004', 'Mop', 'Household', 'Brand B', 48.61, 89);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-74503', 'Rice', 'Grocery', 'Brand A', 46.31, 297);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-97492', 'Garbage Bags', 'Household', 'Brand D', 28.75, 206);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-53464', 'Milk Powder', 'Grocery', 'Brand D', 8.45, 52);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-90546', 'Air Freshener', 'Household', 'Brand D', 28.18, 48);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-26368', 'Air Freshener', 'Household', 'Brand C', 14.14, 312);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-10715', 'Honey', 'Grocery', 'Brand D', 12.55, 189);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-72740', 'Pasta', 'Grocery', 'Brand D', 26.56, 22);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-11042', 'Mop', 'Household', 'Brand B', 37.34, 30);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-74026', 'Wheat Flour', 'Grocery', 'Brand D', 2.99, 368);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-41908', 'Wheat Flour', 'Grocery', 'Brand C', 38.9, 133);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-90403', 'Honey', 'Grocery', 'Brand A', 22.94, 492);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-44430', 'Rice', 'Grocery', 'Brand D', 2.34, 466);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-76712', 'Paper Towels', 'Household', 'Brand D', 9.88, 194);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-73799', 'Detergent', 'Household', 'Brand A', 28.71, 92);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-73100', 'Broom', 'Household', 'Brand D', 46.13, 210);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-37197', 'Tea', 'Grocery', 'Brand C', 39.9, 426);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-98391', 'Dish Soap', 'Household', 'Brand B', 26.57, 193);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-19311', 'Olive Oil', 'Grocery', 'Brand A', 33.44, 123);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-96964', 'Salt', 'Grocery', 'Brand C', 13.97, 197);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-41821', 'Pasta', 'Grocery', 'Brand A', 17.32, 229);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-72530', 'Wheat Flour', 'Grocery', 'Brand B', 2.3, 115);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-77556', 'Garbage Bags', 'Household', 'Brand D', 4.61, 48);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-52601', 'Wheat Flour', 'Grocery', 'Brand C', 3.04, 169);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-49224', 'Wheat Flour', 'Grocery', 'Brand A', 21.83, 462);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-18349', 'Milk Powder', 'Grocery', 'Brand D', 17.58, 48);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-31567', 'Coffee', 'Grocery', 'Brand A', 10.67, 369);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-77354', 'Toilet Paper', 'Household', 'Brand D', 48.34, 445);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-26777', 'Pasta', 'Grocery', 'Brand A', 27.61, 318);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-80004', 'Olive Oil', 'Grocery', 'Brand A', 30.69, 39);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-66435', 'Broom', 'Household', 'Brand C', 27.08, 89);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-49571', 'Sponges', 'Household', 'Brand B', 32.18, 201);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('GRO-67828', 'Honey', 'Grocery', 'Brand C', 14.0, 363);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-21213', 'Garbage Bags', 'Household', 'Brand D', 14.98, 26);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-72712', 'Dish Soap', 'Household', 'Brand B', 40.34, 486);
INSERT INTO PricingInventory (sku, product_name, category, brand, price, stock) VALUES 
('HOU-77399', 'Laundry Softener', 'Household', 'Brand D', 21.44, 195);
