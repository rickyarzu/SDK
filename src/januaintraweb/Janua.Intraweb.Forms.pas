unit Janua.Intraweb.Forms;

interface

uses System.Classes, Janua.Core.Forms, IWAppForm, IWApplication, IWColor, IWTypes,
  Janua.Intraweb.Classes, Janua.Intraweb.WebFormsModel, Janua.Intraweb.WebFormSetup,
  IWContinuousScroll, IWTMSButton, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWTMSCtrls, IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWHTML40Container, IWRegion,
   System.DateUtils, IWCompGradButton, Janua.Core.Functions,
  Janua.Core.Classes, IWCompText, IWCompMemo, IWCompLabel,
  System.SysUtils, IWForm, VCL.Controls;

type
  TJanuaIntrawebApplication = Class(TJanuaCustomApplication)
  private
    FTemplateSet: boolean;
    FTitleTemplate: string;
    procedure SetTitleTemplate(const Value: string);
  public
    procedure UpdatePageTitle; virtual;

  published
    property TitleTemplate: string read FTitleTemplate write SetTitleTemplate;
    property TemplateSet: boolean read FTemplateSet;
  End;

type
  TJanuaIntrawebFormComponent = class(TJanuaCoreFormComponent)
  private
   // FWebFramework: TJanuaWebFramework;
    FStyleSheet: string;
    FKeepAlive: boolean;
    FSiteTitle: string;
    FTemplateSet: boolean;
    FTitleTemplate: string;
    procedure SetKeepAlive(const Value: boolean);
    procedure SetSiteTitle(const Value: string);
    procedure SetStyleSheet(const Value: string);
    //procedure SetWebFramework(const Value: TJanuaWebFramework);
    procedure SetTitleTemplate(const Value: string);
  protected
    procedure SetApplication(const Value: TJanuaCustomApplication); override;
  public
    Constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
  published
    property StyleSheet: string read FStyleSheet write SetStyleSheet;
    property SiteTitle: string read FSiteTitle write SetSiteTitle;
   // property WebFramework: TJanuaWebFramework read FWebFramework write SetWebFramework;
    property KeepAlive: boolean read FKeepAlive write SetKeepAlive;
    property TitleTemplate: string read FTitleTemplate write SetTitleTemplate;
    property TemplateSet: boolean read FTemplateSet;
  end;

type
  TJanuaIntrawebFormModel = class(TJanuaIntrawebFormComponent)
  private
    FPageTitle: string;
    procedure SetPageTitle(const Value: string);
  published
    property PageTitle: string read FPageTitle write SetPageTitle;

  end;

type
  TJanuaIntrawebForm = class(TJanuaIntrawebFormComponent)
  private
    FJanuaFormModel: TJanuaIntrawebFormModel;
    FTitleLabel: TTIWHTMLLabel;
    {
    procedure AddIWCGJQLabel(aLabel: TIWCGJQLabel);
    procedure TransIWCGJQLabel(aLabel: TIWCGJQLabel);
    procedure TransIWCGJQButton(aButton: TIWCGJQButton);
    procedure AddIWCGJQButton(aButton: TIWCGJQButton);
    }
    procedure SeTJanuaVCLFormModel(const Value: TJanuaIntrawebFormModel);
    procedure SetTitleLabel(const Value: TTIWHTMLLabel);
  protected
    procedure UpdatePageTitle; virtual;
  public
    procedure UpdateForm; override; // update Form gets the updated form from translation db
   // procedure GetForm; override; // this function read the form components then sends them to trans
  published
    property JanuaFormModel: TJanuaIntrawebFormModel read FJanuaFormModel write SeTJanuaVCLFormModel;
    property TitleLabel: TTIWHTMLLabel read FTitleLabel write SetTitleLabel;
  end;

implementation

{ TJanuaWebFormsModel }

constructor TJanuaIntrawebFormComponent.Create(AOwner: TComponent);
begin
  inherited;

end;

destructor TJanuaIntrawebFormComponent.Destroy;
begin
  inherited;
end;

procedure TJanuaIntrawebFormComponent.SetApplication(const Value: TJanuaCustomApplication);
begin
  inherited;

end;

procedure TJanuaIntrawebFormComponent.SetKeepAlive(const Value: boolean);
begin
  FKeepAlive := Value;
end;

procedure TJanuaIntrawebFormComponent.SetSiteTitle(const Value: string);
begin
  FSiteTitle := Value;
end;

procedure TJanuaIntrawebFormComponent.SetStyleSheet(const Value: string);
begin
  FStyleSheet := Value;
end;

procedure TJanuaIntrawebFormComponent.SetTitleTemplate(const Value: string);
begin
  FTitleTemplate := Value;
end;

{
procedure TJanuaIntrawebFormComponent.SetWebFramework(const Value: TJanuaWebFramework);
begin
  FWebFramework := Value;
end;
}

