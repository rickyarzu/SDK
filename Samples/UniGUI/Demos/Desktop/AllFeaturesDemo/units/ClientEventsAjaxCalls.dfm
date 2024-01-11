object UniClientEventsAjaxCalls: TUniClientEventsAjaxCalls
  Left = 0
  Top = 0
  Width = 518
  Height = 398
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    518
    398)
  object UniContainerPanel1: TUniContainerPanel
    Left = 32
    Top = 24
    Width = 449
    Height = 337
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniButton1: TUniButton
      Left = 128
      Top = 64
      Width = 185
      Height = 50
      Hint = ''
      Caption = 'UniButton1'
      TabOrder = 0
      ClientEvents.UniEvents.Strings = (
        
          'AjaxRequest=function OnAjaxRequest(sender, url, data)'#13#10'{'#13#10'  send' +
          'er.setText('#39'Ajax request in progress...'#39');'#13#10'  sender.setDisabled' +
          '(true);'#13#10'}'
        
          'AjaxCallback=function OnAjaxCallback(sender, response)'#13#10'{'#13#10'  sen' +
          'der.setDisabled(false);'#13#10'  sender.setText('#39'UniButton1'#39');'#13#10'}')
      OnClick = UniButton1Click
    end
    object UniButton2: TUniButton
      Left = 128
      Top = 144
      Width = 185
      Height = 50
      Hint = ''
      Caption = 'UniButton2'
      TabOrder = 1
      ClientEvents.UniEvents.Strings = (
        
          'AjaxCallback=function OnAjaxCallback(sender, response)'#13#10'{'#13#10'  sen' +
          'der.setText(response);'#13#10'}')
      OnClick = UniButton2Click
    end
    object UniButton3: TUniButton
      Left = 128
      Top = 224
      Width = 185
      Height = 50
      Hint = ''
      Caption = 'UniButton3'
      TabOrder = 2
      OnClick = UniButton3Click
    end
  end
end
