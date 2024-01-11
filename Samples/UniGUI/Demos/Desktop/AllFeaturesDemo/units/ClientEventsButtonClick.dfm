object UniClientEventsButtonClick: TUniClientEventsButtonClick
  Left = 0
  Top = 0
  Width = 426
  Height = 119
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    426
    119)
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 3
    Width = 426
    Height = 113
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    DesignSize = (
      426
      113)
    object UniButton1: TUniButton
      Left = 159
      Top = 16
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'Click'
      Anchors = []
      TabOrder = 0
      ClientEvents.ExtEvents.Strings = (
        
          'click=function click(sender, e, eOpts)'#13#10'{'#13#10'  UniClientEventsButt' +
          'onClick.UniLabel1.setText('#39'Clicked the button on ClientSide'#39')'#13#10'}'
        
          'dblclick=function dblclick(sender, eOpts)'#13#10'{'#13#10'   UniClientEvents' +
          'ButtonClick.UniLabel1.setText('#39'Double clicked the button on Clie' +
          'ntSide'#39')'#13#10'}')
    end
    object UniLabel1: TUniLabel
      Left = 170
      Top = 64
      Width = 55
      Height = 13
      Hint = ''
      Caption = 'UniLabel1'
      Anchors = []
      ParentFont = False
      Font.Style = [fsBold]
      TabOrder = 1
    end
  end
end
