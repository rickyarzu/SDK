// Drag & Drop = Grids
unit GridsDragDrop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, DB, DBClient, uniLabel,
  uniStatusBar, uniButton, uniBitBtn, uniGUIBaseClasses, uniBasicGrid,
  uniDBGrid;

type
  TUniGridsDragDrop = class(TUniFrame)
    UniDBGrid1: TUniDBGrid;
    UniDBGrid2: TUniDBGrid;
    UniBitBtn3: TUniBitBtn;
    UniStatusBar1: TUniStatusBar;
    UniLabel1: TUniLabel;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ClientDataSet2: TClientDataSet;
    procedure UniDBGrid1SelectionChange(Sender: TObject);
    procedure UniBitBtn3Click(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, uniGUIForm;


procedure TUniGridsDragDrop.UniBitBtn3Click(Sender: TObject);
begin
  ClientDataSet2.EmptyDataSet;
end;

procedure TUniGridsDragDrop.UniDBGrid1SelectionChange(Sender: TObject);
begin
  UniStatusBar1.Panels[0].Text := 'Selected: ' + IntToStr(UniDBGrid1.SelectedRows.Count);
end;

procedure TUniGridsDragDrop.UniFrameCreate(Sender: TObject);
begin
  UniMainModule.LoadClientFromStream(ClientDataSet1,'biolife.cds');
  (OwnerForm as TUniForm).ActiveControl := UniDBGrid1;
end;

initialization
  RegisterClass(TUniGridsDragDrop);

end.
