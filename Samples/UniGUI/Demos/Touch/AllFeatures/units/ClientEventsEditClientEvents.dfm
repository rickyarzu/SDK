object UniClientEventsEditClientEvents: TUniClientEventsEditClientEvents
  Left = 0
  Top = 0
  Width = 431
  Height = 512
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 431
    Height = 512
    Hint = ''
    Align = alClient
    Anchors = []
    DesignSize = (
      431
      512)
    object UnimEdit1: TUnimEdit
      Left = 32
      Top = 48
      Width = 369
      Height = 47
      Hint = ''
      Anchors = []
      ClientEvents.ExtEvents.Strings = (
        
          'change=function change(sender, newValue, oldValue, eOpts)'#13#10'{'#13#10'  ' +
          '   UniClientEventsEditClientEvents.UnimMemo1.setValue('#39'Change va' +
          'lue: '#39'+newValue);'#13#10'}')
      Text = ''
      FieldLabel = 'Change:'
      FieldLabelWidth = 40
    end
    object UnimEdit3: TUnimEdit
      Left = 32
      Top = 120
      Width = 369
      Height = 47
      Hint = ''
      Anchors = []
      ClientEvents.ExtEvents.Strings = (
        
          'keyup=function keyup(sender, e, eOpts)'#13#10'{'#13#10'   UniClientEventsEdi' +
          'tClientEvents.UnimMemo1.setValue('#39'Keyup Value: '#39'+sender.getValue' +
          '());'#13#10'}')
      Text = ''
      FieldLabel = 'Keyup:'
      FieldLabelWidth = 40
    end
    object UnimMemo1: TUnimMemo
      Left = 32
      Top = 208
      Width = 369
      Height = 235
      Hint = ''
      Anchors = []
    end
  end
end
