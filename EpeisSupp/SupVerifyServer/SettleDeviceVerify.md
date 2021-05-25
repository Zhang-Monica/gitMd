## 1、接口描述  
服务接口：(SettleDeviceVerify)装表、换表、拆表  
接口描述：装表、换表、拆表  
请求说明：POST https://api.epeis.com/Service/v1/SettleDeviceVerify/  
  
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
	"SETTLE_ACCOUNT":	{
		"SETTLEMENT_AID":	"",
		"BUS_CATEG_TYPE":	""
	},
	"SETTLE_METER":	[{
			"DEVICE_DID":	"",
			"DEVICE_TYPE":	"",
			"METER_READ_CHAN_TYPE":	"",
			"REMOTE_COPY_YESNO":	"",
			"METER_READ_ORDER":	0
		}],
	"COM_METER_INFO":	[{
			"DEVICE_DID":	"",
			"NORMAL_RETRO_TYPE":	"",
			"ENERGY_FLOW_TYPE":	"",
			"READINGS_TYPE":	"",
			"THE_METER_READ":	0,
			"TURN_UPSIDE_TYPE":	""
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
  
参数：SETTLE_ACCOUNT，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| SETTLEMENT_AID |  是  | String   | 16 | 0 | 结算户ID |  
| BUS_CATEG_TYPE |  是  | String   | 2 | 0 | 业务类别:1-新装，2-变更，11-换表，12-销户，50-过户 |  
  
说明：结算户信息  
参数：SETTLE_METER，类型：Array  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| DEVICE_DID |  是  | String   | 16 | 0 | 装置ID |  
| DEVICE_TYPE |  是  | String   | 2 | 0 | 装置类型 |  
| METER_READ_CHAN_TYPE |  否  | String   | 2 | 0 | 抄表渠道 |  
| REMOTE_COPY_YESNO |  是  | String   | 2 | 0 | 是否远抄 |  
| METER_READ_ORDER |  否  | Number   | 4 | 0 | 抄表序号 |  
  
说明：结算计量仪表  
参数：COM_METER_INFO，类型：Array  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| DEVICE_DID |  是  | String   | 16 | 0 | 装置ID |  
| NORMAL_RETRO_TYPE |  是  | String   | 2 | 0 | 正常/追补 |  
| ENERGY_FLOW_TYPE |  是  | String   | 2 | 0 | 能量流向 |  
| READINGS_TYPE |  是  | String   | 2 | 0 | 示数类型 |  
| THE_METER_READ |  是  | Number   | 16 | 6 | 本次表底 |  
| TURN_UPSIDE_TYPE |  否  | String   | 2 | 0 | 倒走/翻转 |  
  
说明：核算表底资料  
  
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
