unit Janua.TMS.Cloud;

interface

uses VCL.Controls, Janua.VCL.Cloud;

type
  TJanuaTMSImageController = class(TJanuaVCLImageController)
  private
    procedure SetAdvOfficeImage;
    procedure ResetAdvOfficeImage;
  protected
    procedure SetImage(const Value: TGraphicControl);  override;
    procedure AssignImageToPicture; override;
  end;

implementation

uses  System.SysUtils,  System.Classes, AdvOfficeImage;

{ TJanuaTMSImageController }

procedure TJanuaTMSImageController.AssignImageToPicture;
begin
  inherited;
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

procedure TJanuaTMSImageController.ResetAdvOfficeImage;
begin
  if self.Image is AdvOfficeImage.TAdvOfficeImage then
    (self.Image as TAdvOfficeImage).Picture := nil;
end;

procedure TJanuaTMSImageController.SetAdvOfficeImage;
var
  aStream: TMemoryStream;
begin
  if FJanuaServerCloud.OpenBlob(PictureID) then
  begin
    aStream := TMemoryStream.Create;
    try
      ResetAdvOfficeImage;
      FJanuaServerCloud.Blob.SaveToStream(aStream);
      aStream.Position := 0;
      (self.Image as TAdvOfficeImage).Picture.LoadFromStream(aStream);
    finally
      aStream.Free;
    end
  end
  else
    ResetAdvOfficeImage
end;

procedure TJanuaTMSImageController.SetImage(const Value: TGraphicControl);
begin
  inherited;

end;

end.
