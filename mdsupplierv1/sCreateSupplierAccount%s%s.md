## 1、接口描述  
服务接口：(sCreateSupplierAccount%s%s)商户账户开户  
接口描述：xxxxx  
请求说明：POST https://epeis.com/Service/v1/sCreateSupplierAccount%s%s  
  
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
			"TELEPHONE_INFO":	"",
			"BANK_ACCOUNT_INFO":	"",
			"BANK_NAME":	"",
			"EMAIL_INFO":	"",
			"VERIFY_CODE":	""
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
  
参数SUP_ACCOUNT，类型：Array  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| ACC_CERT_INFO |  是  | String   | 20 | 0 | xxxxx |  
| ACC_CERT_TYPE |  是  | String   | 2 | 0 | xxxxx |  
| ACCOUNT_PASSWORD |  是  | String   | 128 | 0 | xxxxx |  
| SUPPLIER_NAME |  是  | String   | 256 | 0 | xxxxx |  
| ADMIN_CODE_INFO |  是  | String   | 20 | 0 | xxxxx |  
| ADDRESS |  是  | String   | 128 | 0 | xxxxx |  
| SUPPLIER_TYPE |  是  | String   | 2 | 0 | xxxxx |  
| TAX_NUMBER_INFO |  是  | String   | 30 | 0 | xxxxx |  
| TELEPHONE_INFO |  是  | String   | 20 | 0 | xxxxx |  
| BANK_ACCOUNT_INFO |  是  | String   | 30 | 0 | xxxxx |  
| BANK_NAME |  是  | String   | 256 | 0 | xxxxx |  
| EMAIL_INFO |  是  | String   | 30 | 0 | xxxxx |  
| VERIFY_CODE |  是  | String   | 20 | 0 | xxxxx |  
  
说明：xxxxx  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"SUP_ACCOUNT":	[{
				"SUPPLIER_DID":	"",
				"ATTESTATION_TYPE":	"",
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
  
参数DATA，类型：object 本服务接口响应数据说明如下：  
参数SUP_ACCOUNT，类型：object  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| SUPPLIER_DID |  是  | String   | xxxxx |  
| ATTESTATION_TYPE |  是  | String   | xxxxx |  
| SUPPLIER_NAME |  是  | String   | xxxxx |  
  
说明：xxxxx  
## 4、服务接口说明  
xxxxxxx  
