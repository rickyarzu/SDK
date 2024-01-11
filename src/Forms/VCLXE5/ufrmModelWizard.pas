unit ufrmModelWizard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, AdvPanel, Vcl.ComCtrls,
  AdvGlowButton;

type
  TfrmModelWizard = class(TForm)
    AdvPanel1: TAdvPanel;
    PageControl1: TPageControl;
    btnCancel: TAdvGlowButton;
    btnForward: TAdvGlowButton;
    btnBack: TAdvGlowButton;
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private
    FCanGoForward: boolean;
    FCanGoBack: Boolean;
    procedure SetCanGoBack(const Value: Boolean);
    procedure SetCanGoForward(const Value: boolean);
    { Private declarations }
  public
    { Public declarations }
  published
     property CanGoForward: boolean read FCanGoForward write SetCanGoForward;
     property CanGoBack: Boolean read FCanGoBack write SetCanGoBack;
  end;

var
  frmModelWizard: TfrmModelWizard;

implementation

{$R *.dfm}

procedure TfrmModelWizard.FormCreate(Sender: TObject);
begin
    self.PageControl1.ActivePage := self.PageControl1.Pages[0];
end;

procedure TfrmModelWizard.PageControl1Change(Sender: TObject);
begin
    self.btnBack.Visible := self.PageControl1.ActivePageIndex > 0;
    if self.PageControl1.ActivePageIndex = self.PageControl1.PageCount - 1 then
    begin
      self.btnForward.Caption := 'Avvio';
    end;
end;

procedure TfrmModelWizard.SetCanGoBack(const Value: Boolean);
begin
  FCanGoBack := Value;
  self.btnBack.Enabled := self.FCanGoBack;
end;

procedure TfrmModelWizard.SetCanGoForward(const Value: boolean);
begin
  FCanGoForward := Value;
  self.btnForward.Enabled := self.FCanGoForward;
end;

end.
