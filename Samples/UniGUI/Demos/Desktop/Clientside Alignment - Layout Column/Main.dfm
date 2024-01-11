object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 550
  ClientWidth = 800
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  AlignmentControl = uniAlignmentClient
  Layout = 'fit'
  PixelsPerInch = 96
  TextHeight = 13
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 550
    Hint = ''
    ParentColor = False
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    Layout = 'border'
    ExplicitLeft = 27
    ExplicitTop = 280
    ExplicitWidth = 256
    ExplicitHeight = 128
    object UniPanel1: TUniPanel
      Left = 24
      Top = 27
      Width = 289
      Height = 401
      Hint = ''
      TabOrder = 1
      TitleVisible = True
      TitleAlign = taCenter
      Title = 'Column Layout'
      Caption = 'UniPanel1'
      Layout = 'column'
      LayoutConfig.Width = '30%'
      LayoutConfig.Region = 'west'
      object UniFieldSet1: TUniFieldSet
        Left = 16
        Top = 16
        Width = 254
        Height = 126
        Hint = ''
        Title = 'UniFieldSet 50%'
        LayoutConfig.Height = '50%'
        LayoutConfig.ColumnWidth = 0.500000000000000000
        TabOrder = 1
        object UniEdit1: TUniEdit
          Left = 24
          Top = 16
          Width = 121
          Hint = ''
          Text = 'UniEdit1'
          TabOrder = 1
          FieldLabel = 'Label'
        end
        object UniEdit2: TUniEdit
          Left = 24
          Top = 48
          Width = 121
          Hint = ''
          Text = 'UniEdit2'
          TabOrder = 2
          FieldLabel = 'Label'
        end
        object UniEdit3: TUniEdit
          Left = 32
          Top = 80
          Width = 121
          Hint = ''
          Text = 'UniEdit3'
          TabOrder = 3
          FieldLabel = 'Label'
        end
      end
      object UniFieldSet2: TUniFieldSet
        Left = 16
        Top = 148
        Width = 256
        Height = 128
        Hint = ''
        Title = 'UniFieldSet 50%'
        LayoutConfig.Height = '75%'
        LayoutConfig.ColumnWidth = 0.500000000000000000
        TabOrder = 2
        object UniEdit9: TUniEdit
          Left = 40
          Top = 24
          Width = 121
          Hint = ''
          Text = 'UniEdit9'
          TabOrder = 1
          FieldLabel = 'Label'
        end
        object UniEdit10: TUniEdit
          Left = 32
          Top = 48
          Width = 121
          Hint = ''
          Text = 'UniEdit10'
          TabOrder = 2
          FieldLabel = 'Label'
        end
      end
    end
    object UniPanel2: TUniPanel
      Left = 319
      Top = 3
      Width = 458
      Height = 494
      Hint = ''
      TabOrder = 2
      TitleVisible = True
      TitleAlign = taCenter
      Title = 'Column Layout'
      Caption = 'UniPanel2'
      Layout = 'column'
      LayoutConfig.Region = 'center'
      object UniFieldSet3: TUniFieldSet
        Left = 64
        Top = 24
        Width = 256
        Height = 128
        Hint = ''
        Title = 'UniFieldSet 25%'
        LayoutConfig.Height = '100%'
        LayoutConfig.ColumnWidth = 0.250000000000000000
        TabOrder = 1
        object UniEdit4: TUniEdit
          Left = 40
          Top = 24
          Width = 121
          Hint = ''
          Text = 'UniEdit4'
          TabOrder = 1
          FieldLabel = 'Label'
        end
        object UniEdit5: TUniEdit
          Left = 48
          Top = 72
          Width = 121
          Hint = ''
          Text = 'UniEdit5'
          TabOrder = 2
          FieldLabel = 'Label'
        end
      end
      object UniFieldSet4: TUniFieldSet
        Left = 64
        Top = 158
        Width = 256
        Height = 128
        Hint = ''
        Title = 'UniFieldSet 25%'
        LayoutConfig.Height = '100%'
        LayoutConfig.ColumnWidth = 0.250000000000000000
        TabOrder = 2
        object UniEdit6: TUniEdit
          Left = 16
          Top = 24
          Width = 121
          Hint = ''
          Text = 'UniEdit6'
          TabOrder = 1
          FieldLabel = 'Label'
        end
        object UniEdit7: TUniEdit
          Left = 48
          Top = 56
          Width = 121
          Hint = ''
          Text = 'UniEdit7'
          TabOrder = 2
          FieldLabel = 'Label'
        end
      end
      object UniFieldSet5: TUniFieldSet
        Left = 64
        Top = 302
        Width = 256
        Height = 128
        Hint = ''
        Title = 'UniFieldSet 50%'
        LayoutConfig.Height = '100%'
        LayoutConfig.ColumnWidth = 0.500000000000000000
        TabOrder = 3
        object UniEdit8: TUniEdit
          Left = 40
          Top = 32
          Width = 121
          Hint = ''
          Text = 'UniEdit8'
          TabOrder = 1
          FieldLabel = 'Label'
        end
      end
    end
  end
end
