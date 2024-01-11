//AllFeatures: SyncClientUpdate,SyncClientUpdate - 4,icon-form-fieldcontainer
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniButton,
  uniLabel, uniProgressBar, uniImage, uniCheckBox, uniTimer, uniTreeView;

type
  TMainForm = class(TUniForm)
    UniButton1: TUniButton;
    UniProgressBar1: TUniProgressBar;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniImage1: TUniImage;
    UniCheckBox1: TUniCheckBox;
    procedure UniButton1Click(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
  private
    procedure DoHideMask;
    procedure DoShowMask(const Msg: string);
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

procedure TMainForm.DoHideMask;
begin
  if UniCheckBox1.Checked then HideMask;
end;

procedure TMainForm.DoShowMask(const Msg: string);
begin
  if UniCheckBox1.Checked then ShowMask(Msg);
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  UniLabel1.Caption := '';
  UniLabel2.Caption := '';
  UniLabel3.Caption := '';
  UniCheckBox1.Enabled := False;

  UniImage1.Hide;

  UniProgressBar1.Position := 0;
  UniButton1.Enabled := False;

  DoShowMask('Level 1 in progress ..');
  UniSession.Synchronize;

  Sleep(1000);

  UniProgressBar1.Position := 1;
  UniLabel1.Caption := 'Level 1 Completed';
  UniLabel1.Font.Style := [fsBold];

  DoHideMask;
  DoShowMask('Level 2 in progress ....');
  UniSession.Synchronize;

  Sleep(1000);

  UniProgressBar1.Position := 2;
  UniLabel2.Caption := 'Level 2 Completed';
  UniLabel2.Font.Style := [fsBold];

  DoHideMask;
  DoShowMask('Level 3 in progress ......');
  UniSession.Synchronize;

  Sleep(1000);

  UniProgressBar1.Position := 3;
  UniLabel3.Caption := 'Level 3 Completed';
  UniLabel3.Font.Style := [fsBold];

  DoHideMask;
  DoShowMask('Last level in progress ........');
  UniSession.Synchronize;

  Sleep(1000);

  UniProgressBar1.Position := 4;
  UniImage1.Show;
  UniButton1.Enabled := True;
  UniCheckBox1.Enabled := True;
  DoHideMask;
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniImage1.Picture.LoadFromFile(UniServerModule.FilesFolderPath + 'done.gif');
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
