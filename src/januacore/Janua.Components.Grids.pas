unit Janua.Components.Grids;

interface

uses System.Classes, System.UITypes, System.SysUtils,
  Janua.Core.Types, Janua.Forms.Types, Janua.Controls.Dialogs.Intf, Janua.Forms.TextEditor.Intf, Janua.Orm.Intf,
  Janua.Core.Classes;

{$TYPEINFO ON}
{$METHODINFO ON}

type
  TJanuaCustomGridBuilder = class(TJanuaCoreComponent)
  private
    [weak]
    FJanuaDataset: IJanuaDBDataset;
    procedure SetJanuaDataset(Value: IJanuaDBDataset);
  public
    destructor Destroy; override;
    procedure GridRefresh; virtual; abstract;
    property JanuaDataset: IJanuaDBDataset read FJanuaDataset write SetJanuaDataset;
  end;

implementation

{ TJanuaCustomGridBuilder }

destructor TJanuaCustomGridBuilder.Destroy;
begin
  FJanuaDataset := nil;
  inherited;
end;

procedure TJanuaCustomGridBuilder.SetJanuaDataset(Value: IJanuaDBDataset);
begin
  FJanuaDataset := Value;
end;

end.
