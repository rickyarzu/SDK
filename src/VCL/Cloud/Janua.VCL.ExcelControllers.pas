unit Janua.VCL.ExcelControllers;

interface

uses
  // System Libraries ..............................................
  System.Classes, System.IOUtils, System.SysUtils, Generics.Collections, System.Math,

  // Windows API Libraries ...........................................
  Winapi.Messages, Winapi.Windows,

  // VCL Libraries
  Tabs, Grids, ExtCtrls, ComCtrls, ToolWin, Forms, Dialogs, ImgList, ActnList, StdCtrls,
  VCL.Graphics,

  // TMS Components
  // Flexcel
  VCL.FlexCel.Core, FlexCel.XlsAdapter, UFlexCelHDPI,

  // Json Xml Libraries
  System.JSON, System.JSONConsts,

  // Janua Core Libraries
  Janua.Core.Excel, Janua.Core.Classes, Janua.Core.System, Janua.Core.Functions,
  Janua.Core.CustomControls, Janua.VCL.Excel, udlgExcelImportWizard, Janua.VCL.Dialogs;

Type
  TJanuaVCLExcelCustomGridController = class(TJanuaComponent)
  private

    FActionOpen: TAction;
    FActionClose: TAction;
    FActionImport: TAction;
    FJanuaDialog: TJanuaDialog;
    UpdatingCount, UpdatingCellsCount: integer;
    FFmtBox: TEdit;
    FActionInfo: TAction;
    FActionValueInCurrentCell: TAction;
    FActionFormatValues: TAction;
    FLabelRow: TLabel;
    FLabelColumn: TLabel;
    FEditValue: TEdit;
    FLabelFormat: TLabel;
    //
    procedure SetJanuaVCLExcelImport(const Value: TJanuaVCLExcel);
    procedure SetActionClose(const Value: TAction); // checked
    procedure SetActionImport(const Value: TAction);
    procedure SetActionOpen(const Value: TAction); // checked
    procedure SetFmtBox(const Value: TEdit);
    procedure SetActionInfo(const Value: TAction);
    procedure SetActionValueInCurrentCell(const Value: TAction);
    procedure SetActionFormatValues(const Value: TAction);
    procedure SetEditValue(const Value: TEdit);
    procedure SetLabelColumn(const Value: TLabel);
    procedure SetLabelFormat(const Value: TLabel);
    procedure SetLabelRow(const Value: TLabel); // checked
  public
    constructor Create(AOwner: Tcomponent); override;
    procedure SetupWizard;
    procedure SetJanuaDialog(const Value: TJanuaDialog);

    // --------------------------------------------------------------------------------------------------
    // Events and Actions on the Form ...................................................................
    procedure doActionInfoExecute(Sender: TObject); // ActionInfoExecute(Sender: TObject);
    procedure doActionOpenExecute(Sender: TObject); // ActionOpenExecute(Sender: TObject);
    procedure doActionCloseExecute(Sender: TObject); // ActionCloseExecute(Sender: TObject);
    procedure doActionImportExecute(Sender: TObject); // ActionImportExecute(Sender: TObject);
    procedure doActionValueInCurrentCellExecute(Sender: TObject); // ActionValueInCurrentCellExecute
    procedure doActionFormatValuesExecute(Sender: TObject); // ActionFormatValuesExecute
    // --------------------------------------------------------------------------------------------------
  protected
    FForm: TForm;
    FJanuaVCLExcel: TJanuaVCLExcel;
    procedure InternalValueInCurrentCell; virtual; abstract;
    procedure InternalFillTabs; virtual; abstract;
    procedure FillGrid(const Formatted: Boolean); Virtual; Abstract;
    procedure SelectedCell(const ACol, ARow: integer);
    procedure ClearGrid; Virtual; Abstract;
    procedure ResizeGrid; Virtual; Abstract;
    procedure BeginUpdatingGrid; Virtual; Abstract;
    procedure EndUpdatingGrid; Virtual; Abstract;
    procedure BeginUpdatingGridCells; Virtual; Abstract;
    procedure EndUpdatingGridCells; Virtual; Abstract;
  published
    property JanuaVCLExcel: TJanuaVCLExcel read FJanuaVCLExcel write SetJanuaVCLExcelImport;
    property ActionValueInCurrentCell: TAction read FActionValueInCurrentCell
      write SetActionValueInCurrentCell;
    property ActionInfo: TAction read FActionInfo write SetActionInfo;
    property ActionOpen: TAction read FActionOpen write SetActionOpen;
    property ActionClose: TAction read FActionClose write SetActionClose;
    property ActionImport: TAction read FActionImport write SetActionImport;
    property ActionFormatValues: TAction read FActionFormatValues write SetActionFormatValues;
    property JanuaDialog: TJanuaDialog read FJanuaDialog write SetJanuaDialog;
    property FmtBox: TEdit read FFmtBox write SetFmtBox;
    property LabelRow: TLabel read FLabelRow write SetLabelRow;
    property LabelColumn: TLabel read FLabelColumn write SetLabelColumn;
    property LabelFormat: TLabel read FLabelFormat write SetLabelFormat;
    property EditValue: TEdit read FEditValue write SetEditValue;
  end;

