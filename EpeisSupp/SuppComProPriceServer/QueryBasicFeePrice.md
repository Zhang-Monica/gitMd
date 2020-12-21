## 1、接口描述  
服务接口：(QueryBasicFeePrice)查询分类项目单价基本费单价  
接口描述：查询分类项目单价基本费单价  
请求说明：POST https://api.epeis.com/Service/v1/QueryBasicFeePrice/  
  
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
	"SYS_PAGE":	{
		"PAGE_NO":	1,
		"PAGE_ROWS":	8
	},
	"COM_PRO_PRICE":	{
		"ACCOUNT_ITEM_INFO":	"",
		"NETWORK_TYPE":	""
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
  
参数：SYS_PAGE，类型：object  
  
| 参数 | 必选 | 类型 | 长度 | 精度 | 描述 |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| PAGE_NO       |  是  | Number   | 4 | 0 | 第几页，必须大于“0” |  
| PAGE_ROWS     |  是  | Number   | 4 | 0 | 每页行数，必须大于“0” |  
  
参数：COM_PRO_PRICE，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| ACCOUNT_ITEM_INFO |  否  | String   | 64 | 0 | 会计科目编码 |  
| NETWORK_TYPE |  否  | String   | 2 | 0 | 1-水，2-电，3-气，4-热，5-冷，6-物业，7-房屋租赁 |  
  
说明：分类项目单价  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"SYS_PAGE":	{
			"PAGE_NO":	1,
			"PAGE_ROWS":	8,
			"NEXT_YESNO":	"2",
			"TOTAL":	1000
		},
		"COM_PRO_PRICE":	{
			"ACCOUNT_ITEM_INFO":	"",
			"CAT_ITEM_MAIN_NUM":	0,
			"CAT_ITEM_ATTACH_NUM":	0,
			"CAT_ITEM_PRICE":	0,
			"PRICE_UNIT_NAME":	"",
			"ADMIN_CODE_INFO":	"",
			"NETWORK_TYPE":	"",
			"PURCHASE_SALE_TYPE":	"",
			"RESIDENT_YESNO":	"",
			"AGREE_PRICE_YESNO":	"",
			"BASIC_FEES_TYPE":	"",
			"STARTUP_DATE":	0,
			"OUTAGE_DATE":	0
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
  
参数：SYS_PAGE，类型：object  
  
| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| PAGE_NO       |  是  | Number   | 第几页 |  
| PAGE_ROWS     |  是  | Number   | 每页行数 |  
| NEXT_YESNO    |  是  | String   | 是否有下页，1-无，2-有 |  
| TOTAL         |  是  | Number   | 总行数 |  
  
参数：COM_PRO_PRICE，类型：object  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| ACCOUNT_ITEM_INFO |  否  | String   | 会计科目编码 |  
| CAT_ITEM_MAIN_NUM |  否  | Number   | 分类项目主编号 |  
| CAT_ITEM_ATTACH_NUM |  否  | Number   | 分类项目附编号 |  
| CAT_ITEM_PRICE |  否  | Number   | 分类项目单价 |  
| PRICE_UNIT_NAME |  否  | String   | 价格单位名称 |  
| ADMIN_CODE_INFO |  否  | String   | 行政区划 |  
| NETWORK_TYPE |  否  | String   | 1-水，2-电，3-气，4-热，5-冷，6-物业，7-房屋租赁 |  
| PURCHASE_SALE_TYPE |  否  | String   | 购售类型 |  
| RESIDENT_YESNO |  否  | String   | 是否居民：1-否，2-是 |  
| AGREE_PRICE_YESNO |  否  | String   | 是否协议价：1-否，2-是 |  
| BASIC_FEES_TYPE |  否  | String   | 基本费计费类型：1-不计费，2-容量计费，3-需量计费 |  
| STARTUP_DATE |  否  | Number   | 启用日期 |  
| OUTAGE_DATE |  否  | Number   | 停用日期 |  
  
说明：分类项目单价  
## 4、服务接口说明  
说明：无  
