unit Janua.Mock.Reports;

interface

uses Janua.Documents.Invoices.ViewModel.intf, Janua.Documents.WarehouseReceipts.ViewModel.intf,
  Janua.Reporting.intf, Janua.Reporting.Impl, Janua.Documents.WarehouseReceipts.ViewModel.Impl,
  Janua.Documents.Invoices.ViewModel.Impl, Janua.Logistic.AWB.ViewModel.intf,
  Janua.Logistic.AWB.ViewModel.Impl;

type
  TJanuaWHRMockLabelReporter = Class(TJanuaWHRReporter, IJanuaWHRLabelsReporter, IJanuaWHRReporter)
  public
    procedure Execute(const aPreview: Boolean = False); override;
  End;

  TJanuaInvoicesMockReporter = Class(TJanuaInvoicesReporter, IJanuaInvoicesSingleReporter, IJanuaReporter)
  public
    procedure Execute(const aPreview: Boolean = False); override;
  End;

  TJanuaWHRMockReceiptReporter = Class(TJanuaWHRReporter, IJanuaWHRReceiptsReporter, IJanuaWHRReporter,
    IJanuaReporter)
  public
    procedure Execute(const aPreview: Boolean = False); override;
  End;

  TJanuaLogisticMockAWBReporter = Class(TJanuaLogisticAWBReporter, IJanuaLogisticAWBReporter, IJanuaReporter)
  public
    procedure Execute(const aPreview: Boolean = False); override;
  End;

type
  TJanuaMockReports = class
  public
    class procedure RegisterMockReports;
  end;

implementation

uses Janua.Application.Framework;

{ TJanuaMockReports }

class procedure TJanuaMockReports.RegisterMockReports;
begin
  // Just a Mock :)
  TJanuaApplicationFactory.RegisterClass(IJanuaWHRLabelsReporter, TJanuaWHRMockLabelReporter);
  TJanuaApplicationFactory.RegisterClass(IJanuaInvoicesSingleReporter, TJanuaInvoicesMockReporter);
  // TJanuaWHRMockReceiptReporter = Class(TJanuaWHRReporter, IJanuaWHRReceiptsReporter
  TJanuaApplicationFactory.RegisterClass(IJanuaWHRReceiptsReporter, TJanuaWHRMockReceiptReporter);
  // TJanuaLogisticMockAWBReporter = Class(TJanuaLogisticAWBReporter, IJanuaLogisticAWBReporter)
  TJanuaApplicationFactory.RegisterClass(IJanuaLogisticAWBReporter, TJanuaLogisticMockAWBReporter);

end;

{ TJanuaInvoicesQRReporter }

procedure TJanuaInvoicesMockReporter.Execute(const aPreview: Boolean);
begin
  // inherited;
  // Just a Mock :)
end;

{ TJanuaWHRMockLabelReporter }

procedure TJanuaWHRMockLabelReporter.Execute(const aPreview: Boolean);
begin
  // inherited;
  // Just a Mock :)
end;

{ TJanuaWHRQrpReceiptReporter }

procedure TJanuaWHRMockReceiptReporter.Execute(const aPreview: Boolean);
begin
  // inherited;
  // Just a Mock :)

end;

{ TJanuaLogisticMockAWBReporter }

procedure TJanuaLogisticMockAWBReporter.Execute(const aPreview: Boolean);
begin
  // inherited;
  // Just a Mock :)

end;

end.
