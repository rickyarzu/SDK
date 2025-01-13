unit Janua.UniGUI.Controller;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  // UniGUI
  uniGUITypes, uniGUIAbstractClasses, uniGUIDialogs, uniGUIClasses, uniGUIBaseClasses, uniGUIForm,
  uniGUIApplication,
  // Januaproject
  Janua.Core.Types, Janua.Core.Classes;

type
  TJanuaUniGUIController = class(TJanuaBindableComponent)
  private
    FUniApplication: TUniGUIApplication;
    FUniForm: TUniBaseForm;
    FOwnerForm: TUniBaseForm;
    function GetUniApplication: TUniGUIApplication;
    procedure SetUniApplication(const Value: TUniGUIApplication);
    procedure SetUniForm(const Value: TUniBaseForm);
  public
    constructor Create(AOwner: TComponent); override;
    procedure ShowMessage(const Msg: string; CallBack: TUniDialogCallBackProc); overload;
    procedure ShowMessage(const Msg: string); overload;
    procedure ShowMessageN(const Msg: string);
    procedure ShowProgress(const Msg: string);
    procedure UpdateProgress(const Value: Real; const Msg: string);
    procedure HideProgress;
    procedure ShowToast(const Msg: string);
    procedure MessageDlg(const Msg: string; DlgType: TMsgDlgType; Buttons: TMsgDlgButtons;
      CallBack: TUniDialogCallBackAnonProc); overload;
    procedure MessageDlg(const Msg: string; DlgType: TMsgDlgType; Buttons: TMsgDlgButtons;
      CallBack: TUniDialogCallBackProc); overload;
    function MessageDlg(const Msg: string; DlgType: TMsgDlgType; Buttons: TMsgDlgButtons): Integer; overload;
    procedure MessageDlgN(const Msg: string; DlgType: TMsgDlgType; Buttons: TMsgDlgButtons);
  public
    property UniApplication: TUniGUIApplication read GetUniApplication write SetUniApplication;
    property UniForm: TUniBaseForm read FUniForm write SetUniForm;
    property OwnerForm: TUniBaseForm read FOwnerForm;
  end;

implementation

{ TJanuaUniGUIController }

constructor TJanuaUniGUIController.Create(AOwner: TComponent);
var
  POwner: TComponent;
begin
  inherited;
  FOwnerForm := nil;
  POwner := AOwner;
  while POwner <> nil do
  begin
    if POwner is TUniBaseForm then
    begin
      FOwnerForm := TUniBaseForm(POwner);
      UniForm := TUniBaseForm(AOwner);
      Break;
    end;
    POwner := POwner.Owner;
  end;
end;

function TJanuaUniGUIController.GetUniApplication: TUniGUIApplication;
begin
  Result := FUniApplication
end;

procedure TJanuaUniGUIController.HideProgress;
begin

end;

function TJanuaUniGUIController.MessageDlg(const Msg: string; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons): Integer;
begin
  Result := -1;
end;

procedure TJanuaUniGUIController.MessageDlg(const Msg: string; DlgType: TMsgDlgType; Buttons: TMsgDlgButtons;
  CallBack: TUniDialogCallBackAnonProc);
begin

end;

procedure TJanuaUniGUIController.MessageDlg(const Msg: string; DlgType: TMsgDlgType; Buttons: TMsgDlgButtons;
  CallBack: TUniDialogCallBackProc);
begin

end;

procedure TJanuaUniGUIController.MessageDlgN(const Msg: string; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons);
begin

end;

procedure TJanuaUniGUIController.SetUniApplication(const Value: TUniGUIApplication);
begin
  FUniApplication := Value
end;

procedure TJanuaUniGUIController.SetUniForm(const Value: TUniBaseForm);
begin
  FUniForm := Value;
  if Assigned(FUniForm) then
    UniApplication := FUniForm.UniApplication;
end;

procedure TJanuaUniGUIController.ShowMessage(const Msg: string);
begin

end;

procedure TJanuaUniGUIController.ShowMessage(const Msg: string; CallBack: TUniDialogCallBackProc);
begin

end;

procedure TJanuaUniGUIController.ShowMessageN(const Msg: string);
begin

end;

procedure TJanuaUniGUIController.ShowProgress(const Msg: string);
begin

end;

procedure TJanuaUniGUIController.ShowToast(const Msg: string);
begin

end;

procedure TJanuaUniGUIController.UpdateProgress(const Value: Real; const Msg: string);
begin

end;

end.
