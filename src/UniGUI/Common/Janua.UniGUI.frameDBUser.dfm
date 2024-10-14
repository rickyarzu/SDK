object frameUniGUIDBUser: TframeUniGUIDBUser
  Left = 0
  Top = 0
  Width = 640
  Height = 480
  Align = alClient
  Anchors = [akLeft, akTop, akRight, akBottom]
  Font.Height = -12
  TabOrder = 0
  object cntUserSettings: TUniContainerPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 634
    Height = 474
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 0
    object cntEmail: TUniContainerPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 628
      Height = 58
      Hint = ''
      ParentColor = False
      Align = alTop
      TabOrder = 1
      object lbProfileEmail: TUniLabel
        AlignWithMargins = True
        Left = 3
        Top = 5
        Width = 622
        Height = 18
        Hint = ''
        Margins.Top = 5
        Margins.Bottom = 1
        AutoSize = False
        Caption = 'Indirizzo eMail'
        Align = alTop
        ParentColor = False
        Color = clBtnFace
        TabOrder = 1
      end
      object edtProfileEmail: TUniEdit
        AlignWithMargins = True
        Left = 3
        Top = 27
        Width = 622
        Height = 28
        Hint = ''
        Text = ''
        Align = alClient
        TabOrder = 2
      end
    end
    object cntPassword: TUniContainerPanel
      AlignWithMargins = True
      Left = 3
      Top = 67
      Width = 628
      Height = 60
      Hint = ''
      ParentColor = False
      Align = alTop
      TabOrder = 2
      object cntLabelPassword: TUniContainerPanel
        Left = 0
        Top = 0
        Width = 628
        Height = 24
        Hint = ''
        ParentColor = False
        Align = alTop
        TabOrder = 1
        object ckbShowPwdRegister: TUniCheckBox
          AlignWithMargins = True
          Left = 515
          Top = 3
          Width = 110
          Height = 18
          Hint = ''
          Caption = 'Vedi Password'
          Align = alRight
          TabOrder = 1
        end
        object lbProfilePassword: TUniLabel
          AlignWithMargins = True
          Left = 3
          Top = 5
          Width = 506
          Height = 16
          Hint = ''
          Margins.Top = 5
          AutoSize = False
          Caption = 'Selezionate una Password'
          Align = alClient
          TabOrder = 2
        end
      end
      object edtProfilePassword: TUniEdit
        AlignWithMargins = True
        Left = 3
        Top = 27
        Width = 622
        Height = 30
        Hint = ''
        PasswordChar = '*'
        Text = ''
        Align = alClient
        TabOrder = 2
      end
    end
    object cntPasswordRepeat: TUniContainerPanel
      AlignWithMargins = True
      Left = 3
      Top = 133
      Width = 628
      Height = 57
      Hint = ''
      ParentColor = False
      Align = alTop
      TabOrder = 3
      object lbProfilePasswordRepeat: TUniLabel
        AlignWithMargins = True
        Left = 3
        Top = 5
        Width = 622
        Height = 13
        Hint = ''
        Margins.Top = 5
        Margins.Bottom = 1
        AutoSize = False
        Caption = 'Ripetete la password inserita (per verifica)'
        Align = alTop
        TabOrder = 1
      end
      object edtProfilePasswordRepeat: TUniEdit
        AlignWithMargins = True
        Left = 3
        Top = 22
        Width = 622
        Height = 32
        Hint = ''
        PasswordChar = '*'
        Text = ''
        Align = alClient
        TabOrder = 2
      end
    end
    object cntUserLastName: TUniContainerPanel
      AlignWithMargins = True
      Left = 3
      Top = 196
      Width = 628
      Height = 57
      Hint = ''
      ParentColor = False
      Align = alTop
      TabOrder = 4
      object lbLastName: TUniLabel
        AlignWithMargins = True
        Left = 3
        Top = 5
        Width = 622
        Height = 13
        Hint = ''
        Margins.Top = 5
        Margins.Bottom = 1
        AutoSize = False
        Caption = 'Cognome o Ragione Sociale (azienda o persona giuridica)'
        Align = alTop
        TabOrder = 1
      end
      object edtLastName: TUniEdit
        AlignWithMargins = True
        Left = 3
        Top = 22
        Width = 622
        Height = 32
        Hint = ''
        Text = ''
        Align = alClient
        TabOrder = 2
      end
    end
    object cntUserFirstName: TUniContainerPanel
      AlignWithMargins = True
      Left = 3
      Top = 259
      Width = 628
      Height = 57
      Hint = ''
      ParentColor = False
      Align = alTop
      TabOrder = 5
      object lbProfileFirstName: TUniLabel
        AlignWithMargins = True
        Left = 3
        Top = 5
        Width = 622
        Height = 13
        Hint = ''
        Margins.Top = 5
        Margins.Bottom = 1
        AutoSize = False
        Caption = 'Nome (se persona fisica)'
        Align = alTop
        TabOrder = 1
      end
      object edtFirstName: TUniEdit
        AlignWithMargins = True
        Left = 3
        Top = 22
        Width = 622
        Height = 32
        Hint = ''
        Text = ''
        Align = alClient
        TabOrder = 2
      end
    end
  end
end
