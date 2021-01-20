## 1、接口描述  
服务接口：(PlatAccountClearing)账务清分  
接口描述：账务清分  
请求说明：POST https://api.epeis.com/Service/v1/PlatAccountClearing/  
  
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
	"POOL_RULES":	[{
			"NETWORK_CO_DID":	"",
			"RETAIL_CO_DID":	"",
			"SETTLEMENT_AID":	"",
			"ACCOUNT_MONTH":	0,
			"POOL_TYPE":	"",
			"TIME_FEES_TYPE":	"",
			"TIME_SHARING_TYPE":	"",
			"THE_CHARGE_CONS_INFO":	0,
			"CALC_FEE_INFO":	0
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
  
参数：POOL_RULES，类型：Array  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| NETWORK_CO_DID |  是  | String   | 16 | 0 | 管网公司编码 |  
| RETAIL_CO_DID |  是  | String   | 16 | 0 | 销售公司编码 |  
| SETTLEMENT_AID |  否  | String   | 16 | 0 | 结算户ID |  
| ACCOUNT_MONTH |  是  | Number   | 6 | 0 | 帐务月份 |  
| POOL_TYPE |  是  | String   | 2 | 0 | 清分类型 |  
| TIME_FEES_TYPE |  是  | String   | 2 | 0 | 分时计费类型 |  
| TIME_SHARING_TYPE |  否  | String   | 2 | 0 | 分时时段 |  
| THE_CHARGE_CONS_INFO |  否  | Number   | 16 | 2 | 批发用量 |  
| CALC_FEE_INFO |  否  | Number   | 16 | 2 | 批发费用 |  
  
说明：清分规则表  
  
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
说明：暂时做无指令清分  
