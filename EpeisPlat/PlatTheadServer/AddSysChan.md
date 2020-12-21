## 1、接口描述  
服务接口：(AddSysChan)添加终端渠道  
接口描述：添加终端渠道  
请求说明：POST https://api.epeis.com/Service/v1/AddSysChan/  
  
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
	"SYS_CHANNEL":	{
		"CHANNEL_NAME":	"",
		"TERMINAL_TYPE":	"",
		"DYNAMIC_KEY":	"",
		"VALID_START_DATE":	0,
		"VALID_END_DATE":	0
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
  
参数：SYS_CHANNEL，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| CHANNEL_NAME |  是  | String   | 128 | 0 | 128个字符，渠道名称 |  
| TERMINAL_TYPE |  是  | String   | 2 | 0 | 1-pc，2-web，3-微信小程序，4-微信公众号，5-app，6-集成 |  
| DYNAMIC_KEY |  是  | String   | 64 | 0 | 64个字符，令牌 |  
| VALID_START_DATE |  是  | Number   | 8 | 0 | 证件有效起始日期 |  
| VALID_END_DATE |  是  | Number   | 8 | 0 | 证件有效截止日期 |  
  
说明：终端渠道信息  
  
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
说明：无  
