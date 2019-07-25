unit UnCustomerDeliveryRate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Unbase_pnl, Vcl.Buttons, RzButton,
  Vcl.ExtCtrls, RzPanel, AdvSmoothLabel, AdvGlowButton, Vcl.ComCtrls,
  Vcl.StdCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, VclTee.TeeGDIPlus, Data.DB,
  VCLTee.TeEngine, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.Win.ADODB;

type
  TFrmCustomerDeliveryRate = class(Tfrmbase_pnl)
    advsmthlbl1: TAdvSmoothLabel;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    Label28: TLabel;
    datebegin: TDateTimePicker;
    Label2: TLabel;
    dateend: TDateTimePicker;
    btn_OrderNum_Locate: TAdvGlowButton;
    Label1: TLabel;
    cmbCust: TComboBox;
    RzPanel4: TRzPanel;
    btn_month: TRadioButton;
    rbtn_year: TRadioButton;
    RzPanel5: TRzPanel;
    RadioButton3: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    lbl_tishi: TLabel;
    RzPanel6: TRzPanel;
    DBGridEh1: TDBGridEh;
    DBChart1: TDBChart;
    FDMemTable1: TFDMemTable;
    DataSource1: TDataSource;
    qry: TADOQuery;
    procedure rbtn_yearClick(Sender: TObject);
    procedure btn_monthClick(Sender: TObject);
    procedure btn_OrderNum_LocateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCustomerDeliveryRate: TFrmCustomerDeliveryRate;

implementation
   uses UnData;
{$R *.dfm}

procedure TFrmCustomerDeliveryRate.btn_monthClick(Sender: TObject);
begin
     var str:string;
       str:='yyyy-MM';
     datebegin.Format:=str;
     dateEnd.Format:=str ;
end;

procedure TFrmCustomerDeliveryRate.btn_OrderNum_LocateClick(Sender: TObject);
var
   CustCode:string;
begin
  CustCode:=cmbCust.Text;
  lbl_tishi.Visible:=True;
  lbl_tishi.Caption:='正在查询数据,请稍候....';

  //如果客户编号= 未空的  所有的客户
 if  CustCode='' then
  begin
   if  btn_month.checked then  //按月份
     Psql:='SELECT  CONVERT(varchar(7) ,OrderDate, 120) 月份, SUM(Amount) 订单数量,'
       +' SUM(ShippedNum) 发货数量, round(SUM(ShippedNum)/SUM(Amount)*100,2) 交期达成率 FROM   Pd_OrderTracking  where (OrderState=''已发货'' '
       +' OR OrderState=''结束发货'')     GROUP BY    CONVERT(varchar(7) ,OrderDate, 120)'
       +' ORDER BY  CONVERT(varchar(7) ,OrderDate, 120)'
   else   //按年份
      Psql:='SELECT  CONVERT(varchar(4) ,OrderDate, 120) 月份, SUM(Amount) 订单数量,'
       +' SUM(ShippedNum) 发货数量  FROM   Pd_OrderTracking  where (OrderState=''已发货'' '
       +' OR OrderState=''结束发货'')     GROUP BY    CONVERT(varchar(7) ,OrderDate, 120)'
       +' ORDER BY  CONVERT(varchar(4) ,OrderDate, 120)'

  end
 else
  begin
   if  btn_month.checked then    // 按月份
     Psql:='SELECT  CustCode,CONVERT(varchar(7) ,OrderDate, 120) , SUM(Amount) Amount,'
       +' SUM(ShippedNum) ShippedNum  FROM   Pd_OrderTracking  where (OrderState=''已发货'' '
       +' OR OrderState=''结束发货'') and  CustCode='''+CustCode+'''  GROUP BY   CustCode, CONVERT(varchar(7) ,OrderDate, 120)'
       +' ORDER BY  CustCode,CONVERT(varchar(7) ,OrderDate, 120)'
    else                      //按年份
     Psql:='SELECT  CustCode,CONVERT(varchar(4) ,OrderDate, 120) , SUM(Amount) Amount,'
       +' SUM(ShippedNum) ShippedNum  FROM   Pd_OrderTracking  where (OrderState=''已发货'' '
       +' OR OrderState=''结束发货'') and  CustCode='''+CustCode+'''  GROUP BY   CustCode, CONVERT(varchar(7) ,OrderDate, 120)'
       +' ORDER BY  CustCode,CONVERT(varchar(4) ,OrderDate, 120)'
  end;

  dm_DaTa.QuseryData(qry,psql);

  lbl_tishi.Caption:='数据查询结束......';
end;

procedure TFrmCustomerDeliveryRate.rbtn_yearClick(Sender: TObject);
begin
    var str:string;
       str:='yyyy';
     datebegin.Format:=str ;
     dateEnd.Format:=str ;

end;

end.
