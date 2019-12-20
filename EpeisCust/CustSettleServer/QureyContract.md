## 1、接口描述  
服务接口：(QureyContract)查看合同  
接口描述：确认结算信息和用户信息后查看合同确认  
请求说明：POST https://api.epeis.com/Service/v1/QureyContract/  
  
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
	"SETTLE_ACCOUNT":	{
		"SETTLEMENT_AID":	""
	}
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
  
参数：SETTLE_ACCOUNT，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| SETTLEMENT_AID |  是  | String   | 16 | 0 | 结算账户ID |  
  
说明：结算信息  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"SETTLE_ACCOUNT":	{
			"CUSTOMER_DID":	"",
			"CUSTOMER_DID_MC":	"",
			"USER_CUS_DID":	"",
			"USER_CUS_DID_MC":	"",
			"USER_ACCOUNT_AID":	"",
			"SETTLEMENT_AID":	"",
			"SETTLEMENT_NAME":	"",
			"NETWORK_TYPE":	"",
			"OWE_BALANCE":	0,
			"ADDRESS":	"",
			"CONTROL_TYPE":	"",
			"INDUSTRY_CODE_INFO":	"",
			"INDUSTRY_TYPE":	"",
			"RESIDENT_YESNO":	"",
			"CITY_YESNO":	"",
			"ARMY_YESNO":	"",
			"TEMPORARY_YESNO":	"",
			"PUBLIC_USE_YESNO":	"",
			"CONNECT_MODE_TYPE":	"",
			"SIGN_CONTRACT_YESNO":	"",
			"CONTRACT_NUM":	"",
			"CON_DEADLINE_DATE":	0,
			"REMARK_INS":	""
		},
		"SETTLE_METERAGE":	{
			"SETTLEMENT_AID":	"",
			"ADDRESS":	"",
			"METER_YESNO":	"",
			"ASSESS_YESNO":	"",
			"PURCHASE_SALE_TYPE":	"",
			"ENERGY_LOAD":	0,
			"ACCOUNT_ITEM_INFO":	"",
			"AGREE_PRICE_YESNO":	"",
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
		},
		"COM_PACK":	{
			"CHARGE_PACK_DID":	"",
			"ADMIN_CODE_INFO":	"",
			"CHARGE_PACK_NAME":	"",
			"PACK_REMARK":	"",
			"NETWORK_CO_DID":	"",
			"NET_STORES_AID":	"",
			"RETAIL_CO_DID":	"",
			"RET_STORES_AID":	""
		}
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
  
参数：SETTLE_ACCOUNT，类型：object  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| CUSTOMER_DID |  否  | String   | 客户账户ID |  
| CUSTOMER_DID_MC |  否  | String   | 客户账户名称 |  
| USER_CUS_DID |  否  | String   | 使用者客户ID |  
| USER_CUS_DID_MC |  否  | String   | 使用者客户名称 |  
| USER_ACCOUNT_AID |  否  | String   | 用户账户ID |  
| SETTLEMENT_AID |  否  | String   | 结算账户ID |  
| SETTLEMENT_NAME |  否  | String   | 结算户姓名 |  
| NETWORK_TYPE |  否  | String   | 管网类型：1-水；2-电；3-气；4-热；5-冷；6-物业；7-房屋租赁 |  
| OWE_BALANCE |  否  | Number   | 欠费 |  
| ADDRESS |  否  | String   | 详细地址 |  
| CONTROL_TYPE |  否  | String   | 量控费控类型：1-量控；2-费控 |  
| INDUSTRY_CODE_INFO |  否  | String   | 行业分类 |  
| INDUSTRY_TYPE |  否  | String   | 产业分类，分类暂未划分 |  
| RESIDENT_YESNO |  否  | String   | 是否居民：1-否；2-是 |  
| CITY_YESNO |  否  | String   | 是否城市：1-否；2-是 |  
| ARMY_YESNO |  否  | String   | 是否竣工：1-否；2-是 |  
| TEMPORARY_YESNO |  否  | String   | 是否临时：1-否；2-是 |  
| PUBLIC_USE_YESNO |  否  | String   | 是否公用：1-否；2-是 |  
| CONNECT_MODE_TYPE |  否  | String   | 接线类型：1-A相；2-B相；3-C相；4-三相三线；5-三相四线 |  
| SIGN_CONTRACT_YESNO |  否  | String   | 是否签订合同：1-否；2-是 |  
| CONTRACT_NUM |  否  | String   | 合同编号 |  
| CON_DEADLINE_DATE |  否  | Number   | 合同期限 |  
| REMARK_INS |  否  | String   | 备注 |  
  
