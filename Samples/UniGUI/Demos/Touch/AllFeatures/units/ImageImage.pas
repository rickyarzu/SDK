//Image = Image
unit ImageImage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, pngimage, uniImage, unimImage,
  uniGUIBaseClasses, uniGUImJSForm, jpeg, unimPanel, uniTimer,
  unimTimer, ServerModule;

type
  TUniImageImage = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimImage1: TUnimImage;
    UnimTimer1: TUnimTimer;
    procedure UnimTimer1Timer(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
  private
    Pic1 : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TUniImageImage.UniFrameCreate(Sender: TObject);
begin
 UnimImage1.Picture.LoadFromFile(UniServerModule.FilesFolderPath+'images\picfirst'+IntToStr(Pic1)+'.jpg');
end;

procedure TUniImageImage.UnimTimer1Timer(Sender: TObject);
begin
  Inc(Pic1);
  Pic1:=Pic1 mod 5;
  UnimImage1.Picture.LoadFromFile(UniServerModule.FilesFolderPath+'images\picfirst'+IntToStr(Pic1)+'.jpg');
end;

initialization
  RegisterClass(TUniImageImage);

end.
