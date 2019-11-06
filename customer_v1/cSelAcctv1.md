## 1、接口描述  
服务接口：(cSelAcctv1)客户账户信息查询  
接口描述：查询客户账户  
请求说明：POST https://api.epeis.com/customer/v1/cSelAcctv1  
  
## 2、服务接口请求参数  
#### 2.1、请求参数报文示例  
~~~  
{
	"SYS_HEAD":	{
		"CHANNEL_DID":	"",
		"DYNAMIC_KEY":	"",
		"REGISTER_DID":	""
	},
	"CUS_ACCOUNT":	[{
			"CUSTOMER_DID":	""
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
  
  
参数CUS_ACCOUNT，类型：Array  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| CUSTOMER_DID |  是  | String   | 16 | 0 | 客户账户ID |  
  
说明：客户信息  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"CUS_ACCOUNT":	[{
				"CUSTOMER_DID":	"",
				"ATTESTATION_TYPE":	"",
				"CUSTOMER_NAME":	"",
				"CUSTOMER_TYPE":	"",
				"MOBILE_PHONE_INFO":	"",
				"EMAIL_INFO":	"",
				"ACC_CERT_INFO":	"",
				"ACC_CERT_TYPE":	"",
				"VALID_START_DATE":	0,
				"VALID_END_DATE":	0,
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
参数CUS_ACCOUNT，类型：object  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| CUSTOMER_DID |  是  | String   | 客户账户ID |  
| ATTESTATION_TYPE |  是  | String   | 客户激活类型：1-未激活；2-审核中；3-已激活 |  
| CUSTOMER_NAME |  是  | String   | 客户姓名 |  
| CUSTOMER_TYPE |  是  | String   | 客户类型：1-自然人；2-非自然人 |  
| MOBILE_PHONE_INFO |  是  | String   | 手机号码 |  
| EMAIL_INFO |  是  | String   | 邮箱 |  
| ACC_CERT_INFO |  是  | String   | 账户证件号码 |  
| ACC_CERT_TYPE |  是  | String   | 账户证件类型：1-身份证；2-统一社会信用代码 |  
| VALID_START_DATE |  是  | Number   | 证件有效起始日期 |  
| VALID_END_DATE |  是  | Number   | 证件有效截止日期 |  
| TAX_NUMBER_INFO |  是  | String   | 纳税识别号 |  
| TELEPHONE_INFO |  是  | String   | 固定电话 |  
| BANK_ACCOUNT_INFO |  是  | String   | 开户银行 |  
| BANK_NAME |  是  | String   | 开户行名称 |  
| ADMIN_CODE_INFO |  是  | String   | 行政区划 |  
| ADDRESS |  是  | String   | 详细地址 |  
  
说明：客户信息  
## 4、服务接口说明  
说明：无  
