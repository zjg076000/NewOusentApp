inherited frmDimission: TfrmDimission
  Caption = #21150#29702#31163#32844
  ClientHeight = 368
  ClientWidth = 472
  Font.Charset = DEFAULT_CHARSET
  Font.Height = -11
  Font.Name = 'Tahoma'
  OnShow = FormShow
  ExplicitTop = -43
  ExplicitWidth = 488
  ExplicitHeight = 406
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzPanel1: TRzPanel
    Width = 472
    Height = 37
    ExplicitWidth = 472
    ExplicitHeight = 37
    object Label1: TLabel
      Left = 26
      Top = 10
      Width = 48
      Height = 13
      Caption = #21592#24037#22995#21517
    end
    object Label2: TLabel
      Left = 236
      Top = 10
      Width = 48
      Height = 13
      Caption = #25152#23646#37096#38376
    end
    object RzDBLabel2: TRzDBLabel
      Left = 88
      Top = 9
      Width = 121
      Height = 17
      BorderInner = fsFlat
      BorderSides = [sdBottom]
      FlyByEnabled = True
      DataField = 'PName'
      DataSource = frmPerson.dso
    end
    object RzDBLabel3: TRzDBLabel
      Left = 296
      Top = 9
      Width = 121
      Height = 17
      BorderInner = fsFlat
      BorderSides = [sdBottom]
      FlyByEnabled = True
      DataField = 'DeptName'
      DataSource = frmPerson.dso
    end
  end
  inherited RzPanel4: TRzPanel
    Top = 327
    Width = 472
    ExplicitTop = 327
    ExplicitWidth = 472
    inherited btnSaveAdd: TSpeedButton
      Left = 203
      Visible = False
      ExplicitLeft = 203
    end
    inherited btnSave: TSpeedButton
      Left = 286
      ExplicitLeft = 286
    end
    inherited btnCancel: TSpeedButton
      Left = 370
      ExplicitLeft = 370
    end
  end
  inherited RzPanel2: TRzPanel
    Top = 37
    Width = 472
    Height = 290
    ExplicitTop = 37
    ExplicitWidth = 472
    ExplicitHeight = 290
    object Label31: TLabel
      Left = 29
      Top = 17
      Width = 48
      Height = 12
      Caption = #31163#32844#20107#30001
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 29
      Top = 107
      Width = 48
      Height = 12
      Caption = #31163#32844#31867#22411
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label28: TLabel
      Left = 29
      Top = 145
      Width = 48
      Height = 12
      Caption = #31163#32844#26085#26399
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 29
      Top = 189
      Width = 60
      Height = 12
      Caption = #22791'   '#27880'   '
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 29
      Top = 250
      Width = 60
      Height = 12
      Caption = #21150#29702#26085#26399#65306
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object RzDBLabel1: TRzDBLabel
      Left = 88
      Top = 248
      Width = 193
      Height = 17
      BorderInner = fsFlat
      BorderSides = [sdBottom]
      FlyByEnabled = True
      DataField = 'OnDate'
      DataSource = dso
    end
    object DBEdit2: TDBEdit
      Left = 87
      Top = 14
      Width = 290
      Height = 66
      AutoSize = False
      BevelEdges = [beBottom]
      BevelKind = bkFlat
      BorderStyle = bsNone
      Ctl3D = True
      DataField = 'Reason'
      DataSource = dso
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentCtl3D = False
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 87
      Top = 104
      Width = 138
      Height = 19
      BevelEdges = [beBottom]
      BevelInner = bvNone
      BevelOuter = bvNone
      BevelKind = bkFlat
      Ctl3D = False
      DataField = 'TypeId'
      DataSource = dso
      KeyField = 'TypeId'
      ListField = 'Name'
      ListSource = dsotype
      ParentCtl3D = False
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 87
      Top = 182
      Width = 290
      Height = 51
      AutoSize = False
      BevelEdges = [beBottom]
      BevelKind = bkFlat
      BorderStyle = bsNone
      Ctl3D = True
      DataField = 'Note'
      DataSource = dso
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentCtl3D = False
      TabOrder = 3
    end
    object DBDateTimeEditEh1: TDBDateTimeEditEh
      Left = 87
      Top = 144
      Width = 134
      Height = 21
      BevelEdges = [beBottom]
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'Dimission_Date'
      DataSource = dso
      DynProps = <>
      EditButtons = <>
      TabOrder = 2
      Visible = True
      EditFormat = ''
    end
  end
  inherited dso: TDataSource
    Left = 416
    Top = 192
  end
  inherited adt: TADODataSet
    Active = False
    CommandText = ' select top 1  *  from  Hrm_Dimission'
    Left = 373
    Top = 192
  end
  object adt_Person: TADODataSet
    Active = True
    Connection = dm_DaTa.adoconn
    CursorType = ctStatic
    CommandText = ' select   *  from  Hrm_Person'#13#10#13#10
    Parameters = <>
    Left = 368
    Top = 41
  end
  object dso_person: TDataSource
    DataSet = adt_Person
    Left = 424
    Top = 41
  end
  object dsotype: TDataSource
    DataSet = adttype
    Left = 424
    Top = 112
  end
  object adttype: TADODataSet
    Active = True
    Connection = dm_DaTa.adoconn
    CursorType = ctStatic
    CommandText = ' select  *  from  Hrm_DimissionType'
    Parameters = <>
    Left = 365
    Top = 104
  end
  object qry: TADOQuery
    Connection = dm_DaTa.adoconn
    Parameters = <>
    Left = 256
    Top = 181
  end
end
