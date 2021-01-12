## 1、接口描述  
服务接口：(UpdateDeliveryPrice)修改管网公司配送价  
接口描述：修改管网公司配送价  
请求说明：POST https://api.epeis.com/Service/v1/UpdateDeliveryPrice/  
  
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
	"COM_DELIVERY_PRICE":	[{
			"ACCOUNT_ITEM_INFO":	"",
			"ADMIN_CODE_INFO":	"",
			"NETWORK_TYPE":	"",
			"DELIVERY_PRICE_TYPE":	"",
			"LOSS_RATE":	0,
			"POWERRANGE_YESNO":	"",
			"POWER_RANGE_TYPE":	"",
			"DELIVERY_FEE_TYPE":	"",
			"DIST_LEVEL_RANGE_TYPE":	"",
			"TIME_FEES_TYPE":	"",
			"TIME_SHARING_TYPE":	"",
			"LADDER_TYPE":	"",
			"LADDER_NUM_TYPE":	"",
			"LADDER_LEVEL_TYPE":	"",
			"LADDER_UPPER_LIMIT":	0,
			"LADDER_LOWER_LIMIT":	0,
			"CAT_ITEM_PRICE":	0,
			"PRICE_UNIT_NAME":	"",
			"STARTUP_DATE":	0,
			"OUTAGE_DATE":	0,
			"ABUNDANCE_TYPE":	""
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
  
参数：COM_DELIVERY_PRICE，类型：Array  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| ACCOUNT_ITEM_INFO |  是  | String   | 64 | 0 | 会计科目编码 |  
| ADMIN_CODE_INFO |  是  | String   | 20 | 0 | 行政区划 |  
| NETWORK_TYPE |  是  | String   | 2 | 0 | 1-水，2-电，3-气，4-热，5-冷，6-物业，7-房屋租赁 |  
| DELIVERY_PRICE_TYPE |  是  | String   | 2 | 0 | 配送单价类型：1-保底;2-市场 |  
| LOSS_RATE |  否  | Number   | 12 | 2 | 线损率 |  
| POWERRANGE_YESNO |  是  | String   | 2 | 0 | 是否分功率计价 |  
| POWER_RANGE_TYPE |  否  | String   | 2 | 0 | 功率范围 |  
| DELIVERY_FEE_TYPE |  是  | String   | 2 | 0 | 配送单价计费类型：1-单一制;2-两部制 |  
| DIST_LEVEL_RANGE_TYPE |  是  | String   | 2 | 0 | 配送等级范围 |  
| TIME_FEES_TYPE |  是  | String   | 2 | 0 | 分时计费类型 |  
| TIME_SHARING_TYPE |  否  | String   | 2 | 0 | 分时时段类型 |  
| LADDER_TYPE |  是  | String   | 2 | 0 | 阶梯类型 |  
| LADDER_NUM_TYPE |  否  | String   | 2 | 0 | 阶梯数量类型 |  
| LADDER_LEVEL_TYPE |  否  | String   | 2 | 0 | 阶梯级次类型 |  
| LADDER_UPPER_LIMIT |  否  | Number   | 10 | 0 | 阶梯上限值 |  
| LADDER_LOWER_LIMIT |  否  | Number   | 10 | 0 | 阶梯下限值 |  
| CAT_ITEM_PRICE |  是  | Number   | 14 | 6 | 分类项目单价 |  
| PRICE_UNIT_NAME |  否  | String   | 64 | 0 | 价格单位名称 |  
| STARTUP_DATE |  是  | Number   | 8 | 0 | 启用日期 |  
| OUTAGE_DATE |  否  | Number   | 8 | 0 | 截止日期 |  
| ABUNDANCE_TYPE |  否  | String   | 2 | 0 | 丰枯类型 |  
  
说明：配送单价  
  
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
