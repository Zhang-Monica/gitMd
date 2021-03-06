## 1、接口描述  
服务接口：(UpdSettleRealEstate)修改不动产面积信息  
接口描述：修改不动产面积信息  
请求说明：POST https://api.epeis.com/Service/v1/UpdSettleRealEstate/  
  
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
	"SETTLE_REAL_ESTATE":	{
		"REAL_ESTATE_AID":	"",
		"TOTAL_FLOOR_NUM":	0,
		"LAYER_NUM":	0,
		"STOREY_HEIGHT":	0,
		"BUILDING_AREA":	0,
		"COVER_AREA":	0
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
  
参数：SETTLE_REAL_ESTATE，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| REAL_ESTATE_AID |  是  | String   | 16 | 0 | 不动产ID |  
| TOTAL_FLOOR_NUM |  否  | Number   | 4 | 0 | 总楼层数 |  
| LAYER_NUM |  否  | Number   | 4 | 0 | 所在层数 |  
| STOREY_HEIGHT |  否  | Number   | 14 | 2 | 层高 |  
| BUILDING_AREA |  否  | Number   | 14 | 2 | 房屋建筑面积 |  
| COVER_AREA |  否  | Number   | 14 | 2 | 房屋套内面积 |  
  
说明：不动产面积信息  
  
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
