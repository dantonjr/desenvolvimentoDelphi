unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, XPMan, ColorGrd;

type
  TPontos = (ptPonto1, ptPonto2, ptPonto3, ptPonto4);
  cPontos = set of TPontos;
  TfrmPrincipal = class(TForm)
    stbStatus: TStatusBar;
    pnlFuncoes: TPanel;
    lbxComandos: TListBox;
    pnlFuncao: TPanel;
    rdgFuncao: TRadioGroup;
    lblPonto1: TLabel;
    edtPonto1X: TEdit;
    edtPonto1Y: TEdit;
    lblPonto2: TLabel;
    edtPonto2X: TEdit;
    edtPonto2Y: TEdit;
    lblPonto3: TLabel;
    edtPonto3X: TEdit;
    edtPonto3Y: TEdit;
    lblPonto4: TLabel;
    edtPonto4X: TEdit;
    edtPonto4Y: TEdit;
    bbnRemoveComando: TBitBtn;
    bbnAdicionaComando: TBitBtn;
    pnlBotoes: TPanel;
    bbnDesenha: TBitBtn;
    bbnApaga: TBitBtn;
    xpmXP: TXPManifest;
    pnlPincel: TPanel;
    gbxLinha: TGroupBox;
    lblEspessuraLinha: TLabel;
    edtEspessuraLinha: TEdit;
    updEspessuraLinha: TUpDown;
    clgCorLinha: TColorGrid;
    lblCorLinha: TLabel;
    gbxGrade: TGroupBox;
    ckbLinhasGrade: TCheckBox;
    edtEspessuraGrade: TEdit;
    updEspessuraGrade: TUpDown;
    lblEspessuraGrade: TLabel;
    lblDistanciaGrade: TLabel;
    edtDistanciaGrade: TEdit;
    updDistanciaGrade: TUpDown;
    bbnSalvar: TBitBtn;
    bbnAbrir: TBitBtn;
    Bevel1: TBevel;
    opdAbrir: TOpenDialog;
    svdSalvar: TSaveDialog;
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edtPonto1XClick(Sender: TObject);
    procedure edtPonto2XClick(Sender: TObject);
    procedure edtPonto3XClick(Sender: TObject);
    procedure edtPonto4XClick(Sender: TObject);
    procedure rdgFuncaoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbnAdicionaComandoClick(Sender: TObject);
    procedure bbnDesenhaClick(Sender: TObject);
    procedure bbnRemoveComandoClick(Sender: TObject);
    procedure bbnApagaClick(Sender: TObject);
    procedure ckbLinhasGradeClick(Sender: TObject);
    procedure edtEspessuraGradeChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbnSalvarClick(Sender: TObject);
    procedure bbnAbrirClick(Sender: TObject);
  private
    { Private declarations }
    controlaClique: Integer;
    nomeArquivo: String;
    procedure habilitaPontos(pontos: cPontos);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses Math;

{$R *.dfm}

procedure TfrmPrincipal.habilitaPontos(pontos: cPontos);
begin
  lblPonto1.Enabled := ptPonto1 in pontos;
  edtPonto1X.Enabled := ptPonto1 in pontos;
  edtPonto1Y.Enabled := ptPonto1 in pontos;
  lblPonto2.Enabled := ptPonto2 in pontos;
  edtPonto2X.Enabled := ptPonto2 in pontos;
  edtPonto2Y.Enabled := ptPonto2 in pontos;
  lblPonto3.Enabled := ptPonto3 in pontos;
  edtPonto3X.Enabled := ptPonto3 in pontos;
  edtPonto3Y.Enabled := ptPonto3 in pontos;
  lblPonto4.Enabled := ptPonto4 in pontos;
  edtPonto4X.Enabled := ptPonto4 in pontos;
  edtPonto4Y.Enabled := ptPonto4 in pontos;
end;

procedure TfrmPrincipal.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  stbStatus.Panels.Items[0].Text := 'X: ' + IntToStr(X) + ' - Y: ' + IntToStr(Y);
end;

