## 1、接口描述  
服务接口：(CheckComPackage)管网公司审核套餐配送价  
接口描述：管网公司审核套餐配送价  
请求说明：POST https://api.epeis.com/Service/v1/CheckComPackage/  
  
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
	"COM_PACK":	{
		"CHARGE_PACK_DID":	"",
		"CHARGE_PACK_TYPE":	"",
		"PACK_REMARK":	"",
		"POWERRANGE_YESNO":	"",
		"POWER_RANGE_TYPE":	"",
		"DIST_LEVEL_RANGE_TYPE":	"",
		"STATE_TYPE":	""
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
  
参数：COM_PACK，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| CHARGE_PACK_DID |  是  | String   | 16 | 0 | 计费套餐号 |  
| CHARGE_PACK_TYPE |  是  | String   | 2 | 0 | 套餐类型 |  
| PACK_REMARK |  是  | String   | 1024 | 0 | 套餐备注说明 |  
| POWERRANGE_YESNO |  否  | String   | 2 | 0 | 是否分功率计价 |  
| POWER_RANGE_TYPE |  否  | String   | 2 | 0 | 功率范围 |  
| DIST_LEVEL_RANGE_TYPE |  否  | String   | 2 | 0 | 配送等级范围 |  
| STATE_TYPE |  是  | String   | 2 | 0 | 是否通过，1-通过，2-不通过 |  
  
说明：计费套餐  
  
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
