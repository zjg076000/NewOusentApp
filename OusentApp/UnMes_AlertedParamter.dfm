inherited FrmMes_AlertedParater: TFrmMes_AlertedParater
  BorderIcons = [biSystemMenu]
  Caption = #31995#32479#39044#35686#21442#25968#35774#32622
  ClientHeight = 421
  ClientWidth = 570
  Font.Charset = DEFAULT_CHARSET
  Font.Height = -11
  Font.Name = 'Tahoma'
  OnCreate = FormCreate
  ExplicitTop = -39
  ExplicitWidth = 586
  ExplicitHeight = 459
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel2: TRzPanel [0]
    Left = 0
    Top = 28
    Width = 570
    Height = 122
    Align = alTop
    BorderOuter = fsFlat
    BorderSides = [sdBottom]
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    ExplicitWidth = 757
    object Label1: TLabel
      Left = 24
      Top = 20
      Width = 48
      Height = 13
      Caption = #20135#21697#22411#21495
    end
    object Label2: TLabel
      Left = 24
      Top = 53
      Width = 48
      Height = 13
      Caption = #39044#35686#24320#21551
    end
    object Label3: TLabel
      Left = 24
      Top = 93
      Width = 48
      Height = 13
      Caption = #20572#32447#24320#21551
    end
    object ComboBox1: TComboBox
      Left = 88
      Top = 16
      Width = 153
      Height = 21
      BevelEdges = [beRight, beBottom]
      BevelKind = bkFlat
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
      Text = 'OS-SP12-3110D'
    end
    object ToggleSwitch1: TToggleSwitch
      Left = 88
      Top = 52
      Width = 72
      Height = 20
      FrameColor = clSilver
      TabOrder = 1
      ThumbColor = clFuchsia
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 570
    GradientDirection = gdHorizontalBox
    TabOrder = 1
    ExplicitWidth = 454
    inherited RzToolbarButton1: TRzToolbarButton
      Left = 507
      ExplicitLeft = 391
    end
    object AdvSmoothLabel1: TAdvSmoothLabel
      Left = 2
      Top = 3
      Width = 183
      Height = 19
      Fill.ColorMirror = clNone
      Fill.ColorMirrorTo = clNone
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtSolid
      Fill.BorderColor = clNone
      Fill.Rounding = 0
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      Caption.Text = #20135#21697#39044#35686#21442#25968#39044#35686#38400#38376#20540
      Caption.Font.Charset = GB2312_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -14
      Caption.Font.Name = #24494#36719#38597#40657
      Caption.Font.Style = [fsBold]
      Caption.ColorStart = clSkyBlue
      Caption.ColorEnd = clBlue
      CaptionShadow.Text = #20135#21697#39044#35686#21442#25968#39044#35686#38400#38376#20540
      CaptionShadow.Font.Charset = DEFAULT_CHARSET
      CaptionShadow.Font.Color = clWindowText
      CaptionShadow.Font.Height = -27
      CaptionShadow.Font.Name = 'Tahoma'
      CaptionShadow.Font.Style = []
      Version = '1.6.0.2'
    end
  end
  object ToggleSwitch2: TToggleSwitch
    Left = 88
    Top = 120
    Width = 72
    Height = 20
    FrameColor = clSilver
    TabOrder = 2
    ThumbColor = clFuchsia
  end
  object RzPanel3: TRzPanel
    Left = 0
    Top = 150
    Width = 570
    Height = 179
    Align = alTop
    BorderOuter = fsFlat
    BorderSides = [sdBottom]
    Ctl3D = False
    GradientDirection = gdBigSquareBox
    ParentCtl3D = False
    TabOrder = 3
    object Label4: TLabel
      Left = 24
      Top = 20
      Width = 60
      Height = 13
      Caption = #39044#35686#33391#21697#29575
    end
    object Label5: TLabel
      Left = 24
      Top = 60
      Width = 72
      Height = 13
      Caption = #39044#35686#19981#33391#21697#29575
    end
    object Label6: TLabel
      Left = 26
      Top = 94
      Width = 60
      Height = 13
      Caption = #20572#32447#33391#21697#29575
    end
    object Label7: TLabel
      Left = 167
      Top = 19
      Width = 11
      Height = 13
      Caption = '%'
    end
    object Label9: TLabel
      Left = 167
      Top = 95
      Width = 11
      Height = 13
      Caption = '%'
    end
    object Label10: TLabel
      Left = 26
      Top = 129
      Width = 60
      Height = 13
      Caption = #20572#32447#19981#33391#25968
    end
    object Label8: TLabel
      Left = 167
      Top = 61
      Width = 19
      Height = 13
      Caption = 'PCS'
    end
    object Label12: TLabel
      Left = 167
      Top = 128
      Width = 19
      Height = 13
      Caption = 'PCS'
    end
    object btn_Select: TSpeedButton
      Left = 119
      Top = 157
      Width = 20
      Height = 20
      Caption = #8595
    end
    object AdvSmoothLabel2: TAdvSmoothLabel
      Left = 0
      Top = 155
      Width = 118
      Height = 19
      Fill.ColorMirror = clNone
      Fill.ColorMirrorTo = clNone
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtSolid
      Fill.BorderColor = clNone
      Fill.Rounding = 0
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      Caption.Text = #39044#35686#25910#20214#20154#37038#31665
      Caption.Font.Charset = GB2312_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -14
      Caption.Font.Name = #24494#36719#38597#40657
      Caption.Font.Style = [fsBold]
      Caption.ColorStart = clSkyBlue
      Caption.ColorEnd = clBlue
      CaptionShadow.Text = #39044#35686#25910#20214#20154#37038#31665
      CaptionShadow.Font.Charset = DEFAULT_CHARSET
      CaptionShadow.Font.Color = clWindowText
      CaptionShadow.Font.Height = -27
      CaptionShadow.Font.Name = 'Tahoma'
      CaptionShadow.Font.Style = []
      Version = '1.6.0.2'
    end
    object edt_OKrate: TEdit
      Left = 128
      Top = 16
      Width = 33
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
      Text = '92'
    end
    object Edit1: TEdit
      Left = 128
      Top = 58
      Width = 33
      Height = 19
      Alignment = taCenter
      BevelEdges = [beBottom]
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clFuchsia
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = '3'
    end
    object Edit2: TEdit
      Left = 128
      Top = 92
      Width = 33
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
      Text = '87'
    end
    object Edit3: TEdit
      Left = 128
      Top = 127
      Width = 33
      Height = 19
      Alignment = taCenter
      BevelEdges = [beBottom]
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clFuchsia
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Text = '7'
    end
  end
  object RzPanel4: TRzPanel
    Left = 0
    Top = 329
    Width = 570
    Height = 141
    Align = alTop
    BorderOuter = fsFlat
    BorderSides = [sdBottom]
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
    ExplicitTop = 337
    ExplicitWidth = 550
    object mmo_Personlist: TRzMemo
      Left = 9
      Top = 4
      Width = 552
      Height = 75
      BevelEdges = [beBottom]
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      Lines.Strings = (
        
          #26446#24635'<john@ousent.com>,   kimball<kimball@ousent.com>,   '#36213#24314#19996'<j.d@ou' +
          'sent.com>'
        
          ',   '#20309#35859#25104'<heweicheng@ousent.com>,   nicole<nicole@ousent.com>,    ' +
          #32993#24635
        
          '<kevin@ousent.com>,   '#26472#38647'<ryan@ousent.com>,   murphy<murphy@ousen' +
          't.com>, '
        '  zhoujingang<zhoujingang@ousent.com>,   wings<wings@ousent.com>'
        '')
      ParentFont = False
      TabOrder = 0
    end
  end
end
