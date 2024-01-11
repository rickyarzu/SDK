object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 700
  ClientWidth = 916
  Caption = 'Master Demo'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnAjaxEvent = UniFormAjaxEvent
  OnCreate = UniFormCreate
  OnDestroy = UniFormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 240
    Height = 681
    Hint = ''
    Constraints.MaxWidth = 300
    Align = alLeft
    TabOrder = 0
    BorderStyle = ubsNone
    TitleAlign = taCenter
    Title = 'Navigator'
    Caption = 'UniPanel1'
    Collapsible = True
    CollapseDirection = cdLeft
    object NavTree: TUniTreeView
      Left = 0
      Top = 52
      Width = 240
      Height = 629
      Hint = ''
      Items.FontData = {0100000000}
      Images = UniNativeImageList2
      Align = alClient
      TabOrder = 1
      ScreenMask.ShowMessage = False
      ScreenMask.Target = Owner
      ScreenMask.Color = clWhite
      ScreenMask.Opacity = 0.200000002980232200
      Color = clWindow
      BorderStyle = ubsNone
      OnLoaded = NavTreeLoaded
      OnClick = NavTreeClick
      OnCellContextClick = NavTreeCellContextClick
    end
    object UniToolBar1: TUniToolBar
      Left = 0
      Top = 0
      Width = 240
      Height = 30
      Hint = ''
      ShowHint = True
      ParentShowHint = False
      ButtonHeight = 24
      ButtonWidth = 25
      Images = UniNativeImageList1
      BorderWidth = 1
      TabOrder = 2
      ParentColor = False
      Color = clBtnFace
      object UniToolButton1: TUniToolButton
        Left = 0
        Top = 0
        Hint = 'Expand All'
        ShowHint = True
        ImageIndex = 2
        Caption = ''
        TabOrder = 1
        OnClick = UniToolButton1Click
      end
      object UniToolButton2: TUniToolButton
        Left = 25
        Top = 0
        Hint = 'Collapse All'
        ShowHint = True
        ImageIndex = 3
        Caption = ''
        TabOrder = 2
        OnClick = UniToolButton2Click
      end
      object UniToolButton4: TUniToolButton
        Left = 50
        Top = 0
        Hint = 'Close All Tabs'
        ShowHint = True
        ImageIndex = 4
        Caption = ''
        ScreenMask.Enabled = True
        ScreenMask.Message = 'Cleaning up...'
        ScreenMask.Target = Owner
        ScreenMask.Color = clWhite
        ScreenMask.Opacity = 0.349999994039535500
        TabOrder = 4
        OnClick = UniToolButton4Click
      end
      object UniToolButton7: TUniToolButton
        Left = 75
        Top = 0
        Width = 4
        Hint = ''
        ShowHint = True
        Style = tbsSeparator
        Caption = 'UniToolButton7'
        TabOrder = 3
      end
      object UniToolButton8: TUniToolButton
        Left = 79
        Top = 0
        Width = 40
        Hint = 'Favorites'
        ShowHint = True
        ImageIndex = 0
        Style = tbsDropDown
        DropdownMenu = UniFavMenu
        Caption = ''
        TabOrder = 5
      end
      object UniToolButton6: TUniToolButton
        Left = 119
        Top = 0
        Hint = 'Show source code for active frame'
        ShowHint = True
        ImageIndex = 1
        Caption = 'UniToolButton6'
        TabOrder = 6
        OnClick = UniBitBtn1Click
      end
      object UniToolButton10: TUniToolButton
        Left = 144
        Top = 0
        Width = 40
        Hint = 'Visual Theme'
        ShowHint = True
        ImageIndex = 5
        Style = tbsDropDown
        DropdownMenu = UniThemePopup
        Caption = 'UniToolButton10'
        TabOrder = 7
      end
    end
    object SearchEdit: TUniComboBox
      Left = 0
      Top = 30
      Width = 240
      Hint = ''
      Text = 'SearchEdit'
      Align = alTop
      TabOrder = 3
      MinQueryLength = 3
      CheckChangeDelay = 250
      ClearButton = True
      FieldLabelWidth = 250
      Triggers = <
        item
          ButtonId = 0
          IconCls = 'x-form-search-trigger'
          HandleClicks = True
        end>
      IconItems = <>
      OnChange = SearchEditChange
      OnTriggerEvent = SearchEditTriggerEvent
    end
  end
  object UniSplitter1: TUniSplitter
    Left = 240
    Top = 0
    Width = 6
    Height = 681
    Hint = ''
    Align = alLeft
    ParentColor = False
    Color = clBtnFace
  end
  object UniStatusBar1: TUniStatusBar
    Left = 0
    Top = 681
    Width = 916
    Height = 19
    Hint = ''
    Panels = <
      item
        Alignment = taCenter
        Width = 200
      end
      item
        Width = 200
      end>
    SizeGrip = False
    Align = alBottom
    ParentColor = False
    Color = clWindow
  end
  object UniContainerPanel2: TUniContainerPanel
    Left = 246
    Top = 0
    Width = 670
    Height = 681
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 3
    object UniContainerPanel3: TUniContainerPanel
      Left = 0
      Top = 0
      Width = 670
      Height = 45
      Hint = ''
      ParentColor = False
      Align = alTop
      TabOrder = 0
      DesignSize = (
        670
        45)
      object ThemeComboBox: TUniComboBox
        Left = 384
        Top = 10
        Width = 276
        Hint = ''
        Style = csDropDownList
        Text = ''
        Anchors = [akTop, akRight]
        TabOrder = 0
        FieldLabel = 'Theme'
        FieldLabelWidth = 50
        IconItems = <>
        OnChange = ThemeComboBoxChange
      end
    end
    object UniPageControl1: TUniPageControl
      Left = 0
      Top = 45
      Width = 670
      Height = 636
      Hint = ''
      ActivePage = UniTabSheet1
      Images = UniNativeImageList2
      Align = alClient
      TabOrder = 1
      OnChange = UniPageControl1Change
      object UniTabSheet1: TUniTabSheet
        Hint = ''
        Caption = 'Main'
        OnClose = TabSheetClose
        inline FrameMain1: TFrameMain
          Left = 0
          Top = 0
          Width = 662
          Height = 608
          OnCreate = FrameMain1Create
          Color = clWhite
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 0
          ParentColor = False
          ParentBackground = False
          ParentRTL = False
          Background.Picture.Data = {00}
          ExplicitWidth = 662
          ExplicitHeight = 608
          inherited UniContainerPanel1: TUniContainerPanel
            Width = 662
            Height = 588
            ExplicitWidth = 662
            ExplicitHeight = 588
            inherited UniImage1: TUniImage
              Width = 662
              Height = 518
              ExplicitWidth = 662
              ExplicitHeight = 518
            end
            inherited UniImage2: TUniImage
              Top = 518
              Width = 662
              ExplicitTop = 518
              ExplicitWidth = 662
            end
          end
          inherited UniLabel2: TUniLabel
            Top = 588
            Width = 662
            Height = 20
            ExplicitTop = 588
            ExplicitWidth = 662
            ExplicitHeight = 20
          end
        end
      end
    end
  end
  object UniClockTimer: TUniTimer
    Interval = 30000
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    OnTimer = UniClockTimerTimer
    Left = 62
    Top = 160
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 64
    Top = 272
    Images = {
      0600000000000000060D000000626F6F6B6D61726B3B66615F3B00000000060E
      00000066696C652D636F64653B66615F3B000000000610000000706C75732D73
      71756172653B66615F3B0000000006110000006D696E75732D7371756172653B
      66615F3B00000000060E00000074726173682D616C743B66615F3B0000000006
      0D00000079696E2D79616E673B66615F3B}
  end
  object UniPopupMenu1: TUniPopupMenu
    Left = 128
    Top = 344
    object AddtoFavorites1: TUniMenuItem
      Caption = 'Add to Favorites'
      OnClick = AddtoFavorites1Click
    end
    object RemoveFromFavorites1: TUniMenuItem
      Caption = 'Remove from Favorites'
      OnClick = RemoveFromFavorites1Click
    end
  end
  object UniNativeImageList2: TUniNativeImageList
    Left = 80
    Top = 408
  end
  object UniFavMenu: TUniPopupMenu
    Images = UniNativeImageList2
    Left = 72
    Top = 520
    object est1: TUniMenuItem
      Caption = 'Test'
    end
  end
  object UniThemePopup: TUniPopupMenu
    MaxHeight = 480
    Left = 112
    Top = 112
  end
  object UniPopupMenu3: TUniPopupMenu
    Left = 184
    Top = 72
  end
end
