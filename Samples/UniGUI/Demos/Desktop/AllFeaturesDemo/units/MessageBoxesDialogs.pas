// Dialogs = Message Boxes
unit MessageBoxesDialogs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniEdit, uniButton, uniGUIBaseClasses, uniPanel,
  uniMemo;

type
  TUniMessageBoxesDialogs = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
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
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
    procedure UniButton5Click(Sender: TObject);
    procedure UniButton6Click(Sender: TObject);
    procedure UniButton11Click(Sender: TObject);
    procedure UniButton7Click(Sender: TObject);
    procedure UniButton8Click(Sender: TObject);
    procedure UniButton9Click(Sender: TObject);
    procedure UniButton10Click(Sender: TObject);
    procedure UniButton12Click(Sender: TObject);

  private
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
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}




procedure TUniMessageBoxesDialogs.UniButton10Click(Sender: TObject);
begin
  // Simply add @@ to enable mask!
  MessageDlg('@@Dialog1'^M'With Screen Mask After Close!', mtWarning, [mbOK], DCallBack1Delay);
end;

procedure TUniMessageBoxesDialogs.UniButton11Click(Sender: TObject);
begin
  MessageDlg('Dialog1', mtError, mbYesNoCancel);
end;

procedure TUniMessageBoxesDialogs.UniButton12Click(Sender: TObject);
begin
  // Simply add @@ to enable mask!
  MessageDlg('@@mbYesNo'^M'With Screen Mask After Close!', mtConfirmation, mbYesNo, DCallBack4Delay);
end;

procedure TUniMessageBoxesDialogs.UniButton1Click(Sender: TObject);
begin
  ShowMessage('Message-1');
end;

procedure TUniMessageBoxesDialogs.UniButton2Click(Sender: TObject);
begin
  ShowMessage('Message-2', CallBack1);
end;

procedure TUniMessageBoxesDialogs.UniButton3Click(Sender: TObject);
begin
  ShowMessage('Message-A', CallBack2);
end;

procedure TUniMessageBoxesDialogs.UniButton4Click(Sender: TObject);
begin
  MessageDlg('Dialog1', mtWarning, [mbOK], DCallBack1);
end;

procedure TUniMessageBoxesDialogs.UniButton5Click(Sender: TObject);
begin
  MessageDlg('Dialog2', mtConfirmation, mbYesNo, DCallBack2);
end;

procedure TUniMessageBoxesDialogs.UniButton6Click(Sender: TObject);
begin
  MessageDlg('Dialog3', mtConfirmation, mbYesNo, DCallBack3);
end;

procedure TUniMessageBoxesDialogs.UniButton7Click(Sender: TObject);
begin
  MessageDlg('mbYesNo', mtConfirmation, mbYesNo, DCallBack4);
end;

procedure TUniMessageBoxesDialogs.UniButton8Click(Sender: TObject);
begin
  MessageDlg('mbYesNoCancel', mtConfirmation, mbYesNoCancel, DCallBack4);
end;

procedure TUniMessageBoxesDialogs.UniButton9Click(Sender: TObject);
begin
  MessageDlg('mbOKCancel', mtWarning, mbOKCancel, DCallBack4);
end;


procedure TUniMessageBoxesDialogs.CallBack1(Sender: TComponent; Res: Integer);
begin
  UniMemo1.Lines.Add('Result-1: '+IntToStr(Res));
end;

procedure TUniMessageBoxesDialogs.CallBack2(Sender: TComponent; Res: Integer);
begin
  UniMemo1.Lines.Add('Result-2: '+IntToStr(Res));
  ShowMessage('Message-B', CallBack3);
end;

procedure TUniMessageBoxesDialogs.CallBack3(Sender: TComponent; Res: Integer);
begin
  UniMemo1.Lines.Add('Result-3: '+IntToStr(Res));
  ShowMessage('Message-C', CallBack4);
end;

procedure TUniMessageBoxesDialogs.CallBack4(Sender: TComponent; Res: Integer);
begin
  UniMemo1.Lines.Add('Result-4: '+IntToStr(Res));
end;

procedure TUniMessageBoxesDialogs.DCallBack1(Sender: TComponent; Res: Integer);
begin
  UniMemo1.Lines.Add('DResult-1: '+IntToStr(Res));
end;

procedure TUniMessageBoxesDialogs.DCallBack1Delay(Sender: TComponent; Res: Integer);
begin
  Sleep(2000);
  DCallBack1(Sender, Res);
end;

procedure TUniMessageBoxesDialogs.DCallBack2(Sender: TComponent; Res: Integer);
begin
  case Res of
    mrYes : UniMemo1.Lines.Add('DResult: YES');
    mrNo : UniMemo1.Lines.Add('DResult: NO');
  end;
end;

procedure TUniMessageBoxesDialogs.DCallBack3(Sender: TComponent; Res: Integer);
begin
  case Res of
    mrYes :  MessageDlg('Dialog4', mtConfirmation, mbYesNo, DCallBack2);
    mrNo : UniMemo1.Lines.Add('DResult: NO');
  end;
end;

procedure TUniMessageBoxesDialogs.DCallBack4(Sender: TComponent; Res: Integer);
begin
  case Res of
    mrYes : UniMemo1.Lines.Add('DResult: YES');
    mrNo : UniMemo1.Lines.Add('DResult: NO');
    mrOK : UniMemo1.Lines.Add('DResult: OK');
    mrCancel : UniMemo1.Lines.Add('DResult: CANCEL');
  end;
end;

procedure TUniMessageBoxesDialogs.DCallBack4Delay(Sender: TComponent; Res: Integer);
begin
  Sleep(2000);
  DCallBack4(Sender, Res);
end;

initialization
  RegisterClass(TUniMessageBoxesDialogs);
end.
