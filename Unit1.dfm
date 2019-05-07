object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 201
  ClientWidth = 493
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lb_nome: TLabel
    Left = 88
    Top = 8
    Width = 33
    Height = 13
    Caption = 'NOME:'
  end
  object lb_tipo: TLabel
    Left = 93
    Top = 38
    Width = 28
    Height = 13
    Caption = 'TIPO:'
  end
  object lb_valor: TLabel
    Left = 88
    Top = 65
    Width = 37
    Height = 13
    Caption = 'VALOR:'
  end
  object lb_arquivo: TLabel
    Left = 20
    Top = 92
    Width = 101
    Height = 13
    Caption = 'NOME DO ARQUIVO:'
  end
  object lblista: TListBox
    Left = 280
    Top = 8
    Width = 146
    Height = 177
    ItemHeight = 13
    TabOrder = 0
  end
  object btinserir: TButton
    Left = 20
    Top = 129
    Width = 75
    Height = 25
    Caption = 'inserir'
    TabOrder = 1
    OnClick = btinserirClick
  end
  object btdeletar: TButton
    Left = 101
    Top = 129
    Width = 75
    Height = 25
    Caption = 'deletar'
    TabOrder = 2
    OnClick = btdeletarClick
  end
  object btatualizar: TButton
    Left = 65
    Top = 160
    Width = 75
    Height = 25
    Caption = 'atualizar'
    TabOrder = 3
    OnClick = btatualizarClick
  end
  object ednome: TEdit
    Left = 137
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object edtipo: TEdit
    Left = 137
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object edvalor: TEdit
    Left = 137
    Top = 62
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object edsalvar: TEdit
    Left = 137
    Top = 89
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object btsalvar: TButton
    Left = 146
    Top = 160
    Width = 75
    Height = 25
    Caption = 'salvar'
    TabOrder = 8
    OnClick = btsalvarClick
  end
end
