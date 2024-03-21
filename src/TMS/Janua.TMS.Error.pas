unit Janua.TMS.Error;

interface

uses
  System.SysUtils, WinTypes, WinProcs, WinAPI.Messages, System.Classes,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, Data.DB, VCL.Menus, VCL.Grids, VCL.Printers,
  // TMS
  TaskDialogEx, TaskDialog,
  // Janua
  Janua.Core.System, Janua.VCL.Error, Janua.Core.Exceptions;


type
  TJanuaTmsExceptionHandler = class(TJanuaExceptionHandler)
    // classe derivata dall'exception handler comune a tutti i sistemi operativi e quindi portabile dal VCL a FMX
    // l'exception handler in questo caso potrebbe anche essere un sistema 'silente' e generare una pagina 501...........
    // in questo caso dovrebbe avere un 'generatore' di pagine collegato.
  private
    { Private declarations }
  public
    { Public declarations }
    procedure OnDo(Sender: TObject; E: Exception); override;
    procedure ErrorMessageExtended; override;
    procedure ErrorMessage(smessage: string; sexplain: string); override;
  published
    { Published declarations }
  end;

implementation

uses Janua.Core.Functions, Janua.VCL.Functions, Janua.Application.Framework;

procedure TJanuaTmsExceptionHandler.ErrorMessage(smessage, sexplain: string);
var
  Filename: string;
  TaskDialog: TAdvTaskDialogEx;
begin
  if NOT Silent then
    try
      TaskDialog := TAdvTaskDialogEx.Create(nil);
      with TaskDialog do
      begin
        Title := 'Attenzione Errore nell''applicazione';
        Instruction := smessage;
        Icon := tiError;
        Content := sexplain;
        // TaskDialog1.ExpandedText := 'Many new options make the TaskDialog very different from the old Windows MessageBox';
        // TaskDialog1.ExpandControlText := 'Click to hide';
        // TaskDialog1.CollapsControlText := 'Premi qui per maggiori informazioni';
        // TaskDialog1.Footer := 'Brought to Delphi by <A href="http://www.tmssoftware.com">TMS software</A>';
        // TaskDialog1.FooterIcon := tfiWarning;
        CustomButtons.Clear;
        CustomButtons.Add('Termina Programma');
        CustomButtons.Add('Invia Errore');
        CustomButtons.Add('OK');
        DefaultButton := 102;
        // TaskDialog1.CollapsControlText := 'Premi qui per maggiori informazioni';
        // TaskDialog1.Footer := 'Brought to Delphi by <A href="http://www.tmssoftware.com">TMS software</A>';
        // TaskDialog1.FooterIcon := tfiWarning;
        if Execute = 100 then
          Application.Terminate;
        if Execute = 101 then
        begin
          Filename := SaveScreen;
        end;
      end;
    finally
      if assigned(TaskDialog) then
        FreeAndNil(TaskDialog);
    end;
end;

procedure TJanuaTmsExceptionHandler.ErrorMessageExtended;
var
  TaskDialog1: TAdvTaskDialogEx;
  vResult: integer;
begin
  if not FSilent then
  begin
    TaskDialog1 := TAdvTaskDialogEx.Create(nil);
    try
      TaskDialog1.Title := 'Attenzione Errore nell''applicazione';

      TaskDialog1.Instruction := FRiga;
      TaskDialog1.Icon := tiError;
      TaskDialog1.Content := FContenuto;

      TaskDialog1.ExpandedText := '';
      TaskDialog1.ExpandControlText := 'Premi qui per informazioni';

      TaskDialog1.CustomButtons.Clear;
      TaskDialog1.CustomButtons.Add('Termina Programma');
      TaskDialog1.CustomButtons.Add('Visualizza Errore');
      TaskDialog1.CustomButtons.Add('OK');
      TaskDialog1.DefaultButton := 102;

      // TaskDialog1.CollapsControlText := 'Premi qui per maggiori informazioni';
      // TaskDialog1.Footer := 'Brought to Delphi by <A href="http://www.tmssoftware.com">TMS software</A>';
      // TaskDialog1.FooterIcon := tfiWarning;

      case TaskDialog1.Execute of
         100: Application.Terminate;
         101: TJanuaCoreOS.ExternalExec(LogFileName, '');
         102: JMessageDlg('Invio messaggio di errore?');
      end;
    finally
      FreeAndNil(TaskDialog1);
    end;
  end;
end;

procedure TJanuaTmsExceptionHandler.OnDo(Sender: TObject; E: Exception);
begin
  inherited;

end;

end.
