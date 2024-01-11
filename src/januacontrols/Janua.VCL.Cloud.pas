unit Janua.VCL.Cloud;

interface

uses Janua.Core.Cloud, VCL.Controls, System.SysUtils, AdvOfficeImage, System.Classes, GDIPicture,
  Janua.VCL.Controls;

type
  TJanuaVCLImageController = class(TJanuaCustomImageController)
  private
    FImage: TGraphicControl;
    procedure SetImage(const Value: TGraphicControl);
    procedure SetAdvOfficeImage;
    procedure ResetAdvOfficeImage;
  protected
    procedure AssignImageToPicture; override;
  public
    constructor Create(AOnwer: TComponent); override;
  published
    property Image: TGraphicControl read FImage write SetImage;
  end;

implementation

{ TJanuaVCLImageController }

procedure TJanuaVCLImageController.AssignImageToPicture;
begin
  if Assigned(FJanuaServerCloud) and (self.PictureID > 0) then
  begin
    if self.Image is AdvOfficeImage.TAdvOfficeImage then
      SetAdvOfficeImage
  end
  else
  begin
    if self.Image is AdvOfficeImage.TAdvOfficeImage then
      ResetAdvOfficeImage;
  end;

end;

constructor TJanuaVCLImageController.Create(AOnwer: TComponent);
begin
  inherited;
  self.FLoadButton := TJanuaVCLButtonProperties.Create(self);
end;

procedure TJanuaVCLImageController.ResetAdvOfficeImage;
begin
  if self.Image is AdvOfficeImage.TAdvOfficeImage then
    (self.Image as TAdvOfficeImage).Picture := nil;
end;

procedure TJanuaVCLImageController.SetAdvOfficeImage;
var
  aStream: TMemoryStream;
begin
  if FJanuaServerCloud.OpenBlob(PictureID) then
    try
      aStream := TMemoryStream.Create;
      ResetAdvOfficeImage;
      FJanuaServerCloud.Blob.SaveToStream(aStream);
      aStream.Position := 0;
      (self.Image as TAdvOfficeImage).Picture.LoadFromStream(aStream);
    finally
      aStream.Free;
    end
  else
    ResetAdvOfficeImage
end;

procedure TJanuaVCLImageController.SetImage(const Value: TGraphicControl);
begin
  if Assigned(Value) then
  begin
    if self.Image is AdvOfficeImage.TAdvOfficeImage then
    begin
      FImage := Value;
      AssignImageToPicture;
    end
    else
      self.RaiseException('Error, Unknown Image Control type');
  end;

end;

end.
