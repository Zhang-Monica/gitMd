## 1、接口描述  
服务接口：(QuerySalePackage)查询零售套餐  
接口描述：查询零售套餐  
请求说明：POST https://api.epeis.com/Service/v1/QuerySalePackage/  
  
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
		"ACCOUNT_ITEM_INFO":	"",
		"PACK_STATE_TYPE":	"",
		"STATE_TYPE":	"",
		"NETWORK_TYPE":	""
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
| ACCOUNT_ITEM_INFO |  否  | String   | 64 | 0 | 会计科目编码 |  
| PACK_STATE_TYPE |  否  | String   | 2 | 0 | 套餐状态 |  
| STATE_TYPE |  否  | String   | 2 | 0 | 状态类型 |  
| NETWORK_TYPE |  否  | String   | 2 | 0 | 1-水，2-电，3-气，4-热，5-冷，6-物业，7-房屋租赁 |  
  
说明：零售套餐  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"COM_SALES_PACK":	[{
				"NETWORK_CO_DID":	"",
				"RETAIL_CO_DID":	"",
				"RET_STORES_AID":	"",
				"CHARGE_PACK_DID":	"",
				"CHARGE_PACK_TYPE":	"",
				"CHARGE_PACK_NAME":	"",
				"PACK_REMARK":	"",
				"ACCOUNT_ITEM_INFO":	"",
				"RETAIL_VOLTAGE_GRADE_TYPE":	"",
				"NETWORK_TYPE":	"",
				"PURCHASE_SALE_TYPE":	"",
				"RESIDENT_YESNO":	"",
				"COMP_DEVIATION_YESNO":	"",
				"ABUND_WITHER_YESNO":	"",
				"AGREE_PRICE_YESNO":	"",
				"HEAT_CHARGE_TYPE":	"",
				"GARB_CHAEGE_TYPE":	"",
				"BASIC_FEES_TYPE":	"",
				"TIME_FEES_TYPE":	"",
				"LADDER_TYPE":	"",
				"LADDER_NUM_TYPE":	"",
				"PACK_STATE_TYPE":	"",
				"STATE_TYPE":	"",
				"ALLOW_CANCELL_YESNO":	"",
				"CHARGE_POPULATION":	0,
				"POWERRANGE_YESNO":	"",
				"POWER_RANGE_TYPE":	"",
				"PROPERTY_LEVEL_TYPE":	"",
				"DIST_LEVEL_RANGE_TYPE":	"",
				"TRANS_VOLTAGE_TYPE":	"",
				"STARTUP_DATE":	0,
				"OUTAGE_DATE":	0
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
  
参数：COM_SALES_PACK，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| NETWORK_CO_DID |  是  | String   | 管网公司编码 |  
| RETAIL_CO_DID |  是  | String   | 销售公司编码 |  
| RET_STORES_AID |  是  | String   | 销售公司营业网点ID |  
| CHARGE_PACK_DID |  是  | String   | 计费套餐号 |  
| CHARGE_PACK_TYPE |  是  | String   | 1-保底价，2-低保价，3-市场价 |  
| CHARGE_PACK_NAME |  是  | String   | 套餐名称 |  
| PACK_REMARK |  是  | String   | 套餐备注说明 |  
| ACCOUNT_ITEM_INFO |  是  | String   | 会计科目编码 |  
| RETAIL_VOLTAGE_GRADE_TYPE |  是  | String   | 零售等级范围 |  
| NETWORK_TYPE |  是  | String   | 1-水，2-电，3-气，4-热，5-冷，6-物业，7-房屋租赁 |  
| PURCHASE_SALE_TYPE |  是  | String   | 1-直供,2-购入,3-趸售 |  
| RESIDENT_YESNO |  是  | String   | 是否居民：1-否，2-是 |  
| COMP_DEVIATION_YESNO |  是  | String   | 是否计算核定偏差：1-否，2-是 |  
| ABUND_WITHER_YESNO |  是  | String   | 是否分枯：1-否，2-是 |  
| AGREE_PRICE_YESNO |  是  | String   | 是否协议价：1-否，2-是 |  
| HEAT_CHARGE_TYPE |  是  | String   | 暖气计费类型 |  
| GARB_CHAEGE_TYPE |  是  | String   | 物业计费类型 |  
| BASIC_FEES_TYPE |  是  | String   | 基本费计费类型：1-不计费，2-容量计费，3-需量计费 |  
| TIME_FEES_TYPE |  是  | String   | 分时计费类型：1-不分时，2-2分时，3-3分时,4-4分时，5-5分时 |  
| LADDER_TYPE |  是  | String   | 阶梯类型：1-无阶梯，2-年阶梯，3-月阶梯 |  
| LADDER_NUM_TYPE |  是  | String   | 阶梯数：1-1阶，2-2阶，3-3阶，4-4阶，5-5阶 |  
| PACK_STATE_TYPE |  是  | String   | 套餐状态 |  
| STATE_TYPE |  是  | String   | 状态类型 |  
| ALLOW_CANCELL_YESNO |  是  | String   | 是否允许解约 |  
| CHARGE_POPULATION |  是  | Number   | 计费人口数 |  
| POWERRANGE_YESNO |  是  | String   | 是否分功率计价 |  
| POWER_RANGE_TYPE |  是  | String   | 功率范围 |  
| PROPERTY_LEVEL_TYPE |  是  | String   | 物业服务等级 |  
| DIST_LEVEL_RANGE_TYPE |  是  | String   | 配送等级范围 |  
| TRANS_VOLTAGE_TYPE |  是  | String   | 输配电压等级：1-1000kv，2-750kv，3-500kv，3-330kv，3-220kv，3-110kv |  
| STARTUP_DATE |  是  | Number   | 启用日期 |  
| OUTAGE_DATE |  是  | Number   | 停用日期 |  
  
说明：零售套餐  
## 4、服务接口说明  
说明：无  
