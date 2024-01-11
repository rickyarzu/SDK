unit Janua.VCL.frameCRDBGrid;

interface

uses
  Classes, SysUtils, Windows, Menus, ImgList, StdCtrls, ComCtrls, Buttons, ExtCtrls,
  // VCL
  Graphics, Controls, Forms, Dialogs, DBCtrls, Grids, DBGrids, UniDacVcl,
{$IFNDEF VER130}
  Variants,
{$ENDIF}
  DB, DBAccess, Uni, uJanuaVCLFrame, DAScript, UniScript, ActnList, MemDS, CRGrid, System.Actions,
  Janua.VCL.EnhCRDBGrid;

type
  TframeVCLCRDBGrid = class(TJanuaVCLFrameModel)
    UniDataSource: TUniDataSource;
    CRDBGrid: TEnhCRDBGrid;
    ActionList1: TActionList;
    actSearchBar: TAction;
    actFilterBar: TAction;
    Panel1: TPanel;
    Panel3: TPanel;
    btOpen: TSpeedButton;
    btClose: TSpeedButton;
    DBNavigator1: TDBNavigator;
    chkFiltered: TCheckBox;
    chkFilterBar: TCheckBox;
    chkSearchBar: TCheckBox;
    chkRecCount: TCheckBox;
    chkStretch: TCheckBox;
    Panel2: TPanel;
    procedure btOpenClick(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure actSearchBarExecute(Sender: TObject);
    procedure actSearchBarUpdate(Sender: TObject);
    procedure actFilterBarExecute(Sender: TObject);
    procedure actFilterBarUpdate(Sender: TObject);
    procedure chkFilteredClick(Sender: TObject);
    procedure chkRecCountClick(Sender: TObject);
    procedure chkStretchClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure SetDebug(Value: boolean);
    procedure Initialize; override;
  end;

implementation

{$IFNDEF FPC}
{$IFDEF CLR}
{$R *.nfm}
{$ELSE}
{$R *.dfm}
{$ENDIF}
{$ENDIF}

procedure TframeVCLCRDBGrid.btOpenClick(Sender: TObject);
begin
  UniDataSource.DataSet.Open;
end;

procedure TframeVCLCRDBGrid.SetDebug(Value: boolean);
begin
  TUniQuery(UniDataSource.DataSet).Debug := Value;
end;

procedure TframeVCLCRDBGrid.Initialize;
begin
  inherited
end;

procedure TframeVCLCRDBGrid.btCloseClick(Sender: TObject);
begin
  UniDataSource.DataSet.Close;
end;

procedure TframeVCLCRDBGrid.actSearchBarExecute(Sender: TObject);
begin
  actSearchBar.Checked := not actSearchBar.Checked;
  if actSearchBar.Checked then
    CRDBGrid.OptionsEx := CRDBGrid.OptionsEx + [dgeSearchBar]
  else
    CRDBGrid.OptionsEx := CRDBGrid.OptionsEx - [dgeSearchBar];
end;

procedure TframeVCLCRDBGrid.actSearchBarUpdate(Sender: TObject);
begin
  actSearchBar.Checked := dgeSearchBar in CRDBGrid.OptionsEx;
end;

procedure TframeVCLCRDBGrid.actFilterBarExecute(Sender: TObject);
begin
  actFilterBar.Checked := not actFilterBar.Checked;
  if actFilterBar.Checked then
    CRDBGrid.OptionsEx := CRDBGrid.OptionsEx + [dgeFilterBar]
  else
    CRDBGrid.OptionsEx := CRDBGrid.OptionsEx - [dgeFilterBar];
end;

procedure TframeVCLCRDBGrid.actFilterBarUpdate(Sender: TObject);
begin
  actFilterBar.Checked := dgeFilterBar in CRDBGrid.OptionsEx;
end;

procedure TframeVCLCRDBGrid.chkFilteredClick(Sender: TObject);
begin
  CRDBGrid.Filtered := chkFiltered.Checked;
end;

procedure TframeVCLCRDBGrid.chkRecCountClick(Sender: TObject);
begin
  if chkRecCount.Checked then
    CRDBGrid.OptionsEx := CRDBGrid.OptionsEx + [dgeRecordCount]
  else
    CRDBGrid.OptionsEx := CRDBGrid.OptionsEx - [dgeRecordCount];
end;

procedure TframeVCLCRDBGrid.chkStretchClick(Sender: TObject);
begin
  if chkStretch.Checked then
    CRDBGrid.OptionsEx := CRDBGrid.OptionsEx + [dgeStretch]
  else
    CRDBGrid.OptionsEx := CRDBGrid.OptionsEx - [dgeStretch];
end;

end.
