## 1、接口描述  
服务接口：(QueryComMeterReadInfo)查询表底信息  
接口描述：查询表底信息  
请求说明：POST https://api.epeis.com/Service/v1/QueryComMeterReadInfo/  
  
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
	"SYS_PAGE":	{
		"PAGE_NO":	1,
		"PAGE_ROWS":	8
	},
	"COM_METERAGE":	{
		"DEVICE_DID":	"",
		"NORMAL_RETRO_TYPE":	""
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
  
参数：SYS_PAGE，类型：object  
  
| 参数 | 必选 | 类型 | 长度 | 精度 | 描述 |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| PAGE_NO       |  是  | Number   | 4 | 0 | 第几页，必须大于“0” |  
| PAGE_ROWS     |  是  | Number   | 4 | 0 | 每页行数，必须大于“0” |  
  
参数：COM_METERAGE，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| DEVICE_DID |  是  | String   | 16 | 0 | 装置ID |  
| NORMAL_RETRO_TYPE |  是  | String   | 2 | 0 | 周期类型：1-周期，2-非周期 |  
  
说明：计量点信息  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"SYS_PAGE":	{
			"PAGE_NO":	1,
			"PAGE_ROWS":	8,
			"NEXT_YESNO":	"2",
			"TOTAL":	1000
		},
		"COM_METER_INFO":	[{
				"DEVICE_DID":	"",
				"NORMAL_RETRO_TYPE":	"",
				"DEVICE_FACTORY_INFO":	"",
				"METER_INSTALL_LOCATE":	"",
				"DEVICE_TYPE":	"",
				"METER_BIT":	0,
				"ENERGY_FLOW_TYPE":	"",
				"READINGS_TYPE":	"",
				"LAST_METER_READ_DATE":	0,
				"LAST_METER_READ_TIME":	0,
				"LAST_METER_READ":	0,
				"THE_METER_READ_DATE":	0,
				"THE_METER_READ_TIME":	0,
				"THE_METER_READ":	0,
				"METER_READ_CHAN_TYPE":	"",
				"METER_READ_ORDER":	0,
				"CHARGE_METER_RATE":	0,
				"TURN_UPSIDE_TYPE":	""
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
  
参数：SYS_PAGE，类型：object  
  
| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| PAGE_NO       |  是  | Number   | 第几页 |  
| PAGE_ROWS     |  是  | Number   | 每页行数 |  
| NEXT_YESNO    |  是  | String   | 是否有下页，1-无，2-有 |  
| TOTAL         |  是  | Number   | 总行数 |  
  
参数：COM_METER_INFO，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| DEVICE_DID |  是  | String   | 装置ID |  
| NORMAL_RETRO_TYPE |  是  | String   | 周期类型：1-周期，2-非周期 |  
| DEVICE_FACTORY_INFO |  是  | String   | 装置的出厂号 |  
| METER_INSTALL_LOCATE |  是  | String   | 表具安装位置 |  
| DEVICE_TYPE |  是  | String   | 装置类型：1-热水表，2-冷水表，3-燃气表，4-流量计，5-电能表，6-热量表 |  
| METER_BIT |  是  | Number   | 表码位数 |  
| ENERGY_FLOW_TYPE |  是  | String   | 能量流向：1-正向，2-反向 |  
| READINGS_TYPE |  是  | String   | 示数类型：1-常，2-尖峰，3-峰，4-平，5-谷，6-低谷，7-无功，8-需量 |  
| LAST_METER_READ_DATE |  是  | Number   | 上次抄表日期 |  
| LAST_METER_READ_TIME |  是  | Number   | 上次抄表时间 |  
| LAST_METER_READ |  是  | Number   | 上次表底 |  
| THE_METER_READ_DATE |  是  | Number   | 本次抄表日期 |  
| THE_METER_READ_TIME |  是  | Number   | 本次抄表时间 |  
| THE_METER_READ |  是  | Number   | 本次表底 |  
| METER_READ_CHAN_TYPE |  是  | String   | 抄表渠道：1-抄表员抄，2-客户抄，3-第三方抄 |  
| METER_READ_ORDER |  是  | Number   | 抄表序号 |  
| CHARGE_METER_RATE |  是  | Number   | 计费表计倍率 |  
| TURN_UPSIDE_TYPE |  是  | String   | 倒走翻转类型：1-正常，2-倒走，3-翻转 |  
  
说明：表底资料信息  
## 4、服务接口说明  
说明：无  
