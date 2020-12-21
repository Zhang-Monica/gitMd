## 1、接口描述  
服务接口：(AddChannelService)添加渠道服务权限  
接口描述：添加渠道服务权限  
请求说明：POST https://api.epeis.com/Service/v1/AddChannelService/  
  
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
	"SYS_CHA_SERVICE":	[{
			"CHANNEL_DID":	"",
			"SERVICE_NAME_INFO":	"",
			"SERVICE_TYPE":	"",
			"REG_ATTESTATION_TYPE":	"",
			"ACC_ATTESTATION_TYPE":	"",
			"REG_ACC_CONNECT_TYPE":	""
		}]
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
  
参数：SYS_CHA_SERVICE，类型：Array  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| CHANNEL_DID |  是  | String   | 16 | 0 | 16个字符，渠道唯一标识 |  
| SERVICE_NAME_INFO |  是  | String   | 30 | 0 | 服务名称 |  
| SERVICE_TYPE |  是  | String   | 2 | 0 | 1-商户，2-客户，3-平台，4-通用 |  
| REG_ATTESTATION_TYPE |  是  | String   | 2 | 0 | 1-注册号不需要注册，2-注册号需要注册，3-注册号需要实名 |  
| ACC_ATTESTATION_TYPE |  是  | String   | 2 | 0 | 1-账号不需要开户，2-账号需要开户，3-账号需要激活 |  
| REG_ACC_CONNECT_TYPE |  是  | String   | 2 | 0 | 1-绑定关系未建立，2-绑定关系需要激活，3-绑定关系已激活 |  
  
说明：渠道服务权限  
  
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
