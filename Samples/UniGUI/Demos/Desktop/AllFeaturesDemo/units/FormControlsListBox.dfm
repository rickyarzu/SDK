object UniFormControlsListBox: TUniFormControlsListBox
  Left = 0
  Top = 0
  Width = 838
  Height = 579
  TabOrder = 0
  ParentRTL = False
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 1047
    Height = 582
    Hint = ''
    ParentColor = False
    TabOrder = 0
    object UniListBox1: TUniListBox
      Left = 24
      Top = 40
      Width = 192
      Height = 201
      Hint = ''
      Items.Strings = (
        'A'
        'B'
        'C'
        'D'
        'E')
      ItemIndex = 3
      TabOrder = 0
    end
    object UniListBox2: TUniListBox
      Left = 24
      Top = 288
      Width = 192
      Height = 233
      Hint = ''
      Items.Strings = (
        'A'
        'B'
        'C'
        'D'
        'E'
        'F'
        'G'
        'H'
        'I')
      TabOrder = 1
      MultiSelect = True
      ShowCheckBoxes = True
    end
    object UniLabel1: TUniLabel
      Left = 24
      Top = 21
      Width = 60
      Height = 13
      Hint = ''
      Caption = 'Single Select'
      TabOrder = 2
    end
    object UniLabel2: TUniLabel
      Left = 24
      Top = 269
      Width = 54
      Height = 13
      Hint = ''
      Caption = 'Multi Select'
      TabOrder = 3
    end
    object UniButton1: TUniButton
      Left = 222
      Top = 416
      Width = 100
      Height = 25
      Hint = ''
      Caption = 'Clear Selection'
      TabOrder = 4
      OnClick = UniButton1Click
    end
    object UniButton2: TUniButton
      Left = 222
      Top = 385
      Width = 100
      Height = 25
      Hint = ''
      Caption = 'Multi Select'
      TabOrder = 5
      OnClick = UniButton2Click
    end
    object UniButton3: TUniButton
      Left = 222
      Top = 136
      Width = 100
      Height = 25
      Hint = ''
      Caption = '->'
      TabOrder = 6
      OnClick = UniButton3Click
    end
    object UniListBox3: TUniListBox
      Left = 328
      Top = 40
      Width = 192
      Height = 201
      Hint = ''
      TabOrder = 7
    end
    object UniButton4: TUniButton
      Left = 222
      Top = 354
      Width = 100
      Height = 25
      Hint = ''
      Caption = 'Copy Selected'
      TabOrder = 8
      OnClick = UniButton4Click
    end
    object UniListBox4: TUniListBox
      Left = 328
      Top = 288
      Width = 192
      Height = 233
      Hint = ''
      TabOrder = 9
      MultiSelect = True
    end
    object UniListBox5: TUniListBox
      Left = 600
      Top = 40
      Width = 192
      Height = 233
      Hint = ''
      Items.Strings = (
        'Alfred'
        'Allen'
        'Brian'
        'Bruce'
        'James'
        'Oswald')
      TabOrder = 10
      Sorted = True
      MultiSelect = True
    end
    object UniLabel3: TUniLabel
      Left = 656
      Top = 21
      Width = 69
      Height = 13
      Hint = ''
      Caption = 'ListBox Sorted'
      TabOrder = 11
    end
  end
end
