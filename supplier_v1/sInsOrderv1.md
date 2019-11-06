## 1、接口描述  
服务接口：(sInsOrderv1)生成订单  
接口描述：生成缴费订单  
请求说明：POST https://api.epeis.com/supplier/v1/sInsOrderv1  
  
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
	"INOUT_ORDER":	[{
			"CUSTOMER_DID":	"",
			"PAID_IN_AMOUNT":	0
		}],
	"INOUT_ORDER_DETAIL":	[{
			"SETTLEMENT_AID":	"",
			"CUSTOMER_DID":	"",
			"USER_CUS_DID":	"",
			"NETWORK_TYPE":	"",
			"ACCOUNT_MONTH":	0,
			"LIQ_DAMA_LEVY_DATE":	0,
			"RECE_AMOUNT":	0,
			"PAID_IN_AMOUNT":	0,
			"RECEIPT_LIQ_DAMA":	0,
			"PAID_IN_LIQ_DAMA":	0,
			"DRAW_ADVANCE_PAY":	0
		}]
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
  
  
参数INOUT_ORDER，类型：Array  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| CUSTOMER_DID |  是  | String   | 16 | 0 | 16个字符，客户唯一的账号ID |  
| PAID_IN_AMOUNT |  是  | Number   | 16 | 2 | 实缴总计 |  
  
说明：订单信息  
参数INOUT_ORDER_DETAIL，类型：Array  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| SETTLEMENT_AID |  是  | String   | 16 | 0 | 16个字符，结算户唯一ID |  
| CUSTOMER_DID |  是  | String   | 16 | 0 | 16个字符，客户唯一的账号ID |  
| USER_CUS_DID |  是  | String   | 16 | 0 | 16个字符，用户唯一的账号ID |  
| NETWORK_TYPE |  是  | String   | 2 | 0 | 1-水，2-电，3-气，4-热，5-冷，6-物业，7-房屋租赁 |  
| ACCOUNT_MONTH |  是  | Number   | 6 | 0 | 账务月份 |  
| LIQ_DAMA_LEVY_DATE |  是  | Number   | 8 | 0 | 违约金日期 |  
| RECE_AMOUNT |  是  | Number   | 16 | 2 | 应缴金额，精确到2位小数点 |  
| PAID_IN_AMOUNT |  是  | Number   | 16 | 2 | 实缴金额，精确到2位小数点 |  
| RECEIPT_LIQ_DAMA |  是  | Number   | 16 | 2 | 应缴违约金，精确到2位小数点 |  
| PAID_IN_LIQ_DAMA |  是  | Number   | 16 | 2 | 实缴违约金，精确到2位小数点 |  
| DRAW_ADVANCE_PAY |  是  | Number   | 16 | 2 | 支取预付款，精确到2位小数点 |  
  
说明：订单明细  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"INOUT_ORDER":	[{
				"OPERATION_DATE":	0,
				"SERIAL_DID":	""
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
参数INOUT_ORDER，类型：object  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| OPERATION_DATE |  是  | Number   | 订单日期 |  
| SERIAL_DID |  是  | String   | 16位字符，订单业务流水号 |  
  
说明：订单信息  
## 4、服务接口说明  
说明：无  
