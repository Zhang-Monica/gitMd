## 1、接口描述  
服务接口：(cSelOweDetv1)查询欠费明细  
接口描述：查询客户欠费明细信息  
请求说明：POST https://api.epeis.com/customer/v1/cSelOweDetv1  
  
## 2、服务接口请求参数  
#### 2.1、请求参数报文示例  
~~~  
{
	"SYS_HEAD":	{
		"CHANNEL_DID":	"",
		"DYNAMIC_KEY":	"",
		"REGISTER_DID":	"",
		"ACCOUNT_DID":	""
	}
}  
~~~  
#### 2.2、请求参数说明  
参数SYS_HEAD，类型：object  
  
| 参数 | 必选 | 类型 | 长度 | 精度 | 描述 |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| CHANNEL_DID | 是 | String | 16 | 0 | 16字符渠道号，请与平台运营服务中心联系 |  
| DYNAMIC_KEY | 是 | String | 64 | 0 | 动态请求密钥，请与平台运营服务中心联系 |  
| REGISTER_DID      |  是  | String   | 16 | 0 | 16位注册ID，必须实名 |  
| ACCOUNT_DID       |  是  | String   | 16 | 0 | 16位账户ID，必须激活 |  
  
  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"INOUT_ORDER_DETAIL":	[{
				"SETTLEMENT_AID":	"",
				"SETTLEMENT_NAME":	"",
				"CUSTOMER_DID":	"",
				"CUSTOMER_NAME":	"",
				"USER_CUS_DID":	"",
				"USER_NAME":	"",
				"NETWORK_TYPE":	"",
				"ACCOUNT_MONTH":	0,
				"RECE_AMOUNT":	0,
				"LIQ_DAMA_LEVY_DATE":	0,
				"RECEIPT_LIQ_DAMA":	0
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
  
  
参数DATA，类型：object 本服务接口响应数据说明如下：  
参数INOUT_ORDER_DETAIL，类型：object  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| SETTLEMENT_AID |  是  | String   | 16个字符，结算户唯一ID |  
| SETTLEMENT_NAME |  是  | String   | 128个字符，结算户名称 |  
| CUSTOMER_DID |  是  | String   | 16个字符，客户唯一的账号ID |  
| CUSTOMER_NAME |  是  | String   | 256个字符，客户名称 |  
| USER_CUS_DID |  是  | String   | 16个字符，用户唯一的账号ID |  
| USER_NAME |  是  | String   | 用户名称 |  
| NETWORK_TYPE |  是  | String   | 1-水，2-电，3-气，4-热，5-冷，6-物业，7-房屋租赁 |  
| ACCOUNT_MONTH |  是  | Number   | 账务月份 |  
| RECE_AMOUNT |  是  | Number   | 应缴金额，精确到2位小数点 |  
| LIQ_DAMA_LEVY_DATE |  是  | Number   | 违约金日期 |  
| RECEIPT_LIQ_DAMA |  是  | Number   | 应缴违约金，精确到2位小数点 |  
  
说明：欠费信息  
## 4、服务接口说明  
说明：无  
