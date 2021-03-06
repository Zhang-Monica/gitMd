## 1、接口描述  
服务接口：(CreateMeterPoint)添加计量点信息  
接口描述：添加计量点信息  
请求说明：POST https://api.epeis.com/Service/v1/CreateMeterPoint/  
  
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
	"SETTLE_METERAGE":	[{
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
~~~  
#### 2.2、请求参数说明  
参数：SYS_HEAD，类型：object  
  
| 参数 | 必选 | 类型 | 长度 | 精度 | 描述 |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| CHANNEL_DID | 是 | String | 16 | 0 | 16字符渠道号，请与平台运营服务中心联系 |  
| DYNAMIC_KEY | 是 | String | 64 | 0 | 动态请求密钥，请与平台运营服务中心联系 |  
| REGISTER_DID      |  是  | String   | 16 | 0 | 16位注册ID，必须实名 |  
| ACCOUNT_DID       |  是  | String   | 16 | 0 | 16位账户ID，必须激活 |  
  
参数：SETTLE_METERAGE，类型：Array  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| ADDRESS |  是  | String   | 128 | 0 | 详细地址 |  
| BOOK_AID |  是  | String   | 16 | 0 | 抄表区段编号 |  
| NODE_AID |  是  | String   | 16 | 0 | 管网节点ID |  
| NETWORK_TYPE |  是  | String   | 2 | 0 | 管网类型 |  
| METER_YESNO |  是  | String   | 2 | 0 | 是否有表 |  
| DEVICE_DID |  是  | String   | 16 | 0 | 装置ID |  
| REAL_ESTATE_AID |  是  | String   | 16 | 0 | 不动产ID |  
| NETWORK_CO_DID |  是  | String   | 16 | 0 | 管网公司编码 |  
| NET_STORES_AID |  是  | String   | 16 | 0 | 管网公司营业网点ID |  
| RETAIL_CO_DID |  是  | String   | 16 | 0 | 销售公司编码 |  
| RET_STORES_AID |  是  | String   | 16 | 0 | 销售公司营业网点ID |  
| ASSESS_YESNO |  是  | String   | 2 | 0 | 是否考核 |  
| PURCHASE_SALE_TYPE |  是  | String   | 2 | 0 | 购售类型 |  
| ENERGY_LOAD |  是  | Number   | 14 | 2 | 用能负荷 |  
| ACCOUNT_ITEM_INFO |  是  | String   | 64 | 0 | 会计科目编码 |  
| AGREE_PRICE_YESNO |  是  | String   | 2 | 0 | 是否协议价 |  
| STOP_EMPTY_YESNO |  是  | String   | 2 | 0 | 是否停/空 |  
| OUTAGE_VACANCY_DATE |  是  | Number   | 8 | 0 | 停供/空置日期 |  
| RESUPPLY_DATE |  是  | Number   | 8 | 0 | 复供日期 |  
| SETTLEMENT_DATE_TYPE |  是  | String   | 2 | 0 | 结算出账例日 |  
| MAIN_PACK_DID |  是  | String   | 16 | 0 | 主套餐号 |  
| TEMP_PACK_DID |  是  | String   | 16 | 0 | 临时套餐号 |  
| TMP_MONTHS |  是  | Number   | 4 | 0 | 临时月数 |  
| BASIC_FEES_TYPE |  是  | String   | 2 | 0 | 基本费计费类型 |  
| LOAD_CAPACITY |  是  | Number   | 14 | 2 | 计费负荷容量 |  
| METER_DEMAND_RATE |  是  | Number   | 14 | 2 | 计费表计需量倍率 |  
| MAX_DEMAND_APPR |  是  | Number   | 14 | 2 | 最大需量核定值 |  
| COMP_DEVIATION_YESNO |  是  | String   | 2 | 0 | 是否计算核定偏差 |  
| FOR_RATE_VALID_TYPE |  是  | String   | 2 | 0 | 力率考核类型 |  
| ABUND_WITHER_YESNO |  是  | String   | 2 | 0 | 是否丰枯 |  
| TIME_FEES_TYPE |  是  | String   | 2 | 0 | 分时计费类型 |  
| LADDER_TYPE |  是  | String   | 2 | 0 | 阶梯类型 |  
| HEAT_CHARGE_TYPE |  是  | String   | 2 | 0 | 暖气计费类型 |  
| GARB_CHAEGE_TYPE |  是  | String   | 2 | 0 | 垃圾计费类型 |  
| FIXED_CHARGE |  是  | Number   | 14 | 2 | 计费固定量 |  
| FIXED_FEE |  是  | Number   | 14 | 2 | 计费固定费 |  
| DIVI_FIXED_CHARGE |  否  | Number   | 14 | 2 | 分摊用量 |  
| MET_DIVID_RATIO |  否  | Number   | 8 | 4 | 分摊比例 |  
| FLOOR_NUM |  是  | Number   | 4 | 0 | 所在楼层层数 |  
| FLOOR_HEIGHT |  是  | Number   | 5 | 2 | 所在楼层层高 |  
| CHARGE_AREA_FACTOR |  是  | Number   | 8 | 4 | 计费面积系数 |  
| ACTUAL_AREA |  是  | Number   | 14 | 2 | 计费实有面积 |  
| CHARGE_POPULATION |  是  | Number   | 4 | 0 | 计费人口数 |  
| CHARGE_HOUSEHOLDS |  是  | Number   | 4 | 0 | 计费户数 |  
  
说明：结算计量点  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
	}
}  
~~~  
#### 3.2、响应参数说明  
  
| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| CODE | 是 | Number | 响应代码，0为成功 |  
| MESSAGE | 是 | String | 响应信息 |  
| DATA | 是 | Object | 响应数据 |  
  
参数：DATA，类型：object 本服务接口无响应数据！  
## 4、服务接口说明  
说明：无  
