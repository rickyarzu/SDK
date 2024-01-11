unit ufrmMDIModel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Generics.Collections, ufrmMDCModel, AdvOfficePager,
  AdvOfficePagerStylers, AdvOfficeTabSet, AdvOfficeTabSetStylers, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvAppStyler;

type
  TfrmMDIModel = class(TForm)
    AdvOfficeTabSetOfficeStyler1: TAdvOfficeTabSetOfficeStyler;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    AdvFormStyler1: TAdvFormStyler;
    AdvAppStyler1: TAdvAppStyler;
  private
    { Private declarations }
    Dictionary: TDictionary<String, ufrmMDCModel.TfrmMDCModel>;
    FSelectedForm: ufrmMDCModel.TfrmMDCModel;
    procedure SetSelectedForm(const Value: ufrmMDCModel.TfrmMDCModel);
  public
    { Public declarations }
    function Find(aFormName: string): boolean;
    procedure Add(aForm: ufrmMDCModel.TfrmMDCModel);
  public
    property SelectedForm:ufrmMDCModel.TfrmMDCModel read FSelectedForm write SetSelectedForm;
  end;

var
  frmMDIModel: TfrmMDIModel;

implementation

{$R *.dfm}
{ TfrmMDIModel }

procedure TfrmMDIModel.Add(aForm: ufrmMDCModel.TfrmMDCModel);
begin
  // This procedure Adds a new Form to the List and open it at top of the project.
end;

function TfrmMDIModel.Find(aFormName: string): boolean;
begin
  // If a Form is already present returns True and set Selected Form.
end;

procedure TfrmMDIModel.SetSelectedForm(const Value: ufrmMDCModel.TfrmMDCModel);
begin
  FSelectedForm := Value;
end;

end.
