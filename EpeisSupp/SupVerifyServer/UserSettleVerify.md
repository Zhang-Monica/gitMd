## 1、接口描述  
服务接口：(UserSettleVerify)用户结算户审核  
接口描述：用户结算户审核  
请求说明：POST https://api.epeis.com/Service/v1/UserSettleVerify/  
  
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
	"SETTLE_ACCOUNT":	{
		"SETTLEMENT_AID":	"",
		"SETTLEMENT_NAME":	"",
		"SETTLE_ATTESTATION_TYPE":	"",
		"ADDRESS":	"",
		"CONTROL_TYPE":	"",
		"INDUSTRY_CODE_INFO":	"",
		"INDUSTRY_TYPE":	"",
		"RESIDENT_YESNO":	"",
		"CITY_YESNO":	"",
		"ARMY_YESNO":	"",
		"TEMPORARY_YESNO":	"",
		"PUBLIC_USE_YESNO":	"",
		"CONNECT_MODE_TYPE":	"",
		"TALLY_CYCLE":	0,
		"REMARK_INS":	"",
		"BUS_CATEG_TYPE":	""
	},
	"SETTLE_METERAGE":	{
		"ADDRESS":	"",
		"BOOK_AID":	"",
		"NODE_AID":	"",
		"NETWORK_TYPE":	"",
		"METER_YESNO":	"",
		"NET_STORES_AID":	"",
		"ASSESS_YESNO":	"",
		"ENERGY_LOAD":	0,
		"STOP_EMPTY_YESNO":	"",
		"OUTAGE_VACANCY_DATE":	0,
		"RESUPPLY_DATE":	0,
		"MAIN_PACK_DID":	"",
		"TEMP_PACK_DID":	"",
		"TMP_MONTHS":	0,
		"LOAD_CAPACITY":	0,
		"METER_DEMAND_RATE":	0,
		"MAX_DEMAND_APPR":	0,
		"FOR_RATE_VALID_TYPE":	"",
		"FIXED_CHARGE":	0,
		"FIXED_FEE":	0,
		"TOTAL_APPORTION_DOSE":	0,
		"TOTAL_APPORTION_FEE":	0,
		"MET_DIVID_RATIO":	0,
		"AREA_DIVID_RATIO":	0,
		"DIVI_FIXED_CHARGE":	0,
		"DIVI_FIXED_FEE":	0,
		"CHARGE_AREA_FACTOR":	0,
		"ACTUAL_AREA":	0,
		"CHARGE_HOUSEHOLDS":	0,
		"BUS_CATEG_TYPE":	""
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
  
参数：SETTLE_ACCOUNT，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| SETTLEMENT_AID |  是  | String   | 16 | 0 | 结算户ID |  
| SETTLEMENT_NAME |  是  | String   | 128 | 0 | 结算户名称 |  
| SETTLE_ATTESTATION_TYPE |  是  | String   | 2 | 0 | 认证类型：1-未认证；2-审核中；3-已认证 |  
| ADDRESS |  是  | String   | 128 | 0 | 详细地址 |  
| CONTROL_TYPE |  是  | String   | 2 | 0 | 量控费控类型 |  
| INDUSTRY_CODE_INFO |  是  | String   | 20 | 0 | 产业分类 |  
| INDUSTRY_TYPE |  是  | String   | 2 | 0 | 行业分类 |  
| RESIDENT_YESNO |  是  | String   | 2 | 0 | 是否居民 |  
| CITY_YESNO |  是  | String   | 2 | 0 | 是否城市 |  
| ARMY_YESNO |  是  | String   | 2 | 0 | 是否军工 |  
| TEMPORARY_YESNO |  是  | String   | 2 | 0 | 是否临时 |  
| PUBLIC_USE_YESNO |  是  | String   | 2 | 0 | 是否公用 |  
| CONNECT_MODE_TYPE |  否  | String   | 2 | 0 | 接线类型 |  
| TALLY_CYCLE |  是  | Number   | 4 | 0 | 点检周期 |  
| REMARK_INS |  否  | String   | 256 | 0 | 备注说明 |  
| BUS_CATEG_TYPE |  是  | String   | 2 | 0 | 业务类别 |  
  
说明：结算户信息  
参数：SETTLE_METERAGE，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| ADDRESS |  是  | String   | 128 | 0 | 详细地址 |  
| BOOK_AID |  是  | String   | 16 | 0 | 抄表区段编号 |  
| NODE_AID |  是  | String   | 16 | 0 | 管网节点ID |  
| NETWORK_TYPE |  是  | String   | 2 | 0 | 管网类型 |  
| METER_YESNO |  是  | String   | 2 | 0 | 是否有表 |  
| NET_STORES_AID |  是  | String   | 16 | 0 | 管网公司营业网点ID |  
| ASSESS_YESNO |  是  | String   | 2 | 0 | 是否考核 |  
| ENERGY_LOAD |  否  | Number   | 14 | 2 | 用能负荷 |  
| STOP_EMPTY_YESNO |  是  | String   | 2 | 0 | 是否停/空 |  
| OUTAGE_VACANCY_DATE |  否  | Number   | 8 | 0 | 停供/空置日期 |  
| RESUPPLY_DATE |  否  | Number   | 8 | 0 | 复供日期 |  
| MAIN_PACK_DID |  是  | String   | 16 | 0 | 主套餐号 |  
| TEMP_PACK_DID |  否  | String   | 16 | 0 | 临时套餐号 |  
| TMP_MONTHS |  否  | Number   | 4 | 0 | 临时月数 |  
| LOAD_CAPACITY |  否  | Number   | 14 | 2 | 计费负荷容量 |  
| METER_DEMAND_RATE |  否  | Number   | 14 | 2 | 计费表计需量倍率 |  
| MAX_DEMAND_APPR |  否  | Number   | 14 | 2 | 最大需量核定值 |  
| FOR_RATE_VALID_TYPE |  否  | String   | 2 | 0 | 力率考核类型 |  
| FIXED_CHARGE |  否  | Number   | 14 | 2 | 计费固定量 |  
| FIXED_FEE |  否  | Number   | 14 | 2 | 计费固定费 |  
| TOTAL_APPORTION_DOSE |  否  | Number   | 14 | 2 | 分摊用量 |  
| TOTAL_APPORTION_FEE |  否  | Number   | 14 | 2 | 分摊费用 |  
| MET_DIVID_RATIO |  否  | Number   | 8 | 4 | 分摊比例 |  
| AREA_DIVID_RATIO |  否  | Number   | 8 | 4 | 分割比例 |  
| DIVI_FIXED_CHARGE |  否  | Number   | 14 | 2 | 分割用量 |  
| DIVI_FIXED_FEE |  否  | Number   | 14 | 2 | 分割费用 |  
| CHARGE_AREA_FACTOR |  否  | Number   | 8 | 4 | 计费面积系数 |  
| ACTUAL_AREA |  否  | Number   | 14 | 2 | 计费实有面积 |  
| CHARGE_HOUSEHOLDS |  否  | Number   | 4 | 0 | 计费户数 |  
| BUS_CATEG_TYPE |  是  | String   | 2 | 0 | 业务类别 |  
  
说明：结算计量点  
  
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
