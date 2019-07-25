unit UnOrderNumData_Add;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Data.Win.ADODB, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls, RzPanel;

type
  TFrmOrderNumData_Add = class(TForm)
    RzPanel1: TRzPanel;
    DBGridEh1: TDBGridEh;
    dso: TDataSource;
    Adt: TADODataSet;
    AdtId: TLargeintField;
    AdtOrderNum: TWideStringField;
    AdtProductType: TWideStringField;
    AdtOrderNumDate: TDateTimeField;
    AdtAmount: TIntegerField;
    AdtInStock: TIntegerField;
    AdtPassNum: TIntegerField;
    AdtBadNum: TIntegerField;
    AdtWorkState: TWideStringField;
    AdtOnDate: TDateTimeField;
    ADT_LOOK: TADODataSet;
    ADT_LOOKordernum: TStringField;
    ADT_LOOKProduct_Type: TStringField;
    AdtField33: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmOrderNumData_Add: TFrmOrderNumData_Add;

implementation
   uses UnData;
{$R *.dfm}

end.
