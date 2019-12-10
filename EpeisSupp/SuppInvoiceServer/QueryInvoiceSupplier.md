## 1、接口描述  
服务接口：(QueryInvoiceSupplier)查询发票信息  
接口描述：查询发票信息  
请求说明：POST https://api.epeis.com/Service/v1/QueryInvoiceSupplier/  
  
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
	"INOUT_ACC_INVOICE":	{
		"CUSTOMER_DID":	"",
		"INPUT_YESNO":	""
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
  
参数：INOUT_ACC_INVOICE，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| CUSTOMER_DID |  否  | String   | 16 | 0 | 16个字符，客户唯一的账号ID |  
| INPUT_YESNO |  是  | String   | 2 | 0 | 是否已开票：1-否，2-是 |  
  
说明：发票信息  
  
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
		"ACC_INVOICE":	[{
				"INVOICE_DID":	"",
				"SUPPLIER_NAME":	"",
				"CUSTOMER_DID":	"",
				"CUSTOMER_NAME":	"",
				"CADMIN_CODE_INFO":	"",
				"CADDRESS":	"",
				"CTAX_NUMBER_INFO":	"",
				"CTELEPHONE_INFO":	"",
				"CBANK_ACCOUNT_INFO":	"",
				"CBANK_NAME":	"",
				"NETWORK_TYPE":	"",
				"ACCOUNT_MONTH":	0,
				"TAX_EXCLUDE_AMOUNT":	0
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
  
参数：ACC_INVOICE，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| INVOICE_DID |  是  | String   | 16位字符，发票唯一的ID |  
| SUPPLIER_NAME |  是  | String   | 256个字符,供应商名称 |  
| CUSTOMER_DID |  是  | String   | 16个字符，客户唯一的账号ID |  
| CUSTOMER_NAME |  是  | String   | 256个字符，客户名称 |  
| CADMIN_CODE_INFO |  是  | String   | 20个字符，行政区划统一编码 |  
| CADDRESS |  是  | String   | 128个字符，客户详细地址 |  
| CTAX_NUMBER_INFO |  是  | String   | 30个字符，客户纳税识别号 |  
| CTELEPHONE_INFO |  是  | String   | 20个字符，客户固定电话 |  
| CBANK_ACCOUNT_INFO |  是  | String   | 30个字符，客户银行账号 |  
| CBANK_NAME |  是  | String   | 256个字符，客户开户行名称 |  
| NETWORK_TYPE |  是  | String   | 1-水，2-电，3-气，4-热，5-冷，6-物业，7-房屋租赁 |  
| ACCOUNT_MONTH |  是  | Number   | 账务月份 |  
| TAX_EXCLUDE_AMOUNT |  是  | Number   | 不含税金额，精确到2位小数点 |  
  
说明：发票信息  
## 4、服务接口说明  
说明：无  
