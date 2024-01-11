unit JanuaDialogs;

interface

uses
  SysUtils, Classes, TaskDialog,  TaskDialogEx, Forms;

type

   TJanuaDialogType = (jdtWarning, jdtError, jdtMessage);

type
  TJanuaDialog = class(TComponent)
  private
    FDialogType: TJanuaDialogType;
    procedure SetDialogType(const Value: TJanuaDialogType);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure JShowMessage(smessage: string; sExtra: string; sHelp: string);
    procedure JShowWarning(smessage: string; sExtra: string; sHelp: string);
    procedure JShowError(smessage: string; sExtra: string; sHelp: string);
    function  JMessageDlg  (smessage: string): boolean;
  published
    { Published declarations }
    property DialogType: TJanuaDialogType read FDialogType write SetDialogType;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Januaproject Controls', [TJanuaDialog]);
end;

{ TJanuaDialog }

function TJanuaDialog.JMessageDlg(smessage: string): boolean;
var
  TaskDialog1: TAdvTaskDialogEx;
  risultato: integer;
begin
   TaskDialog1 := nil;
   try
       TaskDialog1:= TAdvTaskDialogEx.Create(Application);
       TaskDialog1.Title := 'Domanda:';
       TaskDialog1.Instruction := smessage;
       TaskDialog1.Icon := tiQuestion;
       TaskDialog1.CustomButtons.Clear;
       TaskDialog1.CustomButtons.Add('Ok');
       TaskDialog1.CustomButtons.Add('No');
       TaskDialog1.DefaultButton := 100;
       risultato :=  TaskDialog1.Execute;
       Result := risultato  = 100;
   finally
       TaskDialog1.Free;
   end;
end;

procedure TJanuaDialog.JShowError(smessage, sExtra, sHelp: string);
var
  TaskDialog1: TAdvTaskDialogEx;
begin
   TaskDialog1 := nil;
   try
       TaskDialog1:= TAdvTaskDialogEx.Create(Application);
       TaskDialog1.Title := 'Attenzione';
       TaskDialog1.Instruction := smessage;
       TaskDialog1.Icon := tiError;
       TaskDialog1.ExpandedText := sExtra;
       TaskDialog1.Execute;
   finally
       TaskDialog1.Free;
   end;
end;

procedure TJanuaDialog.JShowMessage(smessage, sExtra, sHelp: string);
var
  TaskDialog1: TAdvTaskDialogEx;
begin
   TaskDialog1 := nil;
   try
       TaskDialog1:= TAdvTaskDialogEx.Create(Application);
       TaskDialog1.Title := 'Informazione';
       TaskDialog1.Instruction := smessage;
       TaskDialog1.Icon := tiInformation;
       TaskDialog1.ExpandedText := sExtra;
       TaskDialog1.ExpandControlText := 'Premi qui per nascondere';
       TaskDialog1.CollapsControlText := 'Premi qui per maggiori informazioni';
       TaskDialog1.Footer := sHelp;
       TaskDialog1.FooterIcon := tfiInformation;
      TaskDialog1.Execute;
   finally
       TaskDialog1.Free;
   end;
end;

procedure TJanuaDialog.JShowWarning(smessage, sExtra, sHelp: string);
begin

end;

procedure TJanuaDialog.SetDialogType(const Value: TJanuaDialogType);
begin
  FDialogType := Value;
end;

end.
