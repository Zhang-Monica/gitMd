## 1、接口描述  
服务接口：(ApproveSupplierActivation)商户激活申请核定  
接口描述：商户信息核定  
请求说明：POST https://api.epeis.com/Service/v1/ApproveSupplierActivation/  
  
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
	"SUP_ACCOUNT":	[{
			"SUPPLIER_DID":	"",
			"ATTESTATION_TYPE":	"",
			"CHAIN_TYPE":	"",
			"TAX_TYPE":	"",
			"VALID_START_DATE":	0,
			"VALID_END_DATE":	0
		}]
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
  
参数：SUP_ACCOUNT，类型：Array  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| SUPPLIER_DID |  是  | String   | 16 | 0 | 商户ID |  
| ATTESTATION_TYPE |  是  | String   | 2 | 0 | 认证类型：1-未认证;2-审核中;3-已认证 |  
| CHAIN_TYPE |  是  | String   | 2 | 0 | 管网业务类型:3-配送;4-销售 |  
| TAX_TYPE |  是  | String   | 2 | 0 | 纳税类型：1-小规模纳税人;2-一般规模纳税人 |  
| VALID_START_DATE |  是  | Number   | 8 | 0 | 起始日期 |  
| VALID_END_DATE |  是  | Number   | 8 | 0 | 截止日期 |  
  
说明：商户账户  
  
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
说明：xxxxxxx  
