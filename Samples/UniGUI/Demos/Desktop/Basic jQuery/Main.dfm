object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 697
  ClientWidth = 896
  Caption = 'MainForm'
  Position = poDesktopCenter
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniLabel1: TUniLabel
    Left = 0
    Top = 0
    Width = 958
    Height = 19
    Hint = ''
    Alignment = taCenter
    TextConversion = txtHTML
    Caption = 
      '<a href="http://www.radoslavdimov.com/jquery-plugins/jquery-plug' +
      'in-digiclock/" target="new">jQuery Clock</a>'
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    ParentFont = False
    Font.Color = clNavy
    Font.Height = -16
    Font.Style = [fsBold]
    TabOrder = 0
  end
  object UniLabel2: TUniLabel
    Left = 0
    Top = 429
    Width = 1022
    Height = 19
    Hint = ''
    Alignment = taCenter
    TextConversion = txtHTML
    Caption = 
      '<a href="http://tutorialzine.com/2009/12/colorful-clock-jquery-c' +
      'ss/" target="new">A Colorful Clock With CSS & jQuery</a>'
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    ParentFont = False
    Font.Color = clNavy
    Font.Height = -16
    Font.Style = [fsBold]
    TabOrder = 1
  end
  object UniHTMLFrame1: TUniHTMLFrame
    Left = 0
    Top = 19
    Width = 896
    Height = 410
    Hint = ''
    HTML.Strings = (
      '<div id="digiclock"></div>')
    AfterScript.Strings = (
      '$('#39'#digiclock'#39').jdigiclock({'
      '  // Configuration goes here'
      '   clockImagesPath:'#9'"files/jdigiclock/images/clock/",'
      '   weatherImagesPath: "files/jdigiclock/images/weather/",'
      '});')
    AllowScriptInHTML = False
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
  end
  object UniHTMLFrame2: TUniHTMLFrame
    Left = 0
    Top = 448
    Width = 896
    Height = 249
    Hint = ''
    HTML.Strings = (
      '<div id="fancyClock" style="width:602px"></div>')
    AfterScript.Strings = (
      
        '/* This code is executed after the DOM has been completely loade' +
        'd */'
      '$('#39'#fancyClock'#39').tzineClock();')
    AllowScriptInHTML = False
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
  end
end
