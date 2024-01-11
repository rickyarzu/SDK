object mOrdersForm: TmOrdersForm
  Left = 0
  Top = 0
  ClientHeight = 595
  ClientWidth = 492
  Caption = 'Edit Orders'
  TitleButtons = <>
  OnCreate = UnimFormCreate
  OnDestroy = UnimFormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimCarousel1: TUnimCarousel
    Left = 0
    Top = 0
    Width = 492
    Height = 595
    Hint = ''
    Align = alClient
    AlignmentControl = uniAlignmentClient
    PageIndex = 0
    ActivePage = cpOrders
    ExplicitWidth = 768
    ExplicitHeight = 977
    object cpOrders: TUnimCarouselPage
      Left = 0
      Top = 0
      Width = 492
      Height = 595
      Hint = 'Orders / Items'
      ExplicitWidth = 768
      ExplicitHeight = 977
      object pnlOrders: TUnimContainerPanel
        Left = 1
        Top = 1
        Width = 490
        Height = 408
        Hint = ''
        Align = alTop
        ExplicitWidth = 766
        object barOrders: TUnimToolBar
          Left = 0
          Top = 0
          Width = 490
          Height = 48
          Hint = ''
          Images = UniMainModule.UniNativeImageList1
          Caption = 'Orders'
          LayoutAttribs.Pack = 'justify'
          ExplicitWidth = 766
          object btnMarkAsPaid: TUnimToolButton
            Left = 0
            Top = 0
            Width = 48
            Height = 48
            Action = UniMainModule.actMarkAsPaid
            ImageIndex = 2
          end
          object cntOrders: TUnimToolButton
            Left = 48
            Top = 0
            Width = 409
            Height = 48
            Hint = ''
            Style = tbsContainer
            Caption = 'cntOrders'
            object dbnOrders: TUnimDBNavigator
              Left = 0
              Top = 4
              Width = 340
              Height = 42
              Hint = ''
              DataSource = UniMainModule.dsOrders
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
              LayoutConfig.Padding = '2px'
              TabOrder = 1
            end
          end
        end
        object dbgOrders: TUnimDBGrid
          Left = 0
          Top = 48
          Width = 490
          Height = 360
          Hint = ''
          Align = alClient
          DataSource = UniMainModule.dsOrders
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete]
          Columns = <
            item
              Title.Alignment = taCenter
              Title.Caption = 'ID'
              FieldName = 'ID'
              Visible = False
              Width = 67
              ReadOnly = True
            end
            item
              Title.Alignment = taCenter
              Title.Caption = 'CustomerID'
              FieldName = 'CustomerID'
              Visible = False
              Width = 115
              ReadOnly = True
            end
            item
              Title.Alignment = taCenter
              Title.Caption = 'Customer'
              FieldName = 'Customer'
              Width = 223
            end
            item
              Title.Alignment = taCenter
              Title.Caption = 'Created'
              FieldName = 'Posted'
              Width = 206
              ReadOnly = True
            end
            item
              Title.Alignment = taCenter
              Title.Caption = 'Total'
              FieldName = 'Total'
              Width = 114
              ReadOnly = True
            end
            item
              Title.Alignment = taCenter
              Title.Caption = 'Paid'
              FieldName = 'Paid'
              Width = 174
            end>
        end
      end
      object pnlItems: TUnimContainerPanel
        Left = 1
        Top = 409
        Width = 490
        Height = 185
        Hint = ''
        Align = alClient
        ExplicitWidth = 766
        ExplicitHeight = 567
        object barItems: TUnimToolBar
          Left = 0
          Top = 0
          Width = 490
          Height = 48
          Hint = ''
          Caption = 'Items'
          LayoutAttribs.Pack = 'justify'
          ExplicitWidth = 766
          object UnimToolButton2: TUnimToolButton
            Left = 0
            Top = 0
            Width = 48
            Height = 48
            Hint = ''
            Style = tbsContainer
            Caption = 'UnimToolButton2'
          end
          object cntItems: TUnimToolButton
            Left = 48
            Top = 0
            Width = 409
            Height = 48
            Hint = ''
            Style = tbsContainer
            Caption = 'cntItems'
            object dbnItems: TUnimDBNavigator
              Left = 0
              Top = 4
              Width = 340
              Height = 42
              Hint = ''
              DataSource = UniMainModule.dsItems
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
              LayoutConfig.Padding = '2px'
              TabOrder = 1
            end
          end
        end
        object dbgItems: TUnimDBGrid
          Left = 0
          Top = 48
          Width = 490
          Height = 137
          Hint = ''
          Align = alClient
          DataSource = UniMainModule.dsItems
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete]
          Columns = <
            item
              Title.Caption = 'OrderID'
              FieldName = 'OrderID'
              Visible = False
              Width = 114
              ReadOnly = True
            end
            item
              Title.Caption = 'ProductID'
              FieldName = 'ProductID'
              Visible = False
              Width = 114
              ReadOnly = True
            end
            item
              Title.Alignment = taCenter
              Title.Caption = 'Product'
              FieldName = 'Product'
              Width = 257
            end
            item
              Title.Alignment = taCenter
              Title.Caption = 'Quantity'
              FieldName = 'Quantity'
              Width = 114
            end
            item
              Title.Alignment = taCenter
              Title.Caption = 'Price'
              FieldName = 'Price'
              Width = 114
              ReadOnly = True
            end
            item
              Title.Alignment = taCenter
              Title.Caption = 'Total'
              FieldName = 'Total'
              Width = 114
            end>
        end
      end
    end
    object cpCustomers: TUnimCarouselPage
      Left = 0
      Top = 0
      Width = 492
      Height = 595
      Hint = 'Customers'
      ExplicitWidth = 768
      ExplicitHeight = 977
      object barCustomers: TUnimToolBar
        Left = 1
        Top = 1
        Width = 490
        Height = 48
        Hint = ''
        Caption = 'Customers'
        LayoutAttribs.Pack = 'justify'
        ExplicitWidth = 766
        object UnimToolButton6: TUnimToolButton
          Left = 0
          Top = 0
          Width = 48
          Height = 48
          Hint = ''
          Style = tbsContainer
          Caption = 'UnimToolButton6'
        end
        object cntCustomers: TUnimToolButton
          Left = 48
          Top = 0
          Width = 410
          Height = 48
          Hint = ''
          Style = tbsContainer
          Caption = 'cntCustomers'
          object dbnCustomers: TUnimDBNavigator
            Left = 0
            Top = 4
            Width = 340
            Height = 42
            Hint = ''
            DataSource = UniMainModule.dsCustomers
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
            TabOrder = 1
          end
        end
      end
      object dbgCustomers: TUnimDBGrid
        Left = 1
        Top = 49
        Width = 490
        Height = 545
        Hint = ''
        Align = alClient
        DataSource = UniMainModule.dsCustomers
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete]
        Columns = <
          item
            Title.Alignment = taCenter
            Title.Caption = 'ID'
            FieldName = 'ID'
            Visible = False
            Width = 114
          end
          item
            Title.Alignment = taCenter
            Title.Caption = 'Name'
            FieldName = 'Name'
            Width = 477
          end>
      end
    end
    object cpProducts: TUnimCarouselPage
      Left = 0
      Top = 0
      Width = 492
      Height = 595
      Hint = 'Products'
      ExplicitWidth = 768
      ExplicitHeight = 977
      object barProducts: TUnimToolBar
        Left = 1
        Top = 1
        Width = 490
        Height = 48
        Hint = ''
        Caption = 'Products'
        LayoutAttribs.Pack = 'justify'
        ExplicitWidth = 766
        object UnimToolButton4: TUnimToolButton
          Left = 0
          Top = 0
          Width = 48
          Height = 48
          Hint = ''
          Style = tbsContainer
          Caption = 'UnimToolButton4'
        end
        object cntProducts: TUnimToolButton
          Left = 48
          Top = 0
          Width = 410
          Height = 48
          Hint = ''
          Style = tbsContainer
          Caption = 'cntProducts'
          object dbnProducts: TUnimDBNavigator
            Left = 0
            Top = 4
            Width = 340
            Height = 42
            Hint = ''
            DataSource = UniMainModule.dsProducts
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
            TabOrder = 1
          end
        end
      end
      object dbgProducts: TUnimDBGrid
        Left = 1
        Top = 49
        Width = 490
        Height = 545
        Hint = ''
        Align = alClient
        DataSource = UniMainModule.dsProducts
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete]
        Columns = <
          item
            Title.Alignment = taCenter
            Title.Caption = 'ID'
            FieldName = 'ID'
            Visible = False
            Width = 114
          end
          item
            Title.Alignment = taCenter
            Title.Caption = 'Description'
            FieldName = 'Description'
            Width = 360
          end
          item
            Title.Alignment = taCenter
            Title.Caption = 'Price'
            FieldName = 'Price'
            Width = 118
          end>
      end
    end
  end
end
