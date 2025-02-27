create table "public".cal01_planinfo (
  cal01_no serial
  , cal01_starttime timestamp(6) without time zone
  , cal01_endtime timestamp(6) without time zone
  , cal01_plan character varying(2000)
  , cal01_remark character varying(2000)
  , cal01_ptkey character varying(2000)
  , cal01_createtime timestamp(6) without time zone
  , cal01_createby character varying(30)
  , cal01_updatetime timestamp(6) without time zone
  , cal01_updateby character varying(30)
  , cal01_firstupdatetime timestamp(6) without time zone
  , cal01_completetime timestamp(6) without time zone
  , cal01_chargeby character varying(30)
  , cal01_status character varying(10)
  , cal01_default boolean default false not null
  , cal01_informedtimes integer default 0 not null
  , primary key (cal01_no)
);


create table "public".cal02_plandefaultinfo (
  cal02_no serial
  , cal02_type character varying(30)
  , cal02_times character varying(30)
  , cal02_day character varying(30)
  , cal02_starttime character varying(30)
  , cal02_endtime character varying(30)
  , cal02_plan character varying(2000)
  , primary key (cal02_no)
);

create table "public".sai01_gms_alertinfo (
  sai01_alertid serial
  , sai01_alerttitle character varying(2000)
  , sai01_receivingtime timestamp(6) without time zone
  , sai01_mailallcontents character varying(2000)
  , sai01_chargeby character varying(30)
  , sai01_status character varying(10)
  , sai01_remark character varying(2000)
  , sai01_testtime character varying(2000)
  , sai01_errorhost character varying(2000)
  , sai01_serveripaddress character varying(2000)
  , sai01_watchitemname character varying(2000)
  , sai01_value character varying(2000)
  , sai01_isdel boolean default false not null
  , sai01_teamincharge character varying(2000)
  , sai01_phonecontactgroup character varying(2000)
  , sai01_errorseverity character varying(2000)
  , sai01_ignoreflg character varying(2000)
  , sai01_servicenowsubsystem character varying(2000)
  , sai01_handleremark character varying(2000)
  , sai01_handlemethod character varying(2000)
  , sai01_firstperson character varying(2000)
  , sai01_firsttel character varying(2000)
  , sai01_secondperson character varying(2000)
  , sai01_secondtel character varying(2000)
  , sai01_thirdperson character varying(2000)
  , sai01_thirdtel character varying(2000)
  , sai01_aihandlelog text
  , sai01_uid character varying(255) not null
  , sai01_createtime timestamp(6) without time zone
  , sai01_createby character varying(30)
  , sai01_updatetime timestamp(6) without time zone
  , sai01_updateby character varying(30)
  , sai01_ptkey character varying(64)
  , sai01_firstupdatetime timestamp(6) without time zone
  , sai01_completetime timestamp(6) without time zone
  , sai01_admitstatus character varying(10)
  , sai01_delayreason character varying(2000)
  , sai01_mailcontents character varying(2000)
  , sai01_informedtimes integer default 0 not null
  , sai01_incidentno character varying(50)
  , sai01_issend boolean default false not null
  , sai01_remarkcomment character varying(2000)
  , sai01_delayremark character varying(2000)
  , sai01_checkby character varying(3)
  , sai01_checkstatus character varying(30)
  , sai01_checkreason character varying(2000)
  , sai01_leaderadmit boolean default false not null
  , sai01_miss character varying(2000)
  , sai01_solution character varying(2000)
  , sai01_checkremark character varying(2000)
  , sai01_backflg character varying(1)
  , sai01_entryid character varying(255)
  , primary key (sai01_alertid)
);

create table "public".sai02_ins (
  ins_alertid serial
  , ins_alertsender character varying(255)
  , ins_monitoringtarget character varying(255)
  , ins_systemname character varying(255)
  , ins_monitoringcategory character varying(255)
  , ins_monitoringcategoryname character varying(255)
  , ins_failuretype character varying(50)
  , ins_errmessage character varying(2000)
  , ins_executionid text
  , ins_exitcode character varying(255)
  , ins_exitdesc character varying(2000)
  , ins_finishtime text
  , ins_firetime text
  , ins_id text
  , ins_instanceid text
  , ins_jobgroup character varying(255)
  , ins_jobname character varying(2000)
  , ins_microservicename character varying(255)
  , ins_node character varying(2000)
  , ins_scheduletime text
  , ins_emailstatus character varying(255)
  , ins_success boolean default false
  , ins_tenantcode character varying(255)
  , ins_traceid text
  , ins_user text
  , ins_uuid text
  , ins_countermeasuremethod text
  , ins_proceduremanual text
  , ins_receivingtime timestamp(6) without time zone
  , ins_title character varying(255)
  , ins_mailallcontents text
  , ins_status text
  , ins_aihandlelog text
  , ins_chargeby character varying(30)
  , ins_ptkey character varying(64)
  , ins_developmentby text
  , ins_scheduleddevelopmentdate text
  , ins_developmentcompletiondate text
  , ins_scheduledutdate text
  , ins_utdate text
  , ins_scheduleditdate text
  , ins_itdate text
  , ins_sourceofoccurrence text
  , ins_responsesite text
  , ins_failureincident text
  , ins_failuretypejudgment text
  , ins_developmentreleasedate text
  , ins_developmentbaseit text
  , ins_failurecause text
  , ins_delayjudgment text
  , ins_leakjudgment text
  , ins_expansion text
  , ins_expansionresults text
  , ins_developmentimprovement text
  , ins_scheduleddevelopmentreleasedate text
  , ins_developmentreleasecompletiondate text
  , ins_scheduleditcompletiondate text
  , ins_itcompletiondate text
  , ins_functionrevised text
  , ins_revisioncontent text
  , ins_tableinformationchanges text
  , ins_databatch text
  , ins_preventrecurrence text
  , ins_scheduledproductionrelease text
  , ins_productionreleaseagreement text
  , ins_productionreleasememo text
  , ins_productionreleaseapproval text
  , ins_productionreleasecompletiondate text
  , ins_productionrequestclassification text
  , ins_othercontent text
  , ins_customerchargeby text
  , ins_productionrequestdate text
  , ins_desiredproductionrequestdate text
  , ins_scheduledproductioncompletiondate text
  , ins_productioncompletiondate text
  , ins_implementationperformer text
  , ins_implementationverifier text
  , ins_deleteflag boolean default false
  , ins_createby text
  , ins_updateby text
  , ins_createtime timestamp(6) without time zone
  , ins_updatetime timestamp(6) without time zone
  , ins_contactname text
  , ins_contactmailaddr text
  , ins_contactphone1 text
  , ins_contactphone2 text
  , ins_casestatus text
  , primary key (ins_alertid)
);


create table "public".sys01_sysclass (
  sys01_groupid character varying(10) not null
  , sys01_groupname character varying(100)
  , sys01_issystem boolean
  , sys01_remarks character varying(255)
);

create table "public".sys02_sysclassdetail (
  sys02_groupid character varying(10) not null
  , sys02_kindid character varying(50) not null
  , sys02_kindname character varying(100)
  , sys02_rsvedfld1 character varying(50) not null
  , sys02_rsvedfld2 character varying(50)
  , sys02_rsvedfld3 character varying(50) not null
  , sys02_rsvedfld4 character varying(50)
  , sys02_rsvedfld5 character varying(50)
  , sys02_remarks character varying(255)
  , sys02_status character varying(10)
  , sys02_createtime timestamp(6) without time zone
  , sys02_createby character varying(30)
  , sys02_updatetime timestamp(6) without time zone
  , sys02_updateby character varying(30)
  , sys02_ptkey character varying(64)
  , primary key (sys02_groupid, sys02_kindid, sys02_rsvedfld1, sys02_rsvedfld3)
);


