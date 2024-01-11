object UniClientEventsAjaxCallback: TUniClientEventsAjaxCallback
  Left = 0
  Top = 0
  Width = 350
  Height = 447
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 350
    Height = 447
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    DesignSize = (
      350
      447)
    object UnimButton1: TUnimButton
      Left = 64
      Top = 40
      Width = 225
      Height = 47
      Hint = ''
      Anchors = []
      Caption = 'UnimButton1'
      ClientEvents.UniEvents.Strings = (
        
          'ajaxRequest=function ajaxRequest(sender, url, data)'#13#10'{'#13#10'   sende' +
          'r.setText('#39'Ajax request in progress...'#39');'#13#10'  sender.setDisabled(' +
          'true);'#13#10'}'
        
          'ajaxCallback=function ajaxCallback(sender, response)'#13#10'{'#13#10'   send' +
          'er.setDisabled(false);'#13#10'   sender.setText('#39'UniButton1'#39');'#13#10'}')
      OnClick = UnimButton1Click
    end
    object UnimButton2: TUnimButton
      Left = 64
      Top = 136
      Width = 225
      Height = 47
      Hint = ''
      Anchors = []
      Caption = 'UnimButton2'
      ClientEvents.UniEvents.Strings = (
        
          'ajaxCallback=function ajaxCallback(sender, response)'#13#10'{'#13#10'    sen' +
          'der.setText(response);'#13#10'}')
      OnClick = UnimButton2Click
    end
    object UnimButton3: TUnimButton
      Left = 64
      Top = 248
      Width = 225
      Height = 47
      Hint = ''
      Anchors = []
      Caption = 'UnimButton3'
      OnClick = UnimButton3Click
    end
  end
end
