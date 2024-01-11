object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 677
  ClientWidth = 738
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniHTMLMemo1: TUniHTMLMemo
    Left = 0
    Top = 0
    Width = 738
    Height = 167
    Hint = ''
    Lines.Strings = (
      '<!DOCTYPE html>'
      '<html>'
      #9'<head>'
      
        '                <meta http-equiv="Content-Type" content="text/ht' +
        'ml;charset=UTF-8"> '
      '                <meta charset="UTF-8" />'
      #9#9'<title>Images</title>'
      #9#9'<style type="text/css">'
      #9#9#9'body {'
      #9#9#9#9'color: #665544;'
      #9#9#9#9'background-color: #d4d0c6;'
      #9#9#9#9'background-image: url("files/images/backdrop.gif");'
      #9#9#9#9'font-family: Georgia, "Times New Roman", serif;'
      #9#9#9#9'text-align: center;}'
      #9#9#9'.wrapper {'
      #9#9#9#9'width: 720px;'
      #9#9#9#9'margin: 0px auto;}'
      #9#9#9'.header {'
      #9#9#9#9'margin: 0px 0px 20px 0px;}'
      #9#9#9'.entry {'
      #9#9#9#9'width: 220px;'
      #9#9#9#9'float: left;'
      #9#9#9#9'margin: 10px;'
      #9#9#9#9'height: 198px;'
      #9#9#9#9'background-image: url("files/images/shadow.png");'
      #9#9#9#9'background-repeat: no-repeat;'
      #9#9#9#9'background-position: bottom;}'
      #9#9#9'figure {'
      #9#9#9#9'display: block;'
      #9#9#9#9'width: 202px;'
      #9#9#9#9'height: 170px;'
      #9#9#9#9'background-color: #e7e3d8;'
      #9#9#9#9'margin: 0;'
      #9#9#9#9'padding: 9px;'
      #9#9#9#9'text-align: left;}'
      #9#9#9'figure img {'
      #9#9#9#9'width: 200px;'
      #9#9#9#9'height: 150px;'
      #9#9#9#9'border: 1px solid #d6d6d6;}'
      #9#9#9'figcaption {'
      #9#9#9#9'background-image: url("files/images/icon.png");'
      #9#9#9#9'padding-left: 20px;'
      #9#9#9#9'background-repeat: no-repeat;}'
      #9#9'</style>'
      #9'</head>'
      #9'<body>'
      #9
      #9#9'<div class="wrapper">'
      #9#9#9'<div class="header" style="text-align: left;">'
      
        '                            <font face="arial"><b>Sample taken f' +
        'rom:</b> <a href="http://www.htmlandcssbook.com/code-samples/cha' +
        'pter-16/example.html">http://www.htmlandcssbook.com/code-samples' +
        '/chapter-16/example.html</a></font></div><div class="header" sty' +
        'le="font-family: tahoma, arial, verdana, sans-serif;"><br>'
      
        #9#9#9#9'<img src="files/images/title.gif" alt="Galerie Botanique" wi' +
        'dth="456" height="122">'
      
        #9#9#9#9'<p>Here is a selection of antique botanical prints held in o' +
        'ur collection.</p>'
      #9#9#9'</div>'
      
        #9#9#9'<div class="entry" style="font-family: tahoma, arial, verdana' +
        ', sans-serif;">'
      
        #9#9#9#9'<figure><img src="files/images/print-01.jpg" alt="Helianthus' +
        '">'
      #9#9#9#9#9'<figcaption>Helianthus</figcaption>'
      #9#9#9#9'</figure>'
      #9#9#9'</div>'
      
        #9#9#9'<div class="entry" style="font-family: tahoma, arial, verdana' +
        ', sans-serif;">'
      
        #9#9#9#9'<figure><img src="files/images/print-02.jpg" alt="Passiflora' +
        '">'
      #9#9#9#9#9'<figcaption>Passiflora  '#1662#1575#1587#1740#1601#1604#1608#1585#1575'</figcaption>'
      #9#9#9#9'</figure>'
      #9#9#9'</div>'
      
        #9#9#9'<div class="entry" style="font-family: tahoma, arial, verdana' +
        ', sans-serif;">'
      
        #9#9#9#9'<figure><img src="files/images/print-03.jpg" alt="Nyctocalos' +
        '">'
      #9#9#9#9#9'<figcaption>Nyctocalos</figcaption>'
      #9#9#9#9'</figure>'
      #9#9#9'</div>'
      
        #9#9#9'<div class="entry" style="font-family: tahoma, arial, verdana' +
        ', sans-serif;">'
      
        #9#9#9#9'<figure><img src="files/images/print-04.jpg" alt="Polianthes' +
        '">'
      #9#9#9#9#9'<figcaption>Polianthes</figcaption>'
      #9#9#9#9'</figure>'
      #9#9#9'</div>'
      
        #9#9#9'<div class="entry" style="font-family: tahoma, arial, verdana' +
        ', sans-serif;">'
      #9#9#9#9'<figure><img src="files/images/print-05.jpg" alt="Ficus">'
      #9#9#9#9#9'<figcaption>Ficus</figcaption>'
      #9#9#9#9'</figure>'
      #9#9#9'</div>'
      
        #9#9#9'<div class="entry" style="font-family: tahoma, arial, verdana' +
        ', sans-serif;">'
      
        #9#9#9#9'<figure><img src="files/images/print-06.jpg" alt="Dendrobium' +
        '">'
      #9#9#9#9#9'<figcaption>Dendrobium</figcaption>'
      #9#9#9#9'</figure>'
      #9#9#9'</div>'
      #9#9'</div>'
      #9
      #9'</body>'
      '</html>')
    Align = alTop
    Color = clWindow
    TabOrder = 0
  end
  object UniImage1: TUniImage
    Left = 0
    Top = 203
    Width = 738
    Height = 474
    Hint = ''
    Align = alClient
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 167
    Width = 738
    Height = 36
    Hint = ''
    Align = alTop
    TabOrder = 2
    ShowCaption = False
    Caption = 'UniPanel1'
    DesignSize = (
      738
      36)
    object UniButton1: TUniButton
      Left = 16
      Top = 5
      Width = 125
      Height = 25
      Hint = ''
      Caption = 'Convert HTML to PNG'
      TabOrder = 1
      ScreenMask.Enabled = True
      OnClick = UniButton1Click
    end
    object Save: TUniButton
      Left = 184
      Top = 5
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'Save  PNG'
      TabOrder = 2
      OnClick = SaveClick
    end
    object UniComboBox1: TUniComboBox
      Left = 347
      Top = 7
      Width = 390
      Hint = ''
      Text = 'UniComboBox1'
      Items.Strings = (
        'http://www.unigui.com'
        'http://forums.unigui.com'
        'http://www.google.com'
        'https://www.google.com/?hl=ar')
      Anchors = [akTop, akRight]
      TabOrder = 3
      ForceSelection = False
      ScreenMask.Enabled = True
      FieldLabel = 'Convert a web page'
      FieldLabelWidth = 120
      OnSelect = UniComboBox1Select
    end
  end
end
