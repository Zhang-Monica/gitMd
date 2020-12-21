## 1、接口描述  
服务接口：(PlatAddBankAccount)添加商户银行账户  
接口描述：添加商户银行账户  
请求说明：POST https://api.epeis.com/Service/v1/PlatAddBankAccount/  
  
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
	"SUP_BANK_ACCOUNT":	{
		"SUPPLIER_DID":	"",
		"BANK_ACCOUNT_INFO":	"",
		"BANK_ACC_TYPE":	"",
		"BANK_ACC_NAME":	"",
		"BANK_NAME":	""
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
  
参数：SUP_BANK_ACCOUNT，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| SUPPLIER_DID |  是  | String   | 16 | 0 | 商户ID |  
| BANK_ACCOUNT_INFO |  是  | String   | 30 | 0 | 30个字符，银行账号 |  
| BANK_ACC_TYPE |  是  | String   | 2 | 0 | 1-基本户,2-存款户 |  
| BANK_ACC_NAME |  是  | String   | 256 | 0 | 256个字符，收付款人名称 |  
| BANK_NAME |  是  | String   | 256 | 0 | 256个字符，开户行名称 |  
  
说明：商户银行账户  
  
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
