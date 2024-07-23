object MainmForm: TMainmForm
  Left = 0
  Top = 0
  Margins.Bottom = 10
  ClientHeight = 593
  ClientWidth = 360
  Caption = 'FSQrCodeScanner'
  CloseButton.IconCls = 'arrow_left'
  CloseButton.Visible = False
  CloseButton.DefaultIcon = False
  TitleButtons = <
    item
      ButtonId = 0
      IconCls = 'play'
      UI = 'normal'
    end
    item
      ButtonId = 1
      IconCls = 'stop'
    end
    item
      ButtonId = 2
      Separator = True
    end
    item
      ButtonId = 5
      IconCls = 'more'
    end
    item
      ButtonId = 4
      IconCls = 'settings'
    end>
  OnTitleButtonClick = UnimFormTitleButtonClick
  DesignSize = (
    360
    593)
  TextHeight = 15
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object QrCodeScanner: TUnimFSQrCodeScanner
    AlignWithMargins = True
    Left = 4
    Top = 7
    Width = 350
    Height = 582
    Hint = ''
    Anchors = [akTop, akBottom]
    ClientEvents.ExtEvents.Strings = (
      
        'resize=function resize(sender, info, eOpts) {   ajaxRequest(send' +
        'er, "fs_qr_reader_resize", []); } ')
    QrInterFace = Html5QrCodeScanner
    QrBoxFunction.QrBoxType = Dinamic
    QrBoxFunction.QrBoxWidth = 300
    QrBoxFunction.QrBoxHeight = 150
    QrBoxFunction.QrAspectRatio = FullScreen
    QrFps = 10
    QrRememberLastUsedCamera = False
    QrSupportedScanTypes.QR_CODE = True
    QrSupportedScanTypes.AZTEC = False
    QrSupportedScanTypes.CODABAR = True
    QrSupportedScanTypes.CODE_39 = True
    QrSupportedScanTypes.CODE_93 = True
    QrSupportedScanTypes.CODE_128 = True
    QrSupportedScanTypes.DATA_MATRIX = False
    QrSupportedScanTypes.MAXICODE = False
    QrSupportedScanTypes.ITF = False
    QrSupportedScanTypes.EAN_13 = True
    QrSupportedScanTypes.EAN_8 = True
    QrSupportedScanTypes.PDF_417 = False
    QrSupportedScanTypes.RSS_14 = True
    QrSupportedScanTypes.RSS_EXPANDED = False
    QrSupportedScanTypes.UPC_A = True
    QrSupportedScanTypes.UPC_E = True
    QrSupportedScanTypes.UPC_EAN_EXTENSION = False
    OnScanSuccess = QrCodeScannerScanSuccess
  end
end
