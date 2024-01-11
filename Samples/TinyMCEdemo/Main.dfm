object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 546
  ClientWidth = 692
  Color = clBtnFace
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnAjaxEvent = UniFormAjaxEvent
  DesignSize = (
    692
    546)
  PixelsPerInch = 96
  TextHeight = 13
  object btnSetText: TUniButton
    Left = 24
    Top = 442
    Width = 121
    Height = 25
    Caption = 'Set text'
    TabOrder = 0
    OnClick = btnSetTextClick
  end
  object UniHTMLFrame1: TUniHTMLFrame
    Left = 24
    Top = 16
    Width = 649
    Height = 420
    HTML.Strings = (
      
        '<textarea id="ed1" style="width: 100%; height: 400px;"></textare' +
        'a>'
      '<script>'
      'tinyMCE.init({'
      '   theme : "advanced",'
      
        '   plugins : "autolink,lists,spellchecker,pagebreak,style,layer,' +
        'table,advhr,advimage,advlink,emotions,iespell,inlinepopups,inser' +
        'tdatetime,preview,media,searchreplace,print,contextmenu,paste,di' +
        'rectionality,fullscreen,noneditable,visualchars,nonbreaking,xhtm' +
        'lxtras,template",'
      ''
      '   // Theme options'
      
        '   theme_advanced_buttons1 : "newdocument,|,bold,italic,underlin' +
        'e,strikethrough,|,justifyleft,justifycenter,justifyright,justify' +
        'full,|,styleselect,formatselect,fontselect,fontsizeselect",'
      
        '   theme_advanced_buttons2 : "cut,copy,paste,pastetext,pasteword' +
        ',|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,' +
        '|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,inser' +
        'tdate,inserttime,preview,|,forecolor,backcolor",'
      
        '   theme_advanced_buttons3 : "tablecontrols,|,hr,removeformat,vi' +
        'sualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print' +
        ',|,ltr,rtl,|,fullscreen",'
      
        '   theme_advanced_buttons4 : "insertlayer,moveforward,movebackwa' +
        'rd,absolute,|,styleprops,spellchecker,|,cite,abbr,acronym,del,in' +
        's,attribs,|,visualchars,nonbreaking,template,blockquote,pagebrea' +
        'k,|,insertfile,insertimage",'
      '   theme_advanced_toolbar_location : "top",'
      '   theme_advanced_toolbar_align : "left",'
      '   theme_advanced_statusbar_location : "bottom",'
      '   theme_advanced_resizing : true,'
      ''
      
        '   extended_valid_elements : "img[class=myclass|!src|border:0|al' +
        't|title|width|height]",'
      '   mode: "exact",'
      '   elements : "ed1"'
      '});'
      '</script>')
    AutoScroll = False
    Anchors = [akLeft, akTop, akRight]
  end
  object btnGetText: TUniButton
    Left = 151
    Top = 442
    Width = 121
    Height = 25
    Caption = 'Get text'
    TabOrder = 2
    OnClick = btnGetTextClick
  end
  object UniMemo1: TUniMemo
    Left = 278
    Top = 442
    Width = 395
    Height = 89
    Lines.Strings = (
      'UniMemo1')
    Anchors = [akLeft, akTop, akRight]
    Color = clWindow
    TabOrder = 3
  end
end
