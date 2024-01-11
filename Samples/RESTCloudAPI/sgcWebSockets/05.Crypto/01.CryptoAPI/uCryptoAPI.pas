unit uCryptoAPI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls,
  // sgc
  sgcWebSocket_Classes, sgcWebSocket_Client, sgcWebSocket, StdCtrls,
  sgcWebSocket_Protocol_Base_Client,
  sgcWebSocket_Protocols, sgcWebSocket_Types, sgcWebSocket_Classes_Indy,
  sgcWebSocket_API_Bittrex, sgcWebSocket_APIs, sgcWebSocket_API_Binance,
  sgcWebSocket_API_Bitstamp, sgcWebSocket_API_Huobi, sgcWebSocket_API_Cex,
  sgcWebSocket_API_Bitmex, sgcBase_Classes,
  sgcWebSocket_API_FXCM, sgcTCP_Classes, sgcWebSocket_API_Kraken,
  sgcWebSocket_API_Discord, sgcHTTP_API_Binance, sgcWebSocket_API_Coinbase,
  sgcHTTP_API_Coinbase, sgcHTTP_API_Kraken, sgcHTTP,
  sgcSocket_Classes, sgcWebSocket_API_FTX, sgcHTTP_API_FTX,
  sgcWebSocket_API_ThreeCommas, sgcHTTP_API_ThreeCommas, sgcHTTP_API_Bitmex,
  sgcWebSocket_API_Kucoin, sgcHTTP_API_Kucoin, sgcWebSocket_API_SocketIO,
  sgcWebSocket_API_SignalR, sgcWebSocket_API_OKX, sgcWebSocket_API_XTB,
  sgcWebSocket_API_Bybit, sgcHTTP_API_Bybit;

