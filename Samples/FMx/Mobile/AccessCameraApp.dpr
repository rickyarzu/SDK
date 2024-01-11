//---------------------------------------------------------------------------

// This software is Copyright (c) 2015-2019 Embarcadero Technologies, Inc.
// You may only use this software if you are an authorized licensee
// of an Embarcadero developer tools product.
// This software is considered a Redistributable as defined under
// the software license agreement that comes with the Embarcadero Products
// and is subject to that software license agreement.

//---------------------------------------------------------------------------

program AccessCameraApp;

uses
  System.StartUpCopy,
  FMX.Forms,
  Janua.FMX.frmAccessCamera in '..\..\..\src\FMX\Janua.FMX.frmAccessCamera.pas' {AccessCameraAppForm},
  Janua.FMX.Functions in '..\..\..\src\FMX\Janua.FMX.Functions.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TAccessCameraAppForm, AccessCameraAppForm);
  Application.Run;

end.
