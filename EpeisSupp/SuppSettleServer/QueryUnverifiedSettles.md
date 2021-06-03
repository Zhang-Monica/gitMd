## 1、接口描述  
服务接口：(QueryUnverifiedSettles)查询未审核结算户  
接口描述：查询未审核用户结算户  
请求说明：POST https://api.epeis.com/Service/v1/QueryUnverifiedSettles/  
  
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
	"CUS_ACCOUNT":	{
		"CUSTOMER_DID":	"",
		"ADDRESS":	""
	},
	"SETTLE_METERAGE":	{
		"NETWORK_TYPE":	"",
		"BUS_STATE_TYPE":	""
	},
	"SYS_PAGE":	{
		"PAGE_NO":	0,
		"PAGE_ROWS":	0
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
  
参数：CUS_ACCOUNT，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| CUSTOMER_DID |  否  | String   | 16 | 0 | 客户ID |  
| ADDRESS |  否  | String   | 128 | 0 | 用户地址 |  
  
说明：客户账户  
参数：SETTLE_METERAGE，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| NETWORK_TYPE |  否  | String   | 2 | 0 | 管网类型：1-水；2-电；3-气；4-热；5-冷；6-物业；7-房屋租赁 |  
| BUS_STATE_TYPE |  否  | String   | 2 | 0 | 业扩状态类型:1-待核算费方案;3-待装换拆表;4-待归档 |  
  
说明：结算信息  
参数：SYS_PAGE，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| PAGE_NO |  是  | Number   | 4 | 0 | 第几页，必须大于'0' |  
| PAGE_ROWS |  是  | Number   | 4 | 0 | 每页行数，必须大于'0' |  
  
说明：分页信息  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"SETTLE_ACCOUNT":	[{
				"CUSTOMER_DID":	"",
				"CUSTOMER_DID_MC":	"",
				"USER_CUS_DID":	"",
				"USER_CUS_DID_MC":	"",
				"USER_ACCOUNT_AID":	"",
				"SETTLEMENT_AID":	"",
				"SETTLEMENT_NAME":	"",
				"ADDRESS":	"",
				"SETTLE_ATTESTATION_TYPE":	""
			}],
		"SETTLE_METERAGE":	[{
				"SETTLEMENT_AID":	"",
				"NETWORK_TYPE":	"",
				"BUSI_PROC_DID":	"",
				"BUS_CATEG_TYPE":	"",
				"BUS_STATE_TYPE":	"",
				"CHARGE_AREA_FACTOR":	0,
				"ACTUAL_AREA":	0
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
  
参数：SETTLE_ACCOUNT，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| CUSTOMER_DID |  是  | String   | 客户账户ID |  
| CUSTOMER_DID_MC |  是  | String   | 客户账户名称 |  
| USER_CUS_DID |  是  | String   | 使用者客户ID |  
| USER_CUS_DID_MC |  是  | String   | 使用者客户名称 |  
| USER_ACCOUNT_AID |  是  | String   | 用户账户ID |  
| SETTLEMENT_AID |  是  | String   | 结算账户ID |  
| SETTLEMENT_NAME |  是  | String   | 结算户姓名 |  
| ADDRESS |  是  | String   | 结算信息地址 |  
| SETTLE_ATTESTATION_TYPE |  是  | String   | 结算户认证类型：1-未认证；2-审核中；3-已认证 |  
  
说明：结算信息  
参数：SETTLE_METERAGE，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| SETTLEMENT_AID |  是  | String   | 结算户ID |  
| NETWORK_TYPE |  是  | String   | 管网类型：1-水；2-电；3-气；4-热；5-冷；6-物业；7-房屋租赁 |  
| BUSI_PROC_DID |  是  | String   | 业务办理编码 |  
| BUS_CATEG_TYPE |  是  | String   | 业务类别 |  
| BUS_STATE_TYPE |  是  | String   | 业扩状态类型 |  
| CHARGE_AREA_FACTOR |  是  | Number   | 计费面积系数 |  
| ACTUAL_AREA |  是  | Number   | 计费实有面积 |  
  
说明：结算计量点  
## 4、服务接口说明  
说明：无  
