// CodeGear C++Builder
// Copyright (c) 1995, 2024 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'dclsgcWebSockets.dpk' rev: 36.00 (Windows)

#ifndef dclsgcWebSocketsHPP
#define dclsgcWebSocketsHPP

#pragma delphiheader begin
#pragma option push
#if defined(__BORLANDC__) && !defined(__clang__)
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#endif
#pragma pack(push,8)
#include <System.hpp>	// (rtl)
#include <SysInit.hpp>
#include <sgcHTTP_Reg.hpp>
#include <sgcWebSocket_APIs_Reg.hpp>
#include <System.UITypes.hpp>	// (rtl)
#include <Winapi.Windows.PkgHelper.hpp>	// (rtl)
#include <Winapi.PsAPI.hpp>	// (rtl)
#include <System.Character.hpp>	// (rtl)
#include <System.Internal.ExcUtils.hpp>	// (rtl)
#include <System.SysUtils.hpp>	// (rtl)
#include <System.VarUtils.hpp>	// (rtl)
#include <System.Variants.hpp>	// (rtl)
#include <System.TypInfo.hpp>	// (rtl)
#include <System.Math.hpp>	// (rtl)
#include <System.Generics.Defaults.hpp>	// (rtl)
#include <System.TimeSpan.hpp>	// (rtl)
#include <System.SyncObjs.hpp>	// (rtl)
#include <System.Rtti.hpp>	// (rtl)
#include <System.Classes.hpp>	// (rtl)
#include <System.DateUtils.hpp>	// (rtl)
#include <System.IOUtils.hpp>	// (rtl)
#include <System.IniFiles.hpp>	// (rtl)
#include <System.Actions.hpp>	// (rtl)
#include <System.Win.Registry.hpp>	// (rtl)
#include <System.UIConsts.hpp>	// (rtl)
#include <Vcl.Graphics.hpp>	// (vcl)
#include <System.Messaging.hpp>	// (rtl)
#include <Vcl.ActnList.hpp>	// (vcl)
#include <System.HelpIntfs.hpp>	// (rtl)
#include <Winapi.UxTheme.hpp>	// (rtl)
#include <System.AnsiStrings.hpp>	// (rtl)
#include <Vcl.GraphUtil.hpp>	// (vcl)
#include <Vcl.StdCtrls.hpp>	// (vcl)
#include <Vcl.Clipbrd.hpp>	// (vcl)
#include <Vcl.Printers.hpp>	// (vcl)
#include <Vcl.ComCtrls.hpp>	// (vcl)
#include <Vcl.Dialogs.hpp>	// (vcl)
#include <Vcl.ExtCtrls.hpp>	// (vcl)
#include <Vcl.Themes.hpp>	// (vcl)
#include <System.Win.ComObj.hpp>	// (rtl)
#include <Winapi.FlatSB.hpp>	// (rtl)
#include <Vcl.Forms.hpp>	// (vcl)
#include <Vcl.Menus.hpp>	// (vcl)
#include <Winapi.MsCTF.PkgHelper.hpp>	// (rtl)
#include <Vcl.Controls.hpp>	// (vcl)
#include <IDEMessages.hpp>	// (designide)
#include <Vcl.CaptionedDockTree.hpp>	// (vcl)
#include <Vcl.DockTabSet.hpp>	// (vcl)
#include <Vcl.Grids.hpp>	// (vcl)
#include <Vcl.CategoryButtons.hpp>	// (vcl)
#include <Vcl.ButtonGroup.hpp>	// (vcl)
#include <Vcl.SysStyles.hpp>	// (vcl)
#include <Winapi.D2D1.hpp>	// (rtl)
#include <Vcl.Direct2D.hpp>	// (vcl)
#include <Vcl.StyleAPI.hpp>	// (vcl)
#include <Vcl.Styles.hpp>	// (vcl)
#include <Vcl.ImageCollection.hpp>	// (vclwinx)
#include <BrandingAPI.hpp>	// (designide)
#include <Winapi.GDIPOBJ.hpp>	// (rtl)
#include <Vcl.Buttons.hpp>	// (vcl)
#include <Vcl.Imaging.pngimage.hpp>	// (vclimg)
#include <DebugAPI.hpp>	// (designide)
#include <System.Devices.hpp>	// (rtl)
#include <Proxies.hpp>	// (designide)
#include <Vcl.AxCtrls.hpp>	// (vcl)
#include <Vcl.AppEvnts.hpp>	// (vcl)
#include <TreeIntf.hpp>	// (designide)
#include <TopLevels.hpp>	// (designide)
#include <StFilSys.hpp>	// (designide)
#include <IDEHelp.hpp>	// (designide)
#include <ComponentDesigner.hpp>	// (designide)
#include <IDETheme.Utils.hpp>	// (designide)
#include <PercentageDockTree.hpp>	// (designide)
#include <Vcl.WinXCtrls.hpp>	// (vclwinx)
#include <WaitDialog.hpp>	// (designide)
#include <Vcl.ExtDlgs.hpp>	// (vcl)
#include <Winapi.Mapi.hpp>	// (rtl)
#include <Vcl.ExtActns.hpp>	// (vcl)
#include <Vcl.ActnMenus.hpp>	// (vclactnband)
#include <Vcl.ActnMan.hpp>	// (vclactnband)
#include <Vcl.PlatformDefaultStyleActnCtrls.hpp>	// (vclactnband)
#include <BaseDock.hpp>	// (designide)
#include <DeskUtil.hpp>	// (designide)
#include <DeskForm.hpp>	// (designide)
#include <DockForm.hpp>	// (designide)
#include <Xml.Win.msxmldom.hpp>	// (xmlrtl)
#include <Xml.xmldom.hpp>	// (xmlrtl)
#include <ToolsAPI.hpp>	// (designide)
#include <DesignEditors.hpp>	// (designide)
#include <IdGlobal.hpp>	// (IndySystem)
#include <IdWinsock2.hpp>	// (IndySystem)
#include <IdWship6.hpp>	// (IndySystem)
#include <IdIDN.hpp>	// (IndySystem)
#include <IdStackWindows.hpp>	// (IndySystem)
#include <IdStack.hpp>	// (IndySystem)
#include <IdComponent.hpp>	// (IndySystem)
#include <IdFIPS.hpp>	// (IndyProtocols)
#include <IdGlobalProtocols.hpp>	// (IndyProtocols)
#include <IdSSLOpenSSLHeaders.hpp>	// (IndyProtocols)
#include <IdIOHandler.hpp>	// (IndyCore)
#include <IdIOHandlerStack.hpp>	// (IndyCore)
#include <IdThread.hpp>	// (IndyCore)
#include <IdSSL.hpp>	// (IndyProtocols)
#include <IdSSLOpenSSL.hpp>	// (IndyProtocols)
#include <IdCoderMIME.hpp>	// (IndyProtocols)
#include <IdAuthentication.hpp>	// (IndyProtocols)
#include <IdHTTPHeaderInfo.hpp>	// (IndyProtocols)
#include <IdHeaderCoderBase.hpp>	// (IndyProtocols)
#include <IdHeaderCoderPlain.hpp>	// (IndyProtocols)
#include <IdHeaderCoder2022JP.hpp>	// (IndyProtocols)
#include <IdHeaderCoderIndy.hpp>	// (IndyProtocols)
#include <IdAuthenticationNTLM.hpp>	// (IndyProtocols)
#include <IdAuthenticationSSPI.hpp>	// (IndyProtocols)
#include <IdAuthenticationDigest.hpp>	// (IndyProtocols)
#include <IdHMAC.hpp>	// (IndyProtocols)
#include <IdLogBase.hpp>	// (IndyCore)
#include <sgcSSL_WinSSPI.hpp>	// (sgcWebSockets)
#include <sgcSSL_SChannel.hpp>	// (sgcWebSockets)
#include <sgcJSON.hpp>	// (sgcWebSockets)
#include <System.NetEncoding.hpp>	// (rtl)
#include <sgcWebSocket_HTTPResponse.hpp>	// (sgcWebSockets)
#include <sgcWebSocket_Protocol_Base_Server.hpp>	// (sgcWebSockets)
#include <sgcWebSocket_Client_WinHTTP.hpp>	// (sgcWebSockets)
#include <sgcLib_Telegram.hpp>	// (sgcWebSockets)
#include <sgcWebSocket_API_Bitmex.hpp>	// (sgcWebSockets)
#include <sgcWebSocket_Server_API_SocketIO.hpp>	// (sgcWebSockets)
// SO_SFX: 290
// PRG_EXT: .bpl
// BPI_DIR: C:\Users\Public\Documents\Embarcadero\Studio\23.0\Dcp
// OBJ_DIR: ..\libD11
// OBJ_EXT: .obj

//-- user supplied -----------------------------------------------------------

namespace Dclsgcwebsockets
{
//-- forward type declarations -----------------------------------------------
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
}	/* namespace Dclsgcwebsockets */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_DCLSGCWEBSOCKETS)
using namespace Dclsgcwebsockets;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// dclsgcWebSocketsHPP
