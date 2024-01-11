object MainForm: TMainForm
  Left = 0
  Top = 0
  Width = 840
  Height = 639
  Caption = 'MainForm'
  ClientHeight = 605
  ClientWidth = 832
  Color = clBtnFace
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel2: TUniPanel
    Left = 0
    Top = 0
    Width = 140
    Height = 605
    BorderStyle = ubsNone
    Alignment = taCenter
    Caption = 'UniPanel2'
    Align = alLeft
    Anchors = [akLeft, akTop, akBottom]
    Color = clBtnFace
    TabOrder = 0
    DesignSize = (
      140
      605)
    object UniLabel1: TUniLabel
      Left = 8
      Top = 21
      Width = 65
      Height = 13
      Caption = 'UniLabel1'
    end
    object UniListBox1: TUniListBox
      Left = 8
      Top = 40
      Width = 121
      Height = 138
      Items.Strings = (
        'Item-0'
        'Item-1'
        'Item-2'
        'Item-3'
        'Item-4'
        'Item-5'
        'Item-6'
        'Item-7')
      ItemIndex = -1
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
      OnClick = UniListBox1Click
    end
    object UniPanel1: TUniPanel
      Left = 8
      Top = 184
      Width = 121
      Height = 413
      Alignment = taCenter
      Caption = 'UniPanel1'
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clBtnFace
      TabOrder = 3
      object UniButton1: TUniButton
        Left = 24
        Top = 16
        Width = 75
        Height = 25
        Caption = 'UniButton1'
        TabOrder = 0
        OnClick = UniButton1Click
      end
    end
  end
  object UniPanel3: TUniPanel
    Left = 145
    Top = 0
    Width = 687
    Height = 605
    BorderStyle = ubsNone
    Alignment = taCenter
    Caption = 'UniPanel3'
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clBtnFace
    TabOrder = 1
    ExplicitLeft = 144
    ExplicitWidth = 688
    DesignSize = (
      687
      605)
    object UniLabel2: TUniLabel
      Left = 6
      Top = 21
      Width = 65
      Height = 13
      Caption = 'UniLabel2'
    end
    object UniSpeedButton1: TUniSpeedButton
      Left = 660
      Top = 8
      Width = 23
      Height = 22
      Hint = 'Close'
      ShowHint = True
      ParentShowHint = False
      Down = False
      GroupIndex = 0
      AllowAllUp = False
      Caption = 'X'
      Anchors = [akTop, akRight]
      ParentFont = False
      Font.Style = [fsBold]
      ParentColor = False
      Color = clBtnFace
      OnClick = UniSpeedButton1Click
      ExplicitLeft = 661
    end
    object UniMemo1: TUniMemo
      Left = 6
      Top = 40
      Width = 677
      Height = 138
      Lines.Strings = (
        'In UniServerModule by setting property "MainFormDisplayMode" to '
        '"mfPage" you can remove borders from MainForm.  '
        ''
        
          'In this mode instead of a windowed Form, a white blank page is c' +
          'reated as '
        
          'MainForm. This mode only affects the MainForm. All other Forms a' +
          're '
        'displayed in standard windowed mode.')
      ParentFont = False
      Font.Color = clGray
      Font.Style = [fsBold]
      Anchors = [akLeft, akTop, akRight]
      Readonly = True
      Color = clWindow
      TabOrder = 3
      ExplicitWidth = 678
    end
    object UniPageControl1: TUniPageControl
      Left = 6
      Top = 184
      Width = 677
      Height = 413
      ActivePage = UniTabSheet1
      TabOrder = 4
      Anchors = [akLeft, akTop, akRight, akBottom]
      ExplicitWidth = 678
      object UniTabSheet1: TUniTabSheet
        Caption = 'UniTabSheet1'
      end
      object UniTabSheet2: TUniTabSheet
        Caption = 'UniTabSheet2'
      end
      object UniTabSheet3: TUniTabSheet
        Caption = 'UniTabSheet3'
      end
      object UniTabSheet4: TUniTabSheet
        Caption = 'UniTabSheet4'
      end
    end
  end
  object UniSplitter1: TUniSplitter
    Left = 140
    Top = 0
    Width = 5
    Height = 605
    Cursor = crVSplit
    MinSize = 30
    Align = alLeft
    ParentColor = False
    Color = clWhite
  end
end
