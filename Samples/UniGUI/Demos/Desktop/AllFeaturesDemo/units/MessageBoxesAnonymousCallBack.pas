//Anonymous CallBack = Message Boxes
unit MessageBoxesAnonymousCallBack;
{$I uniCompilers.inc}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniMemo, uniButton, uniGUIBaseClasses, uniPanel,
  uniGUIDialogs;

type
  TUniMessageBoxesAnonymousCallBack = class(TUniFrame)
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
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
    procedure UniButton5Click(Sender: TObject);
    procedure UniButton6Click(Sender: TObject);
    procedure UniButton7Click(Sender: TObject);
    procedure UniButton8Click(Sender: TObject);
    procedure UniButton9Click(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
  private
{$ifdef COMPILER_12_UP}
    DCallBack4 : TUniDialogCallBackAnonProc;
{$endif}
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


procedure TUniMessageBoxesAnonymousCallBack.UniButton1Click(Sender: TObject);
begin
  ShowMessage('Message-1');
end;

procedure TUniMessageBoxesAnonymousCallBack.UniButton2Click(Sender: TObject);
begin
{$ifdef COMPILER_12_UP}
  ShowMessage('Message-2',
    procedure(Sender: TComponent; Res: Integer)
    begin
      UniMemo1.Lines.Add('Result-1: '+IntToStr(Res));
    end
  );
{$else}
  ShowMessage('This feature is not available in this version of Delphi');
{$endif}
end;

procedure TUniMessageBoxesAnonymousCallBack.UniButton3Click(Sender: TObject);
begin
{$ifdef COMPILER_12_UP}
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
{$else}
  ShowMessage('This feature is not available in this version of Delphi');
{$endif}
end;

procedure TUniMessageBoxesAnonymousCallBack.UniButton4Click(Sender: TObject);
begin
{$ifdef COMPILER_12_UP}
  MessageDlg('Dialog1', mtWarning, [mbOK],
    procedure(Sender: TComponent; Res: Integer)
    begin
      UniMemo1.Lines.Add('DResult-1: '+IntToStr(Res));
    end
  );
{$else}
  ShowMessage('This feature is not available in this version of Delphi');
{$endif}
end;

procedure TUniMessageBoxesAnonymousCallBack.UniButton5Click(Sender: TObject);
begin
{$ifdef COMPILER_12_UP}
  MessageDlg('Dialog2', mtConfirmation, mbYesNo,
    procedure(Sender: TComponent; Res: Integer)
    begin
      case Res of
        mrYes : UniMemo1.Lines.Add('DResult: YES');
        mrNo : UniMemo1.Lines.Add('DResult: NO');
      end;
    end
  );
{$else}
  ShowMessage('This feature is not available in this version of Delphi');
{$endif}
end;

procedure TUniMessageBoxesAnonymousCallBack.UniButton6Click(Sender: TObject);
begin
{$ifdef COMPILER_12_UP}
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
{$else}
  ShowMessage('This feature is not available in this version of Delphi');
{$endif}
end;

procedure TUniMessageBoxesAnonymousCallBack.UniButton7Click(Sender: TObject);
begin
{$ifdef COMPILER_12_UP}
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
{$else}
  ShowMessage('This feature is not available in this version of Delphi');
{$endif}
end;

procedure TUniMessageBoxesAnonymousCallBack.UniButton8Click(Sender: TObject);
begin
{$ifdef COMPILER_12_UP}
   MessageDlg('mbYesNoCancel', mtConfirmation, mbYesNoCancel, DCallBack4);
{$else}
  ShowMessage('This feature is not available in this version of Delphi');
{$endif}
end;

procedure TUniMessageBoxesAnonymousCallBack.UniButton9Click(Sender: TObject);
begin
{$ifdef COMPILER_12_UP}
  MessageDlg('mbOKCancel', mtWarning, mbOKCancel, DCallBack4);
{$else}
  ShowMessage('This feature is not available in this version of Delphi');
{$endif}
end;

procedure TUniMessageBoxesAnonymousCallBack.UniFrameCreate(Sender: TObject);
begin
{$ifdef COMPILER_12_UP}
 DCallBack4 := procedure(Sender: TComponent; Res: Integer)
    begin
      case Res of
        mrYes : UniMemo1.Lines.Add('DResult: YES');
        mrNo : UniMemo1.Lines.Add('DResult: NO');
        mrOK : UniMemo1.Lines.Add('DResult: OK');
        mrCancel : UniMemo1.Lines.Add('DResult: CANCEL');
      end;
    end
{$endif}
end;

initialization
  RegisterClass(TUniMessageBoxesAnonymousCallBack);

end.
