//AllFeatures: Page Control,Closable Tabs,icon-closable-tooltips
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniGUIClasses, uniGUIForm, uniPanel, uniPageControl,
  uniGUIBaseClasses;

type
  TMainForm = class(TUniForm)
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniTabSheet2: TUniTabSheet;
    UniTabSheet3: TUniTabSheet;
    UniTabSheet4: TUniTabSheet;
    UniTabSheet5: TUniTabSheet;
    procedure UniTabSheet2Close(Sender: TObject; var AllowClose: Boolean);
    procedure UniTabSheet5Close(Sender: TObject; var AllowClose: Boolean);
    procedure UniTabSheet4Close(Sender: TObject; var AllowClose: Boolean);
  private
    { Private declarations }
    procedure CallBack(Sender: Tcomponent; AResult: Integer);
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.CallBack(Sender: Tcomponent; AResult: Integer);
begin
  if AResult=mrYes then
    UniTabSheet4.Free;
end;

procedure TMainForm.UniTabSheet2Close(Sender: TObject; var AllowClose: Boolean);
begin
  AllowClose:=False;
  ShowMessage('Closing not allowed.');
end;

procedure TMainForm.UniTabSheet4Close(Sender: TObject; var AllowClose: Boolean);
begin
  AllowClose:=False;
  MessageDlg('Close Tab?', mtConfirmation, mbYesNo, CallBack);
end;

procedure TMainForm.UniTabSheet5Close(Sender: TObject; var AllowClose: Boolean);
begin
  ShowMessage('Tab Closed.');
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