procedure TfrmPrincipal.FormMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Inc(controlaClique);
  case controlaClique of
    1 : begin
          edtPonto1X.Text := IntToStr(X);
          edtPonto1Y.Text := IntToStr(Y);
        end;
    2 : begin
          edtPonto2X.Text := IntToStr(X);
          edtPonto2Y.Text := IntToStr(Y);
        end;
    3 : begin
          edtPonto3X.Text := IntToStr(X);
          edtPonto3Y.Text := IntToStr(Y);
        end;
    4 : begin
          edtPonto4X.Text := IntToStr(X);
          edtPonto4Y.Text := IntToStr(Y);
        end;
   end;
end;

procedure TfrmPrincipal.edtPonto1XClick(Sender: TObject);
begin
  controlaClique := 0;
end;

procedure TfrmPrincipal.edtPonto2XClick(Sender: TObject);
begin
  controlaClique := 1;
end;

procedure TfrmPrincipal.edtPonto3XClick(Sender: TObject);
begin
  controlaClique := 2;
end;

procedure TfrmPrincipal.edtPonto4XClick(Sender: TObject);
begin
  controlaClique := 3;
end;

procedure TfrmPrincipal.rdgFuncaoClick(Sender: TObject);
begin
  lblPonto3.Caption := 'Ponto 3';
  case rdgFuncao.ItemIndex of
    0 : habilitaPontos([ptPonto1, ptPonto2]);
    1 : begin
          lblPonto3.Caption := 'Ângulos';
          habilitaPontos([ptPonto1, ptPonto2, ptPonto3]);
        end;
    2 : habilitaPontos([ptPonto1, ptPonto2]);
    3 : habilitaPontos([ptPonto1, ptPonto2, ptPonto3, ptPonto4]);
    4 : habilitaPontos([ptPonto1, ptPonto2]);
    5 : habilitaPontos([ptPonto1, ptPonto2, ptPonto3]);
    6 : habilitaPontos([ptPonto1]);
  end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  controlaClique := 0;
  frmPrincipal.Canvas.Brush.Style := bsClear;
  nomeArquivo := ''; 
end;

procedure TfrmPrincipal.bbnAdicionaComandoClick(Sender: TObject);
var
  cor: String;

begin
  cor := IntToStr(clgCorLinha.ForegroundColor);
  controlaClique := 0;
  case rdgFuncao.ItemIndex of
    0 : lbxComandos.Items.Add('Ret(' + edtPonto1X.Text + ', ' + edtPonto1Y.Text + ', ' + edtPonto2X.Text + ', ' + edtPonto2Y.Text + ', ' + cor + ', ' + edtEspessuraLinha.Text + ')');
    1 : lbxComandos.Items.Add('RetR(' + edtPonto1X.Text + ', ' + edtPonto1Y.Text + ', ' + edtPonto2X.Text + ', ' + edtPonto2Y.Text + ', ' + edtPonto3X.Text + ', ' + edtPonto3Y.Text + ', ' + cor + ', ' + edtEspessuraLinha.Text + ')');
    2 : lbxComandos.Items.Add('Cir(' + edtPonto1X.Text + ', ' + edtPonto1Y.Text + ', ' + edtPonto2X.Text + ', ' + edtPonto2Y.Text + ', ' + cor + ', ' + edtEspessuraLinha.Text + ')');
    3 : lbxComandos.Items.Add('Arc(' + edtPonto1X.Text + ', ' + edtPonto1Y.Text + ', ' + edtPonto2X.Text + ', ' + edtPonto2Y.Text + ', ' + edtPonto3X.Text + ', ' + edtPonto3Y.Text + ', ' + edtPonto4X.Text + ', ' + edtPonto4Y.Text + ', ' + cor + ', ' + edtEspessuraLinha.Text + ')');
    4 : lbxComandos.Items.Add('Lin(' + edtPonto1X.Text + ', ' + edtPonto1Y.Text + ', ' + edtPonto2X.Text + ', ' + edtPonto2Y.Text + ', ' + cor + ', ' + edtEspessuraLinha.Text + ')');
    5 : lbxComandos.Items.Add('Tri(' + edtPonto1X.Text + ', ' + edtPonto1Y.Text + ', ' + edtPonto2X.Text + ', ' + edtPonto2Y.Text + ', ' + edtPonto3X.Text + ', ' + edtPonto3Y.Text + ', ' + cor + ', ' + edtEspessuraLinha.Text + ')');
    6 : lbxComandos.Items.Add('Pto(' + edtPonto1X.Text + ', ' + edtPonto1Y.Text + ', ' + cor + ', ' + edtEspessuraLinha.Text + ')');
  end;
