unit Janua.Anagraph.UniGUI.frameAddressList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  // UniGui
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniPanel, uniButton,
  uniBitBtn, UniFSButton, uniLabel, uniEdit,
  // JanuaProject
  Janua.Anagraph.UniGUI.frameAnagraphHorizontal, JOrm.Anagraph.Intf;

type
  TframeUniGUIAddressList = class(TUniFrame)
    pnbButtons: TUniPanel;
    btnNewAddress: TUniFSButton;
    UniContainerPanel1: TUniContainerPanel;
    btnSearch: TUniFSButton;
    lbSearch: TUniLabel;
    edSearch: TUniEdit;
  private
    FAddresses: IAnAddresses;
    procedure SetAddresses(const Value: IAnAddresses);
    { Private declarations }
  public
    { Public declarations }
    procedure Activate;
    property Addresses: IAnAddresses read FAddresses write SetAddresses;
  end;

implementation

uses Janua.Core.Functions, Janua.Application.Framework;

{$R *.dfm}
{ TframeUniGUIAddressList }

procedure TframeUniGUIAddressList.Activate;
var
  lAddress: IAnAddress;
  y: integer;
  lFRame: TframeUniGUIAnagraphHorizontal;
begin
  if Assigned(FAddresses) and (FAddresses.RecordCount > 0) then
  begin
    FAddresses.First;
    y := pnbButtons.Height + 5;
    while not FAddresses.EOF do
    begin
      if TJanuaApplicationFactory.TryGetInterface(IAnAddress, lAddress) then
      begin
        lFRame := TframeUniGUIAnagraphHorizontal.CreateWithAddress(Self, lAddress);
        lFRame.Align := alTop;
        lFRame.AlignWithMargins := True;
        lFRame.Top := y;
        // Ts.LayoutConfig.Width := '100%';
        // Ts.LayoutConfig.Height := '100%';
        lFRame.Parent := Self;
        y := y + lFRame.Height + 1;
      end;
    end;
  end;
end;

procedure TframeUniGUIAddressList.SetAddresses(const Value: IAnAddresses);
begin
  FAddresses := Value;
end;

end.
