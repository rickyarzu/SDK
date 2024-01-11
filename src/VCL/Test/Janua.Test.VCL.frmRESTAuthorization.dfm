object frmVCLTestRESTAuthorization: TfrmVCLTestRESTAuthorization
  Left = 0
  Top = 0
  ClientHeight = 730
  ClientWidth = 998
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlTestsHeader: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 992
    Height = 49
    Margins.Bottom = 0
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 988
    object btnStartTests: TButton
      Left = 1
      Top = 1
      Width = 104
      Height = 47
      Align = alLeft
      Caption = 'Start Tests'
      TabOrder = 0
    end
  end
  object memTest: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 55
    Width = 992
    Height = 672
    Align = alClient
    Lines.Strings = (
      'memTest')
    TabOrder = 1
    ExplicitWidth = 988
    ExplicitHeight = 671
  end
end
