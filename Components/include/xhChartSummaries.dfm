object xhChartSummariesDialog: TxhChartSummariesDialog
  Left = 419
  Top = 206
  BorderStyle = bsDialog
  Caption = 'Chart Summaries'
  ClientHeight = 464
  ClientWidth = 301
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 432
    Width = 301
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object bOk: TButton
      Left = 69
      Top = 4
      Width = 75
      Height = 25
      HelpContext = 40
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object bCancel: TButton
      Left = 157
      Top = 4
      Width = 75
      Height = 25
      HelpContext = 50
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object tvSummaries: TxhTreeView
    Left = 0
    Top = 0
    Width = 301
    Height = 432
    Align = alClient
    HideSelection = False
    Indent = 19
    ReadOnly = True
    TabOrder = 0
    CheckMode = cmSingle
    OnCheckTreeItem = tvSummariesCheckTreeItem
  end
end
