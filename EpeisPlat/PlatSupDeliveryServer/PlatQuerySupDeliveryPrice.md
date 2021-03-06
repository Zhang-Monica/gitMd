## 1、接口描述  
服务接口：(PlatQuerySupDeliveryPrice)查询管网公司配送价  
接口描述：查询管网公司配送价  
请求说明：POST https://api.epeis.com/Service/v1/PlatQuerySupDeliveryPrice/  
  
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
	"COM_DELIVERY_PRICE":	{
		"NETWORK_CO_DID":	"",
		"NET_STORES_AID":	"",
		"ACCOUNT_ITEM_INFO":	"",
		"ADMIN_CODE_INFO":	"",
		"NETWORK_TYPE":	"",
		"LOSS_RATE":	0,
		"POWERRANGE_YESNO":	"",
		"POWER_RANGE_TYPE":	"",
		"DIST_LEVEL_RANGE_TYPE":	""
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
  
参数：SYS_PAGE，类型：object  
  
| 参数 | 必选 | 类型 | 长度 | 精度 | 描述 |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| PAGE_NO       |  是  | Number   | 4 | 0 | 第几页，必须大于“0” |  
| PAGE_ROWS     |  是  | Number   | 4 | 0 | 每页行数，必须大于“0” |  
  
参数：COM_DELIVERY_PRICE，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| NETWORK_CO_DID |  否  | String   | 16 | 0 | 管网公司编码 |  
| NET_STORES_AID |  否  | String   | 16 | 0 | 管网公司营业网点ID |  
| ACCOUNT_ITEM_INFO |  否  | String   | 64 | 0 | 会计科目编码 |  
| ADMIN_CODE_INFO |  否  | String   | 20 | 0 | 行政区划 |  
| NETWORK_TYPE |  否  | String   | 2 | 0 | 1-水，2-电，3-气，4-热，5-冷，6-物业，7-房屋租赁 |  
| LOSS_RATE |  否  | Number   | 12 | 2 | 线损率 |  
| POWERRANGE_YESNO |  否  | String   | 2 | 0 | 是否分功率计价 |  
| POWER_RANGE_TYPE |  否  | String   | 2 | 0 | 功率范围 |  
| DIST_LEVEL_RANGE_TYPE |  否  | String   | 2 | 0 | 配送等级范围 |  
  
说明：配送单价  
  
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
		"COM_DELIVERY_PRICE":	[{
				"NETWORK_CO_DID":	"",
				"NET_STORES_AID":	"",
				"ACCOUNT_ITEM_INFO":	"",
				"DELIVERY_PRICE_TYPE":	"",
				"ADMIN_CODE_INFO":	"",
				"NETWORK_TYPE":	"",
				"LOSS_RATE":	0,
				"POWERRANGE_YESNO":	"",
				"POWER_RANGE_TYPE":	"",
				"DELIVERY_FEE_TYPE":	"",
				"DIST_LEVEL_RANGE_TYPE":	"",
				"TIME_FEES_TYPE":	"",
				"TIME_SHARING_TYPE":	"",
				"LADDER_TYPE":	"",
				"LADDER_LEVEL_TYPE":	"",
				"LADDER_UPPER_LIMIT":	0,
				"LADDER_LOWER_LIMIT":	0,
				"CAT_ITEM_PRICE":	0,
				"PRICE_UNIT_NAME":	"",
				"STARTUP_DATE":	0,
				"OUTAGE_DATE":	0,
				"RESIDENT_YESNO":	"",
				"AGREE_PRICE_YESNO":	"",
				"ABUNDANCE_TYPE":	""
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
  
参数：COM_DELIVERY_PRICE，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| NETWORK_CO_DID |  是  | String   | 管网公司编码 |  
| NET_STORES_AID |  是  | String   | 管网公司营业网点ID |  
| ACCOUNT_ITEM_INFO |  是  | String   | 会计科目编码 |  
| DELIVERY_PRICE_TYPE |  是  | String   | 配送单价类型 |  
| ADMIN_CODE_INFO |  是  | String   | 行政区划 |  
| NETWORK_TYPE |  是  | String   | 1-水，2-电，3-气，4-热，5-冷，6-物业，7-房屋租赁 |  
| LOSS_RATE |  是  | Number   | 线损率 |  
| POWERRANGE_YESNO |  是  | String   | 是否分功率计价 |  
| POWER_RANGE_TYPE |  是  | String   | 功率范围 |  
| DELIVERY_FEE_TYPE |  是  | String   | 配送单价计费类型 |  
| DIST_LEVEL_RANGE_TYPE |  是  | String   | 配送等级范围 |  
| TIME_FEES_TYPE |  是  | String   | 分时计费类型 |  
| TIME_SHARING_TYPE |  是  | String   | 分时时段类型 |  
| LADDER_TYPE |  是  | String   | 阶梯类型 |  
| LADDER_LEVEL_TYPE |  是  | String   | 阶梯级次类型 |  
| LADDER_UPPER_LIMIT |  是  | Number   | 阶梯上限值 |  
| LADDER_LOWER_LIMIT |  是  | Number   | 阶梯下限值 |  
| CAT_ITEM_PRICE |  是  | Number   | 分类项目单价 |  
| PRICE_UNIT_NAME |  是  | String   | 价格单位名称 |  
| STARTUP_DATE |  是  | Number   | 启用日期 |  
| OUTAGE_DATE |  是  | Number   | 启用日期 |  
| RESIDENT_YESNO |  是  | String   | 是否居民 |  
| AGREE_PRICE_YESNO |  是  | String   | 是否协议价 |  
| ABUNDANCE_TYPE |  是  | String   | 丰枯类型 |  
  
说明：配送单价  
## 4、服务接口说明  
说明：无  
