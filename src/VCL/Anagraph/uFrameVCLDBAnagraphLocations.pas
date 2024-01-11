unit uFrameVCLDBAnagraphLocations;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ComCtrls,
  // Januaproject
  Janua.Vcl.Interposers, uJanuaVCLFrame,   JOrm.Anagraph.Intf,   Janua.Bindings.Intf,
  Janua.Controls.Forms.Intf, Janua.Controls.Intf, Janua.Core.Types, Janua.Core.Classes.Intf,
  Data.DB;

type
  TFrameVCLDBAnagraphLocations = class(TJanuaVCLFrameModel, IJanuaContainer, IJanuaBindable)
    lbCompanyName: TLabel;
    edCompanyName: TEdit;
    grpBillingAddress: TGroupBox;
    lbStreetAddress: TLabel;
    lbPostalCode: TLabel;
    lbTown: TLabel;
    lbStateProvince: TLabel;
    lbNumber: TLabel;
    edCompanyAddress: TEdit;
    edPostalCode: TEdit;
    edTown: TEdit;
    edStateProvince: TEdit;
    edAddressNumber: TEdit;
    edGoogleSearchAddress: TEdit;
    ToolBar1: TToolBar;
    ListView1: TListView;
    dsAnagraph: TDataSource;
  private
    FAnagraphRecord: IAnagraph;
    procedure SetAnagraphRecord(const Value: IAnagraph);
    { Private declarations }
  public
    { Public declarations }
    procedure Initialize;  override;
  public
    property AnagraphRecord: IAnagraph read FAnagraphRecord write SetAnagraphRecord;
  end;

implementation

{$R *.dfm}

{ TFrameVCLDBAnagraphLocations }



procedure TFrameVCLDBAnagraphLocations.Initialize;
begin
  inherited;

end;

procedure TFrameVCLDBAnagraphLocations.SetAnagraphRecord(const Value: IAnagraph);
begin
  FAnagraphRecord := Value;
end;



end.
