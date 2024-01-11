{
  the functions commented below are not exported by the dll
  because they depend on defines that are not set in the dll by default
}

function sqlite3_key(
    pSQLite: pSQLite3; key: PAnsiChar; size: integer
    ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_key'{$ENDIF};

function sqlite3_key_v2(
    pSQLite: pSQLite3; dbName, key: PAnsiChar; size: integer
    ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_key_v2'{$ENDIF};

function sqlite3_rekey(
    pSQLite: pSQLite3; newkey: PAnsiChar; size: integer
    ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_rekey'{$ENDIF};

function sqlite3_rekey_v2(
    pSQLite: pSQLite3; dbName, newkey: PAnsiChar; size: integer
    ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_rekey_v2'{$ENDIF};

procedure sqlite3_activate_see(
    zPassPhrase: PAnsiChar
    ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_activate_see'{$ENDIF};

function sqlite3CodecAttach(
    pSQLite: pSQLite3; nDb: integer; key: PAnsiChar; size: integer; Algorithm: TLiteEncryptionAlgorithm = DefaultEncryptionAlgorithm
    ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3CodecAttach'{$ENDIF};

procedure sqlite3CodecGetKey(
    pSQLite: pSQLite3; nDb: integer; var key: pointer; var size: {$IFDEF POSIX}pointer{$ELSE}pInt{$ENDIF}
    ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3CodecGetKey'{$ENDIF};

function sqlite3CustomPragma(
    pSQLite: pSQLite3; nDb: integer; Left: PAnsiChar; Right: PAnsiChar
    ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3CustomPragma'{$ENDIF};

function sqlite3_malloc(
    n: integer
  ): IntPtr; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_malloc'{$ENDIF};

function sqlite3_open(
    filename: PAnsiChar;    // Database filename (UTF-8)
    out ppDb: pSQLite3      // OUT: SQLite db handle
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_open'{$ENDIF};

function sqlite3_open16(
    filename: PWideChar;    // Database filename (UTF-16)
    out ppDb: pSQLite3      // OUT: SQLite db handle
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_open16'{$ENDIF};

function sqlite3_open_v2(
    filename: PAnsiChar;    // Database filename (UTF-8)
    out ppDb: pSQLite3;     // OUT: SQLite db handle
    flags: integer;         // Flags
    zVfs: PAnsiChar         // Name of VFS module to use
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_open_v2'{$ENDIF};

function sqlite3_close(
    pDb: pSQLite3
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_close'{$ENDIF};

function sqlite3_errmsg(
    pDb: pSQLite3
  ): PAnsiChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_errmsg'{$ENDIF};

function sqlite3_errcode(
    pDb: pSQLite3
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_errcode'{$ENDIF};

function sqlite3_extended_errcode(
    pDb: pSQLite3
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_extended_errcode'{$ENDIF};

function sqlite3_extended_result_codes(
    pDb: pSQLite3;
    onoff: integer
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_extended_result_codes'{$ENDIF};

function sqlite3_last_insert_rowid(
    pDb: pSQLite3
  ): sqlite3_int64; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_last_insert_rowid'{$ENDIF};

function sqlite3_changes(
    pDb: pSQLite3
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_changes'{$ENDIF};

function sqlite3_prepare_v2(
    db: pSQLite3;              // Database handle
    zSql: PAnsiChar;           // SQL statement, UTF-8 encoded
    nByte: integer;            // Maximum length of zSql in bytes.
    out ppStmt: pSQLite3Stmt;  // OUT: Statement handle
    out pzTail: IntPtr         // OUT: Pointer to unused portion of zSql
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_prepare_v2'{$ENDIF};

function sqlite3_step(
    pStmt: pSQLite3Stmt
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_step'{$ENDIF};

function sqlite3_reset(
    pStmt: pSQLite3Stmt
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_reset'{$ENDIF};

function sqlite3_finalize(
    pStmt: pSQLite3Stmt
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_finalize'{$ENDIF};

function sqlite3_column_count(
    pStmt: pSQLite3Stmt
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_column_count'{$ENDIF};

function sqlite3_column_type(
    pStmt: pSQLite3Stmt; iCol: integer
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_column_type'{$ENDIF};

function sqlite3_column_name(
    pStmt: pSQLite3Stmt; iCol: integer
  ): PAnsiChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_column_name'{$ENDIF};

function sqlite3_column_origin_name(
    pStmt: pSQLite3Stmt; iCol: integer
  ): PAnsiChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_column_origin_name'{$ENDIF};

function sqlite3_column_table_name(
    pStmt: pSQLite3Stmt; iCol: integer
  ): PAnsiChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_column_table_name'{$ENDIF};

function sqlite3_column_database_name(
    pStmt: pSQLite3Stmt; iCol: integer
  ): PAnsiChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_column_database_name'{$ENDIF};

function sqlite3_column_decltype(
    pStmt: pSQLite3Stmt; iCol: integer
  ): PAnsiChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_column_decltype'{$ENDIF};

function sqlite3_table_column_metadata(
    pDb: pSQLite3;
    zDbName: IntPtr;
    zTableName: IntPtr;
    zColumnName: IntPtr;
    out pzDataType: IntPtr;
    out pzCollSeq: IntPtr;
    out pNotNull: integer;
    out pPrimaryKey: integer;
    out pAutoinc: integer
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_table_column_metadata'{$ENDIF};

function sqlite3_column_blob(
    pStmt: pSQLite3Stmt; iCol: integer
  ): IntPtr; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_column_blob'{$ENDIF};

function sqlite3_column_bytes(
    pStmt: pSQLite3Stmt; iCol: integer
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_column_bytes'{$ENDIF};

function sqlite3_column_double(
    pStmt: pSQLite3Stmt; iCol: integer
  ): double; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_column_double'{$ENDIF};

function sqlite3_column_int(
    pStmt: pSQLite3Stmt; iCol: integer
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_column_int'{$ENDIF};

function sqlite3_column_int64(
    pStmt: pSQLite3Stmt; iCol: integer
  ): sqlite3_int64; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_column_int64'{$ENDIF};

function sqlite3_column_text(
    pStmt: pSQLite3Stmt; iCol: integer
  ): PAnsiChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_column_text'{$ENDIF};

function sqlite3_bind_parameter_count(
    pStmt: pSQLite3Stmt
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_bind_parameter_count'{$ENDIF};

function sqlite3_bind_parameter_name(
    pStmt: pSQLite3Stmt; Index: integer
  ): PAnsiChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_bind_parameter_name'{$ENDIF};

function sqlite3_bind_blob(
    pStmt: pSQLite3Stmt; index: integer; value: IntPtr; size: integer; destr: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_bind_blob'{$ENDIF};

function sqlite3_bind_zeroblob(
    pStmt: pSQLite3Stmt; index: integer; size: integer
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_bind_zeroblob'{$ENDIF};

function sqlite3_bind_double(
    pStmt: pSQLite3Stmt; index: integer; value: double
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_bind_double'{$ENDIF};

function sqlite3_bind_int(
    pStmt: pSQLite3Stmt; index: integer; value: integer
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_bind_int'{$ENDIF};

function sqlite3_bind_int64(
    pStmt: pSQLite3Stmt; index: integer; value: sqlite3_int64
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_bind_int64'{$ENDIF};

function sqlite3_bind_null(
    pStmt: pSQLite3Stmt; index: integer
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_bind_null'{$ENDIF};

function sqlite3_bind_text(
    pStmt: pSQLite3Stmt; index: integer; value: PAnsiChar; size: integer; destr: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_bind_text'{$ENDIF};

procedure sqlite3_result_blob(
    pContext: pSQLite3Context; pBlob: IntPtr; Size: integer; pDestrType: IntPtr
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_result_blob'{$ENDIF};

procedure sqlite3_result_double(
    pContext: pSQLite3Context; Value: Double
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_result_double'{$ENDIF};

procedure sqlite3_result_error(
    pContext: pSQLite3Context; pMsg: IntPtr; Size: integer
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_result_error'{$ENDIF};

procedure sqlite3_result_error16(
    pContext: pSQLite3Context; pMsg: IntPtr; Size: integer
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_result_error16'{$ENDIF};

procedure sqlite3_result_error_toobig(
    pContext: pSQLite3Context
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_result_error_toobig'{$ENDIF};

procedure sqlite3_result_error_nomem(
    pContext: pSQLite3Context
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_result_error_nomem'{$ENDIF};

procedure sqlite3_result_error_code(
    pContext: pSQLite3Context; ErrorCode: integer
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_result_error_code'{$ENDIF};

procedure sqlite3_result_int(
    pContext: pSQLite3Context; Value: integer
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_result_int'{$ENDIF};

procedure sqlite3_result_int64(
    pContext: pSQLite3Context; Value: sqlite3_int64
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_result_int64'{$ENDIF};

procedure sqlite3_result_null(
    pContext: pSQLite3Context
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_result_null'{$ENDIF};

procedure sqlite3_result_text(
    pContext: pSQLite3Context; pStr: IntPtr; Size: integer; pDestrType: IntPtr
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_result_text'{$ENDIF};

procedure sqlite3_result_text16(
    pContext: pSQLite3Context; pStr: IntPtr; Size: integer; pDestrType: IntPtr
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_result_text16'{$ENDIF};

procedure sqlite3_result_text16le(
    pContext: pSQLite3Context; pStr: IntPtr; Size: integer; pDestrType: IntPtr
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_result_text16le'{$ENDIF};

procedure sqlite3_result_text16be(
    pContext: pSQLite3Context; pStr: IntPtr; Size: integer; pDestrType: IntPtr
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_result_text16be'{$ENDIF};

procedure sqlite3_result_value(
    pContext: pSQLite3Context; Value: pSQLite3Value
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_result_value'{$ENDIF};

procedure sqlite3_result_zeroblob(
    pContext: pSQLite3Context; Size: integer
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_result_zeroblob'{$ENDIF};

function sqlite3_value_blob(
    pValue: IntPtr
  ): IntPtr; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_value_blob'{$ENDIF};

function sqlite3_value_bytes(
    pValue: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_value_bytes'{$ENDIF};

function sqlite3_value_bytes16(
    pValue: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_value_bytes16'{$ENDIF};

function sqlite3_value_double(
    pValue: IntPtr
  ): Double; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_value_double'{$ENDIF};

function sqlite3_value_int(
    pValue: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_value_int'{$ENDIF};

function sqlite3_value_int64(
    pValue: IntPtr
  ): sqlite3_int64; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_value_int64'{$ENDIF};

function sqlite3_value_text(
    pValue: IntPtr
  ): IntPtr; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_value_text'{$ENDIF};

function sqlite3_value_text16(
    pValue: IntPtr
  ): IntPtr; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_value_text16'{$ENDIF};

function sqlite3_value_type(
    pValue: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_value_type'{$ENDIF};

function sqlite3_user_data(
    pContext: pSQLite3Context
  ): IntPtr; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_user_data'{$ENDIF};

function sqlite3_libversion(
  ): PAnsiChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_libversion'{$ENDIF};

function sqlite3_libversion_number(
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_libversion_number'{$ENDIF};

function sqlite3_create_collation(
    pSQLite: pSQLite3; zName: PAnsiChar; eTextRep: integer; userData: IntPtr; func: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_create_collation'{$ENDIF};

function sqlite3_create_collation16(
    pSQLite: pSQLite3; zName: PWideChar; eTextRep: integer; userData: IntPtr; func: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_create_collation16'{$ENDIF};

function sqlite3_create_function(
    pSQLite: pSQLite3; zFunctionName: PAnsiChar; nArg: integer; eTextRep: integer; pApp: IntPtr; xFunc: IntPtr; xStep: IntPtr; xFinal: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_create_function'{$ENDIF};

function sqlite3_create_function16(
    pSQLite: pSQLite3; zFunctionName: PWideChar; nArg: integer; eTextRep: integer; pApp: IntPtr; xFunc: IntPtr; xStep: IntPtr; xFinal: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_create_function16'{$ENDIF};

function sqlite3_overload_function(
    pSQLite: pSQLite3; zFunctionName: PAnsiChar; nArg: integer
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_overload_function'{$ENDIF};

function sqlite3_create_module(
    pSQLite: pSQLite3; zName: IntPtr; p: IntPtr; pClientData: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_create_module'{$ENDIF};

function sqlite3_create_module_v2(
    pSQLite: pSQLite3; zName: IntPtr; p: IntPtr; pClientData: IntPtr; xDestroy: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_create_module_v2'{$ENDIF};

function sqlite3_declare_vtab(
    pSQLite: pSQLite3; const zCreateTable: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_declare_vtab'{$ENDIF};

function sqlite3_vtab_config(
    pSQLite: pSQLite3; op: integer; flag: integer
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_vtab_config'{$ENDIF};

function sqlite3_enable_shared_cache(
    Value: integer
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_enable_shared_cache'{$ENDIF};

function sqlite3_enable_load_extension(
    pSQLite: pSQLite3; OnOff: integer
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_enable_load_extension'{$ENDIF};

function sqlite3_busy_timeout(
    pSQLite: pSQLite3; MilliSeconds: integer
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_busy_timeout'{$ENDIF};

function sqlite3_busy_handler(
    pSQLite: pSQLite3; func: IntPtr; userData: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_busy_handler'{$ENDIF};

function sqlite3_backup_init(
    pDest: pSQLite3; zDestName: PAnsiChar;
    pSource: pSQLite3; zSourceName: PAnsiChar
  ): pSQLite3Backup; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_backup_init'{$ENDIF};

function sqlite3_backup_step(
    p: pSQLite3Backup; nPage: integer
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_backup_step'{$ENDIF};

function sqlite3_backup_finish(
    p: pSQLite3Backup
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_backup_finish'{$ENDIF};

function sqlite3_backup_remaining(
    p: pSQLite3Backup
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_backup_remaining'{$ENDIF};

function sqlite3_backup_pagecount(
    p: pSQLite3Backup
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_backup_pagecount'{$ENDIF};

function sqlite3_db_release_memory(
    pDb: pSQLite3
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_db_release_memory'{$ENDIF};

function sqlite3_db_readonly(
    pDb: pSQLite3; zDbName: PAnsiChar
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_db_readonly'{$ENDIF};

function sqlite3_limit(
    pDb: pSQLite3;
    id: integer;
    newVal: integer
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_limit'{$ENDIF};

function sqlite3_uri_parameter(
    zFilename: PAnsiChar;
    zParam: PAnsiChar
  ): PAnsiChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_uri_parameter'{$ENDIF};

procedure sqlite3_interrupt(
    pDb: pSQLite3
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_interrupt'{$ENDIF};

procedure sqlite3_aggregate_context(
    pContext: pSQLite3Context; nBytes: integer
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_aggregate_context'{$ENDIF};

function sqlite3_aggregate_count(
    pContext: pSQLite3Context
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_aggregate_count'{$ENDIF};

function sqlite3_auto_extension(
    xEntryPoint: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_auto_extension'{$ENDIF};

function sqlite3_cancel_auto_extension(
    xEntryPoint: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_cancel_auto_extension'{$ENDIF};

function sqlite3_autovacuum_pages(
    pDb: pSQLite3; pCallback, pParameter, pDestructor: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_autovacuum_pages'{$ENDIF};

function sqlite3_bind_blob64(
    pStmt: pSQLite3Stmt; index: integer; value: IntPtr; size: integer; destr: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_bind_blob64'{$ENDIF};

function sqlite3_bind_parameter_index(
    pStmt: pSQLite3Stmt; zName: PAnsiChar
  ): PAnsiChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_bind_parameter_index'{$ENDIF};

function sqlite3_bind_pointer(
    pStmt: pSQLite3Stmt; index: integer; value: IntPtr; const ptype: PAnsiChar; destr: IntPtr
  ): PAnsiChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_bind_pointer'{$ENDIF};

function sqlite3_bind_text16(
    pStmt: pSQLite3Stmt; index: integer; value: PAnsiChar; size: integer; destr: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_bind_text16'{$ENDIF};

function sqlite3_bind_text64(
    pStmt: pSQLite3Stmt; index: integer; const value: PAnsiChar; size: sqlite3_uint64; destr: IntPtr; encoding: byte
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_bind_text64'{$ENDIF};

function sqlite3_bind_value(
    pStmt: pSQLite3Stmt; index: integer; const value: pSQLite3Value
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_bind_value'{$ENDIF};

function sqlite3_bind_zeroblob64(
    pStmt: pSQLite3Stmt; index: integer; size: sqlite3_uint64
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_bind_zeroblob64'{$ENDIF};

function sqlite3_blob_open(
    pDb: pSQLite3; const zDb, zTable, zColumn: IntPtr; iRow: sqlite3_int64; flags: integer; ppBlob: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_blob_open'{$ENDIF};

function sqlite3_blob_close(
    pBlob: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_blob_close'{$ENDIF};

function sqlite3_blob_read(
    pBlob: IntPtr; z: IntPtr; n, iOffset: integer
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_blob_read'{$ENDIF};

function sqlite3_blob_write(
    pBlob: IntPtr; const z: IntPtr; n, iOffset: integer
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_blob_write'{$ENDIF};

function sqlite3_blob_reopen(
    pBlob: IntPtr; iRow: sqlite3_int64
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_blob_reopen'{$ENDIF};

function sqlite3_blob_bytes(
    pBlob: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_blob_bytes'{$ENDIF};

//function sqlite3changegroup_add(
//    pGrp: psqlite3_changegroup; nData: integer; pData: IntPtr
//  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3changegroup_add'{$ENDIF};
//
//function sqlite3changegroup_add_strm(
//    pGrp: psqlite3_changegroup; xInput, pIn: IntPtr
//  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3changegroup_add_strm'{$ENDIF};
//
//procedure sqlite3changegroup_delete(
//    pGrp: psqlite3_changegroup
//  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3changegroup_delete'{$ENDIF};
//
//function sqlite3changegroup_new(
//    pp: ppsqlite3_changegroup
//  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3changegroup_new'{$ENDIF};
//
//function sqlite3changegroup_output(
//    pGrp: psqlite3_changegroup; pnData, ppData: IntPtr
//  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3changegroup_output'{$ENDIF};
//
//function sqlite3changegroup_output_strm(
//    pGrp: psqlite3_changegroup; xOutput, pOut: IntPtr
//  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3changegroup_output_strm'{$ENDIF};

function sqlite3_changes64(
    pDb: pSQLite3
  ): sqlite3_int64; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_changes64'{$ENDIF};

function sqlite3_clear_bindings(
    pStmt: pSQLite3Stmt
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_clear_bindings'{$ENDIF};

function sqlite3_close_v2(
    pDb: pSQLite3
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_close_v2'{$ENDIF};

function sqlite3_collation_needed(
    pDb: pSQLite3; pCollNeededArg, xCollNeeded: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_collation_needed'{$ENDIF};

function sqlite3_collation_needed16(
    pDb: pSQLite3; pCollNeededArg, xCollNeeded16: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_collation_needed16'{$ENDIF};

function sqlite3_column_bytes16(
    pStmt: pSQLite3Stmt; iCol: integer
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_column_bytes16'{$ENDIF};

function sqlite3_column_database_name16(
    pStmt: pSQLite3Stmt; iCol: integer
  ): PWideChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_column_database_name16'{$ENDIF};

function sqlite3_column_decltype16(
    pStmt: pSQLite3Stmt; iCol: integer
  ): PWideChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_column_decltype16'{$ENDIF};

function sqlite3_column_name16(
    pStmt: pSQLite3Stmt; iCol: integer
  ): PWideChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_column_name16'{$ENDIF};

function sqlite3_column_origin_name16(
    pStmt: pSQLite3Stmt; iCol: integer
  ): PWideChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_column_origin_name16'{$ENDIF};

function sqlite3_column_table_name16(
    pStmt: pSQLite3Stmt; iCol: integer
  ): PWideChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_column_table_name16'{$ENDIF};

function sqlite3_column_text16(
    pStmt: pSQLite3Stmt; iCol: integer
  ): PWideChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_column_text16'{$ENDIF};

function sqlite3_column_value(
    pStmt: pSQLite3Stmt; iCol: integer
  ): pSQLite3Value; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_column_value'{$ENDIF};

procedure sqlite3_commit_hook(
    pDb: pSQLite3; xCallback, pArg: IntPtr
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_commit_hook'{$ENDIF};

procedure sqlite3_rollback_hook(
    pDb: pSQLite3; xCallback, pArg: IntPtr
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_rollback_hook'{$ENDIF};

function sqlite3_compileoption_get(
    n: integer
  ): PAnsiChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_compileoption_get'{$ENDIF};

function sqlite3_compileoption_used(
    const zOptName: PAnsiChar
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_compileoption_used'{$ENDIF};

function sqlite3_complete(
    const sql: PAnsiChar
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_complete'{$ENDIF};

function sqlite3_complete16(
    const sql: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_complete16'{$ENDIF};

function sqlite3_config(
    op: integer; args: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_config'{$ENDIF};

function sqlite3_context_db_handle(
    pContext: pSQLite3Context
  ): pSQLite3; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_context_db_handle'{$ENDIF};

function sqlite3_create_collation_v2(
    pSQLite: pSQLite3; zName: PAnsiChar; eTextRep: integer; pArg, xCompare, xDestroy: intPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_create_collation_v2'{$ENDIF};

function sqlite3_create_filename(
    const zDatabase, zJournal, zWal: PAnsiChar; nParam: integer; azParam: IntPtr
  ): PAnsiChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_create_filename'{$ENDIF};

function sqlite3_create_function_v2(
    pSQLite: pSQLite3; zFunctionName: PAnsiChar; nArg, eTextRep: integer; pApp: IntPtr; xFunc, xStep, xFinal, xDestroy: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_create_function_v2'{$ENDIF};

function sqlite3_create_window_function(
    pSQLite: pSQLite3; zFunctionName: PAnsiChar; nArg, eTextRep: integer; pApp: IntPtr; xStep, xFinal, xValue, xInverse, xDestroy: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_create_window_function'{$ENDIF};

function sqlite3_database_file_object(
    const zName: PAnsiChar
  ): IntPtr; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_database_file_object'{$ENDIF};

function sqlite3_data_count(
    pStmt: pSQLite3Stmt
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_data_count'{$ENDIF};

function sqlite3_db_cacheflush(
    pDb: pSQLite3
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_db_cacheflush'{$ENDIF};

function sqlite3_db_config(
    pDb: pSQLite3; op: integer; args: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_db_config'{$ENDIF};

function sqlite3_db_filename(
    pDb: pSQLite3; zDbName: PAnsiChar
  ): PAnsiChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_db_filename'{$ENDIF};

function sqlite3_db_handle(
    pStmt: pSQLite3Stmt
  ): pSQLite3; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_db_handle'{$ENDIF};

function sqlite3_db_mutex(
    pDb: pSQLite3
  ): IntPtr; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_db_mutex'{$ENDIF};

function sqlite3_db_status(
    pDb: pSQLite3; op: integer; pCur, pHiwtr: IntPtr; resetFlg: integer
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_db_status'{$ENDIF};

function sqlite3_serialize(
    pDb: pSQLite3; const zSchema: PAnsiChar; piSize: IntPtr; mFlags: Cardinal
  ): IntPtr; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_serialize'{$ENDIF};

function sqlite3_deserialize(
    pDb: pSQLite3; const zSchema: PAnsiChar; pData: IntPtr; szDb, szBuf: sqlite3_int64; mFlags: Cardinal
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_deserialize'{$ENDIF};

function sqlite3_drop_modules(
    pDb: pSQLite3; azNames: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_drop_modules'{$ENDIF};

function sqlite3_errmsg16(
    pDb: pSQLite3
  ): IntPtr; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_errmsg16'{$ENDIF};

function sqlite3_errstr(
    rc: integer
  ): PAnsiChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_errstr'{$ENDIF};

function sqlite3_exec(
    pDb: pSQLite3; zSql: PAnsiChar; xCallback: IntPtr; pArg, pzErrMsg: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_exec'{$ENDIF};

function sqlite3_sql(
    pStmt: pSQLite3Stmt
  ): PAnsiChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_sql'{$ENDIF};

function sqlite3_expanded_sql(
    pStmt: pSQLite3Stmt
  ): PAnsiChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_expanded_sql'{$ENDIF};

function sqlite3_expired(
    pStmt: pSQLite3Stmt
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_expired'{$ENDIF};

function sqlite3_file_control(
    pDb: pSQLite3; zDbName: PAnsiChar; op: integer; pArg: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_file_control'{$ENDIF};

function sqlite3_filename_database(
    const zFilename: PAnsiChar
  ): PAnsiChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_filename_database'{$ENDIF};

function sqlite3_filename_journal(
    const zFilename: PAnsiChar
  ): PAnsiChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_filename_journal'{$ENDIF};

function sqlite3_filename_wal(
    const zFilename: PAnsiChar
  ): PAnsiChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_filename_wal'{$ENDIF};

procedure sqlite3_free(
    p: IntPtr
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_free'{$ENDIF};

function sqlite3_malloc64(
    n: sqlite3_uint64
  ): IntPtr; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_malloc64'{$ENDIF};

function sqlite3_realloc(
    p: IntPtr; n: integer
  ): IntPtr; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_realloc'{$ENDIF};

function sqlite3_realloc64(
    p: IntPtr; n: sqlite3_uint64
  ): IntPtr; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_realloc64'{$ENDIF};

function sqlite3_msize(
    p: IntPtr
  ): sqlite3_uint64; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_msize'{$ENDIF};

procedure sqlite3_free_filename(
    p: PAnsiChar
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_free_filename'{$ENDIF};

procedure sqlite3_free_table(
    azResult: IntPtr
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_free_table'{$ENDIF};

function sqlite3_get_autocommit(
    pDb: pSQLite3
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_get_autocommit'{$ENDIF};

function sqlite3_get_auxdata(
    pContext: pSQLite3Context; iArg: integer
  ): IntPtr; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_get_auxdata'{$ENDIF};

procedure sqlite3_set_auxdata(
    pContext: pSQLite3Context; iArg: integer; pAux, xDelete: IntPtr
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_set_auxdata'{$ENDIF};

function sqlite3_get_table(
    pDb: pSQLite3; zSql: PAnsiChar; pazResult, pnRow, pnColumn, pzErrMsg: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_get_table'{$ENDIF};

function sqlite3_global_recover(
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_global_recover'{$ENDIF};

function sqlite3_hard_heap_limit64(
    n: sqlite3_int64
  ): sqlite3_int64; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_hard_heap_limit64'{$ENDIF};

procedure sqlite3_soft_heap_limit(
    n: integer
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_soft_heap_limit'{$ENDIF};

function sqlite3_soft_heap_limit64(
    n: sqlite3_int64
  ): sqlite3_int64; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_soft_heap_limit64'{$ENDIF};

function sqlite3_initialize(
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_initialize'{$ENDIF};

function sqlite3_shutdown(
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_shutdown'{$ENDIF};

function sqlite3_os_init(
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_os_init'{$ENDIF};

function sqlite3_os_end(
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_os_end'{$ENDIF};

function sqlite3_keyword_name(
    i: integer; pzName, pnName: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_keyword_name'{$ENDIF};

function sqlite3_keyword_count(
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_keyword_count'{$ENDIF};

function sqlite3_keyword_check(
    const zName: PAnsiChar; nName: integer
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_keyword_check'{$ENDIF};

function sqlite3_load_extension(
    pDb: pSQLite3; zFile, zProc: PAnsiChar; pzErrMsg: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_load_extension'{$ENDIF};

procedure sqlite3_log(
    iErrCode: integer; const zFormat: PAnsiChar; args: IntPtr
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_log'{$ENDIF};

function sqlite3_memory_alarm(
    xCallback, pArg: IntPtr; iThreshold: sqlite3_int64
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_memory_alarm'{$ENDIF};

function sqlite3_memory_used(
  ): sqlite3_int64; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_memory_used'{$ENDIF};

function sqlite3_memory_highwater(
    resetFlag: integer
  ): sqlite3_int64; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_memory_highwater'{$ENDIF};

function sqlite3_mprintf(
    const zFormat: PAnsiChar; args: IntPtr
  ): PAnsiChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_mprintf'{$ENDIF};

function sqlite3_snprintf(
    n: integer; zBuf: AnsiChar; const zFormat: PAnsiChar; args: IntPtr
  ): PAnsiChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_snprintf'{$ENDIF};

function sqlite3_vmprintf(
    const zFormat: PAnsiChar; args: IntPtr
  ): PAnsiChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_vmprintf'{$ENDIF};

function sqlite3_vsnprintf(
    n: integer; zBuf: AnsiChar; const zFormat: PAnsiChar; args: IntPtr
  ): PAnsiChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_vsnprintf'{$ENDIF};

//function sqlite3_mutex_alloc(
//    id: integer
//  ): psqlite3_mutex; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_mutex_alloc'{$ENDIF};
//
//procedure sqlite3_mutex_free(
//    p: psqlite3_mutex
//  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_mutex_free'{$ENDIF};
//
//function sqlite3_mutex_try(
//    p: psqlite3_mutex
//  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_mutex_try'{$ENDIF};
//
//procedure sqlite3_mutex_enter(
//    p: psqlite3_mutex
//  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_mutex_enter'{$ENDIF};
//
//procedure sqlite3_mutex_leave(
//    p: psqlite3_mutex
//  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_mutex_leave'{$ENDIF};

function sqlite3_next_stmt(
    pDb: pSQLite3; pStmt: pSQLite3Stmt
  ): pSQLite3Stmt; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_next_stmt'{$ENDIF};

function sqlite3_prepare(
    pDb: pSQLite3; zSql: PAnsiChar; nBytes: integer; ppStmt, pzTail: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_prepare'{$ENDIF};

function sqlite3_prepare16(
    pDb: pSQLite3; zSql: IntPtr; nBytes: integer; ppStmt, pzTail: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_prepare16'{$ENDIF};

function sqlite3_prepare16_v2(
    pDb: pSQLite3; zSql: IntPtr; nBytes: integer; ppStmt, pzTail: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_prepare16_v2'{$ENDIF};

function sqlite3_prepare_v3(
    pDb: pSQLite3; zSql: PAnsiChar; nBytes: integer; prepFlags: Cardinal; ppStmt, pzTail: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_prepare_v3'{$ENDIF};

function sqlite3_prepare16_v3(
    pDb: pSQLite3; zSql: IntPtr; nBytes: integer; prepFlags: Cardinal; ppStmt, pzTail: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_prepare16_v3'{$ENDIF};

//function sqlite3_preupdate_blobwrite(
//    pDb: pSQLite3
//  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_preupdate_blobwrite'{$ENDIF};

function sqlite3_profile(
    pDb: pSQLite3; xProfile, pArg: IntPtr
  ): IntPtr; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_profile'{$ENDIF};

procedure sqlite3_progress_handler(
    pDb: pSQLite3; nOps: integer; xProgress, pArg: IntPtr
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_progress_handler'{$ENDIF};

procedure sqlite3_randomness(
    n: integer; p: IntPtr
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_randomness'{$ENDIF};

function sqlite3_release_memory(
    n: integer
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_release_memory'{$ENDIF};

procedure sqlite3_reset_auto_extension(
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_reset_auto_extension'{$ENDIF};

procedure sqlite3_result_blob64(
    pContext: pSQLite3Context; pBlob: IntPtr; Size: sqlite3_uint64; pDestrType: IntPtr
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_result_blob64'{$ENDIF};

procedure sqlite3_result_pointer(
    pContext: pSQLite3Context; pPtr: IntPtr; zPType: PAnsiChar; xDestructor: IntPtr
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_result_pointer'{$ENDIF};

procedure sqlite3_result_subtype(
    pContext: pSQLite3Context; eSubtype: Cardinal
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_result_subtype'{$ENDIF};

procedure sqlite3_result_text64(
    pContext: pSQLite3Context; pStr: IntPtr; Size: sqlite3_uint64; pDestrType: IntPtr; enc: byte
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_result_text64'{$ENDIF};

procedure sqlite3_result_zeroblob64(
    pContext: pSQLite3Context; Size: sqlite3_uint64
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_result_zeroblob64'{$ENDIF};

function sqlite3_rtree_geometry_callback(
    pDb: pSQLite3; zGeom, xGeom, pContext: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_rtree_geometry_callback'{$ENDIF};

function sqlite3_rtree_query_callback(
    pDb: pSQLite3; zQueryFunc, xQueryFunc, pContext, xDestructor: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_rtree_query_callback'{$ENDIF};

function sqlite3_set_authorizer(
    pDb: pSQLite3; xAuth, pArg: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_set_authorizer'{$ENDIF};

procedure sqlite3_set_last_insert_rowid(
    pDb: pSQLite3; iRowid: sqlite3_int64
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_set_last_insert_rowid'{$ENDIF};

function sqlite3_sleep(
    ms: integer
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_sleep'{$ENDIF};

function sqlite3_sourceid(
  ): PAnsiChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_sourceid'{$ENDIF};

function sqlite3_status(
    op: integer; pCurrent, pHighwater: IntPtr; resetFlag: integer
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_status'{$ENDIF};

function sqlite3_status64(
    op: integer; pCurrent, pHighwater: IntPtr; resetFlag: integer
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_status64'{$ENDIF};

function sqlite3_stmt_busy(
    pStmt: pSQLite3Stmt
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_stmt_busy'{$ENDIF};

function sqlite3_stmt_isexplain(
    pStmt: pSQLite3Stmt
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_stmt_isexplain'{$ENDIF};

function sqlite3_stmt_readonly(
    pStmt: pSQLite3Stmt
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_stmt_readonly'{$ENDIF};

function sqlite3_stmt_status(
    pStmt: pSQLite3Stmt; op, resetFlag: integer
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_stmt_status'{$ENDIF};

procedure sqlite3_str_append(
    p: IntPtr; const z: PAnsiChar; n: integer
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_str_append'{$ENDIF};

procedure sqlite3_str_appendall(
    p: IntPtr; const z: PAnsiChar
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_str_appendall'{$ENDIF};

procedure sqlite3_str_appendchar(
    p: IntPtr; n: integer; c: byte
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_str_appendchar'{$ENDIF};

procedure sqlite3_str_appendf(
    p: IntPtr; const zFormat: PAnsiChar; args: IntPtr
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_str_appendf'{$ENDIF};

function sqlite3_str_errcode(
    p: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_str_errcode'{$ENDIF};

function sqlite3_str_finish(
    p: IntPtr
  ): PAnsiChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_str_finish'{$ENDIF};

function sqlite3_strglob(
    const zGlobPattern, zString: PAnsiChar
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_strglob'{$ENDIF};

function sqlite3_stricmp(
    const zLeft, zRight: PAnsiChar
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_stricmp'{$ENDIF};

function sqlite3_str_length(
    p: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_str_length'{$ENDIF};

function sqlite3_strlike(
    const zPattern, zStr: PAnsiChar; esc: Cardinal
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_strlike'{$ENDIF};

function sqlite3_str_new(
    pDb: pSQLite3
  ): IntPtr; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_str_new'{$ENDIF};

function sqlite3_strnicmp(
    const zLeft, zRight: PAnsiChar; n: integer
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_strnicmp'{$ENDIF};

procedure sqlite3_str_reset(
    p: IntPtr
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_str_reset'{$ENDIF};

function sqlite3_str_value(
    p: IntPtr
  ): PAnsiChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_str_value'{$ENDIF};

procedure sqlite3_str_vappendf(
    pAccum: IntPtr; const fmt: PAnsiChar; ap: IntPtr
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_str_vappendf'{$ENDIF};

function sqlite3_system_errno(
    pDb: pSQLite3
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_system_errno'{$ENDIF};

function sqlite3_test_control(
    op: integer; args: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_test_control'{$ENDIF};

procedure sqlite3_thread_cleanup(
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_thread_cleanup'{$ENDIF};

function sqlite3_threadsafe(
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_threadsafe'{$ENDIF};

function sqlite3_total_changes(
    pDb: pSQLite3
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_total_changes'{$ENDIF};

function sqlite3_total_changes64(
    pDb: pSQLite3
  ): sqlite3_int64; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_total_changes64'{$ENDIF};

function sqlite3_trace(
    pDb: pSQLite3; xTrace, pArg: IntPtr
  ): IntPtr; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_trace'{$ENDIF};

function sqlite3_trace_v2(
    pDb: pSQLite3; mTrace: Cardinal; xTrace, pArg: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_trace_v2'{$ENDIF};

function sqlite3_transfer_bindings(
    pFromStmt, pToStmt: pSQLite3Stmt
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_transfer_bindings'{$ENDIF};

function sqlite3_txn_state(
    pDb: pSQLite3; const zSchema: PAnsiChar
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_txn_state'{$ENDIF};

function sqlite3_update_hook(
    pDb: pSQLite3; xCallback, pArg: IntPtr
  ): IntPtr; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_update_hook'{$ENDIF};

function sqlite3_uri_boolean(
    const zFilename, zParam: PAnsiChar; bDflt: integer
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_uri_boolean'{$ENDIF};

function sqlite3_uri_int64(
    const zFilename, zParam: PAnsiChar; bDflt: sqlite3_int64
  ): sqlite3_int64; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_uri_int64'{$ENDIF};

function sqlite3_uri_key(
    const zFilename: PAnsiChar; n: integer
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_uri_key'{$ENDIF};

function sqlite3_value_dup(
    const pOrig: pSQLite3Value
  ): pSQLite3Value; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_value_dup'{$ENDIF};

procedure sqlite3_value_free(
    pOld: pSQLite3Value
  ); cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_value_free'{$ENDIF};

function sqlite3_value_frombind(
    pValue: pSQLite3Value
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_value_frombind'{$ENDIF};

function sqlite3_value_nochange(
    pValue: pSQLite3Value
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_value_nochange'{$ENDIF};

function sqlite3_value_numeric_type(
    pValue: pSQLite3Value
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_value_numeric_type'{$ENDIF};

function sqlite3_value_pointer(
    pValue: pSQLite3Value; const zPType: PAnsiChar
  ): IntPtr; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_value_pointer'{$ENDIF};

function sqlite3_value_subtype(
    pValue: pSQLite3Value
  ): Cardinal; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_value_subtype'{$ENDIF};

function sqlite3_value_text16le(
    pValue: pSQLite3Value
  ): IntPtr; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_value_text16le'{$ENDIF};

function sqlite3_value_text16be(
    pValue: pSQLite3Value
  ): IntPtr; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_value_text16be'{$ENDIF};

function sqlite3_vfs_find(
    const zVfs: PAnsiChar
  ): IntPtr; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_vfs_find'{$ENDIF};

function sqlite3_vfs_register(
    pVfs: IntPtr; makeDflt: integer
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_vfs_register'{$ENDIF};

function sqlite3_vfs_unregister(
    pVfs: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_vfs_unregister'{$ENDIF};

function sqlite3_vtab_collation(
    pIdxInfo: IntPtr; iCons: integer
  ): PAnsiChar; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_vtab_collation'{$ENDIF};

function sqlite3_vtab_nochange(
    pContext: pSQLite3Context
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_vtab_nochange'{$ENDIF};

function sqlite3_vtab_on_conflict(
    pDb: pSQLite3
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_vtab_on_conflict'{$ENDIF};

function sqlite3_wal_autocheckpoint(
    pDb: pSQLite3; nFrame: integer
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_wal_autocheckpoint'{$ENDIF};

function sqlite3_wal_checkpoint(
    pDb: pSQLite3; const zDb: PAnsiChar
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_wal_checkpoint'{$ENDIF};

function sqlite3_wal_checkpoint_v2(
    pDb: pSQLite3; const zDb: PAnsiChar; eMode: integer; pnLog, pnCkpt: IntPtr
  ): integer; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_wal_checkpoint_v2'{$ENDIF};

function sqlite3_wal_hook(
    pDb: pSQLite3; xCallback, pArg: IntPtr
  ): IntPtr; cdecl; external{$IFDEF NAMED_EXTERNAL} sqlite3o{$ENDIF}{$IFDEF NAMED_IMPORT} name PU + 'sqlite3_wal_hook'{$ENDIF};

