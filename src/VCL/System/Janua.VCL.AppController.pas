unit Janua.VCL.AppController;

interface

uses System.Classes, Janua.Core.AppController, VCL.Graphics;

type
  TJanuaVCLAppsCollection = class(TJanuaAppsCollection)
  private
    FAppImage: TPicture;
    procedure SetAppImage(const Value: TPicture);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property Image: TPicture read FAppImage write SetAppImage;
  end;

implementation

constructor TJanuaVCLAppsCollection.Create(AOwner: TComponent);
begin
  inherited;
  FAppImage := TPicture.Create;
end;

destructor TJanuaVCLAppsCollection.Destroy;
begin
  FAppImage.Free;
  inherited;
end;

procedure TJanuaVCLAppsCollection.SetAppImage(const Value: TPicture);
begin
  if Assigned(FAppImage) then
  if Assigned(Value) then
    FAppImage.Assign(Value)
  else
   FAppImage.Assign(nil);
end;

end.
