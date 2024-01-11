unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUIBaseClasses,
  uniGUImJSForm, uniButton, unimButton, uniFileUpload, unimFileUpload,
  uniBitBtn, unimBitBtn;

type
  TMainmForm = class(TUnimForm)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimButton1: TUnimButton;
    UnimFileUpload1: TUnimFileUpload;
    procedure UnimButton1Click(Sender: TObject);
    procedure UnimFileUpload1Completed(Sender: TObject; AStream: TFileStream);
    procedure UnimFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure UnimDelButton1Click(Sender: TObject);
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, unimImage, uniImgTools, uniGUIUtils,
  jpeg;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.UnimButton1Click(Sender: TObject);
begin
  UnimFileUpload1.Execute;
end;

procedure TMainmForm.UnimDelButton1Click(Sender: TObject);
var
  c : TUnimContainerPanel;
begin
  c := TUniControl((Sender as TuniControl).uniTagPtr) as TUnimContainerPanel;
  c.Free;
end;

procedure TMainmForm.UnimFileUpload1Completed(Sender: TObject;
  AStream: TFileStream);
var
  m : TUnimImage;
  b : TUnimBitBtn;
  c : TUnimContainerPanel;
  h : Integer;
  G : TGraphic;
  ThumbNail : TJPEGImage;
begin
  c := TUnimContainerPanel.Create(Self);
  c.AlignmentControl := uniAlignmentClient;
  c.Align := alTop;
  c.Parent := UnimContainerPanel1;

  m := TUnimImage.Create(Self);
  m.Name := 'img'+m.JSName;
  m.Align := alTop;
  m.Height := 240;
  m.Proportional := True;
  m.Stretch := True;
  m.Center := True;
  m.Parent := c;

  G := uniStreamToGraphic(AStream);  // create a Graphic object from stream
  ThumbNail := TJPEGImage.Create;
  try
    uniResizeImage(G, ThumbNail, 0, m.Height);  // create a small thumbnail for image, so original big image will not be sent back to client browser
    m.Picture.Assign(ThumbNail);
  finally
    G.Free;
    ThumbNail.Free;
  end;

  b := TUnimBitBtn.Create(Self);
  b.Align := alTop;
  b.Caption := 'Delete';
  b.uniTagPtr := c;
  b.OnClick := UnimDelButton1Click;
  b.Height := 47;
  b.Parent := c;

  h := m.Height + b.Height;
  c.Height:=h;

  if ScrollRange < h * (UnimContainerPanel1.ControlCount - 1) then
    ScrollRange := ScrollRange + h;   // expand form's scrollable region
end;

procedure TMainmForm.UnimFormCreate(Sender: TObject);
begin
  ScrollRange := UnimButton1.Height + 48;  // set initial range
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