{ TJanuaIntrawebForm }
{
procedure TJanuaIntrawebForm.AddIWCGJQButton(aButton: TIWCGJQButton);
begin
  self.FSelectedObject.Name := aButton.Name;
  FSelectedObject.ComponentType := TJanuaComponentTypes.jotButton;
  FSelectedObject.ownerName := aButton.Owner.Name;
  self.Definition.Add(self.FSelectedObject);
  self.FSelectedProperty.Name := 'Caption';
  self.FSelectedProperty.PropertyType := TJanuaFieldType.jptString;
  FSelectedProperty.translatable := True;
  FSelectedProperty.Value := aButton.Caption;
end;

procedure TJanuaIntrawebForm.AddIWCGJQLabel(aLabel: TIWCGJQLabel);
begin
  self.FSelectedObject.Name := aLabel.Name;
  FSelectedObject.ComponentType := TJanuaComponentTypes.jotLabel;
  FSelectedObject.ownerName := aLabel.Owner.Name;
  self.Definition.Add(self.FSelectedObject);
  self.FSelectedProperty.Name := 'Caption';
  self.FSelectedProperty.PropertyType := TJanuaFieldType.jptString;
  FSelectedProperty.translatable := True;
  FSelectedProperty.Value := aLabel.Caption;
end;

procedure TJanuaIntrawebForm.GetForm;
var
  i: integer;
begin
  inherited;
  if not self.FDefined then
    try
      for i := 0 to Owner.ComponentCount - 1 do
      begin
        if (Owner.Components[i] is TIWCGJQLabel) then
        begin
          AddIWCGJQLabel(Owner.Components[i] as TIWCGJQLabel)
        end
        else if (Owner.Components[i] is TIWCGJQButton) then
        begin
          AddIWCGJQButton(Owner.Components[i] as TIWCGJQButton)
        end
      end;
    except
      on e: exception do
        self.WriteError('TJanuaIntrawebForm.GetForm', e);
    end;
  self.FDefined := True;
end;
}

procedure TJanuaIntrawebForm.SeTJanuaVCLFormModel(const Value: TJanuaIntrawebFormModel);
begin
  FJanuaFormModel := Value;
  if Assigned(FJanuaFormModel) then
  begin
    self.StyleSheet := FJanuaFormModel.StyleSheet;
    self.SiteTitle := FJanuaFormModel.SiteTitle;
    self.FTitleTemplate := self.FJanuaFormModel.TitleTemplate;
    UpdateForm;
  end;
end;

procedure TJanuaIntrawebForm.SetTitleLabel(const Value: TTIWHTMLLabel);
begin
  FTitleLabel := Value;
  if Assigned(FTitleLabel) then
    UpdatePageTitle;
end;


procedure TJanuaIntrawebForm.UpdateForm;
var
  i: integer;
begin
  inherited;
  if not self.FDefined then
    self.GetForm;

  if Assigned(self.FJanuaServerForms) then
  begin
    FJanuaServerForms.Language := self.Language;

    FJanuaServerForms.TranslateForm(FDefinition);
  end;

  for i := 0 to Owner.ComponentCount - 1 do
  begin
  {
    if (Owner.Components[i] is TIWCGJQLabel) then
    begin
      TransIWCGJQLabel(Owner.Components[i] as TIWCGJQLabel)
    end
    else if (Owner.Components[i] is TIWCGJQButton) then
    begin
      TransIWCGJQButton(Owner.Components[i] as TIWCGJQButton)
    end
    }
  end;

  if Assigned(self.Owner) and (self.Owner is TIWAppForm) then
  begin
    (self.Owner as TIWAppForm).StyleSheet.URL := self.StyleSheet;
    (self.Owner as TIWAppForm).Title := self.SiteTitle;
    UpdatePageTitle;
  end;
end;

procedure TJanuaIntrawebForm.UpdatePageTitle;
begin
  if Assigned(FTitleLabel) and self.TemplateSet then
    FTitleLabel.HtmlText := StringReplace(FTitleTemplate, '{page_title}', FormTitle,
      [rfReplaceAll, rfIgnoreCase]);

  if Assigned(self.Owner) and (self.Owner is TIWForm) then
    (self.Owner as TIWForm).Title := self.FormTitle;

end;

{ TJanuaIntrawebApplication }

procedure TJanuaIntrawebApplication.SetTitleTemplate(const Value: string);
begin
  FTitleTemplate := Value;
  UpdatePageTitle;
end;

procedure TJanuaIntrawebApplication.UpdatePageTitle;
begin
  // here does near nothing .............
  self.FTemplateSet := Pos('{page_title}', self.FTitleTemplate) > 0;
end;

{ TJanuaIntrawebFormModel }

procedure TJanuaIntrawebFormModel.SetPageTitle(const Value: string);
begin
  FPageTitle := Value;
end;

end.
