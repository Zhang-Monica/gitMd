## 1、接口描述  
服务接口：(QueryVerifiedUserAndSettles)查询已归档用户结算户  
接口描述：查询已归档用户结算户  
请求说明：POST https://api.epeis.com/Service/v1/QueryVerifiedUserAndSettles/  
  
## 2、服务接口请求参数  
#### 2.1、请求参数报文示例  
~~~  
{
	"SYS_HEAD":	{
		"CHANNEL_DID":	"",
		"DYNAMIC_KEY":	"",
		"REGISTER_DID":	"",
		"ACCOUNT_DID":	""
	},
	"SYS_PAGE":	{
		"PAGE_NO":	1,
		"PAGE_ROWS":	8
	},
	"CUS_ACCOUNT":	[{
			"CERTIFICATES_INFO":	"",
			"MOBILE_PHONE_INFO":	"",
			"ACC_CERT_INFO":	"",
			"CUSTOMER_NAME":	"",
			"ADDRESS":	""
		}]
}  
~~~  
#### 2.2、请求参数说明  
参数：SYS_HEAD，类型：object  
  
| 参数 | 必选 | 类型 | 长度 | 精度 | 描述 |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| CHANNEL_DID | 是 | String | 16 | 0 | 16字符渠道号，请与平台运营服务中心联系 |  
| DYNAMIC_KEY | 是 | String | 64 | 0 | 动态请求密钥，请与平台运营服务中心联系 |  
| REGISTER_DID      |  是  | String   | 16 | 0 | 16位注册ID，必须实名 |  
| ACCOUNT_DID       |  是  | String   | 16 | 0 | 16位账户ID，必须激活 |  
  
参数：SYS_PAGE，类型：object  
  
| 参数 | 必选 | 类型 | 长度 | 精度 | 描述 |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| PAGE_NO       |  是  | Number   | 4 | 0 | 第几页，必须大于“0” |  
| PAGE_ROWS     |  是  | Number   | 4 | 0 | 每页行数，必须大于“0” |  
  
参数：CUS_ACCOUNT，类型：Array  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| CERTIFICATES_INFO |  否  | String   | 20 | 0 | 证件号码 |  
| MOBILE_PHONE_INFO |  否  | String   | 20 | 0 | 手机号码 |  
| ACC_CERT_INFO |  否  | String   | 20 | 0 | 账户证件号码 |  
| CUSTOMER_NAME |  否  | String   | 256 | 0 | 客户名称 |  
| ADDRESS |  否  | String   | 128 | 0 | 用户地址 |  
  
