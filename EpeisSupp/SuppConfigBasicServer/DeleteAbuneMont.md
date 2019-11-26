## 1、接口描述  
服务接口：(DeleteAbuneMont)删除分枯月份  
接口描述：删除分枯月份  
请求说明：POST https://api.epeis.com/Service/v1/DeleteAbuneMont/  
  
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
	"COM_ABUN_MON":	{
		"RETAIL_CO_DID":	"",
		"RET_STORES_AID":	"",
		"NETWORK_TYPE":	"",
		"ABUNDANCE_TYPE":	"",
		"ABUNDANCE_MONTH":	0
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
  
参数：COM_ABUN_MON，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| RETAIL_CO_DID |  是  | String   | 16 | 0 | 16个字符，销售公司编码 |  
| RET_STORES_AID |  是  | String   | 16 | 0 | 16个字符，销售公司营业网点ID |  
| NETWORK_TYPE |  是  | String   | 2 | 0 | 1-水，2-电 |  
| ABUNDANCE_TYPE |  是  | String   | 2 | 0 | 1-丰期，2-平期，3-枯期 |  
| ABUNDANCE_MONTH |  是  | Number   | 6 | 0 | 分枯月份 |  
  
说明：分枯月份  
  
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
