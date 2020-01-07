## 1、接口描述  
服务接口：(QueryRollingAccount)查询待轧账信息  
接口描述：查询待轧账信息  
请求说明：POST https://api.epeis.com/Service/v1/QueryRollingAccount/  
  
## 2、服务接口请求参数  
#### 2.1、请求参数报文示例  
~~~  
{
	"SYS_HEAD":	{
		"CHANNEL_DID":	"",
		"DYNAMIC_KEY":	"",
		"REGISTER_DID":	"",
		"ACCOUNT_DID":	""
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
  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"ACC_RECEIPT":	[{
				"CASH_TRANSFER_TYPE":	"",
				"BILL_DID":	"",
				"BILL_NUM_INFO":	"",
				"BILL_AMOUNT":	0,
				"DRAWER":	"",
				"DRAW_BANK_ACC_INFO":	"",
				"DRAW_BANK_NAME":	"",
				"RECE_BANK_ACC_INFO":	"",
				"BANK_NAME":	"",
				"BANK_ACC_NAME":	""
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
  
参数：ACC_RECEIPT，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| CASH_TRANSFER_TYPE |  是  | String   | 缴费方式:1-现金,2-现金支票,3-转账支票,4-汇票,5-承兑汇票,6-第三方支付 |  
| BILL_DID |  是  | String   | 16个字符，票据序号 |  
| BILL_NUM_INFO |  是  | String   | 30个字符，票据号码 |  
| BILL_AMOUNT |  是  | Number   | 汇总金额，精确到2位小数点 |  
| DRAWER |  是  | String   | 256个字符，出票人 |  
| DRAW_BANK_ACC_INFO |  是  | String   | 30个字符，出票银行账号 |  
| DRAW_BANK_NAME |  是  | String   | 128个字符，出票银行名称 |  
| RECE_BANK_ACC_INFO |  是  | String   | 收款银行账号 |  
| BANK_NAME |  是  | String   | 开户行名称 |  
| BANK_ACC_NAME |  是  | String   | 收付款人名称 |  
  
说明：轧账信息  
## 4、服务接口说明  
说明：无  