说明：客户账户  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"SYS_PAGE":	{
			"PAGE_NO":	1,
			"PAGE_ROWS":	8,
			"NEXT_YESNO":	"2",
			"TOTAL":	1000
		},
		"USER_ACCOUNT":	[{
				"CUSTOMER_DID":	"",
				"USER_CUS_DID":	"",
				"USER_ACCOUNT_AID":	"",
				"USER_NAME":	"",
				"ADMIN_CODE_INFO":	"",
				"ADDRESS":	"",
				"ATTESTATION_TYPE":	"",
				"REAL_ESTATE_AID":	"",
				"RESIDENT_YESNO":	"",
				"MAP_NAME":	"",
				"X":	0,
				"Y":	0,
				"OWE_BALANCE":	0,
				"RISK_BALANCE":	0,
				"MARGIN_BALANCE":	0,
				"ADVANCE_LIMIT":	0
			}],
		"SETTLE_ACCOUNT":	[{
				"CUSTOMER_DID":	"",
				"CUSTOMER_DID_MC":	"",
				"USER_CUS_DID":	"",
				"USER_CUS_DID_MC":	"",
				"USER_ACCOUNT_AID":	"",
				"SETTLEMENT_AID":	"",
				"SETTLEMENT_NAME":	"",
				"NETWORK_TYPE":	"",
				"ADDRESS":	"",
				"OWE_BALANCE":	0,
				"ATTESTATION_TYPE":	"",
				"CONTROL_TYPE":	"",
				"SALE_CO_DIMENSION":	"",
				"INDUSTRY_CODE_INFO":	"",
				"INDUSTRY_TYPE":	"",
				"NETWORK_CO_DIMENSION":	"",
				"RESIDENT_YESNO":	"",
				"CITY_YESNO":	"",
				"ARMY_YESNO":	"",
				"TEMPORARY_YESNO":	"",
				"PUBLIC_USE_YESNO":	"",
				"CONNECT_MODE_TYPE":	"",
				"TALLY_CYCLE":	0,
				"LAST_CHECK_DATE":	0,
				"BUSI_PROC_DID":	"",
				"BUS_CATEG_TYPE":	"",
				"REMARK_INS":	"",
				"SIGN_CONTRACT_YESNO":	"",
				"CONTRACT_NUM":	"",
				"CON_DEADLINE_DATE":	0
			}],
		"SETTLE_METERAGE":	[{
				"SETTLEMENT_AID":	"",
				"ADDRESS":	"",
				"BOOK_AID":	"",
				"NODE_AID":	"",
				"NETWORK_TYPE":	"",
				"METER_YESNO":	"",
				"DEVICE_DID":	"",
				"REAL_ESTATE_AID":	"",
				"NETWORK_CO_DID":	"",
				"NET_STORES_AID":	"",
				"RETAIL_CO_DID":	"",
				"RET_STORES_AID":	"",
				"ASSESS_YESNO":	"",
				"PURCHASE_SALE_TYPE":	"",
				"ENERGY_LOAD":	0,
				"ACCOUNT_ITEM_INFO":	"",
				"AGREE_PRICE_YESNO":	"",
				"STOP_EMPTY_YESNO":	"",
				"OUTAGE_VACANCY_DATE":	0,
				"RESUPPLY_DATE":	0,
				"SETTLEMENT_DATE_TYPE":	"",
				"MAIN_PACK_DID":	"",
				"TEMP_PACK_DID":	"",
				"TMP_MONTHS":	0,
				"BASIC_FEES_TYPE":	"",
				"LOAD_CAPACITY":	0,
				"METER_DEMAND_RATE":	0,
				"MAX_DEMAND_APPR":	0,
				"COMP_DEVIATION_YESNO":	"",
				"FOR_RATE_VALID_TYPE":	"",
				"ABUND_WITHER_YESNO":	"",
				"TIME_FEES_TYPE":	"",
				"LADDER_TYPE":	"",
				"LADDER_LEVEL_TYPE":	"",
				"HEAT_CHARGE_TYPE":	"",
				"GARB_CHAEGE_TYPE":	"",
				"FIXED_CHARGE":	0,
				"FIXED_FEE":	0,
				"DIVI_FIXED_CHARGE":	0,
				"MET_DIVID_RATIO":	0,
				"FLOOR_NUM":	0,
				"FLOOR_HEIGHT":	0,
				"CHARGE_AREA_FACTOR":	0,
				"ACTUAL_AREA":	0,
				"CHARGE_POPULATION":	0,
				"CHARGE_HOUSEHOLDS":	0
			}]
	}
}  
~~~  
#### 3.2、响应参数说明  
  
| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| CODE | 是 | Number | 响应代码，0为成功 |  
| MESSAGE | 是 | String | 响应信息 |  
| DATA | 是 | Object | 响应数据 |  
  
参数：DATA，类型：object 本服务接口响应数据说明如下：  
  
参数：SYS_PAGE，类型：object  
  
| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| PAGE_NO       |  是  | Number   | 第几页 |  
| PAGE_ROWS     |  是  | Number   | 每页行数 |  
| NEXT_YESNO    |  是  | String   | 是否有下页，1-无，2-有 |  
| TOTAL         |  是  | Number   | 总行数 |  
  
