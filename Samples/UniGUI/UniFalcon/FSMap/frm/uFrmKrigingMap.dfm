object frmKrigingMap: TfrmKrigingMap
  Left = 0
  Top = 0
  Width = 942
  Height = 604
  OnCreate = UniFrameCreate
  TabOrder = 0
  object pnlControle: TUniPanel
    Left = 0
    Top = 0
    Width = 241
    Height = 604
    Hint = ''
    Align = alLeft
    TabOrder = 0
    BorderStyle = ubsNone
    Caption = ''
    object btnKrigarMapa: TUniFSButton
      AlignWithMargins = True
      Left = 20
      Top = 20
      Width = 201
      Height = 34
      Hint = ''
      Margins.Left = 20
      Margins.Top = 20
      Margins.Right = 20
      StyleButton = GoogleBlue
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'KRIGAR MAPA'
      Align = alTop
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Roboto'
      TabOrder = 1
      OnClick = btnKrigarMapaClick
      ExplicitTop = 31
      ExplicitWidth = 202
    end
    object lbl1: TUniLabel
      AlignWithMargins = True
      Left = 10
      Top = 554
      Width = 221
      Height = 40
      Cursor = crHandPoint
      Hint = ''
      Margins.Left = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Alignment = taCenter
      TextConversion = txtHTML
      AutoSize = False
      Caption = 'kriging.js (https://github.com/oeo4b/kriging.js)'
      Align = alBottom
      ParentFont = False
      Font.Color = clHighlight
      Font.Height = -13
      ClientEvents.ExtEvents.Strings = (
        
          'click=function click(sender, eOpts)'#13#10'{'#13#10'  window.open("https://g' +
          'ithub.com/oeo4b/kriging.js")'#13#10'}')
      TabOrder = 3
      ExplicitTop = 528
      ExplicitWidth = 189
    end
    object lbl2: TUniLabel
      AlignWithMargins = True
      Left = 10
      Top = 510
      Width = 221
      Height = 21
      Hint = ''
      Margins.Left = 10
      Margins.Right = 10
      Margins.Bottom = 20
      Alignment = taCenter
      TextConversion = txtHTML
      AutoSize = False
      Caption = 'Biblioteca utilizada para krigagem '
      Align = alBottom
      ParentFont = False
      Font.Height = -13
      TabOrder = 2
      ExplicitTop = 499
    end
  end
  object pgcKriging: TUniPageControl
    Left = 241
    Top = 0
    Width = 701
    Height = 604
    Hint = ''
    ActivePage = tabMapa
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 280
    ExplicitTop = 224
    ExplicitWidth = 289
    ExplicitHeight = 193
    object tabMapa: TUniTabSheet
      Hint = ''
      Caption = 'Mapa'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 701
      ExplicitHeight = 604
      object map: TUniFSMap
        Left = 0
        Top = 0
        Width = 693
        Height = 576
        Hint = ''
        MapZoom = 13
        MapLat = '37.78283630963726'
        MapLng = '-122.41950441332999'
        MapType = HYBRID
        MapControl.SearchBox = False
        MapControl.SearchBoxText = 'Pesquisar'
        MapControl.OverlayActive = True
        MapControl.DrawingTool = False
        MapControl.FullScreenControl = True
        MapControl.HeatMap = False
        MapEvents.Click = True
        MapEvents.RightClick = True
        MapEvents.DblClick = True
        MapEvents.ZoomChanged = True
        MapEvents.DragEnd = False
        APIKeys = UniServerModule.APIKeys
        Align = alClient
        ClientEvents.ExtEvents.Strings = (
          
            'resize=function resize(sender, width, height, oldWidth, oldHeigh' +
            't, eOpts) {   ajaxRequest(sender, "fs_map_resize",    [    '#39'widt' +
            'h='#39' + width,    '#39'height='#39' + height,    '#39'oldWidth='#39' + oldWidth,  ' +
            '  '#39'oldHeight='#39' + oldHeight    ]); } ')
        ExplicitLeft = 238
        ExplicitTop = 3
        ExplicitWidth = 701
        ExplicitHeight = 604
      end
    end
    object tabConfig: TUniTabSheet
      Hint = ''
      Caption = 'Par'#226'metros'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 701
      ExplicitHeight = 604
      object grp1: TUniGroupBox
        Left = 0
        Top = 0
        Width = 693
        Height = 81
        Hint = ''
        Caption = 'Variogram'
        Align = alTop
        TabOrder = 0
        object cmbVariogram: TUniComboBox
          Left = 16
          Top = 42
          Width = 145
          Hint = ''
          Text = ''
          Items.Strings = (
            'gaussian'
            'exponential'
            'spherical')
          ItemIndex = 1
          TabOrder = 4
          IconItems = <>
        end
        object edtValueVariogram: TUniEdit
          Left = 176
          Top = 40
          Width = 121
          Hint = ''
          Text = '0.0001'
          TabOrder = 3
        end
        object lbl3: TUniLabel
          Left = 16
          Top = 23
          Width = 58
          Height = 13
          Hint = ''
          Caption = 'Variograma'
          TabOrder = 1
        end
        object lbl4: TUniLabel
          Left = 176
          Top = 23
          Width = 87
          Height = 13
          Hint = ''
          Caption = 'Valor Variograma'
          TabOrder = 2
        end
      end
      object grpPolygon: TUniGroupBox
        Left = 0
        Top = 140
        Width = 693
        Height = 292
        Hint = ''
        Caption = 'Polygon'
        Align = alClient
        TabOrder = 2
        ExplicitLeft = 16
        ExplicitTop = 121
        ExplicitHeight = 263
        object memPolygon: TUniMemo
          AlignWithMargins = True
          Left = 17
          Top = 30
          Width = 659
          Height = 245
          Hint = ''
          Margins.Left = 15
          Margins.Top = 15
          Margins.Right = 15
          Margins.Bottom = 15
          Lines.Strings = (
            
              'var world = [[[-55.9350308775902, -11.833936763967499], [-55.934' +
              '9557757378, -11.833936763967499], [-55.9337273240089, -11.833705' +
              '746129805], [-55.92871159315109, -11.832726543355484],'
            
              '                 [-55.92482507228851, -11.831983607007874], [-55' +
              '.9232318401337, -11.831660704715285], [-55.92174053192141, -11.8' +
              '31374555210541], [-55.92169225215912, -11.831343052494464],'
            
              '                 [-55.921678841114, -11.831287922732617], [-55.9' +
              '2169225215912, -11.831193414543648], [-55.9221428632736, -11.829' +
              '171981571166], [-55.92266321182251, -11.826727865392783],'
            
              '                 [-55.922754406929016, -11.826431209633906], [-5' +
              '5.92280805110919, -11.826307821745656], [-55.92297300696361, -11' +
              '.826050544693468], [-55.92316478490821, -11.825814269636536],'
            
              '                 [-55.924116969108496, -11.824837663903418], [-5' +
              '5.9245568513869, -11.824354610317062], [-55.92489078640929, -11.' +
              '823955565406996], [-55.9251871705055, -11.823535517504782],'
            
              '                 [-55.925640463829, -11.822709858967889], [-55.9' +
              '257732331753, -11.82227865157187], [-55.92584162950519, -11.8218' +
              '42192861249], [-55.925796031951904, -11.82150615199641],'
            
              '                 [-55.92563509941101, -11.820606978122465], [-55' +
              '.9255331754684, -11.820230899414563], [-55.9253561496735, -11.81' +
              '9891574901446], [-55.9251871705055, -11.819604100420062],'
            
              '                 [-55.925002098083496, -11.819337628370919], [-5' +
              '5.92482708394531, -11.819017992836882], [-55.9247218072414, -11.' +
              '818635348575473], [-55.9246094897389, -11.817884169735091],'
            
              '                 [-55.9246185421944, -11.81770728634452], [-55.9' +
              '25694108009296, -11.812800449604985], [-55.92573970556259, -11.8' +
              '12737439893828], [-55.92578262090679, -11.812713811248454],'
            
              '                 [-55.9259113669395, -11.812721687463853], [-55.' +
              '93824416399, -11.814701235744181], [-55.938327312469504, -11.814' +
              '72748960407], [-55.938399732112906, -11.814766870389137],'
            
              '                 [-55.9384346008301, -11.814803625783371], [-55.' +
              '93843728303909, -11.814890263478905], [-55.93782305717464, -11.8' +
              '1774666670115], [-55.936975479125934, -11.822099473869564],'
            
              '                 [-55.936213731765704, -11.827426186528784], [-5' +
              '5.93590259551998, -11.829066971657914], [-55.93507379293442, -11' +
              '.833800253450557], [-55.93507379293442, -11.83390263634463],'
            '                 [-55.9350308775902, -11.833936763967499]]] ;')
          Align = alClient
          TabOrder = 1
          ExplicitLeft = 104
          ExplicitTop = 56
          ExplicitWidth = 185
          ExplicitHeight = 89
        end
      end
      object grpPoints: TUniGroupBox
        Left = 0
        Top = 432
        Width = 693
        Height = 144
        Hint = ''
        Caption = 'Pontos'
        Align = alBottom
        TabOrder = 3
        object memPontos: TUniMemo
          AlignWithMargins = True
          Left = 17
          Top = 30
          Width = 659
          Height = 97
          Hint = ''
          Margins.Left = 15
          Margins.Top = 15
          Margins.Right = 15
          Margins.Bottom = 15
          Lines.Strings = (
            'var pontos = [{ t:[2,3,2,3,3,3,5,3,5,3,3,3,5,0,0],'
            
              '                   x:[-55.9348501,-55.9289251,-55.9233033,-55.92' +
              '81537,-55.9323537,-55.9363091,-55.9326,-55.9285462,-55.9252436,-' +
              '55.9280512,-55.9318267,-55.935257,-55.9379783,-55.9320835,-55.92' +
              '54842],'
            
              '                   y:[-11.8330204,-11.8297285,-11.826855,-11.825' +
              '4238,-11.8255109,-11.8249674,-11.82228,-11.8213863,-11.818711,-1' +
              '1.816827,-11.816605,-11.816484,-11.8157012,-11.8309831,-11.82861' +
              '67]}];')
          Align = alClient
          TabOrder = 1
          ExplicitLeft = 15
          ExplicitTop = 38
          ExplicitHeight = 129
        end
      end
      object grpCores: TUniGroupBox
        Left = 0
        Top = 81
        Width = 693
        Height = 59
        Hint = ''
        Caption = 'Cores'
        Align = alTop
        TabOrder = 1
        DesignSize = (
          693
          59)
        object edtCores: TUniEdit
          Left = 16
          Top = 21
          Width = 666
          Hint = ''
          Text = 
            '['#39'#2ecc71'#39','#39'#73e05a'#39','#39'#b0f13c'#39','#39'#f0ff00'#39','#39'#ffce00'#39','#39'#ff9a00'#39','#39'#f' +
            'f5a00'#39','#39'#e22626'#39'];'
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 1
        end
      end
    end
  end
end
