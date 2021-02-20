## 1、接口描述  
服务接口：(QuerySupplierInvoiceDetails)查询商户发票明细信息  
接口描述：查询商户发票明细信息  
请求说明：POST https://api.epeis.com/Service/v1/QuerySupplierInvoiceDetails/  
  
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
	"ACC_SUP_INVOICE":	{
		"INVOICE_DID":	"",
		"ACCOUNT_MONTH":	0
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
  
参数：ACC_SUP_INVOICE，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| INVOICE_DID |  是  | String   | 16 | 0 | 16位字符，发票唯一的ID |  
| ACCOUNT_MONTH |  是  | Number   | 6 | 0 | 账务月份 |  
  
说明：发票信息  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"ACC_SUP_INVOICE":	[{
				"INVOICE_DID":	"",
				"ACCOUNT_CUS_DID":	"",
				"ACCOUNT_CUS_NAME":	"",
				"CUS_TAX_INFO":	"",
				"CUSADMIN_CODE_INFO":	"",
				"CUS_ADDRESS":	"",
				"CUS_TELEPHONE_INFO":	"",
				"CUS_BANK_INFO":	"",
				"CUS_BANK_NAME":	"",
				"ACCOUNT_SUP_DID":	"",
				"ACCOUNT_SUP_NAME":	"",
				"SUP_TAX_INFO":	"",
				"SUPADMIN_CODE_INFO":	"",
				"SUP_ADDRESS":	"",
				"SUP_TELEPHONE_INFO":	"",
				"SUP_BANK_INFO":	"",
				"SUP_BANK_NAME":	"",
				"NETWORK_TYPE":	"",
				"ACCOUNT_MONTH":	0,
				"TAX_EXCLUDE_AMOUNT":	0,
				"TAX_INCLUDE_AMOUNT":	0,
				"INVOICE_NUMBER":	"",
				"INVOICE_NUM_INFO":	"",
				"INVOICE_TYPE":	"",
				"URL":	"",
				"INVOICE_YESNO":	"",
				"PRINT_INVOICE_DATE":	0,
				"PRINT_INVOICE_TIME":	0
			}],
		"ACC_SUP_INVOICE_DETAIL":	[{
				"INVOICE_DID":	"",
				"COMMODITY_CODE_INFO":	"",
				"GOODSNAME":	"",
				"AMOUNT":	"",
				"PRICE":	0,
				"TAX_INCLUDE_YESNO":	"",
				"VAT_TAX_RATE":	0,
				"SPECIFICATION_INFO":	"",
				"UNIT_INFO":	"",
				"SELF_CODE_INFO":	"",
				"FAVOURED_POLICY_TYPE":	"",
				"ZERO_TAX_RATE_TYPE":	"",
				"DEDUCTED_AMOUNT":	0,
				"TAX_EXCLUDE_AMOUNT":	0,
				"TAX_AMOUNT":	0,
				"TAX_INCLUDE_AMOUNT":	0
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
  
参数：ACC_SUP_INVOICE，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| INVOICE_DID |  是  | String   | 发票ID |  
| ACCOUNT_CUS_DID |  是  | String   | 购买方账号ID |  
| ACCOUNT_CUS_NAME |  是  | String   | 购买方名称 |  
| CUS_TAX_INFO |  是  | String   | 购买方纳税识别号 |  
| CUSADMIN_CODE_INFO |  是  | String   | 购买方行政区划 |  
| CUS_ADDRESS |  是  | String   | 购买方详细地址 |  
| CUS_TELEPHONE_INFO |  是  | String   | 购买方固定电话 |  
| CUS_BANK_INFO |  是  | String   | 购买方银行账号 |  
| CUS_BANK_NAME |  是  | String   | 购买方开户行名称 |  
| ACCOUNT_SUP_DID |  是  | String   | 销售方账号ID |  
| ACCOUNT_SUP_NAME |  是  | String   | 销售方名称 |  
| SUP_TAX_INFO |  是  | String   | 销售方纳税识别号 |  
| SUPADMIN_CODE_INFO |  是  | String   | 销售方行政区划 |  
| SUP_ADDRESS |  是  | String   | 销售方详细地址 |  
| SUP_TELEPHONE_INFO |  是  | String   | 销售方固定电话 |  
| SUP_BANK_INFO |  是  | String   | 销售方银行账号 |  
| SUP_BANK_NAME |  是  | String   | 销售方开户行名称 |  
| NETWORK_TYPE |  是  | String   | 服务类型 |  
| ACCOUNT_MONTH |  是  | Number   | 帐务月份 |  
| TAX_EXCLUDE_AMOUNT |  是  | Number   | 不含税金额 |  
| TAX_INCLUDE_AMOUNT |  是  | Number   | 含税金额 |  
| INVOICE_NUMBER |  是  | String   | 发票号码 |  
| INVOICE_NUM_INFO |  是  | String   | 发票代码 |  
| INVOICE_TYPE |  是  | String   | 发票类型 |  
| URL |  是  | String   | URL链接 |  
| INVOICE_YESNO |  是  | String   | 是否开票 |  
| PRINT_INVOICE_DATE |  是  | Number   | 开票日期 |  
| PRINT_INVOICE_TIME |  是  | Number   | 开票时间 |  
  
说明：发票信息  
参数：ACC_SUP_INVOICE_DETAIL，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| INVOICE_DID |  是  | String   | 16位字符，发票唯一的ID |  
| COMMODITY_CODE_INFO |  是  | String   | 20个字符，税收商品编码 |  
| GOODSNAME |  是  | String   | 64个字符，商品名称 |  
| AMOUNT |  是  | String   | 数量 |  
| PRICE |  是  | Number   | 单价，精确到4位小数点 |  
| TAX_INCLUDE_YESNO |  是  | String   | 1-不含税，2-含税 |  
| VAT_TAX_RATE |  是  | Number   | 增值税税率，精确到2位小数点 |  
| SPECIFICATION_INFO |  是  | String   | 20个字符，规格型号 |  
| UNIT_INFO |  是  | String   | 20个字符，单位 |  
| SELF_CODE_INFO |  是  | String   | 20个字符，自行编码 |  
| FAVOURED_POLICY_TYPE |  是  | String   | 优惠政策类型-待确认 |  
| ZERO_TAX_RATE_TYPE |  是  | String   | 1-免税，2-不征税，3-普通零税率 |  
| DEDUCTED_AMOUNT |  是  | Number   | 扣除额，精确到2位小数点 |  
| TAX_EXCLUDE_AMOUNT |  是  | Number   | 不含税金额，精确到4位小数点 |  
| TAX_AMOUNT |  是  | Number   | 税额，精确到2位小数点 |  
| TAX_INCLUDE_AMOUNT |  是  | Number   | 含税金额，精确到4位小数点 |  
  
说明：发票明细信息  
## 4、服务接口说明  
说明：无  
