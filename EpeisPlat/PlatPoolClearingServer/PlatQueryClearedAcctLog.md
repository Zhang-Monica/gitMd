## 1、接口描述  
服务接口：(PlatQueryClearedAcctLog)查询账务清分记录  
接口描述：查询账务清分记录  
请求说明：POST https://api.epeis.com/Service/v1/PlatQueryClearedAcctLog/  
  
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
	"POOL_VOLPRI_REC":	{
		"BOOK_AID":	"",
		"ACCOUNT_MONTH":	0,
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
  
参数：POOL_VOLPRI_REC，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| BOOK_AID |  否  | String   | 16 | 0 | 区段编号 |  
| ACCOUNT_MONTH |  是  | Number   | 6 | 0 | 帐务月份 |  
| NETWORK_TYPE |  否  | String   | 2 | 0 | 服务类型 |  
  
说明：账务清分日记账表  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"POOL_VOLPRI_REC":	[{
				"NETWORK_CO_DID":	"",
				"RETAIL_CO_DID":	"",
				"RECE_UNPAID_RETAIL_AMOUNT":	0,
				"RECE_UNPAID_DELIVERY_AMOUNT":	0,
				"ACCOUNT_MONTH":	0
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
  
参数：POOL_VOLPRI_REC，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| NETWORK_CO_DID |  是  | String   | 管网公司编码 |  
| RETAIL_CO_DID |  是  | String   | 销售公司编码 |  
| RECE_UNPAID_RETAIL_AMOUNT |  是  | Number   | 应收未出账零售到户金额 |  
| RECE_UNPAID_DELIVERY_AMOUNT |  是  | Number   | 应收未出账配送金额 |  
| ACCOUNT_MONTH |  是  | Number   | 帐务月份 |  
  
说明：账务清分日记账表  
## 4、服务接口说明  
说明：  
