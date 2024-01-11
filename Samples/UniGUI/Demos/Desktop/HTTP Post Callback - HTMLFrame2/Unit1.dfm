object UniForm1: TUniForm1
  Left = 0
  Top = 0
  ClientHeight = 374
  ClientWidth = 643
  Caption = 'UniForm1'
  Color = clBtnFace
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnAjaxEvent = UniFormAjaxEvent
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniHTMLFrame1: TUniHTMLFrame
    Left = 0
    Top = 0
    Width = 643
    Height = 374
    Hint = ''
    HTML.Strings = (
      
        '<form name="input" action="{URL_CALLBACK}" method="POST" target=' +
        '"{CALLBACK_TARGET}">'
      '<div style="padding:10;background-color:#eee;color:#0000CC">'
      '<br/>'
      '<br/>'
      '<br/>'
      '<br/>'
      ''
      
        'First name: <input type="text" name="firstname" value ="Name"><b' +
        'r>'
      'Last name: <input type="text" name="lastname" value="Last Name">'
      ''
      '<br/>'
      '<br/>'
      ''
      '<input type="submit" value="Submit">'
      ''
      '<a href="{CANCEL_URL}" target="{CALLBACK_TARGET}">'
      '  <input type="button" value="Cancel" />'
      '</a>'
      '<br/>'
      '<br/>'
      '<br/>'
      '<br/>'
      ''
      '</div >'
      '</form> ')
    AutoScroll = False
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
  end
end
