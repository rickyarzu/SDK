object frameTmsAdvBrowser: TframeTmsAdvBrowser
  Left = 0
  Top = 0
  Width = 985
  Height = 685
  TabOrder = 0
  object pnlUrl: TPanel
    Left = 0
    Top = 0
    Width = 985
    Height = 25
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 945
    object edtUrl: TEdit
      Left = 1
      Top = 1
      Width = 908
      Height = 23
      Align = alClient
      TabOrder = 0
      Text = 'http://localhost:8080/api'
      ExplicitWidth = 868
    end
    object btnUrl: TButton
      Left = 909
      Top = 1
      Width = 75
      Height = 23
      Align = alRight
      Caption = 'Go To'
      TabOrder = 1
      OnClick = btnUrlClick
      ExplicitLeft = 869
    end
  end
  object AdvWebBrowser1: TAdvWebBrowser
    Left = 0
    Top = 25
    Width = 985
    Height = 660
    Align = alClient
    ParentDoubleBuffered = False
    DoubleBuffered = True
    TabOrder = 1
    ExplicitWidth = 945
    ExplicitHeight = 513
  end
end
