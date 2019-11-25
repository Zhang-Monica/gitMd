## 1、接口描述  
服务接口：(QueryUserAccountDetailsy)查询用户信息  
接口描述：查询用户详细信息  
请求说明：POST https://api.epeis.com/CustAccountServer/v1/QueryUserAccountDetailsy  
  
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
		"USER_ACCOUNT_AID":	""
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
  
参数：USER_ACCOUNT，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| USER_ACCOUNT_AID |  是  | String   | 16 | 0 | 用户账户ID |  
  
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
				"REAL_ESTATE_AID":	"",
				"RESIDENT_YESNO":	"",
				"MAP_NAME":	"",
				"X":	0,
				"Y":	0,
				"OWE_BALANCE":	0,
				"RISK_BALANCE":	0,
				"MARGIN_BALANCE":	0,
				"ADVANCE_LIMIT":	0,
				"ATTESTATION_TYPE":	"",
				"ACCT_TYPE":	"",
				"AUTHORIZATION_TYPE":	""
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
| CUSTOMER_DID_MC |  是  | String   | 客户账户名称 |  
| USER_CUS_DID |  是  | String   | 用户客户ID |  
| USER_CUS_DID_MC |  是  | String   | 用户客户名称 |  
| USER_ACCOUNT_AID |  是  | String   | 用户账户ID |  
| USER_NAME |  是  | String   | 用户姓名 |  
| ADMIN_CODE_INFO |  是  | String   | 用户使用地址行政区划 |  
| ADDRESS |  是  | String   | 用户使用地址的详细地址 |  
| REAL_ESTATE_AID |  是  | String   | 不动产ID |  
| RESIDENT_YESNO |  是  | String   | 是否居民 |  
| MAP_NAME |  是  | String   | 用户使用地址实际地图坐标 |  
| X |  是  | Number   | 用户使用地址实际地图X坐标 |  
| Y |  是  | Number   | 用户使用地址实际地图Y坐标 |  
| OWE_BALANCE |  是  | Number   | 欠费金额 |  
| RISK_BALANCE |  是  | Number   | 风险金余额 |  
| MARGIN_BALANCE |  是  | Number   | 保证金余额 |  
| ADVANCE_LIMIT |  是  | Number   | 预付限额 |  
| ATTESTATION_TYPE |  是  | String   | 用户认证类型：1-未认证；2-审核中；3-已认证 |  
| ACCT_TYPE |  是  | String   | 用户账户类型：1-业主；2-非业主用户；3-非业主结算户 |  
| AUTHORIZATION_TYPE |  是  | String   | 账户授权状态：1-未授权；2-授权中；3-已授权；4-被授权 |  
  
说明：用户信息  
## 4、服务接口说明  
说明：'CUSTOMER_DID'码名转换字段名：'CUSTOMER_DID_MC','USER_CUS_DID'码名转换字段名：'USER_CUS_DID_MC'  
