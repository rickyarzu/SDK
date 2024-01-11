object UniMapLayout: TUniMapLayout
  Left = 0
  Top = 0
  Width = 868
  Height = 685
  OnCreate = UniFrameCreate
  Layout = 'fit'
  ParentAlignmentControl = False
  AlignmentControl = uniAlignmentClient
  TabOrder = 0
  DesignSize = (
    868
    685)
  object UniSimplePanel1: TUniSimplePanel
    Left = 3
    Top = 3
    Width = 862
    Height = 670
    Hint = ''
    ParentColor = False
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    Anchors = []
    TabOrder = 0
    Layout = 'hbox'
    DesignSize = (
      862
      670)
    object UniHTMLFrame1: TUniHTMLFrame
      Left = 3
      Top = 13
      Width = 550
      Height = 654
      Hint = ''
      HTML.Strings = (
        '<div id="uni_map_canvas" style="width: 100%; height: 100%">'
        '</div>')
      Anchors = [akLeft, akTop, akRight, akBottom]
      ClientEvents.ExtEvents.Strings = (
        
          'afterupdatehtml=function afterupdatehtml(sender)'#13#10'{'#13#10'   var latl' +
          'ng = new google.maps.LatLng(0.0, 0.0);'#13#10'   var myOptions = {'#13#10'  ' +
          '    zoom: 1,  '#13#10'      center: latlng,'#13#10'      mapTypeId: google.m' +
          'aps.MapTypeId.ROADMAP'#13#10'    };'#13#10'    '#13#10'    var umap = document.get' +
          'ElementById("uni_map_canvas");'#13#10'    var map = new google.maps.Ma' +
          'p(umap, myOptions);'#13#10'    googleMap = map;'#13#10#13#10'    google.maps.eve' +
          'nt.addListener(map, '#39'zoom_changed'#39', '#13#10'       function() {'#13#10'     ' +
          '    UniMapLayout.UniTrackBar1.setValue(this.getZoom());; '#13#10'     ' +
          '  }'#13#10'    );'#13#10#13#10'    '#13#10'}'
        
          'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10'  sender.hid' +
          'e();'#13#10'  sender.show();'#13#10'}'
        
          'resize=function resize(sender, width, height, oldWidth, oldHeigh' +
          't, eOpts)'#13#10'{'#13#10'  if (typeof googleMap != '#39'undefined'#39') {'#13#10'      go' +
          'ogle.maps.event.trigger(googleMap, '#39'resize'#39');'#13#10'  }'#13#10'}')
      LayoutConfig.Flex = 4
      LayoutConfig.Height = '100%'
    end
    object UniTrackBar1: TUniTrackBar
      Left = 569
      Top = 13
      Width = 39
      Height = 171
      Hint = ''
      Max = 14
      Position = 1
      Orientation = trVertical
      TabOrder = 3
      LayoutConfig.Height = '100%'
      ClientEvents.ExtEvents.Strings = (
        
          'OnChange=function OnChange(slider, newValue, thumb)'#13#10'{'#13#10'  google' +
          'Map.setZoom(newValue);'#13#10'  UniMapLayout.UniSpinEdit1.setValue(new' +
          'Value);'#13#10'}')
    end
    object UniPanel1: TUniPanel
      Left = 607
      Top = 3
      Width = 252
      Height = 673
      Hint = ''
      Anchors = [akTop, akRight, akBottom]
      TabOrder = 1
      Caption = ''
      AlignmentControl = uniAlignmentClient
      ParentAlignmentControl = False
      Layout = 'vbox'
      LayoutConfig.Height = '100%'
      object UniSimplePanel2: TUniSimplePanel
        Left = 3
        Top = 3
        Width = 158
        Height = 214
        Hint = ''
        ParentColor = False
        AlignmentControl = uniAlignmentClient
        ParentAlignmentControl = False
        TabOrder = 3
        object UniBitBtn1: TUniBitBtn
          Left = 3
          Top = 72
          Width = 25
          Height = 46
          Hint = ''
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000011170000111700000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000005B4A3B000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000005B4A3B005B4A3BFF0000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000005B4A3B005B4A3BFF5B4A3BFF0000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000005B4A3B005B4A3BFF79634FFF6D5947FF5B4A
            3BFF5B4A3BFF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000005B4A3B005B4A3BFF5B4A3BFF0000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000005B4A3B005B4A3BFF0000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000005B4A3B000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          Caption = ''
          TabOrder = 1
          ClientEvents.ExtEvents.Strings = (
            
              'OnClick=function OnClick(sender, e)'#13#10'{'#13#10'  googleMap.panBy(-25, 0' +
              ');'#13#10'}')
        end
        object UniBitBtn2: TUniBitBtn
          Left = 125
          Top = 72
          Width = 25
          Height = 46
          Hint = ''
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000011170000111700000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000005B4A3B00000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000005B4A3BFF5B4A3B000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000005B4A3BFF5B4A3BFF5B4A
            3B00000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000005B4A3BFF5B4A3BFF6D5947FF79634FFF5B4A
            3BFF5B4A3B000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000005B4A3BFF5B4A3BFF5B4A
            3B00000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000005B4A3BFF5B4A3B000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000005B4A3B00000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          Caption = ''
          TabOrder = 2
          ClientEvents.ExtEvents.Strings = (
            
              'OnClick=function OnClick(sender, e)'#13#10'{'#13#10'  googleMap.panBy(25, 0)' +
              ';'#13#10'}')
        end
        object UniBitBtn3: TUniBitBtn
          Left = 48
          Top = 27
          Width = 49
          Height = 25
          Hint = ''
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000011170000111700000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000005B4A3BFF0000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000005B4A3BFF0000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000005B4A3B005B4A3BFF5B4A3BFF6D5947FF5B4A
            3BFF5B4A3BFF5B4A3B0000000000000000000000000000000000000000000000
            0000000000000000000000000000000000005B4A3B005B4A3BFF79634FFF5B4A
            3BFF5B4A3B000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000005B4A3B005B4A3BFF5B4A
            3B00000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000005B4A3B000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          Caption = ''
          TabOrder = 3
          ClientEvents.ExtEvents.Strings = (
            
              'OnClick=function OnClick(sender, e)'#13#10'{'#13#10'  googleMap.panBy(0, -25' +
              ');'#13#10'}')
        end
        object UniBitBtn4: TUniBitBtn
          Left = 48
          Top = 138
          Width = 49
          Height = 25
          Hint = ''
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000011170000111700000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000005B4A3B000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000005B4A3B005B4A3BFF5B4A
            3B00000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000005B4A3B005B4A3BFF79634FFF5B4A
            3BFF5B4A3B000000000000000000000000000000000000000000000000000000
            00000000000000000000000000005B4A3B005B4A3BFF5B4A3BFF6D5947FF5B4A
            3BFF5B4A3BFF5B4A3B0000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000005B4A3BFF0000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000005B4A3BFF0000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          Caption = ''
          TabOrder = 4
          ClientEvents.ExtEvents.Strings = (
            
              'OnClick=function OnClick(sender, e)'#13#10'{'#13#10'  googleMap.panBy(0, 25)' +
              ';'#13#10'}')
        end
        object UniSpinEdit1: TUniSpinEdit
          Left = 47
          Top = 81
          Width = 57
          Height = 22
          Hint = ''
          ClientEvents.ExtEvents.Strings = (
            'spin=function spin(sender, direction, eOpts)'#13#10'{'#13#10'}'
            
              'change=function change(sender, newValue, oldValue, eOpts)'#13#10'{'#13#10'  ' +
              '  UniMapLayout.UniTrackBar1.setValue(newValue);'#13#10'}')
          Value = 1
          MaxValue = 14
          TabOrder = 5
        end
      end
      object UniContainerPanel1: TUniContainerPanel
        Left = -7
        Top = 262
        Width = 235
        Height = 47
        Hint = ''
        ParentColor = False
        TabOrder = 2
        Layout = 'hbox'
        object UniSpeedButton1: TUniSpeedButton
          Left = 6
          Top = 4
          Width = 54
          Height = 40
          Hint = ''
          GroupIndex = 1
          ClientEvents.ExtEvents.Strings = (
            
              'OnClick=function OnClick(sender, e)'#13#10'{'#13#10'  googleMap.setOptions({' +
              ' mapTypeId: google.maps.MapTypeId.HYBRID });'#13#10'}')
          Caption = 'Hybrid'
          ParentColor = False
          Color = clBtnFace
          ScaleButton = False
        end
        object UniSpeedButton2: TUniSpeedButton
          Left = 59
          Top = 4
          Width = 54
          Height = 40
          Hint = ''
          GroupIndex = 1
          Down = True
          ClientEvents.ExtEvents.Strings = (
            
              'OnClick=function OnClick(sender, e)'#13#10'{'#13#10'   googleMap.setOptions(' +
              '{ mapTypeId: google.maps.MapTypeId.ROADMAP });'#13#10'}')
          Caption = 'Roadmap'
          ParentColor = False
          Color = clBtnFace
          ScaleButton = False
        end
        object UniSpeedButton3: TUniSpeedButton
          Left = 112
          Top = 4
          Width = 54
          Height = 40
          Hint = ''
          GroupIndex = 1
          ClientEvents.ExtEvents.Strings = (
            
              'OnClick=function OnClick(sender, e)'#13#10'{'#13#10'  googleMap.setOptions({' +
              ' mapTypeId: google.maps.MapTypeId.SATELLITE });'#13#10'}')
          Caption = 'Satellite'
          ParentColor = False
          Color = clBtnFace
          ScaleButton = False
        end
        object UniSpeedButton4: TUniSpeedButton
          Left = 165
          Top = 4
          Width = 54
          Height = 40
          Hint = ''
          GroupIndex = 1
          ClientEvents.ExtEvents.Strings = (
            
              'OnClick=function OnClick(sender, e)'#13#10'{'#13#10'   googleMap.setOptions(' +
              '{ mapTypeId: google.maps.MapTypeId.TERRAIN });'#13#10'}')
          Caption = 'Terrain'
          ParentColor = False
          Color = clBtnFace
          ScaleButton = False
        end
      end
      object UniDBGrid1: TUniDBGrid
        Left = 1
        Top = 315
        Width = 250
        Height = 358
        Hint = ''
        DataSource = DataSource1
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgTabs, dgCancelOnExit]
        WebOptions.Paged = False
        LoadMask.Message = 'Loading data...'
        LayoutConfig.Height = '100%'
        Align = alBottom
        Anchors = [akLeft, akRight, akBottom]
        TabOrder = 1
        Columns = <
          item
            FieldName = 'City'
            Title.Caption = 'City'
            Width = 79
            Visible = True
            Expanded = False
            CheckBoxField.FieldValues = 'true;false'
          end
          item
            FieldName = 'Longitude'
            Title.Caption = 'Longitude'
            Width = 60
            Visible = True
            Alignment = taRightJustify
            Expanded = False
            CheckBoxField.FieldValues = 'true;false'
          end
          item
            FieldName = 'latitude'
            Title.Caption = 'Latitude'
            Width = 76
            Visible = True
            Alignment = taRightJustify
            Expanded = False
            CheckBoxField.FieldValues = 'true;false'
          end>
      end
    end
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    AfterScroll = ClientDataSet1AfterScroll
    Left = 280
    Top = 152
    Data = {
      560000009619E0BD010000001800000003000000000003000000560004436974
      790100490000000100055749445448020002001400094C6F6E67697475646508
      00040000000000086C6174697475646508000400000000000000}
    object ClientDataSet1City: TStringField
      DisplayWidth = 16
      FieldName = 'City'
    end
    object ClientDataSet1Longitude: TFloatField
      DisplayWidth = 11
      FieldName = 'Longitude'
    end
    object ClientDataSet1latitude: TFloatField
      DisplayWidth = 12
      FieldName = 'latitude'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 296
    Top = 208
  end
  object UniTimer1: TUniTimer
    OnTimer = UniTimer1Timer
    RunOnce = True
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    Left = 168
    Top = 112
  end
end
