object frmWebSocketClient: TfrmWebSocketClient
  Left = 0
  Top = 0
  Caption = 'sgcCryptoAPI - sgcWebSockets'
  ClientHeight = 802
  ClientWidth = 1192
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  ShowHint = True
  OnClose = FormClose
  TextHeight = 13
  object pnlTop: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1186
    Height = 150
    Align = alTop
    TabOrder = 0
    object pnlClientActive: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 106
      Height = 142
      Align = alLeft
      TabOrder = 0
      object btnStart: TButton
        Left = 16
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Start'
        TabOrder = 0
        OnClick = btnStartClick
      end
      object btnStop: TButton
        Left = 16
        Top = 93
        Width = 75
        Height = 25
        Caption = 'Stop'
        TabOrder = 1
        OnClick = btnStopClick
      end
    end
    object pnlClientOptions: TPanel
      AlignWithMargins = True
      Left = 116
      Top = 4
      Width = 1066
      Height = 142
      Align = alClient
      TabOrder = 1
      object Label3: TLabel
        Left = 16
        Top = 11
        Width = 43
        Height = 13
        Caption = 'Options'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 16
        Top = 30
        Width = 26
        Height = 13
        Caption = 'Host:'
      end
      object Label7: TLabel
        Left = 502
        Top = 26
        Width = 52
        Height = 13
        Caption = 'Username:'
      end
      object Label5: TLabel
        Left = 143
        Top = 26
        Width = 24
        Height = 13
        Caption = 'Port:'
      end
      object Label8: TLabel
        Left = 502
        Top = 72
        Width = 50
        Height = 13
        Caption = 'Password:'
      end
      object Label10: TLabel
        Left = 367
        Top = 72
        Width = 24
        Height = 13
        Caption = 'Port:'
      end
      object Label9: TLabel
        Left = 367
        Top = 26
        Width = 26
        Height = 13
        Caption = 'Host:'
      end
      object Label14: TLabel
        Left = 191
        Top = 26
        Width = 59
        Height = 13
        Caption = 'Parameters:'
      end
      object chkCompressed: TCheckBox
        Left = 64
        Top = 76
        Width = 81
        Height = 17
        Caption = 'Compressed'
        TabOrder = 0
      end
      object chkTLS: TCheckBox
        Left = 16
        Top = 76
        Width = 34
        Height = 17
        Caption = 'TLS'
        TabOrder = 1
      end
      object txtHost: TEdit
        Left = 16
        Top = 45
        Width = 121
        Height = 21
        TabOrder = 2
        Text = 'www.esegece.com'
      end
      object txtPort: TEdit
        Left = 143
        Top = 45
        Width = 42
        Height = 21
        TabOrder = 3
        Text = '2052'
      end
      object chkProxy: TCheckBox
        Left = 367
        Top = 10
        Width = 58
        Height = 17
        Caption = 'Proxy'
        TabOrder = 4
      end
      object txtProxyUsername: TEdit
        Left = 502
        Top = 45
        Width = 121
        Height = 21
        TabOrder = 5
      end
      object txtProxyPassword: TEdit
        Left = 502
        Top = 91
        Width = 121
        Height = 21
        TabOrder = 6
      end
      object txtProxyHost: TEdit
        Left = 367
        Top = 45
        Width = 121
        Height = 21
        TabOrder = 7
      end
      object txtProxyPort: TEdit
        Left = 367
        Top = 91
        Width = 121
        Height = 21
        TabOrder = 8
      end
      object txtParameters: TEdit
        Left = 191
        Top = 45
        Width = 123
        Height = 21
        TabOrder = 9
        Text = '/'
      end
      object chkOverWebSocket: TCheckBox
        Left = 16
        Top = 99
        Width = 98
        Height = 17
        Caption = 'Over WebSocket'
        Checked = True
        State = cbChecked
        TabOrder = 10
      end
    end
  end
  object pnlClient: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 159
    Width = 1186
    Height = 394
    Align = alTop
    TabOrder = 1
    object PageControl1: TPageControl
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 1178
      Height = 386
      ActivePage = tabBINANCE
      Align = alClient
      TabOrder = 0
      object tabBINANCE: TTabSheet
        Caption = 'BINANCE'
        ImageIndex = 5
        OnShow = tabBINANCEShow
        object PageControl2: TPageControl
          Left = 0
          Top = 65
          Width = 1170
          Height = 293
          ActivePage = tabBinanceStocks
          Align = alClient
          TabOrder = 0
          object tabBinanceStocks: TTabSheet
            Caption = 'Stocks'
            OnShow = tabBinanceStocksShow
            object pnlRest: TPanel
              Left = 400
              Top = 3
              Width = 465
              Height = 249
              TabOrder = 0
              object GroupBox2: TGroupBox
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 457
                Height = 241
                Align = alClient
                Caption = 'REST API'
                TabOrder = 0
                object btnBinancePing: TButton
                  Left = 16
                  Top = 19
                  Width = 134
                  Height = 25
                  Caption = 'Ping'
                  TabOrder = 0
                  OnClick = btnBinancePingClick
                end
                object btnBinanceServerTime: TButton
                  Left = 156
                  Top = 19
                  Width = 134
                  Height = 25
                  Caption = 'Server Time'
                  TabOrder = 1
                  OnClick = btnBinanceServerTimeClick
                end
                object btnBinanceExchangeInformation: TButton
                  Left = 296
                  Top = 21
                  Width = 134
                  Height = 25
                  Caption = 'Exchange Information'
                  TabOrder = 2
                  OnClick = btnBinanceExchangeInformationClick
                end
                object btnBinanceOrderBook: TButton
                  Left = 16
                  Top = 50
                  Width = 134
                  Height = 25
                  Caption = 'Order Book'
                  TabOrder = 3
                  OnClick = btnBinanceOrderBookClick
                end
                object btnBinanceTrades: TButton
                  Left = 156
                  Top = 52
                  Width = 134
                  Height = 25
                  Caption = 'Trades'
                  TabOrder = 4
                  OnClick = btnBinanceTradesClick
                end
                object btnBinanceHistoricalTrades: TButton
                  Left = 296
                  Top = 52
                  Width = 134
                  Height = 25
                  Caption = 'Historical Trades'
                  TabOrder = 5
                  OnClick = btnBinanceHistoricalTradesClick
                end
                object btnBinanceAggregateTrades: TButton
                  Left = 16
                  Top = 83
                  Width = 134
                  Height = 25
                  Caption = 'Agg Trades'
                  TabOrder = 6
                  OnClick = btnBinanceAggregateTradesClick
                end
                object btnBinanceKLines: TButton
                  Left = 156
                  Top = 83
                  Width = 134
                  Height = 25
                  Caption = 'KLines'
                  TabOrder = 7
                  OnClick = btnBinanceKLinesClick
                end
                object btnBinanceAveragePrice: TButton
                  Left = 296
                  Top = 83
                  Width = 134
                  Height = 25
                  Caption = 'Average Price'
                  TabOrder = 8
                  OnClick = btnBinanceAveragePriceClick
                end
                object btnBinance24hrTicker: TButton
                  Left = 16
                  Top = 114
                  Width = 134
                  Height = 25
                  Caption = '24hr Ticker'
                  TabOrder = 9
                  OnClick = btnBinance24hrTickerClick
                end
                object btnBinancePriceTicker: TButton
                  Left = 156
                  Top = 114
                  Width = 134
                  Height = 25
                  Caption = 'Price Ticker'
                  TabOrder = 10
                  OnClick = btnBinancePriceTickerClick
                end
                object btnBinanceBookTicker: TButton
                  Left = 296
                  Top = 114
                  Width = 134
                  Height = 25
                  Caption = 'Book Ticker'
                  TabOrder = 11
                  OnClick = btnBinanceBookTickerClick
                end
                object btnBinanceAllOrders: TButton
                  Left = 16
                  Top = 176
                  Width = 134
                  Height = 25
                  Caption = 'All Orders'
                  TabOrder = 12
                  OnClick = btnBinanceAllOrdersClick
                end
                object btnBinanceAccountInformation: TButton
                  Left = 16
                  Top = 205
                  Width = 134
                  Height = 25
                  Caption = 'Account Information'
                  TabOrder = 13
                  OnClick = btnBinanceAccountInformationClick
                end
                object btnAccountTradeList: TButton
                  Left = 156
                  Top = 205
                  Width = 134
                  Height = 25
                  Caption = 'Account Trades'
                  TabOrder = 14
                  OnClick = btnAccountTradeListClick
                end
                object btnBinanceOpenOrders: TButton
                  Left = 156
                  Top = 176
                  Width = 134
                  Height = 25
                  Caption = 'Open Orders'
                  TabOrder = 15
                  OnClick = btnBinanceOpenOrdersClick
                end
              end
            end
            object pnlWebSockets: TPanel
              Left = 12
              Top = 3
              Width = 346
              Height = 252
              TabOrder = 1
              object GroupBox1: TGroupBox
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 338
                Height = 244
                Align = alClient
                Caption = 'WebSocket API'
                TabOrder = 0
                object Button1: TButton
                  Left = 10
                  Top = 22
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe Aggregate Trade'
                  TabOrder = 0
                  OnClick = Button1Click
                end
                object Button10: TButton
                  Left = 169
                  Top = 86
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe KLine'
                  TabOrder = 1
                  OnClick = Button10Click
                end
                object Button11: TButton
                  Left = 169
                  Top = 117
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe Ticker'
                  TabOrder = 2
                  OnClick = Button11Click
                end
                object Button12: TButton
                  Left = 169
                  Top = 148
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe All Market Ticker'
                  TabOrder = 3
                  OnClick = Button12Click
                end
                object Button13: TButton
                  Left = 169
                  Top = 179
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe Partial Book Depth'
                  TabOrder = 4
                  OnClick = Button13Click
                end
                object Button14: TButton
                  Left = 169
                  Top = 208
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe Diff Depth'
                  TabOrder = 5
                  OnClick = Button14Click
                end
                object Button2: TButton
                  Left = 10
                  Top = 54
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe Trade'
                  TabOrder = 6
                  OnClick = Button2Click
                end
                object Button3: TButton
                  Left = 10
                  Top = 86
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe KLine'
                  TabOrder = 7
                  OnClick = Button3Click
                end
                object Button4: TButton
                  Left = 10
                  Top = 117
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe Ticker'
                  TabOrder = 8
                  OnClick = Button4Click
                end
                object Button5: TButton
                  Left = 10
                  Top = 148
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe All Market Ticker'
                  TabOrder = 9
                  OnClick = Button5Click
                end
                object Button6: TButton
                  Left = 10
                  Top = 179
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe Partial Book Depth'
                  TabOrder = 10
                  OnClick = Button6Click
                end
                object Button7: TButton
                  Left = 10
                  Top = 208
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe Diff Depth'
                  TabOrder = 11
                  OnClick = Button7Click
                end
                object Button8: TButton
                  Left = 169
                  Top = 22
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe Aggregate Trade'
                  TabOrder = 12
                  OnClick = Button8Click
                end
                object Button9: TButton
                  Left = 169
                  Top = 53
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe Trade'
                  TabOrder = 13
                  OnClick = Button9Click
                end
              end
            end
          end
          object tabBinanceFutures: TTabSheet
            Caption = 'Futures'
            ImageIndex = 1
            OnShow = tabBinanceFuturesShow
            object GroupBox3: TGroupBox
              AlignWithMargins = True
              Left = 100
              Top = 3
              Width = 377
              Height = 254
              Caption = 'WebSocket API'
              TabOrder = 0
              object btnBinFutSubsAggregateTrade: TButton
                Left = 10
                Top = 22
                Width = 153
                Height = 25
                Caption = 'Subscribe Aggregate Trade'
                TabOrder = 0
                OnClick = btnBinFutSubsAggregateTradeClick
              end
              object btnBinFutUnSubsKLine: TButton
                Left = 169
                Top = 86
                Width = 153
                Height = 25
                Caption = 'UnSubscribe KLine'
                TabOrder = 1
                OnClick = btnBinFutUnSubsKLineClick
              end
              object btnBinFutUnSubsTicker: TButton
                Left = 169
                Top = 117
                Width = 153
                Height = 25
                Caption = 'UnSubscribe Ticker'
                TabOrder = 2
                OnClick = btnBinFutUnSubsTickerClick
              end
              object btnBinFutUnSubsAllMarketTicker: TButton
                Left = 169
                Top = 148
                Width = 153
                Height = 25
                Caption = 'UnSubscribe All Market Ticker'
                TabOrder = 3
                OnClick = btnBinFutUnSubsAllMarketTickerClick
              end
              object btnBinFutUnSubsPartialBookDepth: TButton
                Left = 169
                Top = 179
                Width = 153
                Height = 25
                Caption = 'UnSubscribe Partial Book Depth'
                TabOrder = 4
                OnClick = btnBinFutUnSubsPartialBookDepthClick
              end
              object btnBinFutUnSubsDiffDepth: TButton
                Left = 169
                Top = 208
                Width = 153
                Height = 25
                Caption = 'UnSubscribe Diff Depth'
                TabOrder = 5
                OnClick = btnBinFutUnSubsDiffDepthClick
              end
              object btnBinFutSubsMarkPrice: TButton
                Left = 10
                Top = 54
                Width = 153
                Height = 25
                Caption = 'Subscribe Mark Price'
                TabOrder = 6
                OnClick = btnBinFutSubsMarkPriceClick
              end
              object btnBinFutSubsKLine: TButton
                Left = 10
                Top = 86
                Width = 153
                Height = 25
                Caption = 'Subscribe KLine'
                TabOrder = 7
                OnClick = btnBinFutSubsKLineClick
              end
              object btnBinFutSubsTicker: TButton
                Left = 10
                Top = 117
                Width = 153
                Height = 25
                Caption = 'Subscribe Ticker'
                TabOrder = 8
                OnClick = btnBinFutSubsTickerClick
              end
              object btnBinFutSubsAllMarketTicker: TButton
                Left = 10
                Top = 148
                Width = 153
                Height = 25
                Caption = 'Subscribe All Market Ticker'
                TabOrder = 9
                OnClick = btnBinFutSubsAllMarketTickerClick
              end
              object btnBinFutSubsPartialBookDepth: TButton
                Left = 10
                Top = 179
                Width = 153
                Height = 25
                Caption = 'Subscribe Partial Book Depth'
                TabOrder = 10
                OnClick = btnBinFutSubsPartialBookDepthClick
              end
              object btnBinFutSubsDiffDepth: TButton
                Left = 10
                Top = 208
                Width = 153
                Height = 25
                Caption = 'Subscribe Diff Depth'
                TabOrder = 11
                OnClick = btnBinFutSubsDiffDepthClick
              end
              object btnBinFutUnSubsAggregateTrade: TButton
                Left = 169
                Top = 22
                Width = 153
                Height = 25
                Caption = 'UnSubscribe Aggregate Trade'
                TabOrder = 12
                OnClick = btnBinFutUnSubsAggregateTradeClick
              end
              object btnBinFutUnSubsMarkPrice: TButton
                Left = 169
                Top = 53
                Width = 153
                Height = 25
                Caption = 'UnSubscribe Mark Price'
                TabOrder = 13
                OnClick = btnBinFutUnSubsMarkPriceClick
              end
            end
            object GroupBox4: TGroupBox
              AlignWithMargins = True
              Left = 483
              Top = 3
              Width = 523
              Height = 252
              Caption = 'REST API'
              TabOrder = 1
              object btnBinanceFutPing: TButton
                Left = 16
                Top = 19
                Width = 134
                Height = 25
                Caption = 'Ping'
                TabOrder = 0
                OnClick = btnBinanceFutPingClick
              end
              object btnBinanceFutServerTime: TButton
                Left = 156
                Top = 19
                Width = 134
                Height = 25
                Caption = 'Server Time'
                TabOrder = 1
                OnClick = btnBinanceFutServerTimeClick
              end
              object btnBinanceFutExchangeInformation: TButton
                Left = 296
                Top = 19
                Width = 134
                Height = 25
                Caption = 'Exchange Information'
                TabOrder = 2
                OnClick = btnBinanceFutExchangeInformationClick
              end
              object btnBinanceFutOrderBook: TButton
                Left = 16
                Top = 50
                Width = 134
                Height = 25
                Caption = 'Order Book'
                TabOrder = 3
                OnClick = btnBinanceFutOrderBookClick
              end
              object btnBinanceFutTrades: TButton
                Left = 156
                Top = 52
                Width = 134
                Height = 25
                Caption = 'Trades'
                TabOrder = 4
                OnClick = btnBinanceFutTradesClick
              end
              object btnBinanceFutHistoricalTrades: TButton
                Left = 296
                Top = 52
                Width = 134
                Height = 25
                Caption = 'Historical Trades'
                TabOrder = 5
                OnClick = btnBinanceFutHistoricalTradesClick
              end
              object btnBinanceFutAggregateTrades: TButton
                Left = 16
                Top = 83
                Width = 134
                Height = 25
                Caption = 'Agg Trades'
                TabOrder = 6
                OnClick = btnBinanceFutAggregateTradesClick
              end
              object btnBinanceFutKLines: TButton
                Left = 156
                Top = 83
                Width = 134
                Height = 25
                Caption = 'KLines'
                TabOrder = 7
                OnClick = btnBinanceFutKLinesClick
              end
              object btnFinanceFutMarkPrice: TButton
                Left = 296
                Top = 83
                Width = 134
                Height = 25
                Caption = 'Mark Price'
                TabOrder = 8
                OnClick = btnFinanceFutMarkPriceClick
              end
              object btnBinanceFut24hrTicker: TButton
                Left = 16
                Top = 114
                Width = 134
                Height = 25
                Caption = '24hr Ticker'
                TabOrder = 9
                OnClick = btnBinanceFut24hrTickerClick
              end
              object btnBinanceFutPriceTicker: TButton
                Left = 156
                Top = 114
                Width = 134
                Height = 25
                Caption = 'Price Ticker'
                TabOrder = 10
                OnClick = btnBinanceFutPriceTickerClick
              end
              object btnBinanceFutBookTicker: TButton
                Left = 296
                Top = 114
                Width = 134
                Height = 25
                Caption = 'Book Ticker'
                TabOrder = 11
                OnClick = btnBinanceFutBookTickerClick
              end
              object btnBinanceFutAllOrders: TButton
                Left = 16
                Top = 179
                Width = 134
                Height = 25
                Caption = 'All Orders'
                TabOrder = 12
                OnClick = btnBinanceFutAllOrdersClick
              end
              object btnBinanceFutAccountInformation: TButton
                Left = 16
                Top = 210
                Width = 134
                Height = 25
                Caption = 'Account Information'
                TabOrder = 13
                OnClick = btnBinanceFutAccountInformationClick
              end
              object btnBinanceFutAccountBalance: TButton
                Left = 156
                Top = 208
                Width = 134
                Height = 25
                Caption = 'Account Trades'
                TabOrder = 14
                OnClick = btnBinanceFutAccountBalanceClick
              end
              object btnBinanceFutOpenOrders: TButton
                Left = 156
                Top = 179
                Width = 134
                Height = 25
                Caption = 'Open Orders'
                TabOrder = 15
                OnClick = btnBinanceFutOpenOrdersClick
              end
              object btnFinanceFutFundingRateHistory: TButton
                Left = 16
                Top = 145
                Width = 134
                Height = 25
                Caption = 'Funding Rate History'
                TabOrder = 16
                OnClick = btnFinanceFutFundingRateHistoryClick
              end
              object btnBinanceFutOpenInterest: TButton
                Left = 156
                Top = 145
                Width = 134
                Height = 25
                Caption = 'Open Interest'
                TabOrder = 17
                OnClick = btnBinanceFutOpenInterestClick
              end
            end
            object optBINANCEFUTUSDT: TRadioButton
              Left = 16
              Top = 16
              Width = 57
              Height = 17
              Caption = 'USDT'
              Checked = True
              TabOrder = 2
              TabStop = True
              OnClick = optBINANCEFUTUSDTClick
            end
            object optBINANCEFUTCOIN: TRadioButton
              Left = 16
              Top = 48
              Width = 57
              Height = 17
              Caption = 'COIN'
              TabOrder = 3
              OnClick = optBINANCEFUTCOINClick
            end
          end
          object tabBinanceWallet: TTabSheet
            Caption = 'Wallet'
            ImageIndex = 2
            object GroupBox13: TGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 1156
              Height = 259
              Align = alClient
              Caption = 'REST API'
              TabOrder = 0
              object Label40: TLabel
                Left = 568
                Top = 24
                Width = 25
                Height = 13
                Caption = 'Coin:'
              end
              object Label41: TLabel
                Left = 661
                Top = 24
                Width = 43
                Height = 13
                Caption = 'Address:'
              end
              object Label42: TLabel
                Left = 855
                Top = 24
                Width = 41
                Height = 13
                Caption = 'Amount:'
              end
              object btnBinanceWalletSystemStatus: TButton
                Left = 16
                Top = 19
                Width = 134
                Height = 25
                Caption = 'System Status'
                TabOrder = 0
                OnClick = btnBinanceWalletSystemStatusClick
              end
              object btnBinanceWalletAllCoins: TButton
                Left = 17
                Top = 52
                Width = 134
                Height = 25
                Caption = 'All Coins'
                TabOrder = 1
                OnClick = btnBinanceWalletAllCoinsClick
              end
              object btnBinanceWalletDailySnapshot: TButton
                Left = 157
                Top = 52
                Width = 134
                Height = 25
                Caption = 'Daily Snapshot'
                TabOrder = 2
                OnClick = btnBinanceWalletDailySnapshotClick
              end
              object btnBinanceWalletWithdraw: TButton
                Left = 919
                Top = 41
                Width = 134
                Height = 25
                Caption = 'Withdraw'
                TabOrder = 3
                OnClick = btnBinanceWalletWithdrawClick
              end
              object btnBinanceWalletWithdrawHistory: TButton
                Left = 16
                Top = 83
                Width = 134
                Height = 25
                Caption = 'Withdraw History'
                TabOrder = 4
                OnClick = btnBinanceWalletWithdrawHistoryClick
              end
              object btnBinanceWalletDepositHistory: TButton
                Left = 156
                Top = 83
                Width = 134
                Height = 25
                Caption = 'Deposit History'
                TabOrder = 5
                OnClick = btnBinanceWalletDepositHistoryClick
              end
              object btnBinanceWalletAccountStatus: TButton
                Left = 17
                Top = 114
                Width = 134
                Height = 25
                Caption = 'Account Status'
                TabOrder = 6
                OnClick = btnBinanceWalletAccountStatusClick
              end
              object btnBinanceWalletApiKeyPermission: TButton
                Left = 17
                Top = 145
                Width = 134
                Height = 25
                Caption = 'Api Key Permission'
                TabOrder = 7
                OnClick = btnBinanceWalletApiKeyPermissionClick
              end
              object btnBinanceWalletAccountApiTradingStatus: TButton
                Left = 157
                Top = 114
                Width = 134
                Height = 25
                Caption = 'Trading Status'
                TabOrder = 8
                OnClick = btnBinanceWalletAccountApiTradingStatusClick
              end
              object txtBinanceWalletCoin: TEdit
                Left = 568
                Top = 43
                Width = 87
                Height = 21
                TabOrder = 9
                Text = 'BTC'
              end
              object txtBinanceWalletAddress: TEdit
                Left = 661
                Top = 43
                Width = 188
                Height = 21
                TabOrder = 10
              end
              object txtBinanceWalletAmount: TEdit
                Left = 855
                Top = 43
                Width = 58
                Height = 21
                TabOrder = 11
                Text = '0.25'
              end
            end
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 1170
          Height = 65
          Align = alTop
          TabOrder = 1
          object Label23: TLabel
            Left = 26
            Top = 7
            Width = 33
            Height = 13
            Caption = 'ApiKey'
          end
          object Label22: TLabel
            Left = 341
            Top = 7
            Width = 95
            Height = 13
            Caption = 'WebSocket Symbol:'
          end
          object Label44: TLabel
            Left = 350
            Top = 37
            Width = 86
            Height = 13
            Caption = 'REST API Symbol:'
          end
          object Label43: TLabel
            Left = 13
            Top = 37
            Width = 46
            Height = 13
            Caption = 'ApiSecret'
          end
          object txtBinanceApiKey: TEdit
            Left = 65
            Top = 4
            Width = 211
            Height = 21
            TabOrder = 0
            OnChange = txtBinanceApiKeyChange
          end
          object txtBinanceSymbol: TEdit
            Left = 442
            Top = 7
            Width = 121
            Height = 21
            TabOrder = 1
            Text = 'bnbbtc'
          end
          object txtBinanceRestSymbol: TEdit
            Left = 442
            Top = 34
            Width = 121
            Height = 21
            TabOrder = 2
            Text = 'BNBBTC'
          end
          object txtBinanceApiSecret: TEdit
            Left = 65
            Top = 34
            Width = 211
            Height = 21
            PasswordChar = '*'
            TabOrder = 3
            OnChange = txtBinanceApiSecretChange
          end
          object chkTestNet: TCheckBox
            Left = 592
            Top = 8
            Width = 153
            Height = 17
            Caption = 'TestNet (Demo Account)'
            TabOrder = 4
            OnClick = chkTestNetClick
          end
          object chkBinanceUS: TCheckBox
            Left = 592
            Top = 31
            Width = 153
            Height = 17
            Caption = 'Binance.US'
            TabOrder = 5
            OnClick = chkBinanceUSClick
          end
        end
      end
      object tabBITTREX: TTabSheet
        Caption = 'BITTREX'
        ImageIndex = 3
        OnShow = tabBITTREXShow
        object GroupBox5: TGroupBox
          Left = 443
          Top = 16
          Width = 463
          Height = 249
          Caption = 'Private Methods'
          TabOrder = 0
          object Label19: TLabel
            Left = 25
            Top = 27
            Width = 33
            Height = 13
            Caption = 'ApiKey'
          end
          object Label20: TLabel
            Left = 12
            Top = 59
            Width = 46
            Height = 13
            Caption = 'ApiSecret'
          end
          object txtBittrexApiKey: TEdit
            Left = 64
            Top = 24
            Width = 257
            Height = 21
            TabOrder = 0
          end
          object btnBittrexAuthenticate: TButton
            Left = 200
            Top = 83
            Width = 121
            Height = 25
            Caption = 'Authenticate'
            TabOrder = 1
            OnClick = btnBittrexAuthenticateClick
          end
          object txtBittrexApiSecret: TEdit
            Left = 64
            Top = 56
            Width = 257
            Height = 21
            TabOrder = 2
          end
          object btnBittrexIsAuthenticated: TButton
            Left = 64
            Top = 83
            Width = 121
            Height = 25
            Caption = 'IsAuthenticated'
            TabOrder = 3
            OnClick = btnBittrexIsAuthenticatedClick
          end
          object btnBittrexSubscribeBalance: TButton
            Left = 64
            Top = 128
            Width = 121
            Height = 25
            Caption = 'Subscribe Balance'
            TabOrder = 4
            OnClick = btnBittrexSubscribeBalanceClick
          end
          object btnBittrexUnSubscribeBalance: TButton
            Left = 199
            Top = 128
            Width = 122
            Height = 25
            Caption = 'UnSubscribe Balance'
            TabOrder = 5
            OnClick = btnBittrexUnSubscribeBalanceClick
          end
          object btnBittrexSubscribeDeposit: TButton
            Left = 64
            Top = 159
            Width = 121
            Height = 25
            Caption = 'Subscribe Deposit'
            TabOrder = 6
            OnClick = btnBittrexSubscribeDepositClick
          end
          object btnBittrexUnSubscribeDeposit: TButton
            Left = 199
            Top = 159
            Width = 122
            Height = 25
            Caption = 'UnSubscribe Deposit'
            TabOrder = 7
            OnClick = btnBittrexUnSubscribeDepositClick
          end
          object btnBittrexSubscribeOrder: TButton
            Left = 64
            Top = 190
            Width = 121
            Height = 25
            Caption = 'Subscribe Order'
            TabOrder = 8
            OnClick = btnBittrexSubscribeOrderClick
          end
          object btnBittrexUnSubscribeOrder: TButton
            Left = 199
            Top = 190
            Width = 122
            Height = 25
            Caption = 'UnSubscribe Order'
            TabOrder = 9
            OnClick = btnBittrexUnSubscribeOrderClick
          end
        end
        object GroupBox6: TGroupBox
          Left = 12
          Top = 16
          Width = 410
          Height = 249
          Caption = 'Public Methods'
          TabOrder = 1
          object Label21: TLabel
            Left = 36
            Top = 32
            Width = 33
            Height = 13
            Caption = 'Market'
          end
          object btnBittrexSubscribeHeartBeat: TButton
            Left = 50
            Top = 80
            Width = 121
            Height = 25
            Caption = 'Subscribe HeartBeat'
            TabOrder = 0
            OnClick = btnBittrexSubscribeHeartBeatClick
          end
          object btnBittrexUnSubscribeHeartBeat: TButton
            Left = 209
            Top = 80
            Width = 121
            Height = 25
            Caption = 'UnSubscribe HeartBeat'
            TabOrder = 1
            OnClick = btnBittrexUnSubscribeHeartBeatClick
          end
          object btnBittrexSubscribeCandle: TButton
            Left = 50
            Top = 111
            Width = 121
            Height = 25
            Caption = 'Subscribe Candle'
            TabOrder = 2
            OnClick = btnBittrexSubscribeCandleClick
          end
          object btnBittrexUnSubscribeCandle: TButton
            Left = 209
            Top = 111
            Width = 121
            Height = 25
            Caption = 'UnSubscribe Candel'
            TabOrder = 3
            OnClick = btnBittrexUnSubscribeCandleClick
          end
          object btnBittrexSubscribeMarketSummary: TButton
            Left = 50
            Top = 142
            Width = 121
            Height = 25
            Caption = 'Subscribe Summary'
            TabOrder = 4
            OnClick = btnBittrexSubscribeMarketSummaryClick
          end
          object btnBittrexUnSubscribeMarketSummary: TButton
            Left = 209
            Top = 142
            Width = 121
            Height = 25
            Caption = 'UnSubscribe Summary'
            TabOrder = 5
            OnClick = btnBittrexUnSubscribeMarketSummaryClick
          end
          object btnBittrexSubscribeOrderBook: TButton
            Left = 50
            Top = 173
            Width = 121
            Height = 25
            Caption = 'Subscribe Order Book'
            TabOrder = 6
            OnClick = btnBittrexSubscribeOrderBookClick
          end
          object btnBittrexUnSubscribeOrderBook: TButton
            Left = 209
            Top = 173
            Width = 121
            Height = 25
            Caption = 'UnSubscribe Book'
            TabOrder = 7
            OnClick = btnBittrexUnSubscribeOrderBookClick
          end
          object btnBittrexSubscribeTicker: TButton
            Left = 50
            Top = 204
            Width = 121
            Height = 25
            Caption = 'Subscribe Ticker'
            TabOrder = 8
            OnClick = btnBittrexSubscribeTickerClick
          end
          object btnBittrexUnSubscribeTicker: TButton
            Left = 209
            Top = 204
            Width = 121
            Height = 25
            Caption = 'UnSubscribe Ticker'
            TabOrder = 9
            OnClick = btnBittrexUnSubscribeTickerClick
          end
          object txtBittrexMarketName: TEdit
            Left = 75
            Top = 29
            Width = 121
            Height = 21
            TabOrder = 10
            Text = 'BTC-USD'
          end
        end
      end
      object tabBITSTAMP: TTabSheet
        Caption = 'BITSTAMP'
        ImageIndex = 7
        OnShow = tabBITSTAMPShow
        object btnTickerBITSTAMP: TButton
          Left = 40
          Top = 48
          Width = 153
          Height = 25
          Caption = 'LIVE TICKER'
          TabOrder = 0
          OnClick = btnTickerBITSTAMPClick
        end
        object btnOrderBookBITSTAMP: TButton
          Left = 40
          Top = 110
          Width = 153
          Height = 25
          Caption = 'LIVE ORDER BOOK'
          TabOrder = 1
          OnClick = btnOrderBookBITSTAMPClick
        end
        object btnFullOrderBookBITSTAMP: TButton
          Left = 40
          Top = 172
          Width = 153
          Height = 25
          Caption = 'LIVE FULL ORDER BOOK'
          TabOrder = 2
          OnClick = btnFullOrderBookBITSTAMPClick
        end
        object btnLiveOrdersBITSTAMP: TButton
          Left = 40
          Top = 79
          Width = 153
          Height = 25
          Caption = 'LIVE ORDERS'
          TabOrder = 3
          OnClick = btnLiveOrdersBITSTAMPClick
        end
        object txtBitstampCurrency: TEdit
          Left = 40
          Top = 16
          Width = 121
          Height = 21
          TabOrder = 4
          Text = 'btcusd'
        end
        object btnDetailOrderBookBITSTAMP: TButton
          Left = 40
          Top = 141
          Width = 153
          Height = 25
          Caption = 'LIVE ORDER BOOK'
          TabOrder = 5
          OnClick = btnDetailOrderBookBITSTAMPClick
        end
      end
      object tabHUOBI: TTabSheet
        Caption = 'HUOBI'
        ImageIndex = 9
        OnShow = tabHUOBIShow
        object Label30: TLabel
          Left = 17
          Top = 24
          Width = 34
          Height = 13
          Caption = 'Symbol'
        end
        object btnSubscribeHuobiKLine: TButton
          Left = 17
          Top = 64
          Width = 149
          Height = 25
          Caption = 'Subscribe KLine'
          TabOrder = 0
          OnClick = btnSubscribeHuobiKLineClick
        end
        object txtHuobiSymbol: TEdit
          Left = 56
          Top = 21
          Width = 121
          Height = 21
          TabOrder = 1
          Text = 'btcusdt'
        end
        object btnUnSubscribeHuobiKLine: TButton
          Left = 172
          Top = 64
          Width = 149
          Height = 25
          Caption = 'UnSubscribe KLine'
          TabOrder = 2
          OnClick = btnUnSubscribeHuobiKLineClick
        end
        object cboHuobiPeriods: TComboBox
          Left = 327
          Top = 66
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 3
          Text = '1 Min'
          Items.Strings = (
            '1 Min'
            '5 Min'
            '15 Min'
            '30 Min'
            '60 Min'
            '1 Day'
            '1 Mon'
            '1 Week'
            '1 Year')
        end
        object btnUnSubscribeHuobiMarketDepth: TButton
          Left = 172
          Top = 95
          Width = 149
          Height = 25
          Caption = 'UnSubscribe Market Depth'
          TabOrder = 4
          OnClick = btnUnSubscribeHuobiMarketDepthClick
        end
        object btnSubscribeHuobiMarketDepth: TButton
          Left = 17
          Top = 95
          Width = 149
          Height = 25
          Caption = 'Subscribe Market Depth'
          TabOrder = 5
          OnClick = btnSubscribeHuobiMarketDepthClick
        end
        object cboHuobiDepths: TComboBox
          Left = 328
          Top = 96
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 6
          Text = 'Step 0'
          Items.Strings = (
            'Step 0'
            'Step 1'
            'Step 2'
            'Step 3'
            'Step 4'
            'Step 5')
        end
        object btnSubscribeHuobiTradeDetail: TButton
          Left = 18
          Top = 126
          Width = 149
          Height = 25
          Caption = 'Subscribe Trade Detail'
          TabOrder = 7
          OnClick = btnSubscribeHuobiTradeDetailClick
        end
        object btnUnSubscribeHuobiTradeDetail: TButton
          Left = 173
          Top = 126
          Width = 149
          Height = 25
          Caption = 'UnSubscribe Trade Detail'
          TabOrder = 8
          OnClick = btnUnSubscribeHuobiTradeDetailClick
        end
        object btnUnSubscribeHuobiMarketDetail: TButton
          Left = 173
          Top = 157
          Width = 149
          Height = 25
          Caption = 'UnSubscribe Market Detail'
          TabOrder = 9
          OnClick = btnUnSubscribeHuobiMarketDetailClick
        end
        object btnSubscribeHuobiMarketDetail: TButton
          Left = 18
          Top = 157
          Width = 149
          Height = 25
          Caption = 'Subscribe Market Detail'
          TabOrder = 10
          OnClick = btnSubscribeHuobiMarketDetailClick
        end
        object btnSubscribeHuobiMarketTickers: TButton
          Left = 18
          Top = 188
          Width = 149
          Height = 25
          Caption = 'Subscribe Market Tickers'
          TabOrder = 11
          OnClick = btnSubscribeHuobiMarketTickersClick
        end
        object btnUnSubscribeHuobiMarketTickers: TButton
          Left = 173
          Top = 188
          Width = 149
          Height = 25
          Caption = 'UnSubscribe Market Tickers'
          TabOrder = 12
          OnClick = btnUnSubscribeHuobiMarketTickersClick
        end
      end
      object tabCEX: TTabSheet
        Caption = 'CEX'
        ImageIndex = 10
        OnShow = tabCEXShow
        object Label31: TLabel
          Left = 25
          Top = 27
          Width = 33
          Height = 13
          Caption = 'ApiKey'
        end
        object Label32: TLabel
          Left = 12
          Top = 59
          Width = 46
          Height = 13
          Caption = 'ApiSecret'
        end
        object Label33: TLabel
          Left = 19
          Top = 168
          Width = 39
          Height = 13
          Caption = 'Symbols'
        end
        object btnCexSubscribeTickers: TButton
          Left = 64
          Top = 120
          Width = 121
          Height = 25
          Caption = 'Subscribe Tickers'
          TabOrder = 0
          OnClick = btnCexSubscribeTickersClick
        end
        object txtCexApiSecret: TEdit
          Left = 64
          Top = 56
          Width = 211
          Height = 21
          TabOrder = 1
        end
        object txtCexApiKey: TEdit
          Left = 64
          Top = 24
          Width = 211
          Height = 21
          TabOrder = 2
        end
        object btnCexAuthenticate: TButton
          Left = 202
          Top = 83
          Width = 75
          Height = 25
          Caption = 'Authenticate'
          TabOrder = 3
          OnClick = btnCexAuthenticateClick
        end
        object btnCexUnSubscribeTickers: TButton
          Left = 191
          Top = 120
          Width = 121
          Height = 25
          Caption = 'UnSubscribe Tickers'
          TabOrder = 4
          OnClick = btnCexUnSubscribeTickersClick
        end
        object txtCexSymbol1: TEdit
          Left = 64
          Top = 165
          Width = 38
          Height = 21
          TabOrder = 5
          Text = 'BTC'
        end
        object txtCexSymbol2: TEdit
          Left = 108
          Top = 165
          Width = 42
          Height = 21
          TabOrder = 6
          Text = 'USD'
        end
        object btnCexSubscribeCharts: TButton
          Left = 223
          Top = 163
          Width = 89
          Height = 25
          Caption = 'Subscribe Charts'
          TabOrder = 7
          OnClick = btnCexSubscribeChartsClick
        end
        object cboCexPeriods: TComboBox
          Left = 156
          Top = 165
          Width = 61
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 8
          Text = '1m'
          Items.Strings = (
            '1m'
            '3m'
            '5m'
            '15m'
            '30m'
            '1h'
            '2h'
            '4h'
            '6h'
            '12h'
            '1d'
            '3d'
            '1w')
        end
        object btnCexGetTicker: TButton
          Left = 64
          Top = 192
          Width = 75
          Height = 25
          Caption = 'Get Ticker'
          TabOrder = 9
          OnClick = btnCexGetTickerClick
        end
        object btnCexGetBalance: TButton
          Left = 145
          Top = 192
          Width = 75
          Height = 25
          Caption = 'Get Balance'
          TabOrder = 10
          OnClick = btnCexGetBalanceClick
        end
        object btnCexSubscribeOrderBook: TButton
          Left = 64
          Top = 223
          Width = 113
          Height = 25
          Caption = 'Subscribe Order Book'
          TabOrder = 11
          OnClick = btnCexSubscribeOrderBookClick
        end
        object btnCexUnsubscribeOrderBook: TButton
          Left = 183
          Top = 223
          Width = 130
          Height = 25
          Caption = 'UnSubscribe Order Book'
          TabOrder = 12
          OnClick = btnCexUnsubscribeOrderBookClick
        end
        object btnCexGetOpenOrders: TButton
          Left = 223
          Top = 192
          Width = 89
          Height = 25
          Caption = 'Get Open Orders'
          TabOrder = 13
          OnClick = btnCexGetOpenOrdersClick
        end
        object btnCexGetArchivedOrders: TButton
          Left = 64
          Top = 254
          Width = 113
          Height = 25
          Caption = 'Get Archived Orders'
          TabOrder = 14
          OnClick = btnCexGetArchivedOrdersClick
        end
        object btnCexGetOpenPositions: TButton
          Left = 183
          Top = 254
          Width = 129
          Height = 25
          Caption = 'Get Open Positions'
          TabOrder = 15
          OnClick = btnCexGetOpenPositionsClick
        end
      end
      object tabBITMEX: TTabSheet
        Caption = 'BITMEX'
        ImageIndex = 11
        OnShow = tabBITMEXShow
        object Label36: TLabel
          Left = 25
          Top = 19
          Width = 33
          Height = 13
          Caption = 'ApiKey'
        end
        object Label37: TLabel
          Left = 12
          Top = 51
          Width = 46
          Height = 13
          Caption = 'ApiSecret'
        end
        object Label35: TLabel
          Left = 513
          Top = 0
          Width = 34
          Height = 13
          Caption = 'Symbol'
        end
        object txtBitmexApiKey: TEdit
          Left = 64
          Top = 16
          Width = 211
          Height = 21
          TabOrder = 0
          OnChange = txtBitmexApiKeyChange
        end
        object txtBitmexApiSecret: TEdit
          Left = 64
          Top = 48
          Width = 211
          Height = 21
          TabOrder = 1
          OnChange = txtBitmexApiSecretChange
        end
        object btnBitmexAuthenticate: TButton
          Left = 299
          Top = 14
          Width = 75
          Height = 25
          Caption = 'Authenticate'
          TabOrder = 2
          OnClick = btnBitmexAuthenticateClick
        end
        object pageControlBitmex: TPageControl
          Left = 12
          Top = 75
          Width = 1125
          Height = 270
          ActivePage = tabBitmexWS
          TabOrder = 3
          object tabBitmexWS: TTabSheet
            Caption = 'WebSocket'
            object Label34: TLabel
              Left = 18
              Top = 16
              Width = 30
              Height = 13
              Caption = 'Topics'
            end
            object cboBitmexTopics: TComboBox
              Left = 26
              Top = 35
              Width = 145
              Height = 21
              Style = csDropDownList
              ItemIndex = 7
              TabOrder = 0
              Text = 'orderBookL2_25'
              Items.Strings = (
                'announcement'
                'chat'
                'connected'
                'funding'
                'instrument'
                'insurance'
                'liquidation'
                'orderBookL2_25'
                'orderBookL2'
                'orderBook10'
                'publicNotifications'
                'quote'
                'quoteBin1m'
                'quoteBin5m'
                'quoteBin1h'
                'quoteBin1d'
                'settlement'
                'trade'
                'tradeBin1m'
                'tradeBin5m'
                'tradeBin1h'
                'tradeBin1d'
                'affiliate'
                'execution'
                'order'
                'margin'
                'position'
                'privateNotifications'
                'transact'
                'wallet')
            end
            object btnBitmexSubscribe: TButton
              Left = 177
              Top = 33
              Width = 75
              Height = 25
              Caption = 'Subscribe'
              TabOrder = 1
              OnClick = btnBitmexSubscribeClick
            end
            object btnBitmexUnsubscribe: TButton
              Left = 258
              Top = 33
              Width = 75
              Height = 25
              Caption = 'Unsubscribe'
              TabOrder = 2
              OnClick = btnBitmexUnsubscribeClick
            end
          end
          object tabBitmexREST: TTabSheet
            Caption = 'REST'
            ImageIndex = 1
            object Label96: TLabel
              Left = 336
              Top = 29
              Width = 20
              Height = 13
              Caption = 'Side'
            end
            object Label97: TLabel
              Left = 415
              Top = 29
              Width = 37
              Height = 13
              Caption = 'Amount'
            end
            object Label98: TLabel
              Left = 336
              Top = 93
              Width = 20
              Height = 13
              Caption = 'Side'
            end
            object Label99: TLabel
              Left = 415
              Top = 93
              Width = 37
              Height = 13
              Caption = 'Amount'
            end
            object Label100: TLabel
              Left = 550
              Top = 93
              Width = 47
              Height = 13
              Caption = 'Limit Price'
            end
            object btnBitmexGetExecutions: TButton
              Left = 24
              Top = 195
              Width = 134
              Height = 25
              Caption = 'Get Executions'
              TabOrder = 0
              OnClick = btnBitmexGetExecutionsClick
            end
            object btnBitmexGetOrderBook: TButton
              Left = 24
              Top = 132
              Width = 134
              Height = 25
              Caption = 'Get Order Book'
              TabOrder = 1
              OnClick = btnBitmexGetOrderBookClick
            end
            object btnBitmexGetPosition: TButton
              Left = 24
              Top = 101
              Width = 134
              Height = 25
              Caption = 'Get Position'
              TabOrder = 2
              OnClick = btnBitmexGetPositionClick
            end
            object btnBitmexGetQuote: TButton
              Left = 24
              Top = 70
              Width = 134
              Height = 25
              Caption = 'Get Quote'
              TabOrder = 3
              OnClick = btnBitmexGetQuoteClick
            end
            object btnBitmexGetInstrument: TButton
              Left = 24
              Top = 39
              Width = 134
              Height = 25
              Caption = 'Get Instrument'
              TabOrder = 4
              OnClick = btnBitmexGetInstrumentClick
            end
            object btnBitmexGetOrders: TButton
              Left = 24
              Top = 163
              Width = 134
              Height = 25
              Caption = 'Get Orders'
              TabOrder = 5
              OnClick = btnBitmexGetOrdersClick
            end
            object cboBitmexMarketOrderSide: TComboBox
              Left = 336
              Top = 48
              Width = 73
              Height = 21
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 6
              Text = 'Buy'
              Items.Strings = (
                'Buy'
                'Sell')
            end
            object txtBitmexMarketOrderSize: TEdit
              Left = 415
              Top = 48
              Width = 129
              Height = 21
              TabOrder = 7
              Text = '100.00'
            end
            object cboBitmexMarketOrder: TButton
              Left = 550
              Top = 46
              Width = 111
              Height = 25
              Caption = 'Market Order'
              TabOrder = 8
              OnClick = cboBitmexMarketOrderClick
            end
            object cboBitmexLimitOrderSide: TComboBox
              Left = 336
              Top = 112
              Width = 73
              Height = 21
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 9
              Text = 'Buy'
              Items.Strings = (
                'Buy'
                'Sell')
            end
            object txtBitmexLimitOrderSize: TEdit
              Left = 415
              Top = 112
              Width = 121
              Height = 21
              TabOrder = 10
              Text = '100.00'
            end
            object txtBitmexLimitOrderPrice: TEdit
              Left = 550
              Top = 112
              Width = 131
              Height = 21
              TabOrder = 11
              Text = '4500.00'
            end
            object cboBitmexLimitOrder: TButton
              Left = 687
              Top = 110
              Width = 111
              Height = 25
              Caption = 'Limit Order'
              TabOrder = 12
              OnClick = cboBitmexLimitOrderClick
            end
            object btnBitmexCancelAllOrders: TButton
              Left = 336
              Top = 155
              Width = 111
              Height = 25
              Caption = 'Cancel All Orders'
              TabOrder = 13
              OnClick = btnBitmexCancelAllOrdersClick
            end
          end
        end
        object txtBitmexSymbol: TEdit
          Left = 513
          Top = 19
          Width = 62
          Height = 21
          TabOrder = 4
          Text = 'XBTUSD'
        end
        object chkBitmexTestNet: TCheckBox
          Left = 592
          Top = 18
          Width = 97
          Height = 17
          Caption = 'TestNet'
          TabOrder = 5
          OnClick = chkBitmexTestNetClick
        end
      end
      object tabFXCM: TTabSheet
        Caption = 'FXCM'
        ImageIndex = 13
        OnShow = tabFXCMShow
        object Label38: TLabel
          Left = 12
          Top = 15
          Width = 65
          Height = 13
          Caption = 'Access Token'
        end
        object txtFXCMAccessToken: TEdit
          Left = 12
          Top = 34
          Width = 263
          Height = 21
          TabOrder = 0
          OnChange = txtFXCMAccessTokenChange
        end
        object btnFXCMGetSymbols: TButton
          Left = 16
          Top = 72
          Width = 75
          Height = 25
          Caption = 'Get Symbols'
          TabOrder = 1
          OnClick = btnFXCMGetSymbolsClick
        end
        object btnFXCMSubscribeMarketData: TButton
          Left = 16
          Top = 103
          Width = 134
          Height = 25
          Caption = 'Subscribe Market Data'
          TabOrder = 2
          OnClick = btnFXCMSubscribeMarketDataClick
        end
        object btnFXCMUnSubscribeMarketData: TButton
          Left = 156
          Top = 103
          Width = 154
          Height = 25
          Caption = 'UnSubscribe Market Data'
          TabOrder = 3
          OnClick = btnFXCMUnSubscribeMarketDataClick
        end
        object txtFXCMSymbol1: TEdit
          Left = 319
          Top = 105
          Width = 29
          Height = 21
          TabOrder = 4
          Text = 'EUR'
        end
        object txtFXCMSymbol2: TEdit
          Left = 351
          Top = 105
          Width = 36
          Height = 21
          TabOrder = 5
          Text = 'USD'
        end
        object btnFXCMSubscribeTradingTables: TButton
          Left = 16
          Top = 136
          Width = 134
          Height = 25
          Caption = 'Subscribe Trading Tables'
          TabOrder = 6
          OnClick = btnFXCMSubscribeTradingTablesClick
        end
        object btnFXCMUnSubscribeTradingTables: TButton
          Left = 156
          Top = 136
          Width = 157
          Height = 25
          Caption = 'UnSubscribe Trading Tables'
          TabOrder = 7
          OnClick = btnFXCMUnSubscribeTradingTablesClick
        end
        object cboFXCMTradingModels: TComboBox
          Left = 319
          Top = 138
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 4
          TabOrder = 8
          Text = 'Account'
          Items.Strings = (
            'Offer'
            'OpenPosition'
            'ClosedPosition'
            'Order'
            'Account'
            'Summary'
            'LeverageProfile'
            'Properties')
        end
        object btnFXCMSnapshotTradingTables: TButton
          Left = 475
          Top = 136
          Width = 150
          Height = 25
          Caption = 'Snapshot Trading Tables'
          TabOrder = 9
          OnClick = btnFXCMSnapshotTradingTablesClick
        end
        object btnFXCMGetHistoricalData: TButton
          Left = 16
          Top = 168
          Width = 134
          Height = 25
          Caption = 'GetHistoricalData'
          TabOrder = 10
          OnClick = btnFXCMGetHistoricalDataClick
        end
        object txtFXCMOfferId: TEdit
          Left = 156
          Top = 170
          Width = 121
          Height = 21
          Hint = 'OfferId'
          TabOrder = 11
        end
        object cboFXCMTimeFrame: TComboBox
          Left = 282
          Top = 170
          Width = 145
          Height = 21
          Hint = 'TimeFrame'
          Style = csDropDownList
          ItemIndex = 4
          TabOrder = 12
          Text = 'Hour1'
          Items.Strings = (
            'Min1'
            'Min5'
            'Min15'
            'Min30'
            'Hour1'
            'Hour2'
            'Hour3'
            'Hour4'
            'Hour6'
            'Hour8'
            'Day1'
            'Week1'
            'Month1')
        end
        object txtFXCMCandels: TEdit
          Left = 433
          Top = 170
          Width = 36
          Height = 21
          Hint = 'Candels'
          TabOrder = 13
          Text = '10'
        end
        object chkFXCMDemo: TCheckBox
          Left = 299
          Top = 36
          Width = 97
          Height = 17
          Caption = 'Demo'
          TabOrder = 14
          OnClick = chkFXCMDemoClick
        end
      end
      object tabKRAKEN: TTabSheet
        Caption = 'KRAKEN'
        ImageIndex = 15
        OnShow = tabKRAKENShow
        object Pair: TLabel
          Left = 472
          Top = 27
          Width = 91
          Height = 13
          Caption = 'WebSocket Symbol'
        end
        object Label48: TLabel
          Left = 43
          Top = 27
          Width = 33
          Height = 13
          Caption = 'ApiKey'
        end
        object Label49: TLabel
          Left = 30
          Top = 57
          Width = 46
          Height = 13
          Caption = 'ApiSecret'
        end
        object Label50: TLabel
          Left = 501
          Top = 58
          Width = 62
          Height = 13
          Caption = 'REST Symbol'
        end
        object txtKrakenPair: TEdit
          Left = 569
          Top = 24
          Width = 121
          Height = 21
          TabOrder = 0
          Text = 'XBT/USD'
        end
        object txtKrakenApiKey: TEdit
          Left = 82
          Top = 24
          Width = 211
          Height = 21
          TabOrder = 1
          OnChange = txtKrakenApiKeyChange
        end
        object txtKrakenApiSecret: TEdit
          Left = 82
          Top = 54
          Width = 211
          Height = 21
          TabOrder = 2
          OnChange = txtKrakenApiSecretChange
        end
        object txtKrakenRESTPair: TEdit
          Left = 569
          Top = 54
          Width = 121
          Height = 21
          TabOrder = 3
          Text = 'XBTUSD'
        end
        object PageControlKraken: TPageControl
          Left = 4
          Top = 81
          Width = 1021
          Height = 272
          ActivePage = tabKrakenStocks
          TabOrder = 4
          object tabKrakenStocks: TTabSheet
            Caption = 'Stocks'
            OnShow = tabKrakenStocksShow
            object pageKraken: TPageControl
              Left = 0
              Top = 0
              Width = 1013
              Height = 244
              ActivePage = tabKrakenWebSocketsPublicAPI
              Align = alClient
              TabOrder = 0
              object tabKrakenWebSocketsPublicAPI: TTabSheet
                Caption = 'WebSockets Public API'
                object btnKrakenSubscribeAll: TButton
                  Left = 11
                  Top = 176
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe All'
                  TabOrder = 0
                  OnClick = btnKrakenSubscribeAllClick
                end
                object btnKrakenSubscribeBook: TButton
                  Left = 11
                  Top = 114
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe Book'
                  TabOrder = 1
                  OnClick = btnKrakenSubscribeBookClick
                end
                object btnKrakenSubscribeOHLC: TButton
                  Left = 10
                  Top = 52
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe OHLC'
                  TabOrder = 2
                  OnClick = btnKrakenSubscribeOHLCClick
                end
                object btnKrakenSubscribeSpread: TButton
                  Left = 11
                  Top = 145
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe Spread'
                  TabOrder = 3
                  OnClick = btnKrakenSubscribeSpreadClick
                end
                object btnKrakenSubscribeTicker: TButton
                  Left = 10
                  Top = 21
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe Ticker'
                  TabOrder = 4
                  OnClick = btnKrakenSubscribeTickerClick
                end
                object btnKrakenSubscribeTrade: TButton
                  Left = 11
                  Top = 83
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe Trade'
                  TabOrder = 5
                  OnClick = btnKrakenSubscribeTradeClick
                end
                object btnKrakenUnSubscribeAll: TButton
                  Left = 166
                  Top = 176
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe All'
                  TabOrder = 6
                  OnClick = btnKrakenUnSubscribeAllClick
                end
                object btnKrakenUnSubscribeBook: TButton
                  Left = 166
                  Top = 114
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe Book'
                  TabOrder = 7
                  OnClick = btnKrakenUnSubscribeBookClick
                end
                object btnKrakenUnSubscribeOHLC: TButton
                  Left = 165
                  Top = 52
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe OHLC'
                  TabOrder = 8
                  OnClick = btnKrakenUnSubscribeOHLCClick
                end
                object btnKrakenUnSubscribeSpread: TButton
                  Left = 166
                  Top = 145
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe Spread'
                  TabOrder = 9
                  OnClick = btnKrakenUnSubscribeSpreadClick
                end
                object btnKrakenUnSubscribeTicker: TButton
                  Left = 165
                  Top = 21
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe Ticker'
                  TabOrder = 10
                  OnClick = btnKrakenUnSubscribeTickerClick
                end
                object btnKrakenUnSubscribeTrade: TButton
                  Left = 166
                  Top = 83
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe Trade'
                  TabOrder = 11
                  OnClick = btnKrakenUnSubscribeTradeClick
                end
                object cboKrakenDepth: TComboBox
                  Left = 321
                  Top = 118
                  Width = 145
                  Height = 21
                  Style = csDropDownList
                  ItemIndex = 0
                  TabOrder = 12
                  Text = 'depth 10'
                  Items.Strings = (
                    'depth 10'
                    'depth 25'
                    'depth 100'
                    'depth 500'
                    'depth 1000')
                end
                object cboKrakenInterval: TComboBox
                  Left = 320
                  Top = 54
                  Width = 145
                  Height = 21
                  Style = csDropDownList
                  ItemIndex = 0
                  TabOrder = 13
                  Text = '1 Min'
                  Items.Strings = (
                    '1 Min'
                    '5 Min'
                    '15 Min'
                    '30 Min'
                    '60 Min'
                    '240 Min'
                    '1440 Min'
                    '10080 Min'
                    '21600 Min')
                end
              end
              object tabKrakenWebSocketsPrivateAPI: TTabSheet
                Caption = 'WebSockets Private API'
                ImageIndex = 1
                object btnKrakenSubscribeOwnTrades: TButton
                  Left = 18
                  Top = 29
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe OwnTrades'
                  TabOrder = 0
                  OnClick = btnKrakenSubscribeOwnTradesClick
                end
                object btnKrakenUnSubscribeOwnTrades: TButton
                  Left = 173
                  Top = 29
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe OwnTrades'
                  TabOrder = 1
                  OnClick = btnKrakenUnSubscribeOwnTradesClick
                end
                object btnKrakenSubscribeOpenOrders: TButton
                  Left = 18
                  Top = 60
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe OpenOrders'
                  TabOrder = 2
                  OnClick = btnKrakenSubscribeOpenOrdersClick
                end
                object btnKrakenUnSubscribeOpenOrders: TButton
                  Left = 173
                  Top = 60
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe OpenOrders'
                  TabOrder = 3
                  OnClick = btnKrakenUnSubscribeOpenOrdersClick
                end
                object btnKrakenCancelOrder: TButton
                  Left = 18
                  Top = 91
                  Width = 149
                  Height = 25
                  Caption = 'Cancel Order'
                  TabOrder = 4
                  OnClick = btnKrakenCancelOrderClick
                end
                object txtKrakenOrderId: TEdit
                  Left = 173
                  Top = 93
                  Width = 149
                  Height = 21
                  TabOrder = 5
                  Text = '0'
                end
              end
              object tabKrakenRESTPublicAPI: TTabSheet
                Caption = 'REST Public API'
                ImageIndex = 2
                object btnKrakenGetServerTime: TButton
                  Left = 11
                  Top = 21
                  Width = 149
                  Height = 25
                  Caption = 'Get ServerTime'
                  TabOrder = 0
                  OnClick = btnKrakenGetServerTimeClick
                end
                object btnKrakenGetAssets: TButton
                  Left = 166
                  Top = 21
                  Width = 149
                  Height = 25
                  Caption = 'Get Assets'
                  TabOrder = 1
                  OnClick = btnKrakenGetAssetsClick
                end
                object btnKrakenGetAssetsPairs: TButton
                  Left = 321
                  Top = 21
                  Width = 149
                  Height = 25
                  Caption = 'Get Assets Pairs'
                  TabOrder = 2
                  OnClick = btnKrakenGetAssetsPairsClick
                end
                object btnKrakenGetTicker: TButton
                  Left = 11
                  Top = 52
                  Width = 149
                  Height = 25
                  Caption = 'Get Ticker'
                  TabOrder = 3
                  OnClick = btnKrakenGetTickerClick
                end
                object btnKrakenGetOHLC: TButton
                  Left = 166
                  Top = 52
                  Width = 149
                  Height = 25
                  Caption = 'Get OHLC'
                  TabOrder = 4
                  OnClick = btnKrakenGetOHLCClick
                end
                object btnKrakenGetOrderBook: TButton
                  Left = 321
                  Top = 52
                  Width = 149
                  Height = 25
                  Caption = 'Get OrderBook'
                  TabOrder = 5
                  OnClick = btnKrakenGetOrderBookClick
                end
                object btnKrakenGetTrades: TButton
                  Left = 11
                  Top = 83
                  Width = 149
                  Height = 25
                  Caption = 'Get Trades'
                  TabOrder = 6
                  OnClick = btnKrakenGetTradesClick
                end
                object btnKrakenGetSpread: TButton
                  Left = 166
                  Top = 83
                  Width = 149
                  Height = 25
                  Caption = 'Get Spread'
                  TabOrder = 7
                  OnClick = btnKrakenGetSpreadClick
                end
              end
              object tabKrakenRESTPrivateAPI: TTabSheet
                Caption = 'REST Private API'
                ImageIndex = 3
                object btnKrakenGetAccountBalance: TButton
                  Left = 19
                  Top = 29
                  Width = 149
                  Height = 25
                  Caption = 'Get AccountBalance'
                  TabOrder = 0
                  OnClick = btnKrakenGetAccountBalanceClick
                end
                object btnKrakenGetTradeBalance: TButton
                  Left = 174
                  Top = 29
                  Width = 149
                  Height = 25
                  Caption = 'Get TradeBalance'
                  TabOrder = 1
                  OnClick = btnKrakenGetTradeBalanceClick
                end
                object btnKrakenGetOpenOrders: TButton
                  Left = 19
                  Top = 60
                  Width = 149
                  Height = 25
                  Caption = 'Get OpenOrders'
                  TabOrder = 2
                  OnClick = btnKrakenGetOpenOrdersClick
                end
                object btnKrakenGetClosedOrders: TButton
                  Left = 174
                  Top = 60
                  Width = 149
                  Height = 25
                  Caption = 'Get ClosedOrders'
                  TabOrder = 3
                  OnClick = btnKrakenGetClosedOrdersClick
                end
                object btnKrakenGetTradesHistory: TButton
                  Left = 329
                  Top = 60
                  Width = 149
                  Height = 25
                  Caption = 'Get TradesHistory'
                  TabOrder = 4
                  OnClick = btnKrakenGetTradesHistoryClick
                end
                object btnKrakenGetLedgers: TButton
                  Left = 19
                  Top = 91
                  Width = 149
                  Height = 25
                  Caption = 'Get Ledgers'
                  TabOrder = 5
                  OnClick = btnKrakenGetLedgersClick
                end
                object btnKrakenGetTradeVolume: TButton
                  Left = 174
                  Top = 91
                  Width = 149
                  Height = 25
                  Caption = 'Get TradeVolume'
                  TabOrder = 6
                  OnClick = btnKrakenGetTradeVolumeClick
                end
              end
              object tabKrakenRESTPrivateTrading: TTabSheet
                Caption = 'REST Private Trading'
                ImageIndex = 4
                object btnKrakenRESTCancelOrder: TButton
                  Left = 23
                  Top = 29
                  Width = 149
                  Height = 25
                  Caption = 'Cancel Order'
                  TabOrder = 0
                  OnClick = btnKrakenRESTCancelOrderClick
                end
                object txtKrakenRESTOrderId: TEdit
                  Left = 178
                  Top = 32
                  Width = 121
                  Height = 21
                  TabOrder = 1
                  Text = '0'
                end
              end
            end
          end
          object tabKrakenFutures: TTabSheet
            Caption = 'Futures'
            ImageIndex = 1
            OnShow = tabKrakenFuturesShow
            object pageKrakenFutures: TPageControl
              Left = 0
              Top = 0
              Width = 1013
              Height = 244
              ActivePage = tabKrakenFuturesWebSocketsPublicAPI
              Align = alClient
              TabOrder = 0
              object tabKrakenFuturesWebSocketsPublicAPI: TTabSheet
                Caption = 'WebSockets Public API Futures'
                object btnKrakenFuturesSubscribeBook: TButton
                  Left = 10
                  Top = 145
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe Book'
                  TabOrder = 0
                  OnClick = btnKrakenFuturesSubscribeBookClick
                end
                object btnKrakenFuturesSubscribeHeartbeat: TButton
                  Left = 10
                  Top = 83
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe Hearbeat'
                  TabOrder = 1
                  OnClick = btnKrakenFuturesSubscribeHeartbeatClick
                end
                object btnKrakenFuturesSubscribeTickerLite: TButton
                  Left = 10
                  Top = 114
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe Ticker Lite'
                  TabOrder = 2
                  OnClick = btnKrakenFuturesSubscribeTickerLiteClick
                end
                object btnKrakenFuturesSubscribeTicker: TButton
                  Left = 10
                  Top = 21
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe Ticker'
                  TabOrder = 3
                  OnClick = btnKrakenFuturesSubscribeTickerClick
                end
                object btnKrakenFuturesSubscribeTrade: TButton
                  Left = 10
                  Top = 52
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe Trade'
                  TabOrder = 4
                  OnClick = btnKrakenFuturesSubscribeTradeClick
                end
                object btnKrakenFuturesUnSubscribeBook: TButton
                  Left = 165
                  Top = 145
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe Book'
                  TabOrder = 5
                  OnClick = btnKrakenFuturesUnSubscribeBookClick
                end
                object btnKrakenFuturesUnSubscribeHeartbeat: TButton
                  Left = 165
                  Top = 83
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe Heartbeat'
                  TabOrder = 6
                  OnClick = btnKrakenFuturesUnSubscribeHeartbeatClick
                end
                object btnKrakenFuturesUnSubscribeTickerLite: TButton
                  Left = 165
                  Top = 114
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe Ticker Lite'
                  TabOrder = 7
                  OnClick = btnKrakenFuturesUnSubscribeTickerLiteClick
                end
                object btnKrakenFuturesUnSubscribeTicker: TButton
                  Left = 165
                  Top = 21
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe Ticker'
                  TabOrder = 8
                  OnClick = btnKrakenFuturesUnSubscribeTickerClick
                end
                object btnKrakenFuturesUnSubscribeTrade: TButton
                  Left = 165
                  Top = 52
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe Trade'
                  TabOrder = 9
                  OnClick = btnKrakenFuturesUnSubscribeTradeClick
                end
              end
              object tabKrakenFuturesWebSocketsPrivateAPI: TTabSheet
                Caption = 'WebSockets Private API Futures'
                ImageIndex = 1
                object btnKrakenFuturesSubscribeOpenOrdersVerbose: TButton
                  Left = 18
                  Top = 3
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe OpenOrders V.'
                  TabOrder = 0
                  OnClick = btnKrakenFuturesSubscribeOpenOrdersVerboseClick
                end
                object btnKrakenFuturesUnSubscribeOpenOrdersVerbose: TButton
                  Left = 173
                  Top = 3
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe OpenOrders V.'
                  TabOrder = 1
                  OnClick = btnKrakenFuturesUnSubscribeOpenOrdersVerboseClick
                end
                object btnKrakenFuturesSubscribeOpenPositions: TButton
                  Left = 18
                  Top = 34
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe OpenPositions'
                  TabOrder = 2
                  OnClick = btnKrakenFuturesSubscribeOpenPositionsClick
                end
                object btnKrakenFuturesUnSubscribeOpenPositions: TButton
                  Left = 173
                  Top = 34
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe OpenPositions'
                  TabOrder = 3
                  OnClick = btnKrakenFuturesUnSubscribeOpenPositionsClick
                end
                object btnKrakenFuturesSubscribeAccountLog: TButton
                  Left = 18
                  Top = 65
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe Account Log'
                  TabOrder = 4
                  OnClick = btnKrakenFuturesSubscribeAccountLogClick
                end
                object btnKrakenFuturesUnSubscribeAccountLog: TButton
                  Left = 173
                  Top = 65
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe Account Log'
                  TabOrder = 5
                  OnClick = btnKrakenFuturesUnSubscribeAccountLogClick
                end
                object btnKrakenFuturesUnSubscribeFills: TButton
                  Left = 173
                  Top = 96
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe Fills'
                  TabOrder = 6
                  OnClick = btnKrakenFuturesUnSubscribeFillsClick
                end
                object btnKrakenFuturesSubscribeFills: TButton
                  Left = 18
                  Top = 96
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe Fills'
                  TabOrder = 7
                  OnClick = btnKrakenFuturesSubscribeFillsClick
                end
                object btnKrakenFuturesSubscribeOpenOrders: TButton
                  Left = 18
                  Top = 127
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe OpenOrders'
                  TabOrder = 8
                  OnClick = btnKrakenFuturesSubscribeOpenOrdersClick
                end
                object btnKrakenFuturesUnSubscribeOpenOrders: TButton
                  Left = 173
                  Top = 127
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe OpenOrders'
                  TabOrder = 9
                  OnClick = btnKrakenFuturesUnSubscribeOpenOrdersClick
                end
                object btnKrakenFuturesSubscribeAccountBalance: TButton
                  Left = 18
                  Top = 158
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe Account Balance'
                  TabOrder = 10
                  OnClick = btnKrakenFuturesSubscribeAccountBalanceClick
                end
                object btnKrakenFuturesUnSubscribeAccountBalance: TButton
                  Left = 173
                  Top = 158
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe Account Balance'
                  TabOrder = 11
                  OnClick = btnKrakenFuturesUnSubscribeAccountBalanceClick
                end
                object btnKrakenFuturesSubscribeNotifications: TButton
                  Left = 18
                  Top = 188
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe Notifications'
                  TabOrder = 12
                  OnClick = btnKrakenFuturesSubscribeNotificationsClick
                end
                object btnKrakenFuturesUnSubscribeNotifications: TButton
                  Left = 173
                  Top = 188
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe Notifications'
                  TabOrder = 13
                  OnClick = btnKrakenFuturesUnSubscribeNotificationsClick
                end
              end
              object TabSheet3: TTabSheet
                Caption = 'REST Public API Futures'
                ImageIndex = 2
                object btnKrakenFuturesRestPublicGetFeeSchedules: TButton
                  Left = 11
                  Top = 21
                  Width = 149
                  Height = 25
                  Caption = 'Get Fee Schedules'
                  TabOrder = 0
                  OnClick = btnKrakenFuturesRestPublicGetFeeSchedulesClick
                end
                object btnKrakenFuturesRestPublicGetInstruments: TButton
                  Left = 11
                  Top = 114
                  Width = 149
                  Height = 25
                  Caption = 'Get Instruments'
                  TabOrder = 1
                  OnClick = btnKrakenFuturesRestPublicGetInstrumentsClick
                end
                object btnKrakenFuturesRestPublicGetOrderBook: TButton
                  Left = 11
                  Top = 52
                  Width = 149
                  Height = 25
                  Caption = 'Get OrderBook'
                  TabOrder = 2
                  OnClick = btnKrakenFuturesRestPublicGetOrderBookClick
                end
                object btnKrakenFuturesRestPublicGetHistory: TButton
                  Left = 11
                  Top = 145
                  Width = 149
                  Height = 25
                  Caption = 'Get History'
                  TabOrder = 3
                  OnClick = btnKrakenFuturesRestPublicGetHistoryClick
                end
                object btnKrakenFuturesRestPublicGetTickers: TButton
                  Left = 11
                  Top = 83
                  Width = 149
                  Height = 25
                  Caption = 'Get Tickers'
                  TabOrder = 4
                  OnClick = btnKrakenFuturesRestPublicGetTickersClick
                end
              end
              object TabSheet4: TTabSheet
                Caption = 'REST Private API Futures'
                ImageIndex = 3
                object Label64: TLabel
                  Left = 394
                  Top = 29
                  Width = 20
                  Height = 13
                  Caption = 'Side'
                end
                object Label65: TLabel
                  Left = 473
                  Top = 29
                  Width = 19
                  Height = 13
                  Caption = 'Size'
                end
                object Label66: TLabel
                  Left = 394
                  Top = 93
                  Width = 20
                  Height = 13
                  Caption = 'Side'
                end
                object Label67: TLabel
                  Left = 473
                  Top = 93
                  Width = 19
                  Height = 13
                  Caption = 'Size'
                end
                object Label68: TLabel
                  Left = 519
                  Top = 93
                  Width = 47
                  Height = 13
                  Caption = 'Limit Price'
                end
                object btnKrakenFuturesRestPrivateGetAccounts: TButton
                  Left = 19
                  Top = 60
                  Width = 149
                  Height = 25
                  Caption = 'Get Accounts'
                  TabOrder = 0
                  OnClick = btnKrakenFuturesRestPrivateGetAccountsClick
                end
                object btnKrakenFuturesRestPrivateGetNotifications: TButton
                  Left = 19
                  Top = 29
                  Width = 149
                  Height = 25
                  Caption = 'Get Notifications'
                  TabOrder = 1
                  OnClick = btnKrakenFuturesRestPrivateGetNotificationsClick
                end
                object btnKrakenFuturesRestPrivateCancelAllOrders: TButton
                  Left = 394
                  Top = 163
                  Width = 149
                  Height = 25
                  Caption = 'Cancel All Orders'
                  TabOrder = 2
                  OnClick = btnKrakenFuturesRestPrivateCancelAllOrdersClick
                end
                object btnKrakenFuturesRestPrivateGetOpenOrders: TButton
                  Left = 197
                  Top = 60
                  Width = 149
                  Height = 25
                  Caption = 'Get OpenOrders'
                  TabOrder = 3
                  OnClick = btnKrakenFuturesRestPrivateGetOpenOrdersClick
                end
                object btnKrakenFuturesRestPrivateGetHistoricalExecutions: TButton
                  Left = 19
                  Top = 153
                  Width = 149
                  Height = 25
                  Caption = 'Get Historical Executions'
                  TabOrder = 4
                  OnClick = btnKrakenFuturesRestPrivateGetHistoricalExecutionsClick
                end
                object btnKrakenFuturesRestPrivateGetHistoricalOrders: TButton
                  Left = 19
                  Top = 91
                  Width = 149
                  Height = 25
                  Caption = 'Get Historical Orders'
                  TabOrder = 5
                  OnClick = btnKrakenFuturesRestPrivateGetHistoricalOrdersClick
                end
                object btnKrakenFuturesRestPrivateGetHistoricalTriggers: TButton
                  Left = 19
                  Top = 122
                  Width = 149
                  Height = 25
                  Caption = 'Get Historical Triggers'
                  TabOrder = 6
                  OnClick = btnKrakenFuturesRestPrivateGetHistoricalTriggersClick
                end
                object btnKrakenFuturesRestPrivateGetOpenPositions: TButton
                  Left = 197
                  Top = 29
                  Width = 149
                  Height = 25
                  Caption = 'Get OpenPositions'
                  TabOrder = 7
                  OnClick = btnKrakenFuturesRestPrivateGetOpenPositionsClick
                end
                object btnKrakenFuturesRestPrivateGetFills: TButton
                  Left = 197
                  Top = 91
                  Width = 149
                  Height = 25
                  Caption = 'Get Fills'
                  TabOrder = 8
                  OnClick = btnKrakenFuturesRestPrivateGetFillsClick
                end
                object txtKrakenFuturesMarketOrderSize: TEdit
                  Left = 473
                  Top = 48
                  Width = 40
                  Height = 21
                  TabOrder = 9
                  Text = '1'
                end
                object cboKrakenFuturesMarketOrderSide: TComboBox
                  Left = 394
                  Top = 48
                  Width = 73
                  Height = 21
                  Style = csDropDownList
                  ItemIndex = 0
                  TabOrder = 10
                  Text = 'Buy'
                  Items.Strings = (
                    'Buy'
                    'Sell')
                end
                object btnKrakenFuturesMarketOrder: TButton
                  Left = 519
                  Top = 46
                  Width = 111
                  Height = 25
                  Caption = 'Market Order'
                  TabOrder = 11
                  OnClick = btnKrakenFuturesMarketOrderClick
                end
                object btnKrakenFuturesLimitOrder: TButton
                  Left = 656
                  Top = 110
                  Width = 111
                  Height = 25
                  Caption = 'Limit Order'
                  TabOrder = 12
                  OnClick = btnKrakenFuturesLimitOrderClick
                end
                object txtKrakenFuturesLimitOrderPrice: TEdit
                  Left = 519
                  Top = 112
                  Width = 131
                  Height = 21
                  TabOrder = 13
                  Text = '10000.00'
                end
                object txtKrakenFuturesLimitOrderSize: TEdit
                  Left = 473
                  Top = 112
                  Width = 40
                  Height = 21
                  TabOrder = 14
                  Text = '1'
                end
                object cboKrakenFuturesLimitOrderSide: TComboBox
                  Left = 394
                  Top = 112
                  Width = 73
                  Height = 21
                  Style = csDropDownList
                  ItemIndex = 0
                  TabOrder = 15
                  Text = 'Buy'
                  Items.Strings = (
                    'Buy'
                    'Sell')
                end
              end
            end
          end
        end
        object chkKrakenFuturesDemo: TCheckBox
          Left = 312
          Top = 58
          Width = 97
          Height = 17
          Caption = 'Futures Demo'
          TabOrder = 5
          OnClick = chkKrakenFuturesDemoClick
        end
      end
      object tabCOINBASE: TTabSheet
        Caption = 'COINBASE'
        ImageIndex = 17
        OnShow = tabCOINBASEShow
        object Label51: TLabel
          Left = 515
          Top = 18
          Width = 50
          Height = 13
          Caption = 'Product Id'
        end
        object Label52: TLabel
          Left = 25
          Top = 18
          Width = 33
          Height = 13
          Caption = 'ApiKey'
        end
        object Label53: TLabel
          Left = 12
          Top = 46
          Width = 46
          Height = 13
          Caption = 'ApiSecret'
        end
        object Label54: TLabel
          Left = 3
          Top = 74
          Width = 55
          Height = 13
          Caption = 'Passphrase'
        end
        object txtCoinbaseProductId: TEdit
          Left = 571
          Top = 15
          Width = 77
          Height = 21
          TabOrder = 0
          Text = 'BTC-USD'
        end
        object txtCoinbaseApiKey: TEdit
          Left = 64
          Top = 15
          Width = 273
          Height = 21
          TabOrder = 1
          OnChange = txtCoinbaseApiKeyChange
        end
        object txtCoinbaseApiSecret: TEdit
          Left = 64
          Top = 43
          Width = 344
          Height = 21
          PasswordChar = '*'
          TabOrder = 2
          OnChange = txtCoinbaseApiSecretChange
        end
        object txtCoinbasePassphrase: TEdit
          Left = 64
          Top = 71
          Width = 211
          Height = 21
          PasswordChar = '*'
          TabOrder = 3
          OnChange = txtCoinbasePassphraseChange
        end
        object chkCoinbaseSandbox: TCheckBox
          Left = 343
          Top = 17
          Width = 97
          Height = 17
          Caption = 'Sandobx'
          Checked = True
          State = cbChecked
          TabOrder = 4
          OnClick = chkCoinbaseSandboxClick
        end
        object PageControl4: TPageControl
          Left = 3
          Top = 104
          Width = 1006
          Height = 251
          ActivePage = tabCoinbaseWebSocket
          TabOrder = 5
          object tabCoinbaseWebSocket: TTabSheet
            Caption = 'WebSocket API'
            object btnCoinbaseSubscribeFull: TButton
              Left = 388
              Top = 20
              Width = 120
              Height = 25
              Caption = 'Subscribe Full'
              TabOrder = 0
              OnClick = btnCoinbaseSubscribeFullClick
            end
            object btnCoinbaseSubscribeHeartBeat: TButton
              Left = 18
              Top = 16
              Width = 120
              Height = 25
              Caption = 'Subscribe HeartBeat'
              TabOrder = 1
              OnClick = btnCoinbaseSubscribeHeartBeatClick
            end
            object btnCoinbaseSubscribeLevel2: TButton
              Left = 18
              Top = 78
              Width = 120
              Height = 25
              Caption = 'Subscribe Level2'
              TabOrder = 2
              OnClick = btnCoinbaseSubscribeLevel2Click
            end
            object btnCoinbaseSubscribeMatches: TButton
              Left = 18
              Top = 140
              Width = 120
              Height = 25
              Caption = 'Subscribe Matches'
              TabOrder = 3
              OnClick = btnCoinbaseSubscribeMatchesClick
            end
            object btnCoinbaseSubscribeStatus: TButton
              Left = 18
              Top = 109
              Width = 120
              Height = 25
              Caption = 'Subscribe Status'
              TabOrder = 4
              OnClick = btnCoinbaseSubscribeStatusClick
            end
            object btnCoinbaseSubscribeTicker: TButton
              Left = 18
              Top = 47
              Width = 120
              Height = 25
              Caption = 'Subscribe Ticker'
              TabOrder = 5
              OnClick = btnCoinbaseSubscribeTickerClick
            end
            object btnCoinbaseSubscribeUser: TButton
              Left = 388
              Top = 51
              Width = 120
              Height = 25
              Caption = 'Subscribe User'
              TabOrder = 6
              OnClick = btnCoinbaseSubscribeUserClick
            end
            object btnCoinbaseUnSubscribeFull: TButton
              Left = 514
              Top = 20
              Width = 127
              Height = 25
              Caption = 'UnSubscribe Full'
              TabOrder = 7
              OnClick = btnCoinbaseUnSubscribeFullClick
            end
            object btnCoinbaseUnSubscribeHeartBeat: TButton
              Left = 144
              Top = 16
              Width = 127
              Height = 25
              Caption = 'UnSubscribe HeartBeat'
              TabOrder = 8
              OnClick = btnCoinbaseUnSubscribeHeartBeatClick
            end
            object btnCoinbaseUnSubscribeLevel2: TButton
              Left = 144
              Top = 78
              Width = 127
              Height = 25
              Caption = 'UnSubscribe Level2'
              TabOrder = 9
              OnClick = btnCoinbaseUnSubscribeLevel2Click
            end
            object btnCoinbaseUnSubscribeMatches: TButton
              Left = 144
              Top = 140
              Width = 127
              Height = 25
              Caption = 'UnSubscribe Matches'
              TabOrder = 10
              OnClick = btnCoinbaseUnSubscribeMatchesClick
            end
            object btnCoinbaseUnSubscribeStatus: TButton
              Left = 144
              Top = 109
              Width = 127
              Height = 25
              Caption = 'UnSubscribe Status'
              TabOrder = 11
              OnClick = btnCoinbaseUnSubscribeStatusClick
            end
            object btnCoinbaseUnSubscribeTicker: TButton
              Left = 144
              Top = 47
              Width = 127
              Height = 25
              Caption = 'UnSubscribe Ticker'
              TabOrder = 12
              OnClick = btnCoinbaseUnSubscribeTickerClick
            end
            object btnCoinbaseUnSubscribeUser: TButton
              Left = 514
              Top = 51
              Width = 127
              Height = 25
              Caption = 'UnSubscribe User'
              TabOrder = 13
              OnClick = btnCoinbaseUnSubscribeUserClick
            end
          end
          object tabCoinbaseRestPublic: TTabSheet
            Caption = 'REST Public API'
            ImageIndex = 2
            object Label60: TLabel
              Left = 18
              Top = 5
              Width = 59
              Height = 13
              Caption = 'Market Data'
            end
            object Label61: TLabel
              Left = 304
              Top = 5
              Width = 51
              Height = 13
              Caption = 'Currencies'
            end
            object Label62: TLabel
              Left = 452
              Top = 5
              Width = 22
              Height = 13
              Caption = 'Time'
            end
            object btnCoinbaseGetProducts: TButton
              Left = 18
              Top = 24
              Width = 111
              Height = 25
              Caption = 'Get Products'
              TabOrder = 0
              OnClick = btnCoinbaseGetProductsClick
            end
            object btnCoinbaseGetProduct: TButton
              Left = 135
              Top = 24
              Width = 111
              Height = 25
              Caption = 'Get Product'
              TabOrder = 1
              OnClick = btnCoinbaseGetProductClick
            end
            object btnCoinbaseGetOrderBook: TButton
              Left = 18
              Top = 55
              Width = 111
              Height = 25
              Caption = 'Get Order Book'
              TabOrder = 2
              OnClick = btnCoinbaseGetOrderBookClick
            end
            object btnCoinbaseGetTicker: TButton
              Left = 135
              Top = 55
              Width = 111
              Height = 25
              Caption = 'Get Ticker'
              TabOrder = 3
              OnClick = btnCoinbaseGetTickerClick
            end
            object btnCoinbaseGetTrades: TButton
              Left = 18
              Top = 86
              Width = 111
              Height = 25
              Caption = 'Get Trades'
              TabOrder = 4
              OnClick = btnCoinbaseGetTradesClick
            end
            object btnCoinbaseGetHistoric: TButton
              Left = 135
              Top = 86
              Width = 111
              Height = 25
              Caption = 'Get Historic'
              TabOrder = 5
              OnClick = btnCoinbaseGetHistoricClick
            end
            object btnCoinbaseGet24hrStats: TButton
              Left = 18
              Top = 117
              Width = 111
              Height = 25
              Caption = 'Get 24hr Stats'
              TabOrder = 6
              OnClick = btnCoinbaseGet24hrStatsClick
            end
            object btnCoinbaseGetCurrencies: TButton
              Left = 304
              Top = 24
              Width = 111
              Height = 25
              Caption = 'Get Currencies'
              TabOrder = 7
              OnClick = btnCoinbaseGetCurrenciesClick
            end
            object Button16: TButton
              Left = 452
              Top = 24
              Width = 111
              Height = 25
              Caption = 'Get Time'
              TabOrder = 8
              OnClick = Button16Click
            end
          end
          object tabCoinbaseRestPrivate: TTabSheet
            Caption = 'REST Private API'
            ImageIndex = 1
            object Label55: TLabel
              Left = 328
              Top = 5
              Width = 20
              Height = 13
              Caption = 'Side'
            end
            object Label56: TLabel
              Left = 407
              Top = 5
              Width = 37
              Height = 13
              Caption = 'Amount'
            end
            object Label57: TLabel
              Left = 328
              Top = 69
              Width = 20
              Height = 13
              Caption = 'Side'
            end
            object Label58: TLabel
              Left = 407
              Top = 69
              Width = 37
              Height = 13
              Caption = 'Amount'
            end
            object Label59: TLabel
              Left = 542
              Top = 69
              Width = 47
              Height = 13
              Caption = 'Limit Price'
            end
            object Label63: TLabel
              Left = 18
              Top = 5
              Width = 60
              Height = 13
              Caption = 'List Methods'
            end
            object btnCoinbaseRestListAccounts: TButton
              Left = 18
              Top = 24
              Width = 111
              Height = 25
              Caption = 'List Accounts'
              TabOrder = 0
              OnClick = btnCoinbaseRestListAccountsClick
            end
            object btnCoinbaseListOrders: TButton
              Left = 135
              Top = 24
              Width = 111
              Height = 25
              Caption = 'List Orders'
              TabOrder = 1
              OnClick = btnCoinbaseListOrdersClick
            end
            object btnCoinbaseListFills: TButton
              Left = 18
              Top = 55
              Width = 111
              Height = 25
              Caption = 'List Fills'
              TabOrder = 2
              OnClick = btnCoinbaseListFillsClick
            end
            object btnCoinbaseExchangeLimits: TButton
              Left = 135
              Top = 55
              Width = 111
              Height = 25
              Caption = 'Exchange Limits'
              TabOrder = 3
              OnClick = btnCoinbaseExchangeLimitsClick
            end
            object btnCoinbaseListDeposits: TButton
              Left = 18
              Top = 86
              Width = 111
              Height = 25
              Caption = 'List Deposits'
              TabOrder = 4
              OnClick = btnCoinbaseListDepositsClick
            end
            object btnCoinbaseListWithdrawals: TButton
              Left = 135
              Top = 86
              Width = 111
              Height = 25
              Caption = 'List Withdrawals'
              TabOrder = 5
              OnClick = btnCoinbaseListWithdrawalsClick
            end
            object btnCoinbaseListPayments: TButton
              Left = 18
              Top = 117
              Width = 111
              Height = 25
              Caption = 'List Payments'
              TabOrder = 6
              OnClick = btnCoinbaseListPaymentsClick
            end
            object btnCoinbaseListCoinbaseAccounts: TButton
              Left = 135
              Top = 117
              Width = 111
              Height = 25
              Caption = 'Coinbase Accounts'
              TabOrder = 7
              OnClick = btnCoinbaseListCoinbaseAccountsClick
            end
            object btnCoinbaseMarketOrder: TButton
              Left = 542
              Top = 22
              Width = 111
              Height = 25
              Caption = 'Market Order'
              TabOrder = 8
              OnClick = btnCoinbaseMarketOrderClick
            end
            object cboCoinbaseMarketOrderSide: TComboBox
              Left = 328
              Top = 24
              Width = 73
              Height = 21
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 9
              Text = 'Buy'
              Items.Strings = (
                'Buy'
                'Sell')
            end
            object cboCoinbaseLimitOrderSide: TComboBox
              Left = 328
              Top = 88
              Width = 73
              Height = 21
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 10
              Text = 'Buy'
              Items.Strings = (
                'Buy'
                'Sell')
            end
            object btnCoinbaseLimitOrder: TButton
              Left = 679
              Top = 86
              Width = 111
              Height = 25
              Caption = 'Limit Order'
              TabOrder = 11
              OnClick = btnCoinbaseLimitOrderClick
            end
            object btnCoinbaseCancelAllOrders: TButton
              Left = 328
              Top = 131
              Width = 111
              Height = 25
              Caption = 'Cancel All Orders'
              TabOrder = 12
              OnClick = btnCoinbaseCancelAllOrdersClick
            end
            object txtCoinbaseMarketOrderAmount: TEdit
              Left = 407
              Top = 24
              Width = 129
              Height = 21
              TabOrder = 13
              Text = '0.002'
            end
            object txtCoinbaseLimitOrderAmount: TEdit
              Left = 407
              Top = 88
              Width = 121
              Height = 21
              TabOrder = 14
              Text = '0.002'
            end
            object txtCoinbaseLimitOrderPrice: TEdit
              Left = 542
              Top = 88
              Width = 131
              Height = 21
              TabOrder = 15
              Text = '100.00'
            end
          end
        end
      end
      object tabFTX: TTabSheet
        Caption = 'FTX'
        ImageIndex = 18
        OnShow = tabFTXShow
        object Label69: TLabel
          Left = 33
          Top = 14
          Width = 33
          Height = 13
          Caption = 'ApiKey'
        end
        object Label70: TLabel
          Left = 20
          Top = 42
          Width = 46
          Height = 13
          Caption = 'ApiSecret'
        end
        object Label72: TLabel
          Left = 523
          Top = 14
          Width = 33
          Height = 13
          Caption = 'Market'
        end
        object Label71: TLabel
          Left = 9
          Top = 69
          Width = 57
          Height = 13
          Caption = 'SubAccount'
        end
        object txtFTXApiKey: TEdit
          Left = 72
          Top = 11
          Width = 273
          Height = 21
          TabOrder = 0
          OnChange = txtFTXApiKeyChange
        end
        object txtFTXApiSecret: TEdit
          Left = 72
          Top = 39
          Width = 344
          Height = 21
          PasswordChar = '*'
          TabOrder = 1
          OnChange = txtFTXApiSecretChange
        end
        object txtFTXMarket: TEdit
          Left = 562
          Top = 11
          Width = 77
          Height = 21
          TabOrder = 2
          Text = 'BTC-PERP'
        end
        object PageControl3: TPageControl
          Left = 11
          Top = 107
          Width = 1006
          Height = 251
          ActivePage = TabSheet1
          TabOrder = 3
          object TabSheet1: TTabSheet
            Caption = 'WebSocket API'
            object btnFTXSubscribeFills: TButton
              Left = 388
              Top = 20
              Width = 120
              Height = 25
              Caption = 'Subscribe Fills'
              TabOrder = 0
              OnClick = btnFTXSubscribeFillsClick
            end
            object btnFTXSubscribeTicker: TButton
              Left = 18
              Top = 16
              Width = 120
              Height = 25
              Caption = 'Subscribe Ticker'
              TabOrder = 1
              OnClick = btnFTXSubscribeTickerClick
            end
            object btnFTXSubscribeTrades: TButton
              Left = 18
              Top = 78
              Width = 120
              Height = 25
              Caption = 'Subscribe Trades'
              TabOrder = 2
              OnClick = btnFTXSubscribeTradesClick
            end
            object btnFTXSubscribeGroupedOrderbook: TButton
              Left = 18
              Top = 140
              Width = 120
              Height = 25
              Caption = 'Subscribe GroupBook'
              TabOrder = 3
              OnClick = btnFTXSubscribeGroupedOrderbookClick
            end
            object btnFTXSubscribeOrderbook: TButton
              Left = 18
              Top = 109
              Width = 120
              Height = 25
              Caption = 'Subscribe Orderbook'
              TabOrder = 4
              OnClick = btnFTXSubscribeOrderbookClick
            end
            object btnFTXSubscribeMarkets: TButton
              Left = 18
              Top = 47
              Width = 120
              Height = 25
              Caption = 'Subscribe Markets'
              TabOrder = 5
              OnClick = btnFTXSubscribeMarketsClick
            end
            object btnFTXSubscribeOrders: TButton
              Left = 388
              Top = 51
              Width = 120
              Height = 25
              Caption = 'Subscribe Orders'
              TabOrder = 6
              OnClick = btnFTXSubscribeOrdersClick
            end
            object btnFTXUnSubscribeFills: TButton
              Left = 514
              Top = 20
              Width = 127
              Height = 25
              Caption = 'UnSubscribe Fills'
              TabOrder = 7
              OnClick = btnFTXUnSubscribeFillsClick
            end
            object btnFTXUnSubscribeTicker: TButton
              Left = 144
              Top = 16
              Width = 127
              Height = 25
              Caption = 'UnSubscribe Ticker'
              TabOrder = 8
              OnClick = btnFTXUnSubscribeTickerClick
            end
            object btnFTXUnSubscribeTrades: TButton
              Left = 144
              Top = 78
              Width = 127
              Height = 25
              Caption = 'UnSubscribe Trades'
              TabOrder = 9
              OnClick = btnFTXUnSubscribeTradesClick
            end
            object btnFTXUnSubscribeGroupedOrderbook: TButton
              Left = 144
              Top = 140
              Width = 127
              Height = 25
              Caption = 'UnSubscribe GroupBook'
              TabOrder = 10
              OnClick = btnFTXUnSubscribeGroupedOrderbookClick
            end
            object btnFTXUnSubscribeOrderbook: TButton
              Left = 144
              Top = 109
              Width = 127
              Height = 25
              Caption = 'UnSubscribe Orderbook'
              TabOrder = 11
              OnClick = btnFTXUnSubscribeOrderbookClick
            end
            object btnFTXUnSubscribeMarkets: TButton
              Left = 144
              Top = 47
              Width = 127
              Height = 25
              Caption = 'UnSubscribe Markets'
              TabOrder = 12
              OnClick = btnFTXUnSubscribeMarketsClick
            end
            object btnFTXUnSubscribeOrders: TButton
              Left = 514
              Top = 51
              Width = 127
              Height = 25
              Caption = 'UnSubscribe Orders'
              TabOrder = 13
              OnClick = btnFTXUnSubscribeOrdersClick
            end
          end
          object TabSheet2: TTabSheet
            Caption = 'REST Public API'
            ImageIndex = 2
            object Label73: TLabel
              Left = 18
              Top = 5
              Width = 59
              Height = 13
              Caption = 'Market Data'
            end
            object Label74: TLabel
              Left = 156
              Top = 3
              Width = 37
              Height = 13
              Caption = 'Futures'
            end
            object btnFTXGetMarket: TButton
              Left = 18
              Top = 24
              Width = 111
              Height = 25
              Caption = 'Get Market'
              TabOrder = 0
              OnClick = btnFTXGetMarketClick
            end
            object btnFTXGetOrderbook: TButton
              Left = 18
              Top = 55
              Width = 111
              Height = 25
              Caption = 'Get Order Book'
              TabOrder = 1
              OnClick = btnFTXGetOrderbookClick
            end
            object btnFTXGetTrades: TButton
              Left = 18
              Top = 86
              Width = 111
              Height = 25
              Caption = 'Get Trades'
              TabOrder = 2
              OnClick = btnFTXGetTradesClick
            end
            object btnFTXGetHistoricalPrices: TButton
              Left = 18
              Top = 117
              Width = 111
              Height = 25
              Caption = 'Get Historical'
              TabOrder = 3
              OnClick = btnFTXGetHistoricalPricesClick
            end
            object btnFTXGetFuture: TButton
              Left = 157
              Top = 24
              Width = 111
              Height = 25
              Caption = 'Get Future'
              TabOrder = 4
              OnClick = btnFTXGetFutureClick
            end
            object btnFTXGetFutureStats: TButton
              Left = 156
              Top = 55
              Width = 111
              Height = 25
              Caption = 'Get Future Stats'
              TabOrder = 5
              OnClick = btnFTXGetFutureStatsClick
            end
            object btnFTXGetExpiredFutures: TButton
              Left = 156
              Top = 86
              Width = 111
              Height = 25
              Caption = 'Get Expired Futures'
              TabOrder = 6
              OnClick = btnFTXGetExpiredFuturesClick
            end
            object btnFTXGetHistoricalIndex: TButton
              Left = 157
              Top = 117
              Width = 111
              Height = 25
              Caption = 'Get Historical Index'
              TabOrder = 7
              OnClick = btnFTXGetHistoricalIndexClick
            end
          end
          object TabSheet5: TTabSheet
            Caption = 'REST Private API'
            ImageIndex = 1
            object Label76: TLabel
              Left = 328
              Top = 5
              Width = 20
              Height = 13
              Caption = 'Side'
            end
            object Label77: TLabel
              Left = 407
              Top = 5
              Width = 37
              Height = 13
              Caption = 'Amount'
            end
            object Label78: TLabel
              Left = 328
              Top = 69
              Width = 20
              Height = 13
              Caption = 'Side'
            end
            object Label79: TLabel
              Left = 407
              Top = 69
              Width = 37
              Height = 13
              Caption = 'Amount'
            end
            object Label80: TLabel
              Left = 542
              Top = 69
              Width = 47
              Height = 13
              Caption = 'Limit Price'
            end
            object Label81: TLabel
              Left = 18
              Top = 5
              Width = 60
              Height = 13
              Caption = 'List Methods'
            end
            object btnFTXGetAccount: TButton
              Left = 18
              Top = 24
              Width = 111
              Height = 25
              Caption = 'Account'
              TabOrder = 0
              OnClick = btnFTXGetAccountClick
            end
            object btnFTXGetPositions: TButton
              Left = 18
              Top = 55
              Width = 111
              Height = 25
              Caption = 'Positions'
              TabOrder = 1
              OnClick = btnFTXGetPositionsClick
            end
            object Button41: TButton
              Left = 18
              Top = 86
              Width = 111
              Height = 25
              Caption = 'List Fills'
              TabOrder = 2
              OnClick = Button41Click
            end
            object btnFTXGetOpenOrders: TButton
              Left = 135
              Top = 24
              Width = 111
              Height = 25
              Caption = 'Open Orders'
              TabOrder = 3
              OnClick = btnFTXGetOpenOrdersClick
            end
            object btnFTXGetOrderHistory: TButton
              Left = 135
              Top = 55
              Width = 111
              Height = 25
              Caption = 'Order History'
              TabOrder = 4
              OnClick = btnFTXGetOrderHistoryClick
            end
            object cboFTXPlaceMarketOrder: TButton
              Left = 542
              Top = 22
              Width = 111
              Height = 25
              Caption = 'Market Order'
              TabOrder = 5
              OnClick = cboFTXPlaceMarketOrderClick
            end
            object cboFTXMarketSide: TComboBox
              Left = 328
              Top = 24
              Width = 73
              Height = 21
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 6
              Text = 'Buy'
              Items.Strings = (
                'Buy'
                'Sell')
            end
            object cboFTXLimitSide: TComboBox
              Left = 328
              Top = 88
              Width = 73
              Height = 21
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 7
              Text = 'Buy'
              Items.Strings = (
                'Buy'
                'Sell')
            end
            object cboFTXPlaceLimitOrder: TButton
              Left = 679
              Top = 86
              Width = 111
              Height = 25
              Caption = 'Limit Order'
              TabOrder = 8
              OnClick = cboFTXPlaceLimitOrderClick
            end
            object cboFTXCancelAllOrders: TButton
              Left = 328
              Top = 131
              Width = 111
              Height = 25
              Caption = 'Cancel All Orders'
              TabOrder = 9
              OnClick = cboFTXCancelAllOrdersClick
            end
            object txtFTXMarketOrderSize: TEdit
              Left = 407
              Top = 24
              Width = 129
              Height = 21
              TabOrder = 10
              Text = '0.002'
            end
            object txtFTXLimitOrderSize: TEdit
              Left = 407
              Top = 88
              Width = 121
              Height = 21
              TabOrder = 11
              Text = '0.002'
            end
            object txtFTXLimitOrderPrice: TEdit
              Left = 542
              Top = 88
              Width = 131
              Height = 21
              TabOrder = 12
              Text = '100.00'
            end
            object btnFTXGetTriggerOrderHistory: TButton
              Left = 135
              Top = 86
              Width = 111
              Height = 25
              Caption = 'Trigger Order History'
              TabOrder = 13
              OnClick = btnFTXGetTriggerOrderHistoryClick
            end
          end
        end
        object txtFTXSubAccount: TEdit
          Left = 72
          Top = 66
          Width = 121
          Height = 21
          TabOrder = 4
          OnChange = txtFTXSubAccountChange
        end
      end
      object tabThreeCommas: TTabSheet
        Caption = '3Commas'
        ImageIndex = 19
        OnShow = tabThreeCommasShow
        object Label75: TLabel
          Left = 17
          Top = 26
          Width = 33
          Height = 13
          Caption = 'ApiKey'
        end
        object Label82: TLabel
          Left = 4
          Top = 54
          Width = 46
          Height = 13
          Caption = 'ApiSecret'
        end
        object txtThreeCommasApiSecret: TEdit
          Left = 56
          Top = 51
          Width = 344
          Height = 21
          PasswordChar = '*'
          TabOrder = 0
          OnChange = txtThreeCommasApiSecretChange
        end
        object txtThreeCommasApiKey: TEdit
          Left = 56
          Top = 23
          Width = 273
          Height = 21
          TabOrder = 1
          OnChange = txtThreeCommasApiKeyChange
        end
        object PageControl5: TPageControl
          Left = 19
          Top = 107
          Width = 1006
          Height = 251
          ActivePage = TabSheet6
          TabOrder = 2
          object TabSheet6: TTabSheet
            Caption = 'WebSocket API'
            object btnThreeComasSubscribeSmartTrades: TButton
              Left = 18
              Top = 16
              Width = 135
              Height = 25
              Caption = 'Subscribe SmartTrades'
              TabOrder = 0
              OnClick = btnThreeComasSubscribeSmartTradesClick
            end
            object btnThreeComasSubscribeDeals: TButton
              Left = 18
              Top = 47
              Width = 135
              Height = 25
              Caption = 'Subscribe Deals'
              TabOrder = 1
              OnClick = btnThreeComasSubscribeDealsClick
            end
          end
          object TabSheet8: TTabSheet
            Caption = 'REST API'
            ImageIndex = 1
            object Label85: TLabel
              Left = 333
              Top = 45
              Width = 20
              Height = 13
              Caption = 'Side'
            end
            object Label86: TLabel
              Left = 412
              Top = 45
              Width = 37
              Height = 13
              Caption = 'Amount'
            end
            object Label87: TLabel
              Left = 333
              Top = 109
              Width = 20
              Height = 13
              Caption = 'Side'
            end
            object Label88: TLabel
              Left = 412
              Top = 109
              Width = 37
              Height = 13
              Caption = 'Amount'
            end
            object Label89: TLabel
              Left = 547
              Top = 109
              Width = 47
              Height = 13
              Caption = 'Limit Price'
            end
            object Label90: TLabel
              Left = 16
              Top = 3
              Width = 52
              Height = 13
              Caption = 'Account Id'
            end
            object Label83: TLabel
              Left = 333
              Top = 14
              Width = 22
              Height = 13
              Caption = 'Pair:'
            end
            object btnThreeCommasGetAccounts: TButton
              Left = 16
              Top = 49
              Width = 111
              Height = 25
              Caption = 'Accounts'
              TabOrder = 0
              OnClick = btnThreeCommasGetAccountsClick
            end
            object btnThreeCommasGetMarketList: TButton
              Left = 133
              Top = 49
              Width = 111
              Height = 25
              Caption = 'Market List'
              TabOrder = 1
              OnClick = btnThreeCommasGetMarketListClick
            end
            object btnThreeCommasMarketOrder: TButton
              Left = 547
              Top = 62
              Width = 111
              Height = 25
              Caption = 'Market Order'
              TabOrder = 2
              OnClick = btnThreeCommasMarketOrderClick
            end
            object ComboBox1: TComboBox
              Left = 333
              Top = 64
              Width = 73
              Height = 21
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 3
              Text = 'Buy'
              Items.Strings = (
                'Buy'
                'Sell')
            end
            object ComboBox2: TComboBox
              Left = 333
              Top = 128
              Width = 73
              Height = 21
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 4
              Text = 'Buy'
              Items.Strings = (
                'Buy'
                'Sell')
            end
            object btnThreeCommasLimitOrder: TButton
              Left = 684
              Top = 126
              Width = 111
              Height = 25
              Caption = 'Limit Order'
              TabOrder = 5
              OnClick = btnThreeCommasLimitOrderClick
            end
            object txtThreeCommasMarketSize: TEdit
              Left = 412
              Top = 64
              Width = 129
              Height = 21
              TabOrder = 6
              Text = '0.002'
            end
            object txtThreeCommasLimitSize: TEdit
              Left = 412
              Top = 128
              Width = 121
              Height = 21
              TabOrder = 7
              Text = '0.002'
            end
            object txtThreeCommasLimitPrice: TEdit
              Left = 547
              Top = 128
              Width = 131
              Height = 21
              TabOrder = 8
              Text = '100.00'
            end
            object btnThreeCommasGetBalances: TButton
              Left = 16
              Top = 80
              Width = 111
              Height = 25
              Caption = 'Balances'
              TabOrder = 9
              OnClick = btnThreeCommasGetBalancesClick
            end
            object txtThreeCommasAccountId: TEdit
              Left = 16
              Top = 22
              Width = 228
              Height = 21
              TabOrder = 10
              Text = '0'
            end
            object btnThreeCommasGetAccountTableData: TButton
              Left = 133
              Top = 80
              Width = 111
              Height = 25
              Caption = 'Account Table Data'
              TabOrder = 11
              OnClick = btnThreeCommasGetAccountTableDataClick
            end
            object btnThreeCommasGetAccountInfo: TButton
              Left = 16
              Top = 111
              Width = 111
              Height = 25
              Caption = 'Account Info'
              TabOrder = 12
              OnClick = btnThreeCommasGetAccountInfoClick
            end
            object txtThreeCommasPair: TEdit
              Left = 361
              Top = 11
              Width = 77
              Height = 21
              TabOrder = 13
              Text = 'USDT_BTC'
            end
          end
        end
      end
      object tabKUCOIN: TTabSheet
        Caption = 'Kucoin'
        ImageIndex = 20
        OnShow = tabKUCOINShow
        object PageControl7: TPageControl
          Left = 0
          Top = 97
          Width = 1170
          Height = 261
          ActivePage = tabKucoinStocks
          Align = alClient
          TabOrder = 0
          object tabKucoinStocks: TTabSheet
            Caption = 'Stocks'
            OnShow = tabKucoinStocksShow
            object Panel2: TPanel
              Left = 400
              Top = 3
              Width = 753
              Height = 222
              TabOrder = 0
              object GroupBox7: TGroupBox
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 745
                Height = 214
                Align = alClient
                Caption = 'REST API'
                TabOrder = 0
                object Label103: TLabel
                  Left = 312
                  Top = 21
                  Width = 20
                  Height = 13
                  Caption = 'Side'
                end
                object Label106: TLabel
                  Left = 391
                  Top = 21
                  Width = 37
                  Height = 13
                  Caption = 'Amount'
                end
                object Label107: TLabel
                  Left = 312
                  Top = 85
                  Width = 20
                  Height = 13
                  Caption = 'Side'
                end
                object Label108: TLabel
                  Left = 391
                  Top = 85
                  Width = 37
                  Height = 13
                  Caption = 'Amount'
                end
                object Label109: TLabel
                  Left = 479
                  Top = 85
                  Width = 47
                  Height = 13
                  Caption = 'Limit Price'
                end
                object btnKucoinServiceStatus: TButton
                  Left = 16
                  Top = 19
                  Width = 134
                  Height = 25
                  Caption = 'Service Status'
                  TabOrder = 0
                  OnClick = btnKucoinServiceStatusClick
                end
                object btnKucoinServerTime: TButton
                  Left = 156
                  Top = 19
                  Width = 134
                  Height = 25
                  Caption = 'Server Time'
                  TabOrder = 1
                  OnClick = btnKucoinServerTimeClick
                end
                object btnKucoinGetTicker: TButton
                  Left = 16
                  Top = 50
                  Width = 134
                  Height = 25
                  Caption = 'Get Ticker'
                  TabOrder = 2
                  OnClick = btnKucoinGetTickerClick
                end
                object btnKucoinGet24hrStats: TButton
                  Left = 156
                  Top = 52
                  Width = 134
                  Height = 25
                  Caption = 'Get 24hrs Stats'
                  TabOrder = 3
                  OnClick = btnKucoinGet24hrStatsClick
                end
                object btnKucoinGetRecentOrders: TButton
                  Left = 16
                  Top = 113
                  Width = 134
                  Height = 25
                  Caption = 'Get Recent Orders'
                  TabOrder = 4
                  OnClick = btnKucoinGetRecentOrdersClick
                end
                object btnKucoinListAccounts: TButton
                  Left = 16
                  Top = 142
                  Width = 134
                  Height = 25
                  Caption = 'List Accounts'
                  TabOrder = 5
                  OnClick = btnKucoinListAccountsClick
                end
                object btnKucoinGetAllSubaccounts: TButton
                  Left = 156
                  Top = 142
                  Width = 134
                  Height = 25
                  Caption = 'Get All SubAccounts'
                  TabOrder = 6
                  OnClick = btnKucoinGetAllSubaccountsClick
                end
                object btnKucoinListOrders: TButton
                  Left = 156
                  Top = 113
                  Width = 134
                  Height = 25
                  Caption = 'List Orders'
                  TabOrder = 7
                  OnClick = btnKucoinListOrdersClick
                end
                object cboKucoinStockMarketOrderSide: TComboBox
                  Left = 312
                  Top = 40
                  Width = 73
                  Height = 21
                  Style = csDropDownList
                  ItemIndex = 0
                  TabOrder = 8
                  Text = 'Buy'
                  Items.Strings = (
                    'Buy'
                    'Sell')
                end
                object txtKucoinStockMarketSize: TEdit
                  Left = 391
                  Top = 40
                  Width = 82
                  Height = 21
                  TabOrder = 9
                  Text = '0.002'
                end
                object btnKucoinStockMarketOrder: TButton
                  Left = 494
                  Top = 38
                  Width = 111
                  Height = 25
                  Caption = 'Market Order'
                  TabOrder = 10
                  OnClick = btnKucoinStockMarketOrderClick
                end
                object cboKucoinStockLimitOrderSide: TComboBox
                  Left = 312
                  Top = 104
                  Width = 73
                  Height = 21
                  Style = csDropDownList
                  ItemIndex = 0
                  TabOrder = 11
                  Text = 'Buy'
                  Items.Strings = (
                    'Buy'
                    'Sell')
                end
                object txtKucoinStockLimitSize: TEdit
                  Left = 391
                  Top = 104
                  Width = 82
                  Height = 21
                  TabOrder = 12
                  Text = '0.002'
                end
                object txtKucoinStockLimitPrice: TEdit
                  Left = 479
                  Top = 104
                  Width = 131
                  Height = 21
                  TabOrder = 13
                  Text = '100.00'
                end
                object btnKucoinStockLimitOrder: TButton
                  Left = 616
                  Top = 102
                  Width = 111
                  Height = 25
                  Caption = 'Limit Order'
                  TabOrder = 14
                  OnClick = btnKucoinStockLimitOrderClick
                end
                object btnKucoinStockCancelAllOrders: TButton
                  Left = 312
                  Top = 142
                  Width = 111
                  Height = 25
                  Caption = 'Cancel All Orders'
                  TabOrder = 15
                  OnClick = btnKucoinStockCancelAllOrdersClick
                end
              end
            end
            object Panel3: TPanel
              Left = 12
              Top = 3
              Width = 346
              Height = 222
              TabOrder = 1
              object GroupBox8: TGroupBox
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 338
                Height = 214
                Align = alClient
                Caption = 'WebSocket API'
                TabOrder = 0
                object btnKucoinSubscribeSymbolSnapshot: TButton
                  Left = 10
                  Top = 22
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe Symbol Snapshot'
                  TabOrder = 0
                  OnClick = btnKucoinSubscribeSymbolSnapshotClick
                end
                object btnKucoinUnSubscribeLevel2MarketData: TButton
                  Left = 169
                  Top = 86
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe Level2'
                  TabOrder = 1
                  OnClick = btnKucoinUnSubscribeLevel2MarketDataClick
                end
                object btnKucoinUnSubscribeTradeOrders: TButton
                  Left = 169
                  Top = 117
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe Trade Orders'
                  TabOrder = 2
                  OnClick = btnKucoinUnSubscribeTradeOrdersClick
                end
                object btnKucoinUnSubscribeAccountBalance: TButton
                  Left = 169
                  Top = 148
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe Account Balance'
                  TabOrder = 3
                  OnClick = btnKucoinUnSubscribeAccountBalanceClick
                end
                object btnKucoinUnSubscribePositionStatus: TButton
                  Left = 169
                  Top = 179
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe Position Status'
                  TabOrder = 4
                  OnClick = btnKucoinUnSubscribePositionStatusClick
                end
                object btnKucoinSubscribeSymbolTicker: TButton
                  Left = 10
                  Top = 54
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe Symbol Ticker'
                  TabOrder = 5
                  OnClick = btnKucoinSubscribeSymbolTickerClick
                end
                object btnKucoinSubscribeLevel2MarketData: TButton
                  Left = 10
                  Top = 86
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe Level2'
                  TabOrder = 6
                  OnClick = btnKucoinSubscribeLevel2MarketDataClick
                end
                object btnKucoinSubscribeTradeOrders: TButton
                  Left = 10
                  Top = 117
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe Trade Orders'
                  TabOrder = 7
                  OnClick = btnKucoinSubscribeTradeOrdersClick
                end
                object btnKucoinSubscribeAccountBalance: TButton
                  Left = 10
                  Top = 148
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe Account Balance'
                  TabOrder = 8
                  OnClick = btnKucoinSubscribeAccountBalanceClick
                end
                object btnKucoinSubscribePositionStatus: TButton
                  Left = 10
                  Top = 179
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe Position Status'
                  TabOrder = 9
                  OnClick = btnKucoinSubscribePositionStatusClick
                end
                object btnKucoinUnSubscribeSymbolSnapshot: TButton
                  Left = 169
                  Top = 22
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe Symbol Snapshot'
                  TabOrder = 10
                  OnClick = btnKucoinUnSubscribeSymbolSnapshotClick
                end
                object btnKucoinUnSubscribeSymbolTicker: TButton
                  Left = 169
                  Top = 53
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe Symbol Ticker'
                  TabOrder = 11
                  OnClick = btnKucoinUnSubscribeSymbolTickerClick
                end
              end
            end
          end
          object tabKucoinFutures: TTabSheet
            Caption = 'Futures'
            ImageIndex = 1
            OnShow = tabKucoinFuturesShow
            object GroupBox9: TGroupBox
              AlignWithMargins = True
              Left = 9
              Top = 3
              Width = 377
              Height = 214
              Caption = 'WebSocket API'
              TabOrder = 0
              object btnKucoinFutSubscribeSymbolTicker: TButton
                Left = 10
                Top = 22
                Width = 153
                Height = 25
                Caption = 'Subscribe Symbol TickerV2'
                TabOrder = 0
                OnClick = btnKucoinFutSubscribeSymbolTickerClick
              end
              object btnKucoinFutUnSubscribeExecutionData: TButton
                Left = 169
                Top = 86
                Width = 153
                Height = 25
                Caption = 'UnSubscribe Executions'
                TabOrder = 1
                OnClick = btnKucoinFutUnSubscribeExecutionDataClick
              end
              object btnKucoinFutUnSubscribeTradeOrders: TButton
                Left = 169
                Top = 117
                Width = 153
                Height = 25
                Caption = 'UnSubscribe Trade Orders'
                TabOrder = 2
                OnClick = btnKucoinFutUnSubscribeTradeOrdersClick
              end
              object btnKucoinFutUnSubscribeAccountBalance: TButton
                Left = 169
                Top = 148
                Width = 153
                Height = 25
                Caption = 'UnSubscribe Account Balance'
                TabOrder = 3
                OnClick = btnKucoinFutUnSubscribeAccountBalanceClick
              end
              object btnKucoinFutUnSubscribePositionChange: TButton
                Left = 169
                Top = 179
                Width = 153
                Height = 25
                Caption = 'UnSubscribe Position Change'
                TabOrder = 4
                OnClick = btnKucoinFutUnSubscribePositionChangeClick
              end
              object btnKucoinFutSubscribeLevel2MarketData: TButton
                Left = 10
                Top = 54
                Width = 153
                Height = 25
                Caption = 'Subscribe Level2 '
                TabOrder = 5
                OnClick = btnKucoinFutSubscribeLevel2MarketDataClick
              end
              object btnKucoinFutSubscribeExecutionData: TButton
                Left = 10
                Top = 86
                Width = 153
                Height = 25
                Caption = 'Subscribe Executions'
                TabOrder = 6
                OnClick = btnKucoinFutSubscribeExecutionDataClick
              end
              object btnKucoinFutSubscribeTradeOrders: TButton
                Left = 10
                Top = 117
                Width = 153
                Height = 25
                Caption = 'Subscribe Trade Orders'
                TabOrder = 7
                OnClick = btnKucoinFutSubscribeTradeOrdersClick
              end
              object btnKucoinFutSubscribeAccountBalance: TButton
                Left = 10
                Top = 148
                Width = 153
                Height = 25
                Caption = 'Subscribe Account Balance'
                TabOrder = 8
                OnClick = btnKucoinFutSubscribeAccountBalanceClick
              end
              object btnKucoinFutSubscribePositionChange: TButton
                Left = 10
                Top = 179
                Width = 153
                Height = 25
                Caption = 'Subscribe Position Change'
                TabOrder = 9
                OnClick = btnKucoinFutSubscribePositionChangeClick
              end
              object btnKucoinFutUnSubscribeSymbolTicker: TButton
                Left = 169
                Top = 22
                Width = 153
                Height = 25
                Caption = 'UnSubscribe Symbol TickerV2'
                TabOrder = 10
                OnClick = btnKucoinFutUnSubscribeSymbolTickerClick
              end
              object btnKucoinFutUnSubscribeLevel2MarketData: TButton
                Left = 169
                Top = 53
                Width = 153
                Height = 25
                Caption = 'UnSubscribe Level2'
                TabOrder = 11
                OnClick = btnKucoinFutUnSubscribeLevel2MarketDataClick
              end
            end
            object GroupBox10: TGroupBox
              AlignWithMargins = True
              Left = 403
              Top = 3
              Width = 742
              Height = 214
              Caption = 'REST API'
              TabOrder = 1
              object Label110: TLabel
                Left = 320
                Top = 29
                Width = 20
                Height = 13
                Caption = 'Side'
              end
              object Label111: TLabel
                Left = 399
                Top = 29
                Width = 37
                Height = 13
                Caption = 'Amount'
              end
              object Label112: TLabel
                Left = 320
                Top = 93
                Width = 20
                Height = 13
                Caption = 'Side'
              end
              object Label113: TLabel
                Left = 399
                Top = 93
                Width = 37
                Height = 13
                Caption = 'Amount'
              end
              object Label114: TLabel
                Left = 487
                Top = 93
                Width = 47
                Height = 13
                Caption = 'Limit Price'
              end
              object btnKucoinFutServiceStatus: TButton
                Left = 16
                Top = 19
                Width = 134
                Height = 25
                Caption = 'Service Status'
                TabOrder = 0
                OnClick = btnKucoinFutServiceStatusClick
              end
              object Button62: TButton
                Left = 156
                Top = 19
                Width = 134
                Height = 25
                Caption = 'Server Time'
                TabOrder = 1
                OnClick = Button62Click
              end
              object btnKucoinFutGetOpenContractList: TButton
                Left = 16
                Top = 50
                Width = 134
                Height = 25
                Caption = 'Open Contract List'
                TabOrder = 2
                OnClick = btnKucoinFutGetOpenContractListClick
              end
              object btnKucoinFutGetOrderInfoContract: TButton
                Left = 156
                Top = 52
                Width = 134
                Height = 25
                Caption = 'OrderInfo Contract'
                TabOrder = 3
                OnClick = btnKucoinFutGetOrderInfoContractClick
              end
              object btnKucoinFutGetTicker: TButton
                Left = 16
                Top = 83
                Width = 134
                Height = 25
                Caption = 'Get Ticker'
                TabOrder = 4
                OnClick = btnKucoinFutGetTickerClick
              end
              object btnKucoinFutGetPartOrderBook20: TButton
                Left = 156
                Top = 83
                Width = 134
                Height = 25
                Caption = 'Part OrderBook 20'
                TabOrder = 5
                OnClick = btnKucoinFutGetPartOrderBook20Click
              end
              object btnKucoinFutGetTradeHistory: TButton
                Left = 16
                Top = 114
                Width = 134
                Height = 25
                Caption = 'Trade History'
                TabOrder = 6
                OnClick = btnKucoinFutGetTradeHistoryClick
              end
              object btnKucoinFutGetAccountOverview: TButton
                Left = 16
                Top = 179
                Width = 134
                Height = 25
                Caption = 'Account Overview'
                TabOrder = 7
                OnClick = btnKucoinFutGetAccountOverviewClick
              end
              object btnKucoinFutGetTransactionHistory: TButton
                Left = 156
                Top = 179
                Width = 134
                Height = 25
                Caption = 'Transaction History'
                TabOrder = 8
                OnClick = btnKucoinFutGetTransactionHistoryClick
              end
              object cboKucoinFuturesMarketOrderSide: TComboBox
                Left = 320
                Top = 48
                Width = 73
                Height = 21
                Style = csDropDownList
                ItemIndex = 0
                TabOrder = 9
                Text = 'Buy'
                Items.Strings = (
                  'Buy'
                  'Sell')
              end
              object txtKucoinFuturesMarketSize: TEdit
                Left = 399
                Top = 48
                Width = 82
                Height = 21
                TabOrder = 10
                Text = '1'
              end
              object btnKucoinFuturesLimitOrder: TButton
                Left = 502
                Top = 46
                Width = 111
                Height = 25
                Caption = 'Market Order'
                TabOrder = 11
                OnClick = btnKucoinFuturesLimitOrderClick
              end
              object txtKucoinFuturesLimitPrice: TEdit
                Left = 487
                Top = 112
                Width = 131
                Height = 21
                TabOrder = 12
                Text = '100.00'
              end
              object txtKucoinFuturesLimitSize: TEdit
                Left = 399
                Top = 112
                Width = 82
                Height = 21
                TabOrder = 13
                Text = '1'
              end
              object cboKucoinFuturesLimitOrderSide: TComboBox
                Left = 320
                Top = 112
                Width = 73
                Height = 21
                Style = csDropDownList
                ItemIndex = 0
                TabOrder = 14
                Text = 'Buy'
                Items.Strings = (
                  'Buy'
                  'Sell')
              end
              object btnKucoinFuturesCancelAllOrders: TButton
                Left = 320
                Top = 150
                Width = 111
                Height = 25
                Caption = 'Cancel All Orders'
                TabOrder = 15
                OnClick = btnKucoinFuturesCancelAllOrdersClick
              end
              object btnKucoinFuturesMarketOrder: TButton
                Left = 624
                Top = 110
                Width = 111
                Height = 25
                Caption = 'Limit Order'
                TabOrder = 16
                OnClick = btnKucoinFuturesMarketOrderClick
              end
            end
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 1170
          Height = 97
          Align = alTop
          TabOrder = 1
          object Label101: TLabel
            Left = 26
            Top = 7
            Width = 33
            Height = 13
            Caption = 'ApiKey'
          end
          object Label102: TLabel
            Left = 341
            Top = 7
            Width = 38
            Height = 13
            Caption = 'Symbol:'
          end
          object Label104: TLabel
            Left = 13
            Top = 37
            Width = 46
            Height = 13
            Caption = 'ApiSecret'
          end
          object Label105: TLabel
            Left = 4
            Top = 67
            Width = 55
            Height = 13
            Caption = 'Passphrase'
          end
          object txtKucoinApiKey: TEdit
            Left = 65
            Top = 4
            Width = 211
            Height = 21
            TabOrder = 0
            OnChange = txtKucoinApiKeyChange
          end
          object txtKucoinSymbol: TEdit
            Left = 385
            Top = 4
            Width = 121
            Height = 21
            TabOrder = 1
            Text = 'BTC-USDT'
          end
          object txtKucoinApiSecret: TEdit
            Left = 65
            Top = 34
            Width = 211
            Height = 21
            PasswordChar = '*'
            TabOrder = 2
            OnChange = txtKucoinApiSecretChange
          end
          object chkKucoinSandBox: TCheckBox
            Left = 385
            Top = 31
            Width = 153
            Height = 17
            Caption = 'SandBox (Demo Account)'
            TabOrder = 3
            OnClick = chkKucoinSandBoxClick
          end
          object txtKucoinApiPassphrase: TEdit
            Left = 64
            Top = 64
            Width = 211
            Height = 21
            PasswordChar = '*'
            TabOrder = 4
            OnChange = txtKucoinApiPassphraseChange
          end
        end
      end
      object tabOKX: TTabSheet
        Caption = 'OKX'
        ImageIndex = 12
        OnShow = tabOKXShow
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 1170
          Height = 97
          Align = alTop
          TabOrder = 0
          object Label1: TLabel
            Left = 26
            Top = 7
            Width = 33
            Height = 13
            Caption = 'ApiKey'
          end
          object Label2: TLabel
            Left = 341
            Top = 7
            Width = 38
            Height = 13
            Caption = 'Symbol:'
          end
          object Label6: TLabel
            Left = 13
            Top = 37
            Width = 46
            Height = 13
            Caption = 'ApiSecret'
          end
          object Label11: TLabel
            Left = 4
            Top = 67
            Width = 55
            Height = 13
            Caption = 'Passphrase'
          end
          object txtOkxApiKey: TEdit
            Left = 65
            Top = 4
            Width = 211
            Height = 21
            TabOrder = 0
            OnChange = txtOkxApiKeyChange
          end
          object txtOkxInstId: TEdit
            Left = 385
            Top = 4
            Width = 121
            Height = 21
            TabOrder = 1
            Text = 'BTC-USDT'
          end
          object txtOkxApiSecret: TEdit
            Left = 65
            Top = 34
            Width = 211
            Height = 21
            PasswordChar = '*'
            TabOrder = 2
            OnChange = txtOkxApiSecretChange
          end
          object chkOkxIsDemo: TCheckBox
            Left = 385
            Top = 31
            Width = 153
            Height = 17
            Caption = 'Demo'
            TabOrder = 3
            OnClick = chkOkxIsDemoClick
          end
          object txtOkxPassphrase: TEdit
            Left = 64
            Top = 64
            Width = 211
            Height = 21
            PasswordChar = '*'
            TabOrder = 4
            OnChange = txtOkxPassphraseChange
          end
          object chkOkxIsPrivate: TCheckBox
            Left = 385
            Top = 54
            Width = 153
            Height = 17
            Caption = 'Private'
            TabOrder = 5
            OnClick = chkOkxIsPrivateClick
          end
        end
        object PageControl6: TPageControl
          Left = 0
          Top = 97
          Width = 1170
          Height = 261
          ActivePage = tabOKXMethods
          Align = alClient
          TabOrder = 1
          object tabOKXMethods: TTabSheet
            Caption = 'OKX WebSocket'
            OnShow = tabKucoinStocksShow
            object Panel6: TPanel
              Left = 400
              Top = 3
              Width = 753
              Height = 222
              TabOrder = 0
              object GroupBox11: TGroupBox
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 745
                Height = 214
                Align = alClient
                Caption = 'Private Channels and Trade'
                TabOrder = 0
                object Label12: TLabel
                  Left = 312
                  Top = 21
                  Width = 20
                  Height = 13
                  Caption = 'Side'
                end
                object Label13: TLabel
                  Left = 391
                  Top = 21
                  Width = 37
                  Height = 13
                  Caption = 'Amount'
                end
                object Label15: TLabel
                  Left = 312
                  Top = 85
                  Width = 20
                  Height = 13
                  Caption = 'Side'
                end
                object Label16: TLabel
                  Left = 391
                  Top = 85
                  Width = 37
                  Height = 13
                  Caption = 'Amount'
                end
                object Label17: TLabel
                  Left = 479
                  Top = 85
                  Width = 47
                  Height = 13
                  Caption = 'Limit Price'
                end
                object btnOkxSubscribeAccount: TButton
                  Left = 16
                  Top = 19
                  Width = 134
                  Height = 25
                  Caption = 'Subscribe Account'
                  TabOrder = 0
                  OnClick = btnOkxSubscribeAccountClick
                end
                object btnOkxUnSubscribeAccount: TButton
                  Left = 156
                  Top = 19
                  Width = 134
                  Height = 25
                  Caption = 'UnSubscribe Account'
                  TabOrder = 1
                  OnClick = btnOkxUnSubscribeAccountClick
                end
                object btnOkxSubscribeOrders: TButton
                  Left = 16
                  Top = 50
                  Width = 134
                  Height = 25
                  Caption = 'Subscribe Orders'
                  TabOrder = 2
                  OnClick = btnOkxSubscribeOrdersClick
                end
                object btnOkxUnSubscribeOrders: TButton
                  Left = 156
                  Top = 52
                  Width = 134
                  Height = 25
                  Caption = 'UnSubscribe Orders'
                  TabOrder = 3
                  OnClick = btnOkxUnSubscribeOrdersClick
                end
                object cboOkxMarketSide: TComboBox
                  Left = 312
                  Top = 40
                  Width = 73
                  Height = 21
                  Style = csDropDownList
                  ItemIndex = 0
                  TabOrder = 4
                  Text = 'Buy'
                  Items.Strings = (
                    'Buy'
                    'Sell')
                end
                object txtOkxMarketSize: TEdit
                  Left = 391
                  Top = 40
                  Width = 82
                  Height = 21
                  TabOrder = 5
                  Text = '1.00'
                end
                object cboOkxMarketOrder: TButton
                  Left = 494
                  Top = 38
                  Width = 111
                  Height = 25
                  Caption = 'Market Order'
                  TabOrder = 6
                  OnClick = cboOkxMarketOrderClick
                end
                object cboOkxLimitSide: TComboBox
                  Left = 312
                  Top = 104
                  Width = 73
                  Height = 21
                  Style = csDropDownList
                  ItemIndex = 0
                  TabOrder = 7
                  Text = 'Buy'
                  Items.Strings = (
                    'Buy'
                    'Sell')
                end
                object txtOkxLimitSize: TEdit
                  Left = 391
                  Top = 104
                  Width = 82
                  Height = 21
                  TabOrder = 8
                  Text = '1.00'
                end
                object txtOkxLimitPrice: TEdit
                  Left = 479
                  Top = 104
                  Width = 131
                  Height = 21
                  TabOrder = 9
                  Text = '20000'
                end
                object cboOkxLimitOrder: TButton
                  Left = 616
                  Top = 102
                  Width = 111
                  Height = 25
                  Caption = 'Limit Order'
                  TabOrder = 10
                  OnClick = cboOkxLimitOrderClick
                end
              end
            end
            object Panel7: TPanel
              Left = 12
              Top = 3
              Width = 346
              Height = 222
              TabOrder = 1
              object GroupBox12: TGroupBox
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 338
                Height = 214
                Align = alClient
                Caption = 'Public Channels'
                TabOrder = 0
                object btnOkxSubscribeInstruments: TButton
                  Left = 10
                  Top = 22
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe Instruments'
                  TabOrder = 0
                  OnClick = btnOkxSubscribeInstrumentsClick
                end
                object btnOkxUnSubscribeCandlesticks: TButton
                  Left = 169
                  Top = 85
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe Candlesticks'
                  TabOrder = 1
                  OnClick = btnOkxUnSubscribeCandlesticksClick
                end
                object btnOkxUnSubscribeTradeOrders: TButton
                  Left = 169
                  Top = 117
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe Trades'
                  TabOrder = 2
                  OnClick = btnOkxUnSubscribeTradeOrdersClick
                end
                object btnOkxUnSubscribeOrderBook: TButton
                  Left = 169
                  Top = 148
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe Order Book'
                  TabOrder = 3
                  OnClick = btnOkxUnSubscribeOrderBookClick
                end
                object btnOkxUnSubscribeStatus: TButton
                  Left = 169
                  Top = 179
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe Status'
                  TabOrder = 4
                  OnClick = btnOkxUnSubscribeStatusClick
                end
                object btnOkxSubscribeTicker: TButton
                  Left = 10
                  Top = 54
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe Ticker'
                  TabOrder = 5
                  OnClick = btnOkxSubscribeTickerClick
                end
                object btnOkxSubscribeCandlesticks: TButton
                  Left = 10
                  Top = 86
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe Candlesticks'
                  TabOrder = 6
                  OnClick = btnOkxSubscribeCandlesticksClick
                end
                object btnOkxSubscribeTradeOrders: TButton
                  Left = 10
                  Top = 117
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe Trades'
                  TabOrder = 7
                  OnClick = btnOkxSubscribeTradeOrdersClick
                end
                object btnOkxSubscribeOrderBook: TButton
                  Left = 10
                  Top = 148
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe Order Book'
                  TabOrder = 8
                  OnClick = btnOkxSubscribeOrderBookClick
                end
                object btnOkxSubscribeStatus: TButton
                  Left = 10
                  Top = 179
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe Status'
                  TabOrder = 9
                  OnClick = btnOkxSubscribeStatusClick
                end
                object btnOkxUnSubscribeInstruments: TButton
                  Left = 169
                  Top = 22
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe Instruments'
                  TabOrder = 10
                  OnClick = btnOkxUnSubscribeInstrumentsClick
                end
                object btnOkxUnSubscribeTicker: TButton
                  Left = 169
                  Top = 53
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe Ticker'
                  TabOrder = 11
                  OnClick = btnOkxUnSubscribeTickerClick
                end
              end
            end
          end
        end
      end
      object tabXTB: TTabSheet
        Caption = 'XTB'
        ImageIndex = 13
        OnShow = tabXTBShow
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 1170
          Height = 65
          Align = alTop
          TabOrder = 0
          object Label18: TLabel
            Left = 37
            Top = 7
            Width = 26
            Height = 13
            Caption = 'User:'
          end
          object Label26: TLabel
            Left = 13
            Top = 37
            Width = 50
            Height = 13
            Caption = 'Password:'
          end
          object Label24: TLabel
            Left = 475
            Top = 15
            Width = 38
            Height = 13
            Caption = 'Symbol:'
          end
          object txtXTBUser: TEdit
            Left = 65
            Top = 4
            Width = 211
            Height = 21
            TabOrder = 0
            OnChange = txtXTBUserChange
          end
          object txtXTBPassword: TEdit
            Left = 65
            Top = 34
            Width = 211
            Height = 21
            PasswordChar = '*'
            TabOrder = 1
            OnChange = txtXTBPasswordChange
          end
          object chkXTBDemo: TCheckBox
            Left = 299
            Top = 8
            Width = 153
            Height = 17
            Caption = 'Demo'
            TabOrder = 2
            OnClick = chkXTBDemoClick
          end
          object txtXTBSymbol: TEdit
            Left = 519
            Top = 12
            Width = 121
            Height = 21
            TabOrder = 3
            Text = 'EURPLN'
          end
        end
        object pageXTB: TPageControl
          Left = 0
          Top = 65
          Width = 1170
          Height = 293
          ActivePage = tabXTBTrading
          Align = alClient
          TabOrder = 1
          object tabXTBTrading: TTabSheet
            Caption = 'Trading Data'
            object Label25: TLabel
              Left = 368
              Top = 21
              Width = 20
              Height = 13
              Caption = 'Side'
            end
            object Label27: TLabel
              Left = 447
              Top = 21
              Width = 37
              Height = 13
              Caption = 'Amount'
            end
            object Label28: TLabel
              Left = 368
              Top = 85
              Width = 20
              Height = 13
              Caption = 'Side'
            end
            object Label29: TLabel
              Left = 447
              Top = 85
              Width = 37
              Height = 13
              Caption = 'Amount'
            end
            object Label39: TLabel
              Left = 535
              Top = 85
              Width = 47
              Height = 13
              Caption = 'Limit Price'
            end
            object btnXTBGetAllSymbols: TButton
              Left = 168
              Top = 109
              Width = 135
              Height = 25
              Caption = 'Get All Symbols'
              TabOrder = 0
              OnClick = btnXTBGetAllSymbolsClick
            end
            object btnXTBGetCurrentUserData: TButton
              Left = 168
              Top = 16
              Width = 135
              Height = 25
              Caption = 'Get Current User Data'
              TabOrder = 1
              OnClick = btnXTBGetCurrentUserDataClick
            end
            object btnXTBGetServerTime: TButton
              Left = 11
              Top = 47
              Width = 135
              Height = 25
              Caption = 'Get Server Time'
              TabOrder = 2
              OnClick = btnXTBGetServerTimeClick
            end
            object btnXTBGetSymbol: TButton
              Left = 168
              Top = 47
              Width = 135
              Height = 25
              Caption = 'Get Symbol'
              TabOrder = 3
              OnClick = btnXTBGetSymbolClick
            end
            object btnXTBGetTickPrices: TButton
              Left = 11
              Top = 78
              Width = 135
              Height = 25
              Caption = 'Get Tick Prices'
              TabOrder = 4
              OnClick = btnXTBGetTickPricesClick
            end
            object btnXTBGetTradingHours: TButton
              Left = 168
              Top = 78
              Width = 135
              Height = 25
              Caption = 'Get Trading Hours'
              TabOrder = 5
              OnClick = btnXTBGetTradingHoursClick
            end
            object btnXTBGetTrades: TButton
              Left = 11
              Top = 109
              Width = 135
              Height = 25
              Caption = 'Get Trades'
              TabOrder = 6
              OnClick = btnXTBGetTradesClick
            end
            object btnXTBGetVersion: TButton
              Left = 11
              Top = 16
              Width = 135
              Height = 25
              Caption = 'Get Version'
              TabOrder = 7
              OnClick = btnXTBGetVersionClick
            end
            object cboXTBMarketSide: TComboBox
              Left = 368
              Top = 40
              Width = 73
              Height = 21
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 8
              Text = 'Buy'
              Items.Strings = (
                'Buy'
                'Sell')
            end
            object txtXTBMarketSize: TEdit
              Left = 447
              Top = 40
              Width = 82
              Height = 21
              TabOrder = 9
              Text = '1.00'
            end
            object btnXTBMarketOrder: TButton
              Left = 550
              Top = 38
              Width = 111
              Height = 25
              Caption = 'Market Order'
              TabOrder = 10
              OnClick = btnXTBMarketOrderClick
            end
            object cboXTBLimitSide: TComboBox
              Left = 368
              Top = 104
              Width = 73
              Height = 21
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 11
              Text = 'Buy'
              Items.Strings = (
                'Buy'
                'Sell')
            end
            object txtXTBLimitSize: TEdit
              Left = 447
              Top = 104
              Width = 82
              Height = 21
              TabOrder = 12
              Text = '1.00'
            end
            object txtXTBLimitPrice: TEdit
              Left = 535
              Top = 104
              Width = 131
              Height = 21
              TabOrder = 13
              Text = '4.5'
            end
            object btnXTBLimitOrder: TButton
              Left = 672
              Top = 102
              Width = 111
              Height = 25
              Caption = 'Limit Order'
              TabOrder = 14
              OnClick = btnXTBLimitOrderClick
            end
          end
          object tabXTBStreaming: TTabSheet
            Caption = 'Streaming'
            ImageIndex = 1
            object btnXTBSubscribeBalance: TButton
              Left = 19
              Top = 24
              Width = 135
              Height = 25
              Caption = 'Subscribe Balance'
              TabOrder = 0
              OnClick = btnXTBSubscribeBalanceClick
            end
            object btnXTBUnsubscribeBalance: TButton
              Left = 176
              Top = 24
              Width = 135
              Height = 25
              Caption = 'Unsubscribe Balance'
              TabOrder = 1
              OnClick = btnXTBUnsubscribeBalanceClick
            end
            object btnXTBUnsubscribeCandles: TButton
              Left = 176
              Top = 55
              Width = 135
              Height = 25
              Caption = 'Unsubscribe Candles'
              TabOrder = 2
              OnClick = btnXTBUnsubscribeCandlesClick
            end
            object btnXTBSubscribeCandles: TButton
              Left = 19
              Top = 55
              Width = 135
              Height = 25
              Caption = 'Subscribe Candles'
              TabOrder = 3
              OnClick = btnXTBSubscribeCandlesClick
            end
            object btnSubscribeTrades: TButton
              Left = 19
              Top = 86
              Width = 135
              Height = 25
              Caption = 'Subscribe Trades'
              TabOrder = 4
              OnClick = btnSubscribeTradesClick
            end
            object btnUnsubscribeTrades: TButton
              Left = 176
              Top = 86
              Width = 135
              Height = 25
              Caption = 'Unsubscribe Trades'
              TabOrder = 5
              OnClick = btnUnsubscribeTradesClick
            end
            object btnXTBSubscribeTradeStatus: TButton
              Left = 19
              Top = 117
              Width = 135
              Height = 25
              Caption = 'Subscribe Trade Status'
              TabOrder = 6
              OnClick = btnXTBSubscribeTradeStatusClick
            end
            object btnXTBUnsubscribeTradeStatus: TButton
              Left = 176
              Top = 117
              Width = 135
              Height = 25
              Caption = 'Unsubscribe Trade Status'
              TabOrder = 7
              OnClick = btnXTBUnsubscribeTradeStatusClick
            end
            object btnXTBSubscribeTickPrices: TButton
              Left = 19
              Top = 148
              Width = 135
              Height = 25
              Caption = 'Subscribe Tick Prices'
              TabOrder = 8
              OnClick = btnXTBSubscribeTickPricesClick
            end
            object btnXTBUnsubscribeTickPrices: TButton
              Left = 176
              Top = 148
              Width = 135
              Height = 25
              Caption = 'Unsubscribe Tick Prices'
              TabOrder = 9
              OnClick = btnXTBUnsubscribeTickPricesClick
            end
          end
        end
      end
      object tabBybit: TTabSheet
        Caption = 'BYBIT'
        ImageIndex = 14
        object Panel9: TPanel
          Left = 0
          Top = 0
          Width = 1170
          Height = 65
          Align = alTop
          TabOrder = 0
          object Label45: TLabel
            Left = 26
            Top = 7
            Width = 33
            Height = 13
            Caption = 'ApiKey'
          end
          object Label46: TLabel
            Left = 341
            Top = 7
            Width = 38
            Height = 13
            Caption = 'Symbol:'
          end
          object Label84: TLabel
            Left = 13
            Top = 37
            Width = 46
            Height = 13
            Caption = 'ApiSecret'
          end
          object txtBybitAPIKey: TEdit
            Left = 65
            Top = 4
            Width = 211
            Height = 21
            TabOrder = 0
            OnChange = txtBybitAPIKeyChange
          end
          object txtBybitSymbol: TEdit
            Left = 385
            Top = 4
            Width = 121
            Height = 21
            TabOrder = 1
            Text = 'BTCUSDT'
          end
          object txtBybitAPISecret: TEdit
            Left = 65
            Top = 34
            Width = 211
            Height = 21
            PasswordChar = '*'
            TabOrder = 2
            OnChange = txtBybitAPISecretChange
          end
          object chkBybitTestNet: TCheckBox
            Left = 341
            Top = 36
            Width = 153
            Height = 17
            Caption = 'TestNet (Demo Account)'
            TabOrder = 3
            OnClick = chkBybitTestNetClick
          end
        end
        object PageControl8: TPageControl
          Left = 0
          Top = 65
          Width = 1170
          Height = 293
          ActivePage = tabBybitSpot
          Align = alClient
          TabOrder = 1
          object tabBybitSpot: TTabSheet
            Caption = 'Spot'
            OnShow = tabBybitSpotShow
            object Panel10: TPanel
              Left = 400
              Top = 3
              Width = 465
              Height = 249
              TabOrder = 0
              object GroupBox14: TGroupBox
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 457
                Height = 241
                Align = alClient
                Caption = 'REST API'
                TabOrder = 0
                object btnBybitSpotGetServerTime: TButton
                  Left = 16
                  Top = 19
                  Width = 134
                  Height = 25
                  Caption = 'Server Time'
                  TabOrder = 0
                  OnClick = btnBybitSpotGetServerTimeClick
                end
                object btnBybitSpotGetAllSymbols: TButton
                  Left = 16
                  Top = 50
                  Width = 134
                  Height = 25
                  Caption = 'All Symbols'
                  TabOrder = 1
                  OnClick = btnBybitSpotGetAllSymbolsClick
                end
                object btnBybitSpotGetOrderBook: TButton
                  Left = 156
                  Top = 52
                  Width = 134
                  Height = 25
                  Caption = 'Order Book'
                  TabOrder = 2
                  OnClick = btnBybitSpotGetOrderBookClick
                end
                object btnBybitSpotGetPublicTradingRecords: TButton
                  Left = 296
                  Top = 52
                  Width = 134
                  Height = 25
                  Caption = 'Trading Records'
                  TabOrder = 3
                  OnClick = btnBybitSpotGetPublicTradingRecordsClick
                end
                object btnBybitSpotGetQueryKLine: TButton
                  Left = 16
                  Top = 83
                  Width = 134
                  Height = 25
                  Caption = 'KLine'
                  TabOrder = 4
                  OnClick = btnBybitSpotGetQueryKLineClick
                end
                object btnBybitSpotGetLatestInformation: TButton
                  Left = 156
                  Top = 83
                  Width = 134
                  Height = 25
                  Caption = 'Latest Information'
                  TabOrder = 5
                  OnClick = btnBybitSpotGetLatestInformationClick
                end
                object btnBybitSpotGetLastTradedPrice: TButton
                  Left = 296
                  Top = 83
                  Width = 134
                  Height = 25
                  Caption = 'Last Traded Price'
                  TabOrder = 6
                  OnClick = btnBybitSpotGetLastTradedPriceClick
                end
                object btnBybitSpotGetOpenOrders: TButton
                  Left = 16
                  Top = 176
                  Width = 134
                  Height = 25
                  Caption = 'Open Orders'
                  TabOrder = 7
                  OnClick = btnBybitSpotGetOpenOrdersClick
                end
                object btnBybitSpotGetWalletBalance: TButton
                  Left = 16
                  Top = 205
                  Width = 134
                  Height = 25
                  Caption = 'Wallet Balance'
                  TabOrder = 8
                  OnClick = btnBybitSpotGetWalletBalanceClick
                end
                object btnBybitSpotGetTradeHistory: TButton
                  Left = 156
                  Top = 176
                  Width = 134
                  Height = 25
                  Caption = 'Trade History'
                  TabOrder = 9
                  OnClick = btnBybitSpotGetTradeHistoryClick
                end
              end
            end
            object Panel11: TPanel
              Left = 12
              Top = 3
              Width = 346
              Height = 252
              TabOrder = 1
              object GroupBox15: TGroupBox
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 338
                Height = 244
                Align = alClient
                Caption = 'WebSocket API'
                TabOrder = 0
                object btnBybitSpotSubscribeDepth: TButton
                  Left = 10
                  Top = 22
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe Depth'
                  TabOrder = 0
                  OnClick = btnBybitSpotSubscribeDepthClick
                end
                object btnBybitSpotUnSubscribeKLine: TButton
                  Left = 169
                  Top = 86
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe KLine'
                  TabOrder = 1
                  OnClick = btnBybitSpotUnSubscribeKLineClick
                end
                object btnBybitSpotUnSubscribeTickers: TButton
                  Left = 169
                  Top = 117
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe Tickers'
                  TabOrder = 2
                  OnClick = btnBybitSpotUnSubscribeTickersClick
                end
                object btnBybitSpotUnSubscribeBookTicker: TButton
                  Left = 169
                  Top = 148
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe Book Ticker'
                  TabOrder = 3
                  OnClick = btnBybitSpotUnSubscribeBookTickerClick
                end
                object btnBybitSpotSubscribeTrade: TButton
                  Left = 10
                  Top = 54
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe Trade'
                  TabOrder = 4
                  OnClick = btnBybitSpotSubscribeTradeClick
                end
                object btnBybitSpotSubscribeKLine: TButton
                  Left = 10
                  Top = 86
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe KLine'
                  TabOrder = 5
                  OnClick = btnBybitSpotSubscribeKLineClick
                end
                object btnBybitSpotSubscribeTickers: TButton
                  Left = 10
                  Top = 117
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe Tickers'
                  TabOrder = 6
                  OnClick = btnBybitSpotSubscribeTickersClick
                end
                object btnBybitSpotSubscribeBookTicker: TButton
                  Left = 10
                  Top = 148
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe Book Ticker'
                  TabOrder = 7
                  OnClick = btnBybitSpotSubscribeBookTickerClick
                end
                object btnBybitSpotUnSubscribeDepth: TButton
                  Left = 169
                  Top = 22
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe Depth'
                  TabOrder = 8
                  OnClick = btnBybitSpotUnSubscribeDepthClick
                end
                object btnBybitSpotUnSubscribeTrade: TButton
                  Left = 169
                  Top = 53
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe Trade'
                  TabOrder = 9
                  OnClick = btnBybitSpotUnSubscribeTradeClick
                end
                object btnBybitSpotSubscribeAccountInfo: TButton
                  Left = 10
                  Top = 179
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe AccountInfo'
                  TabOrder = 10
                  OnClick = btnBybitSpotSubscribeAccountInfoClick
                end
                object btnBybitSpotUnSubscribeAccountInfo: TButton
                  Left = 169
                  Top = 179
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe AccountInfo'
                  TabOrder = 11
                  OnClick = btnBybitSpotUnSubscribeAccountInfoClick
                end
                object btnBybitSpotSubscribeOrder: TButton
                  Left = 10
                  Top = 210
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe Order'
                  TabOrder = 12
                  OnClick = btnBybitSpotSubscribeOrderClick
                end
                object btnBybitSpotUnSubscribeOrder: TButton
                  Left = 169
                  Top = 210
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe Order'
                  TabOrder = 13
                  OnClick = btnBybitSpotUnSubscribeOrderClick
                end
              end
            end
          end
          object tabBybitUSDTPerpetual: TTabSheet
            Caption = 'USDT Perpetual'
            ImageIndex = 2
            OnShow = tabBybitUSDTPerpetualShow
            object GroupBox18: TGroupBox
              AlignWithMargins = True
              Left = 17
              Top = 11
              Width = 377
              Height = 254
              Caption = 'WebSocket API'
              TabOrder = 0
              object btnBybitUSDTPerpetualSubscribeOrderBookL2_25: TButton
                Left = 10
                Top = 22
                Width = 153
                Height = 25
                Caption = 'Subscribe OrderBook L2 25'
                TabOrder = 0
                OnClick = btnBybitUSDTPerpetualSubscribeOrderBookL2_25Click
              end
              object btnBybitUSDTPerpetualUnSubscribeInstrumentation: TButton
                Left = 169
                Top = 86
                Width = 153
                Height = 25
                Caption = 'UnSubscribe Instrumentation'
                TabOrder = 1
                OnClick = btnBybitUSDTPerpetualUnSubscribeInstrumentationClick
              end
              object btnBybitUSDTPerpetualUnSubscribeLiquidation: TButton
                Left = 169
                Top = 117
                Width = 153
                Height = 25
                Caption = 'UnSubscribe Liquidation'
                TabOrder = 2
                OnClick = btnBybitUSDTPerpetualUnSubscribeLiquidationClick
              end
              object btnBybitUSDTPerpetualUnSubscribePosition: TButton
                Left = 169
                Top = 179
                Width = 153
                Height = 25
                Caption = 'UnSubscribe Position'
                TabOrder = 3
                OnClick = btnBybitUSDTPerpetualUnSubscribePositionClick
              end
              object btnBybitUSDTPerpetualUnSubscribeKLine: TButton
                Left = 169
                Top = 148
                Width = 153
                Height = 25
                Caption = 'UnSubscribe KLine'
                TabOrder = 4
                OnClick = btnBybitUSDTPerpetualUnSubscribeKLineClick
              end
              object btnBybitUSDTPerpetualSubscribeTrade: TButton
                Left = 10
                Top = 54
                Width = 153
                Height = 25
                Caption = 'Subscribe Trade'
                TabOrder = 5
                OnClick = btnBybitUSDTPerpetualSubscribeTradeClick
              end
              object btnBybitUSDTPerpetualSubscribeInstrumentation: TButton
                Left = 10
                Top = 86
                Width = 153
                Height = 25
                Caption = 'Subscribe Instrumentation'
                TabOrder = 6
                OnClick = btnBybitUSDTPerpetualSubscribeInstrumentationClick
              end
              object btnBybitUSDTPerpetualSubscribeLiquidation: TButton
                Left = 10
                Top = 117
                Width = 153
                Height = 25
                Caption = 'Subscribe Liquidation'
                TabOrder = 7
                OnClick = btnBybitUSDTPerpetualSubscribeLiquidationClick
              end
              object btnBybitUSDTPerpetualSubscribePosition: TButton
                Left = 10
                Top = 179
                Width = 153
                Height = 25
                Caption = 'Subscribe Position'
                TabOrder = 8
                OnClick = btnBybitUSDTPerpetualSubscribePositionClick
              end
              object btnBybitUSDTPerpetualSubscribeKLine: TButton
                Left = 10
                Top = 148
                Width = 153
                Height = 25
                Caption = 'Subscribe KLine'
                TabOrder = 9
                OnClick = btnBybitUSDTPerpetualSubscribeKLineClick
              end
              object btnBybitUSDTPerpetualUnSubscribeOrderBookL2_25: TButton
                Left = 169
                Top = 22
                Width = 153
                Height = 25
                Caption = 'UnSubscribe OrderBook L2 25'
                TabOrder = 10
                OnClick = btnBybitUSDTPerpetualUnSubscribeOrderBookL2_25Click
              end
              object btnBybitUSDTPerpetualUnSubscribeTrade: TButton
                Left = 169
                Top = 53
                Width = 153
                Height = 25
                Caption = 'UnSubscribe Trade'
                TabOrder = 11
                OnClick = btnBybitUSDTPerpetualUnSubscribeTradeClick
              end
              object btnBybitUSDTPerpetualSubscribeExecution: TButton
                Left = 13
                Top = 210
                Width = 153
                Height = 25
                Caption = 'Subscribe Execution'
                TabOrder = 12
                OnClick = btnBybitUSDTPerpetualSubscribeExecutionClick
              end
              object btnBybitUSDTPerpetualUnSubscribeExecution: TButton
                Left = 172
                Top = 210
                Width = 153
                Height = 25
                Caption = 'UnSubscribe Execution'
                TabOrder = 13
                OnClick = btnBybitUSDTPerpetualUnSubscribeExecutionClick
              end
            end
            object Panel13: TPanel
              Left = 416
              Top = 16
              Width = 713
              Height = 249
              TabOrder = 1
              object GroupBox19: TGroupBox
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 705
                Height = 241
                Align = alClient
                Caption = 'REST API'
                TabOrder = 0
                object Label95: TLabel
                  Left = 32
                  Top = 125
                  Width = 20
                  Height = 13
                  Caption = 'Side'
                end
                object Label115: TLabel
                  Left = 111
                  Top = 125
                  Width = 37
                  Height = 13
                  Caption = 'Amount'
                end
                object Label116: TLabel
                  Left = 32
                  Top = 189
                  Width = 20
                  Height = 13
                  Caption = 'Side'
                end
                object Label117: TLabel
                  Left = 111
                  Top = 189
                  Width = 37
                  Height = 13
                  Caption = 'Amount'
                end
                object Label118: TLabel
                  Left = 246
                  Top = 189
                  Width = 47
                  Height = 13
                  Caption = 'Limit Price'
                end
                object btnBybitUSDTPerpetualGetServerTime: TButton
                  Left = 16
                  Top = 19
                  Width = 134
                  Height = 25
                  Caption = 'Server Time'
                  TabOrder = 0
                  OnClick = btnBybitUSDTPerpetualGetServerTimeClick
                end
                object btnBybitUSDTPerpetualOrderBook: TButton
                  Left = 16
                  Top = 52
                  Width = 134
                  Height = 25
                  Caption = 'Order Book'
                  TabOrder = 1
                  OnClick = btnBybitUSDTPerpetualOrderBookClick
                end
                object btnBybitUSDTPerpetualTradingRecords: TButton
                  Left = 296
                  Top = 52
                  Width = 134
                  Height = 25
                  Caption = 'Trading Records'
                  TabOrder = 2
                  OnClick = btnBybitUSDTPerpetualTradingRecordsClick
                end
                object btnBybitUSDTPerpetualLatestInformation: TButton
                  Left = 156
                  Top = 52
                  Width = 134
                  Height = 25
                  Caption = 'Latest Information'
                  TabOrder = 3
                  OnClick = btnBybitUSDTPerpetualLatestInformationClick
                end
                object btnBybitUSDTPerpetualGetWalletBalance: TButton
                  Left = 16
                  Top = 83
                  Width = 134
                  Height = 25
                  Caption = 'Wallet Balance'
                  TabOrder = 4
                  OnClick = btnBybitUSDTPerpetualGetWalletBalanceClick
                end
                object cboBybitUSDTPerpetualMarketOrder: TComboBox
                  Left = 32
                  Top = 144
                  Width = 73
                  Height = 21
                  Style = csDropDownList
                  ItemIndex = 0
                  TabOrder = 5
                  Text = 'Buy'
                  Items.Strings = (
                    'Buy'
                    'Sell')
                end
                object txtBybitUSDTPerpetualMarketQuantity: TEdit
                  Left = 111
                  Top = 144
                  Width = 129
                  Height = 21
                  TabOrder = 6
                  Text = '1'
                end
                object btnBybitUSDTPerpetualMarketOrder: TButton
                  Left = 246
                  Top = 142
                  Width = 111
                  Height = 25
                  Caption = 'Market Order'
                  TabOrder = 7
                  OnClick = btnBybitUSDTPerpetualMarketOrderClick
                end
                object cboBybitUSDTPerpetualLimitOrder: TComboBox
                  Left = 32
                  Top = 208
                  Width = 73
                  Height = 21
                  Style = csDropDownList
                  ItemIndex = 0
                  TabOrder = 8
                  Text = 'Buy'
                  Items.Strings = (
                    'Buy'
                    'Sell')
                end
                object txtBybitUSDTPerpetualLimitQuantity: TEdit
                  Left = 111
                  Top = 208
                  Width = 121
                  Height = 21
                  TabOrder = 9
                  Text = '1'
                end
                object txtBybitUSDTPerpetualLimitPrice: TEdit
                  Left = 246
                  Top = 208
                  Width = 131
                  Height = 21
                  TabOrder = 10
                  Text = '100.00'
                end
                object btnBybitUSDTPerpetualLimitOrder: TButton
                  Left = 383
                  Top = 206
                  Width = 111
                  Height = 25
                  Caption = 'Limit Order'
                  TabOrder = 11
                  OnClick = btnBybitUSDTPerpetualLimitOrderClick
                end
                object btnBybitUSDTPerpetualCancelAllOrders: TButton
                  Left = 582
                  Top = 206
                  Width = 111
                  Height = 25
                  Caption = 'Cancel All Orders'
                  TabOrder = 12
                  OnClick = btnBybitUSDTPerpetualCancelAllOrdersClick
                end
                object btnBybitUSDTPerpetualGetPosition: TButton
                  Left = 156
                  Top = 83
                  Width = 134
                  Height = 25
                  Caption = 'Position'
                  TabOrder = 13
                  OnClick = btnBybitUSDTPerpetualGetPositionClick
                end
              end
            end
          end
          object tabBybitInversePerpetual: TTabSheet
            Caption = 'Inverse Perpetual'
            ImageIndex = 1
            OnShow = tabBybitInversePerpetualShow
            object GroupBox16: TGroupBox
              AlignWithMargins = True
              Left = 9
              Top = 3
              Width = 377
              Height = 254
              Caption = 'WebSocket API'
              TabOrder = 0
              object btnBybitInversePerpetualSubscribeOrderBookL2_25: TButton
                Left = 10
                Top = 22
                Width = 153
                Height = 25
                Caption = 'Subscribe OrderBook L2 25'
                TabOrder = 0
                OnClick = btnBybitInversePerpetualSubscribeOrderBookL2_25Click
              end
              object btnBybitInversePerpetualUnSubscribeInstrumentation: TButton
                Left = 169
                Top = 86
                Width = 153
                Height = 25
                Caption = 'UnSubscribe Instrumentation'
                TabOrder = 1
                OnClick = btnBybitInversePerpetualUnSubscribeInstrumentationClick
              end
              object btnBybitInversePerpetualUnSubscribeLiquidation: TButton
                Left = 169
                Top = 117
                Width = 153
                Height = 25
                Caption = 'UnSubscribe Liquidation'
                TabOrder = 2
                OnClick = btnBybitInversePerpetualUnSubscribeLiquidationClick
              end
              object btnBybitInversePerpetualUnSubscribePosition: TButton
                Left = 169
                Top = 179
                Width = 153
                Height = 25
                Caption = 'UnSubscribe Position'
                TabOrder = 3
                OnClick = btnBybitInversePerpetualUnSubscribePositionClick
              end
              object btnBybitInversePerpetualUnSubscribeKLine: TButton
                Left = 169
                Top = 148
                Width = 153
                Height = 25
                Caption = 'UnSubscribe KLine V2'
                TabOrder = 4
                OnClick = btnBybitInversePerpetualUnSubscribeKLineClick
              end
              object btnBybitInversePerpetualSubscribeTrade: TButton
                Left = 10
                Top = 54
                Width = 153
                Height = 25
                Caption = 'Subscribe Trade'
                TabOrder = 5
                OnClick = btnBybitInversePerpetualSubscribeTradeClick
              end
              object btnBybitInversePerpetualSubscribeInstrumentation: TButton
                Left = 10
                Top = 86
                Width = 153
                Height = 25
                Caption = 'Subscribe Instrumentation'
                TabOrder = 6
                OnClick = btnBybitInversePerpetualSubscribeInstrumentationClick
              end
              object btnBybitInversePerpetualSubscribeLiquidation: TButton
                Left = 10
                Top = 117
                Width = 153
                Height = 25
                Caption = 'Subscribe Liquidation'
                TabOrder = 7
                OnClick = btnBybitInversePerpetualSubscribeLiquidationClick
              end
              object btnBybitInversePerpetualSubscribePosition: TButton
                Left = 10
                Top = 179
                Width = 153
                Height = 25
                Caption = 'Subscribe Position'
                TabOrder = 8
                OnClick = btnBybitInversePerpetualSubscribePositionClick
              end
              object btnBybitInversePerpetualSubscribeKLine: TButton
                Left = 10
                Top = 148
                Width = 153
                Height = 25
                Caption = 'Subscribe KLine V2'
                TabOrder = 9
                OnClick = btnBybitInversePerpetualSubscribeKLineClick
              end
              object btnBybitInversePerpetualUnSubscribeOrderBookL2_25: TButton
                Left = 169
                Top = 22
                Width = 153
                Height = 25
                Caption = 'UnSubscribe OrderBook L2 25'
                TabOrder = 10
                OnClick = btnBybitInversePerpetualUnSubscribeOrderBookL2_25Click
              end
              object btnBybitInversePerpetualUnSubscribeTrade: TButton
                Left = 169
                Top = 53
                Width = 153
                Height = 25
                Caption = 'UnSubscribe Trade'
                TabOrder = 11
                OnClick = btnBybitInversePerpetualUnSubscribeTradeClick
              end
              object btnBybitInversePerpetualSubscribeExecution: TButton
                Left = 13
                Top = 210
                Width = 153
                Height = 25
                Caption = 'Subscribe Execution'
                TabOrder = 12
                OnClick = btnBybitInversePerpetualSubscribeExecutionClick
              end
              object btnBybitInversePerpetualUnSubscribeExecution: TButton
                Left = 172
                Top = 210
                Width = 153
                Height = 25
                Caption = 'UnSubscribe Execution'
                TabOrder = 13
                OnClick = btnBybitInversePerpetualUnSubscribeExecutionClick
              end
            end
            object Panel12: TPanel
              Left = 408
              Top = 11
              Width = 705
              Height = 249
              TabOrder = 1
              object GroupBox17: TGroupBox
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 697
                Height = 241
                Align = alClient
                Caption = 'REST API'
                TabOrder = 0
                object Label47: TLabel
                  Left = 24
                  Top = 117
                  Width = 20
                  Height = 13
                  Caption = 'Side'
                end
                object Label91: TLabel
                  Left = 24
                  Top = 181
                  Width = 20
                  Height = 13
                  Caption = 'Side'
                end
                object Label92: TLabel
                  Left = 103
                  Top = 181
                  Width = 37
                  Height = 13
                  Caption = 'Amount'
                end
                object Label93: TLabel
                  Left = 238
                  Top = 181
                  Width = 47
                  Height = 13
                  Caption = 'Limit Price'
                end
                object Label94: TLabel
                  Left = 103
                  Top = 117
                  Width = 37
                  Height = 13
                  Caption = 'Amount'
                end
                object btnBybitInversePerpetualGetServerTime: TButton
                  Left = 16
                  Top = 19
                  Width = 134
                  Height = 25
                  Caption = 'Server Time'
                  TabOrder = 0
                  OnClick = btnBybitInversePerpetualGetServerTimeClick
                end
                object btnBybitInversePerpetualOrderBook: TButton
                  Left = 16
                  Top = 50
                  Width = 134
                  Height = 25
                  Caption = 'Order Book'
                  TabOrder = 1
                  OnClick = btnBybitInversePerpetualOrderBookClick
                end
                object btnBybitInversePerpetualTradingRecords: TButton
                  Left = 156
                  Top = 52
                  Width = 134
                  Height = 25
                  Caption = 'Trading Records'
                  TabOrder = 2
                  OnClick = btnBybitInversePerpetualTradingRecordsClick
                end
                object btnBybitInversePerpetualLatestInformation: TButton
                  Left = 296
                  Top = 52
                  Width = 134
                  Height = 25
                  Caption = 'Latest Information'
                  TabOrder = 3
                  OnClick = btnBybitInversePerpetualLatestInformationClick
                end
                object btnBybitInversePerpetualGetWalletBalance: TButton
                  Left = 16
                  Top = 81
                  Width = 134
                  Height = 25
                  Caption = 'Wallet Balance'
                  TabOrder = 4
                  OnClick = btnBybitInversePerpetualGetWalletBalanceClick
                end
                object cboBybitInversePerpetualMarketOrder: TComboBox
                  Left = 24
                  Top = 136
                  Width = 73
                  Height = 21
                  Style = csDropDownList
                  ItemIndex = 0
                  TabOrder = 5
                  Text = 'Buy'
                  Items.Strings = (
                    'Buy'
                    'Sell')
                end
                object txtBybitInversePerpetualMarketQuantity: TEdit
                  Left = 103
                  Top = 136
                  Width = 129
                  Height = 21
                  TabOrder = 6
                  Text = '1'
                end
                object btnBybitInversePerpetualMarketOrder: TButton
                  Left = 238
                  Top = 134
                  Width = 111
                  Height = 25
                  Caption = 'Market Order'
                  TabOrder = 7
                  OnClick = btnBybitInversePerpetualMarketOrderClick
                end
                object cboBybitInversePerpetualLimitOrder: TComboBox
                  Left = 24
                  Top = 200
                  Width = 73
                  Height = 21
                  Style = csDropDownList
                  ItemIndex = 0
                  TabOrder = 8
                  Text = 'Buy'
                  Items.Strings = (
                    'Buy'
                    'Sell')
                end
                object txtBybitInversePerpetualLimitQuantity: TEdit
                  Left = 103
                  Top = 200
                  Width = 121
                  Height = 21
                  TabOrder = 9
                  Text = '1'
                end
                object txtBybitInversePerpetualLimitPrice: TEdit
                  Left = 238
                  Top = 200
                  Width = 131
                  Height = 21
                  TabOrder = 10
                  Text = '100.00'
                end
                object btnBybitInversePerpetualLimitOrder: TButton
                  Left = 375
                  Top = 198
                  Width = 111
                  Height = 25
                  Caption = 'Limit Order'
                  TabOrder = 11
                  OnClick = btnBybitInversePerpetualLimitOrderClick
                end
                object btnBybitInversePerpetualCancelAllOrders: TButton
                  Left = 574
                  Top = 198
                  Width = 111
                  Height = 25
                  Caption = 'Cancel All Orders'
                  TabOrder = 12
                  OnClick = btnBybitInversePerpetualCancelAllOrdersClick
                end
                object btnBybitInversePerpetualGetPosition: TButton
                  Left = 156
                  Top = 81
                  Width = 134
                  Height = 25
                  Caption = 'Position'
                  TabOrder = 13
                  OnClick = btnBybitInversePerpetualGetPositionClick
                end
              end
            end
          end
        end
      end
    end
  end
  object pnlMemo: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 559
    Width = 1186
    Height = 240
    Align = alClient
    TabOrder = 2
    object memoLog: TMemo
      Left = 1
      Top = 1
      Width = 1184
      Height = 238
      Align = alClient
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object WSClient: TsgcWebSocketClient
    Host = 'echo.websocket.org'
    Port = 80
    ConnectTimeout = 0
    ReadTimeout = -1
    WriteTimeout = 0
    TLS = False
    Proxy.Enabled = False
    Proxy.Port = 8080
    Proxy.ProxyType = pxyHTTP
    HeartBeat.Enabled = False
    HeartBeat.Interval = 300
    HeartBeat.Timeout = 0
    IPVersion = Id_IPv4
    OnConnect = WSClientConnect
    OnMessage = WSClientMessage
    OnDisconnect = WSClientDisconnect
    OnError = WSClientError
    OnException = WSClientException
    Authentication.Enabled = False
    Authentication.URL.Enabled = True
    Authentication.Session.Enabled = True
    Authentication.Basic.Enabled = False
    Authentication.Token.Enabled = False
    Authentication.Token.AuthName = 'Bearer'
    Extensions.DeflateFrame.Enabled = False
    Extensions.DeflateFrame.WindowBits = 15
    Extensions.PerMessage_Deflate.Enabled = False
    Extensions.PerMessage_Deflate.ClientMaxWindowBits = 15
    Extensions.PerMessage_Deflate.ClientNoContextTakeOver = False
    Extensions.PerMessage_Deflate.MemLevel = 1
    Extensions.PerMessage_Deflate.ServerMaxWindowBits = 15
    Extensions.PerMessage_Deflate.ServerNoContextTakeOver = False
    Options.CleanDisconnect = False
    Options.FragmentedMessages = frgOnlyBuffer
    Options.Parameters = '/'
    Options.RaiseDisconnectExceptions = True
    Options.ValidateUTF8 = False
    Specifications.Drafts.Hixie76 = False
    Specifications.RFC6455 = True
    NotifyEvents = neAsynchronous
    LogFile.Enabled = False
    QueueOptions.Binary.Level = qmNone
    QueueOptions.Ping.Level = qmNone
    QueueOptions.Text.Level = qmNone
    WatchDog.Attempts = 0
    WatchDog.Enabled = False
    WatchDog.Interval = 10
    Throttle.BitsPerSec = 0
    Throttle.Enabled = False
    LoadBalancer.Enabled = False
    LoadBalancer.Port = 0
    TLSOptions.VerifyCertificate = False
    TLSOptions.VerifyDepth = 0
    TLSOptions.Version = tlsUndefined
    TLSOptions.IOHandler = iohOpenSSL
    TLSOptions.OpenSSL_Options.APIVersion = oslAPI_1_0
    TLSOptions.OpenSSL_Options.LibPath = oslpNone
    TLSOptions.OpenSSL_Options.UnixSymLinks = oslsSymLinksDefault
    TLSOptions.SChannel_Options.CertStoreName = scsnMY
    TLSOptions.SChannel_Options.CertStorePath = scspStoreCurrentUser
    Left = 48
    Top = 40
  end
  object BITTREX: TsgcWSAPI_Bittrex
    OnBittrexConnect = BITTREXBittrexConnect
    OnBittrexSubscribed = BITTREXBittrexSubscribed
    OnBittrexUnSubscribed = BITTREXBittrexUnSubscribed
    OnBittrexMessage = BITTREXBittrexMessage
    OnBittrexAuthenticated = BITTREXBittrexAuthenticated
    OnBittrexHeartBeat = BITTREXBittrexHeartBeat
    OnBittrexError = BITTREXBittrexError
    OnBittrexDisconnect = BITTREXBittrexDisconnect
    SignalR.Hubs.Strings = (
      'c3')
    SignalR.ProtocolVersion = srpt1_2
    SignalR.UserAgent = 'Mozilla/5.0'
    Left = 80
    Top = 136
  end
  object BINANCE: TsgcWSAPI_Binance
    OnBinanceHTTPException = BINANCEBinanceHTTPException
    Binance.BinanceUS = False
    Binance.ListenKeyOnDisconnect = blkodDeleteListenKey
    Binance.HTTPLogOptions.Enabled = False
    Binance.HTTPLogOptions.REST.Enabled = False
    Binance.TestNet = False
    Binance.UseCombinedStreams = False
    Binance.UserStream = True
    Left = 32
    Top = 96
  end
  object BITSTAMP: TsgcWSAPI_Bitstamp
    OnConnect = BITSTAMPConnect
    OnDisconnect = BITSTAMPDisconnect
    OnMessage = BITSTAMPMessage
    Left = 136
    Top = 136
  end
  object HUOBI: TsgcWSAPI_Huobi
    OnConnect = HUOBIConnect
    OnDisconnect = HUOBIDisconnect
    OnHuobiSubscribed = HUOBIHuobiSubscribed
    OnHuobiUnSubscribed = HUOBIHuobiUnSubscribed
    OnHuobiUpdate = HUOBIHuobiUpdate
    OnHuobiError = HUOBIHuobiError
    Left = 184
    Top = 136
  end
  object CEX: TsgcWSAPI_Cex
    OnCexConnect = CEXCexConnect
    OnCexMessage = CEXCexMessage
    OnCexAuthenticated = CEXCexAuthenticated
    OnCexError = CEXCexError
    OnCexDisconnecting = CEXCexDisconnecting
    OnCexDisconnect = CEXCexDisconnect
    OnDisconnect = CEXDisconnect
    Left = 232
    Top = 136
  end
  object BITMEX: TsgcWSAPI_Bitmex
    OnConnect = BITMEXConnect
    OnBitmexConnect = BITMEXBitmexConnect
    OnBitmexSubscribed = BITMEXBitmexSubscribed
    OnBitmexUnsubscribed = BITMEXBitmexUnsubscribed
    OnBitmexMessage = BITMEXBitmexMessage
    OnBitmexAuthenticated = BITMEXBitmexAuthenticated
    OnBitmexError = BITMEXBitmexError
    OnDisconnect = BITMEXDisconnect
    Bitmex.HTTPLogOptions.Enabled = False
    Bitmex.TestNet = False
    Left = 280
    Top = 136
  end
  object FXCM: TsgcWSAPI_FXCM
    SocketIO.HandShakeTimestamp = True
    SocketIO.API = ioAPI3
    SocketIO.Base64 = False
    SocketIO.EncodeParameters = False
    SocketIO.Polling = True
    SocketIO.UserAgent = 'Mozilla 5.0 (sgcWebSockets)'
    FXCM.Demo = False
    Left = 320
    Top = 136
  end
  object KRAKEN: TsgcWSAPI_Kraken
    OnConnect = KRAKENConnect
    OnKrakenConnect = KRAKENKrakenConnect
    OnKrakenSystemStatus = KRAKENKrakenSystemStatus
    OnKrakenSubscribed = KRAKENKrakenSubscribed
    OnKrakenUnSubscribed = KRAKENKrakenUnSubscribed
    OnKrakenSubscriptionError = KRAKENKrakenSubscriptionError
    OnKrakenData = KRAKENKrakenData
    OnDisconnect = KRAKENDisconnect
    OnKrakenHTTPException = KRAKENKrakenHTTPException
    Kraken.HTTPLogOptions.Enabled = False
    Kraken.Beta = False
    Left = 368
    Top = 136
  end
  object BINANCEFUT: TsgcWSAPI_Binance_Futures
    OnBinanceHTTPException = BINANCEFUTBinanceHTTPException
    Binance.BinanceUS = False
    Binance.ListenKeyOnDisconnect = blkodDeleteListenKey
    Binance.HTTPLogOptions.Enabled = False
    Binance.HTTPLogOptions.REST.Enabled = False
    Binance.TestNet = False
    Binance.UseCombinedStreams = False
    Binance.UserStream = True
    FuturesContracts = bfcUSDT
    Left = 32
    Top = 128
  end
  object COINBASE: TsgcWSAPI_Coinbase
    OnConnect = COINBASEconnect
    OnCoinbaseSubscriptions = COINBASECoinbaseSubscriptions
    OnCoinbaseMessage = COINBASECoinbaseMessage
    OnCoinbaseError = COINBASECoinbaseError
    OnCoinbaseHTTPException = COINBASECoinbaseHTTPException
    OnDisconnect = COINBASEDisconnect
    Coinbase.HTTPLogOptions.Enabled = False
    Coinbase.SandBox = True
    Left = 424
    Top = 136
  end
  object KRAKEN_FUTURES: TsgcWSAPI_Kraken_Futures
    OnConnect = KRAKEN_FUTURESConnect
    OnKrakenFuturesConnect = KRAKEN_FUTURESKrakenFuturesConnect
    OnKrakenFuturesSubscribed = KRAKEN_FUTURESKrakenFuturesSubscribed
    OnKrakenFuturesUnSubscribed = KRAKEN_FUTURESKrakenFuturesUnSubscribed
    OnKrakenFuturesError = KRAKEN_FUTURESKrakenFuturesError
    OnKrakenData = KRAKEN_FUTURESKrakenData
    OnDisconnect = KRAKEN_FUTURESDisconnect
    OnKrakenHTTPException = KRAKEN_FUTURESKrakenHTTPException
    Kraken.HTTPLogOptions.Enabled = False
    Kraken.Demo = False
    Left = 368
    Top = 104
  end
  object FTX: TsgcWSAPI_FTX
    OnConnect = FTXConnect
    OnFTXSubscribed = FTXFTXSubscribed
    OnFTXUnsubscribed = FTXFTXUnsubscribed
    OnFTXMessage = FTXFTXMessage
    OnFTXError = FTXFTXError
    OnFTXHTTPException = FTXFTXHTTPException
    OnDisconnect = FTXDisconnect
    FTX.FtxUS = False
    FTX.HTTPLogOptions.Enabled = False
    Left = 480
    Top = 136
  end
  object THREE_COMMAS: TsgcWSAPI_ThreeCommas
    OnConnect = THREE_COMMASConnect
    OnThreeCommasConnect = THREE_COMMASThreeCommasConnect
    OnThreeCommasConfirmSubscription = THREE_COMMASThreeCommasConfirmSubscription
    OnThreeCommasRejectSubscription = THREE_COMMASThreeCommasRejectSubscription
    OnThreeCommasMessage = THREE_COMMASThreeCommasMessage
    OnThreeCommasPing = THREE_COMMASThreeCommasPing
    OnThreeCommasHTTPException = THREE_COMMASThreeCommasHTTPException
    OnDisconnect = THREE_COMMASDisconnect
    ThreeCommas.HTTPLogOptions.Enabled = False
    Left = 528
    Top = 144
  end
  object KUCOIN: TsgcWSAPI_Kucoin
    Kucoin.ApiVersion = '2'
    Kucoin.HTTPLogOptions.Enabled = False
    Kucoin.HTTPLogOptions.REST.Enabled = False
    Kucoin.SandBox = False
    Left = 568
    Top = 144
  end
  object KUCOINFUT: TsgcWSAPI_Kucoin_Futures
    Kucoin.ApiVersion = '2'
    Kucoin.HTTPLogOptions.Enabled = False
    Kucoin.HTTPLogOptions.REST.Enabled = False
    Kucoin.SandBox = False
    Left = 568
    Top = 104
  end
  object OKX: TsgcWSAPI_OKX
    OnConnect = OKXConnect
    OnOKXConnect = OKXOKXConnect
    OnOKXSubscribed = OKXOKXSubscribed
    OnOKXUnsubscribed = OKXOKXUnsubscribed
    OnOKXMessage = OKXOKXMessage
    OnOKXError = OKXOKXError
    OnDisconnect = OKXDisconnect
    OKX.IsDemo = False
    OKX.IsPrivate = False
    Left = 616
    Top = 144
  end
  object XTB: TsgcWSAPI_XTB
    OnConnect = XTBConnect
    OnXTBConnect = XTBXTBConnect
    OnXTBMessage = XTBXTBMessage
    OnXTBError = XTBXTBError
    OnDisconnect = XTBDisconnect
    XTB.Demo = False
    Left = 664
    Top = 144
  end
  object Bybit: TsgcWSAPI_Bybit
    OnConnect = BybitConnect
    OnBybitAuthentication = BybitBybitAuthentication
    OnBybitSubscribe = BybitBybitSubscribe
    OnBybitUnSubscribe = BybitBybitUnSubscribe
    OnBybitData = BybitBybitData
    OnBybitError = BybitBybitError
    OnDisconnect = BybitDisconnect
    Bybit.HTTPLogOptions.Enabled = True
    Bybit.HTTPLogOptions.FileName = 'http.txt'
    Bybit.SignatureExpires = 10
    Bybit.TestNet = False
    BybitClient = bybSpot
    Left = 712
    Top = 144
  end
end
