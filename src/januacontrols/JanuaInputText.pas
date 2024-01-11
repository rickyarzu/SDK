unit JanuaInputText;

interface

uses
  SysUtils, Classes, Controls,  udlgInputText, StdCtrls;

type
  TJanuaInputText = class(TComponent)
  private
    FCaption: String;
    FText: String;
    FDisplayText: String;
    FCharCase: TEditCharCase;
    procedure SetCaption(const Value: String);
    procedure SetDisplayText(const Value: String);
    procedure SetText(const Value: String);
    procedure SetCharCase(const Value: TEditCharCase);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    function Execute: boolean;
    function InputText(sTitle: string; sCaption:
                                          string; sDefault: string): string;
  published
    { Published declarations }
    property Caption: String read FCaption write SetCaption;
    property Text: String read FText write SetText;
    property DisplayText: String read FDisplayText write SetDisplayText;
    property CharCase: TEditCharCase read FCharCase write SetCharCase;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Januaproject Dialogs', [TJanuaInputText]);
end;

{ TJanuaInputText }

function TJanuaInputText.InputText(sTitle: string; sCaption:
                                          string; sDefault: string): string;
begin
     self.Caption := sTitle;
     self.DisplayText := sCaption;
     self.Text := sDefault;
     if self.Execute then Result := self.Text else Result := sDefault;
end;

function TJanuaInputText.Execute: boolean;
var
   dlgInput: TdlgInputText;
begin
  dlgInput := TdlgInputText.Create(nil);
  try
    dlgInput.Caption := self.FCaption;
    dlgInput.Label1.Caption := self.FDisplayText;
    dlgInput.Edit1.Text  := self.FText;
    dlgInput.Edit1.CharCase := self.FCharCase; 
    dlgInput.ShowModal;
    Result := dlgInput.ModalResult = mrOK; 
    if Result then self.FText := dlgInput.Edit1.Text;
  finally
    dlgInput.Free;
  end;
end;

procedure TJanuaInputText.SetCaption(const Value: String);
begin
  FCaption := Value;
end;

procedure TJanuaInputText.SetCharCase(const Value: TEditCharCase);
begin
  FCharCase := Value;
end;

procedure TJanuaInputText.SetDisplayText(const Value: String);
begin
  FDisplayText := Value;
end;

procedure TJanuaInputText.SetText(const Value: String);
begin
  FText := Value;
end;

end.
