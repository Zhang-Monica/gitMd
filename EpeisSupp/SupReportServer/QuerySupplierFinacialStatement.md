## 1、接口描述  
服务接口：(QuerySupplierFinacialStatement)查询财务对账表  
接口描述：查询财务对账表  
请求说明：POST https://api.epeis.com/Service/v1/QuerySupplierFinacialStatement/  
  
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
	"ACC_DAY_STATEMENT":	{
		"NETWORK_TYPE":	"",
		"RET_STORES_AID":	""
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
  
参数：ACC_DAY_STATEMENT，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| NETWORK_TYPE |  否  | String   | 2 | 0 | 服务类型 |  
| RET_STORES_AID |  是  | String   | 16 | 0 | 营业网点ID |  
  
说明：日结单  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"ACC_RECONCILIATION":	[{
				"NETWORK_CO_DID":	"",
				"RETAIL_CO_DID":	"",
				"NETWORK_TYPE":	"",
				"ACCOUNT_ITEM_INFO":	"",
				"CAT_ITEM_NUM":	0,
				"PAID_IN_UNBOUND_AMT":	0,
				"RECE_UNBOUND_AMT":	0,
				"PRE_DEBIT_BALANCE":	0,
				"THE_DEBIT_BALANCE":	0,
				"ROLL_ACCOUNT_DATE":	0
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
  
参数：ACC_RECONCILIATION，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| NETWORK_CO_DID |  是  | String   | 管网公司编码 |  
| RETAIL_CO_DID |  是  | String   | 销售公司编码 |  
| NETWORK_TYPE |  是  | String   | 服务类型 |  
| ACCOUNT_ITEM_INFO |  是  | String   | 会计科目编码 |  
| CAT_ITEM_NUM |  是  | Number   | 分类项目编号 |  
| PAID_IN_UNBOUND_AMT |  是  | Number   | 实收已扎未结金额 |  
| RECE_UNBOUND_AMT |  是  | Number   | 应收已扎未结金额 |  
| PRE_DEBIT_BALANCE |  是  | Number   | 上期借方金额--欠费余额 |  
| THE_DEBIT_BALANCE |  是  | Number   | 本期借方金额--账务应收账款余额 |  
| ROLL_ACCOUNT_DATE |  是  | Number   | 轧帐日期 |  
  
说明：财务对账表  
## 4、服务接口说明  
说明：无  
