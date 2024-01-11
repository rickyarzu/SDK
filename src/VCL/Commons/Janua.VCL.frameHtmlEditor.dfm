object frameHTMLEditor: TframeHTMLEditor
  Left = 0
  Top = 0
  Width = 1168
  Height = 786
  TabOrder = 0
  object Splitter1: TSplitter
    Left = 272
    Top = 112
    Width = 6
    Height = 652
    ExplicitTop = 52
    ExplicitHeight = 799
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1168
    Height = 56
    AutoSize = True
    BorderWidth = 1
    ButtonWidth = 131
    Caption = 'ToolBar1'
    Images = ImageList1
    List = True
    ParentShowHint = False
    ShowCaptions = True
    AllowTextButtons = True
    ShowHint = True
    TabOrder = 0
    object NewBtn: TToolButton
      Left = 0
      Top = 0
      Action = HtActionNew1
    end
    object OpenBtn: TToolButton
      Left = 24
      Top = 0
      Action = HtFileOpen1
    end
    object ToolButton17: TToolButton
      Left = 48
      Top = 0
      Action = HtFileSave1
    end
    object SaveAsBtn: TToolButton
      Left = 72
      Top = 0
      Action = HtFileSaveAs1
    end
    object ToolButton21: TToolButton
      Left = 96
      Top = 0
      Caption = 'Save All '
      ImageIndex = 41
      Style = tbsTextButton
      OnClick = ToolButton21Click
    end
    object PrintPreviewBtn: TToolButton
      Left = 171
      Top = 0
      Caption = 'Print Preview'
      ImageIndex = 23
      OnClick = PrintPreviewBtnClick
    end
    object ToolButton3: TToolButton
      Left = 195
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 5
      Style = tbsSeparator
    end
    object CopyBtn: TToolButton
      Left = 203
      Top = 0
      Action = HtActionCopy1
    end
    object PasteBtn: TToolButton
      Left = 227
      Top = 0
      Action = HtActionPaste1
    end
    object ToolButton16: TToolButton
      Left = 251
      Top = 0
      Action = HtActionCut1
    end
    object PasteImageBtn: TToolButton
      Left = 275
      Top = 0
      Action = HtActionPasteImage1
    end
    object ToolButton4: TToolButton
      Left = 299
      Top = 0
      Action = HtActionUndo1
    end
    object RedoBtn: TToolButton
      Left = 323
      Top = 0
      Hint = 'Redo last action'
      Action = HtActionRedo1
      ImageIndex = 46
    end
    object FindBtn: TToolButton
      Left = 347
      Top = 0
      Hint = 'Find'
      Caption = 'FindBtn'
      ImageIndex = 42
      OnClick = FindBtnClick
    end
    object ToolButton5: TToolButton
      Left = 371
      Top = 0
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 9
      Style = tbsSeparator
    end
    object BoldBtn: TToolButton
      Left = 379
      Top = 0
      Action = HtActionFontBold1
      AutoSize = True
      Style = tbsCheck
    end
    object ItalicBtn: TToolButton
      Left = 403
      Top = 0
      Action = HtActionFontItalic1
      Style = tbsCheck
    end
    object UnderlineBtn: TToolButton
      Left = 427
      Top = 0
      Action = HtActionFontUnderline1
      Style = tbsCheck
    end
    object StrikeBtn: TToolButton
      Left = 451
      Top = 0
      Action = HtActionFontStrikeout1
      Caption = 'Strikeout'
      Style = tbsCheck
    end
    object ToolButton7: TToolButton
      Left = 475
      Top = 0
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 16
      Style = tbsSeparator
    end
    object SubScriptBtn: TToolButton
      Left = 483
      Top = 0
      Action = HtActionSubscript1
      Style = tbsCheck
    end
    object SuperScriptBtn: TToolButton
      Left = 507
      Top = 0
      Action = HtActionSuperscript1
      Style = tbsCheck
    end
    object ToolButton2: TToolButton
      Left = 531
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 5
      Style = tbsSeparator
    end
    object AlignLeftBtn: TToolButton
      Tag = 1
      Left = 539
      Top = 0
      Action = HtActionAlignLeft1
      Grouped = True
      Style = tbsCheck
    end
    object AlignCenterBtn: TToolButton
      Tag = 3
      Left = 563
      Top = 0
      Action = HtActionAlignCenter1
      Grouped = True
      Style = tbsCheck
    end
    object AlignRightBtn: TToolButton
      Tag = 2
      Left = 587
      Top = 0
      Action = HtActionAlignRight1
      Grouped = True
      Style = tbsCheck
    end
    object ToolButton6: TToolButton
      Left = 0
      Top = 0
      Width = 8
      Caption = 'ToolButton6'
      ImageIndex = 0
      Wrap = True
      Style = tbsSeparator
    end
    object ListULBtn: TToolButton
      Tag = 213
      Left = 0
      Top = 30
      Action = HtActionUnorderedList1
      AllowAllUp = True
      Grouped = True
      Style = tbsCheck
    end
    object ListOLBtn: TToolButton
      Left = 24
      Top = 30
      Action = HtActionOrderedList1
      AllowAllUp = True
      Grouped = True
      Style = tbsCheck
    end
    object DecreaseIdentBtn: TToolButton
      Left = 48
      Top = 30
      Action = HtActionDecreaseIndent1
    end
    object IncreaseIdentBtn: TToolButton
      Left = 72
      Top = 30
      Action = HtActionIncreaseIndent1
    end
    object ListStyleCombo: TComboBox
      Left = 96
      Top = 30
      Width = 81
      Height = 23
      Style = csDropDownList
      Enabled = False
      ItemIndex = 0
      TabOrder = 2
      Text = 'Decimal'
      OnChange = ListStyleComboChange
      Items.Strings = (
        'Decimal'
        'Lower Alpha'
        'Upper Alpha'
        'Lower Roman'
        'Upper Roman')
    end
    object ToolButton8: TToolButton
      Left = 177
      Top = 30
      Width = 8
      Caption = 'ToolButton8'
      ImageIndex = 11
      Style = tbsSeparator
    end
    object LinkBtn: TToolButton
      Left = 185
      Top = 30
      Action = HtActionAddUrl1
    end
    object AddImage: TToolButton
      Left = 209
      Top = 30
      Hint = 'Add Image'
      Caption = 'AddImage'
      ImageIndex = 25
      OnClick = AddImageClick
    end
    object ToolButton11: TToolButton
      Left = 233
      Top = 30
      Width = 8
      Caption = 'ToolButton11'
      ImageIndex = 27
      Style = tbsSeparator
    end
    object HtAddTableCombo1: THtAddTableCombo
      Left = 241
      Top = 30
      Width = 112
      Height = 24
      Style = csOwnerDrawVariable
      DropDownCount = 30
      DropDownWidth = 200
      ItemHeight = 108
      ItemIndex = 0
      TabOrder = 0
      Text = 'Z'
      Items.Strings = (
        'Z'
        'z')
      HTML.Strings = (
        '<style> td {width: 18px; height: 16px; border: solid gray 1px;}'
        ' td:hover {background: orange}'
        ' td:checked {background: orange}'
        
          '.title {background: #dde7ee; color: navy; font-size: 13px; font-' +
          'family: '#39'Arial'#39'; padding: 2px 3px; margin: 1px 0}</style>'
        
          '<div class="title"><xtemplate>TABLE</xtemplate>      <label><br>' +
          '<input type="check" id="fullwidth" >100% width</label> <label><i' +
          'nput type="check" id="fixed">Fixed columns</label></div>'
        
          '<table cellspacing="2"><tr><td id="1"/><td id="2"/><td id="3"/><' +
          'td id="4"/><td id="5"/><td id="6"/><td id="7"/><td id="8"/><td i' +
          'd="9"/><td id="10"/></tr>'
        
          '<tr><td id="1"/><td id="2"/><td id="3"/><td id="4"/><td id="5"/>' +
          '<td id="6"/><td id="7"/><td id="8"/><td id="9"/><td id="10"/></t' +
          'r>'
        
          '<tr><td id="1"/><td id="2"/><td id="3"/><td id="4"/><td id="5"/>' +
          '<td id="6"/><td id="7"/><td id="8"/><td id="9"/><td id="10"/></t' +
          'r>'
        
          '<tr><td id="1"/><td id="2"/><td id="3"/><td id="4"/><td id="5"/>' +
          '<td id="6"/><td id="7"/><td id="8"/><td id="9"/><td id="10"/></t' +
          'r>'
        
          '<tr><td id="1"/><td id="2"/><td id="3"/><td id="4"/><td id="5"/>' +
          '<td id="6"/><td id="7"/><td id="8"/><td id="9"/><td id="10"/></t' +
          'r>'
        
          '<tr><td id="1"/><td id="2"/><td id="3"/><td id="4"/><td id="5"/>' +
          '<td id="6"/><td id="7"/><td id="8"/><td id="9"/><td id="10"/></t' +
          'r>'
        
          '<tr><td id="1"/><td id="2"/><td id="3"/><td id="4"/><td id="5"/>' +
          '<td id="6"/><td id="7"/><td id="8"/><td id="9"/><td id="10"/></t' +
          'r>'
        
          '<tr><td id="1"/><td id="2"/><td id="3"/><td id="4"/><td id="5"/>' +
          '<td id="6"/><td id="7"/><td id="8"/><td id="9"/><td id="10"/></t' +
          'r>')
      ComboHTML.Strings = (
        '<style>body {font-family: Arial; font-size: 13px}</style>'
        '<img src="31"/> Add Table')
      Images = ImageList1
      Editor = E
    end
    object ToolButton12: TToolButton
      Left = 353
      Top = 30
      Action = HtTableAddRow1
    end
    object ToolButton13: TToolButton
      Left = 377
      Top = 30
      Action = HtTableDeleteRow1
    end
    object ToolButton14: TToolButton
      Left = 401
      Top = 30
      Action = HtTableInsertCol1
    end
    object ToolButton15: TToolButton
      Left = 425
      Top = 30
      Action = HtTableDeleteCol1
    end
    object ToolButton18: TToolButton
      Left = 449
      Top = 30
      Action = HtTableIncColspan1
    end
    object ToolButton19: TToolButton
      Left = 473
      Top = 30
      Action = HtTableDecColspan1
    end
    object MergeCellsBtn: TToolButton
      Left = 497
      Top = 30
      Hint = 'Merge Selected Cells'
      Caption = 'MergeCellsBtn'
      ImageIndex = 47
      OnClick = MergeCellsBtnClick
    end
    object ToolButton1: TToolButton
      Left = 521
      Top = 30
      Action = HtActionAddChar1
    end
    object ToolButton20: TToolButton
      Left = 545
      Top = 30
      Width = 8
      Caption = 'ToolButton20'
      ImageIndex = 39
      Style = tbsSeparator
    end
    object TreeViewBtn: TToolButton
      Left = 553
      Top = 30
      AllowAllUp = True
      Caption = 'TreeViewBtn'
      ImageIndex = 38
      Style = tbsCheck
      OnClick = TreeViewBtnClick
    end
    object HtTableBorderCombo1: THtTableBorderCombo
      Left = 577
      Top = 30
      Width = 56
      Height = 24
      Style = csOwnerDrawVariable
      DropDownCount = 30
      DropDownWidth = 400
      Enabled = False
      ItemHeight = 192
      ItemIndex = 0
      TabOrder = 1
      TabStop = False
      Text = 'Z'
      Items.Strings = (
        'Z')
      HTML.Strings = (
        
          '<style>body {min-height: 192px; font-size: 13px } .x {border: do' +
          'tted silver 1px; width:20px; color: gray; height: 20px; position' +
          ': absolute;}.x:hover, .lt:hover, .ma:hover, table:hover td, .mx:' +
          'hover {background: #ffea70; border-color: darkorange; color: dar' +
          'korange!important}.x:active, .lt:active, .ma:active table:active' +
          ' {background: #ffef90; }.ma {position: absolute; border: solid s' +
          'ilver 1px; color: gray}.mx {position: absolute; color: gray; bac' +
          'kground: #eee} .mx div {padding: 1px}.b {border: solid silver 1p' +
          'x; background: white;}.lt {width: 60px; height: 10px; position: ' +
          'absolute; border-left: none; border-top: none; border-right: non' +
          'e; border-color: silver; border-width: 1px;}.s  {box-shadow: 0 0' +
          ' 1 #ccc}.w {height: 14px; font-size: 10px; border: solid silver ' +
          '1px; text-align: center; padding: 2px 0px 0px 0px}.x, .ma {backg' +
          'round: linear-gradient(to bottom, #fff, #f5f5fe 50%, e0e0ef 100%' +
          '); }#all td {border: solid silver 1px; width: 12px; height: 10px' +
          ';}#none td {border: dotted silver 1px;width: 12px; height: 10px;' +
          '}table {boder-collapse: collapse; position: absolute; }#left {bo' +
          'rder-left: solid silver 2px;}#top {border-top: solid silver 2px;' +
          '}#right {border-right: solid silver 2px;}#bottom {border-bottom:' +
          ' solid silver 2px;}#all:checked {border: solid darkorange 2px}#n' +
          'one:checked {border: dotted darkorange 1px}#left:checked {border' +
          '-left: solid darkorange 2px;}#top:checked {border-top: solid dar' +
          'korange 2px;}#right:checked {border-right: solid darkorange 2px;' +
          '}#bottom:checked {border-bottom: solid darkorange 2px;}.lt:check' +
          'ed {border-color: darkorange}.ma:checked, .mx:checked, .mx:check' +
          'ed div, .w:checked {border-color: darkorange; color: darkorange}' +
          '.colors div {float: left; border: solid silver 1px; width: 12px;' +
          ' height: 12px; margin: 0px 2px;}'
        
          ' .colors div:hover {z-index: 2; border-color: orange; aborder-wi' +
          'dth: 2px; box-shadow: 0px 0px 2px orange; }'
        ' .colors2 div {margin-top: -1px; margin-bottom: -1px}'
        ' .colors2 {clear: both}'
        
          ' .title {clear: both; background: #dde7ee; color: navy; font-siz' +
          'e: 13px; font-family: '#39'Arial'#39'; padding: 2px 3px; margin: 2px 0px' +
          '}'
        
          ' .auto {color: navy; font-size: 13px; font-family: '#39'Arial'#39'; padd' +
          'ing: 3px 3px}'
        
          ' .auto:hover {background: linear-gradient(to bottom, #fff6d4, #f' +
          'fe08c)}'
        
          ' </style><div id="s0" ls="2" w="0" class="lt" style="border-bott' +
          'om-style: dotted; left: 122px; top: 5px;" ></div><div id="s1" ls' +
          '="2" w="1" class="lt" style="border-bottom-style: solid; left: 1' +
          '22px; top: 20px;" ></div><div id="s2" ls="2" w="2" class="lt" st' +
          'yle="border-bottom-style: solid; border-width: 2px; left: 122px;' +
          ' top: 35px;" ></div><div id="s3" ls="2" w="3" class="lt" style="' +
          'border-bottom-style: solid; border-width: 3px; left: 122px; top:' +
          ' 50px;" ></div><div id="s4" ls="2" w="4" class="lt" style="borde' +
          'r-bottom-style: solid; border-width: 4px; left: 122px; top: 65px' +
          ';" ></div><div id="s5" ls="2" w="5" class="lt" style="border-bot' +
          'tom-style: solid; border-width: 5px; left: 122px; top: 80px;" ><' +
          '/div><div id=w50 ww="50" class="x s w" style="width: 50px; left:' +
          ' 10px; top: 10px;">50%</div><div id=w75 ww="75" class="x s w" st' +
          'yle="width: 75px; left: 10px; top: 35px;">75%</div><div id=w100 ' +
          'ww="100" class="x s w" style="width: 100px; left: 10px; top: 60p' +
          'x;">100%</div><div id=wauto ww="0" class="x s w" style="width: 7' +
          '0px; left: 10px; top: 85px;">Auto</div><div id="m1" p=0 class="m' +
          'a" style="padding: -2px 2px; left: 11px; top: 126px;" >A</div><d' +
          'iv id="m2" p=2 class="ma" style="padding: -1px 3px; left: 34px; ' +
          'top: 124px;" >A</div><div id="m3" p=5 class="ma" style="padding:' +
          ' 1px 5px; left: 60px; top: 120px;" >A</div><div id="m4" p=8 clas' +
          's="ma" style="padding: 3px 6px; left: 90px; top: 116px;" >A</div' +
          '><div id="m5" p=12 class="ma" style="padding: 6px 8px; left: 122' +
          'px; top: 110px;" >A</div><div id="pp" class="ma s" style="color:' +
          ' gray; padding: 0px 5px; left: 159px; top: 112px;border: none; b' +
          'order-radius: 9px;font-size: 18px" >+</div><div id="r1" m=0 clas' +
          's="mx" style="left: 11px; top: 155px;" ><div class="b" style="ma' +
          'rgin: 0px;">M</div></div><div id="r2" m=2 class="mx" style="left' +
          ': 34px; top: 153px; " ><div class="b" style="margin: 2px">M</div' +
          '></div><div id="r2" m=4 class="mx" style="left: 60px; top: 151px' +
          '; " ><div class="b" style="margin: 4px">M</div></div><div id="r2' +
          '" m=6 class="mx" style="left: 89px; top: 149px; " ><div class="b' +
          '" style="margin: 6px">M</div></div><div id="r2" m=8 class="mx" s' +
          'tyle="left: 121px; top: 147px; " ><div class="b" style="margin: ' +
          '8px">M</div></div><div id="mp" class="ma s" style="color: gray; ' +
          'padding: 0px 5px; left: 159px; top: 153px;border: none; border-r' +
          'adius: 9px;font-size: 18px" >+</div><div style="border-left: sol' +
          'id silver 1px; padding-left: 10px; position: absolute; left: 190' +
          'px; top:0; width: 200px; height: 190px;"><div class="colors auto' +
          '" id="auto"><div style="width: 14px; height: 14px; background-co' +
          'lor: #000"/>Auto</div>'
        '<div class="title">Theme colors</div>'
        '<div class="colors colors2">'
        ' <div style="background-color: #FFFFFF" id="c"></div>'
        ' <div style="background-color: #000000" id="c"></div>'
        ' <div style="background-color: #EEECE1" id="c"></div>'
        ' <div style="background-color: #1F497D" id="c"></div>'
        ' <div style="background-color: #4F81BD" id="c"></div>'
        ' <div style="background-color: #C0504D" id="c"></div>'
        ' <div style="background-color: #9BBB59" id="c"></div>'
        ' <div style="background-color: #8064A2" id="c"></div>'
        ' <div style="background-color: #4BACC6" id="c"></div>'
        ' <div style="background-color: #F79646" id="c"></div>'
        ' </div>'
        '<div class="colors colors2">'
        ' <div style="background-color: #F2F2F2" id="c"/>'
        ' <div style="background-color: #7F7F7F" id="c"/>'
        ' <div style="background-color: #DDD9C3" id="c"/>'
        ' <div style="background-color: #C6D9F0" id="c"/>'
        ' <div style="background-color: #DBE5F1" id="c"/>'
        ' <div style="background-color: #F2DCDB" id="c"/>'
        ' <div style="background-color: #EBF1DD" id="c"/>'
        ' <div style="background-color: #E5E0EC" id="c"/>'
        ' <div style="background-color: #DBEEF3" id="c"/>'
        ' <div style="background-color: #FDEADA" id="c"/>'
        '</div>'
        '<div class="colors colors2">'
        ' <div style="background-color: #D8D8D8" id="c"/>'
        ' <div style="background-color: #595959" id="c"/>'
        ' <div style="background-color: #C4BD97" id="c"/>'
        ' <div style="background-color: #8DB3E2" id="c"/>'
        ' <div style="background-color: #B8CCE4" id="c"/>'
        ' <div style="background-color: #E5B9B7" id="c"/>'
        ' <div style="background-color: #D7E3BC" id="c"/>'
        ' <div style="background-color: #CCC1D9" id="c"/>'
        ' <div style="background-color: #B7DDE8" id="c"/>'
        ' <div style="background-color: #FBD5B5" id="c"/>'
        '</div>'
        '<div class="colors colors2">'
        ' <div style="background-color: #BFBFBF" id="c"/>'
        ' <div style="background-color: #3F3F3F" id="c"/>'
        ' <div style="background-color: #938953" id="c"/>'
        ' <div style="background-color: #548DD4" id="c"/>'
        ' <div style="background-color: #95B3D7" id="c"/>'
        ' <div style="background-color: #D99694" id="c"/>'
        ' <div style="background-color: #C3D69B" id="c"/>'
        ' <div style="background-color: #B2A2C7" id="c"/>'
        ' <div style="background-color: #92CDDC" id="c"/>'
        ' <div style="background-color: #FAC08F" id="c"/>'
        '</div>'
        '<div class="colors colors2">'
        ' <div style="background-color: #A5A5A5" id="c"/>'
        ' <div style="background-color: #262626" id="c"/>'
        ' <div style="background-color: #494429" id="c"/>'
        ' <div style="background-color: #17365D" id="c"/>'
        ' <div style="background-color: #366092" id="c"/>'
        ' <div style="background-color: #953734" id="c"/>'
        ' <div style="background-color: #76923C" id="c"/>'
        ' <div style="background-color: #5F497A" id="c"/>'
        ' <div style="background-color: #31859B" id="c"/>'
        ' <div style="background-color: #E36C09" id="c"/>'
        '</div>'
        '<div class="colors colors2">'
        ' <div style="background-color: #7F7F7F" id="c"/>'
        ' <div style="background-color: #0C0C0C" id="c"/>'
        ' <div style="background-color: #1D1B10" id="c"/>'
        ' <div style="background-color: #0F243E" id="c"/>'
        ' <div style="background-color: #244061" id="c"/>'
        ' <div style="background-color: #632423" id="c"/>'
        ' <div style="background-color: #4F6128" id="c"/>'
        ' <div style="background-color: #3F3151" id="c"/>'
        ' <div style="background-color: #205867" id="c"/>'
        ' <div style="background-color: #974806" id="c"/>'
        '</div>'
        '<div class="title">Standard colors</div>'
        '<div class="colors colors2">'
        ' <div style="background-color: #C00000" id="c"/>'
        ' <div style="background-color: #FF0000" id="c"/>'
        ' <div style="background-color: #FFC000" id="c"/>'
        ' <div style="background-color: #FFFF00" id="c"/>'
        ' <div style="background-color: #92D050" id="c"/>'
        ' <div style="background-color: #00B050" id="c"/>'
        ' <div style="background-color: #00B0F0" id="c"/>'
        ' <div style="background-color: #0070C0" id="c"/>'
        ' <div style="background-color: #002060" id="c"/>'
        ' <div style="background-color: #7030C0" id="c"/>'
        ' <br/></div>'
        
          '<div class="auto colors2" id="other" style="border: solid #eee 1' +
          'px; border-radius: 3px">Other colors...</div></div>')
      ComboHTML.Strings = (
        
          '<style>table {border-collapse: collapse; margin: 3px 3px;} td {b' +
          'order-color: gray}</style><table border="1" cellpadding="2"><tr>' +
          '<td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><' +
          '/tr></table>')
      Images = ImageList1
      Editor = E
      LivePreview = False
    end
    object ToolSeachEdit: TButtonedEdit
      Left = 633
      Top = 30
      Width = 121
      Height = 22
      Images = ImageList1
      LeftButton.ImageIndex = 42
      LeftButton.Visible = True
      TabOrder = 3
      OnChange = ToolSeachEditChange
    end
    object SyntaxCheckBtn: TToolButton
      Left = 754
      Top = 30
      ImageIndex = 45
      Style = tbsTextButton
      OnClick = SyntaxCheckBtnClick
    end
  end
  object ToolBar2: TToolBar
    Left = 0
    Top = 56
    Width = 1168
    Height = 56
    AutoSize = True
    BorderWidth = 1
    ButtonWidth = 241
    Caption = 'ToolBar2'
    Images = ImageList1
    List = True
    AllowTextButtons = True
    TabOrder = 1
    object FontCombo: THtFontCombo
      Left = 0
      Top = 0
      Width = 270
      Height = 24
      Style = csOwnerDrawFixed
      DropDownCount = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 18
      ParentFont = False
      Sorted = True
      TabOrder = 0
      Items.Strings = (
        '!Arial'
        '!Calibri'
        '!Courier New'
        '!Segoe UI'
        '!Tahoma'
        '!Times New Roman'
        '!Verdana'
        '!Z'
        'Arial'
        'Bahnschrift'
        'BauerBodoni'
        'Calibri'
        'Cambria'
        'Cambria Math'
        'Candara'
        'Cascadia Code'
        'Cascadia Code PL'
        'Cascadia Mono'
        'Cascadia Mono PL'
        'Code EAN13'
        'Comic Sans MS'
        'Consolas'
        'Constantia'
        'Corbel'
        'Courier New'
        'Ebrima'
        'Fira Code'
        'Fira Code Retina'
        'Franklin Gothic'
        'Gabriola'
        'Gadugi'
        'Georgia'
        'Gill Sans MT'
        'Hack'
        'HoloLens MDL2 Assets'
        'Impact'
        'Ink Free'
        'Javanese Text'
        'JetBrains Mono'
        'JetBrains Mono NL'
        'Leelawadee UI'
        'Lucida Console'
        'Lucida Sans Unicode'
        'Malgun Gothic'
        'Marlett'
        'Microsoft Himalaya'
        'Microsoft JhengHei'
        'Microsoft JhengHei UI'
        'Microsoft New Tai Lue'
        'Microsoft PhagsPa'
        'Microsoft Sans Serif'
        'Microsoft Tai Le'
        'Microsoft YaHei'
        'Microsoft YaHei UI'
        'Microsoft Yi Baiti'
        'MingLiU_HKSCS-ExtB'
        'MingLiU-ExtB'
        'Mongolian Baiti'
        'Monoid'
        'Monoid Retina'
        'MS Gothic'
        'MS PGothic'
        'MS UI Gothic'
        'MV Boli'
        'Myanmar Text'
        'Nirmala UI'
        'NSimSun'
        'Palatino Linotype'
        'PMingLiU-ExtB'
        'Roboto'
        'Segoe Fluent Icons'
        'Segoe MDL2 Assets'
        'Segoe Print'
        'Segoe Script'
        'Segoe UI'
        'Segoe UI Emoji'
        'Segoe UI Historic'
        'Segoe UI Symbol'
        'Segoe UI Variable Display'
        'Segoe UI Variable Small'
        'Segoe UI Variable Text'
        'SimSun'
        'SimSun-ExtB'
        'Sitka Banner'
        'Sitka Display'
        'Sitka Heading'
        'Sitka Small'
        'Sitka Subheading'
        'Sitka Text'
        'Source Code Pro'
        'Sylfaen'
        'Symbol'
        'Tahoma'
        'Times New Roman'
        'Trebuchet MS'
        'Verdana'
        'Webdings'
        'Wingdings'
        'Yu Gothic'
        'Yu Gothic UI')
      Editor = E
      LivePreview = False
      FavoriteFonts.Strings = (
        'Arial'
        'Calibri'
        'Courier New'
        'Segoe UI'
        'Tahoma'
        'Times New Roman'
        'Verdana')
      ShowFontHint = False
    end
    object HtFontSizeCombo1: THtFontSizeCombo
      Left = 270
      Top = 0
      Width = 90
      Height = 24
      Style = csOwnerDrawVariable
      DropDownCount = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 18
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = '8'
      Items.Strings = (
        '8'
        '9'
        '10'
        '11'
        '12'
        '13'
        '14'
        '16'
        '17'
        '18'
        '19'
        '20'
        '22'
        '24'
        '26'
        '28'
        '36'
        '48'
        '72')
      Editor = E
      LivePreview = False
    end
    object ToolButton9: TToolButton
      Left = 360
      Top = 0
      Width = 8
      Caption = 'ToolButton9'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object HeaderBtn: TToolButton
      Left = 368
      Top = 0
      Caption = 'Normal'
      DropdownMenu = HeaderMenu
      Style = tbsTextButton
    end
    object HtTextColorCombo1: THtTextColorCombo
      Left = 419
      Top = 0
      Width = 66
      Height = 24
      Style = csOwnerDrawVariable
      DropDownCount = 30
      DropDownWidth = 190
      ItemHeight = 198
      ItemIndex = 0
      TabOrder = 2
      TabStop = False
      Text = 'Z'
      Items.Strings = (
        'Z')
      HTML.Strings = (
        '<style>'
        ' html {background: white}'
        
          ' .colors div {float: left; border: solid silver 1px; width: 12px' +
          '; height: 12px; margin: 0px 2px;}'
        
          ' .colors div:hover {z-index: 2; border-color: orange; aborder-wi' +
          'dth: 2px; box-shadow: 0px 0px 2px orange; }'
        ' .colors2 div {margin-top: -1px; margin-bottom: -1px}'
        ' .colors2 {clear: both}'
        
          ' .title {clear: both; background: #dde7ee; color: navy; font-siz' +
          'e: 13px; font-family: '#39'Arial'#39'; padding: 2px 3px; margin: 3px 0px' +
          '}'
        
          ' .auto {color: navy; font-size: 13px; font-family: '#39'Arial'#39'; padd' +
          'ing: 3px 3px}'
        
          ' .auto:hover {background: linear-gradient(top, #fff6d4, #ffe08c)' +
          '}'
        '</style>'
        
          '<div class="colors auto" id="auto"><div style="width: 14px; heig' +
          'ht: 14px; background-color: #000"/>Auto</div>'
        '<div class="title">Theme colors</div>'
        '<div class="colors">'
        ' <div style="background-color: #FFFFFF" id="c"/>'
        ' <div style="background-color: #000000" id="c"/>'
        ' <div style="background-color: #EEECE1" id="c"/>'
        ' <div style="background-color: #1F497D" id="c"/>'
        ' <div style="background-color: #4F81BD" id="c"/>'
        ' <div style="background-color: #C0504D" id="c"/>'
        ' <div style="background-color: #9BBB59" id="c"/>'
        ' <div style="background-color: #8064A2" id="c"/>'
        ' <div style="background-color: #4BACC6" id="c"/>'
        ' <div style="background-color: #F79646" id="c"/>'
        ' <br/></div>'
        '<div class="colors colors2">'
        ' <div style="background-color: #F2F2F2" id="c"/>'
        ' <div style="background-color: #7F7F7F" id="c"/>'
        ' <div style="background-color: #DDD9C3" id="c"/>'
        ' <div style="background-color: #C6D9F0" id="c"/>'
        ' <div style="background-color: #DBE5F1" id="c"/>'
        ' <div style="background-color: #F2DCDB" id="c"/>'
        ' <div style="background-color: #EBF1DD" id="c"/>'
        ' <div style="background-color: #E5E0EC" id="c"/>'
        ' <div style="background-color: #DBEEF3" id="c"/>'
        ' <div style="background-color: #FDEADA" id="c"/>'
        '</div>'
        '<div class="colors colors2">'
        ' <div style="background-color: #D8D8D8" id="c"/>'
        ' <div style="background-color: #595959" id="c"/>'
        ' <div style="background-color: #C4BD97" id="c"/>'
        ' <div style="background-color: #8DB3E2" id="c"/>'
        ' <div style="background-color: #B8CCE4" id="c"/>'
        ' <div style="background-color: #E5B9B7" id="c"/>'
        ' <div style="background-color: #D7E3BC" id="c"/>'
        ' <div style="background-color: #CCC1D9" id="c"/>'
        ' <div style="background-color: #B7DDE8" id="c"/>'
        ' <div style="background-color: #FBD5B5" id="c"/>'
        '</div>'
        '<div class="colors colors2">'
        ' <div style="background-color: #BFBFBF" id="c"/>'
        ' <div style="background-color: #3F3F3F" id="c"/>'
        ' <div style="background-color: #938953" id="c"/>'
        ' <div style="background-color: #548DD4" id="c"/>'
        ' <div style="background-color: #95B3D7" id="c"/>'
        ' <div style="background-color: #D99694" id="c"/>'
        ' <div style="background-color: #C3D69B" id="c"/>'
        ' <div style="background-color: #B2A2C7" id="c"/>'
        ' <div style="background-color: #92CDDC" id="c"/>'
        ' <div style="background-color: #FAC08F" id="c"/>'
        '</div>'
        '<div class="colors colors2">'
        ' <div style="background-color: #A5A5A5" id="c"/>'
        ' <div style="background-color: #262626" id="c"/>'
        ' <div style="background-color: #494429" id="c"/>'
        ' <div style="background-color: #17365D" id="c"/>'
        ' <div style="background-color: #366092" id="c"/>'
        ' <div style="background-color: #953734" id="c"/>'
        ' <div style="background-color: #76923C" id="c"/>'
        ' <div style="background-color: #5F497A" id="c"/>'
        ' <div style="background-color: #31859B" id="c"/>'
        ' <div style="background-color: #E36C09" id="c"/>'
        '</div>'
        '<div class="colors colors2">'
        ' <div style="background-color: #7F7F7F" id="c"/>'
        ' <div style="background-color: #0C0C0C" id="c"/>'
        ' <div style="background-color: #1D1B10" id="c"/>'
        ' <div style="background-color: #0F243E" id="c"/>'
        ' <div style="background-color: #244061" id="c"/>'
        ' <div style="background-color: #632423" id="c"/>'
        ' <div style="background-color: #4F6128" id="c"/>'
        ' <div style="background-color: #3F3151" id="c"/>'
        ' <div style="background-color: #205867" id="c"/>'
        ' <div style="background-color: #974806" id="c"/>'
        '</div>'
        '<div class="title">Standard colors</div>'
        '<div class="colors">'
        ' <div style="background-color: #C00000" id="c"/>'
        ' <div style="background-color: #FF0000" id="c"/>'
        ' <div style="background-color: #FFC000" id="c"/>'
        ' <div style="background-color: #FFFF00" id="c"/>'
        ' <div style="background-color: #92D050" id="c"/>'
        ' <div style="background-color: #00B050" id="c"/>'
        ' <div style="background-color: #00B0F0" id="c"/>'
        ' <div style="background-color: #0070C0" id="c"/>'
        ' <div style="background-color: #002060" id="c"/>'
        ' <div style="background-color: #7030C0" id="c"/>'
        ' <br/></div>'
        
          '<div class="auto" id="other" style="border: solid #eee 1px; bord' +
          'er-radius: 3px">Other colors...</div>')
      ComboHTML.Strings = (
        ' <style>'
        'body {background: white}'
        
          '.colors div {float: left; border: solid silver 1px; width: 12px;' +
          ' height: 12px; margin: -2px 2px 0px 2px;}'
        
          '.auto {color: navy; font-size: 13px; font-family: '#39'Arial'#39'; paddi' +
          'ng: 3px 3px}'
        '</style>'
        
          '<div class="colors auto"><div style="width: 14px; height: 14px; ' +
          'background-color:#507090;"></div><img src="30"/></div>')
      Images = ImageList1
      SelectedColor = -11505520
      Editor = E
      LivePreview = False
    end
    object HtBgColorCombo1: THtBgColorCombo
      Left = 485
      Top = 0
      Width = 63
      Height = 24
      Style = csOwnerDrawVariable
      DropDownCount = 30
      DropDownWidth = 190
      ItemHeight = 198
      ItemIndex = 0
      TabOrder = 3
      TabStop = False
      Text = 'Z'
      Items.Strings = (
        'Z')
      HTML.Strings = (
        '<style>'
        
          ' .colors div {float: left; border: solid silver 1px; width: 12px' +
          '; height: 12px; margin: 0px 2px;}'
        
          ' .colors div:hover {z-index: 2; border-color: orange; aborder-wi' +
          'dth: 2px; box-shadow: 0px 0px 2px orange; }'
        ' .colors2 div {margin-top: -1px; margin-bottom: -1px}'
        ' .colors2 {clear: both}'
        
          ' .title {clear: both; background: #dde7ee; color: navy; font-siz' +
          'e: 13px; font-family: '#39'Arial'#39'; padding: 2px 3px; margin: 3px 0px' +
          '}'
        
          ' .auto {color: navy; font-size: 13px; font-family: '#39'Arial'#39'; padd' +
          'ing: 3px 3px}'
        
          ' .auto:hover {background: linear-gradient(top, #fff6d4, #ffe08c)' +
          '}'
        '</style>'
        
          '<div class="colors auto" id="auto"><div style="width: 14px; heig' +
          'ht: 14px; background-color: #000"/>Auto</div>'
        '<div class="title">Theme colors</div>'
        '<div class="colors">'
        ' <div style="background-color: #FFFFFF" id="c"/>'
        ' <div style="background-color: #000000" id="c"/>'
        ' <div style="background-color: #EEECE1" id="c"/>'
        ' <div style="background-color: #1F497D" id="c"/>'
        ' <div style="background-color: #4F81BD" id="c"/>'
        ' <div style="background-color: #C0504D" id="c"/>'
        ' <div style="background-color: #9BBB59" id="c"/>'
        ' <div style="background-color: #8064A2" id="c"/>'
        ' <div style="background-color: #4BACC6" id="c"/>'
        ' <div style="background-color: #F79646" id="c"/>'
        ' <br/></div>'
        '<div class="colors colors2">'
        ' <div style="background-color: #F2F2F2" id="c"/>'
        ' <div style="background-color: #7F7F7F" id="c"/>'
        ' <div style="background-color: #DDD9C3" id="c"/>'
        ' <div style="background-color: #C6D9F0" id="c"/>'
        ' <div style="background-color: #DBE5F1" id="c"/>'
        ' <div style="background-color: #F2DCDB" id="c"/>'
        ' <div style="background-color: #EBF1DD" id="c"/>'
        ' <div style="background-color: #E5E0EC" id="c"/>'
        ' <div style="background-color: #DBEEF3" id="c"/>'
        ' <div style="background-color: #FDEADA" id="c"/>'
        '</div>'
        '<div class="colors colors2">'
        ' <div style="background-color: #D8D8D8" id="c"/>'
        ' <div style="background-color: #595959" id="c"/>'
        ' <div style="background-color: #C4BD97" id="c"/>'
        ' <div style="background-color: #8DB3E2" id="c"/>'
        ' <div style="background-color: #B8CCE4" id="c"/>'
        ' <div style="background-color: #E5B9B7" id="c"/>'
        ' <div style="background-color: #D7E3BC" id="c"/>'
        ' <div style="background-color: #CCC1D9" id="c"/>'
        ' <div style="background-color: #B7DDE8" id="c"/>'
        ' <div style="background-color: #FBD5B5" id="c"/>'
        '</div>'
        '<div class="colors colors2">'
        ' <div style="background-color: #BFBFBF" id="c"/>'
        ' <div style="background-color: #3F3F3F" id="c"/>'
        ' <div style="background-color: #938953" id="c"/>'
        ' <div style="background-color: #548DD4" id="c"/>'
        ' <div style="background-color: #95B3D7" id="c"/>'
        ' <div style="background-color: #D99694" id="c"/>'
        ' <div style="background-color: #C3D69B" id="c"/>'
        ' <div style="background-color: #B2A2C7" id="c"/>'
        ' <div style="background-color: #92CDDC" id="c"/>'
        ' <div style="background-color: #FAC08F" id="c"/>'
        '</div>'
        '<div class="colors colors2">'
        ' <div style="background-color: #A5A5A5" id="c"/>'
        ' <div style="background-color: #262626" id="c"/>'
        ' <div style="background-color: #494429" id="c"/>'
        ' <div style="background-color: #17365D" id="c"/>'
        ' <div style="background-color: #366092" id="c"/>'
        ' <div style="background-color: #953734" id="c"/>'
        ' <div style="background-color: #76923C" id="c"/>'
        ' <div style="background-color: #5F497A" id="c"/>'
        ' <div style="background-color: #31859B" id="c"/>'
        ' <div style="background-color: #E36C09" id="c"/>'
        '</div>'
        '<div class="colors colors2">'
        ' <div style="background-color: #7F7F7F" id="c"/>'
        ' <div style="background-color: #0C0C0C" id="c"/>'
        ' <div style="background-color: #1D1B10" id="c"/>'
        ' <div style="background-color: #0F243E" id="c"/>'
        ' <div style="background-color: #244061" id="c"/>'
        ' <div style="background-color: #632423" id="c"/>'
        ' <div style="background-color: #4F6128" id="c"/>'
        ' <div style="background-color: #3F3151" id="c"/>'
        ' <div style="background-color: #205867" id="c"/>'
        ' <div style="background-color: #974806" id="c"/>'
        '</div>'
        '<div class="title">Standard colors</div>'
        '<div class="colors">'
        ' <div style="background-color: #C00000" id="c"/>'
        ' <div style="background-color: #FF0000" id="c"/>'
        ' <div style="background-color: #FFC000" id="c"/>'
        ' <div style="background-color: #FFFF00" id="c"/>'
        ' <div style="background-color: #92D050" id="c"/>'
        ' <div style="background-color: #00B050" id="c"/>'
        ' <div style="background-color: #00B0F0" id="c"/>'
        ' <div style="background-color: #0070C0" id="c"/>'
        ' <div style="background-color: #002060" id="c"/>'
        ' <div style="background-color: #7030C0" id="c"/>'
        ' <br/></div>'
        
          '<div class="auto" id="other" style="border: solid #eee 1px; bord' +
          'er-radius: 3px">Other colors...</div>')
      ComboHTML.Strings = (
        ' <style>'
        
          '.colors div {float: left; border: solid silver 1px; width: 12px;' +
          ' height: 12px; margin: 0px 2px 0px 2px;}'
        
          '.auto {color: navy; font-size: 13px; font-family: '#39'Arial'#39'; margi' +
          'n: 1px 2px 0px 2px;}'
        '</style>'
        
          '<div class="colors auto"><div style="width: 14px; height: 14px; ' +
          'background-color:rgba(0,0,0,0.0);"></div><img src="29"/></div>')
      Images = ImageList1
      Editor = E
      LivePreview = False
    end
    object HtBorderCombo1: THtBorderCombo
      Left = 548
      Top = 0
      Width = 60
      Height = 24
      Style = csOwnerDrawVariable
      DropDownCount = 30
      DropDownWidth = 400
      ItemHeight = 192
      ItemIndex = 0
      TabOrder = 5
      TabStop = False
      Text = 'Z'
      Items.Strings = (
        'Z')
      HTML.Strings = (
        
          '<style>body {min-height: 192px; font-size: 13px } .x {border: do' +
          'tted silver 1px; width:20px; height: 20px; position: absolute;}.' +
          'x:hover, .lt:hover, .ma:hover {background: #ffea70; border-color' +
          ': darkorange}.x:active, .lt:active, .ma:active {background: #ffe' +
          'f90; }.ma {position: absolute; border: solid silver 1px; color: ' +
          'gray}.lt {width: 60px; height: 10px; position: absolute; border-' +
          'left: none; border-top: none; border-right: none; border-color: ' +
          'silver; border-width: 1px;}.s  {box-shadow: 0 0 1 #ccc}.x, .ma {' +
          'background: linear-gradient(top, #fff, #f5f5fe 50%, e0e0ef 100%)' +
          '; }#all {border: solid silver 2px;}#none {border: dotted silver ' +
          '1px;}#left {border-left: solid silver 2px;}#top {border-top: sol' +
          'id silver 2px;}#right {border-right: solid silver 2px;}#bottom {' +
          'border-bottom: solid silver 2px;}#all:checked {border: solid dar' +
          'korange 2px}#none:checked {border: dotted darkorange 1px}#left:c' +
          'hecked {border-left: solid darkorange 2px;}#top:checked {border-' +
          'top: solid darkorange 2px;}#right:checked {border-right: solid d' +
          'arkorange 2px;}#bottom:checked {border-bottom: solid darkorange ' +
          '2px;}.lt:checked {border-color: darkorange}.ma:checked {border-c' +
          'olor: darkorange; color: darkorange}.colors div {float: left; bo' +
          'rder: solid silver 1px; width: 12px; height: 12px; margin: 0px 2' +
          'px;}'
        
          ' .colors div:hover {z-index: 2; border-color: orange; aborder-wi' +
          'dth: 2px; box-shadow: 0px 0px 2px orange; }'
        ' .colors2 div {margin-top: -1px; margin-bottom: -1px}'
        ' .colors2 {clear: both}'
        
          ' .title {clear: both; background: #dde7ee; color: navy; font-siz' +
          'e: 13px; font-family: '#39'Arial'#39'; padding: 2px 3px; margin: 3px 0px' +
          '}'
        
          ' .auto {color: navy; font-size: 13px; font-family: '#39'Arial'#39'; padd' +
          'ing: 3px 3px}'
        
          ' .auto:hover {background: linear-gradient(top, #fff6d4, #ffe08c)' +
          '}'
        
          ' </style><div id="all" bs="15" set="true" class="x s" style="lef' +
          't: 20px; top: 5px; "></div><div id="none" bs="0" set="true" clas' +
          's="x s" style="left: 54px; top: 6px; "></div><div id="left" bs="' +
          '3" class="x" style="left: 10px; top: 70px;" ></div><div id="top"' +
          ' bs="0" class="x" style="left: 39px; top: 52px;" ></div><div id=' +
          '"right" bs="1" class="x" style="left: 68px; top: 70px;" ></div><' +
          'div id="bottom" bs="2" class="x" style="left: 39px; top: 88px;" ' +
          '></div><div id="s1" ls="2" w="1" class="lt" style="border-bottom' +
          '-style: solid; left: 119px; top: 5px;" ></div><div id="s2" ls="2' +
          '" w="2" class="lt" style="border-bottom-style: solid; border-wid' +
          'th: 2px; left: 119px; top: 20px;" ></div><div id="s3" ls="2" w="' +
          '3" class="lt" style="border-bottom-style: solid; border-width: 3' +
          'px; left: 119px; top: 35px;" ></div><div id="s4" ls="2" w="4" cl' +
          'ass="lt" style="border-bottom-style: solid; border-width: 4px; l' +
          'eft: 119px; top: 50px;" ></div><div id="s4" ls="2" w="5" class="' +
          'lt" style="border-bottom-style: solid; border-width: 5px; left: ' +
          '119px; top: 65px;" ></div><div id="d1" ls="3" w="1" class="lt" s' +
          'tyle="border-bottom-style: dotted; left: 119px; top: 80px;" ></d' +
          'iv><div id="a1" ls="4" w="1" class="lt" style="border-bottom-sty' +
          'le: dashed; left: 119px; top: 95px;" ></div><div id="m1" p=0 cla' +
          'ss="ma" style="padding: -2px 2px; left: 11px; top: 141px;" >A</d' +
          'iv><div id="m2" p=2 class="ma" style="padding: -1px 3px; left: 3' +
          '4px; top: 139px;" >A</div><div id="m3" p=5 class="ma" style="pad' +
          'ding: 1px 5px; left: 60px; top: 135px;" >A</div><div id="m4" p=8' +
          ' class="ma" style="padding: 3px 6px; left: 90px; top: 131px;" >A' +
          '</div><div id="m5" p=12 class="ma" style="padding: 6px 8px; left' +
          ': 122px; top: 125px;" >A</div><div id="mp" class="ma s" style="c' +
          'olor: gray; padding: 0px 5px; left: 159px; top: 127px;border: no' +
          'ne; border-radius: 9px;font-size: 18px" >+</div><div id="r1" r=0' +
          ' class="ma" style="padding: 0 3; left: 11px; top: 165px;" >R</di' +
          'v><div id="r2" r=3 class="ma" style="padding: 0 3; left: 39px; t' +
          'op: 165px; border-radius: 3px;" >R</div><div id="r2" r=5 class="' +
          'ma" style="padding: 0 3; left: 67px; top: 165px; border-radius: ' +
          '5px;" >R</div><div id="r2" r=7 class="ma" style="padding: 0 4; l' +
          'eft: 94px; top: 165px; border-radius: 7px;" >R</div><div id="r2"' +
          ' r=9 class="ma" style="padding: 0 5; left: 124px; top: 165px; bo' +
          'rder-radius: 9px;" >R</div><div id="rp" class="ma s" style="colo' +
          'r: gray; padding: 0px 5px; left: 159px; top: 161px;border: none;' +
          ' border-radius: 9px;font-size: 18px" >+</div><div style="border-' +
          'left: solid silver 1px; padding-left: 10px; position: absolute; ' +
          'left: 190px; top:0; width: 200px; height: 190px;"><div class="co' +
          'lors auto" id="auto"><div style="width: 14px; height: 14px; back' +
          'ground-color: #000"/>Auto</div>'
        '<div class="title">Theme colors</div>'
        '<div class="colors">'
        ' <div style="background-color: #FFFFFF" id="c"/>'
        ' <div style="background-color: #000000" id="c"/>'
        ' <div style="background-color: #EEECE1" id="c"/>'
        ' <div style="background-color: #1F497D" id="c"/>'
        ' <div style="background-color: #4F81BD" id="c"/>'
        ' <div style="background-color: #C0504D" id="c"/>'
        ' <div style="background-color: #9BBB59" id="c"/>'
        ' <div style="background-color: #8064A2" id="c"/>'
        ' <div style="background-color: #4BACC6" id="c"/>'
        ' <div style="background-color: #F79646" id="c"/>'
        ' <br/></div>'
        '<div class="colors colors2">'
        ' <div style="background-color: #F2F2F2" id="c"/>'
        ' <div style="background-color: #7F7F7F" id="c"/>'
        ' <div style="background-color: #DDD9C3" id="c"/>'
        ' <div style="background-color: #C6D9F0" id="c"/>'
        ' <div style="background-color: #DBE5F1" id="c"/>'
        ' <div style="background-color: #F2DCDB" id="c"/>'
        ' <div style="background-color: #EBF1DD" id="c"/>'
        ' <div style="background-color: #E5E0EC" id="c"/>'
        ' <div style="background-color: #DBEEF3" id="c"/>'
        ' <div style="background-color: #FDEADA" id="c"/>'
        '</div>'
        '<div class="colors colors2">'
        ' <div style="background-color: #D8D8D8" id="c"/>'
        ' <div style="background-color: #595959" id="c"/>'
        ' <div style="background-color: #C4BD97" id="c"/>'
        ' <div style="background-color: #8DB3E2" id="c"/>'
        ' <div style="background-color: #B8CCE4" id="c"/>'
        ' <div style="background-color: #E5B9B7" id="c"/>'
        ' <div style="background-color: #D7E3BC" id="c"/>'
        ' <div style="background-color: #CCC1D9" id="c"/>'
        ' <div style="background-color: #B7DDE8" id="c"/>'
        ' <div style="background-color: #FBD5B5" id="c"/>'
        '</div>'
        '<div class="colors colors2">'
        ' <div style="background-color: #BFBFBF" id="c"/>'
        ' <div style="background-color: #3F3F3F" id="c"/>'
        ' <div style="background-color: #938953" id="c"/>'
        ' <div style="background-color: #548DD4" id="c"/>'
        ' <div style="background-color: #95B3D7" id="c"/>'
        ' <div style="background-color: #D99694" id="c"/>'
        ' <div style="background-color: #C3D69B" id="c"/>'
        ' <div style="background-color: #B2A2C7" id="c"/>'
        ' <div style="background-color: #92CDDC" id="c"/>'
        ' <div style="background-color: #FAC08F" id="c"/>'
        '</div>'
        '<div class="colors colors2">'
        ' <div style="background-color: #A5A5A5" id="c"/>'
        ' <div style="background-color: #262626" id="c"/>'
        ' <div style="background-color: #494429" id="c"/>'
        ' <div style="background-color: #17365D" id="c"/>'
        ' <div style="background-color: #366092" id="c"/>'
        ' <div style="background-color: #953734" id="c"/>'
        ' <div style="background-color: #76923C" id="c"/>'
        ' <div style="background-color: #5F497A" id="c"/>'
        ' <div style="background-color: #31859B" id="c"/>'
        ' <div style="background-color: #E36C09" id="c"/>'
        '</div>'
        '<div class="colors colors2">'
        ' <div style="background-color: #7F7F7F" id="c"/>'
        ' <div style="background-color: #0C0C0C" id="c"/>'
        ' <div style="background-color: #1D1B10" id="c"/>'
        ' <div style="background-color: #0F243E" id="c"/>'
        ' <div style="background-color: #244061" id="c"/>'
        ' <div style="background-color: #632423" id="c"/>'
        ' <div style="background-color: #4F6128" id="c"/>'
        ' <div style="background-color: #3F3151" id="c"/>'
        ' <div style="background-color: #205867" id="c"/>'
        ' <div style="background-color: #974806" id="c"/>'
        '</div>'
        '<div class="title">Standard colors</div>'
        '<div class="colors">'
        ' <div style="background-color: #C00000" id="c"/>'
        ' <div style="background-color: #FF0000" id="c"/>'
        ' <div style="background-color: #FFC000" id="c"/>'
        ' <div style="background-color: #FFFF00" id="c"/>'
        ' <div style="background-color: #92D050" id="c"/>'
        ' <div style="background-color: #00B050" id="c"/>'
        ' <div style="background-color: #00B0F0" id="c"/>'
        ' <div style="background-color: #0070C0" id="c"/>'
        ' <div style="background-color: #002060" id="c"/>'
        ' <div style="background-color: #7030C0" id="c"/>'
        ' <br/></div>'
        
          '<div class="auto" id="other" style="border: solid #eee 1px; bord' +
          'er-radius: 3px">Other colors...</div></div>')
      ComboHTML.Strings = (
        
          '<style>.colors {width: 14px;height: 14px;margin: 3px 5px} .box {' +
          'float:left;box-sizing:border-box;height:100%;width:100%;border:d' +
          'otted silver 1px;}</style><div class="colors"><div class="box"><' +
          '/div></div>')
      Images = ImageList1
      Editor = E
      LivePreview = False
    end
    object NewTagBtn: TToolButton
      Left = 608
      Top = 0
      Caption = 'Add tag'
      DropdownMenu = TagMenu
      Style = tbsTextButton
    end
    object HighlightBtn: TToolButton
      Left = 661
      Top = 0
      Caption = 'Highlight'
      DropdownMenu = SyntaxMenu
      ImageIndex = 27
      Style = tbsTextButton
    end
    object ToolButton10: TToolButton
      Left = 0
      Top = 0
      Width = 8
      Caption = 'ToolButton10'
      ImageIndex = 0
      Wrap = True
      Style = tbsSeparator
    end
    object LoadSampleBtn: TToolButton
      Left = 0
      Top = 30
      Caption = 'Load Sample Document (CSS3 Selectors)'
      Style = tbsTextButton
      OnClick = LoadSampleBtnClick
    end
    object CanvasCombo: TComboBox
      Left = 225
      Top = 30
      Width = 114
      Height = 23
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 4
      Text = 'GDI Canvas'
      OnChange = CanvasComboChange
      Items.Strings = (
        'GDI Canvas'
        'GDI+ Canvas')
    end
    object TemplateCombo: TComboBox
      Left = 339
      Top = 30
      Width = 114
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 6
      Text = 'Name'
      OnChange = TemplateComboChange
      Items.Strings = (
        'Name'
        'Caption'
        'Value')
    end
  end
  object E: THtmlEditor
    Left = 278
    Top = 112
    Width = 890
    Height = 652
    Cursor = crIBeam
    Align = alClient
    Caption = 'E'
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    Touch.InteractiveGestures = [igZoom, igPan, igPressAndTap]
    Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoPanInertia]
    Touch.ParentTabletOptions = False
    Touch.TabletOptions = [toPressAndHold, toSmoothScrolling]
    OnMouseUp = EMouseUp
    BackgroundImageLoading = True
    HTML.Strings = (
      '<style>'
      ''
      'body {font-family: Arial; font-size: 16px;}'
      ''
      ''
      ''
      '  a {color: navy }'
      ''
      
        '  h1, h2, h3, h4 {color: #507090; font-family: '#39'Segoe UI'#39'; font-' +
        'weight: normal;}'
      '  dd {font-style: italic}'
      '  dt {color: navy; }'
      '</style>'
      '<h1>HTML Editor Library</h1>'
      '<blockquote>'
      
        '  <blockquote type="cite"><b><i>Note</i></b><i>: This document h' +
        'as been entirely created using&nbsp;the'
      
        '   <a href="http://delphihtmlcomponents.com/htedit.zip" class="h' +
        'int--top hint--success" data-hint="Download Editor Application">' +
        ' HTML Editor demo application. </a></i><i>&nbsp;</i></blockquote' +
        '>'
      '</blockquote>'
      '<h2>Basic features</h2>'
      '<ul>'
      '  <li><b>WYSIWYG</b>&nbsp;editing. </li>'
      
        '  <li>Does not use IE or other libraries (<b>100%</b>&nbsp;<b>na' +
        'tive</b>&nbsp;Delphi code).</li>'
      
        '  <li>Supports all Delphi versions from <span style="color: #FF6' +
        '600;"><b>Delphi 5</b></span>&nbsp;to <b><span style="color: #FF6' +
        '600">10.1 Berlin</span></b>.</li>'
      
        '  <li><b>Unicode</b>&nbsp;support for Delphi 5 - 2007 (requires ' +
        'TNTUnicode).</li>'
      '  <li><b>Scalable</b>&nbsp;(High DPI&nbsp; support).</li>'
      
        '  <li>Live <b>spellchecking</b>&nbsp;and <b>autocorrection</b>&n' +
        'bsp;(built-in support for <b>Addict</b>).</li>'
      '  <li>Full support for HTML tags and CSS&nbsp;properties.</li>'
      '  <li>Full access from Delphi code to DOM and Styles.</li>'
      '  <li>Images, lists, blocks, font styles</li>'
      
        '  <li>Copy from/paste to MS Word, browsers and other application' +
        's</li>'
      
        '  <li>Embedded <b>Markdown</b>&nbsp;and <b>Pascal</b>&nbsp;synta' +
        'x highlighting.</li>'
      
        '  <li>Import <b>RTF</b> and <b>DOCX</b> files (all platforms)</l' +
        'i>'
      '</ul>'
      '<h2>Getting started</h2>'
      
        '<p>To start using the editor simply drop a&nbsp;<b>THtmlEditor</' +
        'b>&nbsp;component on a form and set&nbsp;its HTML:TStrings prope' +
        'rty or call <span style="font-family: '#39'Courier New'#39'">Editor.HTML' +
        '.LoadfromFile</span>&nbsp;function in code.</p>'
      
        '<p>Don'#39't leave HTML&nbsp;blank, at least <span style="font-famil' +
        'y: '#39'Courier New'#39'">&lt;p>&amp;nbsp;&lt;/p></span>&nbsp;code is re' +
        'quired.</p>'
      
        '<p><b>THtmlEditor</b>&nbsp;is ready to use and most of&nbsp;it'#39's' +
        ' function are accessible via keyboard (f.e. Ctrl+B for <b>bold</' +
        'b>). </p>'
      '<h2>Using Editor commands</h2>'
      
        '<p><img align="right" src="stdactions.png"/>All basic commands a' +
        're accessible via actions. Place&nbsp;an ActionList on the form ' +
        'and use the&nbsp;<b>New standard action</b>&nbsp;command to add ' +
        'actions from the HtmlEdit group. </p>'
      '<h3>The available pre-defined&nbsp;actions are:</h3>'
      
        '<p>&nbsp; &nbsp; THtActionNew - new document<br/>&nbsp; &nbsp; T' +
        'HtFileOpen,- open file.<br/>&nbsp; &nbsp; THtFileSaveAs,- save f' +
        'ile as.<br/>&nbsp; &nbsp; THtActionCopy - copy to clipboard<br/>' +
        '&nbsp; &nbsp; THtActionPaste -paste from clipboard.<br/>&nbsp; &' +
        'nbsp; THtActionPasteImage - paste image from clipboard.<br/>&nbs' +
        'p; &nbsp; THtActionFontBold - set&nbsp;font bold.<br/>&nbsp; &nb' +
        'sp; THtActionFontItalic - set&nbsp;font italic.<br/>&nbsp; &nbsp' +
        '; THtActionFontUnderline - set&nbsp;font underline.<br/>&nbsp; &' +
        'nbsp; THtActionFontStrikeout - set&nbsp;font strikeout.<br/>&nbs' +
        'p; &nbsp; THtActionSubscript - subscript.<br/>&nbsp; &nbsp; THtA' +
        'ctionSuperscript - superscript.<br/>&nbsp; &nbsp; THtActionAlign' +
        'Left - set paragraph alignment to left.<br/>&nbsp; &nbsp; THtAct' +
        'ionAlignRight - set paragraph alignment to right.<br/>&nbsp; &nb' +
        'sp; THtActionAlignCenter - set paragraph alignment to center.<br' +
        '/>&nbsp; &nbsp; THtActionUnorderedList - convert selection to un' +
        'ordered list.<br/>&nbsp; &nbsp; THtActionOrderedList - - convert' +
        ' '
      
        'selection to ordered list.<br/>&nbsp; &nbsp; THtActionIncreaseIn' +
        'dent - increase block or list indent.<br/>&nbsp; &nbsp; THtActio' +
        'nDecreaseIndent - decrease block or list indent.<br/>&nbsp; &nbs' +
        'p; THtActionAddUrl - convert selection to URL (link).<br/>&nbsp;' +
        ' &nbsp; THtActionSetHeader- convert current block to header (hea' +
        'der level are defined by ActionComponent tag).</p>'
      
        '<p>To control font name and size use <b>THtFontCombo</b>&nbsp;an' +
        'd <b>THtFontSizeC</b><b>ombo</b>&nbsp;components. Just place the' +
        'm on toolbar and set Editor property if there is more than one T' +
        'HtmlEditor component on form.</p>'
      '<p/>'
      '<h2>Basic Editor properties:</h2>'
      '<dl>'
      '  <dt>Doc: THtDocument</dt>'
      
        '  <dd>Current document object (see HTML Component Library docume' +
        'ntation)</dd>'
      '  <dt>Caret: THtCaret</dt>'
      '  <dd>Current caret positon and state</dd>'
      '  <dt>TextStyle: THtTextStyle</dt>'
      '  <dd>Current text styles (at caret)</dd>'
      '  <dt>OffsetX, OffsetY: integer</dt>'
      
        '  <dd>Offset (in screen pixels) of document (equal to negative s' +
        'crollbars positions)&nbsp;&nbsp;&nbsp;&nbsp;</dd>'
      '  <dt>DesignerElement: TElement</dt>'
      '  <dd>Highligted block element containing caret.</dd>'
      '  <dt>Scale: integer</dt>'
      
        '  <dd>Current document scale in&nbsp;percent.&nbsp; Default =100' +
        ' (%)</dd>'
      '  <dt>History: THtEditorStateStack;</dt>'
      '  <dd>Undo history</dd>'
      '</dl>'
      '<h2>Spellchecking</h2>'
      
        '<p>To use&nbsp;Addict library enable<span style="font-family: '#39'C' +
        'ourier New'#39'">&nbsp;$DEFINE ADDICT</span>&nbsp;in \VCL\htmlinc.in' +
        'c before installing the package. </p>'
      
        '<p>Add <b>TAddictSpell</b>&nbsp;component on the form and set <b' +
        '>THtmlEditor.AddictSpell</b>&nbsp;property.&nbsp; </p>'
      
        '<p>To use another spellchecking library you&nbsp;will&nbsp;need&' +
        'nbsp;to&nbsp;write handlers for&nbsp;the <b>OnSpellCheck</b>&nbs' +
        'p;and <b>OnWordCorrection</b>&nbsp;events.</p>'
      
        '<p>You can enable/disable live spellchecking and autocorrection ' +
        'by using&nbsp;the <b>Spellchecking</b>&nbsp;and <b>WordCorrectio' +
        'n</b>&nbsp;properties.</p>'
      '<h2>Text style functions</h2>'
      
        '<p>Many&nbsp;text style functions are accessible via&nbsp;the <b' +
        '>THtmlEditor.TextStyle</b>&nbsp;class.</p>'
      '<p>It has&nbsp;the following properties</p>'
      
        '<pre class="sourcecode"><code><b>  property</b>&nbsp;Bold: boole' +
        'an;'
      '&nbsp; <b>property</b>&nbsp;Italic: boolean;'
      '&nbsp; <b>property</b>&nbsp;Underline: boolean;'
      '&nbsp; <b>property</b>&nbsp;StrikeOut: boolean;'
      '&nbsp; <b>property</b>&nbsp;Subscript: boolean;'
      '&nbsp; <b>property</b>&nbsp;SuperScript: boolean;'
      '&nbsp; <b>property</b> FontName: <b>string</b>;'
      '&nbsp; <b>property</b>&nbsp;FontSize: integer;'
      '&nbsp; <b>property</b>&nbsp;Color: cardinal;'
      '&nbsp; <b>property</b>&nbsp;BGColor: cardinal;'
      '&nbsp; <b>property</b>&nbsp;TextTransform: TCSSTextTransform;'
      
        '&nbsp; <b>property</b>&nbsp;Alignment: THAlignment; <br/></code>' +
        '</pre>'
      
        '<p>Changing these properties will change style of current select' +
        'ion, or current word at cursor&nbsp; (if nothing is selected) or' +
        '&nbsp;style&nbsp;of&nbsp;subsequent text entered by user.&nbsp;<' +
        '/p>'
      '<h2>Changing&nbsp;document scale</h2>'
      
        '<p><strong pbzloc="126">THtmlEditor</strong> has a deicated prop' +
        'erty to make it simple to alter the scale of the document. Simpl' +
        'y alter <strong pbzloc="128">THtmlEditor.Scale</strong> and the ' +
        'document and its contents will be fully rescaled.&nbsp;</p>'
      
        '<p>For examaple, place TTrackBar on form, set its&nbsp;Position ' +
        'to 100 and Min/Max&nbsp; to 50-200.</p>'
      
        '<p>Add TrackBar.OnChange handler:<span style="color:#800000; fon' +
        't-weight:bold; "/></p>'
      
        '<pre><span color="navy"><b>procedure</b></span><span color="navy' +
        '"><b> </b></span>TForm1.TrackBar1Change(Sender: <span color="nav' +
        'y">tobject</span>);'
      '<span color="navy"><b>begin</b></span><span color="navy"><b>'
      '  </b></span>E.Scale:=TrackBar1.Position'
      '<span color="navy"><b>end</b></span>; </pre>'
      
        '<pre><span style="color:#800000; font-weight:bold; "/><span styl' +
        'e="color:#800080; "/></pre>'
      '<h2>Enabling Unicode for non-Unicode Delphi</h2>'
      
        '<p>To use Unicode in old Delphi you should have <b>TntUnicode</b' +
        '>&nbsp;library installed.</p>'
      
        '<p>Open /VCL/htmlinc.inc file,&nbsp;uncomment $WIDESTRINGS defin' +
        'e and recompile&nbsp;library package.</p>'
      '<h2>Adding&nbsp;images to document</h2>'
      '<p>To add image to document use</p>'
      
        '<pre style="color:#000000;background:#ffffff;"><pre><span style=' +
        '"color:#800000; font-weight:bold; "/><span color="navy"><b>funct' +
        'ion</b></span><span color="navy"><b>  </b></span>AddImageAtCurso' +
        'r(<span color="navy"><b>const</b></span><span color="navy"><b> <' +
        '/b></span>Url: <span color="navy">string</span>; AWidth: <span c' +
        'olor="navy">integer</span>=<span color="blue">0</span>; AHeight:' +
        ' <span color="navy">integer</span>=<span color="blue">0</span>; ' +
        '<span color="navy"><b>const</b></span><span color="navy"><b> </b' +
        '></span>Align: <span color="navy">string</span>=<span color="blu' +
        'e">'#39#39'</span>): TImageElement; <span style="color:#800080; "/></p' +
        're></pre>'
      
        '<p>To set image alignment&nbsp;use Align parameter - set it to '#39 +
        'right'#39' or '#39'left'#39'.</p>'
      '<p>To embed image to document use</p>'
      
        '<pre><span color="navy"><b>function</b></span><span color="navy"' +
        '/> AddImageAtCursor(<span color="navy"><b>const</b></span><span ' +
        'color="navy"><b> </b></span>ImageData: TBytes; Url: <span color=' +
        '"navy">string</span>=<span color="blue">'#39#39'</span>): TImageElemen' +
        't;<span color="navy"><b/></span> </pre>'
      '<h2>Working with Lists&nbsp;</h2>'
      
        '<pre><span color="navy"><b>procedure</b></span><span color="navy' +
        '"><b> </b></span>SetListStyle(<span color="navy"><b>const</b></s' +
        'pan><span color="navy"><b> </b></span>ListStyle: <span color="na' +
        'vy">string</span>);</pre>'
      
        '<p>Convert&nbsp;the current&nbsp;block&nbsp;to&nbsp;a list.&nbsp' +
        ';Set ListStyle to ul for unordered list or ol for ordered list.&' +
        'nbsp;</p>'
      
        '<pre><span color="navy"/><span color="navy"><b>procedure</b></sp' +
        'an><span color="navy"><b> </b></span>UnListSelection(<span color' +
        '="navy"><b>const</b></span><span color="navy"><b> </b></span>New' +
        'Tag: <span color="navy">string</span>=<span color="blue">'#39'p'#39'</sp' +
        'an>); </pre>'
      '<p>Convert the current list to paragraph.</p>'
      
        '<pre><span color="navy"><b>procedure</b></span><span color="navy' +
        '"><b> </b></span>IncreaseIdent; </pre>'
      
        '<p>&nbsp;Increase the&nbsp;indent of the current list item (crea' +
        'te sublist)</p>'
      
        '<pre><span color="navy"><b>procedure</b></span><span color="navy' +
        '"><b> </b></span>DecreaseIdent;</pre>'
      
        '<p>Decrease the indent of the current list item or remove the li' +
        'st style.</p>'
      '<h2>Caret moving</h2>'
      
        '<p>There is a comprehensive suite of methods for managing caret ' +
        'movement and positioning:&nbsp;</p>'
      
        '<pre><span color="navy"><b>   </b></span><span color="navy"><b>p' +
        'rocedure</b></span><span color="navy"><b> </b></span>CaretStart;'
      
        '   <span color="navy"><b>procedure</b></span><span color="navy">' +
        '<b> </b></span>CaretEnd;'
      
        '   <span color="navy"><b>procedure</b></span><span color="navy">' +
        '<b> </b></span>CaretLineStart;'
      
        '   <span color="navy"><b>procedure</b></span><span color="navy">' +
        '<b> </b></span>CaretLineEnd;'
      
        '   <span color="navy"><b>function</b></span><span color="navy"><' +
        'b>  </b></span>CaretNext: <span color="navy">boolean</span>;'
      
        '   <span color="navy"><b>function</b></span><span color="navy"><' +
        'b>  </b></span>CaretPrevious: <span color="navy">boolean</span>;'
      
        '   <span color="navy"><b>procedure</b></span><span color="navy">' +
        '<b> </b></span>CaretNextWord;'
      
        '   <span color="navy"><b>procedure</b></span><span color="navy">' +
        '<b> </b></span>CaretPreviousWord;'
      
        '   <span color="navy"><b>procedure</b></span><span color="navy">' +
        '<b> </b></span>CaretNextCell;'
      
        '   <span color="navy"><b>procedure</b></span><span color="navy">' +
        '<b> </b></span>CaretPreviousCell;'
      
        '   <span color="navy"><b>procedure</b></span><span color="navy">' +
        '<b> </b></span>CaretFirstCell;'
      
        '   <span color="navy"><b>procedure</b></span><span color="navy">' +
        '<b> </b></span>CaretLastCell;'
      
        '   <span color="navy"><b>function</b></span><span color="navy"><' +
        'b>  </b></span>CaretDown: <span color="navy">boolean</span>;'
      
        '   <span color="navy"><b>function</b></span><span color="navy"><' +
        'b>  </b></span>CaretUp: <span color="navy">boolean</span>;'
      
        '   <span color="navy"><b>procedure</b></span><span color="navy">' +
        '<b> </b></span>CaretPageUp;'
      
        '   <span color="navy"><b>procedure</b></span><span color="navy">' +
        '<b> </b></span>CaretPageDown;'
      
        '   <span color="navy"><b>procedure</b></span><span color="navy">' +
        '<b> </b></span>CarettoStartof(E: TElement);'
      
        '   <span color="navy"><b>procedure</b></span><span color="navy">' +
        '<b> </b></span>CarettoEndof(E: TElement);'
      
        '   <span color="navy"><b>procedure</b></span><span color="navy">' +
        '<b> </b></span>CaretParaStart;'
      
        '   <span color="navy"><b>procedure</b></span><span color="navy">' +
        '<b> </b></span>CaretParaEnd; </pre>'
      '<p/>'
      '<h2>Adding objects to document</h2>'
      
        '<p>There are functions and procedures to add various types of ob' +
        'jects into the current document.&nbsp;</p>'
      
        '<pre><span color="navy"/><span color="navy"><b>procedure</b></sp' +
        'an><span color="navy"><b> </b></span>AddChar(Key: <span color="n' +
        'avy">char</span>);</pre>'
      '<p>Add one char&nbsp;at caret position.</p>'
      
        '<pre><span color="navy"/><span color="navy"><b>procedure</b></sp' +
        'an><span color="navy"><b> </b></span>AddString(<span color="navy' +
        '"><b>const</b></span><span color="navy"><b> </b></span>Str: hstr' +
        'ing);</pre>'
      '<p>Add string at caret position.</p>'
      
        '<pre><span color="navy"/><span color="navy"><b>procedure</b></sp' +
        'an><span color="navy"><b> </b></span>AddHTMLAtCursor(<span color' +
        '="navy"><b>const</b></span><span color="navy"><b> </b></span>HTM' +
        'L: hstring);</pre>'
      
        '<p>Add HTML at caret position. If HTML contains block elements c' +
        'urrent block element will be split.</p>'
      
        '<pre><span color="navy"/><span color="navy"><b>function</b></spa' +
        'n><span color="navy"><b>  </b></span>AddPara: TElement;</pre>'
      '<p>Add paragraph at caret position.</p>'
      
        '<pre><span color="navy"/><span color="navy"><b>function</b></spa' +
        'n><span color="navy"><b>  </b></span>AddHR: TElement;</pre>'
      '<p>Add horizontal divider at caret position.</p>'
      
        '<pre><span color="navy"/><span color="navy"><b>function</b></spa' +
        'n><span color="navy"><b>  </b></span>AddLineBreak(AddAfter: TEle' +
        'ment=<span color="navy"><b>nil</b></span>): TElement; &nbsp;</pr' +
        'e>'
      '<p>Add line break at cursor or after AddAfter element.</p>'
      
        '<pre><span color="navy"><b>function</b></span><span color="navy"' +
        '><b>  </b></span>AddImageAtCursor(<span color="navy"><b>const</b' +
        '></span><span color="navy"><b> </b></span>ImageData: TBytes; Url' +
        ': <span color="navy">string</span>=<span color="blue">'#39#39'</span>)' +
        ': TImageElement; </pre>'
      '<p>Add&nbsp;embedded image at caret position.</p>'
      
        '<pre><span color="navy"/><span color="navy"><b>function</b></spa' +
        'n><span color="navy"/> AddImageAtCursor(<span color="navy"><b>co' +
        'nst</b></span><span color="navy"><b> </b></span>Url: <span color' +
        '="navy">string</span>; AWidth: <span color="navy">integer</span>' +
        '=<span color="blue">0</span>; AHeight: <span color="navy">intege' +
        'r</span>=<span color="blue">0</span>; <span color="navy"><b>cons' +
        't</b></span><span color="navy"><b> </b></span>Align: <span color' +
        '="navy">string</span>=<span color="blue">'#39#39'</span>): TImageEleme' +
        'nt; </pre>'
      '<p>Add image and set its alignment (left/right)</p>'
      '<h2>Selection</h2>'
      
        '<pre><span color="navy"/><span color="navy"><b>procedure</b></sp' +
        'an><span color="navy"><b> </b></span>SelectWordAtCursor; </pre>'
      '<p>Select word at caret position.</p>'
      
        '<pre><span color="navy"/><span color="navy"><b>procedure</b></sp' +
        'an><span color="navy"><b> </b></span>DeleteSelection(DeleteEmpty' +
        'Elements: <span color="navy">boolean</span>=true);</pre>'
      
        '<p>Delete selection. DeleteEmptyElements=true means that empty b' +
        'lock or inline element in selection will be deleted.</p>'
      
        '<pre><span color="navy"><b>procedure</b></span><span color="navy' +
        '"><b> </b></span>TagSelection(<span color="navy"><b>const</b></s' +
        'pan><span color="navy"><b> </b></span>Tag: <span color="navy">st' +
        'ring</span>; attributes: <span color="navy">string</span>=<span ' +
        'color="blue">'#39#39'</span>);</pre>'
      
        '<p>Wrap selected elements&nbsp;by tag.&nbsp;Additional attribute' +
        's could be added to tag.</p>'
      
        '<pre><span color="navy"/><span color="navy"><b>procedure</b></sp' +
        'an><span color="navy"><b> </b></span>UntagSelection(<span color=' +
        '"navy"><b>const</b></span><span color="navy"><b> </b></span>Tag:' +
        ' <span color="navy">string</span>; <span color="navy"><b>const</' +
        'b></span><span color="navy"><b> </b></span>attributes: <span col' +
        'or="navy">string</span>=<span color="blue">'#39#39'</span>);</pre>'
      '<p>Remove parent tag from selected elements.</p>'
      
        '<pre><span color="navy"><b>procedure</b></span><span color="navy' +
        '"><b> </b></span>Current.SelectPara;<br/></pre>'
      '<p>Select paragraph at caret position.</p>'
      '<h2>Caret context&nbsp;&nbsp;&nbsp;</h2>'
      
        '<pre><span color="navy"/><span color="navy"><b>function</b></spa' +
        'n><span color="navy"><b>  </b></span>CharAtCursor: <span color="' +
        'navy">char</span>;'
      
        '<span color="navy"><b>function</b></span><span color="navy"><b> ' +
        ' </b></span>WordAtCursor: hstring;</pre>'
      '<p>Get&nbsp;the&nbsp;character/word at caret position.</p>'
      
        '<pre><span color="navy"/><span color="navy"><b>function</b></spa' +
        'n><span color="navy"><b>  </b></span>CurrentIsText: <span color=' +
        '"navy">boolean</span>;</pre>'
      '<p>Check if the current element is a text element.</p>'
      
        '<pre><span color="navy"/><span color="navy"><b>function</b></spa' +
        'n><span color="navy"><b>  </b></span>CurrentText: TTextElement;&' +
        'nbsp;&nbsp;</pre>'
      '<p>Get the current text element.<br/></p>'
      '<p/>'
      '<h2>Keyboard shortcuts<span color="navy"><b/></span></h2>'
      '<dl>'
      '  <dt>Ctrl+Left/Right</dt>'
      '  <dd>Next/Previous word</dd>'
      '  <dt>Ctrl+Up/Down</dt>'
      '  <dd>Paragraph start/End or Next/Previous </dd>'
      '  <dt>Ctrl+Home/End</dt>'
      '  <dd>Start/End of document</dd>'
      '  <dt>Ctrl+Alt+1..5</dt>'
      '  <dd>Header 1..5</dd>'
      '  <dt>Ctrl+1, 2, 5</dt>'
      '  <dd>Line spacing 1, 2, 1.5</dd>'
      '  <dt>Ctrl+Shift+A</dt>'
      '  <dd>Upper case</dd>'
      '  <dt>Ctrl+Shift+K</dt>'
      '  <dd>Lower case</dd>'
      '  <dt>Ctrl+B</dt>'
      '  <dd>Bold</dd>'
      '  <dt>Ctrl+I</dt>'
      '  <dd>Italic</dd>'
      '  <dt>Ctrl+U</dt>'
      '  <dd>Underline</dd>'
      '  <dt>Ctrl+E</dt>'
      '  <dd>Center alignment</dd>'
      '  <dt>Ctrl+L</dt>'
      '  <dd>Left alignment</dd>'
      '  <dt>Ctrl+R </dt>'
      '  <dd>Right alignment</dd>'
      '  <dt>Ctrl+C/Ctrl+Ins</dt>'
      '  <dd>Copy to clipboard</dd>'
      '  <dt>Ctrl+V/Shift+Ins</dt>'
      '  <dd>Paste from clipboard</dd>'
      '  <dt>Ctrl+Z </dt>'
      '  <dd>Undo</dd>'
      '  <dt>Ctrl+M</dt>'
      '  <dd>Increase indent</dd>'
      '  <dt>Ctrl+Shift+M</dt>'
      '  <dd>Decrease indent</dd>'
      '  <dt>Ctrl+Alt+C</dt>'
      '  <dd>'#169'</dd>'
      '  <dt>Ctrl+Alt+R</dt>'
      '  <dd>'#174'</dd>'
      '  <dt>Ctrl+Alt+T</dt>'
      '  <dd>'#8482'</dd>'
      '  <dt>Ctrl+Alt+-</dt>'
      '  <dd>-</dd>'
      '  <dt>Ctrl+-</dt>'
      '  <dd>-</dd>'
      '  <dt>Ctrl+Shift++</dt>'
      '  <dd>Superscript</dd>'
      '  <dt>Ctrl++</dt>'
      '  <dd>Subscript&nbsp;</dd>'
      '  <dt>Shift+Enter</dt>'
      '  <dd>Soft line-break</dd>'
      '  <dd>&nbsp;</dd>'
      '</dl>'
      '<h2 style="">Autoreplace</h2>'
      '<p>Following&nbsp;sequences will be replaced</p>'
      '<ul>'
      '  <li>(c)&nbsp;-&nbsp;'#169'</li>'
      '  <li>(tm) - '#8482'</li>'
      '  <li>(r) - '#174'</li>'
      '  <li>'#8230' - '#8230' </li>'
      '  <li>&nbsp;* at line start - unordered list</li>'
      '  <li>1.&nbsp;&nbsp;at line start-&nbsp;orderd&nbsp;list </li>'
      '  <li>--&nbsp;- -</li>'
      '  <li>---+Enter - horizontal divider</li>'
      '</ul>'
      '<h2>Tag Navigator component</h2>'
      
        '<p><img align="right" src="file://htnavigator.png"/>Tag navigato' +
        'r component is&nbsp;used&nbsp;to show path to current element (f' +
        'rom document root) and highlight block element in document. Simp' +
        'ly place it on the form and set its width.</p>'
      
        '<p>To highlight block in document simply hover mouse on block na' +
        'me.</p>'
      '<p>&nbsp;</p>'
      '')
    Styles.Strings = (
      'body {margin: 8 8; font-size: 13pt; } '
      'td, th {resize: horizontal}'
      'img {draggable: true; resize: both}'
      ''
      'atd {border: solid red 1px !important}'
      'atable {border: solid green 1px !important}'
      'xtemplate {background: #aa80ef70; }'
      ''
      '')
    TouchScroll = False
    HighlightTextColor = 0
    ScaleMin = 10.000000000000000000
    ScaleMax = 1000.000000000000000000
    OnCaretMoved = OnCaretMoved
    SpellChecking = True
    WordCorrection = True
    PreserveStyleOnNewBlock = True
    AfterLoad = EAfterLoad
    BlockHighlightColor = -6250258
    Encoding = heDefault
    Options = [eoCaretVisible, eoEmbedDroppedImages, eoEmbedPastedImages]
    DefaultParaTag = 'p'
    IsControl = True
  end
  object pnlFooter: TPanel
    Left = 0
    Top = 764
    Width = 1168
    Height = 22
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object TrackBar1: TTrackBar
      Left = 804
      Top = 0
      Width = 364
      Height = 22
      Align = alRight
      Max = 200
      Min = 50
      PageSize = 1
      Position = 100
      ShowSelRange = False
      TabOrder = 0
      TabStop = False
      OnChange = TrackBar1Change
    end
    object HtTagNavigator1: THtTagNavigator
      Left = 2
      Top = 1
      Width = 505
      Height = 22
      Caption = 'HtTagNavigator1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = 16
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Touch.InteractiveGestures = [igZoom, igPan, igPressAndTap]
      Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoPanInertia]
      Touch.ParentTabletOptions = False
      Touch.TabletOptions = [toPressAndHold, toSmoothScrolling]
      HTML.Strings = (
        '<a id=0><b>h1</b></a>')
      Styles.Strings = (
        
          'a {text-decoration: none; color: #903050} a:hover {border: solid' +
          ' red 1px}')
      HighlightTextColor = 0
      ScaleMin = 10.000000000000000000
      ScaleMax = 1000.000000000000000000
      Editor = E
      SelectionColor = '#FF207020'
    end
  end
  object LeftPages: TPageControl
    Left = 0
    Top = 112
    Width = 272
    Height = 652
    ActivePage = tabTag
    Align = alLeft
    TabOrder = 4
    TabPosition = tpBottom
    Visible = False
    object TabSheet1: TTabSheet
      Caption = 'Navigation'
      object TreePanel: THtPanel
        Left = 0
        Top = 0
        Width = 264
        Height = 624
        Align = alClient
        Caption = 'TreePanel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 16
        Font.Name = 'Times'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Touch.InteractiveGestures = [igZoom, igPan, igPressAndTap]
        Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoPanInertia]
        Touch.ParentTabletOptions = False
        Touch.TabletOptions = [toPressAndHold, toSmoothScrolling]
        HorizontalScrollBar = hsbAuto
        HTML.Strings = (
          '<html/> ')
        OnElementClick = TreePanelElementClick
        Styles.Strings = (
          'body {background: white;   '
          
            '  font-family: Verdana; font-size: 9pt; color: #305090; padding:' +
            ' 3px 3px;}'
          'h1,h2,h3,h4,h5 {white-space: nowrap; cursor: pointer;  }'
          
            'h1:hover, h2:hover, h3:hover, h4:hover, h5:hover {text-decoratio' +
            'n: underline}'
          'h1 {font-size: 14pt}'
          'h2 {margin-left: 10px; font-size: 12pt}'
          'h3 {margin-left: 20px; font-size: 10pt}'
          'h4 {margin-left: 30px; font-size: 9pt}'
          'h5 {margin-left: 40px; font-size: 8pt}'
          ''
          ''
          '')
        VerticalScrollBar = hsbAlways
        HighlightTextColor = 0
        ScaleMin = 10.000000000000000000
        ScaleMax = 1000.000000000000000000
        ExplicitHeight = 504
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Search'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 264
        Height = 28
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object SearchEdit: TEdit
          Left = 3
          Top = 2
          Width = 169
          Height = 23
          TabOrder = 0
          OnChange = SearchEditChange
        end
      end
      object SearchPanel: THtPanel
        Left = 0
        Top = 28
        Width = 264
        Height = 596
        Align = alClient
        Caption = 'ThumbPanel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 16
        Font.Name = 'Times'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Touch.InteractiveGestures = [igZoom, igPan, igPressAndTap]
        Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoPanInertia]
        Touch.ParentTabletOptions = False
        Touch.TabletOptions = [toPressAndHold, toSmoothScrolling]
        OnUrlClick = SearchPanelUrlClick
        Styles.Strings = (
          'body {'
          ' background: white ;'
          ' Color: #202020;'
          ' font-size: 10pt;'
          ' font-face: Calibri;'
          ' padding: 5 5;'
          '}'
          'a {color: #202020; text-decoration: none;}'
          'a:hover {text-decoration: underline}'
          
            'h3 {text-align: center; color: #aaa; margin: 10 0 5 0; border-bo' +
            'ttom: solid #aaa 1px}'
          'span {color: #A09000; font-weight: bold}')
        VerticalScrollBar = hsbAlways
        HighlightTextColor = 0
        ScaleMin = 10.000000000000000000
        ScaleMax = 1000.000000000000000000
        ExplicitHeight = 476
      end
    end
    object tabTag: TTabSheet
      Caption = 'Tag'
      ImageIndex = 2
      object pnlLists: TPanel
        Left = 0
        Top = 0
        Width = 264
        Height = 624
        Align = alClient
        TabOrder = 0
        object spl2: TSplitter
          Left = 1
          Top = 513
          Width = 262
          Height = 6
          Cursor = crVSplit
          Align = alTop
          ExplicitTop = 537
          ExplicitWidth = 167
        end
        object lst1: TListBox
          Left = 1
          Top = 24
          Width = 262
          Height = 489
          Align = alTop
          ItemHeight = 15
          TabOrder = 0
          OnClick = lst1Click
        end
        object lst2: TListBox
          Left = 1
          Top = 519
          Width = 262
          Height = 104
          Align = alClient
          ItemHeight = 15
          TabOrder = 1
          OnClick = lst2Click
        end
        object edLabelTag: TEdit
          Left = 1
          Top = 1
          Width = 262
          Height = 23
          Align = alTop
          TabOrder = 2
          Text = 'edLabelTag'
        end
      end
    end
  end
  object ImageList1: TImageList
    ColorDepth = cd32Bit
    DrawingStyle = dsTransparent
    Left = 80
    Top = 84
    Bitmap = {
      494C010130003500040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000D0000000010020000000000000D0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000993200FFCC6500FFCC6565FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000993232FFCC6565FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC65
      00FFCC6500FFCC6500FFCC6532FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000993232FF993232FF993232FFCC6565FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC6532FFCC65
      00FFCC6500FFCC6532FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFCC65FFFFCC65FFFFCC65FFFFCC
      65FFFFCC65FFFFCC65FFFFCC65FFFFCC65FFFFCC65FFFFCC65FFFFCC65FFFFCC
      65FFFFCC65FFFFCC65FFFFCC65FFFFCC65FF00000000CC3200FF800000FF8000
      00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
      00FF800000FF800000FF800000FF800000FF0000000000000000000000009932
      32FF993232FF993232FF993232FFCC6565FF0000000000000000000000000000
      00000000000000000000000000000000000000000000CC9965FFCC6500FFCC65
      00FFCC6532FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFCC65FFFFFFFFFFFFFFFFFFFFCC
      65FFFFCC99FFFFCC99FFFFECCCFFFFECCCFFFFECCCFFFFECCCFFFFECCCFFFFEC
      CCFFFFECCCFFFFECCCFFF1F1F1FFFFCC65FF00000000CC3200FF993200FF9932
      00FF993200FF993200FF993200FF993200FF993200FF993200FF993200FF9932
      00FFCC3200FFFFFFFFFFFFFFFFFF800000FF0000000000000000993232FF9932
      32FF993232FFCC6565FF993232FF993232FFCC6565FF00000000000000000000
      00000000000000000000000000000000000000000000CC3200FFCC6500FF9932
      00FF0000000000000000CC9965FFCC6500FFCC6500FFCC6500FFCC6500FFCC65
      00FFCC6500FFCC6500FF993200FF00000000FFCC65FFFFFFFFFFFFFFFFFFFFCC
      65FFFFCC99FFFFCC99FFFFECCCFFFFECCCFFFFECCCFFFFECCCFFFFECCCFFFFEC
      CCFFFFECCCFFFFECCCFFF1F1F1FFFFCC65FF00000000CC3200FF993200FF9932
      00FF993200FF993200FFFFFFFFFF993200FF993200FF993200FF993200FF9932
      00FFCC3200FFFFFFFFFFFFFFFFFF800000FF00000000993232FF993232FF9932
      32FFCC6565FF0000000000000000993232FF993232FFCC9999FF000000000000
      000000000000000000000000000000000000CC9965FFCC6500FFCC6500FF0000
      00000000000000000000CC6532FFCC6500FFCC6500FFCC6500FFCC6500FFCC65
      00FFCC6500FFCC6500FFCC6500FF00000000FFCC65FFFFFFFFFFFFFFFFFFFFCC
      65FFFFCC99FFFFCC99FFFFECCCFFFFECCCFFFFECCCFFFFECCCFFFFECCCFFFFEC
      CCFFFFECCCFFFFECCCFFF1F1F1FFFFCC65FF00000000CC3200FF993200FF9932
      00FF993200FFFFFFFFFFFFFFFFFF993200FF993200FF993200FF993200FF9932
      00FFCC3200FFFFFFFFFFFFFFFFFF800000FF0000000000000000993232FFCC65
      65FF00000000000000000000000000000000993232FFCC6565FF000000000000
      000000000000000000000000000000000000CC6500FFCC6500FF993200FF0000
      0000000000000000000000000000CC9999FFCC9999FFCC9999FF993200FFCC65
      00FFCC6500FFCC6500FFCC6500FF00000000FFCC65FFFFCC65FFFFCC65FFFFCC
      65FFFFCC99FFFFCC99FFFFECCCFFFFECCCFFFFECCCFFFFECCCFFFFECCCFFFFEC
      CCFFFFECCCFFFFECCCFFF1F1F1FFFFCC65FF00000000CC3200FF993200FF9932
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9932
      00FFCC3200FFFFFFFFFFFFFFFFFF800000FF0000000000000000000000000000
      00000000000000000000000000000000000000000000993232FFCC6565FF0000
      000000000000000000000000000000000000CC3200FFCC6500FFCC6532FF0000
      00000000000000000000000000000000000000000000CC9965FFCC6500FFCC65
      00FFCC6500FFFF9900FFCC6500FF00000000FF9965FFFFFFFFFFFFFFFFFFFF99
      65FFFFCC99FFFFCC99FFFFECCCFFFFECCCFFFFECCCFFFFECCCFFFFECCCFFFFEC
      CCFFFFECCCFFFFECCCFFF1F1F1FFFF9965FF00000000CC3200FF993200FF9932
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9932
      00FFCC3200FFFFFFFFFFFFFFFFFF800000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993232FFCC65
      65FF00000000000000000000000000000000CC3200FFCC6500FFCC6532FF0000
      000000000000000000000000000000000000CC6565FFCC6500FFCC6500FFCC65
      00FFCC6500FFFF9900FFCC6500FF00000000FF9965FFFFFFFFFFFFFFFFFFFF99
      65FFFFCC99FFFFCC99FFFFECCCFFFFECCCFFFFECCCFFFFECCCFFFFECCCFFFFEC
      CCFFFFECCCFFFFECCCFFF1F1F1FFFF9965FF00000000CC3200FF993200FF9932
      00FF993200FFFFFFFFFFFFFFFFFF993200FF993200FF993200FF993200FF9932
      00FFCC3200FFFFFFFFFFFFFFFFFF800000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009932
      32FFCC6565FF000000000000000000000000CC6500FFCC6500FFCC3200FF0000
      0000000000000000000000000000CC6532FFCC6500FFFF9900FFCC6500FF0000
      0000CC9932FFFF9900FFCC6500FF00000000FF9965FFFFFFFFFFFFFFFFFFFF99
      65FFFFCC99FFFFCC99FFFFECCCFFFFECCCFFFFECCCFFFFECCCFFFFECCCFFFFEC
      CCFFFFECCCFFFFECCCFFF1F1F1FFFF9965FF00000000CC3200FF993200FF9932
      00FF993200FF993200FFFFFFFFFF993200FF993200FF993200FF993200FF9932
      00FFCC3200FFFFFFFFFFFFFFFFFF800000FF00000000000000FF000000000000
      00FF00000000000000FF000000FFA4A0A0FF00000000A4A0A0FF000000FF0000
      00FF993232FFCC6565FF0000000000000000CC9965FFCC6500FFCC6500FFCC65
      00FFCC9965FFCC6565FFCC6500FFFF6500FFFF9900FFCC6500FF000000000000
      0000CC9932FFFF9932FFCC6532FF00000000FF9932FFFFFFFFFFFFFFFFFFFF99
      32FFFFCC99FFFFCC99FFFFECCCFFFFECCCFFFFECCCFFFFECCCFFFFECCCFFFFEC
      CCFFFFECCCFFFFECCCFFF1F1F1FFFF9932FF00000000CC3200FF993200FF9932
      00FF993200FF993200FF993200FF993200FF993200FF993200FF993200FF9932
      00FFCC3200FFFFFFFFFFFFFFFFFF800000FF00000000000000FF000000000000
      00FF00000000000000FF00000000000000FF00000000000000FF000000000000
      000000000000993232FFCC6565FF0000000000000000993200FFCC6500FFCC65
      00FFCC6500FFCC6500FFFF9900FFFF6500FFCC6532FF00000000000000000000
      0000CC6565FFFFCC65FFCC6532FF00000000FF9932FFFF9932FFFF9932FFFF99
      32FFFF9932FFFF9932FFFF9932FFFF9932FFFF9932FFFF9932FFFF9932FFFF99
      32FFFF9932FFFF9932FFFF9932FFFF9932FF00000000CC3200FFCC3200FFCC32
      00FFCC3200FFCC3200FFCC3200FFCC3200FFCC3200FFCC3200FFCC3200FFCC32
      00FFCC3200FFCC3200FFCC3200FFCC3200FF00000000000000FF000000FF0000
      00FF00000000000000FF000000FFA4A0A0FF00000000000000FF000000000000
      00000000000000000000993232FF000000000000000000000000CC6532FFCC65
      00FFCC6500FFCC6500FFCC6500FFCC9999FF0000000000000000000000000000
      000000000000CC9965FFCC9965FF00000000FF9932FFFFFFFFFFFFFFFFFFFF99
      32FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9932FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9932FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000000000
      00FF00000000000000FF00000000000000FF00000000000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9932FFFFFFFFFFFFFFFFFFFF99
      32FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9932FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9932FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A4A0A0FF000000FFA4A0
      A0FF00000000000000FF000000FFA4A0A0FF00000000A4A0A0FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9932FFFF9932FFFF9932FFFF99
      32FFFF9932FFFF9932FFFF9932FFFF9932FFFF9932FFFF9932FFFF9932FFFF99
      32FFFF9932FFFF9932FFFF9932FFFF9932FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD5A5A00AD52
      5200A54A4A00AD949400C6CEC600CECEC600CECEC600C6CEC600C6CEC600B59C
      9C009C4242009C424200A55252000000000000000000326565FFCC9999FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000992E00FF992E00FF000000000000000000000000992E00FF992E
      00FF0000000000000000000000000000000000000000BD7B7300CE636300CE6B
      6B00B55A5A009C848400BDA5A500E7CECE00FFF7F700FFFFF700F7F7F700CEB5
      B500942929009C313100C65A5A00AD5A5A006599CCFF0099FFFF326599FFCC99
      99FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC6100FF992E00FF992E00FF992E00FF00000000992E00FF992E00FF992E
      00FF992E00FF00000000000000000000000000000000BD7B7300CE636300CE63
      6300B55A5A009C7B7B009C424200B5737300E7DEDE00FFF7F700FFFFFF00D6B5
      B500943131009C313100BD5A5A00AD5A5A0032CCFFFF65CCFFFF3299FFFF3265
      99FFCC9999FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000992E00FF0000000000000000992E00FF00000000992E00FF000000000000
      0000992E00FF00000000000000000000000000000000BD7B7300CE636300CE63
      6300B55A5A00AD8484009C3939009C393900CEBDBD00EFEFEF00FFFFFF00E7C6
      C6009429290094313100BD5A5A00AD5A5A000000000065CCFFFF65CCFFFF0099
      FFFF326599FFCC9999FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000800000FF800000FF800000FF8000
      00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
      00FF800000FF800000FFCC3200FF000000000000000000000000000000000000
      0000992E00FF992E00FF00000000992E00FF00000000992E00FF00000000CC61
      00FF992E00FF00000000000000000000000000000000BD7B7300CE636300CE63
      6300B55A5A00B58C8C009C4A4A0094313100A59C9C00D6D6D600FFFFFF00E7C6
      C6009429290094313100BD5A5A00AD5A5A00000000000000000065CCFFFF32CC
      FFFF0099FFFF326599FFCC9999FF000000000000000000000000000000000000
      000000000000000000000000000000000000800000FFFFFFFFFFFFFFFFFFCC32
      00FF993200FF993200FF993200FF993200FF993200FF993200FF993200FF9932
      00FF993200FF993200FFCC3200FF000000000000000000000000000000000000
      0000CC6100FF992E00FF992E00FF992E00FF969696FF992E00FF992E00FF992E
      00FF992E00FF00000000000000000000000000000000BD7B7300CE636300CE63
      6300BD5A5A00C6948C00C6949400B5848400AD8C8C00BDA5A500E7C6C600DEAD
      AD00A5393900A5393900C65A5A00AD5A5A0000000000000000000000000065CC
      FFFF32CCFFFF3299CCFF656565FF00000000996565FFCC9999FFCCCC99FFCC99
      99FF00000000000000000000000000000000800000FFFFFFFFFFFFFFFFFFCC32
      00FF993200FF993200FF993200FF993200FF993200FFFFFFFFFF993200FF9932
      00FF993200FF993200FFCC3200FF000000000000000000000000000000000000
      000000000000CC6100FF992E00FF992E00FF99612EFF992E00FF992E00FF992E
      00FF0000000000000000000000000000000000000000BD7B7300CE636300CE63
      6300CE636300CE636300CE636300CE636300CE636300C65A5A00C65A5A00CE63
      6300CE636300CE636300CE6B6B00AD525A000000000000000000000000000000
      000065CCFFFFC6D6EFFF969696FFA4A0A0FFFFECCCFFFFFFCCFFFFFFCCFFFFFF
      CCFFD7D7D7FFCC9999FF0000000000000000800000FFFFFFFFFFFFFFFFFFCC32
      00FF993200FF993200FF993200FF993200FF993200FFFFFFFFFFFFFFFFFF9932
      00FF993200FF993200FFCC3200FF000000000000000000000000000000000000
      0000000000000000000000000000996161FFDDDDDDFF505050FF000000000000
      00000000000000000000000000000000000000000000BD7B7300B5525200B55A
      5A00C6848400D6A5A500D6ADAD00D6ADA500D6ADAD00D6A5A500D6A5A500D6AD
      A500D6ADAD00D69C9C00CE636300AD5252000000000000000000000000000000
      000000000000C0C0C0FFCCCC99FFFFECCCFFFFFFCCFFFFFFCCFFFFFFCCFFFFFF
      CCFFF8F8F8FFF1F1F1FFCC9999FF00000000800000FFFFFFFFFFFFFFFFFFCC32
      00FF993200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF993200FF993200FFCC3200FF000000000000000000000000000000000000
      00000000000000000000996161FFDDDDDDFF868686FFCBCBCBFF505050FF0000
      00000000000000000000000000000000000000000000BD7B7300AD524A00E7CE
      CE00F7F7F700F7F7EF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700DEBDBD00C65A5A00AD525A000000000000000000000000000000
      000000000000CC9999FFF0CAA6FFF0CAA6FFFFFFCCFFFFFFCCFFFFFFCCFFF8F8
      F8FFFFFFFFFFFFFFFFFFCCCCCCFF00000000800000FFFFFFFFFFFFFFFFFFCC32
      00FF993200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF993200FF993200FFCC3200FF000000000000000000000000000000000000
      00000000000000000000868686FFDDDDDDFF505050FFCBCBCBFF996161FF0000
      00000000000000000000000000000000000000000000BD7B7300B5524A00EFD6
      D600FFF7F700F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7F7F700DEBDBD00C65A5A00AD525A000000000000000000000000000000
      000000000000F0CAA6FFFFFF99FFFFCC99FFFFFFCCFFFFFFCCFFF8F8F8FFFFFF
      FFFFFFFFFFFFF8F8F8FFFFECCCFFCC9999FF800000FFFFFFFFFFFFFFFFFFCC32
      00FF993200FF993200FF993200FF993200FF993200FFFFFFFFFFFFFFFFFF9932
      00FF993200FF993200FFCC3200FF000000000000000000000000000000000000
      000000000000996161FFDDDDDDFF505050FF00000000727272FFCBCBCBFF5050
      50FF0000000000000000000000000000000000000000BD7B7300B5524A00EFD6
      D600EFEFEF00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600EFEFEF00DEBDBD00C65A5A00AD525A000000000000000000000000000000
      000000000000F0CAA6FFF0CAA6FFFFCC99FFFFECCCFFFFFFCCFFFFFFCCFFF8F8
      F8FFF8F8F8FFFFFFCCFFFFFFCCFFCC9999FF800000FFFFFFFFFFFFFFFFFFCC32
      00FF993200FF993200FF993200FF993200FF993200FFFFFFFFFF993200FF9932
      00FF993200FF993200FFCC3200FF000000000000000000000000000000000000
      000000000000868686FF868686FF000000000000000000000000727272FF9961
      61FF0000000000000000000000000000000000000000BD7B7300B5524A00EFD6
      D600EFEFEF00DED6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DED6
      D600EFEFEF00DEBDBD00C65A5A00AD525A000000000000000000000000000000
      000000000000F0CAA6FFFFECCCFFFFCC99FFFFCC99FFFFECCCFFFFFFCCFFFFFF
      CCFFFFFFCCFFFFFFCCFFFFECCCFFCC9999FF800000FFFFFFFFFFFFFFFFFFCC32
      00FF993200FF993200FF993200FF993200FF993200FF993200FF993200FF9932
      00FF993200FF993200FFCC3200FF000000000000000000000000000000000000
      0000996161FFDDDDDDFF505050FF000000000000000000000000727272FFCBCB
      CBFF505050FF00000000000000000000000000000000BD7B7300B5524A00EFD6
      D600F7F7EF00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00EFEFEF00DEBDBD00C65A5A00AD525A000000000000000000000000000000
      000000000000CC9999FFFFECCCFFFFECCCFFF0CAA6FFFFCC99FFFFECCCFFFFFF
      CCFFFFFFCCFFFFFFCCFFD7D7D7FF00000000CC3200FFCC3200FFCC3200FFCC32
      00FFCC3200FFCC3200FFCC3200FFCC3200FFCC3200FFCC3200FFCC3200FFCC32
      00FFCC3200FFCC3200FFCC3200FF000000000000000000000000000000000000
      0000727272FF505050FF00000000000000000000000000000000000000007272
      72FF996161FF00000000000000000000000000000000BD7B7300B5524A00EFD6
      D600EFEFEF00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600EFEFEF00DEBDBD00C65A5A00AD525A000000000000000000000000000000
      00000000000000000000F0CAA6FFFFFFFFFFF8F8F8FFFFCC99FFFFCC99FFFFCC
      99FFFFECCCFFFFFFCCFFCC9999FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000505050FF0000000000000000000000000000000000000000000000000000
      0000727272FF00000000000000000000000000000000BD7B7300B5524A00E7D6
      CE00FFF7F700F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00FFF7F700DEBDBD00C65A5A00AD525A000000000000000000000000000000
      0000000000000000000000000000C0C0C0FFFFECCCFFFFECCCFFFFFF99FFFFEC
      CCFFF0CAA6FFCC9999FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD524A00CEB5
      B500D6D6D600CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00D6D6D600CEADAD00A54A4A00000000000000000000000000000000000000
      000000000000000000000000000000000000CC9999FFCC9999FFF0CAA6FFF0CA
      A6FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC6400FFCC6400FFCC64
      00FFCC6400FFCC6400FF0000000000000000CC6400FFCC6400FFCC6400FFCC64
      00FFCC6400FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC64
      00FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000993131FF993131FF9931
      31FF993131FF993131FF993131FF993131FF993131FF993131FF993131FF9931
      31FF993131FF993131FF000000000000000000000000CC6400FFFF6400FFFF64
      00FFCC6400FFCC6400FF0000000000000000CC6400FFCC6400FFFF6400FFFF64
      00FFCC6400FF0000000000000000000000005D5D5DFF5D5D5DFF5D5D5DFF5D5D
      5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D
      5DFF5D5D5DFFCC9999FF0000000000000000000000000000000000000000CC64
      00FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000993131FF000000000000
      0000000000000000000000000000993131FF0000000000000000000000000000
      000000000000993131FF000000000000000000000000CC6400FF000000000000
      0000CC6400FFFF6400FF0000000000000000FF6400FFCC6400FF000000000000
      0000CC6400FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC64
      00FF0000000000000000CC6400FFCC6400FFCC6400FFCC6400FFCC6400FF0000
      00000000000000000000000000000000000000000000993131FF000000000000
      0000000000000000000000000000993131FF0000000000000000000000000000
      000000000000993131FF0000000000000000000000000000000000000000FF64
      00FFCC6400FF00000000000000000000000000000000CC6400FFFF6400FF0000
      0000000000000000000000000000000000005D5D5DFF5D5D5DFF5D5D5DFF5D5D
      5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D
      5DFF5D5D5DFFCC9999FF0000000000000000000000000000000000000000CC64
      00FFCC6400FFCC6400FFCC6400FFFFFFFFFFFFFFFFFFFFECCCFFCC6400FF0000
      00000000000000000000000000000000000000000000993131FF000000000000
      0000000000000000000000000000993131FF0000000000000000000000000000
      000000000000993131FF0000000000000000000000000000000000000000CC64
      00FF000000000000000000000000000000000000000000000000CC6400FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC64
      00FF0000000000000000CC6400FFCC6400FFCC6400FFCC6400FFCC6400FF0000
      00000000000000000000000000000000000000000000993131FF000000000000
      0000000000000000000000000000993131FF0000000000000000000000000000
      000000000000993131FF00000000000000000000000000000000FF6400FFFF64
      00FF000000000000000000000000000000000000000000000000FF6400FFFF64
      00FF000000000000000000000000000000005D5D5DFF5D5D5DFF5D5D5DFF5D5D
      5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D
      5DFF5D5D5DFFCC9999FF0000000000000000000000000000000000000000CC64
      00FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000993131FF000000000000
      0000000000000000000000000000993131FF0000000000000000000000000000
      000000000000993131FF000000000000000000000000FF6400FFCC6400FF0000
      000000000000000000000000000000000000000000000000000000000000CC64
      00FFFF6400FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC64
      00FF0000000000000000CC6400FFCC6400FFCC6400FFCC6400FFCC6400FF0000
      00000000000000000000000000000000000000000000993131FF993131FF9931
      31FF993131FF993131FF993131FF993131FF993131FF993131FF993131FF9931
      31FF993131FF993131FF000000000000000000000000FF6400FFCC6400FF0000
      000000000000000000000000000000000000000000000000000000000000CC64
      00FFFF6400FF0000000000000000000000005D5D5DFF5D5D5DFF5D5D5DFF5D5D
      5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D
      5DFF5D5D5DFFCC9999FF0000000000000000000000000000000000000000CC64
      00FFCC6400FFCC6400FFCC6400FFFFFFFFFFFFFFFFFFFFECCCFFCC6400FF0000
      00000000000000000000000000000000000000000000993131FF000000000000
      0000000000000000000000000000993131FF0000000000000000000000000000
      000000000000993131FF000000000000000000000000FF6400FFCC6400FF0000
      000000000000000000000000000000000000000000000000000000000000CC64
      00FFFF6400FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC64
      00FF0000000000000000CC6400FFCC6400FFCC6400FFCC6400FFCC6400FF0000
      00000000000000000000000000000000000000000000993131FF000000000000
      0000000000000000000000000000993131FF0000000000000000000000000000
      000000000000993131FF00000000000000000000000000000000CC6400FFFF64
      00FF000000000000000000000000000000000000000000000000FF6400FFCC64
      00FF000000000000000000000000000000005D5D5DFF5D5D5DFF5D5D5DFF5D5D
      5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D
      5DFF5D5D5DFFCC9999FF0000000000000000000000000000000000000000CC64
      00FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000993131FF000000000000
      0000000000000000000000000000993131FF0000000000000000000000000000
      000000000000993131FF0000000000000000000000000000000000000000CC64
      00FFCC6400FFFF6400FFFF6400FFFF6400FFFF6400FFCC6400FFCC6400FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC6400FFCC6400FFCC64
      00FFCC6400FFCC6400FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000993131FF000000000000
      0000000000000000000000000000993131FF0000000000000000000000000000
      000000000000993131FF00000000000000000000000000000000000000000000
      0000FF6400FFCC6400FFCC6400FFCC6400FFCC6400FFFF6400FF000000000000
      0000000000000000000000000000000000005D5D5DFF5D5D5DFF5D5D5DFF5D5D
      5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D
      5DFF5D5D5DFFCC9999FF000000000000000000000000CC6400FFFFFFFFFFFFFF
      FFFFFFECCCFFCC6400FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000993131FF000000000000
      0000000000000000000000000000993131FF0000000000000000000000000000
      000000000000993131FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC6400FFCC6400FFCC64
      00FFCC6400FFCC6400FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000993131FF993131FF9931
      31FF993131FF993131FF993131FF993131FF993131FF993131FF993131FF9931
      31FF993131FF993131FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EF9C2100FFFFFF00FFFF
      FF00FFF7E700EF9C2100000000000000000000000000EF9C2100FFFFFF00FFFF
      FF00FFF7E700EF9C210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EF9C2100FFFFFF00FFFF
      FF00FFF7E700EF9C2100000000000000000000000000EF9C2100FFFFFF00FFFF
      FF00FFF7E700EF9C210000000000000000000000000000000000000000000000
      0000000000000000000000000000008C08000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFB56B00FFB5
      6B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB5
      6B00FFB56B00FFB56B00FFB56B00FFB56B000000000000000000000000000000
      00000000000000000000000000000000000000000000EF9C2100FFFFFF00FFFF
      FF00FFF7E700EF9C2100000000000000000000000000EF9C2100FFFFFF00FFFF
      FF00FFF7E700EF9C210000000000000000000000000000000000000000000000
      00000000000000000000008C0800008C08000073080000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7A55A00FFF7
      E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7
      E700FFF7E700FFF7E700FFF7E700F7A55A000000000000000000000000000000
      00000000000000000000000000000000000000000000EF9C2100FFFFFF00FFFF
      FF00FFF7E700EF9C2100000000000000000000000000EF9C2100FFFFFF00FFFF
      FF00FFF7E700EF9C210000000000000000000000000000000000000000000000
      000000000000008C0800008C0800007308000073080000730800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7A55A00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7A55A000000000000000000000000000000
      00000000000000000000000000000000000000000000EF9C2100FFFFFF00FFFF
      FF00FFF7E700EF9C2100000000000000000000000000EF9C2100FFFFFF00FFFF
      FF00FFF7E700EF9C210000000000000000000000000000000000000000000000
      0000000000000000000000000000007308000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7A55A00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7A55A000000000000000000000000000000
      00000000000000000000000000000000000000000000EF9C2100F7A55A00F7A5
      5A00F7A55A00EF9C210000000000008C080000000000EF9C2100F7A55A00F7A5
      5A00F7A55A00EF9C210000000000000000000000000000000000000000000000
      0000000000000000000000000000007308000000000000000000000000000000
      0000000000000000000000000000000000000063CE000063CE000063CE000063
      CE000063CE000063CE0000000000000000000073080000000000EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C2100EF9C21000063CE000063CE000063CE000063
      CE000063CE000063CE000063CE000063CE000063CE000063CE000063CE000000
      0000000000000073080000000000000000000000000000000000000000000000
      00000000000000000000008C0800008C08000073080000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000063CE000063CE000063CE000063CE000063CE00000000000000
      00000000000000000000000000000000000010F7FF0010F7FF0010F7FF0010F7
      FF0010F7FF000063CE0000000000000000000073080000730800000000000000
      00000000000000000000000000000000000010F7FF0010F7FF0010F7FF0010F7
      FF0010F7FF0010F7FF0010F7FF0010F7FF0010F7FF0010F7FF000063CE000000
      0000000000000073080000730800000000000000000000000000000000000000
      000000000000008C0800008C0800007308000073080000730800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000063CE0010F7FF0010F7FF0010F7FF000063CE00000000000000
      00000000000000000000000000000000000010F7FF0010F7FF0010F7FF0010F7
      FF0010F7FF000063CE00007308000073080000730800008C0800007308000000
      00000000000000000000000000000000000010F7FF0010F7FF0010F7FF0010F7
      FF0010F7FF0010F7FF0010F7FF0010F7FF0010F7FF0010F7FF000063CE000073
      08000073080000730800008C0800007308000000000000000000000000000000
      0000000000000000000000000000007308000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000063CE0010F7FF0010F7FF0010F7FF000063CE00000000000000
      00000000000000000000000000000000000010F7FF0010F7FF0010F7FF0010F7
      FF0010F7FF000063CE000000000000000000008C0800008C0800000000000000
      00000000000000000000000000000000000010F7FF0010F7FF0010F7FF0010F7
      FF0010F7FF0010F7FF0010F7FF0010F7FF0010F7FF0010F7FF000063CE000000
      000000000000008C0800008C0800000000000000000000000000000000000000
      0000000000000000000000000000007308000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000063CE0010F7FF0010F7FF0010F7FF000063CE00000000000000
      0000000000000000000000000000000000000063CE000063CE000063CE000063
      CE000063CE000063CE000000000000000000008C080000000000EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C2100EF9C21000063CE000063CE000063CE000063
      CE000063CE000063CE000063CE000063CE000063CE000063CE000063CE000000
      000000000000008C080000000000000000000000000000000000000000000000
      0000000000000063CE000063CE000063CE000063CE000063CE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000063CE0010F7FF0010F7FF0010F7FF000063CE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7A55A00FFF7
      E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7
      E700FFF7E700FFF7E700FFF7E700EF9C21000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000063CE0010F7FF0010F7FF0010F7FF000063CE00000000000000
      00000000000000000000000000000000000000000000EF9C2100F7A55A00F7A5
      5A00F7A55A000063CE0010F7FF0010F7FF0010F7FF000063CE00F7A55A00F7A5
      5A00F7A55A00EF9C210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7A55A00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7A55A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000063CE0010F7FF0010F7FF0010F7FF000063CE00000000000000
      00000000000000000000000000000000000000000000EF9C2100FFFFFF00FFFF
      FF00FFF7E7000063CE0010F7FF0010F7FF0010F7FF000063CE00FFFFFF00FFFF
      FF00FFF7E700EF9C210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7A55A00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7A55A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000063CE0010F7FF0010F7FF0010F7FF000063CE00000000000000
      00000000000000000000000000000000000000000000EF9C2100FFFFFF00FFFF
      FF00FFF7E7000063CE0010F7FF0010F7FF0010F7FF000063CE00FFFFFF00FFFF
      FF00FFF7E700EF9C210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C2100EF9C21000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000063CE0010F7FF0010F7FF0010F7FF000063CE00000000000000
      00000000000000000000000000000000000000000000EF9C2100FFFFFF00FFFF
      FF00FFF7E7000063CE0010F7FF0010F7FF0010F7FF000063CE00FFFFFF00FFFF
      FF00FFF7E700EF9C210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000063CE0010F7FF0010F7FF0010F7FF000063CE00000000000000
      00000000000000000000000000000000000000000000EF9C2100FFFFFF00FFFF
      FF00FFF7E7000063CE0010F7FF0010F7FF0010F7FF000063CE00FFFFFF00FFFF
      FF00FFF7E700EF9C210000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD735200C65A0000AD4A
      0000000000000000000000000000000000000000000000000000B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B55A3100C65A0000CE63
      0000B55210000000000000000000000000000000000000000000C6A59C009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF00B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000636B6B00636B6B00636B
      6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B
      6B00636B6B00636B6B00636B6B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B55A3100C663
      0000CE630000B55A210000000000000000000000000000000000C6A59C009CFF
      FF0084EFFF004A4A4A0084EFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF00B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008C8C8C00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B55A
      2100CE630000C6630000C6846300000000000000000000000000C6ADA50084EF
      FF005A5A5A00848484004A4A4A0084EFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF00B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8C8C00FFFFFF000063
      CE000063CE000063CE000063CE000063CE000063CE000063CE000063CE000063
      CE000063CE00FFFFFF008C8C8C000000000000000000AD4A0000BD5A0000BD5A
      0000BD5A0000BD5A0000BD5A0000BD5A0000BD5A0000C6846300000000000000
      0000AD4A0000CE630000B54A0000000000000000000000000000B58484005A5A
      5A00BDBDBD0094949C00848484004A4A4A0084EFFF009CFFFF009CFFFF00AD52
      18009CFFFF009CFFFF00B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8C8C00FFFFFF000063
      CE0010F7FF0010F7FF000063CE0010F7FF0010F7FF000063CE0010F7FF0010F7
      FF000063CE00FFFFFF008C8C8C000000000000000000B5520000D6730000CE6B
      0000CE630000CE630000CE630000CE630000C6630000BD6B4200000000000000
      0000CE9C8400C6630000C6630000C684630000000000000000004A4A4A00C6C6
      C6009C9C9C00BDBDBD0094949C00848484004A4A4A0084EFFF009CFFFF00FF6B
      5200AD5218009CFFFF00B584840000000000CE630000CE630000CE630000CE63
      00000000000000000000000000000000000000000000CE630000CE630000CE63
      0000CE630000000000000000000000000000000000009C9C9400FFFFFF000063
      CE0010F7FF0010F7FF000063CE0010F7FF0010F7FF000063CE0010F7FF0010F7
      FF000063CE00FFFFFF009C9C94000000000000000000BD5A0000DE7B0000D673
      0000CE630000A5421000CE9C8400CE9C8400CE9C840000000000000000000000
      000000000000AD4A0000CE630000B5521000000000005A5A5A00BDBDBD007B84
      8400A5A5A500ADADAD00BDBDBD0094949C00848484003131310084EFFF00FF6B
      5200BD5A18009CFFFF00B58484000000000000000000CE630000964E00000000
      0000000000000000000000000000000000000000000000000000CE630000964E
      000000000000000000000000000000000000000000009C9C9400FFFFFF000063
      CE000063CE000063CE000063CE000063CE000063CE000063CE000063CE000063
      CE000063CE00FFFFFF009C9C94000000000000000000C6630000E7840000CE63
      0000DE730000CE630000C6846300000000000000000000000000000000000000
      000000000000C6734200CE630000B54A00005A5A5A00C6C6C600FFFFFF00BDBD
      BD007B848400A5A5A5009C949400BDBDBD0094949C007B84840031313100FF6B
      5200D66321009CFFFF00B5848400000000000000000000000000CE630000964E
      0000000000000000000000000000000000000000000000000000CE630000964E
      000000000000000000000000000000000000000000009C9C9400FFFFFF000063
      CE0010F7FF0010F7FF000063CE0010F7FF0010F7FF000063CE0010F7FF0010F7
      FF000063CE00FFFFFF009C9C94000000000000000000CE630000F7940000B552
      1000B5520000DE7B0000CE6B0000BD7B52000000000000000000000000000000
      000000000000C6734200CE630000B54A0000000000005A5A5A00C6C6C600FFFF
      FF00BDBDBD007B8484006B5A5A0084737300BDBDBD008C94940073737300FF6B
      5200FF4242009CFFFF00B584840000000000000000000000000000000000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000964E
      00000000000000000000000000000000000000000000A5A5A500F7F7F7000063
      CE0010F7FF0010F7FF000063CE0010F7FF0010F7FF000063CE0010F7FF0010F7
      FF000063CE00F7F7F700A5A5A5000000000000000000CE6B0800FF9C0800CE84
      420000000000B5520000E7840000CE6B0000BD63310000000000000000000000
      000000000000B54A0000CE630000B552100000000000000000005A5A5A00C6C6
      C600EFEFEF006B737300313131006B737300C6C6C600FF424200FF6B5200FF42
      42009CFFFF009CFFFF00B5848400000000000000000000000000000000000000
      0000CE630000964E000000000000000000000000000000000000CE630000964E
      00000000000000000000000000000000000000000000A5A5A500F7F7F7000063
      CE000063CE000063CE000063CE000063CE000063CE000063CE000063CE000063
      CE000063CE00F7F7F700A5A5A5000000000000000000CE732100FFAD3100CE84
      4A000000000000000000C6631000E7840000E77B0000BD520000C67B5200C68C
      7300B5521000C6630000C6630000C68463000000000000000000DEC6B5005A5A
      5A00C6C6C600EFEFEF0031313100C6C6C60084848400E7B59400FF424200E7B5
      9400E7DEC600C6BDAD00B5848400000000000000000000000000000000000000
      000000000000CE630000964E0000000000000000000000000000CE630000964E
      00000000000000000000000000000000000000000000ADADAD00EFEFEF000063
      CE0010F7FF0010F7FF000063CE0010F7FF0010F7FF000063CE0010F7FF0010F7
      FF000063CE00EFEFEF00ADADAD000000000000000000CE7B3900FFBD6300C67B
      5200000000000000000000000000B55A2100E77B0000E7840000DE7B0000D673
      0000CE6B0000C6630000AD4A1000000000000000000000000000E7C6B5006363
      630084848400C6C6C60031424A0084848400FF4242009CFFFF009CFFFF00C6A5
      9400B5948C00B58C8400B5848400000000000000000000000000000000000000
      00000000000000000000CE630000964E00000000000000000000CE630000964E
      00000000000000000000000000000000000000000000ADADAD00EFEFEF000063
      CE0010F7FF0010F7FF000063CE0010F7FF0010F7FF000063CE0010F7FF0010F7
      FF000063CE00EFEFEF00ADADAD000000000000000000CE947B00C6845A000000
      000000000000000000000000000000000000CE9C8400C6631000CE6B0000CE6B
      0000BD5A0000BD6B420000000000000000000000000000000000E7C6B5006B73
      73009CFFFF00848484004A4A4A00E7B594009CFFFF009CFFFF00E7CECE00BD8C
      73005ACEEF0029ADD600C6846B00000000000000000000000000000000000000
      0000000000000000000000000000CE630000964E000000000000CE630000964E
      00000000000000000000000000000000000000000000B5B5B500DEDEDE000063
      CE000063CE000063CE000063CE000063CE000063CE000063CE000063CE000063
      CE000063CE00DEDEDE00B5B5B500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFCEBD008C8C
      8C0084EFFF00C6C6C6006B7373009CFFFF009CFFFF009CFFFF00E7D6CE00C694
      7B005ADEFF00CE94730000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000964E0000CE630000964E
      00000000000000000000000000000000000000000000B5B5B500DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00B5B5B500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7C6B5009494
      9C008C8C8C0094949C0084EFFF0084EFFF0084EFFF0084EFFF00E7CECE00C694
      7B00CE9C84000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE630000CE630000964E
      00000000000000000000000000000000000000000000B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7C6B500EFCE
      B500EFCEB500EFCEB500EFCEB500E7C6B500E7C6B500EFCEB500D6BDB500BD84
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000964E
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C9C9C00737373006B6B
      6B00737373007373730073737300737373007373730073737300737373007373
      7300737373006B6B6B0073737300949494000000000000000000B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000942F2FFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000942F2FFF0000000094949400948C94008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C00737373000000000000000000C6A59C00FFEF
      D600F7E7C600F7DEBD00F7DEB500F7D6AD00F7D6A500EFCE9C00EFCE9400EFCE
      9400EFCE9400F7D69C00B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B57171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B57171FF0000000000000000949494008CCE8C008CCE8C008CCE
      8C008CD69C0094DEA50094DEA50094DEAD0094DEB5008CDEBD008CDEBD008CDE
      BD0094E7CE009CD6BD008C8484006B6B6B000000000000000000C6A59C00FFEF
      D600F7E7CE00F7DEC600F7DEBD00F7D6B500F7D6A500EFCE9C00EFCE9C00EFCE
      9400EFCE9400EFCE9C00B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD58
      58FFAD5858FFE7C6C6FFE7C6C6FFE7C6C6FFC6CEC6FFC6CEC6FFC6CEC6FFAD58
      58FF942F2FFF0000000000000000000000009C9C9C00398C3900318C3100398C
      3900399442003994420039944200429C520052A5730063B584007BD6B50094FF
      E70094FFE70094E7DE008C8484006B6B6B000000000000000000C6ADA500FFEF
      E700F7E7D600F7E7CE00F7DEC600F7DEBD00F7D6B500F7D6AD00EFCE9C00EFCE
      9C00EFCE9400EFCE9C00B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD79
      71FFC65858FFE7C6C6FF9C3737FFB57171FFC6CEC6FFF7F7F7FFF7F7F7FFC658
      58FF942F2FFF0000000000000000000000009C9C9C0008520800004A00000052
      080000520800005208000052080008520800084208000852080052B57B00A5FF
      FF009CFFFF0094EFE7008C8484006B6B6B000000000000000000C6ADA500FFF7
      E700F7E7D600F7E7CE00F7E7C600F7DEC600F7DEB500F7D6B500F7D6AD00EFCE
      9C00EFCE9C00EFCE9400B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD79
      71FFC65858FFC6948CFF9C3737FF9C4848FFE7C6C6FFC6C6C6FFF7F7F7FFC658
      58FF942F2FFF000000000000000000000000A5A5A500004A0000004200000039
      0000003900000039000000310000004A0000004A0000186B10007BCE8C0084E7
      B50073E7AD0073CEA5008C848C006B6B6B000000000000000000CEB5AD00FFFF
      F700FFEFE700F7E7D600F7E7D600F7E7CE00F7DEC600F7DEBD00F7D6B500F7D6
      AD00EFCE9C00EFCE9C00B5848400000000000000000000000000000000007C70
      78007C7078007C7078007C7078007C7078000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD79
      71FFC65858FFC6948CFFC6948CFFBDA5A5FFBDA5A5FFE7C6C6FFC6CEC6FFC658
      58FF942F2FFF000000000000000000000000A5A5A500186B1000086B0800004A
      0000003900000031000000310000106B180029A542004AC66B0073D67B0094B5
      4A00B5AD2900B5A539008C8C94006B6B6B000000000000000000D6B5AD00FFFF
      FF00FFF7EF00FFEFE700F7E7D600F7E7CE00F7E7C600F7DEC600F7DEBD00F7D6
      AD00F7D6A500F7D6A500B584840000000000000000000000000000000000AD7B
      730031D6FF0031D6FF0008C6FF00009CFF008A5B520000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD79
      71FFAD5048FFB55858FFC65858FFC65858FFC65858FFC65858FFC65858FFC658
      58FF942F2FFF000000000000000000000000ADADAD004AA54A004AA54A00085A
      080000390000004A0000005A0000318C290094B54A009CAD3900AD9C2100D68C
      0800F78C0000E78C1000848C9C006B6B6B000000000000000000D6BDB500FFFF
      FF00FFF7F700FFF7EF00FFEFDE00F7E7D600F7E7CE00F7E7C600F7DEC600F7DE
      BD00F7D6B500F7D6AD00B5848400000000000000000000000000000000000000
      0000AD7B730031D6FF00009CFF008A5B5200D47719008A5B5200000000000000
      000000000000000000000000000000000000000000000000000000000000BD79
      71FFAD5048FFFFF7F7FFFFF7F7FFFFF7F7FFFFF7F7FFFFF7F7FFFFF7F7FFC658
      58FF942F2FFF000000000000000000000000ADADB5005ABD630063C663000873
      10000052000000630000085A00007B630000C66B0000CE630000DE6B0000DE6B
      0000DE730000CE7B1800848C9C006B6B6B000000000000000000D6BDB500FFFF
      FF00FFFFFF00FFF7F700FFF7EF00FFEFE700F7E7D600F7E7CE00F7DEC600F7DE
      BD00F7DEB500F7DEB500B5848400000000000000000000000000000000000000
      000000000000AD7B73008A5B5200F9C08600F8B26600D47719008A5B52000000
      000000000000000000000000000000000000000000000000000000000000BD79
      71FFAD5048FFFFF7F7FFFFF7F7FFFFF7F7FFFFF7F7FFFFFFF7FFFFF7F7FFC658
      58FF942F2FFF000000000000000000000000B5B5B50031AD390029B53100218C
      1800529C3900429C390094944200DE8C3900DE7B2100C65A0000B5420000BD4A
      0000C6520000BD6B18008C949C006B6B6B000000000000000000DEBDB500FFFF
      FF00FFFFFF00FFFFFF00FFF7F700FFEFE700FFEFDE00F7E7D600F7E7CE00F7DE
      C600F7DEC600F7D6B500B5848400000000000000000000000000000000000000
      00000000000000000000AD7B7300FBD3A900F9C08600F8B26600D47719008A5B
      520000000000000000000000000000000000000000000000000000000000BD79
      71FFAD5048FFFFF7F7FFFFF7F7FFFFF7F7FFFFF7F7FFFFFFF7FFFFF7F7FFC658
      58FF942F2FFF000000000000000000000000BDBDBD008CBD4A0084BD4200A5BD
      5A00E7D68400E7D68400FFEF9C00FFEF9C00F7CE7B00DE9C4200C6732900BD73
      3100AD4A00009C4208008C949C006B6B6B000000000000000000DEC6B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFEFE700FFEFDE00FFEFDE00FFEF
      D600E7DEC600C6BDAD00B5848400000000000000000000000000000000000000
      0000000000000000000000000000AD7B7300FBD3A900F9C08600F8B26600D477
      19008A5B5200000000000000000000000000000000000000000000000000BD79
      71FFAD5048FFFFF7F7FFFFF7F7FFFFFFF7FFFFFFF7FFFFFFF7FFFFF7F7FFC658
      58FF942F2FFF000000000000000000000000BDBDBD00FFD68400FFD67B00FFCE
      6300FFC65200FFC65A00FFC65A00FFC65200FFCE6300FFE78C00FFFFBD00F7DE
      BD00CE9C7300AD6B42008C8C94006B6B6B000000000000000000E7C6B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00F7E7D600C6A5
      9400B5948C00B58C8400B5848400000000000000000000000000000000000000
      000000000000000000000000000000000000AD7B7300FBD3A900F9C08600F8B2
      6600D47719008A5B52000000000000000000000000000000000000000000BD79
      71FFAD5048FFD6D6D6FFCEB5B5FFCEB5B5FFCEB5B5FFCEB5B5FFD6D6D6FFAD50
      48FF942F2FFF000000000000000000000000C6C6C600F7CE8C00FFD68C00FFB5
      4200FFAD2900FFBD4A00FFBD5A00FFB54200FFBD5A00FFDEA500F7EFC600F7EF
      C600FFFFCE00F7EFC600848484006B6B6B000000000000000000E7C6B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700E7CECE00BD8C
      7300EFB57300EFA54A00C6846B00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AD7B7300FBD3A900F9C0
      8600F8B26600D47719008A5B5200000000000000000000000000B57171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B57171FF0000000000000000C6C6C600EFCEA500F7D6A500F7CE
      9400F7CE8C00F7D6A500F7D6AD00F7D6AD00F7D6AD00F7D69C00EFCE9C00EFCE
      9C00F7D69C00E7C69C0084848C00737373000000000000000000EFCEBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00C694
      7B00FFC67300CE94730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD7B7300FBD3
      A900F9C08600D47719008A5B52000000000000000000942F2FFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000942F2FFF00000000C6C6C600EFCEA500EFCE9C00EFCE
      A500EFCEA500E7C69C00E7C69C00E7C69C00E7C69C00E7C69C00E7C69C00E7C6
      9C00EFC69400DEBD94008C8C9400A5A5A5000000000000000000E7C6B500FFF7
      F700FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00E7CECE00C694
      7B00CE9C84000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      73008A5B52008A5B520000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDC6C600BDC6C600BDBDC600BDBD
      BD00B5B5BD00B5B5BD00B5B5B500ADB5B500ADADB500ADADAD00A5A5AD00A5A5
      AD00A5A5A5009C9C9C009C9C9C00000000000000000000000000E7C6B500EFCE
      B500EFCEB500EFCEB500EFCEB500E7C6B500E7C6B500EFCEB500D6BDB500BD84
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5636B00A563
      6B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A563
      6B00A5636B00A5636B00A5636B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A526300FFEF
      C600F7D6B500EFD6AD00EFCE9C00EFCE9400EFC68C00EFBD8400EFBD7B00EFBD
      8400EFBD8400EFC68400A5636B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A26337C0E19C
      65FFE09961FFD0884FF000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000636B8400186BC600636B
      8400F7DEBD00EFD6AD00EFCEA500EFCE9C00EFC69400EFC68C00EFBD8400EFBD
      7B00EFBD7B00EFC68400A5636B00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000043231150864C
      28A00D06031034190C401A0C062000000000CC3200FFCC3200FFCC3200FFCC32
      00FFCC3200FFCC3200FFCC3200FFCC3200FFCC3200FFCC3200FFCC3200FFCC32
      00FFCC3200FF000000000000000000000000CC3200FFCC3200FFCC3200FFCC32
      00FFCC3200FFCC3200FFCC3200FFCC3200FFCC3200FFCC3200FFCC3200FFCC32
      00FFCC3200FF000000000000000000000000000000000000000031A5FF001073
      D6006B6B8400F7DEBD00EFD6B500EFCEA500EFCE9C00EFC69400EFC68C00EFBD
      8400EFBD7B00EFC68400A5636B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B3C
      1F80B57645D02813093000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5635A0031A5
      FF001073D6005A638400F7DEBD00EFD6AD00EFCEA500EFCE9C00EFC69400EFC6
      8C00EFBD8400EFC68400A5636B00000000000000000000000000333333C02B2B
      2BC01C1C1C9008080830171717C0111111C00C0C0CC0080808C0000000300000
      0000B87D4ED0C78A56E0000000000000000000000000000000005E5E5EFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005E5E
      5EFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5736B00FFF7
      EF0031A5FF00427BAD008C635A00AD7B730094635A00AD7B6B00CEA58400EFC6
      9400EFC68C00EFC68400A5636B00000000000000000000000000050505102B2B
      2BA0191919700000000017171790303030FF151515F0030303309C6B44B01C11
      0A206D432580E7AE7EFF000000000000000000000000000000005E5E5EFF5E5E
      5EFF000000000000000000000000FF6500FFCC6500FFCC6500FFCC3200FFCC32
      00FFCC3200FF00000000000000000000000000000000000000005E5E5EFF5E5E
      5EFF000000000000000000000000FF6500FFCC6500FFCC6500FFCC3200FFCC32
      00FFCC3200FF0000000000000000000000000000000000000000A5736B00FFFF
      FF00F7EFE700AD8C8C00B58C8400DEBDA500EFD6B500D6B59C00B58C7300CEA5
      8400EFC69400EFC68C00A5636B00000000000000000000000000000000000000
      0000333333C019191970393939FF2E2E2EFF08080840000000001C120A20BB8A
      5ED0DBA87BF06F45268000000000000000005E5E5EFF5E5E5EFF65CC65FF65CC
      99FF5E5E5EFF0000000000000000FF6500FFFF6500FFFF6500FFFF6500FFFF65
      00FFFF6500FF000000000000000000000000000000005E5E5EFF65CC65FF65CC
      99FF5E5E5EFF5E5E5EFF00000000FF6500FFFF6500FFFF6500FFFF6500FFFF65
      00FFFF6500FF0000000000000000000000000000000000000000BD846B00FFFF
      FF00FFF7EF00AD847B00DEC6B500F7E7CE00F7E7C600FFFFF700D6B59C00AD7B
      6B00EFCE9C00EFCE9400A5636B00000000000000000000000000000000000000
      000005050510444444FF424242FF1C1C1C900000000000000000000000000000
      0000000000000000000000000000000000005E5E5EFF65FF65FF65FF65FF65CC
      99FF00CC00FF5E5E5EFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000005E5E5EFF65FF65FF65CC99FF00CC
      00FF00CC00FF5E5E5EFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD846B00FFFF
      FF00FFFFFF0094636300F7EFDE00F7EFDE00F7E7CE00FFFFEF00EFD6B5009463
      5A00EFCEA500F7D6A500A5636B00000000000000000000000000000000000000
      0000303030904F4F4FFF444444FF040404100000000000000000000000000000
      0000000000000000000000000000000000005E5E5EFF5E5E5EFF65CC99FF00CC
      00FF5E5E5EFF0000000000000000FF6500FFCC6500FFCC6500FFCC3200FFCC32
      00FFCC3200FFCC3200FFCC3200FFCC3200FF000000005E5E5EFF65FF65FF65CC
      99FF5E5E5EFF5E5E5EFF00000000FF6500FFCC6500FFCC6500FFCC3200FFCC32
      00FFCC3200FFCC3200FFCC3200FFCC3200FF0000000000000000D6946B00FFFF
      FF00FFFFFF00B58C8400DEC6C600F7EFE700F7EFDE00FFFFD600DEBDA500AD7B
      7300F7D6AD00EFCEA500A5636B00000000000000000000000000000000001919
      19405D5D5DFF575757FF21212170333333C00000000000000000000000000000
      00000000000000000000000000000000000000000000000000005E5E5EFF5E5E
      5EFF000000000000000000000000FF6500FFFF6500FFFF6500FFFF6500FFFF65
      00FFFF6500FFFF6500FFFF6500FFFF6500FF00000000000000005E5E5EFF5E5E
      5EFF000000000000000000000000FF6500FFFF6500FFFF6500FFFF6500FFFF65
      00FFFF6500FFFF6500FFFF6500FFFF6500FF0000000000000000D6946B00FFFF
      FF00FFFFFF00D6BDBD00BD949400DEC6C600F7EFDE00DEC6B500B58C8400B58C
      7B00DECEB500B5AD9400A5636B00000000000000000000000000232323506565
      65F0626262FF3434349000000000272727802B2B2BA007070720000000000000
      00000000000000000000000000000000000000000000000000005E5E5EFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005E5E
      5EFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DE9C7300FFFF
      FF00FFFFFF00FFFFFF00D6BDBD00B58C840094636300AD847B00CEA59C00A56B
      5A00A56B5A00A56B5A00A5636B00000000000000000000000000585858C05555
      55C0515151C04B4B4BC00C0C0C20404040C0393939C0333333C0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DE9C7300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700D6BDBD00A56B
      5A00E79C5200E78C3100B56B4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC3200FFCC3200FFCC3200FFCC32
      00FFCC3200FFCC3200FFCC3200FFCC3200FFCC3200FFCC3200FFCC3200FFCC32
      00FFCC3200FF000000000000000000000000CC3200FFCC3200FFCC3200FFCC32
      00FFCC3200FFCC3200FFCC3200FFCC3200FFCC3200FFCC3200FFCC3200FFCC32
      00FFCC3200FF0000000000000000000000000000000000000000E7AD7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEC6C600A56B
      5A00FFB55A00BD7B5A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7AD7B00F7F7
      EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00D6BDBD00A56B
      5A00BD846B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7AD7B00D694
      6B00D6946B00D6946B00D6946B00D6946B00D6946B00D6946B00D6946B00A56B
      5A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CC9999FF996565FF996565FF996565FF996565FF996565FF9965
      65FF996565FF996565FF996565FF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004C4C4CFF4C4C4CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CC9999FFF1F1F1FFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
      EAFFEAEAEAFFFFECCCFF996565FF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004C4C4CFF5E5E5EFF5E5E5EFF4C4C
      4CFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CC9999FFEAEAEAFFFFECCCFFFFECCCFFFFECCCFFFFECCCFFFFEC
      CCFFFFECCCFFFFECCCFF996565FF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC9965FFCC99
      65FFCC9965FFCC9965FFFFFFFFFFFFFFFFFF0000000000000000333333C02B2B
      2BC01C1C1C9008080830171717C0111111C00C0C0CC0080808C0000000300000
      000000000000000000000000000000000000CC9999FFB2B2B2FF5E5E5EFF4C4C
      4CFF000000004C4C4CFF4C4C4CFF4C4C4CFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E
      5EFF5E5E5EFF5E5E5EFFCC9999FF000000000000000000000000000000000000
      000000000000CC9999FFF1F1F1FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC
      99FFFFCC99FFFFECCCFF996565FF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0CAA6FFCC99
      65FFFFECCCFFFFECCCFFFFFFFFFFFFFFFFFF0000000000000000050505102B2B
      2BA0191919700000000017171790303030FF151515F003030330000000000000
      00000000000000000000000000000000000000000000CC9999FFCC9999FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC9999FF996565FF9965
      65FF996565FFCC9999FFF8F8F8FFFFECCCFFFFECCCFFFFECCCFFFFECCCFFFFEC
      CCFFFFECCCFFFFECCCFF996565FF00000000FFFFFFFFFFFFFFFF4C4C4CFF4141
      41FF383838FFFFFFFFFF282828FF1B1B1BFF151515FF151515FFC0C0C0FFF0CA
      A6FFCC9965FFFFECCCFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000333333C019191970393939FF2E2E2EFF0808084000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC9999FFF1F1F1FFEAEA
      EAFFEAEAEAFFCC9999FFF8F8F8FFFFECCCFFFFECCCFFFFECCCFFFFECCCFFFFEC
      CCFFFFECCCFFFFECCCFF996565FF00000000FFFFFFFFFFFFFFFFFFFFFFFF9696
      96FFB2B2B2FFFFFFFFFFC0C0C0FF282828FF383838FFF1F1F1FFFFFFFFFFFFFF
      FFFFF0CAA6FFCC9965FFFFFFFFFFFFFFFFFF0000000000000000000000000000
      000005050510444444FF424242FF1C1C1C900000000000000000000000000000
      000000000000000000000000000000000000000000004C4C4CFF4C4C4CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC9999FFEAEAEAFFFFEC
      CCFFFFECCCFFCC9999FFFFFFFFFFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC
      99FFFFCC99FFE3E3E3FF996565FF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF808080FFC0C0C0FF4C4C4CFF323232FFC0C0C0FFFFFFFFFFCC9965FFF0CA
      A6FFFF9965FFCC9965FFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000303030904F4F4FFF444444FF040404100000000000000000000000000000
      0000000000000000000000000000000000004C4C4CFF5E5E5EFF5E5E5EFF4C4C
      4CFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC9999FFF1F1F1FFFFCC
      99FFFFCC99FFCC9999FFFFFFFFFFFFECCCFFFFECCCFFFFECCCFFFFECCCFFFFEC
      CCFFF1F1F1FFE3E3E3FF996565FF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF1F1F1FF545454FF414141FF969696FFFFFFFFFFFFFFFFFFFFECCCFFCC99
      65FFCC9965FFFFECCCFFFFFFFFFFFFFFFFFF0000000000000000000000001919
      19405D5D5DFF575757FF21212170333333C00000000000000000A26337C0E19C
      65FFE09961FFD0884FF00000000000000000CC9999FFB2B2B2FF5E5E5EFF4C4C
      4CFF000000004C4C4CFF4C4C4CFF4C4C4CFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E
      5EFF5E5E5EFF5E5E5EFFCC9999FF0000000000000000CC9999FFF8F8F8FFFFEC
      CCFFFFECCCFFCC9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3
      E3FFCBCBCBFFB2B2B2FFCC9965FF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFCBCBCBFF545454FF545454FFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000232323506565
      65F0626262FF3434349000000000272727802B2B2BA00707072043231150864C
      28A00D06031034190C401A0C06200000000000000000CC9999FFCC9999FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC9999FFF8F8F8FFFFEC
      CCFFFFECCCFFCC9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC99
      99FFCC9999FFCC9999FFCC9999FF00000000FFFFFFFFFFFFFFFFFFFFFFFFF1F1
      F1FF767676FF5E5E5EFFB2B2B2FF868686FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000585858C05555
      55C0515151C04B4B4BC00C0C0C20404040C0393939C0333333C0000000006B3C
      1F80B57645D02813093000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC9999FFFFFFFFFFFFCC
      99FFFFCC99FFCC9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC99
      99FFFFCC65FFCC9965FF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFA4A0
      A0FF767676FFB2B2B2FFFFFFFFFFC0C0C0FF969696FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B87D4ED0C78A56E00000000000000000000000004C4C4CFF4C4C4CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC9999FFFFFFFFFFFFEC
      CCFFFFECCCFFCC9999FFCC9999FFCC9999FFCC9999FFCC9999FFCC9999FFCC99
      99FFCC9999FF000000000000000000000000FFFFFFFFFFFFFFFF969696FF8686
      86FF808080FF767676FFD7D7D7FF5E5E5EFF545454FF4C4C4CFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C6B44B01C11
      0A206D432580E7AE7EFF00000000000000004C4C4CFF5E5E5EFF5E5E5EFF4C4C
      4CFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC9999FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3FFCBCBCBFFB2B2B2FFCC9965FF0000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000001C120A20BB8A
      5ED0DBA87BF06F4526800000000000000000CC9999FFB2B2B2FF5E5E5EFF4C4C
      4CFF000000004C4C4CFF4C4C4CFF4C4C4CFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E
      5EFF5E5E5EFF5E5E5EFFCC9999FF0000000000000000CC9999FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCC9999FFCC9999FFCC9999FFCC9999FF0000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC9999FFCC9999FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC9999FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCC9999FFFFCC65FFCC9965FF000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC9999FFCC9999FFCC99
      99FFCC9999FFCC9999FFCC9999FFCC9999FFCC9999FF00000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000993232FF993232FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF9900FF00000000FF99
      00FF00000000FF9900FF00000000FF9900FF00000000FF9900FF00000000FF99
      00FF00000000993232FF000000000000000000000000FF9900FF00000000FF99
      00FF00000000FF9900FF00000000FF9900FF00000000FF9900FF00000000FF99
      00FF00000000FF9900FF000000000000000000000000993232FF00000000FF99
      00FF00000000FF9900FF00000000FF9900FF00000000FF9900FF00000000FF99
      00FF00000000FF9900FF00000000000000000000000000000000993232FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000993232FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000993232FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000993232FF000000000000
      0000000000004C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
      4CFF4C4C4CFFCC9999FF000000000000000000000000FF9900FF000000000000
      0000000000000000000000000000FF9900FF0000000000000000000000000000
      000000000000993232FF000000000000000000000000FF9900FF000000000000
      0000000000000000000000000000FF9900FF0000000000000000000000000000
      000000000000FF9900FF000000000000000000000000993232FF000000000000
      0000000000000000000000000000FF9900FF0000000000000000000000000000
      000000000000FF9900FF0000000000000000993232FF993232FF993232FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000993232FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000993232FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF9900FF000000000000
      0000000000000000000000000000FF9900FF0000000000000000000000000000
      000000000000993232FF000000000000000000000000FF9900FF000000000000
      0000000000000000000000000000FF9900FF0000000000000000000000000000
      000000000000FF9900FF000000000000000000000000993232FF000000000000
      0000000000000000000000000000FF9900FF0000000000000000000000000000
      000000000000FF9900FF0000000000000000993232FF993232FF993232FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000993232FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000993232FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000993232FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF9900FF00000000FF99
      00FF00000000FF9900FF00000000FF9900FF00000000FF9900FF00000000FF99
      00FF00000000993232FF000000000000000000000000FF9900FF00000000FF99
      00FF00000000FF9900FF00000000FF9900FF00000000FF9900FF00000000FF99
      00FF00000000FF9900FF000000000000000000000000993232FF00000000FF99
      00FF00000000FF9900FF00000000FF9900FF00000000FF9900FF00000000FF99
      00FF00000000FF9900FF00000000000000000000000000000000993232FF0000
      0000000000004C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
      4CFF4C4C4CFFCC9999FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000993232FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000993232FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000993232FF993232FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF9900FF000000000000
      0000000000000000000000000000FF9900FF0000000000000000000000000000
      000000000000993232FF000000000000000000000000FF9900FF000000000000
      0000000000000000000000000000FF9900FF0000000000000000000000000000
      000000000000FF9900FF000000000000000000000000993232FF000000000000
      0000000000000000000000000000FF9900FF0000000000000000000000000000
      000000000000FF9900FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000993232FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000993232FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000993232FF993232FF993232FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF9900FF000000000000
      0000000000000000000000000000FF9900FF0000000000000000000000000000
      000000000000993232FF000000000000000000000000FF9900FF000000000000
      0000000000000000000000000000FF9900FF0000000000000000000000000000
      000000000000FF9900FF000000000000000000000000993232FF000000000000
      0000000000000000000000000000FF9900FF0000000000000000000000000000
      000000000000FF9900FF000000000000000000000000993232FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000993232FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000993232FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000993232FF993232FF000000000000
      0000000000004C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
      4CFF4C4C4CFFCC9999FF000000000000000000000000FF9900FF00000000FF99
      00FF00000000FF9900FF00000000FF9900FF00000000FF9900FF00000000FF99
      00FF00000000993232FF000000000000000000000000993232FF993232FF9932
      32FF993232FF993232FF993232FF993232FF993232FF993232FF993232FF9932
      32FF993232FF993232FF000000000000000000000000993232FF00000000FF99
      00FF00000000FF9900FF00000000FF9900FF00000000FF9900FF00000000FF99
      00FF00000000FF9900FF000000000000000000000000993232FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3299CCFF32CCCCFF3299
      CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF868686FF868686FF868686FF8686
      86FFFFFFFFFF868686FF868686FFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3299CCFF99CCFFFF99FF
      FFFF32CCFFFF3299CCFF0099CCFF0099CCFF0099CCFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF868686FF282828FF282828FF282828FF2828
      28FF868686FF282828FFCBCBCBFFFFFFFFFF00000000993232FF993232FF9932
      32FF993232FF993232FF993232FF993232FF993232FF993232FF993232FF9932
      32FF993232FF993232FF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E
      5EFF5E5E5EFFCC9999FFFFFFFFFFFFFFFFFFFFFFFFFF3299CCFF65CCFFFF99FF
      FFFF99FFFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF32CCFFFF3299CCFF0099
      CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF868686FF282828FFCBCBCBFF868686FF282828FFCBCB
      CBFF282828FFCBCBCBFFFFFFFFFF868686FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3299CCFF65CCFFFF99FF
      FFFF99FFFFFF99FFFFFF99FFFFFF99FFFFFF65CCFFFF65CCFFFF65CCFFFF32CC
      FFFF3299CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF868686FF282828FFCBCBCBFFFFFFFFFFFFFFFFFF868686FF0000
      00FFCBCBCBFFFFFFFFFF282828FFFFFFFFFF00000000FF9900FF000000000000
      0000000000000000000000000000FF9900FF0000000000000000000000000000
      000000000000FF9900FF00000000000000005E5E5EFF5E5E5EFF5E5E5EFF5E5E
      5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E
      5EFF5E5E5EFFCC9999FFFFFFFFFFFFFFFFFFFFFFFFFF3299CCFF3299CCFFC6D6
      EFFF99FFFFFF99FFFFFF99FFFFFF99FFFFFF99FFFFFF99FFFFFF65CCFFFF65CC
      FFFF32CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF868686FF282828FFCBCBCBFFFFFFFFFF868686FF868686FF000000FFCBCB
      CBFFFFFFFFFF282828FF656565FFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3299CCFF65CCFFFF3299
      CCFF99FFFFFF99FFFFFF99FFFFFF99FFFFFF99FFFFFF99FFFFFF99FFFFFF65CC
      FFFF65CCFFFF0099CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8686
      86FF282828FFCBCBCBFFFFFFFFFF282828FFFFFFFFFF000000FFFFFFFFFFFFFF
      FFFF000000FF656565FF282828FFFFFFFFFF00000000FF9900FF000000000000
      0000000000000000000000000000FF9900FF0000000000000000000000000000
      000000000000FF9900FF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E
      5EFF5E5E5EFFCC9999FFFFFFFFFFFFFFFFFFFFFFFFFF3299CCFF99FFFFFF3299
      CCFFC6D6EFFF99FFFFFF99FFFFFF99FFFFFF99FFFFFF99FFFFFF99FFFFFF65CC
      FFFF008000FF0099CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2828
      28FFCBCBCBFFFFFFFFFF282828FFFFFFFFFFFFFFFFFF868686FFCBCBCBFF2828
      28FFFFFFFFFF868686FF282828FFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3299CCFF99FFFFFF65CC
      FFFF3299CCFF0099CCFF0099CCFF0099CCFFC6D6EFFF99FFFFFF99FFFFFF0080
      00FF65FF99FF008000FF0099CCFFFFFFFFFFFFFFFFFFFFFFFFFF868686FFCBCB
      CBFFFFFFFFFF282828FF868686FF868686FFFFFFFFFFFFFFFFFF868686FF2828
      28FFFFFFFFFF868686FF656565FFFFFFFFFF00000000FF9900FF00000000FF99
      00FF00000000FF9900FF00000000FF9900FF00000000FF9900FF00000000FF99
      00FF00000000FF9900FF00000000000000005E5E5EFF5E5E5EFF5E5E5EFF5E5E
      5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E
      5EFF5E5E5EFFCC9999FFFFFFFFFFFFFFFFFFFFFFFFFF3299CCFF99FFFFFF99FF
      FFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF3299CCFFC6D6EFFF008000FF65CC
      65FF32CC65FF32CC32FF008000FFFFFFFFFFFFFFFFFFFFFFFFFF282828FFFFFF
      FFFF868686FF282828FF000000FF000000FF868686FF868686FF282828FFCBCB
      CBFFFFFFFFFF656565FFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3299CCFF99FFFFFF99FF
      FFFF99FFFFFF99FFFFFF99FFFFFF65CCFFFF65CCFFFF3299CCFF0099CCFF0099
      32FF32CC32FF009932FF0099CCFFFFFFFFFFFFFFFFFFFFFFFFFF282828FFFFFF
      FFFFCBCBCBFF000000FF868686FF868686FF000000FF282828FFCBCBCBFFFFFF
      FFFF656565FFFFFFFFFFFFFFFFFFFFFFFFFF00000000FF9900FF000000000000
      0000000000000000000000000000FF9900FF0000000000000000000000000000
      000000000000FF9900FF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E
      5EFF5E5E5EFFCC9999FFFFFFFFFFFFFFFFFFFFFFFFFF3299CCFFCCFFFFFF99FF
      FFFF99FFFFFFCCFFFFFFCCFFFFFF99FFFFFF99FFFFFF65CCFFFF65CCFFFF0080
      00FF009932FF008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8686
      86FF000000FFCBCBCBFFFFFFFFFF000000FF282828FFCBCBCBFFFFFFFFFF6565
      65FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3299CCFF99CCFFFFCCFF
      FFFFCCFFFFFF99CCFFFF0099CCFF0099CCFF0099CCFF0099CCFF0099CCFF0080
      00FF009900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF868686FF2828
      28FFCBCBCBFFFFFFFFFF282828FF282828FFCBCBCBFFFFFFFFFF656565FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FF9900FF000000000000
      0000000000000000000000000000FF9900FF0000000000000000000000000000
      000000000000FF9900FF00000000000000005E5E5EFF5E5E5EFF5E5E5EFF5E5E
      5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E
      5EFF5E5E5EFFCC9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF32CCCCFF3299
      CCFF0099CCFF0099CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF008000FF0099
      00FF008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF282828FFCBCB
      CBFFFFFFFFFF656565FFCBCBCBFFFFFFFFFFFFFFFFFF656565FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF008000FF008000FF008000FF008000FF0080
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF868686FFFFFFFFFFFFFF
      FFFF656565FFFFFFFFFF656565FF656565FF656565FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FF9900FF00000000FF99
      00FF00000000FF9900FF00000000FF9900FF00000000FF9900FF00000000FF99
      00FF00000000FF9900FF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF3299
      CCFF3299CCFF969696FF969696FF868686FF868686FF868686FF868686FF8686
      86FF868686FF868686FF868686FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3299
      CCFF3299CCFF996565FF996565FF996565FF996565FF996565FF996565FF9965
      65FF996565FF996565FF996565FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3299CCFF99CC
      FFFF99CCFFFF969696FF99CC99FF99CC99FF99CC99FF99CC99FF99CCCCFF99CC
      CCFF99CCCCFF99FFCCFF868686FFFFFFFFFFFFFFFFFFFFFFFFFF3299CCFF99CC
      FFFF99CCFFFFCBCBCBFFFFECCCFFF1F1F1FFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
      EAFFEAEAEAFFEAEAEAFF996565FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3299CCFF99FFFFFF99FF
      FFFF99FFFFFF999999FF006500FF006500FF006500FF006500FF003200FF0065
      00FF99FFFFFF99FFFFFF868686FFFFFFFFFFFFFFFFFF3299CCFF99FFFFFF99FF
      FFFF99FFFFFFCBCBCBFFFFECCCFFFFECCCFFFFECCCFFFFECCCFFFFECCCFFFFEC
      CCFFFFECCCFFFFECCCFF996565FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3299CCFF99FFFFFF99FF
      FFFF99FFFFFFA4A0A0FF003200FF003200FF003200FF003200FF003200FF0065
      00FF99FFCCFF65FF99FF868686FFFFFFFFFFFFFFFFFF3299CCFF99FFFFFF99FF
      FFFF99FFFFFFCBCBCBFFEAEAEAFFFFECCCFFFFECCCFFFFECCCFFFFECCCFFFFEC
      CCFFFFECCCFFFFECCCFF996565FFFFFFFFFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E
      5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E
      5EFF5E5E5EFFCC9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4C4C4CFF4C4C
      4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFFCC99
      99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3299CCFF99FFFFFF99FF
      FFFF99FFFFFFA4A0A0FF006500FF003200FF003200FF003200FF329932FF32CC
      65FF99CC32FFCC9932FF969696FFFFFFFFFFFFFFFFFF3299CCFF99FFFFFF99FF
      FFFF99FFFFFFCBCBCBFFEAEAEAFFFFECCCFFFFECCCFFFFECCCFFFFECCCFFFFEC
      CCFFFFECCCFFFFECCCFF996565FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3299CCFFCCFFFFFF99FF
      FFFF99FFFFFFB2B2B2FF65CC65FF008000FF006500FF006500FFCC6500FFCC65
      00FFCC6500FFCC6500FF969696FFFFFFFFFFFFFFFFFF3299CCFFCCFFFFFF99FF
      FFFF99FFFFFFCBCBCBFFF1F1F1FFEAEAEAFFFFECCCFFFFECCCFFFFECCCFFFFEC
      CCFFFFECCCFFEAEAEAFF996565FFFFFFFFFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E
      5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFFCC9999FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
      4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
      4CFF4C4C4CFFCC9999FFFFFFFFFFFFFFFFFFFFFFFFFF3299CCFFCCFFFFFFCCFF
      FFFF99FFFFFFB2B2B2FF329932FF329900FF659932FF999932FFCC6532FFCC65
      00FFCC3200FFCC6500FF969696FFFFFFFFFFFFFFFFFF3299CCFFCCFFFFFFCCFF
      FFFF99FFFFFFCBCBCBFFF8F8F8FFFFECCCFFFFECCCFFFFECCCFFFFECCCFFFFEC
      CCFFFFECCCFFF1F1F1FF996565FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3299CCFFCCFFFFFFCCFF
      FFFFCCFFFFFFC0C0C0FF99CC32FF99CC65FFFFCC99FFFFFF99FFFFCC65FFCC99
      32FFCC6532FF993200FF969696FFFFFFFFFFFFFFFFFF3299CCFFCCFFFFFFCCFF
      FFFFCCFFFFFFCBCBCBFFF8F8F8FFF8F8F8FFF1F1F1FFF1F1F1FFEAEAEAFFEAEA
      EAFFF1F1F1FFEAEAEAFF996565FFFFFFFFFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E
      5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E
      5EFF5E5E5EFFCC9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4C4C4CFF4C4C
      4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFFCC99
      99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3299CCFFCCFFFFFFF0FB
      FFFFCCFFFFFFCBCBCBFFFFCC99FFFFCC32FFFF9932FFFFCC65FFFFCC65FFFFCC
      99FFFFECCCFFFFFFCCFF868686FFFFFFFFFFFFFFFFFF3299CCFFCCFFFFFFF0FB
      FFFFCCFFFFFFCBCBCBFFF8F8F8FFFFFFFFFFFFFFFFFFF8F8F8FFF8F8F8FFEAEA
      EAFFC0C0C0FFCC9999FF996565FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3299CCFFCCFFFFFFF0FB
      FFFFF0FBFFFFCBCBCBFFF0CAA6FFFFCC99FFFFCC99FFF0CAA6FFF0CAA6FFFFCC
      99FFF0CAA6FFFFCC99FF868686FFFFFFFFFFFFFFFFFF3299CCFFCCFFFFFFF0FB
      FFFFF0FBFFFFCBCBCBFFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCC
      CCFFFF9965FFCC9999FFFFFFFFFFFFFFFFFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E
      5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFFCC9999FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
      4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
      4CFF4C4C4CFFCC9999FFFFFFFFFFFFFFFFFFFFFFFFFF3299CCFFCCFFFFFFFFFF
      FFFFF0FBFFFFCBCBCBFFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
      A6FFF0CAA6FFFFCC99FF969696FFFFFFFFFFFFFFFFFF3299CCFFCCFFFFFFFFFF
      FFFFF0FBFFFFCBCBCBFFF1F1F1FFF8F8F8FFF8F8F8FFF1F1F1FFF8F8F8FFF0CA
      A6FFCC9999FF3299CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3299CCFFF0FBFFFFFFFF
      FFFFFFFFFFFFCBCBCBFFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFA4A0A0FFA4A0
      A0FFA4A0A0FF999999FF999999FFFFFFFFFFFFFFFFFF3299CCFFF0FBFFFFFFFF
      FFFFFFFFFFFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
      CBFF99CCCCFF3299CCFFFFFFFFFFFFFFFFFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E
      5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E
      5EFF5E5E5EFFCC9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4C4C4CFF4C4C
      4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFFCC99
      99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3299CCFFF0FBFFFFF8F8
      F8FF99CCCCFF99CCCCFF99CCCCFF99CCCCFF99CCCCFF99CCCCFFC0DCC0FFCCFF
      FFFF99CCFFFF3299CCFFFFFFFFFFFFFFFFFFFFFFFFFF3299CCFFF0FBFFFFF8F8
      F8FF99CCCCFF99CCCCFF99CCCCFF99CCCCFF99CCCCFF99CCCCFFC0DCC0FFCCFF
      FFFF99CCFFFF3299CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3299CCFFF0FBFFFFCCCC
      CCFFCC9999FF996565FF996565FF996565FF996565FF996565FFCC9999FFEAEA
      EAFF99CCFFFF3299CCFFFFFFFFFFFFFFFFFFFFFFFFFF3299CCFFF0FBFFFFCCCC
      CCFFCC9999FF996565FF996565FF996565FF996565FF996565FFCC9999FFEAEA
      EAFF99CCFFFF3299CCFFFFFFFFFFFFFFFFFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E
      5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFFCC9999FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
      4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
      4CFF4C4C4CFFCC9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3299CCFFC6D6
      EFFF999999FFDDDDDDFFFFECCCFFFFECCCFFFFECCCFFCBCBCBFF90A9ADFF99CC
      FFFF3299CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3299CCFFC6D6
      EFFF999999FFDDDDDDFFFFECCCFFFFECCCFFFFECCCFFCBCBCBFF90A9ADFF99CC
      FFFF3299CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3299
      CCFF3299CCFF969696FF969696FF969696FF969696FF969696FF3299CCFF3299
      CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3299
      CCFF3299CCFF969696FF969696FF969696FF969696FF969696FF3299CCFF3299
      CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC9965FFCC9999FFCC99
      99FFCC9999FFCC9999FFCC9999FFCC9999FFCC9999FFCC9999FFCC9999FFCC99
      99FFCC9999FFCC9999FFCC9999FFFFFFFFFFFFFFFFFFCC9965FFCC9999FFCC99
      99FFCC9999FFCC9999FFCC9999FFCC9999FFCC9999FFCC9999FFCC9999FFCC99
      99FFCC9999FFCC9999FFCC9999FFFFFFFFFFFFFFFFFFCC9965FFCC9999FFCC99
      99FFCC9999FFCC9999FFCC9999FFCC9999FFCC9999FFCC9999FFCC9999FFCC99
      99FFCC9999FFCC9999FFCC9999FFFFFFFFFFFFFFFFFFCC9965FFCC9999FFCC99
      99FFCC9999FFCC9999FFCC9999FFCC9999FFCC9999FFCC9999FFCC9999FFCC99
      99FFCC9999FFCC9999FFCC9999FFFFFFFFFFCC9999FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFFFFFCCFFFFFFCCFFFFFFCCFFFFFFCCFFFFECCCFFFFECCCFFFFEC
      CCFFFFECCCFFFFECCCFFFFCC99FFCC9999FFCC9999FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFFFFFCCFFFFFFCCFFFFFFCCFFFFFFCCFFFFECCCFFFFECCCFFFFEC
      CCFFFFECCCFFFFECCCFFFFCC99FFCC9999FFCC9999FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFFFFFCCFFFFFFCCFFFFFFCCFFFFFFCCFFFFECCCFFFFECCCFFFFEC
      CCFFFFECCCFFFFECCCFFFFCC99FFCC9999FFCC9999FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFFFFFCCFFFFFFCCFFFFFFCCFFFFFFCCFFFFECCCFFFFECCCFFFFEC
      CCFFFFECCCFFFFECCCFFFFCC99FFCC9999FFCC9999FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF8F8F8FFF8F8F8FFF8F8F8FFFFFFCCFFFFFFCCFFFFEC
      CCFFFFECCCFFFFECCCFFFFECCCFFCC9999FFCC9999FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF8F8F8FFF8F8F8FFF8F8F8FFFFFFCCFFFFFFCCFFFFEC
      CCFFFFECCCFFFFECCCFFFFECCCFFCC9999FFCC9999FFFFFFFFFFFFFFFFFF8000
      00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
      00FFFFECCCFFFFECCCFFFFECCCFFCC9999FFCC9999FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF8F8F8FFF8F8F8FFF8F8F8FFFFFFCCFFFFFFCCFFFFEC
      CCFFFFECCCFFFFECCCFFFFECCCFFCC9999FFCC9999FFFFFFFFFFFFFFFFFF6500
      00FF650000FF650000FF650000FF650000FF650000FF650000FF996565FFF8F8
      F8FFFFECCCFFFFECCCFFFFECCCFFCC9999FFCC9999FFFFFFFFFFFFFFFFFFFFFF
      FFFFD7D7D7FF993232FF993232FF993232FF993232FFF0CAA6FFFFFFCCFFFFFF
      CCFFFFECCCFFFFECCCFFFFECCCFFCC9999FFCC9999FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFF8F8F8FFFFFFCCFFFFFF
      CCFFFFECCCFFFFECCCFFFFECCCFFCC9999FFCC9999FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF993232FFDDDDDDFFCC6565FF993232FFCC6565FFFFECCCFFFFFF
      CCFFFFECCCFFFFECCCFFFFECCCFFCC9999FFCC9999FFFFFFFFFFFFFFFFFFFFFF
      FFFFCC9999FF650000FF650000FFFFFFFFFFFFFFFFFFCC9999FF650000FF9965
      65FFFFFFCCFFFFECCCFFFFECCCFFCC9999FFCC9999FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF8F8F8FFCC6565FF993232FFCC9999FFFFFFFFFFF8F8F8FFF8F8
      F8FFFFFFCCFFFFECCCFFFFECCCFFCC9999FFCC9999FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF996565FF800000FF800000FF800000FF800000FFFFFFFFFFF8F8
      F8FFFFFFCCFFFFECCCFFFFECCCFFCC9999FFCC9999FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF993232FF993232FFE3E3E3FFFFCCCCFF993232FFCC6565FFF8F8
      F8FFFFFFCCFFFFECCCFFFFECCCFFCC9999FFC0C0C0FFFFFFFFFFFFFFFFFFFFFF
      FFFFCC9999FF650000FF650000FFFFFFFFFFFFFFFFFFFFFFFFFF650000FF6500
      00FFF8F8F8FFFFFFCCFFFFECCCFFCC9999FFC0C0C0FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD7D7D7FF993232FF996565FFFFFFFFFFFFFFFFFFF8F8
      F8FFF8F8F8FFFFFFCCFFFFECCCFFCC9999FFC0C0C0FFFFFFFFFFFFFFFFFFFFFF
      FFFFCC9999FF800000FFFFFFFFFFFFFFFFFFFFFFFFFFCC9999FF800000FFF8F8
      F8FFF8F8F8FFFFFFCCFFFFECCCFFCC9999FFC0C0C0FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF993232FFF0CAA6FFFFFFFFFFF8F8F8FF993232FF993232FFF8F8
      F8FFF8F8F8FFFFFFCCFFFFECCCFFCC9999FFC0C0C0FFFFFFFFFFFFFFFFFFFFFF
      FFFFCC9999FF650000FF650000FFFFFFFFFFFFFFFFFFCC9999FF650000FF9965
      65FFF8F8F8FFFFFFCCFFFFECCCFFCC9999FFC0C0C0FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF993232FF993232FFF8F8F8FFFFFFFFFFFFFF
      FFFFF8F8F8FFFFFFCCFFFFECCCFFCC9999FFC0C0C0FFFFFFFFFFFFFFFFFFFFFF
      FFFFCC9999FF800000FFFFFFFFFFFFFFFFFFFFFFFFFFCC9999FF800000FFFFFF
      FFFFF8F8F8FFFFFFCCFFFFECCCFFCC9999FFC0C0C0FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF993232FFF1F1F1FFFFFFFFFFCC9999FF993232FF993232FFFFFF
      FFFFF8F8F8FFFFFFCCFFFFECCCFFCC9999FFC0C0C0FFFFFFFFFFFFFFFFFFFFFF
      FFFFCC9999FF650000FF650000FF650000FF650000FF650000FF650000FFFFFF
      FFFFF8F8F8FFF8F8F8FFFFFFCCFFCC9999FFC0C0C0FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCC6565FF993232FFF0CAA6FFFFFFFFFFFFFF
      FFFFF8F8F8FFF8F8F8FFFFFFCCFFCC9999FFC0C0C0FFFFFFFFFFFFFFFFFFFFFF
      FFFFCC9999FF800000FFFFFFFFFFFFFFFFFFFFFFFFFFCC9999FF800000FFFFFF
      FFFFF8F8F8FFF8F8F8FFFFFFCCFFCC9999FFC0C0C0FFFFFFFFFFFFFFFFFFCC99
      99FFCC9999FFCC9999FFCC9999FFCC9999FF993232FFCC9999FFCC9999FFCC99
      99FFCC9999FFF8F8F8FFFFFFCCFFCC9999FFC0C0C0FFFFFFFFFFFFFFFFFFFFFF
      FFFFCC9999FF650000FF650000FFFFFFFFFFFFFFFFFFCC9999FF650000FF9965
      65FFFFFFFFFFF8F8F8FFFFFFCCFFCC9999FFC0C0C0FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0CAA6FF993232FFCC6565FFFFFFFFFFFFFF
      FFFFFFFFFFFFF8F8F8FFFFFFCCFFCC9999FFC0C0C0FFFFFFFFFFFFFFFFFFFFFF
      FFFFCC9999FF800000FFFFFFFFFFFFFFFFFFFFFFFFFFCC9999FF800000FFFFFF
      FFFFFFFFFFFFF8F8F8FFFFFFCCFFCC9999FFC0C0C0FFFFFFFFFFFFFFFFFF9932
      00FF993200FF993200FF993200FF993200FF993200FF993200FF993200FF9932
      00FF993200FFF8F8F8FFFFFFCCFFCC9999FFC0C0C0FFFFFFFFFFFFFFFFFFFFFF
      FFFFCC9999FF650000FF650000FFFFFFFFFFFFFFFFFFFFFFFFFF650000FF6500
      00FFFFFFFFFFF8F8F8FFFFFFCCFFCC9999FFC0C0C0FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FF993232FF993232FFF8F8F8FFFFFF
      FFFFFFFFFFFFF8F8F8FFFFFFCCFFCC9999FFC0C0C0FFFFFFFFFFFFFFFFFFFFFF
      FFFFCC9999FF800000FFFFFFFFFFFFFFFFFFFFFFFFFFCC9999FF800000FFFFFF
      FFFFFFFFFFFFF8F8F8FFFFFFCCFFCC9999FFC0C0C0FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF996565FF993232FFCC6565FFF8F8F8FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF8F8F8FFFFFFCCFFCC9999FFF0CAA6FFFFFFFFFFFFFFFFFFFFFF
      FFFFCC9999FF650000FF650000FFFFFFFFFFFFFFFFFFCC9999FF650000FF9965
      65FFFFFFFFFFFFFFFFFFF8F8F8FFCC9999FFF0CAA6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC6565FF993232FFD7D7D7FFFFFF
      FFFFFFFFFFFFFFFFFFFFF8F8F8FFCC9999FFF0CAA6FFFFFFFFFFFFFFFFFFFFFF
      FFFFCC9999FF800000FFFFFFFFFFFFFFFFFFFFFFFFFFCC9999FF800000FFFFFF
      FFFFFFFFFFFFFFFFFFFFF8F8F8FFCC9999FFF0CAA6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF993232FF993232FFF1F1F1FFFFFFFFFFE3E3E3FF993232FFFFFF
      FFFFFFFFFFFFFFFFFFFFF8F8F8FFCC9999FFF0CAA6FFFFFFFFFFFFFFFFFF6500
      00FF650000FF650000FF650000FF650000FF650000FF650000FF996565FFFFFF
      FFFFFFFFFFFFFFFFFFFFF8F8F8FFCC9999FFF0CAA6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC9999FF993232FFCC6565FFF8F8
      F8FFFFFFFFFFFFFFFFFFF8F8F8FFCC9999FFF0CAA6FFFFFFFFFFFFFFFFFFFFFF
      FFFFCC9999FF800000FFFFFFFFFFFFFFFFFFFFFFFFFFCC9999FF800000FFFFFF
      FFFFFFFFFFFFFFFFFFFFF8F8F8FFCC9999FFF0CAA6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFCC6565FF993232FFFFCCCCFFF1F1F1FF996565FF993232FFFFFF
      FFFFFFFFFFFFFFFFFFFFF8F8F8FFCC9999FFF0CAA6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF8F8F8FFCC9999FFF0CAA6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7FF993232FF993232FF993232FF9932
      32FFEAEAEAFFFFFFFFFFF8F8F8FFCC9999FFF0CAA6FFFFFFFFFFFFFFFFFF8000
      00FF800000FF800000FF800000FFFFFFFFFF800000FF800000FF800000FF8000
      00FFFFFFFFFFFFFFFFFFF8F8F8FFCC9999FFF0CAA6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF1F1F1FF996565FF993232FFCC6565FFE3E3E3FF993232FFFFFF
      FFFFFFFFFFFFFFFFFFFFF8F8F8FFCC9999FFF0CAA6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF8F8F8FFCC9999FFF0CAA6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF8F8F8FFCC9999FFF0CAA6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF8F8F8FFCC9999FFF0CAA6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF8F8F8FFCC9999FFF0CAA6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF8F8F8FFCC9965FFF0CAA6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF8F8F8FFCC9965FFF0CAA6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF8F8F8FFCC9965FFF0CAA6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF8F8F8FFCC9965FFFFFFFF00F0CAA6FFF0CAA6FFF0CA
      A6FFF0CAA6FFF0CAA6FFF0CAA6FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFCC99
      99FFCC9999FFCC9999FFCC9999FFFFFFFFFFFFFFFFFFF0CAA6FFF0CAA6FFF0CA
      A6FFF0CAA6FFF0CAA6FFF0CAA6FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFCC99
      99FFCC9999FFCC9999FFCC9999FFFFFFFFFFFFFFFFFFF0CAA6FFF0CAA6FFF0CA
      A6FFF0CAA6FFF0CAA6FFF0CAA6FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFCC99
      99FFCC9999FFCC9999FFCC9999FFFFFFFFFFFFFFFFFFF0CAA6FFF0CAA6FFF0CA
      A6FFF0CAA6FFF0CAA6FFF0CAA6FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFCC99
      99FFCC9999FFCC9999FFCC9999FFFFFFFFFF424D3E000000000000003E000000
      2800000040000000D00000000100010000000000800600000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C001000000000000800000000000
      0000800000000000000080000000000000008000000000000000800000000000
      0000800000000000000080000000000000008000000000000000800000000000
      0000800000000000000080000000000000008000000000000000800000000000
      00008000000000000000C0010000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFF8383FFFFFFFFFFFF8383FEFF
      FFC000FF8383FC7FFFC000FF8383F83FFFC000FF8383FEFFFFC000FF8283FEFF
      0340001BFC7FF83F033F0019F83FF83F001F0000FEFFF83F033F0019FEFFF83F
      0340001BF83FF83FFFC000FFF83F8003FFC000FFF83F8003FFC000FFF83F8003
      FFC000FFF83F8003FFFFFFFFF83F8003FF8FC001FFFFFFFFFF87C001FFFF8001
      FFC3C001FFFF8001FFE1C001FFFF80018031C001FFFF80018030C0010F878001
      807880019FCF800181F80001CFCF800180F88001E00F80018878C001F3CF8001
      8C00C001F9CF80018E01C001FCCF80019F03C001FE4F8001FFFFC003FF0F8001
      FFFFC007FF8F8001FFFFC00FFFCFFFFF00008000C001FFFF00000000C001FFFF
      00000000C001FFFF00000000C001FFFF00000000C001FFFF00000000C001E0FF
      00000000C001E07F00000000C001F03F00000000C001F81F00000000C001FC0F
      00000000C001FE0700000000C001FF0300000000C001FF8100000000C003FFC1
      00000000C007FFE300000001C00FFFFFFFFF00000000C001FFFF00000000C001
      FFC3000000008001FFC100000000C001FFE300000000C001C01300000000C001
      C40300000000C001F04300000000C001F0FF00000000C001F0FF00000000C001
      E0FF00000000C001C23F00000000C001C03F00000000C001FFFF00000000C003
      FFFF00000000C007FFFF00000000C00F000000000000FFFF000000000000FFFF
      000000000000C01F000000000000C43F000000000000F07F000000000000F0FF
      000000000000F0FF000000000000E0C3000000000000C201000000000000C023
      000000000000FFF3000000000000FFC3000000000000FFC3000000000000FFFF
      000000000000FFFF000000000000FFFF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object HeaderMenu: TPopupMenu
    Left = 664
    Top = 84
    object NormalItem: TMenuItem
      Action = HtActionSetHeader1
      Caption = 'Normal'
    end
    object Header1Item: TMenuItem
      Tag = 1
      Action = HtActionSetHeader1
      Caption = 'Header 1'
    end
    object Header2Item: TMenuItem
      Tag = 2
      Action = HtActionSetHeader1
      Caption = 'Header 2'
    end
    object Header3Item: TMenuItem
      Tag = 3
      Action = HtActionSetHeader1
      Caption = 'Header 3'
    end
    object Header4Item: TMenuItem
      Tag = 4
      Action = HtActionSetHeader1
      Caption = 'Header 4'
    end
    object Header5Item: TMenuItem
      Tag = 5
      Action = HtActionSetHeader1
      Caption = 'Header 5'
    end
  end
  object ImageMenu: TPopupMenu
    OnPopup = ImageMenuPopup
    Left = 728
    Top = 60
    object AlignImageLeft: TMenuItem
      Caption = 'Align left'
      GroupIndex = 1
      RadioItem = True
      OnClick = AlignImageLeftClick
    end
    object AlignImageRight: TMenuItem
      Caption = 'Align right'
      GroupIndex = 1
      RadioItem = True
      OnClick = AlignImageRightClick
    end
    object AlignImageInline: TMenuItem
      Caption = 'Inline'
      GroupIndex = 1
      RadioItem = True
      OnClick = AlignImageInlineClick
    end
    object N1: TMenuItem
      Caption = '-'
      GroupIndex = 1
    end
    object ImageDeleteItem: TMenuItem
      Caption = 'Delete'
      GroupIndex = 1
      OnClick = ImageDeleteItemClick
    end
    object TemplateItem: TMenuItem
      Caption = 'Template'
      GroupIndex = 1
    end
  end
  object TagMenu: TPopupMenu
    Left = 800
    Top = 84
    object dl1: TMenuItem
      Caption = 'DL'
      Hint = '<dl><dt>&nbsp;</dt></dl>'
      OnClick = dl1Click
    end
    object BLOCKQUOTECITE1: TMenuItem
      Caption = 'BLOCKQUOTE:CITE'
      Hint = '<blockquote type=cite>&nbsp;</blockquote>'
      OnClick = dl1Click
    end
    object HR1: TMenuItem
      Caption = 'HR'
      Hint = '<hr>&nbsp;'
      OnClick = dl1Click
    end
    object PRE1: TMenuItem
      Caption = 'PRE'
      Hint = '<pre> </pre>'
      OnClick = dl1Click
    end
    object Pagebreak1: TMenuItem
      Caption = 'Page break'
      Hint = '<div style="page-break-before: always"></div>'
      object Portrait1: TMenuItem
        Caption = 'Portrait'
        Hint = 
          '<div style="page-break-before: always" orientation="portrait"></' +
          'div>'
        OnClick = dl1Click
      end
      object Landscape1: TMenuItem
        Caption = 'Landscape'
        Hint = 
          '<div style="page-break-before: always" orientation="landscape"><' +
          '/div>'
        OnClick = dl1Click
      end
      object Default1: TMenuItem
        Caption = 'Default'
        Hint = '<div style="page-break-before: always"></div>'
        OnClick = dl1Click
      end
    end
  end
  object ActionList1: TActionList
    Left = 960
    Top = 76
    object HtActionFontBold1: THtActionFontBold
      Category = 'HtmlEdit'
      Caption = '&Bold'
      Hint = 'Bold'
      ImageIndex = 0
    end
    object HtActionFontItalic1: THtActionFontItalic
      Category = 'HtmlEdit'
      Caption = '&Italic'
      Hint = 'Italic'
      ImageIndex = 1
      ShortCut = 16457
    end
    object HtActionFontUnderline1: THtActionFontUnderline
      Category = 'HtmlEdit'
      Caption = '&Underline'
      Hint = 'Underline'
      ImageIndex = 2
      ShortCut = 16469
    end
    object HtActionFontStrikeout1: THtActionFontStrikeout
      Category = 'HtmlEdit'
      Caption = '&Strikeout'
      Hint = 'Strikeout'
      ImageIndex = 3
    end
    object HtActionSubscript1: THtActionSubscript
      Category = 'HtmlEdit'
      Caption = '&Subscript'
      Hint = 'Subscript'
      ImageIndex = 20
    end
    object HtActionSuperscript1: THtActionSuperscript
      Category = 'HtmlEdit'
      Caption = '&Superscript'
      Hint = 'Superscript'
      ImageIndex = 19
    end
    object HtActionAlignLeft1: THtActionAlignLeft
      Category = 'HtmlEdit'
      Caption = 'Left alignment'
      Hint = 'Left alignment'
      ImageIndex = 6
      ShortCut = 16460
    end
    object HtActionAlignRight1: THtActionAlignRight
      Category = 'HtmlEdit'
      Caption = 'Right alignment'
      Hint = 'Right alignment'
      ImageIndex = 8
      ShortCut = 16466
    end
    object HtActionAlignCenter1: THtActionAlignCenter
      Category = 'HtmlEdit'
      Caption = 'Center alignment'
      Hint = 'Center alignment'
      ImageIndex = 7
      ShortCut = 16453
    end
    object HtActionUnorderedList1: THtActionUnorderedList
      Category = 'HtmlEdit'
      Caption = 'Unordered list'
      Hint = 'Unordered list'
      ImageIndex = 16
    end
    object HtActionOrderedList1: THtActionOrderedList
      Category = 'HtmlEdit'
      Caption = 'Ordered list'
      Hint = 'Ordered list'
      ImageIndex = 15
    end
    object HtActionIncreaseIndent1: THtActionIncreaseIndent
      Category = 'HtmlEdit'
      Caption = 'Increase Indent'
      Hint = 'Increase Indent'
      ImageIndex = 21
      ShortCut = 16461
    end
    object HtActionDecreaseIndent1: THtActionDecreaseIndent
      Category = 'HtmlEdit'
      Caption = 'Decrease Indent'
      Hint = 'Decrease Indent'
      ImageIndex = 22
    end
    object HtActionCopy1: THtActionCopy
      Category = 'HtmlEdit'
      Caption = '&Copy'
      Hint = '&Copy'
      ImageIndex = 17
    end
    object HtActionPaste1: THtActionPaste
      Category = 'HtmlEdit'
      Caption = '&Paste'
      Hint = '&Paste'
      ImageIndex = 5
    end
    object HtFileSaveAs1: THtFileSaveAs
      Category = 'HtmlEdit'
      Caption = 'HtFileSaveAs1'
      Dialog.DefaultExt = '.htm'
      Dialog.Filter = 'HTML|*.htm;*.html|*.*|All'
      Dialog.Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
      ImageIndex = 24
    end
    object HtActionPasteImage1: THtActionPasteImage
      Category = 'HtmlEdit'
      Caption = 'Paste Image'
      Hint = 'Paste Image'
      ImageIndex = 4
    end
    object HtActionAddUrl1: THtActionAddUrl
      Category = 'HtmlEdit'
      Caption = 'Add URL'
      Hint = 'Add URL'
      ImageIndex = 10
      ShortCut = 16459
    end
    object HtActionSetHeader1: THtActionSetHeader
      Category = 'HtmlEdit'
      Caption = 'Header'
      Hint = 'Header'
    end
    object HtActionNew1: THtActionNew
      Category = 'HtmlEdit'
      Caption = 'New'
      Hint = 'New'
      ImageIndex = 26
    end
    object HtActionUndo1: THtActionUndo
      Category = 'HtmlEdit'
      Caption = 'Undo'
      Hint = 'Undo'
      ImageIndex = 28
    end
    object HtActionMarkdownHighlight1: THtActionMarkdownHighlight
      Category = 'HtmlEdit'
      Caption = 'Markdown syntax highlight'
      Hint = 'Markdown syntax highlight'
    end
    object HtActionPascalHighlight1: THtActionPascalHighlight
      Category = 'HtmlEdit'
      Caption = 'Pascal syntax highlight'
      Hint = 'Pascal syntax highlight'
    end
    object HtActionHTMLHighlight1: THtActionHTMLHighlight
      Category = 'HtmlEdit'
      Caption = 'HTML syntax highlight'
      Hint = 'HTML syntax highlight'
    end
    object HtTableAddRow1: THtTableAddRow
      Category = 'HtmlEdit.Table'
      Caption = 'Insert row'
      Hint = 'Insert row'
      ImageIndex = 32
    end
    object HtTableDeleteRow1: THtTableDeleteRow
      Category = 'HtmlEdit.Table'
      Caption = 'Delete row'
      Hint = 'Delete row'
      ImageIndex = 33
    end
    object HtTableInsertCol1: THtTableInsertCol
      Category = 'HtmlEdit.Table'
      Caption = 'Insert column'
      Hint = 'Insert column'
      ImageIndex = 34
    end
    object HtTableDeleteCol1: THtTableDeleteCol
      Category = 'HtmlEdit.Table'
      Caption = 'Delete column'
      Hint = 'Delete column'
      ImageIndex = 35
    end
    object HtFileOpen1: THtFileOpen
      Category = 'HtmlEdit'
      Caption = 'HtFileOpen1'
      Dialog.DefaultExt = '.htm'
      Dialog.Filter = 
        'All Supported|*.htm;*.html;*.rtf;*.docx|RTF|*.rtf|MS Word .docx|' +
        '*.docx|All|*.*'
      ImageIndex = 9
      ShortCut = 16463
    end
    object HtActionAddChar1: THtActionAddChar
      Category = 'HtmlEdit'
      Caption = 'Add Char'
      Hint = 'Add Char'
      ImageIndex = 36
    end
    object HtActionCut1: THtActionCut
      Category = 'HtmlEdit'
      Caption = '&Cut'
      Hint = '&Cut'
      ImageIndex = 40
      ShortCut = 16472
    end
    object HtFileSave1: THtFileSave
      Category = 'HtmlEdit'
      Caption = '&Save'
      Hint = '&Save'
      ImageIndex = 41
      ShortCut = 16467
    end
    object HtActionAlignFull1: THtActionAlignFull
      Category = 'HtmlEdit'
      Caption = 'HtActionAlignFull1'
    end
    object HtTableIncColspan1: THtTableIncColspan
      Category = 'HtmlEdit.Table'
      Caption = 'Increment Colspan'
      Hint = 'Increment colspan'
      ImageIndex = 43
    end
    object HtTableDecColspan1: THtTableDecColspan
      Category = 'HtmlEdit.Table'
      Caption = 'Decrement Colspan'
      Hint = 'Decrement colspan'
      ImageIndex = 44
    end
    object HtActionRedo1: THtActionRedo
      Category = 'HtmlEdit'
      Caption = 'HtActionRedo1'
    end
  end
  object SyntaxMenu: TPopupMenu
    Left = 880
    Top = 60
    object Markdown1: TMenuItem
      Action = HtActionMarkdownHighlight1
    end
    object Pascal1: TMenuItem
      Action = HtActionPascalHighlight1
    end
    object HTML1: TMenuItem
      Action = HtActionHTMLHighlight1
    end
  end
  object SearchTimer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = SearchTimerTimer
    Left = 76
    Top = 158
  end
end
