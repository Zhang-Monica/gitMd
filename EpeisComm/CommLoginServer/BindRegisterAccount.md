## 1、接口描述  
服务接口：(BindRegisterAccount)第三方绑定注册号  
接口描述：快速绑定注册号  
请求说明：POST https://api.epeis.com/CommLoginServer/v1/BindRegisterAccount  
  
## 2、服务接口请求参数  
#### 2.1、请求参数报文示例  
~~~  
{
	"SYS_HEAD":	{
		"CHANNEL_DID":	"",
		"DYNAMIC_KEY":	""
	},
	"SYS_REGISTER":	{
		"REGISTER_INFO":	"",
		"REGISTER_TYPE":	"",
		"MOBILE_PHONE_INFO":	"",
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
  
参数：SYS_REGISTER，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| REGISTER_INFO |  是  | String   | 64 | 0 | 注册信息 |  
| REGISTER_TYPE |  是  | String   | 2 | 0 | 注册类型：1-手机；2-邮箱；3-QQ；4-支付宝；5-微信 |  
| MOBILE_PHONE_INFO |  是  | String   | 20 | 0 | 注册号的手机号 |  
| VERIFY_CODE |  是  | String   | 20 | 0 | 验证码 |  
  
说明：注册信息  
  
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
  
参数：DATA，类型：object 本服务接口无响应数据！  
## 4、服务接口说明  
说明：未注册时根据他人手机号绑定他人注册号  
