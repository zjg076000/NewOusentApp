unit UnHoliday;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,unbase_pnl, Vcl.Buttons, RzButton,
  Vcl.ExtCtrls, RzPanel, Vcl.ComCtrls, RzDTP, RzDBDTP, RzBorder, Vcl.StdCtrls,
  Vcl.DBCtrls, AdvGlowButton, Vcl.WinXPanels, MemTableDataEh, Data.DB,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, MemTableEh, DataDriverEh, Data.Win.ADODB;

type
  TFrmHoliday = class(Tfrmbase_pnl)
    RzToolbarButton3: TRzToolbarButton;
    RzToolbarButton6: TRzToolbarButton;
    adt: TADODataSet;
    dsd: TDataSetDriverEh;
    dso: TDataSource;
    mte: TMemTableEh;
    Grd: TDBGridEh;
    pnl_locate: TRzPanel;
    Label1: TLabel;
    edt_name: TEdit;
    Label2: TLabel;
    date_begin: TRzDateTimePicker;
    Label3: TLabel;
    date_end: TRzDateTimePicker;
    btn_OrderNum_Locate: TAdvGlowButton;
    chk_locate: TCheckBox;
    adtPCode: TWideStringField;
    adtPName: TWideStringField;
    adtDeptName: TWideStringField;
    adtLeaveId: TLargeintField;
    adtPersonId: TIntegerField;
    adtDeptId: TIntegerField;
    adtOnDate: TDateTimeField;
    adtReason: TWideStringField;
    adtBeginTime: TDateTimeField;
    adtEndTime: TDateTimeField;
    adtHourTime: TBCDField;
    adtLeave_Date: TDateTimeField;
    procedure chk_locateClick(Sender: TObject);
  private
    //  strsql:string;
      procedure LocateData;        //查询数据

  public

  end;

var
  FrmHoliday: TFrmHoliday;

implementation

{$R *.dfm}

procedure TFrmHoliday.chk_locateClick(Sender: TObject);
begin
  if chk_locate.Checked then
      pnl_locate.visible:=true
   else
      pnl_locate.visible:=false;

end;

procedure TFrmHoliday.LocateData;
var
  datebegin, dateend: String;
  workstate: INTEGER;
begin
  datebegin := formatdatetime('yyyy-mm-dd', date_begin.Date);
  dateend := formatdatetime('yyyy-mm-dd', date_end.Date);
  Psql := 'select * from Ou_OrderNum_Data where (Convert(varchar(10),begintime,120) >='''
    + datebegin + ''' ' + ' and Convert(varchar(10),begintime,120) <=''' +
    datebegin + ''')';
  // 按订单号
 { if cmb_OrderNum.Text > '' then
    strsql := strsql + ' and OrderNum=''' + cmb_OrderNum.Text + '''';

  // 按产品类型
  if cmb_OrderNumProdType.Text > '' then
    strsql := strsql + ' and ProductType=''' + cmb_OrderNumProdType.Text + '''';

  // 订单条件
  if cmb_OrderNumWorkState.Text > '' then
  begin
    if cmb_OrderNumWorkState.Text = '未生产' then
      workstate := 0;

    if cmb_OrderNumWorkState.Text = '生产中' then
      workstate := 1;

    if cmb_OrderNumWorkState.Text = '已完工' then
      workstate := 2;
    // SHOWMESSAGE(inttostr(workstate));
    strsql := strsql + ' and Workstate=' + inttostr(workstate);
  end;

  with adt_OrderNumData do
  begin
    close;
    commandtext := strsql;
    open;
    Mte_OrderNumData.close;
    Mte_OrderNumData.open;
  end;
              }
end;

end.
