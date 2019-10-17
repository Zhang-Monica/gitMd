## 1、接口描述  
服务接口：(oGetDynamicCode)获取动态验证码  
接口描述：xxxxx  
请求说明：POST https://epeis.com/Service/V1/oGetDynamicCode  
  
## 2、服务接口请求参数  
#### 2.1、请求参数报文示例  
~~~  
{
	"SYS_HEAD":	{
		"CHANNEL_DID":	"",
		"DYNAMIC_KEY":	""
	},
	"INOUT_VERIFYCODE":	[{
			"OBJECT_INFO":	"",
			"OBJECT_TYPE":	"",
			"REGISTER_INFO":	"",
			"REGISTER_TYPE":	"",
			"INPUT_YESNO":	""
		}]
}  
~~~  
#### 2.2、请求参数说明  
参数SYS_HEAD，类型：object  
  
| 参数 | 必选 | 类型 | 描述 |  
| :----------------- | :----: | :-------- | :---------------- |  
| CHANNEL_DID | 是 | String | 16字符渠道号，请与平台运营服务中心联系 |  
| DYNAMIC_KEY | 是 | String | 动态请求密钥，请与平台运营服务中心联系 |  
  
参数INOUT_VERIFYCODE，类型：Array  
  
| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| OBJECT_INFO |  否  | String   | xxxxx |  
| OBJECT_TYPE |  否  | String   | xxxxx |  
| REGISTER_INFO |  否  | String   | xxxxx |  
| REGISTER_TYPE |  是  | String   | xxxxx |  
| INPUT_YESNO |  是  | String   | xxxxx |  
  
说明：xxxxx  
  
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
xxxxxxx  
