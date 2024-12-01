object fmInputParam: TfmInputParam
  Left = 346
  Top = 248
  BorderStyle = bsDialog
  Caption = 'Input procedure parameter'
  ClientHeight = 130
  ClientWidth = 284
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object paClient: TPanel
    Left = 0
    Top = 0
    Width = 284
    Height = 89
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object chUnassigned: TCheckBox
      Left = 8
      Top = 8
      Width = 97
      Height = 17
      Caption = 'Unassigned'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = chUnassignedClick
    end
    object raNull: TRadioButton
      Left = 23
      Top = 34
      Width = 70
      Height = 17
      Caption = 'Null'
      Checked = True
      Enabled = False
      TabOrder = 1
      TabStop = True
      OnClick = chUnassignedClick
    end
    object raValue: TRadioButton
      Left = 23
      Top = 58
      Width = 70
      Height = 17
      Caption = 'Value'
      Enabled = False
      TabOrder = 2
      OnClick = chUnassignedClick
    end
    object edValue: TEdit
      Left = 108
      Top = 56
      Width = 165
      Height = 21
      Enabled = False
      TabOrder = 3
    end
  end
  object paButtons: TPanel
    Left = 0
    Top = 89
    Width = 284
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object buOK: TButton
      Left = 49
      Top = 8
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = buOKClick
    end
    object buCancel: TButton
      Left = 161
      Top = 8
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
end
