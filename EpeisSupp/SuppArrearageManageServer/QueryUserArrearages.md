## 1、接口描述  
服务接口：(QueryUserArrearages)根据抄表区段查询客户欠费  
接口描述：根据抄表区段查询客户欠费  
请求说明：POST https://api.epeis.com/Service/v1/QueryUserArrearages/  
  
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
	"ACC_VOLPRICE_OWE":	{
		"RET_STORES_AID":	"",
		"BOOK_AID":	"",
		"CHARGE_PACK_TYPE":	""
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
  
参数：ACC_VOLPRICE_OWE，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| RET_STORES_AID |  否  | String   | 16 | 0 | 销售公司营业网点ID |  
| BOOK_AID |  否  | String   | 16 | 0 | 16个字符，区段编号 |  
| CHARGE_PACK_TYPE |  否  | String   | 2 | 0 | 16个字符，套餐类型,1-保底价只查用本公司电，3-市场价只查未用本公司电 |  
  
说明：客户账户  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"ACC_VOLPRICE_OWE":	[{
				"NODE_AID":	"",
				"NETWORK_CO_DID":	"",
				"NET_STORES_AID":	"",
				"RETAIL_CO_DID":	"",
				"RET_STORES_AID":	"",
				"SALE_CO_DIMENSION":	"",
				"NETWORK_CO_DIMENSION":	"",
				"CHARGE_PACK_DID":	"",
				"BOOK_AID":	"",
				"NETWORK_TYPE":	"",
				"SETTLEMENT_AID":	"",
				"NORMAL_RETRO_TYPE":	"",
				"CUSTOMER_DID":	"",
				"USER_CUS_DID":	"",
				"USER_ACCOUNT_AID":	"",
				"INDUSTRY_CODE_INFO":	"",
				"INDUSTRY_TYPE":	"",
				"ASSESS_YESNO":	"",
				"RESIDENT_YESNO":	"",
				"PUBLIC_USE_YESNO":	"",
				"TEMPORARY_YESNO":	"",
				"CITY_YESNO":	"",
				"ARMY_YESNO":	"",
				"PURCHASE_SALE_TYPE":	"",
				"STOP_EMPTY_YESNO":	"",
				"BUS_CATEG_TYPE":	"",
				"BASIC_FEES_TYPE":	"",
				"ABUND_WITHER_YESNO":	"",
				"ABUNDANCE_TYPE":	"",
				"TIME_FEES_TYPE":	"",
				"TIME_SHARING_TYPE":	"",
				"AGREE_PRICE_YESNO":	"",
				"LADDER_TYPE":	"",
				"LADDER_NUM_TYPE":	"",
				"LADDER_LEVEL_TYPE":	"",
				"FOR_RATE_VALID_TYPE":	"",
				"HEAT_CHARGE_TYPE":	"",
				"GARB_CHAEGE_TYPE":	"",
				"ACCOUNT_ITEM_INFO":	"",
				"CAT_ITEM_NUM":	0,
				"CAT_ITEM_ATTACH_NUM":	0,
				"STARTUP_DATE":	0,
				"ACCOUNT_MONTH":	0,
				"SETTLE_ACCOUNT_MONTH":	0,
				"THE_CHARGE_CONS":	0,
				"CHARGE_PRICE":	0,
				"CALC_FEE":	0,
				"CHARGE_PACK_TYPE":	"",
				"TRANS_VOLTAGE_TYPE":	"",
				"DIST_LEVEL_RANGE_TYPE":	"",
				"RETAIL_VOLTAGE_GRADE_TYPE":	"",
				"PROPERTY_LEVEL_TYPE":	"",
				"OPERATION_DATE":	0,
				"SERIAL_DID":	"",
				"LIQ_DAMA_LEVY_DATE":	0,
				"LAST_PAID_IN_DATE":	0,
				"LAST_PAID_IN_SID":	"",
				"ACCU_PAID_IN_FEE":	0,
				"THE_PAID_IN_FEE":	0,
				"THE_PAID_IN_DATE":	0,
				"THE_PAID_IN_SID":	""
			}]
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
  
参数：ACC_VOLPRICE_OWE，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| NODE_AID |  是  | String   | 区段节点ID |  
| NETWORK_CO_DID |  是  | String   | 管网公司编码 |  
| NET_STORES_AID |  是  | String   | 管网公司营业网点ID |  
| RETAIL_CO_DID |  是  | String   | 销售公司编码 |  
| RET_STORES_AID |  是  | String   | 销售公司营业网点ID |  
| SALE_CO_DIMENSION |  是  | String   | 销售公司统计维度 |  
| NETWORK_CO_DIMENSION |  是  | String   | 管网公司统计维度 |  
| CHARGE_PACK_DID |  是  | String   | 计费套餐号 |  
| BOOK_AID |  是  | String   | 区段编号 |  
| NETWORK_TYPE |  是  | String   | 服务类型 |  
| SETTLEMENT_AID |  是  | String   | 结算户ID |  
| NORMAL_RETRO_TYPE |  是  | String   | 正常/追补 |  
| CUSTOMER_DID |  是  | String   | 客户编号 |  
| USER_CUS_DID |  是  | String   | 用户内部ID |  
| USER_ACCOUNT_AID |  是  | String   | 用户账户ID |  
| INDUSTRY_CODE_INFO |  是  | String   | 行业分类 |  
| INDUSTRY_TYPE |  是  | String   | 产业分类 |  
| ASSESS_YESNO |  是  | String   | 是否考核 |  
| RESIDENT_YESNO |  是  | String   | 是否居民 |  
| PUBLIC_USE_YESNO |  是  | String   | 是否公用 |  
| TEMPORARY_YESNO |  是  | String   | 是否临时 |  
| CITY_YESNO |  是  | String   | 是否城市 |  
| ARMY_YESNO |  是  | String   | 是否军工 |  
| PURCHASE_SALE_TYPE |  是  | String   | 购售类型 |  
| STOP_EMPTY_YESNO |  是  | String   | 是否停/空 |  
| BUS_CATEG_TYPE |  是  | String   | 业务类别 |  
| BASIC_FEES_TYPE |  是  | String   | 基本费计费类型 |  
| ABUND_WITHER_YESNO |  是  | String   | 是否丰枯 |  
| ABUNDANCE_TYPE |  是  | String   | 丰平枯 |  
| TIME_FEES_TYPE |  是  | String   | 分时计费类型 |  
| TIME_SHARING_TYPE |  是  | String   | 分时时段 |  
| AGREE_PRICE_YESNO |  是  | String   | 是否协议价 |  
| LADDER_TYPE |  是  | String   | 阶梯类型 |  
| LADDER_NUM_TYPE |  是  | String   | 阶梯数量 |  
| LADDER_LEVEL_TYPE |  是  | String   | 阶梯级次 |  
| FOR_RATE_VALID_TYPE |  是  | String   | 力率考核类型 |  
| HEAT_CHARGE_TYPE |  是  | String   | 暖气计费类型 |  
| GARB_CHAEGE_TYPE |  是  | String   | 物业计费类型 |  
| ACCOUNT_ITEM_INFO |  是  | String   | 会计科目编码 |  
| CAT_ITEM_NUM |  是  | Number   | 分类项目编号 |  
| CAT_ITEM_ATTACH_NUM |  是  | Number   | 分类项目附编号 |  
| STARTUP_DATE |  是  | Number   | 启用日期 |  
| ACCOUNT_MONTH |  是  | Number   | 帐务月份 |  
| SETTLE_ACCOUNT_MONTH |  是  | Number   | 结账月份 |  
| THE_CHARGE_CONS |  是  | Number   | 本次计费用量 |  
| CHARGE_PRICE |  是  | Number   | 计费单价 |  
| CALC_FEE |  是  | Number   | 计算费用 |  
| CHARGE_PACK_TYPE |  是  | String   | 套餐类型 |  
| TRANS_VOLTAGE_TYPE |  是  | String   | 电压等级 |  
| DIST_LEVEL_RANGE_TYPE |  是  | String   | 配送等级范围 |  
| RETAIL_VOLTAGE_GRADE_TYPE |  是  | String   | 零售等级范围 |  
| PROPERTY_LEVEL_TYPE |  是  | String   | 物业服务等级 |  
| OPERATION_DATE |  是  | Number   | 操作日期 |  
| SERIAL_DID |  是  | String   | 业务流水号 |  
| LIQ_DAMA_LEVY_DATE |  是  | Number   | 上次违约金起征日 |  
| LAST_PAID_IN_DATE |  是  | Number   | 上次实收业务日期 |  
| LAST_PAID_IN_SID |  是  | String   | 上次实收业务流水号 |  
| ACCU_PAID_IN_FEE |  是  | Number   | 累计实收费用 |  
| THE_PAID_IN_FEE |  是  | Number   | 本次实收费用 |  
| THE_PAID_IN_DATE |  是  | Number   | 本次实收业务日期 |  
| THE_PAID_IN_SID |  是  | String   | 本次实收业务流水号 |  
  
说明：客户账户  
## 4、服务接口说明  
说明：无  
