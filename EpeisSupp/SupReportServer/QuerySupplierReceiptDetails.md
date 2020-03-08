## 1、接口描述  
服务接口：(QuerySupplierReceiptDetails)查询收款明细  
接口描述：查询收款明细  
请求说明：POST https://api.epeis.com/Service/v1/QuerySupplierReceiptDetails/  
  
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
	"ACC_USER_METER":	{
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
  
参数：ACC_USER_METER，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| ACCOUNT_MONTH |  是  | Number   | 6 | 0 | 账务月份 |  
| RET_STORES_AID |  否  | String   | 16 | 0 | 营业网点ID |  
| NETWORK_TYPE |  否  | String   | 2 | 0 | 服务类型：1-水；2-电；3-气；4-热；5-冷；6-物业；7-房屋租赁 |  
  
说明：用户账单计量点明细  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"INOUT_ACC_USER_METER":	[{
				"NETWORK_CO_DID":	"",
				"NET_STORES_AID":	"",
				"RETAIL_CO_DID":	"",
				"RET_STORES_AID":	"",
				"SETTLEMENT_AID":	"",
				"ADMIN_CODE_INFO":	"",
				"CUSTOMER_DID":	"",
				"USER_CUS_DID":	"",
				"USER_ACCOUNT_AID":	"",
				"CASH_TRANSFER_TYPE":	"",
				"NETWORK_TYPE":	"",
				"ACCOUNT_MONTH":	0,
				"PAID_IN_AMOUNT":	0,
				"PAID_IN_LIQ_DAMA":	0,
				"DEPOST_ADVANCE_PAY":	0,
				"BUSINESS_TYPE":	"",
				"BUSINESS_STATE_TYPE":	"",
				"BUS_OPERATOR_DID":	"",
				"OPERATION_DATE":	0,
				"SERIAL_DID":	"",
				"DETAIL_SERIAL_DID":	"",
				"LIST_BUSINESS_SID":	""
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
  
参数：INOUT_ACC_USER_METER，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| NETWORK_CO_DID |  是  | String   | 管网公司编码 |  
| NET_STORES_AID |  是  | String   | 管网公司营业网点ID |  
| RETAIL_CO_DID |  是  | String   | 销售公司编码 |  
| RET_STORES_AID |  是  | String   | 销售公司营业网点ID |  
| SETTLEMENT_AID |  是  | String   | 结算户ID |  
| ADMIN_CODE_INFO |  是  | String   | 行政区划 |  
| CUSTOMER_DID |  是  | String   | 客户编号 |  
| USER_CUS_DID |  是  | String   | 用户内部ID |  
| USER_ACCOUNT_AID |  是  | String   | 用户账户ID |  
| CASH_TRANSFER_TYPE |  是  | String   | 现金转账类型 |  
| NETWORK_TYPE |  是  | String   | 服务类型 |  
| ACCOUNT_MONTH |  是  | Number   | 帐务月份 |  
| PAID_IN_AMOUNT |  是  | Number   | 实收金额 |  
| PAID_IN_LIQ_DAMA |  是  | Number   | 实收违约金 |  
| DEPOST_ADVANCE_PAY |  是  | Number   | 存入预付款 |  
| BUSINESS_TYPE |  是  | String   | 账务业务类型 |  
| BUSINESS_STATE_TYPE |  是  | String   | 账务业务状态类型 |  
| BUS_OPERATOR_DID |  是  | String   | 业务操作员号 |  
| OPERATION_DATE |  是  | Number   | 操作日期 |  
| SERIAL_DID |  是  | String   | 业务流水号 |  
| DETAIL_SERIAL_DID |  是  | String   | 账单明细业务流水号 |  
| LIST_BUSINESS_SID |  是  | String   | 清单业务流水号 |  
  
说明：用户账单计量点明细  
## 4、服务接口说明  
说明：无  
