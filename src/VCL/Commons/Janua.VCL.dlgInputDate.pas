unit Janua.VCL.dlgInputDate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes,
  VCL.Forms, VCL.Controls, VCL.Mask, VCL.ComCtrls, SVGIconImage,
  VCL.StdCtrls, VCL.Dialogs, VCL.Graphics,
  uJanuaVCLForm, Janua.Controls.Dialogs.Intf, udmSVGImageList;

type
  TdlgTMSInputDate = class(TJanuaVCLFormModel, IDlgInputDateForm)
    Label1: TLabel;
    btnOk: TButton;
    AdvGlowButton2: TButton;
    PlannerMaskDatePicker1: TDateTimePicker;
    SVGIconImage1: TSVGIconImage;
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
    property Caption: string read GetJCaption write SetJCaption;
    property InputText: string read GetInputText write SetInputText;
  end;

var
  dlgTMSInputDate: TdlgTMSInputDate;

implementation

uses Janua.Application.Framework, Janua.VCL.Framework, SVGIconImageList;

{$R *.dfm}

procedure TdlgTMSInputDate.AdvGlowButton1Click(Sender: TObject);
begin
  Tag := mrCancel;
  Close;
end;

procedure TdlgTMSInputDate.AdvSpinEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = 13 then
  begin
    ModalResult := 1;
    btnOk.SetFocus;
  end;
end;

procedure TdlgTMSInputDate.btnOkClick(Sender: TObject);
begin
  btnOk.SetFocus;
  Tag := mrOk;
  Close;
end;

procedure TdlgTMSInputDate.FormCreate(Sender: TObject);
begin
  inherited;
  SVGIconImage1.ImageList := TJanuaVCLApplication.ImgListVCLIcons16 as TSVGIconImageList;
end;

procedure TdlgTMSInputDate.FormShow(Sender: TObject);
begin
  PlannerMaskDatePicker1.SetFocus;
end;

function TdlgTMSInputDate.GetJCaption: string;
begin
  Result := Caption
end;

function TdlgTMSInputDate.GetDate: TDateTime;
begin
  Result := PlannerMaskDatePicker1.Date
end;

function TdlgTMSInputDate.GetInputText: string;
begin
  Result := Label1.Caption
end;

procedure TdlgTMSInputDate.PlannerMaskDatePicker1KeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = 13 then
    btnOkClick(btnOk);
end;

procedure TdlgTMSInputDate.SetJCaption(const Value: string);
begin
  Caption := Value;
end;

procedure TdlgTMSInputDate.SetDate(const Value: TDateTime);
begin
  PlannerMaskDatePicker1.Date := Value;
end;

procedure TdlgTMSInputDate.SetInputText(const Value: string);
begin
  Label1.Caption := Value;
end;

end.
