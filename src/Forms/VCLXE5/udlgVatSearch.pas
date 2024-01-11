unit udlgVatSearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uJanuaFrameNavigator, DB, DBClient, ExtCtrls, AdvGlowButton;

type
  TForm4 = class(TForm)
    JanuaFrameNavigator1: TJanuaFrameNavigator;
    Edit1: TEdit;
    cdsVat: TClientDataSet;
    cdsVatvat_id: TIntegerField;
    cdsVatvat_code: TStringField;
    cdsVatvat_description: TStringField;
    Panel1: TPanel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    cdsVatvat_purcent: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Edit1Enter(Sender: TObject);
begin
  Edit1.Color := clYellow; 
end;

procedure TForm4.Edit1Exit(Sender: TObject);
begin
   Edit1.Color := clWhite
end;

procedure TForm4.FormShow(Sender: TObject);
begin
   Edit1.SetFocus; 
end;

end.
