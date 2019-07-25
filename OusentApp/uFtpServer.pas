unit uFtpServer;

interface
 uses IdFTP,System.Classes,System.Generics.Collections,IdFTPList, IdFTPCommon,System.SysUtils;

//如果 Delphi indy控件 FTP获取目录时IdFTP1.DirectoryListing.count=0  只需Uses IdFTPListParseWindowsNT,IdAllFTPListParsers 这两个单元就可以了


//判断当面工作目录下的子目录是否存在
function FtpDirectoryExists(IdFtp:TIdFtp;ADir:string):Boolean;
//判断File是否在当面目录中文件是否存在
function FtpFileExists(IdFtp:TIdFtp;AFile:string):Boolean;

//建立连接
function FtpConnect(IdFtp:TIdFtp;AServer,APort,AUserName,APassWord:string):Boolean;

//上传文件
function  FtpUploadFile(IdFtp:TIdFTP;SourceFile,NewFileName:string):boolean;

//下载文件
function FtpDownLoad(IdFtp:TIdFTP;SourceFileName,newFilePath,NewFileName:string):Boolean;


implementation

//判断Directory是否存在（要先连接上 Ftp Server)
function FtpDirectoryExists(IdFtp:TIdFtp;ADir:string):Boolean;
begin
   Result:=True;
   try
     IdFtp.ChangeDir(ADir);
   except
     Result:=False;
   end;
end;

//判断File是否存在
function FtpFileExists(IdFtp:TIdFtp;AFile:string):Boolean;
var
  tt :TIdFTPListItems;
  t : TIdFTPListItem;
  i : integer;
  tfname : String;
begin
   // IdFTP.ChangeDir(CurrentDir);
  IdFTP.TransferType := ftBinary; //指定为二进制文件  或文本文件ftASCII
  for i:=0 to IdFTP.DirectoryListing.Count-1 do
  begin
    tt := IdFTP.DirectoryListing; //得到当前目录下文件及目录列表
    t := tt.Items[i]; //得到一个文件相关信息
    tfname := t.FileName;
    if IdFTP.DirectoryListing.Items[i].ItemType = ditFile then //如果是文件
    begin
         if tfname=AFile then
          begin
            Result:=True ;
            exit;
          end
         else
            Result:=False;
    end;
  end;
 end;

//建立连接
function FtpConnect(IdFtp:TIdFtp;AServer,APort,AUserName,APassWord:string):Boolean;
begin

     Result:=false;
    IdFtp.Username:=AUserName;
    IdFtp.Password:=APassWord;
    IdFtp.host:=AServer;
    IdFtp.Port:=strtoint(APort);
  //  IdFtp.Port:=strtoint(APort);
   try
      if IdFtp.Connected then  IdFtp.Disconnect;

      IdFtp.Connect;
      Result:=True;
   except

     Result:=false;
    // IdFtp.Free;
   end;

end;

function  FtpUploadFile(IdFtp:TIdFTP;SourceFile,NewFileName:string):boolean;
var

  EXT:string;

begin  //上传
   // aftp:=TIdFTP.Create;

    Result:=False;
   try
      EXT:=ExtractFileExt(SourceFile);
     NewFileName:=FormatDateTime('yyyymmdd',now)+FormatDateTime('hh',now)
                  +FormatDateTime('nn',now)+FormatDateTime('ss',now)+ext;

     IdFtp.TransferType := ftBinary;
     //增加一些按日期创建目录    文件名：按日期加时间改名
     IdFtp.Put(SourceFile,  NewFileName);
     Result:=True;
   except
     Result:=True;

   end;
end;

function FtpDownLoad(IdFtp:TIdFTP;SourceFileName,newFilePath,NewFileName:string):Boolean;
var
  tt :TIdFTPListItems;
  t : TIdFTPListItem;
  i : integer;
  tfname : String;
begin  //下载
  Result:=false;
  //IdFTP1.DirectoryListing.Items[0].FileName;
  IdFTP.TransferType := ftBinary; //指定为二进制文件  或文本文件ftASCII
  for i:=0 to IdFTP.DirectoryListing.Count-1 do
  begin
    tt := IdFTP.DirectoryListing; //得到当前目录下文件及目录列表
    t := tt.Items[i]; //得到一个文件相关信息

    tfname := t.FileName;
  //  showmessage(t.OwnerName+'  '+t.GroupName+'  '+t.FileName+'   '+t.LinkedItemName);
    if IdFTP.DirectoryListing.Items[i].ItemType = ditFile then //如果是文件
    begin
     if tfname=SourceFileName then
      begin
       IdFTP.Get(SourceFileName,newFilePath+NewFileName,false,True); //下载到本地，并为覆盖，且支持断点续传
       Result:=True;
       Exit;                 //下载后退出
      end


    end;
  end;


end;





end.
