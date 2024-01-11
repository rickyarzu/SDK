unit Janua.VCL.Forms;

interface

uses

  // System
  System.Classes, Generics.Collections,
  // VCL
  VCL.Forms,
  // Janua Units
  Janua.Core.Classes, Janua.Core.Functions, Janua.Core.Forms;

type
  TJanuaVCLFrame = class(TJanuaCoreFrameComponent)

  end;

type
  TJanuaVCLForm = class(Janua.Core.Forms.TJanuaCoreFormComponent)
  private
    function getFormName: string;
    procedure setFormName(const aValue: string);
  strict protected
    function InternalActivate: boolean; override;
  public
    constructor Create(AOwner: TComponent); override;
    function StoreForm: boolean;
  published
    property FormName: string read getFormName write setFormName;
  end;

type
  TJanuaFormsController = Class(TJanuaVCLForm)
  private
    // FForms: TDictionary<string, TJanuaVCLForm>;
    FSelectedStyle: string;
    procedure SetSelectedStyle(const Value: string);
  public
    function SetStyle(StyleNumber: Integer): string;
    property SelectedStyle: string read FSelectedStyle write SetSelectedStyle;
  End;

implementation

uses System.SysUtils;

{ TJanuaVCLForm }

constructor TJanuaVCLForm.Create(AOwner: TComponent);
begin
  inherited;

end;

function TJanuaVCLForm.getFormName: string;
begin
  if Assigned(self.Owner) and (self.Owner is TForm) then
    Result := self.Owner.Name;
end;

function TJanuaVCLForm.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        Result := False;
        if Assigned(self.FJanuaServerForms) and Assigned(FJanuaFormSchemas) then
        begin
          Result := True;
        end
        else
          Result := False
      end;
    except
      on e: exception do
        RaiseLocalException('InternalActivate', e);
    end;

end;
procedure TJanuaVCLForm.setFormName(const aValue: string);
begin

end;

function TJanuaVCLForm.StoreForm: boolean;
begin
  Result := False;
end;

{ TJanuaFormsController }

procedure TJanuaFormsController.SetSelectedStyle(const Value: string);
begin
  FSelectedStyle := Value;
end;

function TJanuaFormsController.SetStyle(StyleNumber: Integer): string;
begin

end;

end.
