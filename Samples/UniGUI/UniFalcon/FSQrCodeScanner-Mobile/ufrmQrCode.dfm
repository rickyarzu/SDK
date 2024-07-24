object frmQrCode: TfrmQrCode
  Left = 0
  Top = 0
  ClientHeight = 526
  ClientWidth = 367
  Caption = 'FSQrCode'
  OnShow = UnimFormShow
  TitleButtons = <>
  DesignSize = (
    367
    526)
  TextHeight = 15
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object QrCodeScanner: TUnimFSQrCodeScanner
    AlignWithMargins = True
    Left = 6
    Top = 8
    Width = 356
    Height = 456
    Hint = ''
    Anchors = [akTop, akBottom]
    ClientEvents.ExtEvents.Strings = (
      
        'resize=function resize(sender, info, eOpts) {   ajaxRequest(send' +
        'er, "fs_qr_reader_resize", []); } ')
    QrInterFace = Html5QrCode
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
  object SegmentedButton: TUnimSegmentedButton
    AlignWithMargins = True
    Left = 10
    Top = 469
    Width = 347
    Height = 47
    Hint = ''
    Margins.Left = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Items = <
      item
        Caption = 'Back'
        ButtonId = 0
      end
      item
        Caption = 'Front'
        ButtonId = 1
      end>
    Align = alBottom
    OnClick = SegmentedButtonClick
    ExplicitLeft = 104
    ExplicitTop = 352
    ExplicitWidth = 225
  end
end
