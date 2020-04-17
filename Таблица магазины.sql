CREATE TABLE Market (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(17) NOT NULL,
	phone VARCHAR(9) NOT NULL
);

CREATE TABLE Good (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(20) NOT NULL,
	code BIGINT(12) NOT NULL
);

CREATE TABLE Provider (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(15) NOT NULL
);

CREATE TABLE Main (
	market INT,
	FOREIGN KEY (market) REFERENCES Market(id),
	good INT,
	FOREIGN KEY (good) REFERENCES Good(id),
	quantity SMALLINT(5) NOT NULL,
	price SMALLINT(3) NOT NULL,
	dute DATE,
	provider INT,
	FOREIGN KEY (provider) REFERENCES Provider(id)
);

INSERT INTO Market (name, phone) VALUES
('МАГАЗИН #01', '241-09-09'),
('РОЗН.МАГ #10', '333-44-44'),
('СКЛАД #01', '222-35-33'),
('СКЛАД #02', '320-90-90'),
('СКЛАД #03', '320-90-90');

INSERT INTO Good (name, code) VALUES
('Game Boy 1M', 121122211212),
('SEGA 4M', 219382378454),
('SPC-011 (5 in 1)', 434556788767),
('Battle Master', 876567543456);

INSERT INTO Provider (name) VALUES
('ОАО "Вымпел"'),
('ОАО "Сатурн"'),
('ЗАО "Весна"'),
('ЗАО "Сокол"'),
('ОАО "Заря"'),
('ЗАО "Мастер"');

INSERT INTO Main (market, good, quantity, price, dute, provider) VALUES
(1, 1, 2000, 115, '2002-11-12', 1),
(1, 2, 2332, 100, '2002-11-12', 2),
(1, 3, 11222, 250, '2003-11-10', 3),
(2, 1, 12343, 110, '2003-11-04', 4),
(2, 2, 23, 100, '2003-12-10', 5),
(3, 1, 8891, 115, '2002-11-12', 1),
(3, 2, 34, 100, '2003-11-17', 6),
(4, 1, 22343, 115, '2002-11-12', 1),
(4, 1, 1000, 114, '2003-01-02', 1),
(4, 2, 1133, 100, '2002-11-12', 6),
(5, 1, 7666, 112, '2002-11-12', 4),
(5, 4, 12321, 190, '2002-11-12', 3);

