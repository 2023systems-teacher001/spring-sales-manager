-- データベースsrm_dbに接続
\c srm_db

-- テーブルの削除
DROP TABLE IF EXISTS grades CASCADE;
DROP TABLE IF EXISTS categories CASCADE;
DROP TABLE IF EXISTS status CASCADE;
DROP TABLE IF EXISTS members CASCADE;
DROP TABLE IF EXISTS items CASCADE;
DROP TABLE IF EXISTS sales CASCADE;
DROP TABLE IF EXISTS purchases CASCADE;
DROP TABLE IF EXISTS stocks CASCADE;
DROP TABLE IF EXISTS orders CASCADE;

-- グレードテーブルの生成：0=新品、1=中古
CREATE TABLE grades (
	id SERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(20)
);

-- 分類テーブルの生成：学部コード
CREATE TABLE categories (
	id SERIAL not NULL PRIMARY KEY,
	name VARCHAR(20)
);

-- 状態テーブルの生成：0=取寄せ期間中、1=取寄せ期間超過、2=在庫登録済、9=売却済み
CREATE TABLE status (
	id SERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(20)
);

-- 顧客テーブルの生成
CREATE TABLE members (
	id SERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	address VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	phone VARCHAR(15) NOT NULL,
	password VARCHAR(255) NOT NULL
);

-- 商品テーブルの生成
CREATE TABLE items (
	id SERIAL NOT NULL PRIMARY  KEY,
	category_id INTEGER NOT NULL,
	title VARCHAR(255),
	price INTEGER NOT NULL
);

-- 売上テーブルの生成
CREATE TABLE sales (
	id SERIAL NOT NULL PRIMARY KEY,
	grade_id INTEGER NOT NULL,
	isbn CHAR(10) NOT NULL,
	quantity INTEGER NOT NULL,
	sales_on Date DEFAULT current_date
);

-- 買取テーブルの生成
CREATE TABLE purchases (
	id SERIAL NOT NULL PRIMARY KEY,
	grade_id INTEGER NOT NULL,
	isbn CHAR(10) NOT NULL,
	category_id INTEGER NOT NULL,
	quantity INTEGER NOT NULL,
	purchase_on Date DEFAULT current_date
);

-- 在庫テーブルの生成
CREATE TABLE stocks (
	grade_id INTEGER NOT NULL,
	isbn CHAR(10) NOT NULL,
	quantity INTEGER NOT NULL,
	status_id INTEGER NOT NULL
);

-- 取寄テーブルの生成
CREATE TABLE orders (
	id SERIAL NOT NULL PRIMARY KEY,
	member_id INTEGER NOT NULL,
	isbn CHAR(10) NOT NULL,
	quantity INTEGER NOT NULL,
	order_on Date DEFAULT current_date,
	status_id INTEGER NOT NULL 
);

-- 外部キー制約の設定群 
ALTER TABLE items ADD FOREIGN KEY (category_id) REFERENCES categories(id);
ALTER TABLE sales ADD FOREIGN KEY (grade_id) REFERENCES grades(id);
ALTER TABLE purchases ADD FOREIGN KEY (category_id) REFERENCES categories(id);
ALTER TABLE purchases ADD FOREIGN KEY (grade_id) REFERENCES grades(id);
ALTER TABLE stocks ADD FOREIGN KEY (status_id) REFERENCES status(id);
ALTER TABLE orders ADD FOREIGN KEY (member_id) REFERENCES members(id);
ALTER TABLE orders ADD FOREIGN KEY (status_id) REFERENCES status(id);
