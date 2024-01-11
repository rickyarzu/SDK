//AllFeatures: Syncronize,Blocking Modals,icon-square
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniButton, uniGUIBaseClasses,
  uniPanel, uniLabel, uniFileUpload;

type
  TMainForm = class(TUniForm)
    UniPanel1: TUniPanel;
    UniButton1: TUniButton;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniPanel4: TUniPanel;
    UniButton4: TUniButton;
    UniLabel1: TUniLabel;
    UniPanel5: TUniPanel;
    UniButton5: TUniButton;
    UniPanel6: TUniPanel;
    UniButton6: TUniButton;
    UniFileUpload1: TUniFileUpload;
    UniPanel7: TUniPanel;
    UniButton7: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
    procedure UniButton5Click(Sender: TObject);
    procedure UniButton6Click(Sender: TObject);
    procedure UniButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, Unit1, Unit2, Unit3, Unit4, Unit5;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
var
  M : TModalResult;
begin
  M := UniForm1.ShowModal;

  case M of
    mrOK  : ShowMessage('OK');
    mrCancel  : ShowMessage('Cancel');
    mrNone  : ShowMessage('None');
  end;

  ShowMessage('Done, ' + UniForm1.UniEdit1.Text);
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
var
  Res : Integer;
begin
  Res :=  MessageDlg('Test', mtConfirmation, mbYesNoCancel);

  case Res of
    mrYes  : ShowMessage('Yes');
    mrNo  : ShowMessage('No');
    mrCancel  : ShowMessage('Cancel');
  end;
end;

procedure TMainForm.UniButton3Click(Sender: TObject);
var
  sResult : string;
begin
  if Prompt('Please type something?', 'Value', mtInformation, mbYesNoCancel, sResult, True) = mrYes then
    ShowMessage('Result: ' + sResult);
end;

procedure TMainForm.UniButton4Click(Sender: TObject);
var
  sResult : string;
begin
  if UniForm1.ShowModal = mrOK then
    if Prompt('Please type something?', '', mtInformation, mbYesNoCancel, sResult, True) = mrYes then
      if MessageDlg('Continue?', mtConfirmation, mbYesNoCancel) = mrYes then
        ShowMessage('Result: ' + sResult + ' ' + UniForm1.UniEdit1.Text );
end;

procedure TMainForm.UniButton5Click(Sender: TObject);
begin
  if UniForm1.ShowModal = mrOK then
    if UniForm2.ShowModal = mrOK then
      if UniForm3.ShowModal = mrOK then
        if UniForm4.ShowModal = mrOK then
        begin
          ShowMessage('All shown!');
        end;
end;

procedure TMainForm.UniButton6Click(Sender: TObject);
begin
  if UniForm5.ShowModal() = mrOK then
    ShowMessage('Completed');
end;

procedure TMainForm.UniButton7Click(Sender: TObject);
begin
  if UniFileUpload1.Execute then
  begin
    ShowMessage('File upload completed.' +
                ^M^M'Filename: ' + UniFileUpload1.FileName +
                ^M^M'Temporary file is located under:' + UniFileUpload1.CacheFile);
  end;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.

