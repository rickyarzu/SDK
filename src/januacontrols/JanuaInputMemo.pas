unit JanuaInputMemo;

interface

uses
  SysUtils, Classes, Forms, Controls;

type
  TJanuaInputMemo = class(TComponent)
  private
    FTitle: string;
    FText: string;
    FResult: boolean;
    procedure SetResult(const Value: boolean);
    procedure SetText(const Value: string);
    procedure SetTitle(const Value: string);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    Function Execute : boolean;
  published
    { Published declarations }
    Property dlgResult : boolean read FResult write SetResult;
    Property Text : string read FText write SetText;
    Property Title : string read FTitle write SetTitle;
  end;

procedure Register;

implementation

uses udlgjanuainputmemo;

procedure Register;
begin
  RegisterComponents('januaproject', [TJanuaInputMemo]);
end;

{ TJanuaInputMemo }

function TJanuaInputMemo.Execute: boolean;
var
  dlg: Tdlgjanuainputmemo;
begin
   dlg := Tdlgjanuainputmemo.Create(Self);
   FResult := false;
   try
     dlg.Caption := FTitle;
     dlg.Memo1.Text := FText;
     dlg.ShowModal;

     if dlg.ModalResult = mrok then
     begin
       FResult := true;
       FText := dlg.Memo1.Text;
     end;
   finally
     freeandnil(dlg);
     result := FResult;
   end;
end;

procedure TJanuaInputMemo.SetResult(const Value: boolean);
begin
  FResult := Value;
end;

procedure TJanuaInputMemo.SetText(const Value: string);
begin
  FText := Value;
end;

procedure TJanuaInputMemo.SetTitle(const Value: string);
begin
  FTitle := Value;
end;

end.
