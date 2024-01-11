// UniImage = Image
unit ImageUniImage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniTimer, uniButton, uniLabel,
  jpeg, uniImage, uniPanel, ServerModule, uniStrUtils;

type
  TUniImageUniImage = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniImage1: TUniImage;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniImage2: TUniImage;
    UniImage3: TUniImage;
    UniButton1: TUniButton;
    UniTimer1: TUniTimer;
    procedure UniButton1Click(Sender: TObject);
    procedure UniTimer1Timer(Sender: TObject);
  private
    II : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniImageUniImage.UniButton1Click(Sender: TObject);
begin
  UniTimer1.Enabled:= not UniTimer1.Enabled;
end;

procedure TUniImageUniImage.UniTimer1Timer(Sender: TObject);
var
  FolderPath: string;
begin
  FolderPath :=  TranslateFullPath(UniServerModule.StartPath,'..\..\CommonData\');
  UniImage3.Picture.LoadFromFile(FolderPath+'images\'+IntToStr(II)+'.jpg');
 // UniImage3.Picture.LoadFromFile  Url:='files/images/'+IntToStr(II)+'.jpg';
  Inc(II);
  II:=II mod 5;
end;

initialization
  RegisterClass(TUniImageUniImage);
end.
