## 1、接口描述  
服务接口：(oSelBindGrant)授权关系查询  
接口描述：xxxxx  
请求说明：POST https://epeis.com/Service/V1/oSelBindGrant  
  
## 2、服务接口请求参数  
#### 2.1、请求参数报文示例  
~~~  
{
	"SYS_HEAD":	{
		"CHANNEL_DID":	"",
		"DYNAMIC_KEY":	"",
		"REGISTER_DID":	""
	},
	"INOUT_BINDGRANT":	[{
			"ATTESTATION_TYPE":	"",
			"BINDCONNECT_TYPE":	"",
			"REGISTER_INFO":	""
		}],
	"SYS_PAGE":	{
		"PAGE_NO":	0,
		"PAGE_ROWS":	0,
		"NEXT_YESNO":	"",
		"TOTAL":	0
	}
}  
~~~  
#### 2.2、请求参数说明  
参数SYS_HEAD，类型：object  
  
| 参数 | 必选 | 类型 | 长度 | 精度 | 描述 |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| CHANNEL_DID | 是 | String | 16 |   | 16字符渠道号，请与平台运营服务中心联系 |  
| DYNAMIC_KEY | 是 | String | 64 |   | 动态请求密钥，请与平台运营服务中心联系 |  
| REGISTER_DID      |  是  | String   | 16 | 0 | 16位注册ID，必须实名 |  
  
参数INOUT_BINDGRANT，类型：Array  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| ATTESTATION_TYPE |  是  | String   | 2 | 0 | xxxxx |  
| BINDCONNECT_TYPE |  是  | String   | 2 | 0 | xxxxx |  
| REGISTER_INFO |  是  | String   | 64 | 0 | xxxxx |  
  
说明：xxxxx  
参数SYS_PAGE，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| PAGE_NO |  是  | Number   | 4 | 0 | xxxxx |  
| PAGE_ROWS |  否  | Number   | 4 | 0 | xxxxx |  
| NEXT_YESNO |  是  | String   | 2 | 0 | xxxxx |  
| TOTAL |  否  | Number   | 10 | 0 | xxxxx |  
  
说明：xxxxx  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"INOUT_BINDGRANT":	[{
				"REGISTER_DID":	"",
				"REGISTER_NAME":	"",
				"ACCOUNT_DID":	"",
				"ACCOUNT_TYPE":	"",
				"ACCOUNT_NAME":	"",
				"BUSINESS_DESC":	"",
				"ATTESTATION_TYPE":	"",
				"BINDCONNECT_TYPE":	""
			}],
		"SYS_PAGE":	{
			"PAGE_NO":	0,
			"PAGE_ROWS":	0,
			"NEXT_YESNO":	"",
			"TOTAL":	0
		}
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
参数INOUT_BINDGRANT，类型：object  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| REGISTER_DID |  是  | String   | xxxxx |  
| REGISTER_NAME |  是  | String   | xxxxx |  
| ACCOUNT_DID |  是  | String   | xxxxx |  
| ACCOUNT_TYPE |  是  | String   | xxxxx |  
| ACCOUNT_NAME |  是  | String   | xxxxx |  
| BUSINESS_DESC |  是  | String   | xxxxx |  
| ATTESTATION_TYPE |  是  | String   | xxxxx |  
| BINDCONNECT_TYPE |  是  | String   | xxxxx |  
  
说明：xxxxx  
参数SYS_PAGE，类型：object  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| PAGE_NO |  否  | Number   | xxxxx |  
| PAGE_ROWS |  否  | Number   | xxxxx |  
| NEXT_YESNO |  否  | String   | xxxxx |  
| TOTAL |  否  | Number   | xxxxx |  
  
说明：xxxxx  
## 4、服务接口说明  
xxxxxxx  
