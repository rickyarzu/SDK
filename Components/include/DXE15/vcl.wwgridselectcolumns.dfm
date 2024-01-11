object wwGridSelectColumnsForm: TwwGridSelectColumnsForm
  Left = 0
  Top = 0
  Caption = 'Add Selected Columns'
  ClientHeight = 281
  ClientWidth = 246
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnResize = FormResize
  OnShow = FormShow
  DesignSize = (
    246
    281)
  PixelsPerInch = 96
  TextHeight = 15
  object CheckListBox1: TCheckListBox
    Left = 3
    Top = 4
    Width = 22
    Height = 237
    Anchors = [akLeft, akTop, akRight, akBottom]
    ItemHeight = 15
    TabOrder = 0
  end
  object TreeView1: TwwSelectColumnsTreeView
    Left = 0
    Top = 0
    Width = 245
    Height = 241
    Anchors = [akLeft, akTop, akRight, akBottom]
    Indent = 19
    Options = [wwtvoExpandOnDblClk, wwtvoHideSelection, wwtvoShowButtons, wwtvoShowLines, wwtvoToolTips]
    Items.StreamVersion = 1
    Items.Data = {00000000}
    SortType = wwtstText
    TabOrder = 1
  end
end
