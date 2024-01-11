{.$DEFINE DEBUGLOG}
{$R-}

{$SCOPEDENUMS ON}
{$IFDEF NEXTGEN}
{$ZEROBASEDSTRINGS OFF}
{$ENDIF}

// Small test for internal build process
{$IFNDEF DEBUG}
{$IFNDEF RELEASE}
{$IFNDEF PAS2JS}
{$IFNDEF FPC}
{$MESSAGE Fatal 'Invalid build config.'}
{$ENDIF}
{$ENDIF}
{$ENDIF}
{$ENDIF}

{$IFDEF FPC}
  {$mode delphi}
  {$MACRO ON}
  {$DEFINE PUREPASCAL}
  {$define RTLVersion := 23}
  {$define CompilerVersion := 23}
{$ENDIF}

{$IF CompilerVersion >= 24.0}
  {$LEGACYIFEND ON}
  {$DEFINE DELPHIXE3_LVL}
{$IFEND}

{$IF CompilerVersion >= 22}
  {$DEFINE DELPHIXE_LVL}
{$IFEND}

{$IF CompilerVersion >= 23}
  {$DEFINE DELPHIXE2_LVL}
{$IFEND}

{$IF CompilerVersion >= 25}
  {$DEFINE DELPHIXE4_LVL}
{$IFEND}

{$IF CompilerVersion >= 26}
  {$DEFINE DELPHIXE5_LVL}
  {$IFDEF DEBUG}
    {$D1}  //limited debug info.
  {$ENDIF}
{$IFEND}

{$IF CompilerVersion >= 27}
  {$DEFINE DELPHIXE6_LVL}
{$IFEND}

{$IF CompilerVersion >= 33}
  {$DEFINE DELPHIRIO_LVL}
{$IFEND}

{$IF CompilerVersion >= 34}
  {$DEFINE DELPHISYDNEY_LVL}
{$IFEND}

{$DEFINE GENERICS}
{$DEFINE ISDELPHI}

{$IFDEF PAS2JS}
  {$UNDEF GENERICS}
  {$UNDEF ISDELPHI}
  {$DEFINE JSON_STRING_READER}
{$ENDIF}
