object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 636
  ClientWidth = 782
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 0
    Width = 782
    Height = 636
    Hint = ''
    DataSource = UniMainModule.DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs]
    WebOptions.RetainCursorOnSort = True
    LoadMask.Message = 'Loading data...'
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    OnColumnSort = UniDBGrid1ColumnSort
    Columns = <
      item
        FieldName = 'Species No'
        Title.Caption = 'Species No'
        Width = 64
        Alignment = taRightJustify
        Sortable = True
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'Category'
        Title.Caption = 'Category'
        Width = 94
        Sortable = True
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'Common_Name'
        Title.Caption = 'Common_Name'
        Width = 184
        Sortable = True
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'Species Name'
        Title.Caption = 'Species Name'
        Width = 244
        Sortable = True
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'Length (cm)'
        Title.Caption = 'Length (cm)'
        Width = 64
        Alignment = taRightJustify
        Sortable = True
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'Length_In'
        Title.Caption = 'Length_In'
        Width = 64
        Alignment = taRightJustify
        Sortable = True
        CheckBoxField.FieldValues = 'true;false'
      end>
  end
end
