inherited frameTest: TframeTest
  Width = 208
  Height = 380
  ExplicitWidth = 208
  ExplicitHeight = 380
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 208
    Height = 380
    Align = alClient
    TabOrder = 0
    UseDockManager = True
    Version = '2.5.8.0'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.Indent = 0
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 200
    object SpinEdit1: TSpinEdit
      Left = 40
      Top = 16
      Width = 121
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 0
    end
    object Edit1: TEdit
      Left = 40
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'Edit1'
    end
    object JvDateEdit1: TJvDateEdit
      Left = 40
      Top = 96
      Width = 121
      Height = 21
      ShowNullDate = False
      TabOrder = 2
    end
    object JvCalcEdit1: TJvCalcEdit
      Left = 40
      Top = 136
      Width = 121
      Height = 21
      TabOrder = 3
      DecimalPlacesAlwaysShown = False
    end
  end
end
