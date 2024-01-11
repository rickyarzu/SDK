unit Janua.VCL.ViewModels.Register;

interface

uses
  // System
  System.Classes;

procedure Register;

implementation

uses
  // Janua.TMS.Interposers
  Janua.VCL.LookupLabel,
  // View Model and Binding Framework
  Janua.VCL.ViewModel, Janua.VCL.Actions;

procedure Register;
begin
  //
  RegisterComponents('Januaproject VCL Controls', [TJanuaLookupLabel]);
  RegisterComponents('Janua ViewModel VCL', [TJanuaVCLMVVMSearchTextBuilder,
    TJanuaVCLMVVMSearchParamsBuilder]);
  RegisterComponents('Janua ViewModel VCL', [TJanuaActionViewController]);
  {RegisterComponents('Janua ViewModel VCL', [TJanuaVCLParamsBuilder]);}
  RegisterComponents('Janua ViewModel VCL', [TJanuaActionViewController]);
  // ************************************ Documents *****************************************************

end;

end.
