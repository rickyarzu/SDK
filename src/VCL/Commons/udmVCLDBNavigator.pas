unit udmVCLDBNavigator;

interface

uses
  System.SysUtils, System.Classes, System.ImageList,  System.UITypes, System.UIConsts,
  // Database
  Data.DB,
  // VCL
  Vcl.ImgList, Vcl.Controls, VCL.Graphics,
  // Janua
  Janua.Core.Classes, Janua.Core.Customcontrols, Janua.VCL.Dialogs;

type
  TdmVCLDBNavigator = class(TDataModule)
    ImageListPopup: TImageList;
    ImageList16: TImageList;
    ImageList16Hot: TImageList;
    ImageList16Disabled: TImageList;
  private
    FJanuaOS: TJanuaCoreOS;
    FJanuaDialog: TJanuaDialog;
    procedure SetJanuaOS(const Value: TJanuaCoreOS);
    procedure SetJanuaDialog(const Value: TJanuaDialog);
    { Private declarations }
  public
    { Public declarations }
    procedure FlExcelExport(Master: TDataset);
    property  JanuaOS: TJanuaCoreOS read FJanuaOS write SetJanuaOS;
    property JanuaDialog: TJanuaDialog read FJanuaDialog write SetJanuaDialog;
  end;

var
  dmVCLDBNavigator: TdmVCLDBNavigator;

implementation

uses
  // TMS Components
  // Flexcel
  VCL.FlexCel.Core, FlexCel.XlsAdapter;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmVCLDBNavigator }

procedure TdmVCLDBNavigator.FlExcelExport(Master: TDataset);
var
  i, Row, columns, columns2: integer;
  // da Gestire con Tabbed Notebook ............................
  // aViewer: TFXlsViewer;
  { TODO -oRiccardo -cVCL : Impostare una finestra di gestione ed Editing File di Excel }
  Bookmark: TBookmark;
  Number: Double;
  S: String;
  T: String;
  aStream: TMemoryStream;
  PathToImage: string;
  Fmt: TFlxFormat;
  XF, XF2: integer;
  Landscape: boolean;
  Xls: TXlsFile;
