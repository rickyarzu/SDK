{$define UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module'

{$ifndef UNIGUI_VCL}
library
{$else}
program
{$endif}
  UniMobileDemo;

uses
  MidasLib,
  uniGUIISAPI,
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Mainm in 'Mainm.pas' {MainmForm: TUnimForm},
  umain in 'units\umain.pas' {UniMainFrame: TUniFrame},
  uFrameForm in 'uFrameForm.pas' {UnimFrameForm: TUnimForm},
  ButtonsStandardButtons in 'units\ButtonsStandardButtons.pas' {UniButtonsStandardButtons: TUniFrame},
  ButtonsUIShapeButtons in 'units\ButtonsUIShapeButtons.pas' {UniButtonsUIShapeButtons: TUniFrame},
  ButtonsIconButtons in 'units\ButtonsIconButtons.pas' {UniButtonsIconButtons: TUniFrame},
  ButtonsBitBtns in 'units\ButtonsBitBtns.pas' {UniButtonsBitBtns: TUniFrame},
  ButtonsSegmentedButton in 'units\ButtonsSegmentedButton.pas' {UniButtonsSegmentedButton: TUniFrame},
  FormControlsEditProperties in 'units\FormControlsEditProperties.pas' {UniFormControlsEditProperties: TUniFrame},
  FormControlsEditTypes in 'units\FormControlsEditTypes.pas' {UniFormControlsEditTypes: TUniFrame},
  FormControlsEditEvents in 'units\FormControlsEditEvents.pas' {UniFormControlsEditEvents: TUniFrame},
  FormControlsCheckBox in 'units\FormControlsCheckBox.pas' {UniFormControlsCheckBox: TUniFrame},
  FormControlsSelect in 'units\FormControlsSelect.pas' {UniFormControlsSelect: TUniFrame},
  FormControlsSelectEvents in 'units\FormControlsSelectEvents.pas' {UniFormControlsSelectEvents: TUniFrame},
  FormControlsDatepicker in 'units\FormControlsDatepicker.pas' {UniFormControlsDatepicker: TUniFrame},
  FormControlsLabel in 'units\FormControlsLabel.pas' {UniFormControlsLabel: TUniFrame},
  FormControlsList in 'units\FormControlsList.pas' {UniFormControlsList: TUniFrame},
  DisclosureIcon in 'units\FormControlsList\DisclosureIcon.pas' {DisclosureIconForm: TUnimForm},
  GroupedList in 'units\FormControlsList\GroupedList.pas' {GroupedForm: TUnimForm},
  SortedList in 'units\FormControlsList\SortedList.pas' {SortedForm: TUnimForm},
  StripedList in 'units\FormControlsList\StripedList.pas' {StripedForm: TUnimForm},
  FormControlsListEvents in 'units\FormControlsListEvents.pas' {UniFormControlsListEvents: TUniFrame},
  FormControlsMemo in 'units\FormControlsMemo.pas' {UniFormControlsMemo: TUniFrame},
  FormControlsToggle in 'units\FormControlsToggle.pas' {UniFormControlsToggle: TUniFrame},
  FormControlsSlider in 'units\FormControlsSlider.pas' {UniFormControlsSlider: TUniFrame},
  FormControlsRadio in 'units\FormControlsRadio.pas' {UniFormControlsRadio: TUniFrame},
  FormControlsNestedList in 'units\FormControlsNestedList.pas' {UniFormControlsNestedList: TUniFrame},
  FormControlsFieldSet in 'units\FormControlsFieldSet.pas' {UniFormControlsFieldSet: TUniFrame},
  FormControlsFieldSet2 in 'units\FormControlsFieldSet2.pas' {UniFormControlsFieldSet2: TUniFrame},
  TableFieldSet in 'units\FormControlsFieldSet2\TableFieldSet.pas' {FieldSetForm: TUnimForm},
  PanelsMobilePanel in 'units\PanelsMobilePanel.pas' {UniPanelsMobilePanel: TUniFrame},
  PanelsContainerPanel in 'units\PanelsContainerPanel.pas' {UniPanelsContainerPanel: TUniFrame},
  TabPanelTabPanel in 'units\TabPanelTabPanel.pas' {UniTabPanelTabPanel: TUniFrame},
  CarouselCarousel in 'units\CarouselCarousel.pas' {UniCarouselCarousel: TUniFrame},
  ImageImage in 'units\ImageImage.pas' {UniImageImage: TUniFrame},
  UploadDownloadFileUpload in 'units\UploadDownloadFileUpload.pas' {UniUploadDownloadFileUpload: TUniFrame},
  TimerTimer in 'units\TimerTimer.pas' {UniTimerTimer: TUniFrame},
  ToolbarSimpleToolbar in 'units\ToolbarSimpleToolbar.pas' {UniToolbarSimpleToolbar: TUniFrame},
  ToolbarAdvancedToolbar in 'units\ToolbarAdvancedToolbar.pas' {UniToolbarAdvancedToolbar: TUniFrame},
  ScrollBoxScrollBox in 'units\ScrollBoxScrollBox.pas' {UniScrollBoxScrollBox: TUniFrame},
  MenuMenu in 'units\MenuMenu.pas' {UniMenuMenu: TUniFrame},
  CarouselCarrousel2 in 'units\CarouselCarrousel2.pas' {UniCarouselCarrousel2: TUniFrame},
  Unit1 in 'units\CarouselCarrousel2\Unit1.pas' {UnimCarouselSubForm1: TUnimForm},
  Unit2 in 'units\CarouselCarrousel2\Unit2.pas' {UnimCarouselSubForm2: TUnimForm},
  MiscellaneousGoogleMaps in 'units\MiscellaneousGoogleMaps.pas' {UniMiscellaneousGoogleMaps: TUniFrame},
  MiscellaneousURLFrame in 'units\MiscellaneousURLFrame.pas' {UniMiscellaneousURLFrame: TUniFrame},
  DatabaseDBControls in 'units\DatabaseDBControls.pas' {UniDatabaseDBControls: TUniFrame},
  DatabaseFishFactControls in 'units\DatabaseFishFactControls.pas' {UniDatabaseFishFactControls: TUniFrame},
  DatabaseDBListGrid in 'units\DatabaseDBListGrid.pas' {UniDatabaseDBListGrid: TUniFrame},
  EditForm in 'units\DatabaseDBListGrid\EditForm.pas' {UnimEditForm: TUnimForm},
  ShowDataForm in 'units\DatabaseDBListGrid\ShowDataForm.pas' {UnimShowDataForm: TUnimForm},
  DatabaseFishFactDBListGrid in 'units\DatabaseFishFactDBListGrid.pas' {UniDatabaseFishFactDBListGrid: TUniFrame},
  DatabaseFishFactWithoutDBControls in 'units\DatabaseFishFactWithoutDBControls.pas' {UniDatabaseFishFactWithoutDBControls: TUniFrame},
  FishFact in 'units\DatabaseFishFactWithoutDBControls\FishFact.pas' {UnimForm1: TUnimForm},
  DatabaseSearchList in 'units\DatabaseSearchList.pas' {UniDatabaseSearchList: TUniFrame},
  ClientsideAlignmentClientsideAlignment in 'units\ClientsideAlignmentClientsideAlignment.pas' {UniClientsideAlignmentClientsideAlignment: TUniFrame},
  ClientsideAlignmentLayoutFlex in 'units\ClientsideAlignmentLayoutFlex.pas' {UniClientsideAlignmentLayoutFlex: TUniFrame},
  ClientsideAlignmentPackAlign in 'units\ClientsideAlignmentPackAlign.pas' {UniClientsideAlignmentPackAlign: TUniFrame},
  MaskUIMask in 'units\MaskUIMask.pas' {UniMaskUIMask: TUniFrame},
  ClientEventsEditClientEvents in 'units\ClientEventsEditClientEvents.pas' {UniClientEventsEditClientEvents: TUniFrame},
  ClientEventsAjaxCallback in 'units\ClientEventsAjaxCallback.pas' {UniClientEventsAjaxCallback: TUniFrame},
  ClientEventsResizeButton in 'units\ClientEventsResizeButton.pas' {UniClientEventsResizeButton: TUniFrame},
  ClientEventsButtonClient in 'units\ClientEventsButtonClient.pas' {UniClientEventsButtonClient: TUniFrame},
  UploadDownloadSimpleDownload in 'units\UploadDownloadSimpleDownload.pas' {UniUploadDownloadSimpleDownload: TUniFrame},
  UploadDownloadAdvancedDownload in 'units\UploadDownloadAdvancedDownload.pas' {UniUploadDownloadAdvancedDownload: TUniFrame},
  DownloadFileAsForm in 'units\UploadDownloadAdvancedDownload\DownloadFileAsForm.pas' {DownloadFileAsForm1: TUnimForm},
  UploadDownloadSendFile in 'units\UploadDownloadSendFile.pas' {UniUploadDownloadSendFile: TUniFrame},
  SendFileAsForm in 'units\UploadDownloadSendFile\SendFileAsForm.pas' {UniSendFileAs: TUnimForm},
  ButtonsUIConfirmationButtons in 'units\ButtonsUIConfirmationButtons.pas' {UniButtonsUIConfirmationButtons: TUniFrame},
  ButtonsUIBackForwardButtons in 'units\ButtonsUIBackForwardButtons.pas' {UniButtonsUIBackForwardButtons: TUniFrame},
  DatabaseFishFactDBGrid in 'units\DatabaseFishFactDBGrid.pas' {UniDatabaseFishFactDBGrid: TUniFrame},
  ChartsLineChart in 'units\ChartsLineChart.pas' {UniChartsLineChart: TUniFrame},
  MiscellaneousHTMLFrame in 'units\MiscellaneousHTMLFrame.pas' {UniMiscellaneousHTMLFrame: TUniFrame},
  ChartsPieChart in 'units\ChartsPieChart.pas' {UniChartsPieChart: TUniFrame},
  ChartsBarChart in 'units\ChartsBarChart.pas' {UniChartsBarChart: TUniFrame},
  ChartsHorizontalBarChart in 'units\ChartsHorizontalBarChart.pas' {UniChartsHorizontalBarChart: TUniFrame},
  ChartsLineFillChart in 'units\ChartsLineFillChart.pas' {UniChartsLineFillChart: TUniFrame},
  ChartsGaugeChart in 'units\ChartsGaugeChart.pas' {UniChartsGaugeChart: TUniFrame},
  ChartsPieChartDefaultColor in 'units\ChartsPieChartDefaultColor.pas' {UniChartsPieChartDefaultColor: TUniFrame},
  FormsTitleButton in 'units\FormsTitleButton.pas' {UniFormsTitleButton: TUniFrame},
  titleFormUnit in 'units\FormsTitleButton\titleFormUnit.pas' {TitleForm: TUnimForm},
  titleSubUnit in 'units\FormsTitleButton\titleSubUnit.pas' {SubForm: TUnimForm},
  FormsDockedTitle in 'units\FormsDockedTitle.pas' {UniFormsDockedTitle: TUniFrame},
  DockedtitleUnit in 'units\FormsDockedTitle\DockedtitleUnit.pas' {UniDockedForm: TUnimForm},
  FormsFormTypes in 'units\FormsFormTypes.pas' {UniFormsFormTypes: TUniFrame},
  FullScreenUnit in 'units\FormsFormTypes\FullScreenUnit.pas' {UniFullScreenForm: TUnimForm},
  ModalUnit in 'units\FormsFormTypes\ModalUnit.pas' {UniModalForm: TUnimForm},
  NonModalUnit in 'units\FormsFormTypes\NonModalUnit.pas' {UnimFormnonModal: TUnimForm},
  ChartsPie3DChart in 'units\ChartsPie3DChart.pas' {UniChartsPie3DChart: TUniFrame},
  ChartsRadarChart in 'units\ChartsRadarChart.pas' {UniChartsRadarChart: TUniFrame},
  DBGridDBGridEditor in 'units\DBGridDBGridEditor.pas' {UniDBGridDBGridEditor: TUniFrame},
  ScrollableUnit in 'units\FormsFormTypes\ScrollableUnit.pas' {UniScrollForm: TUnimForm},
  ChartsTwoCharts in 'units\ChartsTwoCharts.pas' {UniChartsTwoCharts: TUniFrame},
  ChartsAreaChart in 'units\ChartsAreaChart.pas' {UniChartsAreaChart: TUniFrame},
  DBGridColumnResize in 'units\DBGridColumnResize.pas' {UniDBGridColumnResize: TUniFrame},
  DBGridHeaderGrouping in 'units\DBGridHeaderGrouping.pas' {UniDBGridHeaderGrouping: TUniFrame},
  DBGridColumnSorting in 'units\DBGridColumnSorting.pas' {UniDBGridColumnSorting: TUniFrame},
  DBGridSummaryRow in 'units\DBGridSummaryRow.pas' {UniDBGridSummaryRow: TUniFrame},
  ChartsHybridChart in 'units\ChartsHybridChart.pas' {UniChartsHybridChart: TUniFrame},
  ThemesChangeTheme in 'units\ThemesChangeTheme.pas' {UniThemesChangeTheme: TUniFrame},
  MiscellaneousBodyMassIndexCalculator in 'units\MiscellaneousBodyMassIndexCalculator.pas' {UniMiscellaneousBodyMassIndexCalculator: TUniFrame},
  Janua.AppCity.UniGUIApplication in '..\..\..\..\..\src\UniGUI\AppAndCity\Janua.AppCity.UniGUIApplication.pas';

{$R *.res}

{$ifndef UNIGUI_VCL}
exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;
{$endif}

begin
{$ifdef UNIGUI_VCL}
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
{$endif}
end.
