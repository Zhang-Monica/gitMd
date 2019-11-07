## 1、接口描述  
服务接口：(cUpdAcctv1)客户账户信息变更  
接口描述：客户账户信息变更  
请求说明：POST https://api.epeis.com/customer/v1/cUpdAcctv1  
  
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
	"CUS_ACCOUNT":	[{
			"CUSTOMER_NAME":	"",
			"EMAIL_INFO":	"",
			"VERIFY_CODE":	"",
			"TAX_NUMBER_INFO":	"",
			"TELEPHONE_INFO":	"",
			"BANK_ACCOUNT_INFO":	"",
			"BANK_NAME":	"",
			"ADMIN_CODE_INFO":	"",
			"ADDRESS":	""
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
  
参数：CUS_ACCOUNT，类型：Array  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| CUSTOMER_NAME |  是  | String   | 256 | 0 | 客户名称 |  
| EMAIL_INFO |  是  | String   | 30 | 0 | 邮箱 |  
| VERIFY_CODE |  是  | String   | 20 | 0 | 验证码 |  
| TAX_NUMBER_INFO |  是  | String   | 30 | 0 | 纳税识别号 |  
| TELEPHONE_INFO |  是  | String   | 20 | 0 | 固定电话 |  
| BANK_ACCOUNT_INFO |  是  | String   | 30 | 0 | 银行账号 |  
| BANK_NAME |  是  | String   | 256 | 0 | 开户行名称 |  
| ADMIN_CODE_INFO |  是  | String   | 20 | 0 | 行政区划 |  
| ADDRESS |  是  | String   | 128 | 0 | 详细地址 |  
  
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
				"CUSTOMER_TYPE":	""
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
  
参数：CUS_ACCOUNT，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| CUSTOMER_DID |  是  | String   | 客户账户 |  
| ATTESTATION_TYPE |  是  | String   | 客户认证类型：1-未认证；2-审核中；3-已认证 |  
| CUSTOMER_NAME |  是  | String   | 客户名称 |  
| CUSTOMER_TYPE |  是  | String   | 客户类型：1-自然人；2-非自然人 |  
  
说明：客户信息  
## 4、服务接口说明  
说明：无  
