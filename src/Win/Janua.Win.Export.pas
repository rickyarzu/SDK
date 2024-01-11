unit Janua.Win.Export;

{$I JANUACORE.INC}

interface

uses Data.DB;

type
  TJanuaExcelExport = Class
    class procedure ExcelExport(Master: TDataset; Detail: TDataset; aSilent: boolean = False);
    class procedure FlExcelExport(Master: TDataset);
  End;

type
  TJanuaWordExport = Class
    class procedure WordExport(Dataset: TDataset; DetailDataset1: TDataset; DetailDataset2: TDataset;
      WordFile: string; aSilent: boolean = False);
  End;

implementation

uses
  System.Win.ComObj, System.SysUtils, System.StrUtils, System.Variants, System.Math, System.Classes,
  System.Types, System.UITypes, VCL.Graphics, VCL.Dialogs, System.IOUtils,
  // tms
  FlexCel.XlsAdapter, VCL.FlexCel.Core,
  // Automation
  ExcelXP, WordXP,
  // Janua
  Janua.Core.Types, Janua.Core.Classes, Janua.Core.Functions, Janua.Application.Framework;

{ TJanuaExcelExport }

class procedure TJanuaExcelExport.ExcelExport(Master: TDataset; Detail: TDataset; aSilent: boolean = False);
var
{$IF defined(MSWINDOWS)}
{$WARN SYMBOL_PLATFORM OFF}
  RangeE: ExcelXP.ExcelRange;
{$WARN SYMBOL_PLATFORM ON}
{$ENDIF}
  i, Row, columns, columns2: Integer;
  Bookmark: TBookmark;
  number: Double;
  S: String;
  T: String;
  ExcelApplication1: TExcelApplication;
