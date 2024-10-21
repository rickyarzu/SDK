object frmJanuaVCLTestWebBrowser: TfrmJanuaVCLTestWebBrowser
  Left = 0
  Top = 0
  Caption = 'Test Web Browser'
  ClientHeight = 665
  ClientWidth = 973
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  inline JanuaVCLWebView1: TJanuaVCLWebView
    Left = 0
    Top = 0
    Width = 973
    Height = 665
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 973
    ExplicitHeight = 665
    inherited AdvWebBrowser: TAdvWebBrowser
      Width = 973
      Height = 633
      DoubleBuffered = True
      Settings.AllowExternalDrop = False
      ExplicitWidth = 973
      ExplicitHeight = 633
    end
    inherited WebControlsPanel: TPanel
      Width = 973
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 973
      inherited edUrl: TButtonedEdit
        Width = 947
        StyleElements = [seFont, seClient, seBorder]
        ExplicitWidth = 947
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 512
    Top = 8
  end
end
