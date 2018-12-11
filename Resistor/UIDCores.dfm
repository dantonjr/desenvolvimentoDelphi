object frIDCores: TfrIDCores
  Left = 527
  Top = 242
  BorderStyle = bsDialog
  Caption = 'Identificador de Resistores 3.1 - Por Cor'
  ClientHeight = 299
  ClientWidth = 475
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
  object shCor1: TShape
    Left = 6
    Top = 31
    Width = 90
    Height = 40
    Brush.Color = clBlack
    Pen.Width = 0
  end
  object lbCor1: TLabel
    Left = 6
    Top = 73
    Width = 48
    Height = 23
    Caption = 'Preto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object shCor2: TShape
    Left = 126
    Top = 31
    Width = 90
    Height = 40
    Brush.Color = clBlack
    Pen.Width = 0
  end
  object lbCor2: TLabel
    Left = 126
    Top = 73
    Width = 48
    Height = 23
    Caption = 'Preto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object shCor3: TShape
    Left = 246
    Top = 31
    Width = 90
    Height = 40
    Brush.Color = clBlack
    Pen.Width = 0
  end
  object lbCor3: TLabel
    Left = 246
    Top = 73
    Width = 48
    Height = 23
    Caption = 'Preto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbVal1: TLabel
    Left = 6
    Top = 97
    Width = 15
    Height = 32
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbVal2: TLabel
    Left = 126
    Top = 97
    Width = 15
    Height = 32
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbVal3: TLabel
    Left = 246
    Top = 97
    Width = 8
    Height = 32
    Caption = ' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbBanda1: TLabel
    Left = 6
    Top = 9
    Width = 52
    Height = 16
    Caption = '1'#170' Banda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbBanda2: TLabel
    Left = 126
    Top = 9
    Width = 52
    Height = 16
    Caption = '2'#170' Banda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbMultiplicador: TLabel
    Left = 246
    Top = 9
    Width = 73
    Height = 16
    Caption = 'Multiplicador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbFinal: TLabel
    Left = 236
    Top = 164
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
  object shCor4: TShape
    Left = 366
    Top = 31
    Width = 90
    Height = 40
    Brush.Color = 6650255
    Pen.Width = 0
  end
  object lbCor4: TLabel
    Left = 366
    Top = 73
    Width = 69
    Height = 23
    Caption = 'Marrom'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbVal4: TLabel
    Left = 366
    Top = 97
    Width = 39
    Height = 32
    Caption = '1%'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbTolerancia: TLabel
    Left = 366
    Top = 9
    Width = 59
    Height = 16
    Caption = 'Toler'#226'ncia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object shRPE: TShape
    Left = 32
    Top = 153
    Width = 41
    Height = 65
    Brush.Color = clTeal
    Shape = stRoundRect
  end
  object shRPD: TShape
    Left = 160
    Top = 153
    Width = 41
    Height = 65
    Brush.Color = clTeal
    Shape = stRoundRect
  end
  object shRPC: TShape
    Left = 72
    Top = 165
    Width = 89
    Height = 41
    Brush.Color = clTeal
  end
  object shRCor1: TShape
    Left = 78
    Top = 166
    Width = 12
    Height = 40
    Brush.Color = clBlack
    Pen.Style = psClear
  end
  object shRCor2: TShape
    Left = 96
    Top = 166
    Width = 12
    Height = 40
    Brush.Color = clBlack
    Pen.Style = psClear
  end
  object shRCor3: TShape
    Left = 114
    Top = 166
    Width = 12
    Height = 40
    Brush.Color = clBlack
    Pen.Style = psClear
  end
  object shRCor4: TShape
    Left = 144
    Top = 166
    Width = 12
    Height = 40
    Brush.Color = 6650255
    Pen.Style = psClear
  end
  object shCRHD: TShape
    Left = 200
    Top = 183
    Width = 24
    Height = 4
    Brush.Color = clBlack
  end
  object shCRHE: TShape
    Left = 9
    Top = 183
    Width = 24
    Height = 4
    Brush.Color = clBlack
  end
  object shCRVD: TShape
    Left = 220
    Top = 184
    Width = 4
    Height = 57
    Brush.Color = clBlack
  end
  object shCRVE: TShape
    Left = 9
    Top = 184
    Width = 4
    Height = 57
    Brush.Color = clBlack
  end
  object lbIdeal: TLabel
    Left = 236
    Top = 149
    Width = 27
    Height = 16
    Caption = 'Ideal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbMargem: TLabel
    Left = 236
    Top = 222
    Width = 131
    Height = 16
    Caption = 'Valores Tolerados: 1%'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbValoresTolerados: TLabel
    Left = 238
    Top = 245
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
    Left = 66
    Top = 166
    Width = 9
    Height = 40
    Brush.Color = clTeal
    Pen.Style = psClear
  end
  object shBRD: TShape
    Left = 159
    Top = 166
    Width = 9
    Height = 40
    Brush.Color = clTeal
    Pen.Style = psClear
  end
  object udCor1: TUpDown
    Left = 97
    Top = 31
    Width = 13
    Height = 40
    Max = 9
    TabOrder = 0
    OnClick = udCor1Click
  end
  object udCor2: TUpDown
    Left = 217
    Top = 31
    Width = 13
    Height = 40
    Max = 9
    TabOrder = 1
    OnClick = udCor2Click
  end
  object udCor3: TUpDown
    Left = 337
    Top = 31
    Width = 13
    Height = 40
    Max = 9
    TabOrder = 2
    OnClick = udCor3Click
  end
  object udCor4: TUpDown
    Left = 457
    Top = 31
    Width = 13
    Height = 40
    Max = 5
    TabOrder = 3
    OnClick = udCor4Click
  end
  object bnFechar: TBitBtn
    Left = 395
    Top = 269
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
    TabOrder = 4
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
end
