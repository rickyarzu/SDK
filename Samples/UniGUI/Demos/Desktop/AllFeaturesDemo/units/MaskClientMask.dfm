object UniMaskClientMask: TUniMaskClientMask
  Left = 0
  Top = 0
  Width = 679
  Height = 500
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    679
    500)
  object UniContainerPanel1: TUniContainerPanel
    Left = 3
    Top = 3
    Width = 676
    Height = 494
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    DesignSize = (
      676
      494)
    object UniButton1: TUniButton
      Left = 40
      Top = 32
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'Click!'
      Anchors = []
      TabOrder = 0
      ClientEvents.ExtEvents.Strings = (
        
          'OnClick=function OnClick(sender, e)'#13#10'{'#13#10'  sender.showMask('#39'Loadi' +
          'ng, Please Wait...'#39');'#13#10'  ajaxRequest(sender, '#39'test'#39');'#13#10'}')
      OnAjaxEvent = UniButton1AjaxEvent
    end
    object UniPanel1: TUniPanel
      Left = 192
      Top = 248
      Width = 321
      Height = 177
      Hint = ''
      Anchors = []
      TabOrder = 1
      ClientEvents.ExtEvents.Strings = (
        
          'click=function Onclick(sender)'#13#10'{'#13#10'  sender.showMask('#39'Wait...'#39', ' +
          'UniMaskClientMask.UniPanel2);'#13#10'  ajaxRequest(sender, '#39'panel_clic' +
          'k'#39');'#13#10'}')
      Caption = 'Click here!'
      OnAjaxEvent = UniPanel1AjaxEvent
    end
    object UniPanel2: TUniPanel
      Left = 192
      Top = 32
      Width = 321
      Height = 193
      Hint = ''
      Anchors = []
      TabOrder = 2
      ClientEvents.ExtEvents.Strings = (
        
          'mouseover=function Onmouseover(sender)'#13#10'{'#13#10'  sender.showMask('#39'Wa' +
          'it...'#39', UniMaskClientMask.UniPanel1);'#13#10'}'
        'mouseout=function Onmouseout(sender)'#13#10'{'#13#10'  sender.hideMask();'#13#10'}')
      Caption = 'Mouse over here!'
      Color = clSilver
    end
  end
end
