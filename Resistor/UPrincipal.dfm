object frPrincipal: TfrPrincipal
  Left = 532
  Top = 422
  BorderStyle = bsDialog
  Caption = 'Identificador de Resistores 3.1'
  ClientHeight = 254
  ClientWidth = 348
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object shRPE: TShape
    Left = 89
    Top = 5
    Width = 41
    Height = 65
    Brush.Color = clTeal
    Shape = stRoundRect
  end
  object shRPD: TShape
    Left = 217
    Top = 5
    Width = 41
    Height = 65
    Brush.Color = clTeal
    Shape = stRoundRect
  end
  object shRPC: TShape
    Left = 129
    Top = 17
    Width = 89
    Height = 41
    Brush.Color = clTeal
  end
  object shRCor1: TShape
    Left = 135
    Top = 18
    Width = 12
    Height = 40
    Brush.Color = clYellow
    Pen.Color = clYellow
    Pen.Style = psClear
  end
  object shRCor2: TShape
    Left = 153
    Top = 18
    Width = 12
    Height = 40
    Brush.Color = 1973992
    Pen.Color = 1973992
    Pen.Style = psClear
  end
  object shRCor3: TShape
    Left = 171
    Top = 18
    Width = 12
    Height = 40
    Brush.Color = clBlue
    Pen.Color = clBlue
    Pen.Style = psClear
  end
  object shRCor4: TShape
    Left = 201
    Top = 18
    Width = 12
    Height = 40
    Brush.Color = 2276562
    Pen.Color = 2276562
    Pen.Style = psClear
  end
  object shCRHD: TShape
    Left = 257
    Top = 35
    Width = 24
    Height = 4
    Brush.Color = clBlack
  end
  object shCRHE: TShape
    Left = 66
    Top = 35
    Width = 24
    Height = 4
    Brush.Color = clBlack
  end
  object shCRVD: TShape
    Left = 277
    Top = 36
    Width = 4
    Height = 57
    Brush.Color = clBlack
  end
  object shCRVE: TShape
    Left = 66
    Top = 36
    Width = 4
    Height = 57
    Brush.Color = clBlack
  end
  object shBRE: TShape
    Left = 123
    Top = 18
    Width = 9
    Height = 40
    Brush.Color = clTeal
    Pen.Style = psClear
  end
  object shBRD: TShape
    Left = 216
    Top = 18
    Width = 9
    Height = 40
    Brush.Color = clTeal
    Pen.Style = psClear
  end
  object pnMensagem: TPanel
    Left = 0
    Top = 137
    Width = 348
    Height = 117
    Align = alBottom
    BevelInner = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lbNome: TLabel
      Left = 70
      Top = 8
      Width = 208
      Height = 16
      Caption = 'Danton Cavalcanti Franco Junior'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbSite: TLabel
      Left = 102
      Top = 25
      Width = 145
      Height = 15
      Cursor = crHandPoint
      Caption = 'http://www.dantonjr.com.br'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = lbSiteClick
      OnMouseMove = lbSiteMouseMove
      OnMouseLeave = lbSiteMouseLeave
    end
    object lbEmail: TLabel
      Left = 103
      Top = 42
      Width = 142
      Height = 15
      Cursor = crHandPoint
      Caption = 'falecom@dantonjr.com.br'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = lbEmailClick
      OnMouseMove = lbEmailMouseMove
      OnMouseLeave = lbEmailMouseLeave
    end
    object lbTelefone: TLabel
      Left = 118
      Top = 94
      Width = 112
      Height = 15
      Caption = '+ 55 (47) 8406-8437'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lblLattes: TLabel
      Left = 69
      Top = 59
      Width = 210
      Height = 15
      Caption = 'Curr'#237'culo na plataforma Lattes (CNPq)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = lblLattesClick
      OnMouseMove = lblLattesMouseMove
      OnMouseLeave = lblLattesMouseLeave
    end
    object lblLinkedin: TLabel
      Left = 124
      Top = 76
      Width = 100
      Height = 15
      Caption = 'Curr'#237'culo Linkedin'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = lblLinkedinClick
      OnMouseMove = lblLinkedinMouseMove
      OnMouseLeave = lblLinkedinMouseLeave
    end
  end
  object bnFechar: TBitBtn
    Left = 239
    Top = 104
    Width = 75
    Height = 25
    Hint = 'Encerra a Aplica'#231#227'o'
    Caption = 'Sai&r'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    Kind = bkClose
  end
  object bnValor: TBitBtn
    Left = 83
    Top = 104
    Width = 75
    Height = 25
    Hint = 'Identifica os Resistores pelo Valor'
    Caption = '&Valor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = bnValorClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
      FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
      FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
      FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
      FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
      FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
      C8807FF7777777777FF700000000000000007777777777777777333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object bnCor: TBitBtn
    Left = 5
    Top = 104
    Width = 75
    Height = 25
    Hint = 'Identifica os Resistores pela Cor'
    Caption = '&Cor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = bnCorClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      55555FF555FFFFFFF5FF0075500000005000775F57777777F7770B0550CC0090
      50E07F7F57FF77F7F7F70B055000000050E07F75F7777777F7F70B7750CC0090
      50E075F7F7F577F7F7F777B050CC009050E057F7F7F577F7F7F750B050CC0090
      50E057F757F577F7F7F750B770CC009050E0575F77F577F7F7F7577B00CC0090
      50E0557F77F577F7F7F7550B30CC00905000557F57FF77F7F777550B30000090
      50E05575F77777F7F7F7557000CC00905000555777FF77F7F777555550000090
      55555555577777F7F5555555555550005555555555555777F555555555555090
      55555555555557F7F55555555555500055555555555557775555}
    NumGlyphs = 2
  end
  object bbnSobre: TBitBtn
    Left = 317
    Top = 104
    Width = 27
    Height = 25
    Hint = 'Sobre...'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = bbnSobreClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333F797F3333333333F737373FF333333BFB999BFB
      33333337737773773F3333BFBF797FBFB33333733337333373F33BFBFBFBFBFB
      FB3337F33333F33337F33FBFBFB9BFBFBF3337333337F333373FFBFBFBF97BFB
      FBF37F333337FF33337FBFBFBFB99FBFBFB37F3333377FF3337FFBFBFBFB99FB
      FBF37F33333377FF337FBFBF77BF799FBFB37F333FF3377F337FFBFB99FB799B
      FBF373F377F3377F33733FBF997F799FBF3337F377FFF77337F33BFBF99999FB
      FB33373F37777733373333BFBF999FBFB3333373FF77733F7333333BFBFBFBFB
      3333333773FFFF77333333333FBFBF3333333333377777333333}
    NumGlyphs = 2
  end
  object bnTabela: TBitBtn
    Left = 161
    Top = 104
    Width = 75
    Height = 25
    Hint = 'Mostra a Tabela de Cores'
    Caption = 'Tabela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = bnTabelaClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333000003333333333F777773FF333333003333300
      33333337733333773F33330333333333033333733FFFFFFF73F3303300000003
      303337F37777777337F3303330CCC0333033373337777733373F0333330C0333
      33037F33337773FFF37F03333330300033037F3FFFF73777FF7F0300000307B7
      03037F77777F77777F7F030999030BBB03037F77777F77777F7F0309990307B7
      03037377777F7777737330099903300030333777777F377737F3300000033333
      3033377777733333373333033333333303333373FF33333F7333333003333300
      3333333773FFFF77333333333000003333333333377777333333}
    NumGlyphs = 2
  end
end
