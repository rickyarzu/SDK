object UniClientEventsResizeButton: TUniClientEventsResizeButton
  Left = 0
  Top = 0
  Width = 320
  Height = 240
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 240
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentAlignmentControl = False
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    DesignSize = (
      320
      240)
    object UnimButton1: TUnimButton
      Left = 3
      Top = 80
      Width = 314
      Height = 47
      Hint = ''
      Anchors = []
      Caption = 'Button resized when tapped'
      ClientEvents.ExtEvents.Strings = (
        
          'tap=function tap(sender, e, eOpts)'#13#10'{'#13#10'   sender.setWidth(sender' +
          '.getWidth()+5);'#13#10'   sender.setHeight(sender.getHeight()+5);'#13#10'}')
    end
  end
end
