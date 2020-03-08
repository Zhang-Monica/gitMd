## 1、接口描述  
服务接口：(QuerySupplierFinacialStatementDetails)查询财务对账明细  
接口描述：查询财务对账明细  
请求说明：POST https://api.epeis.com/Service/v1/QuerySupplierFinacialStatementDetails/  
  
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
	"INOUT_ACC_RECONCILIATION":	{
		"BUS_OCCUR_DATE":	0,
		"OPERATION_DATE":	0,
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
  
参数：INOUT_ACC_RECONCILIATION，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| BUS_OCCUR_DATE |  是  | Number   | 8 | 0 | 业务发生日期起始日期 |  
| OPERATION_DATE |  是  | Number   | 8 | 0 | 业务发生日期截止日期 |  
| NETWORK_TYPE |  否  | String   | 2 | 0 | 服务类型 |  
  
说明：财务对账明细表  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"INOUT_ACC_RECONCILIATION":	[{
				"NETWORK_CO_DID":	"",
				"NET_STORES_AID":	"",
				"RETAIL_CO_DID":	"",
				"RET_STORES_AID":	"",
				"NETWORK_TYPE":	"",
				"CASH_TRANSFER_TYPE":	"",
				"PURCHASE_SALE_TYPE":	"",
				"ACCOUNT_ITEM_INFO":	"",
				"CAT_ITEM_NUM":	0,
				"CAT_ITEM_ATTACH_NUM":	0,
				"ACCOUNT_MONTH":	0,
				"SETTLE_ACCOUNT_MONTH":	0,
				"BUS_OPERATOR_DID":	"",
				"BUS_OCCUR_DATE":	0,
				"RECE_AMOUNT":	0,
				"PAID_IN_AMOUNT":	0,
				"RECEIPT_LIQ_DAMA":	0,
				"PAID_IN_LIQ_DAMA":	0,
				"ROLL_OPERATOR_DID":	"",
				"ROLL_ACCOUNT_DATE":	0,
				"SETTLE_OPERATOR_DID":	"",
				"SETTLE_ACCOUNT_DATE":	0,
				"BILL_NUM_INFO":	"",
				"BILL_AMOUNT":	0,
				"DRAWER":	"",
				"RECEIPT_DATE":	0,
				"PROMISE_DATE":	0,
				"ARRIVAL_DATE":	0,
				"BILL_STATE_TYPE":	"",
				"DRAW_BANK_ACC_INFO":	"",
				"DRAW_BANK_NAME":	"",
				"RECE_BANK_ACC_INFO":	"",
				"BANK_NAME":	"",
				"BANK_ACC_NAME":	"",
				"AGENT_OPERATOR_DID":	""
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
  
参数：INOUT_ACC_RECONCILIATION，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| NETWORK_CO_DID |  是  | String   | 管网公司编码 |  
| NET_STORES_AID |  是  | String   | 管网公司营业网点ID |  
| RETAIL_CO_DID |  是  | String   | 销售公司编码 |  
| RET_STORES_AID |  是  | String   | 销售公司营业网点ID |  
| NETWORK_TYPE |  是  | String   | 服务类型 |  
| CASH_TRANSFER_TYPE |  是  | String   | 现金转账类型 |  
| PURCHASE_SALE_TYPE |  是  | String   | 购售类型 |  
| ACCOUNT_ITEM_INFO |  是  | String   | 会计科目编码 |  
| CAT_ITEM_NUM |  是  | Number   | 分类项目编号 |  
| CAT_ITEM_ATTACH_NUM |  是  | Number   | 分类项目附编号 |  
| ACCOUNT_MONTH |  是  | Number   | 帐务月份 |  
| SETTLE_ACCOUNT_MONTH |  是  | Number   | 结账月份 |  
| BUS_OPERATOR_DID |  是  | String   | 业务操作员号 |  
| BUS_OCCUR_DATE |  是  | Number   | 业务发生日期 |  
| RECE_AMOUNT |  是  | Number   | 应收金额 |  
| PAID_IN_AMOUNT |  是  | Number   | 实收金额 |  
| RECEIPT_LIQ_DAMA |  是  | Number   | 应收违约金 |  
| PAID_IN_LIQ_DAMA |  是  | Number   | 实收违约金 |  
| ROLL_OPERATOR_DID |  是  | String   | 轧账操作员号 |  
| ROLL_ACCOUNT_DATE |  是  | Number   | 轧帐日期 |  
| SETTLE_OPERATOR_DID |  是  | String   | 结账操作员号 |  
| SETTLE_ACCOUNT_DATE |  是  | Number   | 结账日期 |  
| BILL_NUM_INFO |  是  | String   | 票据号码 |  
| BILL_AMOUNT |  是  | Number   | 票据金额 |  
| DRAWER |  是  | String   | 出票人 |  
| RECEIPT_DATE |  是  | Number   | 接票日期 |  
| PROMISE_DATE |  是  | Number   | 承兑日期 |  
| ARRIVAL_DATE |  是  | Number   | 到达日期 |  
| BILL_STATE_TYPE |  是  | String   | 票据状态类型 |  
| DRAW_BANK_ACC_INFO |  是  | String   | 出票银行账号-针对票据缴费 |  
| DRAW_BANK_NAME |  是  | String   | 出票银行名称 |  
| RECE_BANK_ACC_INFO |  是  | String   | 收款银行账号-针对POS机缴费、银行托收、现金进账等 |  
| BANK_NAME |  是  | String   | 开户行名称 |  
| BANK_ACC_NAME |  是  | String   | 收付款人名称 |  
| AGENT_OPERATOR_DID |  是  | String   | 代理操作员号 |  
  
说明：财务对账明细表  
## 4、服务接口说明  
说明：无  
