inherited FrmOrderNumData: TFrmOrderNumData
  Caption = 'FrmOrderNumData'
  ClientHeight = 274
  ClientWidth = 912
  Font.Charset = DEFAULT_CHARSET
  Font.Height = -11
  Font.Name = 'Tahoma'
  WindowState = wsMaximized
  ExplicitWidth = 928
  ExplicitHeight = 312
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzPanel1: TRzPanel
    Width = 912
    ExplicitWidth = 802
    inherited RzToolbarButton1: TRzToolbarButton
      Tag = 3002
      Left = 849
      ExplicitLeft = 739
    end
    object btnAdd: TAdvGlowButton
      Tag = 3002
      Left = 1
      Top = 1
      Width = 128
      Height = 26
      Align = alLeft
      Caption = #29983#20135#25968#25454#24405#20837
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      FocusType = ftHot
      HotPicture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        61000000E149444154384FA593ED0D01411445CF564007A88012A8001D50012A
        A003AB0274A00351013A500215902BF3D63399C8CACC1F76DEDCF3BE0B324F91
        D0378125D0077AC17E010EC006B87B4D0C98006B4090D491781A606FBB0748BC
        AD99D1D820066803E784E77DB81B466045D2513A06288159C2FB20DC1D13B605
        501AE006B4FE049C5468033C9D5861EF5CF5F5D7BA31077C3A450A20B101AE01
        D40DBF028C9CB30A909D427611D5464D5B232AA4A64FC787ADEF07204DD5465D
        660D92391644E9C491985D9EF5C622FB1A657BA43D588565B2EAAB1BD69D9FCB
        5473153ECF5ECD1C2E11142443C20000000049454E44AE426082}
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000013649444154384FAD53D16D84300CB51DEEBF1BF436E88DC006BD6E90
        0F12F1D911D8A0FD44211F6C506E03BA0123D03D48521925558EDEA96AAF9140
        60C7CFCFF633C285A3B53E02C04308A16437228EDEFBC95A7BDA5EC7DC505555
        89880D220E4434B46D3BB3BFAEEBBDF7FE1842E0A7B1D68E29EE0B40292511B1
        34C6C84BAC924D6BDD8710C6AEEBFA951DBF383311C96D3067667F62928378EF
        7B66B20228A51871AD775B12FFE794933FC5606CD8DE18F3FA1B00ADF53300CC
        0CD01051BFA5994ABBC6203656624E9F8DCEB9FB8CC9217E4FC92684F848C994
        52C337806559D6C6F121A2158035906C4551CC67003797707313FF324629E5DD
        6EB71B78F4FF23A4C8E24729C7CC2F00F07E26E5D4E1B44C00F0268438E5CBE4
        9C7B0480A7ABCB94AB3036F6104258C788883CC6C918336CD5FA09BC31D83799
        875FA00000000049454E44AE426082}
      Transparent = True
      TabOrder = 0
      OnClick = btnAddClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
  end
  object RzPanel4: TRzPanel
    Left = 0
    Top = 28
    Width = 912
    Height = 33
    Align = alTop
    BorderOuter = fsNone
    TabOrder = 1
    ExplicitWidth = 802
    object Label28: TLabel
      Left = 21
      Top = 10
      Width = 48
      Height = 12
      Caption = #24320#22987#26085#26399
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 181
      Top = 10
      Width = 48
      Height = 12
      Caption = #32467#26463#26085#26399
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object datebegin: TDateTimePicker
      Left = 69
      Top = 6
      Width = 97
      Height = 21
      BevelEdges = [beBottom]
      BevelKind = bkFlat
      Date = 43595.000000000000000000
      Time = 0.679718055558623700
      TabOrder = 0
    end
    object dateend: TDateTimePicker
      Left = 242
      Top = 6
      Width = 97
      Height = 21
      BevelEdges = [beBottom]
      BevelKind = bkFlat
      Date = 43595.000000000000000000
      Time = 0.679718055558623700
      TabOrder = 1
    end
    object btn_OrderNum_Locate: TAdvGlowButton
      Left = 345
      Top = 6
      Width = 60
      Height = 21
      Caption = #26597#35810
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      HotPicture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        61000000E149444154384FA593ED0D01411445CF564007A88012A8001D50012A
        A003AB0274A00351013A500215902BF3D63399C8CACC1F76DEDCF3BE0B324F91
        D0378125D0077AC17E010EC006B87B4D0C98006B4090D491781A606FBB0748BC
        AD99D1D820066803E784E77DB81B466045D2513A06288159C2FB20DC1D13B605
        501AE006B4FE049C5468033C9D5861EF5CF5F5D7BA31077C3A450A20B101AE01
        D40DBF028C9CB30A909D427611D5464D5B232AA4A64FC787ADEF07204DD5465D
        660D92391644E9C491985D9EF5C622FB1A657BA43D588565B2EAAB1BD69D9FCB
        5473153ECF5ECD1C2E11142443C20000000049454E44AE426082}
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        61000001CB49444154384F95533D4C5A51183DDF95A06D518362D249A70EA60B
        8DAE2A264D9A74913A16172389ABCE0EC5C1D9BA4B7480A693C1C5C4A403B693
        8391A5134B71856741285602EF33DFD5F7BCEFE14FFC9237BCEFDC7BEEF9CE3D
        97E0ABCF3B7FA3CAB6E7C01C035154C3CC0510E56DA5F6BF2D860BE616327F12
        696B85804D3FA9F15F052395490E6F393D9720B15DC911D1DC239BEF20E65C26
        19F9240D4D70DFC9E3AF03181D0AA074DE46A561EBCF2C0656B34BC35FE976E6
        53078C841496A74328596D345B8C9741C2C458107BA797F855BC3239AAB652B3
        B490B65200BE38C8DAC7016CFEA8EBCD4E09C9467C101B07177E25EBB490AEE4
        019A91C5225B4ECB1C37BBAC987FF702FF5A8CC3DFFF0D8C8F28B16D55893028
        DD0F6FFBF02A485AAEBFA6DEF46224A4FC58D543F0948272C3F6F8C08C9A6704
        31503C58CBD53C1E881AC703D31B808FBA4C14A932EFCFE215CA751B23FD0A93
        63417D1B62EED979C79C6E5D5F2375ECBCE383A0A244CC143F44F649A9A57BAB
        EFFB5D1291DFE951D10783745F2247877A745B54B84172163E27CACCBC9F4D46
        E26E945D92B4B5228FC51CC7135F460D849444B8EB31398DDB68C7018E31DF3C
        67222E00946F2BB5FB7D31FCC724BD06C888D0EE0EB492BB0000000049454E44
        AE426082}
      TabOrder = 2
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
  end
  object GRD: TDBGridEh
    Left = 0
    Top = 61
    Width = 912
    Height = 213
    Align = alClient
    AllowedSelections = [gstRecordBookmarks, gstRectangle, gstAll]
    BorderStyle = bsNone
    ColumnDefValues.AlwaysShowEditButton = True
    ColumnDefValues.Title.TitleButton = True
    ColumnDefValues.ToolTips = True
    Ctl3D = True
    DataSource = dso
    DynProps = <>
    EditActions = [geaCutEh, geaCopyEh, geaPasteEh, geaDeleteEh, geaSelectAllEh]
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    FooterRowCount = 1
    FooterParams.Color = clBtnFace
    FooterParams.FillStyle = cfstThemedEh
    FooterParams.HorzLines = True
    FooterParams.VertLines = False
    FrozenCols = 5
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    IndicatorTitle.ShowDropDownSign = True
    IndicatorTitle.TitleButton = True
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghTraceColSizing, dghIncSearch, dghPreferIncSearch, dghRowHighlight, dghDblClickOptimizeColWidth, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghHotTrack, dghExtendVertLines]
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    RowDetailPanel.Height = 350
    RowDetailPanel.BevelEdges = []
    RowDetailPanel.BevelInner = bvNone
    RowDetailPanel.BevelOuter = bvNone
    RowDetailPanel.BorderStyle = bsNone
    RowHeight = 20
    RowSizingAllowed = True
    SearchPanel.Enabled = True
    SearchPanel.CaseSensitive = True
    SearchPanel.SearchScope = gssCurrentColumnEh
    SelectionDrawParams.DrawFocusFrame = True
    SelectionDrawParams.DrawFocusFrameStored = True
    ShowHint = True
    SortLocal = True
    STFilter.Local = True
    STFilter.Location = stflInTitleFilterEh
    STFilter.Visible = True
    SumList.Active = True
    TabOrder = 2
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'IsSelect'
        Footers = <>
        Title.Caption = #36873#25321
        Visible = False
        Width = 54
      end
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'OrderNumDate'
        Footers = <>
        Title.Caption = #24037#21333#26085#26399
        Width = 85
      end
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'OrderNum'
        Footers = <>
        Title.Caption = #24037#21333#32534#21495
        Width = 110
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ProductType'
        Footers = <>
        Title.Caption = #20135#21697#22411#21495
        Width = 181
      end
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Amount'
        Footers = <>
        Title.Caption = #20135#21697#25968#25454
        Width = 94
      end
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'InStock'
        Footers = <>
        Title.Caption = #20132#36135#25968#37327
        Width = 137
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PassNum'
        Footers = <
          item
            Value = #38144#21806#25968#37327
            ValueType = fvtStaticText
          end>
        Title.Alignment = taLeftJustify
        Title.Caption = #33391#21697#25968#37327
        Width = 99
      end
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'EndTime'
        Footers = <
          item
            Alignment = taCenter
            DisplayFormat = '#0'
            FieldName = 'Amount'
            ValueType = fvtSum
          end>
        Title.Caption = #19981#33391#21697#25968#37327
        Width = 92
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'OnDate'
        Footers = <>
        Title.Caption = #20132#36135#26085#26399
        Width = 135
      end
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'WorkState'
        Footers = <
          item
            Value = #37329#39069#23567#35745
            ValueType = fvtStaticText
          end>
        Title.Caption = #24037#21333#29366#24577
        Width = 74
      end>
    object TRowDetailPanelControlEh
    end
  end
  object adt: TADODataSet
    Active = True
    Connection = dm_DaTa.adoconn
    CursorType = ctStatic
    CommandText = 'select  *   from  PD_OrderNumData'
    DataSource = dso
    Parameters = <>
    Left = 136
    Top = 137
    object adtId: TLargeintField
      FieldName = 'Id'
      ReadOnly = True
    end
    object adtOrderNum: TWideStringField
      FieldName = 'OrderNum'
    end
    object adtProductType: TWideStringField
      FieldName = 'ProductType'
      Size = 80
    end
    object adtOrderNumDate: TDateTimeField
      FieldName = 'OrderNumDate'
    end
    object adtAmount: TIntegerField
      FieldName = 'Amount'
    end
    object adtInStock: TIntegerField
      FieldName = 'InStock'
    end
    object adtPassNum: TIntegerField
      FieldName = 'PassNum'
    end
    object adtBadNum: TIntegerField
      FieldName = 'BadNum'
    end
    object adtWorkState: TWideStringField
      FieldName = 'WorkState'
      FixedChar = True
      Size = 10
    end
    object adtOnDate: TDateTimeField
      FieldName = 'OnDate'
    end
  end
  object dsd: TDataSetDriverEh
    ProviderDataSet = adt
    Left = 176
    Top = 137
  end
  object dso: TDataSource
    DataSet = mte
    Left = 224
    Top = 137
  end
  object mte: TMemTableEh
    Active = True
    Params = <>
    DataDriver = dsd
    Left = 272
    Top = 137
    object mteId: TLargeintField
      FieldName = 'Id'
    end
    object mteOrderNum: TWideStringField
      FieldName = 'OrderNum'
    end
    object mteProductType: TWideStringField
      FieldName = 'ProductType'
      Size = 80
    end
    object mteOrderNumDate: TDateTimeField
      FieldName = 'OrderNumDate'
    end
    object mteAmount: TIntegerField
      FieldName = 'Amount'
    end
    object mteInStock: TIntegerField
      FieldName = 'InStock'
    end
    object mtePassNum: TIntegerField
      FieldName = 'PassNum'
    end
    object mteBadNum: TIntegerField
      FieldName = 'BadNum'
    end
    object mteWorkState: TWideStringField
      FieldName = 'WorkState'
      Size = 10
    end
    object mteOnDate: TDateTimeField
      FieldName = 'OnDate'
    end
  end
  object qry: TADOQuery
    Connection = dm_DaTa.adoconn
    Parameters = <>
    Left = 320
    Top = 136
  end
end
