object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 498
  ClientWidth = 757
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnAjaxEvent = UniFormAjaxEvent
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniHTMLFrame1: TUniHTMLFrame
    Left = 0
    Top = 145
    Width = 757
    Height = 181
    Hint = ''
    HTML.Strings = (
      '<div style="background-color:#ccc">'
      '<br/><br/><br/><br/><br/>'
      
        '<form name="input" action="{URL_CALLBACK}" method="POST" target=' +
        '"{CALLBACK_TARGET}">'
      'Username: <input type="text" name="user" value="Enter Text...">'
      '<input type="submit" value="Submit">'
      '</form>'
      '<br/><br/><br/><br/><br/>'
      '</div>')
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
  end
  object UniEdit1: TUniEdit
    Left = 8
    Top = 332
    Width = 153
    Hint = ''
    Text = 'UniEdit1'
    TabOrder = 1
  end
  object UniSyntaxEdit1: TUniSyntaxEdit
    Left = 0
    Top = 0
    Width = 757
    Height = 145
    Hint = ''
    Language = 'HTML'
    Font.Height = -13
    Font.Name = 'Courier New'
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
  end
  object UniButton1: TUniButton
    Left = 670
    Top = 332
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Update'
    TabOrder = 3
    OnClick = UniButton1Click
  end
  object UniMemo1: TUniMemo
    Left = 8
    Top = 360
    Width = 409
    Height = 137
    Hint = ''
    Lines.Strings = (
      '_UniMemo1')
    TabOrder = 4
  end
end
