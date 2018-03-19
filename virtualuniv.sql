/*
SQLyog Community Edition- MySQL GUI v8.03 
MySQL - 5.0.67-community-nt : Database - virtualuniv
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`virtualuniv` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `virtualuniv`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `login` varchar(33) default NULL,
  `password` varchar(33) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`login`,`password`) values ('admin','admin');

/*Table structure for table `administrator` */

DROP TABLE IF EXISTS `administrator`;

CREATE TABLE `administrator` (
  `login` varchar(33) default NULL,
  `password` varchar(33) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `administrator` */

insert  into `administrator`(`login`,`password`) values ('admin','admin');

/*Table structure for table `booking` */

DROP TABLE IF EXISTS `booking`;

CREATE TABLE `booking` (
  `B_code` varchar(44) default NULL,
  `B_fname` varchar(44) default NULL,
  `B_lname` varchar(44) default NULL,
  `B_dob` varchar(44) default NULL,
  `B_sex` varchar(44) default NULL,
  `B_address` varchar(44) default NULL,
  `B_city` varchar(44) default NULL,
  `B_pincode` varchar(44) default NULL,
  `B_phno` varchar(44) default NULL,
  `B_mobile` varchar(44) default NULL,
  `B_email` varchar(44) default NULL,
  `B_quali` varchar(44) default NULL,
  `B_joining` varchar(44) default NULL,
  `B_selcode` varchar(44) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `booking` */

insert  into `booking`(`B_code`,`B_fname`,`B_lname`,`B_dob`,`B_sex`,`B_address`,`B_city`,`B_pincode`,`B_phno`,`B_mobile`,`B_email`,`B_quali`,`B_joining`,`B_selcode`) values ('SC  0','Rakesh','Singh','1-JAN-2012','M','Delhi','Rohtak','124001','66666777776','334455667766','rsbalhara11@gmail.com','MCA ','project','102'),('SC  1','Swetha','Dontknow','1-JAN-2012','M','Delhi','Rohtak','124001','66666777776','334455667766','rsbalhara11@gmail.com','MCA ','project','102');

/*Table structure for table `c1test` */

DROP TABLE IF EXISTS `c1test`;

CREATE TABLE `c1test` (
  `c1_code` varchar(33) default NULL,
  `c1_ques` longtext,
  `c1_ans1` varchar(33) default NULL,
  `c1_ans2` varchar(33) default NULL,
  `c1_ans3` varchar(33) default NULL,
  `c1_ans4` varchar(33) default NULL,
  `c1_ans` varchar(33) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `c1test` */

insert  into `c1test`(`c1_code`,`c1_ques`,`c1_ans1`,`c1_ans2`,`c1_ans3`,`c1_ans4`,`c1_ans`) values ('1','What is the maximum value that can be hold by an \"int\" variable?                                                                                                                                                                                                                                                                                                                                                                                                                                                    ','16767                            ','16768                            ','16766                            ','none                             ','a                                '),('2','getch() is available in which header file?                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ','stdio.h                          ','conio.h                          ','math.h                           ','dos.h                            ','b                                '),('3','Find the value of y : int x=10,y; y=++x+x++;                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ','21                               ','20                               ','23                               ','22                               ','d                                '),('4','What will be the output: int x=10,y; printf(\"%d %d\",++x+x,x++);                                                                                                                                                                                                                                                                                                                                                                                                                                                     ','(22 11)                          ','(24 10)                          ','(21 10)                          ','none                             ','b                                ');

/*Table structure for table `course_details` */

DROP TABLE IF EXISTS `course_details`;

CREATE TABLE `course_details` (
  `C_code` varchar(33) default NULL,
  `C_name` varchar(33) default NULL,
  `C_prerequisite` varchar(33) default NULL,
  `C_duration` varchar(66) default NULL,
  `C_lump_fee` int(66) default NULL,
  `C_ins_first` int(66) default NULL,
  `C_ins_second` int(33) default NULL,
  `C_syllabus` varchar(33) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `course_details` */

insert  into `course_details`(`C_code`,`C_name`,`C_prerequisite`,`C_duration`,`C_lump_fee`,`C_ins_first`,`C_ins_second`,`C_syllabus`) values ('C002      ','A-JAVA                   ','C and C++           ','3 months  ,4mon',5000,2000,3500,' JAVA and Advanced JAVA       '),('111','c','java','4',4343,3333,1111,'fd');

/*Table structure for table `enquiry` */

DROP TABLE IF EXISTS `enquiry`;

CREATE TABLE `enquiry` (
  `E_name` varchar(33) default NULL,
  `E_email` varchar(33) default NULL,
  `E_sub` varchar(33) default NULL,
  `E_content` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `enquiry` */

insert  into `enquiry`(`E_name`,`E_email`,`E_sub`,`E_content`) values ('shankarkar','soumya@yahoo.com','j2mee','mobile edition'),('shankarm','shankarbhatkal@yahoo.co.in','j2ee','jsp,servelet'),('soumya','soumyapagadal@yahoo.co.in','j2ee','html,ejb,xml'),('Boldwin','rs@gm.com','HI','hi...............'),('Rakesh','rs@gm.com','Rakesh','RakeshRakeshRakeshRakesh'),('shweta','shweta@gm.com','shweta','shwetashwetashwetashwetashweta'),('kk','kk@gmail.com','java','what is java');

/*Table structure for table `faq` */

DROP TABLE IF EXISTS `faq`;

CREATE TABLE `faq` (
  `FAQ_code` varchar(22) default NULL,
  `FAQ_ques` longtext,
  `FAQ_ans` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `faq` */

insert  into `faq`(`FAQ_code`,`FAQ_ques`,`FAQ_ans`) values ('c0001','Can anybody create user-id in this messenger and?','Yes, u can easily create ur own user name using the sign up option'),('c0002',' How can one take online test','After ur a registered user u can take the test'),('003','how can one see the project information','By clicking on the project information user can seeall the project');

/*Table structure for table `javatest` */

DROP TABLE IF EXISTS `javatest`;

CREATE TABLE `javatest` (
  `j_code` varchar(22) default NULL,
  `j_ques` varchar(1999) default NULL,
  `j_ans1` varchar(22) default NULL,
  `j_ans2` varchar(22) default NULL,
  `j_ans3` varchar(22) default NULL,
  `j_ans4` varchar(22) default NULL,
  `j_ans` varchar(22) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `javatest` */

insert  into `javatest`(`j_code`,`j_ques`,`j_ans1`,`j_ans2`,`j_ans3`,`j_ans4`,`j_ans`) values ('1','Given the following declaration: String s = \" Example \"; Which are legal code?                                                                                                                                                                                                                                                                                                                                                                                                                                      ','s >>>= 3;             ','s[3] = \"x\";           ','Int shortS = s.trim();','String shortS = s.trim','d                     '),('2','Which contains objects without ordering, duplication and any lookup/retrieval mechanism?                                                                                                                                                                                                                                                                                                                                                                                                                            ','Map                   ','Set                   ','Collections           ','Enumeration           ','b                     '),('3','Which statements declare a variable which is suitable for referring to an array of 50 String objects?                                                                                                                                                                                                                                                                                                                                                                                                               	\r\n	','char a[][];           ','String a[];           ','Object a[50];         ','String a[50];         ','b                     '),('4','Which cannot be used in declaring and initializing an automatic (method call) variable?                                                                                                                                                                                                                                                                                                                                                                                                                             ','initialized arrays (su','final                 ','public                ','inner class from other','c                     '),('5','Find out the java keyword                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ','extends               ','sizeof                ','TRUE                  ','NULL                  ','a                     ');

/*Table structure for table `mnn` */

DROP TABLE IF EXISTS `mnn`;

CREATE TABLE `mnn` (
  `jhjn` varchar(33) default NULL,
  `knmlk` varchar(33) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mnn` */

insert  into `mnn`(`jhjn`,`knmlk`) values ('ds','fs');

/*Table structure for table `project_details` */

DROP TABLE IF EXISTS `project_details`;

CREATE TABLE `project_details` (
  `P_code` varchar(33) default NULL,
  `P_name` varchar(33) default NULL,
  `P_prerequisite` varchar(22) default NULL,
  `P_duration` varchar(62) default NULL,
  `P_lump_fee` int(22) default NULL,
  `P_ins_first` int(11) default NULL,
  `P_ins_second` int(22) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `project_details` */

insert  into `project_details`(`P_code`,`P_name`,`P_prerequisite`,`P_duration`,`P_lump_fee`,`P_ins_first`,`P_ins_second`) values ('P001','Course & Project booking ','J2EE ,java          ','6 months       ',3000,2000,1500),('56','voip','c++','50',4444,3333,1200);

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `R_code` varchar(33) default NULL,
  `R_fname` varchar(33) default NULL,
  `R_lname` date default NULL,
  `R_dob` varchar(33) default NULL,
  `R_Tcode` varchar(33) default NULL,
  `R_Bcode` varchar(33) default NULL,
  `R_sex` varchar(33) default NULL,
  `R_address` varchar(33) default NULL,
  `R_city` varchar(33) default NULL,
  `R_pincode` int(33) default NULL,
  `R_phno` int(33) default NULL,
  `R_mobile` int(33) default NULL,
  `R_email` varchar(33) default NULL,
  `R_quali` varchar(33) default NULL,
  `R_joining` varchar(33) default NULL,
  `R_selcode` varchar(33) default NULL,
  `R_install` varchar(33) default NULL,
  `R_payment` varchar(33) default NULL,
  `R_payno` varchar(33) default NULL,
  `R_bankname` varchar(33) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `registration` */

insert  into `registration`(`R_code`,`R_fname`,`R_lname`,`R_dob`,`R_Tcode`,`R_Bcode`,`R_sex`,`R_address`,`R_city`,`R_pincode`,`R_phno`,`R_mobile`,`R_email`,`R_quali`,`R_joining`,`R_selcode`,`R_install`,`R_payment`,`R_payno`,`R_bankname`) values ('9','vino           ','0000-00-00','12/19/1980','1001','101','f ','ganganagar                    ','bangalore ',56007,4235612,374547856,'vino@yahoo.com      ','mca            mca','course    ','s0001','yes ','cheque    ','wewsf','SBI                 ');

/*Table structure for table `registration1` */

DROP TABLE IF EXISTS `registration1`;

CREATE TABLE `registration1` (
  `R_code` varchar(33) default NULL,
  `R_fname` varchar(33) default NULL,
  `R_lname` varchar(33) default NULL,
  `R_dob` varchar(33) default NULL,
  `R_Tcode` varchar(33) default NULL,
  `R_Bcode` varchar(33) default NULL,
  `R_sex` varchar(33) default NULL,
  `R_address` varchar(33) default NULL,
  `R_city` varchar(33) default NULL,
  `R_pincode` varchar(33) default NULL,
  `R_phno` varchar(22) default NULL,
  `R_mobile` varchar(22) default NULL,
  `R_email` varchar(22) default NULL,
  `R_quali` varchar(22) default NULL,
  `R_joining` varchar(22) default NULL,
  `R_selcode` varchar(22) default NULL,
  `R_install` varchar(22) default NULL,
  `R_payment` varchar(22) default NULL,
  `R_payno` varchar(22) default NULL,
  `R_bankname` varchar(22) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `registration1` */

insert  into `registration1`(`R_code`,`R_fname`,`R_lname`,`R_dob`,`R_Tcode`,`R_Bcode`,`R_sex`,`R_address`,`R_city`,`R_pincode`,`R_phno`,`R_mobile`,`R_email`,`R_quali`,`R_joining`,`R_selcode`,`R_install`,`R_payment`,`R_payno`,`R_bankname`) values ('09','shan','jsfak','1-JAN-1985','10001','232','M','jfks','jfasj','145623','22565655','545587554','kasd@jfds.com','be','course','123','yes','cheque','454657654654','sbi');

/*Table structure for table `tests` */

DROP TABLE IF EXISTS `tests`;

CREATE TABLE `tests` (
  `T_code` int(33) default NULL,
  `T_name` varchar(33) default NULL,
  `T_marks` int(33) default NULL,
  `T_result` varchar(44) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tests` */

insert  into `tests`(`T_code`,`T_name`,`T_marks`,`T_result`) values (10001,'Keethi',90,'pass');

/*Table structure for table `userlogin` */

DROP TABLE IF EXISTS `userlogin`;

CREATE TABLE `userlogin` (
  `login` varchar(22) default NULL,
  `password` varchar(22) default NULL,
  `first` varchar(22) default NULL,
  `last` varchar(22) default NULL,
  `email` varchar(22) default NULL,
  `mnum` int(22) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userlogin` */

insert  into `userlogin`(`login`,`password`,`first`,`last`,`email`,`mnum`) values ('user','userpass','user','user','user@gmail.com',111),('aman','aman123','aman','aman','aman@gm.com',989898),('shweta','shweta','shweta','shweta','shweta@gm.com',98434834);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
