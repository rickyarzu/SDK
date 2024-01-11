{$I RV_Defs.inc}

{===============================================================================
     Conditional defines for RichViewActions.
     Remove dots to enable.
===============================================================================}

{ 

Obsolete defines:

- USERVXML (to use RichViewXML, use TRVAControlPanel.XMLComponent property)
- USERVHTML (to use RVHTMLImporter, use TRVAControlPanel.HTMLComponent property)
- USERVHTMLVIEWER (to use RVHTMLViewImporter, use TRVAControlPanel.HTMLComponent property)
- USERVADDICT3 (to use Addict, use TRVAControlPanel.SpellInterface and TRVAAddictSpellInterface component)
- USERVTNT (to use TNT Controls, activate it in RV_Defs.inc instead)
- USEINDY (to use Indy, use TRVAControlPanel.DownloadInterface and TRVAIndyDownloadInterface component)
- USECLEVERCOMPONENTS (to use CleverComponents, use TRVAControlPanel.DownloadInterface and TRVAClDownloadInterface component)
}

// Enables ThemeEngine (http://www.ksdev.com)
{.$DEFINE USERVKSDEVTE}


// Enables the use of Toolbar2000 (additional TRVATBPopupMenu component)
// http://www.jrsoftware.org
{.$DEFINE USETB2K}

// Enables the use of TBX (additional TRVATBXPopupMenu component)
// http://code.google.com/p/tbxlib/
{.$DEFINE USETBX}

// Enables the use of SpTBXLib (additional TRVASPTBXPopupMenu component)
// http://www.silverpointdevelopment.com/sptbxlib/
{.$DEFINE USESPTBX}

// Enables Datamodule with GlyFX (http://www.glyfx.com) images
{.$DEFINE USEGLYFX}           // to use dmActionsGlyFX         (XP-style, 1 bit transparency)
{.$DEFINE USEGLYFXALPHA}      // to use dmActionsGlyFXAlpha    (XP-style, 1 byte transparency, D2009+)
{.$DEFINE USEGLYFXAERO}       // to use dmActionsGlyFXAero     (Vista-style, 1 bit transparency)
{.$DEFINE USEGLYFXAEROALPHA}  // to use dmActionsGlyFXAeroAlpha (Vista-style, 1 byte transparency, D2009+)

// Enables Datamodule with Fugue Icons (http://www.pinvoke.com) images
// See http://www.trichview.com/forums/viewtopic.php?t=3356
{.$DEFINE USEFUGUEICONS}  // to use dmActionsFugue (1 byte transparency, D2009+)

// Define to use 'Lorem Ipsum' as a sample text
{.$DEFINE USELOREMIPSUM}

// Define to use the parent form as the form owners
{$DEFINE RVAPARENTFORMISDIALOGOWNER}

{------------------------------------------------------------------------------}
{ Languages                                                                    }
{------------------------------------------------------------------------------}
// Enable to exclude languages
{.$DEFINE RVA_NO_ARMENIAN}
{.$DEFINE RVA_NO_BULGARIAN}
{.$DEFINE RVA_NO_BYELORUSSIAN}
{.$DEFINE RVA_NO_CATALAN}
{.$DEFINE RVA_NO_CHINESE_SIMPL}
{.$DEFINE RVA_NO_CHINESE_TRAD}
{.$DEFINE RVA_NO_CZECH}
{.$DEFINE RVA_NO_DANISH}
{.$DEFINE RVA_NO_DUTCH}
{.$DEFINE RVA_NO_ENGLISH_US}
{.$DEFINE RVA_NO_FARSI}
{.$DEFINE RVA_NO_FINNISH}
{.$DEFINE RVA_NO_FRENCH}
{.$DEFINE RVA_NO_GERMAN}
{.$DEFINE RVA_NO_HINDI}
{.$DEFINE RVA_NO_HUNGARIAN}
{.$DEFINE RVA_NO_ITALIAN}
{.$DEFINE RVA_NO_JAPANESE}
{.$DEFINE RVA_NO_KOREAN}
{.$DEFINE RVA_NO_LITHUANIAN}
{.$DEFINE RVA_NO_MALAY}
{.$DEFINE RVA_NO_NORWEGIAN}
{.$DEFINE RVA_NO_POLISH}
{.$DEFINE RVA_NO_PORTUGUESE_BR}
{.$DEFINE RVA_NO_PORTUGUESE_PT}
{.$DEFINE RVA_NO_ROMANIAN}
{.$DEFINE RVA_NO_RUSSIAN}
{.$DEFINE RVA_NO_SLOVAK}
{.$DEFINE RVA_NO_SPANISH}
{.$DEFINE RVA_NO_SWEDISH}
{$DEFINE RVA_NO_THAI}
{.$DEFINE RVA_NO_TURKISH}
{.$DEFINE RVA_NO_UKRAINIAN}
{$DEFINE RVA_NO_RESOURCELANGUAGE}

// Enable to exclude strings for the equation editor
{.$DEFINE RVDONOTUSEMATHITEM}

{------------------------------------------------------------------------------}
{ Do not modify below this line                                                }
{------------------------------------------------------------------------------}

{$IFnDEF RICHVIEWDEFXE4}
{$UNDEF RVDONOTUSEMATHITEM}
{$ENDIF}

{$IFDEF USERVKSDEVTE}
  {$DEFINE RVASKINNED}
{$ENDIF}
{$IFDEF USERVTNT}
  {$DEFINE RVASKINNED}
{$ENDIF}

{$IFDEF USERVKSDEVTE}
  {$IFDEF USERVTNT}
  Error! You cannot enable both ThemeEngine and TNT Controls Support!!!
  {$ENDIF}
{$ENDIF}

{$IFDEF USETBX}
  {$IFNDEF USETB2K}
   {$DEFINE USETB2K}
  {$ENDIF}
{$ENDIF}

{$IFDEF USERVHTMLVIEWER}
  {$DEFINE RVAHTML}
{$ELSE}
  {$IFDEF USERVHTML}
    {$DEFINE RVAHTML}
  {$ENDIF}
{$ENDIF}

{$IFDEF RICHVIEWDEF2009}
  {$IFnDEF FPC}
    {$DEFINE RVADIALOGEXECUTEHANDLE}
  {$ENDIF}
{$ENDIF}
