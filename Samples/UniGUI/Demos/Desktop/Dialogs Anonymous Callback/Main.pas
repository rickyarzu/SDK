//AllFeatures: Dialogs,Dialogs - Anonymous Callback,icon-basic-dialog
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniguiclasses, uniGUIForm, uniGUIBaseClasses, uniButton, uniMemo,
  uniGUIDialogs;

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
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
    procedure UniButton5Click(Sender: TObject);
    procedure UniButton6Click(Sender: TObject);
    procedure UniButton7Click(Sender: TObject);
    procedure UniButton8Click(Sender: TObject);
    procedure UniButton9Click(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
  private
    { Private declarations }
    DCallBack4 : TUniDialogCallBackAnonProc;
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
  ShowMessage('Message-2',
    procedure(Sender: TComponent; Res: Integer)
    begin
      UniMemo1.Lines.Add('Result-1: '+IntToStr(Res));
    end
  );
end;

procedure TMainForm.UniButton3Click(Sender: TObject);
begin
  ShowMessage('Message-A',
    procedure(Sender: TComponent; Res: Integer)
    begin
      UniMemo1.Lines.Add('Result-2: '+IntToStr(Res));
      ShowMessage('Message-B',
        procedure(Sender: TComponent; Res: Integer)
        begin
          UniMemo1.Lines.Add('Result-3: '+IntToStr(Res));
          ShowMessage('Message-C',
            procedure(Sender: TComponent; Res: Integer)
            begin
              UniMemo1.Lines.Add('Result-4: '+IntToStr(Res));
            end
          );
        end
      );
    end
  );
end;

procedure TMainForm.UniButton4Click(Sender: TObject);
begin
  MessageDlg('Dialog1', mtWarning, [mbOK],
    procedure(Sender: TComponent; Res: Integer)
    begin
      UniMemo1.Lines.Add('DResult-1: '+IntToStr(Res));
    end
  );
end;

procedure TMainForm.UniButton5Click(Sender: TObject);
begin
  MessageDlg('Dialog2', mtConfirmation, mbYesNo,
    procedure(Sender: TComponent; Res: Integer)
    begin
      case Res of
        mrYes : UniMemo1.Lines.Add('DResult: YES');
        mrNo : UniMemo1.Lines.Add('DResult: NO');
      end;
    end
  );
end;

procedure TMainForm.UniButton6Click(Sender: TObject);
begin
  MessageDlg('Dialog3', mtConfirmation, mbYesNo,
    procedure(Sender: TComponent; Res: Integer)
    begin
      case Res of
        mrYes :
          MessageDlg('Dialog4', mtConfirmation, mbYesNo,
            procedure(Sender: TComponent; Res: Integer)
            begin
              case Res of
                mrYes : UniMemo1.Lines.Add('DResult: YES');
                mrNo : UniMemo1.Lines.Add('DResult: NO');
              end;
            end
          );
        mrNo : UniMemo1.Lines.Add('DResult: NO');
      end;
    end
  );
end;

procedure TMainForm.UniButton7Click(Sender: TObject);
begin
  MessageDlg('mbYesNo', mtConfirmation, mbYesNo,
    procedure(Sender: TComponent; Res: Integer)
    begin
      case Res of
        mrYes : UniMemo1.Lines.Add('DResult: YES');
        mrNo : UniMemo1.Lines.Add('DResult: NO');
        mrOK : UniMemo1.Lines.Add('DResult: OK');
        mrCancel : UniMemo1.Lines.Add('DResult: CANCEL');
      end;
    end
  );
end;

procedure TMainForm.UniButton8Click(Sender: TObject);
begin
  MessageDlg('mbYesNoCancel', mtConfirmation, mbYesNoCancel, DCallBack4);
end;

procedure TMainForm.UniButton9Click(Sender: TObject);
begin
  MessageDlg('mbOKCancel', mtWarning, mbOKCancel, DCallBack4);
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  DCallBack4 := procedure(Sender: TComponent; Res: Integer)
    begin
      case Res of
        mrYes : MainForm.UniMemo1.Lines.Add('DResult: YES');
        mrNo : MainForm.UniMemo1.Lines.Add('DResult: NO');
        mrOK : MainForm.UniMemo1.Lines.Add('DResult: OK');
        mrCancel : MainForm.UniMemo1.Lines.Add('DResult: CANCEL');
      end;
    end

end;

initialization
  RegisterMainFormClass(TMainForm);

end.
