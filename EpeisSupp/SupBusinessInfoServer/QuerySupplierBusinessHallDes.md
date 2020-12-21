## 1、接口描述  
服务接口：(QuerySupplierBusinessHallDes)查询营业网点明细  
接口描述：查询营业网点明细  
请求说明：POST https://api.epeis.com/Service/v1/QuerySupplierBusinessHallDes/  
  
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
	"SUP_STORES":	{
		"BUSINESS_HALL_AID":	"",
		"ADDRESS":	"",
		"BUSINESS_HALL_NAME":	""
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
  
参数：SUP_STORES，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| BUSINESS_HALL_AID |  否  | String   | 16 | 0 | 营业网点ID |  
| ADDRESS |  否  | String   | 128 | 0 | 营业网地址，支持模糊查询 |  
| BUSINESS_HALL_NAME |  否  | String   | 128 | 0 | 营业网点名称，支持模糊查询 |  
  
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
		"SUP_STORES":	[{
				"SUPPLIER_DID":	"",
				"BUSINESS_HALL_AID":	"",
				"BUSINESS_HALL_NAME":	"",
				"ADMIN_CODE_INFO":	"",
				"ADDRESS":	"",
				"AVAIL_BALANCE":	0,
				"OWE_BALANCE":	0,
				"RISK_BALANCE":	0,
				"MARGIN_BALANCE":	0,
				"ADVANCE_LIMIT":	0
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
  
参数：SUP_STORES，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| SUPPLIER_DID |  是  | String   | 商户ID |  
| BUSINESS_HALL_AID |  是  | String   | 营业网点ID |  
| BUSINESS_HALL_NAME |  是  | String   | 营业网点名称 |  
| ADMIN_CODE_INFO |  是  | String   | 行政区划 |  
| ADDRESS |  是  | String   | 营业网地址 |  
| AVAIL_BALANCE |  是  | Number   | 可用余额 |  
| OWE_BALANCE |  是  | Number   | 欠费余额 |  
| RISK_BALANCE |  是  | Number   | 风险金余额 |  
| MARGIN_BALANCE |  是  | Number   | 保证金余额 |  
| ADVANCE_LIMIT |  是  | Number   | 预付限额 |  
  
说明：商户营业网点  
## 4、服务接口说明  
说明：无  
