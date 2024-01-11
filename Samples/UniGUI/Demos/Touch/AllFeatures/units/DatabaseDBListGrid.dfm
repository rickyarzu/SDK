object UniDatabaseDBListGrid: TUniDatabaseDBListGrid
  Left = 0
  Top = 0
  Width = 361
  Height = 489
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 361
    Height = 489
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    object UnimDBListGrid1: TUnimDBListGrid
      Left = 0
      Top = 0
      Width = 361
      Height = 442
      Hint = ''
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = UniMainModule.DataSourceFishFact
      DisclosureIcon = True
      OnSwipe = UnimDBListGrid1Swipe
      OnDisclose = UnimDBListGrid1Disclose
      OnClickHold = UnimDBListGrid1ClickHold
      OnDblClick = UnimDBListGrid1DblClick
      Columns = <
        item
          Title.Caption = 'S. No'
          Title.Font.Height = -21
          FieldName = 'Species No'
          Width = 79
        end
        item
          Title.Caption = 'Len(cm)'
          Title.Font.Height = -21
          FieldName = 'Length (cm)'
          Width = 84
        end
        item
          Title.Caption = 'Category'
          Title.Font.Height = -21
          FieldName = 'Category'
          Width = 140
        end
        item
          Title.Caption = 'Common_Name'
          Title.Font.Height = -21
          FieldName = 'Common_Name'
          Width = 334
        end
        item
          Title.Caption = 'Species Name'
          Title.Font.Height = -21
          FieldName = 'Species Name'
          Width = 200
        end
        item
          Title.Caption = 'Length_In'
          Title.Font.Height = -21
          FieldName = 'Length_In'
          Width = 114
        end>
    end
    object UnimLabel1: TUnimLabel
      Left = 0
      Top = 442
      Width = 361
      Height = 47
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = 
        'Double Tap = Edit, Swipe = Delete, Disclose = Show, Hold = Incre' +
        'ase Length'
      Align = alBottom
      Anchors = [akLeft, akRight, akBottom]
    end
  end
end
