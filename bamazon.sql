CREATE DATABASE bamazon_DB;

USE bamazon_DB;

CREATE TABLE products(
	item_id INT NOT NULL AUTO_INCREMENT,
	product_name VARCHAR(255) NULL,
	department_name VARCHAR(255) NULL,
	price DECIMAL(10,2) NULL,
	stock_quantity INT(7),
    PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES
	("da Bomb Cake bomb, White, Almond Buttercream", "Bath Bombs",966, 6.50, 0),
	("AeroGarden Seed Starting System for Harvest Models", "Germination Kits", 538, 24.80, 0),
	("Nordic Ware 8 Piece Covered Bowl Set, Multicolor","Bowl Sets", 4254, 35.78, 0),
	("Belkin Boost Up Wireless Charging Stand 10W - Qi Wireless Charger for iPhone Xs, XS Max, XR/Samsung Galaxy S9, S9+, Note9 / LG, Sony and More (Black)", "Chaergers & Power Adapters", 1331, 53.80, 0),
	("L'Oreal Paris Cosmetics X Camila Cabello Havana Flash Liner Liquid Eyeliner, Black, 0.08 Fluid Ounce", "Eyeliner", 7662, 3.32, 0),
	("Rösle Stainless Steel Egg Topper with Silicone Handle","Kitchen Utensils & Gadgets", 8433, 8.88, 0),
	("nonda ZUS Smart Dash Cam with ZUS App, Front Dash Cam HD 1080P Video, Sony IMX323 Sensor, 140° Wide Angle, G-Sensor, Enhanced Night Vision, Loop Recording, Built-in WiFi", "On Dash Cameras", 2322, 59.99, 0),
	("HP Sprocket Portable Photo Printer (2nd Edition) – Instantly Print 2x3 Sticky-Backed Photos from Your Phone – [Luna Pearl] [1AS85A]", "Portable Photo Printers", 6544, 129.95, 0),
	("Soylent Meal Replacement Shake, Cacao, 14 oz Bottles, 12 Pack", "Meal Replacement Drinks", 3450, 33.97, 0),
	("BLACK+DECKER Vitessa Advanced Steam Iron with Dual-Position Cord, Red, IR2050", "Ironing Accessories", 9788, 26.00, 0);