create table "public".sys03_menuinfo (
  sys03_menuid character varying(100) not null
  , sys03_menunamech character varying(50)
  , sys03_menunameen character varying(100)
  , sys03_parentmenuid character varying(100)
  , sys03_seq integer
  , sys03_pagepath character varying(150)
  , sys03_menuicon character varying(50)
);


create table "public".sys04_operate (
  sys04_menuid character varying(100) not null
  , sys04_operateid character varying(100) not null
  , sys04_operatenamech character varying(30)
  , sys04_operatenameen character varying(50)
  , sys04_seq integer
);


create table "public".sys05_rightgroup (
  sys05_rightgroupid character varying(50) not null
  , sys05_rightgroupname character varying(100)
  , sys05_remarks character varying(255)
  , sys05_status character varying(10)
  , sys05_createtime timestamp(6) without time zone
  , sys05_createby character varying(30)
  , sys05_updatetime timestamp(6) without time zone
  , sys05_updateby character varying(30)
  , sys05_ptkey character varying(64)
);


create table "public".sys06_rightgroupmenu (
  sys06_rightgroupid character varying(50) not null
  , sys06_menuid character varying(100) not null
);

create table "public".sys07_rightgroupoperator (
  sys07_rightgroupid character varying(50) not null
  , sys07_menuid character varying(100) not null
  , sys07_operateid character varying(100) not null
);

create table "public".sys08_userinfo (
  sys08_userid character varying(20) not null
  , sys08_username character varying(100) not null
  , sys08_password character varying(45)
  , sys08_gendepartid character varying(10)
  , sys08_departid character varying(10)
  , sys08_projectid character varying(10)
  , sys08_yakusyoku character varying(10)
  , sys08_sex character varying(10)
  , sys08_telephone character varying(20)
  , sys08_mobilephone character varying(20)
  , sys08_email character varying(100)
  , sys08_initpwdflag boolean
  , sys08_remarks character varying(6000)
  , sys08_status character varying(10)
  , sys08_createtime timestamp(6) without time zone
  , sys08_createby character varying(30)
  , sys08_updatetime timestamp(6) without time zone
  , sys08_updateby character varying(30)
  , sys08_ptkey character varying(64)
  , sys08_usermark numeric(18, 1)
  , sys08_userno character varying(6)
  , sys08_shortname character varying(10)
  , sys08_shortnamebgcolor character varying(10)
  , primary key (sys08_userid)
);

create table "public".sys09_userrightgroup (
  sys09_userid character varying(30) not null
  , sys09_rightgroupid character varying(50) not null
  , sys09_seq integer
  , sys09_bikou character varying(255)
  , primary key (sys09_userid, sys09_rightgroupid)
);

create table "public".sys10_loginfo (
  sys10_logid character varying(64) not null
  , sys10_pageid character varying(100)
  , sys10_logcontent character varying(255)
  , sys10_operatetime timestamp(6) without time zone
  , sys10_operateby character varying(30)
  , primary key (sys10_logid)
);


create table "public".sys97_systemlog (
  sys97_no serial
  , sys97_businesstype character varying(3)
  , sys97_id character varying(2000)
  , sys97_log character varying(2000)
  , sys97_createby character varying(2000)
  , sys97_createtime timestamp(6) without time zone
  , primary key (sys97_no)
);

create table "public".sys98_handletask (
  sys98_no serial
  , sys98_handletype character varying(10)
  , sys98_businesstype character varying(10)
  , sys98_alertid integer
  , sys98_taskcmd character varying(2000)
  , sys98_isdone boolean default false
  , sys98_isdel boolean default false
  , sys98_createby character varying(2000)
  , sys98_createtime timestamp(6) without time zone
  , sys98_updateby character varying(2000)
  , sys98_updatetime timestamp(6) without time zone
  , primary key (sys98_no)
);

create table "public".sys99_aiswitch (
  sys99_no integer default nextval('sys99_aiswitch_sys99_no_seq'::regclass) not null
  , sys99_businesstype character varying(2000)
  , sys99_switchflg boolean
  , sys99_updateby character varying(2000)
  , sys99_updatetime timestamp(6) without time zone
  , primary key (sys99_no)
);






INSERT INTO "public".sys01_sysclass(sys01_groupid,sys01_groupname,sys01_issystem,sys01_remarks) VALUES ('SYS017','監視対象名',True,NULL);
INSERT INTO "public".sys01_sysclass(sys01_groupid,sys01_groupname,sys01_issystem,sys01_remarks) VALUES ('SYS003','言語',True,NULL);
INSERT INTO "public".sys01_sysclass(sys01_groupid,sys01_groupname,sys01_issystem,sys01_remarks) VALUES ('SYS014','承認状態',True,NULL);
INSERT INTO "public".sys01_sysclass(sys01_groupid,sys01_groupname,sys01_issystem,sys01_remarks) VALUES ('SYS001','状態',True,NULL);
INSERT INTO "public".sys01_sysclass(sys01_groupid,sys01_groupname,sys01_issystem,sys01_remarks) VALUES ('SYS002','性別',True,NULL);
INSERT INTO "public".sys01_sysclass(sys01_groupid,sys01_groupname,sys01_issystem,sys01_remarks) VALUES ('SYS010','アラート状態',True,NULL);
INSERT INTO "public".sys01_sysclass(sys01_groupid,sys01_groupname,sys01_issystem,sys01_remarks) VALUES ('SYS016','シフト',True,NULL);
INSERT INTO "public".sys01_sysclass(sys01_groupid,sys01_groupname,sys01_issystem,sys01_remarks) VALUES ('SYS027','カレンダー背景色',True,NULL);
INSERT INTO "public".sys01_sysclass(sys01_groupid,sys01_groupname,sys01_issystem,sys01_remarks) VALUES ('SYS048','チェック状態',True,NULL);
INSERT INTO "public".sys01_sysclass(sys01_groupid,sys01_groupname,sys01_issystem,sys01_remarks) VALUES ('SYS051','アラート種類',True,NULL);
INSERT INTO "public".sys01_sysclass(sys01_groupid,sys01_groupname,sys01_issystem,sys01_remarks) VALUES ('SYS019','システムID',True,NULL);
INSERT INTO "public".sys01_sysclass(sys01_groupid,sys01_groupname,sys01_issystem,sys01_remarks) VALUES ('SYS053','AI業務',True,NULL);
INSERT INTO "public".sys01_sysclass(sys01_groupid,sys01_groupname,sys01_issystem,sys01_remarks) VALUES ('SYS054','AIステータス',True,NULL);
INSERT INTO "public".sys01_sysclass(sys01_groupid,sys01_groupname,sys01_issystem,sys01_remarks) VALUES ('SYS055','AI-GMS対処方法',True,NULL);
INSERT INTO "public".sys01_sysclass(sys01_groupid,sys01_groupname,sys01_issystem,sys01_remarks) VALUES ('SYS056','使用する種別01',True,NULL);
INSERT INTO "public".sys01_sysclass(sys01_groupid,sys01_groupname,sys01_issystem,sys01_remarks) VALUES ('SYS057','使用する種別02',True,NULL);
INSERT INTO "public".sys01_sysclass(sys01_groupid,sys01_groupname,sys01_issystem,sys01_remarks) VALUES ('SYS058','使用する種別03',True,NULL);
INSERT INTO "public".sys01_sysclass(sys01_groupid,sys01_groupname,sys01_issystem,sys01_remarks) VALUES ('SYS059','使用する種別04',True,NULL);
INSERT INTO "public".sys01_sysclass(sys01_groupid,sys01_groupname,sys01_issystem,sys01_remarks) VALUES ('SYS060','使用する種別05',True,NULL);
INSERT INTO "public".sys01_sysclass(sys01_groupid,sys01_groupname,sys01_issystem,sys01_remarks) VALUES ('SYS061','使用する種別06',True,NULL);
INSERT INTO "public".sys01_sysclass(sys01_groupid,sys01_groupname,sys01_issystem,sys01_remarks) VALUES ('SYS062','使用する種別07',True,NULL);
INSERT INTO "public".sys01_sysclass(sys01_groupid,sys01_groupname,sys01_issystem,sys01_remarks) VALUES ('SYS007','監視項目',True,NULL);


INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS001','001','有効','','','','','','','001','2017/01/14 16:37:01.733','admin','2017/01/14 16:37:01.733','admin','{64577444-B378-441E-84B1-9A5EA6FEEAB7}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS001','002','無効','','','','','','','001','2017/01/14 16:37:01.733','admin','2017/01/14 16:37:01.733','admin','{64577444-B378-441E-84B1-9A5EA6FEEAB7}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS002','001','男性','','','','','','','001','2017/01/14 16:37:01.733','admin','2017/01/14 16:37:01.733','admin','{64577444-B378-441E-84B1-9A5EA6FEEAB7}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS002','002','女性','','','','','','','001','2017/01/14 16:37:01.733','admin','2017/01/14 16:37:01.733','admin','{64577444-B378-441E-84B1-9A5EA6FEEAB7}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS003','001','English','','','','','','','001','2017/01/14 16:37:01.733','admin','2017/01/14 16:37:01.733','admin','{64577444-B378-441E-84B1-9A5EA6FEEAB7}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS003','002','中文','','','','','','','001','2017/01/14 16:37:01.733','admin','2021/04/19 14:31:53.643','admin','{020CE17A-2CC8-4491-827D-9B3733024425}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS003','003','日本語','','','','','','','001','2025/01/09 9:50:21.347','admin','2025/01/09 9:50:26.007','admin','{020CE17A-2CC8-4491-827D-9B3733024425}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS007','001','Sumire','','','','',NULL,NULL,'001','2025/02/11 16:37:48.252','admin','2025/02/11 16:37:53.546','admin','{64577444-B378-441E-84B1-9A5EA6FEEAB8}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS010','001','L1確認待ち','','','','','','','001','2022/01/20','admin','2022/01/20','admin','{64577444-B378-441E-84B1-9A5EA6FEEAB8}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS010','002','L2確認待ち','','','','','','','001','2022/01/20','admin','2022/01/20','admin','{64577444-B378-441E-84B1-9A5EA6FEEAB8}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS010','003','クローズ','','','','','','','001','2022/01/20','admin','2022/01/20','admin','{64577444-B378-441E-84B1-9A5EA6FEEAB8}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS014','001','未承認','','','','','','','001','2022/06/24 11:52:55.047','admin','2022/06/24 11:52:55.047','admin','{0F36FE7D-C526-4384-B9F2-50A5716646A4}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS014','002','承認済み','','','','','','','001','2022/06/24 11:52:55.047','admin','2022/06/24 11:52:55.047','admin','{DBB24A41-C876-4484-BEBA-37B87D8B9160}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS016','001','早','','','','','','','001',NULL,'admin',NULL,'admin','{64577444-B378-441E-84B1-9A5EA6FEEAB9}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS016','002','中','','','','','','','001',NULL,'admin',NULL,'admin','{64577444-B378-441E-84B1-9A5EA6FEEAB9}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS016','003','晚','','','','','','','001',NULL,'admin',NULL,'admin','{64577444-B378-441E-84B1-9A5EA6FEEAB9}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS016','004','行','','','','','','','001',NULL,'admin',NULL,'admin','{64577444-B378-441E-84B1-9A5EA6FEEAB9}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS016','005','休','','','','','','','001',NULL,'admin',NULL,'admin','{64577444-B378-441E-84B1-9A5EA6FEEAB9}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS017','001','Alive Monitor','','','','','','','001','2022/07/29 17:02:24.647','admin','2022/07/29 17:02:24.647','admin','{60EBB865-5CA7-4C2B-BEAD-FFAEC0FC1925}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS017','002','CPU usage','','','','','','','001','2022/07/29 17:02:24.647','admin','2022/07/29 17:02:24.647','admin','{CD7D9EF0-75E2-4B1F-9BE8-EC959FF8721F}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS017','003','Memory usage','','','','','','','001','2022/07/29 17:02:24.647','admin','2022/07/29 17:02:24.647','admin','{A14CD219-EF93-4734-B423-73BB784B94DE}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS017','004','Disk usage','','','','','','','001','2022/07/29 17:02:24.647','admin','2022/07/29 17:02:24.647','admin','{5945FB8D-542B-4E84-8A08-DB6CD2FABA2D}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS017','005','Process Monitor','','','','','','','001','2022/07/29 17:02:24.647','admin','2022/07/29 17:02:24.647','admin','{0BB3F46E-B237-4494-B3C7-4EB368B6A2FF}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS017','006','Port Listen Monitor','','','','','','','001','2022/07/29 17:02:24.647','admin','2022/07/29 17:02:24.647','admin','{8B9DED7E-6C89-4FC0-9419-C99213689A95}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS017','007','Log Monitor','','','','','','','001','2022/07/29 17:02:24.647','admin','2022/07/29 17:02:24.647','admin','{BA1AB4EA-1C30-4259-8D5D-25632FB0DB97}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS017','008','EventLog Monitor','','','','','','','001','2022/07/29 17:02:24.647','admin','2022/07/29 17:02:24.647','admin','{24C4206D-E87F-4C0E-9814-E2A5CF740D0F}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS017','009','JP1 Log Monitor','','','','','','','001','2022/07/29 17:02:24.647','admin','2022/07/29 17:02:24.647','admin','{A1CCF059-392D-4E00-A160-6DF5C9C9C2ED}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS017','010','Resource Health Monitor','','','','','','','001','2022/07/29 17:02:24.663','admin','2022/07/29 17:02:24.663','admin','{069173FE-E5F4-44B1-BD5F-8AFE62F7D1E1}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS017','011','SQLDB Monitor','','','','','','','001','2022/07/29 17:02:24.663','admin','2022/07/29 17:02:24.663','admin','{46AF128E-F2D3-4811-9C22-D5E64A574B2A}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS017','012','LB Monitor','','','','','','','001','2022/07/29 17:02:24.663','admin','2022/07/29 17:02:24.663','admin','{B7F6C457-A28E-4775-A2C9-53353D2D79E1}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS017','013','Appgw Monitor','','','','','','','001','2022/07/29 17:02:24.663','admin','2022/07/29 17:02:24.663','admin','{1536ADF5-645D-4F27-A51E-B1670FC107A9}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS017','014','AppService Monitor','','','','','','','001','2022/07/29 17:02:24.663','admin','2022/07/29 17:02:24.663','admin','{ACCDD593-44C8-4E78-A087-4BAEEE80B070}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS017','015','Agent Monitor','','','','','','','001','2022/07/29 17:02:24.663','admin','2022/07/29 17:02:24.663','admin','{B6F0B1A2-C766-4541-99B8-4ECEA1958BF3}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS017','016','AzBackup Monitor','','','','','','','001','2022/12/05 15:38:48.170','admin','2022/12/05 15:38:48.170','admin','{7AA3768E-0E60-458C-86EE-7090B3ABA0E4}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS019','A1001','A1001','','','','','','','001','2022/08/04 14:53:50.977','admin','2022/08/04 14:53:50.977','admin','{5B089FA7-A485-42C6-857C-D90DC08E7A0E}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS019','A1002','A1002','','','','','','','001','2022/08/04 14:53:50.977','admin','2022/08/04 14:53:50.977','admin','{3989195B-C43A-42FF-9348-66B689850A02}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS019','A1004','A1004','','','','','','','001','2022/08/04 14:53:50.977','admin','2022/08/04 14:53:50.977','admin','{B4F67C3B-127A-47EC-BC6A-19AF2C72B0D5}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS019','A1005','A1005','','','','','','','001','2022/08/04 14:53:50.977','admin','2022/08/04 14:53:50.977','admin','{F7E8EEC8-F39C-43F4-BA5E-C54F306BD7EE}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS019','A1010','A1010','','','','','','','001','2022/08/04 14:53:50.977','admin','2022/08/04 14:53:50.977','admin','{19970083-3173-43B4-AD77-E2BE0F0DCE20}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS019','A1011','A1011','','','','','','','001','2022/08/04 14:53:50.977','admin','2022/08/04 14:53:50.977','admin','{6343DE89-C0EB-4647-BEB8-BC98169B11E5}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS019','A1012','A1012','','','','','','','001','2022/08/04 14:53:50.977','admin','2022/08/04 14:53:50.977','admin','{FC31A44B-084B-48B5-8185-1DC27525A309}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS019','A1013','A1013','','','','','','','001','2023/01/17 15:41:01.557','admin','2023/01/17 15:41:01.557','admin','{94BB2827-AB79-4564-9795-AE6D0483DC94}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS019','A2001','A2001','','','','','','','001','2022/08/04 14:53:50.977','admin','2022/08/04 14:53:50.977','admin','{A28973F2-6125-4DDA-AF1A-3A6CC0C797B5}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS019','A3001','A3001','','','','','','','001','2022/08/04 14:53:50.977','admin','2022/08/04 14:53:50.977','admin','{8CD6BB31-EF52-49F5-8710-F66AED0D6C8C}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS019','A5001','A5001','','','','','','','001','2022/08/04 14:53:50.977','admin','2022/08/04 14:53:50.977','admin','{870BBA1E-81CD-41AF-AA83-88EF474474B9}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS019','A6001','A6001','','','','','','','001','2022/08/04 14:53:50.977','admin','2022/08/04 14:53:50.977','admin','{13A2AC35-9057-40C0-B622-CFCDFBE4E39F}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS019','A6002','A6002','','','','','','','001','2022/08/04 14:53:50.977','admin','2022/08/04 14:53:50.977','admin','{C881ED73-B946-4E50-B3C4-D5C5C93DD0B4}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS019','A6003','A6003','','','','','','','001','2022/08/04 14:53:50.977','admin','2022/08/04 14:53:50.977','admin','{8F18A698-D2D7-4894-B7D5-7FC088E6BEB6}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS019','A7001','A7001','','','','','','','001','2022/08/04 14:53:50.977','admin','2022/08/04 14:53:50.977','admin','{1F6196C3-5E1A-4468-8CB5-A937C71F8B9B}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS019','A8001','A8001','','','','','','','001','2022/08/04 14:53:50.977','admin','2022/08/04 14:53:50.977','admin','{1F6196C3-5E1A-4468-8CB5-A937C71F8B9B}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS027','001','#2bb3c0','','','','','','','001','2022/11/15 17:58:58.087','admin','2022/11/15 17:58:58.087','admin','{53EF1462-4793-4C57-B40C-462E3B6F7D10}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS027','002','#e16123','','','','','','','001','2022/11/15 17:58:58.133','admin','2022/11/15 17:58:58.133','admin','{810A1E92-7D88-45B3-A313-CA11226A559C}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS027','003','#ccc','','','','','','','001','2022/11/15 17:58:58.167','admin','2022/11/15 17:58:58.167','admin','{E37FE480-AABC-47A2-BA0E-BA74136332E9}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS048','001','OK','','','','','','','001','2023/02/07 12:07:11.193','admin','2023/02/07 12:07:11.193','admin','{2ABE9389-04D0-489C-A10E-EA9B99BBA427}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS048','002','NG','','','','','','','001','2023/02/07 12:07:11.223','admin','2023/02/07 12:07:11.223','admin','{C7D495D1-3370-4641-A8A5-5501688A05CA}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS053','001','GMS','','','',NULL,NULL,NULL,'001','2024/06/19 17:19:14.100','admin','2024/06/19 17:19:18.740','admin','{26420240-B5D2-4E9F-87E8-17B913A7451F}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS054','000','人工対応中','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS054','001','処理失敗','','','','','','','001','2024/06/25','admin','2024/06/25','admin','{64577444-B378-441E-84B1-9A5EA6FEEAB8}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS054','002','対応中','','','','','','','001','2024/06/25','admin','2024/06/25','admin','{64577444-B378-441E-84B1-9A5EA6FEEAB8}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS054','003','処理成功','','','','','','','001','2024/06/25','admin','2024/06/25','admin','{64577444-B378-441E-84B1-9A5EA6FEEAB8}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS054','004','電話済','','','','','','','001','2024/06/25','admin','2024/06/25','admin','{64577444-B378-441E-84B1-9A5EA6FEEAB8}');
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS054','005','チェック済','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS054','006','メール+電話済','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS055','001','静観','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS055','002','起票のみ','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS055','003','起票＋メール','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS055','004','起票＋電話','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS055','005','起票＋メール＋電話','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS056','001','変更','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS056','002','バグ','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS057','001','【ローンチ後】バグ','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS057','002','【ローンチ後】仕様変更','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS057','003','【ローンチ後】環境不具合','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS058','001','【ローンチ後】バグ','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS059','001','【ローンチ後】バグ','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS059','002','【ローンチ後】環境不具合','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS060','001','【ローンチ後】バグ','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS060','002','【ローンチ後】仕様変更','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS061','001','【ローンチ後】リリース','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "public".sys02_sysclassdetail(sys02_groupid,sys02_kindid,sys02_kindname,sys02_rsvedfld1,sys02_rsvedfld2,sys02_rsvedfld3,sys02_rsvedfld4,sys02_rsvedfld5,sys02_remarks,sys02_status,sys02_createtime,sys02_createby,sys02_updatetime,sys02_updateby,sys02_ptkey) VALUES ('SYS062','001','【ローンチ後】作業依頼','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);


INSERT INTO "public".sys03_menuinfo(sys03_menuid,sys03_menunamech,sys03_menunameen,sys03_parentmenuid,sys03_seq,sys03_pagepath,sys03_menuicon) VALUES ('001','システム管理','系统管理','',1,'','fa fa-cubes');
INSERT INTO "public".sys03_menuinfo(sys03_menuid,sys03_menunamech,sys03_menunameen,sys03_parentmenuid,sys03_seq,sys03_pagepath,sys03_menuicon) VALUES ('SYS005_RightGroupList','権限グループ','权限组','001',2,'/SystemManage/SYS005_RightGroupList','fa fa-group');
INSERT INTO "public".sys03_menuinfo(sys03_menuid,sys03_menunamech,sys03_menunameen,sys03_parentmenuid,sys03_seq,sys03_pagepath,sys03_menuicon) VALUES ('SYS007_SYSLogList','システムログ管理','系统日志管理','001',4,'/SystemManage/SYS007_SYSLogList','fa fa-file');
INSERT INTO "public".sys03_menuinfo(sys03_menuid,sys03_menunamech,sys03_menunameen,sys03_parentmenuid,sys03_seq,sys03_pagepath,sys03_menuicon) VALUES ('SYS008_SysClassList','共通分類管理','共通分类管理','001',3,'/SystemManage/SYS008_SysClassList','fa fa-trophy');
INSERT INTO "public".sys03_menuinfo(sys03_menuid,sys03_menunamech,sys03_menunameen,sys03_parentmenuid,sys03_seq,sys03_pagepath,sys03_menuicon) VALUES ('SYS003_UserList','ユーザ管理','用户管理','002',1,'/SystemManage/SYS003_UserList','fa fa-vcard');
INSERT INTO "public".sys03_menuinfo(sys03_menuid,sys03_menunamech,sys03_menunameen,sys03_parentmenuid,sys03_seq,sys03_pagepath,sys03_menuicon) VALUES ('005','アラート管理','警报管理','',4,'','fa fa-envelope-o');
INSERT INTO "public".sys03_menuinfo(sys03_menuid,sys03_menunamech,sys03_menunameen,sys03_parentmenuid,sys03_seq,sys03_pagepath,sys03_menuicon) VALUES ('CAL002_CalenderDefault','カレンダー自動追加','日程表默认事件添加','008',2,'/CalenderManage/CAL002_CalenderDefault','fa fa-calendar');
INSERT INTO "public".sys03_menuinfo(sys03_menuid,sys03_menunamech,sys03_menunameen,sys03_parentmenuid,sys03_seq,sys03_pagepath,sys03_menuicon) VALUES ('CAL001_Calender','カレンダー一覧','日程表一览','008',1,'/CalenderManage/CAL001_Calender','fa fa-calendar');
INSERT INTO "public".sys03_menuinfo(sys03_menuid,sys03_menunamech,sys03_menunameen,sys03_parentmenuid,sys03_seq,sys03_pagepath,sys03_menuicon) VALUES ('008','カレンダー管理','日程表管理','',9,'','fa fa-calendar-o');
INSERT INTO "public".sys03_menuinfo(sys03_menuid,sys03_menunamech,sys03_menunameen,sys03_parentmenuid,sys03_seq,sys03_pagepath,sys03_menuicon) VALUES ('SAI001_SumireList','アラート一覧','警报列表','005',1,'/SAIManage/SAI001_SumireList','fa fa-list');
INSERT INTO "public".sys03_menuinfo(sys03_menuid,sys03_menunamech,sys03_menunameen,sys03_parentmenuid,sys03_seq,sys03_pagepath,sys03_menuicon) VALUES ('003','ダッシュボード','看板','',2,'','fa fa-area-chart');
INSERT INTO "public".sys03_menuinfo(sys03_menuid,sys03_menunamech,sys03_menunameen,sys03_parentmenuid,sys03_seq,sys03_pagepath,sys03_menuicon) VALUES ('002','ユーザ管理','用户管理','',3,'','fa fa-vcard');
INSERT INTO "public".sys03_menuinfo(sys03_menuid,sys03_menunamech,sys03_menunameen,sys03_parentmenuid,sys03_seq,sys03_pagepath,sys03_menuicon) VALUES ('Dashboard1','別システム2','Other System','003',2,'/Dashboard/GMSDashboard','fa fa-area-chart');
INSERT INTO "public".sys03_menuinfo(sys03_menuid,sys03_menunamech,sys03_menunameen,sys03_parentmenuid,sys03_seq,sys03_pagepath,sys03_menuicon) VALUES ('Dashboard2','別システム3','Other System','003',3,'/Dashboard/GMSDashboard','fa fa-area-chart');
INSERT INTO "public".sys03_menuinfo(sys03_menuid,sys03_menunamech,sys03_menunameen,sys03_parentmenuid,sys03_seq,sys03_pagepath,sys03_menuicon) VALUES ('Dashboard3','別システム4','Other System','003',4,'/Dashboard/GMSDashboard','fa fa-area-chart');
INSERT INTO "public".sys03_menuinfo(sys03_menuid,sys03_menunamech,sys03_menunameen,sys03_parentmenuid,sys03_seq,sys03_pagepath,sys03_menuicon) VALUES ('SUMIRE_Dashboard','Sumire','看板','003',1,'/Dashboard/Dashboard','fa fa-area-chart');


INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SYS003_UserList','btn_Add','新規','创建',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SYS003_UserList','btn_Edit','編集','修改',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SYS003_UserList','btn_Export','Excel D/L','Excel D/L',3);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SYS003_UserList','btn_Scrap','破棄','删除',4);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SYS003_UserList','btn_Search','検索','检索',5);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SYS003_UserList','btn_View','照会','一览',6);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('ALT003_19MCList','btn_MsgExcel','対処表参照','对处表参照',7);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SYS005_RightGroupList','btn_Add','新規','创建',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SYS005_RightGroupList','btn_Edit','編集','修改',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SYS005_RightGroupList','btn_Scrap','破棄','删除',3);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SYS005_RightGroupList','btn_Search','検索','检索',4);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SYS005_RightGroupList','btn_View','照会','一览',5);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SYS007_SYSLogList','btn_Export','Excel D/L','Excel D/L',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SYS007_SYSLogList','btn_Search','検索','检索',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SYS008_SysClassList','btn_Add','新建','创建',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SYS008_SysClassList','btn_Edit','編集','修改',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SYS008_SysClassList','btn_Export','Excel D/L','Excel D/L',3);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SYS008_SysClassList','btn_Scrap','破棄','删除',4);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SYS008_SysClassList','btn_Search','検索','检索',5);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SYS008_SysClassList','btn_View','照会','一览',6);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('ALT001_1719List','btn_MsgExcel','対処表参照','对处表参照',7);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('ALT001_1719List','btn_Export','Excel D/L','Excel D/L',8);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('ALT003_19MCList','btn_Export','Excel D/L','Excel D/L',8);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('ALT005_21MMList','btn_Export','Excel D/L','Excel D/L',8);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('ALT001_1719List','btn_Delete','削除','删除',5);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('ALT003_19MCList','btn_Delete','削除','删除',5);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('ALT005_21MMList','btn_Search','検索','检索',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST001_Message','btn_Export','Excel D/L','Excel D/L',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST001_Message','btn_Import','Excel U/L','Excel U/L',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('ALT005_21MMList','btn_Edit','状態変更','状态变更',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('ALT005_21MMList','btn_View','照会','查看',6);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST002_WatchList','btn_Export','Excel D/L','Excel D/L',3);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST002_WatchList','btn_Import','Excel U/L','Excel U/L',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST002_WatchList','btn_Search','検索','检索',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('ALT001_1719List','btn_Search','検索','检索',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('ALT001_1719List','btn_Edit','状態変更','状态变更',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('ALT001_1719List','btn_View','照会','查看',6);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('ALT003_19MCList','btn_Search','検索','检索',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('ALT003_19MCList','btn_Edit','状態変更','状态变更',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('ALT003_19MCList','btn_View','照会','查看',6);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('ALT005_21MMList','btn_Delete','削除','删除',5);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('ALT007_19TSCPPList','btn_Search','検索','检索',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('ALT007_19TSCPPList','btn_Edit','状態変更','状态变更',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('ALT007_19TSCPPList','btn_Delete','削除','删除',5);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('ALT007_19TSCPPList','btn_View','照会','查看',6);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('ALT007_19TSCPPList','btn_MsgExcel','対処表参照','对处表参照',7);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('ALT007_19TSCPPList','btn_Export','Excel D/L','Excel D/L',8);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST003_Schedule','btn_Import','Excel U/L','Excel U/L',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST003_Schedule','btn_Export','Excel D/L','Excel D/L',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('ALT005_21MMList','btn_MsgExcel','対処表参照','对处表参照',7);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('KPI001_DelayCorrespondList','btn_Search','検索','检索',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('KPI001_DelayCorrespondList','btn_Admit','承認','承認',3);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('ALT001_1719List','btn_BatchRemarks','一括コメント','批量备注',4);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('ALT003_19MCList','btn_BatchRemarks','一括コメント','批量备注',4);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('ALT005_21MMList','btn_BatchRemarks','一括コメント','批量备注',4);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NIT001_OAList','btn_Search','検索','検索',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NIT001_OAList','btn_Edit','状態変更','状態変更',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NIT001_OAList','btn_BatchRemarks','一括コメント','批量备注',3);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NIT001_OAList','btn_Delete','削除','删除',4);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NIT001_OAList','btn_View','照会','查看',5);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NIT001_OAList','btn_MsgExcel','対処表参照','对处表参照',6);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NIT001_OAList','btn_Export','Excel D/L','Excel D/L',7);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST004_SpecialWatchList','btn_Search','検索','検索',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST004_SpecialWatchList','btn_Add','新規','新增',3);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST004_SpecialWatchList','btn_Delete','削除','删除',4);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST004_SpecialWatchList','btn_View','照会','查看',5);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST004_SpecialWatchList','btn_Export','Excel D/L','Excel D/L',6);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('CAL001_Calender','btn_BatchAdd','一括新規','批量添加',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('CAL001_Calender','btn_DefaultAdd','デフォルト新規','默认事件添加',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI007_OnPreList','btn_Search','検索','検索',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI007_OnPreList','btn_Edit','状態変更','状態変更',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST008_TCCNContactInfo','btn_Export','Excel D/L','Excel D/L',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST008_TCCNContactInfo','btn_Import','Excel U/L','Excel U/L',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('KPI001_DelayCorrespondList','btn_BatchReason','理由一括記入','理由一括記入',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI007_OnPreList','btn_BatchRemarks','一括コメント','批量?注',3);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('ALT007_19TSCPPList','btn_BatchRemarks','一括コメント','批量备注',4);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA027_SOCList','btn_Search','検索','検索',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA027_SOCList','btn_BatchRemarks','一括コメント','批量备注',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA027_SOCList','btn_Edit','状態変更','状態変更',3);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA027_SOCList','btn_Delete','削除','删除',4);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA027_SOCList','btn_View','照会','查看',5);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA027_SOCList','btn_Export','Excel D/L','Excel D/L',6);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NIT003_JPMList','btn_Search','検索','検索',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI005_OANWList','btn_KpiOut','KPI以外','KPI以外',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA001_PCList','btn_Search','検索','検索',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA001_PCList','btn_Add','新規','新增',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA001_PCList','btn_Edit','編集','変更',3);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA001_PCList','btn_BatchRemarks','一括コメント','批量备注',4);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA001_PCList','btn_Delete','削除','删除',5);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI001_SumireList','btn_BatchRemarks','一括コメント','批量备注',4);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI001_SumireList','btn_Delete','削除','删除',5);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI001_SumireList','btn_View','照会','查看',6);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI001_SumireList','btn_MsgExcel','対処表参照','对处表参照',7);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI001_SumireList','btn_Export','Excel D/L','Excel D/L',8);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI001_SumireList','btn_BatchIncNo','番号一括記入','批量输入番号',3);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA001_PCList','btn_View','照会','查看',6);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA001_PCList','btn_Export','Excel D/L','Excel D/L',7);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA003_BYOD_BYCDList','btn_Search','検索','検索',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA003_BYOD_BYCDList','btn_Add','新規','新增',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA003_BYOD_BYCDList','btn_Edit','編集','変更',3);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA003_BYOD_BYCDList','btn_BatchRemarks','一括コメント','批量备注',4);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA003_BYOD_BYCDList','btn_Delete','削除','删除',5);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA003_BYOD_BYCDList','btn_View','照会','查看',6);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST004_SpecialWatchList','btn_Edit','変更','变更',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST009_ArioHPSpecialWatchList','btn_Search','検索','検索',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST009_ArioHPSpecialWatchList','btn_Edit','変更','変更',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('KPI002_DelayCorrespond711List','btn_BatchReason','理由一括記入','理由一括記入',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST006_711Message','btn_Export','Excel D/L','Excel D/L',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST006_711Message','btn_Import','Excel U/L','Excel U/L',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('KPI002_DelayCorrespond711List','btn_Search','検索','检索',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('KPI002_DelayCorrespond711List','btn_Admit','承認','承認',3);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST007_NCITMessage','btn_Export','Excel D/L','Excel D/L',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST007_NCITMessage','btn_Import','Excel U/L','Excel U/L',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NIT003_JPMList','btn_Edit','状態変更','状態変更',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NIT003_JPMList','btn_BatchRemarks','一括コメント','批量备注',3);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NIT003_JPMList','btn_Delete','削除','删除',4);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NIT003_JPMList','btn_View','照会','查看',5);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI009_NOCList','btn_Search','検索','検索',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI009_NOCList','btn_Edit','変更','変更',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA003_BYOD_BYCDList','btn_Export','Excel D/L','Excel D/L',7);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI009_NOCList','btn_Delete','削除','删除',4);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI009_NOCList','btn_View','照会','查看',5);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI009_NOCList','btn_Export','Excel D/L','Excel D/L',6);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI009_NOCList','btn_BatchRemarks','一括コメント','批量备注',3);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA005_BOXList','btn_Search','検索','検索',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA005_BOXList','btn_Add','新規','新增',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA005_BOXList','btn_Edit','編集','変更',3);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA005_BOXList','btn_BatchRemarks','一括コメント','批量备注',4);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA005_BOXList','btn_Delete','削除','删除',5);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA005_BOXList','btn_View','照会','查看',6);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA005_BOXList','btn_Export','Excel D/L','Excel D/L',7);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA007_CollectList','btn_Search','検索','検索',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA007_CollectList','btn_Add','新規','新增',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA007_CollectList','btn_Edit','編集','変更',3);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA007_CollectList','btn_BatchRemarks','一括コメント','批量备注',4);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA007_CollectList','btn_Delete','削除','删除',5);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA007_CollectList','btn_View','照会','查看',6);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA007_CollectList','btn_Export','Excel D/L','Excel D/L',7);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA011_SecureUSBList','btn_Search','検索','検索',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA011_SecureUSBList','btn_Add','新規','新增',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA011_SecureUSBList','btn_BatchRemarks','一括コメント','批量备注',3);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA011_SecureUSBList','btn_Edit','編集','変更',4);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA011_SecureUSBList','btn_Delete','削除','删除',5);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA011_SecureUSBList','btn_View','照会','查看',6);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA011_SecureUSBList','btn_Export','Excel D/L','Excel D/L',7);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA013_InventoryList','btn_Search','検索','検索',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA013_InventoryList','btn_Add','新規','新增',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA013_InventoryList','btn_BatchRemarks','一括コメント','批量备注',3);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA013_InventoryList','btn_Edit','編集','変更',4);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA013_InventoryList','btn_Delete','削除','删除',5);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA013_InventoryList','btn_View','照会','查看',6);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA013_InventoryList','btn_Export','Excel D/L','Excel D/L',7);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA015_M365List','btn_Search','検索','検索',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA015_M365List','btn_Add','新規','新增',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA015_M365List','btn_BatchRemarks','一括コメント','批量备注',3);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA015_M365List','btn_Edit','編集','変更',4);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA015_M365List','btn_Delete','削除','删除',5);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA015_M365List','btn_View','照会','查看',6);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA015_M365List','btn_Export','Excel D/L','Excel D/L',7);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA017_ImagineList','btn_Search','検索','検索',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA017_ImagineList','btn_Add','新規','新增',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA017_ImagineList','btn_BatchRemarks','一括コメント','批量备注',3);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA017_ImagineList','btn_Edit','編集','変更',4);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NIT003_JPMList','btn_Export','Excel D/L','Excel D/L',6);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI005_OANWList','btn_Search','検索','検索',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI005_OANWList','btn_Edit','状態変更','状态变更',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI005_OANWList','btn_BatchRemarks','一括コメント','批量备注',3);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI005_OANWList','btn_Delete','削除','删除',4);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI005_OANWList','btn_View','照会','查看',5);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI005_OANWList','btn_MsgExcel','対処表参照','对处表参照',6);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI005_OANWList','btn_Export','Excel D/L','Excel D/L',7);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST011_OANWWatchList','btn_Search','検索','检索',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST011_OANWWatchList','btn_Edit','変更','变更',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST011_OANWWatchList','btn_Add','新規','新增',3);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST011_OANWWatchList','btn_Delete','削除','删除',4);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST011_OANWWatchList','btn_View','照会','查看',5);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST011_OANWWatchList','btn_Export','Excel D/L','Excel D/L',6);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('KPI003_DataCount','btn_Export','集計','集计',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA017_ImagineList','btn_Delete','削除','删除',5);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA017_ImagineList','btn_View','照会','查看',6);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA019_CyberArkEPMList','btn_Search','検索','検索',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA019_CyberArkEPMList','btn_BatchRemarks','一括コメント','批量备注',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA019_CyberArkEPMList','btn_Edit','状態変更','状態変更',3);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA019_CyberArkEPMList','btn_Delete','削除','删除',4);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA019_CyberArkEPMList','btn_View','照会','查看',5);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA019_CyberArkEPMList','btn_Export','Excel D/L','Excel D/L',6);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA021_CyberArk_MaintenanceList','btn_Search','検索','検索',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA021_CyberArk_MaintenanceList','btn_Edit','状態変更','状態変更',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA021_CyberArk_MaintenanceList','btn_BatchRemarks','一括コメント','批量?注',3);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA021_CyberArk_MaintenanceList','btn_Delete','削除','?除',4);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA021_CyberArk_MaintenanceList','btn_View','照会','?看',5);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA021_CyberArk_MaintenanceList','btn_Export','Excelエクスポート','Excel?出',6);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST015_OnPreContact','btn_Export','Excel D/L','Excel D/L',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST015_OnPreContact','btn_Import','Excel U/L','Excel U/L',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST015_OnPreContract','btn_Import','Excel U/L','Excel U/L',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SYS011_MailGroupInfo','btn_Save','保存','保存',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SYS011_MailGroupInfo','btn_Cancel','リセット','重置',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('CAL002_CalenderDefault','btn_Insert','追加','添加',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('CAL002_CalenderDefault','btn_Import','Excel U/L','Excel U/L',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST016_NOCContract','btn_Import','Excel U/L','Excel U/L',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST016_NOCContract','btn_Export','Excel D/L','Excel D/L',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SYS012_ContractCnt','btn_Save','保存','保存',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA023_ActsecureList','btn_Search','検索','検索',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA023_ActsecureList','btn_BatchRemarks','一括コメント','批量备注',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA023_ActsecureList','btn_Edit','状態変更','状態変更',3);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA023_ActsecureList','btn_Delete','削除','删除',4);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA023_ActsecureList','btn_View','照会','查看',5);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA023_ActsecureList','btn_Export','Excel D/L','Excel D/L',6);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA025_NTTCommunicationsList','btn_Search','検索','検索',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA025_NTTCommunicationsList','btn_BatchRemarks','一括コメント','批量备注',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA025_NTTCommunicationsList','btn_Edit','状態変更','状態変更',3);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA025_NTTCommunicationsList','btn_Delete','削除','删除',4);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA025_NTTCommunicationsList','btn_View','照会','查看',5);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA025_NTTCommunicationsList','btn_Export','Excel D/L','Excel D/L',6);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('ALT003_19MCList','btn_BatchCheck','一括チェック','一括チェック',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('ALT005_21MMList','btn_BatchCheck','一括チェック','一括チェック',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('ALT007_19TSCPPList','btn_BatchCheck','一括チェック','一括チェック',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI003_ArioHPList','btn_BatchCheck','一括チェック','一括チェック',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI005_OANWList','btn_BatchCheck','一括チェック','一括チェック',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI007_OnPreList','btn_BatchCheck','一括チェック','一括チェック',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI009_NOCList','btn_BatchCheck','一括チェック','一括チェック',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('NOA017_ImagineList','btn_Export','Excel D/L','Excel D/L',7);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST015_OnPreContract','btn_Export','Excel D/L','Excel D/L',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('KPI004_CheckNGList','btn_Search','検索','検索',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('KPI004_CheckNGList','btn_View','編集','編集',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('ALT001_1719List','btn_BatchCheck','一括チェック','一括チェック',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI007_OnPreList','btn_Delete','削除','删除',4);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI007_OnPreList','btn_View','照会','查看',5);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI007_OnPreList','btn_MsgExcel','対処表参照','对处表参照',6);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI007_OnPreList','btn_Export','Excelエクスポート','Excel抽出',7);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI007_OnPreList','btn_Import10+','10件以上導入','10件以上导入',8);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST013_OnPreWatchList','btn_Search','検索','検索',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST013_OnPreWatchList','btn_Edit','編集','編集',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST013_OnPreWatchList','btn_Add','新規','新增',3);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST013_OnPreWatchList','btn_Delete','破棄','删除',4);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST013_OnPreWatchList','btn_View','照会','查看',5);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('MST013_OnPreWatchList','btn_Export','Excelエクスポート','Excel抽出',6);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI001_SumireList','btn_Search','検索','检索',1);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI001_SumireList','btn_Edit','状態変更','状态变更',2);
INSERT INTO "public".sys04_operate(sys04_menuid,sys04_operateid,sys04_operatenamech,sys04_operatenameen,sys04_seq) VALUES ('SAI001_SumireList','btn_BatchCheck','一括チェック','一括チェック',1);


