create table category
(
    id         int(99) auto_increment
        primary key,
    name       varchar(255)                        null comment '名称',
    remark     varchar(255)                        null comment '备注',
    pid        int(99)                             null comment '父级id',
    createtime timestamp default CURRENT_TIMESTAMP null,
    updatetime timestamp                           null
);

INSERT INTO `hotel-management`.category (id, name, remark, pid, createtime, updatetime) VALUES (1, '单人间', '房内设一张单人床', null, '2023-03-22 21:25:43', '2023-03-22 00:00:00');
INSERT INTO `hotel-management`.category (id, name, remark, pid, createtime, updatetime) VALUES (2, '标准间', '房内设两张单人床或一张双人床', null, '2023-03-22 21:25:55', '2023-03-22 00:00:00');
INSERT INTO `hotel-management`.category (id, name, remark, pid, createtime, updatetime) VALUES (3, '行政间', '一张双人床，此类型房间单独为一楼层，并配有专用的商务中心，咖啡厅', null, '2023-03-22 21:28:26', '2023-03-22 00:00:00');
INSERT INTO `hotel-management`.category (id, name, remark, pid, createtime, updatetime) VALUES (4, '套间', '由两间或两间以上的房间(内有卫生间和其他附属设施)组成', null, '2023-03-22 21:28:49', null);
INSERT INTO `hotel-management`.category (id, name, remark, pid, createtime, updatetime) VALUES (5, '电竞房', '内配备电脑等设备', null, '2023-03-22 21:30:00', null);
INSERT INTO `hotel-management`.category (id, name, remark, pid, createtime, updatetime) VALUES (6, '主题房', '下有不同主题分类', null, '2023-03-22 21:31:09', null);
INSERT INTO `hotel-management`.category (id, name, remark, pid, createtime, updatetime) VALUES (7, '经济间', '比较经济', 1, '2023-03-22 21:31:37', null);
INSERT INTO `hotel-management`.category (id, name, remark, pid, createtime, updatetime) VALUES (8, '特惠间', '比较便宜', 1, '2023-03-22 21:38:32', null);
INSERT INTO `hotel-management`.category (id, name, remark, pid, createtime, updatetime) VALUES (9, '商务间', '满足商务客人需求', 2, '2023-03-22 21:39:11', null);
INSERT INTO `hotel-management`.category (id, name, remark, pid, createtime, updatetime) VALUES (10, '豪华间/高级间', '档次高一点', 2, '2023-03-22 21:39:54', null);
INSERT INTO `hotel-management`.category (id, name, remark, pid, createtime, updatetime) VALUES (11, '双套间', '连通的两个房间。一间是会客室，一间是卧室', 4, '2023-03-22 21:40:55', null);
INSERT INTO `hotel-management`.category (id, name, remark, pid, createtime, updatetime) VALUES (12, '组合套间', '一种根据需要专门设计的房间，每个房间都有卫生间', 4, '2023-03-22 21:42:28', '2023-03-22 00:00:00');
INSERT INTO `hotel-management`.category (id, name, remark, pid, createtime, updatetime) VALUES (13, '高级套间', ' 由七至八间房组成的套间，走廊有小酒吧。', 4, '2023-03-22 21:45:02', null);
INSERT INTO `hotel-management`.category (id, name, remark, pid, createtime, updatetime) VALUES (14, '标准', null, 5, '2023-03-22 21:45:11', null);
INSERT INTO `hotel-management`.category (id, name, remark, pid, createtime, updatetime) VALUES (15, '豪华', null, 5, '2023-03-22 21:45:19', null);
INSERT INTO `hotel-management`.category (id, name, remark, pid, createtime, updatetime) VALUES (16, '标准', null, 6, '2023-03-22 21:45:26', null);
INSERT INTO `hotel-management`.category (id, name, remark, pid, createtime, updatetime) VALUES (17, '高级', null, 6, '2023-03-22 21:45:36', null);
INSERT INTO `hotel-management`.category (id, name, remark, pid, createtime, updatetime) VALUES (18, '标准', null, 3, '2023-03-22 21:46:07', null);
INSERT INTO `hotel-management`.category (id, name, remark, pid, createtime, updatetime) VALUES (19, '高级', null, 3, '2023-03-22 21:46:18', null);