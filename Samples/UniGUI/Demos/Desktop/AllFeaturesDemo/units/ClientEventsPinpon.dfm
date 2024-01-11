object UniClientEventsPinpon: TUniClientEventsPinpon
  Left = 0
  Top = 0
  Width = 844
  Height = 538
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    844
    538)
  object UniContainerPanel1: TUniContainerPanel
    Left = 54
    Top = 16
    Width = 723
    Height = 513
    Hint = ''
    ParentColor = False
    Anchors = []
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'   XX=50;'#13#10'  ' +
        ' YY=50;'#13#10'   DeltaX=8;'#13#10'   DeltaY=8;'#13#10'   Score=0;'#13#10'}')
    TabOrder = 0
    DesignSize = (
      723
      513)
    object UniPanel1: TUniPanel
      Left = 0
      Top = 52
      Width = 723
      Height = 461
      Hint = ''
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      ClientEvents.ExtEvents.Strings = (
        
          'mousemove=function Onmousemove(sender, x, y)'#13#10'{'#13#10'   var W=UniCli' +
          'entEventsPinpon.UniButton1.getWidth();'#13#10'   var Y=sender.getHeigh' +
          't()-24; '#13#10'   UniClientEventsPinpon.UniButton1.setPosition(x-W/2,' +
          ' Y);'#13#10'}')
      BorderStyle = ubsInset
      Caption = 'UniPanel1'
      Color = clWhite
      DesignSize = (
        723
        461)
      object UniButton1: TUniButton
        Left = 3
        Top = 438
        Width = 85
        Height = 20
        Hint = ''
        Caption = '-------'
        Anchors = [akLeft, akBottom]
        TabOrder = 1
      end
      object UniSpeedButton1: TUniSpeedButton
        Left = 384
        Top = 184
        Width = 23
        Height = 22
        Hint = ''
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000130B0000130B00000000000000000000FF00FFFF00FF
          FF00FFFF00FF2D81ACFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2D81ACFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0191C54B93B72D81ACFF00FFFF
          00FFFF00FFFF00FF2D81AC4B93B70191C5FF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF2D81AC389FC74B93B72D81ACFF00FFFF00FF2D81AC4B93B73DA3C72D81
          ACFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2D81AC4ECBEF2FC9ED4AB0CC2D
          81AC2D81AC41AEC923C5EB1BBBF22D81ACFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF2D81AC5FC8EA1FD2FF5DEDFE77F0F669EFF426F8FE00D9FF06B5EF2D81
          ACFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2D81AC4FB3D90CC7FF3ADFFF74
          F7FF80FEFF4FFEFF04EBFF0AB5E22D81ACFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF2D81AC14A3D902C1FF1ED1FF59ECFF80FCFF74FFFF1FF8FF09C2E22D81
          ACFF00FFFF00FFFF00FFFF00FFFF00FF2D81AC2D93BF02B7F400C0FF09C6FF3A
          DEFF72F6FF82FEFF4DFEFF08E5F72398C12D81ACFF00FFFF00FFFF00FF2D81AC
          299BBE00CEF600C4FF00C0FF00C0FF1CD1FF55EAFF81FCFF74FFFF25F9FF00DA
          FA1F92C02D81ACFF00FF2D81AC44A1BE34EAF41AE5FF08D0FF00C1FF00C0FF08
          C6FF34DCFF70F5FF81FEFF58FEFF14F1FF1ACFF72D99C22D81ACFF00FF0191C5
          2D81AC2D81AC2D81AC64C2E419C6FD01C1FF19CFFF52E7FD66D7E62D81AC2D81
          AC2D81AC0191C5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2D81AC5CBDDF08
          C2FE07C5FE24BAE32D81ACFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF2D81AC32C8F801BCFA2D81ACFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0191C565
          BCDF11ABE30191C5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF0191C52D81ACFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        Caption = ''
        ParentColor = False
        Color = clBtnFace
      end
    end
    object UniLabel1: TUniLabel
      Left = 248
      Top = 7
      Width = 20
      Height = 39
      Hint = ''
      Alignment = taCenter
      Caption = '0'
      Anchors = [akTop]
      ParentFont = False
      Font.Color = clGreen
      Font.Height = -32
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWhite
      TabOrder = 1
    end
    object UniLabel2: TUniLabel
      Left = 186
      Top = 16
      Width = 51
      Height = 19
      Hint = ''
      Caption = 'Score:'
      Anchors = [akTop]
      ParentFont = False
      Font.Height = -16
      Font.Style = [fsBold]
      TabOrder = 2
    end
  end
  object UniTimer1: TUniTimer
    Interval = 20
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      '  var H=0;'
      '  var _score=false;'
      ''
      '  XX+=DeltaX;'
      '  YY+=DeltaY;'
      ' '
      
        '  var W=UniClientEventsPinpon.UniPanel1.getWidth() - UniClientEv' +
        'entsPinpon.UniSpeedButton1.getWidth();'
      ''
      
        '  var pX=UniClientEventsPinpon.UniSpeedButton1.getPosition(true)' +
        '[0];'
      
        '  var pBarX=UniClientEventsPinpon.UniButton1.getPosition(true)[0' +
        '];'
      '    '
      
        '  if (pX>pBarX && pX<(pBarX+UniClientEventsPinpon.UniButton1.get' +
        'Width())) {'
      
        '     H=UniClientEventsPinpon.UniPanel1.getHeight()-UniClientEven' +
        'tsPinpon.UniButton1.getHeight();'
      '     _score=true;'
      '  }  '
      '  else   '
      '     H=UniClientEventsPinpon.UniPanel1.getHeight();  '
      '  '
      '  H-=25;'
      '  '
      '  if (XX<1 || XX>W) DeltaX=-DeltaX; '
      '  if (YY<1 || YY>H) {'
      '    DeltaY=-DeltaY;'
      '    if (YY>H) {'
      '      YY=H;'
      '      if (_score) Score++; else Score--; '
      '      UniClientEventsPinpon.UniLabel1.setText(Score);'
      '      if (Score>=10 || Score<-100) {'
      '         sender.stopAll();'
      '         UniClientEventsPinpon.UniLabel1.setText('#39'Game Over!'#39');'
      '      }'
      '      else if (Score>5)'
      '         UniClientEventsPinpon.UniButton1.setWidth(50);'
      '      else if (Score>3)'
      '         UniClientEventsPinpon.UniButton1.setWidth(60);'
      '    }'
      '  } '
      ''
      '  UniClientEventsPinpon.UniSpeedButton1.setPosition(XX, YY); '
      '}')
    Left = 264
    Top = 200
  end
end
