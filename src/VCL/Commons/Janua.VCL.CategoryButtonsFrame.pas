unit Janua.VCL.CategoryButtonsFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  // Spring
  Spring, Spring.Collections,
  // JanuaProject
  Janua.Controls.Forms.Impl, Janua.Controls.Forms.Intf, uJanuaVCLFrame,
  // VCL
  VCL.Forms, VCL.Controls, VCL.CategoryButtons, VCL.Menus;

type
  TJanuaCategoryButtonsFrame = class(TJanuaVCLFrameModel, IJanuaContainer)
    catMenuItems: TCategoryButtons;
    PopupMenu1: TPopupMenu;
    NuovaCategoria1: TMenuItem;
    NuovaCategoriaNoCaption1: TMenuItem;
    procedure NuovaCategoria1Click(Sender: TObject);
    procedure NuovaCategoriaNoCaption1Click(Sender: TObject);
  private
    { Private declarations }
    FCounter: integer;
    FOnRecordFound: TFormRecordFoundEvent;
    procedure SetOnRecordFound(const Value: TFormRecordFoundEvent);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    function AddCategory(const aTitle, aName: string; const aIconNumber: integer = -1): TButtonCategory; overload;
    function AddCategory(const aCategory: TJanuaApplicationRecord): TButtonCategory; overload;
    procedure SetupApplication(const aCategory: TJanuaApplicationRecord);
    function AddButton(const aTitle, aName: string; const aCategory: integer = -1; const aIconNumber: integer = -1)
      : TButtonItem; overload;
    function AddButton(const aForm: TJanuaFormRecord): TButtonItem; overload;
    procedure btnFormClick(Sender: TObject);
  published
    property OnRecordFound: TFormRecordFoundEvent read FOnRecordFound write SetOnRecordFound;
  end;

implementation

{$R *.dfm}

uses
  System.Math;

function TJanuaCategoryButtonsFrame.AddButton(const aTitle, aName: string; const aCategory, aIconNumber: integer)
  : TButtonItem;
begin
  var
    I: integer := IfThen(aCategory = -1, Pred(catMenuItems.Categories.Count), aCategory);
  Result := catMenuItems.Categories[I].Items.Add;

end;

function TJanuaCategoryButtonsFrame.AddButton(const aForm: TJanuaFormRecord): TButtonItem;
begin
  Result := AddButton(aForm.Title, aForm.ClassName, -1, aForm.IconIndex);
  Result.OnClick := self.btnFormClick;
end;

function TJanuaCategoryButtonsFrame.AddCategory(const aCategory: TJanuaApplicationRecord): TButtonCategory;
begin
  Result := AddCategory(aCategory.Title, aCategory.Name, aCategory.IconIndex);
  // P è il puntatore alla variabile Category e viene registrato nell'oggetto Categoria
  var
    P: PJanuaApplicationRecord := @aCategory;
  Result.Data := P;
end;

procedure TJanuaCategoryButtonsFrame.btnFormClick(Sender: TObject);
begin
  if (Sender is TButtonItem) then
  begin
    var
      aFormRecord: TJanuaFormRecord;
    if TJanuaFormsApplication.FindForm((Sender as TButtonItem).ClassName, aFormRecord) then
      if Assigned(FOnRecordFound) then
        FOnRecordFound(aFormRecord);
  end;
end;

function TJanuaCategoryButtonsFrame.AddCategory(const aTitle, aName: string; const aIconNumber: integer)
  : TButtonCategory;
begin
  Result := catMenuItems.Categories.Add;
  Result.Collapsed := False;
  Result.Caption := aTitle;
end;

constructor TJanuaCategoryButtonsFrame.Create(AOwner: TComponent);
begin
  inherited;
  FCounter := 0;
end;

procedure TJanuaCategoryButtonsFrame.NuovaCategoria1Click(Sender: TObject);
begin
  var
    LCat: TButtonCategory := catMenuItems.Categories.Add;
  LCat.Collapsed := False;
  LCat.Caption := 'Nuova Categoria';
  var
    LBut: TButtonItem := LCat.Items.Add;
  LBut.ImageIndex := random(12);
  LBut.Caption := 'Bottone ' + random(12).ToString;
  LBut.Hint := 'Questo si chiama Bottone 1';
end;

procedure TJanuaCategoryButtonsFrame.NuovaCategoriaNoCaption1Click(Sender: TObject);
begin
  var
    LCat: TButtonCategory := catMenuItems.Categories.Add;
  LCat.Collapsed := False;
  LCat.Caption := '';
  var
    LBut: TButtonItem := LCat.Items.Add;
  LBut.ImageIndex := 100;
  LBut.Caption := 'Bottone 1';
  LBut.Hint := 'Questo si chiama Bottone 1';
end;

procedure TJanuaCategoryButtonsFrame.SetOnRecordFound(const Value: TFormRecordFoundEvent);
begin
  FOnRecordFound := Value;
end;

procedure TJanuaCategoryButtonsFrame.SetupApplication(const aCategory: TJanuaApplicationRecord);
begin

end;

end.
