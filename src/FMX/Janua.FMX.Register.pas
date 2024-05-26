unit Janua.FMX.Register;

interface

uses
  System.Classes, System.Types, System.TypInfo,
  // Fmx specifics
  FMX.Types, FMX.ListView.DynamicAppearance, FMX.ListView.Appearances, FMX.Controls;

// Janua.FMX.MapControls,

procedure Register;

implementation

uses
{$IFDEF MSWINDOWS}  Windows, {$ENDIF MSWINDOWS}
  System.SysUtils, System.Actions, System.UITypes, System.Math, System.RTLConsts, System.UIConsts,
  // Janua
  Janua.FMX.FormControls, {Janua.FMX.Dialogs,} Janua.FMX.Geocoding,
  Janua.FMX.MapStandardControls, Janua.FMX.Forms,
  Janua.FMX.ListViewMenu, Janua.FMX.Services, Janua.FMX.Cms, Janua.FMX.StandardMaps;

procedure Register;
begin
  // RegisterPropertyEditor(TypeInfo(TImageIndex), MyControl, '', TImageIndexProperty);
  RegisterComponents('Janua FMX Components', [TJanuaFMXListViewMenuController]);
  RegisterComponents('Janua FMX Components', [TJanuaFMXListViewMenu]);
  // TJanuaFMXStandardMapList
  RegisterComponents('Janua FMX Components', [TJanuaFMXStandardMapList]);
  // RegisterComponents('Janua FMX Components', [TJanuaFMXTMSMapList]);
  // RegisterComponents('Janua FMX Components', [TJanuaFMXListNews]);
  // TJanuaFMXListNews
  RegisterComponents('Janua FMX Components', [TJanuaFMXListNews]);
  // TJanuaFMXListEvents
  RegisterComponents('Janua FMX Components', [TJanuaFMXListEvents]);
  // TJanuaDialer
  RegisterComponents('Janua FMX Components', [TJanuaDialer]);
  // Janua.FMX.ListViewMenu
  RegisterComponents('Janua FMX Components', [TJanuaFmxBadge]);
  // Janua.FMX.FormControls
  RegisterComponents('Janua FMX Components', [TJanuaFmxBadge]);
  // Janua.FMX.MapControls
  RegisterComponents('Janua FMX Components', [TJanuaFMXAddressList]);
  RegisterComponents('Janua FMX Components', [TJanuaFMXMapControl]);
  // Janua.FMX.Geocoding
  RegisterComponents('Janua FMX Components', [Janua.FMX.Geocoding.TJanuaFMXGoogleGeoCoding]);
  // Janua.FMX.HealthThreads
  // RegisterComponents('Janua FMX Health', [TJanuaFMXHealthServicesSearch]);
  // RegisterComponents('Janua FMX Health', [TJanuaFMXHealthInstitutesSearch]);
  //
  RegisterComponents('Janua FMX Components', [TJanuaFMXFormManager]);
  //
  { RegisterComponents('Janua FMX Components', [TJanuaFMXDialog]); }
end;

initialization

// RegisterFMXClasses([TJanuaFMXAddressList, TJanuaFMXMapControl]);

end.
