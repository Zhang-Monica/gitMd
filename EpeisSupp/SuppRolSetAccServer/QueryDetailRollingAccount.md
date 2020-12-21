## 1、接口描述  
服务接口：(QueryDetailRollingAccount)查询轧账明细信息  
接口描述：查询轧账明细信息  
请求说明：POST https://api.epeis.com/Service/v1/QueryDetailRollingAccount/  
  
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
	"ACC_USER_ACCOUNT":	{
		"CASH_TRANSFER_TYPE":	"",
		"BILL_DID":	"",
		"BUS_OPERATOR_DID":	""
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
  
参数：ACC_USER_ACCOUNT，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| CASH_TRANSFER_TYPE |  否  | String   | 2 | 0 | 缴费方式:1-现金,2-现金支票,3-转账支票,4-汇票,5-承兑汇票,6-第三方支付 |  
| BILL_DID |  否  | String   | 16 | 0 | 16个字符，票据序号 |  
| BUS_OPERATOR_DID |  是  | String   | 16 | 0 | 16个字符，业务操作员号 |  
  
说明：轧账明细信息  
  
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
		"ACC_USER_ACCOUNT":	[{
				"OPERATION_DATE":	0,
				"SERIAL_DID":	"",
				"CUSTOMER_DID":	"",
				"CASH_TRANSFER_TYPE":	"",
				"BILL_DID":	"",
				"BILL_NUM_INFO":	"",
				"FUND_TYPE":	"",
				"DEBIT_AMOUNT":	0,
				"CREDIT_AMOUNT":	0,
				"BUSINESS_TYPE":	"",
				"BUSINESS_STATE_TYPE":	""
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
  
参数：ACC_USER_ACCOUNT，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| OPERATION_DATE |  是  | Number   | 交易日期 |  
| SERIAL_DID |  是  | String   | 16个字符，交易流水号 |  
| CUSTOMER_DID |  是  | String   | 16个字符，客户编号 |  
| CASH_TRANSFER_TYPE |  是  | String   | 缴费方式:1-现金,2-现金支票,3-转账支票,4-汇票,5-承兑汇票,6-第三方支付 |  
| BILL_DID |  是  | String   | 16个字符，票据序号 |  
| BILL_NUM_INFO |  是  | String   | 30个字符，票据号码 |  
| FUND_TYPE |  是  | String   | 1-可用资金,2-应收账款,3-应付账款,4-营业外收入 |  
| DEBIT_AMOUNT |  是  | Number   | 借方发生额 |  
| CREDIT_AMOUNT |  是  | Number   | 贷方发生额 |  
| BUSINESS_TYPE |  是  | String   | 业务类型 |  
| BUSINESS_STATE_TYPE |  是  | String   | 业务状态类型 |  
  
说明：轧账明细信息  
## 4、服务接口说明  
说明：无  