Type
  TJanuaVCLExcelStringGridController = class(TJanuaVCLExcelCustomGridController)
  private
    FStringGrid: TStringGrid;
    FTabs: TTabSet;
    FStatusBar: TStatusBar;
    procedure SetStringGrid(const Value: TStringGrid);
    procedure SetTabs(const Value: TTabSet);
    procedure SetStatusBar(const Value: TStatusBar);
  protected
    procedure InternalFillTabs; override;
    procedure ClearGrid; override;
    procedure ResizeGrid; override;
    procedure BeginUpdatingGrid; override;
    procedure EndUpdatingGrid; override;
    procedure BeginUpdatingGridCells; override;
    procedure EndUpdatingGridCells; override;
    procedure FillGrid(const Formatted: Boolean); override;
    function InternalActivate: Boolean; override;
    procedure InternalValueInCurrentCell; override;
  public
    Procedure doSheetDataSelectCell(Sender: TObject; ACol, ARow: integer; var CanSelect: Boolean);
    Procedure doTabsClick(Sender: TObject);
    constructor Create(AOwner: Tcomponent); override;
  published
    property StringGrid: TStringGrid read FStringGrid write SetStringGrid;
    property Tabs: TTabSet read FTabs write SetTabs;
    property StatusBar: TStatusBar read FStatusBar write SetStatusBar;
  end;

implementation

{ TJanuaVCLCustomGridController }

constructor TJanuaVCLExcelCustomGridController.Create(AOwner: Tcomponent);
begin
  inherited;
  if (AOwner is TForm) then
    self.FForm := (AOwner as TForm);
end;

procedure TJanuaVCLExcelCustomGridController.doActionCloseExecute(Sender: TObject);
begin
  // Se il form è istanziato lo chiude ..................................................................
  if Assigned(self.FForm) then
    FForm.Close

end;

procedure TJanuaVCLExcelCustomGridController.doActionFormatValuesExecute(Sender: TObject);
begin
  FActionFormatValues.Checked := not FActionFormatValues.Checked;
  FillGrid(FActionFormatValues.Checked);
end;

procedure TJanuaVCLExcelCustomGridController.doActionImportExecute(Sender: TObject);
begin
  if Assigned(FJanuaVCLExcel) then
  begin
    if FJanuaVCLExcel.Import then
    begin
      if Assigned(self.FJanuaDialog) then
        self.FJanuaDialog.JShowMessage('Import Eseguito Correttamente',
          'Importati: ' + self.FJanuaVCLExcel.RowCount.ToString + ' Record.', '')
      else
        ShowMessage('Import Eseguito Correttamente, ' + 'Importati: ' +
          self.FJanuaVCLExcel.RowCount.ToString + ' Record.');
    end;
  end;

end;

procedure TJanuaVCLExcelCustomGridController.doActionInfoExecute(Sender: TObject);
var
  sMessage, sText, sHelp: string;
begin
  sText := 'This Software shows how to read the contents of an xls file' + #10 +
    'The ''Open File'' button will load an Excel file into a dataset.' + #10 +
    'The ''Format Values'' button will apply the format to the cells, or show the raw data.' + #10 +
    'The ''Value in Current Cell'' button will show more information about the cell selected in the grid. Try it with formulas.';
  sMessage := 'Excel Loader (c) 2016 Januaproject.';

  if Assigned(self.FJanuaDialog) then
    FJanuaDialog.JShowMessage(sMessage, sText, sHelp);
end;

