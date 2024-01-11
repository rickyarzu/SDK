unit umain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, pngimage, uniGUIBaseClasses, uniImage,
  unimImage, jpeg, uniLabel, unimLabel;

type
  TUniMainFrame = class(TUniFrame)
    UnimImage1: TUnimImage;
    UnimImage2: TUnimImage;
    UnimLabel1: TUnimLabel;
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  ServerModule;

{$R *.dfm}

procedure TUniMainFrame.UniFrameCreate(Sender: TObject);
begin
  UnimLabel1.Caption := 'Powered by uniGUI ' + UniServerModule.UniGUIVersion +
                        ' &  Ext JS ' + UniServerModule.ExtJSVersion;

  UnimImage2.Picture.LoadFromFile(UniServerModule.StartPath + 'images\unigui.png');
end;

end.
