unit UnDimissionType;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Unbase_pnl, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB,
  DataDriverEh, MemTableEh, Data.Win.ADODB, AdvGlowButton, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.Buttons, RzButton, Vcl.ExtCtrls, RzPanel;

type
  TfrmDimissionType = class(Tfrmbase_pnl)
    Grd: TDBGridEh;
    AdvGlowButton1: TAdvGlowButton;
    adt: TADODataSet;
    mte: TMemTableEh;
    dsd: TDataSetDriverEh;
    ds: TDataSource;
    procedure RzToolbarButton1Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDimissionType: TfrmDimissionType;

implementation

{$R *.dfm}

procedure TfrmDimissionType.AdvGlowButton1Click(Sender: TObject);
begin

   if (mte.State=dsInsert) or (mte.State=dseDit) then
         mte.Post;

end;

procedure TfrmDimissionType.RzToolbarButton1Click(Sender: TObject);
begin
 Close;
end;

end.
