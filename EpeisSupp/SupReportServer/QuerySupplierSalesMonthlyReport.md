## 1、接口描述  
服务接口：(QuerySupplierSalesMonthlyReport)查询商户销售回收月报  
接口描述：查询商户销售回收月报  
请求说明：POST https://api.epeis.com/Service/v1/QuerySupplierSalesMonthlyReport/  
  
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
	"ACC_VOLUME_PRICE":	{
		"ACCOUNT_MONTH":	0,
		"RET_STORES_AID":	"",
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
  
参数：ACC_VOLUME_PRICE，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| ACCOUNT_MONTH |  是  | Number   | 6 | 0 | 账务月份 |  
| RET_STORES_AID |  否  | String   | 16 | 0 | 营业网点ID |  
| NETWORK_TYPE |  否  | String   | 2 | 0 | 服务类型：1-水；2-电；3-气；4-热；5-冷；6-物业；7-房屋租赁 |  
  
说明：账务量价费汇总  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"INOUT_SALES_MON_REPORT":	[{
				"RETAIL_CO_DID":	"",
				"RET_STORES_AID":	"",
				"NETWORK_TYPE":	"",
				"ACCOUNT_MONTH":	0,
				"THIS_CALC_FEE":	0,
				"THIS_PAIDIN_FEE":	0,
				"THIS_OWE_FEE":	0,
				"THIS_RECOVER_RATE":	0,
				"LAST_CALC_FEE":	0,
				"LAST_PAIDIN_FEE":	0,
				"LAST_OWE_FEE":	0,
				"LAST_RECOVER_RATE":	0,
				"YEAR_CALC_FEE":	0,
				"YEAR_PAIDIN_FEE":	0,
				"YEAR_OWE_FEE":	0,
				"YEAR_RECOVER_RATE":	0,
				"NO_REACH_AMOUNT":	0,
				"STOCK_AMOUNT":	0,
				"TOTAL_OWE_AMOUNT":	0,
				"ADVANCE_AMOUNT":	0
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
  
参数：INOUT_SALES_MON_REPORT，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| RETAIL_CO_DID |  是  | String   | 销售公司编码 |  
| RET_STORES_AID |  是  | String   | 销售公司营业网点ID |  
| NETWORK_TYPE |  是  | String   | 服务类型：1-水；2-电；3-气；4-热；5-冷；6-物业；7-房屋租赁 |  
| ACCOUNT_MONTH |  是  | Number   | 帐务月份 |  
| THIS_CALC_FEE |  是  | Number   | 当月应收金额 |  
| THIS_PAIDIN_FEE |  是  | Number   | 当月实收金额 |  
| THIS_OWE_FEE |  是  | Number   | 当月欠费金额 |  
| THIS_RECOVER_RATE |  是  | Number   | 当月回收率 |  
| LAST_CALC_FEE |  是  | Number   | 上月应收金额 |  
| LAST_PAIDIN_FEE |  是  | Number   | 上月实收金额 |  
| LAST_OWE_FEE |  是  | Number   | 上月欠费金额 |  
| LAST_RECOVER_RATE |  是  | Number   | 上月回收率 |  
| YEAR_CALC_FEE |  是  | Number   | 上年同期应收金额 |  
| YEAR_PAIDIN_FEE |  是  | Number   | 上年同期实收金额 |  
| YEAR_OWE_FEE |  是  | Number   | 上年同期欠费金额 |  
| YEAR_RECOVER_RATE |  是  | Number   | 上年同期回收率 |  
| NO_REACH_AMOUNT |  是  | Number   | 未达金额 |  
| STOCK_AMOUNT |  是  | Number   | 库存金额 |  
| TOTAL_OWE_AMOUNT |  是  | Number   | 累计欠费金额 |  
| ADVANCE_AMOUNT |  是  | Number   | 当前预收金额 |  
  
说明：销售/回收月报  
## 4、服务接口说明  
说明：无  