procedure TJanuaVCLExcelCustomGridController.doActionOpenExecute(Sender: TObject);
begin
  if Assigned(self.FJanuaVCLExcel) then
    FJanuaVCLExcel.OpenFile;

end;

procedure TJanuaVCLExcelCustomGridController.doActionValueInCurrentCellExecute(Sender: TObject);
begin
  InternalValueInCurrentCell; // Verificato
end;

procedure TJanuaVCLExcelCustomGridController.SelectedCell(const ACol, ARow: integer);
var
  aCell: TJanuaExcelCell;
begin
  aCell := self.FJanuaVCLExcel.SelectedCellValue(ACol, ARow);
end;

procedure TJanuaVCLExcelCustomGridController.SetActionClose(const Value: TAction);
begin
  FActionClose := Value;
  // Assegna la Action Close del Form all'evento ActionClose della Classe
  if Assigned(FActionClose) then
    FActionClose.OnExecute := doActionCloseExecute

end;

procedure TJanuaVCLExcelCustomGridController.SetActionFormatValues(const Value: TAction);
begin
  FActionFormatValues := Value;
  if Assigned(FActionFormatValues) then
    FActionFormatValues.OnExecute := self.doActionFormatValuesExecute;

end;

procedure TJanuaVCLExcelCustomGridController.SetActionImport(const Value: TAction);
begin
  FActionImport := Value;
end;

procedure TJanuaVCLExcelCustomGridController.SetActionInfo(const Value: TAction);
begin
  FActionInfo := Value;
  if Assigned(FActionInfo) then
    FActionInfo.OnExecute := self.doActionInfoExecute;

end;

procedure TJanuaVCLExcelCustomGridController.SetActionOpen(const Value: TAction);
begin
  FActionOpen := Value;
  if Assigned(self.FActionOpen) then
    self.FActionOpen.OnExecute := self.doActionOpenExecute;;

end;

procedure TJanuaVCLExcelCustomGridController.SetActionValueInCurrentCell(const Value: TAction);
begin
  FActionValueInCurrentCell := Value;
  if Assigned(self.FActionValueInCurrentCell) then
    FActionValueInCurrentCell.OnExecute := self.doActionValueInCurrentCellExecute;;
end;

procedure TJanuaVCLExcelCustomGridController.SetEditValue(const Value: TEdit);
begin
  FEditValue := Value;
end;

procedure TJanuaVCLExcelCustomGridController.SetFmtBox(const Value: TEdit);
begin
  FFmtBox := Value;
end;

procedure TJanuaVCLExcelCustomGridController.SetJanuaVCLExcelImport(const Value: TJanuaVCLExcel);
begin
  FJanuaVCLExcel := Value;
end;

procedure TJanuaVCLExcelCustomGridController.SetLabelColumn(const Value: TLabel);
begin
  FLabelColumn := Value;
end;

procedure TJanuaVCLExcelCustomGridController.SetLabelFormat(const Value: TLabel);
begin
  FLabelFormat := Value;
end;

procedure TJanuaVCLExcelCustomGridController.SetLabelRow(const Value: TLabel);
begin
  FLabelRow := Value;
end;

procedure TJanuaVCLExcelCustomGridController.SetJanuaDialog(const Value: TJanuaDialog);
begin
  FJanuaDialog := Value;
end;

{ TJanuaVCLStringGridController }

procedure TJanuaVCLExcelStringGridController.BeginUpdatingGrid;
begin
  Inc(UpdatingCount);
  if (UpdatingCount = 1) then
  begin
    SendMessage(FStringGrid.Handle, WM_SETREDRAW, 0, 0);
  end;
end;

procedure TJanuaVCLExcelStringGridController.BeginUpdatingGridCells;
var
  c: integer;
begin
  Inc(UpdatingCellsCount);
  if (UpdatingCellsCount = 1) then
  begin
    for c := 1 to FStringGrid.ColCount do
      FStringGrid.Cols[c].BeginUpdate;
  end;

end;

procedure TJanuaVCLExcelStringGridController.ClearGrid;
var
  r: integer;
begin
  BeginUpdatingGrid;
  try
    for r := 1 to FStringGrid.RowCount do
      FStringGrid.Rows[r].Clear;
  finally
    EndUpdatingGrid;
  end;

end;

constructor TJanuaVCLExcelStringGridController.Create(AOwner: Tcomponent);
begin
  inherited;

end;

