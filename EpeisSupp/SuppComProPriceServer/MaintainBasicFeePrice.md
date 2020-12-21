## 1、接口描述  
服务接口：(MaintainBasicFeePrice)维护分类项目单价基本费单价  
接口描述：维护分类项目单价基本费单价  
请求说明：POST https://api.epeis.com/Service/v1/MaintainBasicFeePrice/  
  
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
	"COM_PRO_PRICE":	[{
			"ACCOUNT_ITEM_INFO":	"",
			"CAT_ITEM_MAIN_NUM":	0,
			"CAT_ITEM_ATTACH_NUM":	0,
			"CAT_ITEM_PRICE":	0,
			"PRICE_UNIT_NAME":	"",
			"NETWORK_TYPE":	"",
			"BASIC_FEES_TYPE":	"",
			"PURCHASE_SALE_TYPE":	"",
			"RESIDENT_YESNO":	"",
			"STARTUP_DATE":	0,
			"OUTAGE_DATE":	0,
			"OPERATION_TYPE":	""
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
  
参数：COM_PRO_PRICE，类型：Array  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| ACCOUNT_ITEM_INFO |  是  | String   | 64 | 0 | 会计科目编码 |  
| CAT_ITEM_MAIN_NUM |  是  | Number   | 10 | 0 | 分类项目主编号 |  
| CAT_ITEM_ATTACH_NUM |  是  | Number   | 10 | 0 | 分类项目附编号 |  
| CAT_ITEM_PRICE |  是  | Number   | 14 | 6 | 分类项目单价 |  
| PRICE_UNIT_NAME |  否  | String   | 64 | 0 | 价格单位名称 |  
| NETWORK_TYPE |  是  | String   | 2 | 0 | 1-水，2-电，3-气，4-热，5-冷，6-物业，7-房屋租赁 |  
| BASIC_FEES_TYPE |  是  | String   | 2 | 0 | 1-不计费，2-容量计费，3-需量计费 |  
| PURCHASE_SALE_TYPE |  是  | String   | 2 | 0 | 购售类型 |  
| RESIDENT_YESNO |  是  | String   | 2 | 0 | 是否居民：1-否，2-是 |  
| STARTUP_DATE |  是  | Number   | 8 | 0 | 启用日期 |  
| OUTAGE_DATE |  否  | Number   | 8 | 0 | 停用日期 |  
| OPERATION_TYPE |  是  | String   | 2 | 0 | 1-新增；2-删除；3-变更 |  
  
说明：分类项目单价  
  
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
