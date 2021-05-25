## 1、接口描述  
服务接口：(CreateSupplierAccount)商户账户开户  
接口描述：商户账户开户  
请求说明：POST https://api.epeis.com/Service/v1/CreateSupplierAccount/  
  
## 2、服务接口请求参数  
#### 2.1、请求参数报文示例  
~~~  
{
	"SYS_HEAD":	{
		"CHANNEL_DID":	"",
		"DYNAMIC_KEY":	"",
		"REGISTER_DID":	""
	},
	"SUP_ACCOUNT":	[{
			"ACC_CERT_INFO":	"",
			"ACC_CERT_TYPE":	"",
			"ACCOUNT_PASSWORD":	"",
			"SUPPLIER_NAME":	"",
			"ADMIN_CODE_INFO":	"",
			"ADDRESS":	"",
			"SUPPLIER_TYPE":	"",
			"TAX_NUMBER_INFO":	"",
			"LEVY_TYPE":	"",
			"TELEPHONE_INFO":	"",
			"BANK_ACCOUNT_INFO":	"",
			"BANK_NAME":	"",
			"EMAIL_INFO":	"",
			"VERIFY_CODE":	""
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
  
参数：SUP_ACCOUNT，类型：Array  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| ACC_CERT_INFO |  是  | String   | 20 | 0 | 账户证件号码 |  
| ACC_CERT_TYPE |  是  | String   | 2 | 0 | 账户证件类型:1-身份证；2-统一社会信用代码 |  
| ACCOUNT_PASSWORD |  是  | String   | 128 | 0 | 账户密码 |  
| SUPPLIER_NAME |  是  | String   | 256 | 0 | 商户名称 |  
| ADMIN_CODE_INFO |  是  | String   | 20 | 0 | 行政区划 |  
| ADDRESS |  是  | String   | 128 | 0 | 详细地址 |  
| SUPPLIER_TYPE |  是  | String   | 2 | 0 | 商户账户类型:1-自然人；2-非自然人 |  
| TAX_NUMBER_INFO |  是  | String   | 30 | 0 | 纳税识别号 |  
| LEVY_TYPE |  否  | String   | 2 | 0 | 征收类型:1-正常；2-简易征收；3-免税 |  
| TELEPHONE_INFO |  是  | String   | 20 | 0 | 固定电话 |  
| BANK_ACCOUNT_INFO |  是  | String   | 30 | 0 | 银行账号 |  
| BANK_NAME |  是  | String   | 256 | 0 | 开户行名称 |  
| EMAIL_INFO |  否  | String   | 30 | 0 | 邮箱 |  
| VERIFY_CODE |  是  | String   | 20 | 0 | 验证码 |  
  
说明：商户账户信息  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"SUP_ACCOUNT":	[{
				"SUPPLIER_DID":	"",
				"SUP_ATTESTATION_TYPE":	"",
				"SUPPLIER_NAME":	""
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
  
参数：SUP_ACCOUNT，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| SUPPLIER_DID |  是  | String   | 商户ID |  
| SUP_ATTESTATION_TYPE |  是  | String   | 认证类型:1-未认证；2-审核中；3-已认证 |  
| SUPPLIER_NAME |  是  | String   | 商户名称 |  
  
说明：商户账户  
## 4、服务接口说明  
说明：无  
