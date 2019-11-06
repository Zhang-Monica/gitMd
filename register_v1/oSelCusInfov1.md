## 1、接口描述  
服务接口：(oSelCusInfov1)按多条件查询客户账户  
接口描述：按多条件查询客户账户  
请求说明：POST https://api.epeis.com/register/v1/oSelCusInfov1  
  
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
	"SYS_REGISTER":	[{
			"MOBILE_PHONE_INFO":	"",
			"REGISTER_INFO":	"",
			"REGISTER_TYPE":	"",
			"CERTIFICATES_INFO":	"",
			"CERTIFICATES_TYPE":	"",
			"REGISTER_NAME":	""
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
  
参数SYS_REGISTER，类型：Array  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| MOBILE_PHONE_INFO |  否  | String   | 20 | 0 | 手机号码 |  
| REGISTER_INFO |  否  | String   | 64 | 0 | 注册代码 |  
| REGISTER_TYPE |  否  | String   | 2 | 0 | 1-手机2-邮箱3-QQ4-支付宝，5-微信 |  
| CERTIFICATES_INFO |  否  | String   | 20 | 0 | 证件号码 |  
| CERTIFICATES_TYPE |  否  | String   | 2 | 0 | 1-身份证，2-居住证，3-护照 |  
| REGISTER_NAME |  否  | String   | 128 | 0 | 128个字符，注册名称 |  
  
说明：实名注册账户  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"CUS_ACCOUNT":	[{
				"CUSTOMER_DID":	"",
				"CUSTOMER_NAME":	"",
				"MOBILE_PHONE_INFO":	"",
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
| CUSTOMER_DID |  是  | String   | 16个字符，客户唯一的账号ID |  
| CUSTOMER_NAME |  是  | String   | 256个字符，客户名称 |  
| MOBILE_PHONE_INFO |  是  | String   | 20个字符，手机号码 |  
| ADMIN_CODE_INFO |  是  | String   | 20个字符，行政区划统一编码 |  
| ADDRESS |  是  | String   | 128个字符，详细地址 |  
  
说明：客户账户  
## 4、服务接口说明  
说明：无  
