## 1、接口描述  
服务接口：(cCreateUserAccount)添加用户信息  
接口描述：客户添加个人使用信息，如用户名、行政区划、详细地址  
请求说明：POST https://epeis.com/Service/v1/cCreateUserAccount  
  
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
	"USER_ACCOUNT":	[{
			"USER_NAME":	"",
			"ADMIN_CODE_INFO":	"",
			"ADDRESS":	"",
			"MAP_NAME":	"",
			"X":	0,
			"Y":	0
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
  
参数USER_ACCOUNT，类型：Array  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| USER_NAME |  是  | String   | 256 | 0 | 用户名 |  
| ADMIN_CODE_INFO |  是  | String   | 20 | 0 | 用户所在行政区划 |  
| ADDRESS |  是  | String   | 128 | 0 | 用户所在地实际地址 |  
| MAP_NAME |  否  | String   | 128 | 0 | 用户所在地实际地图坐标 |  
| X |  否  | Number   | 16 | 8 | 用户所在地实际地图X坐标 |  
| Y |  否  | Number   | 16 | 8 | 用户所在地实际地图Y坐标 |  
  
说明：用户信息表  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
	}
}  
~~~  
#### 3.2、响应参数说明  
  
| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| CODE | 是 | Number | 响应代码，0为成功 |  
| MESSAGE | 是 | String | 响应信息 |  
| DATA | 是 | Object | 响应数据 |  
  
参数DATA，类型：object 本服务接口无响应数据！  
## 4、服务接口说明  
说明：cInsUserAcctv1是用于客户本人添加用户信息时使用，接口只返回处理结果代码，错误代码详见ERROR_CODE  
