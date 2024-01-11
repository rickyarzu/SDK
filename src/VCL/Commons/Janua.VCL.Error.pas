unit Janua.VCL.Error;

{ generic exception handler component }

interface

uses
  System.SysUtils, WinTypes, WinProcs, Messages, System.Classes, VCL.Graphics, VCL.Controls,
  VCL.Forms, VCL.Dialogs, Data.DB, VCL.Menus, VCL.Grids, VCL.Printers, Janua.Core.System,
  Janua.Core.Exceptions;
// TaskDialog, TaskDialogEx;

type
  TJanuaExceptionHandler = class(TCustomExceptionHandler)
    // classe derivata dall'exception handler comune a tutti i sistemi operativi e quindi portabile dal VCL a FMX
    // l'exception handler in questo caso potrebbe anche essere un sistema 'silente' e generare una pagina 501...........
    // in questo caso dovrebbe avere un 'generatore' di pagine collegato.
  private
    { Private declarations }
    FApplication: TApplication;
  protected
    { Protected declarations }
    function InternalActivate: boolean; override;
  public
    { Public declarations }
    procedure OnDo(Sender: TObject; E: Exception); override;
    procedure ErrorMessageExtended; override;
    constructor Create(AOwner: TComponent); override;
    procedure ErrorMessage(smessage: string; sexplain: string); override;
  published
    { Published declarations }
  end;

implementation

uses Janua.Core.Functions;

constructor TJanuaExceptionHandler.Create(AOwner: TComponent);
begin
  if (AOwner is TApplication) then
    FApplication := (AOwner as TApplication);
end;

procedure TJanuaExceptionHandler.ErrorMessage(smessage, sexplain: string);
begin
  inherited;

end;

procedure TJanuaExceptionHandler.ErrorMessageExtended;
var
  TaskDialog1: TTAskDialog;
  TaskButton1, TaskButton2: TTAskDialogBaseButtonItem;
begin
  if not FSilent then
  begin
    TaskDialog1 := TTAskDialog.Create(nil);
    try
      TaskDialog1.Title := FRiga;
      TaskDialog1.Caption := 'Attenzione Errore nell''applicazione';
      // TaskDialog1.MainIcon := tiError;
      // TaskDialog1.Content := FContenuto;
      TaskDialog1.Text := FContenuto;
      TaskDialog1.ExpandedText := FEsteso;
      // TaskDialog1.ExpandControlText := 'Premi qui per nascondere';
      TaskDialog1.ExpandButtonCaption := 'Premi qui per descrizione estesa';
      TaskDialog1.Buttons.Clear;
      TaskButton1 := TaskDialog1.Buttons.Add;
      TaskButton1.Caption := 'Termina Applicazione';
      TaskButton1.ModalResult := mrCancel;
      TaskButton2 := TaskDialog1.Buttons.Add;
      TaskButton2.Caption := 'OK';
      TaskButton2.ModalResult := mrOK;
      // TaskDialog1.DefaultButton := TaskButton2;

      // TaskDialog1.CollapsControlText := 'Premi qui per maggiori informazioni';
      // TaskDialog1.Footer := 'Brought to Delphi by <A href="http://www.tmssoftware.com">TMS software</A>';
      // TaskDialog1.FooterIcon := tfiWarning;
      if TaskDialog1.Execute then
        if TaskDialog1.ModalResult = mrCancel then
          Application.Terminate;

    finally
      (TaskDialog1.Free);
    end;
  end;
end;

function TJanuaExceptionHandler.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        if assigned(FApplication) then
          FApplication.OnException := self.OnDo
        else
          Application.OnException := OnDo;
      end;
    except
      on E: Exception do
        RaiseLocalException('InternalActivate', E);
    end;

end;

procedure TJanuaExceptionHandler.OnDo(Sender: TObject; E: Exception);
begin
  inherited;

end;

end.
