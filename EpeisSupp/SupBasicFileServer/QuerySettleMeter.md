## 1、接口描述  
服务接口：(QuerySettleMeter)查询结算计量仪表  
接口描述：查询结算计量仪表  
请求说明：POST https://api.epeis.com/Service/v1/QuerySettleMeter/  
  
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
	"SUP_DEVICE":	{
		"DEVICE_FACTORY_INFO":	"",
		"DEVICE_NAME":	"",
		"DEVICE_TYPE":	""
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
  
参数：SUP_DEVICE，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| DEVICE_FACTORY_INFO |  否  | String   | 30 | 0 | 装置的出厂号 |  
| DEVICE_NAME |  否  | String   | 128 | 0 | 装置名称 |  
| DEVICE_TYPE |  否  | String   | 2 | 0 | 装置类型 |  
  
说明：商户装置设备  
  
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
		"SETTLE_METER":	[{
				"DEVICE_DID":	"",
				"DEVICE_FACTORY_INFO":	"",
				"METER_INSTALL_LOCATE":	"",
				"DEVICE_TYPE":	"",
				"METER_BIT":	0,
				"METER_READ_CHAN_TYPE":	"",
				"REMOTE_COPY_YESNO":	"",
				"METER_READ_ORDER":	0,
				"CHARGE_METER_RATE":	0,
				"QUANTITY_UNIT_TYPE":	""
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
  
参数：SETTLE_METER，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| DEVICE_DID |  是  | String   | 装置ID |  
| DEVICE_FACTORY_INFO |  是  | String   | 装置的出厂号 |  
| METER_INSTALL_LOCATE |  是  | String   | 表具安装位置 |  
| DEVICE_TYPE |  是  | String   | 装置类型 |  
| METER_BIT |  是  | Number   | 表码位数 |  
| METER_READ_CHAN_TYPE |  是  | String   | 抄表渠道 |  
| REMOTE_COPY_YESNO |  是  | String   | 是否远抄 |  
| METER_READ_ORDER |  是  | Number   | 抄表序号 |  
| CHARGE_METER_RATE |  是  | Number   | 计费表计倍率 |  
| QUANTITY_UNIT_TYPE |  是  | String   | 量值单位类型 |  
  
说明：修改结算计量仪表  
## 4、服务接口说明  
说明：无  