参数：USER_ACCOUNT，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| CUSTOMER_DID |  是  | String   | 客户账户ID |  
| USER_CUS_DID |  是  | String   | 用户内部ID |  
| USER_ACCOUNT_AID |  是  | String   | 用户账户ID |  
| USER_NAME |  是  | String   | 用户名称 |  
| ADMIN_CODE_INFO |  是  | String   | 行政区划 |  
| ADDRESS |  是  | String   | 详细地址 |  
| ATTESTATION_TYPE |  是  | String   | 用户认证类型：1-未认证；2-审核中；3-已认证 |  
| REAL_ESTATE_AID |  是  | String   | 不动产ID |  
| RESIDENT_YESNO |  是  | String   | 是否居民：1-否；2-是 |  
| MAP_NAME |  是  | String   | 地图坐标名称 |  
| X |  是  | Number   | X坐标 |  
| Y |  是  | Number   | Y坐标 |  
| OWE_BALANCE |  是  | Number   | 欠费余额 |  
| RISK_BALANCE |  是  | Number   | 风险金余额 |  
| MARGIN_BALANCE |  是  | Number   | 保证金余额 |  
| ADVANCE_LIMIT |  是  | Number   | 预付限额 |  
  
说明：用户信息  
参数：SETTLE_ACCOUNT，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| CUSTOMER_DID |  是  | String   | 客户账户ID |  
| CUSTOMER_DID_MC |  是  | String   | 客户账户名称 |  
| USER_CUS_DID |  是  | String   | 使用者客户ID |  
| USER_CUS_DID_MC |  是  | String   | 使用者客户名称 |  
| USER_ACCOUNT_AID |  是  | String   | 用户账户ID |  
| SETTLEMENT_AID |  是  | String   | 结算账户ID |  
| SETTLEMENT_NAME |  是  | String   | 结算户姓名 |  
| NETWORK_TYPE |  是  | String   | 管网类型：1-水；2-电；3-气；4-热；5-冷；6-物业；7-房屋租赁 |  
| ADDRESS |  是  | String   | 结算信息地址 |  
| OWE_BALANCE |  是  | Number   | 欠费 |  
| ATTESTATION_TYPE |  是  | String   | 用户认证类型：1-未认证；2-审核中；3-已认证 |  
| CONTROL_TYPE |  是  | String   | 量控费控类型：1-量控；2-费控 |  
| SALE_CO_DIMENSION |  是  | String   | 销售公司统计维度 |  
| INDUSTRY_CODE_INFO |  是  | String   | 行业分类 |  
| INDUSTRY_TYPE |  是  | String   | 产业分类：1-第一产业；2-第二产业；3-第三产业 |  
| NETWORK_CO_DIMENSION |  是  | String   | 管网公司统计维度 |  
| RESIDENT_YESNO |  是  | String   | 是否居民：1-否；2-是 |  
| CITY_YESNO |  是  | String   | 是否城市：1-否；2-是 |  
| ARMY_YESNO |  是  | String   | 是否军工：1-否；2-是 |  
| TEMPORARY_YESNO |  是  | String   | 是否临时：1-否；2-是 |  
| PUBLIC_USE_YESNO |  是  | String   | 是否公用：1-否；2-是 |  
| CONNECT_MODE_TYPE |  是  | String   | 接线类型：1-A相；2-B相；3-C相；4-三相三线；5-三相四线 |  
| TALLY_CYCLE |  是  | Number   | 点检周期 |  
| LAST_CHECK_DATE |  是  | Number   | 上次检查日期 |  
| BUSI_PROC_DID |  是  | String   | 业务办理编码 |  
| BUS_CATEG_TYPE |  是  | String   | 业务类别：1-新装；2-变更不结费；10-过户；11-变更结费；12-销户；13-特殊追补 |  
| REMARK_INS |  是  | String   | 备注说明 |  
| SIGN_CONTRACT_YESNO |  是  | String   | 是否签订合同：1-否；2-是 |  
| CONTRACT_NUM |  是  | String   | 合同编号 |  
| CON_DEADLINE_DATE |  是  | Number   | 合同期限 |  
  
