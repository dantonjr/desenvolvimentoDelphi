object frPrincipal: TfrPrincipal
  Left = 119
  Top = 107
  BorderStyle = bsDialog
  Caption = 'Demonstração do Algoritmo de Compactação "8 em 7"'
  ClientHeight = 407
  ClientWidth = 636
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbFrase: TLabel
    Left = 8
    Top = 16
    Width = 26
    Height = 13
    Caption = 'Frase'
  end
  object edFrase: TEdit
    Left = 42
    Top = 12
    Width = 497
    Height = 21
    TabOrder = 0
    Text = 'Junior'
    OnKeyPress = edFraseKeyPress
    OnKeyUp = edFraseKeyUp
  end
  object lxBinario: TListBox
    Left = 8
    Top = 56
    Width = 249
    Height = 289
    ItemHeight = 13
    TabOrder = 1
  end
  object btConverte: TButton
    Left = 550
    Top = 10
    Width = 75
    Height = 25
    Caption = '&Binário'
    TabOrder = 2
    OnClick = btConverteClick
  end
  object lxCompactado: TListBox
    Left = 376
    Top = 56
    Width = 249
    Height = 289
    ItemHeight = 13
    TabOrder = 3
  end
  object btCompacta: TButton
    Left = 272
    Top = 200
    Width = 89
    Height = 25
    Caption = '&Compacta >>'
    TabOrder = 4
    OnClick = btCompactaClick
  end
  object btSair: TBitBtn
    Left = 550
    Top = 356
    Width = 75
    Height = 25
    Caption = 'Sai&r'
    TabOrder = 5
    Kind = bkClose
  end
  object sbStatus: TStatusBar
    Left = 0
    Top = 388
    Width = 636
    Height = 19
    Panels = <
      item
        Width = 400
      end
      item
        Text = '6'
        Width = 80
      end
      item
        Text = '0'
        Width = 80
      end
      item
        Text = '0'
        Width = 80
      end>
    SimplePanel = False
  end
end
