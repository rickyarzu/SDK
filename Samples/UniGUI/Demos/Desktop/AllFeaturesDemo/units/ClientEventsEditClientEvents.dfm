object UniClientEventsEditClientEvents: TUniClientEventsEditClientEvents
  Left = 0
  Top = 0
  Width = 440
  Height = 240
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    440
    240)
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 3
    Width = 437
    Height = 234
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniEdit1: TUniEdit
      Left = 16
      Top = 16
      Width = 121
      Hint = ''
      Text = 'Change text'
      TabOrder = 0
      ClientEvents.ExtEvents.Strings = (
        
          'keydown=function keydown(sender, e, eOpts)'#13#10'{'#13#10'  if (e == 113)'#13#10 +
          '  {'#13#10'   UniClientEventsEditClientEvents.UniEdit2.setValue(sender' +
          '.getValue);'#13#10'  }'#13#10'}'
        
          'change=function change(sender, newValue, oldValue, eOpts)'#13#10'{'#13#10'  ' +
          ' UniClientEventsEditClientEvents.UniEdit4.setValue(newValue);'#13#10'}')
    end
    object UniEdit2: TUniEdit
      Left = 16
      Top = 44
      Width = 121
      Hint = ''
      Text = 'Mouse Over'
      TabOrder = 1
      ClientEvents.ExtEvents.Strings = (
        
          'mouseover=function mouseover(sender, eOpts)'#13#10'{'#13#10'   UniClientEven' +
          'tsEditClientEvents.UniEdit4.setValue(sender.getValue());'#13#10'}')
    end
    object UniEdit3: TUniEdit
      Left = 16
      Top = 72
      Width = 121
      Hint = ''
      Text = 'Press F2'
      TabOrder = 2
      ClientEvents.ExtEvents.Strings = (
        
          'keyup=function keyup(sender, e, eOpts)'#13#10'{'#13#10'  if (e.keyCode == 11' +
          '3)'#13#10'  {'#13#10'     UniClientEventsEditClientEvents.UniEdit4.setValue(' +
          'sender.getValue());'#13#10'  }'#13#10'}')
    end
    object UniEdit4: TUniEdit
      Left = 248
      Top = 44
      Width = 121
      Hint = ''
      Text = 'UniEdit4'
      TabOrder = 3
    end
  end
end
