unit Janua.UniDAC.Test.MVVM.Workflow;

interface

uses
  DUnitX.TestFramework, Janua.Core.Classes, Janua.Core.Classes.Intf, Janua.Documents.ViewModel.Intf,
  Janua.Search.ViewModels.Engines.Intf;

type

  [TestFixture]
  TTWorksMVVM = class
  private
    FTestCaption: string;
    FTestEnabled: boolean;
    FViewModel: IJanuaDBDocumentsViewModel;
    FModel: IJanuaDBDocumentsModel;
    procedure GenerateModel;
    procedure GenerateViewModel;
  public
    [Setup]
    /// <summary> This method Switches to the Postgres UniDAC Test Database Framework </summary>
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    // Test with TestCase Attribute to supply parameters.
    [Test]
    procedure DataModule;
    [Test]
    procedure Model;
    [Test]
    procedure ViewModel;
    [Test]
    procedure DatasetFilter;
    [Test]
    procedure ModelFilter;
    [Test]
    procedure ViewModelFilter;
  end;

implementation

uses System.SysUtils, Janua.Mock.Firedac.Framework, Janua.Application.Framework, Janua.ViewModels.Application,
{$IFDEF TESTPOSTGRES}
  Janua.Orm.UniDac, Janua.Uni.Framework,
{$ENDIF TESTPOSTGRES}
  System.Types;

{ TTWorksMVVM }
procedure TTWorksMVVM.DataModule;
begin
end;

procedure TTWorksMVVM.DatasetFilter;
begin
end;

procedure TTWorksMVVM.GenerateModel;
begin
end;

procedure TTWorksMVVM.GenerateViewModel;
begin
end;

procedure TTWorksMVVM.Model;
begin
end;

procedure TTWorksMVVM.ModelFilter;
begin
end;

procedure TTWorksMVVM.Setup;
begin
  // TJanuaOrmFramework.Initialize;
  TJanuaApplication.DBSchemaID := 33;
{$IFDEF TESTPOSTGRES}
  TJanuaUniPgApplication.RegisterFramework;
{$ELSE}
  TJanuaMockFiredacApplication.RegisterFireDacDataModules;
{$ENDIF TESTPOSTGRES}
end;

procedure TTWorksMVVM.TearDown;
begin
  FModel := nil;
  FViewModel := nil;
  TJanuaUniPgApplication.Terminate;
end;

procedure TTWorksMVVM.ViewModel;
begin
end;

procedure TTWorksMVVM.ViewModelFilter;
begin
end;

end.
