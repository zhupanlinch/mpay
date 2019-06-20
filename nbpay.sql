/*
Navicat MySQL Data Transfer

Source Server         : 123.207.243.40
Source Server Version : 50725
Source Host           : 123.207.243.40:3306
Source Database       : nbpay

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-06-20 18:06:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for js_gen_table
-- ----------------------------
DROP TABLE IF EXISTS `js_gen_table`;
CREATE TABLE `js_gen_table` (
  `table_name` varchar(64) NOT NULL COMMENT '表名',
  `class_name` varchar(100) NOT NULL COMMENT '实体类名称',
  `comments` varchar(500) NOT NULL COMMENT '表说明',
  `parent_table_name` varchar(64) DEFAULT NULL COMMENT '关联父表的表名',
  `parent_table_fk_name` varchar(64) DEFAULT NULL COMMENT '本表关联父表的外键名',
  `data_source_name` varchar(64) DEFAULT NULL COMMENT '数据源名称',
  `tpl_category` varchar(200) DEFAULT NULL COMMENT '使用的模板',
  `package_name` varchar(500) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `sub_module_name` varchar(30) DEFAULT NULL COMMENT '生成子模块名',
  `function_name` varchar(200) DEFAULT NULL COMMENT '生成功能名',
  `function_name_simple` varchar(50) DEFAULT NULL COMMENT '生成功能名（简写）',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_base_dir` varchar(1000) DEFAULT NULL COMMENT '生成基础路径',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`table_name`),
  KEY `idx_gen_table_ptn` (`parent_table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代码生成表';

-- ----------------------------
-- Records of js_gen_table
-- ----------------------------
INSERT INTO `js_gen_table` VALUES ('nb_ali_account_pool', 'NbAliAccountPool', '支付宝收款账户', '', '', '', 'crud', 'com.jeesite.modules', 'nb', '', '支付宝收款账户', '支付宝收款账户', 'nb group', 'E:\\workspace\\nbpay', '{\"treeViewName\":\"\",\"isHaveDelete\":\"1\",\"treeViewCode\":\"\",\"isFileUpload\":\"0\",\"isHaveDisableEnable\":\"0\",\"isImageUpload\":\"0\"}', 'system', '2019-05-18 15:17:56', 'system', '2019-05-25 11:57:42', '');
INSERT INTO `js_gen_table` VALUES ('nb_business', 'NbBusiness', '商户信息', '', '', '', 'crud', 'com.jeesite.modules', 'nb', '', '商户信息', '商户信息', 'nb group', 'E:\\workspace\\nbpay', '{\"treeViewName\":\"\",\"isHaveDelete\":\"1\",\"treeViewCode\":\"\",\"isFileUpload\":\"0\",\"isHaveDisableEnable\":\"0\",\"isImageUpload\":\"0\"}', 'system', '2019-05-18 15:10:54', 'system', '2019-05-18 15:11:44', '');
INSERT INTO `js_gen_table` VALUES ('nb_card', 'NbCard', '商户银行卡', '', '', '', 'crud', 'com.jeesite.modules', 'nb', '', '商户银行卡', '商户银行卡', 'nb group', 'G:\\nbworkspace\\nbpay', '{\"treeViewName\":\"\",\"isHaveDelete\":\"1\",\"treeViewCode\":\"\",\"isFileUpload\":\"0\",\"isHaveDisableEnable\":\"0\",\"isImageUpload\":\"0\"}', 'system', '2019-05-27 21:00:57', 'system', '2019-05-27 21:03:29', '');
INSERT INTO `js_gen_table` VALUES ('nb_cash', 'NbCash', '提现记录', '', '', '', 'crud', 'com.jeesite.modules', 'nb', '', '提现记录', '提现记录', 'nb group', 'G:\\nbworkspace\\nbpay', '{\"treeViewName\":\"\",\"isHaveDelete\":\"1\",\"treeViewCode\":\"\",\"isFileUpload\":\"0\",\"isHaveDisableEnable\":\"0\",\"isImageUpload\":\"0\"}', 'system', '2019-05-27 21:05:01', 'system', '2019-05-27 21:05:17', '');
INSERT INTO `js_gen_table` VALUES ('nb_order', 'NbOrder', '订单信息', '', '', '', 'crud', 'com.jeesite.modules', 'nb', '', '订单信息', '订单信息', 'nb group', 'E:\\workspace\\nbpay', '{\"treeViewName\":\"\",\"isHaveDelete\":\"1\",\"treeViewCode\":\"\",\"isFileUpload\":\"0\",\"isHaveDisableEnable\":\"0\",\"isImageUpload\":\"0\"}', 'system', '2019-05-18 15:16:26', 'system', '2019-05-18 15:16:41', '');
INSERT INTO `js_gen_table` VALUES ('test_data', 'TestData', '测试数据', null, null, null, 'crud', 'com.jeesite.modules', 'test', '', '测试数据', '数据', 'ThinkGem', null, '{\"isHaveDelete\":\"1\",\"isFileUpload\":\"1\",\"isHaveDisableEnable\":\"1\",\"isImageUpload\":\"1\"}', 'system', '2019-05-17 20:13:10', 'system', '2019-05-17 20:13:10', null);
INSERT INTO `js_gen_table` VALUES ('test_data_child', 'TestDataChild', '测试数据子表', 'test_data', 'test_data_id', null, 'crud', 'com.jeesite.modules', 'test', '', '测试子表', '数据', 'ThinkGem', null, null, 'system', '2019-05-17 20:13:11', 'system', '2019-05-17 20:13:11', null);
INSERT INTO `js_gen_table` VALUES ('test_tree', 'TestTree', '测试树表', null, null, null, 'treeGrid', 'com.jeesite.modules', 'test', '', '测试树表', '数据', 'ThinkGem', null, '{\"treeViewName\":\"tree_name\",\"isHaveDelete\":\"1\",\"treeViewCode\":\"tree_code\",\"isFileUpload\":\"1\",\"isHaveDisableEnable\":\"1\",\"isImageUpload\":\"1\"}', 'system', '2019-05-17 20:13:12', 'system', '2019-05-17 20:13:12', null);

-- ----------------------------
-- Table structure for js_gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `js_gen_table_column`;
CREATE TABLE `js_gen_table_column` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `table_name` varchar(64) NOT NULL COMMENT '表名',
  `column_name` varchar(64) NOT NULL COMMENT '列名',
  `column_sort` decimal(10,0) DEFAULT NULL COMMENT '列排序（升序）',
  `column_type` varchar(100) NOT NULL COMMENT '类型',
  `column_label` varchar(50) DEFAULT NULL COMMENT '列标签名',
  `comments` varchar(500) NOT NULL COMMENT '列备注说明',
  `attr_name` varchar(200) NOT NULL COMMENT '类的属性名',
  `attr_type` varchar(200) NOT NULL COMMENT '类的属性类型',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键',
  `is_null` char(1) DEFAULT NULL COMMENT '是否可为空',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否插入字段',
  `is_update` char(1) DEFAULT NULL COMMENT '是否更新字段',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段',
  `query_type` varchar(200) DEFAULT NULL COMMENT '查询方式',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段',
  `show_type` varchar(200) DEFAULT NULL COMMENT '表单类型',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  PRIMARY KEY (`id`),
  KEY `idx_gen_table_column_tn` (`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代码生成表列';

-- ----------------------------
-- Records of js_gen_table_column
-- ----------------------------
INSERT INTO `js_gen_table_column` VALUES ('1129359198562217984', 'test_data', 'id', '10', 'varchar(64)', '编号', '编号', 'id', 'String', '1', '0', '1', null, null, null, null, '1', 'hidden', '{\"fieldValid\":\"abc\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129359198801293312', 'test_data', 'test_input', '20', 'varchar(200)', '单行文本', '单行文本', 'testInput', 'String', null, '1', '1', '1', '1', '1', 'LIKE', '1', 'input', null);
INSERT INTO `js_gen_table_column` VALUES ('1129359199040368640', 'test_data', 'test_textarea', '30', 'varchar(200)', '多行文本', '多行文本', 'testTextarea', 'String', null, '1', '1', '1', '1', '1', 'LIKE', '1', 'textarea', '{\"isNewLine\":\"1\",\"gridRowCol\":\"12/2/10\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129359199287832576', 'test_data', 'test_select', '40', 'varchar(10)', '下拉框', '下拉框', 'testSelect', 'String', null, '1', '1', '1', '1', '1', null, '1', 'select', '{\"dictName\":\"sys_menu_type\",\"dictType\":\"sys_menu_type\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129359199568850944', 'test_data', 'test_select_multiple', '50', 'varchar(200)', '下拉多选', '下拉多选', 'testSelectMultiple', 'String', null, '1', '1', '1', '1', '1', null, '1', 'select_multiple', '{\"dictName\":\"sys_menu_type\",\"dictType\":\"sys_menu_type\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129359199799537664', 'test_data', 'test_radio', '60', 'varchar(10)', '单选框', '单选框', 'testRadio', 'String', null, '1', '1', '1', '1', '1', null, '1', 'radio', '{\"dictName\":\"sys_menu_type\",\"dictType\":\"sys_menu_type\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129359200030224384', 'test_data', 'test_checkbox', '70', 'varchar(200)', '复选框', '复选框', 'testCheckbox', 'String', null, '1', '1', '1', '1', '1', null, '1', 'checkbox', '{\"dictName\":\"sys_menu_type\",\"dictType\":\"sys_menu_type\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129359200248328192', 'test_data', 'test_date', '80', 'datetime', '日期选择', '日期选择', 'testDate', 'java.util.Date', null, '1', '1', '1', '1', '1', 'BETWEEN', '1', 'date', null);
INSERT INTO `js_gen_table_column` VALUES ('1129359200479014912', 'test_data', 'test_datetime', '90', 'datetime', '日期时间', '日期时间', 'testDatetime', 'java.util.Date', null, '1', '1', '1', '1', '1', 'BETWEEN', '1', 'datetime', null);
INSERT INTO `js_gen_table_column` VALUES ('1129359200722284544', 'test_data', 'test_user_code', '100', 'varchar(64)', '用户选择', '用户选择', 'testUser', 'com.jeesite.modules.sys.entity.User', null, '1', '1', '1', '1', '1', null, '1', 'userselect', null);
INSERT INTO `js_gen_table_column` VALUES ('1129359200952971264', 'test_data', 'test_office_code', '110', 'varchar(64)', '机构选择', '机构选择', 'testOffice', 'com.jeesite.modules.sys.entity.Office', null, '1', '1', '1', '1', '1', null, '1', 'officeselect', null);
INSERT INTO `js_gen_table_column` VALUES ('1129359201196240896', 'test_data', 'test_area_code', '120', 'varchar(64)', '区域选择', '区域选择', 'testAreaCode|testAreaName', 'String', null, '1', '1', '1', '1', '1', null, '1', 'areaselect', null);
INSERT INTO `js_gen_table_column` VALUES ('1129359201431121920', 'test_data', 'test_area_name', '130', 'varchar(100)', '区域名称', '区域名称', 'testAreaName', 'String', null, '1', '1', '1', '1', '0', 'LIKE', '0', 'input', null);
INSERT INTO `js_gen_table_column` VALUES ('1129359201737306112', 'test_data', 'status', '140', 'char(1)', '状态', '状态（0正常 1删除 2停用）', 'status', 'String', null, '0', '1', '0', '1', '1', null, null, 'select', '{\"dictName\":\"sys_search_status\",\"dictType\":\"sys_search_status\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129359201955409920', 'test_data', 'create_by', '150', 'varchar(64)', '创建者', '创建者', 'createBy', 'String', null, '0', '1', null, null, null, null, null, 'input', null);
INSERT INTO `js_gen_table_column` VALUES ('1129359202181902336', 'test_data', 'create_date', '160', 'datetime', '创建时间', '创建时间', 'createDate', 'java.util.Date', null, '0', '1', null, null, null, null, null, 'dateselect', null);
INSERT INTO `js_gen_table_column` VALUES ('1129359202416783360', 'test_data', 'update_by', '170', 'varchar(64)', '更新者', '更新者', 'updateBy', 'String', null, '0', '1', '1', null, null, null, null, 'input', null);
INSERT INTO `js_gen_table_column` VALUES ('1129359202647470080', 'test_data', 'update_date', '180', 'datetime', '更新时间', '更新时间', 'updateDate', 'java.util.Date', null, '0', '1', '1', '1', null, null, null, 'dateselect', null);
INSERT INTO `js_gen_table_column` VALUES ('1129359202878156800', 'test_data', 'remarks', '190', 'varchar(500)', '备注信息', '备注信息', 'remarks', 'String', null, '1', '1', '1', '1', '1', 'LIKE', '1', 'textarea', '{\"isNewLine\":\"1\",\"gridRowCol\":\"12/2/10\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129359203767349248', 'test_data_child', 'id', '10', 'varchar(64)', '编号', '编号', 'id', 'String', '1', '0', '1', null, null, null, null, '1', 'hidden', '{\"fieldValid\":\"abc\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129359204019007488', 'test_data_child', 'test_sort', '20', 'int(11)', '排序号', '排序号', 'testSort', 'Long', null, '1', '1', '1', '1', '1', null, '1', 'input', '{\"fieldValid\":\"digits\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129359204266471424', 'test_data_child', 'test_data_id', '30', 'varchar(64)', '父表主键', '父表主键', 'testData', 'String', null, '1', '1', '1', '1', '1', null, '1', 'input', null);
INSERT INTO `js_gen_table_column` VALUES ('1129359204526518272', 'test_data_child', 'test_input', '40', 'varchar(200)', '单行文本', '单行文本', 'testInput', 'String', null, '1', '1', '1', '1', '1', 'LIKE', '1', 'input', null);
INSERT INTO `js_gen_table_column` VALUES ('1129359204778176512', 'test_data_child', 'test_textarea', '50', 'varchar(200)', '多行文本', '多行文本', 'testTextarea', 'String', null, '1', '1', '1', '1', '1', 'LIKE', '1', 'textarea', '{\"isNewLine\":\"1\",\"gridRowCol\":\"12/2/10\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129359205025640448', 'test_data_child', 'test_select', '60', 'varchar(10)', '下拉框', '下拉框', 'testSelect', 'String', null, '1', '1', '1', '1', '1', null, '1', 'select', '{\"dictName\":\"sys_menu_type\",\"dictType\":\"sys_menu_type\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129359205252132864', 'test_data_child', 'test_select_multiple', '70', 'varchar(200)', '下拉多选', '下拉多选', 'testSelectMultiple', 'String', null, '1', '1', '1', '1', '1', null, '1', 'select_multiple', '{\"dictName\":\"sys_menu_type\",\"dictType\":\"sys_menu_type\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129359205507985408', 'test_data_child', 'test_radio', '80', 'varchar(10)', '单选框', '单选框', 'testRadio', 'String', null, '1', '1', '1', '1', '1', null, '1', 'radio', '{\"dictName\":\"sys_menu_type\",\"dictType\":\"sys_menu_type\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129359205738672128', 'test_data_child', 'test_checkbox', '90', 'varchar(200)', '复选框', '复选框', 'testCheckbox', 'String', null, '1', '1', '1', '1', '1', null, '1', 'checkbox', '{\"dictName\":\"sys_menu_type\",\"dictType\":\"sys_menu_type\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129359205998718976', 'test_data_child', 'test_date', '100', 'datetime', '日期选择', '日期选择', 'testDate', 'java.util.Date', null, '1', '1', '1', '1', '1', 'BETWEEN', '1', 'date', null);
INSERT INTO `js_gen_table_column` VALUES ('1129359206221017088', 'test_data_child', 'test_datetime', '110', 'datetime', '日期时间', '日期时间', 'testDatetime', 'java.util.Date', null, '1', '1', '1', '1', '1', 'BETWEEN', '1', 'datetime', null);
INSERT INTO `js_gen_table_column` VALUES ('1129359206460092416', 'test_data_child', 'test_user_code', '120', 'varchar(64)', '用户选择', '用户选择', 'testUser', 'com.jeesite.modules.sys.entity.User', null, '1', '1', '1', '1', '1', null, '1', 'userselect', null);
INSERT INTO `js_gen_table_column` VALUES ('1129359206690779136', 'test_data_child', 'test_office_code', '130', 'varchar(64)', '机构选择', '机构选择', 'testOffice', 'com.jeesite.modules.sys.entity.Office', null, '1', '1', '1', '1', '1', null, '1', 'officeselect', null);
INSERT INTO `js_gen_table_column` VALUES ('1129359206984380416', 'test_data_child', 'test_area_code', '140', 'varchar(64)', '区域选择', '区域选择', 'testAreaCode|testAreaName', 'String', null, '1', '1', '1', '1', '1', null, '1', 'areaselect', null);
INSERT INTO `js_gen_table_column` VALUES ('1129359207215067136', 'test_data_child', 'test_area_name', '150', 'varchar(100)', '区域名称', '区域名称', 'testAreaName', 'String', null, '1', '1', '1', '1', '0', 'LIKE', '0', 'input', null);
INSERT INTO `js_gen_table_column` VALUES ('1129359208053927936', 'test_tree', 'tree_code', '10', 'varchar(64)', '节点编码', '节点编码', 'treeCode', 'String', '1', '0', '1', null, null, null, null, '1', 'input', '{\"fieldValid\":\"abc\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129359208267837440', 'test_tree', 'parent_code', '20', 'varchar(64)', '父级编号', '父级编号', 'parentCode|parentName', 'This', null, '0', '1', '1', null, null, null, null, 'treeselect', null);
INSERT INTO `js_gen_table_column` VALUES ('1129359208490135552', 'test_tree', 'parent_codes', '30', 'varchar(1000)', '所有父级编号', '所有父级编号', 'parentCodes', 'String', null, '0', '1', '1', null, null, 'LIKE', '0', 'input', null);
INSERT INTO `js_gen_table_column` VALUES ('1129359208716627968', 'test_tree', 'tree_sort', '40', 'decimal(10,0)', '本级排序号', '本级排序号（升序）', 'treeSort', 'Integer', null, '0', '1', '1', '1', null, null, '1', 'input', '{\"fieldValid\":\"digits\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129359208951508992', 'test_tree', 'tree_sorts', '50', 'varchar(1000)', '所有级别排序号', '所有级别排序号', 'treeSorts', 'String', null, '0', '1', '1', '0', null, null, '0', 'input', null);
INSERT INTO `js_gen_table_column` VALUES ('1129359209169612800', 'test_tree', 'tree_leaf', '60', 'char(1)', '是否最末级', '是否最末级', 'treeLeaf', 'String', null, '0', '1', '1', null, null, null, null, 'input', null);
INSERT INTO `js_gen_table_column` VALUES ('1129359209383522304', 'test_tree', 'tree_level', '70', 'decimal(4,0)', '层次级别', '层次级别', 'treeLevel', 'Integer', null, '0', '1', '1', null, null, null, null, 'input', '{\"fieldValid\":\"digits\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129359209618403328', 'test_tree', 'tree_names', '80', 'varchar(1000)', '全节点名', '全节点名', 'treeNames', 'String', null, '0', '1', '1', null, '1', 'LIKE', null, 'input', null);
INSERT INTO `js_gen_table_column` VALUES ('1129359209895227392', 'test_tree', 'tree_name', '90', 'varchar(200)', '节点名称', '节点名称', 'treeName', 'String', null, '0', '1', '1', '1', '1', 'LIKE', '1', 'input', null);
INSERT INTO `js_gen_table_column` VALUES ('1129359210130108416', 'test_tree', 'status', '100', 'char(1)', '状态', '状态（0正常 1删除 2停用）', 'status', 'String', null, '0', '1', '0', '1', '1', null, null, 'select', '{\"dictName\":\"sys_search_status\",\"dictType\":\"sys_search_status\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129359210373378048', 'test_tree', 'create_by', '110', 'varchar(64)', '创建者', '创建者', 'createBy', 'String', null, '0', '1', null, null, null, null, null, 'input', null);
INSERT INTO `js_gen_table_column` VALUES ('1129359210604064768', 'test_tree', 'create_date', '120', 'datetime', '创建时间', '创建时间', 'createDate', 'java.util.Date', null, '0', '1', null, null, null, null, null, 'dateselect', null);
INSERT INTO `js_gen_table_column` VALUES ('1129359210826362880', 'test_tree', 'update_by', '130', 'varchar(64)', '更新者', '更新者', 'updateBy', 'String', null, '0', '1', '1', null, null, null, null, 'input', null);
INSERT INTO `js_gen_table_column` VALUES ('1129359211044466688', 'test_tree', 'update_date', '140', 'datetime', '更新时间', '更新时间', 'updateDate', 'java.util.Date', null, '0', '1', '1', '1', null, null, null, 'dateselect', null);
INSERT INTO `js_gen_table_column` VALUES ('1129359211283542016', 'test_tree', 'remarks', '150', 'varchar(500)', '备注信息', '备注信息', 'remarks', 'String', null, '1', '1', '1', '1', '1', 'LIKE', '1', 'textarea', '{\"isNewLine\":\"1\",\"gridRowCol\":\"12/2/10\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129645519565373440', 'nb_business', 'id', '10', 'varchar(64)', '商户编号', '商户编号', 'id', 'String', '1', '0', '1', '', '1', '1', 'EQ', '1', 'hidden', '{\"isNewLine\":\"1\",\"fieldValid\":\"abc\",\"dictName\":\"\",\"gridRowCol\":\"12/2/5\",\"dictType\":\"\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129645519783477248', 'nb_business', 'name', '20', 'varchar(255)', '商户名称', '商户名称', 'name', 'String', '', '0', '1', '1', '1', '1', 'LIKE', '1', 'input', '{\"isNewLine\":\"1\",\"fieldValid\":\"\",\"dictName\":\"\",\"gridRowCol\":\"12/2/5\",\"dictType\":\"\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129646909415112704', 'nb_order', 'id', '10', 'varchar(64)', '订单编号', '订单编号', 'id', 'String', '1', '0', '1', '', '', '', 'EQ', '1', 'hidden', '{\"isNewLine\":\"\",\"fieldValid\":\"abc\",\"dictName\":\"\",\"gridRowCol\":\"6/4/8\",\"dictType\":\"\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129646909658382336', 'nb_order', 'business_id', '20', 'varchar(64)', '商户编号', '商户编号', 'businessId', 'String', '', '1', '1', '1', '1', '1', 'EQ', '1', 'input', '{\"isNewLine\":\"\",\"fieldValid\":\"\",\"dictName\":\"\",\"gridRowCol\":\"6/4/8\",\"dictType\":\"\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129646909884874752', 'nb_order', 'business_order_id', '30', 'varchar(64)', '商户订单号', '商户订单号', 'businessOrderId', 'String', '', '1', '1', '1', '1', '1', 'EQ', '1', 'input', '{\"isNewLine\":\"\",\"fieldValid\":\"\",\"dictName\":\"\",\"gridRowCol\":\"6/4/8\",\"dictType\":\"\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129646910111367168', 'nb_order', 'description', '40', 'varchar(255)', '商品描述', '商品描述', 'description', 'String', '', '1', '1', '1', '1', '1', 'EQ', '1', 'input', '{\"isNewLine\":\"\",\"fieldValid\":\"\",\"dictName\":\"\",\"gridRowCol\":\"6/4/8\",\"dictType\":\"\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129646910321082368', 'nb_order', 'extrat', '50', 'varchar(255)', '商品附加信息', '商品附加信息', 'extrat', 'String', '', '1', '1', '1', '1', '1', 'EQ', '1', 'input', '{\"isNewLine\":\"\",\"fieldValid\":\"\",\"dictName\":\"\",\"gridRowCol\":\"6/4/8\",\"dictType\":\"\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129646910547574784', 'nb_order', 'money', '60', 'decimal(9,2)', '总金额', '总金额', 'money', 'Double', '', '1', '1', '1', '1', '1', 'EQ', '1', 'input', '{\"isNewLine\":\"\",\"fieldValid\":\"number\",\"dictName\":\"\",\"gridRowCol\":\"6/4/8\",\"dictType\":\"\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129646910778261504', 'nb_order', 'real_money', '70', 'decimal(9,2)', '实际付款金额', '实际付款金额', 'realMoney', 'Double', '', '1', '1', '1', '1', '1', 'EQ', '1', 'input', '{\"isNewLine\":\"\",\"fieldValid\":\"number\",\"dictName\":\"\",\"gridRowCol\":\"6/4/8\",\"dictType\":\"\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129646911025725440', 'nb_order', 'notify_url', '80', 'varchar(255)', '通知地址', '通知地址', 'notifyUrl', 'String', '', '1', '1', '1', '1', '1', 'EQ', '1', 'input', '{\"isNewLine\":\"\",\"fieldValid\":\"\",\"dictName\":\"\",\"gridRowCol\":\"6/4/8\",\"dictType\":\"\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129646911239634944', 'nb_order', 'status', '90', 'tinyint(1)', '支付状态', '支付状态', 'status', 'Integer', '', '1', '1', '1', '1', '1', 'EQ', '', 'select', '{\"isNewLine\":\"\",\"fieldValid\":\"digits\",\"dictName\":\"(sys_yes_no) 是否\",\"gridRowCol\":\"6/4/8\",\"dictType\":\"sys_yes_no\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129646911466127360', 'nb_order', 'pay_type', '100', 'varchar(32)', '支付方式', '支付方式', 'payType', 'String', '', '1', '1', '1', '1', '1', 'EQ', '1', 'input', '{\"isNewLine\":\"\",\"fieldValid\":\"\",\"dictName\":\"\",\"gridRowCol\":\"6/4/8\",\"dictType\":\"\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129646911667453952', 'nb_order', 'create_time', '110', 'datetime', '创建时间', '创建时间', 'createTime', 'java.util.Date', '', '1', '1', '1', '1', '1', 'EQ', '1', 'datetime', '{\"isNewLine\":\"\",\"fieldValid\":\"\",\"dictName\":\"\",\"gridRowCol\":\"6/4/8\",\"dictType\":\"\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129646911881363456', 'nb_order', 'update_time', '120', 'datetime', '更新时间', '更新时间', 'updateTime', 'java.util.Date', '', '1', '1', '1', '1', '1', 'EQ', '1', 'datetime', '{\"isNewLine\":\"\",\"fieldValid\":\"\",\"dictName\":\"\",\"gridRowCol\":\"6/4/8\",\"dictType\":\"\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129646912095272960', 'nb_order', 'pay_time', '130', 'datetime', '付款时间', '付款时间', 'payTime', 'java.util.Date', '', '1', '1', '1', '1', '1', 'EQ', '1', 'datetime', '{\"isNewLine\":\"\",\"fieldValid\":\"\",\"dictName\":\"\",\"gridRowCol\":\"6/4/8\",\"dictType\":\"\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129647286793420800', 'nb_ali_account_pool', 'id', '10', 'varchar(64)', '编号', '编号', 'id', 'String', '1', '0', '1', '', '', '', 'EQ', '1', 'hidden', '{\"isNewLine\":\"1\",\"fieldValid\":\"abc\",\"dictName\":\"\",\"gridRowCol\":\"12/2/5\",\"dictType\":\"\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129647287007330304', 'nb_ali_account_pool', 'userid', '20', 'varchar(64)', '支付宝userId', '支付宝userId', 'userid', 'String', '', '0', '1', '1', '1', '1', 'EQ', '1', 'input', '{\"isNewLine\":\"1\",\"fieldValid\":\"\",\"dictName\":\"\",\"gridRowCol\":\"12/2/5\",\"dictType\":\"\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129647287217045504', 'nb_ali_account_pool', 'phone', '30', 'varchar(32)', '支付宝手机号', '支付宝手机号', 'phone', 'String', '', '1', '1', '1', '1', '1', 'LIKE', '1', 'input', '{\"isNewLine\":\"1\",\"fieldValid\":\"\",\"dictName\":\"\",\"gridRowCol\":\"12/2/5\",\"dictType\":\"\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129647287435149312', 'nb_ali_account_pool', 'num', '40', 'int(11)', '收款次数', '收款次数', 'num', 'Long', '', '1', '1', '1', '1', '1', 'EQ', '1', 'input', '{\"isNewLine\":\"1\",\"fieldValid\":\"digits\",\"dictName\":\"\",\"gridRowCol\":\"12/2/5\",\"dictType\":\"\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129647287640670208', 'nb_ali_account_pool', 'money', '50', 'decimal(9,2)', '收款金额', '收款金额', 'money', 'Double', '', '1', '1', '1', '1', '1', 'EQ', '1', 'input', '{\"isNewLine\":\"1\",\"fieldValid\":\"number\",\"dictName\":\"\",\"gridRowCol\":\"12/2/5\",\"dictType\":\"\"}');
INSERT INTO `js_gen_table_column` VALUES ('1129647287858774016', 'nb_ali_account_pool', 'last_time', '60', 'datetime', '最后收款时间', '最后收款时间', 'lastTime', 'java.util.Date', '', '1', '1', '1', '1', '1', 'EQ', '1', 'datetime', '{\"isNewLine\":\"1\",\"fieldValid\":\"\",\"dictName\":\"\",\"gridRowCol\":\"12/2/5\",\"dictType\":\"\"}');
INSERT INTO `js_gen_table_column` VALUES ('1132133545423319040', 'nb_ali_account_pool', 'status', '70', 'varchar(1)', '账号状态', '账号状态', 'status', 'String', '', '1', '1', '', '1', '1', 'EQ', '', 'select', '{\"isNewLine\":\"\",\"fieldValid\":\"\",\"dictName\":\"sys_search_status\",\"gridRowCol\":\"6/4/8\",\"dictType\":\"sys_search_status\"}');
INSERT INTO `js_gen_table_column` VALUES ('1132133545712726016', 'nb_ali_account_pool', 'callback_sign', '80', 'varchar(255)', '监听App签名', '监听App签名', 'callbackSign', 'String', '', '1', '1', '1', '1', '1', 'EQ', '1', 'input', '{\"isNewLine\":\"\",\"fieldValid\":\"\",\"dictName\":\"\",\"gridRowCol\":\"6/4/8\",\"dictType\":\"\"}');
INSERT INTO `js_gen_table_column` VALUES ('1132133545951801344', 'nb_ali_account_pool', 'belong_user_code', '90', 'varchar(64)', '账号归属用户', '账号归属用户', 'belongUser', 'com.jeesite.modules.sys.entity.User', '', '1', '1', '1', '1', '1', 'EQ', '1', 'input', '{\"isNewLine\":\"\",\"fieldValid\":\"\",\"dictName\":\"\",\"gridRowCol\":\"6/4/8\",\"dictType\":\"\"}');
INSERT INTO `js_gen_table_column` VALUES ('1132995101046788096', 'nb_card', 'id', '10', 'varchar(64)', 'id', 'id', 'id', 'String', '1', '0', '1', '', '', '', 'EQ', '1', 'hidden', '{\"isNewLine\":\"1\",\"fieldValid\":\"abc\",\"dictName\":\"\",\"gridRowCol\":\"12/2/5\",\"dictType\":\"\"}');
INSERT INTO `js_gen_table_column` VALUES ('1132995101252308992', 'nb_card', 'name', '20', 'varchar(255)', '持卡人姓名', '持卡人姓名', 'name', 'String', '', '1', '1', '1', '1', '1', 'LIKE', '1', 'input', '{\"isNewLine\":\"1\",\"fieldValid\":\"\",\"dictName\":\"\",\"gridRowCol\":\"12/2/5\",\"dictType\":\"\"}');
INSERT INTO `js_gen_table_column` VALUES ('1132995101457829888', 'nb_card', 'no', '30', 'varchar(100)', '卡号', '卡号', 'no', 'String', '', '1', '1', '1', '1', '1', 'EQ', '1', 'input', '{\"isNewLine\":\"1\",\"fieldValid\":\"\",\"dictName\":\"\",\"gridRowCol\":\"12/2/5\",\"dictType\":\"\"}');
INSERT INTO `js_gen_table_column` VALUES ('1132995101654962176', 'nb_card', 'bank', '40', 'varchar(255)', '开户行', '开户行', 'bank', 'String', '', '1', '1', '1', '1', '1', 'EQ', '1', 'input', '{\"isNewLine\":\"1\",\"fieldValid\":\"\",\"dictName\":\"\",\"gridRowCol\":\"12/2/5\",\"dictType\":\"\"}');
INSERT INTO `js_gen_table_column` VALUES ('1132995101860483072', 'nb_card', 'business_id', '50', 'varchar(64)', '商户Id', '商户Id', 'businessId', 'String', '', '1', '1', '1', '1', '1', 'EQ', '1', 'input', '{\"isNewLine\":\"1\",\"fieldValid\":\"\",\"dictName\":\"\",\"gridRowCol\":\"12/2/5\",\"dictType\":\"\"}');
INSERT INTO `js_gen_table_column` VALUES ('1132996124482129920', 'nb_cash', 'id', '10', 'varchar(64)', 'id', 'id', 'id', 'String', '1', '0', '1', '', '', '', 'EQ', '1', 'hidden', '{\"isNewLine\":\"\",\"fieldValid\":\"abc\",\"dictName\":\"\",\"gridRowCol\":\"6/4/8\",\"dictType\":\"\"}');
INSERT INTO `js_gen_table_column` VALUES ('1132996124679262208', 'nb_cash', 'card_id', '20', 'varchar(64)', '银行卡ID', '银行卡ID', 'cardId', 'String', '', '1', '1', '1', '1', '1', 'EQ', '1', 'input', '{\"isNewLine\":\"\",\"fieldValid\":\"\",\"dictName\":\"\",\"gridRowCol\":\"6/4/8\",\"dictType\":\"\"}');
INSERT INTO `js_gen_table_column` VALUES ('1132996124939309056', 'nb_cash', 'money', '30', 'varchar(255)', '金额', '金额', 'money', 'String', '', '1', '1', '1', '1', '1', 'EQ', '1', 'input', '{\"isNewLine\":\"\",\"fieldValid\":\"digits\",\"dictName\":\"\",\"gridRowCol\":\"6/4/8\",\"dictType\":\"\"}');
INSERT INTO `js_gen_table_column` VALUES ('1132996125136441344', 'nb_cash', 'status', '40', 'varchar(2)', '支付状态', '支付状态', 'status', 'String', '', '1', '1', '', '1', '1', 'EQ', '', 'select', '{\"isNewLine\":\"\",\"fieldValid\":\"\",\"dictName\":\"(sys_yes_no) 是否\",\"gridRowCol\":\"6/4/8\",\"dictType\":\"sys_yes_no\"}');
INSERT INTO `js_gen_table_column` VALUES ('1132996125333573632', 'nb_cash', 'create_time', '50', 'datetime', '创建时间', '创建时间', 'createTime', 'java.util.Date', '', '1', '1', '1', '1', '1', 'BETWEEN', '1', 'datetime', '{\"isNewLine\":\"\",\"fieldValid\":\"\",\"dictName\":\"\",\"gridRowCol\":\"6/4/8\",\"dictType\":\"\"}');
INSERT INTO `js_gen_table_column` VALUES ('1132996125534900224', 'nb_cash', 'update_time', '60', 'datetime', '更新时间', '更新时间', 'updateTime', 'java.util.Date', '', '1', '1', '1', '1', '1', 'EQ', '1', 'datetime', '{\"isNewLine\":\"\",\"fieldValid\":\"\",\"dictName\":\"\",\"gridRowCol\":\"6/4/8\",\"dictType\":\"\"}');
INSERT INTO `js_gen_table_column` VALUES ('1132996125732032512', 'nb_cash', 'business_id', '70', 'varchar(64)', '商户ID', '商户ID', 'businessId', 'String', '', '1', '1', '1', '1', '1', 'EQ', '1', 'input', '{\"isNewLine\":\"\",\"fieldValid\":\"\",\"dictName\":\"\",\"gridRowCol\":\"6/4/8\",\"dictType\":\"\"}');

-- ----------------------------
-- Table structure for js_job_BLOB_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `js_job_BLOB_TRIGGERS`;
CREATE TABLE `js_job_BLOB_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `js_job_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `js_job_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of js_job_BLOB_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for js_job_CALENDARS
-- ----------------------------
DROP TABLE IF EXISTS `js_job_CALENDARS`;
CREATE TABLE `js_job_CALENDARS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of js_job_CALENDARS
-- ----------------------------

-- ----------------------------
-- Table structure for js_job_CRON_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `js_job_CRON_TRIGGERS`;
CREATE TABLE `js_job_CRON_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `js_job_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `js_job_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of js_job_CRON_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for js_job_FIRED_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `js_job_FIRED_TRIGGERS`;
CREATE TABLE `js_job_FIRED_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of js_job_FIRED_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for js_job_JOB_DETAILS
-- ----------------------------
DROP TABLE IF EXISTS `js_job_JOB_DETAILS`;
CREATE TABLE `js_job_JOB_DETAILS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of js_job_JOB_DETAILS
-- ----------------------------

-- ----------------------------
-- Table structure for js_job_LOCKS
-- ----------------------------
DROP TABLE IF EXISTS `js_job_LOCKS`;
CREATE TABLE `js_job_LOCKS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of js_job_LOCKS
-- ----------------------------

-- ----------------------------
-- Table structure for js_job_PAUSED_TRIGGER_GRPS
-- ----------------------------
DROP TABLE IF EXISTS `js_job_PAUSED_TRIGGER_GRPS`;
CREATE TABLE `js_job_PAUSED_TRIGGER_GRPS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of js_job_PAUSED_TRIGGER_GRPS
-- ----------------------------

-- ----------------------------
-- Table structure for js_job_SCHEDULER_STATE
-- ----------------------------
DROP TABLE IF EXISTS `js_job_SCHEDULER_STATE`;
CREATE TABLE `js_job_SCHEDULER_STATE` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of js_job_SCHEDULER_STATE
-- ----------------------------

-- ----------------------------
-- Table structure for js_job_SIMPLE_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `js_job_SIMPLE_TRIGGERS`;
CREATE TABLE `js_job_SIMPLE_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `js_job_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `js_job_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of js_job_SIMPLE_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for js_job_SIMPROP_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `js_job_SIMPROP_TRIGGERS`;
CREATE TABLE `js_job_SIMPROP_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `js_job_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `js_job_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of js_job_SIMPROP_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for js_job_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `js_job_TRIGGERS`;
CREATE TABLE `js_job_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  CONSTRAINT `js_job_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `js_job_JOB_DETAILS` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of js_job_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for js_sys_area
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_area`;
CREATE TABLE `js_sys_area` (
  `area_code` varchar(100) NOT NULL COMMENT '区域编码',
  `parent_code` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_codes` varchar(1000) NOT NULL COMMENT '所有父级编号',
  `tree_sort` decimal(10,0) NOT NULL COMMENT '本级排序号（升序）',
  `tree_sorts` varchar(1000) NOT NULL COMMENT '所有级别排序号',
  `tree_leaf` char(1) NOT NULL COMMENT '是否最末级',
  `tree_level` decimal(4,0) NOT NULL COMMENT '层次级别',
  `tree_names` varchar(1000) NOT NULL COMMENT '全节点名',
  `area_name` varchar(100) NOT NULL COMMENT '区域名称',
  `area_type` char(1) DEFAULT NULL COMMENT '区域类型',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`area_code`),
  KEY `idx_sys_area_pc` (`parent_code`),
  KEY `idx_sys_area_ts` (`tree_sort`),
  KEY `idx_sys_area_status` (`status`),
  KEY `idx_sys_area_pcs` (`parent_codes`),
  KEY `idx_sys_area_tss` (`tree_sorts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='行政区划';

-- ----------------------------
-- Records of js_sys_area
-- ----------------------------
INSERT INTO `js_sys_area` VALUES ('370000', '0', '0,', '370000', '0000370000,', '0', '0', '山东省', '山东省', '1', '0', 'system', '2019-05-17 20:11:57', 'system', '2019-05-17 20:11:57', null);
INSERT INTO `js_sys_area` VALUES ('370100', '370000', '0,370000,', '370100', '0000370000,0000370100,', '0', '1', '山东省/济南市', '济南市', '2', '0', 'system', '2019-05-17 20:11:58', 'system', '2019-05-17 20:11:58', null);
INSERT INTO `js_sys_area` VALUES ('370102', '370100', '0,370000,370100,', '370102', '0000370000,0000370100,0000370102,', '1', '2', '山东省/济南市/历下区', '历下区', '3', '0', 'system', '2019-05-17 20:11:58', 'system', '2019-05-17 20:11:58', null);
INSERT INTO `js_sys_area` VALUES ('370103', '370100', '0,370000,370100,', '370103', '0000370000,0000370100,0000370103,', '1', '2', '山东省/济南市/市中区', '市中区', '3', '0', 'system', '2019-05-17 20:11:58', 'system', '2019-05-17 20:11:58', null);
INSERT INTO `js_sys_area` VALUES ('370104', '370100', '0,370000,370100,', '370104', '0000370000,0000370100,0000370104,', '1', '2', '山东省/济南市/槐荫区', '槐荫区', '3', '0', 'system', '2019-05-17 20:11:59', 'system', '2019-05-17 20:11:59', null);
INSERT INTO `js_sys_area` VALUES ('370105', '370100', '0,370000,370100,', '370105', '0000370000,0000370100,0000370105,', '1', '2', '山东省/济南市/天桥区', '天桥区', '3', '0', 'system', '2019-05-17 20:11:59', 'system', '2019-05-17 20:11:59', null);
INSERT INTO `js_sys_area` VALUES ('370112', '370100', '0,370000,370100,', '370112', '0000370000,0000370100,0000370112,', '1', '2', '山东省/济南市/历城区', '历城区', '3', '0', 'system', '2019-05-17 20:11:59', 'system', '2019-05-17 20:11:59', null);
INSERT INTO `js_sys_area` VALUES ('370113', '370100', '0,370000,370100,', '370113', '0000370000,0000370100,0000370113,', '1', '2', '山东省/济南市/长清区', '长清区', '3', '0', 'system', '2019-05-17 20:11:59', 'system', '2019-05-17 20:11:59', null);
INSERT INTO `js_sys_area` VALUES ('370114', '370100', '0,370000,370100,', '370114', '0000370000,0000370100,0000370114,', '1', '2', '山东省/济南市/章丘区', '章丘区', '3', '0', 'system', '2019-05-17 20:12:00', 'system', '2019-05-17 20:12:00', null);
INSERT INTO `js_sys_area` VALUES ('370124', '370100', '0,370000,370100,', '370124', '0000370000,0000370100,0000370124,', '1', '2', '山东省/济南市/平阴县', '平阴县', '3', '0', 'system', '2019-05-17 20:12:00', 'system', '2019-05-17 20:12:00', null);
INSERT INTO `js_sys_area` VALUES ('370125', '370100', '0,370000,370100,', '370125', '0000370000,0000370100,0000370125,', '1', '2', '山东省/济南市/济阳县', '济阳县', '3', '0', 'system', '2019-05-17 20:12:00', 'system', '2019-05-17 20:12:00', null);
INSERT INTO `js_sys_area` VALUES ('370126', '370100', '0,370000,370100,', '370126', '0000370000,0000370100,0000370126,', '1', '2', '山东省/济南市/商河县', '商河县', '3', '0', 'system', '2019-05-17 20:12:00', 'system', '2019-05-17 20:12:00', null);
INSERT INTO `js_sys_area` VALUES ('370200', '370000', '0,370000,', '370200', '0000370000,0000370200,', '0', '1', '山东省/青岛市', '青岛市', '2', '0', 'system', '2019-05-17 20:11:58', 'system', '2019-05-17 20:11:58', null);
INSERT INTO `js_sys_area` VALUES ('370202', '370200', '0,370000,370200,', '370202', '0000370000,0000370200,0000370202,', '1', '2', '山东省/青岛市/市南区', '市南区', '3', '0', 'system', '2019-05-17 20:12:00', 'system', '2019-05-17 20:12:00', null);
INSERT INTO `js_sys_area` VALUES ('370203', '370200', '0,370000,370200,', '370203', '0000370000,0000370200,0000370203,', '1', '2', '山东省/青岛市/市北区', '市北区', '3', '0', 'system', '2019-05-17 20:12:01', 'system', '2019-05-17 20:12:01', null);
INSERT INTO `js_sys_area` VALUES ('370211', '370200', '0,370000,370200,', '370211', '0000370000,0000370200,0000370211,', '1', '2', '山东省/青岛市/黄岛区', '黄岛区', '3', '0', 'system', '2019-05-17 20:12:01', 'system', '2019-05-17 20:12:01', null);
INSERT INTO `js_sys_area` VALUES ('370212', '370200', '0,370000,370200,', '370212', '0000370000,0000370200,0000370212,', '1', '2', '山东省/青岛市/崂山区', '崂山区', '3', '0', 'system', '2019-05-17 20:12:01', 'system', '2019-05-17 20:12:01', null);
INSERT INTO `js_sys_area` VALUES ('370213', '370200', '0,370000,370200,', '370213', '0000370000,0000370200,0000370213,', '1', '2', '山东省/青岛市/李沧区', '李沧区', '3', '0', 'system', '2019-05-17 20:12:01', 'system', '2019-05-17 20:12:01', null);
INSERT INTO `js_sys_area` VALUES ('370214', '370200', '0,370000,370200,', '370214', '0000370000,0000370200,0000370214,', '1', '2', '山东省/青岛市/城阳区', '城阳区', '3', '0', 'system', '2019-05-17 20:12:01', 'system', '2019-05-17 20:12:01', null);
INSERT INTO `js_sys_area` VALUES ('370281', '370200', '0,370000,370200,', '370281', '0000370000,0000370200,0000370281,', '1', '2', '山东省/青岛市/胶州市', '胶州市', '3', '0', 'system', '2019-05-17 20:12:02', 'system', '2019-05-17 20:12:02', null);
INSERT INTO `js_sys_area` VALUES ('370282', '370200', '0,370000,370200,', '370282', '0000370000,0000370200,0000370282,', '1', '2', '山东省/青岛市/即墨区', '即墨区', '3', '0', 'system', '2019-05-17 20:12:02', 'system', '2019-05-17 20:12:02', null);
INSERT INTO `js_sys_area` VALUES ('370283', '370200', '0,370000,370200,', '370283', '0000370000,0000370200,0000370283,', '1', '2', '山东省/青岛市/平度市', '平度市', '3', '0', 'system', '2019-05-17 20:12:02', 'system', '2019-05-17 20:12:02', null);
INSERT INTO `js_sys_area` VALUES ('370285', '370200', '0,370000,370200,', '370285', '0000370000,0000370200,0000370285,', '1', '2', '山东省/青岛市/莱西市', '莱西市', '3', '0', 'system', '2019-05-17 20:12:03', 'system', '2019-05-17 20:12:03', null);

-- ----------------------------
-- Table structure for js_sys_company
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_company`;
CREATE TABLE `js_sys_company` (
  `company_code` varchar(64) NOT NULL COMMENT '公司编码',
  `parent_code` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_codes` varchar(1000) NOT NULL COMMENT '所有父级编号',
  `tree_sort` decimal(10,0) NOT NULL COMMENT '本级排序号（升序）',
  `tree_sorts` varchar(1000) NOT NULL COMMENT '所有级别排序号',
  `tree_leaf` char(1) NOT NULL COMMENT '是否最末级',
  `tree_level` decimal(4,0) NOT NULL COMMENT '层次级别',
  `tree_names` varchar(1000) NOT NULL COMMENT '全节点名',
  `view_code` varchar(100) NOT NULL COMMENT '公司代码',
  `company_name` varchar(200) NOT NULL COMMENT '公司名称',
  `full_name` varchar(200) NOT NULL COMMENT '公司全称',
  `area_code` varchar(100) DEFAULT NULL COMMENT '区域编码',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注信息',
  `corp_code` varchar(64) NOT NULL DEFAULT '0' COMMENT '租户代码',
  `corp_name` varchar(100) NOT NULL DEFAULT 'JeeSite' COMMENT '租户名称',
  `extend_s1` varchar(500) DEFAULT NULL COMMENT '扩展 String 1',
  `extend_s2` varchar(500) DEFAULT NULL COMMENT '扩展 String 2',
  `extend_s3` varchar(500) DEFAULT NULL COMMENT '扩展 String 3',
  `extend_s4` varchar(500) DEFAULT NULL COMMENT '扩展 String 4',
  `extend_s5` varchar(500) DEFAULT NULL COMMENT '扩展 String 5',
  `extend_s6` varchar(500) DEFAULT NULL COMMENT '扩展 String 6',
  `extend_s7` varchar(500) DEFAULT NULL COMMENT '扩展 String 7',
  `extend_s8` varchar(500) DEFAULT NULL COMMENT '扩展 String 8',
  `extend_i1` decimal(19,0) DEFAULT NULL COMMENT '扩展 Integer 1',
  `extend_i2` decimal(19,0) DEFAULT NULL COMMENT '扩展 Integer 2',
  `extend_i3` decimal(19,0) DEFAULT NULL COMMENT '扩展 Integer 3',
  `extend_i4` decimal(19,0) DEFAULT NULL COMMENT '扩展 Integer 4',
  `extend_f1` decimal(19,4) DEFAULT NULL COMMENT '扩展 Float 1',
  `extend_f2` decimal(19,4) DEFAULT NULL COMMENT '扩展 Float 2',
  `extend_f3` decimal(19,4) DEFAULT NULL COMMENT '扩展 Float 3',
  `extend_f4` decimal(19,4) DEFAULT NULL COMMENT '扩展 Float 4',
  `extend_d1` datetime DEFAULT NULL COMMENT '扩展 Date 1',
  `extend_d2` datetime DEFAULT NULL COMMENT '扩展 Date 2',
  `extend_d3` datetime DEFAULT NULL COMMENT '扩展 Date 3',
  `extend_d4` datetime DEFAULT NULL COMMENT '扩展 Date 4',
  PRIMARY KEY (`company_code`),
  KEY `idx_sys_company_cc` (`corp_code`),
  KEY `idx_sys_company_pc` (`parent_code`),
  KEY `idx_sys_company_ts` (`tree_sort`),
  KEY `idx_sys_company_status` (`status`),
  KEY `idx_sys_company_vc` (`view_code`),
  KEY `idx_sys_company_pcs` (`parent_codes`),
  KEY `idx_sys_company_tss` (`tree_sorts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公司表';

-- ----------------------------
-- Records of js_sys_company
-- ----------------------------
INSERT INTO `js_sys_company` VALUES ('SD', '0', '0,', '40', '0000000040,', '0', '0', '山东公司', 'SD', '山东公司', '山东公司', null, '1', 'system', '2019-05-17 20:12:59', 'system', '2019-05-21 23:08:56', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_company` VALUES ('SDJN', 'SD', '0,SD,', '30', '0000000040,0000000030,', '1', '1', '山东公司/济南公司', 'SDJN', '济南公司', '山东济南公司', null, '1', 'system', '2019-05-17 20:12:59', 'system', '2019-05-21 23:08:56', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_company` VALUES ('SDQD', 'SD', '0,SD,', '40', '0000000040,0000000040,', '1', '1', '山东公司/青岛公司', 'SDQD', '青岛公司', '山东青岛公司', null, '1', 'system', '2019-05-17 20:12:59', 'system', '2019-05-21 23:08:56', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for js_sys_company_office
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_company_office`;
CREATE TABLE `js_sys_company_office` (
  `company_code` varchar(64) NOT NULL COMMENT '公司编码',
  `office_code` varchar(64) NOT NULL COMMENT '机构编码',
  PRIMARY KEY (`company_code`,`office_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公司部门关联表';

-- ----------------------------
-- Records of js_sys_company_office
-- ----------------------------

-- ----------------------------
-- Table structure for js_sys_config
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_config`;
CREATE TABLE `js_sys_config` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `config_name` varchar(100) NOT NULL COMMENT '名称',
  `config_key` varchar(100) NOT NULL COMMENT '参数键',
  `config_value` varchar(1000) DEFAULT NULL COMMENT '参数值',
  `is_sys` char(1) NOT NULL COMMENT '系统内置（1是 0否）',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_sys_config_key` (`config_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='参数配置表';

-- ----------------------------
-- Records of js_sys_config
-- ----------------------------
INSERT INTO `js_sys_config` VALUES ('1129358919284486144', '研发工具-代码生成默认包名', 'gen.defaultPackageName', 'com.jeesite.modules', '0', 'system', '2019-05-17 20:12:04', 'system', '2019-05-17 20:12:04', '新建项目后，修改该键值，在生成代码的时候就不要再修改了');
INSERT INTO `js_sys_config` VALUES ('1129358920068820992', '主框架页-桌面仪表盘首页地址', 'sys.index.desktopUrl', '/desktop', '0', 'system', '2019-05-17 20:12:04', 'system', '2019-05-17 20:12:04', '主页面的第一个页签首页桌面地址');
INSERT INTO `js_sys_config` VALUES ('1129358920588914688', '主框架页-主导航菜单显示风格', 'sys.index.menuStyle', '1', '0', 'system', '2019-05-17 20:12:04', 'system', '2019-05-17 20:12:04', '1：菜单全部在左侧；2：根菜单显示在顶部');
INSERT INTO `js_sys_config` VALUES ('1129358921104814080', '主框架页-侧边栏的默认显示样式', 'sys.index.sidebarStyle', '1', '0', 'system', '2019-05-17 20:12:04', 'system', '2019-05-17 20:12:04', '1：默认显示侧边栏；2：默认折叠侧边栏');
INSERT INTO `js_sys_config` VALUES ('1129358921595547648', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue-light', '0', 'system', '2019-05-17 20:12:04', 'system', '2019-05-17 20:12:04', 'skin-black-light、skin-black、skin-blue-light、skin-blue、skin-green-light、skin-green、skin-purple-light、skin-purple、skin-red-light、skin-red、skin-yellow-light、skin-yellow');
INSERT INTO `js_sys_config` VALUES ('1129358922073698304', '用户登录-登录失败多少次数后显示验证码', 'sys.login.failedNumAfterValidCode', '100', '0', 'system', '2019-05-17 20:12:04', 'system', '2019-05-17 20:12:04', '设置为0强制使用验证码登录');
INSERT INTO `js_sys_config` VALUES ('1129358922635735040', '用户登录-登录失败多少次数后锁定账号', 'sys.login.failedNumAfterLockAccount', '200', '0', 'system', '2019-05-17 20:12:04', 'system', '2019-05-17 20:12:04', '登录失败多少次数后锁定账号');
INSERT INTO `js_sys_config` VALUES ('1129358923831111680', '用户登录-登录失败多少次数后锁定账号的时间', 'sys.login.failedNumAfterLockMinute', '20', '0', 'system', '2019-05-17 20:12:05', 'system', '2019-05-17 20:12:05', '锁定账号的时间（单位：分钟）');
INSERT INTO `js_sys_config` VALUES ('1129358925257175040', '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'true', '0', 'system', '2019-05-17 20:12:05', 'system', '2019-05-17 20:12:05', '是否开启注册用户功能');
INSERT INTO `js_sys_config` VALUES ('1129358926498689024', '账号自助-允许自助注册的用户类型', 'sys.account.registerUser.userTypes', '-1', '0', 'system', '2019-05-17 20:12:05', 'system', '2019-05-17 20:12:05', '允许注册的用户类型（多个用逗号隔开，如果注册时不选择用户类型，则第一个为默认类型）');
INSERT INTO `js_sys_config` VALUES ('1129358927459184640', '账号自助-验证码有效时间（分钟）', 'sys.account.validCodeTimeout', '10', '0', 'system', '2019-05-17 20:12:06', 'system', '2019-05-17 20:12:06', '找回密码时，短信/邮件验证码有效时间（单位：分钟，0表示不限制）');
INSERT INTO `js_sys_config` VALUES ('1129358928683921408', '用户管理-账号默认角色-员工类型', 'sys.user.defaultRoleCodes.employee', 'default', '0', 'system', '2019-05-17 20:12:06', 'system', '2019-05-17 20:12:06', '所有员工用户都拥有的角色权限（适用于菜单授权查询）');
INSERT INTO `js_sys_config` VALUES ('1129358929703137280', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', '0', 'system', '2019-05-17 20:12:06', 'system', '2019-05-17 20:12:06', '创建用户和重置密码的时候用户的密码');
INSERT INTO `js_sys_config` VALUES ('1129358930936262656', '用户管理-初始密码修改策略', 'sys.user.initPasswordModify', '1', '0', 'system', '2019-05-17 20:12:06', 'system', '2019-05-17 20:12:06', '0：初始密码修改策略关闭，没有任何提示；1：提醒用户，如果未修改初始密码，则在登录时和点击菜单就会提醒修改密码对话框；2：强制实行初始密码修改，登录后若不修改密码则不能进行系统操作');
INSERT INTO `js_sys_config` VALUES ('1129358932056141824', '用户管理-账号密码修改策略', 'sys.user.passwordModify', '1', '0', 'system', '2019-05-17 20:12:07', 'system', '2019-05-17 20:12:07', '0：密码修改策略关闭，没有任何提示；1：提醒用户，如果未修改初始密码，则在登录时和点击菜单就会提醒修改密码对话框；2：强制实行初始密码修改，登录后若不修改密码则不能进行系统操作。');
INSERT INTO `js_sys_config` VALUES ('1129358933125689344', '用户管理-账号密码修改策略验证周期', 'sys.user.passwordModifyCycle', '30', '0', 'system', '2019-05-17 20:12:07', 'system', '2019-05-17 20:12:07', '密码安全修改周期是指定时间内提醒或必须修改密码（例如设置30天）的验证时间（天），超过这个时间登录系统时需，提醒用户修改密码或强制修改密码才能继续使用系统。单位：天，如果设置30天，则第31天开始强制修改密码');
INSERT INTO `js_sys_config` VALUES ('1129358934249762816', '用户管理-密码修改多少次内不允许重复', 'sys.user.passwordModifyNotRepeatNum', '1', '0', 'system', '2019-05-17 20:12:07', 'system', '2019-05-17 20:12:07', '默认1次，表示不能与上次密码重复；若设置为3，表示并与前3次密码重复');
INSERT INTO `js_sys_config` VALUES ('1129358935298338816', '用户管理-账号密码修改最低安全等级', 'sys.user.passwordModifySecurityLevel', '0', '0', 'system', '2019-05-17 20:12:07', 'system', '2019-05-17 20:12:07', '0：不限制等级（用户在修改密码的时候不进行等级验证）\r；1：限制最低等级为很弱\r；2：限制最低等级为弱\r；3：限制最低等级为安全\r；4：限制最低等级为很安全');

-- ----------------------------
-- Table structure for js_sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_dict_data`;
CREATE TABLE `js_sys_dict_data` (
  `dict_code` varchar(64) NOT NULL COMMENT '字典编码',
  `parent_code` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_codes` varchar(1000) NOT NULL COMMENT '所有父级编号',
  `tree_sort` decimal(10,0) NOT NULL COMMENT '本级排序号（升序）',
  `tree_sorts` varchar(1000) NOT NULL COMMENT '所有级别排序号',
  `tree_leaf` char(1) NOT NULL COMMENT '是否最末级',
  `tree_level` decimal(4,0) NOT NULL COMMENT '层次级别',
  `tree_names` varchar(1000) NOT NULL COMMENT '全节点名',
  `dict_label` varchar(100) NOT NULL COMMENT '字典标签',
  `dict_value` varchar(100) NOT NULL COMMENT '字典键值',
  `dict_type` varchar(100) NOT NULL COMMENT '字典类型',
  `is_sys` char(1) NOT NULL COMMENT '系统内置（1是 0否）',
  `description` varchar(500) DEFAULT NULL COMMENT '字典描述',
  `css_style` varchar(500) DEFAULT NULL COMMENT 'css样式（如：color:red)',
  `css_class` varchar(500) DEFAULT NULL COMMENT 'css类名（如：red）',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注信息',
  `corp_code` varchar(64) NOT NULL DEFAULT '0' COMMENT '租户代码',
  `corp_name` varchar(100) NOT NULL DEFAULT 'JeeSite' COMMENT '租户名称',
  `extend_s1` varchar(500) DEFAULT NULL COMMENT '扩展 String 1',
  `extend_s2` varchar(500) DEFAULT NULL COMMENT '扩展 String 2',
  `extend_s3` varchar(500) DEFAULT NULL COMMENT '扩展 String 3',
  `extend_s4` varchar(500) DEFAULT NULL COMMENT '扩展 String 4',
  `extend_s5` varchar(500) DEFAULT NULL COMMENT '扩展 String 5',
  `extend_s6` varchar(500) DEFAULT NULL COMMENT '扩展 String 6',
  `extend_s7` varchar(500) DEFAULT NULL COMMENT '扩展 String 7',
  `extend_s8` varchar(500) DEFAULT NULL COMMENT '扩展 String 8',
  `extend_i1` decimal(19,0) DEFAULT NULL COMMENT '扩展 Integer 1',
  `extend_i2` decimal(19,0) DEFAULT NULL COMMENT '扩展 Integer 2',
  `extend_i3` decimal(19,0) DEFAULT NULL COMMENT '扩展 Integer 3',
  `extend_i4` decimal(19,0) DEFAULT NULL COMMENT '扩展 Integer 4',
  `extend_f1` decimal(19,4) DEFAULT NULL COMMENT '扩展 Float 1',
  `extend_f2` decimal(19,4) DEFAULT NULL COMMENT '扩展 Float 2',
  `extend_f3` decimal(19,4) DEFAULT NULL COMMENT '扩展 Float 3',
  `extend_f4` decimal(19,4) DEFAULT NULL COMMENT '扩展 Float 4',
  `extend_d1` datetime DEFAULT NULL COMMENT '扩展 Date 1',
  `extend_d2` datetime DEFAULT NULL COMMENT '扩展 Date 2',
  `extend_d3` datetime DEFAULT NULL COMMENT '扩展 Date 3',
  `extend_d4` datetime DEFAULT NULL COMMENT '扩展 Date 4',
  PRIMARY KEY (`dict_code`),
  KEY `idx_sys_dict_data_cc` (`corp_code`),
  KEY `idx_sys_dict_data_dt` (`dict_type`),
  KEY `idx_sys_dict_data_pc` (`parent_code`),
  KEY `idx_sys_dict_data_status` (`status`),
  KEY `idx_sys_dict_data_pcs` (`parent_codes`),
  KEY `idx_sys_dict_data_ts` (`tree_sort`),
  KEY `idx_sys_dict_data_tss` (`tree_sorts`),
  KEY `idx_sys_dict_data_dv` (`dict_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典数据表';

-- ----------------------------
-- Records of js_sys_dict_data
-- ----------------------------
INSERT INTO `js_sys_dict_data` VALUES ('1129358956752203776', '0', '0,', '30', '0000000030,', '1', '0', '是', '是', '1', 'sys_yes_no', '1', '', '', '', '0', 'system', '2019-05-17 20:12:13', 'system', '2019-05-17 20:12:13', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358957570093056', '0', '0,', '40', '0000000040,', '1', '0', '否', '否', '0', 'sys_yes_no', '1', '', 'color:#aaa;', '', '0', 'system', '2019-05-17 20:12:13', 'system', '2019-05-17 20:12:13', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358958148907008', '0', '0,', '20', '0000000020,', '1', '0', '正常', '正常', '0', 'sys_status', '1', '', '', '', '0', 'system', '2019-05-17 20:12:13', 'system', '2019-05-17 20:12:13', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358959512055808', '0', '0,', '30', '0000000030,', '1', '0', '删除', '删除', '1', 'sys_status', '1', '', 'color:#f00;', '', '0', 'system', '2019-05-17 20:12:13', 'system', '2019-05-17 20:12:13', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358960157978624', '0', '0,', '40', '0000000040,', '1', '0', '停用', '停用', '2', 'sys_status', '1', '', 'color:#f00;', '', '0', 'system', '2019-05-17 20:12:13', 'system', '2019-05-17 20:12:13', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358961399492608', '0', '0,', '50', '0000000050,', '1', '0', '冻结', '冻结', '3', 'sys_status', '1', '', 'color:#fa0;', '', '0', 'system', '2019-05-17 20:12:14', 'system', '2019-05-17 20:12:14', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358961978306560', '0', '0,', '60', '0000000060,', '1', '0', '待审', '待审', '4', 'sys_status', '1', '', '', '', '0', 'system', '2019-05-17 20:12:14', 'system', '2019-05-17 20:12:14', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358962586480640', '0', '0,', '70', '0000000070,', '1', '0', '驳回', '驳回', '5', 'sys_status', '1', '', '', '', '0', 'system', '2019-05-17 20:12:14', 'system', '2019-05-17 20:12:14', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358963169488896', '0', '0,', '80', '0000000080,', '1', '0', '草稿', '草稿', '9', 'sys_status', '1', '', 'color:#aaa;', '', '0', 'system', '2019-05-17 20:12:14', 'system', '2019-05-17 20:12:14', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358963907686400', '0', '0,', '30', '0000000030,', '1', '0', '显示', '显示', '1', 'sys_show_hide', '1', '', '', '', '0', 'system', '2019-05-17 20:12:14', 'system', '2019-05-17 20:12:14', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358964469723136', '0', '0,', '40', '0000000040,', '1', '0', '隐藏', '隐藏', '0', 'sys_show_hide', '1', '', 'color:#aaa;', '', '0', 'system', '2019-05-17 20:12:14', 'system', '2019-05-17 20:12:14', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358965069508608', '0', '0,', '30', '0000000030,', '1', '0', '简体中文', '简体中文', 'zh_CN', 'sys_lang_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:15', 'system', '2019-05-17 20:12:15', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358965891592192', '0', '0,', '40', '0000000040,', '1', '0', '英语', '英语', 'en', 'sys_lang_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:15', 'system', '2019-05-17 20:12:15', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358966579458048', '0', '0,', '30', '0000000030,', '1', '0', 'PC电脑', 'PC电脑', 'pc', 'sys_device_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:15', 'system', '2019-05-17 20:12:15', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358967191826432', '0', '0,', '40', '0000000040,', '1', '0', '手机APP', '手机APP', 'mobileApp', 'sys_device_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:15', 'system', '2019-05-17 20:12:15', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358967770640384', '0', '0,', '50', '0000000050,', '1', '0', '手机Web', '手机Web', 'mobileWeb', 'sys_device_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:15', 'system', '2019-05-17 20:12:15', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358968378814464', '0', '0,', '60', '0000000060,', '1', '0', '微信设备', '微信设备', 'weixin', 'sys_device_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:15', 'system', '2019-05-17 20:12:15', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358969075068928', '0', '0,', '30', '0000000030,', '1', '0', '主导航菜单', '主导航菜单', 'default', 'sys_menu_sys_code', '1', '', '', '', '0', 'system', '2019-05-17 20:12:15', 'system', '2019-05-17 20:12:15', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358969897152512', '0', '0,', '30', '0000000030,', '1', '0', '菜单', '菜单', '1', 'sys_menu_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:16', 'system', '2019-05-17 20:12:16', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358970454994944', '0', '0,', '40', '0000000040,', '1', '0', '权限', '权限', '2', 'sys_menu_type', '1', '', 'color:#c243d6;', '', '0', 'system', '2019-05-17 20:12:16', 'system', '2019-05-17 20:12:16', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358971147055104', '0', '0,', '30', '0000000030,', '1', '0', '默认权重', '默认权重', '20', 'sys_menu_weight', '1', '', '', '', '0', 'system', '2019-05-17 20:12:16', 'system', '2019-05-17 20:12:16', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358971784589312', '0', '0,', '40', '0000000040,', '1', '0', '二级管理员', '二级管理员', '40', 'sys_menu_weight', '1', '', '', '', '0', 'system', '2019-05-17 20:12:16', 'system', '2019-05-17 20:12:16', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358972476649472', '0', '0,', '50', '0000000050,', '1', '0', '系统管理员', '系统管理员', '60', 'sys_menu_weight', '1', '', '', '', '0', 'system', '2019-05-17 20:12:16', 'system', '2019-05-17 20:12:16', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358973021908992', '0', '0,', '60', '0000000060,', '1', '0', '超级管理员', '超级管理员', '80', 'sys_menu_weight', '1', '', 'color:#c243d6;', '', '0', 'system', '2019-05-17 20:12:16', 'system', '2019-05-17 20:12:16', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358973772689408', '0', '0,', '30', '0000000030,', '1', '0', '国家', '国家', '0', 'sys_area_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:17', 'system', '2019-05-17 20:12:17', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358974351503360', '0', '0,', '40', '0000000040,', '1', '0', '省份直辖市', '省份直辖市', '1', 'sys_area_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:17', 'system', '2019-05-17 20:12:17', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358974909345792', '0', '0,', '50', '0000000050,', '1', '0', '地市', '地市', '2', 'sys_area_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:17', 'system', '2019-05-17 20:12:17', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358975492354048', '0', '0,', '60', '0000000060,', '1', '0', '区县', '区县', '3', 'sys_area_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:17', 'system', '2019-05-17 20:12:17', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358976029224960', '0', '0,', '30', '0000000030,', '1', '0', '省级公司', '省级公司', '1', 'sys_office_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:17', 'system', '2019-05-17 20:12:17', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358976649981952', '0', '0,', '40', '0000000040,', '1', '0', '市级公司', '市级公司', '2', 'sys_office_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:17', 'system', '2019-05-17 20:12:17', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358977203630080', '0', '0,', '50', '0000000050,', '1', '0', '部门', '部门', '3', 'sys_office_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:17', 'system', '2019-05-17 20:12:17', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358977778249728', '0', '0,', '30', '0000000030,', '1', '0', '正常', '正常', '0', 'sys_search_status', '1', '', '', '', '0', 'system', '2019-05-17 20:12:17', 'system', '2019-05-17 20:12:18', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358978390618112', '0', '0,', '40', '0000000040,', '1', '0', '停用', '停用', '2', 'sys_search_status', '1', '', 'color:#f00;', '', '0', 'system', '2019-05-17 20:12:18', 'system', '2019-05-17 20:12:18', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358979032346624', '0', '0,', '30', '0000000030,', '1', '0', '男', '男', '1', 'sys_user_sex', '1', '', '', '', '0', 'system', '2019-05-17 20:12:18', 'system', '2019-05-17 20:12:18', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358979611160576', '0', '0,', '40', '0000000040,', '1', '0', '女', '女', '2', 'sys_user_sex', '1', '', '', '', '0', 'system', '2019-05-17 20:12:18', 'system', '2019-05-17 20:12:18', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358980248694784', '0', '0,', '30', '0000000030,', '1', '0', '正常', '正常', '0', 'sys_user_status', '1', '', '', '', '0', 'system', '2019-05-17 20:12:18', 'system', '2019-05-17 20:12:18', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358980798148608', '0', '0,', '40', '0000000040,', '1', '0', '停用', '停用', '2', 'sys_user_status', '1', '', 'color:#f00;', '', '0', 'system', '2019-05-17 20:12:18', 'system', '2019-05-17 20:12:18', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358981355991040', '0', '0,', '50', '0000000050,', '1', '0', '冻结', '冻结', '3', 'sys_user_status', '1', '', 'color:#fa0;', '', '0', 'system', '2019-05-17 20:12:18', 'system', '2019-05-17 20:12:18', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358981897056256', '0', '0,', '30', '0000000030,', '1', '0', '员工', '员工', 'employee', 'sys_user_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:19', 'system', '2019-05-17 20:12:19', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358982542979072', '0', '0,', '40', '0000000040,', '1', '0', '会员', '会员', 'member', 'sys_user_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:19', 'system', '2019-05-17 20:12:19', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358983159541760', '0', '0,', '50', '0000000050,', '1', '0', '单位', '单位', 'btype', 'sys_user_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:19', 'system', '2019-05-17 20:12:19', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358983696412672', '0', '0,', '60', '0000000060,', '1', '0', '个人', '个人', 'persion', 'sys_user_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:19', 'system', '2019-05-17 20:12:19', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358984392667136', '0', '0,', '70', '0000000070,', '1', '0', '专家', '专家', 'expert', 'sys_user_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:19', 'system', '2019-05-17 20:12:19', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358984937926656', '0', '0,', '30', '0000000030,', '1', '0', '高管', '高管', '1', 'sys_role_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:19', 'system', '2019-05-17 20:12:19', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358985529323520', '0', '0,', '40', '0000000040,', '1', '0', '中层', '中层', '2', 'sys_role_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:19', 'system', '2019-05-17 20:12:19', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358986108137472', '0', '0,', '50', '0000000050,', '1', '0', '基层', '基层', '3', 'sys_role_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:19', 'system', '2019-05-17 20:12:20', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358986665979904', '0', '0,', '60', '0000000060,', '1', '0', '其它', '其它', '4', 'sys_role_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:20', 'system', '2019-05-17 20:12:20', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358987181879296', '0', '0,', '30', '0000000030,', '1', '0', '未设置', '未设置', '0', 'sys_role_data_scope', '1', '', '', '', '0', 'system', '2019-05-17 20:12:20', 'system', '2019-05-17 20:12:20', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358987802636288', '0', '0,', '40', '0000000040,', '1', '0', '全部数据', '全部数据', '1', 'sys_role_data_scope', '1', '', '', '', '0', 'system', '2019-05-17 20:12:20', 'system', '2019-05-17 20:12:20', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358988356284416', '0', '0,', '50', '0000000050,', '1', '0', '自定义数据', '自定义数据', '2', 'sys_role_data_scope', '1', '', '', '', '0', 'system', '2019-05-17 20:12:20', 'system', '2019-05-17 20:12:20', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358988876378112', '0', '0,', '60', '0000000060,', '1', '0', '本部门数据', '本部门数据', '3', 'sys_role_data_scope', '1', '', '', '', '0', 'system', '2019-05-17 20:12:20', 'system', '2019-05-17 20:12:20', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358989392277504', '0', '0,', '70', '0000000070,', '1', '0', '本公司数据', '本公司数据', '4', 'sys_role_data_scope', '1', '', '', '', '0', 'system', '2019-05-17 20:12:20', 'system', '2019-05-17 20:12:20', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358989996257280', '0', '0,', '80', '0000000080,', '1', '0', '本部门和本公司数据', '本部门和本公司数据', '5', 'sys_role_data_scope', '1', '', '', '', '0', 'system', '2019-05-17 20:12:20', 'system', '2019-05-17 20:12:20', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358990524739584', '0', '0,', '30', '0000000030,', '1', '0', '高管', '高管', '1', 'sys_post_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:21', 'system', '2019-05-17 20:12:21', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358991191633920', '0', '0,', '40', '0000000040,', '1', '0', '中层', '中层', '2', 'sys_post_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:21', 'system', '2019-05-17 20:12:21', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358991753670656', '0', '0,', '50', '0000000050,', '1', '0', '基层', '基层', '3', 'sys_post_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:21', 'system', '2019-05-17 20:12:21', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358992500256768', '0', '0,', '60', '0000000060,', '1', '0', '其它', '其它', '4', 'sys_post_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:21', 'system', '2019-05-17 20:12:21', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358993150373888', '0', '0,', '30', '0000000030,', '1', '0', '接入日志', '接入日志', 'access', 'sys_log_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:21', 'system', '2019-05-17 20:12:21', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358993813073920', '0', '0,', '40', '0000000040,', '1', '0', '修改日志', '修改日志', 'update', 'sys_log_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:21', 'system', '2019-05-17 20:12:21', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358994387693568', '0', '0,', '50', '0000000050,', '1', '0', '查询日志', '查询日志', 'select', 'sys_log_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:21', 'system', '2019-05-17 20:12:21', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358994979090432', '0', '0,', '60', '0000000060,', '1', '0', '登录登出', '登录登出', 'loginLogout', 'sys_log_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:22', 'system', '2019-05-17 20:12:22', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358995541127168', '0', '0,', '30', '0000000030,', '1', '0', '默认', '默认', 'DEFAULT', 'sys_job_group', '1', '', '', '', '0', 'system', '2019-05-17 20:12:22', 'system', '2019-05-17 20:12:22', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358996086386688', '0', '0,', '40', '0000000040,', '1', '0', '系统', '系统', 'SYSTEM', 'sys_job_group', '1', '', '', '', '0', 'system', '2019-05-17 20:12:22', 'system', '2019-05-17 20:12:22', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358996715532288', '0', '0,', '30', '0000000030,', '1', '0', '错过计划等待本次计划完成后立即执行一次', '错过计划等待本次计划完成后立即执行一次', '1', 'sys_job_misfire_instruction', '1', '', '', '', '0', 'system', '2019-05-17 20:12:22', 'system', '2019-05-17 20:12:22', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358997260791808', '0', '0,', '40', '0000000040,', '1', '0', '本次执行时间根据上次结束时间重新计算（时间间隔方式）', '本次执行时间根据上次结束时间重新计算（时间间隔方式）', '2', 'sys_job_misfire_instruction', '1', '', '', '', '0', 'system', '2019-05-17 20:12:22', 'system', '2019-05-17 20:12:22', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358997847994368', '0', '0,', '30', '0000000030,', '1', '0', '正常', '正常', '0', 'sys_job_status', '1', '', '', '', '0', 'system', '2019-05-17 20:12:22', 'system', '2019-05-17 20:12:22', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358998384865280', '0', '0,', '40', '0000000040,', '1', '0', '删除', '删除', '1', 'sys_job_status', '1', '', '', '', '0', 'system', '2019-05-17 20:12:22', 'system', '2019-05-17 20:12:22', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358998946902016', '0', '0,', '50', '0000000050,', '1', '0', '暂停', '暂停', '2', 'sys_job_status', '1', '', 'color:#f00;', '', '0', 'system', '2019-05-17 20:12:23', 'system', '2019-05-17 20:12:23', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129358999492161536', '0', '0,', '30', '0000000030,', '1', '0', '完成', '完成', '3', 'sys_job_status', '1', '', '', '', '0', 'system', '2019-05-17 20:12:23', 'system', '2019-05-17 20:12:23', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359000050003968', '0', '0,', '40', '0000000040,', '1', '0', '错误', '错误', '4', 'sys_job_status', '1', '', 'color:#f00;', '', '0', 'system', '2019-05-17 20:12:23', 'system', '2019-05-17 20:12:23', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359000616235008', '0', '0,', '50', '0000000050,', '1', '0', '运行', '运行', '5', 'sys_job_status', '1', '', '', '', '0', 'system', '2019-05-17 20:12:23', 'system', '2019-05-17 20:12:23', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359001195048960', '0', '0,', '30', '0000000030,', '1', '0', '计划日志', '计划日志', 'scheduler', 'sys_job_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:23', 'system', '2019-05-17 20:12:23', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359001706754048', '0', '0,', '40', '0000000040,', '1', '0', '任务日志', '任务日志', 'job', 'sys_job_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:23', 'system', '2019-05-17 20:12:23', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359002495283200', '0', '0,', '50', '0000000050,', '1', '0', '触发日志', '触发日志', 'trigger', 'sys_job_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:23', 'system', '2019-05-17 20:12:23', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359003086680064', '0', '0,', '30', '0000000030,', '1', '0', '计划创建', '计划创建', 'jobScheduled', 'sys_job_event', '1', '', '', '', '0', 'system', '2019-05-17 20:12:24', 'system', '2019-05-17 20:12:24', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359003703242752', '0', '0,', '40', '0000000040,', '1', '0', '计划移除', '计划移除', 'jobUnscheduled', 'sys_job_event', '1', '', '', '', '0', 'system', '2019-05-17 20:12:24', 'system', '2019-05-17 20:12:24', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359004374331392', '0', '0,', '50', '0000000050,', '1', '0', '计划暂停', '计划暂停', 'triggerPaused', 'sys_job_event', '1', '', '', '', '0', 'system', '2019-05-17 20:12:24', 'system', '2019-05-17 20:12:24', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359004940562432', '0', '0,', '60', '0000000060,', '1', '0', '计划恢复', '计划恢复', 'triggerResumed', 'sys_job_event', '1', '', '', '', '0', 'system', '2019-05-17 20:12:24', 'system', '2019-05-17 20:12:24', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359005452267520', '0', '0,', '70', '0000000070,', '1', '0', '调度错误', '调度错误', 'schedulerError', 'sys_job_event', '1', '', '', '', '0', 'system', '2019-05-17 20:12:24', 'system', '2019-05-17 20:12:24', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359006005915648', '0', '0,', '80', '0000000080,', '1', '0', '任务执行', '任务执行', 'jobToBeExecuted', 'sys_job_event', '1', '', '', '', '0', 'system', '2019-05-17 20:12:24', 'system', '2019-05-17 20:12:24', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359006538592256', '0', '0,', '90', '0000000090,', '1', '0', '任务结束', '任务结束', 'jobWasExecuted', 'sys_job_event', '1', '', '', '', '0', 'system', '2019-05-17 20:12:24', 'system', '2019-05-17 20:12:24', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359007079657472', '0', '0,', '100', '0000000100,', '1', '0', '任务停止', '任务停止', 'jobExecutionVetoed', 'sys_job_event', '1', '', '', '', '0', 'system', '2019-05-17 20:12:24', 'system', '2019-05-17 20:12:24', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359007599751168', '0', '0,', '110', '0000000110,', '1', '0', '触发计划', '触发计划', 'triggerFired', 'sys_job_event', '1', '', '', '', '0', 'system', '2019-05-17 20:12:25', 'system', '2019-05-17 20:12:25', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359008161787904', '0', '0,', '120', '0000000120,', '1', '0', '触发验证', '触发验证', 'vetoJobExecution', 'sys_job_event', '1', '', '', '', '0', 'system', '2019-05-17 20:12:25', 'system', '2019-05-17 20:12:25', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359008694464512', '0', '0,', '130', '0000000130,', '1', '0', '触发完成', '触发完成', 'triggerComplete', 'sys_job_event', '1', '', '', '', '0', 'system', '2019-05-17 20:12:25', 'system', '2019-05-17 20:12:25', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359009206169600', '0', '0,', '140', '0000000140,', '1', '0', '触发错过', '触发错过', 'triggerMisfired', 'sys_job_event', '1', '', '', '', '0', 'system', '2019-05-17 20:12:25', 'system', '2019-05-17 20:12:25', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359009814343680', '0', '0,', '30', '0000000030,', '1', '0', 'PC', 'PC', 'pc', 'sys_msg_type', '1', '消息类型', '', '', '0', 'system', '2019-05-17 20:12:25', 'system', '2019-05-17 20:12:25', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359010426712064', '0', '0,', '40', '0000000040,', '1', '0', 'APP', 'APP', 'app', 'sys_msg_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:25', 'system', '2019-05-17 20:12:25', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359011018108928', '0', '0,', '50', '0000000050,', '1', '0', '短信', '短信', 'sms', 'sys_msg_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:25', 'system', '2019-05-17 20:12:25', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359011571757056', '0', '0,', '60', '0000000060,', '1', '0', '邮件', '邮件', 'email', 'sys_msg_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:26', 'system', '2019-05-17 20:12:26', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359012121210880', '0', '0,', '70', '0000000070,', '1', '0', '微信', '微信', 'weixin', 'sys_msg_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:26', 'system', '2019-05-17 20:12:26', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359012666470400', '0', '0,', '30', '0000000030,', '1', '0', '待推送', '待推送', '0', 'sys_msg_push_status', '1', '推送状态', '', '', '0', 'system', '2019-05-17 20:12:26', 'system', '2019-05-17 20:12:26', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359013241090048', '0', '0,', '30', '0000000030,', '1', '0', '成功', '成功', '1', 'sys_msg_push_status', '1', '', '', '', '0', 'system', '2019-05-17 20:12:26', 'system', '2019-05-17 20:12:26', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359013819904000', '0', '0,', '40', '0000000040,', '1', '0', '失败', '失败', '2', 'sys_msg_push_status', '1', '', 'color:#f00;', '', '0', 'system', '2019-05-17 20:12:26', 'system', '2019-05-17 20:12:26', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359014398717952', '0', '0,', '30', '0000000030,', '1', '0', '未送达', '未送达', '0', 'sys_msg_read_status', '1', '读取状态', '', '', '0', 'system', '2019-05-17 20:12:26', 'system', '2019-05-17 20:12:26', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359014923005952', '0', '0,', '40', '0000000040,', '1', '0', '已读', '已读', '1', 'sys_msg_read_status', '1', '', '', '', '0', 'system', '2019-05-17 20:12:26', 'system', '2019-05-17 20:12:26', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359015434711040', '0', '0,', '50', '0000000050,', '1', '0', '未读', '未读', '2', 'sys_msg_read_status', '1', '', '', '', '0', 'system', '2019-05-17 20:12:26', 'system', '2019-05-17 20:12:26', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359015996747776', '0', '0,', '30', '0000000030,', '1', '0', '普通', '普通', '1', 'msg_inner_content_level', '1', '内容级别', '', '', '0', 'system', '2019-05-17 20:12:27', 'system', '2019-05-17 20:12:27', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359016567173120', '0', '0,', '40', '0000000040,', '1', '0', '一般', '一般', '2', 'msg_inner_content_level', '1', '', '', '', '0', 'system', '2019-05-17 20:12:27', 'system', '2019-05-17 20:12:27', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359017150181376', '0', '0,', '50', '0000000050,', '1', '0', '紧急', '紧急', '3', 'msg_inner_content_level', '1', '', 'color:#f00;', '', '0', 'system', '2019-05-17 20:12:27', 'system', '2019-05-17 20:12:27', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359017741578240', '0', '0,', '30', '0000000030,', '1', '0', '公告', '公告', '1', 'msg_inner_content_type', '1', '内容类型', '', '', '0', 'system', '2019-05-17 20:12:27', 'system', '2019-05-17 20:12:27', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359018316197888', '0', '0,', '40', '0000000040,', '1', '0', '新闻', '新闻', '2', 'msg_inner_content_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:27', 'system', '2019-05-17 20:12:27', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359018983092224', '0', '0,', '50', '0000000050,', '1', '0', '会议', '会议', '3', 'msg_inner_content_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:27', 'system', '2019-05-17 20:12:27', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359019515768832', '0', '0,', '60', '0000000060,', '1', '0', '其它', '其它', '4', 'msg_inner_content_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:27', 'system', '2019-05-17 20:12:27', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359020052639744', '0', '0,', '30', '0000000030,', '1', '0', '全部', '全部', '0', 'msg_inner_receiver_type', '1', '接受类型', '', '', '0', 'system', '2019-05-17 20:12:28', 'system', '2019-05-17 20:12:28', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359020597899264', '0', '0,', '30', '0000000030,', '1', '0', '用户', '用户', '1', 'msg_inner_receiver_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:28', 'system', '2019-05-17 20:12:28', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359021155741696', '0', '0,', '40', '0000000040,', '1', '0', '部门', '部门', '2', 'msg_inner_receiver_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:28', 'system', '2019-05-17 20:12:28', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359021671641088', '0', '0,', '50', '0000000050,', '1', '0', '角色', '角色', '3', 'msg_inner_receiver_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:28', 'system', '2019-05-17 20:12:28', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359022216900608', '0', '0,', '60', '0000000060,', '1', '0', '岗位', '岗位', '4', 'msg_inner_receiver_type', '1', '', '', '', '0', 'system', '2019-05-17 20:12:28', 'system', '2019-05-17 20:12:28', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359022787325952', '0', '0,', '30', '0000000030,', '1', '0', '正常', '正常', '0', 'msg_inner_msg_status', '1', '消息状态', '', '', '0', 'system', '2019-05-17 20:12:28', 'system', '2019-05-17 20:12:28', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359023475191808', '0', '0,', '40', '0000000040,', '1', '0', '删除', '删除', '1', 'msg_inner_msg_status', '1', '', '', '', '0', 'system', '2019-05-17 20:12:28', 'system', '2019-05-17 20:12:28', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359024066588672', '0', '0,', '50', '0000000050,', '1', '0', '审核', '审核', '4', 'msg_inner_msg_status', '1', '', '', '', '0', 'system', '2019-05-17 20:12:29', 'system', '2019-05-17 20:12:29', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359024670568448', '0', '0,', '60', '0000000060,', '1', '0', '驳回', '驳回', '5', 'msg_inner_msg_status', '1', '', 'color:#f00;', '', '0', 'system', '2019-05-17 20:12:29', 'system', '2019-05-17 20:12:29', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_dict_data` VALUES ('1129359025220022272', '0', '0,', '70', '0000000070,', '1', '0', '草稿', '草稿', '9', 'msg_inner_msg_status', '1', '', '', '', '0', 'system', '2019-05-17 20:12:29', 'system', '2019-05-17 20:12:29', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for js_sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_dict_type`;
CREATE TABLE `js_sys_dict_type` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `dict_name` varchar(100) NOT NULL COMMENT '字典名称',
  `dict_type` varchar(100) NOT NULL COMMENT '字典类型',
  `is_sys` char(1) NOT NULL COMMENT '是否系统字典',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`),
  KEY `idx_sys_dict_type_is` (`is_sys`),
  KEY `idx_sys_dict_type_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- ----------------------------
-- Records of js_sys_dict_type
-- ----------------------------
INSERT INTO `js_sys_dict_type` VALUES ('1129358943653392384', '是否', 'sys_yes_no', '1', '0', 'system', '2019-05-17 20:12:09', 'system', '2019-05-17 20:12:09', null);
INSERT INTO `js_sys_dict_type` VALUES ('1129358944207040512', '状态', 'sys_status', '1', '0', 'system', '2019-05-17 20:12:09', 'system', '2019-05-17 20:12:09', null);
INSERT INTO `js_sys_dict_type` VALUES ('1129358944571944960', '显示隐藏', 'sys_show_hide', '1', '0', 'system', '2019-05-17 20:12:10', 'system', '2019-05-17 20:12:10', null);
INSERT INTO `js_sys_dict_type` VALUES ('1129358944982986752', '国际化语言类型', 'sys_lang_type', '1', '0', 'system', '2019-05-17 20:12:10', 'system', '2019-05-17 20:12:10', null);
INSERT INTO `js_sys_dict_type` VALUES ('1129358945347891200', '客户端设备类型', 'sys_device_type', '1', '0', 'system', '2019-05-17 20:12:10', 'system', '2019-05-17 20:12:10', null);
INSERT INTO `js_sys_dict_type` VALUES ('1129358945721184256', '菜单归属系统', 'sys_menu_sys_code', '1', '0', 'system', '2019-05-17 20:12:10', 'system', '2019-05-17 20:12:10', null);
INSERT INTO `js_sys_dict_type` VALUES ('1129358946111254528', '菜单类型', 'sys_menu_type', '1', '0', 'system', '2019-05-17 20:12:10', 'system', '2019-05-17 20:12:10', null);
INSERT INTO `js_sys_dict_type` VALUES ('1129358946488741888', '菜单权重', 'sys_menu_weight', '1', '0', 'system', '2019-05-17 20:12:10', 'system', '2019-05-17 20:12:10', null);
INSERT INTO `js_sys_dict_type` VALUES ('1129358946874617856', '区域类型', 'sys_area_type', '1', '0', 'system', '2019-05-17 20:12:10', 'system', '2019-05-17 20:12:10', null);
INSERT INTO `js_sys_dict_type` VALUES ('1129358947247910912', '机构类型', 'sys_office_type', '1', '0', 'system', '2019-05-17 20:12:10', 'system', '2019-05-17 20:12:10', null);
INSERT INTO `js_sys_dict_type` VALUES ('1129358947663147008', '查询状态', 'sys_search_status', '1', '0', 'system', '2019-05-17 20:12:10', 'system', '2019-05-17 20:12:10', null);
INSERT INTO `js_sys_dict_type` VALUES ('1129358948032245760', '用户性别', 'sys_user_sex', '1', '0', 'system', '2019-05-17 20:12:10', 'system', '2019-05-17 20:12:10', null);
INSERT INTO `js_sys_dict_type` VALUES ('1129358948380372992', '用户状态', 'sys_user_status', '1', '0', 'system', '2019-05-17 20:12:10', 'system', '2019-05-17 20:12:10', null);
INSERT INTO `js_sys_dict_type` VALUES ('1129358948770443264', '用户类型', 'sys_user_type', '1', '0', 'system', '2019-05-17 20:12:11', 'system', '2019-05-17 20:12:11', null);
INSERT INTO `js_sys_dict_type` VALUES ('1129358949126959104', '角色分类', 'sys_role_type', '1', '0', 'system', '2019-05-17 20:12:11', 'system', '2019-05-17 20:12:11', null);
INSERT INTO `js_sys_dict_type` VALUES ('1129358949508640768', '角色数据范围', 'sys_role_data_scope', '1', '0', 'system', '2019-05-17 20:12:11', 'system', '2019-05-17 20:12:11', null);
INSERT INTO `js_sys_dict_type` VALUES ('1129358949869350912', '岗位分类', 'sys_post_type', '1', '0', 'system', '2019-05-17 20:12:11', 'system', '2019-05-17 20:12:11', null);
INSERT INTO `js_sys_dict_type` VALUES ('1129358950280392704', '日志类型', 'sys_log_type', '1', '0', 'system', '2019-05-17 20:12:11', 'system', '2019-05-17 20:12:11', null);
INSERT INTO `js_sys_dict_type` VALUES ('1129358950666268672', '作业分组', 'sys_job_group', '1', '0', 'system', '2019-05-17 20:12:11', 'system', '2019-05-17 20:12:11', null);
INSERT INTO `js_sys_dict_type` VALUES ('1129358951031173120', '作业错过策略', 'sys_job_misfire_instruction', '1', '0', 'system', '2019-05-17 20:12:11', 'system', '2019-05-17 20:12:11', null);
INSERT INTO `js_sys_dict_type` VALUES ('1129358951421243392', '作业状态', 'sys_job_status', '1', '0', 'system', '2019-05-17 20:12:11', 'system', '2019-05-17 20:12:11', null);
INSERT INTO `js_sys_dict_type` VALUES ('1129358951790342144', '作业任务类型', 'sys_job_type', '1', '0', 'system', '2019-05-17 20:12:11', 'system', '2019-05-17 20:12:11', null);
INSERT INTO `js_sys_dict_type` VALUES ('1129358952167829504', '作业任务事件', 'sys_job_event', '1', '0', 'system', '2019-05-17 20:12:11', 'system', '2019-05-17 20:12:11', null);
INSERT INTO `js_sys_dict_type` VALUES ('1129358952545316864', '消息类型', 'sys_msg_type', '1', '0', 'system', '2019-05-17 20:12:11', 'system', '2019-05-17 20:12:11', null);
INSERT INTO `js_sys_dict_type` VALUES ('1129358952914415616', '推送状态', 'sys_msg_push_status', '1', '0', 'system', '2019-05-17 20:12:12', 'system', '2019-05-17 20:12:12', null);
INSERT INTO `js_sys_dict_type` VALUES ('1129358953287708672', '读取状态', 'sys_msg_read_status', '1', '0', 'system', '2019-05-17 20:12:12', 'system', '2019-05-17 20:12:12', null);
INSERT INTO `js_sys_dict_type` VALUES ('1129358953652613120', '内容级别', 'msg_inner_content_level', '1', '0', 'system', '2019-05-17 20:12:12', 'system', '2019-05-17 20:12:12', null);
INSERT INTO `js_sys_dict_type` VALUES ('1129358954034294784', '内容类型', 'msg_inner_content_type', '1', '0', 'system', '2019-05-17 20:12:12', 'system', '2019-05-17 20:12:12', null);
INSERT INTO `js_sys_dict_type` VALUES ('1129358954424365056', '接受类型', 'msg_inner_receiver_type', '1', '0', 'system', '2019-05-17 20:12:12', 'system', '2019-05-17 20:12:12', null);
INSERT INTO `js_sys_dict_type` VALUES ('1129358954822823936', '消息状态', 'msg_inner_msg_status', '1', '0', 'system', '2019-05-17 20:12:12', 'system', '2019-05-17 20:12:12', null);

-- ----------------------------
-- Table structure for js_sys_employee
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_employee`;
CREATE TABLE `js_sys_employee` (
  `emp_code` varchar(64) NOT NULL COMMENT '员工编码',
  `emp_name` varchar(100) NOT NULL COMMENT '员工姓名',
  `emp_name_en` varchar(100) DEFAULT NULL COMMENT '英文名',
  `office_code` varchar(64) NOT NULL COMMENT '机构编码',
  `office_name` varchar(100) NOT NULL COMMENT '机构名称',
  `company_code` varchar(64) DEFAULT NULL COMMENT '公司编码',
  `company_name` varchar(200) DEFAULT NULL COMMENT '公司名称',
  `status` char(1) NOT NULL COMMENT '状态（0在职 1删除 2离职）',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注信息',
  `corp_code` varchar(64) NOT NULL DEFAULT '0' COMMENT '租户代码',
  `corp_name` varchar(100) NOT NULL DEFAULT 'JeeSite' COMMENT '租户名称',
  PRIMARY KEY (`emp_code`),
  KEY `idx_sys_employee_cco` (`company_code`),
  KEY `idx_sys_employee_cc` (`corp_code`),
  KEY `idx_sys_employee_ud` (`update_date`),
  KEY `idx_sys_employee_oc` (`office_code`),
  KEY `idx_sys_employee_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工表';

-- ----------------------------
-- Records of js_sys_employee
-- ----------------------------
INSERT INTO `js_sys_employee` VALUES ('1129782821101875200_yl7v', '魏国商户', '', '123458', '第三方客户', '', '', '0', 'system', '2019-05-25 11:19:10', 'system', '2019-05-27 21:21:37', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('1130145078150836224_6g6x', '蜀国商户', '', '123458', '第三方商户', '', '', '0', 'system', '2019-05-27 21:22:21', 'system', '2019-05-27 21:22:21', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('1131597636924874752_ad72', '吴国商户', '', '123458', '第三方商户', '', '', '0', 'system', '2019-05-27 21:22:46', 'system', '2019-05-27 21:22:46', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('1134427234206957568_0zlq', '亦同', '', '123458', '第三方商户', '', '', '1', 'system', '2019-05-31 19:53:24', 'system', '2019-05-31 20:52:26', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('1134430358019719168_yeuk', '加大记得', '', '123458', '第三方商户', '', '', '1', 'simayan_cvfd', '2019-05-31 20:05:00', 'system', '2019-05-31 20:10:16', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('1134442732421611520_riup', '碧莲', '', '123458', '第三方商户', '', '', '0', 'system', '2019-05-31 20:54:27', 'system', '2019-05-31 20:54:27', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('1134868018363813888_q0ok', '测试商户勿删', '', '123458', '第三方商户', '', '', '0', 'system', '2019-06-11 20:20:11', 'system', '2019-06-11 20:20:11', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('caocao_wtg4', '曹操', '', '123456', '三国英雄', '', '', '0', 'system', '2019-05-21 23:12:49', 'system', '2019-05-21 23:24:21', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('liubei_56bw', '刘备', '', '123456', '三国英雄', '', '', '0', 'system', '2019-05-21 23:15:53', 'system', '2019-05-21 23:24:35', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('simayan_cvfd', '司马炎', '', '123457', '一统三国', '', '', '0', 'system', '2019-05-21 23:21:55', 'system', '2019-05-21 23:23:09', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('simayan_sefy', '司马炎', '', '123457', '一统三国', '', '', '0', 'system', '2019-06-12 16:31:06', 'system', '2019-06-12 16:31:06', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('simayi_vfbh', '司马懿', '', '123457', '一统三国', '', '', '0', 'system', '2019-05-21 23:20:49', 'system', '2019-05-21 23:23:30', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('simazhao_prky', '司马昭', '', '123457', '一统三国', '', '', '0', 'system', '2019-05-21 23:21:31', 'system', '2019-05-21 23:23:18', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('sunquan_hwag', '孙权', '', '123456', '三国英雄', '', '', '0', 'system', '2019-05-21 23:16:12', 'system', '2019-05-21 23:24:42', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('sunshangxiang_wwe1', '孙尚香', '', '123456', '三国英雄', '', '', '0', 'system', '2019-05-21 23:17:35', 'system', '2019-05-21 23:23:52', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('user10_p6uj', '用户10', null, 'SDJN03', '研发部', 'SDJN', '济南公司', '1', 'system', '2019-05-17 20:13:04', 'system', '2019-05-21 23:08:18', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('user11_1mwk', '用户11', null, 'SDJN03', '研发部', 'SDJN', '济南公司', '1', 'system', '2019-05-17 20:13:04', 'system', '2019-05-21 23:08:16', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('user12_ge1v', '用户12', null, 'SDJN03', '研发部', 'SDJN', '济南公司', '1', 'system', '2019-05-17 20:13:05', 'system', '2019-05-21 23:08:10', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('user13_ladn', '用户13', null, 'SDJN03', '研发部', 'SDJN', '济南公司', '1', 'system', '2019-05-17 20:13:05', 'system', '2019-05-21 23:08:08', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('user14_benz', '用户14', null, 'SDJN03', '研发部', 'SDJN', '济南公司', '1', 'system', '2019-05-17 20:13:06', 'system', '2019-05-21 23:08:13', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('user15_sofi', '用户15', null, 'SDQD01', '企管部', 'SDQD', '青岛公司', '1', 'system', '2019-05-17 20:13:06', 'system', '2019-05-21 23:08:06', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('user16_i2mp', '用户16', null, 'SDQD01', '企管部', 'SDQD', '青岛公司', '1', 'system', '2019-05-17 20:13:06', 'system', '2019-05-21 23:08:04', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('user17_kszw', '用户17', null, 'SDQD01', '企管部', 'SDQD', '青岛公司', '1', 'system', '2019-05-17 20:13:07', 'system', '2019-05-21 23:08:01', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('user18_xjat', '用户18', null, 'SDQD02', '财务部', 'SDQD', '青岛公司', '1', 'system', '2019-05-17 20:13:07', 'system', '2019-05-21 23:07:54', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('user19_eoot', '用户19', null, 'SDQD02', '财务部', 'SDQD', '青岛公司', '1', 'system', '2019-05-17 20:13:08', 'system', '2019-05-21 23:07:52', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('user1_bw8x', '用户01', null, 'SDJN01', '企管部', 'SDJN', '济南公司', '1', 'system', '2019-05-17 20:13:00', 'system', '2019-05-21 23:08:38', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('user20_dymy', '用户20', null, 'SDQD02', '财务部', 'SDQD', '青岛公司', '1', 'system', '2019-05-17 20:13:08', 'system', '2019-05-21 23:07:49', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('user21_nnbg', '用户21', null, 'SDQD03', '研发部', 'SDQD', '青岛公司', '1', 'system', '2019-05-17 20:13:08', 'system', '2019-05-21 23:07:47', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('user22_liqx', '用户22', null, 'SDQD03', '研发部', 'SDQD', '青岛公司', '1', 'system', '2019-05-17 20:13:09', 'system', '2019-05-21 23:07:46', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('user23_q58b', '用户23', null, 'SDQD03', '研发部', 'SDQD', '青岛公司', '1', 'system', '2019-05-17 20:13:09', 'system', '2019-05-21 23:07:39', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('user2_6yw4', '用户02', null, 'SDJN01', '企管部', 'SDJN', '济南公司', '1', 'system', '2019-05-17 20:13:01', 'system', '2019-05-21 23:07:17', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('user3_w4c0', '用户03', null, 'SDJN01', '企管部', 'SDJN', '济南公司', '1', 'system', '2019-05-17 20:13:01', 'system', '2019-05-21 23:08:36', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('user4_kgol', '用户04', null, 'SDJN02', '财务部', 'SDJN', '济南公司', '1', 'system', '2019-05-17 20:13:02', 'system', '2019-05-21 23:07:14', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('user5_xg4x', '用户05', null, 'SDJN02', '财务部', 'SDJN', '济南公司', '1', 'system', '2019-05-17 20:13:02', 'system', '2019-05-21 23:08:35', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('user6_cvbj', '用户06', null, 'SDJN02', '财务部', 'SDJN', '济南公司', '1', 'system', '2019-05-17 20:13:02', 'system', '2019-05-21 23:08:33', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('user7_tdda', '用户07', null, 'SDJN03', '研发部', 'SDJN', '济南公司', '1', 'system', '2019-05-17 20:13:03', 'system', '2019-05-21 23:08:31', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('user8_6co2', '用户08', null, 'SDJN03', '研发部', 'SDJN', '济南公司', '1', 'system', '2019-05-17 20:13:03', 'system', '2019-05-21 23:08:22', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('user9_oe56', '用户09', null, 'SDJN03', '研发部', 'SDJN', '济南公司', '1', 'system', '2019-05-17 20:13:04', 'system', '2019-05-21 23:08:20', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('zhouyu_pwxf', '周瑜', '', '123456', '三国英雄', '', '', '0', 'system', '2019-05-21 23:17:03', 'system', '2019-05-21 23:24:02', null, '0', 'JeeSite');
INSERT INTO `js_sys_employee` VALUES ('zhugeliang_3qws', '诸葛亮', '', '123456', '三国英雄', '', '', '0', 'system', '2019-05-21 23:16:46', 'system', '2019-05-21 23:24:49', null, '0', 'JeeSite');

-- ----------------------------
-- Table structure for js_sys_employee_post
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_employee_post`;
CREATE TABLE `js_sys_employee_post` (
  `emp_code` varchar(64) NOT NULL COMMENT '员工编码',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  PRIMARY KEY (`emp_code`,`post_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工与岗位关联表';

-- ----------------------------
-- Records of js_sys_employee_post
-- ----------------------------
INSERT INTO `js_sys_employee_post` VALUES ('user10_p6uj', 'user');
INSERT INTO `js_sys_employee_post` VALUES ('user11_1mwk', 'user');
INSERT INTO `js_sys_employee_post` VALUES ('user12_ge1v', 'user');
INSERT INTO `js_sys_employee_post` VALUES ('user13_ladn', 'user');
INSERT INTO `js_sys_employee_post` VALUES ('user14_benz', 'dept');
INSERT INTO `js_sys_employee_post` VALUES ('user15_sofi', 'dept');
INSERT INTO `js_sys_employee_post` VALUES ('user16_i2mp', 'user');
INSERT INTO `js_sys_employee_post` VALUES ('user17_kszw', 'user');
INSERT INTO `js_sys_employee_post` VALUES ('user18_xjat', 'dept');
INSERT INTO `js_sys_employee_post` VALUES ('user19_eoot', 'user');
INSERT INTO `js_sys_employee_post` VALUES ('user1_bw8x', 'dept');
INSERT INTO `js_sys_employee_post` VALUES ('user20_dymy', 'user');
INSERT INTO `js_sys_employee_post` VALUES ('user21_nnbg', 'dept');
INSERT INTO `js_sys_employee_post` VALUES ('user22_liqx', 'user');
INSERT INTO `js_sys_employee_post` VALUES ('user23_q58b', 'user');
INSERT INTO `js_sys_employee_post` VALUES ('user2_6yw4', 'user');
INSERT INTO `js_sys_employee_post` VALUES ('user3_w4c0', 'user');
INSERT INTO `js_sys_employee_post` VALUES ('user4_kgol', 'dept');
INSERT INTO `js_sys_employee_post` VALUES ('user5_xg4x', 'user');
INSERT INTO `js_sys_employee_post` VALUES ('user6_cvbj', 'user');
INSERT INTO `js_sys_employee_post` VALUES ('user7_tdda', 'dept');
INSERT INTO `js_sys_employee_post` VALUES ('user8_6co2', 'user');
INSERT INTO `js_sys_employee_post` VALUES ('user9_oe56', 'user');

-- ----------------------------
-- Table structure for js_sys_file_entity
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_file_entity`;
CREATE TABLE `js_sys_file_entity` (
  `file_id` varchar(64) NOT NULL COMMENT '文件编号',
  `file_md5` varchar(64) NOT NULL COMMENT '文件MD5',
  `file_path` varchar(1000) NOT NULL COMMENT '文件相对路径',
  `file_content_type` varchar(200) NOT NULL COMMENT '文件内容类型',
  `file_extension` varchar(100) NOT NULL COMMENT '文件后缀扩展名',
  `file_size` decimal(31,0) NOT NULL COMMENT '文件大小(单位B)',
  `file_meta` varchar(255) DEFAULT NULL COMMENT '文件信息(JSON格式)',
  PRIMARY KEY (`file_id`),
  KEY `idx_sys_file_entity_md5` (`file_md5`),
  KEY `idx_sys_file_entity_size` (`file_size`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文件实体表';

-- ----------------------------
-- Records of js_sys_file_entity
-- ----------------------------

-- ----------------------------
-- Table structure for js_sys_file_upload
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_file_upload`;
CREATE TABLE `js_sys_file_upload` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `file_id` varchar(64) NOT NULL COMMENT '文件编号',
  `file_name` varchar(500) NOT NULL COMMENT '文件名称',
  `file_type` varchar(20) NOT NULL COMMENT '文件分类（image、media、file）',
  `biz_key` varchar(64) DEFAULT NULL COMMENT '业务主键',
  `biz_type` varchar(64) DEFAULT NULL COMMENT '业务类型',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`),
  KEY `idx_sys_file_biz_ft` (`file_type`),
  KEY `idx_sys_file_biz_fi` (`file_id`),
  KEY `idx_sys_file_biz_status` (`status`),
  KEY `idx_sys_file_biz_cb` (`create_by`),
  KEY `idx_sys_file_biz_ud` (`update_date`),
  KEY `idx_sys_file_biz_bt` (`biz_type`),
  KEY `idx_sys_file_biz_bk` (`biz_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文件上传表';

-- ----------------------------
-- Records of js_sys_file_upload
-- ----------------------------

-- ----------------------------
-- Table structure for js_sys_job
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_job`;
CREATE TABLE `js_sys_job` (
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `description` varchar(100) NOT NULL COMMENT '任务描述',
  `invoke_target` varchar(1000) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) NOT NULL COMMENT 'Cron执行表达式',
  `misfire_instruction` decimal(1,0) NOT NULL COMMENT '计划执行错误策略',
  `concurrent` char(1) NOT NULL COMMENT '是否并发执行',
  `instance_name` varchar(64) NOT NULL DEFAULT 'JeeSiteScheduler' COMMENT '集群的实例名字',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1删除 2暂停）',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`job_name`,`job_group`),
  KEY `idx_sys_job_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='作业调度表';

-- ----------------------------
-- Records of js_sys_job
-- ----------------------------
INSERT INTO `js_sys_job` VALUES ('MsgLocalMergePushTask', 'SYSTEM', '消息推送服务 (延迟推送)', 'msgLocalMergePushTask.execute()', '0 0/30 * * * ?', '2', '0', 'JeeSiteScheduler', '2', 'system', '2019-05-17 20:13:09', 'system', '2019-05-17 20:13:09', null);
INSERT INTO `js_sys_job` VALUES ('MsgLocalPushTask', 'SYSTEM', '消息推送服务 (实时推送)', 'msgLocalPushTask.execute()', '0/3 * * * * ?', '2', '0', 'JeeSiteScheduler', '2', 'system', '2019-05-17 20:13:09', 'system', '2019-05-17 20:13:09', null);

-- ----------------------------
-- Table structure for js_sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_job_log`;
CREATE TABLE `js_sys_job_log` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `job_type` varchar(50) DEFAULT NULL COMMENT '日志类型',
  `job_event` varchar(200) DEFAULT NULL COMMENT '日志事件',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `is_exception` char(1) DEFAULT NULL COMMENT '是否异常',
  `exception_info` text COMMENT '异常信息',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_sys_job_log_jn` (`job_name`),
  KEY `idx_sys_job_log_jg` (`job_group`),
  KEY `idx_sys_job_log_t` (`job_type`),
  KEY `idx_sys_job_log_e` (`job_event`),
  KEY `idx_sys_job_log_ie` (`is_exception`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='作业调度日志表';

-- ----------------------------
-- Records of js_sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for js_sys_lang
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_lang`;
CREATE TABLE `js_sys_lang` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `module_code` varchar(64) NOT NULL COMMENT '归属模块',
  `lang_code` varchar(500) NOT NULL COMMENT '语言编码',
  `lang_text` varchar(500) NOT NULL COMMENT '语言译文',
  `lang_type` varchar(50) NOT NULL COMMENT '语言类型',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`),
  KEY `idx_sys_lang_code` (`lang_code`),
  KEY `idx_sys_lang_type` (`lang_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='国际化语言';

-- ----------------------------
-- Records of js_sys_lang
-- ----------------------------

-- ----------------------------
-- Table structure for js_sys_log
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_log`;
CREATE TABLE `js_sys_log` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `log_type` varchar(50) NOT NULL COMMENT '日志类型',
  `log_title` varchar(500) NOT NULL COMMENT '日志标题',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_by_name` varchar(100) NOT NULL COMMENT '用户名称',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `request_uri` varchar(500) DEFAULT NULL COMMENT '请求URI',
  `request_method` varchar(10) DEFAULT NULL COMMENT '操作方式',
  `request_params` longtext COMMENT '操作提交的数据',
  `diff_modify_data` text COMMENT '新旧数据比较结果',
  `biz_key` varchar(64) DEFAULT NULL COMMENT '业务主键',
  `biz_type` varchar(64) DEFAULT NULL COMMENT '业务类型',
  `remote_addr` varchar(255) NOT NULL COMMENT '操作IP地址',
  `server_addr` varchar(255) NOT NULL COMMENT '请求服务器地址',
  `is_exception` char(1) DEFAULT NULL COMMENT '是否异常',
  `exception_info` text COMMENT '异常信息',
  `user_agent` varchar(500) DEFAULT NULL COMMENT '用户代理',
  `device_name` varchar(100) DEFAULT NULL COMMENT '设备名称/操作系统',
  `browser_name` varchar(100) DEFAULT NULL COMMENT '浏览器名称',
  `execute_time` decimal(19,0) DEFAULT NULL COMMENT '执行时间',
  `corp_code` varchar(64) NOT NULL DEFAULT '0' COMMENT '租户代码',
  `corp_name` varchar(100) NOT NULL DEFAULT 'JeeSite' COMMENT '租户名称',
  PRIMARY KEY (`id`),
  KEY `idx_sys_log_cb` (`create_by`),
  KEY `idx_sys_log_cc` (`corp_code`),
  KEY `idx_sys_log_lt` (`log_type`),
  KEY `idx_sys_log_bk` (`biz_key`),
  KEY `idx_sys_log_bt` (`biz_type`),
  KEY `idx_sys_log_ie` (`is_exception`),
  KEY `idx_sys_log_cd` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='操作日志表';

-- ----------------------------
-- Records of js_sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for js_sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_menu`;
CREATE TABLE `js_sys_menu` (
  `menu_code` varchar(64) NOT NULL COMMENT '菜单编码',
  `parent_code` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_codes` varchar(1000) NOT NULL COMMENT '所有父级编号',
  `tree_sort` decimal(10,0) NOT NULL COMMENT '本级排序号（升序）',
  `tree_sorts` varchar(1000) NOT NULL COMMENT '所有级别排序号',
  `tree_leaf` char(1) NOT NULL COMMENT '是否最末级',
  `tree_level` decimal(4,0) NOT NULL COMMENT '层次级别',
  `tree_names` varchar(1000) NOT NULL COMMENT '全节点名',
  `menu_name` varchar(100) NOT NULL COMMENT '菜单名称',
  `menu_type` char(1) NOT NULL COMMENT '菜单类型（1菜单 2权限 3开发）',
  `menu_href` varchar(1000) DEFAULT NULL COMMENT '链接',
  `menu_target` varchar(20) DEFAULT NULL COMMENT '目标',
  `menu_icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `menu_color` varchar(50) DEFAULT NULL COMMENT '颜色',
  `permission` varchar(1000) DEFAULT NULL COMMENT '权限标识',
  `weight` decimal(4,0) DEFAULT NULL COMMENT '菜单权重',
  `is_show` char(1) NOT NULL COMMENT '是否显示（1显示 0隐藏）',
  `sys_code` varchar(64) NOT NULL COMMENT '归属系统（default:主导航菜单、mobileApp:APP菜单）',
  `module_codes` varchar(500) NOT NULL COMMENT '归属模块（多个用逗号隔开）',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注信息',
  `extend_s1` varchar(500) DEFAULT NULL COMMENT '扩展 String 1',
  `extend_s2` varchar(500) DEFAULT NULL COMMENT '扩展 String 2',
  `extend_s3` varchar(500) DEFAULT NULL COMMENT '扩展 String 3',
  `extend_s4` varchar(500) DEFAULT NULL COMMENT '扩展 String 4',
  `extend_s5` varchar(500) DEFAULT NULL COMMENT '扩展 String 5',
  `extend_s6` varchar(500) DEFAULT NULL COMMENT '扩展 String 6',
  `extend_s7` varchar(500) DEFAULT NULL COMMENT '扩展 String 7',
  `extend_s8` varchar(500) DEFAULT NULL COMMENT '扩展 String 8',
  `extend_i1` decimal(19,0) DEFAULT NULL COMMENT '扩展 Integer 1',
  `extend_i2` decimal(19,0) DEFAULT NULL COMMENT '扩展 Integer 2',
  `extend_i3` decimal(19,0) DEFAULT NULL COMMENT '扩展 Integer 3',
  `extend_i4` decimal(19,0) DEFAULT NULL COMMENT '扩展 Integer 4',
  `extend_f1` decimal(19,4) DEFAULT NULL COMMENT '扩展 Float 1',
  `extend_f2` decimal(19,4) DEFAULT NULL COMMENT '扩展 Float 2',
  `extend_f3` decimal(19,4) DEFAULT NULL COMMENT '扩展 Float 3',
  `extend_f4` decimal(19,4) DEFAULT NULL COMMENT '扩展 Float 4',
  `extend_d1` datetime DEFAULT NULL COMMENT '扩展 Date 1',
  `extend_d2` datetime DEFAULT NULL COMMENT '扩展 Date 2',
  `extend_d3` datetime DEFAULT NULL COMMENT '扩展 Date 3',
  `extend_d4` datetime DEFAULT NULL COMMENT '扩展 Date 4',
  PRIMARY KEY (`menu_code`),
  KEY `idx_sys_menu_pc` (`parent_code`),
  KEY `idx_sys_menu_ts` (`tree_sort`),
  KEY `idx_sys_menu_status` (`status`),
  KEY `idx_sys_menu_mt` (`menu_type`),
  KEY `idx_sys_menu_pss` (`parent_codes`),
  KEY `idx_sys_menu_tss` (`tree_sorts`),
  KEY `idx_sys_menu_sc` (`sys_code`),
  KEY `idx_sys_menu_is` (`is_show`),
  KEY `idx_sys_menu_mcs` (`module_codes`),
  KEY `idx_sys_menu_wt` (`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of js_sys_menu
-- ----------------------------
INSERT INTO `js_sys_menu` VALUES ('1129359030915887104', '0', '0,', '9000', '0000009000,', '0', '0', '系统管理', '系统管理', '1', '', '', 'icon-settings', '', '', '40', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:30', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359038004260864', '1129359030915887104', '0,1129359030915887104,', '300', '0000009000,0000000300,', '0', '1', '系统管理/组织管理', '组织管理', '1', '', '', 'icon-grid', '', '', '40', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:32', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359039480655872', '1129359038004260864', '0,1129359030915887104,1129359038004260864,', '40', '0000009000,0000000300,0000000040,', '0', '2', '系统管理/组织管理/用户管理', '用户管理', '1', '/sys/empUser/index', '', 'icon-user', '', '', '40', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:32', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359040764112896', '1129359039480655872', '0,1129359030915887104,1129359038004260864,1129359039480655872,', '30', '0000009000,0000000300,0000000040,0000000030,', '1', '3', '系统管理/组织管理/用户管理/查看', '查看', '2', '', '', '', '', 'sys:empUser:view', '40', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:33', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359042102095872', '1129359039480655872', '0,1129359030915887104,1129359038004260864,1129359039480655872,', '40', '0000009000,0000000300,0000000040,0000000040,', '1', '3', '系统管理/组织管理/用户管理/编辑', '编辑', '2', '', '', '', '', 'sys:empUser:edit', '40', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:33', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359043427495936', '1129359039480655872', '0,1129359030915887104,1129359038004260864,1129359039480655872,', '60', '0000009000,0000000300,0000000040,0000000060,', '1', '3', '系统管理/组织管理/用户管理/分配角色', '分配角色', '2', '', '', '', '', 'sys:empUser:authRole', '40', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:33', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359044966805504', '1129359039480655872', '0,1129359030915887104,1129359038004260864,1129359039480655872,', '50', '0000009000,0000000300,0000000040,0000000050,', '1', '3', '系统管理/组织管理/用户管理/分配数据', '分配数据', '2', '', '', '', '', 'sys:empUser:authDataScope', '40', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:34', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359046724218880', '1129359039480655872', '0,1129359030915887104,1129359038004260864,1129359039480655872,', '60', '0000009000,0000000300,0000000040,0000000060,', '1', '3', '系统管理/组织管理/用户管理/停用启用', '停用启用', '2', '', '', '', '', 'sys:empUser:updateStatus', '40', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:34', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359047999287296', '1129359039480655872', '0,1129359030915887104,1129359038004260864,1129359039480655872,', '70', '0000009000,0000000300,0000000040,0000000070,', '1', '3', '系统管理/组织管理/用户管理/重置密码', '重置密码', '2', '', '', '', '', 'sys:empUser:resetpwd', '40', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:34', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359049471488000', '1129359038004260864', '0,1129359030915887104,1129359038004260864,', '50', '0000009000,0000000300,0000000050,', '0', '2', '系统管理/组织管理/机构管理', '机构管理', '1', '/sys/office/list', '', 'icon-grid', '', '', '60', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:35', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359050754945024', '1129359049471488000', '0,1129359030915887104,1129359038004260864,1129359049471488000,', '30', '0000009000,0000000300,0000000050,0000000030,', '1', '3', '系统管理/组织管理/机构管理/查看', '查看', '2', '', '', '', '', 'sys:office:view', '60', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:35', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359052059373568', '1129359049471488000', '0,1129359030915887104,1129359038004260864,1129359049471488000,', '40', '0000009000,0000000300,0000000050,0000000040,', '1', '3', '系统管理/组织管理/机构管理/编辑', '编辑', '2', '', '', '', '', 'sys:office:edit', '60', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:35', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359053456076800', '1129359038004260864', '0,1129359030915887104,1129359038004260864,', '70', '0000009000,0000000300,0000000070,', '0', '2', '系统管理/组织管理/公司管理', '公司管理', '1', '/sys/company/list', '', 'icon-fire', '', '', '60', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:36', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359054924083200', '1129359053456076800', '0,1129359030915887104,1129359038004260864,1129359053456076800,', '30', '0000009000,0000000300,0000000070,0000000030,', '1', '3', '系统管理/组织管理/公司管理/查看', '查看', '2', '', '', '', '', 'sys:company:view', '60', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:36', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359056283037696', '1129359053456076800', '0,1129359030915887104,1129359038004260864,1129359053456076800,', '40', '0000009000,0000000300,0000000070,0000000040,', '1', '3', '系统管理/组织管理/公司管理/编辑', '编辑', '2', '', '', '', '', 'sys:company:edit', '60', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:36', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359057692323840', '1129359038004260864', '0,1129359030915887104,1129359038004260864,', '70', '0000009000,0000000300,0000000070,', '0', '2', '系统管理/组织管理/岗位管理', '岗位管理', '1', '/sys/post/list', '', 'icon-trophy', '', '', '60', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:37', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359059026112512', '1129359057692323840', '0,1129359030915887104,1129359038004260864,1129359057692323840,', '30', '0000009000,0000000300,0000000070,0000000030,', '1', '3', '系统管理/组织管理/岗位管理/查看', '查看', '2', '', '', '', '', 'sys:post:view', '60', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:37', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359060645113856', '1129359057692323840', '0,1129359030915887104,1129359038004260864,1129359057692323840,', '40', '0000009000,0000000300,0000000070,0000000040,', '1', '3', '系统管理/组织管理/岗位管理/编辑', '编辑', '2', '', '', '', '', 'sys:post:edit', '60', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:37', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359062004068352', '1129359030915887104', '0,1129359030915887104,', '400', '0000009000,0000000400,', '0', '1', '系统管理/权限管理', '权限管理', '1', '', '', 'icon-social-dropbox', '', '', '60', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:38', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359063274942464', '1129359062004068352', '0,1129359030915887104,1129359062004068352,', '30', '0000009000,0000000400,0000000030,', '1', '2', '系统管理/权限管理/角色管理', '角色管理', '1', '/sys/role/list', '', 'icon-people', '', 'sys:role', '60', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:38', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359064575176704', '1129359062004068352', '0,1129359030915887104,1129359062004068352,', '40', '0000009000,0000000400,0000000040,', '1', '2', '系统管理/权限管理/二级管理员', '二级管理员', '1', '/sys/secAdmin/list', '', 'icon-user-female', '', 'sys:secAdmin', '60', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:38', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359065971879936', '1129359062004068352', '0,1129359030915887104,1129359062004068352,', '50', '0000009000,0000000400,0000000050,', '1', '2', '系统管理/权限管理/系统管理员', '系统管理员', '1', '/sys/corpAdmin/list', '', 'icon-badge', '', 'sys:corpAdmin', '80', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:39', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359067255336960', '1129359030915887104', '0,1129359030915887104,', '500', '0000009000,0000000500,', '0', '1', '系统管理/系统设置', '系统设置', '1', '', '', 'icon-settings', '', '', '60', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:39', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359068467490816', '1129359067255336960', '0,1129359030915887104,1129359067255336960,', '30', '0000009000,0000000500,0000000030,', '1', '2', '系统管理/系统设置/菜单管理', '菜单管理', '1', '/sys/menu/list', '', 'icon-book-open', '', 'sys:menu', '80', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:39', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359069784502272', '1129359067255336960', '0,1129359030915887104,1129359067255336960,', '40', '0000009000,0000000500,0000000040,', '1', '2', '系统管理/系统设置/模块管理', '模块管理', '1', '/sys/module/list', '', 'icon-grid', '', 'sys:module', '80', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:39', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359071256702976', '1129359067255336960', '0,1129359030915887104,1129359067255336960,', '50', '0000009000,0000000500,0000000050,', '1', '2', '系统管理/系统设置/参数设置', '参数设置', '1', '/sys/config/list', '', 'icon-wrench', '', 'sys:config', '60', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:40', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359072888287232', '1129359067255336960', '0,1129359030915887104,1129359067255336960,', '60', '0000009000,0000000500,0000000060,', '0', '2', '系统管理/系统设置/字典管理', '字典管理', '1', '/sys/dictType/list', '', 'icon-social-dropbox', '', '', '60', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:40', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359074192715776', '1129359072888287232', '0,1129359030915887104,1129359067255336960,1129359072888287232,', '30', '0000009000,0000000500,0000000060,0000000030,', '1', '3', '系统管理/系统设置/字典管理/类型查看', '类型查看', '2', '', '', '', '', 'sys:dictType:view', '60', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:41', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359075853660160', '1129359072888287232', '0,1129359030915887104,1129359067255336960,1129359072888287232,', '40', '0000009000,0000000500,0000000060,0000000040,', '1', '3', '系统管理/系统设置/字典管理/类型编辑', '类型编辑', '2', '', '', '', '', 'sys:dictType:edit', '80', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:41', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359077086785536', '1129359072888287232', '0,1129359030915887104,1129359067255336960,1129359072888287232,', '50', '0000009000,0000000500,0000000060,0000000050,', '1', '3', '系统管理/系统设置/字典管理/数据查看', '数据查看', '2', '', '', '', '', 'sys:dictData:view', '60', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:41', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359078420574208', '1129359072888287232', '0,1129359030915887104,1129359067255336960,1129359072888287232,', '60', '0000009000,0000000500,0000000060,0000000060,', '1', '3', '系统管理/系统设置/字典管理/数据编辑', '数据编辑', '2', '', '', '', '', 'sys:dictData:edit', '60', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:42', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359079704031232', '1129359067255336960', '0,1129359030915887104,1129359067255336960,', '70', '0000009000,0000000500,0000000070,', '1', '2', '系统管理/系统设置/行政区划', '行政区划', '1', '/sys/area/list', '', 'icon-map', '', 'sys:area', '60', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:42', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359080937156608', '1129359067255336960', '0,1129359030915887104,1129359067255336960,', '80', '0000009000,0000000500,0000000080,', '1', '2', '系统管理/系统设置/国际化管理', '国际化管理', '1', '/sys/lang/list', '', 'icon-globe', '', 'sys:lang', '80', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:42', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359082438717440', '1129359067255336960', '0,1129359030915887104,1129359067255336960,', '90', '0000009000,0000000500,0000000090,', '1', '2', '系统管理/系统设置/产品许可信息', '产品许可信息', '1', '//licence', '', 'icon-paper-plane', '', '', '80', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:42', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359083722174464', '1129359030915887104', '0,1129359030915887104,', '600', '0000009000,0000000600,', '0', '1', '系统管理/系统监控', '系统监控', '1', '', '', 'icon-ghost', '', '', '60', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:43', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359084976271360', '1129359083722174464', '0,1129359030915887104,1129359083722174464,', '40', '0000009000,0000000600,0000000040,', '1', '2', '系统管理/系统监控/访问日志', '访问日志', '1', '/sys/log/list', '', 'fa fa-bug', '', 'sys:log', '60', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:43', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359086284894208', '1129359083722174464', '0,1129359030915887104,1129359083722174464,', '50', '0000009000,0000000600,0000000050,', '1', '2', '系统管理/系统监控/数据监控', '数据监控', '1', '//druid', '', 'icon-disc', '', 'sys:state:druid', '80', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:43', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359087543185408', '1129359083722174464', '0,1129359030915887104,1129359083722174464,', '60', '0000009000,0000000600,0000000060,', '1', '2', '系统管理/系统监控/缓存监控', '缓存监控', '1', '/state/cache/index', '', 'icon-social-dribbble', '', 'sys:stste:cache', '80', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:44', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359088872779776', '1129359083722174464', '0,1129359030915887104,1129359083722174464,', '70', '0000009000,0000000600,0000000070,', '1', '2', '系统管理/系统监控/服务器监控', '服务器监控', '1', '/state/server/index', '', 'icon-speedometer', '', 'sys:state:server', '80', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:44', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359090223345664', '1129359083722174464', '0,1129359030915887104,1129359083722174464,', '80', '0000009000,0000000600,0000000080,', '1', '2', '系统管理/系统监控/作业监控', '作业监控', '1', '/job/list', '', 'icon-notebook', '', 'sys:job', '80', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:44', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359091666186240', '1129359083722174464', '0,1129359030915887104,1129359083722174464,', '90', '0000009000,0000000600,0000000090,', '1', '2', '系统管理/系统监控/在线用户', '在线用户', '1', '/sys/online/list', '', 'icon-social-twitter', '', 'sys:online', '60', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:45', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359092962226176', '1129359083722174464', '0,1129359030915887104,1129359083722174464,', '100', '0000009000,0000000600,0000000100,', '1', '2', '系统管理/系统监控/在线文档', '在线文档', '1', '//swagger-ui.html', '', 'icon-book-open', '', 'sys:swagger', '80', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:45', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359094363123712', '1129359030915887104', '0,1129359030915887104,', '700', '0000009000,0000000700,', '0', '1', '系统管理/消息推送', '消息推送', '1', '', '', 'icon-envelope-letter', '', '', '60', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:45', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359095663357952', '1129359094363123712', '0,1129359030915887104,1129359094363123712,', '30', '0000009000,0000000700,0000000030,', '1', '2', '系统管理/消息推送/未完成消息', '未完成消息', '1', '/msg/msgPush/list', '', '', '', 'msg:msgPush', '60', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:46', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359096925843456', '1129359094363123712', '0,1129359030915887104,1129359094363123712,', '40', '0000009000,0000000700,0000000040,', '1', '2', '系统管理/消息推送/已完成消息', '已完成消息', '1', '/msg/msgPush/list?pushed=true', '', '', '', 'msg:msgPush', '60', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:46', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359098150580224', '1129359094363123712', '0,1129359030915887104,1129359094363123712,', '50', '0000009000,0000000700,0000000050,', '1', '2', '系统管理/消息推送/消息模板管理', '消息模板管理', '1', '/msg/msgTemplate/list', '', '', '', 'msg:msgTemplate', '60', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:46', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359099371122688', '1129359030915887104', '0,1129359030915887104,', '900', '0000009000,0000000900,', '0', '1', '系统管理/研发工具', '研发工具', '1', '', '', 'fa fa-code', '', '', '80', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:47', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359100658774016', '1129359099371122688', '0,1129359030915887104,1129359099371122688,', '30', '0000009000,0000000900,0000000030,', '1', '2', '系统管理/研发工具/代码生成工具', '代码生成工具', '1', '/gen/genTable/list', '', 'fa fa-code', '', 'gen:genTable', '80', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:47', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359102009339904', '1129359099371122688', '0,1129359030915887104,1129359099371122688,', '100', '0000009000,0000000900,0000000100,', '0', '2', '系统管理/研发工具/代码生成实例', '代码生成实例', '1', '', '', 'icon-social-dropbox', '', '', '80', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:47', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359103288602624', '1129359102009339904', '0,1129359030915887104,1129359099371122688,1129359102009339904,', '30', '0000009000,0000000900,0000000100,0000000030,', '1', '3', '系统管理/研发工具/代码生成实例/单表_主子表', '单表/主子表', '1', '/test/testData/list', '', '', '', 'test:testData', '80', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:47', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359104517533696', '1129359102009339904', '0,1129359030915887104,1129359099371122688,1129359102009339904,', '40', '0000009000,0000000900,0000000100,0000000040,', '1', '3', '系统管理/研发工具/代码生成实例/树表_树结构表', '树表/树结构表', '1', '/test/testTree/list', '', '', '', 'test:testTree', '80', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:48', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359105910042624', '1129359099371122688', '0,1129359030915887104,1129359099371122688,', '200', '0000009000,0000000900,0000000200,', '0', '2', '系统管理/研发工具/数据表格实例', '数据表格实例', '1', '', '', '', '', '', '80', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:48', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359107164139520', '1129359105910042624', '0,1129359030915887104,1129359099371122688,1129359105910042624,', '30', '0000009000,0000000900,0000000200,0000000030,', '1', '3', '系统管理/研发工具/数据表格实例/多表头分组小计合计', '多表头分组小计合计', '1', '/demo/dataGrid/groupGrid', '', '', '', '', '80', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:48', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359108363710464', '1129359105910042624', '0,1129359030915887104,1129359099371122688,1129359105910042624,', '40', '0000009000,0000000900,0000000200,0000000040,', '1', '3', '系统管理/研发工具/数据表格实例/编辑表格多行编辑', '编辑表格多行编辑', '1', '/demo/dataGrid/editGrid', '', '', '', '', '80', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:49', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359109731053568', '1129359099371122688', '0,1129359030915887104,1129359099371122688,', '300', '0000009000,0000000900,0000000300,', '0', '2', '系统管理/研发工具/表单组件实例', '表单组件实例', '1', '', '', '', '', '', '80', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:49', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359111018704896', '1129359109731053568', '0,1129359030915887104,1129359099371122688,1129359109731053568,', '30', '0000009000,0000000900,0000000300,0000000030,', '1', '3', '系统管理/研发工具/表单组件实例/组件应用实例', '组件应用实例', '1', '/demo/form/editForm', '', '', '', '', '80', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:49', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359112331522048', '1129359109731053568', '0,1129359030915887104,1129359099371122688,1129359109731053568,', '40', '0000009000,0000000900,0000000300,0000000040,', '1', '3', '系统管理/研发工具/表单组件实例/栅格布局实例', '栅格布局实例', '1', '/demo/form/layoutForm', '', '', '', '', '80', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:50', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359113753391104', '1129359109731053568', '0,1129359030915887104,1129359099371122688,1129359109731053568,', '50', '0000009000,0000000900,0000000300,0000000050,', '1', '3', '系统管理/研发工具/表单组件实例/表格表单实例', '表格表单实例', '1', '/demo/form/tableForm', '', '', '', '', '80', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:50', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359115020070912', '1129359099371122688', '0,1129359030915887104,1129359099371122688,', '400', '0000009000,0000000900,0000000400,', '0', '2', '系统管理/研发工具/前端界面实例', '前端界面实例', '1', '', '', '', '', '', '80', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:50', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359116446134272', '1129359115020070912', '0,1129359030915887104,1129359099371122688,1129359115020070912,', '30', '0000009000,0000000900,0000000400,0000000030,', '1', '3', '系统管理/研发工具/前端界面实例/图标样式查找', '图标样式查找', '1', '//tags/iconselect', '', '', '', '', '80', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:51', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359117805088768', '1129359030915887104', '0,1129359030915887104,', '999', '0000009000,0000000999,', '0', '1', '系统管理/JeeSite社区', 'JeeSite社区', '1', '', '', 'fa fa-code', '', '', '80', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:51', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359119151460352', '1129359117805088768', '0,1129359030915887104,1129359117805088768,', '30', '0000009000,0000000999,0000000030,', '1', '2', '系统管理/JeeSite社区/官方网站', '官方网站', '1', 'http://jeesite.com', '_blank', '', '', '', '80', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:51', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359120451694592', '1129359117805088768', '0,1129359030915887104,1129359117805088768,', '50', '0000009000,0000000999,0000000050,', '1', '2', '系统管理/JeeSite社区/作者博客', '作者博客', '1', 'https://my.oschina.net/thinkgem', '_blank', '', '', '', '80', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:52', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359121705791488', '1129359117805088768', '0,1129359030915887104,1129359117805088768,', '40', '0000009000,0000000999,0000000040,', '1', '2', '系统管理/JeeSite社区/问题反馈', '问题反馈', '1', 'https://gitee.com/thinkgem/jeesite4/issues', '_blank', '', '', '', '80', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:52', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359122943111168', '1129359117805088768', '0,1129359030915887104,1129359117805088768,', '60', '0000009000,0000000999,0000000060,', '1', '2', '系统管理/JeeSite社区/开源社区', '开源社区', '1', 'http://jeesite.net', '_blank', '', '', '', '80', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:52', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359124398534656', '0', '0,', '9060', '0000009060,', '0', '0', '我的工作', '我的工作', '1', '', '', 'icon-settings', '', '', '40', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:52', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359125396779008', '1129359124398534656', '0,1129359124398534656,', '300', '0000009060,0000000300,', '0', '1', '我的工作/站内消息', '站内消息', '1', '/msg/msgInner/list', '', 'icon-speech', '', '', '40', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:53', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359126856396800', '1129359125396779008', '0,1129359124398534656,1129359125396779008,', '30', '0000009060,0000000300,0000000030,', '1', '2', '我的工作/站内消息/查看', '查看', '2', '', '', '', '', 'msg:msgInner:view', '40', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:53', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359128148242432', '1129359125396779008', '0,1129359124398534656,1129359125396779008,', '40', '0000009060,0000000300,0000000040,', '1', '2', '我的工作/站内消息/编辑', '编辑', '2', '', '', '', '', 'msg:msgInner:edit', '40', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:53', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129359129410727936', '1129359125396779008', '0,1129359124398534656,1129359125396779008,', '50', '0000009060,0000000300,0000000050,', '1', '2', '我的工作/站内消息/审核', '审核', '2', '', '', '', '', 'msg:msgInner:auth', '40', '1', 'default', 'core', '0', 'system', '2019-05-17 20:12:54', 'system', '2019-06-20 17:47:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129363942371540992', '1129359124398534656', '0,1129359124398534656,', '330', '0000009060,0000000330,', '1', '1', '我的工作/NB User', 'NB User', '1', '/nb/nbTestUser', '', 'icon-user', '', 'nb:nbTestUser:view,nb:nbTestUser:edit', '40', '1', 'default', 'core', '1', 'system', '2019-05-17 20:32:01', 'system', '2019-05-17 20:47:39', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129388175132213248', '1129359124398534656', '0,1129359124398534656,', '330', '0000009060,0000000330,', '1', '1', '我的工作/Nb User', 'Nb User', '1', '/nb/nbTestUser', '', 'icon-user', '', 'nb:nbTestUser:view,nb:nbTestUser:edit', '40', '1', 'default', 'core', '1', 'system', '2019-05-17 22:08:19', 'system', '2019-05-18 15:40:59', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129648436583477248', '0', '0,', '9090', '0000009090,', '0', '0', 'Nb System', 'Nb System', '1', '', '', 'icon-like', '', '', '40', '1', 'default', 'core', '0', 'system', '2019-05-18 15:22:30', 'system', '2019-06-20 17:47:57', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129649397859233792', '1129648436583477248', '0,1129648436583477248,', '30', '0000009090,0000000030,', '1', '1', 'Nb System/商户管理', '商户管理', '1', '/nb/nbBusiness', '', 'icon-people', '', 'nb:nbBusiness:view,nb:nbBusiness:edit', '40', '1', 'default', 'core', '0', 'system', '2019-05-18 15:26:19', 'system', '2019-06-20 17:47:57', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129649848616890368', '1129648436583477248', '0,1129648436583477248,', '60', '0000009090,0000000060,', '1', '1', 'Nb System/收款账号管理', '收款账号管理', '1', '/nb/nbAliAccountPool', '', 'icon-layers', '', 'nb:nbAliAccountPool:view,nb:nbAliAccountPool:edit', '40', '1', 'default', 'core', '0', 'system', '2019-05-18 15:28:06', 'system', '2019-06-20 17:47:57', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129650234073427968', '1129648436583477248', '0,1129648436583477248,', '90', '0000009090,0000000090,', '1', '1', 'Nb System/订单管理', '订单管理', '1', '/nb/nbOrder', '', 'icon-doc', '', 'nb:nbOrder:view,nb:nbOrder:edit', '40', '1', 'default', 'core', '0', 'system', '2019-05-18 15:29:38', 'system', '2019-06-20 17:47:57', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129770683528941568', '1129648436583477248', '0,1129648436583477248,', '120', '0000009090,0000000120,', '1', '1', 'Nb System/回调监控App下载', '回调监控App下载', '1', '/down/app', '', 'icon-ghost', '', '', '40', '1', 'default', 'core', '0', 'system', '2019-05-18 23:28:16', 'system', '2019-06-20 17:47:57', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1129969394043895808', '1129648436583477248', '0,1129648436583477248,', '150', '0000009090,0000000150,', '1', '1', 'Nb System/测试', '测试', '1', '/demo', '', 'icon-event', '', '', '40', '1', 'default', 'core', '0', 'system', '2019-05-19 12:37:52', 'system', '2019-06-20 17:47:57', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1130035732160622592', '0', '0,', '9120', '0000009120,', '0', '0', '使用帮助', '使用帮助', '1', '', '', 'icon-question', '', '', '40', '1', 'default', 'core', '0', 'system', '2019-05-19 17:01:28', 'system', '2019-06-20 17:47:57', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1130045410527772672', '1129648436583477248', '0,1129648436583477248,', '180', '0000009090,0000000180,', '1', '1', 'Nb System/核按钮', '核按钮', '1', '/nuclear', '', 'icon-user-unfollow', '', 'nb:nuclear:view,nb:nuclear:edit', '40', '1', 'default', 'core', '0', 'system', '2019-05-19 17:39:56', 'system', '2019-06-20 17:47:57', '以防万一  删库删表', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1130115810189778944', '1130035732160622592', '0,1130035732160622592,', '30', '0000009120,0000000030,', '1', '1', '使用帮助/系统简介', '系统简介', '1', '/help/info', '', 'icon-compass', '', '', '40', '1', 'default', 'core', '0', 'system', '2019-05-19 22:19:40', 'system', '2019-06-20 17:47:57', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1130115987608838144', '1130035732160622592', '0,1130035732160622592,', '60', '0000009120,0000000060,', '1', '1', '使用帮助/使用流程', '使用流程', '1', '/help/flow', '', 'icon-options-vertical', '', '', '40', '1', 'default', 'core', '0', 'system', '2019-05-19 22:20:23', 'system', '2019-06-20 17:47:57', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1130116148674306048', '1130035732160622592', '0,1130035732160622592,', '90', '0000009120,0000000090,', '1', '1', '使用帮助/后台帮助', '后台帮助', '1', '/help/back', '', 'icon-cursor-move', '', '', '40', '1', 'default', 'core', '0', 'system', '2019-05-19 22:21:01', 'system', '2019-06-20 17:47:57', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1130116366807474176', '1130035732160622592', '0,1130035732160622592,', '120', '0000009120,0000000120,', '1', '1', '使用帮助/监控教程', '监控教程', '1', '/help/app', '', 'icon-eye', '', '', '40', '1', 'default', 'core', '0', 'system', '2019-05-19 22:21:53', 'system', '2019-06-20 17:47:57', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1130116555752480768', '1130035732160622592', '0,1130035732160622592,', '150', '0000009120,0000000150,', '1', '1', '使用帮助/接入接口', '接入接口', '1', '/help/api', '', 'icon-feed', '', '', '40', '1', 'default', 'core', '0', 'system', '2019-05-19 22:22:38', 'system', '2019-06-20 17:47:57', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1131201123226243072', '1130035732160622592', '0,1130035732160622592,', '180', '0000009120,0000000180,', '1', '1', '使用帮助/服务条款', '服务条款', '1', '/help/licence', '', 'icon-exclamation', '', '', '40', '1', 'default', 'core', '0', 'system', '2019-05-22 22:12:19', 'system', '2019-06-20 17:47:57', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1131202518893481984', '1129648436583477248', '0,1129648436583477248,', '20', '0000009090,0000000020,', '1', '1', 'Nb System/订单统计数据', '订单统计数据', '1', '/nb/nbOrder/count', '', '', '', 'nb:nbOrder:view', '40', '1', 'default', 'core', '0', 'system', '2019-05-22 22:17:52', 'system', '2019-06-20 17:47:57', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1132122936958476288', '1132998297631047680', '0,1132998297631047680,', '30', '0000009150,0000000030,', '1', '1', '商户/订单总计', '订单总计', '1', '/nb/nbOrder/third', '', 'icon-book-open', '', 'nb:nbOrder:view', '40', '1', 'default', 'core', '0', 'system', '2019-05-25 11:15:17', 'system', '2019-06-20 17:47:57', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1132996423032688640', '1132998297631047680', '0,1132998297631047680,', '60', '0000009150,0000000060,', '1', '1', '商户/银行卡', '银行卡', '1', '/nb/nbCard/list', '', 'icon-wallet', '', 'nb:nbCard:view,nb:nbCard:edit', '40', '1', 'default', 'core', '0', 'system', '2019-05-27 21:06:12', 'system', '2019-06-20 17:47:57', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1132996562434576384', '1132998297631047680', '0,1132998297631047680,', '90', '0000009150,0000000090,', '1', '1', '商户/提现', '提现', '1', '/nb/nbCash/list', '', 'icon-menu', '', 'nb:nbCash:view,nb:nbCash:edit', '40', '1', 'default', 'core', '0', 'system', '2019-05-27 21:06:45', 'system', '2019-06-20 17:47:57', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1132998297631047680', '0', '0,', '9150', '0000009150,', '0', '0', '商户', '商户', '1', '', '', 'icon-basket', '', '', '40', '1', 'default', 'core', '0', 'system', '2019-05-27 21:13:39', 'system', '2019-06-20 17:47:57', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1132998882568683520', '1132998297631047680', '0,1132998297631047680,', '120', '0000009150,0000000120,', '1', '1', '商户/测试演示', '测试演示', '1', '/demo', '', 'icon-event', '', '', '40', '1', 'default', 'core', '0', 'system', '2019-05-27 21:15:58', 'system', '2019-06-20 17:47:57', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1132999105030373376', '1132998297631047680', '0,1132998297631047680,', '150', '0000009150,0000000150,', '1', '1', '商户/对接说明', '对接说明', '1', '/demo/third', '', 'icon-direction', '', 'nb:nbBusiness:edit', '40', '1', 'default', 'core', '0', 'system', '2019-05-27 21:16:51', 'system', '2019-06-20 17:47:57', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1134446065697914880', '1132998297631047680', '0,1132998297631047680,', '180', '0000009150,0000000180,', '1', '1', '商户/订单详情', '订单详情', '1', '/nb/nbOrder/listThir', '', 'icon-notebook', '', 'nb:nbOrder:view', '40', '1', 'default', 'core', '0', 'system', '2019-05-31 21:06:34', 'system', '2019-06-20 17:47:57', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_menu` VALUES ('1134672497522225152', '1129648436583477248', '0,1129648436583477248,', '210', '0000009090,0000000210,', '1', '1', 'Nb System/商户提现记录', '商户提现记录', '1', '/nb/nbCash/listBack', '', 'icon-list', '', 'nb:nbCash:view,nb:nbCash:edit,nb:sysCash:edit', '40', '1', 'default', 'core', '0', 'system', '2019-06-01 12:06:19', 'system', '2019-06-20 17:47:57', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for js_sys_module
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_module`;
CREATE TABLE `js_sys_module` (
  `module_code` varchar(64) NOT NULL COMMENT '模块编码',
  `module_name` varchar(100) NOT NULL COMMENT '模块名称',
  `description` varchar(500) DEFAULT NULL COMMENT '模块描述',
  `main_class_name` varchar(500) DEFAULT NULL COMMENT '主类全名',
  `current_version` varchar(50) DEFAULT NULL COMMENT '当前版本',
  `upgrade_info` varchar(300) DEFAULT NULL COMMENT '升级信息',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`module_code`),
  KEY `idx_sys_module_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='模块表';

-- ----------------------------
-- Records of js_sys_module
-- ----------------------------
INSERT INTO `js_sys_module` VALUES ('cms', '内容管理', '网站、站点、栏目、文章、链接、评论、留言板', 'com.jeesite.modules.cms.web.CmsController', '4.0.0', null, '0', 'system', '2019-05-17 20:12:09', 'system', '2019-05-17 20:12:09', null);
INSERT INTO `js_sys_module` VALUES ('core', '核心模块', '用户、角色、组织、模块、菜单、字典、参数', 'com.jeesite.modules.sys.web.LoginController', '4.1.4', null, '0', 'system', '2019-05-17 20:12:08', 'system', '2019-05-17 20:12:08', null);

-- ----------------------------
-- Table structure for js_sys_msg_inner
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_msg_inner`;
CREATE TABLE `js_sys_msg_inner` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `msg_title` varchar(200) NOT NULL COMMENT '消息标题',
  `content_level` char(1) NOT NULL COMMENT '内容级别（1普通 2一般 3紧急）',
  `content_type` char(1) DEFAULT NULL COMMENT '内容类型（1公告 2新闻 3会议 4其它）',
  `msg_content` text NOT NULL COMMENT '消息内容',
  `receive_type` char(1) NOT NULL COMMENT '接受者类型（0全部 1用户 2部门 3角色 4岗位）',
  `receive_codes` text COMMENT '接受者字符串',
  `receive_names` text COMMENT '接受者名称字符串',
  `send_user_code` varchar(64) DEFAULT NULL COMMENT '发送者用户编码',
  `send_user_name` varchar(100) DEFAULT NULL COMMENT '发送者用户姓名',
  `send_date` datetime DEFAULT NULL COMMENT '发送时间',
  `is_attac` char(1) DEFAULT NULL COMMENT '是否有附件',
  `notify_types` varchar(100) DEFAULT NULL COMMENT '通知类型（PC APP 短信 邮件 微信）多选',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1删除 4审核 5驳回 9草稿）',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`),
  KEY `idx_sys_msg_inner_cb` (`create_by`),
  KEY `idx_sys_msg_inner_status` (`status`),
  KEY `idx_sys_msg_inner_cl` (`content_level`),
  KEY `idx_sys_msg_inner_sc` (`send_user_code`),
  KEY `idx_sys_msg_inner_sd` (`send_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='内部消息';

-- ----------------------------
-- Records of js_sys_msg_inner
-- ----------------------------

-- ----------------------------
-- Table structure for js_sys_msg_inner_record
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_msg_inner_record`;
CREATE TABLE `js_sys_msg_inner_record` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `msg_inner_id` varchar(64) NOT NULL COMMENT '所属消息',
  `receive_user_code` varchar(64) NOT NULL COMMENT '接受者用户编码',
  `receive_user_name` varchar(100) NOT NULL COMMENT '接受者用户姓名',
  `read_status` char(1) NOT NULL COMMENT '读取状态（0未送达 1已读 2未读）',
  `read_date` datetime DEFAULT NULL COMMENT '阅读时间',
  `is_star` char(1) DEFAULT NULL COMMENT '是否标星',
  PRIMARY KEY (`id`),
  KEY `idx_sys_msg_inner_r_mi` (`msg_inner_id`),
  KEY `idx_sys_msg_inner_r_ruc` (`receive_user_code`),
  KEY `idx_sys_msg_inner_r_status` (`read_status`),
  KEY `idx_sys_msg_inner_r_star` (`is_star`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='内部消息发送记录表';

-- ----------------------------
-- Records of js_sys_msg_inner_record
-- ----------------------------

-- ----------------------------
-- Table structure for js_sys_msg_push
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_msg_push`;
CREATE TABLE `js_sys_msg_push` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `msg_type` varchar(16) NOT NULL COMMENT '消息类型（PC APP 短信 邮件 微信）',
  `msg_title` varchar(200) NOT NULL COMMENT '消息标题',
  `msg_content` text NOT NULL COMMENT '消息内容',
  `biz_key` varchar(64) DEFAULT NULL COMMENT '业务主键',
  `biz_type` varchar(64) DEFAULT NULL COMMENT '业务类型',
  `receive_code` varchar(64) NOT NULL COMMENT '接受者账号',
  `receive_user_code` varchar(64) NOT NULL COMMENT '接受者用户编码',
  `receive_user_name` varchar(100) NOT NULL COMMENT '接受者用户姓名',
  `send_user_code` varchar(64) NOT NULL COMMENT '发送者用户编码',
  `send_user_name` varchar(100) NOT NULL COMMENT '发送者用户姓名',
  `send_date` datetime NOT NULL COMMENT '发送时间',
  `is_merge_push` char(1) DEFAULT NULL COMMENT '是否合并推送',
  `plan_push_date` datetime DEFAULT NULL COMMENT '计划推送时间',
  `push_number` int(11) DEFAULT NULL COMMENT '推送尝试次数',
  `push_return_code` varchar(200) DEFAULT NULL COMMENT '推送返回结果码',
  `push_return_msg_id` varchar(200) DEFAULT NULL COMMENT '推送返回消息编号',
  `push_return_content` text COMMENT '推送返回的内容信息',
  `push_status` char(1) DEFAULT NULL COMMENT '推送状态（0未推送 1成功  2失败）',
  `push_date` datetime DEFAULT NULL COMMENT '推送时间',
  `read_status` char(1) DEFAULT NULL COMMENT '读取状态（0未送达 1已读 2未读）',
  `read_date` datetime DEFAULT NULL COMMENT '读取时间',
  PRIMARY KEY (`id`),
  KEY `idx_sys_msg_push_type` (`msg_type`),
  KEY `idx_sys_msg_push_rc` (`receive_code`),
  KEY `idx_sys_msg_push_uc` (`receive_user_code`),
  KEY `idx_sys_msg_push_suc` (`send_user_code`),
  KEY `idx_sys_msg_push_pd` (`plan_push_date`),
  KEY `idx_sys_msg_push_ps` (`push_status`),
  KEY `idx_sys_msg_push_rs` (`read_status`),
  KEY `idx_sys_msg_push_bk` (`biz_key`),
  KEY `idx_sys_msg_push_bt` (`biz_type`),
  KEY `idx_sys_msg_push_imp` (`is_merge_push`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息推送表';

-- ----------------------------
-- Records of js_sys_msg_push
-- ----------------------------

-- ----------------------------
-- Table structure for js_sys_msg_pushed
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_msg_pushed`;
CREATE TABLE `js_sys_msg_pushed` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `msg_type` varchar(16) NOT NULL COMMENT '消息类型（PC APP 短信 邮件 微信）',
  `msg_title` varchar(200) NOT NULL COMMENT '消息标题',
  `msg_content` text NOT NULL COMMENT '消息内容',
  `biz_key` varchar(64) DEFAULT NULL COMMENT '业务主键',
  `biz_type` varchar(64) DEFAULT NULL COMMENT '业务类型',
  `receive_code` varchar(64) NOT NULL COMMENT '接受者账号',
  `receive_user_code` varchar(64) NOT NULL COMMENT '接受者用户编码',
  `receive_user_name` varchar(100) NOT NULL COMMENT '接受者用户姓名',
  `send_user_code` varchar(64) NOT NULL COMMENT '发送者用户编码',
  `send_user_name` varchar(100) NOT NULL COMMENT '发送者用户姓名',
  `send_date` datetime NOT NULL COMMENT '发送时间',
  `is_merge_push` char(1) DEFAULT NULL COMMENT '是否合并推送',
  `plan_push_date` datetime DEFAULT NULL COMMENT '计划推送时间',
  `push_number` int(11) DEFAULT NULL COMMENT '推送尝试次数',
  `push_return_content` text COMMENT '推送返回的内容信息',
  `push_return_code` varchar(200) DEFAULT NULL COMMENT '推送返回结果码',
  `push_return_msg_id` varchar(200) DEFAULT NULL COMMENT '推送返回消息编号',
  `push_status` char(1) DEFAULT NULL COMMENT '推送状态（0未推送 1成功  2失败）',
  `push_date` datetime DEFAULT NULL COMMENT '推送时间',
  `read_status` char(1) DEFAULT NULL COMMENT '读取状态（0未送达 1已读 2未读）',
  `read_date` datetime DEFAULT NULL COMMENT '读取时间',
  PRIMARY KEY (`id`),
  KEY `idx_sys_msg_pushed_type` (`msg_type`),
  KEY `idx_sys_msg_pushed_rc` (`receive_code`),
  KEY `idx_sys_msg_pushed_uc` (`receive_user_code`),
  KEY `idx_sys_msg_pushed_suc` (`send_user_code`),
  KEY `idx_sys_msg_pushed_pd` (`plan_push_date`),
  KEY `idx_sys_msg_pushed_ps` (`push_status`),
  KEY `idx_sys_msg_pushed_rs` (`read_status`),
  KEY `idx_sys_msg_pushed_bk` (`biz_key`),
  KEY `idx_sys_msg_pushed_bt` (`biz_type`),
  KEY `idx_sys_msg_pushed_imp` (`is_merge_push`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息已推送表';

-- ----------------------------
-- Records of js_sys_msg_pushed
-- ----------------------------

-- ----------------------------
-- Table structure for js_sys_msg_template
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_msg_template`;
CREATE TABLE `js_sys_msg_template` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `module_code` varchar(64) DEFAULT NULL COMMENT '归属模块',
  `tpl_key` varchar(100) NOT NULL COMMENT '模板键值',
  `tpl_name` varchar(100) NOT NULL COMMENT '模板名称',
  `tpl_type` varchar(16) NOT NULL COMMENT '模板类型',
  `tpl_content` text NOT NULL COMMENT '模板内容',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`),
  KEY `idx_sys_msg_tpl_key` (`tpl_key`),
  KEY `idx_sys_msg_tpl_type` (`tpl_type`),
  KEY `idx_sys_msg_tpl_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息模板';

-- ----------------------------
-- Records of js_sys_msg_template
-- ----------------------------

-- ----------------------------
-- Table structure for js_sys_office
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_office`;
CREATE TABLE `js_sys_office` (
  `office_code` varchar(64) NOT NULL COMMENT '机构编码',
  `parent_code` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_codes` varchar(1000) NOT NULL COMMENT '所有父级编号',
  `tree_sort` decimal(10,0) NOT NULL COMMENT '本级排序号（升序）',
  `tree_sorts` varchar(1000) NOT NULL COMMENT '所有级别排序号',
  `tree_leaf` char(1) NOT NULL COMMENT '是否最末级',
  `tree_level` decimal(4,0) NOT NULL COMMENT '层次级别',
  `tree_names` varchar(1000) NOT NULL COMMENT '全节点名',
  `view_code` varchar(100) NOT NULL COMMENT '机构代码',
  `office_name` varchar(100) NOT NULL COMMENT '机构名称',
  `full_name` varchar(200) NOT NULL COMMENT '机构全称',
  `office_type` char(1) NOT NULL COMMENT '机构类型',
  `leader` varchar(100) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(100) DEFAULT NULL COMMENT '办公电话',
  `address` varchar(255) DEFAULT NULL COMMENT '联系地址',
  `zip_code` varchar(100) DEFAULT NULL COMMENT '邮政编码',
  `email` varchar(300) DEFAULT NULL COMMENT '电子邮箱',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注信息',
  `corp_code` varchar(64) NOT NULL DEFAULT '0' COMMENT '租户代码',
  `corp_name` varchar(100) NOT NULL DEFAULT 'JeeSite' COMMENT '租户名称',
  `extend_s1` varchar(500) DEFAULT NULL COMMENT '扩展 String 1',
  `extend_s2` varchar(500) DEFAULT NULL COMMENT '扩展 String 2',
  `extend_s3` varchar(500) DEFAULT NULL COMMENT '扩展 String 3',
  `extend_s4` varchar(500) DEFAULT NULL COMMENT '扩展 String 4',
  `extend_s5` varchar(500) DEFAULT NULL COMMENT '扩展 String 5',
  `extend_s6` varchar(500) DEFAULT NULL COMMENT '扩展 String 6',
  `extend_s7` varchar(500) DEFAULT NULL COMMENT '扩展 String 7',
  `extend_s8` varchar(500) DEFAULT NULL COMMENT '扩展 String 8',
  `extend_i1` decimal(19,0) DEFAULT NULL COMMENT '扩展 Integer 1',
  `extend_i2` decimal(19,0) DEFAULT NULL COMMENT '扩展 Integer 2',
  `extend_i3` decimal(19,0) DEFAULT NULL COMMENT '扩展 Integer 3',
  `extend_i4` decimal(19,0) DEFAULT NULL COMMENT '扩展 Integer 4',
  `extend_f1` decimal(19,4) DEFAULT NULL COMMENT '扩展 Float 1',
  `extend_f2` decimal(19,4) DEFAULT NULL COMMENT '扩展 Float 2',
  `extend_f3` decimal(19,4) DEFAULT NULL COMMENT '扩展 Float 3',
  `extend_f4` decimal(19,4) DEFAULT NULL COMMENT '扩展 Float 4',
  `extend_d1` datetime DEFAULT NULL COMMENT '扩展 Date 1',
  `extend_d2` datetime DEFAULT NULL COMMENT '扩展 Date 2',
  `extend_d3` datetime DEFAULT NULL COMMENT '扩展 Date 3',
  `extend_d4` datetime DEFAULT NULL COMMENT '扩展 Date 4',
  PRIMARY KEY (`office_code`),
  KEY `idx_sys_office_cc` (`corp_code`),
  KEY `idx_sys_office_pc` (`parent_code`),
  KEY `idx_sys_office_pcs` (`parent_codes`),
  KEY `idx_sys_office_status` (`status`),
  KEY `idx_sys_office_ot` (`office_type`),
  KEY `idx_sys_office_vc` (`view_code`),
  KEY `idx_sys_office_ts` (`tree_sort`),
  KEY `idx_sys_office_tss` (`tree_sorts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组织机构表';

-- ----------------------------
-- Records of js_sys_office
-- ----------------------------
INSERT INTO `js_sys_office` VALUES ('123456', '0', '0,', '30', '0000000030,', '1', '0', '三国英雄', '123456', '三国英雄', '三国英雄', '1', '', '', '', '', '', '0', 'system', '2019-05-21 23:11:37', 'system', '2019-05-21 23:22:24', '', '0', 'JeeSite', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_office` VALUES ('123457', '0', '0,', '60', '0000000060,', '1', '0', '一统三国', '123457', '一统三国', '一统三国', '1', '', '', '', '', '', '0', 'system', '2019-05-21 23:22:47', 'system', '2019-05-21 23:22:47', '', '0', 'JeeSite', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_office` VALUES ('123458', '0', '0,', '90', '0000000090,', '1', '0', '第三方商户', '123458', '第三方商户', '第三方商户', '1', '', '', '', '', '', '0', 'system', '2019-05-25 11:17:38', 'system', '2019-05-25 11:20:14', '', '0', 'JeeSite', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_office` VALUES ('SD', '0', '0,', '40', '0000000040,', '0', '0', '山东公司', 'SD', '山东公司', '山东公司', '1', null, null, null, null, null, '1', 'system', '2019-05-17 20:12:57', 'system', '2019-05-21 23:09:00', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_office` VALUES ('SDJN', 'SD', '0,SD,', '30', '0000000040,0000000030,', '0', '1', '山东公司/济南公司', 'SDJN', '济南公司', '山东济南公司', '2', null, null, null, null, null, '1', 'system', '2019-05-17 20:12:57', 'system', '2019-05-21 23:09:00', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_office` VALUES ('SDJN01', 'SDJN', '0,SD,SDJN,', '30', '0000000040,0000000030,0000000030,', '1', '2', '山东公司/济南公司/企管部', 'SDJN01', '企管部', '山东济南企管部', '3', null, null, null, null, null, '1', 'system', '2019-05-17 20:12:57', 'system', '2019-05-21 23:09:00', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_office` VALUES ('SDJN02', 'SDJN', '0,SD,SDJN,', '40', '0000000040,0000000030,0000000040,', '1', '2', '山东公司/济南公司/财务部', 'SDJN02', '财务部', '山东济南财务部', '3', null, null, null, null, null, '1', 'system', '2019-05-17 20:12:57', 'system', '2019-05-21 23:09:00', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_office` VALUES ('SDJN03', 'SDJN', '0,SD,SDJN,', '50', '0000000040,0000000030,0000000050,', '1', '2', '山东公司/济南公司/研发部', 'SDJN03', '研发部', '山东济南研发部', '3', null, null, null, null, null, '1', 'system', '2019-05-17 20:12:58', 'system', '2019-05-21 23:09:00', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_office` VALUES ('SDQD', 'SD', '0,SD,', '40', '0000000040,0000000040,', '0', '1', '山东公司/青岛公司', 'SDQD', '青岛公司', '山东青岛公司', '2', null, null, null, null, null, '1', 'system', '2019-05-17 20:12:58', 'system', '2019-05-21 23:09:00', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_office` VALUES ('SDQD01', 'SDQD', '0,SD,SDQD,', '30', '0000000040,0000000040,0000000030,', '1', '2', '山东公司/青岛公司/企管部', 'SDQD01', '企管部', '山东青岛企管部', '3', null, null, null, null, null, '1', 'system', '2019-05-17 20:12:58', 'system', '2019-05-21 23:09:00', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_office` VALUES ('SDQD02', 'SDQD', '0,SD,SDQD,', '40', '0000000040,0000000040,0000000040,', '1', '2', '山东公司/青岛公司/财务部', 'SDQD02', '财务部', '山东青岛财务部', '3', null, null, null, null, null, '1', 'system', '2019-05-17 20:12:58', 'system', '2019-05-21 23:09:00', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_office` VALUES ('SDQD03', 'SDQD', '0,SD,SDQD,', '50', '0000000040,0000000040,0000000050,', '1', '2', '山东公司/青岛公司/研发部', 'SDQD03', '研发部', '山东青岛研发部', '3', null, null, null, null, null, '1', 'system', '2019-05-17 20:12:58', 'system', '2019-05-21 23:09:00', null, '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for js_sys_post
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_post`;
CREATE TABLE `js_sys_post` (
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(100) NOT NULL COMMENT '岗位名称',
  `post_type` varchar(100) DEFAULT NULL COMMENT '岗位分类（高管、中层、基层）',
  `post_sort` decimal(10,0) DEFAULT NULL COMMENT '岗位排序（升序）',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注信息',
  `corp_code` varchar(64) NOT NULL DEFAULT '0' COMMENT '租户代码',
  `corp_name` varchar(100) NOT NULL DEFAULT 'JeeSite' COMMENT '租户名称',
  PRIMARY KEY (`post_code`),
  KEY `idx_sys_post_cc` (`corp_code`),
  KEY `idx_sys_post_status` (`status`),
  KEY `idx_sys_post_ps` (`post_sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工岗位表';

-- ----------------------------
-- Records of js_sys_post
-- ----------------------------
INSERT INTO `js_sys_post` VALUES ('ceo', '总经理', null, '1', '1', 'system', '2019-05-17 20:13:00', 'system', '2019-05-21 23:09:07', null, '0', 'JeeSite');
INSERT INTO `js_sys_post` VALUES ('cfo', '财务经理', null, '2', '1', 'system', '2019-05-17 20:13:00', 'system', '2019-05-21 23:09:09', null, '0', 'JeeSite');
INSERT INTO `js_sys_post` VALUES ('dept', '部门经理', null, '2', '1', 'system', '2019-05-17 20:13:00', 'system', '2019-05-21 23:09:12', null, '0', 'JeeSite');
INSERT INTO `js_sys_post` VALUES ('hrm', '人力经理', null, '2', '1', 'system', '2019-05-17 20:13:00', 'system', '2019-05-21 23:09:11', null, '0', 'JeeSite');
INSERT INTO `js_sys_post` VALUES ('user', '普通员工', null, '3', '1', 'system', '2019-05-17 20:13:00', 'system', '2019-05-21 23:09:14', null, '0', 'JeeSite');

-- ----------------------------
-- Table structure for js_sys_role
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_role`;
CREATE TABLE `js_sys_role` (
  `role_code` varchar(64) NOT NULL COMMENT '角色编码',
  `role_name` varchar(100) NOT NULL COMMENT '角色名称',
  `role_type` varchar(100) DEFAULT NULL COMMENT '角色分类（高管、中层、基层、其它）',
  `role_sort` decimal(10,0) DEFAULT NULL COMMENT '角色排序（升序）',
  `is_sys` char(1) DEFAULT NULL COMMENT '系统内置（1是 0否）',
  `user_type` varchar(16) DEFAULT NULL COMMENT '用户类型（employee员工 member会员）',
  `data_scope` char(1) DEFAULT NULL COMMENT '数据范围设置（0未设置  1全部数据 2自定义数据）',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注信息',
  `corp_code` varchar(64) NOT NULL DEFAULT '0' COMMENT '租户代码',
  `corp_name` varchar(100) NOT NULL DEFAULT 'JeeSite' COMMENT '租户名称',
  PRIMARY KEY (`role_code`),
  KEY `idx_sys_role_cc` (`corp_code`),
  KEY `idx_sys_role_is` (`is_sys`),
  KEY `idx_sys_role_status` (`status`),
  KEY `idx_sys_role_rs` (`role_sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of js_sys_role
-- ----------------------------
INSERT INTO `js_sys_role` VALUES ('123', '三国英雄', '', '40', '1', 'employee', '1', '0', 'system', '2019-05-21 23:14:04', 'system', '2019-05-21 23:14:20', '', '0', 'JeeSite');
INSERT INTO `js_sys_role` VALUES ('666', '一统三国', '', '50', '1', 'employee', '1', '0', 'system', '2019-05-21 23:19:49', 'system', '2019-05-21 23:19:49', '', '0', 'JeeSite');
INSERT INTO `js_sys_role` VALUES ('corpAdmin', '系统管理员', null, '200', '1', 'none', '1', '0', 'system', '2019-05-17 20:12:30', 'system', '2019-05-17 20:12:30', '客户方使用的管理员角色，客户方管理员，集团管理员', '0', 'JeeSite');
INSERT INTO `js_sys_role` VALUES ('default', '默认角色', null, '100', '1', 'none', '0', '0', 'system', '2019-05-17 20:12:30', 'system', '2019-05-17 20:12:30', '非管理员用户，共有的默认角色，在参数配置里指定', '0', 'JeeSite');
INSERT INTO `js_sys_role` VALUES ('dept', '部门经理', null, '40', '0', 'employee', '0', '0', 'system', '2019-05-17 20:12:29', 'system', '2019-05-17 20:12:29', '部门经理', '0', 'JeeSite');
INSERT INTO `js_sys_role` VALUES ('haoisdhfikjas', '第三方商户', '', '60', '0', 'employee', null, '0', 'system', '2019-05-25 11:19:38', 'system', '2019-05-25 11:19:38', '', '0', 'JeeSite');
INSERT INTO `js_sys_role` VALUES ('user', '普通员工', null, '50', '0', 'employee', '0', '0', 'system', '2019-05-17 20:12:29', 'system', '2019-05-17 20:12:29', '普通员工', '0', 'JeeSite');

-- ----------------------------
-- Table structure for js_sys_role_data_scope
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_role_data_scope`;
CREATE TABLE `js_sys_role_data_scope` (
  `role_code` varchar(64) NOT NULL COMMENT '控制角色编码',
  `ctrl_type` varchar(20) NOT NULL COMMENT '控制类型',
  `ctrl_data` varchar(64) NOT NULL COMMENT '控制数据',
  `ctrl_permi` varchar(64) NOT NULL COMMENT '控制权限',
  PRIMARY KEY (`role_code`,`ctrl_type`,`ctrl_data`,`ctrl_permi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色数据权限表';

-- ----------------------------
-- Records of js_sys_role_data_scope
-- ----------------------------
INSERT INTO `js_sys_role_data_scope` VALUES ('123', 'Office', '123456', '1');
INSERT INTO `js_sys_role_data_scope` VALUES ('123', 'Office', '123457', '1');

-- ----------------------------
-- Table structure for js_sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_role_menu`;
CREATE TABLE `js_sys_role_menu` (
  `role_code` varchar(64) NOT NULL COMMENT '角色编码',
  `menu_code` varchar(64) NOT NULL COMMENT '菜单编码',
  PRIMARY KEY (`role_code`,`menu_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色与菜单关联表';

-- ----------------------------
-- Records of js_sys_role_menu
-- ----------------------------
INSERT INTO `js_sys_role_menu` VALUES ('123', '1129648436583477248');
INSERT INTO `js_sys_role_menu` VALUES ('123', '1129649397859233792');
INSERT INTO `js_sys_role_menu` VALUES ('123', '1129649848616890368');
INSERT INTO `js_sys_role_menu` VALUES ('123', '1129650234073427968');
INSERT INTO `js_sys_role_menu` VALUES ('123', '1129770683528941568');
INSERT INTO `js_sys_role_menu` VALUES ('123', '1129969394043895808');
INSERT INTO `js_sys_role_menu` VALUES ('123', '1130035732160622592');
INSERT INTO `js_sys_role_menu` VALUES ('123', '1130115810189778944');
INSERT INTO `js_sys_role_menu` VALUES ('123', '1130115987608838144');
INSERT INTO `js_sys_role_menu` VALUES ('123', '1130116148674306048');
INSERT INTO `js_sys_role_menu` VALUES ('123', '1130116366807474176');
INSERT INTO `js_sys_role_menu` VALUES ('123', '1130116555752480768');
INSERT INTO `js_sys_role_menu` VALUES ('123', '1131201123226243072');
INSERT INTO `js_sys_role_menu` VALUES ('123', '1131202518893481984');
INSERT INTO `js_sys_role_menu` VALUES ('123', '1134672497522225152');
INSERT INTO `js_sys_role_menu` VALUES ('666', '1129359030915887104');
INSERT INTO `js_sys_role_menu` VALUES ('666', '1129359038004260864');
INSERT INTO `js_sys_role_menu` VALUES ('666', '1129359039480655872');
INSERT INTO `js_sys_role_menu` VALUES ('666', '1129359040764112896');
INSERT INTO `js_sys_role_menu` VALUES ('666', '1129359042102095872');
INSERT INTO `js_sys_role_menu` VALUES ('666', '1129359043427495936');
INSERT INTO `js_sys_role_menu` VALUES ('666', '1129359044966805504');
INSERT INTO `js_sys_role_menu` VALUES ('666', '1129359046724218880');
INSERT INTO `js_sys_role_menu` VALUES ('666', '1129359047999287296');
INSERT INTO `js_sys_role_menu` VALUES ('666', '1129648436583477248');
INSERT INTO `js_sys_role_menu` VALUES ('666', '1129649397859233792');
INSERT INTO `js_sys_role_menu` VALUES ('666', '1129649848616890368');
INSERT INTO `js_sys_role_menu` VALUES ('666', '1129650234073427968');
INSERT INTO `js_sys_role_menu` VALUES ('666', '1129770683528941568');
INSERT INTO `js_sys_role_menu` VALUES ('666', '1129969394043895808');
INSERT INTO `js_sys_role_menu` VALUES ('666', '1130035732160622592');
INSERT INTO `js_sys_role_menu` VALUES ('666', '1130045410527772672');
INSERT INTO `js_sys_role_menu` VALUES ('666', '1130115810189778944');
INSERT INTO `js_sys_role_menu` VALUES ('666', '1130115987608838144');
INSERT INTO `js_sys_role_menu` VALUES ('666', '1130116148674306048');
INSERT INTO `js_sys_role_menu` VALUES ('666', '1130116366807474176');
INSERT INTO `js_sys_role_menu` VALUES ('666', '1130116555752480768');
INSERT INTO `js_sys_role_menu` VALUES ('666', '1131201123226243072');
INSERT INTO `js_sys_role_menu` VALUES ('666', '1131202518893481984');
INSERT INTO `js_sys_role_menu` VALUES ('666', '1134672497522225152');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359030915887104');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359038004260864');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359039480655872');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359040764112896');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359042102095872');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359043427495936');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359044966805504');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359046724218880');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359047999287296');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359049471488000');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359050754945024');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359052059373568');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359053456076800');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359054924083200');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359056283037696');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359057692323840');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359059026112512');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359060645113856');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359062004068352');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359063274942464');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359064575176704');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359067255336960');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359071256702976');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359072888287232');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359074192715776');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359077086785536');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359078420574208');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359079704031232');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359083722174464');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359084976271360');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359091666186240');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359094363123712');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359095663357952');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359096925843456');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359098150580224');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359124398534656');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359125396779008');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359126856396800');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359128148242432');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129359129410727936');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1129388175132213248');
INSERT INTO `js_sys_role_menu` VALUES ('haoisdhfikjas', '1132122936958476288');
INSERT INTO `js_sys_role_menu` VALUES ('haoisdhfikjas', '1132996423032688640');
INSERT INTO `js_sys_role_menu` VALUES ('haoisdhfikjas', '1132996562434576384');
INSERT INTO `js_sys_role_menu` VALUES ('haoisdhfikjas', '1132998297631047680');
INSERT INTO `js_sys_role_menu` VALUES ('haoisdhfikjas', '1132998882568683520');
INSERT INTO `js_sys_role_menu` VALUES ('haoisdhfikjas', '1132999105030373376');
INSERT INTO `js_sys_role_menu` VALUES ('haoisdhfikjas', '1134446065697914880');

-- ----------------------------
-- Table structure for js_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_user`;
CREATE TABLE `js_sys_user` (
  `user_code` varchar(100) NOT NULL COMMENT '用户编码',
  `login_code` varchar(100) NOT NULL COMMENT '登录账号',
  `user_name` varchar(100) NOT NULL COMMENT '用户昵称',
  `password` varchar(100) NOT NULL COMMENT '登录密码',
  `email` varchar(300) DEFAULT NULL COMMENT '电子邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号码',
  `phone` varchar(100) DEFAULT NULL COMMENT '办公电话',
  `sex` char(1) DEFAULT NULL COMMENT '用户性别',
  `avatar` varchar(1000) DEFAULT NULL COMMENT '头像路径',
  `sign` varchar(200) DEFAULT NULL COMMENT '个性签名',
  `wx_openid` varchar(100) DEFAULT NULL COMMENT '绑定的微信号',
  `mobile_imei` varchar(100) DEFAULT NULL COMMENT '绑定的手机串号',
  `user_type` varchar(16) NOT NULL COMMENT '用户类型',
  `ref_code` varchar(64) DEFAULT NULL COMMENT '用户类型引用编号',
  `ref_name` varchar(100) DEFAULT NULL COMMENT '用户类型引用姓名',
  `mgr_type` char(1) NOT NULL COMMENT '管理员类型（0非管理员 1系统管理员  2二级管理员）',
  `pwd_security_level` decimal(1,0) DEFAULT NULL COMMENT '密码安全级别（0初始 1很弱 2弱 3安全 4很安全）',
  `pwd_update_date` datetime DEFAULT NULL COMMENT '密码最后更新时间',
  `pwd_update_record` varchar(1000) DEFAULT NULL COMMENT '密码修改记录',
  `pwd_question` varchar(200) DEFAULT NULL COMMENT '密保问题',
  `pwd_question_answer` varchar(200) DEFAULT NULL COMMENT '密保问题答案',
  `pwd_question_2` varchar(200) DEFAULT NULL COMMENT '密保问题2',
  `pwd_question_answer_2` varchar(200) DEFAULT NULL COMMENT '密保问题答案2',
  `pwd_question_3` varchar(200) DEFAULT NULL COMMENT '密保问题3',
  `pwd_question_answer_3` varchar(200) DEFAULT NULL COMMENT '密保问题答案3',
  `pwd_quest_update_date` datetime DEFAULT NULL COMMENT '密码问题修改时间',
  `last_login_ip` varchar(100) DEFAULT NULL COMMENT '最后登陆IP',
  `last_login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `freeze_date` datetime DEFAULT NULL COMMENT '冻结时间',
  `freeze_cause` varchar(200) DEFAULT NULL COMMENT '冻结原因',
  `user_weight` decimal(8,0) DEFAULT '0' COMMENT '用户权重（降序）',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1删除 2停用 3冻结）',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注信息',
  `corp_code` varchar(64) NOT NULL DEFAULT '0' COMMENT '租户代码',
  `corp_name` varchar(100) NOT NULL DEFAULT 'JeeSite' COMMENT '租户名称',
  `extend_s1` varchar(500) DEFAULT NULL COMMENT '扩展 String 1',
  `extend_s2` varchar(500) DEFAULT NULL COMMENT '扩展 String 2',
  `extend_s3` varchar(500) DEFAULT NULL COMMENT '扩展 String 3',
  `extend_s4` varchar(500) DEFAULT NULL COMMENT '扩展 String 4',
  `extend_s5` varchar(500) DEFAULT NULL COMMENT '扩展 String 5',
  `extend_s6` varchar(500) DEFAULT NULL COMMENT '扩展 String 6',
  `extend_s7` varchar(500) DEFAULT NULL COMMENT '扩展 String 7',
  `extend_s8` varchar(500) DEFAULT NULL COMMENT '扩展 String 8',
  `extend_i1` decimal(19,0) DEFAULT NULL COMMENT '扩展 Integer 1',
  `extend_i2` decimal(19,0) DEFAULT NULL COMMENT '扩展 Integer 2',
  `extend_i3` decimal(19,0) DEFAULT NULL COMMENT '扩展 Integer 3',
  `extend_i4` decimal(19,0) DEFAULT NULL COMMENT '扩展 Integer 4',
  `extend_f1` decimal(19,4) DEFAULT NULL COMMENT '扩展 Float 1',
  `extend_f2` decimal(19,4) DEFAULT NULL COMMENT '扩展 Float 2',
  `extend_f3` decimal(19,4) DEFAULT NULL COMMENT '扩展 Float 3',
  `extend_f4` decimal(19,4) DEFAULT NULL COMMENT '扩展 Float 4',
  `extend_d1` datetime DEFAULT NULL COMMENT '扩展 Date 1',
  `extend_d2` datetime DEFAULT NULL COMMENT '扩展 Date 2',
  `extend_d3` datetime DEFAULT NULL COMMENT '扩展 Date 3',
  `extend_d4` datetime DEFAULT NULL COMMENT '扩展 Date 4',
  PRIMARY KEY (`user_code`),
  KEY `idx_sys_user_lc` (`login_code`),
  KEY `idx_sys_user_email` (`email`),
  KEY `idx_sys_user_mobile` (`mobile`),
  KEY `idx_sys_user_wo` (`wx_openid`),
  KEY `idx_sys_user_imei` (`mobile_imei`),
  KEY `idx_sys_user_rt` (`user_type`),
  KEY `idx_sys_user_rc` (`ref_code`),
  KEY `idx_sys_user_mt` (`mgr_type`),
  KEY `idx_sys_user_us` (`user_weight`),
  KEY `idx_sys_user_ud` (`update_date`),
  KEY `idx_sys_user_status` (`status`),
  KEY `idx_sys_user_cc` (`corp_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of js_sys_user
-- ----------------------------
INSERT INTO `js_sys_user` VALUES ('1134868018363813888_q0ok', '1134868018363813888', '测试商户勿删', 'ac32ad3290d9daedb51e988b191bc18e3e167e2dce9426d5de26c580', '', '', '', null, null, null, null, null, 'employee', '1134868018363813888_q0ok', '测试商户勿删', '0', '0', '2019-06-11 20:20:11', null, null, null, null, null, null, null, null, '192.168.1.3', '2019-06-16 12:17:33', null, null, '0', '0', 'system', '2019-06-11 20:20:11', 'system', '2019-06-11 20:20:11', '', '0', 'JeeSite', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_user` VALUES ('admin', 'admin', '系统管理员', 'c6f45e91e14138005867609e06bc27e2432bad54d01e4601f2c8a14e', null, null, null, null, null, null, null, null, 'none', null, null, '1', '3', '2019-05-21 23:29:35', '[[\"c6f45e91e14138005867609e06bc27e2432bad54d01e4601f2c8a14e\",\"2019-05-21 23:29:35\"]]', null, null, null, null, null, null, null, '59.174.164.51', '2019-05-21 23:28:50', null, null, '0', '0', 'system', '2019-05-17 20:12:57', 'system', '2019-05-17 20:12:57', '客户方使用的系统管理员，用于一些常用的基础数据配置。', '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_user` VALUES ('simayan_sefy', 'simayan', '司马炎', 'fea62b9ff13d91bb51568d8c5caba707a583fbbdc43c06983d838fb3', '', '', '', null, null, null, null, null, 'employee', 'simayan_sefy', '司马炎', '0', '2', '2019-06-17 19:46:13', '[[\"fea62b9ff13d91bb51568d8c5caba707a583fbbdc43c06983d838fb3\",\"2019-06-17 19:46:12\"]]', null, null, null, null, null, null, null, '121.60.118.44', '2019-06-17 19:08:02', null, null, '0', '0', 'system', '2019-06-12 16:31:05', 'system', '2019-06-12 16:31:05', '', '0', 'JeeSite', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `js_sys_user` VALUES ('system', 'system', '超级管理员', '40a06304063b7b1894e7b00c80bfa89a5dab9712e6eafb1a69e06cf8', null, null, null, null, null, null, null, null, 'none', null, null, '0', '3', '2019-05-21 23:26:47', '[[\"40a06304063b7b1894e7b00c80bfa89a5dab9712e6eafb1a69e06cf8\",\"2019-05-21 23:26:46\"]]', null, null, null, null, null, null, null, '121.60.118.44', '2019-06-20 17:50:12', null, null, '0', '0', 'system', '2019-05-17 20:12:56', 'system', '2019-05-17 20:12:56', '开发者使用的最高级别管理员，主要用于开发和调试。', '0', 'JeeSite', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for js_sys_user_data_scope
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_user_data_scope`;
CREATE TABLE `js_sys_user_data_scope` (
  `user_code` varchar(100) NOT NULL COMMENT '控制用户编码',
  `ctrl_type` varchar(20) NOT NULL COMMENT '控制类型',
  `ctrl_data` varchar(64) NOT NULL COMMENT '控制数据',
  `ctrl_permi` varchar(64) NOT NULL COMMENT '控制权限',
  PRIMARY KEY (`user_code`,`ctrl_type`,`ctrl_data`,`ctrl_permi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户数据权限表';

-- ----------------------------
-- Records of js_sys_user_data_scope
-- ----------------------------
INSERT INTO `js_sys_user_data_scope` VALUES ('system', 'Office', '123456', '1');
INSERT INTO `js_sys_user_data_scope` VALUES ('system', 'Office', '123456', '2');
INSERT INTO `js_sys_user_data_scope` VALUES ('system', 'Office', '123457', '1');
INSERT INTO `js_sys_user_data_scope` VALUES ('system', 'Office', '123457', '2');
INSERT INTO `js_sys_user_data_scope` VALUES ('system', 'Office', '123458', '1');
INSERT INTO `js_sys_user_data_scope` VALUES ('system', 'Office', '123458', '2');

-- ----------------------------
-- Table structure for js_sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_user_role`;
CREATE TABLE `js_sys_user_role` (
  `user_code` varchar(100) NOT NULL COMMENT '用户编码',
  `role_code` varchar(64) NOT NULL COMMENT '角色编码',
  PRIMARY KEY (`user_code`,`role_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与角色关联表';

-- ----------------------------
-- Records of js_sys_user_role
-- ----------------------------
INSERT INTO `js_sys_user_role` VALUES ('1129782821101875200_yl7v', 'haoisdhfikjas');
INSERT INTO `js_sys_user_role` VALUES ('1130145078150836224_6g6x', 'haoisdhfikjas');
INSERT INTO `js_sys_user_role` VALUES ('1131597636924874752_ad72', 'haoisdhfikjas');
INSERT INTO `js_sys_user_role` VALUES ('1134427234206957568_0zlq', 'haoisdhfikjas');
INSERT INTO `js_sys_user_role` VALUES ('1134442732421611520_riup', 'haoisdhfikjas');
INSERT INTO `js_sys_user_role` VALUES ('1134868018363813888_q0ok', 'haoisdhfikjas');
INSERT INTO `js_sys_user_role` VALUES ('caocao_wtg4', '123');
INSERT INTO `js_sys_user_role` VALUES ('liubei_56bw', '123');
INSERT INTO `js_sys_user_role` VALUES ('simayan_cvfd', '666');
INSERT INTO `js_sys_user_role` VALUES ('simayan_sefy', '666');
INSERT INTO `js_sys_user_role` VALUES ('simayi_vfbh', '666');
INSERT INTO `js_sys_user_role` VALUES ('simazhao_prky', '666');
INSERT INTO `js_sys_user_role` VALUES ('sunquan_hwag', '123');
INSERT INTO `js_sys_user_role` VALUES ('sunshangxiang_wwe1', '123');
INSERT INTO `js_sys_user_role` VALUES ('user10_p6uj', 'user');
INSERT INTO `js_sys_user_role` VALUES ('user11_1mwk', 'user');
INSERT INTO `js_sys_user_role` VALUES ('user12_ge1v', 'user');
INSERT INTO `js_sys_user_role` VALUES ('user13_ladn', 'user');
INSERT INTO `js_sys_user_role` VALUES ('user14_benz', 'dept');
INSERT INTO `js_sys_user_role` VALUES ('user15_sofi', 'dept');
INSERT INTO `js_sys_user_role` VALUES ('user16_i2mp', 'user');
INSERT INTO `js_sys_user_role` VALUES ('user17_kszw', 'user');
INSERT INTO `js_sys_user_role` VALUES ('user18_xjat', 'dept');
INSERT INTO `js_sys_user_role` VALUES ('user19_eoot', 'user');
INSERT INTO `js_sys_user_role` VALUES ('user1_bw8x', 'dept');
INSERT INTO `js_sys_user_role` VALUES ('user20_dymy', 'user');
INSERT INTO `js_sys_user_role` VALUES ('user21_nnbg', 'dept');
INSERT INTO `js_sys_user_role` VALUES ('user22_liqx', 'user');
INSERT INTO `js_sys_user_role` VALUES ('user23_q58b', 'user');
INSERT INTO `js_sys_user_role` VALUES ('user2_6yw4', 'user');
INSERT INTO `js_sys_user_role` VALUES ('user3_w4c0', 'user');
INSERT INTO `js_sys_user_role` VALUES ('user4_kgol', 'dept');
INSERT INTO `js_sys_user_role` VALUES ('user5_xg4x', 'user');
INSERT INTO `js_sys_user_role` VALUES ('user6_cvbj', 'user');
INSERT INTO `js_sys_user_role` VALUES ('user7_tdda', 'dept');
INSERT INTO `js_sys_user_role` VALUES ('user8_6co2', 'user');
INSERT INTO `js_sys_user_role` VALUES ('user9_oe56', 'user');
INSERT INTO `js_sys_user_role` VALUES ('zhouyu_pwxf', '123');
INSERT INTO `js_sys_user_role` VALUES ('zhugeliang_3qws', '123');

-- ----------------------------
-- Table structure for nb_ali_account_pool
-- ----------------------------
DROP TABLE IF EXISTS `nb_ali_account_pool`;
CREATE TABLE `nb_ali_account_pool` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `userId` varchar(64) NOT NULL COMMENT '支付宝userId',
  `phone` varchar(32) DEFAULT NULL COMMENT '支付宝手机号',
  `num` int(11) DEFAULT '0' COMMENT '收款次数',
  `money` decimal(9,2) DEFAULT '0.00' COMMENT '收款金额',
  `last_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '最后收款时间',
  `status` varchar(1) DEFAULT NULL COMMENT '账号状态',
  `callback_sign` varchar(255) DEFAULT NULL COMMENT '监听App签名',
  `belong_user_code` varchar(64) DEFAULT NULL COMMENT '账号归属用户',
  `weight` int(11) DEFAULT '100',
  PRIMARY KEY (`id`),
  KEY `ali_pool_num_idx` (`num`) USING BTREE,
  KEY `ali_pool_money_idx` (`money`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付宝收款账户';

-- ----------------------------
-- Records of nb_ali_account_pool
-- ----------------------------
INSERT INTO `nb_ali_account_pool` VALUES ('1135882590595784704', '2088412458494104', '131******77', '7', '7.13', '2019-06-18 08:54:10', '1', null, '1129782821101875200_yl7v', '90');
INSERT INTO `nb_ali_account_pool` VALUES ('1140108681044967424', '2088702958891955', 'zpzpzp', '6', '599.92', '2019-06-17 18:49:00', '0', null, '', '86');

-- ----------------------------
-- Table structure for nb_business
-- ----------------------------
DROP TABLE IF EXISTS `nb_business`;
CREATE TABLE `nb_business` (
  `id` varchar(64) NOT NULL COMMENT '商户编号',
  `name` varchar(255) DEFAULT NULL COMMENT '商户名称',
  `rate` varchar(64) DEFAULT NULL COMMENT '费率',
  `secret_key` varchar(255) NOT NULL COMMENT '秘钥',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商户信息';

-- ----------------------------
-- Records of nb_business
-- ----------------------------
INSERT INTO `nb_business` VALUES ('1134868018363813888', '测试商户勿删', '0.2', 'iufgAf76f');

-- ----------------------------
-- Table structure for nb_card
-- ----------------------------
DROP TABLE IF EXISTS `nb_card`;
CREATE TABLE `nb_card` (
  `id` varchar(64) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '持卡人姓名',
  `no` varchar(100) DEFAULT NULL COMMENT '卡号',
  `bank` varchar(255) DEFAULT NULL COMMENT '开户行',
  `business_id` varchar(64) DEFAULT NULL COMMENT '商户Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商户银行卡';

-- ----------------------------
-- Records of nb_card
-- ----------------------------
INSERT INTO `nb_card` VALUES ('1138804926821494784', 'ssss', 'ssss', 'ssss', '1134868018363813888');

-- ----------------------------
-- Table structure for nb_cash
-- ----------------------------
DROP TABLE IF EXISTS `nb_cash`;
CREATE TABLE `nb_cash` (
  `id` varchar(64) NOT NULL,
  `card_id` varchar(64) DEFAULT NULL COMMENT '银行卡ID',
  `money` varchar(255) DEFAULT NULL COMMENT '金额',
  `status` varchar(2) DEFAULT NULL COMMENT '支付状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `business_id` varchar(64) DEFAULT NULL COMMENT '商户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='提现记录';

-- ----------------------------
-- Records of nb_cash
-- ----------------------------
INSERT INTO `nb_cash` VALUES ('1138804988616175616', '1138804926821494784', '1', '0', '2019-06-12 21:47:22', null, '1134868018363813888');
INSERT INTO `nb_cash` VALUES ('1138805019935043584', '', '2', '1', '2019-06-12 21:47:29', '2019-06-12 21:44:16', '1134868018363813888');
INSERT INTO `nb_cash` VALUES ('1139131300898332672', '1138804926821494784', '22222', '0', '2019-06-13 19:24:01', '2019-06-13 19:19:58', '1134868018363813888');
INSERT INTO `nb_cash` VALUES ('1140117949796425728', '1138804926821494784', '111', '1', '2019-06-16 12:44:36', '2019-06-16 12:41:15', '1134868018363813888');

-- ----------------------------
-- Table structure for nb_order
-- ----------------------------
DROP TABLE IF EXISTS `nb_order`;
CREATE TABLE `nb_order` (
  `id` varchar(64) NOT NULL COMMENT '订单编号',
  `business_id` varchar(64) DEFAULT NULL COMMENT '商户编号',
  `business_order_id` varchar(64) DEFAULT NULL COMMENT '商户订单号',
  `description` varchar(255) DEFAULT NULL COMMENT '商品描述',
  `extrat` varchar(255) DEFAULT NULL COMMENT '商品附加信息',
  `money` decimal(9,2) DEFAULT NULL COMMENT '总金额',
  `real_money` decimal(9,2) DEFAULT NULL COMMENT '实际付款金额',
  `notify_url` varchar(255) DEFAULT NULL COMMENT '通知地址',
  `status` tinyint(1) DEFAULT NULL COMMENT '支付状态',
  `pay_type` varchar(32) DEFAULT NULL COMMENT '支付方式',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `pay_time` datetime DEFAULT NULL COMMENT '付款时间',
  `callback_sign` varchar(255) DEFAULT NULL COMMENT '监听App签名',
  `aliuser_id` varchar(64) DEFAULT NULL COMMENT '收款账号uerId',
  PRIMARY KEY (`id`),
  KEY `order_business_idx` (`business_id`) USING BTREE,
  KEY `order_business_order_idx` (`business_order_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单信息';

-- ----------------------------
-- Records of nb_order
-- ----------------------------
INSERT INTO `nb_order` VALUES ('1138466059822522368', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '100.00', '/easy/a/demo/getway', '0', 'alipay', '2019-06-11 23:20:35', '2019-06-11 23:20:35', null, '2088412458494104_100.00', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1138466398734868480', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.99', '/easy/a/demo/getway', '0', 'alipay', '2019-06-11 23:21:56', '2019-06-11 23:21:56', null, '2088412458494104_99.99', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1138466571171094528', '1134868018363813888', '123456', '牛肉面', '本店特色菜牛肉面', '1.00', '1.00', '回调地址', '0', 'alipay', '2019-06-11 23:22:37', '2019-06-11 23:22:37', null, '2088412458494104_1.00', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1138515125428957184', '1134868018363813888', '123', '热干面一碗', '1111', '0.03', '0.03', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-12 02:35:33', '2019-06-12 02:35:33', null, '2088412458494104_0.03', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1138669331192360960', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '100.00', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-12 12:48:19', '2019-06-12 12:48:19', null, '2088412458494104_100.00', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1138669653579149312', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.99', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-12 12:49:36', '2019-06-12 12:49:36', null, '2088412458494104_99.99', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1138671869023105024', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.98', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-12 12:58:24', '2019-06-12 12:58:24', null, '2088412458494104_99.98', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1138677498978643968', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.97', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-12 13:20:46', '2019-06-12 13:20:46', null, '2088412458494104_99.97', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1138677500660559872', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.96', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-12 13:20:46', '2019-06-12 13:20:46', null, '2088412458494104_99.96', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1138677528103890944', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.95', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-12 13:20:53', '2019-06-12 13:20:53', null, '2088412458494104_99.95', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1138678893676998656', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.94', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-12 13:26:19', '2019-06-12 13:26:19', null, '2088412458494104_99.94', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1138679681820274688', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.93', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-12 13:29:26', '2019-06-12 13:29:26', null, '2088412458494104_99.93', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1138695918059139072', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '100.00', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-12 14:33:57', '2019-06-12 14:33:57', null, '2088412458494104_100.00', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1138728921216987136', '1134868018363813888', '123', '热干面一碗', '1111', '50.00', '50.00', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-12 16:45:06', '2019-06-12 16:45:06', null, '2088412458494104_50.00', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1138739696069390336', '1134868018363813888', '123', '热干面一碗', '1111', '1.00', '1.00', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-12 17:27:55', '2019-06-12 17:27:55', null, '2088412458494104_1.00', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1138739721784668160', '1134868018363813888', '123', '热干面一碗', '1111', '1.00', '0.99', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-12 17:28:01', '2019-06-12 17:28:01', null, '2088412458494104_0.99', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1138739764851781632', '1134868018363813888', '123', '热干面一碗', '1111', '1.00', '0.98', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-12 17:28:11', '2019-06-12 17:28:11', null, '2088412458494104_0.98', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1138739768127533056', '1134868018363813888', '123', '热干面一碗', '1111', '1.00', '0.97', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-12 17:28:12', '2019-06-12 17:28:12', null, '2088412458494104_0.97', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1138739876239912960', '1134868018363813888', '123', '热干面一碗', '1111', '1.00', '0.96', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-12 17:28:38', '2019-06-12 17:28:38', null, '2088412458494104_0.96', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1138739892648030208', '1134868018363813888', '123', '热干面一碗', '1111', '1.00', '0.95', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-12 17:28:42', '2019-06-12 17:28:42', null, '2088412458494104_0.95', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1138739896750059520', '1134868018363813888', '123', '热干面一碗', '1111', '1.00', '0.94', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-12 17:28:43', '2019-06-12 17:28:43', null, '2088412458494104_0.94', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1138739899136618496', '1134868018363813888', '123', '热干面一碗', '1111', '1.00', '0.93', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-12 17:28:43', '2019-06-12 17:28:43', null, '2088412458494104_0.93', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1138739901011472384', '1134868018363813888', '123', '热干面一碗', '1111', '1.00', '0.92', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-12 17:28:44', '2019-06-12 17:28:44', null, '2088412458494104_0.92', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1138739907470700544', '1134868018363813888', '123', '热干面一碗', '1111', '1.00', '0.91', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-12 17:28:45', '2019-06-12 17:28:45', null, '2088412458494104_0.91', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1138739910926807040', '1134868018363813888', '123', '热干面一碗', '1111', '1.00', '0.90', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-12 17:28:46', '2019-06-12 17:28:46', null, '2088412458494104_0.90', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1138740287306870784', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '100.00', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-12 17:30:16', '2019-06-12 17:30:16', null, '2088412458494104_100.00', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1138740291329208320', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.99', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-12 17:30:17', '2019-06-12 17:30:17', null, '2088412458494104_99.99', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1139066612634759168', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '100.00', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-13 15:06:58', '2019-06-13 15:06:58', null, '2088412458494104_100.00', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1139066977648259072', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.99', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-13 15:08:25', '2019-06-13 15:08:25', null, '2088412458494104_99.99', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1139067500489224192', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.98', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-13 15:10:30', '2019-06-13 15:10:30', null, '2088412458494104_99.98', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1139131548962054144', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '100.00', '/easy/a/demo/getway', '0', 'alipay', '2019-06-13 19:25:00', '2019-06-13 19:25:00', null, '2088412458494104_100.00', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1139131627705917440', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.99', '/easy/a/demo/getway', '0', 'alipay', '2019-06-13 19:25:19', '2019-06-13 19:25:19', null, '2088412458494104_99.99', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1139131667061071872', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.98', '/easy/a/demo/getway', '0', 'alipay', '2019-06-13 19:25:28', '2019-06-13 19:25:28', null, '2088412458494104_99.98', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1139131704415543296', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.97', '/easy/a/demo/getway', '0', 'alipay', '2019-06-13 19:25:37', '2019-06-13 19:25:37', null, '2088412458494104_99.97', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1139131735642136576', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.99', '/easy/a/demo/getway', '0', 'alipay', '2019-06-13 19:25:44', '2019-06-13 19:25:44', null, '2088412458494104_99.99', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140103121088655360', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '100.00', 'http://192.168.1.3/easy/a/demo/getway', '0', 'alipay', '2019-06-16 11:45:41', '2019-06-16 11:45:41', null, '2088412458494104_100.00', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140104598827200512', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '100.00', 'http://192.168.1.3/easy/a/demo/getway', '0', 'alipay', '2019-06-16 11:51:33', '2019-06-16 11:51:33', null, '2088412458494104_100.00', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140108911530360832', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.99', 'http://192.168.1.3/easy/a/demo/getway', '1', 'alipay', '2019-06-16 12:08:41', '2019-06-16 12:08:41', null, '2088702958891955_99.99', '2088702958891955');
INSERT INTO `nb_order` VALUES ('1140109344361562112', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.98', 'http://192.168.1.3/easy/a/demo/getway', '1', 'alipay', '2019-06-16 12:10:25', '2019-06-16 12:10:25', null, '2088702958891955_99.98', '2088702958891955');
INSERT INTO `nb_order` VALUES ('1140109731277717504', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.99', 'http://192.168.1.3/easy/a/demo/getway', '0', 'alipay', '2019-06-16 12:11:57', '2019-06-16 12:11:57', null, '2088702958891955_99.99', '2088702958891955');
INSERT INTO `nb_order` VALUES ('1140110527147266048', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.99', 'http://192.168.1.3/easy/a/demo/getway', '1', 'alipay', '2019-06-16 12:15:07', '2019-06-16 12:15:07', '2019-06-16 12:15:24', '2088702958891955_99.99', '2088702958891955');
INSERT INTO `nb_order` VALUES ('1140110672941273088', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.98', 'http://192.168.1.3/easy/a/demo/getway', '1', 'alipay', '2019-06-16 12:15:41', '2019-06-16 12:15:41', '2019-06-16 12:16:08', '2088702958891955_99.98', '2088702958891955');
INSERT INTO `nb_order` VALUES ('1140110934720368640', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.99', 'http://192.168.1.3/easy/a/demo/getway', '1', 'alipay', '2019-06-16 12:16:44', '2019-06-16 12:16:44', '2019-06-16 12:17:03', '2088702958891955_99.99', '2088702958891955');
INSERT INTO `nb_order` VALUES ('1140117998047698944', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.99', 'http://192.168.1.3/easy/a/demo/getway', '1', 'alipay', '2019-06-16 12:44:48', '2019-06-16 12:44:48', '2019-06-16 12:45:12', '2088702958891955_99.99', '2088702958891955');
INSERT INTO `nb_order` VALUES ('1140118182777430016', '1134868018363813888', '123456', '牛肉面', '本店特色菜牛肉面', '1.00', '0.99', '回调地址', '0', 'alipay', '2019-06-16 12:45:32', '2019-06-16 12:45:32', null, '2088702958891955_0.99', '2088702958891955');
INSERT INTO `nb_order` VALUES ('1140118524327993344', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.98', 'http://192.168.1.3/easy/a/demo/getway', '1', 'alipay', '2019-06-16 12:46:53', '2019-06-16 12:46:53', '2019-06-16 12:47:09', '2088702958891955_99.98', '2088702958891955');
INSERT INTO `nb_order` VALUES ('1140119000359055360', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.99', 'http://192.168.1.3/easy/a/demo/getway', '1', 'alipay', '2019-06-16 12:48:47', '2019-06-16 12:48:47', '2019-06-16 12:49:01', '2088702958891955_99.99', '2088702958891955');
INSERT INTO `nb_order` VALUES ('1140119654222508032', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.99', 'http://192.168.1.3/nbpay/a/demo/getway', '0', 'alipay', '2019-06-16 12:51:23', '2019-06-16 12:51:23', null, '2088702958891955_99.99', '2088702958891955');
INSERT INTO `nb_order` VALUES ('1140119822019833856', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.98', 'http://192.168.1.3/nbpay/a/demo/getway', '0', 'alipay', '2019-06-16 12:52:03', '2019-06-16 12:52:03', null, '2088702958891955_99.98', '2088702958891955');
INSERT INTO `nb_order` VALUES ('1140119883051151360', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.97', 'http://192.168.1.3/nbpay/a/demo/getway', '0', 'alipay', '2019-06-16 12:52:17', '2019-06-16 12:52:17', null, '2088702958891955_99.97', '2088702958891955');
INSERT INTO `nb_order` VALUES ('1140119949723807744', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.96', 'http://192.168.1.3/nbpay/a/demo/getway', '0', 'alipay', '2019-06-16 12:52:33', '2019-06-16 12:52:33', null, '2088702958891955_99.96', '2088702958891955');
INSERT INTO `nb_order` VALUES ('1140120012030193664', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.95', 'http://192.168.1.3/nbpay/a/demo/getway', '0', 'alipay', '2019-06-16 12:52:48', '2019-06-16 12:52:48', null, '2088702958891955_99.95', '2088702958891955');
INSERT INTO `nb_order` VALUES ('1140120074848284672', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.94', 'http://192.168.1.3/nbpay/a/demo/getway', '0', 'alipay', '2019-06-16 12:53:03', '2019-06-16 12:53:03', null, '2088702958891955_99.94', '2088702958891955');
INSERT INTO `nb_order` VALUES ('1140120134466121728', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.93', 'http://192.168.1.3/nbpay/a/demo/getway', '0', 'alipay', '2019-06-16 12:53:17', '2019-06-16 12:53:17', null, '2088702958891955_99.93', '2088702958891955');
INSERT INTO `nb_order` VALUES ('1140120199842738176', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.92', 'http://192.168.1.3/nbpay/a/demo/getway', '0', 'alipay', '2019-06-16 12:53:33', '2019-06-16 12:53:33', null, '2088702958891955_99.92', '2088702958891955');
INSERT INTO `nb_order` VALUES ('1140120259280220160', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.91', 'http://192.168.1.3/nbpay/a/demo/getway', '0', 'alipay', '2019-06-16 12:53:47', '2019-06-16 12:53:47', null, '2088702958891955_99.91', '2088702958891955');
INSERT INTO `nb_order` VALUES ('1140120314124939264', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.89', 'http://192.168.1.3/nbpay/a/demo/getway', '0', 'alipay', '2019-06-16 12:54:00', '2019-06-16 12:54:00', null, '2088702958891955_99.89', '2088702958891955');
INSERT INTO `nb_order` VALUES ('1140463603214331904', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '100.00', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 11:38:06', '2019-06-17 11:38:06', null, '2088702958891955_100.00', '2088702958891955');
INSERT INTO `nb_order` VALUES ('1140540961086648320', '1134868018363813888', '123', '热干沙雕面一碗', '1111', '100.00', '100.00', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 16:45:30', '2019-06-17 16:45:30', null, '2088702958891955_100.00', '2088702958891955');
INSERT INTO `nb_order` VALUES ('1140572227668422656', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '100.00', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 18:49:45', '2019-06-17 18:49:45', null, '2088702958891955_100.00', '2088702958891955');
INSERT INTO `nb_order` VALUES ('1140572404147957760', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '100.00', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 18:50:27', '2019-06-17 18:50:27', null, '2088412458494104_100.00', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140576907848986624', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.99', '/nbpay/a/demo/getway', '1', 'alipay', '2019-06-17 19:08:20', '2019-06-17 19:08:20', null, '2088412458494104_99.99', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140582342815526912', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.98', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:29:56', '2019-06-17 19:29:56', null, '2088412458494104_99.98', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140582367771635712', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.97', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:30:02', '2019-06-17 19:30:02', null, '2088412458494104_99.97', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140582380455211008', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.96', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:30:05', '2019-06-17 19:30:05', null, '2088412458494104_99.96', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140582381570895872', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.95', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:30:05', '2019-06-17 19:30:05', null, '2088412458494104_99.95', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140582388067872768', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.94', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:30:07', '2019-06-17 19:30:07', null, '2088412458494104_99.94', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140582460704829440', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.93', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:30:24', '2019-06-17 19:30:24', null, '2088412458494104_99.93', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140582693748748288', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.92', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:31:20', '2019-06-17 19:31:20', null, '2088412458494104_99.92', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140582747389702144', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.91', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:31:33', '2019-06-17 19:31:33', null, '2088412458494104_99.91', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140582968626655232', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.90', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:32:25', '2019-06-17 19:32:25', null, '2088412458494104_99.90', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140582971675914240', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.89', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:32:26', '2019-06-17 19:32:26', null, '2088412458494104_99.89', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140583002109784064', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.88', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:32:33', '2019-06-17 19:32:33', null, '2088412458494104_99.88', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140583203511873536', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.87', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:33:21', '2019-06-17 19:33:21', null, '2088412458494104_99.87', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140583236013535232', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.86', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:33:29', '2019-06-17 19:33:29', null, '2088412458494104_99.86', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140583306486231040', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.85', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:33:46', '2019-06-17 19:33:46', null, '2088412458494104_99.85', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140583409888407552', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.84', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:34:11', '2019-06-17 19:34:11', null, '2088412458494104_99.84', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140583502091792384', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.83', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:34:33', '2019-06-17 19:34:33', null, '2088412458494104_99.83', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140583602000113664', '1134868018363813888', '1', '热干面一碗', '1111', '100.00', '99.82', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:34:56', '2019-06-17 19:34:56', null, '2088412458494104_99.82', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140583697936429056', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.81', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:35:19', '2019-06-17 19:35:19', null, '2088412458494104_99.81', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140583758284075008', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.80', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:35:34', '2019-06-17 19:35:34', null, '2088412458494104_99.80', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140583784603332608', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.79', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:35:40', '2019-06-17 19:35:40', null, '2088412458494104_99.79', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140583813594361856', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.78', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:35:47', '2019-06-17 19:35:47', null, '2088412458494104_99.78', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140583858783793152', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.77', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:35:58', '2019-06-17 19:35:58', null, '2088412458494104_99.77', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140583876689276928', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.76', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:36:02', '2019-06-17 19:36:02', null, '2088412458494104_99.76', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140583939524145152', '1134868018363813888', '123', '热干面一碗', '1111', '0.01', '0.01', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:36:17', '2019-06-17 19:36:17', null, '2088412458494104_0.01', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140583948491567104', '1134868018363813888', '123', '热干面一碗', '1111', '0.01', '0.00', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:36:19', '2019-06-17 19:36:19', null, '2088412458494104_0.00', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140583966589988864', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.75', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:36:23', '2019-06-17 19:36:23', null, '2088412458494104_99.75', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140584022395203584', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.74', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:36:37', '2019-06-17 19:36:37', null, '2088412458494104_99.74', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140584036345458688', '1134868018363813888', '123', '热干面一碗', '1111', '1.00', '1.00', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:36:40', '2019-06-17 19:36:40', null, '2088412458494104_1.00', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140584198614691840', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.73', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:37:19', '2019-06-17 19:37:19', null, '2088412458494104_99.73', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140584238418636800', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.72', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:37:28', '2019-06-17 19:37:28', null, '2088412458494104_99.72', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140584474033664000', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.71', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:38:24', '2019-06-17 19:38:24', null, '2088412458494104_99.71', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140584763021209600', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.70', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:39:33', '2019-06-17 19:39:33', null, '2088412458494104_99.70', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140584897780002816', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.69', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:40:05', '2019-06-17 19:40:05', null, '2088412458494104_99.69', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140584965312491520', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.68', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:40:21', '2019-06-17 19:40:21', null, '2088412458494104_99.68', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140585141074800640', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.67', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:41:03', '2019-06-17 19:41:03', null, '2088412458494104_99.67', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140585721579057152', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.66', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:43:22', '2019-06-17 19:43:22', null, '2088412458494104_99.66', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140585978484371456', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.65', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:44:23', '2019-06-17 19:44:23', null, '2088412458494104_99.65', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140587160028196864', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.64', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:49:05', '2019-06-17 19:49:05', null, '2088412458494104_99.64', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140588190128287744', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.63', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:53:10', '2019-06-17 19:53:10', null, '2088412458494104_99.63', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140589461535076352', '1134868018363813888', '123', '热干面一碗', '1111', '0.10', '0.10', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 19:58:13', '2019-06-17 19:58:13', null, '2088412458494104_0.10', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140590500023775232', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.62', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:02:21', '2019-06-17 20:02:21', null, '2088412458494104_99.62', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140590649940783104', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.61', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:02:57', '2019-06-17 20:02:57', null, '2088412458494104_99.61', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591539821096960', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.60', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:06:29', '2019-06-17 20:06:29', null, '2088412458494104_99.60', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591897381318656', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.59', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:07:54', '2019-06-17 20:07:54', null, '2088412458494104_99.59', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591922433896448', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.58', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:00', '2019-06-17 20:08:00', null, '2088412458494104_99.58', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591926598840320', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.57', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:01', '2019-06-17 20:08:01', null, '2088412458494104_99.57', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591933699796992', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.56', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:03', '2019-06-17 20:08:03', null, '2088412458494104_99.56', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591934354108416', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.55', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:03', '2019-06-17 20:08:03', null, '2088412458494104_99.55', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591934987448320', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.54', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:03', '2019-06-17 20:08:03', null, '2088412458494104_99.54', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591935629176832', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.53', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:03', '2019-06-17 20:08:03', null, '2088412458494104_99.53', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591936304459776', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.52', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:03', '2019-06-17 20:08:03', null, '2088412458494104_99.52', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591936996519936', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.51', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:04', '2019-06-17 20:08:04', null, '2088412458494104_99.51', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591937873129472', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.50', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:04', '2019-06-17 20:08:04', null, '2088412458494104_99.50', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591938330308608', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.49', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:04', '2019-06-17 20:08:04', null, '2088412458494104_99.49', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591938921705472', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.48', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:04', '2019-06-17 20:08:04', null, '2088412458494104_99.48', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591939559239680', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.47', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:04', '2019-06-17 20:08:04', null, '2088412458494104_99.47', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591940167413760', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.46', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:04', '2019-06-17 20:08:04', null, '2088412458494104_99.46', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591940888834048', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.45', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:05', '2019-06-17 20:08:05', null, '2088412458494104_99.45', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591941543145472', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.44', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:05', '2019-06-17 20:08:05', null, '2088412458494104_99.44', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591942222622720', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.43', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:05', '2019-06-17 20:08:05', null, '2088412458494104_99.43', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591942889517056', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.42', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:05', '2019-06-17 20:08:05', null, '2088412458494104_99.42', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591943522856960', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.41', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:05', '2019-06-17 20:08:05', null, '2088412458494104_99.41', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591944206528512', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.40', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:05', '2019-06-17 20:08:05', null, '2088412458494104_99.40', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591944953114624', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.39', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:06', '2019-06-17 20:08:06', null, '2088412458494104_99.39', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591945615814656', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.38', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:06', '2019-06-17 20:08:06', null, '2088412458494104_99.38', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591946341429248', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.37', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:06', '2019-06-17 20:08:06', null, '2088412458494104_99.37', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591947075432448', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.36', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:06', '2019-06-17 20:08:06', null, '2088412458494104_99.36', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591947691995136', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.35', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:06', '2019-06-17 20:08:06', null, '2088412458494104_99.35', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591948321140736', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.34', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:06', '2019-06-17 20:08:06', null, '2088412458494104_99.34', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591949004812288', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.33', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:06', '2019-06-17 20:08:06', null, '2088412458494104_99.33', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591949646540800', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.32', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:07', '2019-06-17 20:08:07', null, '2088412458494104_99.32', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591950367961088', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.31', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:07', '2019-06-17 20:08:07', null, '2088412458494104_99.31', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591951064215552', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.30', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:07', '2019-06-17 20:08:07', null, '2088412458494104_99.30', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591951739498496', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.29', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:07', '2019-06-17 20:08:07', null, '2088412458494104_99.29', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591952435752960', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.28', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:07', '2019-06-17 20:08:07', null, '2088412458494104_99.28', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591953119424512', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.27', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:07', '2019-06-17 20:08:07', null, '2088412458494104_99.27', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591954428047360', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.26', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:08', '2019-06-17 20:08:08', null, '2088412458494104_99.26', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591955099136000', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.25', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:08', '2019-06-17 20:08:08', null, '2088412458494104_99.25', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591955740864512', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.24', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:08', '2019-06-17 20:08:08', null, '2088412458494104_99.24', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591956353232896', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.23', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:08', '2019-06-17 20:08:08', null, '2088412458494104_99.23', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591964825726976', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.22', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:10', '2019-06-17 20:08:10', null, '2088412458494104_99.22', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591965454872576', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.21', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:10', '2019-06-17 20:08:10', null, '2088412458494104_99.21', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591966113378304', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.20', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:11', '2019-06-17 20:08:11', null, '2088412458494104_99.20', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591966855770112', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.19', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:11', '2019-06-17 20:08:11', null, '2088412458494104_99.19', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591967396835328', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.18', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:11', '2019-06-17 20:08:11', null, '2088412458494104_99.18', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591968072118272', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.17', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:11', '2019-06-17 20:08:11', null, '2088412458494104_99.17', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591995351871488', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.16', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:18', '2019-06-17 20:08:18', null, '2088412458494104_99.16', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591995960045568', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.15', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:18', '2019-06-17 20:08:18', null, '2088412458494104_99.15', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140591996589191168', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.14', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:18', '2019-06-17 20:08:18', null, '2088412458494104_99.14', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140592005053296640', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.13', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:20', '2019-06-17 20:08:20', null, '2088412458494104_99.13', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140592032668594176', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.12', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:26', '2019-06-17 20:08:26', null, '2088412458494104_99.12', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140592066852171776', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.11', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:08:35', '2019-06-17 20:08:35', null, '2088412458494104_99.11', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140594190575087616', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.10', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:17:01', '2019-06-17 20:17:01', null, '2088412458494104_99.10', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140596985034321920', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.09', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:28:07', '2019-06-17 20:28:07', null, '2088412458494104_99.09', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140601119254917120', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.08', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:44:33', '2019-06-17 20:44:33', null, '2088412458494104_99.08', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140601318362722304', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.07', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:45:20', '2019-06-17 20:45:20', null, '2088412458494104_99.07', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140601335039275008', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.06', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:45:24', '2019-06-17 20:45:24', null, '2088412458494104_99.06', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140604588569276416', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.05', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:58:20', '2019-06-17 20:58:20', null, '2088412458494104_99.05', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140604720689852416', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.04', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 20:58:51', '2019-06-17 20:58:51', null, '2088412458494104_99.04', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140608320476426240', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.03', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 21:13:10', '2019-06-17 21:13:10', null, '2088412458494104_99.03', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140608487854321664', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.02', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 21:13:50', '2019-06-17 21:13:50', null, '2088412458494104_99.02', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140608923265019904', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.01', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 21:15:33', '2019-06-17 21:15:33', null, '2088412458494104_99.01', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140611204672794624', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '99.00', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 21:24:37', '2019-06-17 21:24:37', null, '2088412458494104_99.00', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140614134893260800', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '98.99', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 21:36:16', '2019-06-17 21:36:16', null, '2088412458494104_98.99', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140614166363123712', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '98.98', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 21:36:24', '2019-06-17 21:36:24', null, '2088412458494104_98.98', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140614170511290368', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '98.97', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 21:36:24', '2019-06-17 21:36:24', null, '2088412458494104_98.97', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140614173996756992', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '98.96', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 21:36:25', '2019-06-17 21:36:25', null, '2088412458494104_98.96', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140614176475590656', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '98.95', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 21:36:26', '2019-06-17 21:36:26', null, '2088412458494104_98.95', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140614177788407808', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '98.94', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 21:36:26', '2019-06-17 21:36:26', null, '2088412458494104_98.94', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140614178660823040', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '98.93', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 21:36:26', '2019-06-17 21:36:26', null, '2088412458494104_98.93', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140614179432574976', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '98.92', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 21:36:27', '2019-06-17 21:36:27', null, '2088412458494104_98.92', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140614180195938304', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '98.91', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 21:36:27', '2019-06-17 21:36:27', null, '2088412458494104_98.91', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140614180971884544', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '98.90', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 21:36:27', '2019-06-17 21:36:27', null, '2088412458494104_98.90', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140614181810745344', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '98.89', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 21:36:27', '2019-06-17 21:36:27', null, '2088412458494104_98.89', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140614182750269440', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '98.88', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 21:36:27', '2019-06-17 21:36:27', null, '2088412458494104_98.88', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140614681373323264', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '98.87', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 21:38:26', '2019-06-17 21:38:26', null, '2088412458494104_98.87', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140616705355689984', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '98.86', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 21:46:29', '2019-06-17 21:46:29', null, '2088412458494104_98.86', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140618410218631168', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '98.85', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 21:53:15', '2019-06-17 21:53:15', null, '2088412458494104_98.85', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140618490342420480', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '98.84', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 21:53:34', '2019-06-17 21:53:34', null, '2088412458494104_98.84', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140619554357653504', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '98.83', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 21:57:48', '2019-06-17 21:57:48', null, '2088412458494104_98.83', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140623174914420736', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '98.82', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 22:12:11', '2019-06-17 22:12:11', null, '2088412458494104_98.82', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140623382251450368', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '98.81', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 22:13:01', '2019-06-17 22:13:01', null, '2088412458494104_98.81', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140623529454743552', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '98.80', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 22:13:36', '2019-06-17 22:13:36', null, '2088412458494104_98.80', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140626629720682496', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '98.79', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 22:25:55', '2019-06-17 22:25:55', null, '2088412458494104_98.79', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140626687975370752', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '98.78', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 22:26:09', '2019-06-17 22:26:09', null, '2088412458494104_98.78', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140628565492641792', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '98.77', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 22:33:37', '2019-06-17 22:33:37', null, '2088412458494104_98.77', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140632729270497280', '1134868018363813888', '123', '热干面一碗', '1111', '12.00', '12.00', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 22:50:09', '2019-06-17 22:50:09', null, '2088412458494104_12.00', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140632978642841600', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '98.76', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 22:51:09', '2019-06-17 22:51:09', null, '2088412458494104_98.76', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140632980215705600', '1134868018363813888', '123', '热干面一碗', '1111', '123.00', '123.00', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 22:51:09', '2019-06-17 22:51:09', null, '2088412458494104_123.00', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140632993331294208', '1134868018363813888', '123', '热干面一碗', '1111', '123.00', '122.99', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 22:51:12', '2019-06-17 22:51:12', null, '2088412458494104_122.99', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140633031709175808', '1134868018363813888', '123', '热干面一碗', '1111', '144.00', '144.00', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 22:51:21', '2019-06-17 22:51:21', null, '2088412458494104_144.00', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140633052907188224', '1134868018363813888', '123', '热干面一碗123', '1111', '100.00', '98.75', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 22:51:26', '2019-06-17 22:51:26', null, '2088412458494104_98.75', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140633060821839872', '1134868018363813888', '123', '热干面一碗123', '1111', '100.00', '98.74', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 22:51:28', '2019-06-17 22:51:28', null, '2088412458494104_98.74', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140633322852593664', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '98.73', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 22:52:31', '2019-06-17 22:52:31', null, '2088412458494104_98.73', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140633354246959104', '1134868018363813888', '123', '热干面一碗', '1111', '1000.00', '1000.00', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 22:52:38', '2019-06-17 22:52:38', null, '2088412458494104_1000.00', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140633373242961920', '1134868018363813888', '123', '热干面一碗', '1111', '1000.00', '999.99', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 22:52:43', '2019-06-17 22:52:43', null, '2088412458494104_999.99', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140633590981865472', '1134868018363813888', '123', '热干面一碗', '1111', '106.00', '106.00', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 22:53:35', '2019-06-17 22:53:35', null, '2088412458494104_106.00', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140642471833382912', '1134868018363813888', '123', '热干面一碗', '1111', '1.00', '1.00', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 23:28:52', '2019-06-17 23:28:52', null, '2088412458494104_1.00', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140642665270489088', '1134868018363813888', '123', '热干面一碗', '1111', '1.00', '0.99', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 23:29:38', '2019-06-17 23:29:38', null, '2088412458494104_0.99', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140644802910105600', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '98.72', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-17 23:38:08', '2019-06-17 23:38:08', null, '2088412458494104_98.72', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140651264570961920', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '98.71', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-18 00:03:48', '2019-06-18 00:03:48', null, '2088412458494104_98.71', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140655789243510784', '1134868018363813888', '123', '热干面一碗', '1111', '1.00', '0.98', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-18 00:21:47', '2019-06-18 00:21:47', null, '2088412458494104_0.98', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140661925287964672', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '98.70', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-18 00:46:10', '2019-06-18 00:46:10', null, '2088412458494104_98.70', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140682025709744128', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '100.00', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-18 02:06:02', '2019-06-18 02:06:02', null, '2088412458494104_100.00', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140697392104484864', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '100.00', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-18 03:07:06', '2019-06-18 03:07:06', null, '2088412458494104_100.00', '2088412458494104');
INSERT INTO `nb_order` VALUES ('1140784733225627648', '1134868018363813888', '123', '热干面一碗', '1111', '100.00', '100.00', '/nbpay/a/demo/getway', '0', 'alipay', '2019-06-18 08:54:10', '2019-06-18 08:54:10', null, '2088412458494104_100.00', '2088412458494104');

-- ----------------------------
-- Table structure for test_data
-- ----------------------------
DROP TABLE IF EXISTS `test_data`;
CREATE TABLE `test_data` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `test_input` varchar(200) DEFAULT NULL COMMENT '单行文本',
  `test_textarea` varchar(200) DEFAULT NULL COMMENT '多行文本',
  `test_select` varchar(10) DEFAULT NULL COMMENT '下拉框',
  `test_select_multiple` varchar(200) DEFAULT NULL COMMENT '下拉多选',
  `test_radio` varchar(10) DEFAULT NULL COMMENT '单选框',
  `test_checkbox` varchar(200) DEFAULT NULL COMMENT '复选框',
  `test_date` datetime DEFAULT NULL COMMENT '日期选择',
  `test_datetime` datetime DEFAULT NULL COMMENT '日期时间',
  `test_user_code` varchar(64) DEFAULT NULL COMMENT '用户选择',
  `test_office_code` varchar(64) DEFAULT NULL COMMENT '机构选择',
  `test_area_code` varchar(64) DEFAULT NULL COMMENT '区域选择',
  `test_area_name` varchar(100) DEFAULT NULL COMMENT '区域名称',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='测试数据';

-- ----------------------------
-- Records of test_data
-- ----------------------------

-- ----------------------------
-- Table structure for test_data_child
-- ----------------------------
DROP TABLE IF EXISTS `test_data_child`;
CREATE TABLE `test_data_child` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `test_sort` int(11) DEFAULT NULL COMMENT '排序号',
  `test_data_id` varchar(64) DEFAULT NULL COMMENT '父表主键',
  `test_input` varchar(200) DEFAULT NULL COMMENT '单行文本',
  `test_textarea` varchar(200) DEFAULT NULL COMMENT '多行文本',
  `test_select` varchar(10) DEFAULT NULL COMMENT '下拉框',
  `test_select_multiple` varchar(200) DEFAULT NULL COMMENT '下拉多选',
  `test_radio` varchar(10) DEFAULT NULL COMMENT '单选框',
  `test_checkbox` varchar(200) DEFAULT NULL COMMENT '复选框',
  `test_date` datetime DEFAULT NULL COMMENT '日期选择',
  `test_datetime` datetime DEFAULT NULL COMMENT '日期时间',
  `test_user_code` varchar(64) DEFAULT NULL COMMENT '用户选择',
  `test_office_code` varchar(64) DEFAULT NULL COMMENT '机构选择',
  `test_area_code` varchar(64) DEFAULT NULL COMMENT '区域选择',
  `test_area_name` varchar(100) DEFAULT NULL COMMENT '区域名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='测试数据子表';

-- ----------------------------
-- Records of test_data_child
-- ----------------------------

-- ----------------------------
-- Table structure for test_tree
-- ----------------------------
DROP TABLE IF EXISTS `test_tree`;
CREATE TABLE `test_tree` (
  `tree_code` varchar(64) NOT NULL COMMENT '节点编码',
  `parent_code` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_codes` varchar(1000) NOT NULL COMMENT '所有父级编号',
  `tree_sort` decimal(10,0) NOT NULL COMMENT '本级排序号（升序）',
  `tree_sorts` varchar(1000) NOT NULL COMMENT '所有级别排序号',
  `tree_leaf` char(1) NOT NULL COMMENT '是否最末级',
  `tree_level` decimal(4,0) NOT NULL COMMENT '层次级别',
  `tree_names` varchar(1000) NOT NULL COMMENT '全节点名',
  `tree_name` varchar(200) NOT NULL COMMENT '节点名称',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`tree_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='测试树表';

-- ----------------------------
-- Records of test_tree
-- ----------------------------
