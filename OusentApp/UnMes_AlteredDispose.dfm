inherited FrmMes_AlteredDispose: TFrmMes_AlteredDispose
  BorderIcons = [biSystemMenu]
  Caption = #20135#21697#39044#35686#22788#29702
  ClientHeight = 442
  ClientWidth = 650
  Font.Charset = DEFAULT_CHARSET
  Font.Height = -11
  Font.Name = 'Tahoma'
  Position = poMainFormCenter
  ExplicitWidth = 666
  ExplicitHeight = 480
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzPanel1: TRzPanel
    Width = 650
    GradientDirection = gdHorizontalBox
    ExplicitWidth = 525
    inherited RzToolbarButton1: TRzToolbarButton
      Left = 587
    end
    object AdvSmoothLabel1: TAdvSmoothLabel
      Left = 2
      Top = 3
      Width = 103
      Height = 19
      Fill.ColorMirror = clNone
      Fill.ColorMirrorTo = clNone
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtSolid
      Fill.BorderColor = clNone
      Fill.Rounding = 0
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      Caption.Text = #20135#21697#39044#35686#22788#29702
      Caption.Font.Charset = GB2312_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -14
      Caption.Font.Name = #24494#36719#38597#40657
      Caption.Font.Style = [fsBold]
      Caption.ColorStart = clSkyBlue
      Caption.ColorEnd = clBlue
      CaptionShadow.Text = #20135#21697#39044#35686#22788#29702
      CaptionShadow.Font.Charset = DEFAULT_CHARSET
      CaptionShadow.Font.Color = clWindowText
      CaptionShadow.Font.Height = -27
      CaptionShadow.Font.Name = 'Tahoma'
      CaptionShadow.Font.Style = []
      Version = '1.6.0.2'
    end
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 58
    Width = 650
    Height = 83
    Align = alTop
    BorderOuter = fsFlat
    BorderSides = [sdBottom]
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    ExplicitTop = 52
    ExplicitWidth = 749
    object Label2: TLabel
      Left = 24
      Top = 17
      Width = 48
      Height = 13
      Caption = #20135#32447#32534#21495
    end
    object Label3: TLabel
      Left = 24
      Top = 49
      Width = 48
      Height = 13
      Caption = #20135#21697#22411#21495
    end
    object Label4: TLabel
      Left = 232
      Top = 17
      Width = 36
      Height = 13
      Caption = #24037#21333#21495
    end
    object Label5: TLabel
      Left = 232
      Top = 49
      Width = 48
      Height = 13
      Caption = #29983#20135#25968#37327
    end
    object Label8: TLabel
      Left = 391
      Top = 49
      Width = 19
      Height = 13
      Caption = 'PCS'
    end
    object edt_OKrate: TEdit
      Left = 88
      Top = 15
      Width = 57
      Height = 19
      Alignment = taCenter
      BevelEdges = [beBottom]
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = 'P01'
    end
    object Edit1: TEdit
      Left = 288
      Top = 15
      Width = 129
      Height = 19
      Alignment = taCenter
      BevelEdges = [beBottom]
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = '20190313001'
    end
    object Edit2: TEdit
      Left = 88
      Top = 47
      Width = 129
      Height = 19
      Alignment = taCenter
      BevelEdges = [beBottom]
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Text = 'OS-SP12-3110D'
    end
    object Edit3: TEdit
      Left = 291
      Top = 47
      Width = 89
      Height = 19
      Alignment = taCenter
      BevelEdges = [beBottom]
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Text = '500'
    end
  end
  object RzPanel3: TRzPanel
    Left = 0
    Top = 28
    Width = 650
    Height = 30
    Align = alTop
    BorderOuter = fsFlat
    BorderSides = [sdBottom]
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    ExplicitWidth = 749
    object lbl2: TLabel
      Left = 24
      Top = 7
      Width = 48
      Height = 13
      Caption = #39044#35686#32534#21495
    end
    object cbb1: TComboBox
      Left = 88
      Top = 3
      Width = 153
      Height = 21
      BevelEdges = [beRight, beBottom]
      BevelKind = bkFlat
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
      Text = 'WX20190315001'
    end
  end
  object rzpnl1: TRzPanel
    Left = 0
    Top = 141
    Width = 650
    Height = 28
    Align = alTop
    BorderOuter = fsFlat
    BorderSides = [sdBottom]
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    ExplicitWidth = 749
    object AdvSmoothLabel2: TAdvSmoothLabel
      Left = 9
      Top = 2
      Width = 176
      Height = 19
      Fill.ColorMirror = clNone
      Fill.ColorMirrorTo = clNone
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtSolid
      Fill.BorderColor = clNone
      Fill.Rounding = 0
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      Caption.Text = #39044#35686#21407#22240#65288#31995#32479#21028#26029#65289
      Caption.Font.Charset = GB2312_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -14
      Caption.Font.Name = #24494#36719#38597#40657
      Caption.Font.Style = []
      Caption.ColorStart = clSkyBlue
      Caption.ColorEnd = clBlue
      CaptionShadow.Text = #39044#35686#21407#22240#65288#31995#32479#21028#26029#65289
      CaptionShadow.Font.Charset = DEFAULT_CHARSET
      CaptionShadow.Font.Color = clWindowText
      CaptionShadow.Font.Height = -27
      CaptionShadow.Font.Name = 'Tahoma'
      CaptionShadow.Font.Style = []
      Version = '1.6.0.2'
    end
    object AdvSmoothLabel3: TAdvSmoothLabel
      Left = 353
      Top = 1
      Width = 176
      Height = 19
      Fill.ColorMirror = clNone
      Fill.ColorMirrorTo = clNone
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtSolid
      Fill.BorderColor = clNone
      Fill.Rounding = 0
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      Caption.Text = #26681#26412#21407#22240#65288#24037#31243#24072#21028#23450#65289
      Caption.Font.Charset = GB2312_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -14
      Caption.Font.Name = #24494#36719#38597#40657
      Caption.Font.Style = []
      Caption.ColorStart = clSkyBlue
      Caption.ColorEnd = clBlue
      CaptionShadow.Text = #26681#26412#21407#22240#65288#24037#31243#24072#21028#23450#65289
      CaptionShadow.Font.Charset = DEFAULT_CHARSET
      CaptionShadow.Font.Color = clWindowText
      CaptionShadow.Font.Height = -27
      CaptionShadow.Font.Name = 'Tahoma'
      CaptionShadow.Font.Style = []
      Version = '1.6.0.2'
    end
  end
  object RzPanel4: TRzPanel
    Left = 0
    Top = 169
    Width = 650
    Height = 88
    Align = alTop
    BorderOuter = fsFlat
    BorderSides = [sdBottom]
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
    ExplicitWidth = 749
    object RzPanel5: TRzPanel
      Left = 0
      Top = 0
      Width = 345
      Height = 87
      Align = alLeft
      BorderOuter = fsFlat
      BorderSides = [sdLeft, sdRight]
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object RichEdit1: TRichEdit
        Left = 1
        Top = 0
        Width = 343
        Height = 87
        Align = alClient
        BorderStyle = bsNone
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Lines.Strings = (
          #26080#27861#20889#20837'SN('#20135#21697#24207#21015#21495#65289)
        ParentFont = False
        TabOrder = 0
        Zoom = 100
        ExplicitWidth = 336
      end
    end
    object RichEdit2: TRichEdit
      Left = 345
      Top = 0
      Width = 305
      Height = 87
      Align = alClient
      BorderStyle = bsNone
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        #31995#32479#26816#27979#19981#21040#20135#21697','#37329#25163#25351#25509#35302#19981#33391)
      ParentFont = False
      TabOrder = 1
      Zoom = 100
      ExplicitLeft = 376
      ExplicitWidth = 373
    end
  end
  object RzPanel6: TRzPanel
    Left = 0
    Top = 257
    Width = 650
    Height = 28
    Align = alTop
    BorderOuter = fsFlat
    BorderSides = [sdBottom]
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 5
    ExplicitTop = 177
    object AdvSmoothLabel4: TAdvSmoothLabel
      Left = 9
      Top = 2
      Width = 88
      Height = 19
      Fill.ColorMirror = clNone
      Fill.ColorMirrorTo = clNone
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtSolid
      Fill.BorderColor = clNone
      Fill.Rounding = 0
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      Caption.Text = #32416#27491#25514#26045
      Caption.Font.Charset = GB2312_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -14
      Caption.Font.Name = #24494#36719#38597#40657
      Caption.Font.Style = []
      Caption.ColorStart = clSkyBlue
      Caption.ColorEnd = clBlue
      CaptionShadow.Text = #32416#27491#25514#26045
      CaptionShadow.Font.Charset = DEFAULT_CHARSET
      CaptionShadow.Font.Color = clWindowText
      CaptionShadow.Font.Height = -27
      CaptionShadow.Font.Name = 'Tahoma'
      CaptionShadow.Font.Style = []
      Version = '1.6.0.2'
    end
    object AdvSmoothLabel5: TAdvSmoothLabel
      Left = 353
      Top = 1
      Width = 80
      Height = 19
      Fill.ColorMirror = clNone
      Fill.ColorMirrorTo = clNone
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtSolid
      Fill.BorderColor = clNone
      Fill.Rounding = 0
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      Caption.Text = #39044#38450#25514#26045
      Caption.Font.Charset = GB2312_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -14
      Caption.Font.Name = #24494#36719#38597#40657
      Caption.Font.Style = []
      Caption.ColorStart = clSkyBlue
      Caption.ColorEnd = clBlue
      CaptionShadow.Text = #39044#38450#25514#26045
      CaptionShadow.Font.Charset = DEFAULT_CHARSET
      CaptionShadow.Font.Color = clWindowText
      CaptionShadow.Font.Height = -27
      CaptionShadow.Font.Name = 'Tahoma'
      CaptionShadow.Font.Style = []
      Version = '1.6.0.2'
    end
  end
  object RzPanel7: TRzPanel
    Left = 0
    Top = 285
    Width = 650
    Height = 88
    Align = alTop
    BorderOuter = fsFlat
    BorderSides = [sdBottom]
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 6
    ExplicitTop = 177
    object RzPanel8: TRzPanel
      Left = 0
      Top = 0
      Width = 345
      Height = 87
      Align = alLeft
      BorderOuter = fsFlat
      BorderSides = [sdLeft, sdRight]
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object RichEdit3: TRichEdit
        Left = 1
        Top = 0
        Width = 343
        Height = 87
        Align = alClient
        BorderStyle = bsNone
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Lines.Strings = (
          #32500#20462#37329#25163#25351#30340#25509#35302#28857#25110#26356#25442#37329#25163#25351)
        ParentFont = False
        TabOrder = 0
        Zoom = 100
      end
    end
    object RichEdit4: TRichEdit
      Left = 345
      Top = 0
      Width = 305
      Height = 87
      Align = alClient
      BorderStyle = bsNone
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        #35843#25972#23545'PCB'#26469#26009#30340'AQL'#25277#26679#26041#26696)
      ParentFont = False
      TabOrder = 1
      Zoom = 100
    end
  end
  object RzPanel9: TRzPanel
    Left = 0
    Top = 373
    Width = 650
    Height = 28
    Align = alTop
    BorderOuter = fsFlat
    BorderSides = [sdBottom]
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 7
    ExplicitTop = 405
    object Label1: TLabel
      Left = 13
      Top = 6
      Width = 48
      Height = 13
      Caption = #22788#29702#20154#21592
    end
    object Label6: TLabel
      Left = 216
      Top = 5
      Width = 48
      Height = 13
      Caption = #22788#29702#37096#38376
    end
    object Label7: TLabel
      Left = 409
      Top = 6
      Width = 48
      Height = 13
      Caption = #22788#29702#26102#38388
    end
    object Edit4: TEdit
      Left = 77
      Top = 3
      Width = 87
      Height = 19
      Alignment = taCenter
      BevelEdges = [beBottom]
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = #38472#39134#36828
    end
    object Edit5: TEdit
      Left = 275
      Top = 3
      Width = 87
      Height = 19
      Alignment = taCenter
      BevelEdges = [beBottom]
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = #24037#31243#37096
    end
    object Edit6: TEdit
      Left = 468
      Top = 4
      Width = 179
      Height = 19
      Alignment = taCenter
      BevelEdges = [beBottom]
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Text = '2019-03-18 14:30'
    end
  end
  object RzPanel10: TRzPanel
    Left = 0
    Top = 401
    Width = 650
    Height = 41
    Align = alClient
    BorderOuter = fsFlat
    BorderSides = []
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 8
    ExplicitLeft = 8
    ExplicitTop = 421
    ExplicitHeight = 28
    object Label9: TLabel
      Left = 11
      Top = 13
      Width = 48
      Height = 13
      Caption = #39044#35686#20851#38381
    end
    object btnSaveAdd: TSpeedButton
      Left = 213
      Top = 9
      Width = 84
      Height = 27
      Caption = #22788#29702#25552#20132
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000030000000E000000150000000C0000
        0002000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000200000012072B199C136940FF051E127A0000
        000C000000010000000000000000000000000000000000000000000000000000
        0000000000000000000200000010082D1B9A278B63FF3CB58BFF16623FF4020B
        063D000000060000000000000000000000000000000000000000000000000000
        0000000000020000000E082F1C972C9068FF45C097FF44BF96FF36A67DFF0C46
        2BCE000000150000000200000000000000000000000000000000000000000000
        00010000000C09321F9430966FFF56CAA4FF95E3C8FF7BD7B8FF48C39AFF2A8D
        65FF082B1A8A0000000C00000001000000000000000000000000000000000000
        00060A352190349B75FF7BDBBBFFACE9D3FF4EA07EFF6DB99AFF7DDABBFF4CC4
        9DFF1F7852FC03120B4800000007000000010000000000000000000000000000
        00084B8E60FF99E8CEFF90D0B7FF287F5BEF09281B680E422D9A6EBA9DFF75D9
        B7FF4ABE97FF196747E70209062B000000040000000000000000000000000000
        0003082016494D9063FF14573CB2020B0723000000070000000C135239B280CA
        AEFF71D8B8FF46B691FF135639CA000101140000000200000000000000000000
        0000000000030000000600000005000000020000000000000002010302121A63
        44C28CD3B9FF7ADDBEFF3FAA84FF0D432CA10000000D00000002000000000000
        0000000000000000000000000000000000000000000000000000000000020105
        03151B6748C484CFB3FF81E1C4FF38A27BFF0B34237D00000007000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000101030210175E42B27ECCAFFF97E9D0FF4E9265FF00000009000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010002010B15573DA5509769FF0822184A00000004000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000100000004000000060000000300000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object ToggleSwitch1: TToggleSwitch
      Left = 75
      Top = 11
      Width = 72
      Height = 20
      FrameColor = clSilver
      TabOrder = 0
      ThumbColor = clFuchsia
    end
  end
end
