## 1、接口描述  
服务接口：(QuerySalePackagePrice)查询零售套餐单价  
接口描述：查询零售套餐单价  
请求说明：POST https://api.epeis.com/Service/v1/QuerySalePackagePrice/  
  
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
	"COM_SALES_PACK":	{
		"CHARGE_PACK_DID":	""
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
  
参数：COM_SALES_PACK，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| CHARGE_PACK_DID |  是  | String   | 16 | 0 | 计费套餐号 |  
  
说明：计费套餐  
  
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
		"COM_SALES_PRICE":	[{
				"RETAIL_CO_DID":	"",
				"CHARGE_PACK_DID":	"",
				"NETWORK_TYPE":	"",
				"ACCOUNT_ITEM_INFO":	"",
				"AGREE_PRICE_YESNO":	"",
				"CAT_ITEM_PRICE":	0,
				"PRICE_UNIT_NAME":	"",
				"HEAT_CHARGE_TYPE":	"",
				"GARB_CHAEGE_TYPE":	"",
				"ABUNDANCE_TYPE":	"",
				"TIME_FEES_TYPE":	"",
				"TIME_SHARING_TYPE":	"",
				"LADDER_TYPE":	"",
				"LADDER_LEVEL_TYPE":	"",
				"LADDER_UPPER_LIMIT":	0,
				"LADDER_LOWER_LIMIT":	0,
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
  
参数：SYS_PAGE，类型：object  
  
| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| PAGE_NO       |  是  | Number   | 第几页 |  
| PAGE_ROWS     |  是  | Number   | 每页行数 |  
| NEXT_YESNO    |  是  | String   | 是否有下页，1-无，2-有 |  
| TOTAL         |  是  | Number   | 总行数 |  
  
参数：COM_SALES_PRICE，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| RETAIL_CO_DID |  是  | String   | 销售公司编码 |  
| CHARGE_PACK_DID |  是  | String   | 计费套餐号 |  
| NETWORK_TYPE |  是  | String   | 管网类型 |  
| ACCOUNT_ITEM_INFO |  是  | String   | 会计科目编码 |  
| AGREE_PRICE_YESNO |  是  | String   | 是否协议价：1-否，2-是 |  
| CAT_ITEM_PRICE |  是  | Number   | 分类项目单价 |  
| PRICE_UNIT_NAME |  是  | String   | 价格单位名称 |  
| HEAT_CHARGE_TYPE |  是  | String   | 暖气计费类型 |  
| GARB_CHAEGE_TYPE |  是  | String   | 物业计费类型 |  
| ABUNDANCE_TYPE |  是  | String   | 丰枯类型 |  
| TIME_FEES_TYPE |  是  | String   | 分时计费类型：1-不分时，2-2分时，3-3分时,4-4分时，5-5分时 |  
| TIME_SHARING_TYPE |  是  | String   | 分时时段类型：1-不分段,2-峰,3-平,4-谷,5-尖峰,6-低谷 |  
| LADDER_TYPE |  是  | String   | 阶梯类型：1-无阶梯，2-年阶梯，3-月阶梯 |  
| LADDER_LEVEL_TYPE |  是  | String   | 阶梯级次：1-一阶梯，2-二阶梯，3-三阶梯，4-四阶梯，5-五阶梯 |  
| LADDER_UPPER_LIMIT |  是  | Number   | 阶梯上限值 |  
| LADDER_LOWER_LIMIT |  是  | Number   | 阶梯下限值 |  
| STARTUP_DATE |  是  | Number   | 启用日期 |  
| OUTAGE_DATE |  是  | Number   | 停用日期 |  
  
说明：计费套餐  
## 4、服务接口说明  
说明：无  
