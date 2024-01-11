object UniClientEventsButtonClient: TUniClientEventsButtonClient
  Left = 0
  Top = 0
  Width = 406
  Height = 595
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 406
    Height = 595
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    DesignSize = (
      406
      595)
    object UnimButton1: TUnimButton
      Left = 88
      Top = 184
      Width = 225
      Height = 47
      Hint = ''
      Anchors = []
      Caption = 'UnimButton1'
    end
    object UnimBitBtn1: TUnimBitBtn
      Left = 88
      Top = 408
      Width = 225
      Height = 47
      Hint = ''
      Anchors = []
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000B5B5B55D5B5A
        757575FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF8A88878785845D5A596B6B6BFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF787979C0BDBB
        8482815F5C5C6B6B6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF737172C0BDBA8482815D5A5A6E6D6DFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        797777BFBCBA848281625E5D767475FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7B7BBEBBB98482816662617B
        7A79FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF848282BEBBB98281806866668B7971EDF6FAFFFFFFF2FDFFFFFF
        FFFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF898987B9B7B5DD
        DFDEC9BBB67C838BB2DBEB6DE7FF8EECFCD3F9FEFBFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF958981E8DCD6FFFFFFAEB2AC1DBAC213E0F620E7
        FA4EE7FABCF8FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF93
        9AA2B5D7D24CF9FF2DFBFB47F3F531F4F713E8F75AEEFACEFBFEFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFEAF7FF97D7FA10D1E52DF9FA8BF6FABDF8FB79F5
        F929F2F720EBF8B3F9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F5FF5D
        C4FF11DCF940F5F6AEF8FAF1FBFC95F6FA31F2F712E9F8A0F7FCFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF0F9FF6CC8FC19DEF928F8F768F5F888F5F85BF4
        F821F2F730EBF8AEF9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEFFD5
        EFFF22BDFB12E5F821F2F72BF4F71EF0F70FE7F760EDFAFBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2F5FFBEE9FE3BCEFB18D6FA0DE1F824DF
        F95DE9FBDDFCFEF0FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFEDFAFFDFF6FF98E6FDA8EDFDABF1FDDCFBFEFFFFFFFFFFFF}
      ClientEvents.ExtEvents.Strings = (
        
          'tap=function tap(sender, e, eOpts)'#13#10'{'#13#10'   '#13#10'  var randomNumber =' +
          ' Math.floor((Math.random() * 3) + 1); '#13#10#13#10'  if (randomNumber == ' +
          '1)'#13#10'  {'#13#10'      var IconClsArray = new Array("add","arrow_down",'#13 +
          #10'      "arrow_left","arrow_up","arrow_right","bookmarks",'#13#10'     ' +
          ' "compose","delete","download","favorites","home",'#13#10'      "info"' +
          ',"locate","maps","more","organize","refresh",'#13#10'      "reply","se' +
          'arch");'#13#10'      var randomArrayLoc = Math.floor((Math.random() * ' +
          '18) + 0); '#13#10'      UniClientEventsButtonClient.UnimButton1.setIconCls(Ic' +
          'onClsArray[randomArrayLoc]);'#13#10'     '#13#10'  }'#13#10'  else if(randomNumber' +
          ' == 2)'#13#10'  {'#13#10'      var randomHeight = Math.floor((Math.random() ' +
          '* 50) + 20);'#13#10'      var randomWidth = Math.floor((Math.random() ' +
          '* 200) + 50);'#13#10'      UniClientEventsButtonClient.UnimButton1.setSize(ra' +
          'ndomWidth,randomHeight);'#13#10'     '#13#10'  }'#13#10'  else if (randomNumber ==' +
          ' 3)'#13#10'  {'#13#10'      var UiArray = new Array("normal","back",'#13#10'      ' +
          '"round","action","forward","decline",'#13#10'      "confirm","small","' +
          'plain");'#13#10'      var randomArrayLoc = Math.floor((Math.random() *' +
          ' 8) + 0); '#13#10'      UniClientEventsButtonClient.UnimButton1.setUi(UiArray' +
          '[randomArrayLoc]);'#13#10'     '#13#10'  }'#13#10'}')
      Caption = 'Magic Button'
    end
    object UnimLabel1: TUnimLabel
      Left = 56
      Top = 16
      Width = 265
      Height = 74
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = 'Click Magic Button to Change UnimButton1'
      Anchors = []
    end
  end
end
