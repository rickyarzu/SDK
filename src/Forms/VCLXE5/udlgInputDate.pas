unit udlgInputDate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, AdvSpin, AdvGlowButton, AdvEdit, AdvMEdBtn,
  PlannerMaskDatePicker;

type
  TdlgInputDate = class(TForm)
    Label1: TLabel;
    AdvGlowButton3: TAdvGlowButton;
    Edit1: TEdit;
    PlannerMaskDatePicker1: TPlannerMaskDatePicker;
    btnOk: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    procedure AdvSpinEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure AdvSpinEdit1Enter(Sender: TObject);
    procedure AdvSpinEdit1Exit(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure PlannerMaskDatePicker1KeyPress(Sender: TObject; var Key: Char);
  private
    FDefaultDAte: TDateTime;
    procedure SetDefaultDAte(const Value: TDateTime);
    { Private declarations }
  public
    { Public declarations }
  published
    property  DefaultDAte: TDateTime read FDefaultDAte write SetDefaultDAte;
  end;

var
  dlgInputDate: TdlgInputDate;

implementation


{$R *.dfm}

procedure TdlgInputDate.AdvGlowButton1Click(Sender: TObject);
begin
   Tag := mrCancel;
   Close;
end;

procedure TdlgInputDate.AdvSpinEdit1Enter(Sender: TObject);
begin
     if Sender is TadvSpinEdit then
        (Sender as TadvSpinEdit).Color := clYellow
end;

procedure TdlgInputDate.AdvSpinEdit1Exit(Sender: TObject);
begin
     if Sender is TadvSpinEdit then
        (Sender as TadvSpinEdit).Color := clWhite
end;

procedure TdlgInputDate.AdvSpinEdit1KeyPress(Sender: TObject; var Key: Char);
begin

   if Ord(Key) = 13 then
   begin
       ModalResult := 1;
       Edit1.SetFocus;
       btnOk.SetFocus;
   end;

end;

procedure TdlgInputDate.btnOkClick(Sender: TObject);
begin
   btnOk.SetFocus;
   Tag := mrOk;
   Close;
end;

procedure TdlgInputDate.FormShow(Sender: TObject);
begin

    PlannerMaskDatePicker1.SetFocus;
end;

procedure TdlgInputDate.PlannerMaskDatePicker1KeyPress(Sender: TObject;
  var Key: Char);
begin
     if Ord(Key) = 13 then btnOkClick(btnOk);
end;

procedure TdlgInputDate.SetDefaultDAte(const Value: TDateTime);
begin
  FDefaultDAte := Value;
  PlannerMaskDatePicker1.Date := FDefaultDAte; 
end;

end.
