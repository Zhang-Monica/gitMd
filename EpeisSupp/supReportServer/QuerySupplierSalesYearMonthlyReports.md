## 1、接口描述  
服务接口：(QuerySupplierSalesYearMonthlyReports)查询商户当年月度回收报表  
接口描述：查询商户当年月度回收报表  
请求说明：POST https://api.epeis.com/Service/v1/QuerySupplierSalesYearMonthlyReports/  
  
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
	"ACC_VOLUME_PRICE":	{
		"RET_STORES_AID":	""
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
  
参数：ACC_VOLUME_PRICE，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| RET_STORES_AID |  否  | String   | 16 | 0 | 营业网点ID |  
  
说明：账务量价费汇总  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"INOUT_YEAR_MON_REPORT":	[{
				"RETAIL_CO_DID":	"",
				"RET_STORES_AID":	"",
				"ACCOUNT_MONTH":	0,
				"ELE_CALC_FEE":	0,
				"ELE_PAIDIN_FEE":	0,
				"ELE_OWE_FEE":	0,
				"ELE_RECOVER_RATE":	0,
				"WATER_CALC_FEE":	0,
				"WATER_PAIDIN_FEE":	0,
				"WATER_OWE_FEE":	0,
				"WATER_RECOVER_RATE":	0,
				"CWATER_CALC_FEE":	0,
				"CWATER_PAIDIN_FEE":	0,
				"CWATER_OWE_FEE":	0,
				"CWATER_RECOVER_RATE":	0,
				"GAS_CALC_FEE":	0,
				"GAS_PAIDIN_FEE":	0,
				"GAS_OWE_FEE":	0,
				"GAS_RECOVER_RATE":	0,
				"HEAT_CALC_FEE":	0,
				"HEAT_PAIDIN_FEE":	0,
				"HEAT_OWE_FEE":	0,
				"HEAT_RECOVER_RATE":	0,
				"COLD_CALC_FEE":	0,
				"COLD_PAIDIN_FEE":	0,
				"COLD_OWE_FEE":	0,
				"COLD_RECOVER_RATE":	0,
				"RENT_CALC_FEE":	0,
				"RENT_PAIDIN_FEE":	0,
				"RENT_OWE_FEE":	0,
				"RENT_RECOVER_RATE":	0,
				"PROPERTY_CALC_FEE":	0,
				"PROPERTY_PAIDIN_FEE":	0,
				"PROPERTY_OWE_FEE":	0,
				"PROPERTY_RECOVER_RATE":	0
			}],
		"INOUT_YEAR_OWE_REPORT":	[{
				"RETAIL_CO_DID":	"",
				"RET_STORES_AID":	"",
				"YELE_LASTYEAR_OWE":	0,
				"YELE_TWOYEAR_OWE":	0,
				"YELE_THREEYEAR_OWE":	0,
				"YWATER_LASTYEAR_OWE":	0,
				"YWATER_TWOYEAR_OWE":	0,
				"YWATER_THREEYEAR_OWE":	0,
				"YCWATER_LASTYEAR_OWE":	0,
				"YCWATER_TWOYEAR_OWE":	0,
				"YCWATER_THREEYEAR_OWE":	0,
				"YGAS_LASTYEAR_OWE":	0,
				"YGAS_TWOYEAR_OWE":	0,
				"YGAS_THREEYEAR_OWE":	0,
				"YHEAT_LASTYEAR_OWE":	0,
				"YHEAT_TWOYEAR_OWE":	0,
				"YHEAT_THREEYEAR_OWE":	0,
				"YCOLD_LASTYEAR_OWE":	0,
				"YCOLD_TWOYEAR_OWE":	0,
				"YCOLD_THREEYEAR_OWE":	0,
				"YRENT_LASTYEAR_OWE":	0,
				"YRENT_TWOYEAR_OWE":	0,
				"YRENT_THREEYEAR_OWE":	0,
				"YPROPERTY_LASTYEAR_OWE":	0,
				"YPROPERTY_TWOYEAR_OWE":	0,
				"YPROPERTY_THREEYEAR_OWE":	0
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
  
参数：INOUT_YEAR_MON_REPORT，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| RETAIL_CO_DID |  是  | String   | 销售公司编码 |  
| RET_STORES_AID |  是  | String   | 销售公司营业网点ID |  
| ACCOUNT_MONTH |  是  | Number   | 帐务月份 |  
| ELE_CALC_FEE |  是  | Number   | 电应收金额 |  
| ELE_PAIDIN_FEE |  是  | Number   | 电实收金额 |  
| ELE_OWE_FEE |  是  | Number   | 电欠费金额 |  
| ELE_RECOVER_RATE |  是  | Number   | 电回收率 |  
| WATER_CALC_FEE |  是  | Number   | 水应收金额 |  
| WATER_PAIDIN_FEE |  是  | Number   | 水实收金额 |  
| WATER_OWE_FEE |  是  | Number   | 水欠费金额 |  
| WATER_RECOVER_RATE |  是  | Number   | 水回收率 |  
| CWATER_CALC_FEE |  是  | Number   | 冷水应收金额 |  
| CWATER_PAIDIN_FEE |  是  | Number   | 冷水实收金额 |  
| CWATER_OWE_FEE |  是  | Number   | 冷水欠费金额 |  
| CWATER_RECOVER_RATE |  是  | Number   | 冷水回收率 |  
| GAS_CALC_FEE |  是  | Number   | 燃气应收金额 |  
| GAS_PAIDIN_FEE |  是  | Number   | 燃气实收金额 |  
| GAS_OWE_FEE |  是  | Number   | 燃气欠费金额 |  
| GAS_RECOVER_RATE |  是  | Number   | 燃气回收率 |  
| HEAT_CALC_FEE |  是  | Number   | 供热应收金额 |  
| HEAT_PAIDIN_FEE |  是  | Number   | 供热实收金额 |  
| HEAT_OWE_FEE |  是  | Number   | 供热欠费金额 |  
| HEAT_RECOVER_RATE |  是  | Number   | 供热回收率 |  
| COLD_CALC_FEE |  是  | Number   | 供冷应收金额 |  
| COLD_PAIDIN_FEE |  是  | Number   | 供冷实收金额 |  
| COLD_OWE_FEE |  是  | Number   | 供冷欠费金额 |  
| COLD_RECOVER_RATE |  是  | Number   | 供冷回收率 |  
| RENT_CALC_FEE |  是  | Number   | 租赁应收金额 |  
| RENT_PAIDIN_FEE |  是  | Number   | 租赁实收金额 |  
| RENT_OWE_FEE |  是  | Number   | 租赁欠费金额 |  
| RENT_RECOVER_RATE |  是  | Number   | 租赁回收率 |  
| PROPERTY_CALC_FEE |  是  | Number   | 物业应收金额 |  
| PROPERTY_PAIDIN_FEE |  是  | Number   | 物业实收金额 |  
| PROPERTY_OWE_FEE |  是  | Number   | 物业欠费金额 |  
| PROPERTY_RECOVER_RATE |  是  | Number   | 物业回收率 |  
  
说明：当年月度回收报表  
参数：INOUT_YEAR_OWE_REPORT，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| RETAIL_CO_DID |  是  | String   | 销售公司编码 |  
| RET_STORES_AID |  是  | String   | 销售公司营业网点ID |  
| YELE_LASTYEAR_OWE |  是  | Number   | 电上年欠费金额 |  
| YELE_TWOYEAR_OWE |  是  | Number   | 电两到三年欠费金额 |  
| YELE_THREEYEAR_OWE |  是  | Number   | 电三年以上欠费金额 |  
| YWATER_LASTYEAR_OWE |  是  | Number   | 水上年欠费金额 |  
| YWATER_TWOYEAR_OWE |  是  | Number   | 水两到三年欠费金额 |  
| YWATER_THREEYEAR_OWE |  是  | Number   | 水三年以上欠费金额 |  
| YCWATER_LASTYEAR_OWE |  是  | Number   | 冷水上年欠费金额 |  
| YCWATER_TWOYEAR_OWE |  是  | Number   | 冷水两到三年欠费金额 |  
| YCWATER_THREEYEAR_OWE |  是  | Number   | 冷水三年以上欠费金额 |  
| YGAS_LASTYEAR_OWE |  是  | Number   | 燃气上年欠费金额 |  
| YGAS_TWOYEAR_OWE |  是  | Number   | 燃气两到三年欠费金额 |  
| YGAS_THREEYEAR_OWE |  是  | Number   | 燃气三年以上欠费金额 |  
| YHEAT_LASTYEAR_OWE |  是  | Number   | 供热上年欠费金额 |  
| YHEAT_TWOYEAR_OWE |  是  | Number   | 供热两到三年欠费金额 |  
| YHEAT_THREEYEAR_OWE |  是  | Number   | 供热三年以上欠费金额 |  
| YCOLD_LASTYEAR_OWE |  是  | Number   | 供冷上年欠费金额 |  
| YCOLD_TWOYEAR_OWE |  是  | Number   | 供冷两到三年欠费金额 |  
| YCOLD_THREEYEAR_OWE |  是  | Number   | 供冷三年以上欠费金额 |  
| YRENT_LASTYEAR_OWE |  是  | Number   | 租赁上年欠费金额 |  
| YRENT_TWOYEAR_OWE |  是  | Number   | 租赁两到三年欠费金额 |  
| YRENT_THREEYEAR_OWE |  是  | Number   | 租赁三年以上欠费金额 |  
| YPROPERTY_LASTYEAR_OWE |  是  | Number   | 物业上年欠费金额 |  
| YPROPERTY_TWOYEAR_OWE |  是  | Number   | 物业两到三年欠费金额 |  
| YPROPERTY_THREEYEAR_OWE |  是  | Number   | 物业三年以上欠费金额 |  
  
说明：销售/回收月报  
## 4、服务接口说明  
说明：无  
