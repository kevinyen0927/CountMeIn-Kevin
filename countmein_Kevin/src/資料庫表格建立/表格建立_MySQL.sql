CREATE DATABASE IF NOT EXISTS COUNTMEIN;
USE COUNTMEIN;

DROP TABLE IF EXISTS RepairForm;


CREATE TABLE RepairForm (
RepairFormNo            int AUTO_INCREMENT NOT NULL,       /*1.檢測維修編號(PK,AUTO_INCREMENT)*/
MemNo                   int NOT NULL,       /*2.會員編號(FK)*/
OrderNo                 int NOT NULL,       /*3.一般商城訂單編號(FK)*/
ItemNo                  int NOT NULL,       /*4.商品編號(FK)*/
CreateTime              datetime,           /*5.表單建立時間*/
RepairFormStatus        VARCHAR(10),             /*6.維修狀態*/
AdminNo                 int,                /*7.確認維修單員工編號(FK)*/
RepairInfo              VARCHAR(500),       /*8.修理備註*/
RepairEnd               datetime,           /*9.表單完成時間*/

CONSTRAINT  RepairForm_PRIMARY_KEY PRIMARY KEY (RepairFormNo));
/* =====SQL中因為還未有FK的表 所以SQL中20~23行還沒有貼入 6/20/17:00========*/
CONSTRAINT Mem_FK FOREIGN KEY (MemNo) REFERENCES Mem (MemNo),
CONSTRAINT ItemOrder_FK FOREIGN KEY (OrderNo) REFERENCES ItemOrder (OrderNo),
CONSTRAINT ItemOrder_FK FOREIGN KEY (ItemNo) REFERENCES ItemOrder (ItemNo),
CONSTRAINT AdminAuth_FK FOREIGN KEY (AdminNo) REFERENCES AdminAuth (AdminNo), 


INSERT INTO RepairForm VALUES (1001,11001,22001,1111,'2021-06-27','維修中',11002,'無法開機','2021-06-27');
INSERT INTO RepairForm VALUES (1002,11002,22002,1112,'2021-07-01','已完成',11003,'銀幕毀損','2021-07-04');
INSERT INTO RepairForm VALUES (1003,11003,22003,1113,'2021-07-14','維修中',11004,'喇叭無聲','2021-07-15');


