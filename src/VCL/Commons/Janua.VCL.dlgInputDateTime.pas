unit Janua.VCL.dlgInputDateTime;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs,
  uJanuaVCLForm, Janua.Controls.Dialogs.Intf, udmSVGImageList, VCL.ComCtrls, VCL.StdCtrls, SVGIconImage;

type
  TdlgVCLInputDateTime = class(TJanuaVCLFormModel, IDlgInputDateForm)
    SVGIconImage1: TSVGIconImage;
    Label1: TLabel;
    btnOk: TButton;
    AdvGlowButton2: TButton;
    DateTimePicker1: TDateTimePicker;
    procedure AdvSpinEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure PlannerMaskDatePicker1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  protected
    function GetDate: TDateTime;
    function GetJCaption: string;
    function GetInputText: string;
    procedure SetDate(const Value: TDateTime);
    procedure SetJCaption(const Value: string);
    procedure SetInputText(const Value: string);
    { Private declarations }
  public
    { Public declarations }
  published
    property Date: TDateTime read GetDate write SetDate;
    property FormCaption: string read GetJCaption write SetJCaption;
    property InputText: string read GetInputText write SetInputText;
  end;

var
  dlgVCLInputDateTime: TdlgVCLInputDateTime;

implementation

uses Janua.Application.Framework, Janua.VCL.Framework, SVGIconImageList;

{$R *.dfm}
{ TdlgVCLInputDateTime }

procedure TdlgVCLInputDateTime.AdvGlowButton1Click(Sender: TObject);
begin
  Tag := mrCancel;
  Close;
end;

procedure TdlgVCLInputDateTime.AdvSpinEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = 13 then
  begin
    ModalResult := 1;
    btnOk.SetFocus;
  end;
end;

procedure TdlgVCLInputDateTime.btnOkClick(Sender: TObject);
begin
  btnOk.SetFocus;
  Tag := mrOk;
  Close;
end;

procedure TdlgVCLInputDateTime.FormCreate(Sender: TObject);
begin
  SVGIconImage1.ImageList := TJanuaVCLApplication.ImgListVCLIcons16 as TSVGIconImageList;
end;

procedure TdlgVCLInputDateTime.FormShow(Sender: TObject);
begin
  DateTimePicker1.SetFocus;
end;

function TdlgVCLInputDateTime.GetDate: TDateTime;
begin
  Result := DateTimePicker1.DateTime
end;

function TdlgVCLInputDateTime.GetInputText: string;
begin
  Result := Label1.Caption
end;

function TdlgVCLInputDateTime.GetJCaption: string;
begin
  Result := self.Caption
end;

procedure TdlgVCLInputDateTime.PlannerMaskDatePicker1KeyPress(Sender: TObject; var Key: Char);
begin
  AdvSpinEdit1KeyPress(Sender, Key);
end;

procedure TdlgVCLInputDateTime.SetDate(const Value: TDateTime);
begin
  DateTimePicker1.DateTime := Value
end;

procedure TdlgVCLInputDateTime.SetInputText(const Value: string);
begin
  Label1.Caption := Value;
end;

procedure TdlgVCLInputDateTime.SetJCaption(const Value: string);
begin
  if self.Caption <> Value then
    self.Caption := Value;
end;

end.
