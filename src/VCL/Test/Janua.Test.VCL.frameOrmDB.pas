unit Janua.Test.VCL.frameOrmDB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, Data.DB,

  // Jnaua
  Janua.ViewModels.Intf, Janua.ViewModels.Templates, Janua.Test.ViewModel.Intf, Janua.Orm.Intf,
  Janua.Orm.Test.Intf, Janua.Core.Classes, VCL.StdCtrls, VCL.ExtCtrls, VCL.DBCtrls, VCL.Grids,
  VCL.DBGrids, CRGrid, Janua.VCL.EnhCRDBGrid,
  // Interposers
  Janua.VCL.Interposers, Janua.TMS.Interposers, Janua.Test.VCL.frameBindTestOrm;

type
  TframeTestOrmDB = class(TFrame)
    DBNavigator1: TDBNavigator;
    btnStartOrmdbTest: TButton;
    EnhCRDBGrid1: TEnhCRDBGrid;
    EnhCRDBGrid2: TEnhCRDBGrid;
    DBNavigator2: TDBNavigator;
    btnSetupRecord: TButton;
    btnSave: TButton;
    frameBindTestOrm1: TframeBindTestOrm;
    procedure btnSaveClick(Sender: TObject);
    procedure btnStartOrmdbTestClick(Sender: TObject);
    procedure btnSetupRecordClick(Sender: TObject);
    procedure frameBindTestOrm1btnSaveClick(Sender: TObject);
    procedure frameBindTestOrm1btnUndoClick(Sender: TObject);
    procedure frameBindTestOrm1Button1Click(Sender: TObject);
  private
    { Private declarations }
    FDM: IJanuaTestDataModule;
    FCurrentRecord: IJanuaTestNestedRecord;
  public
    { Public declarations }
  end;


implementation

uses Spring, Janua.Application.Framework, Janua.Core.Functions, Janua.Core.Types, Janua.Orm.Impl,
  Janua.Orm.Types;

{$R *.dfm}

procedure TframeTestOrmDB.btnSaveClick(Sender: TObject);
begin
  FCurrentRecord.SaveToDataset(False);
end;

procedure TframeTestOrmDB.btnSetupRecordClick(Sender: TObject);
begin
  (*
    Il Current Record Viene gestito dal Model ed è visibile nel ViewModel per questo Test viene caricato
    direttamente dal Master e dai Detail.
    Nota in questo caso il 'Detail' è uno solo ma potrebbero esserci molte tabelle di dettaglio ed alcune
    tabelle di sub dettaglio che compongono la struttura di un Oggetto. E qui la domanda: in che ordine metto
    le tabelle e le sotto-tabelle? Semplicemente ognuna è 'identificata' da un parametro o da una stringa.
    Nota: le tabelle 'standard' sono registrate con un enumeratore. I Recordset contengono il medesimo
    enumeratore come property. Tuttavia sostituirle con una stringa semplice (schema.tabella) non è una pessima
    idea. Ogni DataSet (quindi query tabella procedura ecc che arriva da un db locale o remoto) contine un
    array di Tabelle fisiche a cui si riferisce (ad esempio la query 'sessione' è la join delle tabelle
    session, user e user_profile quindi la proprietà che indica le tabelle è un array (di param per ora).
  *)
  try
    FCurrentRecord.LoadFromDataset(FDM.jdsTestMaster, [FDM.jdsTestDetail]);
    frameBindTestOrm1.TestNestedRecord := FCurrentRecord;
  except
    on e: Exception do
      RaiseException('btnSetupRecordClick', e, Self);
  end;
end;

procedure TframeTestOrmDB.btnStartOrmdbTestClick(Sender: TObject);
begin
  // Current Record va Creato immediatamente prima di 'collegare' i Dataset:
  // FCurrentRecord: IJanuaTestNestedRecord;
  if not TJanuaApplicationFactory.TryGetInterface(IJanuaTestDataModule, FDM) then
    raise Exception.Create('IJanuaTestDataModule not set');

  // Current Record va Creato immediatamente prima di 'collegare' i Dataset:
  // FCurrentRecord: IJanuaTestNestedRecord;
  if not TJanuaOrmFactory.TryGetRecordIntf(IJanuaTestNestedRecord, FCurrentRecord, 'TestMaster', TestMaster)
  then
    raise Exception.Create('IJanuaTestNestedRecord not set');

  Self.DBNavigator1.DataSource := FDM.jdsTestMaster.DataSource;
  Self.EnhCRDBGrid1.DataSource := FDM.jdsTestMaster.DataSource;

  Self.DBNavigator2.DataSource := FDM.jdsTestDetail.DataSource;
  Self.EnhCRDBGrid2.DataSource := FDM.jdsTestDetail.DataSource;

  btnSetupRecord.Enabled := True;

end;

procedure TframeTestOrmDB.frameBindTestOrm1btnSaveClick(Sender: TObject);
begin
  FCurrentRecord.SaveToDataset(True);

end;

procedure TframeTestOrmDB.frameBindTestOrm1btnUndoClick(Sender: TObject);
begin
  frameBindTestOrm1.btnUndoClick(Sender);

end;

procedure TframeTestOrmDB.frameBindTestOrm1Button1Click(Sender: TObject);
begin
  frameBindTestOrm1.Button1Click(Sender);

end;

end.
