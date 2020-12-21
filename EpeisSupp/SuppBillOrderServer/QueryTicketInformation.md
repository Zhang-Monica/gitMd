## 1、接口描述  
服务接口：(QueryTicketInformation)查询票据信息  
接口描述：查询票据信息  
请求说明：POST https://api.epeis.com/Service/v1/QueryTicketInformation/  
  
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
	"ACC_RECEIPT":	{
		"BILL_NUM_INFO":	"",
		"CASH_TRANSFER_TYPE":	"",
		"BILL_DID":	""
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
  
参数：ACC_RECEIPT，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| BILL_NUM_INFO |  否  | String   | 30 | 0 | 30个字符，票据号码 |  
| CASH_TRANSFER_TYPE |  否  | String   | 2 | 0 | 2-现金支票,3-转账支票,4-汇票,5-承兑汇票 |  
| BILL_DID |  否  | String   | 16 | 0 | 16个字符，票据序号唯一标识 |  
  
说明：票据信息  
  
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
		"ACC_RECEIPT":	[{
				"BILL_DID":	"",
				"BILL_NUM_INFO":	"",
				"BILL_AMOUNT":	0,
				"PAYER_BANK_ACC_NAME":	"",
				"PAYER_ACCOUNT_INFO":	"",
				"PAYER_BANK_NAME":	"",
				"PAYEE_BANK_ACC_NAME":	"",
				"PAYEE_ACCOUNT_INFO":	"",
				"PAYEE_BANK_NAME":	"",
				"DRAWER":	"",
				"CASH_TRANSFER_TYPE":	"",
				"REMARK_INS":	""
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
  
参数：ACC_RECEIPT，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| BILL_DID |  是  | String   | 16个字符，票据序号唯一标识 |  
| BILL_NUM_INFO |  是  | String   | 30个字符，票据号码 |  
| BILL_AMOUNT |  是  | Number   | 票据金额，精确到2位小数点 |  
| PAYER_BANK_ACC_NAME |  是  | String   | 付款人名称 |  
| PAYER_ACCOUNT_INFO |  是  | String   | 付款人账号 |  
| PAYER_BANK_NAME |  是  | String   | 付款人开户银行 |  
| PAYEE_BANK_ACC_NAME |  是  | String   | 收款人名称 |  
| PAYEE_ACCOUNT_INFO |  是  | String   | 收款人账号 |  
| PAYEE_BANK_NAME |  是  | String   | 收款人开户银行 |  
| DRAWER |  是  | String   | 256个字符，出票人 |  
| CASH_TRANSFER_TYPE |  是  | String   | 2-现金支票,3-转账支票,4-汇票,5-承兑汇票 |  
| REMARK_INS |  是  | String   | 备注说明 |  
  
说明：票据信息  
## 4、服务接口说明  
说明：无  
