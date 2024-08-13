object frmVCLWebBrokerDMVCTest: TfrmVCLWebBrokerDMVCTest
  Left = 0
  Top = 0
  Caption = 'Test Web Server & Web Service'
  ClientHeight = 613
  ClientWidth = 834
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pgTests: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 828
    Height = 607
    ActivePage = tabWebBrokder
    Align = alClient
    TabOrder = 0
    object tabWebBrokder: TTabSheet
      Caption = 'Simple WebBroker Test'
      object pnlWebBrokerTest: TPanel
        Left = 0
        Top = 0
        Width = 820
        Height = 41
        Align = alTop
        TabOrder = 0
        object frameTestWebBroker: TJanuaframeWebServerManager
          Left = 1
          Top = 1
          Width = 374
          Height = 39
          Align = alLeft
          TabOrder = 0
          OnAfterStartServer = frameTestWebBrokerAfterStartServer
          OnBeforeStartServer = frameTestWebBrokerBeforeStartServer
          ExplicitLeft = 0
          ExplicitTop = 0
        end
      end
      object awbTestWebServer: TAdvWebBrowser
        Left = 0
        Top = 41
        Width = 820
        Height = 536
        Align = alClient
        ParentDoubleBuffered = False
        DoubleBuffered = True
        TabOrder = 1
        Settings.EnableContextMenu = True
        Settings.EnableShowDebugConsole = True
        Settings.EnableAcceleratorKeys = True
        Settings.AllowExternalDrop = True
        Settings.UsePopupMenuAsContextMenu = False
        ExplicitTop = 47
        ExplicitWidth = 804
        ExplicitHeight = 427
      end
    end
    object tabDMVCWebBrokder: TTabSheet
      Caption = 'DMVC WebBroer Test'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 820
        Height = 49
        Align = alTop
        TabOrder = 0
        object JanuaframeWebServerManager2: TJanuaframeWebServerManager
          Left = 1
          Top = 1
          Width = 374
          Height = 47
          Align = alLeft
          TabOrder = 0
        end
        object edPassword: TLabeledEdit
          Left = 648
          Top = 9
          Width = 121
          Height = 23
          EditLabel.AlignWithMargins = True
          EditLabel.Width = 50
          EditLabel.Height = 23
          EditLabel.Caption = 'Password'
          LabelPosition = lpLeft
          LabelSpacing = 6
          PasswordChar = '*'
          TabOrder = 1
          Text = 'J4nu4pr0j3ct.'
        end
        object LabeledEdit1: TLabeledEdit
          Left = 456
          Top = 9
          Width = 121
          Height = 23
          EditLabel.AlignWithMargins = True
          EditLabel.Width = 55
          EditLabel.Height = 23
          EditLabel.Caption = 'UserName'
          LabelPosition = lpLeft
          LabelSpacing = 6
          PasswordChar = '*'
          TabOrder = 2
          Text = 'J4nu4pr0j3ct.'
        end
      end
      object PageControl1: TPageControl
        Left = 0
        Top = 49
        Width = 820
        Height = 528
        ActivePage = tabDMVCTest
        Align = alClient
        TabOrder = 1
        object tabBrowser: TTabSheet
          Caption = 'Browser'
          object AdvWebBrowser1: TAdvWebBrowser
            Left = 0
            Top = 0
            Width = 812
            Height = 498
            Align = alClient
            ParentDoubleBuffered = False
            DoubleBuffered = True
            TabOrder = 0
            Settings.EnableContextMenu = True
            Settings.EnableShowDebugConsole = True
            Settings.EnableAcceleratorKeys = True
            Settings.AllowExternalDrop = True
            Settings.UsePopupMenuAsContextMenu = False
            ExplicitTop = 54
            ExplicitWidth = 820
            ExplicitHeight = 528
          end
        end
        object tabDMVCTest: TTabSheet
          Caption = 'Tests'
          ImageIndex = 1
          object pgDMVCTests: TPageControl
            Left = 0
            Top = 0
            Width = 812
            Height = 498
            ActivePage = tabDMVCWebTests
            Align = alClient
            TabOrder = 0
            object tabDMVCWebTests: TTabSheet
              Caption = 'Web Pages'
              object pnlDMVCWebTest: TPanel
                Left = 0
                Top = 0
                Width = 804
                Height = 41
                Align = alTop
                TabOrder = 0
                ExplicitLeft = 472
                ExplicitTop = 16
                ExplicitWidth = 185
              end
              object AdvWebBrowser2: TAdvWebBrowser
                Left = 0
                Top = 41
                Width = 804
                Height = 427
                Align = alClient
                ParentDoubleBuffered = False
                DoubleBuffered = True
                TabOrder = 1
                Settings.EnableContextMenu = True
                Settings.EnableShowDebugConsole = True
                Settings.EnableAcceleratorKeys = True
                Settings.AllowExternalDrop = True
                Settings.UsePopupMenuAsContextMenu = False
                ExplicitTop = 47
              end
            end
            object TabSheet2: TTabSheet
              Caption = 'TabSheet2'
              ImageIndex = 1
            end
            object TabSheet3: TTabSheet
              Caption = 'TabSheet3'
              ImageIndex = 2
            end
          end
        end
      end
    end
    object tabMixedTest: TTabSheet
      Caption = 'Mixed Controller Test'
      ImageIndex = 2
    end
  end
end
