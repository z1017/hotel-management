create table user
(
    id         int auto_increment
        primary key,
    name       varchar(255)                         null comment '姓名',
    username   varchar(150)                         null comment '会员码',
    age        int                                  null comment '年龄',
    sex        varchar(20)                          null comment '性别',
    phone      varchar(255)                         null comment '联系方式',
    address    varchar(255)                         null comment '地址',
    createtime datetime   default CURRENT_TIMESTAMP null,
    updatetime datetime   default CURRENT_TIMESTAMP null,
    status     tinyint(1) default 1                 null comment '状态',
    account    int(100)                             null comment '余额',
    constraint username_index
        unique (username)
);

INSERT INTO `hotel-management`.user (id, name, username, age, sex, phone, address, createtime, updatetime, status, account) VALUES (1, '喵喵', '202303222120897516', 28, '女', '16718975232', '甘肃', '2023-03-22 21:19:35', '2023-03-22 21:19:35', 1, 1000);
INSERT INTO `hotel-management`.user (id, name, username, age, sex, phone, address, createtime, updatetime, status, account) VALUES (2, '海星', '202303221697451057', 19, '其他', '17818945340', '海里', '2023-03-22 21:20:17', '2023-03-22 21:21:57', 1, 2200);
INSERT INTO `hotel-management`.user (id, name, username, age, sex, phone, address, createtime, updatetime, status, account) VALUES (3, '水母', '202303221002514942', 29, '女', '15616787652', '海里', '2023-03-22 21:20:45', '2023-03-22 21:22:02', 1, 1099);
INSERT INTO `hotel-management`.user (id, name, username, age, sex, phone, address, createtime, updatetime, status, account) VALUES (4, '刘藻', '20230322919151807', 25, '女', '16778786733', '北京', '2023-03-22 21:21:41', '2023-03-22 21:21:41', 1, 1999);
INSERT INTO `hotel-management`.user (id, name, username, age, sex, phone, address, createtime, updatetime, status, account) VALUES (5, '谢漪', '202303221545472355', 39, '女', '15716754289', '北京', '2023-03-22 21:23:10', '2023-03-22 22:22:00', 1, 1600);
INSERT INTO `hotel-management`.user (id, name, username, age, sex, phone, address, createtime, updatetime, status, account) VALUES (6, '小二', '20230322186921746', 21, '男', '17898983743', '上海', '2023-03-22 21:23:50', '2023-03-22 22:22:00', 1, 1800);
INSERT INTO `hotel-management`.user (id, name, username, age, sex, phone, address, createtime, updatetime, status, account) VALUES (7, '小舟', '202303221552281606', 23, '女', '15716754275', '河南', '2023-03-22 22:22:29', '2023-03-22 22:22:29', 1, 4605);