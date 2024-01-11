unit uNavBarInspectorFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Controls,
  Vcl.CategoryButtons;

type
  TFrame4 = class(TFrame)
    catMenuItems: TCategoryButtons;
    procedure NuovaCategoria1Click(Sender: TObject);
  private
    { Private declarations }
    FCounter: integer;
  public
    { Public declarations }
    Constructor Create(AOwner: TComponent); override;
  end;

implementation

{$R *.dfm}

uses uNavBarDemoDataModule;

constructor TFrame4.Create(AOwner: TComponent);
begin
  inherited;
  FCounter := 0;
end;

procedure TFrame4.NuovaCategoria1Click(Sender: TObject);
begin
   var LCat: TButtonCategory := catMenuItems.Categories.Add;
   LCat.Collapsed := False;
   LCat.Caption := 'Nuova Categoria';
   var LBut:TButtonItem :=  LCat.Items.Add;
   LBut.ImageIndex := 100;
   LBut.Caption := 'Bottone 1';
   LBut.Hint := 'Questo si chiama Bottone 1';
end;

end.