INSERT INTO "public".sys05_rightgroup(sys05_rightgroupid,sys05_rightgroupname,sys05_remarks,sys05_status,sys05_createtime,sys05_createby,sys05_updatetime,sys05_updateby,sys05_ptkey) VALUES ('003','test','','002','2022/06/06 16:25:00','admin','2022/06/06 16:25:00','admin','{885D8D49-9AAF-429B-9F3D-B691762C66CE}');
INSERT INTO "public".sys05_rightgroup(sys05_rightgroupid,sys05_rightgroupname,sys05_remarks,sys05_status,sys05_createtime,sys05_createby,sys05_updatetime,sys05_updateby,sys05_ptkey) VALUES ('002','作業員','','001','2022/06/06 16:24:00','admin','2025/02/19 10:47:46','admin','74e52bd1-ae9a-4970-8d3d-477b9a4ae326');
INSERT INTO "public".sys05_rightgroup(sys05_rightgroupid,sys05_rightgroupname,sys05_remarks,sys05_status,sys05_createtime,sys05_createby,sys05_updatetime,sys05_updateby,sys05_ptkey) VALUES ('001','システム管理者','システム管理者','001','2016/07/13 19:18:00','admin','2025/02/19 13:42:08','admin','aa1e1d1e-017d-4a0d-a34c-e542d791f800');


