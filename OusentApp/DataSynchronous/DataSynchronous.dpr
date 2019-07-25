program DataSynchronous;

uses
  Vcl.Forms,
  UnMain in 'UnMain.pas' {FrmMain},
  UnData in 'UnData.pas' {dm_DaTa: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(Tdm_DaTa, dm_DaTa);
  Application.Run;
end.
