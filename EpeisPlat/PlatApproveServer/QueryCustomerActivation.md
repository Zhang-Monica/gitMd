## 1、接口描述  
服务接口：(QueryCustomerActivation)客户激活申请查询  
接口描述：xxxxx  
请求说明：POST https://api.epeis.com/Service/v1/QueryCustomerActivation/  
  
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
	"CUS_ACCOUNT":	[{
			"CUS_ATTESTATION_TYPE":	""
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
  
参数：SYS_PAGE，类型：object  
  
| 参数 | 必选 | 类型 | 长度 | 精度 | 描述 |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| PAGE_NO       |  是  | Number   | 4 | 0 | 第几页，必须大于“0” |  
| PAGE_ROWS     |  是  | Number   | 4 | 0 | 每页行数，必须大于“0” |  
  
参数：CUS_ACCOUNT，类型：Array  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| CUS_ATTESTATION_TYPE |  是  | String   | 2 | 0 | xxxxx |  
  
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
		"CUS_ACCOUNT":	[{
				"CERTIFICATES_INFO":	"",
				"CERTIFICATES_TYPE":	"",
				"MOBILE_PHONE_INFO":	"",
				"CUS_ATTESTATION_TYPE":	"",
				"CUSTOMER_DID":	"",
				"CUSTOMER_NAME":	"",
				"CUSTOMER_TYPE":	"",
				"EMAIL_INFO":	"",
				"OPEN_ACC_DATE":	0,
				"VALID_START_DATE":	0,
				"VALID_END_DATE":	0,
				"ADMIN_CODE_INFO":	"",
				"ADDRESS":	"",
				"TAX_TYPE":	"",
				"TAX_NUMBER_INFO":	"",
				"TELEPHONE_INFO":	"",
				"BANK_ACCOUNT_INFO":	"",
				"BANK_NAME":	"",
				"ACC_CERT_INFO":	"",
				"ACC_CERT_TYPE":	"",
				"AVAIL_BALANCE":	0,
				"LOAN_BALANCE":	0,
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
  
参数：DATA，类型：object 本服务接口响应数据说明如下：  
  
参数：SYS_PAGE，类型：object  
  
| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| PAGE_NO       |  是  | Number   | 第几页 |  
| PAGE_ROWS     |  是  | Number   | 每页行数 |  
| NEXT_YESNO    |  是  | String   | 是否有下页，1-无，2-有 |  
| TOTAL         |  是  | Number   | 总行数 |  
  
参数：CUS_ACCOUNT，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| CERTIFICATES_INFO |  是  | String   | xxxxx |  
| CERTIFICATES_TYPE |  是  | String   | xxxxx |  
| MOBILE_PHONE_INFO |  是  | String   | xxxxx |  
| CUS_ATTESTATION_TYPE |  是  | String   | xxxxx |  
| CUSTOMER_DID |  是  | String   | xxxxx |  
| CUSTOMER_NAME |  是  | String   | xxxxx |  
| CUSTOMER_TYPE |  是  | String   | xxxxx |  
| EMAIL_INFO |  是  | String   | xxxxx |  
| OPEN_ACC_DATE |  是  | Number   | xxxxx |  
| VALID_START_DATE |  是  | Number   | xxxxx |  
| VALID_END_DATE |  是  | Number   | xxxxx |  
| ADMIN_CODE_INFO |  是  | String   | xxxxx |  
| ADDRESS |  是  | String   | xxxxx |  
| TAX_TYPE |  是  | String   | xxxxx |  
| TAX_NUMBER_INFO |  是  | String   | xxxxx |  
| TELEPHONE_INFO |  是  | String   | xxxxx |  
| BANK_ACCOUNT_INFO |  是  | String   | xxxxx |  
| BANK_NAME |  是  | String   | xxxxx |  
| ACC_CERT_INFO |  是  | String   | xxxxx |  
| ACC_CERT_TYPE |  是  | String   | xxxxx |  
| AVAIL_BALANCE |  是  | Number   | xxxxx |  
| LOAN_BALANCE |  是  | Number   | xxxxx |  
| OPERATION_DID |  是  | String   | xxxxx |  
| STATE_TYPE |  是  | String   | xxxxx |  
| OPERATION_DATE |  是  | Number   | xxxxx |  
| OPERATION_TIME |  是  | Number   | xxxxx |  
  
说明：xxxxx  
## 4、服务接口说明  
说明：xxxxxxx  
