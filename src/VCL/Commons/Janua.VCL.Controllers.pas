unit Janua.VCL.Controllers;

interface

uses System.StrUtils, Janua.Core.Classes, Janua.Core.CustomControls;

type
  TJanuaVCLController = class(TJanuaCoreComponent)
  private
  protected
    procedure ShowMessageError(aError: string; aSpecification: string = ''; aHelp: string = '');
  public
  published
  end;

implementation

uses Janua.VCL.Framework;

{ TJanuaVCLController }

procedure TJanuaVCLController.ShowMessageError(aError, aSpecification, aHelp: string);
begin

end;

end.
