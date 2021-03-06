## 1、接口描述  
服务接口：(AddAdjustRatio)添加力调比例  
接口描述：添加力调比例  
请求说明：POST https://api.epeis.com/Service/v1/AddAdjustRatio/  
  
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
	"COM_ADJUST_RAT":	[{
			"RET_STORES_AID":	"",
			"FOR_RATE_VALID_TYPE":	"",
			"FOR_RAT_CALC_VALUE":	0,
			"REWARD_PUNISH_TYPE":	"",
			"ADJUST_RATIO":	0,
			"STARTUP_DATE":	0,
			"OUTAGE_DATE":	0
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
  
参数：COM_ADJUST_RAT，类型：Array  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| RET_STORES_AID |  是  | String   | 16 | 0 | 16个字符，销售公司营业网点ID |  
| FOR_RATE_VALID_TYPE |  是  | String   | 2 | 0 | 1-不考核，2-考核80，3-考核85，4-考核90 |  
| FOR_RAT_CALC_VALUE |  是  | Number   | 8 | 4 | 力率考核计算值，精确到4位小数点 |  
| REWARD_PUNISH_TYPE |  是  | String   | 2 | 0 | 奖罚类型 |  
| ADJUST_RATIO |  是  | Number   | 10 | 6 | 调整比例 |  
| STARTUP_DATE |  是  | Number   | 8 | 0 | 启用日期 |  
| OUTAGE_DATE |  是  | Number   | 8 | 0 | 停用日期 |  
  
说明：力调比例  
  
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
