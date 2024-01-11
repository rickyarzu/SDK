object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 551
  ClientWidth = 801
  Caption = 'Accordion Layout'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  AlignmentControl = uniAlignmentClient
  Layout = 'fit'
  LayoutConfig.BodyPadding = '15'
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanelA: TUniPanel
    Left = 80
    Top = 24
    Width = 657
    Height = 456
    Hint = ''
    TabOrder = 0
    TitleVisible = True
    TitleAlign = taCenter
    Title = 'Accordion Layout'
    Caption = ''
    Layout = 'accordion'
    object UniPanel1: TUniPanel
      Left = 18
      Top = 3
      Width = 295
      Height = 182
      Hint = ''
      CreateOrder = 1
      TabOrder = 1
      TitleVisible = True
      Title = 'UniPanel1'
      Caption = 'UniPanel1'
      Layout = 'fit'
      LayoutConfig.BodyPadding = '15'
      object UniPageControl1: TUniPageControl
        Left = 4
        Top = 29
        Width = 252
        Height = 124
        Hint = ''
        ActivePage = UniTabSheet2
        TabOrder = 1
        object UniTabSheet1: TUniTabSheet
          Hint = ''
          Caption = 'UniTabSheet1'
        end
        object UniTabSheet2: TUniTabSheet
          Hint = ''
          Closable = True
          Caption = 'UniTabSheet2'
        end
      end
    end
    object UniPanel2: TUniPanel
      Left = 280
      Top = 104
      Width = 256
      Height = 128
      Hint = ''
      CreateOrder = 2
      TabOrder = 2
      TitleVisible = True
      Title = 'UniPanel2'
      Caption = 'UniPanel2'
      Layout = 'fit'
      object UniRadioGroup1: TUniRadioGroup
        Left = 32
        Top = 3
        Width = 185
        Height = 105
        Hint = ''
        Items.Strings = (
          'Yes'
          'No')
        ItemIndex = 0
        LayoutConfig.Height = '100%'
        Caption = 'UniRadioGroup1'
        TabOrder = 1
      end
    end
    object UniPanel3: TUniPanel
      Left = 368
      Top = 192
      Width = 256
      Height = 128
      Hint = ''
      CreateOrder = 3
      TabOrder = 3
      TitleVisible = True
      Title = 'UniPanel3'
      Caption = 'UniPanel3'
      Layout = 'fit'
      LayoutAttribs.Padding = '5'
      object UniTreeView1: TUniTreeView
        Left = 64
        Top = 16
        Width = 121
        Height = 97
        Hint = ''
        Items.NodeData = {
          0302000000280000000000000000000000FFFFFFFFFFFFFFFF00000000000000
          000200000001054900740065006D0031002E0000000000000000000000FFFFFF
          FFFFFFFFFF00000000000000000000000001085300750062004900740065006D
          0031002E0000000000000000000000FFFFFFFFFFFFFFFF000000000000000000
          00000001085300750062004900740065006D0032002800000000000000000000
          00FFFFFFFFFFFFFFFF00000000000000000000000001054900740065006D0032
          00}
        Items.FontData = {
          0102000000FFFFFFFF02000000FFFFFFFF00000000FFFFFFFF00000000FFFFFF
          FF00000000}
        TabOrder = 1
        Color = clWindow
        LayoutConfig.Height = '100%'
        LayoutConfig.Width = '80%'
      end
    end
  end
end
