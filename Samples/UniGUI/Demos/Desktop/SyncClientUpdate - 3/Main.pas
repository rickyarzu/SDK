//AllFeatures: SyncClientUpdate,SyncClientUpdate - 3,icon-form-fieldcontainer
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniButton,
  uniLabel, uniProgressBar, uniImage;

type
  TMainForm = class(TUniForm)
    UniButton1: TUniButton;
    UniProgressBar1: TUniProgressBar;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniImage1: TUniImage;
    procedure UniButton1Click(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
  private
    { Private declarations }
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
  UniLabel1.Caption := '';
  UniLabel2.Caption := '';
  UniLabel3.Caption := '';

  UniImage1.Hide;

  UniProgressBar1.Position := 0;
  UniButton1.Enabled := False;
  UniSession.Synchronize;

  Sleep(1000);

  UniProgressBar1.Position := 1;
  UniLabel1.Caption := 'Level 1 Completed';
  UniLabel1.Font.Style := [fsBold];
  UniSession.Synchronize;

  Sleep(1000);

  UniProgressBar1.Position := 2;
  UniLabel2.Caption := 'Level 2 Completed';
  UniLabel2.Font.Style := [fsBold];
  UniSession.Synchronize;

  Sleep(1000);

  UniProgressBar1.Position := 3;
  UniLabel3.Caption := 'Level 3 Completed';
  UniLabel3.Font.Style := [fsBold];
  UniSession.Synchronize;

  Sleep(1000);

  UniProgressBar1.Position := 4;
  UniImage1.Show;
  UniButton1.Enabled := True;
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniImage1.Picture.LoadFromFile(UniServerModule.FilesFolderPath + 'done.gif');
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
