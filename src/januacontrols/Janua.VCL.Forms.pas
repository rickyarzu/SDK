unit Janua.VCL.Forms;

interface

uses System.Classes,  Janua.Core.Forms;


type
   TJanuaVCLFrame = class( TJanuaCoreFrameComponent)

   end;


type
  TJanuaVCLForm = class(Janua.Core.Forms.TJanuaCoreFormComponent)
  private
  protected
  public
    constructor Create(AOwner: TComponent); override;
    function Activate: Boolean; override;
    function StoreForm: Boolean;
  published

  end;

implementation

{ TJanuaVCLForm }

function TJanuaVCLForm.Activate: Boolean;
begin
  if Assigned(self.FJanuaServerForms) and Assigned(FJanuaFormSchemas) then
  begin
    self.FActive := True;
    Result := self.FActive;
  end;

end;

constructor TJanuaVCLForm.Create(AOwner: TComponent);
begin
  inherited;

end;

function TJanuaVCLForm.StoreForm: Boolean;
begin

end;

end.
