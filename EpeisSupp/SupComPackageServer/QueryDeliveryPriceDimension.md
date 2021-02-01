## 1、接口描述  
服务接口：(QueryDeliveryPriceDimension)查询管网公司配送价维度  
接口描述：查询管网公司配送价维度  
请求说明：POST https://api.epeis.com/Service/v1/QueryDeliveryPriceDimension/  
  
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
	"COM_PACK":	{
		"ACCOUNT_ITEM_INFO":	"",
		"NETWORK_TYPE":	"",
		"BASIC_FEES_TYPE":	"",
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
  
参数：COM_PACK，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| ACCOUNT_ITEM_INFO |  是  | String   | 64 | 0 | 会计科目编码 |  
| NETWORK_TYPE |  是  | String   | 2 | 0 | 服务类型 |  
| BASIC_FEES_TYPE |  是  | String   | 2 | 0 | 基本费计费类型 |  
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
		"COM_DELIVERY_PRICE":	[{
				"POWERRANGE_YESNO":	"",
				"POWER_RANGE_TYPE":	"",
				"DIST_LEVEL_RANGE_TYPE":	""
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
  
参数：COM_DELIVERY_PRICE，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| POWERRANGE_YESNO |  是  | String   | 是否分功率计价 |  
| POWER_RANGE_TYPE |  是  | String   | 功率范围 |  
| DIST_LEVEL_RANGE_TYPE |  是  | String   | 配送等级范围 |  
  
说明：配送单价  
## 4、服务接口说明  
说明：无  
