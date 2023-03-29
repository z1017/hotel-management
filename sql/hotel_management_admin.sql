create table admin
(
    id         int auto_increment
        primary key,
    username   varchar(55)                          null comment '用户名',
    phone      varchar(255)                         null comment '联系方式',
    createtime datetime   default CURRENT_TIMESTAMP null,
    updatetime datetime   default CURRENT_TIMESTAMP null,
    email      varchar(255)                         null comment '邮箱',
    password   varchar(100)                         null comment '密码',
    status     tinyint(1) default 1                 null comment '状态',
    constraint username_key
        unique (username)
);

INSERT INTO `hotel-management`.admin (id, username, phone, createtime, updatetime, email, password, status) VALUES (1, 'zhou', '13889980001', '2023-03-19 14:35:32', '2023-03-19 14:35:32', 'zhou@qq.com', '069a1161caabf30cefa27ced2eba9c0f', 1);
INSERT INTO `hotel-management`.admin (id, username, phone, createtime, updatetime, email, password, status) VALUES (2, 'admin1', '18998998812', '2023-03-19 21:20:29', '2023-03-19 22:49:08', 'admin1@139.com', 'a7dbef0f88b54fad3f91d010a30eff55', 1);
INSERT INTO `hotel-management`.admin (id, username, phone, createtime, updatetime, email, password, status) VALUES (3, 'admin2', '19787889961', '2023-03-19 21:22:13', '2023-03-20 12:32:56', null, '069a1161caabf30cefa27ced2eba9c0f', 0);