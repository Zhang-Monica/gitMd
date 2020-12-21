## 1、接口描述  
服务接口：(BindCustomerAccount)绑定客户账户  
接口描述：绑定客户账户号  
请求说明：POST https://api.epeis.com/Service/v1/BindCustomerAccount/  
  
## 2、服务接口请求参数  
#### 2.1、请求参数报文示例  
~~~  
{
	"SYS_HEAD":	{
		"CHANNEL_DID":	"",
		"DYNAMIC_KEY":	"",
		"REGISTER_DID":	""
	},
	"CUS_ACCOUNT":	{
		"ACC_CERT_INFO":	"",
		"ACC_CERT_TYPE":	"",
		"MOBILE_PHONE_INFO":	"",
		"VERIFY_CODE":	""
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
  
参数：CUS_ACCOUNT，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| ACC_CERT_INFO |  是  | String   | 20 | 0 | 账户的证件信息 |  
| ACC_CERT_TYPE |  是  | String   | 2 | 0 | 证件类型：1-身份证；2-统一社会信用代码 |  
| MOBILE_PHONE_INFO |  是  | String   | 20 | 0 | 账号的手机号 |  
| VERIFY_CODE |  是  | String   | 20 | 0 | 验证码 |  
  
说明：注册号、账户号连接关系  
  
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
说明：绑定他人账户号  
