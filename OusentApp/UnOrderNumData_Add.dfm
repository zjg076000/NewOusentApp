object FrmOrderNumData_Add: TFrmOrderNumData_Add
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'FrmOrderNumData_Add'
  ClientHeight = 274
  ClientWidth = 532
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 532
    Height = 177
    Align = alTop
    BorderOuter = fsFlat
    TabOrder = 0
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 530
      Height = 175
      Align = alClient
      DataSource = dso
      DynProps = <>
      TabOrder = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'OrderNum'
          Footers = <>
          LookupParams.KeyFieldNames = 'OrderNum'
          LookupParams.LookupDataSet = ADT_LOOK
          LookupParams.LookupDisplayFieldName = 'ordernum'
          LookupParams.LookupKeyFieldNames = 'ordernum'
          PickList.Strings = (
            'A|B|c')
          Width = 164
        end
        item
          AlwaysShowEditButton = True
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '33'
          Footers = <>
          MRUList.Active = True
          MRUList.CaseSensitive = True
          Width = 177
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          Footers = <>
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object dso: TDataSource
    DataSet = Adt
    Left = 136
    Top = 200
  end
  object Adt: TADODataSet
    Active = True
    Connection = dm_DaTa.adoconn
    CursorType = ctStatic
    CommandText = 'select *  From PD_OrderNumData  where OnDate=getdate()'
    Parameters = <>
    Left = 80
    Top = 200
    object AdtId: TLargeintField
      FieldName = 'Id'
      ReadOnly = True
    end
    object AdtOrderNum: TWideStringField
      FieldName = 'OrderNum'
    end
    object AdtProductType: TWideStringField
      FieldName = 'ProductType'
      Size = 80
    end
    object AdtOrderNumDate: TDateTimeField
      FieldName = 'OrderNumDate'
    end
    object AdtAmount: TIntegerField
      FieldName = 'Amount'
    end
    object AdtInStock: TIntegerField
      FieldName = 'InStock'
    end
    object AdtPassNum: TIntegerField
      FieldName = 'PassNum'
    end
    object AdtBadNum: TIntegerField
      FieldName = 'BadNum'
    end
    object AdtWorkState: TWideStringField
      FieldName = 'WorkState'
      FixedChar = True
      Size = 10
    end
    object AdtOnDate: TDateTimeField
      FieldName = 'OnDate'
    end
    object AdtField33: TStringField
      FieldKind = fkLookup
      FieldName = '33'
      LookupDataSet = ADT_LOOK
      LookupKeyFields = 'ordernum'
      LookupResultField = 'ordernum'
      KeyFields = 'OrderNum'
      Size = 30
      Lookup = True
    end
  end
  object ADT_LOOK: TADODataSet
    Active = True
    Connection = dm_DaTa.adoconn_old
    CursorType = ctStatic
    CommandText = 
      'SELECT  TOP 500  ordernum ,Product_Type'#13#10'  FROM [Ousent_ATS].[db' +
      'o].[ou_Prod_Picking]'
    Parameters = <>
    Left = 312
    Top = 208
    object ADT_LOOKordernum: TStringField
      FieldName = 'ordernum'
    end
    object ADT_LOOKProduct_Type: TStringField
      FieldName = 'Product_Type'
      Size = 60
    end
  end
end