end;

procedure TfrmPrincipal.bbnDesenhaClick(Sender: TObject);

  function tiraPonto(primeiro: boolean; var linha: string): TPoint;
  var
    ponto1,
    ponto2 : String;

  begin
    if primeiro then
      Delete(linha, 1, 4);
    ponto1 := Copy(linha, 1, Pos(',', linha) - 1);
    Delete(linha, 1, Pos(',', linha));
    ponto2 := Copy(linha, 1, Pos(',', linha) - 1);
    Delete(linha, 1, Pos(',', linha));
    result.X := StrToInt(Trim(ponto1));
    result.Y := StrToInt(Trim(ponto2));
  end;

  function corLinha(linha: String): Longint;
  begin
    frmPrincipal.Canvas.Pen.Color := StrToInt(Trim(Copy(linha, 1, Pos(',', linha) - 1)));
    Delete(linha, 1, Pos(',', linha));
    frmPrincipal.Canvas.Pen.Width := StrToInt(Trim(Copy(linha, 1, Pos(')', linha) - 1)));
    Result := frmPrincipal.Canvas.Pen.Color;
  end;

var
  item: Integer;
  comando: String;
  pt1,
  pt2,
  pt3,
  pt4 : TPoint;
  extra : boolean;

begin
  bbnApaga.Click;
  frmPrincipal.Canvas.Brush.Style := bsClear;
  for item := 0 to lbxComandos.Items.Count - 1 do
  begin
    comando := lbxComandos.Items[item];
    case comando[1] of
      'A' : begin
              pt1 := tiraPonto(true, comando);
              pt2 := tiraPonto(false, comando);
              pt3 := tiraPonto(false, comando);
              pt4 := tiraPonto(false, comando);
              corLinha(comando);
              frmPrincipal.Canvas.Arc(pt1.X, pt1.Y, pt2.X, pt2.Y, pt3.X, pt3.Y, pt4.X, pt4.Y);
            end;
      'C' : begin
              pt1 := tiraPonto(true, comando);
              pt2 := tiraPonto(false, comando);
              corLinha(comando);
              frmPrincipal.Canvas.Ellipse(pt1.X, pt1.Y, pt2.X, pt2.Y);
            end;
      'L' : begin
              pt1 := tiraPonto(true, comando);
              pt2 := tiraPonto(false, comando);
              corLinha(comando);
              frmPrincipal.Canvas.MoveTo(pt1.X, pt1.Y);
              frmPrincipal.Canvas.LineTo(pt2.X, pt2.Y);
            end;
      'P' : begin
              pt1 := tiraPonto(true, comando);
              frmPrincipal.Canvas.Pixels[pt1.X, pt1.Y] := corLinha(comando);
            end;
      'R' : begin
              extra :=  false;
              if Pos('tR', comando) > 0 then
              begin
                extra := true;
                Delete(comando, 1, 1);
              end;
              pt1 := tiraPonto(true, comando);
              pt2 := tiraPonto(false, comando);
              if extra then
              begin
               // Ajustar
                pt3 := tiraPonto(false, comando);
                corLinha(comando);
                frmPrincipal.Canvas.RoundRect(pt1.X, pt1.Y, pt2.X, pt2.Y, pt3.X, pt3.Y);
              end
              else
              begin
                corLinha(comando);
                frmPrincipal.Canvas.Rectangle(pt1.X, pt1.Y, pt2.X, pt2.Y);
              end;
            end;
      'T' : begin
              pt1 := tiraPonto(true, comando);
              pt2 := tiraPonto(false, comando);
              pt3 := tiraPonto(false, comando);
              corLinha(comando);
              frmPrincipal.Canvas.MoveTo(pt1.X, pt1.Y);
              frmPrincipal.Canvas.LineTo(pt2.X, pt2.Y);
              frmPrincipal.Canvas.LineTo(pt3.X, pt3.Y);
              frmPrincipal.Canvas.LineTo(pt1.X, pt1.Y);
            end;
    end;
  end;
