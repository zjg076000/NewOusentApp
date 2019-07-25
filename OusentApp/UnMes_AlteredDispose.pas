unit UnMes_AlteredDispose;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,unbase_pnl, Vcl.WinXCtrls, Vcl.StdCtrls,
  AdvSmoothLabel, Vcl.Buttons, RzButton, Vcl.ExtCtrls, RzPanel, Vcl.ComCtrls;

type
  TFrmMes_AlteredDispose = class(Tfrmbase_pnl)
    AdvSmoothLabel1: TAdvSmoothLabel;
    RzPanel2: TRzPanel;
    Label2: TLabel;
    Label3: TLabel;
    edt_OKrate: TEdit;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    Label8: TLabel;
    RzPanel3: TRzPanel;
    rzpnl1: TRzPanel;
    lbl2: TLabel;
    cbb1: TComboBox;
    RzPanel4: TRzPanel;
    AdvSmoothLabel2: TAdvSmoothLabel;
    RzPanel5: TRzPanel;
    RichEdit2: TRichEdit;
    AdvSmoothLabel3: TAdvSmoothLabel;
    RichEdit1: TRichEdit;
    RzPanel6: TRzPanel;
    AdvSmoothLabel4: TAdvSmoothLabel;
    AdvSmoothLabel5: TAdvSmoothLabel;
    RzPanel7: TRzPanel;
    RzPanel8: TRzPanel;
    RichEdit3: TRichEdit;
    RichEdit4: TRichEdit;
    RzPanel9: TRzPanel;
    Label1: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    Edit6: TEdit;
    RzPanel10: TRzPanel;
    Label9: TLabel;
    ToggleSwitch1: TToggleSwitch;
    btnSaveAdd: TSpeedButton;
    procedure RzToolbarButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMes_AlteredDispose: TFrmMes_AlteredDispose;

implementation

{$R *.dfm}

procedure TFrmMes_AlteredDispose.RzToolbarButton1Click(Sender: TObject);
begin
 Close;

end;

end.
