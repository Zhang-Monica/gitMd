## 1、接口描述  
服务接口：(sInsEleAbuneMonthv1)���ӵ�ֿ��·�  
接口描述：���ӵ�ֿ��·�  
请求说明：POST https://api.epeis.com/supsysconfig/v1/sInsEleAbuneMonthv1  
  
## 2、服务接口请求参数  
#### 2.1、请求参数报文示例  
~~~  
{
	"SYS_HEAD":	{
		"CHANNEL_DID":	"",
		"DYNAMIC_KEY":	"",
		"REGISTER_DID":	""
	},
	"COM_ABUN_MON":	{
		"RETAIL_CO_DID":	"",
		"RET_STORES_AID":	"",
		"NETWORK_TYPE":	"",
		"ABUNDANCE_TYPE":	"",
		"ABUNDANCE_MONTH":	0
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
  
参数：COM_ABUN_MON，类型：object  
  
| 参数              | 必选 | 类型     | 长度 | 精度 | 描述             |  
| :----------------- | :----: | :-------- | :----: | :----: | :---------------- |  
| RETAIL_CO_DID |  是  | String   | 16 | 0 | 16���ַ������۹�˾���� |  
| RET_STORES_AID |  是  | String   | 16 | 0 | 16���ַ������۹�˾Ӫҵ����ID |  
| NETWORK_TYPE |  是  | String   | 2 | 0 | 2-�� |  
| ABUNDANCE_TYPE |  是  | String   | 2 | 0 | 1-���ڣ�2-ƽ�ڣ�3-���� |  
| ABUNDANCE_MONTH |  是  | Number   | 6 | 0 | �ֿ��·� |  
  
说明：�ֿ��·�  
  
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
说明：��  