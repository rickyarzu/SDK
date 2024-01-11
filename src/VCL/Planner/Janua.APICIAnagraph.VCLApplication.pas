unit Janua.APICIAnagraph.VCLApplication;

interface

uses System.Classes, System.SysUtils, Janua.Core.Types, Janua.VCL.Application;

type
  TJanuaAPICIAnagraphVCLApplication = class(TJanuaVCLApplication)
  public
    class procedure RegisterForms; override;
    class procedure ApplicationSetup; override;
    class procedure ApplicationTearDown; override;
    class procedure ConnectionSetup; override;
  end;

implementation

uses System.Types,
  // Janua Core & DB
  Janua.Application.Framework, Janua.Controls.Forms.Impl, Janua.Uni.Framework,
  Janua.ViewModels.Framework, Janua.ViewModels.Application,
  // Janua VCL
  // Janua.VCL.Application,
  ufrmVCLAnagraphPlanner,
  // Janua TMS
  Janua.TMS.NavBar,
  /// Directory
  ufrmVCLVMAnagraphNavigator,
  // ufrmVCLLogisticReceipt,
  // Documents
  uqrpTMLabels;

{ TJanuaAPICIAnagraphVCLApplication }

class procedure TJanuaAPICIAnagraphVCLApplication.ApplicationSetup;
var
  lAppWHouse: TJanuaApplicationRecord; // Warehouse Application Container
  lAppReceipts: TJanuaApplicationRecord; // SubApplication of Warehouse Application
  // ------ Directory -----------------------------------------------------------------------------------
  lAppDirectory: TJanuaApplicationRecord; // Anagraph Directory Application

  lAppSettings: TJanuaApplicationRecord; // Settings Applications
  lAppSettingsDB: TJanuaApplicationRecord; // Settings DB Migration Application

  lIconID: Integer;
  lTitle: string;
  lGroupID: Integer;
begin
  inherited;

  // -------------- WareHouse ---------------------------------------------------------------------------
  // TJanuaVCLApplication.Initialize;
  lAppWHouse := TJanuaApplicationRecord.Create('Associazione', 'APiCi', 88, nil);
  lAppReceipts := TJanuaApplicationRecord.Create('Appuntamenti', 'Calendario', 61, nil);
  // TJanuaVCLFormAnagraph
  lAppReceipts.AddForm(TJanuaFormRecord.Create('Calendari', lAppWHouse.Name, 61, TfrmVCLAnagraphPlanner,
    GUID_NULL, [20]));
  lAppWHouse.AddApplication(lAppReceipts);

  lAppDirectory := TJanuaApplicationRecord.Create('Anagrafica', 'Anagrafiche', 82, nil);
  if TJanuaViewModelApplication.Settings.AnagGroups.RecordCount > 0 then
  begin
    TJanuaViewModelApplication.Settings.AnagGroups.First;
    while not TJanuaViewModelApplication.Settings.AnagGroups.Eof do
    begin
      lGroupID := TJanuaViewModelApplication.Settings.AnagGroups.AnagGroup.AnGroupId.AsInteger;
      lTitle := TJanuaViewModelApplication.Settings.AnagGroups.AnagGroup.GroupDes.AsString;
      lIconID := TJanuaViewModelApplication.Settings.AnagGroups.AnagGroup.IconId.AsInteger;
      lAppDirectory.AddForm(TJanuaFormRecord.Create(lTitle, lAppDirectory.Name, lIconID,
        TfrmVCLVMAnagraphNavigator { aClass: TJanuaFormClass } , GUID_NULL { aInterface } ,
        [lGroupID] { aParams } ));
      TJanuaViewModelApplication.Settings.AnagGroups.Next;
    end;
  end;
  lAppWHouse.AddApplication(lAppDirectory);

  TJanuaFormsApplication.RegisterApplication(lAppWHouse);
  (*
    // -------------- Settings ---------------------------------------------------------------------------
    lAppSettings := TJanuaApplicationRecord.Create('Settings', 'Settings', 25, nil);
    lAppSettingsDB := TJanuaApplicationRecord.Create('Database', 'Database', 1, nil);
    lAppSettingsDB.AddForm(TJanuaFormRecord.Create('Data Sync', lAppSettingsDB.Name, 15, TfrmTMMigrationMain,
    GUID_NULL));
    // ufrmVCLVMTestNavigator.pas
    lAppSettingsDB.AddForm(TJanuaFormRecord.Create('Test MVVM', lAppSettingsDB.Name, 33, TfrmTMMigrationMain,
    GUID_NULL));
    lAppSettings.AddApplication(lAppSettingsDB);
    TJanuaFormsApplication.RegisterApplication(lAppSettings);
  *)
  // -------- Directory --------------------------------------------------------------------------------
  // lAppDirectory := TJanuaApplicationRecord.Create('Anagrafiche', 'Anagrafiche', 32, nil);
  // TJanuaFormsApplication.RegisterApplication(lAppDirectory);
end;

class procedure TJanuaAPICIAnagraphVCLApplication.ApplicationTearDown;
begin
  inherited;
end;

class procedure TJanuaAPICIAnagraphVCLApplication.ConnectionSetup;
begin
  inherited;
  TJanuaApplication.DBSchemaID := 34;
  TJanuaApplication.AppName := 'APiCi Gestionale';
end;

class procedure TJanuaAPICIAnagraphVCLApplication.RegisterForms;
begin
  inherited;
end;

end.
