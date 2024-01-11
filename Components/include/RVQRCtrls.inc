{***************************************************************}
{*            RichView wrapper for QuickReport                 *}
{***************************************************************}
{*                                                             *}
{* Copyright (c) 2005-2011                                     *}
{*               Henk van Bokhorst / IVS Systemhouse B.V.      *}
{*             & QBS Software                                  *}
{* All rights reserved                                         *}
{*                                                             *}
{***************************************************************}
{*                                                             *}
{* Conditional defines                                         *}
{*                                                             *}
{* Remove the dots to enable the correct options               *}
{*                                                             *}
{* 02/15/2011 First released version                           *}
{*                                                             *}
{***************************************************************}

{***********************}
{* QuickReport version *}
{***********************}

{.$DEFINE USEQR3}    // QR3
{.$DEFINE USEQR4}    // QR4
{.$DEFINE USEQR5}    // QR5

{****************************************************************}
{* Graphic formats supported by the design-time property editor *}
{****************************************************************}

{.$DEFINE USEGIF}        // GIF format for Delphi versions prior to 2007
{.$DEFINE USEGIF2007}    // GIF format for Delphi versions 2007 and up
{.$DEFINE USEPNG}        // PNG format for Delphi versions prior to 2009
{.$DEFINE USEPNG2009}    // PNG format for Delphi versions 2009 and up
