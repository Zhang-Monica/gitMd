## 1、接口描述  
服务接口：(PlatCustChannelKeyReset)重设渠道密钥  
接口描述：用户重新设置渠道密钥  
请求说明：POST https://api.epeis.com/Service/v1/PlatCustChannelKeyReset/  
  
## 2、服务接口请求参数  
#### 2.1、请求参数报文示例  
~~~  
{
	"SYS_HEAD":	{
		"CHANNEL_DID":	"",
		"DYNAMIC_KEY":	""
	},
	"INOUT_VERIFYCODE":	{
		"REGISTER_TYPE":	"",
		"VERIFY_CODE":	""
	}
}  
~~~  
#### 2.2、请求参数说明  
参数：SYS_HEAD，类型：object  
  
| 参数 | 必选 | 类型 | 长度 | 精度 | 描述 |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| CHANNEL_DID | 是 | String | 16 | 0 | 16字符渠道号，请与平台运营服务中心联系 |  
| DYNAMIC_KEY | 是 | String | 64 | 0 | 动态请求密钥，请与平台运营服务中心联系 |  
  
参数：INOUT_VERIFYCODE，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| REGISTER_TYPE |  是  | String   | 2 | 0 | 获取验证码类型：1-手机号；2-邮箱 |  
| VERIFY_CODE |  是  | String   | 20 | 0 | 渠道号预留手机获取的验证码 |  
  
说明：渠道信息  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"SYS_CHANNEL":	[{
				"CHANNEL_DID":	"",
				"DYNAMIC_KEY":	""
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
  
参数：SYS_CHANNEL，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| CHANNEL_DID |  是  | String   | 渠道ID |  
| DYNAMIC_KEY |  是  | String   | 新生成密钥 |  
  
说明：渠道信息  
## 4、服务接口说明  
说明：重新设置密钥  
