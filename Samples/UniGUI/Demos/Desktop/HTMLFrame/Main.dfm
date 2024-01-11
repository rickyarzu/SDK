object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 577
  ClientWidth = 803
  Caption = 'MainForm'
  Position = poDesktopCenter
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  DesignSize = (
    803
    577)
  PixelsPerInch = 96
  TextHeight = 13
  object UniSyntaxEdit1: TUniSyntaxEdit
    Left = 8
    Top = 223
    Width = 787
    Height = 315
    Hint = ''
    Language = 'HTML'
    Font.Height = -13
    Font.Name = 'Courier New'
    Anchors = [akLeft, akTop, akRight, akBottom]
  end
  object UniHTMLFrame1: TUniHTMLFrame
    Left = 8
    Top = 8
    Width = 787
    Height = 209
    Hint = ''
    HTML.Strings = (
      '<script type="text/javascript">'
      'function removeOption()'
      '{'
      'var x=document.getElementById("mySelect");'
      'x.remove(x.selectedIndex);'
      '}'
      '</script>'
      ''
      '<select id="mySelect">'
      '  <option>Apple</option>'
      '  <option>Pear</option>'
      '  <option>Banana</option>'
      '  <option>Orange</option>'
      '</select>'
      
        '<input type="button" onclick="removeOption()" value="Remove sele' +
        'cted option">'
      ''
      '<br><br><br>'
      ''
      '<script type="text/javascript">'
      'function changeBorder()'
      '{'
      'document.getElementById('#39'myTable'#39').border="10";'
      '}'
      '</script>'
      ''
      '<table border="1" id="myTable">'
      '<tr>'
      '<td>100</td>'
      '<td>200</td>'
      '</tr>'
      '<tr>'
      '<td>300</td>'
      '<td>400</td>'
      '</tr>'
      '</table>'
      '<br />'
      
        '<input type="button" onclick="changeBorder()" value="Change Bord' +
        'er">'
      ''
      '<br><br><br>'
      
        '<a href='#39'http://www.w3schools.com/'#39' target='#39'new'#39'>Code samples ta' +
        'ken from W3Schools</a>')
    Anchors = [akLeft, akTop, akRight]
  end
  object UniBitBtn1: TUniBitBtn
    Left = 720
    Top = 544
    Width = 75
    Height = 25
    Hint = ''
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000012170000121700000000000000000000FF00FFFF00FF
      BCA89A988270806D59AA9D901C1C1C606060606060858279A6998B806D59806D
      59806D59806D59FF00FFFF00FFFF00FFBCA89AFBF6F3FBF5F2FAF3F0A39D9894
      E4F60098C8002C3CBAB8B4ECE1DAF6EBE4F7ECE6806D59FF00FFFF00FFFF00FF
      BCA89AFBF7F4F0DDD3FBF5F2A39D980098C84ABEDF0098C8002C3CBAB8B4ECE1
      DAF6EBE4806D59FF00FFFF00FFFF00FFBCA89AF0DFD5B25422E1BCA8CEE4EA00
      98C894E4F64ABEDF0098C8002C3CBAB8B4ECE1DA806D59FF00FFFF00FFFF00FF
      CDB4A4B25422CB6C39B65B2BFBF6F3CEE4EA0098C894E4F64ABEDF0098C8002C
      3CBAB8B4806D59FF00FFFF00FFFF00FFB25422EF8A54EF8A54B45624DFB8A2FB
      F6F3CEE4EA0098C894E4F64ABEDF0098C8606060A99889FF00FFFF00FFB25422
      EF8A54EF8A54FFC39AD2703BB75826F3E4DCFBF6F3CEE4EA0098C894E4F66060
      60C7AA9700009AFF00FFCB6D3DFFC39AEF8A54FFC39ADA8050FCAE7EBB5C29D0
      9778FBF7F4FBF6F3CEE4EA808080D2BAAC0030F80000C800009AFF00FFCB6D3D
      FFC39ACB6D3DCE9373E79060F9A575B35725ECD7CBFBF7F4FBF6F3F3EAE50030
      F86D8AFD0030F8292BA6FF00FFFF00FFCB6D3DF3E4DCFDFBFAC88662F09E6EEB
      9361C27851FBF8F5FBF7F4FBF6F3CED2F20030F8193CD7FF00FFFF00FFFF00FF
      CDB4A4FFFFFFFFFEFEFBF6F4BF7046F8AB7CD47B49DFB9A4FBF8F5FBF7F4FBF6
      F3FBF5F2AA9D90FF00FFFF00FFFF00FFBCA89AFFFFFFFFFFFFFFFEFEF6EBE6BB
      6437FAAE80C76937F8EFEABCA89A988270806D59806D59FF00FFFF00FFFF00FF
      BCA89AFFFFFFFFFFFFFFFFFFFFFEFEEED9CEBF6534E28C5BD09879BCA89AF3EB
      E6E1C6B2806D59FF00FFFF00FFFF00FFBCA89AFFFFFFFFFFFFFFFFFFFFFFFFFF
      FEFEE3C1AFB25422BF6130BA9A86E1C6B2806D59FF00FFFF00FFFF00FFFF00FF
      BCA89AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEF6EBE6F5E8E1BBA393806D
      59FF00FFFF00FFFF00FFFF00FFFF00FFBCA89ABCA89ABCA89ABCA89ABCA89ABC
      A89ABCA89ABCA89ABCA89ABCA89AFF00FFFF00FFFF00FFFF00FF}
    Caption = 'Apply'
    Anchors = [akRight, akBottom]
    TabOrder = 2
    OnClick = UniBitBtn1Click
  end
end
