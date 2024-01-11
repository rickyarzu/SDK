inherited dmPgWorkFlow: TdmPgWorkFlow
  Height = 412
  Width = 610
  PixelsPerInch = 96
  inherited PgErgoConnection: TJanuaUniConnection
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object qryWorkTypes: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO workflow.types'
      '  (id, jguid, name, icon_id)'
      'VALUES'
      '  (:id, :jguid, :name, :icon_id)')
    SQLDelete.Strings = (
      'DELETE FROM workflow.types'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE workflow.types'
      'SET'
      '  id = :id, jguid = :jguid, name = :name, icon_id = :icon_id'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM workflow.types'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT id, jguid, name, icon_id FROM workflow.types'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM workflow.types'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT id, jguid, name, icon_id'
      #9'FROM workflow.types;')
    BeforePost = qryWorkTypesBeforePost
    Left = 72
    Top = 136
    object qryWorkTypesid: TSmallintField
      FieldName = 'id'
      Required = True
    end
    object qryWorkTypesjguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object qryWorkTypesname: TWideStringField
      FieldName = 'name'
      Required = True
      Size = 128
    end
    object qryWorkTypesicon_id: TSmallintField
      FieldName = 'icon_id'
    end
  end
  object qryWorkFlows: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO workflow.workflows'
      
        '  (id, jguid, workdate, code, office_id, customer_id, year, type' +
        '_id, deleted, db_schema_id, level_id)'
      'VALUES'
      
        '  (:id, :jguid, :workdate, :code, :office_id, :customer_id, :yea' +
        'r, :type_id, :deleted, :db_schema_id, :level_id)')
    SQLDelete.Strings = (
      'DELETE FROM workflow.workflows'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE workflow.workflows'
      'SET'
      
        '  id = :id, jguid = :jguid, workdate = :workdate, code = :code, ' +
        'office_id = :office_id, customer_id = :customer_id, year = :year' +
        ', type_id = :type_id, deleted = :deleted, db_schema_id = :db_sch' +
        'ema_id, level_id = :level_id'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM workflow.workflows'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id, jguid, workdate, code, office_id, customer_id, year, ' +
        'type_id, deleted, db_schema_id, level_id FROM workflow.workflows'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM workflow.workflows'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT * FROM workflow.workflows'
      'order by id desc')
    BeforePost = qryWorkTypesBeforePost
    Left = 72
    Top = 200
    object qryWorkFlowsid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object qryWorkFlowsjguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object qryWorkFlowsworkdate: TDateTimeField
      FieldName = 'workdate'
      Required = True
    end
    object qryWorkFlowscode: TWideStringField
      FieldName = 'code'
      Size = 30
    end
    object qryWorkFlowsoffice_id: TIntegerField
      FieldName = 'office_id'
    end
    object qryWorkFlowscustomer_id: TIntegerField
      FieldName = 'customer_id'
    end
    object qryWorkFlowsyear: TSmallintField
      FieldName = 'year'
      Required = True
    end
    object qryWorkFlowstype_id: TSmallintField
      FieldName = 'type_id'
      Required = True
    end
    object qryWorkFlowsdeleted: TBooleanField
      FieldName = 'deleted'
      Required = True
    end
    object qryWorkFlowsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qryWorkFlowslevel_id: TSmallintField
      FieldName = 'level_id'
    end
  end
  object qryWorkAttachments: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO workflow.attachments'
      
        '  (work_id, blob_id, blob_jguid, location, filename, description' +
        ', context, extension)'
      'VALUES'
      
        '  (:work_id, :blob_id, :blob_jguid, :location, :filename, :descr' +
        'iption, :context, :extension)')
    SQLDelete.Strings = (
      'DELETE FROM workflow.attachments'
      'WHERE'
      '  work_id = :Old_work_id AND blob_id = :Old_blob_id')
    SQLUpdate.Strings = (
      'UPDATE workflow.attachments'
      'SET'
      
        '  work_id = :work_id, blob_id = :blob_id, blob_jguid = :blob_jgu' +
        'id, location = :location, filename = :filename, description = :d' +
        'escription, context = :context, extension = :extension'
      'WHERE'
      '  work_id = :Old_work_id AND blob_id = :Old_blob_id')
    SQLLock.Strings = (
      'SELECT * FROM workflow.attachments'
      'WHERE'
      '  work_id = :Old_work_id AND blob_id = :Old_blob_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT work_id, blob_id, blob_jguid, location, filename, descrip' +
        'tion, context, extension FROM workflow.attachments'
      'WHERE'
      '  work_id = :work_id AND blob_id = :blob_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM workflow.attachments'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT work_id, blob_id, blob_jguid, location, filename, descrip' +
        'tion, '
      '       context, extension'
      'FROM workflow.attachments;')
    Left = 72
    Top = 272
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
  end
  object qryWorkLevels: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO workflow.levels'
      '  (id, description, icon, color, jguid, db_schema_id)'
      'VALUES'
      '  (:id, :description, :icon, :color, :jguid, :db_schema_id)')
    SQLDelete.Strings = (
      'DELETE FROM workflow.levels'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE workflow.levels'
      'SET'
      
        '  id = :id, description = :description, icon = :icon, color = :c' +
        'olor, jguid = :jguid, db_schema_id = :db_schema_id'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM workflow.levels'
      'WHERE'
      '  jguid = :Old_jguid'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id, description, icon, color, jguid, db_schema_id FROM wo' +
        'rkflow.levels'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM workflow.levels'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT l.*'
      'FROM workflow.levels l')
    Left = 72
    Top = 336
    object qryWorkLevelsid: TSmallintField
      FieldName = 'id'
      Required = True
    end
    object qryWorkLevelsdescription: TWideStringField
      FieldName = 'description'
      Required = True
      Size = 60
    end
    object qryWorkLevelsicon: TSmallintField
      FieldName = 'icon'
    end
    object qryWorkLevelscolor: TIntegerField
      FieldName = 'color'
    end
    object qryWorkLevelsjguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object qryWorkLevelsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
  end
  object lkpWorkFlows: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO workflow.workflows'
      
        '  (id, jguid, workdate, code, office_id, customer_id, year, type' +
        '_id, deleted, db_schema_id, level_id)'
      'VALUES'
      
        '  (:id, :jguid, :workdate, :code, :office_id, :customer_id, :yea' +
        'r, :type_id, :deleted, :db_schema_id, :level_id)')
    SQLDelete.Strings = (
      'DELETE FROM workflow.workflows'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE workflow.workflows'
      'SET'
      
        '  id = :id, jguid = :jguid, workdate = :workdate, code = :code, ' +
        'office_id = :office_id, customer_id = :customer_id, year = :year' +
        ', type_id = :type_id, deleted = :deleted, db_schema_id = :db_sch' +
        'ema_id, level_id = :level_id'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM workflow.workflows'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id, jguid, workdate, code, office_id, customer_id, year, ' +
        'type_id, deleted, db_schema_id, level_id FROM workflow.workflows'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM workflow.workflows'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT shipments.id, vessels.name, work_code,pol_code, pol_name,' +
        ' pod_code, pod_name, TO_CHAR(creation_date, '#39'DD/MM/YYYY'#39'), '
      '      '
      
        '      work_code || '#39'-'#39' ||   vessels.name || '#39'-'#39' || pol_code || '#39 +
        '-'#39' || pol_name || '#39'-'#39' || pod_code || '#39'-'#39' || pod_name  AS search_' +
        'index  '
      'FROM '
      #9'logistic.shipments shipments '
      
        #9#9'inner join workflow.workflows works on works.jguid = shipments' +
        '.workflow_uid'
      
        #9#9'LEFT OUTER JOIN shipping.vessels vessels on shipments.vessel_i' +
        'd = vessels.vessel_id'
      #9'ORDER BY work_code')
    BeforePost = qryWorkTypesBeforePost
    Left = 200
    Top = 32
    object LargeintField1: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object GuidField1: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object SQLTimeStampField1: TDateTimeField
      FieldName = 'workdate'
      Required = True
    end
    object WideStringField1: TWideStringField
      FieldName = 'code'
      Size = 30
    end
    object IntegerField1: TIntegerField
      FieldName = 'office_id'
    end
    object IntegerField2: TIntegerField
      FieldName = 'customer_id'
    end
    object SmallintField1: TSmallintField
      FieldName = 'year'
      Required = True
    end
    object SmallintField2: TSmallintField
      FieldName = 'type_id'
      Required = True
    end
    object BooleanField1: TBooleanField
      FieldName = 'deleted'
      Required = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object SmallintField3: TSmallintField
      FieldName = 'level_id'
    end
  end
end
