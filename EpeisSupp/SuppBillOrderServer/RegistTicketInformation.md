## 1、接口描述  
服务接口：(RegistTicketInformation)登记票据信息  
接口描述：登记票据信息  
请求说明：POST https://api.epeis.com/Service/v1/RegistTicketInformation/  
  
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
	"ACC_RECEIPT":	{
		"BILL_NUM_INFO":	"",
		"BILL_AMOUNT":	0,
		"DRAWER":	"",
		"RECEIPT_DATE":	0,
		"PROMISE_DATE":	0,
		"ARRIVAL_DATE":	0,
		"CASH_TRANSFER_TYPE":	"",
		"PAYER_BANK_ACC_NAME":	"",
		"PAYER_ACCOUNT_INFO":	"",
		"PAYER_BANK_NAME":	"",
		"PAYEE_BANK_ACC_NAME":	"",
		"PAYEE_ACCOUNT_INFO":	"",
		"PAYEE_BANK_NAME":	"",
		"REMARK_INS":	""
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
  
参数：ACC_RECEIPT，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| BILL_NUM_INFO |  是  | String   | 30 | 0 | 30个字符，票据号码 |  
| BILL_AMOUNT |  是  | Number   | 14 | 2 | 票据金额，精确到2位小数点 |  
| DRAWER |  是  | String   | 256 | 0 | 256个字符，出票人 |  
| RECEIPT_DATE |  是  | Number   | 8 | 0 | 接票日期 |  
| PROMISE_DATE |  是  | Number   | 8 | 0 | 承兑日期 |  
| ARRIVAL_DATE |  是  | Number   | 8 | 0 | 到达日期 |  
| CASH_TRANSFER_TYPE |  是  | String   | 2 | 0 | 2-现金支票,3-转账支票,4-汇票,5-承兑汇票 |  
| PAYER_BANK_ACC_NAME |  是  | String   | 256 | 0 | 付款人名称 |  
| PAYER_ACCOUNT_INFO |  是  | String   | 30 | 0 | 付款人账号 |  
| PAYER_BANK_NAME |  是  | String   | 256 | 0 | 付款人开户银行 |  
| PAYEE_BANK_ACC_NAME |  是  | String   | 256 | 0 | 收款人名称 |  
| PAYEE_ACCOUNT_INFO |  是  | String   | 30 | 0 | 收款人账号 |  
| PAYEE_BANK_NAME |  是  | String   | 256 | 0 | 收款人开户银行 |  
| REMARK_INS |  否  | String   | 256 | 0 | 备注说明 |  
  
说明：票据信息  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
	}
}  
~~~  
#### 3.2、响应参数说明  
  
| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| CODE | 是 | Number | 响应代码，0为成功 |  
| MESSAGE | 是 | String | 响应信息 |  
| DATA | 是 | Object | 响应数据 |  
  
参数：DATA，类型：object 本服务接口无响应数据！  
## 4、服务接口说明  
说明：无  
