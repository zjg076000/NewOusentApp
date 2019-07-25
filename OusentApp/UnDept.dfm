inherited FrmDept: TFrmDept
  Tag = 1005
  Caption = 'FrmDept'
  ClientHeight = 578
  ClientWidth = 1170
  Font.Charset = DEFAULT_CHARSET
  Font.Height = -11
  Font.Name = 'Tahoma'
  WindowState = wsMaximized
  ExplicitWidth = 1186
  ExplicitHeight = 616
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzPanel1: TRzPanel
    Width = 1170
    ExplicitWidth = 1170
    inherited RzToolbarButton1: TRzToolbarButton
      Tag = 1005
      Left = 1107
      ExplicitLeft = 1107
    end
    object advsmthlbl1: TAdvSmoothLabel
      Left = -6
      Top = 4
      Width = 323
      Height = 18
      Fill.ColorMirror = clNone
      Fill.ColorMirrorTo = clNone
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtSolid
      Fill.BorderColor = clNone
      Fill.Rounding = 0
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      Caption.Text = #29983#20135#36861#28335#31995#32479#65288'MES)  V.3.0-'#37096#38376#36164#26009
      Caption.Font.Charset = GB2312_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -14
      Caption.Font.Name = #24494#36719#38597#40657
      Caption.Font.Style = [fsBold]
      Caption.ColorStart = clSkyBlue
      Caption.ColorEnd = clGreen
      CaptionShadow.Text = #29983#20135#36861#28335#31995#32479#65288'MES)  V.3.0-'#37096#38376#36164#26009
      CaptionShadow.Font.Charset = DEFAULT_CHARSET
      CaptionShadow.Font.Color = clWindowText
      CaptionShadow.Font.Height = -29
      CaptionShadow.Font.Name = 'Tahoma'
      CaptionShadow.Font.Style = []
      Version = '1.6.0.2'
    end
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 28
    Width = 233
    Height = 550
    Align = alLeft
    BorderOuter = fsFlat
    BorderSides = [sdLeft, sdRight, sdBottom]
    TabOrder = 1
    object RzPanel3: TRzPanel
      Left = 1
      Top = 0
      Width = 231
      Height = 29
      Align = alTop
      BorderOuter = fsFlat
      BorderSides = [sdBottom]
      TabOrder = 0
      object Label1: TLabel
        Left = 9
        Top = 6
        Width = 48
        Height = 13
        Caption = #37096#38376#21015#34920
      end
    end
    object TreeView1: TTreeView
      Left = 1
      Top = 29
      Width = 231
      Height = 520
      Align = alClient
      BevelEdges = []
      BevelKind = bkFlat
      BorderStyle = bsNone
      Ctl3D = True
      Images = ImageList1
      Indent = 19
      ParentCtl3D = False
      TabOrder = 1
      OnChange = TreeView1Change
    end
  end
  object RzPanel4: TRzPanel
    Left = 233
    Top = 28
    Width = 937
    Height = 550
    Align = alClient
    BorderOuter = fsFlat
    BorderSides = []
    TabOrder = 2
    object Splitter1: TSplitter
      Left = 513
      Top = 129
      Height = 421
      Align = alRight
      ExplicitLeft = 368
      ExplicitTop = 296
      ExplicitHeight = 100
    end
    object RzPanel5: TRzPanel
      Left = 0
      Top = 0
      Width = 937
      Height = 29
      Align = alTop
      BorderOuter = fsFlat
      BorderSides = [sdBottom]
      TabOrder = 0
      object Label2: TLabel
        Left = 17
        Top = 8
        Width = 108
        Height = 13
        Caption = #12304'xxxxxx'#12305#20154#21592#36164#26009
      end
    end
    object RzPanel8: TRzPanel
      Left = 0
      Top = 29
      Width = 937
      Height = 100
      Align = alTop
      BorderOuter = fsFlat
      BorderSides = [sdBottom]
      TabOrder = 1
      object Label3: TLabel
        Left = 25
        Top = 14
        Width = 3
        Height = 13
      end
      object Label5: TLabel
        Left = 33
        Top = 26
        Width = 48
        Height = 13
        Caption = #37096#38376#21517#31216
      end
      object DBEdit1: TDBEdit
        Left = 104
        Top = 24
        Width = 137
        Height = 21
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        DataField = 'DeptName'
        DataSource = dso_dept
        ParentCtl3D = False
        TabOrder = 0
      end
      object RzPanel10: TRzPanel
        Left = 0
        Top = 70
        Width = 937
        Height = 29
        Align = alBottom
        BorderOuter = fsFlat
        BorderSides = [sdTop]
        TabOrder = 1
        object AdvGlowButton2: TAdvGlowButton
          Tag = 3002
          Left = 8
          Top = 0
          Width = 105
          Height = 28
          Caption = #22686#21152#21516#32423#37096#38376
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            61000000E149444154384FA593ED0D01411445CF564007A88012A8001D50012A
            A003AB0274A00351013A500215902BF3D63399C8CACC1F76DEDCF3BE0B324F91
            D0378125D0077AC17E010EC006B87B4D0C98006B4090D491781A606FBB0748BC
            AD99D1D820066803E784E77DB81B466045D2513A06288159C2FB20DC1D13B605
            501AE006B4FE049C5468033C9D5861EF5CF5F5D7BA31077C3A450A20B101AE01
            D40DBF028C9CB30A909D427611D5464D5B232AA4A64FC787ADEF07204DD5465D
            660D92391644E9C491985D9EF5C622FB1A657BA43D588565B2EAAB1BD69D9FCB
            5473153ECF5ECD1C2E11142443C20000000049454E44AE426082}
          Transparent = True
          TabOrder = 0
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
        object AdvGlowButton7: TAdvGlowButton
          Tag = 3002
          Left = 115
          Top = 0
          Width = 105
          Height = 28
          Caption = #22686#21152#19979#32423#37096#38376
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            61000000E149444154384FA593ED0D01411445CF564007A88012A8001D50012A
            A003AB0274A00351013A500215902BF3D63399C8CACC1F76DEDCF3BE0B324F91
            D0378125D0077AC17E010EC006B87B4D0C98006B4090D491781A606FBB0748BC
            AD99D1D820066803E784E77DB81B466045D2513A06288159C2FB20DC1D13B605
            501AE006B4FE049C5468033C9D5861EF5CF5F5D7BA31077C3A450A20B101AE01
            D40DBF028C9CB30A909D427611D5464D5B232AA4A64FC787ADEF07204DD5465D
            660D92391644E9C491985D9EF5C622FB1A657BA43D588565B2EAAB1BD69D9FCB
            5473153ECF5ECD1C2E11142443C20000000049454E44AE426082}
          Transparent = True
          TabOrder = 1
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
        object AdvGlowButton3: TAdvGlowButton
          Tag = 3002
          Left = 441
          Top = 1
          Width = 64
          Height = 28
          Caption = #21024#38500
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000009249444154384F6364A0103052A89F61101A7053963980F11FD303B5
            A7BF2F207BEFBA0C8B0313E37F01F5C77F37208B637801A49091897103D35F06
            079821D765591318191926208BC10CC11A06C81AFE323118E0D20C32046720C2
            0C0129C266335E1780246106FC6760FCC0FCF77F007A98D0CE0BA058F8CFC8B4
            80EC40C4158D207190B3094623A9497B10266552BD000084494F1164D2B7AA00
            00000049454E44AE426082}
          Transparent = True
          TabOrder = 2
          Visible = False
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
    end
    object RzPanel6: TRzPanel
      Left = 516
      Top = 129
      Width = 421
      Height = 421
      Align = alRight
      BorderOuter = fsFlat
      BorderSides = [sdRight]
      TabOrder = 2
      object RzPanel12: TRzPanel
        Left = 0
        Top = 0
        Width = 420
        Height = 29
        Align = alTop
        BorderOuter = fsFlat
        BorderSides = [sdBottom]
        TabOrder = 0
        object lbl_User: TLabel
          Left = 17
          Top = 6
          Width = 108
          Height = 13
          Caption = #12304'xxxxxx'#12305#29992#25143#36164#26009
        end
      end
      object RzPanel13: TRzPanel
        Left = 0
        Top = 392
        Width = 420
        Height = 29
        Align = alBottom
        BorderOuter = fsFlat
        BorderSides = [sdTop]
        TabOrder = 1
        object AdvGlowButton5: TAdvGlowButton
          Tag = 3002
          Left = 8
          Top = 0
          Width = 65
          Height = 28
          Caption = #22686#21152
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            61000000E149444154384FA593ED0D01411445CF564007A88012A8001D50012A
            A003AB0274A00351013A500215902BF3D63399C8CACC1F76DEDCF3BE0B324F91
            D0378125D0077AC17E010EC006B87B4D0C98006B4090D491781A606FBB0748BC
            AD99D1D820066803E784E77DB81B466045D2513A06288159C2FB20DC1D13B605
            501AE006B4FE049C5468033C9D5861EF5CF5F5D7BA31077C3A450A20B101AE01
            D40DBF028C9CB30A909D427611D5464D5B232AA4A64FC787ADEF07204DD5465D
            660D92391644E9C491985D9EF5C622FB1A657BA43D588565B2EAAB1BD69D9FCB
            5473153ECF5ECD1C2E11142443C20000000049454E44AE426082}
          Transparent = True
          TabOrder = 0
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
        object AdvGlowButton6: TAdvGlowButton
          Tag = 3002
          Left = 89
          Top = 0
          Width = 64
          Height = 28
          Caption = #21024#38500
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000009249444154384F6364A0103052A89F61101A7053963980F11FD303B5
            A7BF2F207BEFBA0C8B0313E37F01F5C77F37208B637801A49091897103D35F06
            079821D765591318191926208BC10CC11A06C81AFE323118E0D20C32046720C2
            0C0129C266335E1780246106FC6760FCC0FCF77F007A98D0CE0BA058F8CFC8B4
            80EC40C4158D207190B3094623A9497B10266552BD000084494F1164D2B7AA00
            00000049454E44AE426082}
          Transparent = True
          TabOrder = 1
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
      object Grd01: TDBGridEh
        Left = 0
        Top = 29
        Width = 420
        Height = 363
        Align = alClient
        AllowedSelections = [gstRecordBookmarks, gstRectangle, gstAll]
        BorderStyle = bsNone
        ColumnDefValues.AlwaysShowEditButton = True
        ColumnDefValues.Title.TitleButton = True
        ColumnDefValues.ToolTips = True
        Ctl3D = True
        DataSource = dsoUser
        DynProps = <>
        EditActions = [geaCopyEh, geaSelectAllEh]
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
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
        RowDetailPanel.Height = 350
        RowDetailPanel.BevelEdges = []
        RowDetailPanel.BevelInner = bvNone
        RowDetailPanel.BevelOuter = bvNone
        RowDetailPanel.BorderStyle = bsNone
        RowHeight = 20
        RowSizingAllowed = True
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
            FieldName = 'UserCode'
            Footers = <>
            Title.Caption = #29992#25143#32534#21495
            Width = 71
          end
          item
            Alignment = taLeftJustify
            AlwaysShowEditButton = False
            AutoDropDown = True
            CellButtons = <>
            CellDataIsLink = True
            DropDownBox.ColumnDefValues.AutoDropDown = True
            DropDownBox.ColumnDefValues.DblClickNextVal = True
            DropDownBox.ColumnDefValues.DropDownShowTitles = True
            DropDownBox.ColumnDefValues.DropDownSizing = True
            DropDownBox.ColumnDefValues.EditButtonDrawBackTime = edbtWhenHotEh
            DropDownBox.ListSourceAutoFilterType = lsftContainsEh
            DropDownSpecRow.Visible = True
            DynProps = <>
            EditButtons = <>
            FieldName = 'UserName'
            Footers = <>
            MRUList.AutoAdd = False
            Title.Alignment = taLeftJustify
            Title.Caption = #29992#25143#21517
            Width = 108
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PassWord'
            Footers = <>
            Title.Alignment = taLeftJustify
            Title.Caption = #23494#30721
            Width = 89
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'IsSelect'
            Footers = <>
            Title.Caption = #36873#25321
            Width = 60
          end>
        object TRowDetailPanelControlEh
        end
      end
    end
    object RzPanel9: TRzPanel
      Left = 0
      Top = 129
      Width = 513
      Height = 421
      Align = alClient
      BorderOuter = fsFlat
      BorderSides = [sdRight]
      TabOrder = 3
      object GRD: TDBGridEh
        Left = 0
        Top = 29
        Width = 512
        Height = 363
        Align = alClient
        AllowedSelections = [gstRecordBookmarks, gstRectangle, gstAll]
        BorderStyle = bsNone
        ColumnDefValues.AlwaysShowEditButton = True
        ColumnDefValues.Title.TitleButton = True
        ColumnDefValues.ToolTips = True
        Ctl3D = True
        DataSource = dso
        DynProps = <>
        EditActions = [geaCopyEh, geaSelectAllEh]
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        FooterParams.Color = clBtnFace
        FooterParams.FillStyle = cfstThemedEh
        FooterParams.HorzLines = True
        FooterParams.VertLines = False
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
        TabOrder = 0
        TitleParams.MultiTitle = True
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'IsSelect'
            Footers = <>
            Title.Caption = #36873#25321
            Width = 41
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PCode'
            Footers = <
              item
                Alignment = taRightJustify
                Value = #21592#24037#25968#37327#65306
                ValueType = fvtStaticText
              end>
            Title.Caption = #21592#24037#24037#21495
            Width = 96
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PName'
            Footers = <
              item
                FieldName = 'PName'
                ValueType = fvtCount
              end>
            Title.Alignment = taLeftJustify
            Title.Caption = #21592#24037#22995#21517
            Width = 109
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Sex'
            Footers = <>
            Title.Caption = #24615#21035
            Width = 59
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'IdCard'
            Footers = <>
            Title.Caption = #36523#20221#35777#21495
            Width = 111
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DeptName'
            Footers = <>
            Title.Caption = #25152#23646#37096#38376
            Width = 79
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Birthday'
            Footers = <>
            Title.Caption = #20986#29983#26085#26399
            Width = 81
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Education'
            Footers = <>
            Title.Caption = #23398#21382
            Width = 67
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'GraduateSchool'
            Footers = <>
            Title.Caption = #27605#19994#23398#26657
            Width = 101
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Email'
            Footers = <>
            Title.Caption = 'Email'#22320#22336
            Width = 93
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ContactNumber'
            Footers = <>
            Title.Caption = #32852#31995#30005#35805
            Width = 109
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Address'
            Footers = <>
            Title.Caption = #23478#24237#22320#22336
            Width = 107
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EmploymentType'
            Footers = <>
            Title.Caption = #21592#24037#31867#22411
            Width = 81
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'HireDate'
            Footers = <>
            Title.Caption = #20837#32844#26085#26399
            Width = 98
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PositiveDate'
            Footers = <>
            Title.Caption = #36716#27491#26085#26399
            Width = 79
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'IsStatus'
            Footers = <>
            Title.Caption = #21592#24037#29366#24577
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TermDate'
            Footers = <>
            Title.Caption = #31163#32844#26085#26399
            Width = 90
          end>
        object TRowDetailPanelControlEh
        end
      end
      object RzPanel7: TRzPanel
        Left = 0
        Top = 0
        Width = 512
        Height = 29
        Align = alTop
        BorderOuter = fsFlat
        BorderSides = [sdBottom]
        TabOrder = 1
        object Label4: TLabel
          Left = 17
          Top = 6
          Width = 108
          Height = 13
          Caption = #12304'xxxxxx'#12305#20154#21592#36164#26009
        end
      end
      object RzPanel11: TRzPanel
        Left = 0
        Top = 392
        Width = 512
        Height = 29
        Align = alBottom
        BorderOuter = fsFlat
        BorderSides = [sdTop]
        TabOrder = 2
        object AdvGlowButton1: TAdvGlowButton
          Tag = 3002
          Left = 8
          Top = 0
          Width = 65
          Height = 28
          Caption = #22686#21152
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            61000000E149444154384FA593ED0D01411445CF564007A88012A8001D50012A
            A003AB0274A00351013A500215902BF3D63399C8CACC1F76DEDCF3BE0B324F91
            D0378125D0077AC17E010EC006B87B4D0C98006B4090D491781A606FBB0748BC
            AD99D1D820066803E784E77DB81B466045D2513A06288159C2FB20DC1D13B605
            501AE006B4FE049C5468033C9D5861EF5CF5F5D7BA31077C3A450A20B101AE01
            D40DBF028C9CB30A909D427611D5464D5B232AA4A64FC787ADEF07204DD5465D
            660D92391644E9C491985D9EF5C622FB1A657BA43D588565B2EAAB1BD69D9FCB
            5473153ECF5ECD1C2E11142443C20000000049454E44AE426082}
          Transparent = True
          TabOrder = 0
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
        object AdvGlowButton4: TAdvGlowButton
          Tag = 3002
          Left = 89
          Top = 0
          Width = 64
          Height = 28
          Caption = #21024#38500
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000009249444154384F6364A0103052A89F61101A7053963980F11FD303B5
            A7BF2F207BEFBA0C8B0313E37F01F5C77F37208B637801A49091897103D35F06
            079821D765591318191926208BC10CC11A06C81AFE323118E0D20C32046720C2
            0C0129C266335E1780246106FC6760FCC0FCF77F007A98D0CE0BA058F8CFC8B4
            80EC40C4158D207190B3094623A9497B10266552BD000084494F1164D2B7AA00
            00000049454E44AE426082}
          Transparent = True
          TabOrder = 1
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
    end
  end
  object adt: TADODataSet
    Active = True
    Connection = dm_DaTa.adoconn
    CursorType = ctStatic
    CommandText = 
      'SELECT Hrm_Person.*, Hrm_Dept.DeptName'#13#10'FROM Hrm_Person'#13#10'LEFT JO' +
      'IN Hrm_Dept'#13#10'ON Hrm_Person.DeptId=Hrm_Dept.DeptId'
    Parameters = <>
    Left = 344
    Top = 311
  end
  object dsd: TDataSetDriverEh
    ProviderDataSet = adt
    Left = 384
    Top = 311
  end
  object dso: TDataSource
    DataSet = mte
    Left = 432
    Top = 311
  end
  object mte: TMemTableEh
    Active = True
    DetailFields = 'DeptId'
    MasterFields = 'DeptId'
    MasterSource = dso_dept
    Params = <>
    DataDriver = dsd
    AfterScroll = mteAfterScroll
    Left = 480
    Top = 311
  end
  object adtUser: TADODataSet
    Active = True
    Connection = dm_DaTa.adoconn
    CursorType = ctStatic
    CommandText = 'select * from  Sys_User'
    DataSource = dsoUser
    Parameters = <>
    Left = 864
    Top = 369
  end
  object dsdUser: TDataSetDriverEh
    ProviderDataSet = adtUser
    Left = 920
    Top = 369
  end
  object dsoUser: TDataSource
    DataSet = mteUser
    Left = 984
    Top = 377
  end
  object mteUser: TMemTableEh
    Active = True
    AggregatesActive = True
    Params = <>
    DataDriver = dsdUser
    Left = 1048
    Top = 384
  end
  object ImageList1: TImageList
    Left = 184
    Top = 164
    Bitmap = {
      494C010103000800040010001000FFFFFFFFFF00FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BBBBBB008A8A8A008A8A8A008A8A
      8A009D9D9D000000000000000000000000000000000000000000000000008E8E
      8E008A8A8A008A8A8A008A8A8A00C2C2C200000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5A5A5008A8A8A008A8A8A008A8A
      8A008A8A8A000000000000000000000000000000000000000000000000008A8A
      8A008A8A8A008A8A8A008A8A8A00A5A5A500000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000707070007070
      7000707070007070700070707000707070007070700070707000707070007070
      700070707000707070000000000000000000A5A5A5008A8A8A008A8A8A008A8A
      8A008A8A8A000000000000000000000000000000000000000000000000008A8A
      8A008A8A8A008A8A8A008A8A8A00A5A5A500000000FF000000FF000000FF0000
      00FFE3E3E300000000FF000000FF000000FF000000FF000000FF000000FFECEC
      EC00DADADA00000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ECEC
      EC00DADADA0000000000C8C8C8000000000000000000C8C8C80000000000E3E3
      E300E3E3E300000000000000000000000000A5A5A5008A8A8A008A8A8A008A8A
      8A008A8A8A000000000000000000000000000000000000000000000000008A8A
      8A008A8A8A008A8A8A008A8A8A00A5A5A500000000FF000000FF000000FF0000
      00FFB6B6B600DADADA00000000FF000000FF000000FF000000FFD1D1D1008989
      890089898900B6B6B600000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B6B6
      B600B6B6B600000000007070700000000000000000007070700000000000B6B6
      B600B6B6B600000000000000000000000000A5A5A5008A8A8A008A8A8A008A8A
      8A008A8A8A000000000000000000000000000000000000000000000000008A8A
      8A008A8A8A008A8A8A008A8A8A00A5A5A500000000FF000000FFB6B6B6000000
      00FFBFBFBF00C8C8C800000000FF000000FF000000FF000000FFECECEC008989
      8900D1D1D100ADADAD00000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B6B6
      B600B6B6B600000000007070700000000000000000007070700000000000B6B6
      B600B6B6B600000000000000000000000000A5A5A5008A8A8A008A8A8A008A8A
      8A008A8A8A000000000000000000000000000000000000000000000000008A8A
      8A008A8A8A008A8A8A008A8A8A00A5A5A500000000FF000000FF929292000000
      00FF000000FF80808000000000FF000000FF000000FF000000FFE3E3E300ADAD
      AD0092929200D1D1D100000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B6B6
      B600B6B6B600000000007070700000000000000000007070700000000000B6B6
      B600B6B6B600000000000000000000000000A5A5A5008A8A8A008A8A8A008A8A
      8A008A8A8A00D8D8D80000000000000000000000000000000000D8D8D8008A8A
      8A008A8A8A008A8A8A008A8A8A00A5A5A500000000FF000000FFB6B6B600C8C8
      C800000000FFBFBFBF00A4A4A400000000FF000000FF000000FF000000FFE3E3
      E300ECECEC00000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B6B6
      B600B6B6B600000000007070700000000000000000007070700000000000B6B6
      B600B6B6B600000000000000000000000000A5A5A5008A8A8A008A8A8A008A8A
      8A008A8A8A008A8A8A008A8A8A008A8A8A008A8A8A008A8A8A008A8A8A008A8A
      8A008A8A8A008A8A8A008A8A8A00A5A5A500000000FF000000FF000000FF9292
      9200D1D1D100000000FFBFBFBF0089898900ADADAD00ADADAD0089898900DADA
      DA00000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B6B6
      B600B6B6B600000000007070700000000000000000007070700000000000B6B6
      B600B6B6B600000000000000000000000000A5A5A5008A8A8A008A8A8A008A8A
      8A008A8A8A008A8A8A008A8A8A008A8A8A008A8A8A008A8A8A008A8A8A008A8A
      8A008A8A8A008A8A8A008A8A8A00A5A5A500000000FF000000FF000000FFECEC
      EC0070707000ADADAD00000000FF9B9B9B009292920089898900B6B6B6000000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B6B6
      B600B6B6B600000000007070700000000000000000007070700000000000B6B6
      B600B6B6B600000000000000000000000000A5A5A5008A8A8A008A8A8A008A8A
      8A008A8A8A008A8A8A008A8A8A008A8A8A008A8A8A008A8A8A008A8A8A008A8A
      8A008A8A8A008A8A8A008A8A8A00A5A5A500000000FF000000FF000000FFBFBF
      BF00D1D1D100000000FFA4A4A400DADADA00000000FF000000FFB6B6B600D1D1
      D100000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ECEC
      EC00DADADA0000000000C8C8C8000000000000000000C8C8C80000000000E3E3
      E300E3E3E300000000000000000000000000C2C2C2008A8A8A008A8A8A008A8A
      8A008A8A8A008A8A8A008A8A8A008A8A8A008A8A8A008A8A8A008A8A8A008A8A
      8A008A8A8A008A8A8A008A8A8A00C2C2C200000000FF000000FF000000FFB6B6
      B600D1D1D100000000FF92929200000000FF000000FF000000FF000000FFB6B6
      B600000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ECECEC00A4A4
      A400707070007070700070707000707070007070700070707000707070007070
      7000A4A4A400ECECEC00000000000000000000000000C9C9C9008A8A8A008A8A
      8A008A8A8A008A8A8A008A8A8A008A8A8A008A8A8A008A8A8A008A8A8A008A8A
      8A008A8A8A008A8A8A00CACACA0000000000000000FF000000FF000000FFECEC
      EC0092929200C8C8C8009B9B9B00000000FF000000FF000000FFD1D1D100BFBF
      BF00000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DADADA00929292007070700070707000707070007070700092929200DADA
      DA00000000000000000000000000000000000000000000000000E7E7E7009E9E
      9E008A8A8A008A8A8A008A8A8A008A8A8A008A8A8A008A8A8A008A8A8A008A8A
      8A009E9E9E00E7E7E7000000000000000000000000FF000000FF000000FF0000
      00FF000000FFE3E3E300E3E3E30092929200C8C8C800BFBFBF00929292000000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DADADA009292920092929200DADADA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B4B4B4008A8A8A008A8A8A008A8A8A008A8A8A008A8A8A008A8A8A00B4B4
      B40000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFC8C8C800D1D1D100000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1D1D1008F8F8F008A8A8A008A8A8A008F8F8F00D1D1D1000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7E7E7009E9E9E009E9E9E00E7E7E700000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF07E0FFFF0000FFFF07E0FFFF0000
      C00307E0F7E70000E5A707E0F3C30000E5A707E0D3C30000E5A707E0DBC30000
      E5A703C0C9E70000E5A70000E40F0000E5A70000E21F0000E5A70000E4CF0000
      E5A70000E5EF0000C0038001E1CF0000F00FC003F81F0000FC3FF00FFF3F0000
      FFFFF81FFFFF0000FFFFFC3FFFFF0000}
  end
  object query_dept: TADOQuery
    Active = True
    Connection = dm_DaTa.adoconn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from  Hrm_Dept')
    Left = 120
    Top = 284
  end
  object Adt_dept: TADODataSet
    Active = True
    Connection = dm_DaTa.adoconn
    CursorType = ctStatic
    CommandText = 'select *  from Hrm_Dept'
    Parameters = <>
    Left = 793
    Top = 57
  end
  object dso_dept: TDataSource
    DataSet = Adt_dept
    Left = 873
    Top = 68
  end
end
