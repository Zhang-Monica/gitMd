## 1、接口描述  
服务接口：(QueryComPriceDimension)查询目录价价格属性维度  
接口描述：查询目录价价格属性维度  
请求说明：POST https://api.epeis.com/Service/v1/QueryComPriceDimension/  
  
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
	"COM_PRO_PRICE":	{
		"ACCOUNT_ITEM_INFO":	"",
		"NETWORK_TYPE":	"",
		"BASIC_FEES_TYPE":	"",
		"ABUND_WITHER_YESNO":	"",
		"TIME_FEES_TYPE":	"",
		"LADDER_TYPE":	"",
		"LADDER_NUM_TYPE":	"",
		"RETAIL_VOLTAGE_GRADE_TYPE":	""
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
  
参数：COM_PRO_PRICE，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| ACCOUNT_ITEM_INFO |  是  | String   | 64 | 0 | 会计科目编码 |  
| NETWORK_TYPE |  是  | String   | 2 | 0 | 1-水，2-电，3-气，4-热，5-冷，6-物业，7-房屋租赁 |  
| BASIC_FEES_TYPE |  否  | String   | 2 | 0 | 基本费计费类型：1-不计费，2-容量计费，3-需量计费,传非0值查询基本费维度 |  
| ABUND_WITHER_YESNO |  否  | String   | 2 | 0 | 是否丰枯,传非0值查询丰枯维度 |  
| TIME_FEES_TYPE |  否  | String   | 2 | 0 | 分时计费类型：1-不分时，2-2分时，3-3分时,4-4分时，5-5分时,传非0值查询分时维度 |  
| LADDER_TYPE |  否  | String   | 2 | 0 | 阶梯类型：1-无阶梯，2-年阶梯，3-月阶梯,传非0值查询阶梯维度 |  
| LADDER_NUM_TYPE |  否  | String   | 2 | 0 | 阶梯数量：2-2阶梯，3-3阶梯，4-4阶梯，5-5阶梯,传非0值查询阶梯数量维度 |  
| RETAIL_VOLTAGE_GRADE_TYPE |  否  | String   | 2 | 0 | 零售等级范围,传非0值查询配送等级维度 |  
  
说明：计费套餐  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"COM_PRO_PRICE":	[{
				"BASIC_FEES_TYPE":	"",
				"ABUND_WITHER_YESNO":	"",
				"TIME_FEES_TYPE":	"",
				"LADDER_TYPE":	"",
				"LADDER_NUM_TYPE":	"",
				"RETAIL_VOLTAGE_GRADE_TYPE":	""
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
  
参数：COM_PRO_PRICE，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| BASIC_FEES_TYPE |  是  | String   | 基本费计费类型：1-不计费，2-容量计费，3-需量计费 |  
| ABUND_WITHER_YESNO |  是  | String   | 是否丰枯 |  
| TIME_FEES_TYPE |  是  | String   | 分时计费类型：1-不分时，2-2分时，3-3分时,4-4分时，5-5分时 |  
| LADDER_TYPE |  是  | String   | 阶梯类型：1-无阶梯，2-年阶梯，3-月阶梯 |  
| LADDER_NUM_TYPE |  是  | String   | 阶梯数量：2-2阶梯，3-3阶梯，4-4阶梯，5-5阶梯,传非0值查询阶梯数量维度 |  
| RETAIL_VOLTAGE_GRADE_TYPE |  是  | String   | 零售等级范围 |  
  
说明：计费套餐  
## 4、服务接口说明  
说明：无  
