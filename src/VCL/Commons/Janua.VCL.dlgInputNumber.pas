unit Janua.VCL.dlgInputNumber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics, VCL.Controls, VCL.Forms,
  VCL.Dialogs, VCL.StdCtrls, VCL.Mask, SVGIconImage, VCL.Samples.Spin,
  // ImageList
  System.ImageList, VCL.ImgList, SVGIconImageList,
  // Janua
  Janua.Controls.Dialogs.Intf, uJanuaVCLForm, Vcl.ComCtrls;

type
  TdlgVCLInputNumber = class(TJanuaVCLFormModel, IJanuaDlgIntegerForm)
    AdvSpinEdit1: TSpinEdit;
    Label1: TLabel;
    AdvGlowButton3: TButton;
    AdvGlowButton4: TButton;
    SVGIconImage1: TSVGIconImage;
    procedure FormCreate(Sender: TObject);
  protected
    function GetCaption: String;
    function GetNumber: Int64;
    function GetDisplayText: String;
    procedure SetCaption(const Value: String);
    procedure SetNumber(const Value: Int64);
    procedure SetDisplayText(const Value: String);
  public
    function Execute: boolean;
  end;

var
  dlgVCLInputNumber: TdlgVCLInputNumber;

implementation

{$R *.dfm}

uses Janua.VCL.Framework;

{ TdlgTMSInputNumber }

function TdlgVCLInputNumber.Execute: boolean;
begin
  Self.ShowModal;
  Result := Self.ModalResult = mrOk;
end;

procedure TdlgVCLInputNumber.FormCreate(Sender: TObject);
begin
  inherited;
  SVGIconImage1.ImageList := TJanuaVCLApplication.ImgListVCLIcons16 as TSVGIconImageList;
end;

function TdlgVCLInputNumber.GetCaption: String;
begin
  Result := Self.Caption
end;

function TdlgVCLInputNumber.GetDisplayText: String;
begin
  Result := Label1.Caption
end;

function TdlgVCLInputNumber.GetNumber: Int64;
begin
  Result := AdvSpinEdit1.Value
end;

procedure TdlgVCLInputNumber.SetCaption(const Value: String);
begin
  Caption := Value;
end;

procedure TdlgVCLInputNumber.SetDisplayText(const Value: String);
begin
  Label1.Caption := Value;
end;

procedure TdlgVCLInputNumber.SetNumber(const Value: Int64);
begin
  AdvSpinEdit1.Value := Value
end;

end.