INSERT INTO "public".sys06_rightgroupmenu(sys06_rightgroupid,sys06_menuid) VALUES ('001','001');
INSERT INTO "public".sys06_rightgroupmenu(sys06_rightgroupid,sys06_menuid) VALUES ('001','SYS005_RightGroupList');
INSERT INTO "public".sys06_rightgroupmenu(sys06_rightgroupid,sys06_menuid) VALUES ('001','SYS008_SysClassList');
INSERT INTO "public".sys06_rightgroupmenu(sys06_rightgroupid,sys06_menuid) VALUES ('001','SYS007_SYSLogList');
INSERT INTO "public".sys06_rightgroupmenu(sys06_rightgroupid,sys06_menuid) VALUES ('001','003');
INSERT INTO "public".sys06_rightgroupmenu(sys06_rightgroupid,sys06_menuid) VALUES ('001','Dashboard1');
INSERT INTO "public".sys06_rightgroupmenu(sys06_rightgroupid,sys06_menuid) VALUES ('001','Dashboard2');
INSERT INTO "public".sys06_rightgroupmenu(sys06_rightgroupid,sys06_menuid) VALUES ('001','Dashboard3');
INSERT INTO "public".sys06_rightgroupmenu(sys06_rightgroupid,sys06_menuid) VALUES ('001','002');
INSERT INTO "public".sys06_rightgroupmenu(sys06_rightgroupid,sys06_menuid) VALUES ('001','SYS003_UserList');
INSERT INTO "public".sys06_rightgroupmenu(sys06_rightgroupid,sys06_menuid) VALUES ('001','005');
INSERT INTO "public".sys06_rightgroupmenu(sys06_rightgroupid,sys06_menuid) VALUES ('001','SAI001_SumireList');
INSERT INTO "public".sys06_rightgroupmenu(sys06_rightgroupid,sys06_menuid) VALUES ('001','008');
INSERT INTO "public".sys06_rightgroupmenu(sys06_rightgroupid,sys06_menuid) VALUES ('001','CAL001_Calender');
INSERT INTO "public".sys06_rightgroupmenu(sys06_rightgroupid,sys06_menuid) VALUES ('001','CAL002_CalenderDefault');
INSERT INTO "public".sys06_rightgroupmenu(sys06_rightgroupid,sys06_menuid) VALUES ('001','SUMIRE_Dashboard');
INSERT INTO "public".sys06_rightgroupmenu(sys06_rightgroupid,sys06_menuid) VALUES ('003','001');
INSERT INTO "public".sys06_rightgroupmenu(sys06_rightgroupid,sys06_menuid) VALUES ('003','SYS005_RightGroupList');
INSERT INTO "public".sys06_rightgroupmenu(sys06_rightgroupid,sys06_menuid) VALUES ('003','SYS008_SysClassList');
INSERT INTO "public".sys06_rightgroupmenu(sys06_rightgroupid,sys06_menuid) VALUES ('003','SYS007_SYSLogList');
INSERT INTO "public".sys06_rightgroupmenu(sys06_rightgroupid,sys06_menuid) VALUES ('002','003');
INSERT INTO "public".sys06_rightgroupmenu(sys06_rightgroupid,sys06_menuid) VALUES ('002','GMSDashboard');
INSERT INTO "public".sys06_rightgroupmenu(sys06_rightgroupid,sys06_menuid) VALUES ('002','005');
INSERT INTO "public".sys06_rightgroupmenu(sys06_rightgroupid,sys06_menuid) VALUES ('002','SAI001_SumireList');
INSERT INTO "public".sys06_rightgroupmenu(sys06_rightgroupid,sys06_menuid) VALUES ('002','008');
INSERT INTO "public".sys06_rightgroupmenu(sys06_rightgroupid,sys06_menuid) VALUES ('002','CAL001_Calender');


INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('001','SYS005_RightGroupList','btn_Add');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('001','SYS005_RightGroupList','btn_Edit');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('001','SYS005_RightGroupList','btn_Scrap');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('001','SYS005_RightGroupList','btn_Search');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('001','SYS005_RightGroupList','btn_View');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('001','SYS008_SysClassList','btn_Add');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('001','SYS008_SysClassList','btn_Edit');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('001','SYS008_SysClassList','btn_Export');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('001','SYS008_SysClassList','btn_Scrap');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('001','SYS008_SysClassList','btn_Search');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('001','SYS008_SysClassList','btn_View');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('001','SYS007_SYSLogList','btn_Export');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('001','SYS007_SYSLogList','btn_Search');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('001','SYS003_UserList','btn_Add');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('001','SYS003_UserList','btn_Edit');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('001','SYS003_UserList','btn_Export');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('001','SYS003_UserList','btn_Scrap');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('001','SYS003_UserList','btn_Search');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('001','SYS003_UserList','btn_View');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('001','SAI001_SumireList','btn_Search');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('001','SAI001_SumireList','btn_BatchCheck');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('001','SAI001_SumireList','btn_Edit');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('001','SAI001_SumireList','btn_BatchIncNo');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('001','SAI001_SumireList','btn_BatchRemarks');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('001','SAI001_SumireList','btn_Delete');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('001','SAI001_SumireList','btn_View');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('001','SAI001_SumireList','btn_MsgExcel');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('001','SAI001_SumireList','btn_Export');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('001','CAL001_Calender','btn_DefaultAdd');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('001','CAL001_Calender','btn_BatchAdd');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('001','CAL002_CalenderDefault','btn_Insert');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('001','CAL002_CalenderDefault','btn_Import');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('003','SYS005_RightGroupList','btn_Add');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('003','SYS005_RightGroupList','btn_Edit');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('003','SYS005_RightGroupList','btn_Scrap');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('003','SYS005_RightGroupList','btn_Search');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('003','SYS005_RightGroupList','btn_View');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('003','SYS008_SysClassList','btn_Add');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('003','SYS008_SysClassList','btn_Edit');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('003','SYS008_SysClassList','btn_Export');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('003','SYS008_SysClassList','btn_Scrap');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('003','SYS008_SysClassList','btn_Search');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('003','SYS008_SysClassList','btn_View');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('003','SYS007_SYSLogList','btn_Export');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('003','SYS007_SYSLogList','btn_Search');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('002','CAL001_Calender','btn_BatchAdd');
INSERT INTO "public".sys07_rightgroupoperator(sys07_rightgroupid,sys07_menuid,sys07_operateid) VALUES ('002','CAL001_Calender','btn_DefaultAdd');



