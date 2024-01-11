object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 572
  ClientWidth = 768
  Caption = 'Unicode - Demo'
  Position = poDesktopCenter
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  DesignSize = (
    768
    572)
  PixelsPerInch = 96
  TextHeight = 13
  object UniToolBar1: TUniToolBar
    Left = 0
    Top = 0
    Width = 768
    Height = 29
    Hint = ''
    ButtonHeight = 21
    ButtonWidth = 68
    BorderWidth = 2
    ShowCaptions = True
    Anchors = [akLeft, akTop, akRight]
    Align = alTop
    TabOrder = 0
    object UniToolButton1: TUniToolButton
      Left = 0
      Top = 0
      Hint = ''
      Caption = 'Hello'
      OnClick = UniToolButton1Click
    end
    object UniToolButton2: TUniToolButton
      Left = 68
      Top = 0
      Hint = ''
      Caption = #20320#22909
      OnClick = UniToolButton1Click
    end
    object UniToolButton3: TUniToolButton
      Left = 136
      Top = 0
      Hint = ''
      Caption = #1587#1604#1575#1605
      OnClick = UniToolButton1Click
    end
    object UniToolButton4: TUniToolButton
      Left = 204
      Top = 0
      Hint = ''
      Caption = #1087#1088#1080#1074#1077#1090
      OnClick = UniToolButton1Click
    end
    object UniToolButton5: TUniToolButton
      Left = 272
      Top = 0
      Hint = ''
      Caption = #1605#1585#1581#1576#1575
      OnClick = UniToolButton1Click
    end
    object UniToolButton6: TUniToolButton
      Left = 340
      Top = 0
      Hint = ''
      Caption = #12371#12435#12395#12385#12399
      OnClick = UniToolButton1Click
    end
    object UniToolButton7: TUniToolButton
      Left = 408
      Top = 0
      Hint = ''
      Caption = #50504#45397#54616#49464#50836
      OnClick = UniToolButton1Click
    end
    object UniToolButton8: TUniToolButton
      Left = 476
      Top = 0
      Hint = ''
      Caption = #1513#1500#1493#1501
      OnClick = UniToolButton1Click
    end
    object UniToolButton9: TUniToolButton
      Left = 544
      Top = 0
      Hint = ''
      Caption = #3626#3623#3633#3626#3604#3637
      OnClick = UniToolButton1Click
    end
    object UniToolButton10: TUniToolButton
      Left = 612
      Top = 0
      Hint = ''
      Caption = #2344#2350#2360#2381#2340#2375
      OnClick = UniToolButton1Click
    end
    object UniToolButton11: TUniToolButton
      Left = 680
      Top = 0
      Hint = ''
      Caption = #1330#1377#1408#1381#1410' '#1345#1381#1382
      OnClick = UniToolButton1Click
    end
  end
  object UniMemo1: TUniMemo
    Left = 8
    Top = 470
    Width = 752
    Height = 94
    Hint = ''
    ParentFont = False
    Font.Color = clNavy
    Font.Style = [fsBold]
    Anchors = [akLeft, akRight, akBottom]
    ReadOnly = True
    TabOrder = 1
    ExplicitTop = 454
  end
  object UniTreeView1: TUniTreeView
    Left = 8
    Top = 35
    Width = 121
    Height = 429
    Hint = ''
    Items.NodeData = {
      030B000000280000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      00000000000105480065006C006C006F00220000000000000000000000FFFFFF
      FFFFFFFFFF0000000000000000000000000102604F7D59260000000000000000
      000000FFFFFFFFFFFFFFFF000000000000000000000000010433064406270645
      062A0000000000000000000000FFFFFFFFFFFFFFFF0000000000000000000000
      0001063F0440043804320435044204280000000000000000000000FFFFFFFFFF
      FFFFFF0000000000000000000000000105450631062D06280627062800000000
      00000000000000FFFFFFFFFFFFFFFF0000000000000000000000000105533093
      306B3061306F30280000000000000000000000FFFFFFFFFFFFFFFF0000000000
      00000000000000010548C555B158D538C194C6260000000000000000000000FF
      FFFFFFFFFFFFFF0000000000000000000000000104E905DC05D505DD052A0000
      000000000000000000FFFFFFFFFFFFFFFF00000000000000000000000001062A
      0E270E310E2A0E140E350E2A0000000000000000000000FFFFFFFFFFFFFFFF00
      0000000000000000000000010628092E0938094D092409470930000000000000
      0000000000FFFFFFFFFFFFFFFF00000000000000000000000001093205610580
      05650582052000410565056605}
    Items.FontData = {
      010B000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFF
      FF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFF
      FF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000}
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 2
    OnChange = UniTreeView1Change
    ExplicitHeight = 413
  end
  object UniDBGrid1: TUniDBGrid
    Left = 135
    Top = 62
    Width = 625
    Height = 372
    Hint = ''
    DataSource = UniMainModule.DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete]
    WebOptions.Paged = False
    LoadMask.ShowMessage = False
    LoadMask.Message = 'Loading data...'
    OnCellClick = UniDBGrid1CellClick
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 3
  end
  object UniDBNavigator1: TUniDBNavigator
    Left = 135
    Top = 440
    Width = 234
    Height = 25
    Hint = ''
    DataSource = UniMainModule.DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    Anchors = [akLeft, akBottom]
    TabOrder = 4
    ExplicitTop = 424
  end
  object UniDBEdit1: TUniDBEdit
    Left = 135
    Top = 35
    Width = 185
    Height = 21
    Hint = ''
    DataField = 'Fld1'
    DataSource = UniMainModule.DataSource1
    TabOrder = 5
  end
  object UniDBEdit2: TUniDBEdit
    Left = 353
    Top = 35
    Width = 185
    Height = 21
    Hint = ''
    DataField = 'Fld2'
    DataSource = UniMainModule.DataSource1
    Anchors = [akTop]
    TabOrder = 6
  end
  object UniDBEdit3: TUniDBEdit
    Left = 575
    Top = 35
    Width = 185
    Height = 21
    Hint = ''
    DataField = 'Fld3'
    DataSource = UniMainModule.DataSource1
    Anchors = [akTop, akRight]
    TabOrder = 7
  end
end
