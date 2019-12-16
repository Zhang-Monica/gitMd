## 1、接口描述  
服务接口：(AddSupplierBook)新增抄表区段  
接口描述：新增抄表区段  
请求说明：POST https://api.epeis.com/Service/v1/AddSupplierBook/  
  
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
	"SUP_BOOK":	[{
			"NETWORK_TYPE":	"",
			"READ_PERIOD_TYPE":	"",
			"BUSINESS_HALL_AID":	"",
			"BOOK_NAME":	"",
			"ADMIN_CODE_INFO":	"",
			"MANAGER_DID":	"",
			"METER_READER_DID":	""
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
  
参数：SUP_BOOK，类型：Array  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| NETWORK_TYPE |  是  | String   | 2 | 0 | 管网类型 |  
| READ_PERIOD_TYPE |  是  | String   | 2 | 0 | 抄表周期类型 |  
| BUSINESS_HALL_AID |  是  | String   | 16 | 0 | 商户营业网点ID |  
| BOOK_NAME |  是  | String   | 128 | 0 | 抄表区段名称 |  
| ADMIN_CODE_INFO |  是  | String   | 20 | 0 | 行政区划 |  
| MANAGER_DID |  是  | String   | 16 | 0 | 经理 |  
| METER_READER_DID |  是  | String   | 16 | 0 | 抄表员 |  
  
说明：商户抄表本  
  
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
