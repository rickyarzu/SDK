unit Janua.Anagraph.UniGUI.dlgSimpleAnagraph;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIFrame, uniGUIBaseClasses, uniButton, uniBitBtn, UniFSButton,
  uniLabel, uniEdit, uniImageList,
  // Januaproject
  {Janua.Anagraph.UniGUI.frameSimpleAnagraph,}
  JOrm.Anagraph.Intf, Janua.Core.Entities, uniPanel, Janua.Core.Commons, Janua.UniGUI.Controller,
  Janua.CarService.UniGUI.SimpleAnagraphController;

type
  TdlgUniGUISimpleAnagraph = class(TUniForm)
    btnOK: TUniFSButton;
    btnCancel: TUniFSButton;
    uniPanelAnagraphSimple: TUniSimplePanel;
    cntSimpleAnagraph: TUniContainerPanel;
    cntTop: TUniContainerPanel;
    UniContainerPanel01: TUniContainerPanel;
    lbProfileCompanyName: TUniLabel;
    edtProfileCompanyName: TUniEdit;
    UniContainerPanel02: TUniContainerPanel;
    lbProfileAddress: TUniLabel;
    UniContainerPanel3: TUniContainerPanel;
    edtProfileAddress: TUniEdit;
    btnSearch: TUniFSButton;
    UniContainerPanel03: TUniContainerPanel;
    lbLatLegend: TUniLabel;
    lbLongitude: TUniLabel;
    txtLatitude: TUniLabel;
    txtLongitude: TUniLabel;
    UniContainerPanel05: TUniContainerPanel;
    UniContainerPanel11: TUniContainerPanel;
    edtAddressNumber: TUniEdit;
    edAddressPlace: TUniEdit;
    UniContainerPanel12: TUniContainerPanel;
    lbAddressNumber: TUniLabel;
    lbAddressPlace: TUniLabel;
    cntBottom: TUniContainerPanel;
    UniContainerPanel09: TUniContainerPanel;
    lbEmail: TUniLabel;
    edtEMail: TUniEdit;
    UniContainerPanel08: TUniContainerPanel;
    lbCellularPhone: TUniLabel;
    edtCellularPhone: TUniEdit;
    UniContainerPanel07: TUniContainerPanel;
    lbPhone: TUniLabel;
    edtPhone: TUniEdit;
    UniContainerPanel06: TUniContainerPanel;
    UniContainerPanel5: TUniContainerPanel;
    lbAddressCode: TUniLabel;
    lbProvince: TUniLabel;
    lbTown: TUniLabel;
    UniContainerPanel6: TUniContainerPanel;
    edtAddressCode: TUniEdit;
    edtStateProvinceCode: TUniEdit;
    edtTown: TUniEdit;
    UniNativeImageList1: TUniNativeImageList;
    SimpleAnagraphController: TSimpleAnagraphController;
    procedure btnOKClick(Sender: TObject);
  public
    { frameUniGUISimpleAnagraph: TframeUniGUISimpleAnagraph; -> SimpleAnagraphController }
  private
    FAnagraph: IAnagraphView;
    FAddress: IAnAddresses;
    FRecordAddress: TJanuaRecordAddress;
    function GetAnagraph: IAnagraphView;
    procedure SetAnagraph(const Value: IAnagraphView);
    procedure SetAddress(const Value: IAnAddresses);
    procedure SetRecordAddress(const Value: TJanuaRecordAddress);
  public
    { Public declarations }
    property Anagraph: IAnagraphView read FAnagraph write SetAnagraph;
    property Address: IAnAddresses read FAddress write SetAddress;
    property RecordAddress: TJanuaRecordAddress read FRecordAddress write SetRecordAddress;
  end;

implementation

uses
  uniGUIApplication;

{$R *.dfm}

procedure TdlgUniGUISimpleAnagraph.btnOKClick(Sender: TObject);
begin
  SimpleAnagraphController.SaveAnagraph;
end;

function TdlgUniGUISimpleAnagraph.GetAnagraph: IAnagraphView;
begin
  Result := SimpleAnagraphController.Anagraph
end;

procedure TdlgUniGUISimpleAnagraph.SetAddress(const Value: IAnAddresses);
begin
  FAddress := Value;
end;

procedure TdlgUniGUISimpleAnagraph.SetAnagraph(const Value: IAnagraphView);
begin
  SimpleAnagraphController.Anagraph := Value;
end;

procedure TdlgUniGUISimpleAnagraph.SetRecordAddress(const Value: TJanuaRecordAddress);
begin
  FRecordAddress := Value;
end;

end.
