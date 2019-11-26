## 1、接口描述  
服务接口：(AuthorizedUserAccountList)查询被授权信息  
接口描述：查询被授权信息  
请求说明：POST https://api.epeis.com/Service/v1/AuthorizedUserAccountList/  
  
## 2、服务接口请求参数  
#### 2.1、请求参数报文示例  
~~~  
{
	"SYS_HEAD":	{
		"CHANNEL_DID":	"",
		"DYNAMIC_KEY":	"",
		"REGISTER_DID":	"",
		"ACCOUNT_DID":	""
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
| ACCOUNT_DID       |  是  | String   | 16 | 0 | 16位账户ID，必须激活 |  
  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"INOUT_USER_ACCOUNT":	[{
				"CUSTOMER_DID":	"",
				"USER_CUS_DID":	"",
				"USER_ACCOUNT_AID":	"",
				"USER_NAME":	"",
				"ADMIN_CODE_INFO":	"",
				"ADDRESS":	"",
				"BUS_AUTH_TYPE":	"",
				"ATTESTATION_TYPE":	""
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
  
参数：INOUT_USER_ACCOUNT，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| CUSTOMER_DID |  是  | String   | 客户账户ID |  
| USER_CUS_DID |  是  | String   | 被授权客户ID |  
| USER_ACCOUNT_AID |  是  | String   | 用户账户ID |  
| USER_NAME |  是  | String   | 用户姓名 |  
| ADMIN_CODE_INFO |  是  | String   | 用户使用地址行政区划 |  
| ADDRESS |  是  | String   | 用户使用地址的详细地址 |  
| BUS_AUTH_TYPE |  是  | String   | 业务类型：1-所有权变更；2-使用权；3-解除使用权；4-结算户变更 |  
| ATTESTATION_TYPE |  是  | String   | 用户认证类型：2-待确认；3-已认证 |  
  
说明：用户信息  
## 4、服务接口说明  
说明：无  
