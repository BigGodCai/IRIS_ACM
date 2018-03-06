INSERT INTO [iris_acm].[dbo].[customer_basic_information] 
	( [informationCode], [informationValue], [informationRemark], [enabled])
	VALUES 
	( 'acmTonglinkIP', '192.168.1.1', 'tonglink服务器IP', '1'),
	( 'acmTonglinkPort', '10003', 'tonglink服务器端口', '1'),
	( 'acmTonglinkNode', 'QCU', 'tonglink节点', '1'),
	( 'acmTonglinkSendQue', 'sendQue', 'tonglink发送队列', '1'),
	( 'acmTonglinkRemoteQue', 'remoteQue', 'tonglink远程队列', '1'),
	( 'acmTonglinkLocalQue', 'localQue', 'tonglink本地队列', '1'),
	( 'acmPBOCBranchCode', '22222', '人民银行机构代码', '1'),
	( 'acmBranchCode', '1234567890', '反假币报送机构代码', '1');

INSERT INTO [iris_acm].[dbo].[customer_basic_information] 
	( [informationCode], [informationValue], [informationRemark], [enabled])
	VALUES 
	( 'acmCliType', '100', '客户端程序编号', '1'),
	( 'acmExpiry', '500', '消息过期时间', '1');

create table acmFinanceNumber (
	id int identity(1,1),
	number int,
  extendone varchar(100),
  extendtwo varchar(100),
  extendthree varchar(200)
);

create table acmBranchNumber (
	id int identity(1,1),
	number int,
  extendone varchar(100),
  extendtwo varchar(100),
  extendthree varchar(200)
);
alter table acmCompareFile add isReceived tinyint;
alter table acmCompareFile add msgName varchar(30);
alter table acmCompareFile add compareTaskId varchar(10);
alter table acmCompareFile add isCreateNewCounterfeitMoney tinyint;
alter table acmCompareFile add isSendFailed tinyint;
create table newTypeCounterfeitMoney (
	id int identity(1,1),
	compareTaskId varchar(10),
	creatOrder int,
	tranche varchar(6),
	version varchar(4),
	prefixNumber varchar(6),
	ediDate date,
	etlTimeStamp datetime
);



