object frmPrincipal: TfrmPrincipal
  Left = 192
  Top = 114
  BorderStyle = bsDialog
  Caption = 'Exemplo do TList'
  ClientHeight = 464
  ClientWidth = 434
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object lblTamanhoLista: TLabel
    Left = 290
    Top = 264
    Width = 127
    Height = 19
    Alignment = taRightJustify
    Caption = 'lblTamanhoLista'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblMemLivre: TLabel
    Left = 8
    Top = 280
    Width = 66
    Height = 13
    Caption = 'Mem'#243'ria Livre'
  end
  object btnGeraLista: TButton
    Left = 16
    Top = 64
    Width = 121
    Height = 25
    Caption = 'Gera Lista'
    TabOrder = 0
    OnClick = btnGeraListaClick
  end
  object ledTotal: TLabeledEdit
    Left = 16
    Top = 32
    Width = 121
    Height = 21
    EditLabel.Width = 90
    EditLabel.Height = 13
    EditLabel.Caption = 'Total de elementos'
    TabOrder = 1
    Text = '100'
  end
  object btnMostra1: TButton
    Left = 160
    Top = 64
    Width = 121
    Height = 25
    Caption = 'Mostra 1 Elemento'
    TabOrder = 2
    OnClick = btnMostra1Click
  end
  object ledElemento: TLabeledEdit
    Left = 160
    Top = 32
    Width = 121
    Height = 21
    EditLabel.Width = 73
    EditLabel.Height = 13
    EditLabel.Caption = 'N'#186' do elemento'
    TabOrder = 3
    Text = '0'
  end
  object lbxTodos: TListBox
    Left = 296
    Top = 16
    Width = 121
    Height = 241
    ItemHeight = 13
    TabOrder = 4
  end
  object btnMostraTudo: TButton
    Left = 160
    Top = 96
    Width = 121
    Height = 25
    Caption = 'Mostra Tudo'
    TabOrder = 5
    OnClick = btnMostraTudoClick
  end
  object btnApaga1: TButton
    Left = 160
    Top = 128
    Width = 121
    Height = 25
    Caption = 'Apaga 1 Elemento'
    TabOrder = 6
    OnClick = btnApaga1Click
  end
  object btnApagaTudo: TButton
    Left = 160
    Top = 160
    Width = 121
    Height = 25
    Caption = 'Apaga Tudo'
    TabOrder = 7
    OnClick = btnApagaTudoClick
  end
  object pgbMemLivre: TProgressBar
    Left = 8
    Top = 296
    Width = 417
    Height = 17
    TabOrder = 8
  end
  object XMPWindows: TXPManifest
    Left = 352
    Top = 64
  end
end
