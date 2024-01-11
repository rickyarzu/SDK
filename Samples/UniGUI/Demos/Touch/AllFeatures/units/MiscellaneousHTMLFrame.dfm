object UniMiscellaneousHTMLFrame: TUniMiscellaneousHTMLFrame
  Left = 0
  Top = 0
  Width = 442
  Height = 609
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 442
    Height = 609
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentAlignmentControl = False
    AlignmentControl = uniAlignmentClient
    object UnimBitBtn1: TUnimBitBtn
      Left = 0
      Top = 0
      Width = 442
      Height = 47
      Hint = ''
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
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
      UI = 'action'
      Caption = 'Apply'
      OnClick = UnimBitBtn1Click
    end
    object UnimHTMLFrame1: TUnimHTMLFrame
      Left = 0
      Top = 47
      Width = 442
      Height = 409
      Hint = ''
      HTML.Strings = (
        '<!DOCTYPE html>'
        '<html>'
        '<head>'
        '<style>'
        'header {'
        '    background-color:red;'
        '    color:white;'
        '    text-align:center;'
        '    padding:5px;'#9' '
        '}'
        'nav {'
        '    line-height:30px;'
        '    background-color:#ee00ee;'
        '    height:auto;'
        '    width:100px;'
        '    float:left;'
        '    padding:2px;'
        '    overflow:auto;'#9'      '
        '}'
        'section {'
        '    width:350px;'
        '    float:left;'
        '    padding:10px;'#9' '#9' '
        '}'
        'footer {'
        '    background-color:black;'
        '    color:white;'
        '    clear:both;'
        '    text-align:center;'
        '    padding:5px;'#9' '#9' '
        '}</style>'
        '</head>'
        '<body>'
        ''
        '<header>'
        '<h1>City Gallery</h1>'
        '</header>'
        ''
        '<nav>'
        'London<br>'
        'Paris<br>'
        'Tokyo<br>'
        '</nav>'
        ''
        '<section>'
        '<h1>London</h1>'
        '<p>'
        
          'London is the capital city of England. It is the most populous c' +
          'ity in the United Kingdom,'
        'with a metropolitan area of over 13 million inhabitants.'
        '</p>'
        '<p>'
        
          'Standing on the River Thames, London has been a major settlement' +
          ' for two millennia,'
        
          'its history going back to its founding by the Romans, who named ' +
          'it Londinium.'
        '</p>'
        '</section>'
        ''
        '<footer>'
        
          '<a href="http://www.w3schools.com">Code samples taken from W3Sch' +
          'ools</a>'
        '</footer>'
        ''
        '</body>'
        '</html>')
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
    end
    object UnimMemo1: TUnimMemo
      Left = 0
      Top = 456
      Width = 442
      Height = 153
      Hint = ''
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
    end
  end
end
