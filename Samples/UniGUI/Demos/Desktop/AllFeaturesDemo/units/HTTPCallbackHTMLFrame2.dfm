object UniHTTPCallbackHTMLFrame2: TUniHTTPCallbackHTMLFrame2
  Left = 0
  Top = 0
  Width = 728
  Height = 577
  OnCreate = UniFrameCreate
  TabOrder = 0
  DesignSize = (
    728
    577)
  object UniContainerPanel1: TUniContainerPanel
    Left = 32
    Top = 35
    Width = 655
    Height = 511
    Hint = ''
    ParentColor = False
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object UniHTMLFrame1: TUniHTMLFrame
      Left = 0
      Top = 201
      Width = 655
      Height = 310
      Hint = ''
      HTML.Strings = (
        '<div style="background-color:#ccc">'
        '<br/><br/><br/><br/><br/>'
        
          '<form name="input" action="{URL_CALLBACK}" method="POST" target=' +
          '"{CALLBACK_TARGET}">'
        'Username: <input type="text" name="user" value="Enter Text...">'
        '<input type="submit" value="Submit">'
        '</form>'
        '<br/><br/><br/><br/><br/>'
        '</div>')
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
    end
    object UniSyntaxEdit1: TUniSyntaxEdit
      Left = 0
      Top = 0
      Width = 655
      Height = 201
      Hint = ''
      Language = 'HTML'
      Font.Height = -13
      Font.Name = 'Courier New'
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
    end
  end
  object UniButton1: TUniButton
    Left = 612
    Top = 4
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Update'
    TabOrder = 1
    OnClick = UniButton1Click
  end
end
