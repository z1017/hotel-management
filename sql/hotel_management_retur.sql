create table retur
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
    days        int                                    null,
    return_date datetime                               null,
    real_date   datetime                               null comment '实际退房日期'
);

INSERT INTO `hotel-management`.retur (id, hotel_name, hotel_no, user_no, user_name, user_phone, createtime, updatetime, score, status, days, return_date, real_date) VALUES (8, '电竞-标准', '501', '202303221697451057', '海星', '17818945340', '2023-03-22 22:13:11', null, 100, '已退房', 1, '2023-03-23 00:00:00', '2023-03-22 00:00:00');
INSERT INTO `hotel-management`.retur (id, hotel_name, hotel_no, user_no, user_name, user_phone, createtime, updatetime, score, status, days, return_date, real_date) VALUES (9, '海景房', '312', '20230322919151807', '刘藻', '16778786733', '2023-03-22 22:23:26', null, 1998, '已退房', 2, '2023-03-24 00:00:00', '2023-03-22 00:00:00');
INSERT INTO `hotel-management`.retur (id, hotel_name, hotel_no, user_no, user_name, user_phone, createtime, updatetime, score, status, days, return_date, real_date) VALUES (10, '海洋主题', '101', '202303222120897516', '喵喵', '16718975232', '2023-03-22 22:23:44', null, 999, '已退房', 1, '2023-03-23 00:00:00', '2023-03-22 00:00:00');