begin
  ExcelApplication1 := TExcelApplication.Create(nil);
  try
    if Master.RecordCount = 0 then
    begin
      if not aSilent then
        VCL.Dialogs.MessageDlg('non ci sono dati da esportare!', mtWarning, [mbOk], 0, mbOk);
      // JShowWarning('non ci sono dati da esportare!', '', '');
      Exit;
    end;

    Bookmark := Master.GetBookmark;

    columns := 0;
    ExcelApplication1.Visible[0] := True;
    ExcelApplication1.WorkBooks.Add(NULL, 0);
    // insericsce i titoli nella prima riga
    RangeE := ExcelApplication1.ActiveCell;
    for i := 0 to Master.Fields.Count - 1 do
      if ((Master.Fields[i].Tag > 0) and (Master.Fields[i].Tag < 9)) then
      begin
        Inc(columns);
        RangeE.Value2 := Master.Fields[i].DisplayLabel;
        RangeE.Font.Bold := True;
        RangeE := RangeE.Next;
      end;
    S := chr(64 + columns);

    // aggiunge i dati dei campi nelle righe in questione:

    Master.DisableControls;
    // evita i ritorni a video... interessante
    try
      Master.First;
      Row := 2;
      while not Master.Eof do
      begin
        RangeE := ExcelApplication1.Range['A' + intTostr(Row), 'A' + intTostr(Row)];

        for i := 0 to Master.Fields.Count - 1 do
          if Master.Fields[i].Tag > 0 then
          begin
            if Master.Fields[i].Tag = 3 then
              T := Master.Fields[i].AsString
            else if Master.Fields[i].Tag = 4 then
              T := T + ' ' + Master.Fields[i].AsString
            else if Master.Fields[i].Tag = 5 then
            begin
              T := T + ' ' + Master.Fields[i].AsString;
              RangeE.Value2 := T
            end
            else if Master.Fields[i].Tag = 6 then
            begin
              T := FormatDateTime('mm/dd/yyyy', Master.Fields[i].AsDateTime);
              RangeE.Value2 := T
            end
            else if Master.Fields[i].Tag = 2 then
            begin
              number := Master.Fields[i].AsFloat;
              if Sign(number) = -1 then
                T := '=-'
              else
                T := '=';
              number := number * Sign(number);

              T := T + FormatFloat('#0.', Trunc(number)) + '.' +
                LPad(intTostr(Round(100 * ((number) - (Trunc(number))))), 2, '0');
              // RangeE.Value2 := T;
              RangeE.FormulaR1C1 := T;
              // RangeE.NumberFormat := 'comma [0]';
            end
            else
              // RangeE.NumberFormat := '@';
              RangeE.FormulaR1C1 := '''' + Master.Fields[i].AsString;
            // if Master.Fields[I].Tag = 2 then
            // RangeE.Style := 'comma [0]';
            RangeE := RangeE.Next;
          end;
        // ******************* INIZIO DETAIL ****************************************
        if (Master.Tag = 2) and (Detail <> nil) and assigned(Detail) then
        begin

          Master.EnableControls;
          Inc(Row);
          RangeE := ExcelApplication1.Range['A' + intTostr(Row), 'A' + intTostr(Row)];
          columns2 := 0;
          for i := 0 to Detail.Fields.Count - 1 do
            if ((Detail.Fields[i].Tag > 0) and (Detail.Fields[i].Tag < 4)) then
            begin
              Inc(columns);
              RangeE.Value2 := Detail.Fields[i].DisplayLabel;
              RangeE.Font.Bold := True;
              RangeE := RangeE.Next;
            end;
          if columns < columns2 then
            S := chr(64 + columns);

          // aggiunge i dati dei campi nelle righe in questione:

          Detail.DisableControls;
          // evita i ritorni a video... interessante
          Inc(Row);

          try // inizio try
            Detail.First;
            while not Detail.Eof do
            begin // inizio ciclo dataset dsDetail
              RangeE := ExcelApplication1.Range['A' + intTostr(Row), 'A' + intTostr(Row)];

              for i := 0 to Detail.Fields.Count - 1 do
                if Detail.Fields[i].Tag > 0 then
                begin // iniizio ciclo tagfiled
                  if Detail.Fields[i].Tag = 3 then
                    T := Detail.Fields[i].AsString
                  else if Detail.Fields[i].Tag = 4 then
                    T := T + ' ' + Detail.Fields[i].AsString
                  else if Detail.Fields[i].Tag = 5 then
                  begin // inzio tag 5
                    T := T + ' ' + Detail.Fields[i].AsString;
                    RangeE.Value2 := T;
                    RangeE := RangeE.Next
                  end // fine tag 5
                  else if Detail.Fields[i].Tag = 2 then
                  begin
                    T := '=' + FormatFloat('#0.', Detail.Fields[i].AsFloat) + '.' +
                      intTostr(Trunc(100 * (Detail.Fields[i].AsFloat - Trunc(Detail.Fields[i].AsFloat))));
                    RangeE.Value2 := T;
                    RangeE := RangeE.Next
                  end
                  else
                  begin
                    RangeE.Value2 := Detail.Fields[i].AsString;
                    RangeE := RangeE.Next;
                  end;
                  // if Detail.Fields[I].Tag = 2 then
                  // RangeE.Style := 'comma [0]';
                end; // fine ciclo tagfield
              Inc(Row);
              Detail.Next;
            end; // fine ciclo dsDetail
          finally
            Detail.EnableControls;
            Master.EnableControls;
            Master.GotoBookmark(Bookmark);
          end; // fine ciclo try

        end;
        // ****************** FINE DEL DETAIL **************************************

        Master.Next;
        Inc(Row);
      end; // finec ciclo Datasource
    finally
      Master.EnableControls;
    end; // fine ciclo tryDatasource
    // Fomattazione della sezione
    if Master.Tag = 1 then
    begin
      RangeE := ExcelApplication1.Range['A1', S + intTostr(Row - 1)];
      RangeE.AutoFormat(3, NULL, NULL, NULL, NULL, NULL, NULL);
    end
    else
    begin
      RangeE := ExcelApplication1.Range['A1', S + intTostr(Row - 1)];
      RangeE.Resize[1, 1];
    end;
  finally
    ExcelApplication1.Free
  end;
end;

class procedure TJanuaExcelExport.FlExcelExport(Master: TDataset);
var
  i, Row, columns, columns2: Integer;
  // da Gestire con Tabbed Notebook ............................
  // aViewer: TFXlsViewer;
  { TODO -oRiccardo -cVCL : Impostare una finestra di gestione ed Editing File di Excel }
  Bookmark: TBookmark;
  number: Double;
  S: String;
  T: String;
  aStream: TMemoryStream;
  PathToImage: string;
  Fmt: TFlxFormat;
  XF, XF2: Integer;
  Landscape: boolean;
  Xls: TXlsFile;
begin
  // Create a new file. We could also open an existing file with Xls.Open
  Xls := TXlsFile.Create(False);
  try
    Xls.NewFile(1);

    if Master.RecordCount = 0 then
      VCL.Dialogs.MessageDlg('non ci sono dati da esportare!', mtWarning, [mbOk], 0, mbOk);
    // JShowWarning('non ci sono dati da esportare!');
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
    S := TPath.GetTempPath + FormatDateTime('yyyymmddhhnnss', Now()) + '.xls';
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

class procedure TJanuaWordExport.WordExport(Dataset: TDataset; DetailDataset1: TDataset;
  DetailDataset2: TDataset; WordFile: string; aSilent: boolean = False);
var
  WordApp: OLEvariant;
  wordFileName: String;
  i: Integer;
begin

  i := 0;

  if not FileExists(WordFile) then
  begin
    if not aSilent then
      VCL.Dialogs.MessageDlg('Attenzione File non Trovato!', mtWarning, [mbOk], 0, mbOk);
    // Attenzione File non TrovatoAttenzione File non Trovato JShowWarning('Attenzione File non Trovato', '', '');
  end
  else
  begin
    try
      // Create Word Instance
      WordApp := CreateOleObject('Word.Application');
    except
      if not aSilent then
        VCL.Dialogs.MessageDlg('Problemi con MS Word!', mtError, [mbOk], 0, mbOk);
      // JShowError('Problemi con MS Word', '', '');
      Exit;
    end;

    wordFileName := WordFile;
    try
      // Open a Word Document
      WordApp.Documents.Add(Template := wordFileName);
      WordApp.Visible := True;

      for i := 0 to Dataset.FieldCount - 1 do
      begin
        WordApp.Selection.Find.ClearFormatting;
        WordApp.Selection.Find.Replacement.ClearFormatting;
        WordApp.Selection.Find.Text := '<' + Dataset.Fields[i].FieldName + '>';
        WordApp.Selection.Find.Replacement.Text := Dataset.Fields[i].AsString;
        WordApp.Selection.Find.Forward := True;
        WordApp.Selection.Find.Wrap := wdFindContinue;
        WordApp.Selection.Find.Format := False;
        WordApp.Selection.Find.MatchCase := False;
        WordApp.Selection.Find.MatchWholeWord := False;
        WordApp.Selection.Find.MatchWildcards := False;
        WordApp.Selection.Find.MatchSoundsLike := False;
        WordApp.Selection.Find.MatchAllWordForms := False;
        WordApp.Selection.Find.Execute(Replace := wdReplaceAll);
      end;

      if assigned(DetailDataset1) then
        for i := 0 to DetailDataset1.FieldCount - 1 do
        begin
          WordApp.Selection.Find.ClearFormatting;
          WordApp.Selection.Find.Replacement.ClearFormatting;
          WordApp.Selection.Find.Text := '<' + DetailDataset1.Fields[i].FieldName + '>';
          WordApp.Selection.Find.Replacement.Text := DetailDataset1.Fields[i].AsString;
          WordApp.Selection.Find.Forward := True;
          WordApp.Selection.Find.Wrap := wdFindContinue;
          WordApp.Selection.Find.Format := False;
          WordApp.Selection.Find.MatchCase := False;
          WordApp.Selection.Find.MatchWholeWord := False;
          WordApp.Selection.Find.MatchWildcards := False;
          WordApp.Selection.Find.MatchSoundsLike := False;
          WordApp.Selection.Find.MatchAllWordForms := False;
          WordApp.Selection.Find.Execute(Replace := wdReplaceAll);
        end;

      if assigned(DetailDataset2) then
        for i := 0 to DetailDataset2.FieldCount - 1 do
        begin
          WordApp.Selection.Find.ClearFormatting;
          WordApp.Selection.Find.Replacement.ClearFormatting;
          WordApp.Selection.Find.Text := '<' + DetailDataset2.Fields[i].FieldName + '>';
          WordApp.Selection.Find.Replacement.Text := DetailDataset2.Fields[i].AsString;
          WordApp.Selection.Find.Forward := True;
          WordApp.Selection.Find.Wrap := wdFindContinue;
          WordApp.Selection.Find.Format := False;
          WordApp.Selection.Find.MatchCase := False;
          WordApp.Selection.Find.MatchWholeWord := False;
          WordApp.Selection.Find.MatchWildcards := False;
          WordApp.Selection.Find.MatchSoundsLike := False;
          WordApp.Selection.Find.MatchAllWordForms := False;
          WordApp.Selection.Find.Execute(Replace := wdReplaceAll);
        end;

      WordApp.Selection.Find.ClearFormatting;
      WordApp.Selection.Find.Replacement.ClearFormatting;
      WordApp.Selection.Find.Text := '<SYSDATE>';
      WordApp.Selection.Find.Replacement.Text := DateToStr(Date());;
      WordApp.Selection.Find.Forward := True;
      WordApp.Selection.Find.Wrap := wdFindContinue;
      WordApp.Selection.Find.Format := False;
      WordApp.Selection.Find.MatchCase := False;
      WordApp.Selection.Find.MatchWholeWord := False;
      WordApp.Selection.Find.MatchWildcards := False;
      WordApp.Selection.Find.MatchSoundsLike := False;
      WordApp.Selection.Find.MatchAllWordForms := False;
      WordApp.Selection.Find.Execute(Replace := wdReplaceAll);

      // fai qualcosa con il documento aperto
      // WordApp.Quit(false, EmptyParam, EmptyParam);

    finally
      WordApp := Unassigned;
    end;

  end;
end;

end.
