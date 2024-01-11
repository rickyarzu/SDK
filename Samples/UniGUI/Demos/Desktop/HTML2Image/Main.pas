//AllFeatures: HTML,HTML2Image,icon-html-tooltips
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniImage, uniGUIBaseClasses,
  uniMemo, uniHTMLMemo, uniButton, uniPanel, uniMultiItem, uniComboBox;

type
  TMainForm = class(TUniForm)
    UniHTMLMemo1: TUniHTMLMemo;
    UniImage1: TUniImage;
    UniPanel1: TUniPanel;
    UniButton1: TUniButton;
    Save: TUniButton;
    UniComboBox1: TUniComboBox;
    procedure UniButton1Click(Sender: TObject);
    procedure SaveClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniComboBox1Select(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

(*
  This application uses an external tool named  wkhtmltopdf.
  You must download from https://wkhtmltopdf.org/ and install it.
  You should also assign bin folder path of wkhtmltopdf to CmdToolPath property of
  TUniHtmlToImage class.

*)

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uniGUIServerUtils, ServerModule;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.SaveClick(Sender: TObject);
var
  M : TMemoryStream;
begin
  if not UniImage1.Picture.Graphic.Empty then
  begin
    M := TMemoryStream.Create;
    try
      UniImage1.Picture.Graphic.SaveToStream(M);
      UniSession.SendStream(M, 'capture.png');
    finally
      M.Free;
    end;
  end;

end;

procedure TMainForm.UniButton1Click(Sender: TObject);
var
  C : TUniHtmlToImage;
begin
  C := TUniHtmlToImage.Create;
  try
    C.CmdToolPath := 'E:\Program Files\wkhtmltopdf\bin';  // this path must be modified based on your local configuration
    C.HTML := UniHTMLMemo1.Text;
    C.Width := UniImage1.Width;
    C.Height := UniImage1.Height;
    C.Scale := 1.0;
    C.Convert;

    UniImage1.Picture.Assign(C.Image);

  finally
    C.Free;
  end;
end;

procedure TMainForm.UniComboBox1Select(Sender: TObject);
var
  C : TUniHtmlToImage;
begin
  C := TUniHtmlToImage.Create;
  try
    C.CmdToolPath := 'E:\Program Files\wkhtmltopdf\bin'; // this path must be modified based on your local configuration
    C.Url := UniComboBox1.Text;
    C.Width := UniImage1.Width;
    C.Height := UniImage1.Height;
    C.Scale := 1.0;
    C.Convert;

    UniImage1.Picture.Assign(C.Image);

  finally
    C.Free;
  end;
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniComboBox1.Text := '';
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
