unit UBarcodeDemo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  CloudImage, StdCtrls, CloudBase, CloudBarcode, Controls, Forms,
  Vcl.Samples.Spin, Dialogs, TypInfo, CloudCustomBarcode, Vcl.ExtCtrls;

type
  TForm7 = class(TForm)
    Edit1: TEdit;
    cbCodeType: TComboBox;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    gbBarcode: TGroupBox;
    cbShowText: TCheckBox;
    gbQRcode: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edWidth: TEdit;
    edHeight: TEdit;
    cbSize: TComboBox;
    AdvBarcode1: TAdvBarcode;
    SaveDialog1: TSaveDialog;
    Panel1: TPanel;
    AdvCloudImage1: TAdvCloudImage;
    Button2: TButton;
    cbType: TComboBox;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure cbCodeTypeChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure InitOptions;
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
var
  bctype: TBarcodeType;
begin
  if Edit1.Text = '' then
  begin
    ShowMessage('Please enter a value first');
    exit;
  end;

  if cbCodeType.ItemIndex = 0 then
  begin
    case cbType.ItemIndex of
      1: bctype := btC128a;
      2: bctype := btC128b;
      3: bctype := btC128c;
      4: bctype := bti2of5;
    else
      bctype := btC39;
    end;

    AdvBarcode1.BarcodeOptions.ShowText := cbShowText.Checked;
    AdvBarcode1.BarcodeOptions.Width := StrToInt(edWidth.Text);
    AdvBarcode1.BarcodeOptions.Height := StrToInt(edHeight.Text);

    AdvCloudImage1.Width := AdvBarcode1.BarcodeOptions.Width;
    AdvCloudImage1.Height := AdvBarcode1.BarcodeOptions.Height;
    AdvCloudImage1.URL := AdvBarcode1.GetBarcodeURL(Edit1.Text, bctype);
  end
  else
  begin
    case cbSize.ItemIndex of
      0: AdvBarcode1.QRcodeOptions.Size := qs42;
      1: AdvBarcode1.QRcodeOptions.Size := qs105;
      2: AdvBarcode1.QRcodeOptions.Size := qs210;
    end;

    AdvCloudImage1.Width := StrToInt(StringReplace(GetEnumName(TypeInfo(TQRcodeSize),
      Ord(AdvBarcode1.QRcodeOptions.Size)), 'qs', '', []));
    AdvCloudImage1.Height := AdvCloudImage1.Width;
    AdvCloudImage1.URL := AdvBarcode1.GetQRCodeURL(Edit1.Text);
  end;
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
  SaveDialog1.FileName := 'barcode' + Edit1.Text + '.png';
  if SaveDialog1.Execute then
    AdvCloudImage1.WebPicture.SaveToFile(SaveDialog1.FileName);
end;

procedure TForm7.cbCodeTypeChange(Sender: TObject);
begin
  InitOptions;
end;

procedure TForm7.FormCreate(Sender: TObject);
begin
  InitOptions;
end;

procedure TForm7.InitOptions;
begin
  if cbCodeType.ItemIndex = 0 then
  begin
    cbType.Enabled := true;
    edWidth.Enabled := true;
    edHeight.Enabled := true;
    cbShowText.Enabled := true;
    cbSize.Enabled := false;
  end
  else
  begin
    cbType.Enabled := false;
    edWidth.Enabled := false;
    edHeight.Enabled := false;
    cbShowText.Enabled := false;
    cbSize.Enabled := true;
  end;
end;

end.
