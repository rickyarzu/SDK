unit Janua.VCL.Flexcel;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, System.Variants, // Janua
  Janua.Core.Types, Janua.Core.Classes, Janua.Core.Functions, Janua.VCL.Functions, Data.DB,
  VCL.Controls, Janua.VCL.Dialogs, VCL.Dialogs, VCL.Graphics, VCL.Forms;

procedure FlexcelExport(Master: TDataset);

implementation

uses Flexcel.XlsAdapter, VCL.Flexcel.Core;

procedure FlexcelExport(Master: TDataset);
var
  i, Row, columns: Integer;
  // da Gestire con Tabbed Notebook ............................
  // aViewer: TFXlsViewer;
  { TODO -oRiccardo -cVCL : Impostare una finestra di gestione ed Editing File di Excel }
  Bookmark: TBookmark;
  S: String;
  T: String;
  // aStream: TMemoryStream;
  // PathToImage: string;
  Fmt: TFlxFormat;
  XF: Integer;
  // Landscape: Boolean;
  Xls: TXlsFile;
begin
  // Create a new file. We could also open an existing file with Xls.Open
  Xls := TXlsFile.Create(False);
  try
    Xls.NewFile(1);

    if Master.RecordCount = 0 then
      JShowWarning('non ci sono dati da esportare!');
    Exit;

    Bookmark := Master.GetBookmark;

    columns := 0;
    Row := 1;

    Fmt := Xls.GetDefaultFormat;
    Fmt.Font.Style := [TFlxFontStyles.Bold];
    XF := Xls.AddFormat(Fmt);

    for i := 0 to Master.Fields.Count - 1 do
      if ((Master.Fields[i].Tag > 0) and (Master.Fields[i].Tag < 9)) then
      begin
        Inc(columns);
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
            Inc(columns);
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
        Inc(Row);
      end; // finec ciclo Datasource
    finally
      Master.EnableControls;
    end; // fine ciclo tryDatasource
    // Fomattazione della sezione

    Xls.AutofitRowsOnWorkbook(True, True, 1.1);
    for i := 1 to columns do
      Xls.AutofitCol(i, False, 1.1);
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
    // if Assigned(self.JanuaOS) then
    S := TJanuaCoreOS.GetTempPath + FormatDateTime('yyyymmddhhnnss', Now()) + '.xls';
    // else
    // S := FormatDateTime('yyyymmddhhnnss', Now()) + '.xls';

    Xls.Save(S);
    TJanuaCoreOS.ExternalExec(S, '');
    // ShellExecute(0, 'open', PChar(S), nil, nil, SW_SHOWNORMAL);
    // ShellExecute(0, 'OPEN', PChar(FileName), '', '', SW_SHOWNORMAL);
  finally
    Xls.Free;
  end;

end;

end.
