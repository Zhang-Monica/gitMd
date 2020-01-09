## 1、接口描述  
服务接口：(AddSettleMeter)增加结算计量仪表  
接口描述：增加结算计量仪表  
请求说明：POST https://api.epeis.com/Service/v1/AddSettleMeter/  
  
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
	"SETTLE_METER":	[{
			"BUSINESS_HALL_AID":	"",
			"DEVICE_FACTORY_INFO":	"",
			"NETWORK_TYPE":	"",
			"DEVICE_TYPE":	"",
			"METER_BIT":	0,
			"CHARGE_METER_RATE":	0,
			"QUANTITY_UNIT_TYPE":	""
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
  
参数：SETTLE_METER，类型：Array  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| BUSINESS_HALL_AID |  是  | String   | 16 | 0 | 营业网点 |  
| DEVICE_FACTORY_INFO |  是  | String   | 30 | 0 | 装置的出厂号 |  
| NETWORK_TYPE |  是  | String   | 2 | 0 | 管网类型：1-水；2-电；3-气；4-热；5-冷；6-物业；7-房屋租赁 |  
| DEVICE_TYPE |  是  | String   | 2 | 0 | 装置类型：1-热水表；2-冷水表；3-燃气表；4-流量计；5-电能表；6-热量表；7-电压互感器；8-电流互感器 |  
| METER_BIT |  是  | Number   | 4 | 0 | 表码位数 |  
| CHARGE_METER_RATE |  是  | Number   | 12 | 2 | 计费表计倍率 |  
| QUANTITY_UNIT_TYPE |  否  | String   | 2 | 0 | 量值单位类型 |  
  
说明：结算计量仪表  
  
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
