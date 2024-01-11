//AllFeatures: Dialogs,Dialogs - Basic,icon-basic-dialog
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniguiclasses, uniGUIForm, uniGUIBaseClasses, uniButton, uniMemo;

type
  TMainForm = class(TUniForm)
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniMemo1: TUniMemo;
    UniButton3: TUniButton;
    UniButton4: TUniButton;
    UniButton5: TUniButton;
    UniButton6: TUniButton;
    UniButton7: TUniButton;
    UniButton8: TUniButton;
    UniButton9: TUniButton;
    UniButton11: TUniButton;
    UniButton10: TUniButton;
    UniButton12: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
    procedure UniButton5Click(Sender: TObject);
    procedure UniButton6Click(Sender: TObject);
    procedure UniButton7Click(Sender: TObject);
    procedure UniButton8Click(Sender: TObject);
    procedure UniButton9Click(Sender: TObject);
    procedure UniButton11Click(Sender: TObject);
    procedure UniButton10Click(Sender: TObject);
    procedure UniButton12Click(Sender: TObject);
  private
    { Private declarations }
    procedure CallBack1(Sender: TComponent; Res: Integer);
    procedure CallBack2(Sender: TComponent; Res: Integer);
    procedure CallBack3(Sender: TComponent; Res: Integer);
    procedure CallBack4(Sender: TComponent; Res: Integer);

    procedure DCallBack1(Sender: TComponent; Res: Integer);
    procedure DCallBack2(Sender: TComponent; Res: Integer);
    procedure DCallBack3(Sender: TComponent; Res: Integer);
    procedure DCallBack4(Sender: TComponent; Res: Integer);

    procedure DCallBack1Delay(Sender: TComponent; Res: Integer);
    procedure DCallBack4Delay(Sender: TComponent; Res: Integer);
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

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  ShowMessage('Message-1');
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin
  ShowMessage('Message-2', CallBack1);
end;

procedure TMainForm.UniButton3Click(Sender: TObject);
begin
  ShowMessage('Message-A', CallBack2);
end;

procedure TMainForm.UniButton4Click(Sender: TObject);
begin
  MessageDlg('Dialog1', mtWarning, [mbOK], DCallBack1);
end;

procedure TMainForm.UniButton5Click(Sender: TObject);
begin
  MessageDlg('Dialog2', mtConfirmation, mbYesNo, DCallBack2);
end;

procedure TMainForm.UniButton6Click(Sender: TObject);
begin
  MessageDlg('Dialog3', mtConfirmation, mbYesNo, DCallBack3);
end;

procedure TMainForm.UniButton7Click(Sender: TObject);
begin
  MessageDlg('mbYesNo', mtConfirmation, mbYesNo, DCallBack4);
end;

procedure TMainForm.UniButton8Click(Sender: TObject);
begin
  MessageDlg('mbYesNoCancel', mtConfirmation, mbYesNoCancel, DCallBack4);
end;

procedure TMainForm.UniButton9Click(Sender: TObject);
begin
  MessageDlg('mbOKCancel', mtWarning, mbOKCancel, DCallBack4);
end;

procedure TMainForm.UniButton10Click(Sender: TObject);
begin
  // Simply add @@ to enable mask!
  MessageDlg('@@Dialog1'^M'With Screen Mask After Close!', mtWarning, [mbOK], DCallBack1Delay);
end;

procedure TMainForm.UniButton11Click(Sender: TObject);
begin
  MessageDlg('Dialog1', mtError, mbYesNoCancel);
end;

procedure TMainForm.UniButton12Click(Sender: TObject);
begin
  // Simply add @@ to enable mask!
  MessageDlg('@@mbYesNo'^M'With Screen Mask After Close!', mtConfirmation, mbYesNo, DCallBack4Delay);
end;

procedure TMainForm.CallBack1(Sender: TComponent; Res: Integer);
begin
  UniMemo1.Lines.Add('Result-1: '+IntToStr(Res));
end;

procedure TMainForm.CallBack2(Sender: TComponent; Res: Integer);
begin
  UniMemo1.Lines.Add('Result-2: '+IntToStr(Res));
  ShowMessage('Message-B', CallBack3);
end;

procedure TMainForm.CallBack3(Sender: TComponent; Res: Integer);
begin
  UniMemo1.Lines.Add('Result-3: '+IntToStr(Res));
  ShowMessage('Message-C', CallBack4);
end;

procedure TMainForm.CallBack4(Sender: TComponent; Res: Integer);
begin
  UniMemo1.Lines.Add('Result-4: '+IntToStr(Res));
end;

procedure TMainForm.DCallBack1(Sender: TComponent; Res: Integer);
begin
  UniMemo1.Lines.Add('DResult-1: '+IntToStr(Res));
end;

procedure TMainForm.DCallBack1Delay(Sender: TComponent; Res: Integer);
begin
  Sleep(2000);
  DCallBack1(Sender, Res);
end;

procedure TMainForm.DCallBack2(Sender: TComponent; Res: Integer);
begin
  case Res of
    mrYes : UniMemo1.Lines.Add('DResult: YES');
    mrNo : UniMemo1.Lines.Add('DResult: NO');
  end;
end;

procedure TMainForm.DCallBack3(Sender: TComponent; Res: Integer);
begin
  case Res of
    mrYes :  MessageDlg('Dialog4', mtConfirmation, mbYesNo, DCallBack2);
    mrNo : UniMemo1.Lines.Add('DResult: NO');
  end;
end;

procedure TMainForm.DCallBack4(Sender: TComponent; Res: Integer);
begin
  case Res of
    mrYes : UniMemo1.Lines.Add('DResult: YES');
    mrNo : UniMemo1.Lines.Add('DResult: NO');
    mrOK : UniMemo1.Lines.Add('DResult: OK');
    mrCancel : UniMemo1.Lines.Add('DResult: CANCEL');
  end;
end;

procedure TMainForm.DCallBack4Delay(Sender: TComponent; Res: Integer);
begin
  Sleep(2000);
  DCallBack4(Sender, Res);
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
