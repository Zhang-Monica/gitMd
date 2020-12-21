## 1、接口描述  
服务接口：(PlatAddNetNode)新增管网节点信息  
接口描述：新增管网节点信息  
请求说明：POST https://api.epeis.com/Service/v1/PlatAddNetNode/  
  
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
	"NET_NODE":	{
		"SUPPLIER_DID":	"",
		"BUSINESS_HALL_AID":	"",
		"NETWORK_TYPE":	"",
		"NODE_TYPE":	"",
		"ADMIN_CODE_INFO":	"",
		"MAP_NAME":	"",
		"X":	0,
		"Y":	0,
		"PLAN_START_DATE":	0,
		"PLAN_END_DATE":	0,
		"NODE_INFO_TYPE":	"",
		"NODE_STATE_TYPE":	""
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
  
参数：NET_NODE，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| SUPPLIER_DID |  是  | String   | 16 | 0 | 商户ID |  
| BUSINESS_HALL_AID |  是  | String   | 16 | 0 | 商户营业网点ID |  
| NETWORK_TYPE |  是  | String   | 2 | 0 | 服务类型 |  
| NODE_TYPE |  是  | String   | 2 | 0 | 节点分类 |  
| ADMIN_CODE_INFO |  否  | String   | 20 | 0 | 行政区划 |  
| MAP_NAME |  否  | String   | 128 | 0 | 地图坐标名称 |  
| X |  否  | Number   | 16 | 8 | X坐标 |  
| Y |  否  | Number   | 16 | 8 | Y坐标 |  
| PLAN_START_DATE |  是  | Number   | 8 | 0 | 计划起始日期 |  
| PLAN_END_DATE |  是  | Number   | 8 | 0 | 计划完成日期 |  
| NODE_INFO_TYPE |  是  | String   | 2 | 0 | 节点类型 |  
| NODE_STATE_TYPE |  是  | String   | 2 | 0 | 节点状态类型 |  
  
说明：商户管网逻辑节点信息  
  
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
