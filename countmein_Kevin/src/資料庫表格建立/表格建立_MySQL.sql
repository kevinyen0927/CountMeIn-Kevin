CREATE DATABASE IF NOT EXISTS COUNTMEIN;
USE COUNTMEIN;

DROP TABLE IF EXISTS RepairForm;


CREATE TABLE RepairForm (
RepairFormNo            int AUTO_INCREMENT NOT NULL,       /*1.�˴����׽s��(PK,AUTO_INCREMENT)*/
MemNo                   int NOT NULL,       /*2.�|���s��(FK)*/
OrderNo                 int NOT NULL,       /*3.�@��ӫ��q��s��(FK)*/
ItemNo                  int NOT NULL,       /*4.�ӫ~�s��(FK)*/
CreateTime              datetime,           /*5.���إ߮ɶ�*/
RepairFormStatus        VARCHAR(10),             /*6.���ת��A*/
AdminNo                 int,                /*7.�T�{���׳���u�s��(FK)*/
RepairInfo              VARCHAR(500),       /*8.�ײz�Ƶ�*/
RepairEnd               datetime,           /*9.��槹���ɶ�*/

CONSTRAINT  RepairForm_PRIMARY_KEY PRIMARY KEY (RepairFormNo));
/* =====SQL���]���٥���FK���� �ҥHSQL��20~23���٨S���K�J 6/20/17:00========*/
CONSTRAINT Mem_FK FOREIGN KEY (MemNo) REFERENCES Mem (MemNo),
CONSTRAINT ItemOrder_FK FOREIGN KEY (OrderNo) REFERENCES ItemOrder (OrderNo),
CONSTRAINT ItemOrder_FK FOREIGN KEY (ItemNo) REFERENCES ItemOrder (ItemNo),
CONSTRAINT AdminAuth_FK FOREIGN KEY (AdminNo) REFERENCES AdminAuth (AdminNo), 


INSERT INTO RepairForm VALUES (1001,11001,22001,1111,'2021-06-27','���פ�',11002,'�L�k�}��','2021-06-27');
INSERT INTO RepairForm VALUES (1002,11002,22002,1112,'2021-07-01','�w����',11003,'�ȹ����l','2021-07-04');
INSERT INTO RepairForm VALUES (1003,11003,22003,1113,'2021-07-14','���פ�',11004,'��z�L�n','2021-07-15');


