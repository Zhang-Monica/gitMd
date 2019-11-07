## 1、接口描述  
服务接口：(pSelIdAuthv1)注册实名申请查询  
接口描述：xxxxx  
请求说明：POST https://api.epeis.com/platform/v1/pSelIdAuthv1  
  
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
	"SYS_PAGE":	{
		"PAGE_NO":	1,
		"PAGE_ROWS":	8
	},
	"SYS_REGISTER":	[{
			"ATTESTATION_TYPE":	""
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
  
参数SYS_PAGE，类型：object  
  
| 参数 | 必选 | 类型 | 长度 | 精度 | 描述 |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| PAGE_NO       |  是  | Number   | 4 | 0 | 第几页，必须大于“0” |  
| PAGE_ROWS     |  是  | Number   | 4 | 0 | 每页行数，必须大于“0” |  
  
参数SYS_REGISTER，类型：Array  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| ATTESTATION_TYPE |  是  | String   | 2 | 0 | xxxxx |  
  
说明：xxxxx  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"SYS_PAGE":	{
			"PAGE_NO":	1,
			"PAGE_ROWS":	8,
			"NEXT_YESNO":	"2",
			"TOTAL":	1000
		},
		"SYS_REGISTER":	[{
				"REGISTER_DID":	"",
				"MOBILE_PHONE_INFO":	"",
				"OPERATION_NAME":	"",
				"EMAIL_INFO":	"",
				"REGISTER_TYPE":	"",
				"ATTESTATION_TYPE":	"",
				"CERTIFICATES_INFO":	"",
				"CERTIFICATES_TYPE":	"",
				"REGISTER_NAME":	"",
				"SEX_TYPE":	"",
				"OPEN_ACC_DATE":	0,
				"VALID_START_DATE":	0,
				"VALID_END_DATE":	0,
				"OPERATION_DID":	"",
				"STATE_TYPE":	"",
				"OPERATION_DATE":	0,
				"OPERATION_TIME":	0
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
  
参数SYS_PAGE，类型：object  
  
| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| PAGE_NO       |  是  | Number   | 第几页 |  
| PAGE_ROWS     |  是  | Number   | 每页行数 |  
| NEXT_YESNO    |  是  | String   | 是否有下页，1-无，2-有 |  
| TOTAL         |  是  | Number   | 总行数 |  
  
参数DATA，类型：object 本服务接口响应数据说明如下：  
参数SYS_REGISTER，类型：object  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| REGISTER_DID |  是  | String   | xxxxx |  
| MOBILE_PHONE_INFO |  是  | String   | xxxxx |  
| OPERATION_NAME |  是  | String   | xxxxx |  
| EMAIL_INFO |  是  | String   | xxxxx |  
| REGISTER_TYPE |  是  | String   | xxxxx |  
| ATTESTATION_TYPE |  是  | String   | xxxxx |  
| CERTIFICATES_INFO |  是  | String   | xxxxx |  
| CERTIFICATES_TYPE |  是  | String   | xxxxx |  
| REGISTER_NAME |  是  | String   | xxxxx |  
| SEX_TYPE |  是  | String   | xxxxx |  
| OPEN_ACC_DATE |  是  | Number   | xxxxx |  
| VALID_START_DATE |  是  | Number   | xxxxx |  
| VALID_END_DATE |  是  | Number   | xxxxx |  
| OPERATION_DID |  是  | String   | xxxxx |  
| STATE_TYPE |  是  | String   | xxxxx |  
| OPERATION_DATE |  是  | Number   | xxxxx |  
| OPERATION_TIME |  是  | Number   | xxxxx |  
  
说明：xxxxx  
## 4、服务接口说明  
说明：xxxxxxx  
