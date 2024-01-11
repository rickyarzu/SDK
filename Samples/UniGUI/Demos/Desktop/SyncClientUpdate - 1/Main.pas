//AllFeatures: SyncClientUpdate,SyncClientUpdate - 1,icon-form-fieldcontainer
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses,
  uniButton, uniProgressBar, uniLabel;

type
  TMainForm = class(TUniForm)
    UniLabel1: TUniLabel;
    UniProgressBar1: TUniProgressBar;
    UniButton1: TUniButton;
    UniLabel2: TUniLabel;
    UniButton2: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FCancelled : Boolean;
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
const
  MAX_FILES = 5000;
  X_INTERVAL = 500;  // milliseconds. Specifies delay between updates (Synchronization)

var
  I, N: Integer;

  procedure UpdateClient(Val : Integer);
  begin
    UniProgressBar1.Position := Val;
    UniLabel2.Caption := Format('%d Files Created...', [Val]);
  end;

  procedure CreateDummyFile(Val : Integer);
  var
    Ls : TStrings;
    FileName: string;
  begin
    FileName := IntToStr(Val)+'.txt';
    Ls := TStringList.Create;
    try
      Ls.LoadFromFile(UniServerModule.TempFolderPath + 'about_signing.help.txt');
      Ls.SaveToFile(UniServerModule.LocalCachePath + FileName);
    finally
      Ls.Free;
    end;
  end;

begin
  FCancelled := False;

  UniProgressBar1.Min := 1;
  UniProgressBar1.Max := MAX_FILES;
  UniButton1.Enabled := False;
  UniButton2.Enabled := True;
  UpdateClient(0);                  // Reset Progressbar and Label

  UniSession.Synchronize;           // Initial refresh before entering the loop (Progressbar and Label will be refreshed)

  N := 0;
  try
    for I := 1 to MAX_FILES do
    begin
      if UniSession.Synchronize(X_INTERVAL) then // Refresh the client at "X_INTERVAL" intervals
        UpdateClient(N);

      if FCancelled then Break;     // Check if operation is cancelled. (Either when Cancel button is pressed or Form is closed)

      // perform some tasks here
      CreateDummyFile(I);

      Inc(N);   // +1 number of created files
    end;

    UpdateClient(N);
  finally
    UniButton1.Enabled := True;
    UniButton2.Enabled := False;
  end;
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin
  FCancelled := True;
end;

procedure TMainForm.UniFormClose(Sender: TObject; var Action: TCloseAction);
begin
  FCancelled := True;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
