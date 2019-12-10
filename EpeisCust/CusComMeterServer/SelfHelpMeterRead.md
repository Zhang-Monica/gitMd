## 1、接口描述  
服务接口：(SelfHelpMeterRead)客户自助抄表  
接口描述：客户自助抄表  
请求说明：POST https://api.epeis.com/Service/v1/SelfHelpMeterRead/  
  
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
	"COM_METER_INFO_TMP":	[{
			"SETTLEMENT_AID":	"",
			"DEVICE_DID":	"",
			"READINGS_TYPE":	"",
			"ENERGY_FLOW_TYPE":	"",
			"THE_METER_READ":	0
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
  
参数：COM_METER_INFO_TMP，类型：Array  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| SETTLEMENT_AID |  是  | String   | 16 | 0 | 16个字符，结算编号 |  
| DEVICE_DID |  是  | String   | 16 | 0 | 装置ID |  
| READINGS_TYPE |  是  | String   | 2 | 0 | 1-常，2-尖峰，3-峰，4-平，5-谷，6-低谷，7-无功，8-需量 |  
| ENERGY_FLOW_TYPE |  是  | String   | 2 | 0 | 1-正向，2-反向 |  
| THE_METER_READ |  是  | Number   | 16 | 6 | 本次表底 |  
  
说明：表底信息  
  
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
