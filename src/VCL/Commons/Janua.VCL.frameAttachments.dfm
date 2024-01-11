inherited frameVCLAttachments: TframeVCLAttachments
  Width = 793
  Height = 563
  ExplicitWidth = 793
  ExplicitHeight = 563
  inherited pnlCommands: TPanel
    Width = 793
    ExplicitWidth = 793
    inherited pnlSearchText: TPanel
      Width = 232
      ExplicitWidth = 232
      inherited edSearchText: TEdit
        Width = 226
        ExplicitWidth = 226
      end
    end
  end
  inherited grdMaster: TwwDBGrid
    Width = 793
    Height = 120
    Align = alTop
    BorderStyle = bsNone
    ExplicitWidth = 793
    ExplicitHeight = 120
  end
  object lvAttachments: TListView [2]
    Left = 0
    Top = 169
    Width = 552
    Height = 394
    Align = alClient
    BorderStyle = bsNone
    Columns = <>
    IconOptions.AutoArrange = True
    TabOrder = 2
    OnClick = lvAttachmentsClick
    OnDblClick = lvAttachmentsDblClick
    ExplicitLeft = -2
  end
  object pnlAttachments: TPanel [3]
    Left = 552
    Top = 169
    Width = 241
    Height = 394
    Align = alRight
    TabOrder = 3
    DesignSize = (
      241
      394)
    object lbGUID: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 233
      Height = 13
      Align = alTop
      AutoSize = False
      Caption = 'lbGUID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 24
      ExplicitTop = 16
      ExplicitWidth = 201
    end
    object btnPreview: TSpeedButton
      Left = 24
      Top = 161
      Width = 201
      Height = 208
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Open File'
      OnClick = btnPreviewClick
    end
    object edFileName: TEdit
      Left = 24
      Top = 35
      Width = 201
      Height = 25
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      Text = 'edFileName'
    end
    object memDescription: TMemo
      Left = 24
      Top = 66
      Width = 201
      Height = 89
      Lines.Strings = (
        'memDescription')
      TabOrder = 1
    end
  end
  inherited JanuaMasterActionViewController: TJanuaActionViewController
    Left = 208
    Top = 80
  end
  inherited JanuaVCLMVVMSearchParamsBuilder1: TJanuaVCLMVVMSearchParamsBuilder
    Left = 328
    Top = 168
  end
  inherited JanuaVCLMVVMSearchTextBuilder1: TJanuaVCLMVVMSearchTextBuilder
    Left = 328
    Top = 104
  end
  inherited MasterGridBuilder1: TJanuaMVVMGridBuilder
    Left = 208
    Top = 144
  end
  inherited JanuaMVVMFormController1: TJanuaMVVMFormController
    Left = 64
    Top = 112
  end
end
