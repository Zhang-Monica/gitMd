## 1、接口描述  
服务接口：(ImpCusInfoDataTrans)客户信息数据迁移  
接口描述：客户信息数据迁移  
请求说明：POST https://api.epeis.com/Service/v1/ImpCusInfoDataTrans/  
  
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
	"INOUT_IMPORT_CUS_INFO":	[{
			"CUSTOMER_NAME":	"",
			"SEX_TYPE":	"",
			"MOBILE_PHONE_INFO":	"",
			"EMAIL_INFO":	"",
			"CERTIFICATES_INFO":	"",
			"CERTIFICATES_TYPE":	"",
			"REGISTER_NAME":	"",
			"CUSTOMER_TYPE":	"",
			"ACC_CERT_INFO":	"",
			"ACC_CERT_TYPE":	"",
			"ADMIN_CODE_INFO":	"",
			"ADDRESS":	"",
			"TAX_NUMBER_INFO":	"",
			"TAX_TYPE":	"",
			"TELEPHONE_INFO":	"",
			"BANK_ACCOUNT_INFO":	"",
			"BANK_NAME":	""
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
  
参数：INOUT_IMPORT_CUS_INFO，类型：Array  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| CUSTOMER_NAME |  是  | String   | 256 | 0 | 客户名称 |  
| SEX_TYPE |  是  | String   | 2 | 0 | 1-男,2-女 |  
| MOBILE_PHONE_INFO |  是  | String   | 20 | 0 | 手机号码 |  
| EMAIL_INFO |  否  | String   | 30 | 0 | 邮箱 |  
| CERTIFICATES_INFO |  是  | String   | 20 | 0 | 证件号码 |  
| CERTIFICATES_TYPE |  是  | String   | 2 | 0 | 证件类型：1-身份证；2-统一社会信用代码 |  
| REGISTER_NAME |  是  | String   | 128 | 0 | 证件名称 |  
| CUSTOMER_TYPE |  是  | String   | 2 | 0 | 客户类型：1-自然人；2-非自然人 |  
| ACC_CERT_INFO |  是  | String   | 20 | 0 | 账户证件号码 |  
| ACC_CERT_TYPE |  是  | String   | 2 | 0 | 账户证件类型：1-身份证；2-统一社会信用代码 |  
| ADMIN_CODE_INFO |  否  | String   | 20 | 0 | 行政区划 |  
| ADDRESS |  否  | String   | 128 | 0 | 身份证地址 |  
| TAX_NUMBER_INFO |  否  | String   | 30 | 0 | 纳税识别号 |  
| TAX_TYPE |  否  | String   | 2 | 0 | 1-小规模纳税人，2-一般纳税人 |  
| TELEPHONE_INFO |  否  | String   | 20 | 0 | 固定电话 |  
| BANK_ACCOUNT_INFO |  否  | String   | 30 | 0 | 开户银行 |  
| BANK_NAME |  否  | String   | 256 | 0 | 开户行名称 |  
  
说明：客户信息  
  
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
