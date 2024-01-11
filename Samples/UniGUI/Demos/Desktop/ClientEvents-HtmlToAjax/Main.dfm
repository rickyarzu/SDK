object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 466
  ClientWidth = 614
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object HTMLFrame: TUniHTMLFrame
    Left = 0
    Top = 0
    Width = 614
    Height = 249
    Hint = ''
    HTML.Strings = (
      '<script>'
      '    function callServer(elmnt, event) {'
      '        var HTMLFrame = Ext.getCmp("_HTMLFrame"); '
      '        var params=[];'
      '        '
      '        switch (elmnt.type) {'
      '            case "text":'
      '            case "password":'
      
        '                params = ["id="+elmnt.id, "val="+elmnt.value, "x' +
        'event="+event ];'
      '                break;'
      '            case "button":'
      
        '                params = ["id="+elmnt.id, "val="+elmnt.value, "x' +
        'event="+event ];'
      '                break;'
      '            case "checkbox":'
      
        '                params = ["id="+elmnt.id, "val="+elmnt.value, "c' +
        'hecked="+elmnt.checked, "xevent="+event ];'
      '                break;'
      '        };'
      '        '
      '        if (params.length>0) {'
      '            ajaxRequest(HTMLFrame, '#39'callserver'#39', params);'
      '        }'
      '    }'
      '</script>'
      
        '<input type="text" id="txt1" name="txt1" onblur="callServer(this' +
        ','#39'onblur'#39')"><br>'
      
        '<input type="password" id="psw1" name="psw1" onblur="callServer(' +
        'this,'#39'onblur'#39')"><br>'
      '<br>'
      ''
      
        '<input type="checkbox" id="chBox1" name="chBox1" value="1" oncli' +
        'ck="callServer(this,'#39'onclick'#39')">'
      '<label for="chBox1">CheckBox1</label><br>'
      '<br>'
      ''
      
        '<input type="button" id="btn1" name="btn1" value="ClickMe" oncli' +
        'ck="callServer(this,'#39'onclick'#39')"><br>'
      '<br>'
      '<br>')
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.id' +
        ' = '#39'_HTMLFrame'#39';'#13#10'}')
    OnAjaxEvent = HTMLFrameAjaxEvent
  end
  object Memo: TUniMemo
    Left = 0
    Top = 249
    Width = 614
    Height = 217
    Hint = ''
    ScrollBars = ssBoth
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ReadOnly = True
    TabOrder = 1
  end
  object btnMemo: TUniButton
    Left = 528
    Top = 432
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'ClearMemo'
    TabOrder = 2
    OnClick = btnMemoClick
  end
end