说明：结算信息  
参数：SETTLE_METERAGE，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| SETTLEMENT_AID |  是  | String   | 结算户ID |  
| ADDRESS |  是  | String   | 详细地址 |  
| BOOK_AID |  是  | String   | 抄表区段编号 |  
| NODE_AID |  是  | String   | 管网节点ID |  
| NETWORK_TYPE |  是  | String   | 管网类型 |  
| METER_YESNO |  是  | String   | 是否有表 |  
| DEVICE_DID |  是  | String   | 装置ID |  
| REAL_ESTATE_AID |  是  | String   | 不动产ID |  
| NETWORK_CO_DID |  是  | String   | 管网公司编码 |  
| NET_STORES_AID |  是  | String   | 管网公司营业网点ID |  
| RETAIL_CO_DID |  是  | String   | 销售公司编码 |  
| RET_STORES_AID |  是  | String   | 销售公司营业网点ID |  
| ASSESS_YESNO |  是  | String   | 是否考核 |  
| PURCHASE_SALE_TYPE |  是  | String   | 购售类型 |  
| ENERGY_LOAD |  是  | Number   | 用能负荷 |  
| ACCOUNT_ITEM_INFO |  是  | String   | 会计科目编码 |  
| AGREE_PRICE_YESNO |  是  | String   | 是否协议价 |  
| STOP_EMPTY_YESNO |  是  | String   | 是否停/空 |  
| OUTAGE_VACANCY_DATE |  是  | Number   | 停供/空置日期 |  
| RESUPPLY_DATE |  是  | Number   | 复供日期 |  
| SETTLEMENT_DATE_TYPE |  是  | String   | 结算出账例日 |  
| MAIN_PACK_DID |  是  | String   | 主套餐号 |  
| TEMP_PACK_DID |  是  | String   | 临时套餐号 |  
| TMP_MONTHS |  是  | Number   | 临时月数 |  
| BASIC_FEES_TYPE |  是  | String   | 基本费计费类型 |  
| LOAD_CAPACITY |  是  | Number   | 计费负荷容量 |  
| METER_DEMAND_RATE |  是  | Number   | 计费表计需量倍率 |  
| MAX_DEMAND_APPR |  是  | Number   | 最大需量核定值 |  
| COMP_DEVIATION_YESNO |  是  | String   | 是否计算核定偏差 |  
| FOR_RATE_VALID_TYPE |  是  | String   | 力率考核类型 |  
| ABUND_WITHER_YESNO |  是  | String   | 是否丰枯 |  
| TIME_FEES_TYPE |  是  | String   | 分时计费类型 |  
| LADDER_TYPE |  是  | String   | 阶梯类型 |  
| LADDER_LEVEL_TYPE |  是  | String   | 阶梯级次类型 |  
| HEAT_CHARGE_TYPE |  是  | String   | 暖气计费类型 |  
| GARB_CHAEGE_TYPE |  是  | String   | 垃圾计费类型 |  
| FIXED_CHARGE |  是  | Number   | 计费固定量 |  
| FIXED_FEE |  是  | Number   | 计费固定费 |  
| DIVI_FIXED_CHARGE |  是  | Number   | 分摊用量 |  
| MET_DIVID_RATIO |  是  | Number   | 分摊比例 |  
| FLOOR_NUM |  是  | Number   | 所在楼层层数 |  
| FLOOR_HEIGHT |  是  | Number   | 所在楼层层高 |  
| CHARGE_AREA_FACTOR |  是  | Number   | 计费面积系数 |  
| ACTUAL_AREA |  是  | Number   | 计费实有面积 |  
| CHARGE_POPULATION |  是  | Number   | 计费人口数 |  
| CHARGE_HOUSEHOLDS |  是  | Number   | 计费户数 |  
  
说明：结算计量点  
## 4、服务接口说明  
说明：无  
