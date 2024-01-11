object UniJQuerySampleBasicJQuery: TUniJQuerySampleBasicJQuery
  Left = 0
  Top = 0
  Width = 849
  Height = 666
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    849
    666)
  object UniContainerPanel1: TUniContainerPanel
    Left = 3
    Top = 3
    Width = 843
    Height = 660
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniHTMLFrame1: TUniHTMLFrame
      Left = 0
      Top = 19
      Width = 843
      Height = 373
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
      Top = 411
      Width = 843
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
      TabOrder = 2
    end
    object UniLabel2: TUniLabel
      Left = 0
      Top = 392
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
      TabOrder = 3
    end
  end
end
