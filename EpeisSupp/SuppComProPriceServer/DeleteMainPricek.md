## 1、接口描述  
服务接口：(DeleteMainPricek)删除分类项目单价主价  
接口描述：删除分类项目单价主价  
请求说明：POST https://api.epeis.com/Service/v1/DeleteMainPricek/  
  
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
	"COM_PRO_PRICE":	[{
			"ACCOUNT_ITEM_INFO":	"",
			"ADMIN_CODE_INFO":	"",
			"CAT_ITEM_MAIN_NUM":	0,
			"CAT_ITEM_ATTACH_NUM":	0,
			"NETWORK_TYPE":	"",
			"PURCHASE_SALE_TYPE":	"",
			"RETAIL_VOLTAGE_GRADE_TYPE":	"",
			"PROPERTY_LEVEL_TYPE":	"",
			"HEAT_CHARGE_TYPE":	"",
			"GARB_CHAEGE_TYPE":	"",
			"RESIDENT_YESNO":	"",
			"AGREE_PRICE_YESNO":	"",
			"ABUND_WITHER_YESNO":	"",
			"ABUNDANCE_TYPE":	"",
			"TIME_FEES_TYPE":	"",
			"TIME_SHARING_TYPE":	"",
			"LADDER_TYPE":	"",
			"LADDER_NUM_TYPE":	"",
			"LADDER_LEVEL_TYPE":	"",
			"STARTUP_DATE":	0
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
  
参数：COM_PRO_PRICE，类型：Array  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| ACCOUNT_ITEM_INFO |  是  | String   | 64 | 0 | 会计科目编码 |  
| ADMIN_CODE_INFO |  是  | String   | 20 | 0 | 行政区划 |  
| CAT_ITEM_MAIN_NUM |  是  | Number   | 10 | 0 | 分类项目主编号 |  
| CAT_ITEM_ATTACH_NUM |  是  | Number   | 10 | 0 | 分类项目附编号 |  
| NETWORK_TYPE |  是  | String   | 2 | 0 | 1-水，2-电，3-气，4-热，5-冷，6-物业，7-房屋租赁 |  
| PURCHASE_SALE_TYPE |  是  | String   | 2 | 0 | 购售类型 |  
| RETAIL_VOLTAGE_GRADE_TYPE |  是  | String   | 2 | 0 | 零售等级范围 |  
| PROPERTY_LEVEL_TYPE |  否  | String   | 2 | 0 | 物业服务等级 |  
| HEAT_CHARGE_TYPE |  否  | String   | 2 | 0 | 暖气计费类型 |  
| GARB_CHAEGE_TYPE |  否  | String   | 2 | 0 | 物业计费类型 |  
| RESIDENT_YESNO |  是  | String   | 2 | 0 | 是否居民：1-否，2-是 |  
| AGREE_PRICE_YESNO |  是  | String   | 2 | 0 | 是否协议价：1-否，2-是 |  
| ABUND_WITHER_YESNO |  否  | String   | 2 | 0 | 是否丰枯 |  
| ABUNDANCE_TYPE |  否  | String   | 2 | 0 | 丰枯类型 |  
| TIME_FEES_TYPE |  否  | String   | 2 | 0 | 分时计费类型：1-不分时，2-2分时，3-3分时,4-4分时，5-5分时 |  
| TIME_SHARING_TYPE |  否  | String   | 2 | 0 | 分时时段类型：1-不分段,2-峰,3-平,4-谷,5-尖峰,6-低谷 |  
| LADDER_TYPE |  否  | String   | 2 | 0 | 阶梯类型：1-无阶梯，2-年阶梯，3-月阶梯 |  
| LADDER_NUM_TYPE |  否  | String   | 2 | 0 | 阶梯数量 |  
| LADDER_LEVEL_TYPE |  否  | String   | 2 | 0 | 阶梯级次：1-无阶梯，2-二阶梯，3-三阶梯，4-四阶梯，5-五阶梯 |  
| STARTUP_DATE |  是  | Number   | 8 | 0 | 启用日期 |  
  
说明：分类项目单价  
  
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
