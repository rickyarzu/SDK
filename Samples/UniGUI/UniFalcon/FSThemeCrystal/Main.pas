unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniImage, uniLabel, uniButton,
  uniBitBtn, UniFSButton, uniGUIBaseClasses, uniPanel, uniTreeView, uniTreeMenu,
  uniPageControl, UniFSConfirm, UniFSToast, uniTimer, UniFSPopup;

type
  TMainForm = class(TUniForm)
    procedure UniFormAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure UniFormBeforeShow(Sender: TObject);
  private
    FLogin: Boolean;
  public
    procedure NewPagePanel(Name: string);
    procedure RemovePanel(Name: string);
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uDmAcessos, uDmImagens,
  uniMainMenu, FS.Abas, uDmToast, uFrmLoginNew;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.NewPagePanel(Name: string);
var
  I: Integer;
  Pnl: TUniPanel;
begin
  for I := 0 to ComponentCount -1 do
  begin
    if TUniPanel(Components[I]).Tag = 1 then
      TUniPanel(Components[I]).Visible := False;
  end;

  for I := 0 to ComponentCount -1 do
  begin
    if (TUniPanel(Components[I]).Tag = 1) and (TUniPanel(Components[I]).Name = Name) then
    begin
      TUniPanel(Components[I]).Visible := True;
      Exit;
    end;
  end;

  Pnl := TUniPanel.Create(Self);
  Pnl.Name := Name;
  Pnl.Align := alClient;
  Pnl.BorderStyle := ubsNone;
  Pnl.Parent := Self;
  Pnl.Tag := 1;

  TAbas.Nova(Name, Pnl, True);
end;

procedure TMainForm.RemovePanel(Name: string);
var
  vI: Integer;
begin
  for vI := 0 to ComponentCount -1 do
  begin
    if (TUniPanel(Components[vI]).Tag = 1) and (TUniPanel(Components[vI]).Name = Name) then
    begin
      TUniPanel(Components[vI]).Destroy;
      Exit;
    end;
  end;
end;

procedure TMainForm.UniFormAjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
begin
  if SameText(EventName, '_get_param') then
  begin
    with UniMainModule.SistemaLogado do
    begin
      WidthMonitor := Params.Values['width'].ToInteger();
      HeightMonitor := Params.Values['height'].ToInteger();

      UserAgent := UniSession.UserAgent;
    end;
  end;

  if EventName = 'resize' then
  begin
    UniMainModule.SistemaLogado.WidthScreen := Params.Values['w'].ToInteger();
    UniMainModule.SistemaLogado.HeightScreen := Params.Values['h'].ToInteger();
  end;
end;

procedure TMainForm.UniFormBeforeShow(Sender: TObject);
begin
  if not FLogin then
    TAbas.Nova(TfrmLoginNew.ClassName, Self);
  FLogin := True;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
