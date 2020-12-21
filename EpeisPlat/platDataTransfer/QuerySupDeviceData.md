## 1、接口描述  
服务接口：(QuerySupDeviceData)查询商户装置设备  
接口描述：查询商户装置设备  
请求说明：POST https://api.epeis.com/Service/v1/QuerySupDeviceData/  
  
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
	"INOUT_IMPORT_SUP_DEVICE":	{
		"BUSINESS_HALL_AID":	"",
		"NETWORK_TYPE":	""
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
  
参数：INOUT_IMPORT_SUP_DEVICE，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| BUSINESS_HALL_AID |  否  | String   | 16 | 0 | 营业网点 |  
| NETWORK_TYPE |  否  | String   | 2 | 0 | 服务类型：1-水；2-电；3-气；4-热；5-冷；6-物业；7-房屋租赁 |  
  
说明：商户装置设备信息  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"INOUT_IMPORT_SUP_DEVICE":	[{
				"BUSINESS_HALL_AID":	"",
				"DEVICE_DID":	"",
				"DEVICE_NAME":	"",
				"DEVICE_FACTORY_INFO":	"",
				"NETWORK_TYPE":	"",
				"DEVICE_TYPE":	"",
				"ELE_RATIO_TYPE":	"",
				"CHARGE_METER_RATE":	0,
				"VOLTAGE_RATIO_TYPE":	"",
				"INSTALL_TYPE":	"",
				"METER_BIT":	0,
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
  
参数：INOUT_IMPORT_SUP_DEVICE，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| BUSINESS_HALL_AID |  是  | String   | 营业网点 |  
| DEVICE_DID |  是  | String   | 装置ID |  
| DEVICE_NAME |  是  | String   | 装置名称 |  
| DEVICE_FACTORY_INFO |  是  | String   | 装置的出厂号 |  
| NETWORK_TYPE |  是  | String   | 服务类型：1-水；2-电；3-气；4-热；5-冷；6-物业；7-房屋租赁 |  
| DEVICE_TYPE |  是  | String   | 装置类型：1-热水表；2-冷水表；3-燃气表；4-流量计；5-电能表；6-热量表；7-电压互感器；8-电流互感器 |  
| ELE_RATIO_TYPE |  是  | String   | 电流互感器变比 |  
| CHARGE_METER_RATE |  是  | Number   | 电压互感器变比 |  
| VOLTAGE_RATIO_TYPE |  是  | String   | 计费表计倍率 |  
| INSTALL_TYPE |  是  | String   | 安装类型：1-未安装，2-已安装，3-已运行 |  
| METER_BIT |  是  | Number   | 表码位数 |  
| QUANTITY_UNIT_TYPE |  是  | String   | 量值单位类型 |  
  
说明：商户装置设备信息  
## 4、服务接口说明  
说明：无  
