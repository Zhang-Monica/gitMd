## 1、接口描述  
服务接口：(QueryCalFeesDetaill)查询待计费详情信息  
接口描述：查询待计费详情信息  
请求说明：POST https://api.epeis.com/Service/v1/QueryCalFeesDetaill/  
  
## 2、服务接口请求参数  
#### 2.1、请求参数报文示例  
~~~  
{
	"SYS_HEAD":	{
		"CHANNEL_DID":	"",
		"DYNAMIC_KEY":	"",
		"REGISTER_DID":	""
	},
	"COM_METERAGE":	{
		"SETTLEMENT_AID":	"",
		"NORMAL_RETRO_TYPE":	""
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
  
参数：COM_METERAGE，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| SETTLEMENT_AID |  是  | String   | 16 | 0 | 16个字符,结算户编号 |  
| NORMAL_RETRO_TYPE |  是  | String   | 2 | 0 | 周期性类型:1-周期,2-非周期 |  
  
说明：计量点信息  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"COM_PACK":	[{
				"CHARGE_PACK_DID":	"",
				"CHARGE_PACK_TYPE":	"",
				"CHARGE_PACK_NAME":	"",
				"PACK_REMARK":	"",
				"ACCOUNT_ITEM_INFO":	"",
				"NETWORK_TYPE":	"",
				"PURCHASE_SALE_TYPE":	"",
				"BASIC_FEES_TYPE":	"",
				"RESIDENT_YESNO":	"",
				"COMP_DEVIATION_YESNO":	"",
				"ABUND_WITHER_YESNO":	"",
				"AGREE_PRICE_YESNO":	"",
				"TIME_FEES_TYPE":	"",
				"LADDER_TYPE":	"",
				"LADDER_LEVEL_TYPE":	"",
				"CHARGE_POPULATION":	0,
				"STARTUP_DATE":	0,
				"OUTAGE_DATE":	0
			}],
		"COM_METERAGE":	[{
				"SETTLEMENT_AID":	"",
				"NORMAL_RETRO_TYPE":	"",
				"ADDRESS":	"",
				"BOOK_AID":	"",
				"NODE_AID":	"",
				"NETWORK_TYPE":	"",
				"CUSTOMER_DID":	"",
				"USER_CUS_DID":	"",
				"USER_ACCOUNT_AID":	"",
				"METER_YESNO":	"",
				"DEVICE_DID":	"",
				"REAL_ESTATE_AID":	"",
				"ASSESS_YESNO":	"",
				"ENERGY_LOAD":	0,
				"ACCOUNT_ITEM_INFO":	"",
				"AGREE_PRICE_YESNO":	"",
				"STOP_EMPTY_YESNO":	"",
				"OUTAGE_VACANCY_DATE":	0,
				"RESUPPLY_DATE":	0,
				"MAIN_PACK_DID":	"",
				"TEMP_PACK_DID":	"",
				"TMP_MONTHS":	0,
				"BASIC_FEES_TYPE":	"",
				"LOAD_CAPACITY":	0,
				"METER_DEMAND_RATE":	0,
				"MAX_DEMAND_APPR":	0,
				"ABUND_WITHER_YESNO":	"",
				"TIME_FEES_TYPE":	"",
				"LADDER_TYPE":	"",
				"LADDER_LEVEL_TYPE":	"",
				"HEAT_CHARGE_TYPE":	"",
				"GARB_CHAEGE_TYPE":	"",
				"METER_TOTAL_CONS":	0,
				"METER_CONS0":	0,
				"METER_CONS1":	0,
				"METER_CONS2":	0,
				"METER_CONS3":	0,
				"METER_CONS4":	0,
				"METER_CONS5":	0,
				"METER_DEMAND":	0,
				"FOR_RATE_VALID_TYPE":	"",
				"FOR_RAT_ACTIVE_POW":	0,
				"FOR_RAT_REACTIVE_POW":	0,
				"FOR_RAT_CALC_VALUE":	0,
				"COMP_DEVIATION_YESNO":	"",
				"APPR_CHARGE_DOSE":	0,
				"FIXED_CHARGE":	0,
				"FIXED_FEE":	0,
				"TOTAL_APPORTION_DOSE":	0,
				"TOTAL_APPORTION_FEE":	0,
				"FLOOR_NUM":	0,
				"FLOOR_HEIGHT":	0,
				"CHARGE_AREA_FACTOR":	0,
				"ACTUAL_AREA":	0,
				"CHARGE_POPULATION":	0,
				"CHARGE_HOUSEHOLDS":	0,
				"CHARGE_SET_NUM":	0,
				"MET_DIVID_RATIO":	0,
				"AREA_DIVID_RATIO":	0,
				"DIVI_FIXED_CHARGE":	0,
				"DIVI_FIXED_FEE":	0,
				"ACCU_MONTH_CONS":	0,
				"ACCU_YEAR_CONS":	0
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
  
参数：COM_PACK，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| CHARGE_PACK_DID |  是  | String   | 计费套餐号 |  
| CHARGE_PACK_TYPE |  是  | String   | 1-经济套餐，2-特惠套餐，3-低保套餐 |  
| CHARGE_PACK_NAME |  是  | String   | 套餐名称 |  
| PACK_REMARK |  是  | String   | 套餐备注说明 |  
| ACCOUNT_ITEM_INFO |  是  | String   | 会计科目编码 |  
| NETWORK_TYPE |  是  | String   | 1-水，2-电，3-气，4-热，5-冷，6-物业，7-房屋租赁 |  
| PURCHASE_SALE_TYPE |  是  | String   | 1-直供,2-购入,3-趸售 |  
| BASIC_FEES_TYPE |  是  | String   | 基本费计费类型：1-不计费，2-容量计费，3-需量计费 |  
| RESIDENT_YESNO |  是  | String   | 是否居民：1-否，2-是 |  
| COMP_DEVIATION_YESNO |  是  | String   | 是否计算核定偏差：1-否，2-是 |  
| ABUND_WITHER_YESNO |  是  | String   | 是否分枯：1-否，2-是 |  
| AGREE_PRICE_YESNO |  是  | String   | 是否协议价：1-否，2-是 |  
| TIME_FEES_TYPE |  是  | String   | 分时计费类型：1-不分时，2-2分时，3-3分时,4-4分时，5-5分时 |  
| LADDER_TYPE |  是  | String   | 阶梯类型：1-无阶梯，2-年阶梯，3-月阶梯 |  
| LADDER_LEVEL_TYPE |  是  | String   | 阶梯级次：1-第一阶梯，2-第二阶梯，3-第三阶梯，4-第四阶梯，5-第五阶梯 |  
| CHARGE_POPULATION |  是  | Number   | 计费人口数 |  
| STARTUP_DATE |  是  | Number   | 启用日期 |  
| OUTAGE_DATE |  是  | Number   | 停用日期 |  
  
说明：计费套餐  
参数：COM_METERAGE，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| SETTLEMENT_AID |  是  | String   | 16个字符,结算户编号 |  
| NORMAL_RETRO_TYPE |  是  | String   | 周期性类型:1-周期,2-非周期 |  
| ADDRESS |  是  | String   | 详细地址 |  
| BOOK_AID |  是  | String   | 抄表区段编号 |  
| NODE_AID |  是  | String   | 管网节点ID |  
| NETWORK_TYPE |  是  | String   | 1-水，2-电，3-气，4-热，5-冷，6-物业，7-房屋租赁 |  
| CUSTOMER_DID |  是  | String   | 16个字符，客户编号 |  
| USER_CUS_DID |  是  | String   | 16个字符，用户内部ID |  
| USER_ACCOUNT_AID |  是  | String   | 16个字符，用户账户ID |  
| METER_YESNO |  是  | String   | 是否有表：1-否，2-是 |  
| DEVICE_DID |  是  | String   | 装置ID |  
| REAL_ESTATE_AID |  是  | String   | 不动产ID |  
| ASSESS_YESNO |  是  | String   | 是否考核：1-否，2-是 |  
| ENERGY_LOAD |  是  | Number   | 用能负荷 |  
| ACCOUNT_ITEM_INFO |  是  | String   | 会计科目编码 |  
| AGREE_PRICE_YESNO |  是  | String   | 是否协议价：1-否，2-是 |  
| STOP_EMPTY_YESNO |  是  | String   | 是否停/空：1-否，2-是 |  
| OUTAGE_VACANCY_DATE |  是  | Number   | 停供/空置日期 |  
| RESUPPLY_DATE |  是  | Number   | 复供日期 |  
| MAIN_PACK_DID |  是  | String   | 主套餐号 |  
| TEMP_PACK_DID |  是  | String   | 临时套餐号 |  
| TMP_MONTHS |  是  | Number   | 临时月数 |  
| BASIC_FEES_TYPE |  是  | String   | 基本费计费类型：1-不计费，2-容量计费，3-需量计费 |  
| LOAD_CAPACITY |  是  | Number   | 计费负荷容量 |  
| METER_DEMAND_RATE |  是  | Number   | 计费表计需量倍率 |  
| MAX_DEMAND_APPR |  是  | Number   | 最大需量核定值 |  
| ABUND_WITHER_YESNO |  是  | String   | 是否丰枯：1-否，2-是 |  
| TIME_FEES_TYPE |  是  | String   | 分时计费类型：1-不分时，2-2分时，3-3分时,4-4分时，5-5分时 |  
| LADDER_TYPE |  是  | String   | 阶梯类型：1-无阶梯，2-年阶梯，3-月阶梯 |  
| LADDER_LEVEL_TYPE |  是  | String   | 阶梯级次：1-第一阶梯，2-第二阶梯，3-第三阶梯，4-第四阶梯，5-第五阶梯 |  
| HEAT_CHARGE_TYPE |  是  | String   | 暖气计费类型：1-不计费，2-面积计费，3-热量计费，4-面积和热量 |  
| GARB_CHAEGE_TYPE |  是  | String   | 垃圾计费类型：1-按人口，2-按面积 |  
| METER_TOTAL_CONS |  是  | Number   | 计费表计总用量 |  
| METER_CONS0 |  是  | Number   | 计费表计用量0 |  
| METER_CONS1 |  是  | Number   | 计费表计用量1 |  
| METER_CONS2 |  是  | Number   | 计费表计用量2 |  
| METER_CONS3 |  是  | Number   | 计费表计用量3 |  
| METER_CONS4 |  是  | Number   | 计费表计用量4 |  
| METER_CONS5 |  是  | Number   | 计费表计用量5 |  
| METER_DEMAND |  是  | Number   | 计费表计需量 |  
| FOR_RATE_VALID_TYPE |  是  | String   | 力率考核类型：1-不考核，2-考核80，3-考核85，4-考核90 |  
| FOR_RAT_ACTIVE_POW |  是  | Number   | 力率考核总有功量 |  
| FOR_RAT_REACTIVE_POW |  是  | Number   | 力率考核总无功量 |  
| FOR_RAT_CALC_VALUE |  是  | Number   | 力率考核计算值 |  
| COMP_DEVIATION_YESNO |  是  | String   | 是否计算核定偏差：1-否，2-是 |  
| APPR_CHARGE_DOSE |  是  | Number   | 核定计费用量 |  
| FIXED_CHARGE |  是  | Number   | 计费固定量 |  
| FIXED_FEE |  是  | Number   | 计费固定费 |  
| TOTAL_APPORTION_DOSE |  是  | Number   | 计费分摊总用量 |  
| TOTAL_APPORTION_FEE |  是  | Number   | 计费分摊总费用 |  
| FLOOR_NUM |  是  | Number   | 所在楼层层数 |  
| FLOOR_HEIGHT |  是  | Number   | 所在楼层层高 |  
| CHARGE_AREA_FACTOR |  是  | Number   | 计费面积系数 |  
| ACTUAL_AREA |  是  | Number   | 计费实有面积 |  
| CHARGE_POPULATION |  是  | Number   | 计费人口数 |  
| CHARGE_HOUSEHOLDS |  是  | Number   | 计费户数 |  
| CHARGE_SET_NUM |  是  | Number   | 计费套数 |  
| MET_DIVID_RATIO |  是  | Number   | 分摊比例 |  
| AREA_DIVID_RATIO |  是  | Number   | 面积分割比例 |  
| DIVI_FIXED_CHARGE |  是  | Number   | 分摊用量 |  
| DIVI_FIXED_FEE |  是  | Number   | 分割固定费 |  
| ACCU_MONTH_CONS |  是  | Number   | 累计月用量 |  
| ACCU_YEAR_CONS |  是  | Number   | 累计年用量 |  
  
说明：计量点信息  
## 4、服务接口说明  
说明：无  
