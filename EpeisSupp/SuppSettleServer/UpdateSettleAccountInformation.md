## 1、接口描述  
服务接口：(UpdateSettleAccountInformation)修改结算户信息  
接口描述：修改结算户信息  
请求说明：POST https://api.epeis.com/Service/v1/UpdateSettleAccountInformation/  
  
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
		"CUSTOMER_DID":	"",
		"USER_CUS_DID":	"",
		"USER_ACCOUNT_AID":	"",
		"SETTLEMENT_AID":	"",
		"SETTLEMENT_NAME":	"",
		"ATTESTATION_TYPE":	"",
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
| CUSTOMER_DID |  是  | String   | 16 | 0 | 客户账户ID |  
| USER_CUS_DID |  是  | String   | 16 | 0 | 用户内部ID |  
| USER_ACCOUNT_AID |  是  | String   | 16 | 0 | 用户账户ID |  
| SETTLEMENT_AID |  是  | String   | 16 | 0 | 结算户ID |  
| SETTLEMENT_NAME |  是  | String   | 128 | 0 | 结算户名称 |  
| ATTESTATION_TYPE |  是  | String   | 2 | 0 | 认证类型：1-未认证；2-审核中；3-已认证 |  
| ADDRESS |  是  | String   | 128 | 0 | 详细地址 |  
| CONTROL_TYPE |  是  | String   | 2 | 0 | 量控费控类型 |  
| INDUSTRY_CODE_INFO |  是  | String   | 20 | 0 | 产业分类 |  
| INDUSTRY_TYPE |  是  | String   | 2 | 0 | 行业分类 |  
| RESIDENT_YESNO |  是  | String   | 2 | 0 | 是否居民 |  
| CITY_YESNO |  是  | String   | 2 | 0 | 是否城市 |  
| ARMY_YESNO |  是  | String   | 2 | 0 | 是否军工 |  
| TEMPORARY_YESNO |  是  | String   | 2 | 0 | 是否临时 |  
| PUBLIC_USE_YESNO |  是  | String   | 2 | 0 | 是否公用 |  
| CONNECT_MODE_TYPE |  是  | String   | 2 | 0 | 接线类型 |  
| SIGN_CONTRACT_YESNO |  是  | String   | 2 | 0 | 是否签订合同 |  
| CONTRACT_NUM |  是  | String   | 30 | 0 | 合同编号 |  
| CON_DEADLINE_DATE |  是  | Number   | 8 | 0 | 合同期限 |  
| REMARK_INS |  否  | String   | 256 | 0 | 备注说明 |  
  
说明：结算户信息  
  
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
