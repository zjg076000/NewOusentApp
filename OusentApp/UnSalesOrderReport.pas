unit UnSalesOrderReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,unbase_pnl, AdvSmoothLabel, Vcl.Buttons,
  RzButton, Vcl.ExtCtrls, RzPanel, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, Vcl.Samples.Spin, AdvGlowButton,
  Vcl.ComCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, MemTableDataEh,
  Data.DB, MemTableEh, DataDriverEh, Data.Win.ADODB,Comobj;

type
  TFrmSalesOrderReport = class(Tfrmbase_pnl)
    advsmthlbl1: TAdvSmoothLabel;
    GRD: TDBGridEh;
    RzPanel3: TRzPanel;
    Label1: TLabel;
    RzPanel4: TRzPanel;
    Label28: TLabel;
    Label2: TLabel;
    btn_OrderNum_Locate: TAdvGlowButton;
    RzPanel2: TRzPanel;
    Label3: TLabel;
    SpinEdt: TSpinEdit;
    btnFixCell: TAdvGlowButton;
    cbb_begin: TComboBox;
    cbb_end: TComboBox;
    qry_erp: TADOQuery;
    qry: TADOQuery;
    adt: TADODataSet;
    dsd: TDataSetDriverEh;
    dso: TDataSource;
    mte: TMemTableEh;
    qry_old: TADOQuery;
    qry_old2: TADOQuery;
    adtId: TLargeintField;
    adtFsn: TWideStringField;
    adtSn: TWideStringField;
    adtOutputPower: TWideStringField;
    adtExtinctionRatio: TWideStringField;
    adtEyeMask: TWideStringField;
    adtReceiverSensitivity: TWideStringField;
    adtLOS_Assert: TWideStringField;
    adtLOS_Deassert: TWideStringField;
    adtMaxInputPower: TWideStringField;
    adtFSJKGGL: TBCDField;
    adtJSJKGGL: TBCDField;
    adtRxPower_Point2: TWideStringField;
    adtRxPower_Point3: TWideStringField;
    adtTxCal_Error: TWideStringField;
    adtRxCal_Error: TWideStringField;
    adtRxCal_Error2: TWideStringField;
    adtRxCal_Error3: TWideStringField;
    adtFinalTestId: TIntegerField;
    RzToolbarButton3: TRzToolbarButton;
    AdvGlowButton8: TAdvGlowButton;
    RzToolbarButton2: TRzToolbarButton;
    AdvGlowButton1: TAdvGlowButton;
    SaveDialog1: TSaveDialog;
    AdvGlowButton2: TAdvGlowButton;
    RzToolbarButton4: TRzToolbarButton;
    procedure btnFixCellClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_OrderNum_LocateClick(Sender: TObject);
    procedure cbb_beginCloseUp(Sender: TObject);
    procedure cbb_beginDropDown(Sender: TObject);
    procedure cbb_endDropDown(Sender: TObject);
    procedure AdvGlowButton8Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
  private
      procedure Proc_DataAdd;
    procedure Proc_Locate;
    procedure DBGridInFoToExcel(FileName, TitleCaption: string;
  MakeDataSource: TDataSource; makeDBGrid: TDBGridEh);
  public

  end;

var
  FrmSalesOrderReport: TFrmSalesOrderReport;

implementation
  uses UnData;
{$R *.dfm}

procedure TFrmSalesOrderReport.AdvGlowButton1Click(Sender: TObject);
var
  AFileName:string;
begin
      SaveDialog1.FileName:=FormatDateTime('yyyymmddhhnnss',now)+'出货数据';

    if SaveDialog1.Execute then
     begin
        AFileName:=SaveDialog1.FileName;
     //  if AFileName='' then
     //    AFileName:=adt_cb.fieldbyname('OrderNum').AsString+'调试数据';

       DBGridInFoToExcel(AFileName, '', dso, grd);
     end;

end;

procedure TFrmSalesOrderReport.AdvGlowButton2Click(Sender: TObject);
var a,b : string;
    ExcelApp,WorkBook:Variant;
    ExcelRowCount:integer;
    i:integer;
