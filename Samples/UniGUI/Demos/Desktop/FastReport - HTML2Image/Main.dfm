object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 352
  ClientWidth = 719
  Caption = 'Invoice Generator'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniButton1: TUniButton
    Left = 352
    Top = 9
    Width = 116
    Height = 28
    Hint = ''
    Caption = 'Show The Invoice'
    TabOrder = 0
    OnClick = UniButton1Click
  end
  object UniDBLookupComboBox1: TUniDBLookupComboBox
    Left = 136
    Top = 13
    Width = 193
    Hint = ''
    ListField = 'InvNum'
    ListSource = UniMainModule.DataSource2
    KeyField = 'InvNum'
    ListFieldIndex = 0
    EmptyText = 'Select a number...'
    TabOrder = 1
    Color = clWindow
  end
  object UniLabel1: TUniLabel
    Left = 25
    Top = 13
    Width = 105
    Height = 16
    Hint = ''
    Caption = 'Invoice Number:'
    ParentFont = False
    Font.Height = -13
    Font.Style = [fsBold]
    TabOrder = 2
  end
  object UniHTMLMemo1: TUniHTMLMemo
    Left = 0
    Top = 56
    Width = 719
    Height = 296
    Hint = ''
    Lines.Strings = (
      '<style>'
      'table {'
      '    width: 100%;'
      '}'
      '</style>'
      ''
      '<table>'
      '  <tbody><tr>'
      
        '    <th style="width:20%"><font color="0000FF">Company Address</' +
        'font></th>'
      
        '    <th style="width:60%"><div align="center"><img src="files/lo' +
        'go.png" height="43" width="158"> <br></div><font size="1" color=' +
        '"333399"><i><font face="courier new"><b>Company Logo</b></font><' +
        '/i></font></th>'
      
        '    <th style="width:20%"><font color="008000">VAT ID:</font> <i' +
        '>444221177</i><br></th>'
      '  </tr>'
      ''
      '</tbody></table>')
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clWindow
    TabOrder = 3
    FieldLabel = 'HTML Editor'
    FieldLabelAlign = laTop
  end
end
