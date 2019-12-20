## 1、接口描述  
服务接口：(QueryUnChargeOffPriceInfo)查询待出账表底信息  
接口描述：查询待出账表底信息  
请求说明：POST https://api.epeis.com/Service/v1/QueryUnChargeOffPriceInfo/  
  
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
	"COM_USER_METER":	{
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
  
参数：COM_USER_METER，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| SETTLEMENT_AID |  是  | String   | 16 | 0 | 结算户ID |  
  
说明：用户帐单计量点明细  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"COM_VOLUME_PRICE_INFO":	[{
				"SETTLEMENT_AID":	"",
				"NORMAL_RETRO_TYPE":	"",
				"NETWORK_TYPE":	"",
				"STOP_EMPTY_YESNO":	"",
				"BUS_CATEG_TYPE":	"",
				"BASIC_FEES_TYPE":	"",
				"ABUND_WITHER_YESNO":	"",
				"ABUNDANCE_TYPE":	"",
				"TIME_FEES_TYPE":	"",
				"TIME_SHARING_TYPE":	"",
				"AGREE_PRICE_YESNO":	"",
				"LADDER_TYPE":	"",
				"LADDER_LEVEL_TYPE":	"",
				"FOR_RATE_VALID_TYPE":	"",
				"RESIDENT_YESNO":	"",
				"ACCOUNT_ITEM_INFO":	"",
				"CAT_ITEM_NUM":	0,
				"CAT_ITEM_ATTACH_NUM":	0,
				"STARTUP_DATE":	0,
				"ACCOUNT_MONTH":	0,
				"THE_CHARGE_CONS":	0,
				"CHARGE_PRICE":	0,
				"CALC_FEE":	0,
				"THE_ACCOUNT_DATE":	0,
				"THE_ACCOUNT_TIME":	0
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
  
参数：COM_VOLUME_PRICE_INFO，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| SETTLEMENT_AID |  是  | String   | 结算户ID |  
| NORMAL_RETRO_TYPE |  是  | String   | 正常/追补 |  
| NETWORK_TYPE |  是  | String   | 管网类型 |  
| STOP_EMPTY_YESNO |  是  | String   | 是否停/空 |  
| BUS_CATEG_TYPE |  是  | String   | 业务类别 |  
| BASIC_FEES_TYPE |  是  | String   | 基本费计费类型 |  
| ABUND_WITHER_YESNO |  是  | String   | 是否丰枯 |  
| ABUNDANCE_TYPE |  是  | String   | 丰枯类型 |  
| TIME_FEES_TYPE |  是  | String   | 分时计费类型 |  
| TIME_SHARING_TYPE |  是  | String   | 分时类型 |  
| AGREE_PRICE_YESNO |  是  | String   | 是否协议价 |  
| LADDER_TYPE |  是  | String   | 阶梯类型 |  
| LADDER_LEVEL_TYPE |  是  | String   | 阶梯级次类型 |  
| FOR_RATE_VALID_TYPE |  是  | String   | 力率考核类型 |  
| RESIDENT_YESNO |  是  | String   | 是否居民 |  
| ACCOUNT_ITEM_INFO |  是  | String   | 会计科目编码 |  
| CAT_ITEM_NUM |  是  | Number   | 分类项目编号 |  
| CAT_ITEM_ATTACH_NUM |  是  | Number   | 分类项目附编号 |  
| STARTUP_DATE |  是  | Number   | 启用日期 |  
| ACCOUNT_MONTH |  是  | Number   | 帐务月份 |  
| THE_CHARGE_CONS |  是  | Number   | 本次计费用量 |  
| CHARGE_PRICE |  是  | Number   | 计费单价 |  
| CALC_FEE |  是  | Number   | 计算费用 |  
| THE_ACCOUNT_DATE |  是  | Number   | 本次核算日期 |  
| THE_ACCOUNT_TIME |  是  | Number   | 本次核算时间 |  
  
说明：量价费信息  
## 4、服务接口说明  
说明：无  