说明：结算信息  
参数：SETTLE_METERAGE，类型：object  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| SETTLEMENT_AID |  否  | String   | 结算账户ID |  
| ADDRESS |  否  | String   | 结算地址 |  
| METER_YESNO |  否  | String   | 是否有表：1-否；2-是 |  
| ASSESS_YESNO |  否  | String   | 是否考核：1-否；2-是 |  
| PURCHASE_SALE_TYPE |  否  | String   | 购售类型：1-直供；2-购入；3-趸售 |  
| ENERGY_LOAD |  否  | Number   | 用能负荷 |  
| ACCOUNT_ITEM_INFO |  否  | String   | 会计科目编码 |  
| AGREE_PRICE_YESNO |  否  | String   | 是否协议价：1-否；2-是 |  
| SETTLEMENT_DATE_TYPE |  否  | String   | 结算出账例日 |  
| MAIN_PACK_DID |  否  | String   | 主套餐号 |  
| TEMP_PACK_DID |  否  | String   | 临时套餐号 |  
| TMP_MONTHS |  否  | Number   | 临时月数 |  
| BASIC_FEES_TYPE |  否  | String   | 基本费计费类型：1-不计费；2-容量计费；3-需量计费 |  
| LOAD_CAPACITY |  否  | Number   | 计费负荷容量 |  
| METER_DEMAND_RATE |  否  | Number   | 计费表计需量倍率 |  
| MAX_DEMAND_APPR |  否  | Number   | 最大需量核定值 |  
| COMP_DEVIATION_YESNO |  否  | String   | 是否计算核定偏差：1-否；2-是 |  
| FOR_RATE_VALID_TYPE |  否  | String   | 力率考核类型：1-不考核；2-考核80；3-考核85；4-考核90 |  
| ABUND_WITHER_YESNO |  否  | String   | 是否丰枯：1-否；2-是 |  
| TIME_FEES_TYPE |  否  | String   | 分时计费类型：1-不分时；2-2分时；3-3分时；4-4分时；5-5分时 |  
| LADDER_TYPE |  否  | String   | 阶梯类型：1-年阶梯；2-月阶梯 |  
| FIXED_CHARGE |  否  | Number   | 计费固定量 |  
| FIXED_FEE |  否  | Number   | 计费固定费 |  
| DIVI_FIXED_CHARGE |  否  | Number   | 分摊用量 |  
| MET_DIVID_RATIO |  否  | Number   | 分摊比例 |  
| FLOOR_NUM |  否  | Number   | 所在楼层层数 |  
| FLOOR_HEIGHT |  否  | Number   | 所在楼层层高 |  
| CHARGE_AREA_FACTOR |  否  | Number   | 计费面积系数 |  
| ACTUAL_AREA |  否  | Number   | 计费实有面积 |  
| CHARGE_POPULATION |  否  | Number   | 计费人口数 |  
| CHARGE_HOUSEHOLDS |  否  | Number   | 计费户数 |  
  
说明：结算计量点  
参数：COM_PACK，类型：object  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| CHARGE_PACK_DID |  否  | String   | 计费套餐号 |  
| ADMIN_CODE_INFO |  否  | String   | 行政区划 |  
| CHARGE_PACK_NAME |  否  | String   | 套餐名称 |  
| PACK_REMARK |  否  | String   | 套餐备注说明 |  
| NETWORK_CO_DID |  否  | String   | 管网公司编码 |  
| NET_STORES_AID |  否  | String   | 管网公司营业网点ID |  
| RETAIL_CO_DID |  否  | String   | 销售公司编码 |  
| RET_STORES_AID |  否  | String   | 销售公司营业网点ID |  
  
说明：结算套餐  
## 4、服务接口说明  
说明：无  
