## 1、接口描述  
服务接口：(QuerySupplierBillInfo)查询商户账单信息  
接口描述：查询商户账单信息  
请求说明：POST https://api.epeis.com/Service/v1/QuerySupplierBillInfo/  
  
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
	"INOUT_ACC_SUP_BILL_ACCOUNT":	{
		"BUSINESS_HALL_AID":	"",
		"OPERATION_DATE":	0,
		"BUS_OCCUR_DATE":	0
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
  
参数：INOUT_ACC_SUP_BILL_ACCOUNT，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| BUSINESS_HALL_AID |  否  | String   | 16 | 0 | 营业网点ID |  
| OPERATION_DATE |  否  | Number   | 8 | 0 | 起始日期 |  
| BUS_OCCUR_DATE |  否  | Number   | 8 | 0 | 截至日期 |  
  
说明：商户营业网点  
  
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
		"ACC_SUP_BILL_ACCOUNT":	[{
				"SUPPLIER_DID":	"",
				"BUSINESS_HALL_AID":	"",
				"FUND_TYPE":	"",
				"PRE_BALANCE":	0,
				"DEBIT_AMOUNT":	0,
				"CREDIT_AMOUNT":	0,
				"THE_BALANCE":	0,
				"OPERATION_DATE":	0,
				"SERIAL_DID":	"",
				"OPERATION_TIME":	0,
				"TARGET_DID_INFO":	"",
				"TARGET_NAME_INFO":	"",
				"REMARK_INS":	"",
				"APPLICATION":	"",
				"ABSTRACTS":	"",
				"EXTERNAL_SID_INFO":	"",
				"BUS_OPERATOR_DID":	""
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
  
参数：ACC_SUP_BILL_ACCOUNT，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| SUPPLIER_DID |  是  | String   | 商户ID |  
| BUSINESS_HALL_AID |  是  | String   | 营业网点ID |  
| FUND_TYPE |  是  | String   | 资金类型 |  
| PRE_BALANCE |  是  | Number   | 上期余额 |  
| DEBIT_AMOUNT |  是  | Number   | 借方发生额 |  
| CREDIT_AMOUNT |  是  | Number   | 贷方发生额 |  
| THE_BALANCE |  是  | Number   | 本期余额 |  
| OPERATION_DATE |  是  | Number   | 操作日期 |  
| SERIAL_DID |  是  | String   | 业务流水号 |  
| OPERATION_TIME |  是  | Number   | 操作时间 |  
| TARGET_DID_INFO |  是  | String   | 对方账号ID |  
| TARGET_NAME_INFO |  是  | String   | 对方名称 |  
| REMARK_INS |  是  | String   | 备注说明 |  
| APPLICATION |  是  | String   | 用途 |  
| ABSTRACTS |  是  | String   | 摘要 |  
| EXTERNAL_SID_INFO |  是  | String   | 外部流水号 |  
| BUS_OPERATOR_DID |  是  | String   | 业务操作员号 |  
  
说明：商户营业网点  
## 4、服务接口说明  
说明：无  
