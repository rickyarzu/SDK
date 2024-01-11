unit Janua.UniGUI.BackofficeMainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniButton, uniBitBtn, uniColorButton, uniGUIBaseClasses,
  uniPanel, uniLabel, uniImageList, uniImage;

type
  TfrmUniGUIMainBackoffice = class(TUniForm)
    UniContainerPanel1: TUniContainerPanel;
    ulbAnagraph: TUniLabel;
    ulbBookings: TUniLabel;
    ulbSettings: TUniLabel;
    ulbDrivers: TUniLabel;
    imgCustomers1: TUniImage;
    imgBookings: TUniImage;
    imgDrivers: TUniImage;
    imgSettings: TUniImage;
    imgInvoices: TUniImage;
    ulbInvoices: TUniLabel;
    unmglst1: TUniImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmUniGUIMainBackoffice: TfrmUniGUIMainBackoffice;

implementation

{$R *.dfm}

uses
  uniGUIVars, Janua.UniGUI.MainModule, uniGUIApplication;

function frmUniGUIMainBackoffice: TfrmUniGUIMainBackoffice;
begin
  Result := TfrmUniGUIMainBackoffice(UniMainModule.GetFormInstance(TfrmUniGUIMainBackoffice));
end;

initialization
  RegisterAppFormClass(TfrmUniGUIMainBackoffice);

end.