begin
  // Create a new file. We could also open an existing file with Xls.Open
  Xls := TXlsFile.Create(false);
  try
    Xls.NewFile(1);


    if Master.RecordCount = 0 then
        FJanuaDialog.JShowWarning('non ci sono dati da esportare!');
      exit;

    Bookmark := Master.GetBookmark;

    columns := 0;
    Row := 1;

    Fmt := Xls.GetDefaultFormat;
    Fmt.Font.Style := [TFlxFontStyles.Bold];
    XF := Xls.AddFormat(Fmt);

    for i := 0 to Master.Fields.Count - 1 do
      if ((Master.Fields[i].Tag > 0) and (Master.Fields[i].Tag < 9)) then
      begin
        inc(columns);
        Xls.SetCellFormat(Row, columns, XF);
        Xls.SetCellValue(Row, columns, Master.Fields[i].DisplayLabel);
        // Xls.CellValue[Row, columns] := Master.Fields[i].DisplayLabel;
        // Xls.CellFormat[Row, columns] := XF;
      end;

    Row := 2;


    // aggiunge i dati dei campi nelle righe in questione:

    Master.DisableControls;
    // evita i ritorni a video... interessante
    try
      Master.First;
      while not Master.Eof do
      begin
        columns := 0;

        Fmt := Xls.GetDefaultFormat;

        for i := 0 to Master.Fields.Count - 1 do
        begin
          if (Master.Fields[i].Tag = 7) and not Master.Fields[i].AsBoolean then
          Fmt.Font.Color := clRed;
        end;

        XF := Xls.AddFormat(Fmt);

        for i := 0 to Master.Fields.Count - 1 do
        begin // loop i masterfilds count
          if Master.Fields[i].Tag > 0 then
          begin
            inc(columns);
            if Master.Fields[i].Tag = 3 then
              T := Master.Fields[i].AsString
            else if Master.Fields[i].Tag = 4 then
              T := T + ' ' + Master.Fields[i].AsString
            else if Master.Fields[i].Tag = 5 then
            begin
              T := T + ' ' + Master.Fields[i].AsString;
              Xls.SetCellValue(Row, columns, T, XF);
              // Xls.CellValue[Row, columns] := T
            end
            else if Master.Fields[i].Tag = 7 then
            begin
              if Master.Fields[i].AsBoolean then
                T := 'X'
              else
                T := '';
              Xls.SetCellValue(Row, columns, T, XF);
              // Xls.CellValue[Row, columns] := T
            end
            else if Master.Fields[i].Tag = 6 then
            begin
              T := FormatDateTime('mm/dd/yyyy', Master.Fields[i].AsDateTime);
              Xls.SetCellValue(Row, columns, T, XF);
              // Xls.CellValue[Row, columns] := T;
              // Master.Fields [I].AsDateTime;
            end
            else if Master.Fields[i].Tag = 2 then
            begin
              Xls.SetCellValue(Row, columns, Master.Fields[i].AsFloat, XF);
              // Xls.CellValue[Row, columns] := Master.Fields[i].AsFloat;
              // if Sign(number) = -1 then T := '=-' else T := '=';
              // number := number * sign(number);

              // T :=  T +  FormatFloat('#0.', Trunc(number))
              // + '.' + LPad(IntToStr(Round(100*((number) - (Trunc(number)))
              // )),2, '0');
              // RangeE.Value2 := T;
              // RangeE.FormulaR1C1 := T;
              // RangeE.NumberFormat := 'comma [0]';
            end
            else
              // RangeE.NumberFormat := '@';
              Xls.SetCellValue(Row, columns, Master.Fields[i].AsString, XF);
            // Xls.CellValue[Row, columns] := Master.Fields[i].AsString;
            // if Master.Fields[I].Tag = 2 then
            // RangeE.Style := 'comma [0]';
            // RangeE := RangeE.Next;
          end;
        end;
        Master.Next;
        inc(Row);
      end; // finec ciclo Datasource
    finally
      Master.EnableControls;
    end; // fine ciclo tryDatasource
    // Fomattazione della sezione

    Xls.AutofitRowsOnWorkbook(true, true, 1.1);
    for i := 1 to columns do
      Xls.AutofitCol(i, false, 1.1);
    {
      case SelectMultiString('Selezionare Output', ['Elaboratore Interno', 'foglio di Calcolo (Excel)']) of
      0:
      begin
      aViewer := UXlsViewer.TFXlsViewer.Create(self);
      try
      aStream := TMemoryStream.Create;
      try
      self.Xls.SaveToStream(aStream);
      aStream.Position := 0;
      aViewer.FlexCelImport.LoadFromStream(aStream);
      finally
      aStream.Free
      end;
      aViewer.Data.LoadSheet;
      aViewer.WindowState := wsMaximized;
      aViewer.ShowModal;
      finally
      aViewer.Free;
      end;
      end;

      1:
      begin
      //
      S := Functions.GetTempPath + '\' + FormatDateTime('yyyymmddhhnnss', Now()) + '.xls';
      Xls.Save(S);
      ShellExecute(0, 'open', PChar(S), nil, nil, SW_SHOWNORMAL);

      end;
      end;
    }
    if Assigned(self.JanuaOS) then
      S := self.JanuaOS.TempPath + FormatDateTime('yyyymmddhhnnss', Now()) + '.xls'
    else
      S := FormatDateTime('yyyymmddhhnnss', Now()) + '.xls';

    Xls.Save(S);
    self.FJanuaOS.ExternalExec(S, '');
    // ShellExecute(0, 'open', PChar(S), nil, nil, SW_SHOWNORMAL);
    //   ShellExecute(0, 'OPEN', PChar(FileName), '', '', SW_SHOWNORMAL);
  finally
    Xls.Free;
  end;

end;

procedure TdmVCLDBNavigator.SetJanuaDialog(const Value: TJanuaDialog);
begin
  FJanuaDialog := Value;
end;

procedure TdmVCLDBNavigator.SetJanuaOS(const Value: TJanuaCoreOS);
begin
  FJanuaOS := Value;
end;

end.
