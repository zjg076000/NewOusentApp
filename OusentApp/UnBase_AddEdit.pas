unit UnBase_AddEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, AdvGlowButton,
  Vcl.ExtCtrls, RzPanel, Data.DB, Data.Win.ADODB;

type
  TFrmBase_AddEdit = class(TForm)
    RzPanel1: TRzPanel;
    RzPanel4: TRzPanel;
    btnSaveAdd: TSpeedButton;
    btnSave: TSpeedButton;
    btnCancel: TSpeedButton;
    RzPanel2: TRzPanel;
    dso: TDataSource;
    adt: TADODataSet;
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnSaveAddClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private

    _KeyId: iNTEGER; // 定义一个属性  员工编号
    _AddOrEdit: string;

  public
      Psql: string;
  published
    property KeyId: integer read _KeyId write _KeyId;
    property AddOrEdit: string read _AddOrEdit write _AddOrEdit;
  end;

var
  FrmBase_AddEdit: TFrmBase_AddEdit;

implementation

{$R *.dfm}

uses UnData;

procedure TFrmBase_AddEdit.btnCancelClick(Sender: TObject);
begin
     adt.Cancel;
     close;
end;

procedure TFrmBase_AddEdit.btnSaveAddClick(Sender: TObject);
begin
   adt.Append;
end;

procedure TFrmBase_AddEdit.btnSaveClick(Sender: TObject);
begin
  if (adt.State=dsEdit) or
     (adt.State=dsInsert)   then

   adt.post;
   close;
end;

procedure TFrmBase_AddEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    freeandnil(FrmBase_AddEdit);
end;

end.