procedure TJanuaVCLExcelStringGridController.EndUpdatingGrid;
begin
  Dec(UpdatingCount);
  if (UpdatingCount = 0) then
  begin
    SendMessage(self.FStringGrid.Handle, WM_SETREDRAW, 1, 0);
    RedrawWindow(FStringGrid.Handle, nil, 0, RDW_ERASE or RDW_FRAME or RDW_INVALIDATE or
      RDW_ALLCHILDREN);
  end;
end;

procedure TJanuaVCLExcelStringGridController.EndUpdatingGridCells;
var
  c: integer;
begin
  Dec(UpdatingCellsCount);
  if (UpdatingCellsCount = 0) then
  begin
    for c := 1 to FStringGrid.ColCount do
      FStringGrid.Cols[c].EndUpdate;
  end;
end;

procedure TJanuaVCLExcelStringGridController.FillGrid(const Formatted: Boolean);
var
  r, c, cIndex: integer;
  v: TCellValue;
begin
  if self.FJanuaVCLExcel.Xls = nil then
    exit;
  BeginUpdatingGrid;
  try
    if (Tabs.TabIndex + 1 <= FJanuaVCLExcel.Xls.SheetCount) and (Tabs.TabIndex >= 0) then
      FJanuaVCLExcel.Xls.ActiveSheet := Tabs.TabIndex + 1
    else
      FJanuaVCLExcel.Xls.ActiveSheet := 1;
    // Clear data in previous grid
    ClearGrid;
    self.FStringGrid.RowCount := 1;
    FStringGrid.ColCount := 1;
    FmtBox.Text := '';

    FStringGrid.RowCount := FJanuaVCLExcel.Xls.RowCount + 1; // Include fixed row
    FStringGrid.ColCount := FJanuaVCLExcel.Xls.ColCount + 1;
    // Include fixed col. NOTE THAT COLCOUNT IS SLOW. We use it here because we really need it. See the Performance.pdf doc.

    BeginUpdatingGridCells;
    try

      if (FStringGrid.ColCount > 1) then
        FStringGrid.FixedCols := 1; // it is deleted when we set the width to 1.
      if (FStringGrid.RowCount > 1) then
        FStringGrid.FixedRows := 1;

      for r := 1 to FJanuaVCLExcel.Xls.RowCount do
      begin
        // Instead of looping in all the columns, we will just loop in the ones that have data. This is much faster.
        for cIndex := 1 to FJanuaVCLExcel.Xls.ColCountInRow(r) do
        begin
          c := FJanuaVCLExcel.Xls.ColFromIndex(r, cIndex); // The real column.
          if Formatted then
          begin
            FStringGrid.Cells[c, r] := FJanuaVCLExcel.Xls.GetStringFromCell(r, c);
          end
          else
          begin
            v := FJanuaVCLExcel.Xls.GetCellValue(r, c);
            FStringGrid.Cells[c, r] := v.ToString;
          end;
        end;
      end;

      ResizeGrid;
      SelectedCell(1, 1);
    finally
      EndUpdatingGridCells;
    end;
  finally
    EndUpdatingGrid;
  end;

end;

function TJanuaVCLExcelStringGridController.InternalActivate: Boolean;
begin
  if Assigned(self.FForm) and Assigned(self.FStringGrid) and Assigned(self.FTabs) and
    Assigned(self.FJanuaVCLExcel) then
  begin
    RegisterForHDPI(self.FForm, ResizeGrid);
    self.FActive := True
  end
  else
  begin
    self.FActive := False
  end;
  Result := self.FActive
end;

procedure TJanuaVCLExcelStringGridController.InternalFillTabs;
var
  s: integer;
begin
  FTabs.Tabs.Clear;
  for s := 1 to FJanuaVCLExcel.TabList.Count do
  begin
    FTabs.Tabs.Add(FJanuaVCLExcel.TabList[s]);
  end;

  Tabs.TabIndex := FJanuaVCLExcel.Xls.ActiveSheet - 1;

  FJanuaVCLExcel.EndFill := Now;

  StatusBar.SimpleText := 'Time to load file: ' + ElapsedTime(FJanuaVCLExcel.EndOpen,
    FJanuaVCLExcel.StartOpen) + '     Time to load file and fill grid: ' +
    ElapsedTime(FJanuaVCLExcel.EndFill, FJanuaVCLExcel.StartOpen);
  if (self.Owner is TForm) then
    (self.Owner as TForm).Caption := 'Aperture File: ' + ExtractFileName(FJanuaVCLExcel.FileName);
