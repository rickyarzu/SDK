object dmAcessos: TdmAcessos
  Height = 148
  Width = 215
  object MenAcesso: TUniMenuItems
    Images = dmImagens.imglFA
    Left = 80
    Top = 48
    object ActDashboard: TUniMenuItem
      Caption = 'Dashboard'
      Visible = False
    end
    object ActFinanceiro1: TUniMenuItem
      Caption = 'Financeiro'
      ImageIndex = 0
      object actFinCapPainelPagamento: TUniMenuItem
        Caption = 'Contas a Pagar'
        Hint = 'Contas a Pagar'
        ImageIndex = 24
      end
      object actFinCrePainelRecebimento: TUniMenuItem
        Caption = 'Contas a Receber'
        Hint = 'Contas a Receber'
        ImageIndex = 23
      end
      object actFinTrbPainelTransferenciaSaldo: TUniMenuItem
        Caption = 'Transfer'#234'ncia de Saldo'
        Hint = 'Transfer'#234'ncia de Saldo'
        ImageIndex = 21
      end
      object actFinTrbExtratoContas: TUniMenuItem
        Caption = 'Extrato e Concilia'#231#227'o'
        Hint = 'Extrato e Concilia'#231#227'o'
        ImageIndex = 9
      end
      object actFinFcxFluxoCaixa: TUniMenuItem
        Caption = 'Fluxo de Caixa'
        Hint = 'Fluxo de Caixa'
        ImageIndex = 3
      end
      object actAdmPainelRecibo: TUniMenuItem
        Caption = 'Recibos'
        Hint = 'Recibos'
        ImageIndex = 7
      end
    end
    object ActCadastros1: TUniMenuItem
      Caption = 'Cadastros'
      ImageIndex = 12
      object actFinTrbPainelContas: TUniMenuItem
        Caption = 'Contas'
        ImageIndex = 31
      end
      object actFinCapPainelCategoriaDespesa: TUniMenuItem
        Caption = 'Categoria de Despesa'
        ImageIndex = 16
      end
      object actFinCrePainelCategoriaReceita: TUniMenuItem
        Caption = 'Categoria de Receita'
        ImageIndex = 16
      end
      object actFinCrcPainelFornecedorCliente: TUniMenuItem
        Caption = 'Fornecedores e Clientes'
        ImageIndex = 25
      end
    end
    object ActRelatrios1: TUniMenuItem
      Caption = 'Relat'#243'rios'
      ImageIndex = 14
      object ActRelContasPagar: TUniMenuItem
        Caption = 'Pago e a Pagar'
        ImageIndex = 14
      end
      object ActRelContasReceber: TUniMenuItem
        Caption = 'Recebido e a Receber'
        ImageIndex = 4
      end
      object ActRelIRPF: TUniMenuItem
        Caption = 'Imposto de Renda'
        ImageIndex = 4
      end
      object ActRelExtratoConciliacao: TUniMenuItem
        Caption = 'Extratos e Concilia'#231#245'es'
        ImageIndex = 4
      end
    end
    object ActAdministrao1: TUniMenuItem
      Caption = 'Administra'#231#227'o'
      ImageIndex = 26
      object ActAdmPainelEmpresa: TUniMenuItem
        Caption = 'Empresas'
        ImageIndex = 30
      end
      object ActAdmPainelUsuario: TUniMenuItem
        Caption = 'Usu'#225'rios'
        ImageIndex = 2
      end
      object actCfgUsuario: TUniMenuItem
        Caption = 'Configura'#231#227'o do Usu'#225'rio'
        ImageIndex = 19
      end
      object actCfgSistema: TUniMenuItem
        Caption = 'Configura'#231#227'o do Sistema'
        ImageIndex = 19
      end
    end
    object actGrfTelaPrincipal: TUniMenuItem
      Tag = 10
      Caption = 'Resumo Financeiro'
      Visible = False
    end
    object ActSistema1: TUniMenuItem
      Caption = 'Sistema'
      ImageIndex = 6
      object actSisPainelFeedBack: TUniMenuItem
        Caption = 'Sugest'#245'es'
        ImageIndex = 27
      end
      object actSisAtualizacoes: TUniMenuItem
        Caption = 'Atualiza'#231#245'es'
        ImageIndex = 29
      end
      object actSisPainelSistema: TUniMenuItem
        Caption = 'Painel do Sistema'
        ImageIndex = 28
      end
      object actFecharTodasAbas: TUniMenuItem
        Caption = 'Fechar Todas as Abas'
        ImageIndex = 10
      end
    end
  end
end
