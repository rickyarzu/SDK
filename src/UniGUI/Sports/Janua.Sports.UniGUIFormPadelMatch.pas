unit Janua.Sports.UniGUIFormPadelMatch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Janua.Sports.PgMatches, Janua.Sports.UniGUIframePadelMatch, uniGUIFrame,
  uniGUIBaseClasses, uniLabel, uniSpinEdit, uniButton, uniBitBtn, UniFSButton, uniImageList;

type
  TfrmUniGUIPadelMatch = class(TUniForm)
    btnManageMatch: TUniFSButton;
    imglImgList: TUniNativeImageList;
    frameUniGUPadelMatch1: TframeUniGUPadelMatch;
    procedure btnManageMatchClick(Sender: TObject);
  private
    FNewRecord: Boolean;
    FDM: TdmJanuaPgSportsMatches;
    procedure SetDM(const Value: TdmJanuaPgSportsMatches);
    procedure SetNewRecord(const Value: Boolean);
    { Private declarations }
  public
    { Public declarations }
    property NewRecord: Boolean read FNewRecord write SetNewRecord;
    property DM: TdmJanuaPgSportsMatches read FDM write SetDM;

  end;

implementation

uses
  uniGUIApplication;

{$R *.dfm}
{ TfrmUniGUIPadelMatch }

procedure TfrmUniGUIPadelMatch.btnManageMatchClick(Sender: TObject);
begin
  frameUniGUPadelMatch1.Post;
  ModalResult := mrOK;
  Close;
end;

procedure TfrmUniGUIPadelMatch.SetDM(const Value: TdmJanuaPgSportsMatches);
begin
  FDM := Value;
  if Assigned(FDM) then
    frameUniGUPadelMatch1.Setup(FDM, FNewRecord);
end;

procedure TfrmUniGUIPadelMatch.SetNewRecord(const Value: Boolean);
begin
  FNewRecord := Value;
end;

end.
