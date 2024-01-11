unit Janua.Core.Items;

interface

{$I JANUACORE.INC}

uses
{$IFDEF fpc}
  LResources, Classes, SysUtils, IOUtils, DB
{$ELSE}
    System.SysUtils, System.IOUtils, Data.DB, Web.HTTPApp,
  System.Variants, System.Classes, System.JSON,
{$ENDIF}
  // ******************* Janua Core Functions *****************************
  Janua.Core.Classes, Janua.Core.Http, Janua.Core.Users,
  Janua.Core.Servers,
  Janua.Core.System, Janua.Core.Functions;

type
  TJanuaCoreItem = record
    id: int64;
    Code: string;
    Barcode: string;
    Name: string;
    FamilyId: smallint;
    Price: Double;
    SupplierID: integer;
    Discount: Real;
  public
    function AsSJSONObJect: TJSONObject;
    procedure LoadFromDataset(dsItems: TDataset); overload;
    procedure LoadFromDataset(dsItems, dsImages: TDataset); overload;
    procedure Clear;

  end;

type
  TJanuaCustomProductRegServer = class(TJanuaCustomServer)
  end;

type
  TJanuaCustomProductRegController = class(TJanuaCoreComponent)
  end;

implementation

{ TJanuaCoreItem }

function TJanuaCoreItem.AsSJSONObJect: TJSONObject;
begin
  Result := TJSONObject.Create;
  { TODO -oRiccardo : Implement TJanuaCoreItem as Json }
end;

procedure TJanuaCoreItem.Clear;
begin
  { TODO -oRiccardo : Implement TJanuaCoreItem Clear }
end;

procedure TJanuaCoreItem.LoadFromDataset(dsItems, dsImages: TDataset);
begin
  { TODO -oRiccardo : Implement TJanuaCoreItem Load From dsImages }
end;

procedure TJanuaCoreItem.LoadFromDataset(dsItems: TDataset);
begin
  { TODO -oRiccardo : Implement TJanuaCoreItem Load From dsItems }
end;

end.
