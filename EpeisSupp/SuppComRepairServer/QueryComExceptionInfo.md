## 1、接口描述  
服务接口：(QueryComExceptionInfo)查询待处理异常信息  
接口描述：查询待处理异常信息  
请求说明：POST https://api.epeis.com/Service/v1/QueryComExceptionInfo/  
  
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
		"CUSTOMER_DID":	"",
		"USER_ACCOUNT_AID":	"",
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
  
参数：COM_METERAGE，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| CUSTOMER_DID |  是  | String   | 16 | 0 | 16个字符，客户编号 |  
| USER_ACCOUNT_AID |  否  | String   | 16 | 0 | 16个字符，用户账户ID |  
| BOOK_AID |  否  | String   | 16 | 0 | 16个字符，区段编号 |  
  
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
		"COM_METERAGE":	[{
				"SETTLEMENT_AID":	"",
				"ADDRESS":	"",
				"DEVICE_DID":	"",
				"NORMAL_RETRO_TYPE":	"",
				"NETWORK_TYPE":	"",
				"BOOK_AID":	"",
				"CUSTOMER_DID":	"",
				"USER_CUS_DID":	"",
				"USER_ACCOUNT_AID":	"",
				"METER_YESNO":	"",
				"MAIN_PACK_DID":	"",
				"STOP_EMPTY_YESNO":	"",
				"BASIC_FEES_TYPE":	"",
				"METER_DEMAND_RATE":	0,
				"ABUND_WITHER_YESNO":	"",
				"TIME_FEES_TYPE":	"",
				"LADDER_TYPE":	"",
				"METER_TOTAL_CONS":	0,
				"FIXED_CHARGE":	0,
				"FIXED_FEE":	0,
				"CALC_POSITION_TYPE":	""
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
  
参数：COM_METERAGE，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| SETTLEMENT_AID |  是  | String   | 16个字符,结算户编号 |  
| ADDRESS |  是  | String   | 128个字符，详细地址 |  
| DEVICE_DID |  是  | String   | 装置ID |  
| NORMAL_RETRO_TYPE |  是  | String   | 周期性类型:1-周期,2-非周期 |  
| NETWORK_TYPE |  是  | String   | 1-水，2-电，3-气，4-热，5-冷，6-物业，7-房屋租赁 |  
| BOOK_AID |  是  | String   | 16个字符，区段编号 |  
| CUSTOMER_DID |  是  | String   | 16个字符，客户编号 |  
| USER_CUS_DID |  是  | String   | 16个字符，用户内部ID |  
| USER_ACCOUNT_AID |  是  | String   | 16个字符，用户账户ID |  
| METER_YESNO |  是  | String   | 是否有表：1-否，2-是 |  
| MAIN_PACK_DID |  是  | String   | 主套餐号 |  
| STOP_EMPTY_YESNO |  是  | String   | 是否停/空：1-否，2-是 |  
| BASIC_FEES_TYPE |  是  | String   | 基本费计费类型：1-不计费，2-容量计费，3-需量计费 |  
| METER_DEMAND_RATE |  是  | Number   | 计费表计需量倍率 |  
| ABUND_WITHER_YESNO |  是  | String   | 是否丰枯：1-否，2-是 |  
| TIME_FEES_TYPE |  是  | String   | 分时计费类型：1-不分时，2-2分时,3-3分时,4-4分时,5-5分时 |  
| LADDER_TYPE |  是  | String   | 阶梯类型：1-无阶梯，2-年阶梯，3-月阶梯 |  
| METER_TOTAL_CONS |  是  | Number   | 计费表计总用量 |  
| FIXED_CHARGE |  是  | Number   | 计费固定量 |  
| FIXED_FEE |  是  | Number   | 计费固定费 |  
| CALC_POSITION_TYPE |  是  | String   | 计算位置类型 |  
  
说明：计量点信息  
## 4、服务接口说明  
说明：无  
