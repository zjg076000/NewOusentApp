unit UnOvertime_AddEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,unbase_AddEdit, Data.DB, Data.Win.ADODB,
  Vcl.Buttons, Vcl.ExtCtrls, RzPanel, Vcl.StdCtrls, DBCtrlsEh, Vcl.Mask,
  Vcl.DBCtrls, RzLabel, RzDBLbl, RzDBCmbo, Vcl.Grids, Vcl.DBGrids;

type
  TFrmOverTime_AddEdit = class(TFrmBase_AddEdit)
    Label21: TLabel;
    btn_select: TSpeedButton;
    Label31: TLabel;
    DBEdit2: TDBEdit;
    Label28: TLabel;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    Label3: TLabel;
    Label40: TLabel;
    DBEdit12: TDBEdit;
    Label41: TLabel;
    DBDateTimeEditEh3: TDBDateTimeEditEh;
    DBDateTimeEditEh2: TDBDateTimeEditEh;
    lbl_Person: TRzLabel;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    RzDBLabel1: TRzDBLabel;
    adt_person: TADODataSet;
    dso_person: TDataSource;
    pnl_select: TPanel;
    RzPanel3: TRzPanel;
    edt: TEdit;
    RzPanel5: TRzPanel;
    Grd: TDBGrid;
    adq: TADOQuery;
    adotype: TADODataSet;
    dsoType: TDataSource;
    procedure btn_selectClick(Sender: TObject);
    procedure edtChange(Sender: TObject);
    procedure GrdDblClick(Sender: TObject);
    procedure adtAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmOverTime_AddEdit: TFrmOverTime_AddEdit;

implementation
        uses undata;
{$R *.dfm}

procedure TFrmOverTime_AddEdit.adtAfterScroll(DataSet: TDataSet);
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

procedure TFrmOverTime_AddEdit.btn_selectClick(Sender: TObject);
begin
  inherited;
  PNL_SELECT.Top:=(btn_select.Top+btn_select.Height+RzPanel1.Height);
//  SHOWMESSAGE((PNL_SELECT.Top).ToString());
 PNL_SELECT.Left:=btn_select.Left-PNL_SELECT.Width;
   PNL_SELECT.Visible:=not PNL_SELECT.Visible;
end;

procedure TFrmOverTime_AddEdit.edtChange(Sender: TObject);
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

procedure TFrmOverTime_AddEdit.GrdDblClick(Sender: TObject);
begin
   adt.FieldByName('PersonId').AsInteger:=adt_Person.FieldByName('PersonId').AsInteger;
    adt.FieldByName('DeptId').AsInteger:=adt_Person.FieldByName('DeptId').AsInteger;

    lbl_Person.Caption:=adt_Person.FieldByName('PName').asstring;
    pnl_select.Visible:=false;
end;

end.
