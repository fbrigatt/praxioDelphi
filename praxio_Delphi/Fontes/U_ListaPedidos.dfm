object frm_lista_pedidos: Tfrm_lista_pedidos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Listar Pedidos e Produtos'
  ClientHeight = 508
  ClientWidth = 773
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 8
    Top = 42
    Width = 61
    Height = 19
    Caption = 'Pedidos:'
  end
  object Label2: TLabel
    Left = 8
    Top = 227
    Width = 94
    Height = 19
    Caption = 'Itens Pedido:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 67
    Width = 801
    Height = 120
    DataSource = ds_mestre
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'num_pedido'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_emissao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor_total'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 252
    Width = 801
    Height = 120
    DataSource = ds_detalhe
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_prod'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'num_pedido'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtde'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlr_unit'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlr_total'
        Width = 69
        Visible = True
      end>
  end
  object qry_mestre: TFDQuery
    Active = True
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT c.nome, pdg.num_pedido, pdg.data_emissao, pdg.valor_total'
      'FROM clientes c'
      
        'INNER JOIN pedidos_dados_gerais pdg ON c.id_cli = pdg.clientes_i' +
        'd')
    Left = 104
    Top = 8
    object qry_mestrenome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 45
    end
    object qry_mestrenum_pedido: TIntegerField
      FieldName = 'num_pedido'
      ReadOnly = True
    end
    object qry_mestrevalor_total: TFloatField
      FieldName = 'valor_total'
      ReadOnly = True
    end
  end
  object ds_mestre: TDataSource
    DataSet = qry_mestre
    Left = 184
    Top = 8
  end
  object qry_detalhe: TFDQuery
    Active = True
    IndexFieldNames = 'num_pedido'
    MasterSource = ds_mestre
    MasterFields = 'num_pedido'
    DetailFields = 'num_pedido'
    Connection = DM.conexao
    SQL.Strings = (
      
        'SELECT p.id_prod, p.descricao, pdg.num_pedido, pp.qtde, pp.vlr_u' +
        'nit, pp.vlr_total '
      'from pedidos_produtos pp'
      
        'INNER JOIN pedidos_dados_gerais pdg ON pdg.num_pedido=pp.num_ped' +
        'ido'
      'INNER JOIN produtos p ON pp.produtos_id_prod=p.id_prod'
      'where pp.num_pedido = :num_pedido')
    Left = 160
    Top = 203
    ParamData = <
      item
        Name = 'NUM_PEDIDO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object qry_detalheid_prod: TFDAutoIncField
      FieldName = 'id_prod'
      Origin = 'id_prod'
      ReadOnly = True
    end
    object qry_detalhedescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 45
    end
    object qry_detalhenum_pedido: TFDAutoIncField
      FieldName = 'num_pedido'
      Origin = 'num_pedido'
      ReadOnly = True
    end
    object qry_detalheqtde: TIntegerField
      FieldName = 'qtde'
      Origin = 'qtde'
      Required = True
    end
    object qry_detalhevlr_unit: TFloatField
      FieldName = 'vlr_unit'
      Origin = 'vlr_unit'
      Required = True
    end
    object qry_detalhevlr_total: TFloatField
      FieldName = 'vlr_total'
      Origin = 'vlr_total'
      Required = True
    end
  end
  object ds_detalhe: TDataSource
    DataSet = qry_detalhe
    Left = 232
    Top = 203
  end
end
