create table reserve
(
    id          int auto_increment
        primary key,
    hotel_name  varchar(255)                           null comment '房间名称',
    hotel_no    varchar(255)                           null comment '房间号',
    user_no     varchar(255)                           null comment '用户会员码',
    user_name   varchar(255)                           null comment '用户名称',
    user_phone  varchar(255)                           null comment '用户联系方式',
    createtime  datetime     default CURRENT_TIMESTAMP null comment '创建时间',
    updatetime  datetime                               null comment '更新时间',
    score       int(10)                                null comment '订房积分',
    status      varchar(255) default '已售出'             null,
    days        int          default 1                 null,
    return_date datetime                               null
);

INSERT INTO `hotel-management`.reserve (id, hotel_name, hotel_no, user_no, user_name, user_phone, createtime, updatetime, score, status, days, return_date) VALUES (2, '海洋主题', '101', '202303222120897516', '喵喵', '16718975232', '2023-03-22 22:10:55', null, 999, '已退房', 1, '2023-03-23 00:00:00');
INSERT INTO `hotel-management`.reserve (id, hotel_name, hotel_no, user_no, user_name, user_phone, createtime, updatetime, score, status, days, return_date) VALUES (3, '行政间', '401', '202303221545472355', '谢漪', '15716754289', '2023-03-22 22:12:09', null, 2400, '已售出', 4, '2023-03-26 00:00:00');
INSERT INTO `hotel-management`.reserve (id, hotel_name, hotel_no, user_no, user_name, user_phone, createtime, updatetime, score, status, days, return_date) VALUES (4, '电竞-标准', '501', '202303221697451057', '海星', '17818945340', '2023-03-22 22:12:21', null, 100, '已退房', 1, '2023-03-23 00:00:00');
INSERT INTO `hotel-management`.reserve (id, hotel_name, hotel_no, user_no, user_name, user_phone, createtime, updatetime, score, status, days, return_date) VALUES (5, '海景房', '312', '20230322919151807', '刘藻', '16778786733', '2023-03-22 22:12:31', null, 1998, '已退房', 2, '2023-03-24 00:00:00');
INSERT INTO `hotel-management`.reserve (id, hotel_name, hotel_no, user_no, user_name, user_phone, createtime, updatetime, score, status, days, return_date) VALUES (6, '标准间-两单', '201', '202303221002514942', '水母', '15616787652', '2023-03-22 22:21:17', null, 900, '已售出', 3, '2023-03-25 00:00:00');
INSERT INTO `hotel-management`.reserve (id, hotel_name, hotel_no, user_no, user_name, user_phone, createtime, updatetime, score, status, days, return_date) VALUES (7, '标准间-两单', '303', '202303221545472355', '谢漪', '15716754289', '2023-03-22 22:21:35', null, 999, '已售出', 1, '2023-03-23 00:00:00');
INSERT INTO `hotel-management`.reserve (id, hotel_name, hotel_no, user_no, user_name, user_phone, createtime, updatetime, score, status, days, return_date) VALUES (8, '双套间-标准', '301', '202303221552281606', '小舟', '15716754275', '2023-03-22 22:23:06', null, 5394, '已售出', 6, '2023-03-28 00:00:00');