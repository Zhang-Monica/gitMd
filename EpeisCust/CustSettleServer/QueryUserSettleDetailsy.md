## 1、接口描述  
服务接口：(QueryUserSettleDetailsy)查询结算户详细信息  
接口描述：查询结算户详细信息  
请求说明：POST https://api.epeis.com/Service/v1/QueryUserSettleDetailsy  
  
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
	"SETTLE_ACCOUNT":	{
		"SETTLEMENT_AID":	""
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
  
参数：SETTLE_ACCOUNT，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| SETTLEMENT_AID |  是  | String   | 16 | 0 | 用户账户ID |  
  
说明：结算信息  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"INOUT_SETTLE_ACCOUNT":	[{
				"CUSTOMER_DID":	"",
				"CUSTOMER_DID_MC":	"",
				"USER_CUS_DID":	"",
				"USER_CUS_DID_MC":	"",
				"USER_ACCOUNT_AID":	"",
				"SETTLEMENT_AID":	"",
				"SETTLEMENT_NAME":	"",
				"NETWORK_TYPE":	"",
				"OWE_BALANCE":	0,
				"ADDRESS":	"",
				"RETAIL_CO_DID":	"",
				"RETAIL_CO_DID_MC":	"",
				"PACK_REMARK":	"",
				"SIGN_CONTRACT_YESNO":	"",
				"CONTRACT_NUM":	"",
				"CON_DEADLINE_DATE":	0,
				"REMARK_INS":	"",
				"ACCT_TYPE":	"",
				"AUTHORIZATION_TYPE":	""
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
  
参数：INOUT_SETTLE_ACCOUNT，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| CUSTOMER_DID |  是  | String   | 客户账户ID |  
| CUSTOMER_DID_MC |  是  | String   | 客户账户名称 |  
| USER_CUS_DID |  是  | String   | 使用者客户ID |  
| USER_CUS_DID_MC |  是  | String   | 使用者客户名称 |  
| USER_ACCOUNT_AID |  是  | String   | 用户账户ID |  
| SETTLEMENT_AID |  是  | String   | 结算账户ID |  
| SETTLEMENT_NAME |  是  | String   | 结算户姓名 |  
| NETWORK_TYPE |  是  | String   | 管网类型：1-水；2-电；3-气；4-热；5-冷；6-物业；7-房屋租赁 |  
| OWE_BALANCE |  是  | Number   | 欠费 |  
| ADDRESS |  是  | String   | 详细地址 |  
| RETAIL_CO_DID |  是  | String   | 销售公司编码 |  
| RETAIL_CO_DID_MC |  是  | String   | 销售公司名称 |  
| PACK_REMARK |  是  | String   | 套餐说明 |  
| SIGN_CONTRACT_YESNO |  是  | String   | 是否签订合同：1-否；2-是 |  
| CONTRACT_NUM |  是  | String   | 合同编号 |  
| CON_DEADLINE_DATE |  是  | Number   | 合同期限 |  
| REMARK_INS |  是  | String   | 备注 |  
| ACCT_TYPE |  是  | String   | 用户账户类型：1-业主；2-非业主用户；3-非业主结算户 |  
| AUTHORIZATION_TYPE |  是  | String   | 账户授权状态：1-未授权；2-授权中；3-已授权；4-被授权 |  
  
说明：结算信息  
## 4、服务接口说明  
说明：无  