type
  TfrmWebSocketClient = class(TForm)
    pnlClient: TPanel;
    memoLog: TMemo;
    WSClient: TsgcWebSocketClient;
    pnlClientActive: TPanel;
    btnStart: TButton;
    btnStop: TButton;
    pnlClientOptions: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    chkCompressed: TCheckBox;
    chkTLS: TCheckBox;
    txtHost: TEdit;
    Label5: TLabel;
    txtPort: TEdit;
    chkProxy: TCheckBox;
    Label7: TLabel;
    txtProxyUsername: TEdit;
    txtProxyPassword: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    txtProxyHost: TEdit;
    txtProxyPort: TEdit;
    Label10: TLabel;
    pnlTop: TPanel;
    PageControl1: TPageControl;
    pnlMemo: TPanel;
    Label14: TLabel;
    txtParameters: TEdit;
    chkOverWebSocket: TCheckBox;
    tabBITTREX: TTabSheet;
    BITTREX: TsgcWSAPI_Bittrex;
    txtBittrexApiKey: TEdit;
    txtBittrexApiSecret: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    btnBittrexAuthenticate: TButton;
    txtBittrexMarketName: TEdit;
    Label21: TLabel;
    tabBINANCE: TTabSheet;
    BINANCE: TsgcWSAPI_Binance;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    BITSTAMP: TsgcWSAPI_Bitstamp;
    tabBITSTAMP: TTabSheet;
    btnTickerBITSTAMP: TButton;
    btnOrderBookBITSTAMP: TButton;
    btnFullOrderBookBITSTAMP: TButton;
    btnLiveOrdersBITSTAMP: TButton;
    tabHUOBI: TTabSheet;
    HUOBI: TsgcWSAPI_Huobi;
    btnSubscribeHuobiKLine: TButton;
    Label30: TLabel;
    txtHuobiSymbol: TEdit;
    btnUnSubscribeHuobiKLine: TButton;
    cboHuobiPeriods: TComboBox;
    btnSubscribeHuobiMarketDepth: TButton;
    btnUnSubscribeHuobiMarketDepth: TButton;
    cboHuobiDepths: TComboBox;
    btnSubscribeHuobiTradeDetail: TButton;
    btnUnSubscribeHuobiTradeDetail: TButton;
    btnUnSubscribeHuobiMarketDetail: TButton;
    btnSubscribeHuobiMarketDetail: TButton;
    btnSubscribeHuobiMarketTickers: TButton;
    btnUnSubscribeHuobiMarketTickers: TButton;
    tabCEX: TTabSheet;
    CEX: TsgcWSAPI_Cex;
    btnCexSubscribeTickers: TButton;
    Label31: TLabel;
    Label32: TLabel;
    txtCexApiSecret: TEdit;
    txtCexApiKey: TEdit;
    btnCexAuthenticate: TButton;
    btnCexUnSubscribeTickers: TButton;
    Label33: TLabel;
    txtCexSymbol1: TEdit;
    txtCexSymbol2: TEdit;
    btnCexSubscribeCharts: TButton;
    cboCexPeriods: TComboBox;
    btnCexGetTicker: TButton;
    btnCexGetBalance: TButton;
    btnCexSubscribeOrderBook: TButton;
    btnCexUnsubscribeOrderBook: TButton;
    btnCexGetOpenOrders: TButton;
    btnCexGetArchivedOrders: TButton;
    btnCexGetOpenPositions: TButton;
    tabBITMEX: TTabSheet;
    BITMEX: TsgcWSAPI_Bitmex;
    Label36: TLabel;
    txtBitmexApiKey: TEdit;
    Label37: TLabel;
    txtBitmexApiSecret: TEdit;
    btnBitmexAuthenticate: TButton;
    tabFXCM: TTabSheet;
    FXCM: TsgcWSAPI_FXCM;
    txtFXCMAccessToken: TEdit;
    Label38: TLabel;
    btnFXCMGetSymbols: TButton;
    btnFXCMSubscribeMarketData: TButton;
    btnFXCMUnSubscribeMarketData: TButton;
    txtFXCMSymbol1: TEdit;
    txtFXCMSymbol2: TEdit;
    btnFXCMSubscribeTradingTables: TButton;
    btnFXCMUnSubscribeTradingTables: TButton;
    cboFXCMTradingModels: TComboBox;
    btnFXCMSnapshotTradingTables: TButton;
    btnFXCMGetHistoricalData: TButton;
    txtFXCMOfferId: TEdit;
    cboFXCMTimeFrame: TComboBox;
    txtFXCMCandels: TEdit;
    txtBitstampCurrency: TEdit;
    btnDetailOrderBookBITSTAMP: TButton;
    tabKRAKEN: TTabSheet;
    KRAKEN: TsgcWSAPI_Kraken;
    Pair: TLabel;
    txtKrakenPair: TEdit;
    btnKrakenSubscribeTicker: TButton;
    btnKrakenUnSubscribeTicker: TButton;
    cboKrakenInterval: TComboBox;
    cboKrakenDepth: TComboBox;
    btnKrakenUnSubscribeOHLC: TButton;
    btnKrakenSubscribeOHLC: TButton;
    btnKrakenSubscribeTrade: TButton;
    btnKrakenUnSubscribeTrade: TButton;
    btnKrakenUnSubscribeBook: TButton;
    btnKrakenSubscribeBook: TButton;
    btnKrakenSubscribeSpread: TButton;
    btnKrakenUnSubscribeSpread: TButton;
    btnKrakenSubscribeAll: TButton;
    btnKrakenUnSubscribeAll: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    pnlWebSockets: TPanel;
    GroupBox1: TGroupBox;
    pnlRest: TPanel;
    GroupBox2: TGroupBox;
    btnBinancePing: TButton;
    btnBinanceServerTime: TButton;
    btnBinanceExchangeInformation: TButton;
    btnBinanceOrderBook: TButton;
    btnBinanceTrades: TButton;
    btnBinanceHistoricalTrades: TButton;
    btnBinanceAggregateTrades: TButton;
    btnBinanceKLines: TButton;
    btnBinanceAveragePrice: TButton;
    btnBinance24hrTicker: TButton;
    btnBinancePriceTicker: TButton;
    btnBinanceBookTicker: TButton;
    btnBinanceAllOrders: TButton;
    btnBinanceAccountInformation: TButton;
    btnAccountTradeList: TButton;
    btnBinanceOpenOrders: TButton;
    Label48: TLabel;
    Label49: TLabel;
    txtKrakenApiKey: TEdit;
    txtKrakenApiSecret: TEdit;
    pageKraken: TPageControl;
    tabKrakenWebSocketsPublicAPI: TTabSheet;
    tabKrakenWebSocketsPrivateAPI: TTabSheet;
    btnKrakenSubscribeOwnTrades: TButton;
    btnKrakenUnSubscribeOwnTrades: TButton;
    btnKrakenSubscribeOpenOrders: TButton;
    btnKrakenUnSubscribeOpenOrders: TButton;
    btnKrakenCancelOrder: TButton;
    txtKrakenOrderId: TEdit;
    tabKrakenRESTPublicAPI: TTabSheet;
    btnKrakenGetServerTime: TButton;
    btnKrakenGetAssets: TButton;
    btnKrakenGetAssetsPairs: TButton;
    btnKrakenGetTicker: TButton;
    btnKrakenGetOHLC: TButton;
    btnKrakenGetOrderBook: TButton;
    Label50: TLabel;
    txtKrakenRESTPair: TEdit;
    btnKrakenGetTrades: TButton;
    btnKrakenGetSpread: TButton;
    tabKrakenRESTPrivateAPI: TTabSheet;
    btnKrakenGetAccountBalance: TButton;
    btnKrakenGetTradeBalance: TButton;
    btnKrakenGetOpenOrders: TButton;
    btnKrakenGetClosedOrders: TButton;
    btnKrakenGetTradesHistory: TButton;
    btnKrakenGetLedgers: TButton;
    btnKrakenGetTradeVolume: TButton;
    tabKrakenRESTPrivateTrading: TTabSheet;
    btnKrakenRESTCancelOrder: TButton;
    txtKrakenRESTOrderId: TEdit;
    GroupBox3: TGroupBox;
    btnBinFutSubsAggregateTrade: TButton;
    btnBinFutUnSubsKLine: TButton;
    btnBinFutUnSubsTicker: TButton;
    btnBinFutUnSubsAllMarketTicker: TButton;
    btnBinFutUnSubsPartialBookDepth: TButton;
    btnBinFutUnSubsDiffDepth: TButton;
    btnBinFutSubsMarkPrice: TButton;
    btnBinFutSubsKLine: TButton;
    btnBinFutSubsTicker: TButton;
    btnBinFutSubsAllMarketTicker: TButton;
    btnBinFutSubsPartialBookDepth: TButton;
    btnBinFutSubsDiffDepth: TButton;
    btnBinFutUnSubsAggregateTrade: TButton;
    btnBinFutUnSubsMarkPrice: TButton;
    BINANCEFUT: TsgcWSAPI_Binance_Futures;
    PageControl2: TPageControl;
    tabBinanceStocks: TTabSheet;
    tabBinanceFutures: TTabSheet;
    GroupBox4: TGroupBox;
    btnBinanceFutPing: TButton;
    btnBinanceFutServerTime: TButton;
    btnBinanceFutExchangeInformation: TButton;
    btnBinanceFutOrderBook: TButton;
    btnBinanceFutTrades: TButton;
    btnBinanceFutHistoricalTrades: TButton;
    btnBinanceFutAggregateTrades: TButton;
    btnBinanceFutKLines: TButton;
    btnFinanceFutMarkPrice: TButton;
    btnBinanceFut24hrTicker: TButton;
    btnBinanceFutPriceTicker: TButton;
    btnBinanceFutBookTicker: TButton;
    btnBinanceFutAllOrders: TButton;
    btnBinanceFutAccountInformation: TButton;
    btnBinanceFutAccountBalance: TButton;
    btnBinanceFutOpenOrders: TButton;
    btnFinanceFutFundingRateHistory: TButton;
    btnBinanceFutOpenInterest: TButton;
    Panel1: TPanel;
    Label23: TLabel;
    txtBinanceApiKey: TEdit;
    Label22: TLabel;
    txtBinanceSymbol: TEdit;
    txtBinanceRestSymbol: TEdit;
    Label44: TLabel;
    txtBinanceApiSecret: TEdit;
    Label43: TLabel;
    GroupBox5: TGroupBox;
    btnBittrexIsAuthenticated: TButton;
    btnBittrexSubscribeBalance: TButton;
    btnBittrexUnSubscribeBalance: TButton;
    btnBittrexSubscribeDeposit: TButton;
    btnBittrexUnSubscribeDeposit: TButton;
    btnBittrexSubscribeOrder: TButton;
    btnBittrexUnSubscribeOrder: TButton;
    GroupBox6: TGroupBox;
    btnBittrexSubscribeHeartBeat: TButton;
    btnBittrexUnSubscribeHeartBeat: TButton;
    btnBittrexSubscribeCandle: TButton;
    btnBittrexUnSubscribeCandle: TButton;
    btnBittrexSubscribeMarketSummary: TButton;
    btnBittrexUnSubscribeMarketSummary: TButton;
    btnBittrexSubscribeOrderBook: TButton;
    btnBittrexUnSubscribeOrderBook: TButton;
    btnBittrexSubscribeTicker: TButton;
    btnBittrexUnSubscribeTicker: TButton;
    COINBASE: TsgcWSAPI_Coinbase;
    tabCOINBASE: TTabSheet;
    btnCoinbaseSubscribeHeartBeat: TButton;
    btnCoinbaseUnSubscribeHeartBeat: TButton;
    btnCoinbaseSubscribeStatus: TButton;
    btnCoinbaseUnSubscribeStatus: TButton;
    Label51: TLabel;
    txtCoinbaseProductId: TEdit;
    btnCoinbaseSubscribeTicker: TButton;
    btnCoinbaseUnSubscribeTicker: TButton;
    btnCoinbaseSubscribeLevel2: TButton;
    btnCoinbaseUnSubscribeLevel2: TButton;
    btnCoinbaseSubscribeMatches: TButton;
    btnCoinbaseUnSubscribeMatches: TButton;
    btnCoinbaseSubscribeFull: TButton;
    btnCoinbaseUnSubscribeFull: TButton;
    optBINANCEFUTUSDT: TRadioButton;
    optBINANCEFUTCOIN: TRadioButton;
    Label52: TLabel;
    txtCoinbaseApiKey: TEdit;
    Label53: TLabel;
    txtCoinbaseApiSecret: TEdit;
    btnCoinbaseSubscribeUser: TButton;
    btnCoinbaseUnSubscribeUser: TButton;
    Label54: TLabel;
    txtCoinbasePassphrase: TEdit;
    chkCoinbaseSandbox: TCheckBox;
    PageControl4: TPageControl;
    tabCoinbaseWebSocket: TTabSheet;
    tabCoinbaseRestPrivate: TTabSheet;
    btnCoinbaseRestListAccounts: TButton;
    tabCoinbaseRestPublic: TTabSheet;
    btnCoinbaseListOrders: TButton;
    btnCoinbaseGetProducts: TButton;
    btnCoinbaseGetProduct: TButton;
    btnCoinbaseGetOrderBook: TButton;
    btnCoinbaseGetTicker: TButton;
    btnCoinbaseGetTrades: TButton;
    btnCoinbaseGetHistoric: TButton;
    btnCoinbaseGet24hrStats: TButton;
    btnCoinbaseGetCurrencies: TButton;
    Button16: TButton;
    btnCoinbaseListFills: TButton;
    btnCoinbaseExchangeLimits: TButton;
    btnCoinbaseListDeposits: TButton;
    btnCoinbaseListWithdrawals: TButton;
    btnCoinbaseListPayments: TButton;
    btnCoinbaseListCoinbaseAccounts: TButton;
    btnCoinbaseMarketOrder: TButton;
    cboCoinbaseMarketOrderSide: TComboBox;
    cboCoinbaseLimitOrderSide: TComboBox;
    btnCoinbaseLimitOrder: TButton;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    btnCoinbaseCancelAllOrders: TButton;
    txtCoinbaseMarketOrderAmount: TEdit;
    txtCoinbaseLimitOrderAmount: TEdit;
    txtCoinbaseLimitOrderPrice: TEdit;
    PageControlKraken: TPageControl;
    tabKrakenStocks: TTabSheet;
    tabKrakenFutures: TTabSheet;
    pageKrakenFutures: TPageControl;
    tabKrakenFuturesWebSocketsPublicAPI: TTabSheet;
    btnKrakenFuturesSubscribeBook: TButton;
    btnKrakenFuturesSubscribeHeartbeat: TButton;
    btnKrakenFuturesSubscribeTickerLite: TButton;
    btnKrakenFuturesSubscribeTicker: TButton;
    btnKrakenFuturesSubscribeTrade: TButton;
    btnKrakenFuturesUnSubscribeBook: TButton;
    btnKrakenFuturesUnSubscribeHeartbeat: TButton;
    btnKrakenFuturesUnSubscribeTickerLite: TButton;
    btnKrakenFuturesUnSubscribeTicker: TButton;
    btnKrakenFuturesUnSubscribeTrade: TButton;
    tabKrakenFuturesWebSocketsPrivateAPI: TTabSheet;
    btnKrakenFuturesSubscribeOpenOrdersVerbose: TButton;
    btnKrakenFuturesUnSubscribeOpenOrdersVerbose: TButton;
    btnKrakenFuturesSubscribeOpenPositions: TButton;
    btnKrakenFuturesUnSubscribeOpenPositions: TButton;
    TabSheet3: TTabSheet;
    btnKrakenFuturesRestPublicGetFeeSchedules: TButton;
    btnKrakenFuturesRestPublicGetInstruments: TButton;
    btnKrakenFuturesRestPublicGetOrderBook: TButton;
    btnKrakenFuturesRestPublicGetHistory: TButton;
    btnKrakenFuturesRestPublicGetTickers: TButton;
    TabSheet4: TTabSheet;
    btnKrakenFuturesRestPrivateGetAccounts: TButton;
    btnKrakenFuturesRestPrivateGetNotifications: TButton;
    btnKrakenFuturesRestPrivateCancelAllOrders: TButton;
    btnKrakenFuturesRestPrivateGetOpenOrders: TButton;
    btnKrakenFuturesRestPrivateGetHistoricalExecutions: TButton;
    btnKrakenFuturesRestPrivateGetHistoricalOrders: TButton;
    btnKrakenFuturesRestPrivateGetHistoricalTriggers: TButton;
    KRAKEN_FUTURES: TsgcWSAPI_Kraken_Futures;
    btnKrakenFuturesSubscribeAccountLog: TButton;
    btnKrakenFuturesUnSubscribeAccountLog: TButton;
    btnKrakenFuturesUnSubscribeFills: TButton;
    btnKrakenFuturesSubscribeFills: TButton;
    btnKrakenFuturesSubscribeOpenOrders: TButton;
    btnKrakenFuturesUnSubscribeOpenOrders: TButton;
    btnKrakenFuturesSubscribeAccountBalance: TButton;
    btnKrakenFuturesUnSubscribeAccountBalance: TButton;
    btnKrakenFuturesSubscribeNotifications: TButton;
    btnKrakenFuturesUnSubscribeNotifications: TButton;
    btnKrakenFuturesRestPrivateGetOpenPositions: TButton;
    btnKrakenFuturesRestPrivateGetFills: TButton;
    Label64: TLabel;
    Label65: TLabel;
    txtKrakenFuturesMarketOrderSize: TEdit;
    cboKrakenFuturesMarketOrderSide: TComboBox;
    btnKrakenFuturesMarketOrder: TButton;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    btnKrakenFuturesLimitOrder: TButton;
    txtKrakenFuturesLimitOrderPrice: TEdit;
    txtKrakenFuturesLimitOrderSize: TEdit;
    cboKrakenFuturesLimitOrderSide: TComboBox;
    chkKrakenFuturesDemo: TCheckBox;
    tabFTX: TTabSheet;
    FTX: TsgcWSAPI_FTX;
    Label69: TLabel;
    txtFTXApiKey: TEdit;
    Label70: TLabel;
    txtFTXApiSecret: TEdit;
    Label72: TLabel;
    txtFTXMarket: TEdit;
    PageControl3: TPageControl;
    TabSheet1: TTabSheet;
    btnFTXSubscribeFills: TButton;
    btnFTXSubscribeTicker: TButton;
    btnFTXSubscribeTrades: TButton;
    btnFTXSubscribeGroupedOrderbook: TButton;
    btnFTXSubscribeOrderbook: TButton;
    btnFTXSubscribeMarkets: TButton;
    btnFTXSubscribeOrders: TButton;
    btnFTXUnSubscribeFills: TButton;
    btnFTXUnSubscribeTicker: TButton;
    btnFTXUnSubscribeTrades: TButton;
    btnFTXUnSubscribeGroupedOrderbook: TButton;
    btnFTXUnSubscribeOrderbook: TButton;
    btnFTXUnSubscribeMarkets: TButton;
    btnFTXUnSubscribeOrders: TButton;
    TabSheet2: TTabSheet;
    Label73: TLabel;
    Label74: TLabel;
    btnFTXGetMarket: TButton;
    btnFTXGetOrderbook: TButton;
    btnFTXGetTrades: TButton;
    btnFTXGetHistoricalPrices: TButton;
    btnFTXGetFuture: TButton;
    TabSheet5: TTabSheet;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    btnFTXGetAccount: TButton;
    btnFTXGetPositions: TButton;
    Button41: TButton;
    btnFTXGetOpenOrders: TButton;
    btnFTXGetOrderHistory: TButton;
    cboFTXPlaceMarketOrder: TButton;
    cboFTXMarketSide: TComboBox;
    cboFTXLimitSide: TComboBox;
    cboFTXPlaceLimitOrder: TButton;
    cboFTXCancelAllOrders: TButton;
    txtFTXMarketOrderSize: TEdit;
    txtFTXLimitOrderSize: TEdit;
    txtFTXLimitOrderPrice: TEdit;
    btnFTXGetFutureStats: TButton;
    btnFTXGetExpiredFutures: TButton;
    btnFTXGetHistoricalIndex: TButton;
    btnFTXGetTriggerOrderHistory: TButton;
    chkTestNet: TCheckBox;
    txtFTXSubAccount: TEdit;
    Label71: TLabel;
    tabThreeCommas: TTabSheet;
    THREE_COMMAS: TsgcWSAPI_ThreeCommas;
    Label75: TLabel;
    Label82: TLabel;
    txtThreeCommasApiSecret: TEdit;
    txtThreeCommasApiKey: TEdit;
    PageControl5: TPageControl;
    TabSheet6: TTabSheet;
    btnThreeComasSubscribeSmartTrades: TButton;
    btnThreeComasSubscribeDeals: TButton;
    TabSheet8: TTabSheet;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    btnThreeCommasGetAccounts: TButton;
    btnThreeCommasGetMarketList: TButton;
    btnThreeCommasMarketOrder: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    btnThreeCommasLimitOrder: TButton;
    txtThreeCommasMarketSize: TEdit;
    txtThreeCommasLimitSize: TEdit;
    txtThreeCommasLimitPrice: TEdit;
    btnThreeCommasGetBalances: TButton;
    txtThreeCommasAccountId: TEdit;
    btnThreeCommasGetAccountTableData: TButton;
    btnThreeCommasGetAccountInfo: TButton;
    Label83: TLabel;
    txtThreeCommasPair: TEdit;
    pageControlBitmex: TPageControl;
    tabBitmexWS: TTabSheet;
    Label34: TLabel;
    cboBitmexTopics: TComboBox;
    btnBitmexSubscribe: TButton;
    btnBitmexUnsubscribe: TButton;
    tabBitmexREST: TTabSheet;
    btnBitmexGetExecutions: TButton;
    btnBitmexGetOrderBook: TButton;
    Label35: TLabel;
    txtBitmexSymbol: TEdit;
    btnBitmexGetPosition: TButton;
    btnBitmexGetQuote: TButton;
    btnBitmexGetInstrument: TButton;
    btnBitmexGetOrders: TButton;
    Label96: TLabel;
    cboBitmexMarketOrderSide: TComboBox;
    Label97: TLabel;
    txtBitmexMarketOrderSize: TEdit;
    cboBitmexMarketOrder: TButton;
    cboBitmexLimitOrderSide: TComboBox;
    Label98: TLabel;
    txtBitmexLimitOrderSize: TEdit;
    Label99: TLabel;
    Label100: TLabel;
    txtBitmexLimitOrderPrice: TEdit;
    cboBitmexLimitOrder: TButton;
    btnBitmexCancelAllOrders: TButton;
    chkBitmexTestNet: TCheckBox;
    chkBinanceUS: TCheckBox;
    chkFXCMDemo: TCheckBox;
    KUCOIN: TsgcWSAPI_Kucoin;
    KUCOINFUT: TsgcWSAPI_Kucoin_Futures;
    tabKUCOIN: TTabSheet;
    PageControl7: TPageControl;
    tabKucoinStocks: TTabSheet;
    Panel2: TPanel;
    GroupBox7: TGroupBox;
    btnKucoinServiceStatus: TButton;
    btnKucoinServerTime: TButton;
    btnKucoinGetTicker: TButton;
    btnKucoinGet24hrStats: TButton;
    btnKucoinGetRecentOrders: TButton;
    btnKucoinListAccounts: TButton;
    btnKucoinGetAllSubaccounts: TButton;
    btnKucoinListOrders: TButton;
    Panel3: TPanel;
    GroupBox8: TGroupBox;
    btnKucoinSubscribeSymbolSnapshot: TButton;
    btnKucoinUnSubscribeLevel2MarketData: TButton;
    btnKucoinUnSubscribeTradeOrders: TButton;
    btnKucoinUnSubscribeAccountBalance: TButton;
    btnKucoinUnSubscribePositionStatus: TButton;
    btnKucoinSubscribeSymbolTicker: TButton;
    btnKucoinSubscribeLevel2MarketData: TButton;
    btnKucoinSubscribeTradeOrders: TButton;
    btnKucoinSubscribeAccountBalance: TButton;
    btnKucoinSubscribePositionStatus: TButton;
    btnKucoinUnSubscribeSymbolSnapshot: TButton;
    btnKucoinUnSubscribeSymbolTicker: TButton;
    Panel4: TPanel;
    Label101: TLabel;
    Label102: TLabel;
    Label104: TLabel;
    txtKucoinApiKey: TEdit;
    txtKucoinSymbol: TEdit;
    txtKucoinApiSecret: TEdit;
    chkKucoinSandBox: TCheckBox;
    Label105: TLabel;
    txtKucoinApiPassphrase: TEdit;
    Label103: TLabel;
    Label106: TLabel;
    cboKucoinStockMarketOrderSide: TComboBox;
    txtKucoinStockMarketSize: TEdit;
    btnKucoinStockMarketOrder: TButton;
    Label107: TLabel;
    cboKucoinStockLimitOrderSide: TComboBox;
    Label108: TLabel;
    txtKucoinStockLimitSize: TEdit;
    Label109: TLabel;
    txtKucoinStockLimitPrice: TEdit;
    btnKucoinStockLimitOrder: TButton;
    btnKucoinStockCancelAllOrders: TButton;
    OKX: TsgcWSAPI_OKX;
    tabOKX: TTabSheet;
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    txtOkxApiKey: TEdit;
    txtOkxInstId: TEdit;
    txtOkxApiSecret: TEdit;
    chkOkxIsDemo: TCheckBox;
    txtOkxPassphrase: TEdit;
    PageControl6: TPageControl;
    tabOKXMethods: TTabSheet;
    Panel6: TPanel;
    GroupBox11: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    btnOkxSubscribeAccount: TButton;
    btnOkxUnSubscribeAccount: TButton;
    btnOkxSubscribeOrders: TButton;
    btnOkxUnSubscribeOrders: TButton;
    cboOkxMarketSide: TComboBox;
    txtOkxMarketSize: TEdit;
    cboOkxMarketOrder: TButton;
    cboOkxLimitSide: TComboBox;
    txtOkxLimitSize: TEdit;
    txtOkxLimitPrice: TEdit;
    cboOkxLimitOrder: TButton;
    Panel7: TPanel;
    GroupBox12: TGroupBox;
    btnOkxSubscribeInstruments: TButton;
    btnOkxUnSubscribeCandlesticks: TButton;
    btnOkxUnSubscribeTradeOrders: TButton;
    btnOkxUnSubscribeOrderBook: TButton;
    btnOkxUnSubscribeStatus: TButton;
    btnOkxSubscribeTicker: TButton;
    btnOkxSubscribeCandlesticks: TButton;
    btnOkxSubscribeTradeOrders: TButton;
    btnOkxSubscribeOrderBook: TButton;
    btnOkxSubscribeStatus: TButton;
    btnOkxUnSubscribeInstruments: TButton;
    btnOkxUnSubscribeTicker: TButton;
    tabKucoinFutures: TTabSheet;
    GroupBox9: TGroupBox;
    btnKucoinFutSubscribeSymbolTicker: TButton;
    btnKucoinFutUnSubscribeExecutionData: TButton;
    btnKucoinFutUnSubscribeTradeOrders: TButton;
    btnKucoinFutUnSubscribeAccountBalance: TButton;
    btnKucoinFutUnSubscribePositionChange: TButton;
    btnKucoinFutSubscribeLevel2MarketData: TButton;
    btnKucoinFutSubscribeExecutionData: TButton;
    btnKucoinFutSubscribeTradeOrders: TButton;
    btnKucoinFutSubscribeAccountBalance: TButton;
    btnKucoinFutSubscribePositionChange: TButton;
    btnKucoinFutUnSubscribeSymbolTicker: TButton;
    btnKucoinFutUnSubscribeLevel2MarketData: TButton;
    GroupBox10: TGroupBox;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    btnKucoinFutServiceStatus: TButton;
    Button62: TButton;
    btnKucoinFutGetOpenContractList: TButton;
    btnKucoinFutGetOrderInfoContract: TButton;
    btnKucoinFutGetTicker: TButton;
    btnKucoinFutGetPartOrderBook20: TButton;
    btnKucoinFutGetTradeHistory: TButton;
    btnKucoinFutGetAccountOverview: TButton;
    btnKucoinFutGetTransactionHistory: TButton;
    cboKucoinFuturesMarketOrderSide: TComboBox;
    txtKucoinFuturesMarketSize: TEdit;
    btnKucoinFuturesLimitOrder: TButton;
    txtKucoinFuturesLimitPrice: TEdit;
    txtKucoinFuturesLimitSize: TEdit;
    cboKucoinFuturesLimitOrderSide: TComboBox;
    btnKucoinFuturesCancelAllOrders: TButton;
    btnKucoinFuturesMarketOrder: TButton;
    chkOkxIsPrivate: TCheckBox;
    tabXTB: TTabSheet;
    XTB: TsgcWSAPI_XTB;
    Panel8: TPanel;
    Label18: TLabel;
    Label26: TLabel;
    txtXTBUser: TEdit;
    txtXTBPassword: TEdit;
    chkXTBDemo: TCheckBox;
    pageXTB: TPageControl;
    tabXTBTrading: TTabSheet;
    tabXTBStreaming: TTabSheet;
    btnXTBGetAllSymbols: TButton;
    btnXTBGetCurrentUserData: TButton;
    btnXTBGetServerTime: TButton;
    btnXTBGetSymbol: TButton;
    Label24: TLabel;
    txtXTBSymbol: TEdit;
    btnXTBGetTickPrices: TButton;
    btnXTBGetTradingHours: TButton;
    btnXTBGetTrades: TButton;
    btnXTBGetVersion: TButton;
    btnXTBSubscribeBalance: TButton;
    btnXTBUnsubscribeBalance: TButton;
    btnXTBUnsubscribeCandles: TButton;
    btnXTBSubscribeCandles: TButton;
    btnSubscribeTrades: TButton;
    btnUnsubscribeTrades: TButton;
    btnXTBSubscribeTradeStatus: TButton;
    btnXTBUnsubscribeTradeStatus: TButton;
    btnXTBSubscribeTickPrices: TButton;
    btnXTBUnsubscribeTickPrices: TButton;
    Label25: TLabel;
    Label27: TLabel;
    cboXTBMarketSide: TComboBox;
    txtXTBMarketSize: TEdit;
    btnXTBMarketOrder: TButton;
    Label28: TLabel;
    Label29: TLabel;
    cboXTBLimitSide: TComboBox;
    txtXTBLimitSize: TEdit;
    Label39: TLabel;
    txtXTBLimitPrice: TEdit;
    btnXTBLimitOrder: TButton;
    tabBinanceWallet: TTabSheet;
    GroupBox13: TGroupBox;
    btnBinanceWalletSystemStatus: TButton;
    btnBinanceWalletAllCoins: TButton;
    btnBinanceWalletDailySnapshot: TButton;
    btnBinanceWalletWithdraw: TButton;
    btnBinanceWalletWithdrawHistory: TButton;
    btnBinanceWalletDepositHistory: TButton;
    btnBinanceWalletAccountStatus: TButton;
    btnBinanceWalletApiKeyPermission: TButton;
    btnBinanceWalletAccountApiTradingStatus: TButton;
    txtBinanceWalletCoin: TEdit;
    txtBinanceWalletAddress: TEdit;
    txtBinanceWalletAmount: TEdit;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Bybit: TsgcWSAPI_Bybit;
    tabBybit: TTabSheet;
    Panel9: TPanel;
    Label45: TLabel;
    Label46: TLabel;
    Label84: TLabel;
    txtBybitAPIKey: TEdit;
    txtBybitSymbol: TEdit;
    txtBybitAPISecret: TEdit;
    chkBybitTestNet: TCheckBox;
    PageControl8: TPageControl;
    tabBybitSpot: TTabSheet;
    Panel10: TPanel;
    Panel11: TPanel;
    GroupBox15: TGroupBox;
    btnBybitSpotSubscribeDepth: TButton;
    btnBybitSpotUnSubscribeKLine: TButton;
    btnBybitSpotUnSubscribeTickers: TButton;
    btnBybitSpotUnSubscribeBookTicker: TButton;
    btnBybitSpotSubscribeTrade: TButton;
    btnBybitSpotSubscribeKLine: TButton;
    btnBybitSpotSubscribeTickers: TButton;
    btnBybitSpotSubscribeBookTicker: TButton;
    btnBybitSpotUnSubscribeDepth: TButton;
    btnBybitSpotUnSubscribeTrade: TButton;
    tabBybitInversePerpetual: TTabSheet;
    GroupBox16: TGroupBox;
    btnBybitInversePerpetualSubscribeOrderBookL2_25: TButton;
    btnBybitInversePerpetualUnSubscribeInstrumentation: TButton;
    btnBybitInversePerpetualUnSubscribeLiquidation: TButton;
    btnBybitInversePerpetualUnSubscribePosition: TButton;
    btnBybitInversePerpetualUnSubscribeKLine: TButton;
    btnBybitInversePerpetualSubscribeTrade: TButton;
    btnBybitInversePerpetualSubscribeInstrumentation: TButton;
    btnBybitInversePerpetualSubscribeLiquidation: TButton;
    btnBybitInversePerpetualSubscribePosition: TButton;
    btnBybitInversePerpetualSubscribeKLine: TButton;
    btnBybitInversePerpetualUnSubscribeOrderBookL2_25: TButton;
    btnBybitInversePerpetualUnSubscribeTrade: TButton;
    tabBybitUSDTPerpetual: TTabSheet;
    btnBybitSpotSubscribeAccountInfo: TButton;
    btnBybitSpotUnSubscribeAccountInfo: TButton;
    btnBybitSpotSubscribeOrder: TButton;
    btnBybitSpotUnSubscribeOrder: TButton;
    btnBybitInversePerpetualSubscribeExecution: TButton;
    btnBybitInversePerpetualUnSubscribeExecution: TButton;
    GroupBox18: TGroupBox;
    btnBybitUSDTPerpetualSubscribeOrderBookL2_25: TButton;
    btnBybitUSDTPerpetualUnSubscribeInstrumentation: TButton;
    btnBybitUSDTPerpetualUnSubscribeLiquidation: TButton;
    btnBybitUSDTPerpetualUnSubscribePosition: TButton;
    btnBybitUSDTPerpetualUnSubscribeKLine: TButton;
    btnBybitUSDTPerpetualSubscribeTrade: TButton;
    btnBybitUSDTPerpetualSubscribeInstrumentation: TButton;
    btnBybitUSDTPerpetualSubscribeLiquidation: TButton;
    btnBybitUSDTPerpetualSubscribePosition: TButton;
    btnBybitUSDTPerpetualSubscribeKLine: TButton;
    btnBybitUSDTPerpetualUnSubscribeOrderBookL2_25: TButton;
    btnBybitUSDTPerpetualUnSubscribeTrade: TButton;
    btnBybitUSDTPerpetualSubscribeExecution: TButton;
    btnBybitUSDTPerpetualUnSubscribeExecution: TButton;
    GroupBox14: TGroupBox;
    btnBybitSpotGetServerTime: TButton;
    btnBybitSpotGetAllSymbols: TButton;
    btnBybitSpotGetOrderBook: TButton;
    btnBybitSpotGetPublicTradingRecords: TButton;
    btnBybitSpotGetQueryKLine: TButton;
    btnBybitSpotGetLatestInformation: TButton;
    btnBybitSpotGetLastTradedPrice: TButton;
    btnBybitSpotGetOpenOrders: TButton;
    btnBybitSpotGetWalletBalance: TButton;
    btnBybitSpotGetTradeHistory: TButton;
    Panel12: TPanel;
    GroupBox17: TGroupBox;
    btnBybitInversePerpetualGetServerTime: TButton;
    btnBybitInversePerpetualOrderBook: TButton;
    btnBybitInversePerpetualTradingRecords: TButton;
    btnBybitInversePerpetualLatestInformation: TButton;
    btnBybitInversePerpetualGetWalletBalance: TButton;
    Panel13: TPanel;
    GroupBox19: TGroupBox;
    btnBybitUSDTPerpetualGetServerTime: TButton;
    btnBybitUSDTPerpetualOrderBook: TButton;
    btnBybitUSDTPerpetualTradingRecords: TButton;
    btnBybitUSDTPerpetualLatestInformation: TButton;
    btnBybitUSDTPerpetualGetWalletBalance: TButton;
    Label47: TLabel;
    cboBybitInversePerpetualMarketOrder: TComboBox;
    txtBybitInversePerpetualMarketQuantity: TEdit;
    btnBybitInversePerpetualMarketOrder: TButton;
    Label91: TLabel;
    cboBybitInversePerpetualLimitOrder: TComboBox;
    Label92: TLabel;
    txtBybitInversePerpetualLimitQuantity: TEdit;
    txtBybitInversePerpetualLimitPrice: TEdit;
    Label93: TLabel;
    btnBybitInversePerpetualLimitOrder: TButton;
    Label94: TLabel;
    btnBybitInversePerpetualCancelAllOrders: TButton;
    Label95: TLabel;
    Label115: TLabel;
    cboBybitUSDTPerpetualMarketOrder: TComboBox;
    txtBybitUSDTPerpetualMarketQuantity: TEdit;
    btnBybitUSDTPerpetualMarketOrder: TButton;
    cboBybitUSDTPerpetualLimitOrder: TComboBox;
    Label116: TLabel;
    Label117: TLabel;
    txtBybitUSDTPerpetualLimitQuantity: TEdit;
    Label118: TLabel;
    txtBybitUSDTPerpetualLimitPrice: TEdit;
    btnBybitUSDTPerpetualLimitOrder: TButton;
    btnBybitUSDTPerpetualCancelAllOrders: TButton;
    btnBybitInversePerpetualGetPosition: TButton;
    btnBybitUSDTPerpetualGetPosition: TButton;
    procedure BINANCEBinanceHTTPException(Sender: TObject; E: Exception);
    procedure BINANCEFUTBinanceHTTPException(Sender: TObject; E: Exception);
    procedure BITMEXBitmexAuthenticated(Sender: TObject);
    procedure BITMEXBitmexConnect(Sender: TObject; const aMessage: string);
    procedure BITMEXBitmexError(Sender: TObject; const aMessage: string);
    procedure BITMEXBitmexMessage(Sender: TObject;
      const aTopic: TwsBitmexTopics; const aMessage: string);
    procedure BITMEXBitmexSubscribed(Sender: TObject; const aChannel: string);
    procedure BITMEXBitmexUnsubscribed(Sender: TObject; const aChannel: string);
    procedure BITMEXConnect(Connection: TsgcWSConnection);
    procedure BITMEXDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure BITSTAMPConnect(Connection: TsgcWSConnection);
    procedure BITSTAMPDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure BITSTAMPMessage(Connection: TsgcWSConnection; const Text: string);
    procedure BITSTAMPPusherConnect(Sender: TObject; Socket_id: string;
      Timeout: Integer);
    procedure BITSTAMPPusherError(Sender: TObject; Code: Integer; Msg: string);
    procedure BITSTAMPPusherEvent(Sender: TObject;
      Event, Channel, Data: string);
    procedure BITSTAMPPusherSubscribe(Sender: TObject; Channel, Data: string);
    procedure BITTREXBittrexAuthenticated(Sender: TObject);
    procedure BITTREXBittrexConnect(Sender: TObject);
    procedure BITTREXBittrexDisconnect(Sender: TObject; aCloseCode: Integer);
    procedure BITTREXBittrexError(Sender: TObject; Error: string);
    procedure BITTREXBittrexHeartBeat(Sender: TObject);
    procedure BITTREXBittrexMessage(Sender: TObject; CallBack, PayLoad: string);
    procedure BITTREXBittrexSubscribed(Sender: TObject; Channel: string);
    procedure BITTREXBittrexUnSubscribed(Sender: TObject; Channel: string);
    procedure btnAccountTradeListClick(Sender: TObject);
    procedure btnBinance24hrTickerClick(Sender: TObject);
    procedure btnBinanceAccountInformationClick(Sender: TObject);
    procedure btnBinanceAggregateTradesClick(Sender: TObject);
    procedure btnBinanceAllOrdersClick(Sender: TObject);
    procedure btnBinanceAveragePriceClick(Sender: TObject);
    procedure btnBinanceBookTickerClick(Sender: TObject);
    procedure btnBinanceExchangeInformationClick(Sender: TObject);
    procedure btnBinanceFut24hrTickerClick(Sender: TObject);
    procedure btnBinanceFutAccountInformationClick(Sender: TObject);
    procedure btnBinanceFutAccountBalanceClick(Sender: TObject);
    procedure btnBinanceFutAggregateTradesClick(Sender: TObject);
    procedure btnBinanceFutBookTickerClick(Sender: TObject);
    procedure btnBinanceFutExchangeInformationClick(Sender: TObject);
    procedure btnBinanceFutHistoricalTradesClick(Sender: TObject);
    procedure btnBinanceFutKLinesClick(Sender: TObject);
    procedure btnBinanceFutOpenInterestClick(Sender: TObject);
    procedure btnBinanceFutOrderBookClick(Sender: TObject);
    procedure btnBinanceHistoricalTradesClick(Sender: TObject);
    procedure btnBinanceKLinesClick(Sender: TObject);
    procedure btnBinanceOpenOrdersClick(Sender: TObject);
    procedure btnBinancePingClick(Sender: TObject);
    procedure btnBinancePriceTickerClick(Sender: TObject);
    procedure btnBinanceServerTimeClick(Sender: TObject);
    procedure btnBinanceTradesClick(Sender: TObject);
    procedure btnBinFutSubsAggregateTradeClick(Sender: TObject);
    procedure btnBinFutSubsAllMarketTickerClick(Sender: TObject);
    procedure btnBinFutSubsDiffDepthClick(Sender: TObject);
    procedure btnBinFutSubsKLineClick(Sender: TObject);
    procedure btnBinFutSubsMarkPriceClick(Sender: TObject);
    procedure btnBinFutSubsPartialBookDepthClick(Sender: TObject);
    procedure btnBinFutSubsTickerClick(Sender: TObject);
    procedure btnBinFutUnSubsAggregateTradeClick(Sender: TObject);
    procedure btnBinFutUnSubsAllMarketTickerClick(Sender: TObject);
    procedure btnBinFutUnSubsDiffDepthClick(Sender: TObject);
    procedure btnBinFutUnSubsKLineClick(Sender: TObject);
    procedure btnBinFutUnSubsMarkPriceClick(Sender: TObject);
    procedure btnBinFutUnSubsPartialBookDepthClick(Sender: TObject);
    procedure btnBinFutUnSubsTickerClick(Sender: TObject);
    procedure btnBitmexSubscribeClick(Sender: TObject);
    procedure btnBitmexUnsubscribeClick(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure tabBITTREXShow(Sender: TObject);
    procedure WSClientConnect(Connection: TsgcWSConnection);
    procedure WSClientDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure WSClientError(Connection: TsgcWSConnection; const Error: string);
    procedure WSClientException(Connection: TsgcWSConnection; E: Exception);
    procedure WSClientMessage(Connection: TsgcWSConnection; const Text: string);
    procedure btnBittrexAuthenticateClick(Sender: TObject);
    procedure btnFullOrderBookBITSTAMPClick(Sender: TObject);
    procedure btnLiveOrdersBITSTAMPClick(Sender: TObject);
    procedure btnOrderBookBITSTAMPClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure SIGNALRSignalRConnect(Sender: TObject; MessageId, aData: string);
    procedure SIGNALRSignalRDisconnect(Sender: TObject; aCloseCode: Integer);
    procedure SIGNALRSignalRError(Sender: TObject; Error: string);
    procedure SIGNALRSignalRKeepAlive(Sender: TObject);
    procedure SIGNALRSignalRMessage(Sender: TObject; MessageId, aData: string);
    procedure SIGNALRSignalRResult(Sender: TObject;
      InvocationId, Result, Error: string);
    procedure tabBINANCEShow(Sender: TObject);
    procedure btnSubscribeHuobiKLineClick(Sender: TObject);
    procedure btnSubscribeHuobiMarketDepthClick(Sender: TObject);
    procedure btnSubscribeHuobiMarketDetailClick(Sender: TObject);
    procedure btnSubscribeHuobiMarketTickersClick(Sender: TObject);
    procedure btnSubscribeHuobiTradeDetailClick(Sender: TObject);
    procedure btnTickerBITSTAMPClick(Sender: TObject);
    procedure btnUnSubscribeHuobiKLineClick(Sender: TObject);
    procedure btnUnSubscribeHuobiMarketDepthClick(Sender: TObject);
    procedure btnUnSubscribeHuobiMarketDetailClick(Sender: TObject);
    procedure btnUnSubscribeHuobiMarketTickersClick(Sender: TObject);
    procedure btnUnSubscribeHuobiTradeDetailClick(Sender: TObject);
    procedure btnCexSubscribeTickersClick(Sender: TObject);
    procedure btnCexAuthenticateClick(Sender: TObject);
    procedure btnCexGetBalanceClick(Sender: TObject);
    procedure btnCexGetTickerClick(Sender: TObject);
    procedure btnCexSubscribeChartsClick(Sender: TObject);
    procedure btnCexSubscribeOrderBookClick(Sender: TObject);
    procedure btnCexUnsubscribeOrderBookClick(Sender: TObject);
    procedure btnCexUnSubscribeTickersClick(Sender: TObject);
    procedure btnCexGetOpenOrdersClick(Sender: TObject);
    procedure btnCexGetArchivedOrdersClick(Sender: TObject);
    procedure btnCexGetOpenPositionsClick(Sender: TObject);
    procedure btnBitmexAuthenticateClick(Sender: TObject);
    procedure btnDetailOrderBookBITSTAMPClick(Sender: TObject);
    procedure btnBinanceOrderBookClick(Sender: TObject);
    procedure btnFXCMGetHistoricalDataClick(Sender: TObject);
    procedure btnFXCMGetSymbolsClick(Sender: TObject);
    procedure btnFXCMSnapshotTradingTablesClick(Sender: TObject);
    procedure btnFXCMSubscribeMarketDataClick(Sender: TObject);
    procedure btnFXCMSubscribeTradingTablesClick(Sender: TObject);
    procedure btnFXCMUnSubscribeMarketDataClick(Sender: TObject);
    procedure btnFXCMUnSubscribeTradingTablesClick(Sender: TObject);
    procedure btnKrakenCancelOrderClick(Sender: TObject);
    procedure btnKrakenGetAccountBalanceClick(Sender: TObject);
    procedure btnKrakenGetAssetsClick(Sender: TObject);
    procedure btnKrakenGetAssetsPairsClick(Sender: TObject);
    procedure btnKrakenGetClosedOrdersClick(Sender: TObject);
    procedure btnKrakenGetLedgersClick(Sender: TObject);
    procedure btnKrakenGetServerTimeClick(Sender: TObject);
    procedure btnKrakenGetTickerClick(Sender: TObject);
    procedure btnKrakenSubscribeAllClick(Sender: TObject);
    procedure btnKrakenSubscribeOHLCClick(Sender: TObject);
    procedure btnKrakenSubscribeTickerClick(Sender: TObject);
    procedure btnKrakenSubscribeTradeClick(Sender: TObject);
    procedure btnKrakenUnSubscribeOHLCClick(Sender: TObject);
    procedure btnKrakenUnSubscribeTickerClick(Sender: TObject);
    procedure btnKrakenUnSubscribeTradeClick(Sender: TObject);
    procedure btnKrakenSubscribeBookClick(Sender: TObject);
    procedure btnKrakenUnSubscribeAllClick(Sender: TObject);
    procedure btnKrakenUnSubscribeBookClick(Sender: TObject);
    procedure btnKrakenUnSubscribeSpreadClick(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure btnKrakenSubscribeOwnTradesClick(Sender: TObject);
    procedure btnKrakenUnSubscribeOwnTradesClick(Sender: TObject);
    procedure btnKrakenSubscribeOpenOrdersClick(Sender: TObject);
    procedure btnKrakenUnSubscribeOpenOrdersClick(Sender: TObject);
    procedure btnKrakenGetOHLCClick(Sender: TObject);
    procedure btnKrakenGetOpenOrdersClick(Sender: TObject);
    procedure btnKrakenGetOrderBookClick(Sender: TObject);
    procedure btnKrakenGetSpreadClick(Sender: TObject);
    procedure btnKrakenGetTradeBalanceClick(Sender: TObject);
    procedure btnKrakenGetTradesClick(Sender: TObject);
    procedure btnKrakenGetTradesHistoryClick(Sender: TObject);
    procedure btnKrakenGetTradeVolumeClick(Sender: TObject);
    procedure btnKrakenRESTCancelOrderClick(Sender: TObject);
    procedure btnBinanceFutPingClick(Sender: TObject);
    procedure btnBinanceFutPriceTickerClick(Sender: TObject);
    procedure btnBinanceFutServerTimeClick(Sender: TObject);
    procedure btnBinanceFutTradesClick(Sender: TObject);
    procedure btnFinanceFutFundingRateHistoryClick(Sender: TObject);
    procedure btnFinanceFutMarkPriceClick(Sender: TObject);
    procedure btnBinanceFutAllOrdersClick(Sender: TObject);
    procedure btnBinanceFutOpenOrdersClick(Sender: TObject);
    procedure btnBinanceWalletAccountApiTradingStatusClick(Sender: TObject);
    procedure btnBinanceWalletAccountStatusClick(Sender: TObject);
    procedure btnBinanceWalletSystemStatusClick(Sender: TObject);
    procedure btnBitmexCancelAllOrdersClick(Sender: TObject);
    procedure btnBitmexGetExecutionsClick(Sender: TObject);
    procedure btnBitmexGetInstrumentClick(Sender: TObject);
    procedure btnBitmexGetOrderBookClick(Sender: TObject);
    procedure btnBitmexGetOrdersClick(Sender: TObject);
    procedure btnBitmexGetPositionClick(Sender: TObject);
    procedure btnBitmexGetQuoteClick(Sender: TObject);
    procedure btnBittrexIsAuthenticatedClick(Sender: TObject);
    procedure btnBittrexSubscribeBalanceClick(Sender: TObject);
    procedure btnBittrexSubscribeCandleClick(Sender: TObject);
    procedure btnBittrexSubscribeDepositClick(Sender: TObject);
    procedure btnBittrexSubscribeHeartBeatClick(Sender: TObject);
    procedure btnBittrexSubscribeMarketSummaryClick(Sender: TObject);
    procedure btnBittrexSubscribeOrderBookClick(Sender: TObject);
    procedure btnBittrexSubscribeOrderClick(Sender: TObject);
    procedure btnBittrexSubscribeTickerClick(Sender: TObject);
    procedure btnBittrexUnSubscribeBalanceClick(Sender: TObject);
    procedure btnBittrexUnSubscribeCandleClick(Sender: TObject);
    procedure btnBittrexUnSubscribeDepositClick(Sender: TObject);
    procedure btnBittrexUnSubscribeHeartBeatClick(Sender: TObject);
    procedure btnBittrexUnSubscribeMarketSummaryClick(Sender: TObject);
    procedure btnBittrexUnSubscribeOrderBookClick(Sender: TObject);
    procedure btnBittrexUnSubscribeOrderClick(Sender: TObject);
    procedure btnBittrexUnSubscribeTickerClick(Sender: TObject);
    procedure btnCoinbaseCancelAllOrdersClick(Sender: TObject);
    procedure btnCoinbaseExchangeLimitsClick(Sender: TObject);
    procedure btnCoinbaseGet24hrStatsClick(Sender: TObject);
    procedure btnCoinbaseGetCurrenciesClick(Sender: TObject);
    procedure btnCoinbaseGetHistoricClick(Sender: TObject);
    procedure btnCoinbaseGetOrderBookClick(Sender: TObject);
    procedure btnCoinbaseGetProductClick(Sender: TObject);
    procedure btnCoinbaseListOrdersClick(Sender: TObject);
    procedure btnCoinbaseGetProductsClick(Sender: TObject);
    procedure btnCoinbaseGetTickerClick(Sender: TObject);
    procedure btnCoinbaseGetTradesClick(Sender: TObject);
    procedure btnCoinbaseLimitOrderClick(Sender: TObject);
    procedure btnCoinbaseListCoinbaseAccountsClick(Sender: TObject);
    procedure btnCoinbaseListDepositsClick(Sender: TObject);
    procedure btnCoinbaseListFillsClick(Sender: TObject);
    procedure btnCoinbaseListPaymentsClick(Sender: TObject);
    procedure btnCoinbaseListWithdrawalsClick(Sender: TObject);
    procedure btnCoinbaseMarketOrderClick(Sender: TObject);
    procedure btnCoinbaseRestListAccountsClick(Sender: TObject);
    procedure btnCoinbaseSubscribeFullClick(Sender: TObject);
    procedure btnCoinbaseSubscribeHeartBeatClick(Sender: TObject);
    procedure btnCoinbaseSubscribeLevel2Click(Sender: TObject);
    procedure btnCoinbaseSubscribeMatchesClick(Sender: TObject);
    procedure btnCoinbaseSubscribeStatusClick(Sender: TObject);
    procedure btnCoinbaseSubscribeTickerClick(Sender: TObject);
    procedure btnCoinbaseUnSubscribeFullClick(Sender: TObject);
    procedure btnCoinbaseUnSubscribeHeartBeatClick(Sender: TObject);
    procedure btnCoinbaseUnSubscribeLevel2Click(Sender: TObject);
    procedure btnCoinbaseUnSubscribeMatchesClick(Sender: TObject);
    procedure btnCoinbaseUnSubscribeStatusClick(Sender: TObject);
    procedure btnCoinbaseUnSubscribeTickerClick(Sender: TObject);
    procedure btnCoinbaseSubscribeUserClick(Sender: TObject);
    procedure btnCoinbaseUnSubscribeUserClick(Sender: TObject);
    procedure btnFTXGetAccountClick(Sender: TObject);
    procedure btnFTXGetFutureClick(Sender: TObject);
    procedure btnFTXGetFutureStatsClick(Sender: TObject);
    procedure btnFTXGetHistoricalPricesClick(Sender: TObject);
    procedure btnFTXGetMarketClick(Sender: TObject);
    procedure btnFTXGetOrderbookClick(Sender: TObject);
    procedure btnFTXSubscribeFillsClick(Sender: TObject);
    procedure btnFTXSubscribeGroupedOrderbookClick(Sender: TObject);
    procedure btnFTXSubscribeMarketsClick(Sender: TObject);
    procedure btnFTXSubscribeOrderbookClick(Sender: TObject);
    procedure btnFTXSubscribeOrdersClick(Sender: TObject);
    procedure btnFTXSubscribeTickerClick(Sender: TObject);
    procedure btnFTXSubscribeTradesClick(Sender: TObject);
    procedure btnFTXUnSubscribeFillsClick(Sender: TObject);
    procedure btnFTXUnSubscribeGroupedOrderbookClick(Sender: TObject);
    procedure btnFTXUnSubscribeMarketsClick(Sender: TObject);
    procedure btnFTXUnSubscribeOrderbookClick(Sender: TObject);
    procedure btnFTXUnSubscribeOrdersClick(Sender: TObject);
    procedure btnFTXUnSubscribeTickerClick(Sender: TObject);
    procedure btnFTXUnSubscribeTradesClick(Sender: TObject);
    procedure btnKrakenFuturesMarketOrderClick(Sender: TObject);
    procedure btnKrakenFuturesRestPrivateCancelAllOrdersClick(Sender: TObject);
    procedure btnKrakenFuturesRestPrivateGetAccountsClick(Sender: TObject);
    procedure btnKrakenFuturesRestPrivateGetFillsClick(Sender: TObject);
    procedure btnKrakenFuturesRestPrivateGetHistoricalExecutionsClick
      (Sender: TObject);
    procedure btnKrakenFuturesRestPrivateGetHistoricalOrdersClick
      (Sender: TObject);
    procedure btnKrakenFuturesRestPrivateGetHistoricalTriggersClick
      (Sender: TObject);
    procedure btnKrakenFuturesRestPrivateGetNotificationsClick(Sender: TObject);
    procedure btnKrakenFuturesRestPrivateGetOpenOrdersClick(Sender: TObject);
    procedure btnKrakenFuturesRestPrivateGetOpenPositionsClick(Sender: TObject);
    procedure btnKrakenFuturesRestPublicGetFeeSchedulesClick(Sender: TObject);
    procedure btnKrakenFuturesRestPublicGetHistoryClick(Sender: TObject);
    procedure btnKrakenFuturesRestPublicGetInstrumentsClick(Sender: TObject);
    procedure btnKrakenFuturesRestPublicGetOrderBookClick(Sender: TObject);
    procedure btnKrakenFuturesRestPublicGetTickersClick(Sender: TObject);
    procedure btnKrakenFuturesSubscribeAccountBalanceClick(Sender: TObject);
    procedure btnKrakenFuturesSubscribeAccountLogClick(Sender: TObject);
    procedure btnKrakenFuturesSubscribeBookClick(Sender: TObject);
    procedure btnKrakenFuturesSubscribeFillsClick(Sender: TObject);
    procedure btnKrakenFuturesSubscribeHeartbeatClick(Sender: TObject);
    procedure btnKrakenFuturesSubscribeNotificationsClick(Sender: TObject);
    procedure btnKrakenFuturesSubscribeOpenOrdersClick(Sender: TObject);
    procedure btnKrakenFuturesSubscribeOpenOrdersVerboseClick(Sender: TObject);
    procedure btnKrakenFuturesSubscribeOpenPositionsClick(Sender: TObject);
    procedure btnKrakenFuturesSubscribeTickerClick(Sender: TObject);
    procedure btnKrakenFuturesSubscribeTickerLiteClick(Sender: TObject);
    procedure btnKrakenFuturesSubscribeTradeClick(Sender: TObject);
    procedure btnKrakenFuturesUnSubscribeAccountBalanceClick(Sender: TObject);
    procedure btnKrakenFuturesUnSubscribeAccountLogClick(Sender: TObject);
    procedure btnKrakenFuturesUnSubscribeBookClick(Sender: TObject);
    procedure btnKrakenFuturesUnSubscribeFillsClick(Sender: TObject);
    procedure btnKrakenFuturesUnSubscribeHeartbeatClick(Sender: TObject);
    procedure btnKrakenFuturesUnSubscribeNotificationsClick(Sender: TObject);
    procedure btnKrakenFuturesUnSubscribeOpenOrdersClick(Sender: TObject);
    procedure btnKrakenFuturesUnSubscribeOpenOrdersVerboseClick
      (Sender: TObject);
    procedure btnKrakenFuturesUnSubscribeOpenPositionsClick(Sender: TObject);
    procedure btnKrakenFuturesUnSubscribeTickerClick(Sender: TObject);
    procedure btnKrakenFuturesUnSubscribeTickerLiteClick(Sender: TObject);
    procedure btnKrakenFuturesUnSubscribeTradeClick(Sender: TObject);
    procedure btnKrakenSubscribeSpreadClick(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure btnKrakenFuturesLimitOrderClick(Sender: TObject);
    procedure btnFTXGetPositionsClick(Sender: TObject);
    procedure btnFTXGetTradesClick(Sender: TObject);
    procedure btnFTXGetExpiredFuturesClick(Sender: TObject);
    procedure btnFTXGetHistoricalIndexClick(Sender: TObject);
    procedure Button41Click(Sender: TObject);
    procedure btnFTXGetOpenOrdersClick(Sender: TObject);
    procedure btnFTXGetTriggerOrderHistoryClick(Sender: TObject);
    procedure btnFTXGetOrderHistoryClick(Sender: TObject);
    procedure btnKucoinFutGetAccountOverviewClick(Sender: TObject);
    procedure btnKucoinFutGetOpenContractListClick(Sender: TObject);
    procedure btnKucoinFutGetOrderInfoContractClick(Sender: TObject);
    procedure btnKucoinFutGetPartOrderBook20Click(Sender: TObject);
    procedure btnKucoinFutGetTickerClick(Sender: TObject);
    procedure btnKucoinFutGetTradeHistoryClick(Sender: TObject);
    procedure btnKucoinFutGetTransactionHistoryClick(Sender: TObject);
    procedure btnKucoinFutServiceStatusClick(Sender: TObject);
    procedure btnKucoinFutSubscribeAccountBalanceClick(Sender: TObject);
    procedure btnKucoinFutSubscribeExecutionDataClick(Sender: TObject);
    procedure btnKucoinFutSubscribeLevel2MarketDataClick(Sender: TObject);
    procedure btnKucoinFutSubscribePositionChangeClick(Sender: TObject);
    procedure btnKucoinFutSubscribeSymbolTickerClick(Sender: TObject);
    procedure btnKucoinFutSubscribeTradeOrdersClick(Sender: TObject);
    procedure btnKucoinFutUnSubscribeAccountBalanceClick(Sender: TObject);
    procedure btnKucoinFutUnSubscribeExecutionDataClick(Sender: TObject);
    procedure btnKucoinFutUnSubscribeLevel2MarketDataClick(Sender: TObject);
    procedure btnKucoinFutUnSubscribePositionChangeClick(Sender: TObject);
    procedure btnKucoinFutUnSubscribeSymbolTickerClick(Sender: TObject);
    procedure btnKucoinFutUnSubscribeTradeOrdersClick(Sender: TObject);
    procedure btnKucoinFuturesCancelAllOrdersClick(Sender: TObject);
    procedure btnKucoinFuturesLimitOrderClick(Sender: TObject);
    procedure btnKucoinFuturesMarketOrderClick(Sender: TObject);
    procedure btnKucoinGet24hrStatsClick(Sender: TObject);
    procedure btnKucoinGetAllSubaccountsClick(Sender: TObject);
    procedure btnKucoinGetRecentOrdersClick(Sender: TObject);
    procedure btnKucoinGetTickerClick(Sender: TObject);
    procedure btnKucoinListAccountsClick(Sender: TObject);
    procedure btnKucoinListOrdersClick(Sender: TObject);
    procedure btnKucoinServerTimeClick(Sender: TObject);
    procedure btnKucoinServiceStatusClick(Sender: TObject);
    procedure btnKucoinStockCancelAllOrdersClick(Sender: TObject);
    procedure btnKucoinStockLimitOrderClick(Sender: TObject);
    procedure btnKucoinStockMarketOrderClick(Sender: TObject);
    procedure btnKucoinSubscribeAccountBalanceClick(Sender: TObject);
    procedure btnKucoinSubscribeLevel2MarketDataClick(Sender: TObject);
    procedure btnKucoinSubscribePositionStatusClick(Sender: TObject);
    procedure btnKucoinSubscribeSymbolSnapshotClick(Sender: TObject);
    procedure btnKucoinSubscribeSymbolTickerClick(Sender: TObject);
    procedure btnKucoinSubscribeTradeOrdersClick(Sender: TObject);
    procedure btnKucoinUnSubscribeAccountBalanceClick(Sender: TObject);
    procedure btnKucoinUnSubscribeLevel2MarketDataClick(Sender: TObject);
    procedure btnKucoinUnSubscribePositionStatusClick(Sender: TObject);
    procedure btnKucoinUnSubscribeSymbolSnapshotClick(Sender: TObject);
    procedure btnKucoinUnSubscribeSymbolTickerClick(Sender: TObject);
    procedure btnKucoinUnSubscribeTradeOrdersClick(Sender: TObject);
    procedure btnOkxSubscribeAccountClick(Sender: TObject);
    procedure btnThreeComasSubscribeDealsClick(Sender: TObject);
    procedure btnThreeComasSubscribeSmartTradesClick(Sender: TObject);
    procedure btnThreeCommasGetAccountInfoClick(Sender: TObject);
    procedure btnThreeCommasGetAccountsClick(Sender: TObject);
    procedure btnThreeCommasGetAccountTableDataClick(Sender: TObject);
    procedure btnThreeCommasGetBalancesClick(Sender: TObject);
    procedure btnThreeCommasGetMarketListClick(Sender: TObject);
    procedure btnThreeCommasMarketOrderClick(Sender: TObject);
    procedure btnThreeCommasLimitOrderClick(Sender: TObject);
    procedure btnOkxSubscribeInstrumentsClick(Sender: TObject);
    procedure btnOkxSubscribeTickerClick(Sender: TObject);
    procedure btnOkxUnSubscribeInstrumentsClick(Sender: TObject);
    procedure btnOkxUnSubscribeTickerClick(Sender: TObject);
    procedure btnOkxUnSubscribeCandlesticksClick(Sender: TObject);
    procedure btnOkxSubscribeCandlesticksClick(Sender: TObject);
    procedure btnOkxSubscribeTradeOrdersClick(Sender: TObject);
    procedure btnOkxUnSubscribeTradeOrdersClick(Sender: TObject);
    procedure btnOkxUnSubscribeOrderBookClick(Sender: TObject);
    procedure btnOkxSubscribeOrderBookClick(Sender: TObject);
    procedure btnOkxSubscribeOrdersClick(Sender: TObject);
    procedure btnOkxSubscribeStatusClick(Sender: TObject);
    procedure btnOkxUnSubscribeAccountClick(Sender: TObject);
    procedure btnOkxUnSubscribeOrdersClick(Sender: TObject);
    procedure btnOkxUnSubscribeStatusClick(Sender: TObject);
    procedure btnSubscribeTradesClick(Sender: TObject);
    procedure btnUnsubscribeTradesClick(Sender: TObject);
    procedure btnXTBGetAllSymbolsClick(Sender: TObject);
    procedure btnXTBGetCurrentUserDataClick(Sender: TObject);
    procedure btnXTBGetServerTimeClick(Sender: TObject);
    procedure btnXTBGetSymbolClick(Sender: TObject);
    procedure btnXTBGetTickPricesClick(Sender: TObject);
    procedure btnXTBGetTradesClick(Sender: TObject);
    procedure btnXTBGetTradingHoursClick(Sender: TObject);
    procedure btnXTBGetVersionClick(Sender: TObject);
    procedure btnXTBLimitOrderClick(Sender: TObject);
    procedure btnXTBMarketOrderClick(Sender: TObject);
    procedure btnXTBSubscribeBalanceClick(Sender: TObject);
    procedure btnXTBSubscribeCandlesClick(Sender: TObject);
    procedure btnXTBSubscribeTickPricesClick(Sender: TObject);
    procedure btnXTBSubscribeTradeStatusClick(Sender: TObject);
    procedure btnXTBUnsubscribeBalanceClick(Sender: TObject);
    procedure btnXTBUnsubscribeCandlesClick(Sender: TObject);
    procedure btnXTBUnsubscribeTickPricesClick(Sender: TObject);
    procedure btnXTBUnsubscribeTradeStatusClick(Sender: TObject);
    procedure btnBinanceWalletAllCoinsClick(Sender: TObject);
    procedure btnBinanceWalletApiKeyPermissionClick(Sender: TObject);
    procedure btnBinanceWalletDailySnapshotClick(Sender: TObject);
    procedure btnBinanceWalletDepositHistoryClick(Sender: TObject);
    procedure btnBinanceWalletWithdrawClick(Sender: TObject);
    procedure btnBinanceWalletWithdrawHistoryClick(Sender: TObject);
    procedure btnBybitInversePerpetualCancelAllOrdersClick(Sender: TObject);
    procedure btnBybitInversePerpetualGetPositionClick(Sender: TObject);
    procedure btnBybitInversePerpetualSubscribeExecutionClick(Sender: TObject);
    procedure btnBybitInversePerpetualSubscribeInstrumentationClick(Sender: TObject);
    procedure btnBybitInversePerpetualSubscribeKLineClick(Sender: TObject);
    procedure btnBybitInversePerpetualSubscribeLiquidationClick(Sender: TObject);
    procedure btnBybitInversePerpetualSubscribeOrderBookL2_25Click(Sender: TObject);
    procedure btnBybitInversePerpetualSubscribePositionClick(Sender: TObject);
    procedure btnBybitInversePerpetualSubscribeTradeClick(Sender: TObject);
    procedure btnBybitInversePerpetualUnSubscribeExecutionClick(Sender: TObject);
    procedure btnBybitInversePerpetualUnSubscribeInstrumentationClick(Sender: TObject);
    procedure btnBybitInversePerpetualUnSubscribeKLineClick(Sender: TObject);
    procedure btnBybitInversePerpetualUnSubscribeLiquidationClick(Sender: TObject);
    procedure btnBybitInversePerpetualUnSubscribeOrderBookL2_25Click(Sender: TObject);
    procedure btnBybitInversePerpetualUnSubscribePositionClick(Sender: TObject);
    procedure btnBybitInversePerpetualUnSubscribeTradeClick(Sender: TObject);
    procedure btnBybitUSDTPerpetualSubscribeExecutionClick(Sender: TObject);
    procedure btnBybitUSDTPerpetualSubscribeInstrumentationClick(Sender: TObject);
    procedure btnBybitUSDTPerpetualSubscribeKLineClick(Sender: TObject);
    procedure btnBybitUSDTPerpetualSubscribeLiquidationClick(Sender: TObject);
    procedure btnBybitUSDTPerpetualSubscribeOrderBookL2_25Click(Sender: TObject);
    procedure btnBybitUSDTPerpetualSubscribePositionClick(Sender: TObject);
    procedure btnBybitUSDTPerpetualSubscribeTradeClick(Sender: TObject);
    procedure btnBybitUSDTPerpetualUnSubscribeExecutionClick(Sender: TObject);
    procedure btnBybitUSDTPerpetualUnSubscribeInstrumentationClick(Sender: TObject);
    procedure btnBybitUSDTPerpetualUnSubscribeKLineClick(Sender: TObject);
    procedure btnBybitUSDTPerpetualUnSubscribeLiquidationClick(Sender: TObject);
    procedure btnBybitUSDTPerpetualUnSubscribeOrderBookL2_25Click(Sender: TObject);
    procedure btnBybitUSDTPerpetualUnSubscribePositionClick(Sender: TObject);
    procedure btnBybitUSDTPerpetualUnSubscribeTradeClick(Sender: TObject);
    procedure btnBybitSpotGetAllSymbolsClick(Sender: TObject);
    procedure btnBybitSpotGetLastTradedPriceClick(Sender: TObject);
    procedure btnBybitSpotGetLatestInformationClick(Sender: TObject);
    procedure btnBybitSpotGetOpenOrdersClick(Sender: TObject);
    procedure btnBybitSpotGetServerTimeClick(Sender: TObject);
    procedure btnBybitSpotGetWalletBalanceClick(Sender: TObject);
    procedure btnBybitSpotSubscribeAccountInfoClick(Sender: TObject);
    procedure btnBybitSpotSubscribeBookTickerClick(Sender: TObject);
    procedure btnBybitSpotSubscribeDepthClick(Sender: TObject);
    procedure btnBybitSpotSubscribeKLineClick(Sender: TObject);
    procedure btnBybitSpotSubscribeOrderClick(Sender: TObject);
    procedure btnBybitSpotSubscribeTickersClick(Sender: TObject);
    procedure btnBybitSpotSubscribeTradeClick(Sender: TObject);
    procedure btnBybitSpotUnSubscribeAccountInfoClick(Sender: TObject);
    procedure btnBybitSpotUnSubscribeBookTickerClick(Sender: TObject);
    procedure btnBybitSpotUnSubscribeDepthClick(Sender: TObject);
    procedure btnBybitSpotUnSubscribeKLineClick(Sender: TObject);
    procedure btnBybitSpotUnSubscribeOrderClick(Sender: TObject);
    procedure btnBybitSpotUnSubscribeTickersClick(Sender: TObject);
    procedure btnBybitSpotUnSubscribeTradeClick(Sender: TObject);
    procedure btnBybitSpotGetOrderBookClick(Sender: TObject);
    procedure btnBybitSpotGetPublicTradingRecordsClick(Sender: TObject);
    procedure btnBybitSpotGetQueryKLineClick(Sender: TObject);
    procedure btnBybitSpotGetTradeHistoryClick(Sender: TObject);
    procedure btnBybitInversePerpetualGetServerTimeClick(Sender: TObject);
    procedure btnBybitInversePerpetualGetWalletBalanceClick(Sender: TObject);
    procedure btnBybitInversePerpetualLatestInformationClick(Sender: TObject);
    procedure btnBybitInversePerpetualLimitOrderClick(Sender: TObject);
    procedure btnBybitInversePerpetualMarketOrderClick(Sender: TObject);
    procedure btnBybitInversePerpetualOrderBookClick(Sender: TObject);
    procedure btnBybitInversePerpetualTradingRecordsClick(Sender: TObject);
    procedure btnBybitUSDTPerpetualCancelAllOrdersClick(Sender: TObject);
    procedure btnBybitUSDTPerpetualGetPositionClick(Sender: TObject);
    procedure btnBybitUSDTPerpetualGetServerTimeClick(Sender: TObject);
    procedure btnBybitUSDTPerpetualGetWalletBalanceClick(Sender: TObject);
    procedure btnBybitUSDTPerpetualLatestInformationClick(Sender: TObject);
    procedure btnBybitUSDTPerpetualLimitOrderClick(Sender: TObject);
    procedure btnBybitUSDTPerpetualMarketOrderClick(Sender: TObject);
    procedure btnBybitUSDTPerpetualOrderBookClick(Sender: TObject);
    procedure btnBybitUSDTPerpetualTradingRecordsClick(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure cboOkxMarketOrderClick(Sender: TObject);
    procedure Button62Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure BybitBybitAuthentication(Sender: TObject; aSuccess: Boolean; const
        aError, aRawMessage: string);
    procedure BybitBybitData(Sender: TObject; const aData: string);
    procedure BybitBybitError(Sender: TObject; aErrorCode: string; const
        aErrorMessage, aRawMessage: string);
    procedure BybitBybitSubscribe(Sender: TObject; const aReqId: string; aSuccess:
        Boolean; const aError, aRawMessage: string);
    procedure BybitBybitUnSubscribe(Sender: TObject; const aReqId: string;
        aSuccess: Boolean; const aError, aRawMessage: string);
    procedure BybitConnect(Connection: TsgcWSConnection);
    procedure BybitDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure cboBitmexLimitOrderClick(Sender: TObject);
    procedure cboBitmexMarketOrderClick(Sender: TObject);
    procedure cboFTXCancelAllOrdersClick(Sender: TObject);
    procedure cboFTXPlaceLimitOrderClick(Sender: TObject);
    procedure cboFTXPlaceMarketOrderClick(Sender: TObject);
    procedure cboOkxLimitOrderClick(Sender: TObject);
    procedure CEXCexAuthenticated(Sender: TObject);
    procedure CEXCexConnect(Sender: TObject);
    procedure CEXCexDisconnect(Sender: TObject);
    procedure CEXCexDisconnecting(Sender: TObject; Reason, Time: string);
    procedure CEXCexError(Sender: TObject; Error: string);
    procedure CEXCexMessage(Sender: TObject; Event, Msg: string);
    procedure CEXDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure chkBinanceUSClick(Sender: TObject);
    procedure chkBitmexTestNetClick(Sender: TObject);
    procedure chkBybitTestNetClick(Sender: TObject);
    procedure chkCoinbaseSandboxClick(Sender: TObject);
    procedure chkFXCMDemoClick(Sender: TObject);
    procedure chkKrakenFuturesDemoClick(Sender: TObject);
    procedure chkKucoinSandBoxClick(Sender: TObject);
    procedure chkOkxIsDemoClick(Sender: TObject);
    procedure chkOkxIsPrivateClick(Sender: TObject);
    procedure chkTestNetClick(Sender: TObject);
    procedure chkXTBDemoClick(Sender: TObject);
    procedure COINBASECoinbaseError(Sender: TObject;
      aError, aReason, aRawMessage: string);
    procedure COINBASECoinbaseHTTPException(Sender: TObject; E: Exception);
    procedure COINBASECoinbaseMessage(Sender: TObject;
      aType, aRawMessage: string);
    procedure COINBASECoinbaseSubscriptions(Sender: TObject;
      aChannels, aProductIds, aRawMessage: string);
    procedure COINBASEconnect(Connection: TsgcWSConnection);
    procedure COINBASEDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FTXConnect(Connection: TsgcWSConnection);
    procedure FTXDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure FTXFTXError(Sender: TObject;
      aCode, aMessage, aRawMessage: string);
    procedure FTXFTXHTTPException(Sender: TObject; E: Exception);
    procedure FTXFTXMessage(Sender: TObject; aType, aRawMessage: string);
    procedure FTXFTXSubscribed(Sender: TObject;
      aChannel, aMarket, aRawMessage: string);
    procedure FTXFTXUnsubscribed(Sender: TObject;
      aChannel, aMarket, aRawMessage: string);
    procedure HUOBIConnect(Connection: TsgcWSConnection);
    procedure HUOBIDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure HUOBIHuobiError(Sender: TObject; Id, Code, Msg, Ts: string);
    procedure HUOBIHuobiSubscribed(Sender: TObject; Topic, Ts: string);
    procedure HUOBIHuobiUnSubscribed(Sender: TObject; Topic, Ts: string);
    procedure HUOBIHuobiUpdate(Sender: TObject; Data: string);
    procedure KRAKENConnect(Connection: TsgcWSConnection);
    procedure KRAKENDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure KRAKENKrakenConnect(Sender: TObject;
      ConnectionId, Status, Version: string);
    procedure KRAKENKrakenData(Sender: TObject; aData: string);
    procedure KRAKENKrakenHTTPException(Sender: TObject; E: Exception);
    procedure KRAKENKrakenSubscribed(Sender: TObject; ChannelId: Integer;
      Pair, Subscription, ChannelName: string; ReqID: Integer);
    procedure KRAKENKrakenSubscriptionError(Sender: TObject;
      ErrorMessage, Pair, Subscription: string; ReqID: Integer);
    procedure KRAKENKrakenSystemStatus(Sender: TObject;
      ConnectionId, Status, Version: string);
    procedure KRAKENKrakenUnSubscribed(Sender: TObject; ChannelId: Integer;
      Pair, Subscription: string; ReqID: Integer);
    procedure KRAKEN_FUTURESConnect(Connection: TsgcWSConnection);
    procedure KRAKEN_FUTURESDisconnect(Connection: TsgcWSConnection;
      Code: Integer);
    procedure KRAKEN_FUTURESKrakenData(Sender: TObject; aData: string);
    procedure KRAKEN_FUTURESKrakenFuturesConnect(Sender: TObject;
      Version: string);
    procedure KRAKEN_FUTURESKrakenFuturesError(Sender: TObject; Error: string);
    procedure KRAKEN_FUTURESKrakenFuturesSubscribed(Sender: TObject;
      Feed, ProductId: string);
    procedure KRAKEN_FUTURESKrakenFuturesUnSubscribed(Sender: TObject;
      Feed, ProductId: string);
    procedure KRAKEN_FUTURESKrakenHTTPException(Sender: TObject; E: Exception);
    procedure OKXConnect(Connection: TsgcWSConnection);
    procedure OKXDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure OKXOKXConnect(Sender: TObject;
      aMessage, aCode, aRawMessage: string);
    procedure OKXOKXError(Sender: TObject;
      aCode, aMessage, aRawMessage: string);
    procedure OKXOKXMessage(Sender: TObject; aType, aRawMessage: string);
    procedure OKXOKXSubscribed(Sender: TObject;
      aChannel, aInstId, aRawMessage: string);
    procedure OKXOKXUnsubscribed(Sender: TObject;
      aChannel, aInstId, aRawMessage: string);
    procedure optBINANCEFUTCOINClick(Sender: TObject);
    procedure optBINANCEFUTUSDTClick(Sender: TObject);
    procedure tabBinanceFuturesShow(Sender: TObject);
    procedure tabBinanceStocksShow(Sender: TObject);
    procedure tabBITMEXShow(Sender: TObject);
    procedure tabBITSTAMPShow(Sender: TObject);
    procedure tabBybitInversePerpetualShow(Sender: TObject);
    procedure tabBybitUSDTPerpetualShow(Sender: TObject);
    procedure tabBybitSpotShow(Sender: TObject);
    procedure tabCEXShow(Sender: TObject);
    procedure tabCOINBASEShow(Sender: TObject);
    procedure tabFTXShow(Sender: TObject);
    procedure tabFXCMShow(Sender: TObject);
    procedure tabHUOBIShow(Sender: TObject);
    procedure tabKrakenFuturesShow(Sender: TObject);
    procedure tabKRAKENShow(Sender: TObject);
    procedure tabKrakenStocksShow(Sender: TObject);
    procedure tabKucoinFuturesShow(Sender: TObject);
    procedure tabKUCOINShow(Sender: TObject);
    procedure tabKucoinStocksShow(Sender: TObject);
    procedure tabOKXShow(Sender: TObject);
    procedure tabThreeCommasShow(Sender: TObject);
    procedure tabXTBShow(Sender: TObject);
    procedure THREE_COMMASConnect(Connection: TsgcWSConnection);
    procedure THREE_COMMASDisconnect(Connection: TsgcWSConnection;
      Code: Integer);
    procedure THREE_COMMASThreeCommasConfirmSubscription(Sender: TObject;
      const aChannel, aRawMessage: string);
    procedure THREE_COMMASThreeCommasConnect(Sender: TObject;
      const aRawMessage: string);
    procedure THREE_COMMASThreeCommasHTTPException(Sender: TObject;
      E: Exception);
    procedure THREE_COMMASThreeCommasMessage(Sender: TObject;
      const aType, aRawMessage: string);
    procedure THREE_COMMASThreeCommasPing(Sender: TObject;
      const aRawMessage: string);
    procedure THREE_COMMASThreeCommasRejectSubscription(Sender: TObject;
      const aChannel, aRawMessage: string);
    procedure txtBinanceApiKeyChange(Sender: TObject);
    procedure txtBinanceApiSecretChange(Sender: TObject);
    procedure txtBinanceFuturesApiKeyChange(Sender: TObject);
    procedure txtBinanceFuturesApiSecretChange(Sender: TObject);
    procedure txtBitmexApiKeyChange(Sender: TObject);
    procedure txtBitmexApiSecretChange(Sender: TObject);
    procedure txtBybitAPIKeyChange(Sender: TObject);
    procedure txtBybitAPISecretChange(Sender: TObject);
    procedure txtCoinbaseApiKeyChange(Sender: TObject);
    procedure txtCoinbaseApiSecretChange(Sender: TObject);
    procedure txtCoinbasePassphraseChange(Sender: TObject);
    procedure txtFTXApiKeyChange(Sender: TObject);
    procedure txtFTXApiSecretChange(Sender: TObject);
    procedure txtFTXSubAccountChange(Sender: TObject);
    procedure txtFXCMAccessTokenChange(Sender: TObject);
    procedure txtKrakenApiKeyChange(Sender: TObject);
    procedure txtKrakenApiSecretChange(Sender: TObject);
    procedure txtKucoinApiKeyChange(Sender: TObject);
    procedure txtKucoinApiPassphraseChange(Sender: TObject);
    procedure txtKucoinApiSecretChange(Sender: TObject);
    procedure txtOkxApiKeyChange(Sender: TObject);
    procedure txtOkxApiSecretChange(Sender: TObject);
    procedure txtOkxPassphraseChange(Sender: TObject);
    procedure txtThreeCommasApiKeyChange(Sender: TObject);
    procedure txtThreeCommasApiSecretChange(Sender: TObject);
    procedure txtXTBPasswordChange(Sender: TObject);
    procedure txtXTBUserChange(Sender: TObject);
    procedure XTBConnect(Connection: TsgcWSConnection);
    procedure XTBDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure XTBXTBConnect(Sender: TObject; const aStreamSessionId: string);
    procedure XTBXTBError(Sender: TObject; const aCode, aDescription,
      aRawMessage: string);
    procedure XTBXTBMessage(Sender: TObject; const aRawMessage: string);
  private
    procedure DoLog(const aText: String);
    procedure DoClear;
  private
    procedure DoBeforeConnect;
    procedure DoBeforeConnectKraken;
  private
    procedure DoServerBITTREX;
    procedure DoServerBINANCE;
    procedure DoServerBINANCEFUT;
    procedure DoServerBITSTAMP;
    procedure DoServerHUOBI;
    procedure DoServerCEX;
    procedure DoServerBITMEX;
    procedure DoServerFXCM;
    procedure DoServerKRAKEN;
    procedure DoServerKRAKENFUT;
    procedure DoServerCOINBASE;
    procedure DoServerFTX;
    procedure DoServer3Commas;
    procedure DoServerKUCOIN;
    procedure DoServerKUCOINFUT;
    procedure DoServerOKX;
    procedure DoServerXTB;
    procedure DoServerBybit(aClient: Integer);
  end;

var
  frmWebSocketClient: TfrmWebSocketClient;

implementation

uses
  sgcWebSocket_Helpers, sgcJSON, StrUtils, sgcBase_Helpers,
  ShellAPI, DateUtils;
{$R *.dfm}

procedure TfrmWebSocketClient.BINANCEBinanceHTTPException(Sender: TObject;
  E: Exception);
begin
  DoLog('#Binance Exception: ' + E.Message);
end;

procedure TfrmWebSocketClient.BINANCEFUTBinanceHTTPException(Sender: TObject;
  E: Exception);
begin
  DoLog('#Binance Exception: ' + E.Message);
end;

procedure TfrmWebSocketClient.BITMEXBitmexAuthenticated(Sender: TObject);
begin
  DoLog('#Bitmex Authenticated');
end;

procedure TfrmWebSocketClient.BITMEXBitmexConnect(Sender: TObject;
  const aMessage: string);
begin
  DoLog('#Bitmex Connected: ' + aMessage);
end;

procedure TfrmWebSocketClient.BITMEXBitmexError(Sender: TObject;
  const aMessage: string);
begin
  DoLog('Bitmex Error: ' + aMessage);
end;

procedure TfrmWebSocketClient.BITMEXBitmexMessage(Sender: TObject;
  const aTopic: TwsBitmexTopics; const aMessage: string);
begin
  DoLog('Bitmex Message: ' + aMessage);
end;

procedure TfrmWebSocketClient.BITMEXBitmexSubscribed(Sender: TObject;
  const aChannel: string);
begin
  DoLog('Bitmex Subscribed: ' + aChannel);
end;

procedure TfrmWebSocketClient.BITMEXBitmexUnsubscribed(Sender: TObject;
  const aChannel: string);
begin
  DoLog('Bitmex Unsubscribed: ' + aChannel);
end;

procedure TfrmWebSocketClient.BITMEXConnect(Connection: TsgcWSConnection);
begin
  DoLog('#connected');
end;

procedure TfrmWebSocketClient.BITMEXDisconnect(Connection: TsgcWSConnection;
  Code: Integer);
begin
  DoLog('#disconnected');
end;

procedure TfrmWebSocketClient.BITSTAMPConnect(Connection: TsgcWSConnection);
begin
  DoLog('#connected');
end;

procedure TfrmWebSocketClient.BITSTAMPDisconnect(Connection: TsgcWSConnection;
  Code: Integer);
begin
  DoLog('#disconnected');
end;

procedure TfrmWebSocketClient.BITSTAMPMessage(Connection: TsgcWSConnection;
  const Text: string);
begin
  DoLog(Text);
end;

procedure TfrmWebSocketClient.BITSTAMPPusherConnect(Sender: TObject;
  Socket_id: string; Timeout: Integer);
begin
  DoLog('#connected');
end;

procedure TfrmWebSocketClient.BITSTAMPPusherError(Sender: TObject;
  Code: Integer; Msg: string);
begin
  DoLog('#error: ' + Msg);
end;

procedure TfrmWebSocketClient.BITSTAMPPusherEvent(Sender: TObject;
  Event, Channel, Data: string);
begin
  DoLog('Event: ' + Event + ' Channel: ' + Channel + ' ' + Data);
end;

procedure TfrmWebSocketClient.BITSTAMPPusherSubscribe(Sender: TObject;
  Channel, Data: string);
begin
  DoLog('#subscribed: ' + Channel);
end;

procedure TfrmWebSocketClient.BITTREXBittrexAuthenticated(Sender: TObject);
begin
  DoLog('#authenticated');
end;

procedure TfrmWebSocketClient.BITTREXBittrexConnect(Sender: TObject);
begin
  DoLog('#connected');
end;

procedure TfrmWebSocketClient.BITTREXBittrexDisconnect(Sender: TObject;
  aCloseCode: Integer);
begin
  DoLog('#disconnected');
end;

procedure TfrmWebSocketClient.BITTREXBittrexError(Sender: TObject;
  Error: string);
begin
  DoLog('#error: ' + Error);
end;

procedure TfrmWebSocketClient.BITTREXBittrexHeartBeat(Sender: TObject);
begin
  DoLog('#heartbeat');
end;

procedure TfrmWebSocketClient.BITTREXBittrexMessage(Sender: TObject;
  CallBack, PayLoad: string);
begin
  DoLog('[' + CallBack + '] ' + PayLoad);
end;

procedure TfrmWebSocketClient.BITTREXBittrexSubscribed(Sender: TObject;
  Channel: string);
begin
  DoLog('#subscribed: ' + Channel);
end;

procedure TfrmWebSocketClient.BITTREXBittrexUnSubscribed(Sender: TObject;
  Channel: string);
begin
  DoLog('#unsubscribed: ' + Channel);
end;

procedure TfrmWebSocketClient.btnAccountTradeListClick(Sender: TObject);
begin
  DoLog(BINANCE.REST_API.GetAccountTradeList(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinance24hrTickerClick(Sender: TObject);
begin
  DoLog(BINANCE.REST_API.Get24hrTicker(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceAccountInformationClick
  (Sender: TObject);
begin
  DoLog(BINANCE.REST_API.GetAccountInformation);
end;

procedure TfrmWebSocketClient.btnBinanceAggregateTradesClick(Sender: TObject);
begin
  DoLog(BINANCE.REST_API.GetAggregateTrades(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceAllOrdersClick(Sender: TObject);
begin
  DoLog(BINANCE.REST_API.GetAllOrders(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceAveragePriceClick(Sender: TObject);
begin
  DoLog(BINANCE.REST_API.GetAveragePrice(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceBookTickerClick(Sender: TObject);
begin
  DoLog(BINANCE.REST_API.GetBookTicker(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceExchangeInformationClick
  (Sender: TObject);
begin
  DoLog(LeftStr(BINANCE.REST_API.GetExchangeInformation, 2000));
end;

procedure TfrmWebSocketClient.btnBinanceFut24hrTickerClick(Sender: TObject);
begin
  DoLog(BINANCEFUT.REST_API.Get24hrTicker(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceFutAccountInformationClick
  (Sender: TObject);
begin
  DoLog(BINANCEFUT.REST_API.GetAccountInformation);
end;

procedure TfrmWebSocketClient.btnBinanceFutAccountBalanceClick(Sender: TObject);
begin
  DoLog(BINANCEFUT.REST_API.GetAccountBalance);
end;

procedure TfrmWebSocketClient.btnBinanceFutAggregateTradesClick
  (Sender: TObject);
begin
  DoLog(BINANCEFUT.REST_API.GetAggregateTrades(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceFutBookTickerClick(Sender: TObject);
begin
  DoLog(BINANCEFUT.REST_API.GetBookTicker(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceFutExchangeInformationClick
  (Sender: TObject);
begin
  DoLog(BINANCEFUT.REST_API.GetExchangeInformation);
end;

procedure TfrmWebSocketClient.btnBinanceFutHistoricalTradesClick
  (Sender: TObject);
begin
  DoLog(BINANCEFUT.REST_API.GetHistoricalTrades(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceFutKLinesClick(Sender: TObject);
begin
  DoLog(BINANCEFUT.REST_API.GetKLines(txtBinanceRestSymbol.Text, bcih5m));
end;

procedure TfrmWebSocketClient.btnBinanceFutOpenInterestClick(Sender: TObject);
begin
  DoLog(BINANCEFUT.REST_API.GetOpenInterest(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceFutOrderBookClick(Sender: TObject);
begin
  DoLog(BINANCEFUT.REST_API.GetOrderBook(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceHistoricalTradesClick(Sender: TObject);
begin
  DoLog(BINANCE.REST_API.GetHistoricalTrades(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceKLinesClick(Sender: TObject);
begin
  DoLog(BINANCE.REST_API.GetKLines(txtBinanceRestSymbol.Text, bcih5m));
end;

procedure TfrmWebSocketClient.btnBinanceOpenOrdersClick(Sender: TObject);
begin
  DoLog(BINANCE.REST_API.GetOpenOrders);
end;

procedure TfrmWebSocketClient.btnBinancePingClick(Sender: TObject);
begin
  if BINANCE.REST_API.Ping then
    DoLog('Ping ok')
  else
    DoLog('Ping error');
end;

procedure TfrmWebSocketClient.btnBinancePriceTickerClick(Sender: TObject);
begin
  DoLog(BINANCE.REST_API.GetPriceTicker(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceServerTimeClick(Sender: TObject);
begin
  DoLog(BINANCE.REST_API.GetServerTime);
end;

procedure TfrmWebSocketClient.btnBinanceTradesClick(Sender: TObject);
begin
  DoLog(BINANCE.REST_API.GetTrades(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinFutSubsAggregateTradeClick(Sender: TObject);
begin
  BINANCEFUT.SubscribeAggregateTrades(txtBinanceSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBinFutSubsAllMarketTickerClick
  (Sender: TObject);
begin
  BINANCEFUT.SubscribeAllMarketTickers;
end;

procedure TfrmWebSocketClient.btnBinFutSubsDiffDepthClick(Sender: TObject);
begin
  BINANCEFUT.SubscribeDiffDepth(txtBinanceSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBinFutSubsKLineClick(Sender: TObject);
begin
  BINANCEFUT.SubscribeKLine(txtBinanceSymbol.Text, bci5m);
end;

procedure TfrmWebSocketClient.btnBinFutSubsMarkPriceClick(Sender: TObject);
begin
  BINANCEFUT.SubscribeMarkPrice(txtBinanceSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBinFutSubsPartialBookDepthClick
  (Sender: TObject);
begin
  BINANCEFUT.SubscribePartialBookDepth(txtBinanceSymbol.Text, bde5);
end;

procedure TfrmWebSocketClient.btnBinFutSubsTickerClick(Sender: TObject);
begin
  BINANCEFUT.SubscribeTicker(txtBinanceSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBinFutUnSubsAggregateTradeClick
  (Sender: TObject);
begin
  BINANCEFUT.UnSubscribeAggregateTrades(txtBinanceSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBinFutUnSubsAllMarketTickerClick
  (Sender: TObject);
begin
  BINANCEFUT.UnSubscribeAllMarketTickers;
end;

procedure TfrmWebSocketClient.btnBinFutUnSubsDiffDepthClick(Sender: TObject);
begin
  BINANCEFUT.UnSubscribeDiffDepth(txtBinanceSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBinFutUnSubsKLineClick(Sender: TObject);
begin
  BINANCEFUT.UnSubscribeKLine(txtBinanceSymbol.Text, bci5m);
end;

procedure TfrmWebSocketClient.btnBinFutUnSubsMarkPriceClick(Sender: TObject);
begin
  BINANCEFUT.UnSubscribeMarkPrice(txtBinanceSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBinFutUnSubsPartialBookDepthClick
  (Sender: TObject);
begin
  BINANCEFUT.UnSubscribePartialBookDepth(txtBinanceSymbol.Text, bde5);
end;

procedure TfrmWebSocketClient.btnBinFutUnSubsTickerClick(Sender: TObject);
begin
  BINANCEFUT.UnSubscribeTicker(txtBinanceSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBitmexSubscribeClick(Sender: TObject);
begin
  BITMEX.Subscribe(TwsBitmexTopics(cboBitmexTopics.itemIndex),
    txtBitmexSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBitmexUnsubscribeClick(Sender: TObject);
begin
  BITMEX.Unsubscribe(TwsBitmexTopics(cboBitmexTopics.itemIndex),
    txtBitmexSymbol.Text);
end;

procedure TfrmWebSocketClient.btnStartClick(Sender: TObject);
begin
  WSClient.Host := txtHost.Text;
  WSClient.Port := StrToInt(txtPort.Text);
  WSClient.Options.Parameters := txtParameters.Text;
  WSClient.TLS := chkTLS.Checked;

  WSClient.Specifications.RFC6455 := chkOverWebSocket.Checked;

  WSClient.Proxy.Enabled := chkProxy.Checked;
  WSClient.Proxy.Username := txtProxyUsername.Text;
  WSClient.Proxy.Password := txtProxyPassword.Text;
  WSClient.Proxy.Host := txtProxyHost.Text;
  if txtProxyPort.Text <> '' then
    WSClient.Proxy.Port := StrToInt(txtProxyPort.Text);

  WSClient.Extensions.PerMessage_Deflate.Enabled := chkCompressed.Checked;

  // ... active
  DoBeforeConnect;
  WSClient.Active := True;
  if WSClient.Active then
    pnlClientOptions.Enabled := False;
end;

procedure TfrmWebSocketClient.btnStopClick(Sender: TObject);
begin
  WSClient.Active := False;

  if not WSClient.Active then
    pnlClientOptions.Enabled := True;
end;

procedure TfrmWebSocketClient.btnBittrexAuthenticateClick(Sender: TObject);
begin
  BITTREX.BITTREX.ApiKey := txtBittrexApiKey.Text;
  BITTREX.BITTREX.ApiSecret := txtBittrexApiSecret.Text;
  BITTREX.Authenticate;
end;

procedure TfrmWebSocketClient.btnFullOrderBookBITSTAMPClick(Sender: TObject);
begin
  BITSTAMP.SubscribeLiveFullOrderBook(txtBitstampCurrency.Text);
end;

procedure TfrmWebSocketClient.btnLiveOrdersBITSTAMPClick(Sender: TObject);
begin
  BITSTAMP.SubscribeLiveOrders(txtBitstampCurrency.Text);
end;

procedure TfrmWebSocketClient.btnOrderBookBITSTAMPClick(Sender: TObject);
begin
  BITSTAMP.SubscribeLiveOrderBook(txtBitstampCurrency.Text);
end;

procedure TfrmWebSocketClient.btnSubscribeHuobiKLineClick(Sender: TObject);
begin
  HUOBI.SubscribeKLine(txtHuobiSymbol.Text,
    TsgcWSHuobiPeriods(cboHuobiPeriods.itemIndex));
end;

procedure TfrmWebSocketClient.btnSubscribeHuobiMarketDepthClick
  (Sender: TObject);
begin
  HUOBI.SubscribeMarketDepth(txtHuobiSymbol.Text,
    TsgcWSHuobiDepths(cboHuobiDepths.itemIndex));
end;

procedure TfrmWebSocketClient.btnSubscribeHuobiMarketDetailClick
  (Sender: TObject);
begin
  HUOBI.SubscribeMarketDetail(txtHuobiSymbol.Text);
end;

procedure TfrmWebSocketClient.btnSubscribeHuobiMarketTickersClick
  (Sender: TObject);
begin
  HUOBI.SubscribeMarketTickers;
end;

procedure TfrmWebSocketClient.btnSubscribeHuobiTradeDetailClick
  (Sender: TObject);
begin
  HUOBI.SubscribeTradeDetail(txtHuobiSymbol.Text);
end;

procedure TfrmWebSocketClient.btnTickerBITSTAMPClick(Sender: TObject);
begin
  BITSTAMP.SubscribeLiveTicker(txtBitstampCurrency.Text);
end;

procedure TfrmWebSocketClient.btnUnSubscribeHuobiKLineClick(Sender: TObject);
begin
  HUOBI.UnSubscribeKLine(txtHuobiSymbol.Text,
    TsgcWSHuobiPeriods(cboHuobiPeriods.itemIndex));
end;

procedure TfrmWebSocketClient.btnUnSubscribeHuobiMarketDepthClick
  (Sender: TObject);
begin
  HUOBI.UnSubscribeMarketDepth(txtHuobiSymbol.Text,
    TsgcWSHuobiDepths(cboHuobiDepths.itemIndex));
end;

procedure TfrmWebSocketClient.btnUnSubscribeHuobiMarketDetailClick
  (Sender: TObject);
begin
  HUOBI.UnSubscribeMarketDetail(txtHuobiSymbol.Text);
end;

procedure TfrmWebSocketClient.btnUnSubscribeHuobiMarketTickersClick
  (Sender: TObject);
begin
  HUOBI.UnSubscribeMarketTickers;
end;

procedure TfrmWebSocketClient.btnUnSubscribeHuobiTradeDetailClick
  (Sender: TObject);
begin
  HUOBI.UnSubscribeTradeDetail(txtHuobiSymbol.Text);
end;

procedure TfrmWebSocketClient.Button1Click(Sender: TObject);
begin
  BINANCE.SubscribeAggregateTrades(txtBinanceSymbol.Text);
end;

procedure TfrmWebSocketClient.Button2Click(Sender: TObject);
begin
  BINANCE.SubscribeTrades(txtBinanceSymbol.Text);
end;

procedure TfrmWebSocketClient.Button3Click(Sender: TObject);
begin
  BINANCE.SubscribeKLine(txtBinanceSymbol.Text, bci5m);
end;

procedure TfrmWebSocketClient.Button4Click(Sender: TObject);
begin
  BINANCE.SubscribeTicker(txtBinanceSymbol.Text);
end;

procedure TfrmWebSocketClient.Button5Click(Sender: TObject);
begin
  BINANCE.SubscribeAllMarketTickers;
end;

procedure TfrmWebSocketClient.Button6Click(Sender: TObject);
begin
  BINANCE.SubscribePartialBookDepth(txtBinanceSymbol.Text, bde5);
end;

procedure TfrmWebSocketClient.Button7Click(Sender: TObject);
begin
  BINANCE.SubscribeDiffDepth(txtBinanceSymbol.Text);
end;

procedure TfrmWebSocketClient.btnCexSubscribeTickersClick(Sender: TObject);
begin
  CEX.SubscribeTickers;
end;

procedure TfrmWebSocketClient.btnCexAuthenticateClick(Sender: TObject);
begin
  CEX.CEX.ApiKey := txtCexApiKey.Text;
  CEX.CEX.ApiSecret := txtCexApiSecret.Text;
  CEX.Authenticate;
end;

procedure TfrmWebSocketClient.btnCexGetBalanceClick(Sender: TObject);
begin
  CEX.GetBalance;
end;

procedure TfrmWebSocketClient.btnCexGetTickerClick(Sender: TObject);
begin
  CEX.GetTicker(txtCexSymbol1.Text, txtCexSymbol2.Text);
end;

procedure TfrmWebSocketClient.btnCexSubscribeChartsClick(Sender: TObject);
begin
  CEX.SubscribeChart(TsgcWSCexPeriods(cboCexPeriods.itemIndex),
    txtCexSymbol1.Text, txtCexSymbol2.Text);
end;

procedure TfrmWebSocketClient.btnCexSubscribeOrderBookClick(Sender: TObject);
begin
  CEX.SubscribeOrderBook(txtCexSymbol1.Text, txtCexSymbol2.Text);
end;

procedure TfrmWebSocketClient.btnCexUnsubscribeOrderBookClick(Sender: TObject);
begin
  CEX.UnSubscribeOrderBook(txtCexSymbol1.Text, txtCexSymbol2.Text);
end;

procedure TfrmWebSocketClient.btnCexUnSubscribeTickersClick(Sender: TObject);
begin
  CEX.UnSubscribeTickers;
end;

procedure TfrmWebSocketClient.btnCexGetOpenOrdersClick(Sender: TObject);
begin
  CEX.GetOpenOrders(txtCexSymbol1.Text, txtCexSymbol2.Text);
end;

procedure TfrmWebSocketClient.btnCexGetArchivedOrdersClick(Sender: TObject);
begin
  CEX.GetArchivedOrders(txtCexSymbol1.Text, txtCexSymbol2.Text);
end;

procedure TfrmWebSocketClient.btnCexGetOpenPositionsClick(Sender: TObject);
begin
  CEX.GetOpenPositions(txtCexSymbol1.Text, txtCexSymbol2.Text);
end;

procedure TfrmWebSocketClient.btnBitmexAuthenticateClick(Sender: TObject);
begin
  BITMEX.BITMEX.ApiKey := txtBitmexApiKey.Text;
  BITMEX.BITMEX.ApiSecret := txtBitmexApiSecret.Text;
  BITMEX.Authenticate;
end;

procedure TfrmWebSocketClient.btnDetailOrderBookBITSTAMPClick(Sender: TObject);
begin
  BITSTAMP.SubscribeLiveDetailOrderBook(txtBitstampCurrency.Text);
end;

procedure TfrmWebSocketClient.btnBinanceOrderBookClick(Sender: TObject);
begin
  DoLog(BINANCE.REST_API.GetOrderBook(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnFXCMGetHistoricalDataClick(Sender: TObject);
begin
  DoLog(FXCM.GetHistoricalData(StrToInt(txtFXCMOfferId.Text),
    TsgcWSFXCMTimeFrame(cboFXCMTimeFrame.itemIndex),
    StrToInt(txtFXCMCandels.Text)));
end;

procedure TfrmWebSocketClient.btnFXCMGetSymbolsClick(Sender: TObject);
begin
  DoLog(FXCM.GetSymbols);
end;

procedure TfrmWebSocketClient.btnFXCMSnapshotTradingTablesClick
  (Sender: TObject);
begin
  DoLog(FXCM.SnapshotTradingTables(TsgcWSFXCMTableModels
    (cboFXCMTradingModels.itemIndex)));
end;

procedure TfrmWebSocketClient.btnFXCMSubscribeMarketDataClick(Sender: TObject);
begin
  DoLog(FXCM.SubscribeMarketData(txtFXCMSymbol1.Text, txtFXCMSymbol2.Text));
end;

procedure TfrmWebSocketClient.btnFXCMSubscribeTradingTablesClick
  (Sender: TObject);
begin
  DoLog(FXCM.SubscribeTradingTables(TsgcWSFXCMTableModels
    (cboFXCMTradingModels.itemIndex)));
end;

procedure TfrmWebSocketClient.btnFXCMUnSubscribeMarketDataClick
  (Sender: TObject);
begin
  DoLog(FXCM.UnSubscribeMarketData(txtFXCMSymbol1.Text, txtFXCMSymbol2.Text));
end;

procedure TfrmWebSocketClient.btnFXCMUnSubscribeTradingTablesClick
  (Sender: TObject);
begin
  DoLog(FXCM.UnSubscribeTradingTables(TsgcWSFXCMTableModels
    (cboFXCMTradingModels.itemIndex)));
end;

procedure TfrmWebSocketClient.btnKrakenCancelOrderClick(Sender: TObject);
begin
  KRAKEN.CancelOrder(txtKrakenOrderId.Text);
end;

procedure TfrmWebSocketClient.btnKrakenGetAccountBalanceClick(Sender: TObject);
begin
  DoLog(KRAKEN.REST_API.GetAccountBalance);
end;

procedure TfrmWebSocketClient.btnKrakenGetAssetsClick(Sender: TObject);
begin
  DoLog(KRAKEN.REST_API.GetAssets);
end;

procedure TfrmWebSocketClient.btnKrakenGetAssetsPairsClick(Sender: TObject);
begin
  DoLog(KRAKEN.REST_API.GetAssetPairs([txtKrakenRESTPair.Text]));
end;

procedure TfrmWebSocketClient.btnKrakenGetClosedOrdersClick(Sender: TObject);
begin
  DoLog(KRAKEN.REST_API.GetClosedOrders());
end;

procedure TfrmWebSocketClient.btnKrakenGetLedgersClick(Sender: TObject);
begin
  DoLog(KRAKEN.REST_API.GetLedgers);
end;

procedure TfrmWebSocketClient.btnKrakenGetServerTimeClick(Sender: TObject);
begin
  DoLog(KRAKEN.REST_API.GetServerTime);
end;

procedure TfrmWebSocketClient.btnKrakenGetTickerClick(Sender: TObject);
begin
  DoLog(KRAKEN.REST_API.GetTicker([txtKrakenRESTPair.Text]));
end;

procedure TfrmWebSocketClient.btnKrakenSubscribeAllClick(Sender: TObject);
begin
  KRAKEN.SubscribeAll([txtKrakenPair.Text]);
end;

procedure TfrmWebSocketClient.btnKrakenSubscribeOHLCClick(Sender: TObject);
begin
  KRAKEN.SubscribeOHLC([txtKrakenPair.Text],
    TsgcWSKrakenInterval(cboKrakenInterval.itemIndex));
end;

procedure TfrmWebSocketClient.btnKrakenSubscribeTickerClick(Sender: TObject);
begin
  KRAKEN.SubscribeTicker([txtKrakenPair.Text]);
end;

procedure TfrmWebSocketClient.btnKrakenSubscribeTradeClick(Sender: TObject);
begin
  KRAKEN.SubscribeTrade([txtKrakenPair.Text]);
end;

procedure TfrmWebSocketClient.btnKrakenUnSubscribeOHLCClick(Sender: TObject);
begin
  KRAKEN.UnSubscribeOHLC([txtKrakenPair.Text],
    TsgcWSKrakenInterval(cboKrakenInterval.itemIndex));
end;

procedure TfrmWebSocketClient.btnKrakenUnSubscribeTickerClick(Sender: TObject);
begin
  KRAKEN.UnSubscribeTicker([txtKrakenPair.Text]);
end;

procedure TfrmWebSocketClient.btnKrakenUnSubscribeTradeClick(Sender: TObject);
begin
  KRAKEN.UnSubscribeTrade([txtKrakenPair.Text]);
end;

procedure TfrmWebSocketClient.btnKrakenSubscribeBookClick(Sender: TObject);
begin
  KRAKEN.SubscribeBook([txtKrakenPair.Text],
    TsgcWSKrakenDepth(cboKrakenDepth.itemIndex));
end;

procedure TfrmWebSocketClient.btnKrakenUnSubscribeAllClick(Sender: TObject);
begin
  KRAKEN.UnSubscribeAll([txtKrakenPair.Text]);
end;

procedure TfrmWebSocketClient.btnKrakenUnSubscribeBookClick(Sender: TObject);
begin
  KRAKEN.UnSubscribeBook([txtKrakenPair.Text],
    TsgcWSKrakenDepth(cboKrakenDepth.itemIndex));
end;

procedure TfrmWebSocketClient.btnKrakenUnSubscribeSpreadClick(Sender: TObject);
begin
  KRAKEN.UnSubscribeSpread([txtKrakenPair.Text]);
end;

procedure TfrmWebSocketClient.Button10Click(Sender: TObject);
begin
  BINANCE.UnSubscribeKLine(txtBinanceSymbol.Text, bci5m);
end;

procedure TfrmWebSocketClient.Button11Click(Sender: TObject);
begin
  BINANCE.UnSubscribeTicker(txtBinanceSymbol.Text);
end;

procedure TfrmWebSocketClient.Button12Click(Sender: TObject);
begin
  BINANCE.UnSubscribeAllMarketTickers;
end;

procedure TfrmWebSocketClient.Button13Click(Sender: TObject);
begin
  BINANCE.UnSubscribePartialBookDepth(txtBinanceSymbol.Text, bde5);
end;

procedure TfrmWebSocketClient.Button14Click(Sender: TObject);
begin
  BINANCE.UnSubscribeDiffDepth(txtBinanceSymbol.Text);
end;

procedure TfrmWebSocketClient.btnKrakenSubscribeOwnTradesClick(Sender: TObject);
begin
  KRAKEN.SubscribeOwnTrades;
end;

procedure TfrmWebSocketClient.btnKrakenUnSubscribeOwnTradesClick
  (Sender: TObject);
begin
  KRAKEN.UnSubscribeOwnTrades;
end;

procedure TfrmWebSocketClient.btnKrakenSubscribeOpenOrdersClick
  (Sender: TObject);
begin
  KRAKEN.SubscribeOpenOrders;
end;

procedure TfrmWebSocketClient.btnKrakenUnSubscribeOpenOrdersClick
  (Sender: TObject);
begin
  KRAKEN.UnSubscribeOpenOrders;
end;

procedure TfrmWebSocketClient.btnKrakenGetOHLCClick(Sender: TObject);
begin
  DoLog(KRAKEN.REST_API.GetOHLC(txtKrakenRESTPair.Text));
end;

procedure TfrmWebSocketClient.btnKrakenGetOpenOrdersClick(Sender: TObject);
begin
  DoLog(KRAKEN.REST_API.GetOpenOrders);
end;

procedure TfrmWebSocketClient.btnKrakenGetOrderBookClick(Sender: TObject);
begin
  DoLog(KRAKEN.REST_API.GetOrderBook(txtKrakenRESTPair.Text));
end;

procedure TfrmWebSocketClient.btnKrakenGetSpreadClick(Sender: TObject);
begin
  DoLog(KRAKEN.REST_API.GetSpread(txtKrakenRESTPair.Text));
end;

procedure TfrmWebSocketClient.btnKrakenGetTradeBalanceClick(Sender: TObject);
begin
  DoLog(KRAKEN.REST_API.GetTradeBalance);
end;

procedure TfrmWebSocketClient.btnKrakenGetTradesClick(Sender: TObject);
begin
  DoLog(KRAKEN.REST_API.GetTrades(txtKrakenRESTPair.Text));
end;

procedure TfrmWebSocketClient.btnKrakenGetTradesHistoryClick(Sender: TObject);
begin
  DoLog(KRAKEN.REST_API.GetTradesHistory);
end;

procedure TfrmWebSocketClient.btnKrakenGetTradeVolumeClick(Sender: TObject);
begin
  DoLog(KRAKEN.REST_API.GetTradeVolume);
end;

procedure TfrmWebSocketClient.btnKrakenRESTCancelOrderClick(Sender: TObject);
begin
  DoLog(KRAKEN.REST_API.CancelOrder(txtKrakenRESTOrderId.Text));
end;

procedure TfrmWebSocketClient.btnBinanceFutPingClick(Sender: TObject);
begin
  if BINANCEFUT.REST_API.Ping then
    DoLog('Ping ok')
  else
    DoLog('Ping error');
end;

procedure TfrmWebSocketClient.btnBinanceFutPriceTickerClick(Sender: TObject);
begin
  DoLog(BINANCEFUT.REST_API.GetPriceTicker(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceFutServerTimeClick(Sender: TObject);
begin
  DoLog(BINANCE.REST_API.GetServerTime);
end;

procedure TfrmWebSocketClient.btnBinanceFutTradesClick(Sender: TObject);
begin
  DoLog(BINANCEFUT.REST_API.GetTrades(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnFinanceFutFundingRateHistoryClick
  (Sender: TObject);
begin
  DoLog(BINANCEFUT.REST_API.GetFundingRateHistory(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnFinanceFutMarkPriceClick(Sender: TObject);
begin
  DoLog(BINANCEFUT.REST_API.GetMarkPrice(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceFutAllOrdersClick(Sender: TObject);
begin
  DoLog(BINANCEFUT.REST_API.GetAllOrders(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceFutOpenOrdersClick(Sender: TObject);
begin
  DoLog(BINANCEFUT.REST_API.GetOpenOrders(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceWalletAccountApiTradingStatusClick(
    Sender: TObject);
begin
  DoLog(BINANCE.REST_API.GetWalletAccountAPITradingStatus);
end;

procedure TfrmWebSocketClient.btnBinanceWalletAccountStatusClick(Sender:
    TObject);
begin
  DoLog(BINANCE.REST_API.GetWalletAccountStatus);
end;

procedure TfrmWebSocketClient.btnBinanceWalletSystemStatusClick(Sender:
    TObject);
begin
  DoLog(BINANCE.REST_API.GetWalletSystemStatus);
end;

procedure TfrmWebSocketClient.btnBitmexCancelAllOrdersClick(Sender: TObject);
begin
  DoLog(BITMEX.REST_API.CancelAllOrders(txtBitmexSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBitmexGetExecutionsClick(Sender: TObject);
begin
  DoLog(BITMEX.REST_API.GetExecutions);
end;

procedure TfrmWebSocketClient.btnBitmexGetInstrumentClick(Sender: TObject);
begin
  DoLog(BITMEX.REST_API.GetInstruments(txtBitmexSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBitmexGetOrderBookClick(Sender: TObject);
begin
  DoLog(BITMEX.REST_API.GetOrderBook(txtBitmexSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBitmexGetOrdersClick(Sender: TObject);
begin
  DoLog(BITMEX.REST_API.GetOrders(txtBitmexSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBitmexGetPositionClick(Sender: TObject);
begin
  DoLog(BITMEX.REST_API.GetPosition);
end;

procedure TfrmWebSocketClient.btnBitmexGetQuoteClick(Sender: TObject);
begin
  DoLog(BITMEX.REST_API.GetQuotes(txtBitmexSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBittrexIsAuthenticatedClick(Sender: TObject);
begin
  if BITTREX.IsAuthenticated then
    ShowMessage('Authenticated')
  else
    ShowMessage('Not Authenticated');
end;

procedure TfrmWebSocketClient.btnBittrexSubscribeBalanceClick(Sender: TObject);
begin
  BITTREX.SubscribeBalance;
end;

procedure TfrmWebSocketClient.btnBittrexSubscribeCandleClick(Sender: TObject);
begin
  BITTREX.SubscribeCandle(txtBittrexMarketName.Text, btxc1Min);
end;

procedure TfrmWebSocketClient.btnBittrexSubscribeDepositClick(Sender: TObject);
begin
  BITTREX.SubscribeDeposit;
end;

procedure TfrmWebSocketClient.btnBittrexSubscribeHeartBeatClick
  (Sender: TObject);
begin
  BITTREX.SubscribeHeartBeat;
end;

procedure TfrmWebSocketClient.btnBittrexSubscribeMarketSummaryClick
  (Sender: TObject);
begin
  BITTREX.SubscribeMarketSummary(txtBittrexMarketName.Text);
end;

procedure TfrmWebSocketClient.btnBittrexSubscribeOrderBookClick
  (Sender: TObject);
begin
  BITTREX.SubscribeOrderBook(txtBittrexMarketName.Text, btxd25);
end;

procedure TfrmWebSocketClient.btnBittrexSubscribeOrderClick(Sender: TObject);
begin
  BITTREX.SubscribeOrder;
end;

procedure TfrmWebSocketClient.btnBittrexSubscribeTickerClick(Sender: TObject);
begin
  BITTREX.SubscribeTicker(txtBittrexMarketName.Text);
end;

procedure TfrmWebSocketClient.btnBittrexUnSubscribeBalanceClick
  (Sender: TObject);
begin
  BITTREX.UnSubscribeBalance;
end;

procedure TfrmWebSocketClient.btnBittrexUnSubscribeCandleClick(Sender: TObject);
begin
  BITTREX.UnSubscribeCandle(txtBittrexMarketName.Text, btxc1Min);
end;

procedure TfrmWebSocketClient.btnBittrexUnSubscribeDepositClick
  (Sender: TObject);
begin
  BITTREX.UnSubscribeDeposit;
end;

procedure TfrmWebSocketClient.btnBittrexUnSubscribeHeartBeatClick
  (Sender: TObject);
begin
  BITTREX.UnSubscribeHeartBeat;
end;

procedure TfrmWebSocketClient.btnBittrexUnSubscribeMarketSummaryClick
  (Sender: TObject);
begin
  BITTREX.UnSubscribeMarketSummary(txtBittrexMarketName.Text);
end;

procedure TfrmWebSocketClient.btnBittrexUnSubscribeOrderBookClick
  (Sender: TObject);
begin
  BITTREX.UnSubscribeOrderBook(txtBittrexMarketName.Text, btxd25);
end;

procedure TfrmWebSocketClient.btnBittrexUnSubscribeOrderClick(Sender: TObject);
begin
  BITTREX.UnSubscribeOrder;
end;

procedure TfrmWebSocketClient.btnBittrexUnSubscribeTickerClick(Sender: TObject);
begin
  BITTREX.UnSubscribeTicker(txtBittrexMarketName.Text);
end;

procedure TfrmWebSocketClient.btnCoinbaseCancelAllOrdersClick(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.CancelAllOrders);
end;

procedure TfrmWebSocketClient.btnCoinbaseExchangeLimitsClick(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.GetCurrentExchangeLimits);
end;

procedure TfrmWebSocketClient.btnCoinbaseGet24hrStatsClick(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.Get24hrStats(txtCoinbaseProductId.Text));
end;

procedure TfrmWebSocketClient.btnCoinbaseGetCurrenciesClick(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.GetCurrencies);
end;

procedure TfrmWebSocketClient.btnCoinbaseGetHistoricClick(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.GetHistoricRates(txtCoinbaseProductId.Text));
end;

procedure TfrmWebSocketClient.btnCoinbaseGetOrderBookClick(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.GetProductOrderBook(txtCoinbaseProductId.Text));
end;

procedure TfrmWebSocketClient.btnCoinbaseGetProductClick(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.GetSingleProduct(txtCoinbaseProductId.Text));
end;

procedure TfrmWebSocketClient.btnCoinbaseListOrdersClick(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.ListOrders);
end;

procedure TfrmWebSocketClient.btnCoinbaseGetProductsClick(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.GetProducts);
end;

procedure TfrmWebSocketClient.btnCoinbaseGetTickerClick(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.GetProductTicker(txtCoinbaseProductId.Text));
end;

procedure TfrmWebSocketClient.btnCoinbaseGetTradesClick(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.GetTrades(txtCoinbaseProductId.Text));
end;

procedure TfrmWebSocketClient.btnCoinbaseLimitOrderClick(Sender: TObject);
var
  vSide: TsgcHTTPCoinbaseOrderSide;
  vFS: TFormatSettings;
begin
  vFS.DecimalSeparator := '.';
  vFS.ThousandSeparator := ',';

  if cboCoinbaseLimitOrderSide.itemIndex = 0 then
    vSide := coisBuy
  else
    vSide := coisSell;

  DoLog(COINBASE.REST_API.PlaceLimitOrder(vSide, txtCoinbaseProductId.Text,
    StrToFloat(txtCoinbaseLimitOrderAmount.Text, vFS),
    StrToFloat(txtCoinbaseLimitOrderPrice.Text, vFS)));
end;

procedure TfrmWebSocketClient.btnCoinbaseListCoinbaseAccountsClick
  (Sender: TObject);
begin
  DoLog(COINBASE.REST_API.CoinbaseListAccounts);
end;

procedure TfrmWebSocketClient.btnCoinbaseListDepositsClick(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.ListDeposits);
end;

procedure TfrmWebSocketClient.btnCoinbaseListFillsClick(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.GetFillsByProductId(txtCoinbaseProductId.Text));
end;

procedure TfrmWebSocketClient.btnCoinbaseListPaymentsClick(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.ListPaymentMethods);
end;

procedure TfrmWebSocketClient.btnCoinbaseListWithdrawalsClick(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.ListWithdrawals);
end;

procedure TfrmWebSocketClient.btnCoinbaseMarketOrderClick(Sender: TObject);
var
  vSide: TsgcHTTPCoinbaseOrderSide;
  vFS: TFormatSettings;
begin
  vFS.DecimalSeparator := '.';
  vFS.ThousandSeparator := ',';

  if cboCoinbaseMarketOrderSide.itemIndex = 0 then
    vSide := coisBuy
  else
    vSide := coisSell;

  DoLog(COINBASE.REST_API.PlaceMarketOrder(vSide, txtCoinbaseProductId.Text,
    StrToFloat(txtCoinbaseMarketOrderAmount.Text, vFS)));
end;

procedure TfrmWebSocketClient.btnCoinbaseRestListAccountsClick(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.ListAccounts);
end;

procedure TfrmWebSocketClient.btnCoinbaseSubscribeFullClick(Sender: TObject);
begin
  COINBASE.SubscribeFull(txtCoinbaseProductId.Text);
end;

procedure TfrmWebSocketClient.btnCoinbaseSubscribeHeartBeatClick
  (Sender: TObject);
begin
  COINBASE.SubscribeHeartBeat(txtCoinbaseProductId.Text);
end;

procedure TfrmWebSocketClient.btnCoinbaseSubscribeLevel2Click(Sender: TObject);
begin
  COINBASE.SubscribeLevel2(txtCoinbaseProductId.Text);
end;

procedure TfrmWebSocketClient.btnCoinbaseSubscribeMatchesClick(Sender: TObject);
begin
  COINBASE.SubscribeMatches(txtCoinbaseProductId.Text);
end;

procedure TfrmWebSocketClient.btnCoinbaseSubscribeStatusClick(Sender: TObject);
begin
  COINBASE.SubscribeStatus;
end;

procedure TfrmWebSocketClient.btnCoinbaseSubscribeTickerClick(Sender: TObject);
begin
  COINBASE.SubscribeTicker(txtCoinbaseProductId.Text);
end;

procedure TfrmWebSocketClient.btnCoinbaseUnSubscribeFullClick(Sender: TObject);
begin
  COINBASE.UnSubscribeFull(txtCoinbaseProductId.Text);
end;

procedure TfrmWebSocketClient.btnCoinbaseUnSubscribeHeartBeatClick
  (Sender: TObject);
begin
  COINBASE.UnSubscribeHeartBeat(txtCoinbaseProductId.Text);
end;

procedure TfrmWebSocketClient.btnCoinbaseUnSubscribeLevel2Click
  (Sender: TObject);
begin
  COINBASE.UnSubscribeLevel2(txtCoinbaseProductId.Text);
end;

procedure TfrmWebSocketClient.btnCoinbaseUnSubscribeMatchesClick
  (Sender: TObject);
begin
  COINBASE.UnSubscribeMatches(txtCoinbaseProductId.Text);
end;

procedure TfrmWebSocketClient.btnCoinbaseUnSubscribeStatusClick
  (Sender: TObject);
begin
  COINBASE.UnSubscribeStatus;
end;

procedure TfrmWebSocketClient.btnCoinbaseUnSubscribeTickerClick
  (Sender: TObject);
begin
  COINBASE.UnSubscribeTicker(txtCoinbaseProductId.Text);
end;

procedure TfrmWebSocketClient.btnCoinbaseSubscribeUserClick(Sender: TObject);
begin
  COINBASE.SubscribeUser(txtCoinbaseProductId.Text);
end;

procedure TfrmWebSocketClient.btnCoinbaseUnSubscribeUserClick(Sender: TObject);
begin
  COINBASE.UnSubscribeUser(txtCoinbaseProductId.Text);
end;

procedure TfrmWebSocketClient.btnFTXGetAccountClick(Sender: TObject);
begin
  DoLog(FTX.REST_API.GetAccount);
end;

procedure TfrmWebSocketClient.btnFTXGetFutureClick(Sender: TObject);
begin
  DoLog(FTX.REST_API.GetFuture(txtFTXMarket.Text));
end;

procedure TfrmWebSocketClient.btnFTXGetFutureStatsClick(Sender: TObject);
begin
  DoLog(FTX.REST_API.GetFutureStats(txtFTXMarket.Text));
end;

procedure TfrmWebSocketClient.btnFTXGetHistoricalPricesClick(Sender: TObject);
begin
  DoLog(FTX.REST_API.GetHistoricalPrices(txtFTXMarket.Text));
end;

procedure TfrmWebSocketClient.btnFTXGetMarketClick(Sender: TObject);
begin
  DoLog(FTX.REST_API.GetMarket(txtFTXMarket.Text));
end;

procedure TfrmWebSocketClient.btnFTXGetOrderbookClick(Sender: TObject);
begin
  DoLog(FTX.REST_API.GetOrderBook(txtFTXMarket.Text));
end;

procedure TfrmWebSocketClient.btnFTXSubscribeFillsClick(Sender: TObject);
begin
  FTX.SubscribeFills;
end;

procedure TfrmWebSocketClient.btnFTXSubscribeGroupedOrderbookClick
  (Sender: TObject);
begin
  FTX.SubscribeGroupedOrderbooks(txtFTXMarket.Text);
end;

procedure TfrmWebSocketClient.btnFTXSubscribeMarketsClick(Sender: TObject);
begin
  FTX.SubscribeMarkets;
end;

procedure TfrmWebSocketClient.btnFTXSubscribeOrderbookClick(Sender: TObject);
begin
  FTX.SubscribeOrderbooks(txtFTXMarket.Text);
end;

procedure TfrmWebSocketClient.btnFTXSubscribeOrdersClick(Sender: TObject);
begin
  FTX.SubscribeOrders;
end;

procedure TfrmWebSocketClient.btnFTXSubscribeTickerClick(Sender: TObject);
begin
  FTX.SubscribeTicker(txtFTXMarket.Text);
end;

procedure TfrmWebSocketClient.btnFTXSubscribeTradesClick(Sender: TObject);
begin
  FTX.SubscribeTrades(txtFTXMarket.Text);
end;

procedure TfrmWebSocketClient.btnFTXUnSubscribeFillsClick(Sender: TObject);
begin
  FTX.UnSubscribeFills;
end;

procedure TfrmWebSocketClient.btnFTXUnSubscribeGroupedOrderbookClick
  (Sender: TObject);
begin
  FTX.UnSubscribeGroupedOrderbooks(txtFTXMarket.Text);
end;

procedure TfrmWebSocketClient.btnFTXUnSubscribeMarketsClick(Sender: TObject);
begin
  FTX.UnSubscribeMarkets;
end;

procedure TfrmWebSocketClient.btnFTXUnSubscribeOrderbookClick(Sender: TObject);
begin
  FTX.UnSubscribeOrderbooks(txtFTXMarket.Text);
end;

procedure TfrmWebSocketClient.btnFTXUnSubscribeOrdersClick(Sender: TObject);
begin
  FTX.UnSubscribeOrders;
end;

procedure TfrmWebSocketClient.btnFTXUnSubscribeTickerClick(Sender: TObject);
begin
  FTX.UnSubscribeTicker(txtFTXMarket.Text);
end;

procedure TfrmWebSocketClient.btnFTXUnSubscribeTradesClick(Sender: TObject);
begin
  FTX.UnSubscribeTrades(txtFTXMarket.Text);
end;

procedure TfrmWebSocketClient.btnKrakenFuturesMarketOrderClick(Sender: TObject);
var
  vSide: TsgcHTTPKrakenFuturesOrderSide;
begin
  if cboKrakenFuturesMarketOrderSide.itemIndex = 0 then
    vSide := kosfBuy
  else
    vSide := kosfSell;

  DoLog(KRAKEN_FUTURES.REST_API.SendMarketOrder(vSide, txtKrakenRESTPair.Text,
    StrToInt(txtKrakenFuturesMarketOrderSize.Text)));
end;

procedure TfrmWebSocketClient.btnKrakenFuturesRestPrivateCancelAllOrdersClick
  (Sender: TObject);
begin
  DoLog(KRAKEN_FUTURES.REST_API.CancelAllOrders(txtKrakenRESTPair.Text));
end;

procedure TfrmWebSocketClient.btnKrakenFuturesRestPrivateGetAccountsClick
  (Sender: TObject);
begin
  DoLog(KRAKEN_FUTURES.REST_API.GetAccounts);
end;

procedure TfrmWebSocketClient.btnKrakenFuturesRestPrivateGetFillsClick
  (Sender: TObject);
begin
  DoLog(KRAKEN_FUTURES.REST_API.GetFills);
end;

procedure TfrmWebSocketClient.
  btnKrakenFuturesRestPrivateGetHistoricalExecutionsClick(Sender: TObject);
begin
  DoLog(KRAKEN_FUTURES.REST_API.GetHistoricalExecutions(IncDay(Now, -30)));
end;

procedure TfrmWebSocketClient.
  btnKrakenFuturesRestPrivateGetHistoricalOrdersClick(Sender: TObject);
begin
  DoLog(KRAKEN_FUTURES.REST_API.GetHistoricalOrders(IncDay(Now, -30)));
end;

procedure TfrmWebSocketClient.
  btnKrakenFuturesRestPrivateGetHistoricalTriggersClick(Sender: TObject);
begin
  DoLog(KRAKEN_FUTURES.REST_API.GetHistoricalTriggers(IncDay(Now, -30)));
end;

procedure TfrmWebSocketClient.btnKrakenFuturesRestPrivateGetNotificationsClick
  (Sender: TObject);
begin
  DoLog(KRAKEN_FUTURES.REST_API.GetNotifications);
end;

procedure TfrmWebSocketClient.btnKrakenFuturesRestPrivateGetOpenOrdersClick
  (Sender: TObject);
begin
  DoLog(KRAKEN_FUTURES.REST_API.GetOpenOrders);
end;

procedure TfrmWebSocketClient.btnKrakenFuturesRestPrivateGetOpenPositionsClick
  (Sender: TObject);
begin
  DoLog(KRAKEN_FUTURES.REST_API.GetOpenPositions);
end;

procedure TfrmWebSocketClient.btnKrakenFuturesRestPublicGetFeeSchedulesClick
  (Sender: TObject);
begin
  DoLog(KRAKEN_FUTURES.REST_API.GetFeeSchedules);
end;

procedure TfrmWebSocketClient.btnKrakenFuturesRestPublicGetHistoryClick
  (Sender: TObject);
begin
  DoLog(KRAKEN_FUTURES.REST_API.GetHistory(txtKrakenRESTPair.Text));
end;

procedure TfrmWebSocketClient.btnKrakenFuturesRestPublicGetInstrumentsClick
  (Sender: TObject);
begin
  DoLog(KRAKEN_FUTURES.REST_API.GetInstruments);
end;

procedure TfrmWebSocketClient.btnKrakenFuturesRestPublicGetOrderBookClick
  (Sender: TObject);
begin
  DoLog(KRAKEN_FUTURES.REST_API.GetOrderBook(txtKrakenRESTPair.Text));
end;

procedure TfrmWebSocketClient.btnKrakenFuturesRestPublicGetTickersClick
  (Sender: TObject);
begin
  DoLog(KRAKEN_FUTURES.REST_API.GetTickers);
end;

procedure TfrmWebSocketClient.btnKrakenFuturesSubscribeAccountBalanceClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.SubscribeAccountBalanceAndMargins;
end;

procedure TfrmWebSocketClient.btnKrakenFuturesSubscribeAccountLogClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.SubscribeAccountLog;
end;

procedure TfrmWebSocketClient.btnKrakenFuturesSubscribeBookClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.SubscribeBook([txtKrakenPair.Text]);
end;

procedure TfrmWebSocketClient.btnKrakenFuturesSubscribeFillsClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.SubscribeFills;
end;

procedure TfrmWebSocketClient.btnKrakenFuturesSubscribeHeartbeatClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.SubscribeHeartBeat;
end;

procedure TfrmWebSocketClient.btnKrakenFuturesSubscribeNotificationsClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.SubscribeNotifications;
end;

procedure TfrmWebSocketClient.btnKrakenFuturesSubscribeOpenOrdersClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.SubscribeOpenOrders;
end;

procedure TfrmWebSocketClient.btnKrakenFuturesSubscribeOpenOrdersVerboseClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.SubscribeOpenOrdersVerbose;
end;

procedure TfrmWebSocketClient.btnKrakenFuturesSubscribeOpenPositionsClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.SubscribeOpenPositions;
end;

procedure TfrmWebSocketClient.btnKrakenFuturesSubscribeTickerClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.SubscribeTicker([txtKrakenPair.Text]);
end;

procedure TfrmWebSocketClient.btnKrakenFuturesSubscribeTickerLiteClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.SubscribeTickerLite([txtKrakenPair.Text]);
end;

procedure TfrmWebSocketClient.btnKrakenFuturesSubscribeTradeClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.SubscribeTrade([txtKrakenPair.Text]);
end;

procedure TfrmWebSocketClient.btnKrakenFuturesUnSubscribeAccountBalanceClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.UnSubscribeAccountBalanceAndMargins;
end;

procedure TfrmWebSocketClient.btnKrakenFuturesUnSubscribeAccountLogClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.UnSubscribeAccountLog;
end;

procedure TfrmWebSocketClient.btnKrakenFuturesUnSubscribeBookClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.UnSubscribeBook([txtKrakenPair.Text]);
end;

procedure TfrmWebSocketClient.btnKrakenFuturesUnSubscribeFillsClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.UnSubscribeFills;
end;

procedure TfrmWebSocketClient.btnKrakenFuturesUnSubscribeHeartbeatClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.UnSubscribeHeartBeat;
end;

procedure TfrmWebSocketClient.btnKrakenFuturesUnSubscribeNotificationsClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.UnSubscribeNotifications;
end;

procedure TfrmWebSocketClient.btnKrakenFuturesUnSubscribeOpenOrdersClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.UnSubscribeOpenOrders;
end;

procedure TfrmWebSocketClient.btnKrakenFuturesUnSubscribeOpenOrdersVerboseClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.UnSubscribeOpenOrdersVerbose;
end;

procedure TfrmWebSocketClient.btnKrakenFuturesUnSubscribeOpenPositionsClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.UnSubscribeOpenPositions;
end;

procedure TfrmWebSocketClient.btnKrakenFuturesUnSubscribeTickerClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.UnSubscribeTicker([txtKrakenPair.Text]);
end;

procedure TfrmWebSocketClient.btnKrakenFuturesUnSubscribeTickerLiteClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.UnSubscribeTickerLite([txtKrakenPair.Text]);
end;

procedure TfrmWebSocketClient.btnKrakenFuturesUnSubscribeTradeClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.UnSubscribeTrade([txtKrakenPair.Text]);
end;

procedure TfrmWebSocketClient.btnKrakenSubscribeSpreadClick(Sender: TObject);
begin
  KRAKEN.SubscribeSpread([txtKrakenPair.Text]);
end;

procedure TfrmWebSocketClient.Button16Click(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.GetTime);
end;

procedure TfrmWebSocketClient.btnKrakenFuturesLimitOrderClick(Sender: TObject);
var
  vSide: TsgcHTTPKrakenFuturesOrderSide;
  vFS: TFormatSettings;
begin
  vFS.DecimalSeparator := '.';
  vFS.ThousandSeparator := ',';

  if cboKrakenFuturesLimitOrderSide.itemIndex = 0 then
    vSide := kosfBuy
  else
    vSide := kosfSell;

  DoLog(KRAKEN_FUTURES.REST_API.SendLimitOrder(vSide, txtKrakenRESTPair.Text,
    StrToInt(txtKrakenFuturesLimitOrderSize.Text),
    StrToFloat(txtKrakenFuturesLimitOrderPrice.Text, vFS)));
end;

procedure TfrmWebSocketClient.btnFTXGetPositionsClick(Sender: TObject);
begin
  DoLog(FTX.REST_API.GetPositions);
end;

procedure TfrmWebSocketClient.btnFTXGetTradesClick(Sender: TObject);
begin
  DoLog(FTX.REST_API.GetTrades(txtFTXMarket.Text));
end;

procedure TfrmWebSocketClient.btnFTXGetExpiredFuturesClick(Sender: TObject);
begin
  DoLog(FTX.REST_API.GetExpiredFutures);
end;

procedure TfrmWebSocketClient.btnFTXGetHistoricalIndexClick(Sender: TObject);
begin
  DoLog(FTX.REST_API.GetHistoricalIndex(txtFTXMarket.Text));
end;

procedure TfrmWebSocketClient.Button41Click(Sender: TObject);
begin
  DoLog(FTX.REST_API.GetFills(txtFTXMarket.Text));
end;

procedure TfrmWebSocketClient.btnFTXGetOpenOrdersClick(Sender: TObject);
begin
  DoLog(FTX.REST_API.GetOpenOrders(txtFTXMarket.Text));
end;

procedure TfrmWebSocketClient.btnFTXGetTriggerOrderHistoryClick
  (Sender: TObject);
begin
  DoLog(FTX.REST_API.GetTriggerOrderHistory(txtFTXMarket.Text));
end;

procedure TfrmWebSocketClient.btnFTXGetOrderHistoryClick(Sender: TObject);
begin
  DoLog(FTX.REST_API.GetOrderHistory(txtFTXMarket.Text));
end;

procedure TfrmWebSocketClient.btnKucoinFutGetAccountOverviewClick
  (Sender: TObject);
begin
  DoLog(KUCOINFUT.REST_API.GetAccountOverview);
end;

procedure TfrmWebSocketClient.btnKucoinFutGetOpenContractListClick
  (Sender: TObject);
begin
  DoLog(KUCOINFUT.REST_API.GetOpenContractList);
end;

procedure TfrmWebSocketClient.btnKucoinFutGetOrderInfoContractClick
  (Sender: TObject);
begin
  DoLog(KUCOINFUT.REST_API.GetOrderInfoContract(txtKucoinSymbol.Text));
end;

procedure TfrmWebSocketClient.btnKucoinFutGetPartOrderBook20Click
  (Sender: TObject);
begin
  DoLog(KUCOINFUT.REST_API.GetPartOrderBook20(txtKucoinSymbol.Text));
end;

procedure TfrmWebSocketClient.btnKucoinFutGetTickerClick(Sender: TObject);
begin
  DoLog(KUCOINFUT.REST_API.GetTicker(txtKucoinSymbol.Text));
end;

procedure TfrmWebSocketClient.btnKucoinFutGetTradeHistoryClick(Sender: TObject);
begin
  DoLog(KUCOINFUT.REST_API.GetTradeHistory(txtKucoinSymbol.Text));
end;

procedure TfrmWebSocketClient.btnKucoinFutGetTransactionHistoryClick
  (Sender: TObject);
begin
  DoLog(KUCOINFUT.REST_API.GetTransactionHistory);
end;

procedure TfrmWebSocketClient.btnKucoinFutServiceStatusClick(Sender: TObject);
begin
  DoLog(KUCOINFUT.REST_API.GetServiceStatus);
end;

procedure TfrmWebSocketClient.btnKucoinFutSubscribeAccountBalanceClick
  (Sender: TObject);
begin
  KUCOINFUT.SubscribeAccountBalance(True);
end;

procedure TfrmWebSocketClient.btnKucoinFutSubscribeExecutionDataClick
  (Sender: TObject);
begin
  KUCOINFUT.SubscribeExecutionData(txtKucoinSymbol.Text);
end;

procedure TfrmWebSocketClient.btnKucoinFutSubscribeLevel2MarketDataClick
  (Sender: TObject);
begin
  KUCOINFUT.SubscribeLevel2MarketData(txtKucoinSymbol.Text);
end;

procedure TfrmWebSocketClient.btnKucoinFutSubscribePositionChangeClick
  (Sender: TObject);
begin
  KUCOINFUT.SubscribePositionChange(txtKucoinSymbol.Text, True);
end;

procedure TfrmWebSocketClient.btnKucoinFutSubscribeSymbolTickerClick
  (Sender: TObject);
begin
  KUCOINFUT.SubscribeSymbolTickerV2(txtKucoinSymbol.Text);
end;

procedure TfrmWebSocketClient.btnKucoinFutSubscribeTradeOrdersClick
  (Sender: TObject);
begin
  KUCOINFUT.SubscribeTradeOrders(True);
end;

procedure TfrmWebSocketClient.btnKucoinFutUnSubscribeAccountBalanceClick
  (Sender: TObject);
begin
  KUCOINFUT.UnSubscribeAccountBalance(True);
end;

procedure TfrmWebSocketClient.btnKucoinFutUnSubscribeExecutionDataClick
  (Sender: TObject);
begin
  KUCOINFUT.UnSubscribeExecutionData(txtKucoinSymbol.Text);
end;

procedure TfrmWebSocketClient.btnKucoinFutUnSubscribeLevel2MarketDataClick
  (Sender: TObject);
begin
  KUCOINFUT.UnSubscribeLevel2MarketData(txtKucoinSymbol.Text);
end;

procedure TfrmWebSocketClient.btnKucoinFutUnSubscribePositionChangeClick
  (Sender: TObject);
begin
  KUCOINFUT.UnSubscribePositionChange(txtKucoinSymbol.Text, True);
end;

procedure TfrmWebSocketClient.btnKucoinFutUnSubscribeSymbolTickerClick
  (Sender: TObject);
begin
  KUCOINFUT.UnSubscribeSymbolTickerV2(txtKucoinSymbol.Text);
end;

procedure TfrmWebSocketClient.btnKucoinFutUnSubscribeTradeOrdersClick
  (Sender: TObject);
begin
  KUCOINFUT.UnSubscribeTradeOrders(True);
end;

procedure TfrmWebSocketClient.btnKucoinFuturesCancelAllOrdersClick
  (Sender: TObject);
begin
  DoLog(KUCOINFUT.REST_API.StopOrderMassCancellation(txtKucoinSymbol.Text));
  DoLog(KUCOINFUT.REST_API.LimitOrderMassCancellation(txtKucoinSymbol.Text));
end;

procedure TfrmWebSocketClient.btnKucoinFuturesLimitOrderClick(Sender: TObject);
var
  vSide: TsgcHTTPKucoinOrderSide;
begin
  if cboKucoinFuturesMarketOrderSide.itemIndex = 0 then
    vSide := kosBuy
  else
    vSide := kosSell;

  DoLog(KUCOINFUT.REST_API.PlaceMarketOrder(vSide, txtKucoinSymbol.Text,
    StrToInt(txtKucoinFuturesMarketSize.Text)));
end;

procedure TfrmWebSocketClient.btnKucoinFuturesMarketOrderClick(Sender: TObject);
var
  vSide: TsgcHTTPKucoinOrderSide;
  vFS: TFormatSettings;
begin
  vFS.DecimalSeparator := '.';
  vFS.ThousandSeparator := ',';

  if cboKucoinFuturesLimitOrderSide.itemIndex = 0 then
    vSide := kosBuy
  else
    vSide := kosSell;

  DoLog(KUCOINFUT.REST_API.PlaceLimitOrder(vSide, txtKucoinSymbol.Text,
    StrToInt(txtKucoinFuturesLimitSize.Text),
    StrToFloat(txtKucoinFuturesLimitPrice.Text, vFS)));
end;

procedure TfrmWebSocketClient.btnKucoinGet24hrStatsClick(Sender: TObject);
begin
  DoLog(KUCOIN.REST_API.Get24hrStats(txtKucoinSymbol.Text));
end;

procedure TfrmWebSocketClient.btnKucoinGetAllSubaccountsClick(Sender: TObject);
begin
  DoLog(KUCOIN.REST_API.GetAllSubAccounts);
end;

procedure TfrmWebSocketClient.btnKucoinGetRecentOrdersClick(Sender: TObject);
begin
  DoLog(KUCOIN.REST_API.GetRecentOrders);
end;

procedure TfrmWebSocketClient.btnKucoinGetTickerClick(Sender: TObject);
begin
  DoLog(KUCOIN.REST_API.GetTicker(txtKucoinSymbol.Text));
end;

procedure TfrmWebSocketClient.btnKucoinListAccountsClick(Sender: TObject);
begin
  DoLog(KUCOIN.REST_API.GetListAccounts);
end;

procedure TfrmWebSocketClient.btnKucoinListOrdersClick(Sender: TObject);
begin
  DoLog(KUCOIN.REST_API.ListOrders());
end;

procedure TfrmWebSocketClient.btnKucoinServerTimeClick(Sender: TObject);
begin
  DoLog(KUCOIN.REST_API.GetServerTime);
end;

procedure TfrmWebSocketClient.btnKucoinServiceStatusClick(Sender: TObject);
begin
  DoLog(KUCOIN.REST_API.GetServiceStatus);
end;

procedure TfrmWebSocketClient.btnKucoinStockCancelAllOrdersClick
  (Sender: TObject);
begin
  DoLog(KUCOIN.REST_API.CancelAllOrders(txtKucoinSymbol.Text));
end;

procedure TfrmWebSocketClient.btnKucoinStockLimitOrderClick(Sender: TObject);
var
  vSide: TsgcHTTPKucoinOrderSide;
  vFS: TFormatSettings;
begin
  vFS.DecimalSeparator := '.';
  vFS.ThousandSeparator := ',';

  if cboKucoinStockLimitOrderSide.itemIndex = 0 then
    vSide := kosBuy
  else
    vSide := kosSell;

  DoLog(KUCOIN.REST_API.PlaceLimitOrder(vSide, txtKucoinSymbol.Text,
    StrToFloat(txtKucoinStockLimitSize.Text, vFS),
    StrToFloat(txtKucoinStockLimitPrice.Text, vFS)));
end;

procedure TfrmWebSocketClient.btnKucoinStockMarketOrderClick(Sender: TObject);
var
  vSide: TsgcHTTPKucoinOrderSide;
  vFS: TFormatSettings;
begin
  vFS.DecimalSeparator := '.';
  vFS.ThousandSeparator := ',';

  if cboKucoinStockMarketOrderSide.itemIndex = 0 then
    vSide := kosBuy
  else
    vSide := kosSell;

  DoLog(KUCOIN.REST_API.PlaceMarketOrder(vSide, txtKucoinSymbol.Text,
    StrToFloat(txtKucoinStockMarketSize.Text, vFS)));
end;

procedure TfrmWebSocketClient.btnKucoinSubscribeAccountBalanceClick
  (Sender: TObject);
begin
  KUCOIN.SubscribeAccountBalance(True);
end;

procedure TfrmWebSocketClient.btnKucoinSubscribeLevel2MarketDataClick
  (Sender: TObject);
begin
  KUCOIN.SubscribeLevel2MarketData(txtKucoinSymbol.Text);
end;

procedure TfrmWebSocketClient.btnKucoinSubscribePositionStatusClick
  (Sender: TObject);
begin
  KUCOIN.SubscribePositionStatus(True);
end;

procedure TfrmWebSocketClient.btnKucoinSubscribeSymbolSnapshotClick
  (Sender: TObject);
begin
  KUCOIN.SubscribeSymbolSnapshot(txtKucoinSymbol.Text);
end;

procedure TfrmWebSocketClient.btnKucoinSubscribeSymbolTickerClick
  (Sender: TObject);
begin
  KUCOIN.SubscribeSymbolTicker(txtKucoinSymbol.Text);
end;

procedure TfrmWebSocketClient.btnKucoinSubscribeTradeOrdersClick
  (Sender: TObject);
begin
  KUCOIN.SubscribeTradeOrders(True);
end;

procedure TfrmWebSocketClient.btnKucoinUnSubscribeAccountBalanceClick
  (Sender: TObject);
begin
  KUCOIN.UnSubscribeAccountBalance(True);
end;

procedure TfrmWebSocketClient.btnKucoinUnSubscribeLevel2MarketDataClick
  (Sender: TObject);
begin
  KUCOIN.UnSubscribeLevel2MarketData(txtKucoinSymbol.Text);
end;

procedure TfrmWebSocketClient.btnKucoinUnSubscribePositionStatusClick
  (Sender: TObject);
begin
  KUCOIN.UnSubscribePositionStatus(True);
end;

procedure TfrmWebSocketClient.btnKucoinUnSubscribeSymbolSnapshotClick
  (Sender: TObject);
begin
  KUCOIN.UnSubscribeSymbolSnapshot(txtKucoinSymbol.Text);
end;

procedure TfrmWebSocketClient.btnKucoinUnSubscribeSymbolTickerClick
  (Sender: TObject);
begin
  KUCOIN.UnSubscribeSymbolTicker(txtKucoinSymbol.Text);
end;

procedure TfrmWebSocketClient.btnKucoinUnSubscribeTradeOrdersClick
  (Sender: TObject);
begin
  KUCOIN.UnSubscribeTradeOrders(True);
end;

procedure TfrmWebSocketClient.btnOkxSubscribeAccountClick(Sender: TObject);
begin
  OKX.SubscribeAccount;
end;

procedure TfrmWebSocketClient.btnThreeComasSubscribeDealsClick(Sender: TObject);
begin
  THREE_COMMAS.SubscribeDeals;
end;

procedure TfrmWebSocketClient.btnThreeComasSubscribeSmartTradesClick
  (Sender: TObject);
begin
  THREE_COMMAS.SubscribeSmartTrades;
end;

procedure TfrmWebSocketClient.btnThreeCommasGetAccountInfoClick
  (Sender: TObject);
begin
  DoLog(THREE_COMMAS.REST_API.GetAccountInfo
    (StrToInt(txtThreeCommasAccountId.Text)));
end;

procedure TfrmWebSocketClient.btnThreeCommasGetAccountsClick(Sender: TObject);
begin
  DoLog(THREE_COMMAS.REST_API.GetAccounts);
end;

procedure TfrmWebSocketClient.btnThreeCommasGetAccountTableDataClick
  (Sender: TObject);
begin
  DoLog(THREE_COMMAS.REST_API.GetAccountTableData
    (StrToInt(txtThreeCommasAccountId.Text)));
end;

procedure TfrmWebSocketClient.btnThreeCommasGetBalancesClick(Sender: TObject);
begin
  DoLog(THREE_COMMAS.REST_API.GetBalances
    (StrToInt(txtThreeCommasAccountId.Text)));
end;

procedure TfrmWebSocketClient.btnThreeCommasGetMarketListClick(Sender: TObject);
begin
  DoLog(THREE_COMMAS.REST_API.GetMarketList);
end;

procedure TfrmWebSocketClient.btnThreeCommasMarketOrderClick(Sender: TObject);
var
  vSide: TsgcHTTPThreeCommasOrderSide;
  vFS: TFormatSettings;
begin
  vFS.DecimalSeparator := '.';
  vFS.ThousandSeparator := ',';

  if cboFTXMarketSide.itemIndex = 0 then
    vSide := os3cBuy
  else
    vSide := os3cSell;

  DoLog(THREE_COMMAS.REST_API.PlaceMarketOrder
    (StrToInt(txtThreeCommasAccountId.Text), vSide, txtThreeCommasPair.Text,
    StrToFloat(txtThreeCommasMarketSize.Text, vFS)));
end;

procedure TfrmWebSocketClient.btnThreeCommasLimitOrderClick(Sender: TObject);
var
  vSide: TsgcHTTPThreeCommasOrderSide;
  vFS: TFormatSettings;
begin
  vFS.DecimalSeparator := '.';
  vFS.ThousandSeparator := ',';

  if cboFTXMarketSide.itemIndex = 0 then
    vSide := os3cBuy
  else
    vSide := os3cSell;

  DoLog(THREE_COMMAS.REST_API.PlaceLimitOrder
    (StrToInt(txtThreeCommasAccountId.Text), vSide, txtThreeCommasPair.Text,
    StrToFloat(txtThreeCommasLimitSize.Text, vFS),
    StrToFloat(txtThreeCommasLimitPrice.Text, vFS)));
end;

procedure TfrmWebSocketClient.btnOkxSubscribeInstrumentsClick(Sender: TObject);
begin
  OKX.SubscribeInstruments;
end;

procedure TfrmWebSocketClient.btnOkxSubscribeTickerClick(Sender: TObject);
begin
  OKX.SubscribeTicker(txtOkxInstId.Text);
end;

procedure TfrmWebSocketClient.btnOkxUnSubscribeInstrumentsClick
  (Sender: TObject);
begin
  OKX.UnSubscribeInstruments;
end;

procedure TfrmWebSocketClient.btnOkxUnSubscribeTickerClick(Sender: TObject);
begin
  OKX.UnSubscribeTicker(txtOkxInstId.Text);
end;

procedure TfrmWebSocketClient.btnOkxUnSubscribeCandlesticksClick
  (Sender: TObject);
begin
  OKX.UnSubscribeCandlestick(txtOkxInstId.Text);
end;

procedure TfrmWebSocketClient.btnOkxSubscribeCandlesticksClick(Sender: TObject);
begin
  OKX.SubscribeCandlestick(txtOkxInstId.Text);
end;

procedure TfrmWebSocketClient.btnOkxSubscribeTradeOrdersClick(Sender: TObject);
begin
  OKX.SubscribeTrades(txtOkxInstId.Text);
end;

procedure TfrmWebSocketClient.btnOkxUnSubscribeTradeOrdersClick
  (Sender: TObject);
begin
  OKX.UnSubscribeTrades(txtOkxInstId.Text);
end;

procedure TfrmWebSocketClient.btnOkxUnSubscribeOrderBookClick(Sender: TObject);
begin
  OKX.UnSubscribeOrderBook(txtOkxInstId.Text);
end;

procedure TfrmWebSocketClient.btnOkxSubscribeOrderBookClick(Sender: TObject);
begin
  OKX.SubscribeOrderBook(txtOkxInstId.Text);
end;

procedure TfrmWebSocketClient.btnOkxSubscribeOrdersClick(Sender: TObject);
begin
  OKX.SubscribeOrders;
end;

procedure TfrmWebSocketClient.btnOkxSubscribeStatusClick(Sender: TObject);
begin
  OKX.SubscribeStatus;
end;

procedure TfrmWebSocketClient.btnOkxUnSubscribeAccountClick(Sender: TObject);
begin
  OKX.UnSubscribeAccount;
end;

procedure TfrmWebSocketClient.btnOkxUnSubscribeOrdersClick(Sender: TObject);
begin
  OKX.UnSubscribeOrders;
end;

procedure TfrmWebSocketClient.btnOkxUnSubscribeStatusClick(Sender: TObject);
begin
  OKX.UnSubscribeStatus;
end;

procedure TfrmWebSocketClient.btnSubscribeTradesClick(Sender: TObject);
begin
  XTB.SubscribeTrades;
end;

procedure TfrmWebSocketClient.btnUnsubscribeTradesClick(Sender: TObject);
begin
  XTB.UnSubscribeTrades;
end;

procedure TfrmWebSocketClient.btnXTBGetAllSymbolsClick(Sender: TObject);
begin
  XTB.GetAllSymbols;
end;

procedure TfrmWebSocketClient.btnXTBGetCurrentUserDataClick(Sender: TObject);
begin
  XTB.GetCurrentUserData;
end;

procedure TfrmWebSocketClient.btnXTBGetServerTimeClick(Sender: TObject);
begin
  XTB.GetServerTime;
end;

procedure TfrmWebSocketClient.btnXTBGetSymbolClick(Sender: TObject);
begin
  XTB.GetSymbol(txtXTBSymbol.Text);
end;

procedure TfrmWebSocketClient.btnXTBGetTickPricesClick(Sender: TObject);
begin
  XTB.GetTickPrices(txtXTBSymbol.Text, 0, Trunc(Now));
end;

procedure TfrmWebSocketClient.btnXTBGetTradesClick(Sender: TObject);
begin
  XTB.GetTrades;
end;

procedure TfrmWebSocketClient.btnXTBGetTradingHoursClick(Sender: TObject);
begin
  XTB.GetTradingHours(txtXTBSymbol.Text);
end;

procedure TfrmWebSocketClient.btnXTBGetVersionClick(Sender: TObject);
begin
  XTB.GetVersion;
end;

procedure TfrmWebSocketClient.btnXTBLimitOrderClick(Sender: TObject);
var
  vFS: TFormatSettings;
begin
  vFS.DecimalSeparator := '.';
  vFS.ThousandSeparator := ',';

  case cboXTBMarketSide.itemIndex of
    0:
      XTB.TradeTransaction(xtbcBuyLimit, '', IncDay(Now, 1), 0, 0,
        StrToFloat(txtXTBLimitPrice.Text, vFS), 0, txtXTBSymbol.Text, 0,
        xtbtOpen, StrToFloat(txtXTBLimitSize.Text, vFS));
    1:
      XTB.TradeTransaction(xtbcSellLimit, '', IncDay(Now, 1), 0, 0,
        StrToFloat(txtXTBLimitPrice.Text, vFS), 0, txtXTBSymbol.Text, 0,
        xtbtOpen, StrToFloat(txtXTBLimitSize.Text, vFS));
  end;
end;

procedure TfrmWebSocketClient.btnXTBMarketOrderClick(Sender: TObject);
var
  vFS: TFormatSettings;
begin
  vFS.DecimalSeparator := '.';
  vFS.ThousandSeparator := ',';

  case cboXTBMarketSide.itemIndex of
    0:
      XTB.TradeTransaction(xtbcBuy, '', IncDay(Now, 1), 0, 0,
        StrToFloat(txtXTBLimitPrice.Text, vFS), 0, txtXTBSymbol.Text, 0,
        xtbtOpen, StrToFloat(txtXTBMarketSize.Text, vFS));
    1:
      XTB.TradeTransaction(xtbcSell, '', IncDay(Now, 1), 0, 0,
        StrToFloat(txtXTBLimitPrice.Text, vFS), 0, txtXTBSymbol.Text, 0,
        xtbtOpen, StrToFloat(txtXTBMarketSize.Text, vFS));
  end;
end;

procedure TfrmWebSocketClient.btnXTBSubscribeBalanceClick(Sender: TObject);
begin
  XTB.SubscribeBalance;
end;

procedure TfrmWebSocketClient.btnXTBSubscribeCandlesClick(Sender: TObject);
begin
  XTB.SubscribeCandles(txtXTBSymbol.Text);
end;

procedure TfrmWebSocketClient.btnXTBSubscribeTickPricesClick(Sender: TObject);
begin
  XTB.SubscribeTickPrices(txtXTBSymbol.Text);
end;

procedure TfrmWebSocketClient.btnXTBSubscribeTradeStatusClick(Sender: TObject);
begin
  XTB.SubscribeTradeStatus;
end;

procedure TfrmWebSocketClient.btnXTBUnsubscribeBalanceClick(Sender: TObject);
begin
  XTB.UnSubscribeBalance;
end;

procedure TfrmWebSocketClient.btnXTBUnsubscribeCandlesClick(Sender: TObject);
begin
  XTB.UnsubscribeCandles(txtXTBSymbol.Text);
end;

procedure TfrmWebSocketClient.btnXTBUnsubscribeTickPricesClick(Sender: TObject);
begin
  XTB.UnSubscribeTickPrices(txtXTBSymbol.Text);
end;

procedure TfrmWebSocketClient.btnXTBUnsubscribeTradeStatusClick
  (Sender: TObject);
begin
  XTB.UnSubscribeTradeStatus;
end;

procedure TfrmWebSocketClient.btnBinanceWalletAllCoinsClick(Sender: TObject);
begin
  DoLog(BINANCE.REST_API.GetWalletAllCoinsInformation);
end;

procedure TfrmWebSocketClient.btnBinanceWalletApiKeyPermissionClick(Sender:
    TObject);
begin
  DoLog(BINANCE.REST_API.GetWalletApiKeyPermission);
end;

procedure TfrmWebSocketClient.btnBinanceWalletDailySnapshotClick(Sender:
    TObject);
begin
  DoLog(BINANCE.REST_API.GetWalletDailyAccountSnapshot);
end;

procedure TfrmWebSocketClient.btnBinanceWalletDepositHistoryClick(Sender:
    TObject);
begin
  DoLog(BINANCE.REST_API.GetWalletDepositHistory);
end;

procedure TfrmWebSocketClient.btnBinanceWalletWithdrawClick(Sender: TObject);
var
  vFS: TFormatSettings;
begin
  vFS.DecimalSeparator := '.';
  vFS.ThousandSeparator := ',';

  DoLog(BINANCE.REST_API.WalletWithdraw(txtBinanceWalletCoin.Text, txtBinanceWalletAddress.Text, StrToFloat(txtBinanceWalletAmount.Text, vFS)));
end;

procedure TfrmWebSocketClient.btnBinanceWalletWithdrawHistoryClick(Sender:
    TObject);
begin
  DoLog(BINANCE.REST_API.GetWalletWithdrawHistory);
end;

procedure TfrmWebSocketClient.btnBybitInversePerpetualCancelAllOrdersClick(Sender:
    TObject);
begin
  DoLog(Bybit.INVERSE_PERPETUAL.REST_API.CancelAllActiveOrders(txtBybitSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBybitInversePerpetualGetPositionClick(Sender:
    TObject);
begin
  DoLog(Bybit.INVERSE_PERPETUAL.REST_API.GetMyPosition(txtBybitSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBybitInversePerpetualSubscribeExecutionClick(Sender:
    TObject);
begin
  Bybit.INVERSE_PERPETUAL.SubscribeExecution;
end;

procedure TfrmWebSocketClient.btnBybitInversePerpetualSubscribeInstrumentationClick(
    Sender: TObject);
begin
  Bybit.INVERSE_PERPETUAL.SubscribeInstrumentInfo(txtBybitSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBybitInversePerpetualSubscribeKLineClick(Sender:
    TObject);
begin
  Bybit.INVERSE_PERPETUAL.SubscribeKLine(txtBybitSymbol.Text, bbklfu5min);
end;

procedure TfrmWebSocketClient.btnBybitInversePerpetualSubscribeLiquidationClick(Sender:
    TObject);
begin
  Bybit.INVERSE_PERPETUAL.SubscribeLiquidation(txtBybitSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBybitInversePerpetualSubscribeOrderBookL2_25Click(
    Sender: TObject);
begin
  Bybit.INVERSE_PERPETUAL.SubscribeOrderBookL2_25(txtBybitSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBybitInversePerpetualSubscribePositionClick(Sender:
    TObject);
begin
  Bybit.INVERSE_PERPETUAL.SubscribePosition;
end;

procedure TfrmWebSocketClient.btnBybitInversePerpetualSubscribeTradeClick(Sender:
    TObject);
begin
  Bybit.INVERSE_PERPETUAL.SubscribeTrade(txtBybitSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBybitInversePerpetualUnSubscribeExecutionClick(Sender:
    TObject);
begin
  Bybit.INVERSE_PERPETUAL.UnSubscribeExecution;
end;

procedure TfrmWebSocketClient.btnBybitInversePerpetualUnSubscribeInstrumentationClick(
    Sender: TObject);
begin
  Bybit.INVERSE_PERPETUAL.UnSubscribeInstrumentInfo(txtBybitSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBybitInversePerpetualUnSubscribeKLineClick(Sender:
    TObject);
begin
  Bybit.INVERSE_PERPETUAL.UnSubscribeKLine(txtBybitSymbol.Text, bbklfu5min);
end;

procedure TfrmWebSocketClient.btnBybitInversePerpetualUnSubscribeLiquidationClick(Sender:
    TObject);
begin
  Bybit.INVERSE_PERPETUAL.UnSubscribeLiquidation(txtBybitSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBybitInversePerpetualUnSubscribeOrderBookL2_25Click(
    Sender: TObject);
begin
  Bybit.INVERSE_PERPETUAL.UnSubscribeOrderBookL2_25(txtBybitSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBybitInversePerpetualUnSubscribePositionClick(Sender:
    TObject);
begin
  Bybit.INVERSE_PERPETUAL.UnSubscribePosition;
end;

procedure TfrmWebSocketClient.btnBybitInversePerpetualUnSubscribeTradeClick(Sender:
    TObject);
begin
  Bybit.INVERSE_PERPETUAL.UnSubscribeTrade(txtBybitSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBybitUSDTPerpetualSubscribeExecutionClick(Sender:
    TObject);
begin
  Bybit.USDT_PERPETUAL.SubscribeExecution;
end;

procedure TfrmWebSocketClient.btnBybitUSDTPerpetualSubscribeInstrumentationClick(
    Sender: TObject);
begin
  Bybit.USDT_PERPETUAL.SubscribeInstrumentInfo(txtBybitSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBybitUSDTPerpetualSubscribeKLineClick(Sender:
    TObject);
begin
  Bybit.USDT_PERPETUAL.SubscribeKLine(txtBybitSymbol.Text, bbklfu5min);
end;

procedure TfrmWebSocketClient.btnBybitUSDTPerpetualSubscribeLiquidationClick(Sender:
    TObject);
begin
  Bybit.USDT_PERPETUAL.SubscribeLiquidation(txtBybitSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBybitUSDTPerpetualSubscribeOrderBookL2_25Click(
    Sender: TObject);
begin
  Bybit.USDT_PERPETUAL.SubscribeOrderBookL2_25(txtBybitSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBybitUSDTPerpetualSubscribePositionClick(Sender:
    TObject);
begin
  Bybit.USDT_PERPETUAL.SubscribePosition;
end;

procedure TfrmWebSocketClient.btnBybitUSDTPerpetualSubscribeTradeClick(Sender:
    TObject);
begin
  Bybit.USDT_PERPETUAL.SubscribeTrade(txtBybitSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBybitUSDTPerpetualUnSubscribeExecutionClick(Sender:
    TObject);
begin
  Bybit.USDT_PERPETUAL.UnSubscribeExecution;
end;

procedure TfrmWebSocketClient.btnBybitUSDTPerpetualUnSubscribeInstrumentationClick(
    Sender: TObject);
begin
  Bybit.USDT_PERPETUAL.UnSubscribeInstrumentInfo(txtBybitSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBybitUSDTPerpetualUnSubscribeKLineClick(Sender:
    TObject);
begin
  Bybit.USDT_PERPETUAL.UnSubscribeKLine(txtBybitSymbol.Text, bbklfu5min);
end;

procedure TfrmWebSocketClient.btnBybitUSDTPerpetualUnSubscribeLiquidationClick(Sender:
    TObject);
begin
  Bybit.USDT_PERPETUAL.UnSubscribeLiquidation(txtBybitSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBybitUSDTPerpetualUnSubscribeOrderBookL2_25Click(
    Sender: TObject);
begin
  Bybit.USDT_PERPETUAL.UnSubscribeOrderBookL2_25(txtBybitSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBybitUSDTPerpetualUnSubscribePositionClick(Sender:
    TObject);
begin
  Bybit.USDT_PERPETUAL.UnSubscribePosition;
end;

procedure TfrmWebSocketClient.btnBybitUSDTPerpetualUnSubscribeTradeClick(Sender:
    TObject);
begin
  Bybit.USDT_PERPETUAL.UnSubscribeTrade(txtBybitSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBybitSpotGetAllSymbolsClick(Sender: TObject);
begin
  DoLog(Bybit.SPOT.REST_API.GetAllSymbols);
end;

procedure TfrmWebSocketClient.btnBybitSpotGetLastTradedPriceClick(Sender:
    TObject);
begin
  DoLog(Bybit.SPOT.REST_API.GetLastTradedPrice(txtBybitSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBybitSpotGetLatestInformationClick(Sender:
    TObject);
begin
  DoLog(Bybit.SPOT.REST_API.GetLastestInformationForSymbol(txtBybitSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBybitSpotGetOpenOrdersClick(Sender: TObject);
begin
  DoLog(Bybit.SPOT.REST_API.GetOpenOrders);
end;

procedure TfrmWebSocketClient.btnBybitSpotGetServerTimeClick(Sender: TObject);
begin
  DoLog(Bybit.SPOT.REST_API.GetServerTime);
end;

procedure TfrmWebSocketClient.btnBybitSpotGetWalletBalanceClick(Sender:
    TObject);
begin
  DoLog(Bybit.SPOT.REST_API.GetWalletBalance);
end;

procedure TfrmWebSocketClient.btnBybitSpotSubscribeAccountInfoClick(Sender:
    TObject);
begin
  Bybit.SPOT.SubscribeOutboundAccountInfo;
end;

procedure TfrmWebSocketClient.btnBybitSpotSubscribeBookTickerClick(Sender:
    TObject);
begin
  ByBit.SPOT.SubscribeBookTicker(txtBybitSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBybitSpotSubscribeDepthClick(Sender: TObject);
begin
  ByBit.SPOT.SubscribeDepth(txtBybitSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBybitSpotSubscribeKLineClick(Sender: TObject);
begin
  ByBit.SPOT.SubscribeKLine(txtBybitSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBybitSpotSubscribeOrderClick(Sender: TObject);
begin
  ByBit.SPOT.SubscribeOrder;
end;

procedure TfrmWebSocketClient.btnBybitSpotSubscribeTickersClick(Sender:
    TObject);
begin
  ByBit.SPOT.SubscribeTickers(txtBybitSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBybitSpotSubscribeTradeClick(Sender: TObject);
begin
  ByBit.SPOT.SubscribeTrade(txtBybitSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBybitSpotUnSubscribeAccountInfoClick(Sender:
    TObject);
begin
  Bybit.SPOT.UnSubscribeOutboundAccountInfo;
end;

procedure TfrmWebSocketClient.btnBybitSpotUnSubscribeBookTickerClick(Sender:
    TObject);
begin
  ByBit.SPOT.UnSubscribeBookTicker(txtBybitSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBybitSpotUnSubscribeDepthClick(Sender:
    TObject);
begin
  ByBit.SPOT.UnSubscribeDepth(txtBybitSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBybitSpotUnSubscribeKLineClick(Sender:
    TObject);
begin
  ByBit.SPOT.UnSubscribeKLine(txtBybitSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBybitSpotUnSubscribeOrderClick(Sender:
    TObject);
begin
  ByBit.SPOT.UnSubscribeOrder;
end;

procedure TfrmWebSocketClient.btnBybitSpotUnSubscribeTickersClick(Sender:
    TObject);
begin
  ByBit.SPOT.UnSubscribeTickers(txtBybitSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBybitSpotUnSubscribeTradeClick(Sender:
    TObject);
begin
  ByBit.SPOT.UnSubscribeTrade(txtBybitSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBybitSpotGetOrderBookClick(Sender: TObject);
begin
  DoLog(Bybit.SPOT.REST_API.GetOrderBook(txtBybitSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBybitSpotGetPublicTradingRecordsClick(Sender:
    TObject);
begin
  DoLog(Bybit.SPOT.REST_API.GetPublicTradingRecords(txtBybitSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBybitSpotGetQueryKLineClick(Sender: TObject);
begin
  DoLog(Bybit.SPOT.REST_API.GetQueryKLine(txtBybitSymbol.Text, bbkls5min));
end;

procedure TfrmWebSocketClient.btnBybitSpotGetTradeHistoryClick(Sender: TObject);
begin
  DoLog(Bybit.SPOT.REST_API.GetTradeHistory);
end;

procedure TfrmWebSocketClient.btnBybitInversePerpetualGetServerTimeClick(Sender: TObject);
begin
  DoLog(Bybit.INVERSE_PERPETUAL.REST_API.GetServerTime);
end;

procedure TfrmWebSocketClient.btnBybitInversePerpetualGetWalletBalanceClick(Sender: TObject);
begin
  DoLog(Bybit.INVERSE_PERPETUAL.REST_API.GetWalletBalance);
end;

procedure TfrmWebSocketClient.btnBybitInversePerpetualLatestInformationClick(Sender:
    TObject);
begin
  DoLog(Bybit.INVERSE_PERPETUAL.REST_API.GetLastestInformationForSymbol(txtBybitSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBybitInversePerpetualLimitOrderClick(Sender: TObject);
var
  vSide: TsgcHTTPBybitOrderSide;
  vFS: TFormatSettings;
begin
  vFS.DecimalSeparator := '.';
  vFS.ThousandSeparator := ',';

  if cboBybitInversePerpetualMarketOrder.itemIndex = 0 then
    vSide := bbosBuy
  else
    vSide := bbosSell;

  DoLog(Bybit.INVERSE_PERPETUAL.REST_API.PlaceLimitOrder(txtBybitSymbol.Text, vSide,
    StrToInt(txtBybitInversePerpetualLimitQuantity.Text), StrToFloat(txtBybitInversePerpetualLimitPrice.Text, vFS)));
end;

procedure TfrmWebSocketClient.btnBybitInversePerpetualMarketOrderClick(Sender: TObject);
var
  vSide: TsgcHTTPBybitOrderSide;
begin
  if cboBybitInversePerpetualMarketOrder.itemIndex = 0 then
    vSide := bbosBuy
  else
    vSide := bbosSell;

  DoLog(Bybit.INVERSE_PERPETUAL.REST_API.PlaceMarketOrder(txtBybitSymbol.Text, vSide,
    StrToInt(txtBybitInversePerpetualMarketQuantity.Text)));
end;

procedure TfrmWebSocketClient.btnBybitInversePerpetualOrderBookClick(Sender: TObject);
begin
  DoLog(Bybit.INVERSE_PERPETUAL.REST_API.GetOrderBook(txtBybitSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBybitInversePerpetualTradingRecordsClick(Sender:
    TObject);
begin
  DoLog(Bybit.INVERSE_PERPETUAL.REST_API.GetPublicTradingRecords(txtBybitSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBybitUSDTPerpetualCancelAllOrdersClick(Sender:
    TObject);
begin
  DoLog(Bybit.USDT_PERPETUAL.REST_API.CancelAllActiveOrders(txtBybitSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBybitUSDTPerpetualGetPositionClick(Sender:
    TObject);
begin
  DoLog(Bybit.USDT_PERPETUAL.REST_API.GetMyPosition(txtBybitSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBybitUSDTPerpetualGetServerTimeClick(Sender: TObject);
begin
  DoLog(Bybit.USDT_PERPETUAL.REST_API.GetServerTime);
end;

procedure TfrmWebSocketClient.btnBybitUSDTPerpetualGetWalletBalanceClick(Sender: TObject);
begin
  DoLog(Bybit.USDT_PERPETUAL.REST_API.GetWalletBalance);
end;

procedure TfrmWebSocketClient.btnBybitUSDTPerpetualLatestInformationClick(Sender:
    TObject);
begin
  DoLog(Bybit.USDT_PERPETUAL.REST_API.GetLastestInformationForSymbol(txtBybitSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBybitUSDTPerpetualLimitOrderClick(Sender: TObject);
var
  vSide: TsgcHTTPBybitOrderSide;
  vFS: TFormatSettings;
begin
  vFS.DecimalSeparator := '.';
  vFS.ThousandSeparator := ',';

  if cboBybitUSDTPerpetualMarketOrder.itemIndex = 0 then
    vSide := bbosBuy
  else
    vSide := bbosSell;

  DoLog(Bybit.USDT_PERPETUAL.REST_API.PlaceLimitOrder(txtBybitSymbol.Text, vSide,
    StrToInt(txtBybitUSDTPerpetualLimitQuantity.Text), StrToFloat(txtBybitUSDTPerpetualLimitPrice.Text, vFS)));
end;

procedure TfrmWebSocketClient.btnBybitUSDTPerpetualMarketOrderClick(Sender: TObject);
var
  vSide: TsgcHTTPBybitOrderSide;
begin
  if cboBybitUSDTPerpetualMarketOrder.itemIndex = 0 then
    vSide := bbosBuy
  else
    vSide := bbosSell;

  DoLog(Bybit.USDT_PERPETUAL.REST_API.PlaceMarketOrder(txtBybitSymbol.Text, vSide,
    StrToInt(txtBybitUSDTPerpetualMarketQuantity.Text)));
end;

procedure TfrmWebSocketClient.btnBybitUSDTPerpetualOrderBookClick(Sender: TObject);
begin
  DoLog(Bybit.USDT_PERPETUAL.REST_API.GetOrderBook(txtBybitSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBybitUSDTPerpetualTradingRecordsClick(Sender:
    TObject);
begin
  DoLog(Bybit.USDT_PERPETUAL.REST_API.GetPublicTradingRecords(txtBybitSymbol.Text));
end;

procedure TfrmWebSocketClient.Button23Click(Sender: TObject);
begin
  DoLog(Bybit.INVERSE_PERPETUAL.REST_API.GetMyPosition);
end;

procedure TfrmWebSocketClient.cboOkxMarketOrderClick(Sender: TObject);
var
  vFS: TFormatSettings;
begin
  vFS.DecimalSeparator := '.';
  vFS.ThousandSeparator := ',';

  case cboOkxMarketSide.itemIndex of
    0:
      OKX.PlaceMarketOrder(okxosBuy, txtOkxInstId.Text,
        StrToFloat(txtOkxMarketSize.Text, vFS));
    1:
      OKX.PlaceMarketOrder(okxosSell, txtOkxInstId.Text,
        StrToFloat(txtOkxMarketSize.Text, vFS));
  end;
end;

procedure TfrmWebSocketClient.Button62Click(Sender: TObject);
begin
  DoLog(KUCOINFUT.REST_API.GetServerTime);
end;

procedure TfrmWebSocketClient.Button8Click(Sender: TObject);
begin
  BINANCE.UnSubscribeAggregateTrades(txtBinanceSymbol.Text);
end;

procedure TfrmWebSocketClient.Button9Click(Sender: TObject);
begin
  BINANCE.UnSubscribeTrades(txtBinanceSymbol.Text);
end;

procedure TfrmWebSocketClient.BybitBybitAuthentication(Sender: TObject;
    aSuccess: Boolean; const aError, aRawMessage: string);
begin
  if aSuccess then
    DoLog('#Bybit Authenticated')
  else
    DoLog('#Bybit Authenticated error: ' + aError);
end;

procedure TfrmWebSocketClient.BybitBybitData(Sender: TObject; const aData:
    string);
begin
  DoLog(aData);
end;

procedure TfrmWebSocketClient.BybitBybitError(Sender: TObject; aErrorCode:
    string; const aErrorMessage, aRawMessage: string);
begin
  DoLog('#Bybit Error: ' + aErrorMessage);
end;

procedure TfrmWebSocketClient.BybitBybitSubscribe(Sender: TObject; const
    aReqId: string; aSuccess: Boolean; const aError, aRawMessage: string);
begin
  if aSuccess then
    DoLog('#Bybit subscribe ok ' + aReqId)
  else
    DoLog('#Bybit subscribe error ' + aError);
end;

procedure TfrmWebSocketClient.BybitBybitUnSubscribe(Sender: TObject; const
    aReqId: string; aSuccess: Boolean; const aError, aRawMessage: string);
begin
  if aSuccess then
    DoLog('#Bybit unsubscribe ok ' + aReqId)
  else
    DoLog('#Bybit unsubscribe error ' + aError);
end;

procedure TfrmWebSocketClient.BybitConnect(Connection: TsgcWSConnection);
begin
  DoLog('#connected');
end;

procedure TfrmWebSocketClient.BybitDisconnect(Connection: TsgcWSConnection;
    Code: Integer);
begin
  DoLog('#disconnected');
end;

procedure TfrmWebSocketClient.cboBitmexLimitOrderClick(Sender: TObject);
var
  vSide: TsgcHTTPBitmexOrderSide;
  vFS: TFormatSettings;
begin
  vFS.DecimalSeparator := '.';
  vFS.ThousandSeparator := ',';

  if cboBitmexLimitOrderSide.itemIndex = 0 then
    vSide := bmosBuy
  else
    vSide := bmosSell;

  DoLog(BITMEX.REST_API.PlaceLimitOrder(vSide, txtBitmexSymbol.Text,
    StrToFloat(txtBitmexLimitOrderSize.Text, vFS),
    StrToFloat(txtBitmexLimitOrderPrice.Text, vFS)));
end;

procedure TfrmWebSocketClient.cboBitmexMarketOrderClick(Sender: TObject);
var
  vSide: TsgcHTTPBitmexOrderSide;
  vFS: TFormatSettings;
begin
  vFS.DecimalSeparator := '.';
  vFS.ThousandSeparator := ',';

  if cboBitmexMarketOrderSide.itemIndex = 0 then
    vSide := bmosBuy
  else
    vSide := bmosSell;

  DoLog(BITMEX.REST_API.PlaceMarketOrder(vSide, txtBitmexSymbol.Text,
    StrToFloat(txtBitmexMarketOrderSize.Text, vFS)));
end;

procedure TfrmWebSocketClient.cboFTXCancelAllOrdersClick(Sender: TObject);
begin
  DoLog(FTX.REST_API.CancelAllOrders(txtFTXMarket.Text));
end;

procedure TfrmWebSocketClient.cboFTXPlaceLimitOrderClick(Sender: TObject);
var
  vSide: TsgcHTTPFTXOrderSide;
  vFS: TFormatSettings;
begin
  vFS.DecimalSeparator := '.';
  vFS.ThousandSeparator := ',';

  if cboFTXMarketSide.itemIndex = 0 then
    vSide := ftosBuy
  else
    vSide := ftosSell;

  DoLog(FTX.REST_API.PlaceLimitOrder(txtFTXMarket.Text, vSide,
    StrToFloat(txtFTXLimitOrderSize.Text, vFS),
    StrToFloat(txtFTXLimitOrderPrice.Text, vFS)));
end;

procedure TfrmWebSocketClient.cboFTXPlaceMarketOrderClick(Sender: TObject);
var
  vSide: TsgcHTTPFTXOrderSide;
  vFS: TFormatSettings;
begin
  vFS.DecimalSeparator := '.';
  vFS.ThousandSeparator := ',';

  if cboFTXMarketSide.itemIndex = 0 then
    vSide := ftosBuy
  else
    vSide := ftosSell;

  DoLog(FTX.REST_API.PlaceMarketOrder(txtFTXMarket.Text, vSide,
    StrToFloat(txtFTXMarketOrderSize.Text, vFS)));
end;

procedure TfrmWebSocketClient.cboOkxLimitOrderClick(Sender: TObject);
var
  vFS: TFormatSettings;
begin
  vFS.DecimalSeparator := '.';
  vFS.ThousandSeparator := ',';

  case cboOkxLimitSide.itemIndex of
    0:
      OKX.PlaceLimitOrder(okxosBuy, txtOkxInstId.Text,
        StrToFloat(txtOkxLimitSize.Text, vFS),
        StrToFloat(txtOkxLimitSize.Text, vFS));
    1:
      OKX.PlaceLimitOrder(okxosSell, txtOkxInstId.Text,
        StrToFloat(txtOkxLimitSize.Text, vFS),
        StrToFloat(txtOkxLimitSize.Text, vFS));
  end;
end;

procedure TfrmWebSocketClient.CEXCexAuthenticated(Sender: TObject);
begin
  DoLog('#authenticated');
end;

procedure TfrmWebSocketClient.CEXCexConnect(Sender: TObject);
begin
  DoLog('#connected');
end;

procedure TfrmWebSocketClient.CEXCexDisconnect(Sender: TObject);
begin
  DoLog('#disconnected from CEX');
end;

procedure TfrmWebSocketClient.CEXCexDisconnecting(Sender: TObject;
  Reason, Time: string);
begin
  DoLog('#disconnecting from CEX: ' + Reason);
end;

procedure TfrmWebSocketClient.CEXCexError(Sender: TObject; Error: string);
begin
  DoLog('#error: ' + Error);
end;

procedure TfrmWebSocketClient.CEXCexMessage(Sender: TObject;
  Event, Msg: string);
begin
  DoLog(Msg);
end;

procedure TfrmWebSocketClient.CEXDisconnect(Connection: TsgcWSConnection;
  Code: Integer);
begin
  DoLog('#disconnected');
end;

procedure TfrmWebSocketClient.chkBinanceUSClick(Sender: TObject);
begin
  BINANCE.BINANCE.BinanceUS := chkBinanceUS.Checked;

  tabBINANCEShow(nil);
end;

procedure TfrmWebSocketClient.chkBitmexTestNetClick(Sender: TObject);
begin
  BITMEX.BITMEX.TestNet := chkBitmexTestNet.Checked;

  tabBITMEXShow(nil);
end;

procedure TfrmWebSocketClient.chkBybitTestNetClick(Sender: TObject);
begin
  Bybit.Bybit.TestNet := chkByBitTestNet.checked;

  DoServerByBit(pageControl8.ActivePageIndex);
end;

procedure TfrmWebSocketClient.chkCoinbaseSandboxClick(Sender: TObject);
begin
  COINBASE.COINBASE.SandBox := chkCoinbaseSandbox.Checked;
  DoServerCOINBASE;
end;

procedure TfrmWebSocketClient.chkFXCMDemoClick(Sender: TObject);
begin
  FXCM.FXCM.Demo := chkFXCMDemo.Checked;

  tabFXCMShow(nil);
end;

procedure TfrmWebSocketClient.chkKrakenFuturesDemoClick(Sender: TObject);
begin
  KRAKEN_FUTURES.KRAKEN.Demo := chkKrakenFuturesDemo.Checked;
  if chkKrakenFuturesDemo.Checked then
    txtHost.Text := 'demo-futures.kraken.com'
  else
    txtHost.Text := 'futures.kraken.com';
end;

procedure TfrmWebSocketClient.chkKucoinSandBoxClick(Sender: TObject);
begin
  KUCOIN.KUCOIN.SandBox := chkKucoinSandBox.Checked;
  KUCOINFUT.KUCOIN.SandBox := chkKucoinSandBox.Checked;

  tabKUCOINShow(nil);
end;

procedure TfrmWebSocketClient.chkOkxIsDemoClick(Sender: TObject);
begin
  OKX.OKX.IsDemo := chkOkxIsDemo.Checked;
  DoServerOKX;
end;

procedure TfrmWebSocketClient.chkOkxIsPrivateClick(Sender: TObject);
begin
  OKX.OKX.IsPrivate := chkOkxIsPrivate.Checked;
  DoServerOKX;
end;

procedure TfrmWebSocketClient.chkTestNetClick(Sender: TObject);
begin
  BINANCE.BINANCE.TestNet := chkTestNet.Checked;
  BINANCEFUT.BINANCE.TestNet := chkTestNet.Checked;

  tabBINANCEShow(nil);
end;

procedure TfrmWebSocketClient.chkXTBDemoClick(Sender: TObject);
begin
  XTB.XTB.Demo := chkXTBDemo.Checked;
  DoServerXTB;
end;

procedure TfrmWebSocketClient.COINBASECoinbaseError(Sender: TObject;
  aError, aReason, aRawMessage: string);
begin
  DoLog('#coinbase error: ' + aError + ' ' + aReason);
end;

procedure TfrmWebSocketClient.COINBASECoinbaseHTTPException(Sender: TObject;
  E: Exception);
begin
  DoLog('#coinbase HTTP exception: ' + E.Message);
end;

procedure TfrmWebSocketClient.COINBASECoinbaseMessage(Sender: TObject;
  aType, aRawMessage: string);
begin
  DoLog('#coinbase message: ' + aRawMessage);
end;

procedure TfrmWebSocketClient.COINBASECoinbaseSubscriptions(Sender: TObject;
  aChannels, aProductIds, aRawMessage: string);
begin
  DoLog('#coinbase subscriptions: ' + aRawMessage);
end;

procedure TfrmWebSocketClient.COINBASEconnect(Connection: TsgcWSConnection);
begin
  DoLog('#connected coinbase');
end;

procedure TfrmWebSocketClient.COINBASEDisconnect(Connection: TsgcWSConnection;
  Code: Integer);
begin
  DoLog('#disconnected coinbase');
end;

procedure TfrmWebSocketClient.DoBeforeConnect;
begin
  if PageControl1.ActivePage = tabKRAKEN then
    DoBeforeConnectKraken;
end;

procedure TfrmWebSocketClient.DoBeforeConnectKraken;
begin
  if PageControlKraken.ActivePage = tabKrakenStocks then
  begin
    if KRAKEN.KRAKEN.Beta then
      WSClient.Host := 'beta-ws.kraken.com'
    else if txtKrakenApiKey.Text <> '' then
      WSClient.Host := 'ws-auth.kraken.com';
  end
  else if PageControlKraken.ActivePage = tabKrakenFutures then
  begin
    if KRAKEN_FUTURES.KRAKEN.Demo then
      WSClient.Host := 'demo-futures.kraken.com'
    else
      WSClient.Host := 'futures.kraken.com';
  end;
end;

procedure TfrmWebSocketClient.DoClear;
begin
  BITTREX.Client := nil;
  BINANCE.Client := nil;
  BINANCEFUT.Client := nil;
  BITSTAMP.Client := nil;
  HUOBI.Client := nil;
  CEX.Client := nil;
  BITMEX.Client := nil;
  FXCM.Client := nil;
  KRAKEN.Client := nil;
  KRAKEN_FUTURES.Client := nil;
  COINBASE.Client := nil;
  KUCOIN.Client := nil;
  KUCOINFUT.Client := nil;
  THREE_COMMAS.Client := nil;
  FTX.Client := nil;
  OKX.Client := nil;
  XTB.Client := nil;
  Bybit.Client := nil;
end;

procedure TfrmWebSocketClient.DoLog(const aText: String);
begin
  memoLog.Lines.Add(aText);
end;

procedure TfrmWebSocketClient.DoServer3Commas;
begin
  DoClear;
  THREE_COMMAS.Client := WSClient;

  txtParameters.Text := '/';
  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  txtParameters.Text := WSClient.Options.Parameters;
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := WSClient.Specifications.RFC6455;
end;

procedure TfrmWebSocketClient.DoServerKRAKEN;
begin
  DoClear;
  KRAKEN.Client := WSClient;
  KRAKEN.KRAKEN.ApiKey := txtKrakenApiKey.Text;
  KRAKEN.KRAKEN.ApiSecret := txtKrakenApiSecret.Text;

  txtParameters.Text := '/';
  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := WSClient.Specifications.RFC6455;
end;

procedure TfrmWebSocketClient.DoServerBINANCE;
begin
  DoClear;
  BINANCE.Client := WSClient;

  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  txtParameters.Text := WSClient.Options.Parameters;
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := WSClient.Specifications.RFC6455;

  txtBinanceSymbol.Text := 'bnbbtc';
  txtBinanceRestSymbol.Text := 'BNBBTC';
end;

procedure TfrmWebSocketClient.DoServerBINANCEFUT;
begin
  DoClear;
  BINANCEFUT.Client := WSClient;

  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  txtParameters.Text := WSClient.Options.Parameters;
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := WSClient.Specifications.RFC6455;

  txtBinanceSymbol.Text := 'btcusdt';
  txtBinanceRestSymbol.Text := 'BTCUSDT';
end;

procedure TfrmWebSocketClient.DoServerBITMEX;
begin
  DoClear;
  BITMEX.Client := WSClient;
  if BITMEX.BITMEX.ApiKey = '' then
    BITMEX.BITMEX.ApiKey := txtBitmexApiKey.Text;
  if BITMEX.BITMEX.ApiSecret = '' then
    BITMEX.BITMEX.ApiSecret := txtBitmexApiSecret.Text;

  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  txtParameters.Text := WSClient.Options.Parameters;
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := True;
end;

procedure TfrmWebSocketClient.DoServerBITSTAMP;
begin
  DoClear;
  BITSTAMP.Client := WSClient;

  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  txtParameters.Text := WSClient.Options.Parameters;
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := True;
end;

procedure TfrmWebSocketClient.DoServerBITTREX;
begin
  DoClear;
  BITTREX.Client := WSClient;
  WSClient.Specifications.RFC6455 := True;

  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := WSClient.Specifications.RFC6455;
end;

procedure TfrmWebSocketClient.DoServerBybit(aClient: Integer);
begin
  DoClear;
  Bybit.Client := WSClient;
  case aClient of
    0: Bybit.BybitClient := bybSpot;
    1: Bybit.BybitClient := bybInversePerpetual;
    2: Bybit.BybitClient := bybUSDTPerpetual;
  end;

  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  txtParameters.Text := WSClient.Options.Parameters;
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := WSClient.Specifications.RFC6455;
end;

procedure TfrmWebSocketClient.DoServerCEX;
begin
  DoClear;
  CEX.Client := WSClient;

  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  txtParameters.Text := WSClient.Options.Parameters;
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := True;
end;

procedure TfrmWebSocketClient.DoServerCOINBASE;
begin
  DoClear;
  COINBASE.Client := WSClient;

  txtParameters.Text := '/';
  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := WSClient.Specifications.RFC6455;
end;

procedure TfrmWebSocketClient.DoServerFTX;
begin
  DoClear;
  FTX.Client := WSClient;

  txtParameters.Text := '/';
  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  txtParameters.Text := WSClient.Options.Parameters;
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := WSClient.Specifications.RFC6455;
end;

procedure TfrmWebSocketClient.DoServerFXCM;
begin
  DoClear;
  FXCM.Client := WSClient;

  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  txtParameters.Text := WSClient.Options.Parameters;
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := True;
end;

procedure TfrmWebSocketClient.DoServerHUOBI;
begin
  DoClear;
  HUOBI.Client := WSClient;

  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  txtParameters.Text := WSClient.Options.Parameters;
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := True;
end;

procedure TfrmWebSocketClient.DoServerKRAKENFUT;
begin
  DoClear;
  KRAKEN_FUTURES.Client := WSClient;
  KRAKEN_FUTURES.KRAKEN.ApiKey := txtKrakenApiKey.Text;
  KRAKEN_FUTURES.KRAKEN.ApiSecret := txtKrakenApiSecret.Text;

  txtParameters.Text := '/';
  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  txtParameters.Text := WSClient.Options.Parameters;
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := WSClient.Specifications.RFC6455;
end;

procedure TfrmWebSocketClient.DoServerKUCOIN;
begin
  DoClear;
  KUCOIN.Client := WSClient;

  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  txtParameters.Text := WSClient.Options.Parameters;
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := WSClient.Specifications.RFC6455;

  txtKucoinSymbol.Text := 'BTC-USDT';
end;

procedure TfrmWebSocketClient.DoServerKUCOINFUT;
begin
  DoClear;
  KUCOINFUT.Client := WSClient;

  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  txtParameters.Text := WSClient.Options.Parameters;
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := WSClient.Specifications.RFC6455;

  txtKucoinSymbol.Text := 'XBTUSDTM';
end;

procedure TfrmWebSocketClient.DoServerOKX;
begin
  DoClear;
  OKX.Client := WSClient;

  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  txtParameters.Text := WSClient.Options.Parameters;
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := WSClient.Specifications.RFC6455;

  txtOkxInstId.Text := 'BTC-USDT';
end;

procedure TfrmWebSocketClient.DoServerXTB;
begin
  DoClear;
  XTB.Client := WSClient;

  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  txtParameters.Text := WSClient.Options.Parameters;
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := WSClient.Specifications.RFC6455;
end;

procedure TfrmWebSocketClient.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  WSClient.Active := False;
end;

procedure TfrmWebSocketClient.FTXConnect(Connection: TsgcWSConnection);
begin
  DoLog('#connected');
end;

procedure TfrmWebSocketClient.FTXDisconnect(Connection: TsgcWSConnection;
  Code: Integer);
begin
  DoLog('#disconnected');
end;

procedure TfrmWebSocketClient.FTXFTXError(Sender: TObject;
  aCode, aMessage, aRawMessage: string);
begin
  DoLog('#FTX Error: ' + aCode + ' ' + aMessage);
end;

procedure TfrmWebSocketClient.FTXFTXHTTPException(Sender: TObject;
  E: Exception);
begin
  DoLog('#FTX HTTP exception: ' + E.Message);
end;

procedure TfrmWebSocketClient.FTXFTXMessage(Sender: TObject;
  aType, aRawMessage: string);
begin
  DoLog(aRawMessage);
end;

procedure TfrmWebSocketClient.FTXFTXSubscribed(Sender: TObject;
  aChannel, aMarket, aRawMessage: string);
begin
  DoLog('#subscribed: ' + aChannel + ' ' + aMarket);
end;

procedure TfrmWebSocketClient.FTXFTXUnsubscribed(Sender: TObject;
  aChannel, aMarket, aRawMessage: string);
begin
  DoLog('#unsubscribed: ' + aChannel + ' ' + aMarket);
end;

procedure TfrmWebSocketClient.HUOBIConnect(Connection: TsgcWSConnection);
begin
  DoLog('#connected');
end;

procedure TfrmWebSocketClient.HUOBIDisconnect(Connection: TsgcWSConnection;
  Code: Integer);
begin
  DoLog('#disconnected');
end;

procedure TfrmWebSocketClient.HUOBIHuobiError(Sender: TObject;
  Id, Code, Msg, Ts: string);
begin
  DoLog('#error: ' + Code + ' ' + Msg);
end;

procedure TfrmWebSocketClient.HUOBIHuobiSubscribed(Sender: TObject;
  Topic, Ts: string);
begin
  DoLog('#subscribed: ' + Topic);
end;

procedure TfrmWebSocketClient.HUOBIHuobiUnSubscribed(Sender: TObject;
  Topic, Ts: string);
begin
  DoLog('#unsubscribed: ' + Topic);
end;

procedure TfrmWebSocketClient.HUOBIHuobiUpdate(Sender: TObject; Data: string);
begin
  DoLog(Data);
end;

procedure TfrmWebSocketClient.KRAKENConnect(Connection: TsgcWSConnection);
begin
  DoLog('#connected');
end;

procedure TfrmWebSocketClient.KRAKENDisconnect(Connection: TsgcWSConnection;
  Code: Integer);
begin
  DoLog('#disconnected');
end;

procedure TfrmWebSocketClient.KRAKENKrakenConnect(Sender: TObject;
  ConnectionId, Status, Version: string);
begin
  DoLog('#connected to KRAKEN server');
end;

procedure TfrmWebSocketClient.KRAKENKrakenData(Sender: TObject; aData: string);
begin
  DoLog(aData);
end;

procedure TfrmWebSocketClient.KRAKENKrakenHTTPException(Sender: TObject;
  E: Exception);
begin
  DoLog('#HTTP Exception: ' + E.Message);
end;

procedure TfrmWebSocketClient.KRAKENKrakenSubscribed(Sender: TObject;
  ChannelId: Integer; Pair, Subscription, ChannelName: string; ReqID: Integer);
begin
  DoLog('#subscribed: ' + Subscription + ' ' + Pair + ' ' + ChannelName);
end;

procedure TfrmWebSocketClient.KRAKENKrakenSubscriptionError(Sender: TObject;
  ErrorMessage, Pair, Subscription: string; ReqID: Integer);
begin
  DoLog('#subscription error: ' + ErrorMessage);
end;

procedure TfrmWebSocketClient.KRAKENKrakenSystemStatus(Sender: TObject;
  ConnectionId, Status, Version: string);
begin
  DoLog('#system status: ' + Status);
end;

procedure TfrmWebSocketClient.KRAKENKrakenUnSubscribed(Sender: TObject;
  ChannelId: Integer; Pair, Subscription: string; ReqID: Integer);
begin
  DoLog('#unsubscribed: ' + Subscription + ' ' + Pair);
end;

procedure TfrmWebSocketClient.KRAKEN_FUTURESConnect
  (Connection: TsgcWSConnection);
begin
  DoLog('#connected');
end;

procedure TfrmWebSocketClient.KRAKEN_FUTURESDisconnect
  (Connection: TsgcWSConnection; Code: Integer);
begin
  DoLog('#disconnected');
end;

procedure TfrmWebSocketClient.KRAKEN_FUTURESKrakenData(Sender: TObject;
  aData: string);
begin
  DoLog(aData);
end;

procedure TfrmWebSocketClient.KRAKEN_FUTURESKrakenFuturesConnect
  (Sender: TObject; Version: string);
begin
  DoLog('#connected Kraken Futures');
end;

procedure TfrmWebSocketClient.KRAKEN_FUTURESKrakenFuturesError(Sender: TObject;
  Error: string);
begin
  DoLog('#error: ' + Error);
end;

procedure TfrmWebSocketClient.KRAKEN_FUTURESKrakenFuturesSubscribed
  (Sender: TObject; Feed, ProductId: string);
begin
  DoLog('#subscribed: ' + Feed + ' ' + ProductId);
end;

procedure TfrmWebSocketClient.KRAKEN_FUTURESKrakenFuturesUnSubscribed
  (Sender: TObject; Feed, ProductId: string);
begin
  DoLog('#unsubscribed: ' + Feed + ' ' + ProductId);
end;

procedure TfrmWebSocketClient.KRAKEN_FUTURESKrakenHTTPException(Sender: TObject;
  E: Exception);
begin
  DoLog('#exception: ' + E.Message);
end;

procedure TfrmWebSocketClient.OKXConnect(Connection: TsgcWSConnection);
begin
  DoLog('#connected');
end;

procedure TfrmWebSocketClient.OKXDisconnect(Connection: TsgcWSConnection;
  Code: Integer);
begin
  DoLog('#disconnected');
end;

procedure TfrmWebSocketClient.OKXOKXConnect(Sender: TObject;
  aMessage, aCode, aRawMessage: string);
begin
  DoLog('#connected OKX');
end;

procedure TfrmWebSocketClient.OKXOKXError(Sender: TObject;
  aCode, aMessage, aRawMessage: string);
begin
  DoLog('#error: ' + aMessage);
end;

procedure TfrmWebSocketClient.OKXOKXMessage(Sender: TObject;
  aType, aRawMessage: string);
begin
  DoLog(aRawMessage);
end;

procedure TfrmWebSocketClient.OKXOKXSubscribed(Sender: TObject;
  aChannel, aInstId, aRawMessage: string);
begin
  DoLog('#subscribed: ' + aChannel + ' ' + aInstId);
end;

procedure TfrmWebSocketClient.OKXOKXUnsubscribed(Sender: TObject;
  aChannel, aInstId, aRawMessage: string);
begin
  DoLog('#unsubscribed: ' + aChannel + ' ' + aInstId);
end;

procedure TfrmWebSocketClient.optBINANCEFUTCOINClick(Sender: TObject);
begin
  if optBINANCEFUTCOIN.Checked then
    BINANCEFUT.FuturesContracts := bfcCOIN
  else
    BINANCEFUT.FuturesContracts := bfcUSDT;
  DoServerBINANCEFUT;
end;

procedure TfrmWebSocketClient.optBINANCEFUTUSDTClick(Sender: TObject);
begin
  if optBINANCEFUTUSDT.Checked then
    BINANCEFUT.FuturesContracts := bfcUSDT
  else
    BINANCEFUT.FuturesContracts := bfcCOIN;
  DoServerBINANCEFUT;
end;

procedure TfrmWebSocketClient.SIGNALRSignalRConnect(Sender: TObject;
  MessageId, aData: string);
begin
  DoLog('#connected');
end;

procedure TfrmWebSocketClient.SIGNALRSignalRDisconnect(Sender: TObject;
  aCloseCode: Integer);
begin
  DoLog('#disconnected');
end;

procedure TfrmWebSocketClient.SIGNALRSignalRError(Sender: TObject;
  Error: string);
begin
  DoLog('#error: ' + Error);
end;

procedure TfrmWebSocketClient.SIGNALRSignalRKeepAlive(Sender: TObject);
begin
  DoLog('#keepalive');
end;

procedure TfrmWebSocketClient.SIGNALRSignalRMessage(Sender: TObject;
  MessageId, aData: string);
begin
  DoLog('[' + MessageId + '] ' + aData);
end;

procedure TfrmWebSocketClient.SIGNALRSignalRResult(Sender: TObject;
  InvocationId, Result, Error: string);
begin
  DoLog('[' + InvocationId + '] ' + Result + ' ' + Error);
end;

procedure TfrmWebSocketClient.tabBinanceFuturesShow(Sender: TObject);
begin
  DoServerBINANCEFUT;
end;

procedure TfrmWebSocketClient.tabBINANCEShow(Sender: TObject);
begin
  if PageControl2.ActivePage = tabBinanceFutures then
    DoServerBINANCEFUT
  else
    DoServerBINANCE;
end;

procedure TfrmWebSocketClient.tabBinanceStocksShow(Sender: TObject);
begin
  DoServerBINANCE;
end;

procedure TfrmWebSocketClient.tabBITMEXShow(Sender: TObject);
begin
  DoServerBITMEX;
end;

procedure TfrmWebSocketClient.tabBITSTAMPShow(Sender: TObject);
begin
  DoServerBITSTAMP;
end;

procedure TfrmWebSocketClient.tabBITTREXShow(Sender: TObject);
begin
  DoServerBITTREX;
end;

procedure TfrmWebSocketClient.tabBybitInversePerpetualShow(Sender: TObject);
begin
  DoServerBybit(1);
end;

procedure TfrmWebSocketClient.tabBybitUSDTPerpetualShow(Sender: TObject);
begin
  DoServerBybit(2);
end;

procedure TfrmWebSocketClient.tabBybitSpotShow(Sender: TObject);
begin
  DoServerBybit(0);
end;

procedure TfrmWebSocketClient.tabCEXShow(Sender: TObject);
begin
  DoServerCEX;
end;

procedure TfrmWebSocketClient.tabCOINBASEShow(Sender: TObject);
begin
  DoServerCOINBASE;
end;

procedure TfrmWebSocketClient.tabFTXShow(Sender: TObject);
begin
  DoServerFTX;
end;

procedure TfrmWebSocketClient.tabFXCMShow(Sender: TObject);
begin
  DoServerFXCM;
end;

procedure TfrmWebSocketClient.tabHUOBIShow(Sender: TObject);
begin
  DoServerHUOBI;
end;

procedure TfrmWebSocketClient.tabKrakenFuturesShow(Sender: TObject);
begin
  txtKrakenPair.Text := 'PI_XBTUSD';
  txtKrakenRESTPair.Text := 'PI_XBTUSD';

  DoServerKRAKENFUT;
end;

procedure TfrmWebSocketClient.tabKRAKENShow(Sender: TObject);
begin
  if PageControlKraken.ActivePage = tabKrakenFutures then
    DoServerKRAKENFUT
  else
    DoServerKRAKEN;
end;

procedure TfrmWebSocketClient.tabKrakenStocksShow(Sender: TObject);
begin
  txtKrakenPair.Text := 'XBT/USD';
  txtKrakenRESTPair.Text := 'XBTUSD';

  DoServerKRAKEN;
end;

procedure TfrmWebSocketClient.tabKucoinFuturesShow(Sender: TObject);
begin
  DoServerKUCOINFUT;
end;

procedure TfrmWebSocketClient.tabKUCOINShow(Sender: TObject);
begin
  if PageControl7.ActivePage = tabKucoinFutures then
    DoServerKUCOINFUT
  else
    DoServerKUCOIN;
end;

procedure TfrmWebSocketClient.tabKucoinStocksShow(Sender: TObject);
begin
  DoServerKUCOIN;
end;

procedure TfrmWebSocketClient.tabOKXShow(Sender: TObject);
begin
  DoServerOKX;
end;

procedure TfrmWebSocketClient.tabThreeCommasShow(Sender: TObject);
begin
  DoServer3Commas;
end;

procedure TfrmWebSocketClient.tabXTBShow(Sender: TObject);
begin
  DoServerXTB;
end;

procedure TfrmWebSocketClient.THREE_COMMASConnect(Connection: TsgcWSConnection);
begin
  DoLog('#connected');
end;

procedure TfrmWebSocketClient.THREE_COMMASDisconnect
  (Connection: TsgcWSConnection; Code: Integer);
begin
  DoLog('#disconnected');
end;

procedure TfrmWebSocketClient.THREE_COMMASThreeCommasConfirmSubscription
  (Sender: TObject; const aChannel, aRawMessage: string);
begin
  DoLog(aRawMessage);
end;

procedure TfrmWebSocketClient.THREE_COMMASThreeCommasConnect(Sender: TObject;
  const aRawMessage: string);
begin
  DoLog('#3Commas connected');
end;

procedure TfrmWebSocketClient.THREE_COMMASThreeCommasHTTPException
  (Sender: TObject; E: Exception);
begin
  DoLog(E.Message);
end;

procedure TfrmWebSocketClient.THREE_COMMASThreeCommasMessage(Sender: TObject;
  const aType, aRawMessage: string);
begin
  DoLog(aRawMessage);
end;

procedure TfrmWebSocketClient.THREE_COMMASThreeCommasPing(Sender: TObject;
  const aRawMessage: string);
begin
  DoLog(aRawMessage);
end;

procedure TfrmWebSocketClient.THREE_COMMASThreeCommasRejectSubscription
  (Sender: TObject; const aChannel, aRawMessage: string);
begin
  DoLog(aRawMessage);
end;

procedure TfrmWebSocketClient.txtBinanceApiKeyChange(Sender: TObject);
begin
  BINANCE.BINANCE.ApiKey := txtBinanceApiKey.Text;
  BINANCEFUT.BINANCE.ApiKey := txtBinanceApiKey.Text;
end;

procedure TfrmWebSocketClient.txtBinanceApiSecretChange(Sender: TObject);
begin
  BINANCE.BINANCE.ApiSecret := txtBinanceApiSecret.Text;
  BINANCEFUT.BINANCE.ApiSecret := txtBinanceApiSecret.Text;
end;

procedure TfrmWebSocketClient.txtBinanceFuturesApiKeyChange(Sender: TObject);
begin
  BINANCEFUT.BINANCE.ApiKey := txtBinanceApiKey.Text;
end;

procedure TfrmWebSocketClient.txtBinanceFuturesApiSecretChange(Sender: TObject);
begin
  BINANCEFUT.BINANCE.ApiSecret := txtBinanceApiSecret.Text;
end;

procedure TfrmWebSocketClient.txtBitmexApiKeyChange(Sender: TObject);
begin
  BITMEX.BITMEX.ApiKey := txtBitmexApiKey.Text;
end;

procedure TfrmWebSocketClient.txtBitmexApiSecretChange(Sender: TObject);
begin
  BITMEX.BITMEX.ApiSecret := txtBitmexApiSecret.Text;
end;

procedure TfrmWebSocketClient.txtBybitAPIKeyChange(Sender: TObject);
begin
  Bybit.Bybit.ApiKey := txtBybitAPIKey.Text;
  DoServerByBit(pageControl8.ActivePageIndex);
end;

procedure TfrmWebSocketClient.txtBybitAPISecretChange(Sender: TObject);
begin
  Bybit.Bybit.ApiSecret := txtBybitAPISecret.Text;
  DoServerByBit(pageControl8.ActivePageIndex);
end;

procedure TfrmWebSocketClient.txtCoinbaseApiKeyChange(Sender: TObject);
begin
  COINBASE.COINBASE.ApiKey := txtCoinbaseApiKey.Text;
end;

procedure TfrmWebSocketClient.txtCoinbaseApiSecretChange(Sender: TObject);
begin
  COINBASE.COINBASE.ApiSecret := txtCoinbaseApiSecret.Text;
end;

procedure TfrmWebSocketClient.txtCoinbasePassphraseChange(Sender: TObject);
begin
  COINBASE.COINBASE.Passphrase := txtCoinbasePassphrase.Text;
end;

procedure TfrmWebSocketClient.txtFTXApiKeyChange(Sender: TObject);
begin
  FTX.FTX.ApiKey := txtFTXApiKey.Text;
end;

procedure TfrmWebSocketClient.txtFTXApiSecretChange(Sender: TObject);
begin
  FTX.FTX.ApiSecret := txtFTXApiSecret.Text;
end;

procedure TfrmWebSocketClient.txtFTXSubAccountChange(Sender: TObject);
begin
  FTX.FTX.SubAccount := txtFTXSubAccount.Text;
end;

procedure TfrmWebSocketClient.txtFXCMAccessTokenChange(Sender: TObject);
begin
  FXCM.FXCM.AccessToken := txtFXCMAccessToken.Text;
end;

procedure TfrmWebSocketClient.txtKrakenApiKeyChange(Sender: TObject);
begin
  KRAKEN.KRAKEN.ApiKey := txtKrakenApiKey.Text;
  KRAKEN_FUTURES.KRAKEN.ApiKey := txtKrakenApiKey.Text;
end;

procedure TfrmWebSocketClient.txtKrakenApiSecretChange(Sender: TObject);
begin
  KRAKEN.KRAKEN.ApiSecret := txtKrakenApiSecret.Text;
  KRAKEN_FUTURES.KRAKEN.ApiSecret := txtKrakenApiSecret.Text;
end;

procedure TfrmWebSocketClient.txtKucoinApiKeyChange(Sender: TObject);
begin
  KUCOIN.KUCOIN.ApiKey := txtKucoinApiKey.Text;
  KUCOINFUT.KUCOIN.ApiKey := txtKucoinApiKey.Text;
end;

procedure TfrmWebSocketClient.txtKucoinApiPassphraseChange(Sender: TObject);
begin
  KUCOIN.KUCOIN.ApiPassphrase := txtKucoinApiPassphrase.Text;
  KUCOINFUT.KUCOIN.ApiPassphrase := txtKucoinApiPassphrase.Text;
end;

procedure TfrmWebSocketClient.txtKucoinApiSecretChange(Sender: TObject);
begin
  KUCOIN.KUCOIN.ApiSecret := txtKucoinApiSecret.Text;
  KUCOINFUT.KUCOIN.ApiSecret := txtKucoinApiSecret.Text;
end;

procedure TfrmWebSocketClient.txtOkxApiKeyChange(Sender: TObject);
begin
  OKX.OKX.ApiKey := txtOkxApiKey.Text;
end;

procedure TfrmWebSocketClient.txtOkxApiSecretChange(Sender: TObject);
begin
  OKX.OKX.ApiSecret := txtOkxApiSecret.Text;
end;

procedure TfrmWebSocketClient.txtOkxPassphraseChange(Sender: TObject);
begin
  OKX.OKX.Passphrase := txtOkxPassphrase.Text;
end;

procedure TfrmWebSocketClient.txtThreeCommasApiKeyChange(Sender: TObject);
begin
  THREE_COMMAS.ThreeCommas.ApiKey := txtThreeCommasApiKey.Text;
end;

procedure TfrmWebSocketClient.txtThreeCommasApiSecretChange(Sender: TObject);
begin
  THREE_COMMAS.ThreeCommas.ApiSecret := txtThreeCommasApiSecret.Text;
end;

procedure TfrmWebSocketClient.txtXTBPasswordChange(Sender: TObject);
begin
  XTB.XTB.Password := txtXTBPassword.Text;
end;

procedure TfrmWebSocketClient.txtXTBUserChange(Sender: TObject);
begin
  XTB.XTB.User := txtXTBUser.Text;
end;

procedure TfrmWebSocketClient.WSClientConnect(Connection: TsgcWSConnection);
var
  vText: string;
begin
  DoLog('#connected');

  vText := TsgcWSConnectionClient(Connection).ALPNProtocol;
end;

procedure TfrmWebSocketClient.WSClientDisconnect(Connection: TsgcWSConnection;
  Code: Integer);
begin
  DoLog('#disconnected');
end;

procedure TfrmWebSocketClient.WSClientError(Connection: TsgcWSConnection;
  const Error: string);
begin
  DoLog('#error: ' + Error);
end;

procedure TfrmWebSocketClient.WSClientException(Connection: TsgcWSConnection;
  E: Exception);
begin
  DoLog('#exception: ' + E.Message);
end;

procedure TfrmWebSocketClient.WSClientMessage(Connection: TsgcWSConnection;
  const Text: string);
begin
  DoLog(Text);
end;

procedure TfrmWebSocketClient.XTBConnect(Connection: TsgcWSConnection);
begin
  DoLog('#connected');
end;

procedure TfrmWebSocketClient.XTBDisconnect(Connection: TsgcWSConnection;
  Code: Integer);
begin
  DoLog('#disconnected');
end;

procedure TfrmWebSocketClient.XTBXTBConnect(Sender: TObject;
  const aStreamSessionId: string);
begin
  DoLog('#connected XTB Broker');
end;

procedure TfrmWebSocketClient.XTBXTBError(Sender: TObject;
  const aCode, aDescription, aRawMessage: string);
begin
  DoLog('#error: [' + aCode + '] ' + aDescription);
end;

procedure TfrmWebSocketClient.XTBXTBMessage(Sender: TObject;
  const aRawMessage: string);
begin
  DoLog(aRawMessage);
end;

end.
