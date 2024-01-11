unit Janua.UniGUI.ApplicationForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm;

type
  TJanuaCustomApplicationForm = class(TUniForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  // Code Sample to be implemented on Child Form
  { function JanuaCustomApplicationForm: TJanuaCustomApplicationForm; }

implementation

uses
  {MainModule,} uniGUIApplication;

{$R *.dfm}
// Code Sample to be implemented on Child Form
{ function JanuaCustomApplicationForm: TJanuaCustomApplicationForm;
  begin
  Result := TJanuaCustomApplicationForm(UniMainModule.GetFormInstance(TJanuaCustomApplicationForm));
  end; }

end.
