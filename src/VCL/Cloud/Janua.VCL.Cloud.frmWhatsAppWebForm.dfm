inherited frmVCLWebBrokerWhatsApp: TfrmVCLWebBrokerWhatsApp
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 13
  inherited grpWebBrokerStart: TGroupBox
    inherited JanuaframeWebServerManager: TJanuaframeWebServerManager
      inherited Label1: TLabel
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited sedPort: TSpinEdit
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited JanuaWebBrokerServerManager1: TJanuaWebBrokerServerManager
        ServerName = 'TwilioWebHook'
      end
    end
  end
  inherited Edit1: TEdit
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = 3
    ExplicitTop = 86
    ExplicitWidth = 523
  end
  inherited TMSFNCEdgeWebBrowser1: TTMSFNCEdgeWebBrowser
    DoubleBuffered = True
    Settings.AllowExternalDrop = False
    ExplicitLeft = 3
    ExplicitTop = 113
    ExplicitWidth = 523
    ExplicitHeight = 372
  end
end
