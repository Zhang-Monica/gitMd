## 1、接口描述  
服务接口：(QueryMeterReadInfo)查询抄表信息  
接口描述：查询抄表信息  
请求说明：POST https://api.epeis.com/Service/v1/QueryMeterReadInfo/  
  
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
	"INOUT_SETTLE_ACCOUNT":	{
		"USER_ACCOUNT_AID":	""
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
  
参数：INOUT_SETTLE_ACCOUNT，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| USER_ACCOUNT_AID |  是  | String   | 16 | 0 | 16个字符，用户账号唯一ID |  
  
说明：结算信息  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"COM_METER_INFO_TMP":	[{
				"DEVICE_DID":	"",
				"METER_BIT":	0,
				"READINGS_TYPE":	"",
				"ENERGY_FLOW_TYPE":	"",
				"DEVICE_FACTORY_INFO":	"",
				"METER_INSTALL_LOCATE":	"",
				"DEVICE_TYPE":	"",
				"LAST_METER_READ_DATE":	0,
				"LAST_METER_READ_TIME":	0,
				"LAST_METER_READ":	0
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
  
参数：COM_METER_INFO_TMP，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| DEVICE_DID |  是  | String   | 装置ID |  
| METER_BIT |  是  | Number   | 表码位数 |  
| READINGS_TYPE |  是  | String   | 1-常，2-尖峰，3-峰，4-平，5-谷，6-低谷，7-无功，8-需量 |  
| ENERGY_FLOW_TYPE |  是  | String   | 1-正向，2-反向 |  
| DEVICE_FACTORY_INFO |  是  | String   | 30个字符，表号 |  
| METER_INSTALL_LOCATE |  是  | String   | 128个字符，结算号安装位置 |  
| DEVICE_TYPE |  是  | String   | 1-热水表，2-冷水表，3-燃气表，4-流量计，5-电能表，6-热量表 |  
| LAST_METER_READ_DATE |  是  | Number   | 上次抄表日期 |  
| LAST_METER_READ_TIME |  是  | Number   | 上次抄表时间 |  
| LAST_METER_READ |  是  | Number   | 上次表底 |  
  
说明：表底信息  
## 4、服务接口说明  
说明：无  
