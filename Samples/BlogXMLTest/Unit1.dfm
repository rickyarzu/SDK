object Form1: TForm1
  Left = 343
  Top = 350
  Caption = 'Form1'
  ClientHeight = 390
  ClientWidth = 729
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lv: TListView
    Left = 0
    Top = 41
    Width = 729
    Height = 349
    Align = alClient
    Columns = <
      item
        Caption = 'Title'
        MinWidth = 150
        Width = 150
      end
      item
        Caption = 'URL'
        MinWidth = 85
        Width = 85
      end
      item
        Caption = 'Description'
        MinWidth = 150
        Width = 150
      end>
    ColumnClick = False
    FlatScrollBars = True
    HotTrackStyles = [htHandPoint, htUnderlineHot]
    ReadOnly = True
    RowSelect = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    ViewStyle = vsReport
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 729
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clGray
    TabOrder = 1
    DesignSize = (
      729
      41)
    object Label1: TLabel
      Left = 0
      Top = 21
      Width = 729
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'http://delphi.about.com'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 115
    end
    object Label2: TLabel
      Left = 0
      Top = 5
      Width = 729
      Height = 16
      Align = alTop
      Alignment = taCenter
      Caption = 'About Delphi Programming'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 172
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 729
      Height = 5
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
    end
    object btnRefresh: TButton
      Left = 647
      Top = 8
      Width = 73
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Refresh'
      TabOrder = 1
      OnClick = btnRefreshClick
    end
  end
  object XMLDoc: TXMLDocument
    Left = 80
    Top = 96
    DOMVendorDesc = 'Omni XML'
  end
end
