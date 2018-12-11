unit UIDCores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, Buttons;

type
  TfrIDCores = class(TForm)
    shCor1: TShape;
    udCor1: TUpDown;
    lbCor1: TLabel;
    shCor2: TShape;
    udCor2: TUpDown;
    lbCor2: TLabel;
    shCor3: TShape;
    udCor3: TUpDown;
    lbCor3: TLabel;
    lbVal1: TLabel;
    lbVal2: TLabel;
    lbVal3: TLabel;
    lbBanda1: TLabel;
    lbBanda2: TLabel;
    lbMultiplicador: TLabel;
    lbFinal: TLabel;
    shCor4: TShape;
    udCor4: TUpDown;
    lbCor4: TLabel;
    lbVal4: TLabel;
    lbTolerancia: TLabel;
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
    lbIdeal: TLabel;
    lbMargem: TLabel;
    lbValoresTolerados: TLabel;
    shBRE: TShape;
    shBRD: TShape;
    bnFechar: TBitBtn;
    procedure udCor1Click(Sender: TObject; Button: TUDBtnType);
    procedure udCor2Click(Sender: TObject; Button: TUDBtnType);
    procedure udCor3Click(Sender: TObject; Button: TUDBtnType);
    procedure udCor4Click(Sender: TObject; Button: TUDBtnType);
    procedure bnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure MudaCor(Pintar : TShape; Nome : TLabel; Resistor : TShape; Cor : Byte);
    procedure CalculaResistenciaFinal;
  public
    { Public declarations }
  end;

var
  frIDCores: TfrIDCores;

implementation

{$R *.DFM}

procedure TfrIDCores.MudaCor(Pintar : TShape; Nome : TLabel; Resistor : TShape; Cor : Byte);
const
  CCores : array[0..11] of TColor = (clBlack, $0065798F, $001E1EE8, $002888DF, clYellow, $0030CF64, clBlue, $00BF31B1, clSilver, clWhite, $0022BCD2, clGray);
  NCores : array[0..11] of String[8] = ('Preto', 'Marrom', 'Vermelho', 'Laranja', 'Amarelo', 'Verde', 'Azul', 'Violeta', 'Cinza', 'Branco', 'Dourado', 'Prata');

begin
  Pintar.Brush.Color := CCores[Cor];
  Nome.Caption := NCores[Cor];
  Resistor.Brush.Color := CCores[Cor];
  Application.ProcessMessages;
  frIDCores.CalculaResistenciaFinal;
  Application.ProcessMessages;
end;

procedure TfrIDCores.CalculaResistenciaFinal;
var
  Valor,
  Auxiliar    : String;
  Minimo,
  Maximo,
  Porcentagem : Real;

begin
  case udCor3.Position of
       0 : lbFinal.Caption := FloatToStr(StrToInt(lbVal1.Caption + lbVal2.Caption));
    1..7 : lbFinal.Caption := FloatToStr(StrToInt(lbVal1.Caption + lbVal2.Caption + lbVal3.Caption));
       8 : lbFinal.Caption := FloatToStr(StrToInt(lbVal1.Caption + lbVal2.Caption) / 10);
       9 : lbFinal.Caption := FloatToStr(StrToInt(lbVal1.Caption + lbVal2.Caption) / 100);
  end;
    lbFinal.Caption := lbFinal.Caption + 'W';
  Valor := lbFinal.Caption;
  Auxiliar := lbVal4.Caption;
  Delete(Auxiliar, Length(Auxiliar), 1);
  if (Valor[1] <> '0') or (Length(Valor) > 2) then
  begin
    Delete(Valor, Length(Valor), Length(Valor));
    Porcentagem := (StrToFloat(Valor) * StrToInt(Auxiliar)) / 100;
    Minimo := StrToFloat(Valor) - Porcentagem;
    Maximo := StrToFloat(Valor) + Porcentagem;
    lbValoresTolerados.Caption := FormatFloat('##,###,##0.####', Minimo /1) + 'W ~ ' + FormatFloat('##,###,##0.####', Maximo) + 'W';
    lbMargem.Caption := 'Valores Tolerados: ' + lbVal4.Caption;
    lbFinal.Caption := FormatFloat('##,###,##0.####', StrToFloat(Valor)) + 'W';
  end;
end;

procedure TfrIDCores.udCor1Click(Sender: TObject; Button: TUDBtnType);
begin
  lbVal1.Caption := IntToStr(udCor1.Position);
  frIDCores.MudaCor(shCor1, lbCor1, shRCor1, udCor1.Position);
end;

procedure TfrIDCores.udCor2Click(Sender: TObject; Button: TUDBtnType);
begin
  lbVal2.Caption := IntToStr(udCor2.Position);
  frIDCores.MudaCor(shCor2, lbCor2, shRCor2, udCor2.Position);
end;

procedure TfrIDCores.udCor3Click(Sender: TObject; Button: TUDBtnType);
var
  Cor : Byte;

begin
  Cor := udCor3.Position;
  case udCor3.Position of
    0 : lbVal3.Caption := '';
    1 : lbVal3.Caption := '0';
    2 : lbVal3.Caption := '00';
    3 : lbVal3.Caption := '000';
    4 : lbVal3.Caption := '0000';
    5 : lbVal3.Caption := '00000';
    6 : lbVal3.Caption := '000000';
    7 : lbVal3.Caption := '0000000';
    8 : begin
          Cor := 10;
          lbVal3.Caption := '/10';
        end;
    9 : begin
          Cor := 11;
          lbVal3.Caption := '/100';
        end;
  end;
  frIDCores.MudaCor(shCor3, lbCor3, shRCor3, Cor);
end;

procedure TfrIDCores.udCor4Click(Sender: TObject;
  Button: TUDBtnType);
var
  Cor : Byte;

begin
  Cor := 0;
  case udCor4.Position of
    0 : begin
          Cor := 1;
          lbVal4.Caption := '1%';
        end;
    1 : begin
          Cor := 2;
          lbVal4.Caption := '2%';
        end;
    2 : begin
          Cor := 3;
          lbVal4.Caption := '3%';
        end;
    3 : begin
          Cor := 4;
          lbVal4.Caption := '4%';
        end;
    4 : begin
          Cor := 10;
          lbVal4.Caption := '5%';
        end;
    5 : begin
          Cor := 11;
          lbVal4.Caption := '10%';
        end;
  end;
  frIDCores.MudaCor(shCor4, lbCor4, shRCor4, Cor);
end;

procedure TfrIDCores.bnFecharClick(Sender: TObject);
begin
  frIDCores.Close;
end;

procedure TfrIDCores.FormCreate(Sender: TObject);
begin
  frIDCores.MudaCor(shCor1, lbCor1, shRCor1, 0);
  frIDCores.MudaCor(shCor2, lbCor2, shRCor2, 0);
  frIDCores.MudaCor(shCor3, lbCor3, shRCor3, 0);
  frIDCores.MudaCor(shCor4, lbCor4, shRCor4, 1);
end;

end.
