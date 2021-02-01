## 1、接口描述  
服务接口：(PlatQuerySupRegister)查询注册信息  
接口描述：平台根据手机号和名称查询注册信息  
请求说明：POST https://api.epeis.com/Service/v1/PlatQuerySupRegister/  
  
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
	"SYS_REGISTER":	{
		"MOBILE_PHONE_INFO":	"",
		"OPERATION_NAME":	""
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
  
参数：SYS_REGISTER，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| MOBILE_PHONE_INFO |  是  | String   | 20 | 0 | 手机号码 |  
| OPERATION_NAME |  是  | String   | 128 | 0 | 操作员名称 |  
  
说明：实名注册账户  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"SYS_REGISTER":	[{
				"REGISTER_DID":	"",
				"ATTESTATION_TYPE":	"",
				"REGISTER_NAME":	"",
				"MOBILE_PHONE_INFO":	"",
				"OPERATION_NAME":	""
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
  
参数：SYS_REGISTER，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| REGISTER_DID |  是  | String   | 注册ID |  
| ATTESTATION_TYPE |  是  | String   | 认证类型 |  
| REGISTER_NAME |  是  | String   | 注册名称 |  
| MOBILE_PHONE_INFO |  是  | String   | 手机号码 |  
| OPERATION_NAME |  是  | String   | 操作员名称 |  
  
说明：公共代码  
## 4、服务接口说明  
说明：无  
