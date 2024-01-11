unit Janua.VCL.ParamsBuilder;

interface

uses
  VCL.Controls, VCL.ExtCtrls, System.Classes, Janua.VCL.Controls.FrameSelectModel,
  Janua.VCL.Actions, Janua.ViewModels.Intf, Janua.Core.Classes, Janua.Bindings.Intf, Janua.Core.Types,
  Janua.VCL.Interposers, Janua.VCL.Bindings.Intf, VCL.StdCtrls, Janua.TMS.Interposers, Janua.Orm.Intf;

(*
  IJanuaLookUp = interface(IJanuaInterface)
  function GetRecordCount: Integer;
  property RecordCount: Integer read GetRecordCount;
  end;
*)
type
  TJanuaVCLParamsBuilder = class(TJanuaCoreComponent)
  public

  strict protected
    // virtual abstract Methods to be implemented by descendant classes .................................
    function InternalActivate: boolean; override;
  public
    procedure Execute;
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses System.SysUtils, Janua.Orm.Firedac, Janua.Orm.Types, Janua.Application.Framework,
  // Testing Frames:
  Janua.VCL.Controls.DateSelect, Janua.VCL.Controls.IntegerSelect, Janua.VCL.Controls.ComboSelect,
  Janua.VCL.Controls.RadioGroup, Janua.VCL.Controls.FloatSelect, Janua.VCL.Controls.BoolSelect,
  Janua.VCL.Controls.StringSelect, Janua.VCL.Controls.SearchSelect;

{ TJanuaVCLParamsBuilder }



constructor TJanuaVCLParamsBuilder.Create(AOwner: TComponent);
begin
  inherited;

end;

procedure TJanuaVCLParamsBuilder.Execute;
begin
  if not self.Active then
    self.Activate;
end;

function TJanuaVCLParamsBuilder.InternalActivate: boolean;
var
  aParam: IJanuaField;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited and notDesigning;
      if Result then
      begin
        Result := False;

      end;
    except
      on e: Exception do
        RaiseLocalException('InternalActivate', e);
    end;
end;

procedure TJanuaVCLParamsBuilder.SetContainer(const Value: TWinControl);
begin
  FContainer := Value;
end;

procedure TJanuaVCLParamsBuilder.SetParams(const Value: IJanuaParams);
begin
  FParams := Value;
end;

end.
