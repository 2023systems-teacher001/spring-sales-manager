-- サンプルデータ登録スクリプト

-- /* マスタレコード登録スクリプト群 */

-- グレードテーブル
INSERT INTO grades (name) VALUES ('新品');
INSERT INTO grades (name) VALUES ('中古');

-- カテゴリーテーブル
INSERT INTO categories(name) VALUES ('文学部系');
INSERT INTO categories(name) VALUES ('教育学部系');
INSERT INTO categories(name) VALUES ('法学部系');
INSERT INTO categories(name) VALUES ('社会学部系');
INSERT INTO categories(name) VALUES ('経済学部系');
INSERT INTO categories(name) VALUES ('理学部系');
INSERT INTO categories(name) VALUES ('医学部系');
INSERT INTO categories(name) VALUES ('歯学部系');
INSERT INTO categories(name) VALUES ('薬学部系');
INSERT INTO categories(name) VALUES ('工学部系');
INSERT INTO categories(name) VALUES ('農学部系');

-- 状態テーブル
INSERT INTO status (name) VALUES ('取寄せ期間中');
INSERT INTO status (name) VALUES ('取寄せ期間超過');
INSERT INTO status (name) VALUES ('在庫登録済み');
INSERT INTO status (name) VALUES ('売却済み');

-- 商品テーブル
INSERT INTO items (category_id, title, price) VALUES (1, '現代漫画論考', 100);
INSERT INTO items (category_id, title, price) VALUES (1, 'エンデとフーコーという怪物', 110);
INSERT INTO items (category_id, title, price) VALUES (2, '日本国憲法暴論', 200);
INSERT INTO items (category_id, title, price) VALUES (2, '教育原理概論', 210);
INSERT INTO items (category_id, title, price) VALUES (3, '民法の大逆襲', 300);
INSERT INTO items (category_id, title, price) VALUES (3, '裁判員制度の明日', 310);
INSERT INTO items (category_id, title, price) VALUES (3, '知的財産権とその仲間たち', 320);
INSERT INTO items (category_id, title, price) VALUES (4, 'マックスウェバーが生きた時代', 400);
INSERT INTO items (category_id, title, price) VALUES (4, '悲しき熱帯', 410);
INSERT INTO items (category_id, title, price) VALUES (4, '物の怪と妖怪の狭間に生きて', 420);
INSERT INTO items (category_id, title, price) VALUES (5, '現代貨幣理論', 500);
INSERT INTO items (category_id, title, price) VALUES (5, '財政健全化という考え方', 510);
INSERT INTO items (category_id, title, price) VALUES (5, 'デフレ指標と国際通貨発行権', 520);
INSERT INTO items (category_id, title, price) VALUES (6, '有機化学でものを見る', 600);
INSERT INTO items (category_id, title, price) VALUES (6, '自発的対称性の破れ', 610);
INSERT INTO items (category_id, title, price) VALUES (6, 'EPRパラドックスの解消', 620);
INSERT INTO items (category_id, title, price) VALUES (7, '風邪は万病のもとというけれど', 700);
INSERT INTO items (category_id, title, price) VALUES (7, '頭の良さは遺伝しない', 710);
INSERT INTO items (category_id, title, price) VALUES (8, '補綴学・下', 800);
INSERT INTO items (category_id, title, price) VALUES (8, '顎が外れる前に知っておきたい2、3のこと', 810);
INSERT INTO items (category_id, title, price) VALUES (8, '歯周病菌との闘い', 820);
INSERT INTO items (category_id, title, price) VALUES (9, 'ワクチンとワトソンと私', 900);
INSERT INTO items (category_id, title, price) VALUES (9, '予防接種の歴史', 910);
INSERT INTO items (category_id, title, price) VALUES (9, 'メンソレータムと正露丸', 920);
INSERT INTO items (category_id, title, price) VALUES (10, '染色とテキスタイル', 1000);
INSERT INTO items (category_id, title, price) VALUES (10, 'ステッピングモーターの制御機構', 1010);
INSERT INTO items (category_id, title, price) VALUES (10, '輸送理論と交通工学', 1020);
INSERT INTO items (category_id, title, price) VALUES (11, '自家製マグロに挑む', 1100);
INSERT INTO items (category_id, title, price) VALUES (11, '蝗害から田畑を守る', 1110);

-- 確認用DML
SELECT categories.name, items.title, items.price
FROM items
JOIN categories ON items.category_id = categories.id;

-- 顧客テーブル
INSERT INTO members (name, address, email, phone, password) 
	VALUES ('水戸黄門', '水戸市三の丸', 'komon@echigoya.chirimen.co.jp', '090-0000-1111', 'komon');
INSERT INTO members (name, address, email, phone, password) 
	VALUES ('佐々木助三郎', '水戸市大手町', 'suke3@inrou.com', '090-0000-1112', 'sukesan');
INSERT INTO members (name, address, email, phone, password) 
	VALUES ('渥美格之進', '水戸市大工町', 'kaku3@inrou.com', '090-0000-1113', 'kakusan');


