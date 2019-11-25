## 1、接口描述  
服务接口：(oSelAcctv1)查询账号信息  
接口描述：查询账号信息  
请求说明：POST https://api.epeis.com/register/v1/oSelAcctv1  
  
## 2、服务接口请求参数  
#### 2.1、请求参数报文示例  
~~~  
{
	"SYS_HEAD":	{
		"CHANNEL_DID":	"",
		"DYNAMIC_KEY":	"",
		"REGISTER_DID":	""
	},
	"CUS_ACCOUNT":	{
		"CUSTOMER_DID":	""
	}
}  
~~~  
#### 2.2、请求参数说明  
参数：SYS_HEAD，类型：object  
  
| 参数 | 必选 | 类型 | 长度 | 精度 | 描述 |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| CHANNEL_DID | 是 | String | 16 | 0 | 16字符渠道号，请与平台运营服务中心联系 |  
| DYNAMIC_KEY | 是 | String | 64 | 0 | 动态请求密钥，请与平台运营服务中心联系 |  
| REGISTER_DID      |  是  | String   | 16 | 0 | 16位注册ID，必须实名 |  
  
参数：CUS_ACCOUNT，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| CUSTOMER_DID |  否  | String   | 16 | 0 | 客户账户ID |  
  
说明：客户信息  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"INOUT_BINDGRANT":	[{
				"REGISTER_DID":	"",
				"ATTESTATION_TYPE":	"",
				"ACCOUNT_DID":	"",
				"ACCOUNT_NAME":	"",
				"ACCOUNT_TYPE":	"",
				"ACC_REGI_DID":	"",
				"MOBILE_PHONE_INFO":	"",
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
  
参数：DATA，类型：object 本服务接口响应数据说明如下：  
  
参数：INOUT_BINDGRANT，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| REGISTER_DID |  是  | String   | 注册ID |  
| ATTESTATION_TYPE |  是  | String   | 认证类型：1-未认证；2-审核中；3-已认证 |  
| ACCOUNT_DID |  是  | String   | 绑定的账户号 |  
| ACCOUNT_NAME |  是  | String   | 绑定的账户名 |  
| ACCOUNT_TYPE |  是  | String   | 市场主体账户类型:1-商户；2-客户；3-平台 |  
| ACC_REGI_DID |  是  | String   | 账户注册ID |  
| MOBILE_PHONE_INFO |  是  | String   | 开户手机号 |  
| ADDRESS |  是  | String   | 账户地址 |  
  
说明：绑定关系  
## 4、服务接口说明  
说明：无  
