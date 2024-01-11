//AllFeatures: SyncClientUpdate,SyncClientUpdate - 5,icon-form-fieldcontainer
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniButton,
  uniLabel, uniProgressBar, uniImage, uniPanel;

type
  TMainForm = class(TUniForm)
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniPanel1: TUniPanel;
    UniButton3: TUniButton;
    UniButton4: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
  private
    { Private declarations }
    FStopped : Boolean;
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, ServerModule;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  FStopped := False;

  UniButton1.Enabled := False;
  UniButton2.Enabled := True;
  UniButton3.Enabled := True;
  UniButton4.Enabled := False;

  while not FStopped do
  begin
    UniSession.Synchronize(True); // wait until next event

    UniPanel1.Top := UniPanel1.Top +5;
    UniPanel1.Left := UniPanel1.Left +5;
  end;

  UniPanel1.Top := 5;
  UniPanel1.Left := 5;
  UniButton1.Enabled := True;
  UniButton2.Enabled := False;
  UniButton3.Enabled := False;
  UniButton4.Enabled := True;
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin
// Dummy Event generator
end;

procedure TMainForm.UniButton3Click(Sender: TObject);
begin
  FStopped := True;
end;

procedure TMainForm.UniButton4Click(Sender: TObject);
begin
  FStopped := False;
  UniButton1.Enabled := False;
  UniButton2.Enabled := False;
  UniButton3.Enabled := True;
  UniButton4.Enabled := False;

  while (not FStopped) and (UniPanel1.Top < Self.Height - 150) do
  begin
    if UniSession.Synchronize(200) then // wait 200 ms
    begin
      UniPanel1.Top := UniPanel1.Top +5;
      UniPanel1.Left := UniPanel1.Left +5;
    end
    else
      Sleep(10);
  end;

  UniPanel1.Top := 5;
  UniPanel1.Left := 5;
  UniButton1.Enabled := True;
  UniButton2.Enabled := True;
  UniButton3.Enabled := False;
  UniButton4.Enabled := True;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
