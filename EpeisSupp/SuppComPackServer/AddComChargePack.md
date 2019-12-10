## 1、接口描述  
服务接口：(AddComChargePack)添加计费套餐  
接口描述：添加计费套餐  
请求说明：POST https://api.epeis.com/Service/v1/AddComChargePack/  
  
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
		"ADMIN_CODE_INFO":	"",
		"CHARGE_PACK_TYPE":	"",
		"CHARGE_PACK_NAME":	"",
		"PACK_REMARK":	"",
		"NETWORK_CO_DID":	"",
		"NET_STORES_AID":	"",
		"RETAIL_CO_DID":	"",
		"RET_STORES_AID":	"",
		"ACCOUNT_ITEM_INFO":	"",
		"NETWORK_TYPE":	"",
		"PURCHASE_SALE_TYPE":	"",
		"BASIC_FEES_TYPE":	"",
		"RESIDENT_YESNO":	"",
		"COMP_DEVIATION_YESNO":	"",
		"ABUND_WITHER_YESNO":	"",
		"TIME_FEES_TYPE":	"",
		"LADDER_TYPE":	"",
		"LADDER_LEVEL_TYPE":	"",
		"CHARGE_POPULATION":	0,
		"STARTUP_DATE":	0,
		"OUTAGE_DATE":	0
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
| ADMIN_CODE_INFO |  是  | String   | 20 | 0 | 行政区划 |  
| CHARGE_PACK_TYPE |  是  | String   | 2 | 0 | 1-经济套餐，2-特惠套餐，3-低保套餐 |  
| CHARGE_PACK_NAME |  是  | String   | 64 | 0 | 套餐名称 |  
| PACK_REMARK |  否  | String   | 1024 | 0 | 套餐备注说明 |  
| NETWORK_CO_DID |  是  | String   | 16 | 0 | 管网公司编码 |  
| NET_STORES_AID |  是  | String   | 16 | 0 | 管网公司营业网点ID |  
| RETAIL_CO_DID |  是  | String   | 16 | 0 | 销售公司编码 |  
| RET_STORES_AID |  是  | String   | 16 | 0 | 销售公司营业网点ID |  
| ACCOUNT_ITEM_INFO |  是  | String   | 64 | 0 | 会计科目编码 |  
| NETWORK_TYPE |  是  | String   | 2 | 0 | 1-水，2-电，3-气，4-热，5-冷，6-物业，7-房屋租赁 |  
| PURCHASE_SALE_TYPE |  是  | String   | 2 | 0 | 1-直供,2-购入,3-趸售 |  
| BASIC_FEES_TYPE |  是  | String   | 2 | 0 | 基本费计费类型：1-不计费，2-容量计费，3-需量计费 |  
| RESIDENT_YESNO |  是  | String   | 2 | 0 | 是否居民：1-否，2-是 |  
| COMP_DEVIATION_YESNO |  是  | String   | 2 | 0 | 是否计算核定偏差：1-否，2-是 |  
| ABUND_WITHER_YESNO |  是  | String   | 2 | 0 | 是否分枯：1-否，2-是 |  
| TIME_FEES_TYPE |  是  | String   | 2 | 0 | 分时计费类型：1-不分时，2-2分时，3-3分时,4-4分时，5-5分时 |  
| LADDER_TYPE |  是  | String   | 2 | 0 | 阶梯类型：1-无阶梯，2-年阶梯，3-月阶梯 |  
| LADDER_LEVEL_TYPE |  是  | String   | 2 | 0 | 阶梯级次：1-第一阶梯，2-第二阶梯，3-第三阶梯，4-第四阶梯，5-第五阶梯 |  
| CHARGE_POPULATION |  否  | Number   | 4 | 0 | 计费人口数 |  
| STARTUP_DATE |  是  | Number   | 8 | 0 | 启用日期 |  
| OUTAGE_DATE |  是  | Number   | 8 | 0 | 停用日期 |  
  
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
