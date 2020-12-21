## 1、接口描述  
服务接口：(UpdateComClassProPricePla)修改分类项目单价  
接口描述：修改分类项目单价  
请求说明：POST https://api.epeis.com/Service/v1/UpdateComClassProPricePla/  
  
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
			"NETWORK_CO_DID":	"",
			"ACCOUNT_ITEM_INFO":	"",
			"CAT_ITEM_MAIN_NUM":	0,
			"CAT_ITEM_ATTACH_NUM":	0,
			"CAT_ITEM_PRICE":	0,
			"PRICE_UNIT_NAME":	"",
			"NETWORK_TYPE":	"",
			"PURCHASE_SALE_TYPE":	"",
			"BASIC_FEES_TYPE":	"",
			"RESIDENT_YESNO":	"",
			"AGREE_PRICE_YESNO":	"",
			"ABUNDANCE_TYPE":	"",
			"TIME_FEES_TYPE":	"",
			"TIME_SHARING_TYPE":	"",
			"LADDER_TYPE":	"",
			"LADDER_LEVEL_TYPE":	"",
			"LADDER_UPPER_LIMIT":	0,
			"LADDER_LOWER_LIMIT":	0,
			"STARTUP_DATE":	0,
			"OUTAGE_DATE":	0,
			"RETAIL_VOLTAGE_GRADE_TYPE":	"",
			"PROPERTY_LEVEL_TYPE":	""
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
| NETWORK_CO_DID |  是  | String   | 16 | 0 | 销售公司编码 |  
| ACCOUNT_ITEM_INFO |  是  | String   | 64 | 0 | 会计科目编码 |  
| CAT_ITEM_MAIN_NUM |  是  | Number   | 10 | 0 | 分类项目主编号 |  
| CAT_ITEM_ATTACH_NUM |  是  | Number   | 10 | 0 | 分类项目附编号 |  
| CAT_ITEM_PRICE |  是  | Number   | 14 | 6 | 分类项目单价 |  
| PRICE_UNIT_NAME |  否  | String   | 64 | 0 | 价格单位名称 |  
| NETWORK_TYPE |  是  | String   | 2 | 0 | 1-水，2-电，3-气，4-热，5-冷，6-物业，7-房屋租赁 |  
| PURCHASE_SALE_TYPE |  是  | String   | 2 | 0 | 购售类型 |  
| BASIC_FEES_TYPE |  否  | String   | 2 | 0 | 基本费计费类型：1-不计费，2-容量计费，3-需量计费 |  
| RESIDENT_YESNO |  是  | String   | 2 | 0 | 是否居民：1-否，2-是 |  
| AGREE_PRICE_YESNO |  是  | String   | 2 | 0 | 是否协议价：1-否，2-是 |  
| ABUNDANCE_TYPE |  否  | String   | 2 | 0 | 丰枯类型 |  
| TIME_FEES_TYPE |  是  | String   | 2 | 0 | 分时计费类型：1-不分时，2-2分时，3-3分时,4-4分时，5-5分时 |  
| TIME_SHARING_TYPE |  否  | String   | 2 | 0 | 分时时段类型：1-不分段,2-峰,3-平,4-谷,5-尖峰,6-低谷 |  
| LADDER_TYPE |  是  | String   | 2 | 0 | 阶梯类型：1-无阶梯，2-年阶梯，3-月阶梯 |  
| LADDER_LEVEL_TYPE |  否  | String   | 2 | 0 | 阶梯级次：1-一阶梯，2-二阶梯，3-三阶梯，4-四阶梯，5-五阶梯 |  
| LADDER_UPPER_LIMIT |  否  | Number   | 10 | 0 | 阶梯上限值 |  
| LADDER_LOWER_LIMIT |  否  | Number   | 10 | 0 | 阶梯下限值 |  
| STARTUP_DATE |  是  | Number   | 8 | 0 | 启用日期 |  
| OUTAGE_DATE |  否  | Number   | 8 | 0 | 停用日期 |  
| RETAIL_VOLTAGE_GRADE_TYPE |  是  | String   | 2 | 0 | 零售等级范围 |  
| PROPERTY_LEVEL_TYPE |  是  | String   | 2 | 0 | 物业服务等级 |  
  
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
