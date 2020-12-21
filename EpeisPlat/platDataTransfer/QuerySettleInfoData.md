## 1、接口描述  
服务接口：(QuerySettleInfoData)查询结算计量点信息  
接口描述：查询结算计量点信息  
请求说明：POST https://api.epeis.com/Service/v1/QuerySettleInfoData/  
  
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
	"INOUT_IMPORT_SETTLE_INFO":	{
		"SETTLEMENT_NAME":	"",
		"NETWORK_TYPE":	"",
		"METER_YESNO":	""
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
  
参数：INOUT_IMPORT_SETTLE_INFO，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| SETTLEMENT_NAME |  否  | String   | 128 | 0 | 结算户名称 |  
| NETWORK_TYPE |  否  | String   | 2 | 0 | 服务类型：1-水；2-电；3-气；4-热；5-冷；6-物业；7-房屋租赁 |  
| METER_YESNO |  否  | String   | 2 | 0 | 是否有表1-否，2-是 |  
  
说明：结算计量点信息  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"INOUT_IMPORT_SETTLE_INFO":	[{
				"SETTLEMENT_AID":	"",
				"ACC_CERT_INFO":	"",
				"ACC_CERT_TYPE":	"",
				"CUSTOMER_NAME":	"",
				"CERTIFICATES_INFO":	"",
				"CERTIFICATES_TYPE":	"",
				"MOBILE_PHONE_INFO":	"",
				"USER_NAME":	"",
				"ADMIN_CODE_INFO":	"",
				"CADDRESS":	"",
				"SETTLEMENT_NAME":	"",
				"NETWORK_TYPE":	"",
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
				"LAST_CHECK_DATE":	0,
				"BUS_CATEG_TYPE":	"",
				"BOOK_AID":	"",
				"NODE_AID":	"",
				"NET_STORES_AID":	"",
				"METER_YESNO":	"",
				"DEVICE_DID":	"",
				"REAL_ESTATE_AID":	"",
				"REAL_ESTATE_YESNO":	"",
				"ASSESS_YESNO":	"",
				"ENERGY_LOAD":	0,
				"STOP_EMPTY_YESNO":	"",
				"OUTAGE_VACANCY_DATE":	0,
				"RESUPPLY_DATE":	0,
				"MAIN_PACK_DID":	"",
				"TEMP_PACK_DID":	"",
				"TMP_MONTHS":	0,
				"FIXED_CHARGE":	0,
				"FIXED_FEE":	0,
				"REMARK_INS":	"",
				"NETWORK_CO_DID":	"",
				"RETAIL_CO_DID":	"",
				"RET_STORES_AID":	"",
				"PURCHASE_SALE_TYPE":	"",
				"FOR_RATE_VALID_TYPE":	"",
				"LOAD_CAPACITY":	0,
				"METER_DEMAND_RATE":	0,
				"MAX_DEMAND_APPR":	0,
				"TOTAL_FLOOR_NUM":	0,
				"LAYER_NUM":	0,
				"STOREY_HEIGHT":	0,
				"BUILDING_AREA":	0,
				"COVER_AREA":	0,
				"METER_READ_CHAN_TYPE":	"",
				"REMOTE_COPY_YESNO":	""
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
  
参数：INOUT_IMPORT_SETTLE_INFO，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| SETTLEMENT_AID |  是  | String   | 结算户ID |  
| ACC_CERT_INFO |  是  | String   | 客户账户证件号码 |  
| ACC_CERT_TYPE |  是  | String   | 客户账户证件类型：1-身份证；2-统一社会信用代码 |  
| CUSTOMER_NAME |  是  | String   | 客户名称 |  
| CERTIFICATES_INFO |  是  | String   | 用户证件号码 |  
| CERTIFICATES_TYPE |  是  | String   | 用户证件类型：1-身份证；2-统一社会信用代码 |  
| MOBILE_PHONE_INFO |  是  | String   | 手机号码 |  
| USER_NAME |  是  | String   | 用户名称 |  
| ADMIN_CODE_INFO |  是  | String   | 行政区划 |  
| CADDRESS |  是  | String   | 客户详细地址 |  
| SETTLEMENT_NAME |  是  | String   | 结算户名称 |  
| NETWORK_TYPE |  是  | String   | 服务类型：1-水；2-电；3-气；4-热；5-冷；6-物业；7-房屋租赁 |  
| ADDRESS |  是  | String   | 详细地址 |  
| CONTROL_TYPE |  是  | String   | 量控费控类型：1-量控2-费控 |  
| INDUSTRY_CODE_INFO |  是  | String   | 行业分类 |  
| INDUSTRY_TYPE |  是  | String   | 产业分类：1-第一产业，2-第二产业，3-第三产业 |  
| RESIDENT_YESNO |  是  | String   | 是否居民：1-否，2-是 |  
| CITY_YESNO |  是  | String   | 是否城市1-否，2-是 |  
| ARMY_YESNO |  是  | String   | 是否军工1-否，2-是 |  
| TEMPORARY_YESNO |  是  | String   | 是否临时1-否，2-是 |  
| PUBLIC_USE_YESNO |  是  | String   | 是否公用1-否，2-是 |  
| CONNECT_MODE_TYPE |  是  | String   | 接线类型 |  
| TALLY_CYCLE |  是  | Number   | 点检周期 |  
| LAST_CHECK_DATE |  是  | Number   | 上次检查日期 |  
| BUS_CATEG_TYPE |  是  | String   | 业务类别：1-变更2-换表3-销户4-追补 |  
| BOOK_AID |  是  | String   | 区段编号 |  
| NODE_AID |  是  | String   | 区段节点ID |  
| NET_STORES_AID |  是  | String   | 管网公司营业网点ID |  
| METER_YESNO |  是  | String   | 是否有表1-否，2-是 |  
| DEVICE_DID |  是  | String   | 装置ID |  
| REAL_ESTATE_AID |  是  | String   | 不动产ID |  
| REAL_ESTATE_YESNO |  是  | String   | 是否不动产：1-否，2-是 |  
| ASSESS_YESNO |  是  | String   | 是否考核1-否，2-是 |  
| ENERGY_LOAD |  是  | Number   | 用能负荷 |  
| STOP_EMPTY_YESNO |  是  | String   | 是否停/空：1-否，2-是 |  
| OUTAGE_VACANCY_DATE |  是  | Number   | 停供/空置日期 |  
| RESUPPLY_DATE |  是  | Number   | 复供日期 |  
| MAIN_PACK_DID |  是  | String   | 主套餐号 |  
| TEMP_PACK_DID |  是  | String   | 临时套餐号 |  
| TMP_MONTHS |  是  | Number   | 临时月数 |  
| FIXED_CHARGE |  是  | Number   | 计费固定量 |  
| FIXED_FEE |  是  | Number   | 计费固定费 |  
| REMARK_INS |  是  | String   | 备注说明 |  
| NETWORK_CO_DID |  是  | String   | 管网公司编码 |  
| RETAIL_CO_DID |  是  | String   | 销售公司编码 |  
| RET_STORES_AID |  是  | String   | 销售公司营业网点ID |  
| PURCHASE_SALE_TYPE |  是  | String   | 购售类型 |  
| FOR_RATE_VALID_TYPE |  是  | String   | 力率考核类型 |  
| LOAD_CAPACITY |  是  | Number   | 计费负荷容量 |  
| METER_DEMAND_RATE |  是  | Number   | 计费表计需量倍率 |  
| MAX_DEMAND_APPR |  是  | Number   | 最大需量核定值 |  
| TOTAL_FLOOR_NUM |  是  | Number   | 总楼层数 |  
| LAYER_NUM |  是  | Number   | 所在层数 |  
| STOREY_HEIGHT |  是  | Number   | 层高 |  
| BUILDING_AREA |  是  | Number   | 房屋建筑面积 |  
| COVER_AREA |  是  | Number   | 房屋套内面积 |  
| METER_READ_CHAN_TYPE |  是  | String   | 抄表渠道 |  
| REMOTE_COPY_YESNO |  是  | String   | 是否远抄 |  
  
说明：结算计量点信息  
## 4、服务接口说明  
说明：无  