end;

procedure TJanuaVCLExcelStringGridController.InternalValueInCurrentCell;
begin
  self.FJanuaVCLExcel.AnalizeFile(FStringGrid.Row, FStringGrid.Col);
end;

procedure TJanuaVCLExcelStringGridController.doSheetDataSelectCell(Sender: TObject;
  ACol, ARow: integer; var CanSelect: Boolean);
var
  aCell: Janua.Core.Excel.TJanuaExcelCell;
begin
  if (ARow > self.FStringGrid.RowCount - 1) or (ACol > FStringGrid.ColCount - 1) then
  begin
    aCell.Format := '';
    aCell.Color := clRed;
    aCell.Formula := 'Selezionate Celle fuori range';
    aCell.Text := '';
  end;

  SelectedCell(ACol, ARow);
  CanSelect := True;
end;

procedure TJanuaVCLExcelStringGridController.doTabsClick(Sender: TObject);
var
  bFormatted: Boolean;
begin
  // True / False Values
  if Assigned(self.FActionFormatValues) then
    bFormatted := self.FActionFormatValues.Checked
  else
    bFormatted := True;

  FillGrid(bFormatted);
end;

procedure TJanuaVCLExcelStringGridController.ResizeGrid;
var
  r, c: integer;
begin
  BeginUpdatingGrid;
  try
    BeginUpdatingGridCells;
    try
      if self.FJanuaVCLExcel.Xls = nil then
      begin
        FStringGrid.DefaultColWidth := Round(64.0 * FForm.Font.PixelsPerInch / 96.0);
        FStringGrid.DefaultRowHeight := Round(18.0 * FForm.Font.PixelsPerInch / 96.0);
        exit;
      end;
      if (Tabs.TabIndex + 1 <= FJanuaVCLExcel.Xls.SheetCount) and (Tabs.TabIndex >= 0) then
        FJanuaVCLExcel.Xls.ActiveSheet := Tabs.TabIndex + 1
      else
        FJanuaVCLExcel.Xls.ActiveSheet := 1;

      FStringGrid.RowHeights[0] := Round(20 * FForm.Font.PixelsPerInch / 96.0);
      FStringGrid.ColWidths[0] := Round(50 * FForm.Font.PixelsPerInch / 96.0);

      // Fill the row headers
      for r := 1 to FStringGrid.RowCount - 1 do
      begin
        FStringGrid.Cells[0, r] := IntToStr(r);
        FStringGrid.RowHeights[r] :=
          Round(FJanuaVCLExcel.Xls.GetRowHeight(r) / TExcelMetrics.RowMultDisplay
          (FJanuaVCLExcel.Xls) * FForm.Font.PixelsPerInch / 96.0);
      end;

      // Fill the column headers
      for c := 1 to FStringGrid.ColCount - 1 do
      begin
        FStringGrid.Cells[c, 0] := TCellAddress.EncodeColumn(c);
        FStringGrid.ColWidths[c] :=
          Round(FJanuaVCLExcel.Xls.GetColWidth(c) / TExcelMetrics.ColMult(FJanuaVCLExcel.Xls) *
          FForm.Font.PixelsPerInch / 96.0);
      end;
    finally
      EndUpdatingGridCells;
    end;
  finally
    EndUpdatingGrid;
  end;

end;

procedure TJanuaVCLExcelStringGridController.SetStatusBar(const Value: TStatusBar);
begin
  FStatusBar := Value;
end;

procedure TJanuaVCLExcelStringGridController.SetStringGrid(const Value: TStringGrid);
begin
  FStringGrid := Value;
  if Assigned(FStringGrid) then
    FStringGrid.OnSelectCell := self.doSheetDataSelectCell;
end;

procedure TJanuaVCLExcelStringGridController.SetTabs(const Value: TTabSet);
begin
  FTabs := Value;
  if Assigned(FTabs) then
    self.FTabs.OnClick := self.doTabsClick;

end;

procedure TJanuaVCLExcelCustomGridController.SetupWizard;
var
  fWizard: TdlgExcelImportWizard;
begin
  fWizard := TdlgExcelImportWizard.Create(self);
  try
    fWizard.ShowModal;
  finally
    fWizard.Free;
  end;
end;

end.
