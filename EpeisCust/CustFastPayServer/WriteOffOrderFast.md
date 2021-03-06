## 1、接口描述  
服务接口：(WriteOffOrderFast)快速缴费订单销账  
接口描述：快速缴费订单销账  
请求说明：POST https://api.epeis.com/Service/v1/WriteOffOrderFast/  
  
## 2、服务接口请求参数  
#### 2.1、请求参数报文示例  
~~~  
{
	"SYS_HEAD":	{
		"CHANNEL_DID":	"",
		"DYNAMIC_KEY":	"",
		"REGISTER_DID":	""
	},
	"INOUT_ORDER":	{
		"OPERATION_DATE":	0,
		"SERIAL_DID":	"",
		"CASH_TRANSFER_TYPE":	"",
		"ORDER_TYPE":	"",
		"AGENT_OPERATOR_DID":	"",
		"AGENT_SID_INFO":	"",
		"AGENT_TRADE_DATE":	0
	}
}  
~~~  
#### 2.2、请求参数说明  
参数：SYS_HEAD，类型：object  
  
| 参数 | 必选 | 类型 | 长度 | 精度 | 描述 |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| CHANNEL_DID | 是 | String | 16 | 0 | 16字符渠道号，请与平台运营服务中心联系 |  
| DYNAMIC_KEY | 是 | String | 64 | 0 | 动态请求密钥，请与平台运营服务中心联系 |  
| REGISTER_DID      |  是  | String   | 16 | 0 | 16位注册ID，可不实名 |  
  
参数：INOUT_ORDER，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| OPERATION_DATE |  是  | Number   | 8 | 0 | 订单日期 |  
| SERIAL_DID |  是  | String   | 16 | 0 | 16位字符，订单业务流水号 |  
| CASH_TRANSFER_TYPE |  是  | String   | 2 | 0 | 6-第三方支付 |  
| ORDER_TYPE |  是  | String   | 2 | 0 | 1-微信,2-支付宝 |  
| AGENT_OPERATOR_DID |  是  | String   | 16 | 0 | 代理操作员号 |  
| AGENT_SID_INFO |  是  | String   | 30 | 0 | 16位字符，代理流水号 |  
| AGENT_TRADE_DATE |  否  | Number   | 8 | 0 | 代理交易日期 |  
  
说明：订单信息  
  
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
