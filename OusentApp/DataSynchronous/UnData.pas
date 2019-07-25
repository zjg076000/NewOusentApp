unit UnData;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB,DBGridEhImpExp,DBGridEh,Dialogs,vcl.forms,
  Controls,RzEdit,inifiles,windows, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client,DateUtils;

type
  Tdm_DaTa = class(TDataModule)
    adoconn: TADOConnection;
    FDMTbl_parameters: TFDMemTable;
    FDMTbl_parametersTbl_FieldName: TStringField;
    FDMTbl_parametersIsVisible: TBooleanField;
    FDMTbl_parametersTypeId: TIntegerField;
    FDMTbl_parametersTitleValue: TStringField;
    dso_Paramter: TDataSource;
    adocommand: TADOCommand;
    qry: TADOQuery;
    adoerp: TADOConnection;
    adoconn_old: TADOConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
     procedure DbGridEhToExcel(ADgEh: TDBGridEh);
      procedure proc_ActiveAdodataset(adT:tadoDATASET;strsql:string);
     procedure QuseryData(adq:tadoquery;strsql:string);

     Procedure Execsql(adq:tadoquery;strsql:string);

     procedure FilerData(str_IF,str_Table,str_Field: string; Adt: TADODataSet);
        //ͨ��id��ʾ����
    function getName(adq:Tadoquery;tbl_name:string;fid,fName:String;fid_value:string):string;

      //дIni�ļ�
     Procedure  Proc_WriteIni(SectionName:string;KeyName:string;KeyValue:string);
     //��ȡINI�ļ�
     Function   ReadIni(SectionName:string;KeyName:string):string;


 end;

var
  dm_DaTa: Tdm_DaTa;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}



{$R *.dfm}



procedure Tdm_DaTa.DataModuleCreate(Sender: TObject);
begin
    FDMTbl_parameters.Active:=true;
end;

procedure Tdm_data.DbGridEhToExcel(ADgEh: TDBGridEh);
var
  ExpClass: TDBGridEhExportclass;
  Ext: string;
  FSaveDialog:TSaveDialog;
begin
  try
    if ADgEh.DataSource.DataSet.IsEmpty then
    begin
     // showmessage(PChar('û�пɵ���������'));
      Application.MessageBox(PChar('û�пɵ���������'), PChar('��ʾ'), MB_OK +
       MB_ICONINFORMATION);
      exit;
    end;
    FSaveDialog := TSaveDialog.Create(Self);
    FSaveDialog.Filter :=
      'Excel �ĵ� (*.xls)|*.XLS|Text files (*.txt)|*.TXT|Comma separated values (*.csv)|*.CSV|HTML file (*.htm)|*.HTM|Word �ĵ� (*.rtf)|*.RTF';
    if FSaveDialog.Execute and (trim(FSaveDialog.FileName) <> '') then
    begin
      case FSaveDialog.FilterIndex of
        1:
          begin
            ExpClass := TDBGridEhExportAsXLS;
            Ext := 'xls';
          end;
        2:
          begin
            ExpClass := TDBGridEhExportAsText;
            Ext := 'txt';
          end;
        3:
          begin
            ExpClass := TDBGridEhExportAsCSV;
            Ext := 'csv';
          end;
        4:
          begin
            ExpClass := TDBGridEhExportAsHTML;
            Ext := 'htm';
          end;
        5:
          begin
            ExpClass := TDBGridEhExportAsRTF;
            Ext := 'rtf';
          end;
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(FSaveDialog.FileName, Length(FSaveDialog.FileName) -
          2, 3)) <> UpperCase(Ext) then
          FSaveDialog.FileName := FSaveDialog.FileName + '.' + Ext;
        if FileExists(FSaveDialog.FileName) then
        begin
          if application.MessageBox('�ļ����Ѵ��ڣ��Ƿ񸲸�   ', '��ʾ',
            MB_ICONASTERISK or MB_OKCANCEL) <> idok then
            exit;
        end;
        Screen.Cursor := crHourGlass;
        SaveDBGridEhToExportFile(ExpClass, ADgEh, FSaveDialog.FileName, true);
        Screen.Cursor := crDefault;
        MessageBox(application.Handle, '�����ɹ�  ', '��ʾ', MB_OK +
          MB_ICONINFORMATION);
      end;
    end;
    FSaveDialog.Destroy;
  except
    on e: exception do
    begin
      Application.MessageBox(PChar(e.message), '����', MB_OK + MB_ICONSTOP);
    end;
  end;
end;
 procedure Tdm_DaTa.Execsql(adq: tadoquery; strsql: string);
begin
   with adq do
   begin
     close;
     sql.Text:=strsql;
     execsql;
   end;
end;

procedure Tdm_DaTa.FilerData(str_IF,str_Table,str_Field: string; Adt: TADODataSet);
 begin
  str_IF:='%'+str_IF+'%';
  with Adt do
  begin
     Close;
     commandtext:='select * from '+str_Table+' where '+str_Field+' like '''+str_IF+'''';
     Open;
  end;
end;

procedure Tdm_data.QuseryData(adq:tadoquery;strsql:string);
 begin
       with adq do
        begin
          close;
          sql.Text:=strsql;
          open;
        end;
 end;

Function Tdm_data.ReadIni(SectionName:string;KeyName:string):string;
var
   myinifile:Tinifile;
   strfile:string;
begin
  strfile:=getcurrentdir+'\Config.ini';
   //��D�̵� 1.ini �ļ���
  myinifile:=Tinifile.create(strfile);
 // д��INI�ļ���
  Result:=myinifile.readstring(SectionName,KeyName,'');
  myinifile.Free;

end;

Procedure Tdm_Data.Proc_WriteIni(SectionName:string;KeyName:string;KeyValue:string);
var
   myinifile:Tinifile;
   strfile:string;
begin
  strfile:=getcurrentdir+'\Config.ini';
   //��D�̵� 1.ini �ļ���
  myinifile:=Tinifile.create(strfile);
  myinifile.writestring(SectionName,KeyName,KeyValue);
  myinifile.Free;



end;

procedure Tdm_data.proc_ActiveAdodataset(adT:tadoDATASET;strsql:string);
 begin
       with adT do
        begin
          close;
          commandText:=strsql;
          open;
        end;
 end;



//ͨ��id��ʾ����
function Tdm_data.getName(adq:Tadoquery;tbl_name:string;fid,fName:String;fid_value:string):string;
begin
   with adq  do
   begin
     close;
     sql.Text:='select top 1 * from '+tbl_name+' where '+fid+'='+fid_value;
     open;
     if recordcount>0 then
       result:=fieldbyname(fName).asstring;

   end;


end;
end.