object UniCookiesGetSetCookies: TUniCookiesGetSetCookies
  Left = 0
  Top = 0
  Width = 617
  Height = 519
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    617
    519)
  object UniContainerPanel1: TUniContainerPanel
    Left = 68
    Top = 72
    Width = 481
    Height = 417
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniPanel1: TUniPanel
      Left = 0
      Top = 0
      Width = 268
      Height = 417
      Hint = ''
      Align = alLeft
      TabOrder = 0
      Caption = ''
      object UniPanel2: TUniPanel
        Left = 1
        Top = 1
        Width = 266
        Height = 60
        Hint = ''
        Align = alTop
        TabOrder = 0
        Caption = ''
        object UniButton1: TUniButton
          Left = 8
          Top = 16
          Width = 120
          Height = 23
          Hint = ''
          Caption = 'Get All Cookies!'
          ParentFont = False
          TabOrder = 0
          OnClick = UniButton1Click
        end
      end
      object UniPanel3: TUniPanel
        Left = 1
        Top = 61
        Width = 266
        Height = 90
        Hint = ''
        Align = alTop
        TabOrder = 1
        Caption = ''
        object UniLabel3: TUniLabel
          Left = 8
          Top = 40
          Width = 62
          Hint = ''
          Caption = 'Cookie Name'
          ParentFont = False
          TabOrder = 3
        end
        object UniButton3: TUniButton
          Left = 8
          Top = 9
          Width = 120
          Hint = ''
          Caption = 'Get This  Cookie'
          ParentFont = False
          TabOrder = 0
          OnClick = UniButton3Click
        end
        object UniEdit3: TUniEdit
          Left = 8
          Top = 59
          Width = 121
          Hint = ''
          Text = ''
          ParentFont = False
          TabOrder = 1
        end
      end
      object UniPanel4: TUniPanel
        Left = 1
        Top = 151
        Width = 266
        Height = 265
        Hint = ''
        Align = alClient
        TabOrder = 2
        Caption = ''
        object UniLabel1: TUniLabel
          Left = 8
          Top = 47
          Width = 62
          Hint = ''
          Caption = 'Cookie Name'
          ParentFont = False
          TabOrder = 5
        end
        object UniLabel2: TUniLabel
          Left = 8
          Top = 93
          Width = 61
          Hint = ''
          Caption = 'Cookie Value'
          ParentFont = False
          TabOrder = 6
        end
        object UniLabel4: TUniLabel
          Left = 8
          Top = 139
          Width = 48
          Hint = ''
          Caption = 'Expires at'
          ParentFont = False
          TabOrder = 7
        end
        object UniEdit1: TUniEdit
          Left = 8
          Top = 66
          Width = 121
          Hint = ''
          Text = ''
          ParentFont = False
          TabOrder = 0
        end
        object UniEdit2: TUniEdit
          Left = 8
          Top = 112
          Width = 232
          Hint = ''
          Text = ''
          ParentFont = False
          TabOrder = 1
        end
        object UniButton2: TUniButton
          Left = 8
          Top = 16
          Width = 120
          Hint = ''
          Caption = 'Set Cookie'
          ParentFont = False
          TabOrder = 2
          OnClick = UniButton2Click
        end
        object UniDateTimePicker1: TUniDateTimePicker
          Left = 8
          Top = 158
          Width = 232
          Hint = ''
          DateTime = 40616.487941435180000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          Kind = tUniDateTime
          FirstDayOfWeek = dowLocaleDefault
          TabOrder = 3
          Color = clWhite
        end
      end
    end
    object UniMemo1: TUniMemo
      Left = 268
      Top = 0
      Width = 213
      Height = 417
      Hint = ''
      ParentFont = False
      Font.Style = [fsBold]
      Align = alClient
      ReadOnly = True
      TabOrder = 1
    end
  end
end
