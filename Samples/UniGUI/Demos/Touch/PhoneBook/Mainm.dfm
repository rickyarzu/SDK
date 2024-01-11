object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = ''
  TitleDocked = True
  TitleButtons = <
    item
      ButtonId = 0
      IconCls = 'add'
    end
    item
      ButtonId = 1
      IconCls = 'settings'
    end
    item
      ButtonId = 2
      IconCls = 'delete'
    end
    item
      ButtonId = 3
      UI = 'normal'
      Separator = True
    end
    item
      Caption = 'Dial'
      ButtonId = 4
      UI = 'confirm'
    end>
  OnTitleButtonClick = UnimFormTitleButtonClick
  OnCreate = UnimFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimEdit1: TUnimEdit
    Left = 0
    Top = 0
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Text = ''
    FieldLabel = 'Search:'
    OnKeyUp = UnimEdit1KeyUp
  end
  object UnimDBListGrid1: TUnimDBListGrid
    Left = 0
    Top = 47
    Width = 320
    Height = 408
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource1
    ClientEvents.ExtEvents.Strings = (
      
        'itemswipe=function itemswipe(sender, index, target, record, e, e' +
        'Opts)'#13#10'{'#13#10'  if(e.direction=="right"||e.direction=="left")'#13#10'    w' +
        'indow.location.href="tel://"+record.get('#39'1'#39');'#13#10'}')
    WebOptions.Paged = False
    Columns = <
      item
        Title.Caption = 'Name'
        Title.Font.Height = -21
        FieldName = 'Name'
        Width = 200
      end
      item
        Title.Caption = 'Phone_Number'
        Title.Font.Height = -21
        FieldName = 'Phone_Number'
        Width = 200
      end>
  end
  object UnimLabel1: TUnimLabel
    Left = 0
    Top = 455
    Width = 320
    Height = 25
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'Left or Right Swipe to Dial'
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
  end
  object DataSource1: TDataSource
    DataSet = UniMainModule.ClientDataSet1
    Left = 160
    Top = 88
  end
end
