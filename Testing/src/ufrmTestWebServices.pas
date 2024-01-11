unit ufrmTestWebServices;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, AdvMemo, advmjson;

type
  TfrmTestBookingJson = class(TForm)
    PageControl1: TPageControl;
    tabTestSearch: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    PageControl2: TPageControl;
    tabListService: TTabSheet;
    tabListGoogleSuggestions: TTabSheet;
    TabSheet7: TTabSheet;
    PageControl3: TPageControl;
    tabListIntitutes: TTabSheet;
    TabSheet6: TTabSheet;
    Panel1: TPanel;
    edService: TLabeledEdit;
    edAddress: TLabeledEdit;
    edInsitute1: TLabeledEdit;
    edInsitute2: TLabeledEdit;
    edInsitute3: TLabeledEdit;
    CheckBox1: TCheckBox;
    LabeledEdit5: TLabeledEdit;
    Button1: TButton;
    memBooking: TAdvMemo;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTestBookingJson: TfrmTestBookingJson;

implementation

{$R *.dfm}

uses udmDico33Server;

procedure TfrmTestBookingJson.Button1Click(Sender: TObject);
begin
  udmDico33Server.dmDico33Server.JanuaHealthPgWebController1.service_id := StrToInt(edService.Text);
  udmDico33Server.dmDico33Server.JanuaHealthPgWebController1.address := self.edAddress.Text;
  udmDico33Server.dmDico33Server.JanuaHealthPgWebController1.Institute1 := StrToInt(edInsitute1.Text);
  udmDico33Server.dmDico33Server.JanuaHealthPgWebController1.Institute2 := StrToInt(edInsitute2.Text);
  udmDico33Server.dmDico33Server.JanuaHealthPgWebController1.Institute3 := StrToInt(edInsitute3.Text);
  udmDico33Server.dmDico33Server.JanuaHealthPgWebController1.ActionBooking;
  self.memBooking.Lines.Text := udmDico33Server.dmDico33Server.JanuaHealthPgWebController1.JsonResponse;

end;

end.
