object frIDValor: TfrIDValor
  Left = 477
  Top = 280
  BorderStyle = bsDialog
  Caption = 'Identificador de Resistores 3.1 - Por Valor'
  ClientHeight = 366
  ClientWidth = 348
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbValorCalculado: TLabel
    Left = 8
    Top = 76
    Width = 46
    Height = 44
    Caption = '0W'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -36
    Font.Name = 'Symbol'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object shRPE: TShape
    Left = 89
    Top = 237
    Width = 41
    Height = 65
    Brush.Color = clTeal
    Shape = stRoundRect
  end
  object shRPD: TShape
    Left = 217
    Top = 237
    Width = 41
    Height = 65
    Brush.Color = clTeal
    Shape = stRoundRect
  end
  object shRPC: TShape
    Left = 129
    Top = 249
    Width = 89
    Height = 41
    Brush.Color = clTeal
  end
  object shRCor1: TShape
    Left = 135
    Top = 250
    Width = 12
    Height = 40
    Brush.Color = clBlack
    Pen.Style = psClear
  end
  object shRCor2: TShape
    Left = 153
    Top = 250
    Width = 12
    Height = 40
    Brush.Color = clBlack
    Pen.Style = psClear
  end
  object shRCor3: TShape
    Left = 171
    Top = 250
    Width = 12
    Height = 40
    Brush.Color = clBlack
    Pen.Style = psClear
  end
  object shRCor4: TShape
    Left = 201
    Top = 250
    Width = 12
    Height = 40
    Brush.Color = 6650255
    Pen.Style = psClear
  end
  object shCRHD: TShape
    Left = 257
    Top = 267
    Width = 24
    Height = 4
    Brush.Color = clBlack
  end
  object shCRHE: TShape
    Left = 66
    Top = 267
    Width = 24
    Height = 4
    Brush.Color = clBlack
  end
  object shCRVD: TShape
    Left = 277
    Top = 268
    Width = 4
    Height = 57
    Brush.Color = clBlack
  end
  object shCRVE: TShape
    Left = 66
    Top = 268
    Width = 4
    Height = 57
    Brush.Color = clBlack
  end
  object lbValoresTolerados: TLabel
    Left = 8
    Top = 125
    Width = 66
    Height = 20
    Caption = '0W ~ 0W'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Symbol'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object shBRE: TShape
    Left = 123
    Top = 250
    Width = 9
    Height = 40
    Brush.Color = clTeal
    Pen.Style = psClear
  end
  object shBRD: TShape
    Left = 216
    Top = 250
    Width = 9
    Height = 40
    Brush.Color = clTeal
    Pen.Style = psClear
  end
  object lbValor: TLabel
    Left = 8
    Top = 8
    Width = 37
    Height = 18
    Caption = 'Valor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbTolerancia: TLabel
    Left = 260
    Top = 8
    Width = 73
    Height = 18
    Caption = 'Toler'#226'ncia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object shCor1: TShape
    Left = 8
    Top = 172
    Width = 73
    Height = 40
    Brush.Color = clBlack
    Pen.Width = 0
  end
  object shCor2: TShape
    Left = 94
    Top = 172
    Width = 73
    Height = 40
    Brush.Color = clBlack
    Pen.Width = 0
  end
  object shCor3: TShape
    Left = 181
    Top = 172
    Width = 73
    Height = 40
    Brush.Color = clBlack
    Pen.Width = 0
  end
  object shCor4: TShape
    Left = 268
    Top = 172
    Width = 73
    Height = 40
    Brush.Color = 6650255
    Pen.Width = 0
  end
  object lbCor1: TLabel
    Left = 8
    Top = 150
    Width = 31
    Height = 16
    Caption = 'Preto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbCor2: TLabel
    Left = 94
    Top = 150
    Width = 31
    Height = 16
    Caption = 'Preto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbCor3: TLabel
    Left = 181
    Top = 150
    Width = 31
    Height = 16
    Caption = 'Preto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbCor4: TLabel
    Left = 268
    Top = 150
    Width = 44
    Height = 16
    Caption = 'Marrom'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object bnFechar: TBitBtn
    Left = 266
    Top = 336
    Width = 75
    Height = 25
    Hint = 'Fecha esta janela'
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ModalResult = 1
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = bnFecharClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F3333333F7F333301111111B10333337F333333737F33330111111111
      0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
      0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
      0333337F377777337F333301111111110333337F333333337F33330111111111
      0333337FFFFFFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
  end
  object cbBanda1: TComboBox
    Left = 8
    Top = 29
    Width = 49
    Height = 40
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemHeight = 32
    ParentFont = False
    TabOrder = 1
    OnChange = cbBanda1Change
    Items.Strings = (
      ''
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9')
  end
  object cbBanda3: TComboBox
    Left = 108
    Top = 29
    Width = 151
    Height = 40
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemHeight = 32
    ParentFont = False
    TabOrder = 2
    OnChange = cbBanda1Change
    Items.Strings = (
      ''
      '0'
      '00'
      '.000'
      '0.000'
      '00.000'
      '000.000'
      '0.000.000'
      '/10'
      '/100')
  end
  object cbBanda2: TComboBox
    Left = 58
    Top = 29
    Width = 49
    Height = 40
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemHeight = 32
    ItemIndex = 0
    ParentFont = False
    TabOrder = 3
    Text = '0'
    OnChange = cbBanda1Change
    Items.Strings = (
      '0'
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9')
  end
  object cbBanda4: TComboBox
    Left = 260
    Top = 29
    Width = 81
    Height = 40
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemHeight = 32
    ItemIndex = 4
    ParentFont = False
    TabOrder = 4
    Text = '5%'
    OnChange = cbBanda1Change
    Items.Strings = (
      '1%'
      '2%'
      '3%'
      '4%'
      '5%'
      '10%')
  end
end
