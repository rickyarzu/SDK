unit ufrmModelWizar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, AdvPanel, Vcl.ComCtrls,
  AdvGlowButton;

type
  TForm6 = class(TForm)
    AdvPanel1: TAdvPanel;
    PageControl1: TPageControl;
    btnCancel: TAdvGlowButton;
    btnForward: TAdvGlowButton;
    btnBack: TAdvGlowButton;
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.FormCreate(Sender: TObject);
begin
    self.PageControl1.ActivePage := self.PageControl1.Pages[0];
end;

procedure TForm6.PageControl1Change(Sender: TObject);
begin
    self.btnBack.Visible := self.PageControl1.ActivePageIndex > 0;
    if self.PageControl1.ActivePageIndex = self.PageControl1.PageCount - 1 then
    begin
      self.btnForward.Caption := 'Avvio';
    end;
end;

end.
