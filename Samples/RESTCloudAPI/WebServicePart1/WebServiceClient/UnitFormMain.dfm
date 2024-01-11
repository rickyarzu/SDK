object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'Web Service Client'
  ClientHeight = 324
  ClientWidth = 524
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 17
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 524
    Height = 41
    Align = alTop
    Caption = 'PanelTop'
    ShowCaption = False
    TabOrder = 0
    object ButtonGET: TButton
      Left = 448
      Top = 1
      Width = 75
      Height = 39
      Align = alRight
      Caption = 'GET'
      TabOrder = 0
      OnClick = ButtonGETClick
    end
    object EditURL: TEdit
      Left = 1
      Top = 1
      Width = 447
      Height = 39
      Align = alClient
      TabOrder = 1
      Text = 'http://localhost:8080/Number'
      ExplicitHeight = 25
    end
  end
  object MemoResponse: TMemo
    Left = 0
    Top = 41
    Width = 524
    Height = 283
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Consolas'
    Font.Style = []
    Lines.Strings = (
      'MemoResponse')
    ParentFont = False
    TabOrder = 1
  end
  object NetHTTPClient: TNetHTTPClient
    UserAgent = 'Embarcadero URI Client/1.0'
    Left = 328
    Top = 48
  end
  object NetHTTPRequest: TNetHTTPRequest
    Client = NetHTTPClient
    OnRequestCompleted = NetHTTPRequestRequestCompleted
    Left = 440
    Top = 48
  end
end
