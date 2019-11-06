## 1、接口描述  
服务接口：(sInsUserAcctv1)添加用户账户  
接口描述：xxxxx  
请求说明：POST https://api.epeis.com/supplier/v1/sInsUserAcctv1  
  
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
	"USER_ACCOUNT":	[{
			"CUSTOMER_DID":	"",
			"USER_CUS_DID":	"",
			"USER_NAME":	"",
			"ADMIN_CODE_INFO":	"",
			"ADDRESS":	"",
			"MAP_NAME":	"",
			"X":	0,
			"Y":	0,
			"RESIDENT_YESNO":	"",
			"ATTESTATION_TYPE":	"",
			"RISK_BALANCE":	0,
			"MARGIN_BALANCE":	0,
			"ADVANCE_LIMIT":	0
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
  
  
参数USER_ACCOUNT，类型：Array  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| CUSTOMER_DID |  是  | String   | 16 | 0 | xxxxx |  
| USER_CUS_DID |  是  | String   | 16 | 0 | xxxxx |  
| USER_NAME |  是  | String   | 256 | 0 | xxxxx |  
| ADMIN_CODE_INFO |  是  | String   | 20 | 0 | xxxxx |  
| ADDRESS |  是  | String   | 128 | 0 | xxxxx |  
| MAP_NAME |  否  | String   | 128 | 0 | xxxxx |  
| X |  否  | Number   | 16 | 8 | xxxxx |  
| Y |  否  | Number   | 16 | 8 | xxxxx |  
| RESIDENT_YESNO |  是  | String   | 2 | 0 | xxxxx |  
| ATTESTATION_TYPE |  是  | String   | 2 | 0 | xxxxx |  
| RISK_BALANCE |  否  | Number   | 16 | 2 | xxxxx |  
| MARGIN_BALANCE |  否  | Number   | 16 | 2 | xxxxx |  
| ADVANCE_LIMIT |  否  | Number   | 16 | 2 | xxxxx |  
  
说明：xxxxx  
  
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
  
  
参数DATA，类型：object 本服务接口无响应数据！  
## 4、服务接口说明  
说明：xxxxxxx  