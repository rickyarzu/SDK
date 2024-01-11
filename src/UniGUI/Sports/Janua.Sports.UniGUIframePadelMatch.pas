unit Janua.Sports.UniGUIframePadelMatch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, Data.DB, uniGUIBaseClasses, uniMultiItem, uniComboBox, uniDBComboBox,
  uniDBLookupComboBox, uniLabel,
  // Januaproject
  Janua.Sports.PgMatches, uniBasicGrid, uniDBGrid, uniSpinEdit, uniGroupBox, uniEdit, uniDBEdit, uniButton,
  uniBitBtn, UniFSButton, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  uniDateTimePicker, uniDBDateTimePicker, unimDBDatePicker, uniCalendar, uniDBText;

type
  TSet = record
  private
    FScoreB: TUniSpinEdit;
    FScoreA: TUniSpinEdit;
    FScoreResultB: SmallInt;
    FScoreResultA: SmallInt;
    procedure SetScoreA(const Value: TUniSpinEdit);
    procedure SetScoreB(const Value: TUniSpinEdit);
    procedure SetScoreResultA(const Value: SmallInt);
    procedure SetScoreResultB(const Value: SmallInt);
  public
    procedure SetScore;
    property ScoreA: TUniSpinEdit read FScoreA write SetScoreA;
    property ScoreB: TUniSpinEdit read FScoreB write SetScoreB;
    property ScoreResultA: SmallInt read FScoreResultA write SetScoreResultA;
    property ScoreResultB: SmallInt read FScoreResultB write SetScoreResultB;
  end;

  TSetArray = array [0 .. 2] of TSet;

type
  TframeUniGUPadelMatch = class(TUniFrame)
    dsMatches: TDataSource;
    cboHome: TUniDBLookupComboBox;
    cboVisitors: TUniDBLookupComboBox;
    ulbLeague: TUniLabel;
    dsChampionshipsTeams: TDataSource;
    dsHomePlayers: TDataSource;
    dsVisitorsPlayers: TDataSource;
    lbSet: TUniLabel;
    lbPlayerA: TUniLabel;
    lbPlayerB: TUniLabel;
    lbTeamA: TUniLabel;
    lbTeamB: TUniLabel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniGroupBox1: TUniGroupBox;
    SetA1: TUniSpinEdit;
    SetB1: TUniSpinEdit;
    UniGroupBox2: TUniGroupBox;
    SetA2: TUniSpinEdit;
    SetB2: TUniSpinEdit;
    UniGroupBox3: TUniGroupBox;
    SetA3: TUniSpinEdit;
    SetB3: TUniSpinEdit;
    UniGroupBox4: TUniGroupBox;
    UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit2: TUniDBFormattedNumberEdit;
    btnConf: TUniFSButton;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    dslocal: TDataSource;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    UniDBLookupComboBox4: TUniDBLookupComboBox;
    dlgMatchDate: TUniCalendarDialog;
    memMatch: TFDMemTable;
    FDMemTable1home1: TIntegerField;
    FDMemTable1home2: TIntegerField;
    FDMemTable1visi1: TIntegerField;
    FDMemTable1visi2: TIntegerField;
    dbtMatchDate: TUniDBText;
    procedure UniFrameCreate(Sender: TObject);
    procedure cboHomeCloseUp(Sender: TObject);
    procedure cboVisitorsCloseUp(Sender: TObject);
    procedure btnConfClick(Sender: TObject);
  private
    { Private declarations }
    FSCores: TSetArray;
    FDM: TdmJanuaPgSportsMatches;
    FInsert: Boolean;
  public
    { Public declarations }
    procedure Setup(const vFDM: TdmJanuaPgSportsMatches; aInsert: Boolean);
    procedure Post;
  end;

implementation

uses Spring;

{$R *.dfm}
{ TframeUniGUISportMatch }

procedure TframeUniGUPadelMatch.btnConfClick(Sender: TObject);
var
  SetA: Byte;
  SetB: Byte;
  I: Integer;
  procedure SaveScore;
  begin
    if (FSCores[I].FScoreB.Value > 0) or (FSCores[I].FScoreA.Value > 0) then
      try
        FDM.qrySets.Edit;
        FDM.qrySetsscore_visitors.AsInteger := FSCores[I].FScoreB.Value;
        FDM.qrySetsscore_home.AsInteger := FSCores[I].FScoreA.Value;
        FSCores[I].SetScore;
        SetA := SetA + FSCores[I].ScoreResultA;
        SetB := SetB + FSCores[I].ScoreResultB;
        FDM.PostDataset(FDM.qrySets);
      except
        on e: exception do
          FDM.qrySets.Cancel;
      end;
  end;

begin
  SetA := 0;
  SetB := 0;
  FDM.qrySets.Close;
  FDM.qrySets.Open;

  if FDM.qrySets.RecordCount = 0 then
    for I := 0 to 2 do
    begin
      FDM.qrySets.Append;
      FDM.qrySetsNumber.AsInteger := I + 1;
      SaveScore;
    end
  else if FDM.qrySets.RecordCount > 0 then
  begin
    FDM.qrySets.First;
    I := 0;
    while not FDM.qrySets.Eof and (I < 3) do
    begin
      SaveScore;
      Inc(I);
      FDM.qrySets.Next;
    end;
  end;

  if (FDM.qryMatchesscore_home.Value <> SetA) or (FDM.qryMatchesscore_visitor.Value <> SetB) then
  begin
    FDM.qryMatches.Edit;
    FDM.qryMatchesscore_home.Value := SetA;
    FDM.qryMatchesscore_visitor.Value := SetB;
    FDM.qryMatchesConfirmed.AsBoolean := True;
    FDM.PostDataset(FDM.qryMatches);
  end;

end;

