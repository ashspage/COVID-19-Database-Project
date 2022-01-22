{\rtf1\ansi\ansicpg1252\cocoartf2636
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 CREATE TABLE `CARD HOLDER` (\
  `residentID` VARCHAR(10) NOT NULL,\
  `first_name` CHAR(15) NOT NULL,\
  `last_name` CHAR(15) NOT NULL,\
  `middle_initial` CHAR(2) NULL,\
  `patient_number` VARCHAR(10) NULL,\
  PRIMARY KEY (`residentID`)\
);\
\
CREATE TABLE `INOCULATION` (\
  `inoculation_recordID` VARCHAR(10) NOT NULL,\
  `residentID` VARCHAR(10) NOT NULL,\
  `vaccineID` VARCHAR(15) NOT NULL,\
  `date_of_administration` DATE NOT NULL,\
  `administering_hcp` VARCHAR(20) NOT NULL,\
  PRIMARY KEY (`inoculation_recordID`),\
  FOREIGN KEY (`residentID`) REFERENCES `CARD HOLDER`(`residentID`)\
);\
\
CREATE TABLE `VACCINE` (\
  `vaccineID` VARCHAR(15) NOT NULL,\
  `product_name` VARCHAR(20) NOT NULL,\
  `lot_number` VARCHAR(15) NOT NULL,\
  PRIMARY KEY (`vaccineID`)\
);\
\
}