000001 //SINEVAL  JOB (COBOL),                                                 
000002 //             'Ali Zeeshan',MSGCLASS=H,                                
000003 //             CLASS=A,                                                 
000004 //             REGION=8M,TIME=1440,                                     
000005 //             MSGLEVEL=(1,1)                                           
000006 //STEP01 EXEC PROG=SINVAL                                               
000007 //STEPLIB DD DSN=CUST.PR.LOADLIB,DISP=SHR                               
000008 //SYSPRINT DD SYSOUT=*                                                  
000009 //SYSOUT DD SYSOUT=A                                                    
000010 //SYSIN DD DUMMY                                                        
000011 //                                                                      
000012 //                                                                      
000013 //                                                                      
000014    10 ***                                                               
000015    20 ***                                                               
000016    30  IDENTIFICATION DIVISION.                                         
000017    40  PROGRAM-ID.  'SINVAL'                                            
000018    50 ***                                                               
000019    60 ***                                                               
000020    70  DATA DIVISION.                                                   
000021    80  WORKING-STORAGE SECTION.                                         
000022    90      01 VAL1 PIC S9(2)V9(2) VALUE 1.00.                           
000023   100      01 VAL2 PIC S9(2)V9(2) VALUE 2.00.                           
000024   110      01 VAL3 PIC S9(2)V9(2) VALUE 3.00.                           
000025   120      01 VAL4 PIC S9(2)V9(2) VALUE 4.00.                           
000026   130      01 VAL5 PIC S9(2)V9(2) VALUE 5.00.                           
000027   140      01 RES1 PIC S9(1)V9(10).                                     
000028   150      01 RES2 PIC S9(1)V9(10).                                     
000029   160      01 RES3 PIC S9(1)V9(10).                                     
000030   170      01 RES4 PIC S9(1)V9(10).                                     
000031   180      01 RES5 PIC S9(1)V9(10).                                     
000032   190 ***                                                               
000033   200  PROCEDURE DIVISION.                                              
000034   210      COMPUTE RES1= FUNCTION SIN(VAL1)                             
000035   220      MULTIPLY RES1 BY RES1.                                       
000036   230      DISPLAY '1,'RES1.                                            
000037   240                                                                   
000038   250      COMPUTE RES2= FUNCTION SIN(VAL2)                             
000039   260      MULTIPLY RES2 BY RES2.                                       
000040   270      DISPLAY '2,'RES2. 
000041   280                                                                   
000042   290      COMPUTE RES3= FUNCTION SIN(VAL3)                             
000043   300      MULTIPLY RES3 BY RES3.                                       
000044   310      DISPLAY '3,'RES3.                                            
000045   320                                                                   
000046   330      COMPUTE RES4= FUNCTION SIN(VAL4)                             
000047   340      MULTIPLY RES4 BY RES4.                                       
000048   350      DISPLAY '4,'RES4.                                            
000049   360                                                                   
000050   370      COMPUTE RES5= FUNCTION SIN(VAL5)                             
000051   380      MULTIPLY RES5 BY RES5.                                       
000052   390      DISPLAY '5,'RES5.                                            
000053   400                                                                   
000054   410      STOP RUN.                                                                                               