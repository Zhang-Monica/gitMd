## 1、接口描述  
服务接口：(cQuerySettleAccountInformation)查询结算信息  
接口描述：查询结算信息  
请求说明：POST https://epeis.com/Service/v1/cQuerySettleAccountInformation  
  
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
	"SETTLE_ACCOUNT":	[{
			"USER_ACCOUNT_AID":	"",
			"ATTESTATION_TYPE":	""
		}]
}  
~~~  
#### 2.2、请求参数说明  
参数SYS_HEAD，类型：object  
  
| 参数 | 必选 | 类型 | 长度 | 精度 | 描述 |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| CHANNEL_DID | 是 | String | 16 | 0 | 16字符渠道号，请与平台运营服务中心联系 |  
| DYNAMIC_KEY | 是 | String | 64 | 0 | 动态请求密钥，请与平台运营服务中心联系 |  
| REGISTER_DID      |  是  | String   | 16 | 0 | 16位注册ID，必须实名 |  
| ACCOUNT_DID       |  是  | String   | 16 | 0 | 16位账户ID，必须激活 |  
  
参数SETTLE_ACCOUNT，类型：Array  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| USER_ACCOUNT_AID |  是  | String   | 16 | 0 | 用户账户ID |  
| ATTESTATION_TYPE |  否  | String   | 2 | 0 | 用户认证类型：1-未认证；2-审核中；3-已认证 |  
  
说明：结算信息  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"SETTLE_ACCOUNT":	[{
				"CUSTOMER_DID":	"",
				"USER_CUS_DID":	"",
				"USER_ACCOUNT_AID":	"",
				"SETTLEMENT_AID":	"",
				"SETTLEMENT_NAME":	"",
				"NETWORK_TYPE":	"",
				"OWE_BALANCE":	0,
				"ADDRESS":	"",
				"CONTROL_TYPE":	"",
				"INDUSTRY_CODE_INFO":	"",
				"INDUSTRY_TYPE":	"",
				"RESIDENT_YESNO":	"",
				"CITY_YESNO":	"",
				"ARMY_YESNO":	"",
				"TEMPORARY_YESNO":	"",
				"PUBLIC_USE_YESNO":	"",
				"CONNECT_MODE_TYPE":	"",
				"SIGN_CONTRACT_YESNO":	"",
				"CONTRACT_NUM":	"",
				"CON_DEADLINE_DATE":	0,
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
  
参数DATA，类型：object 本服务接口响应数据说明如下：  
参数SETTLE_ACCOUNT，类型：object  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| CUSTOMER_DID |  是  | String   | 客户账户ID |  
| USER_CUS_DID |  是  | String   | 使用者客户ID |  
| USER_ACCOUNT_AID |  是  | String   | 用户账户ID |  
| SETTLEMENT_AID |  是  | String   | 结算账户ID |  
| SETTLEMENT_NAME |  是  | String   | 结算户姓名 |  
| NETWORK_TYPE |  是  | String   | 管网类型：1-水；2-电；3-气；4-热；5-冷；6-物业；7-房屋租赁 |  
| OWE_BALANCE |  是  | Number   | 欠费 |  
| ADDRESS |  是  | String   | 详细地址 |  
| CONTROL_TYPE |  是  | String   | 量控费控类型：1-量控；2-费控 |  
| INDUSTRY_CODE_INFO |  是  | String   | 行业分类 |  
| INDUSTRY_TYPE |  是  | String   | 产业分类，分类暂未划分 |  
| RESIDENT_YESNO |  是  | String   | 是否居民：1-否；2-是 |  
| CITY_YESNO |  是  | String   | 是否城市：1-否；2-是 |  
| ARMY_YESNO |  是  | String   | 是否竣工：1-否；2-是 |  
| TEMPORARY_YESNO |  是  | String   | 是否临时：1-否；2-是 |  
| PUBLIC_USE_YESNO |  是  | String   | 是否公用：1-否；2-是 |  
| CONNECT_MODE_TYPE |  是  | String   | 接线类型：1-A相；2-B相；3-C相；4-三相三线；5-三相四线 |  
| SIGN_CONTRACT_YESNO |  是  | String   | 是否签订合同：1-否；2-是 |  
| CONTRACT_NUM |  是  | String   | 合同编号 |  
| CON_DEADLINE_DATE |  是  | Number   | 合同期限 |  
| REMARK_INS |  是  | String   | 备注 |  
  
说明：结算信息  
## 4、服务接口说明  
说明：无  
