## 1、接口描述  
服务接口：(QueryPlaAccountItem)查询会计科目  
接口描述：查询会计科目  
请求说明：POST https://api.epeis.com/Service/v1/QueryPlaAccountItem/  
  
## 2、服务接口请求参数  
#### 2.1、请求参数报文示例  
~~~  
{
	"SYS_HEAD":	{
		"CHANNEL_DID":	"",
		"DYNAMIC_KEY":	"",
		"REGISTER_DID":	""
	},
	"COM_ACCOUNT_NUM":	{
		"RETAIL_CO_DID":	"",
		"NETWORK_TYPE":	"",
		"PURCHASE_SALE_TYPE":	"",
		"LEVEL_ASSIGN":	0
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
  
参数：COM_ACCOUNT_NUM，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| RETAIL_CO_DID |  是  | String   | 16 | 0 | 销售公司编码 |  
| NETWORK_TYPE |  是  | String   | 2 | 0 | 1-水，2-电，3-气，4-热，5-冷，6-物业，7-房屋租赁 |  
| PURCHASE_SALE_TYPE |  是  | String   | 2 | 0 | 购售类型:1-直供,2-购入,3-趸售 |  
| LEVEL_ASSIGN |  否  | Number   | 4 | 0 | 级数 |  
  
说明：公共代码  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"INOUT_COMM_CODE":	{
			"CODE_CODE":	"",
			"CATEGORY_CODE":	"",
			"CODE_STRING":	"",
			"LEVEL_ASSIGN":	0,
			"CODE_TYPE":	""
		}
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
  
参数：INOUT_COMM_CODE，类型：object  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| CODE_CODE |  否  | String   | 代码编码 |  
| CATEGORY_CODE |  否  | String   | 分类代码编码 |  
| CODE_STRING |  否  | String   | 代码json字符串 |  
| LEVEL_ASSIGN |  否  | Number   | 级数 |  
| CODE_TYPE |  否  | String   | 1-行业分类，2-会计科目，3-行政区划，4-税收商品，5-系统代码 |  
  
说明：公共代码  
## 4、服务接口说明  
说明：无  
