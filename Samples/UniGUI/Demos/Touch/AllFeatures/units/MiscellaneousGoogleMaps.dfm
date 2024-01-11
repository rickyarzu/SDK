object UniMiscellaneousGoogleMaps: TUniMiscellaneousGoogleMaps
  Left = 0
  Top = 0
  Width = 554
  Height = 474
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 554
    Height = 474
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    object UnimHTMLFrame1: TUnimHTMLFrame
      Left = 0
      Top = 95
      Width = 554
      Height = 334
      Hint = ''
      HTML.Strings = (
        
          '<div id="uni_map_canvas" style="position: absolute; width: 100%;' +
          ' height: 100%"></div>'
        '')
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      ClientEvents.ExtEvents.Strings = (
        
          'afterupdatehtml=function afterupdatehtml(sender, eOpts)'#13#10'{'#13#10'   v' +
          'ar latlng = new google.maps.LatLng(0.0, 0.0);'#13#10'   var myOptions ' +
          '= {'#13#10'      zoom: 1,  '#13#10'      center: latlng,'#13#10'      mapTypeId: g' +
          'oogle.maps.MapTypeId.ROADMAP'#13#10'    };'#13#10'    '#13#10'    var umap = docum' +
          'ent.getElementById("uni_map_canvas");'#13#10'    var map = new google.' +
          'maps.Map(umap, myOptions);'#13#10'    googleMap = map;'#13#10#13#10'    google.m' +
          'aps.event.addListener(map, '#39'zoom_changed'#39', '#13#10'       function() {' +
          #13#10'         UniMiscellaneousGoogleMaps.UnimSlider1.setValue(this.' +
          'getZoom()); '#13#10'       }'#13#10'    );'#13#10#13#10'    google.maps.event.addListe' +
          'ner(map, '#39'tilesloaded'#39', '#13#10'       function(e) {'#13#10'         ajaxReq' +
          'uest(UniMiscellaneousGoogleMaps.UnimHTMLFrame1, '#13#10'              ' +
          '       '#39'loaded'#39', []);'#13#10'       }'#13#10'    );'#13#10'}'
        
          'resize=function resize(sender, eOpts)'#13#10'{'#13#10' if (typeof googleMap ' +
          '!= '#39'undefined'#39') {'#13#10'      google.maps.event.trigger(googleMap, '#39'r' +
          'esize'#39');'#13#10'  }'#13#10'}'
        
          'painted=function painted(sender, eOpts)'#13#10'{'#13#10'  sender.hide();'#13#10'  ' +
          'sender.show();'#13#10'}')
      OnAjaxEvent = UnimHTMLFrame1AjaxEvent
    end
    object UnimSelect1: TUnimSelect
      Left = 0
      Top = 48
      Width = 554
      Height = 47
      Hint = ''
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      Items.Strings = (
        'Ankara'
        'Oslo')
      Sorted = True
      OnChange = UnimSelect1Change
    end
    object UnimToolBar1: TUnimToolBar
      Left = 0
      Top = 0
      Width = 554
      Height = 48
      Hint = ''
      ShowTitle = False
      Anchors = [akLeft, akTop, akRight]
      ShowCaptions = True
      Scrollable = True
      Caption = 'UnimToolBar1'
      object UnimToolButton2: TUnimToolButton
        Left = 0
        Top = 0
        Width = 8
        Height = 48
        Hint = ''
        Style = tbsSeparator
        Caption = 'UnimToolButton2'
      end
      object UnimToolButton1: TUnimToolButton
        Left = 8
        Top = 0
        Width = 153
        Height = 48
        Hint = ''
        AutoWidth = True
        Style = tbsContainer
        Caption = 'UnimToolButton1'
        Flex = 5
        object UnimSegmentedButton1: TUnimSegmentedButton
          Left = 0
          Top = 0
          Width = 153
          Height = 48
          Hint = ''
          Items = <
            item
              Caption = 'Hybrid'
              ButtonId = 0
            end
            item
              Caption = 'Roadmap'
              ButtonId = 1
              Pressed = True
            end
            item
              Caption = 'Satellite'
              ButtonId = 2
            end
            item
              Caption = 'Terrain'
              ButtonId = 3
            end>
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          ClientEvents.ExtEvents.Strings = (
            
              'toggle=function toggle(sender, button, isPressed, eOpts)'#13#10'{'#13#10'   ' +
              'switch(button.config.buttonId) {'#13#10'      case 0:  googleMap.setOp' +
              'tions({ mapTypeId: google.maps.MapTypeId.HYBRID }); break;'#13#10'    ' +
              '  case 1:  googleMap.setOptions({ mapTypeId: google.maps.MapType' +
              'Id.ROADMAP }); break;'#13#10'      case 2:  googleMap.setOptions({ map' +
              'TypeId: google.maps.MapTypeId.SATELLITE }); break;'#13#10'      case 3' +
              ':  googleMap.setOptions({ mapTypeId: google.maps.MapTypeId.TERRA' +
              'IN }); break;'#13#10'   }'#13#10'}')
        end
      end
    end
    object UnimSlider1: TUnimSlider
      Left = 0
      Top = 429
      Width = 554
      Height = 45
      Hint = ''
      FieldLabelWidth = 20
      Max = 14
      Align = alBottom
      Anchors = [akLeft, akRight, akBottom]
      ClientEvents.ExtEvents.Strings = (
        
          'change=function change(me, newValue, oldValue, eOpts)'#13#10'{'#13#10'  if (' +
          'newValue !== googleMap.getZoom()) {'#13#10'    googleMap.setZoom(newVa' +
          'lue);'#13#10'  }'#13#10'}')
    end
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 136
    Top = 168
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
  object UnimTimer1: TUnimTimer
    Interval = 500
    Enabled = False
    RunOnce = True
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    OnTimer = UnimTimer1Timer
    Left = 208
    Top = 135
  end
end
