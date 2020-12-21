## 1、接口描述  
服务接口：(UpdateSalePackage)销售公司修改零售套餐  
接口描述：销售公司修改零售套餐  
请求说明：POST https://api.epeis.com/Service/v1/UpdateSalePackage/  
  
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
	"COM_SALES_PACK":	{
		"NETWORK_CO_DID":	"",
		"CHARGE_PACK_DID":	"",
		"CHARGE_PACK_NAME":	"",
		"PACK_REMARK":	"",
		"ACCOUNT_ITEM_INFO":	"",
		"NETWORK_TYPE":	"",
		"RESIDENT_YESNO":	"",
		"COMP_DEVIATION_YESNO":	"",
		"ABUND_WITHER_YESNO":	"",
		"AGREE_PRICE_YESNO":	"",
		"HEAT_CHARGE_TYPE":	"",
		"GARB_CHAEGE_TYPE":	"",
		"TIME_FEES_TYPE":	"",
		"LADDER_TYPE":	"",
		"LADDER_NUM_TYPE":	"",
		"CHARGE_POPULATION":	0,
		"ALLOW_CANCELL_YESNO":	"",
		"PROPERTY_LEVEL_TYPE":	"",
		"RETAIL_VOLTAGE_GRADE_TYPE":	"",
		"DELIVERY_PRICE_TYPE":	"",
		"POWERRANGE_YESNO":	"",
		"POWER_RANGE_TYPE":	"",
		"DIST_LEVEL_RANGE_TYPE":	"",
		"TRANS_VOLTAGE_TYPE":	"",
		"STARTUP_DATE":	0,
		"OUTAGE_DATE":	0
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
  
参数：COM_SALES_PACK，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| NETWORK_CO_DID |  是  | String   | 16 | 0 | 管网公司编码 |  
| CHARGE_PACK_DID |  是  | String   | 16 | 0 | 计费套餐号 |  
| CHARGE_PACK_NAME |  是  | String   | 64 | 0 | 套餐名称 |  
| PACK_REMARK |  是  | String   | 1024 | 0 | 套餐备注说明 |  
| ACCOUNT_ITEM_INFO |  是  | String   | 64 | 0 | 会计科目编码 |  
| NETWORK_TYPE |  是  | String   | 2 | 0 | 1-水，2-电，3-气，4-热，5-冷，6-物业，7-房屋租赁 |  
| RESIDENT_YESNO |  是  | String   | 2 | 0 | 是否居民：1-否，2-是 |  
| COMP_DEVIATION_YESNO |  是  | String   | 2 | 0 | 是否计算核定偏差：1-否，2-是 |  
| ABUND_WITHER_YESNO |  否  | String   | 2 | 0 | 是否分枯：1-否，2-是 |  
| AGREE_PRICE_YESNO |  否  | String   | 2 | 0 | 是否协议价：1-否，2-是 |  
| HEAT_CHARGE_TYPE |  否  | String   | 2 | 0 | 暖气计费类型 |  
| GARB_CHAEGE_TYPE |  否  | String   | 2 | 0 | 物业计费类型 |  
| TIME_FEES_TYPE |  否  | String   | 2 | 0 | 分时计费类型：1-不分时,2-2分时,3-3分时,4-4分时,5-5分时 |  
| LADDER_TYPE |  否  | String   | 2 | 0 | 阶梯类型：1-无阶梯，2-年阶梯，3-月阶梯 |  
| LADDER_NUM_TYPE |  否  | String   | 2 | 0 | 阶梯数：1-1阶，2-2阶，3-3阶，4-4阶，5-5阶 |  
| CHARGE_POPULATION |  否  | Number   | 4 | 0 | 计费人口数 |  
| ALLOW_CANCELL_YESNO |  否  | String   | 2 | 0 | 是否允许解约 |  
| PROPERTY_LEVEL_TYPE |  否  | String   | 2 | 0 | 物业服务等级 |  
| RETAIL_VOLTAGE_GRADE_TYPE |  否  | String   | 2 | 0 | 零售等级范围 |  
| DELIVERY_PRICE_TYPE |  否  | String   | 2 | 0 | 配送单价类型 |  
| POWERRANGE_YESNO |  否  | String   | 2 | 0 | 是否分功率计价 |  
| POWER_RANGE_TYPE |  否  | String   | 2 | 0 | 功率范围 |  
| DIST_LEVEL_RANGE_TYPE |  否  | String   | 2 | 0 | 配送等级范围 |  
| TRANS_VOLTAGE_TYPE |  否  | String   | 2 | 0 | 输配电压等级：1-1000kv，2-750kv，3-500kv，3-330kv，3-220kv，3-110kv |  
| STARTUP_DATE |  否  | Number   | 8 | 0 | 启用日期 |  
| OUTAGE_DATE |  否  | Number   | 8 | 0 | 停用日期 |  
  
说明：计费套餐  
  
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
