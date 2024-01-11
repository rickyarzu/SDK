inherited frameTestViewModelDetail: TframeTestViewModelDetail
  Width = 701
  Height = 80
  ParentFont = False
  ExplicitWidth = 701
  ExplicitHeight = 80
  object grpDetail: TGroupBox
    Left = 0
    Top = 0
    Width = 701
    Height = 80
    Align = alClient
    Caption = 'Detail'
    TabOrder = 0
    ExplicitLeft = 15
    ExplicitTop = 71
    ExplicitWidth = 690
    ExplicitHeight = 74
    DesignSize = (
      701
      80)
    object lbDetailGUID: TLabel
      Left = 247
      Top = 33
      Width = 434
      Height = 13
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Caption = 'GUID'
    end
    object edDetailInt: TSpinEdit
      Left = 17
      Top = 30
      Width = 104
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 0
    end
    object edDetailString: TEdit
      Left = 127
      Top = 30
      Width = 114
      Height = 21
      TabOrder = 1
      Text = 'edStringField'
    end
  end
end
