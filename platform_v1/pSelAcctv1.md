## 1、接口描述  
服务接口：(pSelAcctv1)平台账户信息查询  
接口描述：xxxxx  
请求说明：POST https://api.epeis.com/platform/v1/pSelAcctv1  
  
## 2、服务接口请求参数  
#### 2.1、请求参数报文示例  
~~~  
{
	"SYS_HEAD":	{
		"CHANNEL_DID":	"",
		"DYNAMIC_KEY":	"",
		"REGISTER_DID":	""
	},
	"PLA_ACCOUNT":	[{
			"PLATFORM_DID":	""
		}]
}  
~~~  
#### 2.2、请求参数说明  
参数SYS_HEAD，类型：object  
  
| 参数 | 必选 | 类型 | 长度 | 精度 | 描述 |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| CHANNEL_DID | 是 | String | 16 | 0 | 16字符渠道号，请与平台运营服务中心联系 |  
| DYNAMIC_KEY | 是 | String | 64 | 0 | 动态请求密钥，请与平台运营服务中心联系 |  
| REGISTER_DID      |  是  | String   | 16 | 0 | 16位注册ID，可不实名 |  
  
参数PLA_ACCOUNT，类型：Array  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| PLATFORM_DID |  否  | String   | 16 | 0 | xxxxx |  
  
说明：xxxxx  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"PLA_ACCOUNT":	[{
				"CERTIFICATES_INFO":	"",
				"CERTIFICATES_TYPE":	"",
				"PLATFORM_DID":	"",
				"PLATFORM_NAME":	"",
				"PLATFORM_TYPE":	"",
				"EMAIL_INFO":	"",
				"ACC_CERT_INFO":	"",
				"ACC_CERT_TYPE":	"",
				"VALID_START_DATE":	0,
				"VALID_END_DATE":	0,
				"TAX_TYPE":	"",
				"TAX_NUMBER_INFO":	"",
				"TELEPHONE_INFO":	"",
				"BANK_ACCOUNT_INFO":	"",
				"BANK_NAME":	"",
				"ADMIN_CODE_INFO":	"",
				"ADDRESS":	""
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
参数PLA_ACCOUNT，类型：object  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| CERTIFICATES_INFO |  是  | String   | xxxxx |  
| CERTIFICATES_TYPE |  是  | String   | xxxxx |  
| PLATFORM_DID |  是  | String   | xxxxx |  
| PLATFORM_NAME |  是  | String   | xxxxx |  
| PLATFORM_TYPE |  是  | String   | xxxxx |  
| EMAIL_INFO |  是  | String   | xxxxx |  
| ACC_CERT_INFO |  是  | String   | xxxxx |  
| ACC_CERT_TYPE |  是  | String   | xxxxx |  
| VALID_START_DATE |  是  | Number   | xxxxx |  
| VALID_END_DATE |  是  | Number   | xxxxx |  
| TAX_TYPE |  是  | String   | xxxxx |  
| TAX_NUMBER_INFO |  是  | String   | xxxxx |  
| TELEPHONE_INFO |  是  | String   | xxxxx |  
| BANK_ACCOUNT_INFO |  是  | String   | xxxxx |  
| BANK_NAME |  是  | String   | xxxxx |  
| ADMIN_CODE_INFO |  是  | String   | xxxxx |  
| ADDRESS |  是  | String   | xxxxx |  
  
说明：xxxxx  
## 4、服务接口说明  
说明：xxxxxxx  
