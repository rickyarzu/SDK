object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 593
  ClientWidth = 360
  Caption = 'Create Signature'
  CloseButton.IconCls = 'arrow_left'
  CloseButton.DefaultIcon = False
  TitleButtons = <
    item
      ButtonId = 1
      Separator = True
    end>
  
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object Signature: TUnimFSSignature
    Left = 0
    Top = 0
    Width = 360
    Height = 477
    Hint = ''
    PenColor = 'black'
    BackgroundColor = 'rgb(255, 255, 255)'
    BorderDashed = 0
    Align = alClient
    ClientEvents.ExtEvents.Strings = (
      
        'resize=function resize(sender, info, eOpts) {   if(typeof resize' +
        'Canvas == '#39'function'#39') {      resizeCanvas();   }    ajaxRequest(' +
        'sender, "fs_signature_resize", []); } ')
    OnGetImage = SignatureGetImage
    ExplicitTop = -3
  end
  object UnimToolBar1: TUnimToolBar
    Left = 0
    Top = 477
    Width = 360
    Height = 56
    Hint = ''
    ShowTitle = False
    Align = alBottom
    ShowCaptions = True
    Caption = ''
    ExplicitTop = 471
    object btnClear: TUnimBitBtn
      AlignWithMargins = True
      Left = 7
      Top = 5
      Width = 125
      Height = 46
      Hint = ''
      Margins.Left = 7
      Margins.Top = 5
      Margins.Right = 7
      Margins.Bottom = 5
      Align = alLeft
      UI = 'decline'
      Caption = 'Clear'
      OnClick = btnClearClick
    end
    object btnSave: TUnimBitBtn
      AlignWithMargins = True
      Left = 228
      Top = 5
      Width = 125
      Height = 46
      Hint = ''
      Margins.Left = 7
      Margins.Top = 5
      Margins.Right = 7
      Margins.Bottom = 5
      Align = alRight
      UI = 'confirm'
      Caption = 'Save'
      OnClick = btnSaveClick
      ExplicitLeft = 245
    end
  end
  object pnl1: TUnimPanel
    Left = 0
    Top = 533
    Width = 360
    Height = 60
    Hint = ''
    Align = alBottom
    object lbl1: TUnimLabel
      AlignWithMargins = True
      Left = 11
      Top = 4
      Width = 50
      Height = 52
      Hint = ''
      Margins.Left = 10
      Margins.Right = 10
      Alignment = taCenter
      AutoSize = False
      Caption = '<i class="fas fa-home"></i>'
      Align = alLeft
      ParentFont = False
      Font.Color = 307450
      Font.Height = -37
      ExplicitLeft = 4
      ExplicitHeight = 48
    end
    object lbl2: TUnimLabel
      AlignWithMargins = True
      Left = 74
      Top = 4
      Width = 212
      Height = 52
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = '65415615'
      Align = alClient
      ParentFont = False
      Font.Color = clSilver
      Font.Height = -35
      ExplicitLeft = 137
      ExplicitTop = 5
      ExplicitWidth = 50
    end
    object lbl3: TUnimLabel
      AlignWithMargins = True
      Left = 299
      Top = 4
      Width = 50
      Height = 52
      Hint = ''
      Margins.Left = 10
      Margins.Right = 10
      Alignment = taCenter
      AutoSize = False
      Caption = '<i class="far fa-question-circle"></i>'
      Align = alRight
      ParentFont = False
      Font.Color = 12560917
      Font.Height = -37
      ExplicitTop = 5
    end
  end
end
