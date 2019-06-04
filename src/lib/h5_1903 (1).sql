-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-06-04 11:11:12
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `h5_1903`
--

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE `product` (
  `id` int(50) NOT NULL COMMENT '商品ID',
  `title` varchar(255) NOT NULL COMMENT '商品标题',
  `price` double NOT NULL COMMENT '商品价格',
  `pic` varchar(255) NOT NULL COMMENT '商品图片',
  `details` varchar(255) NOT NULL COMMENT '商品详情'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`id`, `title`, `price`, `pic`, `details`) VALUES
(1, '华硕败家之眼ROG Phone游戏手机 全网通', 68, '[{"one":"../img/153e4030796aeebe.jpg"}]', '主屏尺寸 6英寸 主屏分辨率 2160x1080像素 后置摄像头 1200万像素 800万像素 前置摄像头 800万像素 电池容量 4000mAh 电池类型 不可拆卸式电池 CPU型号 高通 骁龙845 CPU频率 2.96GHz 核心数 八核 GPU型号 高通 Adreno630 RAM容量 8GB ROM容量 512GB 手机类型 4G手机 3G手机 智能手机 平板手机 拍照手机 快充手机 游戏手机 操作系统 Android 8.1'),
(2, '联想手机', 50, '[{"one":"../img/d9385848d89e176b.jpg"}]', '联想手机  a238t  双卡双待 京东购买，功能完好，无维修。95新。卖出不退货。送1个塑料机套。无充电器。'),
(11, '【华为正品手机不议价降价了】', 320, '[{"one":"../img/3e89f767ed43cf9e.jpg"}]', 'Huawei华为 9成新左右 畅享5s全网通电信移动联通4G双卡待5.0寸指纹解锁智能正品手机 \n新疆西藏等偏远地区运费待议！'),
(4, '【华为正品手机不议价降价了】', 320, '[{"one":"../img/3e89f767ed43cf9e.jpg"}]', 'Huawei华为 9成新左右 畅享5s全网通电信移动联通4G双卡待5.0寸指纹解锁智能正品手机 \r\n新疆西藏等偏远地区运费待议！');

-- --------------------------------------------------------

--
-- 表的结构 `product2`
--

