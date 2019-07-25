unit UnLeave_AddEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ComCtrls, RzDTP, RzDBDTP, AdvGlowButton, RzBorder, RzLabel,
  RzDBLbl, Vcl.ExtCtrls, RzPanel,unbase_addedit, Data.DB, Data.Win.ADODB,
  RzEdit, RzDBEdit, AdvDateTimePicker, AdvDBDateTimePicker, DBCtrlsEh,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, MemTableDataEh, DataDriverEh, MemTableEh,
  Vcl.Grids, Vcl.DBGrids;

type
  TFrmLeave_AddEdit = class(TFrmBase_AddEdit)
    Label1: TLabel;
    RzDBLabel1: TRzDBLabel;
    Label21: TLabel;
    lbl_Person: TRzLabel;
    btn_Select: TSpeedButton;
    Label31: TLabel;
    DBEdit2: TDBEdit;
    Label28: TLabel;
    Label3: TLabel;
    Label40: TLabel;
    DBEdit12: TDBEdit;
    Label41: TLabel;
    adtLeaveId: TLargeintField;
    adtPersonId: TIntegerField;
    adtDeptId: TIntegerField;
    adtReason: TWideStringField;
    adtBeginTime: TDateTimeField;
    adtEndTime: TDateTimeField;
    adtHourTime: TBCDField;
    adtOnDate: TDateTimeField;
    adtLeaveDate: TDateTimeField;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBDateTimeEditEh3: TDBDateTimeEditEh;
    adt_Person: TADODataSet;
    dso_person: TDataSource;
    adq: TADOQuery;
    DBDateTimeEditEh2: TDBDateTimeEditEh;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    pnl_select: TPanel;
    RzPanel3: TRzPanel;
    edt: TEdit;
    RzPanel5: TRzPanel;
    Grd: TDBGrid;
    adtType: TADODataSet;
    dsoType: TDataSource;
    adtLeaveType: TIntegerField;
    procedure GrdDblClick(Sender: TObject);
    procedure adtAfterScroll(DataSet: TDataSet);
    procedure btn_SelectClick(Sender: TObject);
    procedure edtChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLeave_AddEdit: TFrmLeave_AddEdit;

implementation
     uses undata;
{$R *.dfm}

procedure TFrmLeave_AddEdit.adtAfterScroll(DataSet: TDataSet);
begin
  if DataSet.FieldByName('PersonId').IsNull then
   begin
    lbl_Person.Caption:='';
    exit;
   end;
   Psql:='select * From Hrm_Person where PersonId='+DataSet.FieldByName('PersonId').AsString;
   dm_Data.QuseryData(adq,Psql);
   lbl_Person.Caption:=adq.FieldByName('PName').AsString;
end;

procedure TFrmLeave_AddEdit.edtChange(Sender: TObject);
var
   str:string;
begin

     str:='%'+edt.Text+'%';
     with  adt_person do
     begin
       close;
       commandtext:='select * from Hrm_Person where PName like '''+str+'''' ;
       open;
     end;
end;

procedure TFrmLeave_AddEdit.GrdDblClick(Sender: TObject);
begin
    adt.FieldByName('PersonId').AsInteger:=adt_Person.FieldByName('PersonId').AsInteger;
    adt.FieldByName('DeptId').AsInteger:=adt_Person.FieldByName('DeptId').AsInteger;

    lbl_Person.Caption:=adt_Person.FieldByName('PName').asstring;
    pnl_select.Visible:=false;
end;

procedure TFrmLeave_AddEdit.btn_SelectClick(Sender: TObject);
begin
   PNL_SELECT.Top:=(btn_select.Top+btn_select.Height+RzPanel1.Height);
//  SHOWMESSAGE((PNL_SELECT.Top).ToString());
 PNL_SELECT.Left:=btn_select.Left-PNL_SELECT.Width;
   PNL_SELECT.Visible:=not PNL_SELECT.Visible;

end;

end.
