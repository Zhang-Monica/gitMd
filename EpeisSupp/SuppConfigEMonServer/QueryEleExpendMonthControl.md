## 1、接口描述  
服务接口：(QueryEleExpendMonthControl)查询电出账月份控制信息  
接口描述：查询电出账月份控制信息  
请求说明：POST https://api.epeis.com/SuppConfigEMonServer/v1/QueryEleExpendMonthControl  
  
## 2、服务接口请求参数  
#### 2.1、请求参数报文示例  
~~~  
{
	"SYS_HEAD":	{
		"CHANNEL_DID":	"",
		"DYNAMIC_KEY":	"",
		"REGISTER_DID":	""
	},
	"SYS_PAGE":	{
		"PAGE_NO":	1,
		"PAGE_ROWS":	8
	},
	"COM_EXPEND_CONTROL":	{
		"NETWORK_CO_DID":	"",
		"NET_STORES_AID":	"",
		"CHARGE_RULE_TYPE":	""
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
  
参数：SYS_PAGE，类型：object  
  
| 参数 | 必选 | 类型 | 长度 | 精度 | 描述 |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| PAGE_NO       |  是  | Number   | 4 | 0 | 第几页，必须大于“0” |  
| PAGE_ROWS     |  是  | Number   | 4 | 0 | 每页行数，必须大于“0” |  
  
参数：COM_EXPEND_CONTROL，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| NETWORK_CO_DID |  否  | String   | 16 | 0 | 管网公司编码 |  
| NET_STORES_AID |  否  | String   | 16 | 0 | 管网公司营业网点ID |  
| CHARGE_RULE_TYPE |  否  | String   | 2 | 0 | 1-不计，2-计整月，3-计半月，4-按天数计 |  
  
说明：出账月份控制信息  
  
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
		"COM_EXPEND_CONTROL":	{
			"NETWORK_CO_DID":	"",
			"NET_STORES_AID":	"",
			"NETWORK_TYPE":	"",
			"ACCOUNT_MONTH":	0,
			"CHARGE_RULE_TYPE":	"",
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
  
参数：SYS_PAGE，类型：object  
  
| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| PAGE_NO       |  是  | Number   | 第几页 |  
| PAGE_ROWS     |  是  | Number   | 每页行数 |  
| NEXT_YESNO    |  是  | String   | 是否有下页，1-无，2-有 |  
| TOTAL         |  是  | Number   | 总行数 |  
  
参数：COM_EXPEND_CONTROL，类型：object  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| NETWORK_CO_DID |  否  | String   | 管网公司编码 |  
| NET_STORES_AID |  否  | String   | 管网公司营业网点ID |  
| NETWORK_TYPE |  否  | String   | 2-电 |  
| ACCOUNT_MONTH |  否  | Number   | 账务月份 |  
| CHARGE_RULE_TYPE |  否  | String   | 1-不计，2-计整月，3-计半月，4-按天数计 |  
| STARTUP_DATE |  否  | Number   | 启用日期 |  
| OUTAGE_DATE |  否  | Number   | 停用日期 |  
  
说明：出账月份控制信息  
## 4、服务接口说明  
说明：无  
