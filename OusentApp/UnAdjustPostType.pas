unit UnAdjustPostType;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Unbase_pnl, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB,
  MemTableEh, AdvGlowButton, Data.Win.ADODB, DataDriverEh, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.Buttons, RzButton, Vcl.ExtCtrls, RzPanel;

type
  TFrmAdjustPostType = class(Tfrmbase_pnl)
    Grd: TDBGridEh;
    ds: TDataSource;
    dsd: TDataSetDriverEh;
    adt: TADODataSet;
    AdvGlowButton1: TAdvGlowButton;
    mte: TMemTableEh;
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure RzToolbarButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAdjustPostType: TFrmAdjustPostType;

implementation

{$R *.dfm}

procedure TFrmAdjustPostType.AdvGlowButton1Click(Sender: TObject);
begin
  if (mte.State=dsInsert) or (mte.State=dseDit) then
         mte.Post;
end;

procedure TFrmAdjustPostType.RzToolbarButton1Click(Sender: TObject);
begin
  Close;

end;

end.
