unit Janua.Intraweb.WebFormSetup;

interface

uses
  System.SysUtils, System.Classes, Janua.Intraweb.WebFormsModel,
  IWAppForm, IWApplication, IWColor, IWTypes, IWTMSCtrls;

type
  TJanuaIntrawebFormSetup = class(Janua.Intraweb.WebFormsModel.TJanuaWebFormsModel)
  private
    FWebFormModel: Janua.Intraweb.WebFormsModel.TJanuaWebFormsModel;
    FFormKey: string;
    FTitleLabel: TTIWHTMLLabel;
    FPageTitle: string;
    FWebForm: TIWAppForm;
    procedure SetWebFormModel(const Value: Janua.Intraweb.WebFormsModel.TJanuaWebFormsModel);
    procedure SetFormKey(const Value: string);
    procedure SetTitleLabel(const Value: TTIWHTMLLabel);
    procedure SetPageTitle(const Value: string);

    { Private declarations }
  protected
    { Protected declarations }
    procedure UpdatePageTitle;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    procedure UpdateForm;
  published
    { Published declarations }
    property WebFormModel: Janua.Intraweb.WebFormsModel.TJanuaWebFormsModel read FWebFormModel
      write SetWebFormModel;
    property FormKey: string read FFormKey write SetFormKey;
    property TitleLabel: TTIWHTMLLabel read FTitleLabel write SetTitleLabel;
    property PageTitle: string read FPageTitle write SetPageTitle;

  end;

implementation

{ TJanuaIntrawebFormSetup }

constructor TJanuaIntrawebFormSetup.Create(AOwner: TComponent);
begin
  inherited;
  if AOwner is TIWAppForm then
    self.FWebForm := (AOwner as TIWAppForm);
end;

procedure TJanuaIntrawebFormSetup.SetFormKey(const Value: string);
begin
  FFormKey := Value;
end;

procedure TJanuaIntrawebFormSetup.SetPageTitle(const Value: string);
begin
  FPageTitle := Value;
  UpdatePageTitle;
end;

procedure TJanuaIntrawebFormSetup.SetTitleLabel(const Value: TTIWHTMLLabel);
begin
  FTitleLabel := Value;
  if Assigned(FTitleLabel) then
    UpdatePageTitle;
end;

procedure TJanuaIntrawebFormSetup.SetWebFormModel
  (const Value: Janua.Intraweb.WebFormsModel.TJanuaWebFormsModel);
begin
  FWebFormModel := Value;


end;

procedure TJanuaIntrawebFormSetup.UpdateForm;
begin
  inherited;
  if Assigned(self.Owner) and (self.Owner is TIWAppForm) and Assigned(FWebFormModel) then
  begin
    FWebForm := (self.Owner as TIWAppForm);
    UpdatePageTitle;
  end;
end;

procedure TJanuaIntrawebFormSetup.UpdatePageTitle;
begin
  if Assigned(self.FWebForm) then
    FWebForm.Title := self.FPageTitle;
end;

end.
