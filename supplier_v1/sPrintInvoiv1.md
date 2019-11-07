## 1、接口描述  
服务接口：(sPrintInvoiv1)打印开票信息  
接口描述：打印开票信息  
请求说明：POST https://api.epeis.com/supplier/v1/sPrintInvoiv1  
  
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
	"ACC_INVOICE_PRINT":	[{
			"INVOICE_DID":	"",
			"INVOICE_NUMBER":	"",
			"INVOICE_NUM_INFO":	"",
			"INVOICE_TYPE":	"",
			"URL":	"",
			"NETWORK_TYPE":	"",
			"ACCOUNT_MONTH":	0
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
  
参数：ACC_INVOICE_PRINT，类型：Array  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| INVOICE_DID |  是  | String   | 16 | 0 | 16位字符，发票唯一的ID |  
| INVOICE_NUMBER |  是  | String   | 20 | 0 | 20个字符，发票号码 |  
| INVOICE_NUM_INFO |  是  | String   | 20 | 0 | 20个字符，发票代码 |  
| INVOICE_TYPE |  是  | String   | 2 | 0 | 1-普通机打发票，2-普通电子发票，3-增值税机打发票，4-增值税电子发票 |  
| URL |  是  | String   | 128 | 0 | 128个字符，URL地址 |  
| NETWORK_TYPE |  是  | String   | 2 | 0 | 1-水，2-电，3-气，4-热，5-冷，6-物业，7-房屋租赁 |  
| ACCOUNT_MONTH |  是  | Number   | 6 | 0 | 账务月份 |  
  
说明：开票信息  
  
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
