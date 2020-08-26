/*
Navicat MySQL Data Transfer

Source Server         : MyConnect
Source Server Version : 80018
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2020-08-20 21:26:42
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `m_city`
-- ----------------------------
DROP TABLE IF EXISTS `m_city`;
CREATE TABLE `m_city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(45) NOT NULL,
  `local_city_name` varchar(45) DEFAULT NULL,
  `country_id` int(11) DEFAULT '0',
  `district` varchar(45) DEFAULT NULL,
  `population` int(11) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`city_id`),
  KEY `cities_fk_country` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2258 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of m_city
-- ----------------------------
INSERT INTO `m_city` VALUES ('1', 'Kabul', null, '482', 'Kabol', '1780000', '2019-08-27 22:38:39', '2019-08-27 22:38:39');
INSERT INTO `m_city` VALUES ('1890', 'Shanghai', '1111', '522', 'Shanghai', '9696300', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1891', 'Peking', null, '522', 'Peking', '7472000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1892', 'Chongqing', null, '522', 'Chongqing', '6351600', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1893', 'Tianjin', null, '522', 'Tianjin', '5286800', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1894', 'Wuhan', null, '522', 'Hubei', '4344600', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1895', 'Harbin', null, '522', 'Heilongjiang', '4289800', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1896', 'Shenyang', null, '522', 'Liaoning', '4265200', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1897', 'Kanton [Guangzhou]', null, '522', 'Guangdong', '4256300', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1898', 'Chengdu', null, '522', 'Sichuan', '3361500', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1899', 'Nanking [Nanjing]', null, '522', 'Jiangsu', '2870300', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1900', 'Changchun', null, '522', 'Jilin', '2812000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1902', 'Dalian', null, '522', 'Liaoning', '2697000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1903', 'Qingdao', null, '522', 'Shandong', '2596000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1904', 'Jinan', null, '522', 'Shandong', '2278100', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1905', 'Hangzhou', null, '522', 'Zhejiang', '2190500', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1906', 'Zhengzhou', null, '522', 'Henan', '2107200', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1907', 'Shijiazhuang', null, '522', 'Hebei', '2041500', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1908', 'Taiyuan', null, '522', 'Shanxi', '1968400', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1909', 'Kunming', null, '522', 'Yunnan', '1829500', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1910', 'Changsha', null, '522', 'Hunan', '1809800', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1911', 'Nanchang', null, '522', 'Jiangxi', '1691600', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1912', 'Fuzhou', null, '522', 'Fujian', '1593800', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1913', 'Lanzhou', null, '522', 'Gansu', '1565800', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1914', 'Guiyang', null, '522', 'Guizhou', '1465200', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1915', 'Ningbo', null, '522', 'Zhejiang', '1371200', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1916', 'Hefei', null, '522', 'Anhui', '1369100', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1918', 'Anshan', null, '522', 'Liaoning', '1200000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1919', 'Fushun', null, '522', 'Liaoning', '1200000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1920', 'Nanning', null, '522', 'Guangxi', '1161800', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1921', 'Zibo', null, '522', 'Shandong', '1140000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1922', 'Qiqihar', null, '522', 'Heilongjiang', '1070000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1923', 'Jilin', null, '522', 'Jilin', '1040000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1924', 'Tangshan', null, '522', 'Hebei', '1040000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1925', 'Baotou', null, '522', 'Inner Mongolia', '980000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1926', 'Shenzhen', null, '522', 'Guangdong', '950500', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1927', 'Hohhot', null, '522', 'Inner Mongolia', '916700', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1928', 'Handan', null, '522', 'Hebei', '840000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1929', 'Wuxi', null, '522', 'Jiangsu', '830000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1930', 'Xuzhou', null, '522', 'Jiangsu', '810000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1931', 'Datong', null, '522', 'Shanxi', '800000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1932', 'Yichun', null, '522', 'Heilongjiang', '800000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1933', 'Benxi', null, '522', 'Liaoning', '770000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1934', 'Luoyang', null, '522', 'Henan', '760000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1935', 'Suzhou', null, '522', 'Jiangsu', '710000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1936', 'Xining', null, '522', 'Qinghai', '700200', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1937', 'Huainan', null, '522', 'Anhui', '700000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1938', 'Jixi', null, '522', 'Heilongjiang', '683885', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1939', 'Daqing', null, '522', 'Heilongjiang', '660000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1940', 'Fuxin', null, '522', 'Liaoning', '640000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1941', 'Amoy [Xiamen]', null, '522', 'Fujian', '627500', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1942', 'Liuzhou', null, '522', 'Guangxi', '610000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1943', 'Shantou', null, '522', 'Guangdong', '580000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1944', 'Jinzhou', null, '522', 'Liaoning', '570000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1945', 'Mudanjiang', null, '522', 'Heilongjiang', '570000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1946', 'Yinchuan', null, '522', 'Ningxia', '544500', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1947', 'Changzhou', null, '522', 'Jiangsu', '530000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1948', 'Zhangjiakou', null, '522', 'Hebei', '530000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1949', 'Dandong', null, '522', 'Liaoning', '520000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1950', 'Hegang', null, '522', 'Heilongjiang', '520000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1951', 'Kaifeng', null, '522', 'Henan', '510000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1952', 'Jiamusi', null, '522', 'Heilongjiang', '493409', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1953', 'Liaoyang', null, '522', 'Liaoning', '492559', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1954', 'Hengyang', null, '522', 'Hunan', '487148', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1955', 'Baoding', null, '522', 'Hebei', '483155', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1956', 'Hunjiang', null, '522', 'Jilin', '482043', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1957', 'Xinxiang', null, '522', 'Henan', '473762', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1958', 'Huangshi', null, '522', 'Hubei', '457601', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1959', 'Haikou', null, '522', 'Hainan', '454300', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1960', 'Yantai', null, '522', 'Shandong', '452127', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1961', 'Bengbu', null, '522', 'Anhui', '449245', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1962', 'Xiangtan', null, '522', 'Hunan', '441968', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1963', 'Weifang', null, '522', 'Shandong', '428522', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1964', 'Wuhu', null, '522', 'Anhui', '425740', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1965', 'Pingxiang', null, '522', 'Jiangxi', '425579', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1966', 'Yingkou', null, '522', 'Liaoning', '421589', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1967', 'Anyang', null, '522', 'Henan', '420332', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1968', 'Panzhihua', null, '522', 'Sichuan', '415466', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1969', 'Pingdingshan', null, '522', 'Henan', '410775', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1970', 'Xiangfan', null, '522', 'Hubei', '410407', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1971', 'Zhuzhou', null, '522', 'Hunan', '409924', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1972', 'Jiaozuo', null, '522', 'Henan', '409100', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1973', 'Wenzhou', null, '522', 'Zhejiang', '401871', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1974', 'Zhangjiang', null, '522', 'Guangdong', '400997', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1975', 'Zigong', null, '522', 'Sichuan', '393184', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1976', 'Shuangyashan', null, '522', 'Heilongjiang', '386081', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1977', 'Zaozhuang', null, '522', 'Shandong', '380846', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1978', 'Yakeshi', null, '522', 'Inner Mongolia', '377869', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1979', 'Yichang', null, '522', 'Hubei', '371601', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1980', 'Zhenjiang', null, '522', 'Jiangsu', '368316', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1981', 'Huaibei', null, '522', 'Anhui', '366549', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1982', 'Qinhuangdao', null, '522', 'Hebei', '364972', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1983', 'Guilin', null, '522', 'Guangxi', '364130', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1984', 'Liupanshui', null, '522', 'Guizhou', '363954', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1985', 'Panjin', null, '522', 'Liaoning', '362773', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1986', 'Yangquan', null, '522', 'Shanxi', '362268', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1987', 'Jinxi', null, '522', 'Liaoning', '357052', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1988', 'Liaoyuan', null, '522', 'Jilin', '354141', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1989', 'Lianyungang', null, '522', 'Jiangsu', '354139', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1990', 'Xianyang', null, '522', 'Shaanxi', '352125', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1992', 'Chifeng', null, '522', 'Inner Mongolia', '350077', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1993', 'Shaoguan', null, '522', 'Guangdong', '350043', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1994', 'Nantong', null, '522', 'Jiangsu', '343341', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1995', 'Leshan', null, '522', 'Sichuan', '341128', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1996', 'Baoji', null, '522', 'Shaanxi', '337765', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1997', 'Linyi', null, '522', 'Shandong', '324720', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1998', 'Tonghua', null, '522', 'Jilin', '324600', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('1999', 'Siping', null, '522', 'Jilin', '317223', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2000', 'Changzhi', null, '522', 'Shanxi', '317144', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2001', 'Tengzhou', null, '522', 'Shandong', '315083', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2002', 'Chaozhou', null, '522', 'Guangdong', '313469', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2003', 'Yangzhou', null, '522', 'Jiangsu', '312892', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2004', 'Dongwan', null, '522', 'Guangdong', '308669', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2006', 'Foshan', null, '522', 'Guangdong', '303160', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2007', 'Yueyang', null, '522', 'Hunan', '302800', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2008', 'Xingtai', null, '522', 'Hebei', '302789', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2009', 'Changde', null, '522', 'Hunan', '301276', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2010', 'Shihezi', null, '522', 'Xinxiang', '299676', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2011', 'Yancheng', null, '522', 'Jiangsu', '296831', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2012', 'Jiujiang', null, '522', 'Jiangxi', '291187', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2013', 'Dongying', null, '522', 'Shandong', '281728', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2014', 'Shashi', null, '522', 'Hubei', '281352', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2015', 'Xintai', null, '522', 'Shandong', '281248', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2016', 'Jingdezhen', null, '522', 'Jiangxi', '281183', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2017', 'Tongchuan', null, '522', 'Shaanxi', '280657', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2018', 'Zhongshan', null, '522', 'Guangdong', '278829', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2019', 'Shiyan', null, '522', 'Hubei', '273786', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2020', 'Tieli', null, '522', 'Heilongjiang', '265683', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2021', 'Jining', null, '522', 'Shandong', '265248', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2022', 'Wuhai', null, '522', 'Inner Mongolia', '264081', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2023', 'Mianyang', null, '522', 'Sichuan', '262947', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2024', 'Luzhou', null, '522', 'Sichuan', '262892', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2025', 'Zunyi', null, '522', 'Guizhou', '261862', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2026', 'Shizuishan', null, '522', 'Ningxia', '257862', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2027', 'Neijiang', null, '522', 'Sichuan', '256012', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2028', 'Tongliao', null, '522', 'Inner Mongolia', '255129', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2029', 'Tieling', null, '522', 'Liaoning', '254842', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2030', 'Wafangdian', null, '522', 'Liaoning', '251733', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2031', 'Anqing', null, '522', 'Anhui', '250718', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2032', 'Shaoyang', null, '522', 'Hunan', '247227', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2033', 'Laiwu', null, '522', 'Shandong', '246833', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2034', 'Chengde', null, '522', 'Hebei', '246799', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2035', 'Tianshui', null, '522', 'Gansu', '244974', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2036', 'Nanyang', null, '522', 'Henan', '243303', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2037', 'Cangzhou', null, '522', 'Hebei', '242708', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2038', 'Yibin', null, '522', 'Sichuan', '241019', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2039', 'Huaiyin', null, '522', 'Jiangsu', '239675', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2040', 'Dunhua', null, '522', 'Jilin', '235100', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2041', 'Yanji', null, '522', 'Jilin', '230892', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2042', 'Jiangmen', null, '522', 'Guangdong', '230587', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2043', 'Tongling', null, '522', 'Anhui', '228017', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2044', 'Suihua', null, '522', 'Heilongjiang', '227881', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2045', 'Gongziling', null, '522', 'Jilin', '226569', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2046', 'Xiantao', null, '522', 'Hubei', '222884', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2047', 'Chaoyang', null, '522', 'Liaoning', '222394', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2048', 'Ganzhou', null, '522', 'Jiangxi', '220129', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2049', 'Huzhou', null, '522', 'Zhejiang', '218071', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2050', 'Baicheng', null, '522', 'Jilin', '217987', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2051', 'Shangzi', null, '522', 'Heilongjiang', '215373', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2052', 'Yangjiang', null, '522', 'Guangdong', '215196', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2053', 'Qitaihe', null, '522', 'Heilongjiang', '214957', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2054', 'Gejiu', null, '522', 'Yunnan', '214294', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2055', 'Jiangyin', null, '522', 'Jiangsu', '213659', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2056', 'Hebi', null, '522', 'Henan', '212976', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2057', 'Jiaxing', null, '522', 'Zhejiang', '211526', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2058', 'Wuzhou', null, '522', 'Guangxi', '210452', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2059', 'Meihekou', null, '522', 'Jilin', '209038', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2060', 'Xuchang', null, '522', 'Henan', '208815', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2061', 'Liaocheng', null, '522', 'Shandong', '207844', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2062', 'Haicheng', null, '522', 'Liaoning', '205560', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2063', 'Qianjiang', null, '522', 'Hubei', '205504', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2064', 'Baiyin', null, '522', 'Gansu', '204970', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2066', 'Yixing', null, '522', 'Jiangsu', '200824', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2067', 'Laizhou', null, '522', 'Shandong', '198664', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2068', 'Qaramay', null, '522', 'Xinxiang', '197602', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2069', 'Acheng', null, '522', 'Heilongjiang', '197595', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2070', 'Dezhou', null, '522', 'Shandong', '195485', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2071', 'Nanping', null, '522', 'Fujian', '195064', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2072', 'Zhaoqing', null, '522', 'Guangdong', '194784', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2073', 'Beipiao', null, '522', 'Liaoning', '194301', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2074', 'Fengcheng', null, '522', 'Jiangxi', '193784', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2075', 'Fuyu', null, '522', 'Jilin', '192981', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2076', 'Xinyang', null, '522', 'Henan', '192509', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2077', 'Dongtai', null, '522', 'Jiangsu', '192247', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2078', 'Yuci', null, '522', 'Shanxi', '191356', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2079', 'Honghu', null, '522', 'Hubei', '190772', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2080', 'Ezhou', null, '522', 'Hubei', '190123', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2081', 'Heze', null, '522', 'Shandong', '189293', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2082', 'Daxian', null, '522', 'Sichuan', '188101', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2083', 'Linfen', null, '522', 'Shanxi', '187309', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2084', 'Tianmen', null, '522', 'Hubei', '186332', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2085', 'Yiyang', null, '522', 'Hunan', '185818', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2086', 'Quanzhou', null, '522', 'Fujian', '185154', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2087', 'Rizhao', null, '522', 'Shandong', '185048', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2088', 'Deyang', null, '522', 'Sichuan', '182488', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2089', 'Guangyuan', null, '522', 'Sichuan', '182241', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2090', 'Changshu', null, '522', 'Jiangsu', '181805', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2091', 'Zhangzhou', null, '522', 'Fujian', '181424', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2092', 'Hailar', null, '522', 'Inner Mongolia', '180650', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2093', 'Nanchong', null, '522', 'Sichuan', '180273', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2094', 'Jiutai', null, '522', 'Jilin', '180130', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2095', 'Zhaodong', null, '522', 'Heilongjiang', '179976', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2096', 'Shaoxing', null, '522', 'Zhejiang', '179818', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2097', 'Fuyang', null, '522', 'Anhui', '179572', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2098', 'Maoming', null, '522', 'Guangdong', '178683', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2099', 'Qujing', null, '522', 'Yunnan', '178669', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2100', 'Ghulja', null, '522', 'Xinxiang', '177193', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2101', 'Jiaohe', null, '522', 'Jilin', '176367', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2102', 'Puyang', null, '522', 'Henan', '175988', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2103', 'Huadian', null, '522', 'Jilin', '175873', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2104', 'Jiangyou', null, '522', 'Sichuan', '175753', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2105', 'Qashqar', null, '522', 'Xinxiang', '174570', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2106', 'Anshun', null, '522', 'Guizhou', '174142', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2107', 'Fuling', null, '522', 'Sichuan', '173878', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2108', 'Xinyu', null, '522', 'Jiangxi', '173524', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2109', 'Hanzhong', null, '522', 'Shaanxi', '169930', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2110', 'Danyang', null, '522', 'Jiangsu', '169603', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2111', 'Chenzhou', null, '522', 'Hunan', '169400', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2112', 'Xiaogan', null, '522', 'Hubei', '166280', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2113', 'Shangqiu', null, '522', 'Henan', '164880', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2114', 'Zhuhai', null, '522', 'Guangdong', '164747', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2115', 'Qingyuan', null, '522', 'Guangdong', '164641', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2116', 'Aqsu', null, '522', 'Xinxiang', '164092', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2117', 'Jining', null, '522', 'Inner Mongolia', '163552', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2118', 'Xiaoshan', null, '522', 'Zhejiang', '162930', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2119', 'Zaoyang', null, '522', 'Hubei', '162198', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2120', 'Xinghua', null, '522', 'Jiangsu', '161910', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2121', 'Hami', null, '522', 'Xinxiang', '161315', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2122', 'Huizhou', null, '522', 'Guangdong', '161023', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2123', 'Jinmen', null, '522', 'Hubei', '160794', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2124', 'Sanming', null, '522', 'Fujian', '160691', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2125', 'Ulanhot', null, '522', 'Inner Mongolia', '159538', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2126', 'Korla', null, '522', 'Xinxiang', '159344', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2127', 'Wanxian', null, '522', 'Sichuan', '156823', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2129', 'Zhoushan', null, '522', 'Zhejiang', '156317', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2130', 'Liangcheng', null, '522', 'Shandong', '156307', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2131', 'Jiaozhou', null, '522', 'Shandong', '153364', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2132', 'Taizhou', null, '522', 'Jiangsu', '152442', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2133', 'Suzhou', null, '522', 'Anhui', '151862', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2134', 'Yichun', null, '522', 'Jiangxi', '151585', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2135', 'Taonan', null, '522', 'Jilin', '150168', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2136', 'Pingdu', null, '522', 'Shandong', '150123', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2138', 'Longkou', null, '522', 'Shandong', '148362', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2139', 'Langfang', null, '522', 'Hebei', '148105', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2140', 'Zhoukou', null, '522', 'Henan', '146288', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2141', 'Suining', null, '522', 'Sichuan', '146086', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2142', 'Yulin', null, '522', 'Guangxi', '144467', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2143', 'Jinhua', null, '522', 'Zhejiang', '144280', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2145', 'Shuangcheng', null, '522', 'Heilongjiang', '142659', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2146', 'Suizhou', null, '522', 'Hubei', '142302', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2147', 'Ankang', null, '522', 'Shaanxi', '142170', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2148', 'Weinan', null, '522', 'Shaanxi', '140169', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2149', 'Longjing', null, '522', 'Jilin', '139417', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2151', 'Lengshuijiang', null, '522', 'Hunan', '137994', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2152', 'Laiyang', null, '522', 'Shandong', '137080', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2153', 'Xianning', null, '522', 'Hubei', '136811', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2154', 'Dali', null, '522', 'Yunnan', '136554', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2155', 'Anda', null, '522', 'Heilongjiang', '136446', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2156', 'Jincheng', null, '522', 'Shanxi', '136396', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2157', 'Longyan', null, '522', 'Fujian', '134481', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2158', 'Xichang', null, '522', 'Sichuan', '134419', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2159', 'Wendeng', null, '522', 'Shandong', '133910', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2160', 'Hailun', null, '522', 'Heilongjiang', '133565', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2161', 'Binzhou', null, '522', 'Shandong', '133555', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2162', 'Linhe', null, '522', 'Inner Mongolia', '133183', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2163', 'Wuwei', null, '522', 'Gansu', '133101', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2164', 'Duyun', null, '522', 'Guizhou', '132971', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2165', 'Mishan', null, '522', 'Heilongjiang', '132744', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2166', 'Shangrao', null, '522', 'Jiangxi', '132455', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2167', 'Changji', null, '522', 'Xinxiang', '132260', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2168', 'Meixian', null, '522', 'Guangdong', '132156', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2169', 'Yushu', null, '522', 'Jilin', '131861', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2170', 'Tiefa', null, '522', 'Liaoning', '131807', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2172', 'Leiyang', null, '522', 'Hunan', '130115', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2173', 'Zalantun', null, '522', 'Inner Mongolia', '130031', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2174', 'Weihai', null, '522', 'Shandong', '128888', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2175', 'Loudi', null, '522', 'Hunan', '128418', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2176', 'Qingzhou', null, '522', 'Shandong', '128258', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2177', 'Qidong', null, '522', 'Jiangsu', '126872', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2178', 'Huaihua', null, '522', 'Hunan', '126785', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2179', 'Luohe', null, '522', 'Henan', '126438', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2180', 'Chuzhou', null, '522', 'Anhui', '125341', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2181', 'Kaiyuan', null, '522', 'Liaoning', '124219', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2182', 'Linqing', null, '522', 'Shandong', '123958', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2183', 'Chaohu', null, '522', 'Anhui', '123676', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2184', 'Laohekou', null, '522', 'Hubei', '123366', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2185', 'Dujiangyan', null, '522', 'Sichuan', '123357', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2186', 'Zhumadian', null, '522', 'Henan', '123232', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2187', 'Linchuan', null, '522', 'Jiangxi', '121949', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2188', 'Jiaonan', null, '522', 'Shandong', '121397', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2189', 'Sanmenxia', null, '522', 'Henan', '120523', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2190', 'Heyuan', null, '522', 'Guangdong', '120101', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2191', 'Manzhouli', null, '522', 'Inner Mongolia', '120023', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2192', 'Lhasa', null, '522', 'Tibet', '120000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2193', 'Lianyuan', null, '522', 'Hunan', '118858', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2194', 'Kuytun', null, '522', 'Xinxiang', '118553', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2195', 'Puqi', null, '522', 'Hubei', '117264', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2196', 'Hongjiang', null, '522', 'Hunan', '116188', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2197', 'Qinzhou', null, '522', 'Guangxi', '114586', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2198', 'Renqiu', null, '522', 'Hebei', '114256', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2199', 'Yuyao', null, '522', 'Zhejiang', '114065', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2200', 'Guigang', null, '522', 'Guangxi', '114025', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2201', 'Kaili', null, '522', 'Guizhou', '113958', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2203', 'Beihai', null, '522', 'Guangxi', '112673', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2204', 'Xuangzhou', null, '522', 'Anhui', '112673', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2205', 'Quzhou', null, '522', 'Zhejiang', '112373', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2207', 'Zixing', null, '522', 'Hunan', '110048', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2208', 'Liyang', null, '522', 'Jiangsu', '109520', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2209', 'Yizheng', null, '522', 'Jiangsu', '109268', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2210', 'Yumen', null, '522', 'Gansu', '109234', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2211', 'Liling', null, '522', 'Hunan', '108504', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2212', 'Yuncheng', null, '522', 'Shanxi', '108359', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2213', 'Shanwei', null, '522', 'Guangdong', '107847', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2214', 'Cixi', null, '522', 'Zhejiang', '107329', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2215', 'Yuanjiang', null, '522', 'Hunan', '107004', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2216', 'Bozhou', null, '522', 'Anhui', '106346', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2217', 'Jinchang', null, '522', 'Gansu', '105287', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2219', 'Suqian', null, '522', 'Jiangsu', '105021', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2220', 'Shishou', null, '522', 'Hubei', '104571', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2221', 'Hengshui', null, '522', 'Hebei', '104269', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2222', 'Danjiangkou', null, '522', 'Hubei', '103211', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2223', 'Fujin', null, '522', 'Heilongjiang', '103104', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2224', 'Sanya', null, '522', 'Hainan', '102820', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2225', 'Guangshui', null, '522', 'Hubei', '102770', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2226', 'Huangshan', null, '522', 'Anhui', '102628', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2227', 'Xingcheng', null, '522', 'Liaoning', '102384', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2228', 'Zhucheng', null, '522', 'Shandong', '102134', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2229', 'Kunshan', null, '522', 'Jiangsu', '102052', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2230', 'Haining', null, '522', 'Zhejiang', '100478', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2231', 'Pingliang', null, '522', 'Gansu', '99265', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2232', 'Fuqing', null, '522', 'Fujian', '99193', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2233', 'Xinzhou', null, '522', 'Shanxi', '98667', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2234', 'Jieyang', null, '522', 'Guangdong', '98531', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2235', 'Zhangjiagang', null, '522', 'Jiangsu', '97994', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2236', 'Tong Xian', null, '522', 'Peking', '97168', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2238', 'Jinzhou', null, '522', 'Liaoning', '95761', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2239', 'Emeishan', null, '522', 'Sichuan', '94000', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2240', 'Enshi', null, '522', 'Hubei', '93056', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2241', 'Bose', null, '522', 'Guangxi', '93009', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2242', 'Yuzhou', null, '522', 'Henan', '92889', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2243', 'Kaiyuan', null, '522', 'Yunnan', '91999', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2244', 'Tumen', null, '522', 'Jilin', '91471', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2245', 'Putian', null, '522', 'Fujian', '91030', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2246', 'Linhai', null, '522', 'Zhejiang', '90870', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2247', 'Xilin Hot', null, '522', 'Inner Mongolia', '90646', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2248', 'Shaowu', null, '522', 'Fujian', '90286', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2249', 'Junan', null, '522', 'Shandong', '90222', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2250', 'Huaying', null, '522', 'Sichuan', '89400', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2251', 'Pingyi', null, '522', 'Shandong', '89373', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2252', 'Huangyan', null, '522', 'Zhejiang', '89288', '2019-08-27 22:38:40', '2019-08-27 22:38:40');
INSERT INTO `m_city` VALUES ('2255', 'testName1', 'bbb', '522', null, '0', null, '2019-08-27 14:38:39');
INSERT INTO `m_city` VALUES ('2256', 'testName1', 'fffffff2', '522', null, '0', null, '2019-08-27 14:38:39');
INSERT INTO `m_city` VALUES ('2257', 'testName2', 'bbb', '522', null, '0', null, '2019-08-27 14:38:39');

-- ----------------------------
-- Table structure for `m_country`
-- ----------------------------
DROP TABLE IF EXISTS `m_country`;
CREATE TABLE `m_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(50) NOT NULL,
  `local_country_name` varchar(45) DEFAULT NULL,
  `country_code` varchar(20) NOT NULL,
  `country_code2` varchar(20) DEFAULT NULL,
  `continent` enum('Asia','Europe','North America','Africa','Oceania','Antarctica','South America') DEFAULT 'Asia',
  `region` varchar(45) DEFAULT NULL,
  `surface_area` float(10,2) DEFAULT NULL,
  `indep_year` int(11) DEFAULT NULL,
  `population` int(11) DEFAULT NULL,
  `life_expectancy` float DEFAULT NULL,
  `gnp` float(10,2) DEFAULT NULL,
  `government_form` varchar(45) DEFAULT NULL,
  `head_of_state` varchar(60) DEFAULT NULL,
  `capital` int(11) DEFAULT '0',
  `time_zone` varchar(50) DEFAULT NULL,
  `language_id` int(11) DEFAULT '0',
  `currency_id` int(11) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`country_id`),
  UNIQUE KEY `country_code_UNIQUE` (`country_code`)
) ENGINE=InnoDB AUTO_INCREMENT=523 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of m_country
-- ----------------------------
INSERT INTO `m_country` VALUES ('481', 'Aruba', 'Aruba', 'ABW', 'AW', 'North America', 'Caribbean', '193.00', null, '103000', '78.4', '828.00', 'Nonmetropolitan Territory of The Netherlands', 'Beatrix', '129', null, '0', '0', '2019-08-27 22:38:39', '2019-08-27 22:38:39');
INSERT INTO `m_country` VALUES ('482', 'Afghanistan', 'Afganistan/Afqanestan', 'AFG', 'AF', 'Asia', 'Southern and Central Asia', '652090.00', '1919', '22720000', '45.9', '5976.00', 'Islamic Emirate', 'Mohammad Omar', '1', null, '0', '0', '2019-08-27 22:38:39', '2019-08-27 22:38:39');
INSERT INTO `m_country` VALUES ('522', 'China', 'Zhongquo', 'CHN', 'CN', 'Asia', 'Eastern Asia', '9572900.00', '-1523', '1277558000', '71.4', '982268.00', 'People\'sRepublic', 'Jiang Zemin', '1891', null, '0', '0', '2019-08-27 22:38:39', '2019-08-27 22:38:39');

-- ----------------------------
-- Table structure for `m_gzbd`
-- ----------------------------
DROP TABLE IF EXISTS `m_gzbd`;
CREATE TABLE `m_gzbd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `diagnosis` int(11) DEFAULT NULL,
  `overseas_import` int(11) DEFAULT NULL,
  `cure` int(11) DEFAULT NULL,
  `death` int(11) DEFAULT NULL,
  `therapy` int(11) DEFAULT NULL,
  `observation` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_gzbd
-- ----------------------------
INSERT INTO `m_gzbd` VALUES ('1', '四川省', '2020-08-20 00:00:00', '627', '86', '786', '1', '15', '16');
INSERT INTO `m_gzbd` VALUES ('2', '四川省', '2020-08-19 00:00:00', '543', '98', '345', '3', '14', '15');
INSERT INTO `m_gzbd` VALUES ('3', '四川省', '2020-08-18 00:00:00', '345', '76', '345', '5', '15', '15');
INSERT INTO `m_gzbd` VALUES ('4', '四川省', '2020-08-17 00:00:00', '234', '66', '123', '7', '33', '15');
INSERT INTO `m_gzbd` VALUES ('5', '四川省', '2020-08-16 00:00:00', '324', '55', '876', '9', '15', '16');
INSERT INTO `m_gzbd` VALUES ('6', '四川省', '2020-08-15 00:00:00', '123', '77', '998', '24', '14', '18');
INSERT INTO `m_gzbd` VALUES ('7', '四川省', '2020-08-14 00:00:00', '777', '22', '444', '2', '11', '13');
INSERT INTO `m_gzbd` VALUES ('8', '四川省', '2020-08-13 00:00:00', '888', '77', '354', '13', '13', '11');
INSERT INTO `m_gzbd` VALUES ('9', '四川省', '2020-08-12 00:00:00', '616', '75', '600', '3', '13', '11');
INSERT INTO `m_gzbd` VALUES ('10', '四川省', '2020-08-11 00:00:00', '615', '74', '599', '3', '13', '12');
INSERT INTO `m_gzbd` VALUES ('11', '四川省', '2020-08-10 00:00:00', '615', '74', '599', '3', '13', '12');
INSERT INTO `m_gzbd` VALUES ('12', '四川省', '2020-08-09 00:00:00', '611', '70', '599', '3', '9', '12');
INSERT INTO `m_gzbd` VALUES ('13', '四川省', '2020-08-08 00:00:00', '611', '70', '599', '3', '9', '12');
INSERT INTO `m_gzbd` VALUES ('14', '四川省', '2020-08-07 00:00:00', '611', '70', '599', '3', '9', '10');
INSERT INTO `m_gzbd` VALUES ('15', '四川省', '2020-08-06 00:00:00', '610', '69', '598', '3', '9', '9');
INSERT INTO `m_gzbd` VALUES ('16', '四川省', '2020-08-05 00:00:00', '610', '69', '598', '3', '9', '10');
INSERT INTO `m_gzbd` VALUES ('17', '四川省', '2020-08-04 00:00:00', '609', '68', '597', '3', '9', '9');
INSERT INTO `m_gzbd` VALUES ('18', '四川省', '2020-08-03 00:00:00', '608', '67', '597', '3', '8', '10');
INSERT INTO `m_gzbd` VALUES ('19', '四川省', '2020-08-02 00:00:00', '608', '67', '597', '3', '8', '9');
INSERT INTO `m_gzbd` VALUES ('20', '四川省', '2020-08-01 00:00:00', '604', '63', '597', '3', '4', '9');
INSERT INTO `m_gzbd` VALUES ('21', '四川省', '2020-07-31 00:00:00', '604', '63', '597', '3', '4', '12');
INSERT INTO `m_gzbd` VALUES ('22', '四川省', '2020-07-30 00:00:00', '604', '63', '596', '3', '5', '12');
INSERT INTO `m_gzbd` VALUES ('23', '四川省', '2020-07-29 00:00:00', '604', '63', '596', '3', '5', '12');
INSERT INTO `m_gzbd` VALUES ('24', '四川省', '2020-07-28 00:00:00', '604', '63', '595', '3', '6', '12');
INSERT INTO `m_gzbd` VALUES ('25', '四川省', '2020-07-27 00:00:00', '604', '63', '594', '3', '7', '12');
INSERT INTO `m_gzbd` VALUES ('26', '四川省', '2020-07-26 00:00:00', '603', '62', '594', '3', '6', '11');
INSERT INTO `m_gzbd` VALUES ('27', '四川省', '2020-07-25 00:00:00', '603', '62', '594', '3', '6', '12');
INSERT INTO `m_gzbd` VALUES ('28', '四川省', '2020-07-24 00:00:00', '603', '62', '594', '3', '6', '12');
INSERT INTO `m_gzbd` VALUES ('29', '四川省', '2020-07-23 00:00:00', '603', '62', '594', '3', '6', '12');
INSERT INTO `m_gzbd` VALUES ('30', '四川省', '2020-07-22 00:00:00', '603', '62', '593', '3', '7', '12');
INSERT INTO `m_gzbd` VALUES ('31', '四川省', '2020-07-21 00:00:00', '603', '62', '593', '3', '7', '10');
INSERT INTO `m_gzbd` VALUES ('32', '四川省', '2020-07-20 00:00:00', '602', '61', '592', '3', '7', '11');
INSERT INTO `m_gzbd` VALUES ('33', '四川省', '2020-07-19 00:00:00', '599', '58', '592', '3', '4', '8');
INSERT INTO `m_gzbd` VALUES ('34', '四川省', '2020-07-18 00:00:00', '599', '58', '592', '3', '4', '8');
INSERT INTO `m_gzbd` VALUES ('35', '四川省', '2020-07-17 00:00:00', '599', '58', '591', '3', '5', '9');
INSERT INTO `m_gzbd` VALUES ('36', '四川省', '2020-07-16 00:00:00', '599', '58', '590', '3', '6', '10');
INSERT INTO `m_gzbd` VALUES ('37', '四川省', '2020-07-15 00:00:00', '599', '58', '589', '3', '7', '11');
INSERT INTO `m_gzbd` VALUES ('38', '四川省', '2020-07-14 00:00:00', '599', '58', '589', '3', '7', '11');
INSERT INTO `m_gzbd` VALUES ('39', '四川省', '2020-07-13 00:00:00', '599', '58', '587', '3', '9', '11');
INSERT INTO `m_gzbd` VALUES ('40', '四川省', '2020-07-12 00:00:00', '599', '58', '587', '3', '9', '11');
INSERT INTO `m_gzbd` VALUES ('41', '四川省', '2020-07-11 00:00:00', '599', '58', '587', '3', '9', '11');
INSERT INTO `m_gzbd` VALUES ('42', '四川省', '2020-07-10 00:00:00', '599', '58', '585', '3', '11', '11');
INSERT INTO `m_gzbd` VALUES ('43', '四川省', '2020-07-09 00:00:00', '599', '58', '582', '3', '14', '11');
INSERT INTO `m_gzbd` VALUES ('44', '四川省', '2020-07-08 00:00:00', '598', '57', '581', '3', '14', '11');
INSERT INTO `m_gzbd` VALUES ('45', '四川省', '2020-07-07 00:00:00', '598', '57', '581', '3', '14', '10');
INSERT INTO `m_gzbd` VALUES ('46', '四川省', '2020-07-06 00:00:00', '596', '55', '581', '3', '12', '10');
INSERT INTO `m_gzbd` VALUES ('47', '四川省', '2020-07-05 00:00:00', '596', '55', '581', '3', '12', '6');
INSERT INTO `m_gzbd` VALUES ('48', '四川省', '2020-07-04 00:00:00', '595', '54', '581', '3', '11', '7');
INSERT INTO `m_gzbd` VALUES ('49', '四川省', '2020-07-03 00:00:00', '595', '54', '581', '3', '11', '7');
INSERT INTO `m_gzbd` VALUES ('50', '四川省', '2020-07-02 00:00:00', '595', '54', '580', '3', '12', '7');
INSERT INTO `m_gzbd` VALUES ('51', '四川省', '2020-07-01 00:00:00', '595', '54', '580', '3', '12', '7');
INSERT INTO `m_gzbd` VALUES ('52', '四川省', '2020-06-30 00:00:00', '595', '54', '578', '3', '14', '7');
INSERT INTO `m_gzbd` VALUES ('53', '四川省', '2020-06-29 00:00:00', '592', '51', '577', '3', '12', '10');
INSERT INTO `m_gzbd` VALUES ('54', '四川省', '2020-06-28 00:00:00', '589', '48', '575', '3', '11', '7');
INSERT INTO `m_gzbd` VALUES ('55', '四川省', '2020-06-27 00:00:00', '589', '48', '575', '3', '11', '7');
INSERT INTO `m_gzbd` VALUES ('56', '四川省', '2020-06-26 00:00:00', '589', '48', '575', '3', '11', '7');
INSERT INTO `m_gzbd` VALUES ('57', '四川省', '2020-06-25 00:00:00', '589', '48', '575', '3', '11', '6');
INSERT INTO `m_gzbd` VALUES ('58', '四川省', '2020-06-24 00:00:00', '589', '48', '573', '3', '13', '8');
INSERT INTO `m_gzbd` VALUES ('59', '四川省', '2020-06-23 00:00:00', '589', '48', '572', '3', '14', '8');
INSERT INTO `m_gzbd` VALUES ('60', '四川省', '2020-06-22 00:00:00', '589', '48', '570', '3', '16', '8');
INSERT INTO `m_gzbd` VALUES ('61', '四川省', '2020-06-21 00:00:00', '589', '48', '570', '3', '16', '7');
INSERT INTO `m_gzbd` VALUES ('62', '四川省', '2020-06-20 00:00:00', '589', '48', '570', '3', '16', '7');
INSERT INTO `m_gzbd` VALUES ('63', '四川省', '2020-06-19 00:00:00', '589', '48', '569', '3', '17', '7');
INSERT INTO `m_gzbd` VALUES ('64', '四川省', '2020-06-18 00:00:00', '589', '48', '567', '3', '19', '6');
INSERT INTO `m_gzbd` VALUES ('65', '四川省', '2020-06-17 00:00:00', '589', '48', '565', '3', '21', '6');
INSERT INTO `m_gzbd` VALUES ('66', '四川省', '2020-06-16 00:00:00', '588', '47', '564', '3', '21', '7');
INSERT INTO `m_gzbd` VALUES ('67', '四川省', '2020-06-15 00:00:00', '587', '47', '563', '3', '21', '7');
INSERT INTO `m_gzbd` VALUES ('68', '四川省', '2020-06-14 00:00:00', '583', '43', '563', '3', '17', '6');
INSERT INTO `m_gzbd` VALUES ('69', '四川省', '2020-06-13 00:00:00', '583', '43', '562', '3', '18', '6');
INSERT INTO `m_gzbd` VALUES ('70', '四川省', '2020-06-12 00:00:00', '582', '42', '561', '3', '18', '5');
INSERT INTO `m_gzbd` VALUES ('71', '四川省', '2020-06-11 00:00:00', '582', '42', '560', '3', '19', '5');
INSERT INTO `m_gzbd` VALUES ('72', '四川省', '2020-06-10 00:00:00', '582', '42', '558', '3', '21', '5');
INSERT INTO `m_gzbd` VALUES ('73', '四川省', '2020-06-09 00:00:00', '582', '42', '558', '3', '21', '5');
INSERT INTO `m_gzbd` VALUES ('74', '四川省', '2020-06-08 00:00:00', '581', '41', '558', '3', '20', '6');
INSERT INTO `m_gzbd` VALUES ('75', '四川省', '2020-06-07 00:00:00', '578', '38', '558', '3', '17', '5');
INSERT INTO `m_gzbd` VALUES ('76', '四川省', '2020-06-06 00:00:00', '578', '38', '558', '3', '17', '5');
INSERT INTO `m_gzbd` VALUES ('77', '四川省', '2020-06-05 00:00:00', '578', '38', '558', '3', '17', '5');
INSERT INTO `m_gzbd` VALUES ('78', '四川省', '2020-06-04 00:00:00', '577', '37', '558', '3', '16', '7');
INSERT INTO `m_gzbd` VALUES ('79', '四川省', '2020-06-03 00:00:00', '577', '37', '558', '3', '16', '7');
INSERT INTO `m_gzbd` VALUES ('80', '四川省', '2020-06-02 00:00:00', '577', '37', '558', '3', '16', '7');
INSERT INTO `m_gzbd` VALUES ('81', '四川省', '2020-06-01 00:00:00', null, null, null, null, null, null);
INSERT INTO `m_gzbd` VALUES ('82', '四川省', '2020-05-31 00:00:00', '564', '24', '558', '3', '3', '3');
INSERT INTO `m_gzbd` VALUES ('83', '四川省', '2020-05-30 00:00:00', '564', '24', '558', '3', '3', '3');
INSERT INTO `m_gzbd` VALUES ('84', '四川省', '2020-05-29 00:00:00', '564', '24', '558', '3', '3', '4');
INSERT INTO `m_gzbd` VALUES ('85', '四川省', '2020-05-28 00:00:00', '564', '24', '558', '3', '3', '4');
INSERT INTO `m_gzbd` VALUES ('86', '四川省', '2020-05-27 00:00:00', '564', '24', '558', '3', '3', '4');
INSERT INTO `m_gzbd` VALUES ('87', '四川省', '2020-05-26 00:00:00', '564', '24', '558', '3', '3', '4');
INSERT INTO `m_gzbd` VALUES ('88', '四川省', '2020-05-25 00:00:00', '564', '24', '558', '3', '3', '4');
INSERT INTO `m_gzbd` VALUES ('89', '四川省', '2020-05-24 00:00:00', '563', '23', '558', '3', '2', '3');
INSERT INTO `m_gzbd` VALUES ('90', '四川省', '2020-05-23 00:00:00', '563', '23', '558', '3', '2', '2');
INSERT INTO `m_gzbd` VALUES ('91', '四川省', '2020-05-22 00:00:00', null, null, null, null, null, '3');
INSERT INTO `m_gzbd` VALUES ('92', '四川省', '2020-05-21 00:00:00', '561', '21', '558', '3', null, '4');
INSERT INTO `m_gzbd` VALUES ('93', '四川省', '2020-05-20 00:00:00', '561', '21', '558', '3', null, '4');
INSERT INTO `m_gzbd` VALUES ('94', '四川省', '2020-05-19 00:00:00', '561', '21', '558', '3', null, '5');
INSERT INTO `m_gzbd` VALUES ('95', '四川省', '2020-05-18 00:00:00', '561', '21', '558', '3', null, '5');
INSERT INTO `m_gzbd` VALUES ('96', '四川省', '2020-05-17 00:00:00', '561', '21', '558', '3', null, '5');
INSERT INTO `m_gzbd` VALUES ('97', '四川省', '2020-05-16 00:00:00', '561', '21', '558', '3', null, '5');
INSERT INTO `m_gzbd` VALUES ('98', '四川省', '2020-05-15 00:00:00', '561', '21', '558', '3', null, '5');
INSERT INTO `m_gzbd` VALUES ('99', '四川省', '2020-05-14 00:00:00', '561', '21', '558', '3', null, '6');
INSERT INTO `m_gzbd` VALUES ('100', '四川省', '2020-05-13 00:00:00', '561', '21', '558', '3', null, '6');
INSERT INTO `m_gzbd` VALUES ('101', '四川省', '2020-05-12 00:00:00', '561', '21', '558', '3', null, '6');
INSERT INTO `m_gzbd` VALUES ('102', '四川省', '2020-05-11 00:00:00', '561', '21', '558', '3', null, '7');
INSERT INTO `m_gzbd` VALUES ('103', '四川省', '2020-05-10 00:00:00', '561', '21', '558', '3', null, '7');
INSERT INTO `m_gzbd` VALUES ('104', '四川省', '2020-05-09 00:00:00', '561', '21', '558', '3', null, '7');
INSERT INTO `m_gzbd` VALUES ('105', '四川省', '2020-05-08 00:00:00', '561', '21', '558', '3', null, '7');
INSERT INTO `m_gzbd` VALUES ('106', '四川省', '2020-05-07 00:00:00', '561', '21', '558', '3', null, '8');
INSERT INTO `m_gzbd` VALUES ('107', '四川省', '2020-05-06 00:00:00', '561', '21', '558', '3', null, '9');
INSERT INTO `m_gzbd` VALUES ('108', '四川省', '2020-05-05 00:00:00', '561', '21', '558', '3', null, '10');
INSERT INTO `m_gzbd` VALUES ('109', '四川省', '2020-05-04 00:00:00', '561', '21', '558', '3', null, '10');
INSERT INTO `m_gzbd` VALUES ('110', '四川省', '2020-05-03 00:00:00', '561', '21', '558', '3', null, '10');
INSERT INTO `m_gzbd` VALUES ('111', '四川省', '2020-05-02 00:00:00', '561', '21', '558', '3', null, '11');
INSERT INTO `m_gzbd` VALUES ('112', '四川省', '2020-05-01 00:00:00', '561', '21', '558', '3', null, '11');
INSERT INTO `m_gzbd` VALUES ('113', '四川省', '2020-04-30 00:00:00', '561', '21', '558', '3', null, '9');
INSERT INTO `m_gzbd` VALUES ('114', '四川省', '2020-04-29 00:00:00', '561', '21', '558', '3', null, '10');
INSERT INTO `m_gzbd` VALUES ('115', '四川省', '2020-04-28 00:00:00', '561', '21', '558', '3', null, '11');
INSERT INTO `m_gzbd` VALUES ('116', '四川省', '2020-04-27 00:00:00', null, null, null, null, null, '11');
INSERT INTO `m_gzbd` VALUES ('117', '四川省', '2020-04-26 00:00:00', null, null, null, null, null, '11');
INSERT INTO `m_gzbd` VALUES ('118', '四川省', '2020-04-25 00:00:00', null, null, null, null, null, '9');
INSERT INTO `m_gzbd` VALUES ('119', '四川省', '2020-04-24 00:00:00', null, null, null, null, null, '9');
INSERT INTO `m_gzbd` VALUES ('120', '四川省', '2020-04-23 00:00:00', null, null, null, null, null, '9');
INSERT INTO `m_gzbd` VALUES ('121', '四川省', '2020-04-22 00:00:00', null, null, null, null, null, '9');
INSERT INTO `m_gzbd` VALUES ('122', '四川省', '2020-04-21 00:00:00', null, null, null, null, null, '10');
INSERT INTO `m_gzbd` VALUES ('123', '四川省', '2020-04-20 00:00:00', null, null, null, null, null, '11');
INSERT INTO `m_gzbd` VALUES ('124', '四川省', '2020-04-19 00:00:00', null, null, null, null, null, '11');
INSERT INTO `m_gzbd` VALUES ('125', '四川省', '2020-04-18 00:00:00', null, null, null, null, null, '10');
INSERT INTO `m_gzbd` VALUES ('126', '四川省', '2020-04-17 00:00:00', null, null, null, null, null, '11');
INSERT INTO `m_gzbd` VALUES ('127', '四川省', '2020-04-16 00:00:00', null, null, null, null, null, '12');
INSERT INTO `m_gzbd` VALUES ('128', '四川省', '2020-04-15 00:00:00', null, null, null, null, null, '12');
INSERT INTO `m_gzbd` VALUES ('129', '四川省', '2020-04-14 00:00:00', null, null, null, null, null, '13');
INSERT INTO `m_gzbd` VALUES ('130', '四川省', '2020-04-13 00:00:00', null, null, null, null, null, '13');
INSERT INTO `m_gzbd` VALUES ('131', '四川省', '2020-04-12 00:00:00', null, null, null, null, null, '15');
INSERT INTO `m_gzbd` VALUES ('132', '四川省', '2020-04-11 00:00:00', null, null, null, null, null, '13');
INSERT INTO `m_gzbd` VALUES ('133', '四川省', '2020-04-10 00:00:00', null, null, null, null, null, '14');
INSERT INTO `m_gzbd` VALUES ('134', '四川省', '2020-04-09 00:00:00', null, null, null, null, null, '15');
