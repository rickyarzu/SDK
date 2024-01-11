unit Janua.Sports.UniGUIFormPadelMatches;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, uniGUIBaseClasses, uniImageList, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  uniButton, uniBitBtn, UniFSButton, uniGUIClasses, uniDBNavigator, uniBasicGrid, uniDBGrid, uniMultiItem,
  uniComboBox, uniDBComboBox, uniDBLookupComboBox, uniLabel,
  // Januaprojet
  Janua.Sports.UniGUIFormMatches, Vcl.Menus, uniMainMenu, uniMenuButton, UniSFMenuButton, UniSFButton,
  uniGridExporters, UniFSMenuButton;

type
  TfrmUniGUIPadelMatches = class(TfrmUniGUISportMatches)
    procedure btnNewMatchClick(Sender: TObject);
    procedure btnManageMatchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUniGUIPadelMatches: TfrmUniGUIPadelMatches;

implementation

uses
  uniGUIVars, Janua.UniGUI.MainModule, uniGUIApplication,
  Janua.Sports.UniGUIFormPadelMatch;

{$R *.dfm}

procedure TfrmUniGUIPadelMatches.btnManageMatchClick(Sender: TObject);
var
  lFrmMatch: TfrmUniGUIPadelMatch;
begin
  inherited;
  lFrmMatch := TfrmUniGUIPadelMatch.Create(UniApplication);
  lFrmMatch.DM := dmJanuaPgSportsMatches;
  lFrmMatch.NewRecord := False;
  lFrmMatch.ShowModal(
    procedure(Sender: TComponent; AResult: Integer)
    begin
      // lFrmMatch.Free;
    end);
end;

procedure TfrmUniGUIPadelMatches.btnNewMatchClick(Sender: TObject);
var
  lFrmMatch: TfrmUniGUIPadelMatch;
begin
  inherited;
  dmJanuaPgSportsMatches.qryMatches.Append;
  lFrmMatch := TfrmUniGUIPadelMatch.Create(UniApplication);
  lFrmMatch.DM := dmJanuaPgSportsMatches;
  lFrmMatch.NewRecord := True;
  lFrmMatch.ShowModal(
    procedure(Sender: TComponent; AResult: Integer)
    begin
      // lFrmMatch.Free;
    end);
end;

initialization

RegisterAppFormClass(TfrmUniGUIPadelMatches);

end.
