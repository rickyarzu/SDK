unit Janua.TMS.dlgInputText;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, // Janua
  CurvyControls, VCL.Controls, AdvGlowButton, VCL.StdCtrls, VCL.Graphics, VCL.Forms,
  // Janua
  Janua.Controls.Dialogs.Intf, uJanuaVCLForm;

type
  TdlgTMSInputText = class(TJanuaVCLFormModel, IJanuaDlgInputTextForm, IJanuaTMSInputTextForm)
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    Label1: TLabel;
    Edit1: TCurvyEdit;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
  protected
    { Private declarations }
    function GetText: string;
    function GetLabelCaption: string;
    function GetFormCaption: string;
    procedure SetFormCaption(const Value: string);
    procedure SetLabelCaption(const Value: string);
    procedure SetText(const Value: string);
  public
    { Public declarations }
    property Text: string Read GetText write SetText;
    property FormCaption: string Read GetFormCaption write SetFormCaption;
    property LabelCaption: string Read GetLabelCaption write SetLabelCaption;
  end;

var
  dlgTMSInputText: TdlgTMSInputText;

implementation

{$R *.dfm}

procedure TdlgTMSInputText.Edit1Enter(Sender: TObject);
begin
  if Sender is TEdit then
    (Sender as TEdit).Color := clYellow

end;

procedure TdlgTMSInputText.Edit1Exit(Sender: TObject);
begin
  if Sender is TEdit then
    (Sender as TEdit).Color := clWhite

end;

procedure TdlgTMSInputText.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = 13 then
  begin
    ModalResult := 1;
    Close;
  end;
end;

function TdlgTMSInputText.GetFormCaption: string;
begin
  Result := self.Caption
end;

function TdlgTMSInputText.GetLabelCaption: string;
begin
  Result := self.Label1.Caption
end;

function TdlgTMSInputText.GetText: string;
begin
  Result := Edit1.Text
end;

procedure TdlgTMSInputText.SetFormCaption(const Value: string);
begin
  Caption := Value;
end;

procedure TdlgTMSInputText.SetLabelCaption(const Value: string);
begin
  Label1.Caption := Value;
end;

procedure TdlgTMSInputText.SetText(const Value: string);
begin
  Edit1.Text := Value;
end;

end.
