object frmPrincipal: TfrmPrincipal
  Left = 277
  Top = 360
  BorderStyle = bsDialog
  Caption = 'Verifica Express'#227'o'
  ClientHeight = 126
  ClientWidth = 404
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
  object lblExpressao: TLabel
    Left = 8
    Top = 14
    Width = 90
    Height = 24
    Caption = '&Express'#227'o'
    FocusControl = edtExpressao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object edtExpressao: TEdit
    Left = 32
    Top = 46
    Width = 353
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object bbnValida: TBitBtn
    Left = 116
    Top = 88
    Width = 75
    Height = 25
    Caption = '&Valida (1)'
    TabOrder = 1
    OnClick = bbnValidaClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
      333333333337FF3333333333330003333333333333777F333333333333080333
      3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
      33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
      B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
      BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
      B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
      3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
      333333333337F33333333333333B333333333333333733333333}
    NumGlyphs = 2
  end
  object bbnValida2: TBitBtn
    Left = 212
    Top = 88
    Width = 75
    Height = 25
    Caption = '&Valida (2)'
    TabOrder = 2
    OnClick = bbnValida2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
      333333333337FF3333333333330003333333333333777F333333333333080333
      3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
      33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
      B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
      BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
      B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
      3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
      333333333337F33333333333333B333333333333333733333333}
    NumGlyphs = 2
  end
end
