## 1、接口描述  
服务接口：(QueryComProJectPrice)查询项目单价  
接口描述：查询项目单价  
请求说明：POST https://api.epeis.com/Service/v1/QueryComProJectPrice/  
  
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
  
参数：COM_METERAGE，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| SETTLEMENT_AID |  是  | String   | 16 | 0 | 16个字符,结算户编号 |  
| NORMAL_RETRO_TYPE |  是  | String   | 2 | 0 | 周期类型：1-周期，2-非周期 |  
  
说明：计量点信息  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"INOUT_COM_PRO_PRICE":	{
			"CHARGE_PACK_DID":	"",
			"NETWORK_TYPE":	"",
			"ACCOUNT_ITEM_INFO":	"",
			"CAT_ITEM_MAIN_NUM":	0,
			"CAT_ITEM_ATTACH_NUM":	0,
			"CAT_ITEM_PRICE":	0,
			"PRICE_UNIT_NAME":	"",
			"LADDER_LEVEL_TYPE":	"",
			"ABUNDANCE_TYPE":	"",
			"TIME_SHARING_TYPE":	"",
			"STARTUP_DATE":	0,
			"OUTAGE_DATE":	0
		}
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
  
参数：INOUT_COM_PRO_PRICE，类型：object  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| CHARGE_PACK_DID |  否  | String   | 计费套餐号 |  
| NETWORK_TYPE |  否  | String   | 1-水，2-电，3-气，4-热，5-冷，6-物业，7-房屋租赁 |  
| ACCOUNT_ITEM_INFO |  否  | String   | 会计科目编码 |  
| CAT_ITEM_MAIN_NUM |  否  | Number   | 分类项目主编号 |  
| CAT_ITEM_ATTACH_NUM |  否  | Number   | 分类项目附编号 |  
| CAT_ITEM_PRICE |  否  | Number   | 分类项目单价 |  
| PRICE_UNIT_NAME |  否  | String   | 价格单位名称 |  
| LADDER_LEVEL_TYPE |  否  | String   | 阶梯级次类型:1-一阶梯,2-二阶梯,3-三阶梯,4-四阶梯,5-五阶梯 |  
| ABUNDANCE_TYPE |  否  | String   | 丰枯类型:1-丰期,2-平期,3-枯期 |  
| TIME_SHARING_TYPE |  否  | String   | 分时时段类型:1-峰,2-平,3-谷,4-尖峰,5-低谷 |  
| STARTUP_DATE |  否  | Number   | 启用日期 |  
| OUTAGE_DATE |  否  | Number   | 停用日期 |  
  
说明：分类项目单价  
## 4、服务接口说明  
说明：无  
