unit Janua.Sports.PadelWordpress;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, System.Generics.Collections, System.ImageList,
  Controls, Forms,
  // UniGUI
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses,
  uniImageList, uniButton, uniBitBtn, uniSpeedButton, uniPanel, uniPageControl,
  // Januaproject
  Janua.Sports.PgMatches, Janua.Carservice.UniGUI.frameCarBooking, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, unimComboBox, uniLabel, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmUNIPadelWordpressMain = class(TUniForm)
    ImgList: TUniNativeImageList;
    ulbSeasons: TUniLabel;
    ulbLeague: TUniLabel;
    fdmMatches: TFDMemTable;
    fdmMatchesseason_id: TIntegerField;
    fdmMatchesleague_id: TIntegerField;
    fdmMatchesmatchday: TSmallintField;
    cboMatchDay: TUniDBLookupComboBox;
    dsMatchDays: TDataSource;
    dsMatches: TDataSource;
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormDestroy(Sender: TObject);
  private
    { Private declarations }
    FCount: Integer;
    FdmJanuaPgSportsMatches: TdmJanuaPgSportsMatches;
    procedure SetdmJanuaPgSportsMatches(const Value: TdmJanuaPgSportsMatches);
  public
    { Public declarations }
    procedure FrameClose(Sender: TObject);
    property dmJanuaPgSportsMatches: TdmJanuaPgSportsMatches read FdmJanuaPgSportsMatches
      write SetdmJanuaPgSportsMatches;
  end;

function frmUNIPadelWordpressMain: TfrmUNIPadelWordpressMain;

implementation

{$R *.dfm}

uses
  uniGUIVars, Janua.UniGUI.MainModule, uniGUIApplication;

function frmUNIPadelWordpressMain: TfrmUNIPadelWordpressMain;
begin
  Result := TfrmUNIPadelWordpressMain(UniMainModule.GetFormInstance(TfrmUNIPadelWordpressMain));
end;

procedure TfrmUNIPadelWordpressMain.FrameClose(Sender: TObject);
begin
  // Close and destroy the Container Tabsheet

end;

procedure TfrmUNIPadelWordpressMain.SetdmJanuaPgSportsMatches(const Value: TdmJanuaPgSportsMatches);
begin
  FdmJanuaPgSportsMatches := Value;
end;

procedure TfrmUNIPadelWordpressMain.UniFormCreate(Sender: TObject);
begin
  FdmJanuaPgSportsMatches := TdmJanuaPgSportsMatches.Create(self);
  FdmJanuaPgSportsMatches.qrySeasons.Open;
  ulbSeasons.Caption := FdmJanuaPgSportsMatches.qrySeasonsseason_des.AsString;
  FdmJanuaPgSportsMatches.qryChampionships.Open;
  ulbLeague.Caption := FdmJanuaPgSportsMatches.qryChampionshipsleague_name.AsString;
  fdmMatches.Open;
  fdmMatches.Append;
  fdmMatchesseason_id.AsInteger :=  FdmJanuaPgSportsMatches.qrySeasonsid.AsInteger;
  fdmMatchesleague_id.AsInteger :=  FdmJanuaPgSportsMatches.qryChampionshipsleague_id.AsInteger;
  fdmMatches.Post;
  dsMatchDays.DataSet := FdmJanuaPgSportsMatches.qryMatchDays;
  FdmJanuaPgSportsMatches.qryMatchDays.Open;
  ShowMessage(FdmJanuaPgSportsMatches.qryMatchDays.RecordCount.ToString);
end;

procedure TfrmUNIPadelWordpressMain.UniFormDestroy(Sender: TObject);
begin
  if Assigned(FdmJanuaPgSportsMatches) then
    FreeAndNil(FdmJanuaPgSportsMatches);
end;

initialization



end.
