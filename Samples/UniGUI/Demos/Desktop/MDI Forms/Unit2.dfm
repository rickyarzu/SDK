object UniForm2: TUniForm2
  Left = 0
  Top = 0
  ClientHeight = 223
  ClientWidth = 517
  Caption = 'UniForm2'
  Color = clBtnFace
  FormStyle = fsMDIChild
  Position = poDefault
  OldCreateOrder = False
  Visible = True
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 0
    Width = 517
    Height = 223
    Hint = ''
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    LoadMask.Message = 'Loading data...'
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
  end
end