begin
   ExcelApp:= CreateOleObject('Excel.Application');  //創建Excel程序
  // opendialog1.Execute;  //打開對話框
   WorkBook := ExcelApp.WorkBooks.Open(getcurrentdir()+'\Report\烽火报告.xls');
   ExcelApp.Visible := false;
  // ExcelRowCount := WorkBook.WorkSheets[1].UsedRange.Rows.Count; //獲取Excel的行數
   WorkBook.ConnectTo(ExcelApp.Workbooks[1]);
  //  ExcelWorksheet1.ConnectTo(ExcelWorkbook1.Worksheets[1] as _Worksheet);
  //  row:=1;


end;

procedure TFrmSalesOrderReport.AdvGlowButton8Click(Sender: TObject);
begin
   dm_data.DbGridEhToExcel(Grd);

end;

procedure TFrmSalesOrderReport.btnFixCellClick(Sender: TObject);
begin

  GRD.FrozenCols:=SpinEdt.Value;

end;

procedure TFrmSalesOrderReport.btn_OrderNum_LocateClick(Sender: TObject);
begin
  Proc_Locate;



end;

procedure TFrmSalesOrderReport.cbb_beginCloseUp(Sender: TObject);
var
  sn:string;
begin

end;

procedure TFrmSalesOrderReport.cbb_beginDropDown(Sender: TObject);
 var
  str_if:string;
begin
   if cbb_begin.Text='' then
      psql:='select   distinct top 100 Sn FROM   Qc_SalesOrderReport  ORDER BY Sn ASC '
     else
     begin
      str_if:='%'+trim(cbb_begin.Text)+'%';
      psql:='select distinct Sn  FROM   Qc_SalesOrderReport  where Sn like '''+str_if+'''';
      end;
     dm_data.Get_item_list(qry,psql,'Sn',cbb_begin.Items);


end;

procedure TFrmSalesOrderReport.cbb_endDropDown(Sender: TObject);
 var
  str_if:string;
begin
   if cbb_end.Text='' then
      psql:='select   distinct top 100 Sn FROM   Qc_SalesOrderReport  ORDER BY Sn ASC '
     else
     begin
      str_if:='%'+trim(cbb_end.Text)+'%';
      psql:='select distinct Sn  FROM   Qc_SalesOrderReport  where Sn like '''+str_if+'''';
      end;
     dm_data.Get_item_list(qry,psql,'Sn',cbb_end.Items);

end;

procedure TFrmSalesOrderReport.FormCreate(Sender: TObject);
begin
 //Proc_Locate;

end;

procedure TFrmSalesOrderReport.Proc_DataAdd;
var
   sql:string;
   Fsn,Sn,OutputPower,ExtinctionRatio,EyeMask,ReceiverSensitivity,LOS_Assert,
   LOS_Deassert ,MaxInputPower,FSJKGGL,JSJKGGL,RxPower_Point2,RxPower_Point3,
   TxCal_Error,RxCal_Error,RxCal_Error2,RxCal_Error3,FinalTestId:string;
begin
   //查找最大的ID值
   psql:='select  Max(Id) num from  Qc_SalesOrderReport ';
   dm_DaTa.QuseryData(qry,psql);
   if qry.FieldByName('num').asinteger=0 then
      psql:='SELECT * FROM   MES_CodeWritingUnit  WHERE  ID>635000'
    else
      psql:='SELECT * FROM   MES_CodeWritingUnit  WHERE  ID>'+qry.FieldByName('num').AsString;

   dm_DaTa.QuseryData(qry_old,psql);


   while not qry_old.eof  do
   begin
     //变量赋值
     Fsn:=qry_old.FieldByName('FSN').AsString;
     Sn:=qry_old.FieldByName('SN').AsString;
     FinalTestId:=qry_old2.FieldByName('ID').AsString;
     //查询终测表
     psql:='select top 1 * from Ou_Prod_FinalTest where TestResult=''PASS'' and FSN='''+Fsn+'''';

     dm_DaTa.QuseryData(qry_old2,psql);
     if qry_old2.RecordCount>0 then
      begin
         OutputPower:=qry_old2.FieldByName('Template_TxPower').AsString;
         ExtinctionRatio:=qry_old2.FieldByName('Template_ER').AsString;

         EyeMask:=qry_old2.FieldByName('Margin').AsString;
         ReceiverSensitivity:=qry_old2.FieldByName('RxSentivity').AsString;

         LOS_Assert:=qry_old2.FieldByName('MIN_Los_assert').AsString;
         LOS_Deassert:=qry_old2.FieldByName('MAX_Los_deassert').AsString;

          MaxInputPower:=qry_old2.FieldByName('MaxInputPower').AsString;
          FSJKGGL:=qry_old2.FieldByName('FSJKGGL').AsString;

          JSJKGGL:=qry_old2.FieldByName('JSJKGGL').AsString;
          RxPower_Point2:=qry_old2.FieldByName('RxPower_Point2').AsString;

          RxPower_Point3:=qry_old2.FieldByName('RxPower_Point3').AsString;
          TxCal_Error:=qry_old2.FieldByName('TxCal_Error').AsString;

          RxCal_Error:=qry_old2.FieldByName('RxCal_Error').AsString;
          RxCal_Error2:=qry_old2.FieldByName('RxCal_Error2').AsString;

          RxCal_Error3:=qry_old2.FieldByName('RxCal_Error3').AsString;



         //生成插入数据的sql语句
         sql:=sql+'  insert into Qc_SalesOrderReport(Fsn,Sn,OutputPower,ExtinctionRatio,'
              +'EyeMask,ReceiverSensitivity,LOS_Assert,LOS_Deassert ,MaxInputPower,FSJKGGL,JSJKGGL'
              +',RxPower_Point2,RxPower_Point3,TxCal_Error,RxCal_Error,RxCal_Error2,RxCal_Error3,FinalTestId)'
              +' values('''+Fsn+''','''+Sn+''','+OutputPower+', '+ExtinctionRatio+','
              +''''+EyeMask+''','+ReceiverSensitivity+','+LOS_Assert+','+LOS_Deassert+','''+MaxInputPower+''','+FSJKGGL+','+JSJKGGL
              +','+RxPower_Point2+','+RxPower_Point3+','+TxCal_Error+','+RxCal_Error+','+RxCal_Error2+','+RxCal_Error3+','+FinalTestId+')';
      end;
      qry_old.Next;
  end;


  if sql>'' then
 begin
  dm_Data.adoconn.BeginTrans;
  dm_Data.ADOCommand.CommandText:=sql;
