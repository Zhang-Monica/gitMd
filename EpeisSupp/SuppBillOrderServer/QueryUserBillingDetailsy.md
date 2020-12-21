## 1、接口描述  
服务接口：(QueryUserBillingDetailsy)查询用户账单明细信息  
接口描述：查询用户账单明细信息  
请求说明：POST https://api.epeis.com/Service/v1/QueryUserBillingDetailsy/  
  
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
		"OPERATION_DATE":	0,
		"SERIAL_DID":	"",
		"FUND_TYPE":	""
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
| OPERATION_DATE |  是  | Number   | 8 | 0 | 业务日期 |  
| SERIAL_DID |  是  | String   | 16 | 0 | 16位字符，业务流水号 |  
| FUND_TYPE |  是  | String   | 2 | 0 | 1-可用资金,2-应收账款,3-应付账款,4-营业外收入 |  
  
说明：账单信息  
  
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
		"ACC_USER_METER":	[{
				"SETTLEMENT_AID":	"",
				"CUSTOMER_DID":	"",
				"USER_CUS_DID":	"",
				"NETWORK_TYPE":	"",
				"ACCOUNT_MONTH":	0,
				"FUND_TYPE":	"",
				"PRE_BALANCE":	0,
				"DEBIT_AMOUNT":	0,
				"CREDIT_AMOUNT":	0,
				"THE_BALANCE":	0
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
  
参数：ACC_USER_METER，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| SETTLEMENT_AID |  是  | String   | 16个字符，结算户唯一ID |  
| CUSTOMER_DID |  是  | String   | 16个字符，客户唯一的账号ID |  
| USER_CUS_DID |  是  | String   | 16个字符，用户唯一的账号ID |  
| NETWORK_TYPE |  是  | String   | 1-水，2-电，3-气，4-热，5-冷，6-物业，7-房屋租赁 |  
| ACCOUNT_MONTH |  是  | Number   | 账务月份 |  
| FUND_TYPE |  是  | String   | 1-可用资金,2-应收账款,3-应付账款,4-营业外收入 |  
| PRE_BALANCE |  是  | Number   | 上期余额 |  
| DEBIT_AMOUNT |  是  | Number   | 借方发生额 |  
| CREDIT_AMOUNT |  是  | Number   | 贷方发生额 |  
| THE_BALANCE |  是  | Number   | 本期余额 |  
  
说明：账单明细信息  
## 4、服务接口说明  
说明：无  
