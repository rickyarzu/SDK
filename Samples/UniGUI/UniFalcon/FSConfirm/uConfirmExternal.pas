unit uConfirmExternal;

interface

uses
  System.Classes, System.sysutils, uniMainMenu, UniFSConfirm;

type
  TConfirmExternal = class
  private
    FConfirm: TUniFSConfirm;
  public
    constructor Create(AOwner: TComponent);
    destructor Destroy; override;

    property Confirm: TUniFSConfirm read FConfirm write FConfirm;
  end;

implementation


{ TConfirmExternal }

constructor TConfirmExternal.Create(AOwner: TComponent);
begin
  FConfirm := TUniFSConfirm.Create(AOwner);
end;

destructor TConfirmExternal.Destroy;
begin
  FreeAndNil(FConfirm);
  inherited;
end;

end.