CREATE TABLE `product2` (
  `id` int(50) NOT NULL COMMENT '商品ID',
  `title` varchar(255) NOT NULL COMMENT '商品标题',
  `price` int(11) NOT NULL COMMENT '商品价格',
  `pic` varchar(255) NOT NULL COMMENT '商品图片',
  `details` varchar(255) NOT NULL COMMENT '商品详情'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `product2`
--

INSERT INTO `product2` (`id`, `title`, `price`, `pic`, `details`) VALUES
(12, '格力京逸（GREE）大1匹 E享舒适 智能睡眠 变频 快速冷暖 壁挂式卧室空调挂机KFR-26GW/NhDbB3', 2600, '[{"one":"../img/a2.jpg"}]', '大1匹 格力京逸变频挂机'),
(11, '长虹 红太阳 3.5公斤双桶筒半自动家用小型迷你洗衣机双缸 带脱水甩干缸XPB35-738SC 黑色 不锈钢脱水桶', 100, '[{"one":"../img/a3.jpg"}]', '黑色 不锈钢脱水桶\r\n'),
(10, '小咖 净旋风系列 XPB36-388S 3.6公斤 迷你洗衣机儿童宝宝脱水双缸双桶半自动 炫蓝色', 100, '[{"one":"../img/a4.jpg"}]', '小咖 净旋风系列 XPB36-388S 3.6公斤 迷你洗衣机儿童宝宝脱水双缸双桶半自动 炫蓝色'),
(7, '美的（Midea）破壁机家用多功能加热破壁料理机 智能预约果汁机辅食机 榨汁机PB12Power311\r\n', 520, '[{"one":"../img/a7.jpg"}]', '八叶破壁丨一键预约丨大火熬煮'),
(8, '小米（MI）小米净化器2智能家用卧室空气净化器除甲醛雾霾PM2.5', 320, '[{"one":"../img/a6.jpg"}]', '九九新'),
(9, '美的（Midea）ZAB10B 家用静音摇头落地塔扇/电风扇/无叶风扇', 145, '[{"one":"../img/a5.jpg"}]', ' 目前使用良好，无质量问题，因工作变动转手！\r\n'),
(1, 'Apple iPhone 5s (A1530) 16GB 金色 移动联通4G手机', 520, '[{"one":"../img/a1.jpg"}]', '金 双网通4G（16G ROM）\r\n99成新 无耳机'),
(2, '【华为正品手机不议价降价了】', 320, '[{"one":"../img/3e89f767ed43cf9e.jpg"}]', 'Huawei华为 9成新左右 畅享5s全网通电信移动联通4G双卡待5.0寸指纹解锁智能正品手机 \r\n新疆西藏等偏远地区运费待议！'),
(3, '华硕败家之眼ROG Phone游戏手机 全网通', 68, '[{"one":"../img/153e4030796aeebe.jpg"}]', '主屏尺寸 6英寸 主屏分辨率 2160x1080像素 后置摄像头 1200万像素 800万像素 前置摄像头 800万像素 电池容量 4000mAh 电池类型 不可拆卸式电池 CPU型号 高通 骁龙845 CPU频率 2.96GHz 核心数 八核 GPU型号 高通 Adreno630 RAM容量 8GB ROM容量 512GB 手机类型 4G手机 3G手机 智能手机 平板手机 拍照手机 快充手机 游戏手机 操作系统 Android 8.1'),
(4, '小米9se 手机 幻彩蓝 6G+128G 全网通', 2000, '[{"one":"../img/e0b44e960191ed05.png"}]', '幻彩蓝 6G 128G 全网通 ，买了20多天，现在公司帮忙办公司号码，公司手机，所以这个刚刚买的手机就出手，支持快递和面交。\r\n我还买了一年的碎屏险，也可以给你'),
(5, 'Apple 苹果  iPhone X 全面屏手机 深空灰色 全网通 64GB', 4500, '[{"one":"../img/dc35468b3c541730.jpg"}]', '深空灰色 全网通 64GB       无维修。三个月质保。95新。    id无锁。。。'),
(6, 'IPhone xr苹果xr手机国行全网通双卡双待128g内存', 4580, '[{"one":"../img/8ba219bd0b0e9cbf.jpg"}]', '二手95新苹果XR双卡双待国行公开版、4g全网通、无拆无修无进液，原装正品，全国在保，功能正常，运行快，128g内存容量足够使用，6.1寸视网膜显示屏全面屏，1200万像素后置摄像头广角镜头，拍照更清晰，最新A12芯片处理器，速度更快');

-- --------------------------------------------------------

--
-- 表的结构 `product3`
--

CREATE TABLE `product3` (
  `id` int(50) NOT NULL COMMENT '商品ID',
  `title` varchar(255) NOT NULL COMMENT '商品标题',
  `price` int(11) NOT NULL COMMENT '商品价格',
  `pic` varchar(255) NOT NULL COMMENT '商品图片',
  `details` varchar(255) NOT NULL COMMENT '商品详情'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `product3`
--

INSERT INTO `product3` (`id`, `title`, `price`, `pic`, `details`) VALUES
(1, '【华为正品手机不议价降价了】', 320, '[{"one":"../img/3e89f767ed43cf9e.jpg"}]', 'Huawei华为 9成新左右 畅享5s全网通电信移动联通4G双卡待5.0寸指纹解锁智能正品手机 \r\n新疆西藏等偏远地区运费待议！'),
(2, 'Apple 苹果  iPhone X 全面屏手机 深空灰色 全网通 64GB', 4500, '[{"one":"../img/dc35468b3c541730.jpg"}]', '深空灰色 全网通 64GB       无维修。三个月质保。95新。    id无锁。。。'),
(3, 'IPhone xr苹果xr手机国行全网通双卡双待128g内存', 4580, '[{"one":"../img/8ba219bd0b0e9cbf.jpg"}]', '二手95新苹果XR双卡双待国行公开版、4g全网通、无拆无修无进液，原装正品，全国在保，功能正常，运行快，128g内存容量足够使用，6.1寸视网膜显示屏全面屏，1200万像素后置摄像头广角镜头，拍照更清晰，最新A12芯片处理器，速度更快');

-- --------------------------------------------------------

--
-- 表的结构 `product4`
--

CREATE TABLE `product4` (
  `id` int(50) NOT NULL COMMENT '商品ID',
  `title` varchar(255) NOT NULL COMMENT '商品标题',
  `price` int(11) NOT NULL COMMENT '商品价格',
  `pic` varchar(255) NOT NULL COMMENT '商品图片',
  `details` varchar(255) NOT NULL COMMENT '商品详情'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `product4`
--

INSERT INTO `product4` (`id`, `title`, `price`, `pic`, `details`) VALUES
(1, '【华为正品手机不议价降价了】', 320, '[{"one":"../img/3e89f767ed43cf9e.jpg"}]', 'Huawei华为 9成新左右 畅享5s全网通电信移动联通4G双卡待5.0寸指纹解锁智能正品手机 \r\n新疆西藏等偏远地区运费待议！'),
(2, '黑鲨一代手机  8+128', 1550, '[{"one":"../img/25628ce703eb415a.jpg"}]', '高通845处理器，就屏幕有划，正常磨损价格好商量，带发票，个人小白信用100.6'),
(3, '魅族16s 骁龙855 全面屏拍照游戏手机 碳纤黑 全网通8G+128G', 2999, '[{"one":"../img/81e30763d1b04f9f.jpg"}]', '碳纤黑 全网通8G 128G ，自己用的苹果x，买来当备用机就用了两天没用过了，用不习惯安卓机，所以闲置出手。随手机赠送自己买的高价手机壳和水凝膜。不讲价，看上可以直接下单，16点之前当天发货。');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `user_id` int(10) NOT NULL COMMENT 'id',
  `user_name` varchar(20) NOT NULL COMMENT '姓名',
  `user_email` varchar(30) NOT NULL COMMENT '邮箱',
  `user_sex` varchar(2) NOT NULL COMMENT '性别',
  `user_password` varchar(30) NOT NULL COMMENT '密码'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_sex`, `user_password`) VALUES
(10017, '', '', '', ''),
(10001, '张三', '1234@qq.com', '男', '1234'),
(10002, '张四', '12345@qq.com', '男', '12345'),
(10003, '三三', '123456', '1', '11'),
(10004, 'aaaa', 'a', 'a', 'aaaaa'),
(10018, '张三3', '123456789', '1', '123456789'),
(10014, '张三san ', '456', '1', '123454'),
(10011, '1', '111', '1', '1'),
(10019, '张三33', '1234567899', '1', '1234567899'),
(10020, '张三311', '1234567899', '1', '1234567891'),
(10021, '张三31111', '11111111111111111111', '1', '1111111111111111'),
(10022, '1111111111', '12315@qq.com', '1', '1111111111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product2`
--
ALTER TABLE `product2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product3`
--
ALTER TABLE `product3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product4`
--
ALTER TABLE `product4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=10023;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
