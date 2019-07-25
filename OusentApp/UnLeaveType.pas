unit UnLeaveType;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Unbase_pnl, MemTableDataEh, Data.DB,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, DataDriverEh, MemTableEh, Data.Win.ADODB,
  Vcl.Buttons, RzButton, Vcl.ExtCtrls, RzPanel, AdvGlowButton;

type
  TFrmLeaveType = class(Tfrmbase_pnl)
    adt: TADODataSet;
    ds: TDataSource;
    mte: TMemTableEh;
    dsd: TDataSetDriverEh;
    Grd: TDBGridEh;
    AdvGlowButton1: TAdvGlowButton;
    procedure RzToolbarButton1Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLeaveType: TFrmLeaveType;

implementation

{$R *.dfm}

procedure TFrmLeaveType.AdvGlowButton1Click(Sender: TObject);
begin

   if (mte.State=dsInsert) or (mte.State=dseDit) then
         mte.Post;

end;

procedure TFrmLeaveType.RzToolbarButton1Click(Sender: TObject);
begin
  Close;

end;

end.
