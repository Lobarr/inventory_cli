-- Tables 
CREATE TABLE Invoice (
  id VARCHAR NOT NULL,
  name VARCHAR NOT NULL,
  email VARCHAR NOT NULL,
  timestamp INT NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE Product (
  id VARCHAR NOT NULL,
  name VARCHAR NOT NULL,
  stock INT NOT NULL,
  price FLOAT NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE Category (
  id VARCHAR NOT NULL,
  name VARCHAR NOT NULL,
  PRIMARY KEY (id, name)
);

CREATE TABLE Brand (
  id VARCHAR NOT NULL,
  name VARCHAR NOT NULL,
  PRIMARY KEY (id, name)
);

CREATE TABLE Supplier (
  id VARCHAR NOT NULL,
  name VARCHAR NOT NULL,
  email VARCHAR NOT NULL,
  PRIMARY KEY (id),
  UNIQUE (name, email)
);

CREATE TABLE Shipping (
  id VARCHAR NOT NULL,
  address VARCHAR NOT NULL,
  PRIMARY KEY (id)
);

-- Relationships
CREATE TABLE Supplies (
  supplier_id VARCHAR NOT NULL,
  product_id VARCHAR NOT NULL,
  FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id),
  FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

CREATE TABLE ProductCategory (
  product_id VARCHAR NOT NULL,
  category_id VARCHAR NOT NULL,
  FOREIGN KEY(product_id) REFERENCES Product(product_id),
  FOREIGN KEY(category_id) REFERENCES Category(category_id)
);

CREATE TABLE BrandCategory (
  brand_id VARCHAR NOT NULL,
  category_id VARCHAR NOT NULL,
  FOREIGN KEY(brand_id) REFERENCES Product(brand_id),
  FOREIGN KEY(category_id) REFERENCES Category(category_id)
);

CREATE TABLE ProductBrand (
  product_id VARCHAR NOT NULL,
  brand_id VARCHAR NOT NULL,
  FOREIGN KEY(product_id) REFERENCES Product(product_id),
  FOREIGN KEY(brand_id) REFERENCES Category(brand_id)
);

CREATE TABLE CustomerInvoice (
  product_id VARCHAR NOT NULL,
  invoice_id VARCHAR NOT NULL,
  FOREIGN KEY(product_id) REFERENCES Product(product_id),
  FOREIGN KEY(invoice_id) REFERENCES Category(invoice_id)
);

CREATE TABLE SupplierCategory (
  supplier_id VARCHAR NOT NULL,
  category_id VARCHAR NOT NULL,
  FOREIGN KEY(supplier_id) REFERENCES Product(supplier_id),
  FOREIGN KEY(category_id) REFERENCES Category(category_id)
);

CREATE TABLE ProductOrder (
  product_id VARCHAR NOT NULL,
  supplier_id VARCHAR NOT NULL,
  stock INT NOT NULL,
  FOREIGN KEY(product_id) REFERENCES Product(product_id),
  FOREIGN KEY(supplier_id) REFERENCES Supplier(supplier_id)
);

CREATE TABLE CustomerShipment (
  invoice_id VARCHAR NOT NULL,
  shipping_id VARChAR NOT NULL,
  FOREIGN KEY(invoice_id) REFERENCES Invoice(invoice_id),
  FOREIGN KEY(shipping_id) REFERENCES Shipping(shipping_id)
);