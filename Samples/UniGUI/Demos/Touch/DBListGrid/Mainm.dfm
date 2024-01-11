object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'MainmForm'
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimDBNavigator1: TUnimDBNavigator
    Left = 0
    Top = 0
    Width = 320
    Height = 47
    Hint = ''
    DataSource = UniMainModule.DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    Align = alTop
    TabOrder = 2
  end
  object UnimDBListGrid1: TUnimDBListGrid
    Left = 0
    Top = 47
    Width = 320
    Height = 386
    Hint = ''
    Align = alClient
    DataSource = UniMainModule.DataSource1
    DisclosureIcon = True
    OnSwipe = UnimDBListGrid1Swipe
    OnDisclose = UnimDBListGrid1Disclose
    OnClickHold = UnimDBListGrid1ClickHold
    OnDblClick = UnimDBListGrid1DblClick
    Columns = <
      item
        Title.Caption = 'S. No'
        FieldName = 'Species No'
        Width = 79
      end
      item
        Title.Caption = 'Len(cm)'
        FieldName = 'Length (cm)'
        Width = 84
      end
      item
        Title.Caption = 'Category'
        FieldName = 'Category'
        Width = 140
      end
      item
        Title.Caption = 'Common_Name'
        FieldName = 'Common_Name'
        Width = 334
      end
      item
        Title.Caption = 'Species Name'
        FieldName = 'Species Name'
        Width = 200
      end
      item
        Title.Caption = 'Length_In'
        FieldName = 'Length_In'
        Width = 114
      end
      item
        Title.Caption = 'Graphic'
        ImageOptions.Visible = True
        ImageOptions.Height = 48
        FieldName = 'Graphic'
        Width = 114
      end>
  end
  object UnimLabel1: TUnimLabel
    Left = 0
    Top = 433
    Width = 320
    Height = 47
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 
      'Double Tap = Edit, Swipe = Delete, Disclose = Show, Hold = Incre' +
      'ase Length'
    Align = alBottom
  end
end
