create table hotel
(
    id          int auto_increment
        primary key,
    name        varchar(255)                       null comment '名称',
    description varchar(255)                       null comment '描述',
    hotel_date  varchar(100)                       null comment '日期',
    head        varchar(100)                       null comment '负责人',
    category    varchar(255)                       null comment '分类',
    hotel_no    varchar(20)                        null comment '房间码',
    createtime  datetime default CURRENT_TIMESTAMP null comment '创建时间',
    updatetime  datetime                           null comment '更新时间',
    cover       varchar(500)                       null comment '图片',
    score       int(10)                            null comment '积分',
    nums        int(10)  default 0                 null comment '房间数量',
    constraint hotel_no_index
        unique (hotel_no)
);

INSERT INTO `hotel-management`.hotel (id, name, description, hotel_date, head, category, hotel_no, createtime, updatetime, cover, score, nums) VALUES (2, '双套间-标准', '复式套件-标准', '2023-03-01', '王二', '套间 > 双套间', '301', '2023-03-20 20:10:15', '2023-03-22 00:00:00', 'https://ts1.cn.mm.bing.net/th/id/R-C.278f8106371dd976f748d061b7c2a20c?rik=Zh7s7v1oTgBoTg&riu=http%3a%2f%2fimg1n.soufunimg.com%2fzxb%2f201609%2f13%2f88%2fb0c4083e4e22066365bd264fb666f150.jpeg&ehk=v3ERmIfMaFYbSwn60vjm7DEr84JueHGEJNUyqkj9Hh4%3d&risl=&pid=ImgRaw&r=0', 899, 50);
INSERT INTO `hotel-management`.hotel (id, name, description, hotel_date, head, category, hotel_no, createtime, updatetime, cover, score, nums) VALUES (7, '海景房', '海景房', '2023-03-02', '王二', '套间 > 高级套间', '312', '2023-03-20 22:41:41', '2023-03-22 00:00:00', 'https://img.zcool.cn/community/01dfed59df19c3a80121ae0c9bc224.jpg@1280w_1l_2o_100sh.jpg', 999, 51);
INSERT INTO `hotel-management`.hotel (id, name, description, hotel_date, head, category, hotel_no, createtime, updatetime, cover, score, nums) VALUES (8, '海洋主题', '海洋风', '2023-03-04', '小兰', '主题房 > 标准', '101', '2023-03-21 14:51:26', '2023-03-22 00:00:00', 'http://localhost:9090/api/hotel/file/download/1679493627169?&token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxIiwiZXhwIjoxNjgwNzg5NjI3fQ.te9N--_hZUvgn6J2AxUNrXNKTXmn1-WhbbD7aA5__-M&play=1', 999, 51);
INSERT INTO `hotel-management`.hotel (id, name, description, hotel_date, head, category, hotel_no, createtime, updatetime, cover, score, nums) VALUES (9, '标准间-大床房', '一张双人床', '2023-03-02', '谢', '标准间 > 商务间', '222', '2023-03-21 19:56:39', '2023-03-22 00:00:00', 'http://localhost:9090/api/hotel/file/download/1679494068336?&token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxIiwiZXhwIjoxNjgwNzkwMDY4fQ.GuPPpZDDDxukdthVj96r0qhxf4CQJC84689PVghGnfw&play=1', 400, 19);
INSERT INTO `hotel-management`.hotel (id, name, description, hotel_date, head, category, hotel_no, createtime, updatetime, cover, score, nums) VALUES (10, '行政间', null, '2023-03-07', '谢', '行政间 > 标准', '401', '2023-03-22 15:29:56', '2023-03-22 00:00:00', 'http://localhost:9090/api/hotel/file/download/1679494158657?&token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxIiwiZXhwIjoxNjgwNzkwMTU4fQ.4Ux9HCXEM7gbuvmgFSFktt3zHqDok63HRBBqNQCZre4&play=1', 600, 9);
INSERT INTO `hotel-management`.hotel (id, name, description, hotel_date, head, category, hotel_no, createtime, updatetime, cover, score, nums) VALUES (11, '标准间-两单', '两张单人床', '2023-03-01', '谢', '标准间 > 商务间', '201', '2023-03-22 15:50:44', '2023-03-22 00:00:00', 'http://localhost:9090/api/hotel/file/download/1679471378269?&token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxIiwiZXhwIjoxNjgwNzY3Mzc4fQ.OAihAh_Vi5OuTd-l18QQtwMIEK9bcwuQFO-SBcq-nqY', 300, 19);
INSERT INTO `hotel-management`.hotel (id, name, description, hotel_date, head, category, hotel_no, createtime, updatetime, cover, score, nums) VALUES (12, '电竞-标准', '四台电脑', '2023-03-05', '小兰', '电竞房 > 标准', '501', '2023-03-22 22:04:22', '2023-03-22 00:00:00', 'http://localhost:9090/api/hotel/file/download/1679493852314?&token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxIiwiZXhwIjoxNjgwNzg5ODUyfQ.c5LvzDEDTLbWRJJJWw9TI7pbJVmb-uFgQG_MUtb2w08&play=1', 100, 20);
INSERT INTO `hotel-management`.hotel (id, name, description, hotel_date, head, category, hotel_no, createtime, updatetime, cover, score, nums) VALUES (13, '标准间-两单', '豪华', '2023-03-09', '王二', '标准间 > 豪华间/高级间', '303', '2023-03-22 22:19:34', '2023-03-22 00:00:00', 'http://localhost:9090/api/hotel/file/download/1679494773605?&token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxIiwiZXhwIjoxNjgwNzkwNzczfQ.D4nec5Ljtu--BTDDEkKLOR4ln-G7OIdzGpOA1cuBftQ&play=1', 999, 19);