procedure TframeUniGUPadelMatch.cboHomeCloseUp(Sender: TObject);
begin
  FDM.PostMatches;
end;

procedure TframeUniGUPadelMatch.cboVisitorsCloseUp(Sender: TObject);
begin
  FDM.PostMatches;
  if (FDM.qryMatchesid.AsInteger <> 0) then
  begin
    if FDM.qrySets.RecordCount = 0 then
    begin
      FDM.qrySets.Close;
      FDM.qrySets.Open;
    end;
  end;
end;

procedure TframeUniGUPadelMatch.Post;
  procedure Add(const aDataset: TDataset; const aField: TField);
  begin
    if aField.AsInteger > 0 then
      if not aDataset.Locate('player_id', aField.AsInteger, []) then
      begin
        try
          aDataset.Insert;
          aDataset.FieldBYName('player_id').AsInteger := aField.AsInteger;
          FDM.PostDataset(aDataset);
        except
          on e: exception do
            aDataset.Cancel;
        end;
      end;
  end;

begin
  FDM.PostMatches;
  if FDM.qryMatchesid.AsInteger = 0 then
    FDM.qryMatches.RefreshRecord;

  btnConfClick(self);

  (*
    if FDM.qryMatchesMatch_Date.IsNull then
    begin
    if dlgMatchDate.Execute then
    begin
    FDM.qryMatches.Edit;
    FDM.qryMatchesMatch_Date.AsDateTime := dlgMatchDate.Date;
    FDM.PostDataset(FDM.qryMatches);
    end;
    end;
  *)

  if FDMemTable1home1.AsInteger > 0 then
    Add(FDM.qryHomePlayers, FDMemTable1home1);
  if FDMemTable1home2.AsInteger > 0 then
    Add(FDM.qryHomePlayers, FDMemTable1home2);

  if FDMemTable1visi1.AsInteger > 0 then
    Add(FDM.qryVisitorsPlayers, FDMemTable1visi1);
  if FDMemTable1visi2.AsInteger > 0 then
    Add(FDM.qryVisitorsPlayers, FDMemTable1visi2);

end;

procedure TframeUniGUPadelMatch.Setup(const vFDM: TdmJanuaPgSportsMatches; aInsert: Boolean);
begin
  FDM := vFDM;
  FInsert := aInsert;
  if Assigned(FDM) then
  begin
    FDM.Editing := True;
    dsMatches.DataSet := FDM.qryMatches;
    if not FDM.qryMatches.Active then
      dsMatches.DataSet.Open;
    dsVisitorsPlayers.DataSet := FDM.lkpVisitorsPlayers;
    dsVisitorsPlayers.DataSet.Open;
    dsHomePlayers.DataSet := FDM.lkpHomePlayers;
    dsHomePlayers.DataSet.Open;
    if FInsert then
      for var I := 0 to 2 do
      begin
        FSCores[I].FScoreB.Value := 0;
        FSCores[I].FScoreA.Value := 0;
      end
    else if FDM.qrySets.RecordCount > 0 then
    begin
      FDM.qrySets.First;
      var
      J := 0;
      while not FDM.qrySets.Eof and (J < 3) do
      begin
        FSCores[J].FScoreB.Value := FDM.qrySetsscore_visitors.AsInteger;
        FSCores[J].FScoreA.Value := FDM.qrySetsscore_home.AsInteger;
        Inc(J);
        FDM.qrySets.Next;
      end;
    end;
  end;

  if FDM.qryHomePlayers.RecordCount > 0 then
  begin
    FDM.qryHomePlayers.First;
    memMatch.Edit;
    FDMemTable1home1.AsInteger := FDM.qryHomePlayersplayer_id.AsInteger;
    memMatch.Post;
    if FDM.qryHomePlayers.RecordCount > 1 then
    begin
      FDM.qryHomePlayers.Next;
      memMatch.Edit;
      FDMemTable1home2.AsInteger := FDM.qryHomePlayersplayer_id.AsInteger;
      memMatch.Post;
    end;
  end;

  if FDM.qryVisitorsPlayers.RecordCount > 0 then
  begin
    FDM.qryVisitorsPlayers.First;
    memMatch.Edit;
    FDMemTable1visi1.AsInteger := FDM.qryVisitorsPlayersplayer_id.AsInteger;
    memMatch.Post;
    if FDM.qryVisitorsPlayers.RecordCount > 1 then
    begin
      FDM.qryVisitorsPlayers.Next;
      memMatch.Edit;
      FDMemTable1visi2.AsInteger := FDM.qryVisitorsPlayersplayer_id.AsInteger;
      memMatch.Post;
    end;
  end;

end;

{ TSet }

procedure TSet.SetScoreA(const Value: TUniSpinEdit);
begin
  FScoreA := Value
end;

procedure TSet.SetScoreB(const Value: TUniSpinEdit);
begin
  FScoreB := Value
end;

procedure TSet.SetScoreResultA(const Value: SmallInt);
begin
  FScoreResultA := Value;
end;

procedure TSet.SetScoreResultB(const Value: SmallInt);
begin
  FScoreResultB := Value;
end;

procedure TSet.SetScore;
begin
  FScoreResultA := 0;
  FScoreResultB := 0;

  if FScoreB.Value > FScoreA.Value then
    FScoreResultB := 1
  else
    FScoreResultA := 1;
end;

procedure TframeUniGUPadelMatch.UniFrameCreate(Sender: TObject);
begin
  FSCores[0].FScoreB := self.SetB1;
  FSCores[0].FScoreA := self.SetA1;

  FSCores[1].FScoreB := self.SetB2;
  FSCores[1].FScoreA := self.SetA2;

  FSCores[2].FScoreB := self.SetB3;
  FSCores[2].FScoreA := self.SetA3;
end;

end.
