## 1、接口描述  
服务接口：(cSelUserAcctv1)查询用户信息  
接口描述：查询用户信息  
请求说明：POST https://api.epeis.com/customer/v1/cSelUserAcctv1  
  
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
	"USER_ACCOUNT":	{
		"ATTESTATION_TYPE":	""
	}
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
  
  
参数USER_ACCOUNT，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| ATTESTATION_TYPE |  否  | String   | 2 | 0 | 用户认证类型：1-未认证；2-审核中；3-已认证 |  
  
说明：用户信息  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"INOUT_USER_ACCOUNT":	[{
				"CUSTOMER_DID":	"",
				"CUSTOMER_DID_MC":	"",
				"USER_CUS_DID":	"",
				"USER_CUS_DID_MC":	"",
				"USER_ACCOUNT_AID":	"",
				"USER_NAME":	"",
				"ADMIN_CODE_INFO":	"",
				"ADDRESS":	"",
				"ATTESTATION_TYPE":	"",
				"APPLY_YESNO":	"",
				"BUS_AUTH_TYPE":	""
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
参数INOUT_USER_ACCOUNT，类型：object  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| CUSTOMER_DID |  是  | String   | 客户账户ID |  
| CUSTOMER_DID_MC |  是  | String   | 客户账户名称 |  
| USER_CUS_DID |  是  | String   | 使用者客户ID |  
| USER_CUS_DID_MC |  是  | String   | 使用者客户名称 |  
| USER_ACCOUNT_AID |  是  | String   | 用户账户ID |  
| USER_NAME |  是  | String   | 用户姓名 |  
| ADMIN_CODE_INFO |  是  | String   | 用户使用地址行政区划 |  
| ADDRESS |  是  | String   | 用户使用地址的详细地址 |  
| ATTESTATION_TYPE |  是  | String   | 用户认证类型：1-未认证；2-审核中；3-已认证 |  
| APPLY_YESNO |  是  | String   | 是否有申请：1-否；2-是 |  
| BUS_AUTH_TYPE |  是  | String   | 业务类型：1-所有权变更；2-申请使用权授权；3-申请解除使用权；4-结算户变更 |  
  
说明：用户信息  
## 4、服务接口说明  
说明：'CUSTOMER_DID'码名转换字段名：'CUSTOMER_DID_MC','USER_CUS_DID'码名转换字段名：'USER_CUS_DID_MC'  