//  showmessage(SqlStr);
  dm_Data.ADOCommand.Execute();
  dm_Data.adoconn.CommitTrans;
 end;




end;

procedure TFrmSalesOrderReport.Proc_Locate;
begin
  ///inherited;
  PSQL := 'Select * from Qc_SalesOrderReport where Sn>=''' + trim(cbb_begin.Text) + ''' and ' + 'Sn<=''' + trim(cbb_end.Text) + '''';
  dm_DaTa.proc_ActiveAdodataset(adt, PSQL);
  mte.close;
  mte.open;
end;
procedure TFrmSalesOrderReport.DBGridInFoToExcel(FileName, TitleCaption: string;
  MakeDataSource: TDataSource; makeDBGrid: TDBGridEh);
var
  xlApp, xlSheet, szValue: Variant;
  ARow, iLoop: word;
  str02:string;
  StrFormat:OleVariant;
begin
 // lbl_bg.Visible:=true;
 // lbl_bg.refresh;
  xlApp := CreateOleObject('Excel.Application');
  try
    xlSheet := CreateOleObject('Excel.Sheet');
    xlSheet := xlApp.WorkBooks.Add;
//   表格标题
    for iLoop := 0 to makeDBGrid.Columns.Count - 1 do
      xlSheet.WorkSheets[1].Cells[1, iLoop + 1] := makeDBGrid.Columns[iLoop].Title.Caption;
     // 数据
    ARow := 2;
    strformat:='@';
    with MakeDataSource.DataSet do
    begin
      DisableControls;
      First;
      while not Eof do
      begin
      {  for iLoop := 0 to Fields.Count - 1 do
        begin
          szValue := Fields[iLoop].Value;
          xlSheet.WorkSheets[1].Cells[ARow, iLoop + 1] := szValue;

        end;    // 这个也可以   }
       // szValue:= Fields[iLoop].asstring;
         xlSheet.WorkSheets[1].Cells[ARow, 1] := Fields[0].asinteger;


        xlSheet.WorkSheets[1].Cells[ARow,2].NumberFormatLocal:=strFormat;  // <----------------设置单元格属性为“文本”

        str02:=Fields[1].asstring ;
        xlSheet.WorkSheets[1].Cells[ARow, 2] := str02;
    // str02:=Fields[2].asstring ;
  //  xlSheet.WorkSheets[1].Cells[ARow,3].NumberFormatLocal:='@';  // <----------------设置单元格属性为“文本”

         xlSheet.WorkSheets[1].Cells[ARow,3].NumberFormatLocal:=strFormat;  // <----------------设置单元格属性为“文本”
         xlSheet.WorkSheets[1].Cells[ARow, 3] :=Fields[2].asstring;// str02;


      //       xlSheet.WorkSheets[1].Cells[ARow,4].NumberFormatLocal:='@';  // <----------------设置单元格属性为“文本”

        xlSheet.WorkSheets[1].Cells[ARow,4] :=Fields[3].asstring; //Fields[2].asstring;
    //        if   Fields[3].asstring='1' then

         xlSheet.WorkSheets[1].Cells[ARow, 5] :=Fields[4].asstring;
        xlSheet.WorkSheets[1].Cells[ARow,6] := Fields[5].asstring;
          xlSheet.WorkSheets[1].Cells[ARow, 7] := Fields[6].asstring;
        xlSheet.WorkSheets[1].Cells[ARow,8] := Fields[7].asstring;
           xlSheet.WorkSheets[1].Cells[ARow, 9] := Fields[8].asstring;
        xlSheet.WorkSheets[1].Cells[ARow,10] := Fields[9].asstring;


           xlSheet.WorkSheets[1].Cells[ARow,11].NumberFormatLocal:=strFormat;  // <----------------设置单元格属性为“文本”

            xlSheet.WorkSheets[1].Cells[ARow, 11] :=Fields[10].asstring;//formatdatetime('yyyy-mm-dd hh:nn:ss',Fields[10].value);
          //        xlSheet.WorkSheets[1].Cells[ARow, 11] :=formatdatetime('yyyy-mm-dd hh:nn:ss',Fields[10].value);// Fields[10].asstring;
          // showmessage(Fields[11].asstring);
       {  if (Fields[11].asstring='True')   then
                  xlSheet.WorkSheets[1].Cells[ARow, 12] :='成功'
            else
                  xlSheet.WorkSheets[1].Cells[ARow, 12] :='失败';     }


             xlSheet.WorkSheets[1].Cells[ARow,12] := Fields[11].asstring;
            //12到22列数据的导出

              xlSheet.WorkSheets[1].Cells[ARow,13] := Fields[12].asstring;
              xlSheet.WorkSheets[1].Cells[ARow,14] := Fields[13].asstring;
               xlSheet.WorkSheets[1].Cells[ARow,15] := Fields[14].asstring;
              xlSheet.WorkSheets[1].Cells[ARow,16] := Fields[15].asstring;
              xlSheet.WorkSheets[1].Cells[ARow,17] := Fields[16].asstring;
              xlSheet.WorkSheets[1].Cells[ARow,18] := Fields[17].asstring;
            //    xlSheet.WorkSheets[1].Cells[ARow,19] := Fields[18].asstring;
        //      xlSheet.WorkSheets[1].Cells[ARow,20] := Fields[19].asstring;
             {  xlSheet.WorkSheets[1].Cells[ARow,21] := Fields[20].asstring;
              xlSheet.WorkSheets[1].Cells[ARow,22] := Fields[21].asstring;
              xlSheet.WorkSheets[1].Cells[ARow,23] := Fields[22].asstring;     }













        inc(ARow);
        Next;
      end;
      First;
      EnableControls;

      end;
    try
      xlSheet.SaveAs(FileName);
    //  lbl_bg.Caption:='出货报告导出完毕！'
    //  lbl_bg.Visible:=false;
     //  lbl_bg.refresh;
      Application.MessageBox('导出完毕!', '提示', MB_IconExclamation);
    finally
      xlSheet.Close;
      xlApp.Quit;
      xlApp := UnAssigned;
    end;
  except
    Application.MessageBox('本机没有安装Excel.', '错误', MB_OK);
  end;
end;

end.
