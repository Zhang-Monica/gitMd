## 1、接口描述  
服务接口：(QueryHouseHoldDetailst)查询过户申请信息  
接口描述：查询过户申请信息  
请求说明：POST https://api.epeis.com/Service/v1/QueryHouseHoldDetailst  
  
## 2、服务接口请求参数  
#### 2.1、请求参数报文示例  
~~~  
{
	"SYS_HEAD":	{
		"CHANNEL_DID":	"",
		"DYNAMIC_KEY":	"",
		"REGISTER_DID":	"",
		"ACCOUNT_DID":	""
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
  
  
## 3、服务接口响应参数  
#### 3.1、响应参数报文示例  
~~~  
{
	"CODE":	0,
	"MESSAGE":	"",
	"DATA":	{
		"INOUT_BINDGRANT":	[{
				"REGISTER_DID":	"",
				"REGISTER_NAME":	"",
				"ACCOUNT_DID":	"",
				"ACCOUNT_TYPE":	"",
				"ACCOUNT_NAME":	"",
				"BUSINESS_DESC":	"",
				"ATTESTATION_TYPE":	"",
				"BINDCONNECT_TYPE":	""
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
  
参数：INOUT_BINDGRANT，类型：Array  
  

| 参数              | 必选 | 类型     | 描述             |  
| :----------------- | :----: | :-------- | :---------------- |  
| REGISTER_DID |  是  | String   | 注册号ID |  
| REGISTER_NAME |  是  | String   | 注册人姓名 |  
| ACCOUNT_DID |  是  | String   | 客户ID |  
| ACCOUNT_TYPE |  是  | String   | 客户类型 |  
| ACCOUNT_NAME |  是  | String   | 客户姓名 |  
| BUSINESS_DESC |  是  | String   | 备注说明 |  
| ATTESTATION_TYPE |  是  | String   | 过户认证类型：1-未认证；2-审核中；3-已认证 |  
| BINDCONNECT_TYPE |  是  | String   | 业务关系类型：3-非户主申请过户；4-户主接受过户 |  
  
说明：绑定授权关系  
## 4、服务接口说明  
说明：无  
