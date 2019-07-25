unit UnAdjustPost;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,UnBase_AddEdit, RzEdit, RzDBEdit,
  DBCtrlsEh, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, RzLabel, RzDBLbl, Data.DB,
  Data.Win.ADODB, Vcl.Buttons, Vcl.ExtCtrls, RzPanel;

type
  TFrmAdjustPost = class(TFrmBase_AddEdit)
    Label1: TLabel;
    RzDBLabel2: TRzDBLabel;
    RzPanel3: TRzPanel;
    Label31: TLabel;
    Label3: TLabel;
    Label28: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    RzDBLabel1: TRzDBLabel;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    Label6: TLabel;
    RzDBLabel4: TRzDBLabel;
    Label7: TLabel;
    RzDBLabel5: TRzDBLabel;
    RzDBEdit1: TRzDBEdit;
    Label8: TLabel;
    Label2: TLabel;
    adttype: TADODataSet;
    dsoType: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    adt_Dept: TADODataSet;
    dso_Dept: TDataSource;
    qry: TADOQuery;
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAdjustPost: TFrmAdjustPost;

implementation
  uses UnData;
{$R *.dfm}

procedure TFrmAdjustPost.btnSaveClick(Sender: TObject);
var
   DeptId,Position:string;
begin



  IF   application.MessageBox('你确定要办理该员工调职吗？','提示',MB_OKCANCEL
)=1 then
begin
    inherited;
     DeptId:=adt.FieldByName('DeptId').AsString;
  Position:=adt.FieldByName('newPosition').AsString;
   Psql:='update Hrm_Person set   DeptId='+DeptId+' , Position='''+Position+''''
       +' where PersonId='+adt.Fieldbyname('PersonId').asstring;
   dm_data.Execsql(qry,Psql);



end;
end;
end.
