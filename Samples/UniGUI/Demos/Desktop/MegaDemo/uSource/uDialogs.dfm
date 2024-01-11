object uDialogsFrame: TuDialogsFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 304
  Align = alNone
  Anchors = [akLeft, akTop]
  ShowHint = False
  Visible = True
  TabOrder = 0
  ParentFont = True
  ParentRTL = False
  RTL = False
  object UniLabel1: TUniLabel
    Left = 297
    Top = 74
    Width = 61
    Height = 23
    Caption = 'Result'
    ParentFont = False
    Font.Height = -19
    Font.Style = [fsBold]
    TabOrder = 4
  end
  object UniLabel2: TUniLabel
    Left = 297
    Top = 168
    Width = 61
    Height = 23
    Caption = 'Result'
    ParentFont = False
    Font.Height = -19
    Font.Style = [fsBold]
    TabOrder = 5
  end
  object UniButton1: TUniButton
    Left = 144
    Top = 24
    Width = 129
    Height = 25
    Caption = 'Raise Exception'
    ParentFont = False
    TabOrder = 0
    OnClick = UniButton1Click
  end
  object UniButton2: TUniButton
    Left = 144
    Top = 72
    Width = 129
    Height = 25
    Caption = 'Confirm'
    ParentFont = False
    TabOrder = 1
    OnClick = UniButton2Click
  end
  object UniButton3: TUniButton
    Left = 144
    Top = 120
    Width = 129
    Height = 25
    Caption = 'Warning'
    ParentFont = False
    TabOrder = 2
    OnClick = UniButton3Click
  end
  object UniButton4: TUniButton
    Left = 144
    Top = 168
    Width = 129
    Height = 25
    Caption = 'Date Dialog'
    TabOrder = 3
    OnClick = UniButton4Click
  end
  object UniCalendarDialog1: TUniCalendarDialog
    Date = 40276.000000000000000000
    OnConfirm = UniCalendarDialog1Confirm
    Caption = 'Date?'
    Left = 96
    Top = 168
  end
end
