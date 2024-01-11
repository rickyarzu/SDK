{$DEFINE FIREMONKEY}
/// Here are the compiler options and defines used by FlexCel. Do not modify this file.

{$DEFINE FLX_CROSSPLAT}
{$DEFINE FLX_VCL}

{$IFDEF ConditionalExpressions}
  {$if CompilerVersion >= 25.0} //Delphi XE4 or above
    {$DEFINE DELPHIXE4UP}
  {$IFEND}
  {$if CompilerVersion >= 24.0} //Delphi XE3 or above
    {$DEFINE DELPHIXE3UP}
  {$IFEND}
  {$if CompilerVersion >= 22.0} //Delphi XE or above
    {$DEFINE DELPHIXEUP}
  {$IFEND}
  {$if CompilerVersion >= 19} //Delphi 2009 or above
    {$DEFINE DELPHI2008UP}
    {$DEFINE FLX_HAS_DEPRECATED_COMMENTS}
    {$DEFINE FLX_FPC_OR_UNICODE}
  {$IFEND}
  {$if CompilerVersion >= 21} //Delphi 2019 or above. D2009 has generics, but too buggy.
    {$DEFINE FLX_GENERICS}
  {$IFEND}
{$ENDIF}

{$B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O-,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}

{$DEFINE FLX_NEEDSJPEG}
{$DEFINE FLX_WINDOWSCLIPBOARD}
{$IFDEF CONDITIONALEXPRESSIONS}  //Delphi 6 or newer
  {$DEFINE FLX_NEEDSVARIANTS}
  {$DEFINE FLX_HASCUSTOMVARIANTS}
  {$DEFINE FLX_NEEDSDESIGNINTF}
  {$DEFINE FLX_CANDISABLEWARNINGS}
  {$DEFINE FLX_NEEDSTYPES}

  {$if CompilerVersion < 15}
  {$DEFINE NOFORMATSETTINGS}
  {$DEFINE FLX_NEEDSPOSEX}
  {$IFEND} //Delphi 6

  {$if CompilerVersion >= 18}  //Delphi 2006 or newer, this is fixed there.
  {$DEFINE WIDEUPPEROK}
  {$DEFINE FLX_FIX_PARENTBACKGROUND}
  {$ifend}

{$ELSE}
  {$DEFINE FLX_EXTRAWINDOWS}
  {$DEFINE FLX_NO_TSIZE}
  {$DEFINE NOFORMATSETTINGS}
  {$DEFINE FLX_NEEDSPOSEX}
  {$DEFINE FLX_NOVARDATEFROMSTRING}
{$ENDIF}

{$IFDEF ConditionalExpressions}
      {$if CompilerVersion >= 18}
         {$DEFINE BCB2006UP}
      {$ifend}
{$ENDIF}
