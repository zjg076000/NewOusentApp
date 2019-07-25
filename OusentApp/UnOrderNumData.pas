unit UnOrderNumData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Unbase_pnl, AdvSmoothLabel, Vcl.Buttons,
  RzButton, Vcl.ExtCtrls, RzPanel, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  AdvGlowButton, Vcl.ComCtrls, Vcl.StdCtrls, MemTableDataEh, Data.DB,
  Data.Win.ADODB, MemTableEh, DataDriverEh;

type
  TFrmOrderNumData = class(Tfrmbase_pnl)
    RzPanel4: TRzPanel;
    Label28: TLabel;
    Label2: TLabel;
    datebegin: TDateTimePicker;
    dateend: TDateTimePicker;
    btn_OrderNum_Locate: TAdvGlowButton;
    GRD: TDBGridEh;
    adt: TADODataSet;
    dsd: TDataSetDriverEh;
    dso: TDataSource;
    mte: TMemTableEh;
    qry: TADOQuery;
    adtId: TLargeintField;
    adtOrderNum: TWideStringField;
    adtProductType: TWideStringField;
    adtOrderNumDate: TDateTimeField;
    adtAmount: TIntegerField;
    adtInStock: TIntegerField;
    adtPassNum: TIntegerField;
    adtBadNum: TIntegerField;
    adtWorkState: TWideStringField;
    adtOnDate: TDateTimeField;
    mteId: TLargeintField;
    mteOrderNum: TWideStringField;
    mteProductType: TWideStringField;
    mteOrderNumDate: TDateTimeField;
    mteAmount: TIntegerField;
    mteInStock: TIntegerField;
    mtePassNum: TIntegerField;
    mteBadNum: TIntegerField;
    mteWorkState: TWideStringField;
    mteOnDate: TDateTimeField;
    btnAdd: TAdvGlowButton;
    procedure btnAddClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmOrderNumData: TFrmOrderNumData;

implementation

{$R *.dfm}

uses UnOrderNumData_Add;

procedure TFrmOrderNumData.btnAddClick(Sender: TObject);
begin
  FrmOrderNumData_Add:=tFrmOrderNumData_Add.Create(sELF);
  FrmOrderNumData_Add.ShowModal;
end;

end.
