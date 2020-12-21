## 1、接口描述  
服务接口：(QueryUnChargeOffMeterTotalInfo)查询汇总待出账表底信息  
接口描述：查询汇总待出账表底信息  
请求说明：POST https://api.epeis.com/Service/v1/QueryUnChargeOffMeterTotalInfo/  
  
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
	"SUP_BOOK":	{
		"BOOK_AID":	""
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
  
参数：SUP_BOOK，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| BOOK_AID |  否  | String   | 16 | 0 | 抄表区段编号 |  
  
说明：商户抄表本  
  
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
				"DEVICE_FACTORY_INFO":	"",
				"METER_INSTALL_LOCATE":	"",
				"DEVICE_TYPE":	"",
				"METER_BIT":	0,
				"ENERGY_FLOW_TYPE":	"",
				"READINGS_TYPE":	"",
				"LAST_METER_READ_DATE":	0,
				"LAST_METER_READ_TIME":	0,
				"LAST_METER_READ":	0,
				"ACCU_AVG_METER_CONS":	0,
				"ACCU_AVG_REDUCE_CONS":	0,
				"ACCU_AVG_CHARGE_CONS":	0,
				"THE_METER_READ_DATE":	0,
				"THE_METER_READ_TIME":	0,
				"THE_METER_READ":	0,
				"THE_METER_CONS":	0,
				"THE_REDUCE_CONS":	0,
				"THE_CHARGE_CONS":	0,
				"OLD_METER_CONS":	0,
				"ADDED_CONS":	0,
				"METER_MARGIN":	0,
				"METER_READ_CHAN_TYPE":	"",
				"NORMAL_RETRO_TYPE":	"",
				"METER_READ_ORDER":	0,
				"CHARGE_METER_RATE":	0,
				"TURN_UPSIDE_TYPE":	"",
				"URL":	"",
				"THE_ACCOUNT_DATE":	0,
				"THE_ACCOUNT_TIME":	0
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
| DEVICE_FACTORY_INFO |  是  | String   | 装置的出厂号 |  
| METER_INSTALL_LOCATE |  是  | String   | 表具安装位置 |  
| DEVICE_TYPE |  是  | String   | 装置类型 |  
| METER_BIT |  是  | Number   | 表码位数 |  
| ENERGY_FLOW_TYPE |  是  | String   | 能量流向 |  
| READINGS_TYPE |  是  | String   | 示数类型 |  
| LAST_METER_READ_DATE |  是  | Number   | 上次抄表日期 |  
| LAST_METER_READ_TIME |  是  | Number   | 上次抄表时间 |  
| LAST_METER_READ |  是  | Number   | 上次表底 |  
| ACCU_AVG_METER_CONS |  是  | Number   | 累计日均表计用量 |  
| ACCU_AVG_REDUCE_CONS |  是  | Number   | 累计日均套减用量 |  
| ACCU_AVG_CHARGE_CONS |  是  | Number   | 累计日均计费用量 |  
| THE_METER_READ_DATE |  是  | Number   | 本次抄表日期 |  
| THE_METER_READ_TIME |  是  | Number   | 本次抄表时间 |  
| THE_METER_READ |  是  | Number   | 本次表底 |  
| THE_METER_CONS |  是  | Number   | 本次表计用量 |  
| THE_REDUCE_CONS |  是  | Number   | 本次套减用量 |  
| THE_CHARGE_CONS |  是  | Number   | 本次计费用量 |  
| OLD_METER_CONS |  是  | Number   | 旧表用量 |  
| ADDED_CONS |  是  | Number   | 追加用量 |  
| METER_MARGIN |  是  | Number   | 表计余量 |  
| METER_READ_CHAN_TYPE |  是  | String   | 抄表渠道 |  
| NORMAL_RETRO_TYPE |  是  | String   | 正常/追补 |  
| METER_READ_ORDER |  是  | Number   | 抄表序号 |  
| CHARGE_METER_RATE |  是  | Number   | 计费表计倍率 |  
| TURN_UPSIDE_TYPE |  是  | String   | 倒走翻转类型 |  
| URL |  是  | String   | URL链接 |  
| THE_ACCOUNT_DATE |  是  | Number   | 本次核算日期 |  
| THE_ACCOUNT_TIME |  是  | Number   | 本次核算时间 |  
  
说明：表底资料信息  
## 4、服务接口说明  
说明：无  
