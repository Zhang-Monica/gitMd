## 1、接口描述  
服务接口：(PlatQueryClearedFundLog)查询资金清分记录  
接口描述：查询资金清分记录  
请求说明：POST https://api.epeis.com/Service/v1/PlatQueryClearedFundLog/  
  
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
	"POOL_DAY_STATEMENT":	{
		"BOOK_AID":	"",
		"RETAIL_CO_DID":	"",
		"RET_STORES_AID":	"",
		"NETWORK_TYPE":	"",
		"SETTLE_ACCOUNT_MONTH":	0
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
  
参数：POOL_DAY_STATEMENT，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| BOOK_AID |  否  | String   | 16 | 0 | 区段编号 |  
| RETAIL_CO_DID |  否  | String   | 16 | 0 | 销售公司编码 |  
| RET_STORES_AID |  否  | String   | 16 | 0 | 销售公司营业网点ID |  
| NETWORK_TYPE |  否  | String   | 2 | 0 | 服务类型 |  
| SETTLE_ACCOUNT_MONTH |  否  | Number   | 6 | 0 | 结账月份 |  
  
说明：资金清分日记账表  
  
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
		"POOL_DAY_STATEMENT":	[{
				"NETWORK_CO_DID":	"",
				"NET_STORES_AID":	"",
				"RETAIL_CO_DID":	"",
				"RET_STORES_AID":	"",
				"MAIN_PACK_DID":	"",
				"BOOK_AID":	"",
				"NETWORK_TYPE":	"",
				"BUS_CATEG_TYPE":	"",
				"NORMAL_RETRO_TYPE":	"",
				"CASH_TRANSFER_TYPE":	"",
				"PURCHASE_SALE_TYPE":	"",
				"AGREE_PRICE_YESNO":	"",
				"ACCOUNT_ITEM_INFO":	"",
				"CAT_ITEM_NUM":	0,
				"CAT_ITEM_ATTACH_NUM":	0,
				"ACCOUNT_MONTH":	0,
				"SETTLE_ACCOUNT_MONTH":	0,
				"BUS_OPERATOR_DID":	"",
				"BUS_OCCUR_DATE":	0,
				"BUSINESS_NUM":	0,
				"AGENT_TRADE_DATE":	0,
				"FUND_TYPE":	"",
				"SALES_DEBIT_AMOUNT":	0,
				"SALES_CREDIT_AMOUNT":	0,
				"DELIVERY_DEBIT_AMOUNT":	0,
				"DELIVERY_CREDIT_AMOUNT":	0,
				"CHARGE_PACK_TYPE":	"",
				"TRANS_VOLTAGE_TYPE":	"",
				"DIST_LEVEL_RANGE_TYPE":	"",
				"RETAIL_VOLTAGE_GRADE_TYPE":	"",
				"PROPERTY_LEVEL_TYPE":	"",
				"ROLL_OPERATOR_DID":	"",
				"ROLL_ACCOUNT_DATE":	0,
				"ROLL_ACCOUNT_TIME":	0,
				"SETTLE_OPERATOR_DID":	"",
				"SETTLE_ACCOUNT_DATE":	0,
				"SETTLE_ACCOUNT_TIME":	0
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
  
参数：POOL_DAY_STATEMENT，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| NETWORK_CO_DID |  是  | String   | 管网公司编码 |  
| NET_STORES_AID |  是  | String   | 管网公司营业网点ID |  
| RETAIL_CO_DID |  是  | String   | 销售公司编码 |  
| RET_STORES_AID |  是  | String   | 销售公司营业网点ID |  
| MAIN_PACK_DID |  是  | String   | 主套餐号 |  
| BOOK_AID |  是  | String   | 区段编号 |  
| NETWORK_TYPE |  是  | String   | 服务类型 |  
| BUS_CATEG_TYPE |  是  | String   | 业务类别 |  
| NORMAL_RETRO_TYPE |  是  | String   | 正常/追补 |  
| CASH_TRANSFER_TYPE |  是  | String   | 现金转账类型 |  
| PURCHASE_SALE_TYPE |  是  | String   | 购售类型 |  
| AGREE_PRICE_YESNO |  是  | String   | 是否协议价 |  
| ACCOUNT_ITEM_INFO |  是  | String   | 会计科目编码 |  
| CAT_ITEM_NUM |  是  | Number   | 分类项目编号 |  
| CAT_ITEM_ATTACH_NUM |  是  | Number   | 分类项目附编号 |  
| ACCOUNT_MONTH |  是  | Number   | 帐务月份 |  
| SETTLE_ACCOUNT_MONTH |  是  | Number   | 结账月份 |  
| BUS_OPERATOR_DID |  是  | String   | 业务操作员号 |  
| BUS_OCCUR_DATE |  是  | Number   | 业务发生日期 |  
| BUSINESS_NUM |  是  | Number   | 业务笔数 |  
| AGENT_TRADE_DATE |  是  | Number   | 代理交易日期 |  
| FUND_TYPE |  是  | String   | 资金类型 |  
| SALES_DEBIT_AMOUNT |  是  | Number   | 到户借方发生额 |  
| SALES_CREDIT_AMOUNT |  是  | Number   | 到户贷方发生额 |  
| DELIVERY_DEBIT_AMOUNT |  是  | Number   | 配送借方发生额 |  
| DELIVERY_CREDIT_AMOUNT |  是  | Number   | 配送贷方发生额 |  
| CHARGE_PACK_TYPE |  是  | String   | 套餐类型 |  
| TRANS_VOLTAGE_TYPE |  是  | String   | 电压等级 |  
| DIST_LEVEL_RANGE_TYPE |  是  | String   | 配送等级范围 |  
| RETAIL_VOLTAGE_GRADE_TYPE |  是  | String   | 零售等级范围 |  
| PROPERTY_LEVEL_TYPE |  是  | String   | 物业服务等级 |  
| ROLL_OPERATOR_DID |  是  | String   | 轧账操作员号 |  
| ROLL_ACCOUNT_DATE |  是  | Number   | 轧帐日期 |  
| ROLL_ACCOUNT_TIME |  是  | Number   | 轧账时间 |  
| SETTLE_OPERATOR_DID |  是  | String   | 结账操作员号 |  
| SETTLE_ACCOUNT_DATE |  是  | Number   | 结账日期 |  
| SETTLE_ACCOUNT_TIME |  是  | Number   | 结账时间 |  
  
说明：资金清分日记账表  
## 4、服务接口说明  
说明：  
