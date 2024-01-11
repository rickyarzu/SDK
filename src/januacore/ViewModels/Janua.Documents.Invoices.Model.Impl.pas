unit Janua.Documents.Invoices.Model.Impl;

interface

uses Janua.Documents.Invoices.ViewModel.intf, Janua.Documents.Model.Impl, Janua.ViewModels.intf,
  Janua.Models.Templates, Janua.Documents.ViewModel.intf, Janua.Orm.intf,
  JOrm.Documents.intf, Data.DB, Janua.Core.Classes, JOrm.Anagraph.Intf,
  JOrm.Items.intf;

type
  TJanuaDBInvoicesModel = class(TJanuaDBDocumentsModel, IJanuaInvoicesModel, IJanuaDBDocumentsModel, IJanuaModel)
  private
    FJanuaWInvoicesDataModule: IJanuaInvoicesDataModule;
  strict protected
    function FactoryCreateDataModule: IJanuaDocumentsDataModule; override;
    function InternalActivate: boolean; override;
  end;

implementation

uses System.Classes, System.SysUtils, Spring, Janua.Core.Functions, Janua.Application.Framework,
  JOrm.Documents.Impl, Janua.Orm.Types;

{ TJanuaDBInvoicesModel }

function TJanuaDBInvoicesModel.FactoryCreateDataModule: IJanuaDocumentsDataModule;
begin
  { Does not replicate inherited behaviour but replaces it with a new Factory constructor }
  try
    if not TJanuaApplicationFactory.TryGetInterface(IJanuaInvoicesDataModule, FJanuaWInvoicesDataModule) then
      raise Exception.Create('IJanuaInvoicesDataModule not set');
    if not Supports(FJanuaWInvoicesDataModule, IJanuaDocumentsDataModule, Result) then
      raise Exception.Create('IJanuaDocumentsDataModule not supported');
  except
    on e: Exception do
      RaiseException('FactoryCreateDataModule', e, Self);
  end;
end;

function TJanuaDBInvoicesModel.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        jdsMaster.AddGridColumn('id', 8, 'ID');
        jdsMaster.AddGridColumn('doc_date', 12, 'Date');
        jdsMaster.AddGridColumn('doc_year', 6, 'Year');
        jdsMaster.AddGridColumn('doc_number', 8, 'Doc. N°');
        jdsMaster.AddGridColumn('doc_amount', 10, 'Amount');
        jdsMaster.AddGridColumn('ref_code', 20, 'Doc. Reference');
        jdsMaster.AddGridColumn('work_code', 12, 'Our Work Code');
        jdsMaster.AddGridColumn('purchase_order_number', 30, 'P.O. Number');
        jdsMaster.AddGridColumn('customer_name', 50, 'Customer Name');
        jdsMaster.AddGridColumn('dest_town', 40, 'Customer Town');
        jdsMaster.AddGridColumn('payment_terms_des', 60, 'Payment Terms');
      end;
    except
      on e: Exception do
        RaiseException('InternalActivate', e, Self);
    end;
end;

end.
