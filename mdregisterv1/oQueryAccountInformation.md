## 1、接口描述  
服务接口：(oQueryAccountInformation)查询账号信息  
接口描述：xxxxx  
请求说明：POST https://epeis.com/Service/v1/oQueryAccountInformation  
  
## 2、服务接口请求参数  
#### 2.1、请求参数报文示例  
~~~  
{
	"SYS_HEAD":	{
		"CHANNEL_DID":	"",
		"DYNAMIC_KEY":	"",
		"REGISTER_DID":	""
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
  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"SYS_REG_CONNECT":	[{
				"REGISTER_DID":	"",
				"ATTESTATION_TYPE":	"",
				"ACCOUNT_DID":	"",
				"ACCOUNT_TYPE":	""
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
参数SYS_REG_CONNECT，类型：object  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| REGISTER_DID |  是  | String   | xxxxx |  
| ATTESTATION_TYPE |  是  | String   | xxxxx |  
| ACCOUNT_DID |  是  | String   | xxxxx |  
| ACCOUNT_TYPE |  是  | String   | xxxxx |  
  
说明：xxxxx  
## 4、服务接口说明  
xxxxxxx  