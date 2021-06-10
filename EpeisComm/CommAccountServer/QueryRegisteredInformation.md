## 1、接口描述  
服务接口：(QueryRegisteredInformation)查询注册信息  
接口描述：查询注册信息  
请求说明：POST https://api.epeis.com/Service/v1/QueryRegisteredInformation/  
  
## 2、服务接口请求参数  
#### 2.1、请求参数报文示例  
~~~  
{
	"SYS_HEAD":	{
		"CHANNEL_DID":	"",
		"DYNAMIC_KEY":	""
	},
	"SYS_PAGE":	{
		"PAGE_NO":	1,
		"PAGE_ROWS":	8
	},
	"SYS_REGISTER":	[{
			"MOBILE_PHONE_INFO":	""
		}]
}  
~~~  
#### 2.2、请求参数说明  
参数：SYS_HEAD，类型：object  
  
| 参数 | 必选 | 类型 | 长度 | 精度 | 描述 |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| CHANNEL_DID | 是 | String | 16 | 0 | 16字符渠道号，请与平台运营服务中心联系 |  
| DYNAMIC_KEY | 是 | String | 64 | 0 | 动态请求密钥，请与平台运营服务中心联系 |  
  
参数：SYS_PAGE，类型：object  
  
| 参数 | 必选 | 类型 | 长度 | 精度 | 描述 |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| PAGE_NO       |  是  | Number   | 4 | 0 | 第几页，必须大于“0” |  
| PAGE_ROWS     |  是  | Number   | 4 | 0 | 每页行数，必须大于“0” |  
  
参数：SYS_REGISTER，类型：Array  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| MOBILE_PHONE_INFO |  是  | String   | 20 | 0 | 手机号 |  
  
说明：注册信息  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"SYS_PAGE":	{
			"PAGE_NO":	1,
			"PAGE_ROWS":	8,
			"NEXT_YESNO":	"2",
			"TOTAL":	1000
		},
		"SYS_REGISTER":	[{
				"REGISTER_DID":	"",
				"MOBILE_PHONE_INFO":	"",
				"EMAIL_INFO":	"",
				"REGISTER_INFO":	"",
				"REGISTER_TYPE":	"",
				"OPERATION_NAME":	"",
				"REGISTER_NAME":	"",
				"ATTESTATION_TYPE":	"",
				"CERTIFICATES_INFO":	"",
				"CERTIFICATES_TYPE":	"",
				"SEX_TYPE":	"",
				"OPEN_ACC_DATE":	0,
				"VALID_START_DATE":	0,
				"VALID_END_DATE":	0
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
  
参数：SYS_PAGE，类型：object  
  
| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| PAGE_NO       |  是  | Number   | 第几页 |  
| PAGE_ROWS     |  是  | Number   | 每页行数 |  
| NEXT_YESNO    |  是  | String   | 是否有下页，1-无，2-有 |  
| TOTAL         |  是  | Number   | 总行数 |  
  
参数：SYS_REGISTER，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| REGISTER_DID |  是  | String   | 注册号 |  
| MOBILE_PHONE_INFO |  是  | String   | 手机号 |  
| EMAIL_INFO |  是  | String   | eMail |  
| REGISTER_INFO |  是  | String   | 注册代码 |  
| REGISTER_TYPE |  是  | String   | 注册类型 |  
| OPERATION_NAME |  是  | String   | 操作员名称 |  
| REGISTER_NAME |  是  | String   | 注册名称 |  
| ATTESTATION_TYPE |  是  | String   | 认证类型 |  
| CERTIFICATES_INFO |  是  | String   | 证件号码 |  
| CERTIFICATES_TYPE |  是  | String   | 证件类型 |  
| SEX_TYPE |  是  | String   | 性别 |  
| OPEN_ACC_DATE |  是  | Number   | 开户日期 |  
| VALID_START_DATE |  是  | Number   | 证件有效起始日期 |  
| VALID_END_DATE |  是  | Number   | 证件有效截止日期 |  
  
说明：注册信息  
## 4、服务接口说明  
说明：注册前查询注册信息  