end;

procedure TfrmPrincipal.bbnRemoveComandoClick(Sender: TObject);
begin
  lbxComandos.DeleteSelected;
end;

procedure TfrmPrincipal.bbnApagaClick(Sender: TObject);
begin
  frmPrincipal.Canvas.Brush.Color := clBtnFace;
  frmPrincipal.Canvas.FillRect(Rect(0, 0, frmPrincipal.Width, frmPrincipal.Height));
  if ckbLinhasGrade.Checked then
    ckbLinhasGrade.OnClick(Sender);
end;

procedure TfrmPrincipal.ckbLinhasGradeClick(Sender: TObject);
var
  lin,
  col,
  linhaAntiga: Integer;
  corAntiga: TColor;

begin
  frmPrincipal.Canvas.Brush.Color := clBtnFace;
  frmPrincipal.Canvas.FillRect(Rect(0, 0, frmPrincipal.Width, frmPrincipal.Height));
  edtEspessuraGrade.Enabled := ckbLinhasGrade.Checked;
  updEspessuraGrade.Enabled := ckbLinhasGrade.Checked;
  lblEspessuraGrade.Enabled := ckbLinhasGrade.Checked;
  edtDistanciaGrade.Enabled := ckbLinhasGrade.Checked;
  updDistanciaGrade.Enabled := ckbLinhasGrade.Checked;
  lblDistanciaGrade.Enabled := ckbLinhasGrade.Checked;
  if ckbLinhasGrade.Checked then
  begin
    corAntiga := frmPrincipal.Canvas.Pen.Color;
    frmPrincipal.Canvas.Pen.Color := clRed;
    linhaAntiga := frmPrincipal.Canvas.Pen.Width;
    frmPrincipal.Canvas.Pen.Width := StrToInt(edtEspessuraGrade.Text);
    lin := 0;
    col := 0;
    repeat
      repeat
        frmPrincipal.Canvas.MoveTo(col, 0);
        frmPrincipal.Canvas.LineTo(col, frmPrincipal.Height);
        frmPrincipal.Canvas.MoveTo(0, lin);
        frmPrincipal.Canvas.LineTo(frmPrincipal.Width, lin);
        Inc(col, StrToInt(edtDistanciaGrade.Text));
        Inc(lin, StrToInt(edtDistanciaGrade.Text));
      until col > frmPrincipal.Width;
    until lin > frmPrincipal.Width;
    frmPrincipal.Canvas.Pen.Width := linhaAntiga;
    frmPrincipal.Canvas.Pen.Color := corAntiga;
  end;
end;

procedure TfrmPrincipal.edtEspessuraGradeChange(Sender: TObject);
begin
  bbnApaga.Click;
  ckbLinhasGrade.OnClick(Sender);
end;

procedure TfrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F7 then
    bbnAdicionaComando.Click;
end;

procedure TfrmPrincipal.bbnSalvarClick(Sender: TObject);
begin
  svdSalvar.FileName := nomeArquivo;
  if svdSalvar.Execute then
    lbxComandos.Items.SaveToFile(svdSalvar.FileName);
end;

procedure TfrmPrincipal.bbnAbrirClick(Sender: TObject);
begin
  if opdAbrir.Execute then
  begin
    lbxComandos.Items.LoadFromFile(opdAbrir.FileName);
    nomeArquivo := opdAbrir.FileName;
    frmPrincipal.Caption := 'Desenhos por Danton Cavalcanti Franco Junior - ' + nomeArquivo;
  end;
end;

end.
