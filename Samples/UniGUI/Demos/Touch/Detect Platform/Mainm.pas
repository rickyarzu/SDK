unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniLabel, unimLabel, unimPanel;

type
  TUniPlatforms = set of TUniPlatform;
type
  TMainmForm = class(TUnimForm)
    UnimLabel1: TUnimLabel;
    UnimLabel2: TUnimLabel;
    UnimLabel3: TUnimLabel;
    UnimLabel4: TUnimLabel;
    UnimLabel5: TUnimLabel;
    UnimLabel6: TUnimLabel;
    UnimPanel1: TUnimPanel;
    UnimLabel7: TUnimLabel;
    UnimLabel8: TUnimLabel;
    procedure UnimFormCreate(Sender: TObject);
  private
    function DetectPlatform():string;
    function DetectDeviceType():string;
    function DetectOperationSystem():string;
    function DetectModel():string;
    { Private declarations }
  public
    { Public declarations }
    uPlat: TUniPlatforms;
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

function TMainmForm.DetectDeviceType: string;
begin
  if (upPhone in uPlat) then
     Result := 'Phone'
  else if (upTablet in uPlat) then
    result := 'Tablet'
  else if (upDesktop in uPlat) then
    result := 'PC';
end;

function TMainmForm.DetectModel: string;
begin
  if (upiPad in uPlat) then
    Result := 'iPad'
  else if (upiPod in uPlat) then
    Result := 'iPod'
  else if (upiPhone in uPlat) then
    Result := 'iPhone'
  else if (upAndroid in uPlat) then
    Result := 'Android Mobile Device'
  else if (upDesktop in uPlat) then
    Result := 'Desktop PC';
end;

function TMainmForm.DetectOperationSystem: string;
begin
  if (upAndroid in uPlat) then
    Result := 'Android'
  else if (upiOS in uPlat) then
    Result := 'iOS'
  else if (upDesktop in uPlat) then
    Result := 'Desktop OS';
end;

function TMainmForm.DetectPlatform: string;
begin
  if (upDesktop in uPlat) then
    result := 'Desktop'
  else if (upMobile in uPlat) then
    result := 'Mobile';
end;

procedure TMainmForm.UnimFormCreate(Sender: TObject);
begin
  uPlat := UniApplication.UniPlatform;

  UnimLabel2.Caption := DetectPlatform;
  UnimLabel4.Caption := DetectDeviceType;
  UnimLabel6.Caption := DetectOperationSystem;
  UnimLabel8.Caption := DetectModel;
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
