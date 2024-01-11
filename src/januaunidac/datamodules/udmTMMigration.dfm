object dmTMMigration: TdmTMMigration
  Height = 411
  Width = 1012
  object TailorMagazzino: TJanuaUniConnection
    ProviderName = 'SQL Server'
    Port = 1433
    Database = 'MAGAZZINO'
    Username = 'SOFTNET_DBACCESS'
    Server = '192.168.1.202'
    LoginPrompt = False
    SchemaParamKey = 'system.db_schema_id'
    SchemaParams = <>
    Left = 64
    Top = 40
    EncryptedPassword = 'ACFF90FF99FF8BFF91FF9AFF8BFFCDFFCEFFC6FFCFFFC7FFCAFF'
  end
  object SQLServerUniProvider1: TSQLServerUniProvider
    Left = 64
    Top = 96
  end
  object SQLSrvMagazzinoServer: TJanuaUniConnection
    ProviderName = 'SQL Server'
    Port = 58433
    Database = 'MAGAZZINO'
    Options.DisconnectedMode = True
    Username = 'ergo'
    Server = 'w2008.januaservers.com'
    LoginPrompt = False
    SchemaParamKey = 'system.db_schema_id'
    SchemaParams = <>
    Left = 64
    Top = 152
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object tbMagazzini: TUniTable
    TableName = 'MAGAZZINI'
    Connection = SQLSrvMagazzinoServer
    Left = 184
    Top = 64
    object tbMagazziniCodice: TStringField
      FieldName = 'Codice'
      Required = True
      Size = 5
    end
    object tbMagazziniDescrizione: TStringField
      FieldName = 'Descrizione'
      Size = 30
    end
    object tbMagazziniDataInserimento: TDateTimeField
      FieldName = 'DataInserimento'
    end
    object tbMagazziniCodUtente: TStringField
      FieldName = 'CodUtente'
      Size = 15
    end
    object tbMagazziniUtenteUltimaModifica: TStringField
      FieldName = 'UtenteUltimaModifica'
      Size = 15
    end
    object tbMagazziniDataUltimaModifica: TDateTimeField
      FieldName = 'DataUltimaModifica'
    end
    object tbMagazziniLocalita: TStringField
      FieldName = 'Localita'
      Size = 50
    end
  end
  object spMagazzini: TUniStoredProc
    StoredProcName = 'sp_ins_magazzini'
    SQL.Strings = (
      
        'SELECT * FROM sp_ins_magazzini(:p_codice, :p_descrizione, :p_dat' +
        'ainserimento, :p_codutente, :p_utenteultimamodifica, :p_dataulti' +
        'mamodifica, :p_localita, :p_jguid)')
    Connection = ErgoConnection
    Left = 184
    Top = 120
    ParamData = <
      item
        DataType = ftString
        Name = 'p_codice'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'p_descrizione'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'p_datainserimento'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'p_codutente'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'p_utenteultimamodifica'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'p_dataultimamodifica'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'p_localita'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftGuid
        Name = 'p_jguid'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'sp_ins_magazzini'
  end
  object ErgoConnection: TJanuaUniConnection
    ProviderName = 'PostgreSQL'
    Port = 5432
    Database = 'ergomercator'
    SpecificOptions.Strings = (
      'PostgreSQL.Schema=custom_tm_logistic'
      'PostgreSQL.UseUnicode=True')
    Options.DisconnectedMode = True
    Username = 'ergo'
    Server = 'pg.januaservers.com'
    SchemaParamKey = 'system.db_schema_id'
    SchemaParams = <>
    Left = 64
    Top = 208
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object PostgreSQLUniProvider1: TPostgreSQLUniProvider
    Left = 64
    Top = 256
  end
  object tbPgMagazzini: TUniTable
    TableName = 'magazzini'
    Connection = ErgoConnection
    Left = 184
    Top = 176
    object tbPgMagazzinicodice: TStringField
      FieldName = 'codice'
      Required = True
      Size = 5
    end
    object tbPgMagazzinidescrizione: TStringField
      FieldName = 'descrizione'
      Size = 30
    end
    object tbPgMagazzinidatainserimento: TDateTimeField
      FieldName = 'datainserimento'
    end
    object tbPgMagazzinicodutente: TStringField
      FieldName = 'codutente'
      Size = 15
    end
    object tbPgMagazziniutenteultimamodifica: TStringField
      FieldName = 'utenteultimamodifica'
      Size = 15
    end
    object tbPgMagazzinidataultimamodifica: TDateTimeField
      FieldName = 'dataultimamodifica'
    end
    object tbPgMagazzinilocalita: TStringField
      FieldName = 'localita'
      Size = 50
    end
    object tbPgMagazzinijguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
  end
  object SqlServerPratiche: TJanuaUniConnection
    ProviderName = 'SQL Server'
    Port = 58433
    Database = 'PRATICHE'
    Options.DisconnectedMode = True
    Username = 'ergo'
    Server = 'w2008.januaservers.com'
    LoginPrompt = False
    SchemaParamKey = 'system.db_schema_id'
    SchemaParams = <>
    Left = 184
    Top = 232
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object TailorPratiche: TJanuaUniConnection
    ProviderName = 'SQL Server'
    Port = 1433
    Database = 'PRATICHE'
    Username = 'SOFTNET_DBACCESS'
    Server = '192.168.1.202'
    LoginPrompt = False
    SchemaParamKey = 'system.db_schema_id'
    SchemaParams = <>
    Left = 64
    Top = 316
    EncryptedPassword = 'ACFF90FF99FF8BFF91FF9AFF8BFFCDFFCEFFC6FFCFFFC7FFCAFF'
  end
  object qryAttachmentsEntrate: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO custom_tm_logistic.docarchiviatientrate'
      
        '  (anno, num_entrata, pg, contatore, dataacquisizione, numero, t' +
        'ipodoc, codcompagnia, codfornitore, codaltro, codcliente, note, ' +
        'path, nomefile, dataarchiviazione, codutente, tipo, nomefileorig' +
        'inale, pathfile, nomefilearchiviato, flgvisibile, jguid)'
      'VALUES'
      
        '  (:anno, :num_entrata, :pg, :contatore, :dataacquisizione, :num' +
        'ero, :tipodoc, :codcompagnia, :codfornitore, :codaltro, :codclie' +
        'nte, :note, :path, :nomefile, :dataarchiviazione, :codutente, :t' +
        'ipo, :nomefileoriginale, :pathfile, :nomefilearchiviato, :flgvis' +
        'ibile, :jguid)')
    SQLDelete.Strings = (
      'DELETE FROM custom_tm_logistic.docarchiviatientrate'
      'WHERE'
      
        '  anno = :Old_anno AND num_entrata = :Old_num_entrata AND pg = :' +
        'Old_pg AND contatore = :Old_contatore')
    SQLUpdate.Strings = (
      'UPDATE custom_tm_logistic.docarchiviatientrate'
      'SET'
      
        '  anno = :anno, num_entrata = :num_entrata, pg = :pg, contatore ' +
        '= :contatore, dataacquisizione = :dataacquisizione, numero = :nu' +
        'mero, tipodoc = :tipodoc, codcompagnia = :codcompagnia, codforni' +
        'tore = :codfornitore, codaltro = :codaltro, codcliente = :codcli' +
        'ente, note = :note, path = :path, nomefile = :nomefile, dataarch' +
        'iviazione = :dataarchiviazione, codutente = :codutente, tipo = :' +
        'tipo, nomefileoriginale = :nomefileoriginale, pathfile = :pathfi' +
        'le, nomefilearchiviato = :nomefilearchiviato, flgvisibile = :flg' +
        'visibile, jguid = :jguid'
      'WHERE'
      
        '  anno = :Old_anno AND num_entrata = :Old_num_entrata AND pg = :' +
        'Old_pg AND contatore = :Old_contatore')
    SQLLock.Strings = (
      'SELECT * FROM custom_tm_logistic.docarchiviatientrate'
      'WHERE'
      
        '  anno = :Old_anno AND num_entrata = :Old_num_entrata AND pg = :' +
        'Old_pg AND contatore = :Old_contatore'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT anno, num_entrata, pg, contatore, dataacquisizione, numer' +
        'o, tipodoc, codcompagnia, codfornitore, codaltro, codcliente, no' +
        'te, path, nomefile, dataarchiviazione, codutente, tipo, nomefile' +
        'originale, pathfile, nomefilearchiviato, flgvisibile, jguid FROM' +
        ' custom_tm_logistic.docarchiviatientrate'
      'WHERE'
      
        '  anno = :anno AND num_entrata = :num_entrata AND pg = :pg AND c' +
        'ontatore = :contatore')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM custom_tm_logistic.docarchiviatientrate'
      ''
      ') t')
    Connection = ErgoConnection
    SQL.Strings = (
      'select h.id, h.doc_date, h.doc_year, d.* from '
      'custom_tm_logistic.docarchiviatientrate d '
      '  inner join custom_tm_logistic.entrate e'
      
        '   on e.anno = d.anno and e.num_entrata = d.num_entrata and e.pg' +
        ' = d.pg'
      '  inner join documents.heads h '
      '   on h.jguid = e.jguid '
      
        ' where not exists (select 1 from documents.attachments a where a' +
        '.blob_jguid = d.jguid)')
    Left = 312
    Top = 88
    object qryAttachmentsEntrateid: TLargeintField
      FieldName = 'id'
      ReadOnly = True
      Required = True
    end
    object qryAttachmentsEntrateanno: TIntegerField
      FieldName = 'anno'
      Required = True
    end
    object qryAttachmentsEntratenum_entrata: TIntegerField
      FieldName = 'num_entrata'
      Required = True
    end
    object qryAttachmentsEntratepg: TIntegerField
      FieldName = 'pg'
      Required = True
    end
    object qryAttachmentsEntratecontatore: TIntegerField
      FieldName = 'contatore'
      Required = True
    end
    object qryAttachmentsEntratedataacquisizione: TDateTimeField
      FieldName = 'dataacquisizione'
    end
    object qryAttachmentsEntratenumero: TIntegerField
      FieldName = 'numero'
    end
    object qryAttachmentsEntratetipodoc: TWideStringField
      FieldName = 'tipodoc'
      Size = 2
    end
    object qryAttachmentsEntratecodcompagnia: TWideStringField
      FieldName = 'codcompagnia'
      Size = 2
    end
    object qryAttachmentsEntratecodfornitore: TWideStringField
      FieldName = 'codfornitore'
      Size = 6
    end
    object qryAttachmentsEntratecodaltro: TIntegerField
      FieldName = 'codaltro'
    end
    object qryAttachmentsEntratecodcliente: TWideStringField
      FieldName = 'codcliente'
    end
    object qryAttachmentsEntratenote: TWideMemoField
      FieldName = 'note'
      BlobType = ftWideMemo
    end
    object qryAttachmentsEntratepath: TWideStringField
      FieldName = 'path'
      Size = 150
    end
    object qryAttachmentsEntratenomefile: TWideStringField
      FieldName = 'nomefile'
      Size = 50
    end
    object qryAttachmentsEntratedataarchiviazione: TDateTimeField
      FieldName = 'dataarchiviazione'
    end
    object qryAttachmentsEntratecodutente: TWideStringField
      FieldName = 'codutente'
      Size = 10
    end
    object qryAttachmentsEntratetipo: TWideStringField
      FieldName = 'tipo'
      Size = 1
    end
    object qryAttachmentsEntratenomefileoriginale: TWideStringField
      FieldName = 'nomefileoriginale'
      Size = 50
    end
    object qryAttachmentsEntratepathfile: TWideStringField
      FieldName = 'pathfile'
      Size = 250
    end
    object qryAttachmentsEntratenomefilearchiviato: TWideStringField
      FieldName = 'nomefilearchiviato'
      Size = 50
    end
    object qryAttachmentsEntrateflgvisibile: TWideStringField
      FieldName = 'flgvisibile'
      FixedChar = True
      Size = 1
    end
    object qryAttachmentsEntratejguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryAttachmentsEntratedoc_date: TDateField
      FieldName = 'doc_date'
      ReadOnly = True
    end
    object qryAttachmentsEntratedoc_year: TFloatField
      FieldName = 'doc_year'
      ReadOnly = True
    end
  end
  object qryAttachmentsPratiche: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'month'
        FieldType = ftString
        FieldLength = 2
        IgnoreErrors = True
      end
      item
        FieldName = 'note'
        FieldType = ftWideString
        FieldLength = 4092
        IgnoreErrors = True
      end>
    Connection = ErgoConnection
    SQL.Strings = (
      'SELECT w.id, w.workdate, date_part('#39'year'#39', w.workdate) as year, '
      
        '       lpad(date_part('#39'month'#39', w.workdate)::character varying, 2' +
        ', '#39'0'#39') as month,'
      '       a.*'
      #9'FROM '
      
        #9'  custom_tm_logistic.documentiarchiviati a inner join  custom_t' +
        'm_logistic.testatapratiche p'
      
        #9'    on p.anno = a.anno and a.progressivo = p.progressivo and  a' +
        '.progressivopraticagroupage = p.progressivopraticagroupage'
      #9#9'inner join workflow.workflows w on w.jguid = p.jguid'
      '        WHERE '
      
        '            not exists (select 1 from workflow.attachments t whe' +
        're t.blob_jguid = a.jguid)'
      '          ')
    Left = 312
    Top = 152
    object qryAttachmentsPraticheid: TLargeintField
      FieldName = 'id'
      ReadOnly = True
      Required = True
    end
    object qryAttachmentsPraticheworkdate: TDateTimeField
      FieldName = 'workdate'
      ReadOnly = True
      Required = True
    end
    object qryAttachmentsPraticheyear: TFloatField
      FieldName = 'year'
      ReadOnly = True
    end
    object qryAttachmentsPratichemonth: TStringField
      FieldName = 'month'
      ReadOnly = True
      Size = 2
    end
    object qryAttachmentsPraticheanno: TWideStringField
      FieldName = 'anno'
      Required = True
      Size = 4
    end
    object qryAttachmentsPraticheprogressivo: TIntegerField
      FieldName = 'progressivo'
      Required = True
    end
    object qryAttachmentsPraticheprogressivopraticagroupage: TSmallintField
      FieldName = 'progressivopraticagroupage'
      Required = True
    end
    object qryAttachmentsPratichecodattivita: TWideStringField
      FieldName = 'codattivita'
      Required = True
      Size = 1
    end
    object qryAttachmentsPratichecodfiliale: TWideStringField
      FieldName = 'codfiliale'
      Required = True
      Size = 2
    end
    object qryAttachmentsPratichecontatore: TIntegerField
      FieldName = 'contatore'
      Required = True
    end
    object qryAttachmentsPratichedataacquisizione: TDateTimeField
      FieldName = 'dataacquisizione'
    end
    object qryAttachmentsPratichetipodoc: TWideStringField
      FieldName = 'tipodoc'
      Size = 2
    end
    object qryAttachmentsPratichecodcompagnia: TWideStringField
      FieldName = 'codcompagnia'
      Size = 6
    end
    object qryAttachmentsPratichecodfornitore: TWideStringField
      FieldName = 'codfornitore'
      Size = 6
    end
    object qryAttachmentsPratichecodaltro: TIntegerField
      FieldName = 'codaltro'
    end
    object qryAttachmentsPratichecodcliente: TWideStringField
      FieldName = 'codcliente'
    end
    object qryAttachmentsPratichenote: TWideStringField
      FieldName = 'note'
      Size = 4092
    end
    object qryAttachmentsPratichepath: TWideStringField
      FieldName = 'path'
      Size = 150
    end
    object qryAttachmentsPratichenomefile: TWideStringField
      FieldName = 'nomefile'
      Size = 50
    end
    object qryAttachmentsPratichecodutente: TWideStringField
      FieldName = 'codutente'
      Size = 8
    end
    object qryAttachmentsPraticheflgvisibile: TWideStringField
      FieldName = 'flgvisibile'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryAttachmentsPratichejguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
  end
  object tbWorkFlowAttachments: TUniTable
    TableName = 'workflow.attachments'
    Connection = ErgoConnection
    Left = 312
    Top = 208
    object tbWorkFlowAttachmentswork_id: TLargeintField
      FieldName = 'work_id'
      Required = True
    end
    object tbWorkFlowAttachmentsblob_id: TLargeintField
      FieldName = 'blob_id'
      Required = True
    end
    object tbWorkFlowAttachmentsblob_jguid: TGuidField
      FieldName = 'blob_jguid'
      Size = 38
    end
    object tbWorkFlowAttachmentslocation: TWideStringField
      FieldName = 'location'
      Required = True
      Size = 1
    end
    object tbWorkFlowAttachmentsfilename: TWideStringField
      FieldName = 'filename'
      Size = 256
    end
    object tbWorkFlowAttachmentsdescription: TWideMemoField
      FieldName = 'description'
      BlobType = ftWideMemo
    end
    object tbWorkFlowAttachmentscontext: TWideMemoField
      FieldName = 'context'
      BlobType = ftWideMemo
    end
    object tbWorkFlowAttachmentsextension: TWideStringField
      FieldName = 'extension'
    end
  end
  object tbDocumentsAttachments: TUniTable
    TableName = 'DOCUMENTS.ATTACHMENTS'
    Connection = ErgoConnection
    Left = 312
    Top = 272
    object tbDocumentsAttachmentsdoc_id: TLargeintField
      FieldName = 'doc_id'
      Required = True
    end
    object tbDocumentsAttachmentsblob_id: TLargeintField
      FieldName = 'blob_id'
      Required = True
    end
    object tbDocumentsAttachmentsblob_jguid: TGuidField
      FieldName = 'blob_jguid'
      Size = 38
    end
    object tbDocumentsAttachmentslocation: TWideStringField
      FieldName = 'location'
      Required = True
      Size = 1
    end
    object tbDocumentsAttachmentsfilename: TWideStringField
      FieldName = 'filename'
      Size = 256
    end
    object tbDocumentsAttachmentsdescription: TWideMemoField
      FieldName = 'description'
      BlobType = ftWideMemo
    end
    object tbDocumentsAttachmentscontext: TWideMemoField
      FieldName = 'context'
      BlobType = ftWideMemo
    end
    object tbDocumentsAttachmentsextension: TWideStringField
      FieldName = 'extension'
    end
  end
  object qryBlobFile: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO cloud.blob_files'
      
        '  (blob_id, blob_file, blob_size, db_schema_id, blob_key, db_use' +
        'r_id, ispublic, cblb_jguid, cblb_deleted, file_ext, filename, is' +
        'resource, is_external, ex_location, jguid, insert_date)'
      'VALUES'
      
        '  (:blob_id, :blob_file, :blob_size, :db_schema_id, :blob_key, :' +
        'db_user_id, :ispublic, :cblb_jguid, :cblb_deleted, :file_ext, :f' +
        'ilename, :isresource, :is_external, :ex_location, :jguid, :inser' +
        't_date)')
    SQLDelete.Strings = (
      'DELETE FROM cloud.blob_files'
      'WHERE'
      '  blob_id = :Old_blob_id')
    SQLUpdate.Strings = (
      'UPDATE cloud.blob_files'
      'SET'
      
        '  blob_id = :blob_id, blob_file = :blob_file, blob_size = :blob_' +
        'size, db_schema_id = :db_schema_id, blob_key = :blob_key, db_use' +
        'r_id = :db_user_id, ispublic = :ispublic, cblb_jguid = :cblb_jgu' +
        'id, cblb_deleted = :cblb_deleted, file_ext = :file_ext, filename' +
        ' = :filename, isresource = :isresource, is_external = :is_extern' +
        'al, ex_location = :ex_location, jguid = :jguid, insert_date = :i' +
        'nsert_date'
      'WHERE'
      '  blob_id = :Old_blob_id')
    SQLLock.Strings = (
      'SELECT * FROM cloud.blob_files'
      'WHERE'
      '  blob_id = :Old_blob_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT blob_id, blob_file, blob_size, db_schema_id, blob_key, db' +
        '_user_id, ispublic, cblb_jguid, cblb_deleted, file_ext, filename' +
        ', isresource, is_external, ex_location, jguid, insert_date FROM ' +
        'cloud.blob_files'
      'WHERE'
      '  blob_id = :blob_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cloud.blob_files'
      ''
      ') t')
    Connection = ErgoConnection
    SQL.Strings = (
      'SELECT b.*'
      '  FROM cloud.blob_files b'
      'where '
      '  blob_id > 881'
      '  ')
    OnNewRecord = qryBlobFileNewRecord
    Left = 314
    Top = 336
    object qryBlobFileblob_id: TLargeintField
      FieldName = 'blob_id'
      Required = True
    end
    object qryBlobFileblob_file: TBlobField
      FieldName = 'blob_file'
    end
    object qryBlobFileblob_size: TLargeintField
      FieldName = 'blob_size'
    end
    object qryBlobFiledb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryBlobFileblob_key: TWideStringField
      FieldName = 'blob_key'
      Size = 64
    end
    object qryBlobFiledb_user_id: TIntegerField
      FieldName = 'db_user_id'
    end
    object qryBlobFileispublic: TBooleanField
      FieldName = 'ispublic'
    end
    object qryBlobFilecblb_jguid: TWideStringField
      FieldName = 'cblb_jguid'
      Required = True
      Size = 40
    end
    object qryBlobFilecblb_deleted: TBooleanField
      FieldName = 'cblb_deleted'
    end
    object qryBlobFilefile_ext: TWideStringField
      FieldName = 'file_ext'
      Size = 12
    end
    object qryBlobFilefilename: TWideStringField
      FieldName = 'filename'
      Size = 256
    end
    object qryBlobFileisresource: TBooleanField
      FieldName = 'isresource'
    end
    object qryBlobFileis_external: TBooleanField
      FieldName = 'is_external'
    end
    object qryBlobFileex_location: TWideStringField
      FieldName = 'ex_location'
      Size = 1
    end
    object qryBlobFilejguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
  end
  object qryBlobSequence: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO cloud.blob_files'
      
        '  (blob_id, blob_file, blob_size, db_schema_id, blob_key, db_use' +
        'r_id, ispublic, cblb_jguid, cblb_deleted, file_ext, filename, is' +
        'resource, file_name, is_external, ex_location, jguid)'
      'VALUES'
      
        '  (:blob_id, :blob_file, :blob_size, :db_schema_id, :blob_key, :' +
        'db_user_id, :ispublic, :cblb_jguid, :cblb_deleted, :file_ext, :f' +
        'ilename, :isresource, :file_name, :is_external, :ex_location, :j' +
        'guid)')
    SQLDelete.Strings = (
      'DELETE FROM cloud.blob_files'
      'WHERE'
      '  blob_id = :Old_blob_id')
    SQLUpdate.Strings = (
      'UPDATE cloud.blob_files'
      'SET'
      
        '  blob_id = :blob_id, blob_file = :blob_file, blob_size = :blob_' +
        'size, db_schema_id = :db_schema_id, blob_key = :blob_key, db_use' +
        'r_id = :db_user_id, ispublic = :ispublic, cblb_jguid = :cblb_jgu' +
        'id, cblb_deleted = :cblb_deleted, file_ext = :file_ext, filename' +
        ' = :filename, isresource = :isresource, file_name = :file_name, ' +
        'is_external = :is_external, ex_location = :ex_location, jguid = ' +
        ':jguid'
      'WHERE'
      '  blob_id = :Old_blob_id')
    SQLLock.Strings = (
      'SELECT * FROM cloud.blob_files'
      'WHERE'
      '  blob_id = :Old_blob_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT blob_id, blob_file, blob_size, db_schema_id, blob_key, db' +
        '_user_id, ispublic, cblb_jguid, cblb_deleted, file_ext, filename' +
        ', isresource, file_name, is_external, ex_location, jguid FROM cl' +
        'oud.blob_files'
      'WHERE'
      '  blob_id = :blob_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cloud.blob_files'
      ''
      ') t')
    Connection = ErgoConnection
    SQL.Strings = (
      'SELECT nextval('#39'cloud.file_seq'#39') as nextval'
      '  ')
    Left = 426
    Top = 304
    object qryBlobSequencenextval: TLargeintField
      FieldName = 'nextval'
      ReadOnly = True
    end
  end
  object sqlUpdatePratiche: TUniSQL
    Connection = ErgoConnection
    SQL.Strings = (
      'INSERT INTO workflow.attachments('
      
        #9'work_id, blob_id, blob_jguid, location, filename, description, ' +
        'context, extension)'
      
        'SELECT w.id, f.blob_id, a.jguid, '#39'G'#39', filename,  a.note, '#39#39', fil' +
        'e_ext'
      #9'FROM '
      
        #9'  custom_tm_logistic.documentiarchiviati a inner join  custom_t' +
        'm_logistic.testatapratiche p'
      
        #9'    on p.anno = a.anno and a.progressivo = p.progressivo and  a' +
        '.progressivopraticagroupage = p.progressivopraticagroupage'
      #9#9'inner join workflow.workflows w on w.jguid = p.jguid '
      #9#9'inner join cloud.blob_files f on f.jguid = a.jguid'
      '        WHERE '
      
        '            not exists (select 1 from workflow.attachments t whe' +
        're t.blob_jguid = a.jguid)')
    Left = 432
    Top = 112
  end
  object sqlUpdateEntrate: TUniSQL
    Connection = ErgoConnection
    Left = 432
    Top = 184
  end
  object qryDocHeads: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO documents.heads'
      
        '  (id, type_id, in_out, doc_date, doc_number, reason, dest_addre' +
        'ss, dest_postal_code, dest_town, dest_state_province, dest_count' +
        'ry_iso, departure_date, delivery_methos, goods_description, pack' +
        'ages_number, total_weight, incoterms, delivery_charges, discount' +
        '_rate, anagraph_id, carrier_id, dest_state_province_id, dest_reg' +
        'ion_id, dest_town_id, currency_id, payment_terms_id, payment_ter' +
        'ms_des, package_description, payment_term_code, folder_id, doc_s' +
        'tate, holder_name, holder_id, holder_vat_id, holder_address, hol' +
        'der_postal_code, holder_town, holder_state_province, holder_coun' +
        'try_iso, delivery_rate_expense, holder_group_id, amount, net_amo' +
        'unt, financial_year, doc_origin_id, delivery_vat_id, delivery_va' +
        't_rate, accounted, insert_date, update_date, delivery_due_date, ' +
        'sent, arrival_date, payment_due_date, duties, paid, doc_fine, us' +
        'er_insert, user_update, doc_year, po_number_id, po_number, print' +
        'ed, contact_name, contact_email, contact_phone, office_id, wareh' +
        'ouse_location_id, jguid, notes1, notes2, notes3, db_schema_id, p' +
        'urchase_order_number, custom_field_1, custom_field_2, custom_fie' +
        'ld_3, custom_int_1, custom_int_2, custom_int_3, doc_ref_code, ca' +
        'rrier_expenses, registry_code, carrier_tracking_number, carrier_' +
        'expenses_currency_id, search_index, dest_name, carrier_name, loc' +
        'ation_name, goods_type_id, importexport, carrier_invoice_number,' +
        ' carrier_invoice_date, workflow_id, vessel_department_id, paymen' +
        't_term_id, an_code, ref_date, ref_code, stamp_duty, exchange_rat' +
        'e, conversion_date, work_code, work_date, deleted, dest_vat_numb' +
        'er, holder_vat_number)'
      'VALUES'
      
        '  (:id, :type_id, :in_out, :doc_date, :doc_number, :reason, :des' +
        't_address, :dest_postal_code, :dest_town, :dest_state_province, ' +
        ':dest_country_iso, :departure_date, :delivery_methos, :goods_des' +
        'cription, :packages_number, :total_weight, :incoterms, :delivery' +
        '_charges, :discount_rate, :anagraph_id, :carrier_id, :dest_state' +
        '_province_id, :dest_region_id, :dest_town_id, :currency_id, :pay' +
        'ment_terms_id, :payment_terms_des, :package_description, :paymen' +
        't_term_code, :folder_id, :doc_state, :holder_name, :holder_id, :' +
        'holder_vat_id, :holder_address, :holder_postal_code, :holder_tow' +
        'n, :holder_state_province, :holder_country_iso, :delivery_rate_e' +
        'xpense, :holder_group_id, :amount, :net_amount, :financial_year,' +
        ' :doc_origin_id, :delivery_vat_id, :delivery_vat_rate, :accounte' +
        'd, :insert_date, :update_date, :delivery_due_date, :sent, :arriv' +
        'al_date, :payment_due_date, :duties, :paid, :doc_fine, :user_ins' +
        'ert, :user_update, :doc_year, :po_number_id, :po_number, :printe' +
        'd, :contact_name, :contact_email, :contact_phone, :office_id, :w' +
        'arehouse_location_id, :jguid, :notes1, :notes2, :notes3, :db_sch' +
        'ema_id, :purchase_order_number, :custom_field_1, :custom_field_2' +
        ', :custom_field_3, :custom_int_1, :custom_int_2, :custom_int_3, ' +
        ':doc_ref_code, :carrier_expenses, :registry_code, :carrier_track' +
        'ing_number, :carrier_expenses_currency_id, :search_index, :dest_' +
        'name, :carrier_name, :location_name, :goods_type_id, :importexpo' +
        'rt, :carrier_invoice_number, :carrier_invoice_date, :workflow_id' +
        ', :vessel_department_id, :payment_term_id, :an_code, :ref_date, ' +
        ':ref_code, :stamp_duty, :exchange_rate, :conversion_date, :work_' +
        'code, :work_date, :deleted, :dest_vat_number, :holder_vat_number' +
        ')')
    SQLDelete.Strings = (
      'DELETE FROM documents.heads'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE documents.heads'
      'SET'
      
        '  id = :id, type_id = :type_id, in_out = :in_out, doc_date = :do' +
        'c_date, doc_number = :doc_number, reason = :reason, dest_address' +
        ' = :dest_address, dest_postal_code = :dest_postal_code, dest_tow' +
        'n = :dest_town, dest_state_province = :dest_state_province, dest' +
        '_country_iso = :dest_country_iso, departure_date = :departure_da' +
        'te, delivery_methos = :delivery_methos, goods_description = :goo' +
        'ds_description, packages_number = :packages_number, total_weight' +
        ' = :total_weight, incoterms = :incoterms, delivery_charges = :de' +
        'livery_charges, discount_rate = :discount_rate, anagraph_id = :a' +
        'nagraph_id, carrier_id = :carrier_id, dest_state_province_id = :' +
        'dest_state_province_id, dest_region_id = :dest_region_id, dest_t' +
        'own_id = :dest_town_id, currency_id = :currency_id, payment_term' +
        's_id = :payment_terms_id, payment_terms_des = :payment_terms_des' +
        ', package_description = :package_description, payment_term_code ' +
        '= :payment_term_code, folder_id = :folder_id, doc_state = :doc_s' +
        'tate, holder_name = :holder_name, holder_id = :holder_id, holder' +
        '_vat_id = :holder_vat_id, holder_address = :holder_address, hold' +
        'er_postal_code = :holder_postal_code, holder_town = :holder_town' +
        ', holder_state_province = :holder_state_province, holder_country' +
        '_iso = :holder_country_iso, delivery_rate_expense = :delivery_ra' +
        'te_expense, holder_group_id = :holder_group_id, amount = :amount' +
        ', net_amount = :net_amount, financial_year = :financial_year, do' +
        'c_origin_id = :doc_origin_id, delivery_vat_id = :delivery_vat_id' +
        ', delivery_vat_rate = :delivery_vat_rate, accounted = :accounted' +
        ', insert_date = :insert_date, update_date = :update_date, delive' +
        'ry_due_date = :delivery_due_date, sent = :sent, arrival_date = :' +
        'arrival_date, payment_due_date = :payment_due_date, duties = :du' +
        'ties, paid = :paid, doc_fine = :doc_fine, user_insert = :user_in' +
        'sert, user_update = :user_update, doc_year = :doc_year, po_numbe' +
        'r_id = :po_number_id, po_number = :po_number, printed = :printed' +
        ', contact_name = :contact_name, contact_email = :contact_email, ' +
        'contact_phone = :contact_phone, office_id = :office_id, warehous' +
        'e_location_id = :warehouse_location_id, jguid = :jguid, notes1 =' +
        ' :notes1, notes2 = :notes2, notes3 = :notes3, db_schema_id = :db' +
        '_schema_id, purchase_order_number = :purchase_order_number, cust' +
        'om_field_1 = :custom_field_1, custom_field_2 = :custom_field_2, ' +
        'custom_field_3 = :custom_field_3, custom_int_1 = :custom_int_1, ' +
        'custom_int_2 = :custom_int_2, custom_int_3 = :custom_int_3, doc_' +
        'ref_code = :doc_ref_code, carrier_expenses = :carrier_expenses, ' +
        'registry_code = :registry_code, carrier_tracking_number = :carri' +
        'er_tracking_number, carrier_expenses_currency_id = :carrier_expe' +
        'nses_currency_id, search_index = :search_index, dest_name = :des' +
        't_name, carrier_name = :carrier_name, location_name = :location_' +
        'name, goods_type_id = :goods_type_id, importexport = :importexpo' +
        'rt, carrier_invoice_number = :carrier_invoice_number, carrier_in' +
        'voice_date = :carrier_invoice_date, workflow_id = :workflow_id, ' +
        'vessel_department_id = :vessel_department_id, payment_term_id = ' +
        ':payment_term_id, an_code = :an_code, ref_date = :ref_date, ref_' +
        'code = :ref_code, stamp_duty = :stamp_duty, exchange_rate = :exc' +
        'hange_rate, conversion_date = :conversion_date, work_code = :wor' +
        'k_code, work_date = :work_date, deleted = :deleted, dest_vat_num' +
        'ber = :dest_vat_number, holder_vat_number = :holder_vat_number'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM documents.heads'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id, type_id, in_out, doc_date, doc_number, reason, dest_a' +
        'ddress, dest_postal_code, dest_town, dest_state_province, dest_c' +
        'ountry_iso, departure_date, delivery_methos, goods_description, ' +
        'packages_number, total_weight, incoterms, delivery_charges, disc' +
        'ount_rate, anagraph_id, carrier_id, dest_state_province_id, dest' +
        '_region_id, dest_town_id, currency_id, payment_terms_id, payment' +
        '_terms_des, package_description, payment_term_code, folder_id, d' +
        'oc_state, holder_name, holder_id, holder_vat_id, holder_address,' +
        ' holder_postal_code, holder_town, holder_state_province, holder_' +
        'country_iso, delivery_rate_expense, holder_group_id, amount, net' +
        '_amount, financial_year, doc_origin_id, delivery_vat_id, deliver' +
        'y_vat_rate, accounted, insert_date, update_date, delivery_due_da' +
        'te, sent, arrival_date, payment_due_date, duties, paid, doc_fine' +
        ', user_insert, user_update, doc_year, po_number_id, po_number, p' +
        'rinted, contact_name, contact_email, contact_phone, office_id, w' +
        'arehouse_location_id, jguid, notes1, notes2, notes3, db_schema_i' +
        'd, purchase_order_number, custom_field_1, custom_field_2, custom' +
        '_field_3, custom_int_1, custom_int_2, custom_int_3, doc_ref_code' +
        ', carrier_expenses, registry_code, carrier_tracking_number, carr' +
        'ier_expenses_currency_id, search_index, dest_name, carrier_name,' +
        ' location_name, goods_type_id, importexport, carrier_invoice_num' +
        'ber, carrier_invoice_date, workflow_id, vessel_department_id, pa' +
        'yment_term_id, an_code, ref_date, ref_code, stamp_duty, exchange' +
        '_rate, conversion_date, work_code, work_date, deleted, dest_vat_' +
        'number, holder_vat_number FROM documents.heads'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM documents.heads'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'index_guid'
        FieldType = ftString
        FieldLength = 40
      end>
    Connection = ErgoConnection
    SQL.Strings = (
      'select h.*, h.jguid::character varying as index_guid'
      ' from documents.heads h '
      'where'
      'exists'
      '('
      '  select a.* from documents.attachments a'
      '         where '
      '              doc_id = h.id'
      ')'
      ''
      'order by '
      'doc_year desc, doc_date desc, lpad(doc_number, 15, '#39'0'#39') desc')
    AfterOpen = qryDocHeadsAfterOpen
    AfterScroll = qryDocHeadsAfterScroll
    Left = 600
    Top = 88
    object qryDocHeadsid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object qryDocHeadstype_id: TSmallintField
      FieldName = 'type_id'
    end
    object qryDocHeadsin_out: TSmallintField
      FieldName = 'in_out'
    end
    object qryDocHeadsdoc_date: TDateField
      FieldName = 'doc_date'
    end
    object qryDocHeadsdoc_number: TWideStringField
      FieldName = 'doc_number'
      Size = 12
    end
    object qryDocHeadsreason: TSmallintField
      FieldName = 'reason'
    end
    object qryDocHeadsdest_address: TWideStringField
      FieldName = 'dest_address'
      Size = 200
    end
    object qryDocHeadsdest_postal_code: TWideStringField
      FieldName = 'dest_postal_code'
      Size = 5
    end
    object qryDocHeadsdest_town: TWideStringField
      FieldName = 'dest_town'
      Size = 40
    end
    object qryDocHeadsdest_state_province: TWideStringField
      FieldName = 'dest_state_province'
      Size = 2
    end
    object qryDocHeadsdest_country_iso: TWideStringField
      FieldName = 'dest_country_iso'
      Size = 3
    end
    object qryDocHeadsdeparture_date: TDateField
      FieldName = 'departure_date'
    end
    object qryDocHeadsdelivery_methos: TWideStringField
      FieldName = 'delivery_methos'
      Size = 15
    end
    object qryDocHeadsgoods_description: TWideStringField
      FieldName = 'goods_description'
      Size = 15
    end
    object qryDocHeadspackages_number: TSmallintField
      FieldName = 'packages_number'
    end
    object qryDocHeadstotal_weight: TFloatField
      FieldName = 'total_weight'
    end
    object qryDocHeadsincoterms: TWideStringField
      FieldName = 'incoterms'
      Size = 3
    end
    object qryDocHeadsdelivery_charges: TFloatField
      FieldName = 'delivery_charges'
    end
    object qryDocHeadsdiscount_rate: TFloatField
      FieldName = 'discount_rate'
    end
    object qryDocHeadsanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
    end
    object qryDocHeadscarrier_id: TIntegerField
      FieldName = 'carrier_id'
    end
    object qryDocHeadsdest_state_province_id: TIntegerField
      FieldName = 'dest_state_province_id'
    end
    object qryDocHeadsdest_region_id: TIntegerField
      FieldName = 'dest_region_id'
    end
    object qryDocHeadsdest_town_id: TIntegerField
      FieldName = 'dest_town_id'
    end
    object qryDocHeadscurrency_id: TSmallintField
      FieldName = 'currency_id'
    end
    object qryDocHeadspayment_terms_id: TSmallintField
      FieldName = 'payment_terms_id'
    end
    object qryDocHeadspayment_terms_des: TWideStringField
      FieldName = 'payment_terms_des'
      Size = 60
    end
    object qryDocHeadspackage_description: TWideStringField
      FieldName = 'package_description'
      Size = 15
    end
    object qryDocHeadspayment_term_code: TWideStringField
      FieldName = 'payment_term_code'
      Size = 8
    end
    object qryDocHeadsfolder_id: TLargeintField
      FieldName = 'folder_id'
    end
    object qryDocHeadsdoc_state: TSmallintField
      FieldName = 'doc_state'
    end
    object qryDocHeadsholder_name: TWideStringField
      FieldName = 'holder_name'
      Size = 50
    end
    object qryDocHeadsholder_id: TIntegerField
      FieldName = 'holder_id'
    end
    object qryDocHeadsholder_vat_id: TWideStringField
      FieldName = 'holder_vat_id'
      Size = 15
    end
    object qryDocHeadsholder_address: TWideStringField
      FieldName = 'holder_address'
      Size = 200
    end
    object qryDocHeadsholder_postal_code: TWideStringField
      FieldName = 'holder_postal_code'
      Size = 5
    end
    object qryDocHeadsholder_town: TWideStringField
      FieldName = 'holder_town'
      Size = 40
    end
    object qryDocHeadsholder_state_province: TWideStringField
      FieldName = 'holder_state_province'
      Size = 2
    end
    object qryDocHeadsholder_country_iso: TWideStringField
      FieldName = 'holder_country_iso'
      Size = 3
    end
    object qryDocHeadsdelivery_rate_expense: TFloatField
      FieldName = 'delivery_rate_expense'
    end
    object qryDocHeadsholder_group_id: TSmallintField
      FieldName = 'holder_group_id'
    end
    object qryDocHeadsamount: TFloatField
      FieldName = 'amount'
    end
    object qryDocHeadsnet_amount: TFloatField
      FieldName = 'net_amount'
    end
    object qryDocHeadsfinancial_year: TWideStringField
      FieldName = 'financial_year'
      Size = 10
    end
    object qryDocHeadsdoc_origin_id: TFloatField
      FieldName = 'doc_origin_id'
    end
    object qryDocHeadsdelivery_vat_id: TSmallintField
      FieldName = 'delivery_vat_id'
    end
    object qryDocHeadsdelivery_vat_rate: TFloatField
      FieldName = 'delivery_vat_rate'
    end
    object qryDocHeadsaccounted: TBooleanField
      FieldName = 'accounted'
    end
    object qryDocHeadsinsert_date: TDateField
      FieldName = 'insert_date'
    end
    object qryDocHeadsupdate_date: TDateField
      FieldName = 'update_date'
    end
    object qryDocHeadsdelivery_due_date: TDateField
      FieldName = 'delivery_due_date'
    end
    object qryDocHeadssent: TBooleanField
      FieldName = 'sent'
    end
    object qryDocHeadsarrival_date: TDateField
      FieldName = 'arrival_date'
    end
    object qryDocHeadspayment_due_date: TDateField
      FieldName = 'payment_due_date'
    end
    object qryDocHeadsduties: TFloatField
      FieldName = 'duties'
    end
    object qryDocHeadspaid: TBooleanField
      FieldName = 'paid'
    end
    object qryDocHeadsdoc_fine: TFloatField
      FieldName = 'doc_fine'
    end
    object qryDocHeadsuser_insert: TIntegerField
      FieldName = 'user_insert'
    end
    object qryDocHeadsuser_update: TIntegerField
      FieldName = 'user_update'
    end
    object qryDocHeadsdoc_year: TFloatField
      FieldName = 'doc_year'
    end
    object qryDocHeadspo_number_id: TLargeintField
      FieldName = 'po_number_id'
    end
    object qryDocHeadspo_number: TWideStringField
      FieldName = 'po_number'
      Size = 60
    end
    object qryDocHeadsprinted: TBooleanField
      FieldName = 'printed'
    end
    object qryDocHeadscontact_name: TWideStringField
      FieldName = 'contact_name'
      Size = 128
    end
    object qryDocHeadscontact_email: TWideStringField
      FieldName = 'contact_email'
      Size = 70
    end
    object qryDocHeadscontact_phone: TWideStringField
      FieldName = 'contact_phone'
    end
    object qryDocHeadsoffice_id: TIntegerField
      FieldName = 'office_id'
    end
    object qryDocHeadswarehouse_location_id: TIntegerField
      FieldName = 'warehouse_location_id'
    end
    object qryDocHeadsjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryDocHeadsnotes1: TWideMemoField
      FieldName = 'notes1'
      BlobType = ftWideMemo
    end
    object qryDocHeadsnotes2: TWideMemoField
      FieldName = 'notes2'
      BlobType = ftWideMemo
    end
    object qryDocHeadsnotes3: TWideMemoField
      FieldName = 'notes3'
      BlobType = ftWideMemo
    end
    object qryDocHeadsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryDocHeadspurchase_order_number: TWideStringField
      FieldName = 'purchase_order_number'
      Size = 128
    end
    object qryDocHeadscustom_field_1: TWideStringField
      FieldName = 'custom_field_1'
      Size = 128
    end
    object qryDocHeadscustom_field_2: TWideStringField
      FieldName = 'custom_field_2'
      Size = 128
    end
    object qryDocHeadscustom_field_3: TWideStringField
      FieldName = 'custom_field_3'
      Size = 128
    end
    object qryDocHeadscustom_int_1: TIntegerField
      FieldName = 'custom_int_1'
    end
    object qryDocHeadscustom_int_2: TIntegerField
      FieldName = 'custom_int_2'
    end
    object qryDocHeadscustom_int_3: TIntegerField
      FieldName = 'custom_int_3'
    end
    object qryDocHeadsdoc_ref_code: TWideStringField
      FieldName = 'doc_ref_code'
      Size = 128
    end
    object qryDocHeadscarrier_expenses: TFloatField
      FieldName = 'carrier_expenses'
    end
    object qryDocHeadsregistry_code: TWideStringField
      FieldName = 'registry_code'
      Size = 12
    end
    object qryDocHeadscarrier_tracking_number: TWideStringField
      FieldName = 'carrier_tracking_number'
      Size = 128
    end
    object qryDocHeadscarrier_expenses_currency_id: TSmallintField
      FieldName = 'carrier_expenses_currency_id'
    end
    object qryDocHeadssearch_index: TWideStringField
      FieldName = 'search_index'
      Size = 2048
    end
    object qryDocHeadsdest_name: TWideStringField
      FieldName = 'dest_name'
      Size = 128
    end
    object qryDocHeadscarrier_name: TWideStringField
      FieldName = 'carrier_name'
      Size = 128
    end
    object qryDocHeadslocation_name: TWideStringField
      FieldName = 'location_name'
      Size = 128
    end
    object qryDocHeadsgoods_type_id: TSmallintField
      FieldName = 'goods_type_id'
    end
    object qryDocHeadsimportexport: TSmallintField
      FieldName = 'importexport'
    end
    object qryDocHeadscalc_number: TStringField
      FieldKind = fkCalculated
      FieldName = 'calc_number'
      Size = 128
      Calculated = True
    end
    object qryDocHeadsdest_town_postalcode: TStringField
      FieldKind = fkCalculated
      FieldName = 'dest_town_postalcode'
      Size = 128
      Calculated = True
    end
    object qryDocHeadscarrier_invoice_number: TWideStringField
      FieldName = 'carrier_invoice_number'
      Size = 60
    end
    object qryDocHeadscarrier_invoice_date: TDateField
      FieldName = 'carrier_invoice_date'
    end
    object qryDocHeadsworkflow_id: TLargeintField
      FieldName = 'workflow_id'
    end
    object qryDocHeadsvessel_department_id: TSmallintField
      FieldName = 'vessel_department_id'
    end
    object qryDocHeadspayment_term_id: TSmallintField
      FieldName = 'payment_term_id'
    end
    object qryDocHeadsan_code: TWideStringField
      FieldName = 'an_code'
      Size = 128
    end
    object qryDocHeadsref_date: TDateField
      FieldName = 'ref_date'
    end
    object qryDocHeadsref_code: TWideStringField
      FieldName = 'ref_code'
      Size = 256
    end
    object qryDocHeadsstamp_duty: TCurrencyField
      FieldName = 'stamp_duty'
    end
    object qryDocHeadsexchange_rate: TFloatField
      FieldName = 'exchange_rate'
    end
    object qryDocHeadsconversion_date: TDateField
      FieldName = 'conversion_date'
    end
    object qryDocHeadswork_code: TWideStringField
      FieldName = 'work_code'
      Size = 128
    end
    object qryDocHeadswork_date: TDateField
      FieldName = 'work_date'
    end
    object qryDocHeadsdeleted: TBooleanField
      FieldName = 'deleted'
      Required = True
    end
    object qryDocHeadsdest_vat_number: TWideStringField
      FieldName = 'dest_vat_number'
    end
    object qryDocHeadsholder_vat_number: TWideStringField
      FieldName = 'holder_vat_number'
    end
    object qryDocHeadscurrency_code: TWideStringField
      FieldName = 'currency_code'
      Size = 6
    end
    object qryDocHeadscurrency_description: TWideMemoField
      FieldName = 'currency_description'
      BlobType = ftWideMemo
    end
    object qryDocHeadstaxable_amount: TCurrencyField
      FieldName = 'taxable_amount'
    end
    object qryDocHeadsvat_taxes: TCurrencyField
      FieldName = 'vat_taxes'
    end
    object qryDocHeadscalc_desc_full_Address: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'calc_dest_full_Address'
      Size = 2048
      Calculated = True
    end
    object qryDocHeadscalc_holder_full_address: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'calc_holder_full_address'
      Size = 2048
      Calculated = True
    end
    object qryDocHeadsHolder_town_postalcode: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'Holder_town_postalcode'
      Size = 128
      Calculated = True
    end
    object qryDocHeadsindex_guid: TStringField
      FieldName = 'index_guid'
      ReadOnly = True
      Size = 40
    end
  end
  object dsDocuments: TUniDataSource
    DataSet = qryDocHeads
    Left = 600
    Top = 144
  end
  object qryDocAttachments: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO documents.attachments'
      '  (doc_id, blob_id, blob_jguid)'
      'VALUES'
      '  (:doc_id, :blob_id, :blob_jguid)')
    SQLDelete.Strings = (
      'DELETE FROM documents.attachments'
      'WHERE'
      '  doc_id = :Old_doc_id AND blob_id = :Old_blob_id')
    SQLUpdate.Strings = (
      'UPDATE documents.attachments'
      'SET'
      '  doc_id = :doc_id, blob_id = :blob_id, blob_jguid = :blob_jguid'
      'WHERE'
      '  doc_id = :Old_doc_id AND blob_id = :Old_blob_id')
    SQLLock.Strings = (
      'SELECT * FROM documents.attachments'
      'WHERE'
      '  doc_id = :Old_doc_id AND blob_id = :Old_blob_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT doc_id, blob_id, blob_jguid FROM documents.attachments'
      'WHERE'
      '  doc_id = :doc_id AND blob_id = :blob_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM documents.attachments'
      ''
      ') t')
    Connection = ErgoConnection
    SQL.Strings = (
      
        'select a.*, c.cblb_jguid, c.file_ext, c.filename as blob_filenam' +
        'e'
      '  from documents.attachments a '
      '   inner join cloud.blob_files c on a.blob_id = c.blob_id'
      'where '
      '  a.doc_id = :id'
      '-- inner join cloud.blob_files f on f.blob_id = a.blob_id')
    MasterSource = dsDocuments
    MasterFields = 'id'
    DetailFields = 'doc_id'
    Left = 600
    Top = 208
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id'
        ParamType = ptInput
        Value = nil
      end>
    object qryDocAttachmentsdoc_id: TLargeintField
      FieldName = 'doc_id'
      Required = True
    end
    object qryDocAttachmentsblob_id: TLargeintField
      FieldName = 'blob_id'
      Required = True
    end
    object qryDocAttachmentsblob_jguid: TGuidField
      FieldName = 'blob_jguid'
      Size = 38
    end
    object qryDocAttachmentslocation: TWideStringField
      FieldName = 'location'
      Required = True
      Size = 1
    end
    object qryDocAttachmentsfilename: TWideStringField
      FieldName = 'filename'
      Size = 256
    end
    object qryDocAttachmentsdescription: TWideMemoField
      FieldName = 'description'
      BlobType = ftWideMemo
    end
    object qryDocAttachmentscontext: TWideMemoField
      FieldName = 'context'
      BlobType = ftWideMemo
    end
    object qryDocAttachmentsextension: TWideStringField
      FieldName = 'extension'
    end
    object qryDocAttachmentsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryDocAttachmentscblb_jguid: TWideStringField
      FieldName = 'cblb_jguid'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qryDocAttachmentsfile_ext: TWideStringField
      FieldName = 'file_ext'
      ReadOnly = True
      Size = 12
    end
    object qryDocAttachmentsblob_filename: TWideStringField
      FieldName = 'blob_filename'
      ReadOnly = True
      Size = 256
    end
  end
  object qryWorks: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO documents.heads'
      
        '  (id, type_id, in_out, doc_date, doc_number, reason, dest_addre' +
        'ss, dest_postal_code, dest_town, dest_state_province, dest_count' +
        'ry_iso, departure_date, delivery_methos, goods_description, pack' +
        'ages_number, total_weight, incoterms, delivery_charges, discount' +
        '_rate, anagraph_id, carrier_id, dest_state_province_id, dest_reg' +
        'ion_id, dest_town_id, currency_id, payment_terms_id, payment_ter' +
        'ms_des, package_description, payment_term_code, folder_id, doc_s' +
        'tate, holder_name, holder_id, holder_vat_id, holder_address, hol' +
        'der_postal_code, holder_town, holder_state_province, holder_coun' +
        'try_iso, delivery_rate_expense, holder_group_id, amount, net_amo' +
        'unt, financial_year, doc_origin_id, delivery_vat_id, delivery_va' +
        't_rate, accounted, insert_date, update_date, delivery_due_date, ' +
        'sent, arrival_date, payment_due_date, duties, paid, doc_fine, us' +
        'er_insert, user_update, doc_year, po_number_id, po_number, print' +
        'ed, contact_name, contact_email, contact_phone, office_id, wareh' +
        'ouse_location_id, jguid, notes1, notes2, notes3, db_schema_id, p' +
        'urchase_order_number, custom_field_1, custom_field_2, custom_fie' +
        'ld_3, custom_int_1, custom_int_2, custom_int_3, doc_ref_code, ca' +
        'rrier_expenses, registry_code, carrier_tracking_number, carrier_' +
        'expenses_currency_id, search_index, dest_name, carrier_name, loc' +
        'ation_name, goods_type_id, importexport, carrier_invoice_number,' +
        ' carrier_invoice_date, workflow_id, vessel_department_id, paymen' +
        't_term_id, an_code, ref_date, ref_code, stamp_duty, exchange_rat' +
        'e, conversion_date, work_code, work_date, deleted, dest_vat_numb' +
        'er, holder_vat_number)'
      'VALUES'
      
        '  (:id, :type_id, :in_out, :doc_date, :doc_number, :reason, :des' +
        't_address, :dest_postal_code, :dest_town, :dest_state_province, ' +
        ':dest_country_iso, :departure_date, :delivery_methos, :goods_des' +
        'cription, :packages_number, :total_weight, :incoterms, :delivery' +
        '_charges, :discount_rate, :anagraph_id, :carrier_id, :dest_state' +
        '_province_id, :dest_region_id, :dest_town_id, :currency_id, :pay' +
        'ment_terms_id, :payment_terms_des, :package_description, :paymen' +
        't_term_code, :folder_id, :doc_state, :holder_name, :holder_id, :' +
        'holder_vat_id, :holder_address, :holder_postal_code, :holder_tow' +
        'n, :holder_state_province, :holder_country_iso, :delivery_rate_e' +
        'xpense, :holder_group_id, :amount, :net_amount, :financial_year,' +
        ' :doc_origin_id, :delivery_vat_id, :delivery_vat_rate, :accounte' +
        'd, :insert_date, :update_date, :delivery_due_date, :sent, :arriv' +
        'al_date, :payment_due_date, :duties, :paid, :doc_fine, :user_ins' +
        'ert, :user_update, :doc_year, :po_number_id, :po_number, :printe' +
        'd, :contact_name, :contact_email, :contact_phone, :office_id, :w' +
        'arehouse_location_id, :jguid, :notes1, :notes2, :notes3, :db_sch' +
        'ema_id, :purchase_order_number, :custom_field_1, :custom_field_2' +
        ', :custom_field_3, :custom_int_1, :custom_int_2, :custom_int_3, ' +
        ':doc_ref_code, :carrier_expenses, :registry_code, :carrier_track' +
        'ing_number, :carrier_expenses_currency_id, :search_index, :dest_' +
        'name, :carrier_name, :location_name, :goods_type_id, :importexpo' +
        'rt, :carrier_invoice_number, :carrier_invoice_date, :workflow_id' +
        ', :vessel_department_id, :payment_term_id, :an_code, :ref_date, ' +
        ':ref_code, :stamp_duty, :exchange_rate, :conversion_date, :work_' +
        'code, :work_date, :deleted, :dest_vat_number, :holder_vat_number' +
        ')')
    SQLDelete.Strings = (
      'DELETE FROM documents.heads'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE documents.heads'
      'SET'
      
        '  id = :id, type_id = :type_id, in_out = :in_out, doc_date = :do' +
        'c_date, doc_number = :doc_number, reason = :reason, dest_address' +
        ' = :dest_address, dest_postal_code = :dest_postal_code, dest_tow' +
        'n = :dest_town, dest_state_province = :dest_state_province, dest' +
        '_country_iso = :dest_country_iso, departure_date = :departure_da' +
        'te, delivery_methos = :delivery_methos, goods_description = :goo' +
        'ds_description, packages_number = :packages_number, total_weight' +
        ' = :total_weight, incoterms = :incoterms, delivery_charges = :de' +
        'livery_charges, discount_rate = :discount_rate, anagraph_id = :a' +
        'nagraph_id, carrier_id = :carrier_id, dest_state_province_id = :' +
        'dest_state_province_id, dest_region_id = :dest_region_id, dest_t' +
        'own_id = :dest_town_id, currency_id = :currency_id, payment_term' +
        's_id = :payment_terms_id, payment_terms_des = :payment_terms_des' +
        ', package_description = :package_description, payment_term_code ' +
        '= :payment_term_code, folder_id = :folder_id, doc_state = :doc_s' +
        'tate, holder_name = :holder_name, holder_id = :holder_id, holder' +
        '_vat_id = :holder_vat_id, holder_address = :holder_address, hold' +
        'er_postal_code = :holder_postal_code, holder_town = :holder_town' +
        ', holder_state_province = :holder_state_province, holder_country' +
        '_iso = :holder_country_iso, delivery_rate_expense = :delivery_ra' +
        'te_expense, holder_group_id = :holder_group_id, amount = :amount' +
        ', net_amount = :net_amount, financial_year = :financial_year, do' +
        'c_origin_id = :doc_origin_id, delivery_vat_id = :delivery_vat_id' +
        ', delivery_vat_rate = :delivery_vat_rate, accounted = :accounted' +
        ', insert_date = :insert_date, update_date = :update_date, delive' +
        'ry_due_date = :delivery_due_date, sent = :sent, arrival_date = :' +
        'arrival_date, payment_due_date = :payment_due_date, duties = :du' +
        'ties, paid = :paid, doc_fine = :doc_fine, user_insert = :user_in' +
        'sert, user_update = :user_update, doc_year = :doc_year, po_numbe' +
        'r_id = :po_number_id, po_number = :po_number, printed = :printed' +
        ', contact_name = :contact_name, contact_email = :contact_email, ' +
        'contact_phone = :contact_phone, office_id = :office_id, warehous' +
        'e_location_id = :warehouse_location_id, jguid = :jguid, notes1 =' +
        ' :notes1, notes2 = :notes2, notes3 = :notes3, db_schema_id = :db' +
        '_schema_id, purchase_order_number = :purchase_order_number, cust' +
        'om_field_1 = :custom_field_1, custom_field_2 = :custom_field_2, ' +
        'custom_field_3 = :custom_field_3, custom_int_1 = :custom_int_1, ' +
        'custom_int_2 = :custom_int_2, custom_int_3 = :custom_int_3, doc_' +
        'ref_code = :doc_ref_code, carrier_expenses = :carrier_expenses, ' +
        'registry_code = :registry_code, carrier_tracking_number = :carri' +
        'er_tracking_number, carrier_expenses_currency_id = :carrier_expe' +
        'nses_currency_id, search_index = :search_index, dest_name = :des' +
        't_name, carrier_name = :carrier_name, location_name = :location_' +
        'name, goods_type_id = :goods_type_id, importexport = :importexpo' +
        'rt, carrier_invoice_number = :carrier_invoice_number, carrier_in' +
        'voice_date = :carrier_invoice_date, workflow_id = :workflow_id, ' +
        'vessel_department_id = :vessel_department_id, payment_term_id = ' +
        ':payment_term_id, an_code = :an_code, ref_date = :ref_date, ref_' +
        'code = :ref_code, stamp_duty = :stamp_duty, exchange_rate = :exc' +
        'hange_rate, conversion_date = :conversion_date, work_code = :wor' +
        'k_code, work_date = :work_date, deleted = :deleted, dest_vat_num' +
        'ber = :dest_vat_number, holder_vat_number = :holder_vat_number'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM documents.heads'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id, type_id, in_out, doc_date, doc_number, reason, dest_a' +
        'ddress, dest_postal_code, dest_town, dest_state_province, dest_c' +
        'ountry_iso, departure_date, delivery_methos, goods_description, ' +
        'packages_number, total_weight, incoterms, delivery_charges, disc' +
        'ount_rate, anagraph_id, carrier_id, dest_state_province_id, dest' +
        '_region_id, dest_town_id, currency_id, payment_terms_id, payment' +
        '_terms_des, package_description, payment_term_code, folder_id, d' +
        'oc_state, holder_name, holder_id, holder_vat_id, holder_address,' +
        ' holder_postal_code, holder_town, holder_state_province, holder_' +
        'country_iso, delivery_rate_expense, holder_group_id, amount, net' +
        '_amount, financial_year, doc_origin_id, delivery_vat_id, deliver' +
        'y_vat_rate, accounted, insert_date, update_date, delivery_due_da' +
        'te, sent, arrival_date, payment_due_date, duties, paid, doc_fine' +
        ', user_insert, user_update, doc_year, po_number_id, po_number, p' +
        'rinted, contact_name, contact_email, contact_phone, office_id, w' +
        'arehouse_location_id, jguid, notes1, notes2, notes3, db_schema_i' +
        'd, purchase_order_number, custom_field_1, custom_field_2, custom' +
        '_field_3, custom_int_1, custom_int_2, custom_int_3, doc_ref_code' +
        ', carrier_expenses, registry_code, carrier_tracking_number, carr' +
        'ier_expenses_currency_id, search_index, dest_name, carrier_name,' +
        ' location_name, goods_type_id, importexport, carrier_invoice_num' +
        'ber, carrier_invoice_date, workflow_id, vessel_department_id, pa' +
        'yment_term_id, an_code, ref_date, ref_code, stamp_duty, exchange' +
        '_rate, conversion_date, work_code, work_date, deleted, dest_vat_' +
        'number, holder_vat_number FROM documents.heads'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM documents.heads'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'index_guid'
        FieldType = ftString
        FieldLength = 40
      end>
    Connection = ErgoConnection
    SQL.Strings = (
      'select w.* from workflow.workflows w  where exists'
      '  (select 1 from workflow.attachments a where a.work_id = w.id )'
      'order by workdate')
    AfterOpen = qryWorksAfterOpen
    AfterScroll = qryWorksAfterScroll
    Left = 720
    Top = 112
    object qryWorksid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object qryWorksjguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object qryWorksworkdate: TDateTimeField
      FieldName = 'workdate'
      Required = True
    end
    object qryWorkscode: TWideStringField
      FieldName = 'code'
      Size = 30
    end
    object qryWorksoffice_id: TIntegerField
      FieldName = 'office_id'
    end
    object qryWorkscustomer_id: TIntegerField
      FieldName = 'customer_id'
    end
    object qryWorksyear: TSmallintField
      FieldName = 'year'
      Required = True
    end
    object qryWorkstype_id: TSmallintField
      FieldName = 'type_id'
      Required = True
    end
    object qryWorksdeleted: TBooleanField
      FieldName = 'deleted'
      Required = True
    end
    object qryWorksdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qryWorkslevel_id: TSmallintField
      FieldName = 'level_id'
    end
  end
  object dsWorks: TUniDataSource
    DataSet = qryWorks
    Left = 720
    Top = 176
  end
  object qryWorkAttachments: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO documents.attachments'
      '  (doc_id, blob_id, blob_jguid)'
      'VALUES'
      '  (:doc_id, :blob_id, :blob_jguid)')
    SQLDelete.Strings = (
      'DELETE FROM documents.attachments'
      'WHERE'
      '  doc_id = :Old_doc_id AND blob_id = :Old_blob_id')
    SQLUpdate.Strings = (
      'UPDATE documents.attachments'
      'SET'
      '  doc_id = :doc_id, blob_id = :blob_id, blob_jguid = :blob_jguid'
      'WHERE'
      '  doc_id = :Old_doc_id AND blob_id = :Old_blob_id')
    SQLLock.Strings = (
      'SELECT * FROM documents.attachments'
      'WHERE'
      '  doc_id = :Old_doc_id AND blob_id = :Old_blob_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT doc_id, blob_id, blob_jguid FROM documents.attachments'
      'WHERE'
      '  doc_id = :doc_id AND blob_id = :blob_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM documents.attachments'
      ''
      ') t')
    Connection = ErgoConnection
    SQL.Strings = (
      'select a.*,'
      'c.cblb_jguid, c.file_ext, c.filename as blob_filename'
      '   from workflow.attachments a '
      '   inner join cloud.blob_files c on a.blob_id = c.blob_id'
      'where a.work_id = :id')
    MasterSource = dsWorks
    MasterFields = 'id'
    DetailFields = 'work_id'
    Left = 720
    Top = 240
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id'
        ParamType = ptInput
        Value = nil
      end>
    object qryWorkAttachmentswork_id: TLargeintField
      FieldName = 'work_id'
      Required = True
    end
    object qryWorkAttachmentsblob_id: TLargeintField
      FieldName = 'blob_id'
      Required = True
    end
    object qryWorkAttachmentsblob_jguid: TGuidField
      FieldName = 'blob_jguid'
      Size = 38
    end
    object qryWorkAttachmentslocation: TWideStringField
      FieldName = 'location'
      Required = True
      Size = 1
    end
    object qryWorkAttachmentsfilename: TWideStringField
      FieldName = 'filename'
      Size = 256
    end
    object qryWorkAttachmentsdescription: TWideMemoField
      FieldName = 'description'
      BlobType = ftWideMemo
    end
    object qryWorkAttachmentscontext: TWideMemoField
      FieldName = 'context'
      BlobType = ftWideMemo
    end
    object qryWorkAttachmentsextension: TWideStringField
      FieldName = 'extension'
    end
    object qryWorkAttachmentscblb_jguid: TWideStringField
      FieldName = 'cblb_jguid'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qryWorkAttachmentsfile_ext: TWideStringField
      FieldName = 'file_ext'
      ReadOnly = True
      Size = 12
    end
    object qryWorkAttachmentsblob_filename: TWideStringField
      FieldName = 'blob_filename'
      ReadOnly = True
      Size = 256
    end
  end
  object qryDocAttachmentsFileMove: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO cloud.blob_files'
      
        '  (blob_id, blob_file, blob_size, db_schema_id, blob_key, db_use' +
        'r_id, ispublic, cblb_jguid, cblb_deleted, file_ext, filename, is' +
        'resource, is_external, ex_location, jguid, insert_date, descript' +
        'ion, flg_stored, directory_id)'
      'VALUES'
      
        '  (:blob_id, :blob_file, :blob_size, :db_schema_id, :blob_key, :' +
        'db_user_id, :ispublic, :cblb_jguid, :cblb_deleted, :file_ext, :f' +
        'ilename, :isresource, :is_external, :ex_location, :jguid, :inser' +
        't_date, :description, :flg_stored, :directory_id)')
    SQLDelete.Strings = (
      'DELETE FROM cloud.blob_files'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE cloud.blob_files'
      'SET'
      
        '  blob_id = :blob_id, blob_file = :blob_file, blob_size = :blob_' +
        'size, db_schema_id = :db_schema_id, blob_key = :blob_key, db_use' +
        'r_id = :db_user_id, ispublic = :ispublic, cblb_jguid = :cblb_jgu' +
        'id, cblb_deleted = :cblb_deleted, file_ext = :file_ext, filename' +
        ' = :filename, isresource = :isresource, is_external = :is_extern' +
        'al, ex_location = :ex_location, jguid = :jguid, insert_date = :i' +
        'nsert_date, description = :description, flg_stored = :flg_stored' +
        ', directory_id = :directory_id'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM cloud.blob_files'
      'WHERE'
      '  jguid = :Old_jguid'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT blob_id, blob_file, blob_size, db_schema_id, blob_key, db' +
        '_user_id, ispublic, cblb_jguid, cblb_deleted, file_ext, filename' +
        ', isresource, is_external, ex_location, jguid, insert_date, desc' +
        'ription, flg_stored, directory_id FROM cloud.blob_files'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cloud.blob_files'
      ''
      ') t')
    Connection = ErgoConnection
    SQL.Strings = (
      'select '
      
        '  d.directory_path || '#39'/'#39' || '#39'{'#39' || f.jguid || '#39'}'#39' || f.file_ext' +
        ' as destination, '
      '  a.path || nomefile as origin,     '
      '  f.* '
      'from '
      '  cloud.blob_files f '
      '  join cloud.directories d on f.directory_id = d.directory_id'
      
        '  join custom_tm_logistic.docarchiviatientrate a on f.jguid = a.' +
        'jguid'
      '  where '
      '  not f.flg_stored'
      'order by f.blob_id desc')
    Left = 840
    Top = 280
    object qryDocAttachmentsFileMovedestination: TWideMemoField
      FieldName = 'destination'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qryDocAttachmentsFileMoveorigin: TWideMemoField
      FieldName = 'origin'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qryDocAttachmentsFileMoveblob_id: TLargeintField
      FieldName = 'blob_id'
      Required = True
    end
    object qryDocAttachmentsFileMoveblob_file: TBlobField
      FieldName = 'blob_file'
    end
    object qryDocAttachmentsFileMoveblob_size: TLargeintField
      FieldName = 'blob_size'
    end
    object qryDocAttachmentsFileMovedb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryDocAttachmentsFileMoveblob_key: TWideStringField
      FieldName = 'blob_key'
      Required = True
      Size = 64
    end
    object qryDocAttachmentsFileMovedb_user_id: TIntegerField
      FieldName = 'db_user_id'
    end
    object qryDocAttachmentsFileMoveispublic: TBooleanField
      FieldName = 'ispublic'
    end
    object qryDocAttachmentsFileMovecblb_jguid: TWideStringField
      FieldName = 'cblb_jguid'
      Required = True
      Size = 40
    end
    object qryDocAttachmentsFileMovecblb_deleted: TBooleanField
      FieldName = 'cblb_deleted'
    end
    object qryDocAttachmentsFileMovefile_ext: TWideStringField
      FieldName = 'file_ext'
      Size = 12
    end
    object qryDocAttachmentsFileMovefilename: TWideStringField
      FieldName = 'filename'
      Size = 256
    end
    object qryDocAttachmentsFileMoveisresource: TBooleanField
      FieldName = 'isresource'
    end
    object qryDocAttachmentsFileMoveis_external: TBooleanField
      FieldName = 'is_external'
    end
    object qryDocAttachmentsFileMoveex_location: TWideStringField
      FieldName = 'ex_location'
      Size = 1
    end
    object qryDocAttachmentsFileMovejguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryDocAttachmentsFileMoveinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryDocAttachmentsFileMovedescription: TWideStringField
      FieldName = 'description'
      Size = 2048
    end
    object qryDocAttachmentsFileMoveflg_stored: TBooleanField
      FieldName = 'flg_stored'
      Required = True
    end
    object qryDocAttachmentsFileMovedirectory_id: TLargeintField
      FieldName = 'directory_id'
    end
  end
end
