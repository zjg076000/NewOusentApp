unit UnAts_8472;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,unbase_pnl, Grids, DBGrids, Buttons, RzButton, ExtCtrls, RzPanel, DB,
  ADODB, StdCtrls, MemTableDataEh, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  MemTableEh, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdRemoteCMDClient, IdRexec, DataDriverEh;

type
  TfrmAts_8472 = class(Tfrmbase_pnl)
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    pnl_B: TRzPanel;
    RzPanel5: TRzPanel;
    dso_zb: TDataSource;
    Label1: TLabel;
    adt_cb: TADODataSet;
    dso_cb: TDataSource;
    adt_cbid: TAutoIncField;
    adt_cbname: TStringField;
    adt_cbPxh: TStringField;
    adt_cbProject: TStringField;
    adt_cbbit_begin: TIntegerField;
    adt_cbbit_end: TIntegerField;
    adt_cbb_value: TStringField;
    adt_cbzbid: TIntegerField;
    adt_cbproject_zh_cn: TStringField;
    adt_cb_mx: TADODataSet;
    dso_cb_mx: TDataSource;
    adt_cb_mxid: TAutoIncField;
    adt_cb_mxproject_id: TIntegerField;
    adt_cb_mxsub_Value: TStringField;
    adt_cb_mxsub_name: TStringField;
    adt_cb_mxsub_name_zh_cn: TStringField;
    adt_cb_mxFL_CODE: TStringField;
    btn_add: TRzToolbarButton;
    RzToolbarButton6: TRzToolbarButton;
    RzToolbarButton2: TRzToolbarButton;
    DSD_zB: TDataSetDriverEh;
    dsd_cb: TDataSetDriverEh;
    IdRexec1: TIdRexec;
    MTE_zB: TMemTableEh;
    adt_Zb: TADODataSet;
    mte_cb: TMemTableEh;
    dsd_cb_mx: TDataSetDriverEh;
    mte_Cb_mx: TMemTableEh;
    RzToolbarButton3: TRzToolbarButton;
    RzToolbarButton4: TRzToolbarButton;
    Grd: TDBGridEh;
    grd3: TDBGridEh;
    Grd2: TDBGridEh;
    Panel1: TPanel;
    CheckBox2: TCheckBox;
    procedure adt_cb_mxCalcFields(DataSet: TDataSet);
    procedure MTE_zBAfterScroll(DataSet: TDataSet);
    procedure btn_addClick(Sender: TObject);
    procedure RzToolbarButton4Click(Sender: TObject);
    procedure RzToolbarButton2Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAts_8472: TfrmAts_8472;

implementation
     uses undata;
{$R *.dfm}

procedure TfrmAts_8472.adt_cb_mxCalcFields(DataSet: TDataSet);
begin
  inherited;
    // dm_data.getxh(DataSet);
end;

procedure TfrmAts_8472.btn_addClick(Sender: TObject);
begin
    // dm_data.DbGridEhToExcel(Grd);

end;

procedure TfrmAts_8472.CheckBox2Click(Sender: TObject);
begin
  inherited;
    if CheckBox2.Checked=TRUE then
     PNL_B.Visible:=FALSE
    ELSE
      PNL_B.Visible:=TRUE;

end;

procedure TfrmAts_8472.MTE_zBAfterScroll(DataSet: TDataSet);
begin
  //  inherited;

end;

procedure TfrmAts_8472.RzToolbarButton2Click(Sender: TObject);
begin
 //    dm_data.DbGridEhToExcel(Grd3);
end;

procedure TfrmAts_8472.RzToolbarButton4Click(Sender: TObject);
begin
  //   dm_data.DbGridEhToExcel(Grd2);
end;

end.
