object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 460
  ClientWidth = 916
  Caption = 'MainForm'
  OldCreateOrder = False
  Menu = UniMainMenu1
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 81
    Width = 916
    Height = 379
    Hint = ''
    DataSource = UniMainModule.DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow, dgDontShowSelected]
    ReadOnly = True
    WebOptions.Paged = False
    LoadMask.Message = 'Loading data...'
    Align = alClient
    TabOrder = 0
    Columns = <
      item
        FieldName = 'time_stamp'
        Title.Caption = 'time_stamp'
        Width = 129
      end
      item
        FieldName = 'event_name'
        Title.Caption = 'event_name'
        Width = 137
      end
      item
        FieldName = 'js_name'
        Title.Caption = 'js_name'
        Width = 102
      end
      item
        FieldName = 'component_class'
        Title.Caption = 'component_class'
        Width = 131
      end
      item
        FieldName = 'component_name'
        Title.Caption = 'component_name'
        Width = 179
      end
      item
        FieldName = 'parameters'
        Title.Caption = 'parameters'
        Width = 604
      end>
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 916
    Height = 81
    Hint = ''
    Align = alTop
    TabOrder = 1
    ShowCaption = False
    Caption = 'UniPanel1'
    object UniButton1: TUniButton
      Left = 24
      Top = 16
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'UniButton1'
      TabOrder = 1
      OnClick = UniButton1Click
    end
  end
  object UniMainMenu1: TUniMainMenu
    Left = 264
    Top = 24
    object est1: TUniMenuItem
      Caption = 'Test'
      OnClick = SubItem11Click
      object Item11: TUniMenuItem
        Caption = 'Item1'
        OnClick = SubItem11Click
        object SubItem11: TUniMenuItem
          Caption = 'SubItem1'
          OnClick = SubItem11Click
        end
      end
    end
  end
end
