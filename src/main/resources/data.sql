-- �T���v���f�[�^�o�^�X�N���v�g

-- /* �}�X�^���R�[�h�o�^�X�N���v�g�Q */

-- �O���[�h�e�[�u��
INSERT INTO grades (name) VALUES ('�V�i');
INSERT INTO grades (name) VALUES ('����');

-- �J�e�S���[�e�[�u��
INSERT INTO categories(name) VALUES ('���w���n');
INSERT INTO categories(name) VALUES ('����w���n');
INSERT INTO categories(name) VALUES ('�@�w���n');
INSERT INTO categories(name) VALUES ('�Љ�w���n');
INSERT INTO categories(name) VALUES ('�o�ϊw���n');
INSERT INTO categories(name) VALUES ('���w���n');
INSERT INTO categories(name) VALUES ('��w���n');
INSERT INTO categories(name) VALUES ('���w���n');
INSERT INTO categories(name) VALUES ('��w���n');
INSERT INTO categories(name) VALUES ('�H�w���n');
INSERT INTO categories(name) VALUES ('�_�w���n');

-- ��ԃe�[�u��
INSERT INTO status (name) VALUES ('��񂹊��Ԓ�');
INSERT INTO status (name) VALUES ('��񂹊��Ԓ���');
INSERT INTO status (name) VALUES ('�݌ɓo�^�ς�');
INSERT INTO status (name) VALUES ('���p�ς�');

-- ���i�e�[�u��
INSERT INTO items (category_id, title, price) VALUES (1, '���㖟��_�l', 100);
INSERT INTO items (category_id, title, price) VALUES (1, '�G���f�ƃt�[�R�[�Ƃ�������', 110);
INSERT INTO items (category_id, title, price) VALUES (2, '���{�����@�\�_', 200);
INSERT INTO items (category_id, title, price) VALUES (2, '���猴���T�_', 210);
INSERT INTO items (category_id, title, price) VALUES (3, '���@�̑�t�P', 300);
INSERT INTO items (category_id, title, price) VALUES (3, '�ٔ������x�̖���', 310);
INSERT INTO items (category_id, title, price) VALUES (3, '�m�I���Y���Ƃ��̒��Ԃ���', 320);
INSERT INTO items (category_id, title, price) VALUES (4, '�}�b�N�X�E�F�o�[������������', 400);
INSERT INTO items (category_id, title, price) VALUES (4, '�߂����M��', 410);
INSERT INTO items (category_id, title, price) VALUES (4, '���̉��Ɨd���̋��Ԃɐ�����', 420);
INSERT INTO items (category_id, title, price) VALUES (5, '����ݕ����_', 500);
INSERT INTO items (category_id, title, price) VALUES (5, '�������S���Ƃ����l����', 510);
INSERT INTO items (category_id, title, price) VALUES (5, '�f�t���w�W�ƍ��ےʉݔ��s��', 520);
INSERT INTO items (category_id, title, price) VALUES (6, '�L�@���w�ł��̂�����', 600);
INSERT INTO items (category_id, title, price) VALUES (6, '�����I�Ώ̐��̔j��', 610);
INSERT INTO items (category_id, title, price) VALUES (6, 'EPR�p���h�b�N�X�̉���', 620);
INSERT INTO items (category_id, title, price) VALUES (7, '���ׂ͖��a�̂��ƂƂ��������', 700);
INSERT INTO items (category_id, title, price) VALUES (7, '���̗ǂ��͈�`���Ȃ�', 710);
INSERT INTO items (category_id, title, price) VALUES (8, '��Ԋw�E��', 800);
INSERT INTO items (category_id, title, price) VALUES (8, '�{���O���O�ɒm���Ă�������2�A3�̂���', 810);
INSERT INTO items (category_id, title, price) VALUES (8, '�����a�ۂƂ̓���', 820);
INSERT INTO items (category_id, title, price) VALUES (9, '���N�`���ƃ��g�\���Ǝ�', 900);
INSERT INTO items (category_id, title, price) VALUES (9, '�\�h�ڎ�̗��j', 910);
INSERT INTO items (category_id, title, price) VALUES (9, '�����\���[�^���Ɛ��I��', 920);
INSERT INTO items (category_id, title, price) VALUES (10, '���F�ƃe�L�X�^�C��', 1000);
INSERT INTO items (category_id, title, price) VALUES (10, '�X�e�b�s���O���[�^�[�̐���@�\', 1010);
INSERT INTO items (category_id, title, price) VALUES (10, '�A�����_�ƌ�ʍH�w', 1020);
INSERT INTO items (category_id, title, price) VALUES (11, '���Ɛ��}�O���ɒ���', 1100);
INSERT INTO items (category_id, title, price) VALUES (11, '囊Q����c�������', 1110);

-- �m�F�pDML
SELECT categories.name, items.title, items.price
FROM items
JOIN categories ON items.category_id = categories.id;

-- �ڋq�e�[�u��
INSERT INTO members (name, address, email, phone, password) 
	VALUES ('���ˉ���', '���ˎs�O�̊�', 'komon@echigoya.chirimen.co.jp', '090-0000-1111', 'komon');
INSERT INTO members (name, address, email, phone, password) 
	VALUES ('���X�؏��O�Y', '���ˎs��蒬', 'suke3@inrou.com', '090-0000-1112', 'sukesan');
INSERT INTO members (name, address, email, phone, password) 
	VALUES ('�����i�V�i', '���ˎs��H��', 'kaku3@inrou.com', '090-0000-1113', 'kakusan');


