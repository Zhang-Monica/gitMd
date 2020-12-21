## 1、接口描述  
服务接口：(RepairDosageBack)退补用量  
接口描述：退补用量  
请求说明：POST https://api.epeis.com/Service/v1/RepairDosageBack/  
  
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
	"COM_METERAGE":	{
		"SETTLEMENT_AID":	"",
		"NORMAL_RETRO_TYPE":	""
	},
	"COM_METER_INFO_TMP":	[{
			"DEVICE_DID":	"",
			"NORMAL_RETRO_TYPE":	"",
			"ENERGY_FLOW_TYPE":	"",
			"READINGS_TYPE":	"",
			"ADDED_CONS":	0
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
  
参数：COM_METERAGE，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| SETTLEMENT_AID |  是  | String   | 16 | 0 | 结算户ID |  
| NORMAL_RETRO_TYPE |  是  | String   | 2 | 0 | 正常追补类型 |  
  
说明：计量点信息  
参数：COM_METER_INFO_TMP，类型：Array  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| DEVICE_DID |  是  | String   | 16 | 0 | 装置ID |  
| NORMAL_RETRO_TYPE |  是  | String   | 2 | 0 | 周期类型：1-周期，2-非周期 |  
| ENERGY_FLOW_TYPE |  是  | String   | 2 | 0 | 能量流向：1-正向，2-反向 |  
| READINGS_TYPE |  是  | String   | 2 | 0 | 示数类型：1-常，2-尖峰，3-峰，4-平，5-谷，6-低谷，7-无功，8-需量 |  
| ADDED_CONS |  是  | Number   | 16 | 2 | 追补用量 |  
  
说明：表底资料信息  
  
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
