unit uFrameVCLAnagraphLocations;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ComCtrls,
  // Januaproject
  uJanuaVCLFrame;

type
  TFrameVCLAnagraphLocations = class(TJanuaVCLFrameModel)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
