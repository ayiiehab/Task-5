CREATE TABLE governorates (
    ID_governorate INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    name_governorate VARCHAR(30) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT NOW(),
    PRIMARY KEY(ID_governorate)
);



CREATE TABLE stores (
    ID_store INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    name_store VARCHAR(255) NOT NULL,
    address_store TEXT NOT NULL,
    governorate INTEGER(10) UNSIGNED NOT NULL,
    created_at DATETIME NOT NULL DEFAULT NOW(),
    PRIMARY KEY(ID_store),
    FOREIGN KEY(governorate) REFERENCES governorates(ID_governorate)

);

CREATE TABLE suppliers (
    ID_supplier INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    name_supplier VARCHAR(255) NOT NULL,
    phone_supplier TEXT NOT NULL,
    email_supplier VARCHAR(255) NOT NULL,
    brief_data TEXT NOT NULL,
    created_at DATETIME NOT NULL DEFAULT NOW(),
    PRIMARY KEY(ID_supplier)

);

CREATE TABLE products (
    ID_product INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    code_product VARCHAR(5) NOT NULL,
    desc_product TEXT  ,
    price_product INTEGER NOT NULL,
    supplier INTEGER UNSIGNED NOT NULL,
    created_at DATETIME NOT NULL DEFAULT NOW(),
    PRIMARY KEY(ID_product),
    FOREIGN KEY(supplier) REFERENCES suppliers(ID_supplier)


);

CREATE TABLE store_prosuct(
    ID_sp INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    store INTEGER UNSIGNED NOT NULL  ,
    product INTEGER UNSIGNED NOT NULL,
    created_at DATETIME NOT NULL DEFAULT NOW(),
    PRIMARY KEY(ID_sp),
    FOREIGN KEY(store) REFERENCES stores(ID_store),
    FOREIGN KEY(product) REFERENCES products(ID_product)



);


