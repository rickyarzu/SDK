object dlgPhoenixVCLWhatsAppMessages: TdlgPhoenixVCLWhatsAppMessages
  Left = 0
  Top = 0
  Caption = 'Messaggi Whatasapp'
  ClientHeight = 957
  ClientWidth = 1172
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  inline frameVCLWhatsAppMessages1: TframeVCLWhatsAppMessages
    Left = 0
    Top = 0
    Width = 724
    Height = 957
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 957
    inherited DBCtrlGrid1: TDBCtrlGrid
      Height = 957
      PanelHeight = 87
      ExplicitHeight = 957
      inherited pnlHeader: TPanel
        Height = 81
        ExplicitHeight = 81
        inherited DBText1: TDBText
          Height = 57
          ExplicitHeight = 57
        end
        inherited pnlInfo: TPanel
          Height = 81
          ExplicitHeight = 81
        end
      end
    end
    inherited pnlEvents: TPanel
      Height = 957
      ExplicitHeight = 957
      inherited pnlReport: TPanel
        inherited DBNavigator1: TDBNavigator
          Hints.Strings = ()
        end
      end
      inherited TMSFNCChat1: TTMSFNCChat
        Height = 833
        DoubleBuffered = True
        OnSendButtonClick = frameVCLWhatsAppMessages1TMSFNCChat1SendButtonClick
        ExplicitHeight = 833
      end
    end
    inherited spInsertWhatsAppMsg: TUniStoredProc
      CommandStoredProcName = 'INSERT_WHATSAPP_MESSAGES'
    end
  end
  object EdgeBrowser1: TEdgeBrowser
    Left = 724
    Top = 0
    Width = 448
    Height = 957
    Align = alClient
    TabOrder = 1
    AllowSingleSignOnUsingOSPrimaryAccount = False
    TargetCompatibleBrowserVersion = '117.0.2045.28'
    UserDataFolder = '%LOCALAPPDATA%\bds.exe.WebView2'
  end
end
