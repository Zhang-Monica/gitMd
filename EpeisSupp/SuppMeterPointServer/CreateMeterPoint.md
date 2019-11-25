## 1、接口描述  
服务接口：(CreateMeterPoint)添加计量点信息  
接口描述：xxxxx  
请求说明：POST https://api.epeis.com/Service/v1/CreateMeterPoint  
  
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
			"NETWORK_CO_DID":	"",
			"NET_STORES_AID":	"",
			"RETAIL_CO_DID":	"",
			"RET_STORES_AID":	"",
			"ASSESS_YESNO":	"",
			"PURCHASE_SALE_TYPE":	"",
			"ENERGY_LOAD":	0,
			"ACCOUNT_ITEM_INFO":	"",
			"AGREE_PRICE_YESNO":	"",
			"PROTOCOL_DID":	"",
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
| ADDRESS |  是  | String   | 128 | 0 | xxxxx |  
| BOOK_AID |  是  | String   | 16 | 0 | xxxxx |  
| NODE_AID |  是  | String   | 16 | 0 | xxxxx |  
| NETWORK_TYPE |  是  | String   | 2 | 0 | xxxxx |  
| METER_YESNO |  是  | String   | 2 | 0 | xxxxx |  
| DEVICE_DID |  是  | String   | 16 | 0 | xxxxx |  
| NETWORK_CO_DID |  是  | String   | 16 | 0 | xxxxx |  
| NET_STORES_AID |  是  | String   | 16 | 0 | xxxxx |  
| RETAIL_CO_DID |  是  | String   | 16 | 0 | xxxxx |  
| RET_STORES_AID |  是  | String   | 16 | 0 | xxxxx |  
| ASSESS_YESNO |  是  | String   | 2 | 0 | xxxxx |  
| PURCHASE_SALE_TYPE |  是  | String   | 2 | 0 | xxxxx |  
| ENERGY_LOAD |  是  | Number   | 14 | 2 | xxxxx |  
| ACCOUNT_ITEM_INFO |  是  | String   | 64 | 0 | xxxxx |  
| AGREE_PRICE_YESNO |  是  | String   | 2 | 0 | xxxxx |  
| PROTOCOL_DID |  是  | String   | 16 | 0 | xxxxx |  
| STOP_EMPTY_YESNO |  是  | String   | 2 | 0 | xxxxx |  
| OUTAGE_VACANCY_DATE |  是  | Number   | 8 | 0 | xxxxx |  
| RESUPPLY_DATE |  是  | Number   | 8 | 0 | xxxxx |  
| SETTLEMENT_DATE_TYPE |  是  | String   | 2 | 0 | xxxxx |  
| MAIN_PACK_DID |  是  | String   | 16 | 0 | xxxxx |  
| TEMP_PACK_DID |  是  | String   | 16 | 0 | xxxxx |  
| TMP_MONTHS |  是  | Number   | 4 | 0 | xxxxx |  
| BASIC_FEES_TYPE |  是  | String   | 2 | 0 | xxxxx |  
| LOAD_CAPACITY |  是  | Number   | 14 | 2 | xxxxx |  
| METER_DEMAND_RATE |  是  | Number   | 14 | 2 | xxxxx |  
| MAX_DEMAND_APPR |  是  | Number   | 14 | 2 | xxxxx |  
| COMP_DEVIATION_YESNO |  是  | String   | 2 | 0 | xxxxx |  
| FOR_RATE_VALID_TYPE |  是  | String   | 2 | 0 | xxxxx |  
| ABUND_WITHER_YESNO |  是  | String   | 2 | 0 | xxxxx |  
| TIME_FEES_TYPE |  是  | String   | 2 | 0 | xxxxx |  
| LADDER_TYPE |  是  | String   | 2 | 0 | xxxxx |  
| LADDER_LEVEL_TYPE |  是  | String   | 2 | 0 | xxxxx |  
| FIXED_CHARGE |  是  | Number   | 14 | 2 | xxxxx |  
| FIXED_FEE |  是  | Number   | 14 | 2 | xxxxx |  
| DIVI_FIXED_CHARGE |  否  | Number   | 14 | 2 | xxxxx |  
| MET_DIVID_RATIO |  否  | Number   | 8 | 4 | xxxxx |  
| FLOOR_NUM |  是  | Number   | 4 | 0 | xxxxx |  
| FLOOR_HEIGHT |  是  | Number   | 5 | 2 | xxxxx |  
| CHARGE_AREA_FACTOR |  是  | Number   | 8 | 4 | xxxxx |  
| ACTUAL_AREA |  是  | Number   | 14 | 2 | xxxxx |  
| CHARGE_POPULATION |  是  | Number   | 4 | 0 | xxxxx |  
| CHARGE_HOUSEHOLDS |  是  | Number   | 4 | 0 | xxxxx |  
  
说明：xxxxx  
  
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
说明：xxxxxxx  
