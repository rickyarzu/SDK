//File Upload - Drag & Drop = Download & Upload
unit DownloadUploadFileUploadDragDrop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniImage,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniPanel, uniFileUpload;

type
  TUniDownloadUploadFileUploadDragDrop = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniPanel1: TUniPanel;
    UniFileUploadButton1: TUniFileUploadButton;
    procedure UniFileUploadButton1MultiCompleted(Sender: TObject;
      Files: TUniFileInfoArray);
  private
    procedure AddImage(const AStream: TStream);
    procedure ClearPanel;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TUniDownloadUploadFileUploadDragDrop.AddImage(const AStream: TStream);
var
  Im : TUniImage;
begin
  Im := TUniImage.Create(Self);
  Im.Stretch := True;
  Im.Proportional := True;
  Im.Center := True;
  Im.Width := 128;
  Im.Height := 128;
  Im.FitWidth := True;

  Im.Parent := UniPanel1;
  Im.LoadFromStream(AStream);
end;

procedure TUniDownloadUploadFileUploadDragDrop.ClearPanel;
var
  I: Integer;
begin
  for I := UniPanel1.ControlCount - 1 downto 0 do
    UniPanel1.Controls[I].Free;
end;

procedure TUniDownloadUploadFileUploadDragDrop.UniFileUploadButton1MultiCompleted(
  Sender: TObject; Files: TUniFileInfoArray);
var
  I: Integer;
begin
  // process files after all files are uploaded
  ClearPanel;
  for I := Low(Files) to High(Files) do
    if Assigned(Files[I].Stream) then
      AddImage(Files[I].Stream);
end;

initialization
  RegisterClass(TUniDownloadUploadFileUploadDragDrop);


end.