INSERT INTO "public".sys08_userinfo(sys08_userid,sys08_username,sys08_password,sys08_gendepartid,sys08_departid,sys08_projectid,sys08_yakusyoku,sys08_sex,sys08_telephone,sys08_mobilephone,sys08_email,sys08_initpwdflag,sys08_remarks,sys08_status,sys08_createtime,sys08_createby,sys08_updatetime,sys08_updateby,sys08_ptkey,sys08_usermark,sys08_userno,sys08_shortname,sys08_shortnamebgcolor) VALUES ('admin','システム管理者','a7xq6QgbXrQPCVT8QYIsgA==','','','','','001','','','',False,'','001','2024/10/21 16:28:41.207','admin','2025/01/21 15:32:54','admin','c8c6e216-6a38-4dd3-a7d6-ba1a3bdf3aef',NULL,'','','');
INSERT INTO "public".sys08_userinfo(sys08_userid,sys08_username,sys08_password,sys08_gendepartid,sys08_departid,sys08_projectid,sys08_yakusyoku,sys08_sex,sys08_telephone,sys08_mobilephone,sys08_email,sys08_initpwdflag,sys08_remarks,sys08_status,sys08_createtime,sys08_createby,sys08_updatetime,sys08_updateby,sys08_ptkey,sys08_usermark,sys08_userno,sys08_shortname,sys08_shortnamebgcolor) VALUES ('xun.gu','顧','a7xq6QgbXrQPCVT8QYIsgA==','01','','','','001','','','',False,'','001','2024/10/21 16:28:41.207','admin','2025/02/19 10:48:27','admin','34e6b054-c0a0-4185-92a1-5d0bd951f4a6',NULL,'004498','顾','#000000');


INSERT INTO "public".sys09_userrightgroup(sys09_userid,sys09_rightgroupid,sys09_seq,sys09_bikou) VALUES ('admin','001',1,NULL);
INSERT INTO "public".sys09_userrightgroup(sys09_userid,sys09_rightgroupid,sys09_seq,sys09_bikou) VALUES ('xun.gu','002',1,NULL);


INSERT INTO "public".sys99_aiswitch(sys99_businesstype,sys99_switchflg,sys99_updateby,sys99_updatetime) VALUES ('001',True,'システム管理者','2024/09/27 13:48:51.996');
