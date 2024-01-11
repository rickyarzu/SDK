object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 741
  ClientWidth = 994
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object uniMap1: TUniMap
    Left = 0
    Top = 0
    Width = 994
    Height = 741
    Hint = ''
    DefaultLat = 39.164141000000000000
    DefaultLong = 35.068359000000000000
    DefaultZoom = 6
    MapLayers = <
      item
        Subdomains = 'abc'
      end>
    MapDrawOptions.Enabled = True
    MapDrawOptions.Position = mpTopLeft
    OnMarkerCreated = uniMap1MarkerCreated
    OnMarkerEdited = uniMap1MarkerEdited
    OnMarkerDeleted = uniMap1MarkerDeleted
    OnVectorCreated = uniMap1VectorCreated
    OnVectorEdited = uniMap1VectorEdited
    OnVectorDeleted = uniMap1VectorDeleted
    Align = alClient
  end
end
