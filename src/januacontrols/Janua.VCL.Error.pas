unit Janua.VCL.Error;

{ generic exception handler component }

{$Define TMS}



interface

uses
  System.SysUtils, WinTypes, WinProcs, Messages, Classes, VCL.Graphics, VCL.Controls,
  VCL.Forms, VCL.Dialogs, Data.DB, VCL.Menus, VCL.Grids, VCL.Printers, Janua.Core.System,
  TaskDialogEx, TaskDialog, Janua.Core.Exceptions;
  //TaskDialog, TaskDialogEx;

type
  TJanuaExceptionHandler = class(TCustomExceptionHandler)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
     procedure OnDo(Sender: TObject; E: Exception); override;
     procedure ErrorMessageExtended; override;
     constructor Create;
  published
    { Published declarations }
  end;


implementation


{$IfNDef TMS}
procedure TJanuaExceptionHandler.ErrorMessageExtended;
var
  TaskDialog1: TTAskDialog;
  TaskButton1, TaskButton2 : TTAskDialogBaseButtonItem;
begin
  if not FSilent then
  begin
    TaskDialog1 := TTAskDialog.Create(nil);
  try
    TaskDialog1.Title := 'Attenzione Errore nell''applicazione';

    TaskDialog1.Caption := FRiga;
    //TaskDialog1.MainIcon := tiError;
    //TaskDialog1.Content := FContenuto;
    TaskDialog1.Text := FContenuto;
    TaskDialog1.ExpandedText := FEsteso;
   // TaskDialog1.ExpandControlText := 'Premi qui per nascondere';
    TaskDialog1.ExpandButtonCaption :=  'Premi qui per nascondere';
    TaskDialog1.Buttons.Clear;
    TaskButton1 := TaskDialog1.Buttons.Add;
    TaskButton1.Caption := 'Termina Applicazione';
    TaskButton1.ModalResult := mrCancel;
    TaskButton2 := TaskDialog1.Buttons.Add;
    TaskButton2.Caption := 'OK';
    TaskButton2.ModalResult := mrOK;
    //TaskDialog1.DefaultButton := TaskButton2;

 //   TaskDialog1.CollapsControlText := 'Premi qui per maggiori informazioni';
 //   TaskDialog1.Footer := 'Brought to Delphi by <A href="http://www.tmssoftware.com">TMS software</A>';
 //   TaskDialog1.FooterIcon := tfiWarning;
    if  TaskDialog1.Execute then if TaskDialog1.ModalResult = mrCancel  then  Application.Terminate;

  finally
    FreeAndNil(TaskDialog1);
  end;
  end;
end;
{$EndIf}

{$IfDef TMS}
constructor TJanuaExceptionHandler.Create;
begin
   if self.FActive then Application.OnException := nil;

end;

procedure TJanuaExceptionHandler.ErrorMessageExtended;
var
  TaskDialog1: TAdvTaskDialogEx;
begin
  if not FSilent then
  begin
    TaskDialog1 := TAdvTaskDialogEx.Create(nil);
  try
    TaskDialog1.Title := 'Attenzione Errore nell''applicazione';

    TaskDialog1.Instruction := FRiga;
    TaskDialog1.Icon := tiError;
    TaskDialog1.Content := FContenuto;
    TaskDialog1.ExpandedText := FEsteso;
    TaskDialog1.ExpandControlText := 'Premi qui per nascondere';

    TaskDialog1.CustomButtons.Clear;
    TaskDialog1.CustomButtons.Add('Termina Programma');
    TaskDialog1.CustomButtons.Add('OK');
    TaskDialog1.DefaultButton := 101;

 //   TaskDialog1.CollapsControlText := 'Premi qui per maggiori informazioni';
 //   TaskDialog1.Footer := 'Brought to Delphi by <A href="http://www.tmssoftware.com">TMS software</A>';
 //   TaskDialog1.FooterIcon := tfiWarning;
    if TaskDialog1.Execute = 100 then Application.Terminate;
  finally
    FreeAndNil(TaskDialog1);
  end;
  end;
end;

procedure TJanuaExceptionHandler.OnDo(Sender: TObject; E: Exception);
begin
  inherited;

end;

{$EndIf}


end.

