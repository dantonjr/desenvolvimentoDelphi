unit UIDValor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, Buttons;

type
  TfrIDValor = class(TForm)
    lbValorCalculado: TLabel;
    shRPE: TShape;
    shRPD: TShape;
    shRPC: TShape;
    shRCor1: TShape;
    shRCor2: TShape;
    shRCor3: TShape;
    shRCor4: TShape;
    shCRHD: TShape;
    shCRHE: TShape;
    shCRVD: TShape;
    shCRVE: TShape;
    lbValoresTolerados: TLabel;
    shBRE: TShape;
    shBRD: TShape;
    bnFechar: TBitBtn;
    cbBanda1: TComboBox;
    cbBanda3: TComboBox;
    cbBanda2: TComboBox;
    cbBanda4: TComboBox;
    lbValor: TLabel;
    lbTolerancia: TLabel;
    shCor1: TShape;
    shCor2: TShape;
    shCor3: TShape;
    shCor4: TShape;
    lbCor1: TLabel;
    lbCor2: TLabel;
    lbCor3: TLabel;
    lbCor4: TLabel;
    procedure bnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbBanda1Change(Sender: TObject);
  private
    { Private declarations }
    procedure MudaCor(Pintar : TShape; Nome : TLabel; Resistor : TShape; Cor : Byte);
    procedure CalculaResistenciaFinal;
  public
    { Public declarations }
  end;

var
  frIDValor: TfrIDValor;

implementation

{$R *.DFM}

procedure TfrIDValor.MudaCor(Pintar : TShape; Nome : TLabel; Resistor : TShape; Cor : Byte);
const
  CCores : array[0..11] of TColor = (clBlack, $0065798F, $001E1EE8, $002888DF, clYellow, $0030CF64, clBlue, $00BF31B1, clSilver, clWhite, $0022BCD2, clGray);
  NCores : array[0..11] of String[8] = ('Preto', 'Marrom', 'Vermelho', 'Laranja', 'Amarelo', 'Verde', 'Azul', 'Violeta', 'Cinza', 'Branco', 'Dourado', 'Prata');

begin
  Pintar.Brush.Color := CCores[Cor];
  Nome.Caption := NCores[Cor];
  Resistor.Brush.Color := CCores[Cor];
  Application.ProcessMessages;
  frIDValor.CalculaResistenciaFinal;
  Application.ProcessMessages;
end;

procedure TfrIDValor.CalculaResistenciaFinal;
var
  Valor,
  Auxiliar    : String;
  Minimo,
  Maximo,
  Porcentagem : Real;

begin
  Valor := lbValorCalculado.Caption; 
  Auxiliar := cbBanda4.Text;
  while Pos('.', Valor) > 0 do
    Delete(Valor, Pos('.', Valor), 1);
  Delete(Auxiliar, Length(Auxiliar), 1);
  if (Valor[1] <> '0') or (Length(Valor) > 2) then
  begin
    Delete(Valor, Pos('W', Valor), 10);
    Porcentagem := (StrToFloat(Valor) * StrToInt(Auxiliar)) / 100;
    Minimo := StrToFloat(Valor) - Porcentagem;
    Maximo := StrToFloat(Valor) + Porcentagem;
    lbValoresTolerados.Caption := FormatFloat('##,###,##0.####', Minimo /1) + 'W ~ ' + FormatFloat('##,###,##0.####', Maximo) + 'W';
  end;
end;

procedure TfrIDValor.bnFecharClick(Sender: TObject);
begin
  frIDValor.Close;
end;

procedure TfrIDValor.FormCreate(Sender: TObject);
begin
  cbBanda1.ItemIndex := 0;
  cbBanda2.ItemIndex := 0;
  cbBanda3.ItemIndex := 0;
  cbBanda4.ItemIndex := 4;
  cbBanda1.OnChange(Sender);
end;

procedure TfrIDValor.cbBanda1Change(Sender: TObject);
var
  Cor      : Byte;
  Auxiliar : String;

begin
  if cbBanda1.ItemIndex = 0 then
  begin
    cbBanda3.ItemIndex := 0;
    cbBanda3.Enabled := False;
  end
  else
    cbBanda3.Enabled := True;
  Cor := 0;
  case cbBanda3.ItemIndex of
    0..7 : lbValorCalculado.Caption := cbBanda1.Text + cbBanda2.Text + cbBanda3.Text;
       8 : lbValorCalculado.Caption := cbBanda1.Text + ',' + cbBanda2.Text;
       9 : lbValorCalculado.Caption := '0,' + cbBanda1.Text + cbBanda2.Text;
  end;
  Auxiliar := lbValorCalculado.Caption;
  while Pos('.', Auxiliar) > 0 do
    Delete(Auxiliar, Pos('.', Auxiliar), 1);
  lbValorCalculado.Caption := FormatFloat('###,###,##0.##', StrToFloat(Auxiliar)) +
                              'W ' + cbBanda4.Text;
  MudaCor(shCor1, lbCor1, shRCor1, cbBanda1.ItemIndex);
  MudaCor(shCor2, lbCor2, shRCor2, cbBanda2.ItemIndex);
  case cbBanda3.ItemIndex of
    0..7 : Cor := cbBanda3.ItemIndex;
       8 : Cor := 10;
       9 : Cor := 11;
  end;
  MudaCor(shCor3, lbCor3, shRCor3, Cor);
  case cbBanda4.ItemIndex of
    0..3 : Cor := cbBanda4.ItemIndex + 1;
       4 : Cor := 10;
       5 : Cor := 11;
  end;
  MudaCor(shCor4, lbCor4, shRCor4, Cor);
end;

end.
