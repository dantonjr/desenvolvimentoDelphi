unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, Buttons, ShellAPI;

type
  TfrPrincipal = class(TForm)
    pnMensagem: TPanel;
    bnFechar: TBitBtn;
    bnValor: TBitBtn;
    bnCor: TBitBtn;
    lbNome: TLabel;
    lbSite: TLabel;
    lbEmail: TLabel;
    lbTelefone: TLabel;
    bbnSobre: TBitBtn;
    bnTabela: TBitBtn;
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
    shBRE: TShape;
    shBRD: TShape;
    lblLattes: TLabel;
    lblLinkedin: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bnCorClick(Sender: TObject);
    procedure bnValorClick(Sender: TObject);
    procedure lbSiteClick(Sender: TObject);
    procedure lbEmailClick(Sender: TObject);
    procedure lbSiteMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbSiteMouseLeave(Sender: TObject);
    procedure lbEmailMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbEmailMouseLeave(Sender: TObject);
    procedure bbnSobreClick(Sender: TObject);
    procedure bnTabelaClick(Sender: TObject);
    procedure lblLinkedinClick(Sender: TObject);
    procedure lblLattesClick(Sender: TObject);
    procedure lblLattesMouseLeave(Sender: TObject);
    procedure lblLinkedinMouseLeave(Sender: TObject);
    procedure lblLattesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lblLinkedinMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
    procedure FazLink(Objeto : TLabel; Estado : Boolean);
  public
    { Public declarations }
  end;

const
  Mensagem = 'Identificador de Resistores 3.1' + #10 + #10 +
             'Autor:' + #10 +
             '  Danton Cavalcanti Franco Junior' + #10 +
             '  http://www.dantonjr.com.br' + #10 +
             '  falecom@dantonjr.com.br' + #10 +
             '  http://lattes.cnpq.br/7084927405072023' + #10 +
             '  http://br.linkedin.com/in/dantonjr' + #10 +
             '  + 55 (47) 8406-8437' + #10 + #10 +
             'Problemas ou Bugs??? Entre em contato!!!';

var
  frPrincipal: TfrPrincipal;

implementation

uses UIDCores, UIDValor, UTabelaCores;

{$R *.DFM}

procedure TfrPrincipal.FazLink(Objeto : TLabel; Estado : Boolean);
begin
  if Estado then
    Objeto.Font.Style := [fsBold, fsUnderline]
  else
    Objeto.Font.Style := [fsUnderline];
  Objeto.Left := (pnMensagem.Width - Objeto.Width) div 2;
end;

procedure TfrPrincipal.FormCreate(Sender: TObject);
var
  Lista     : TStringList;
  MsgErro   : String;
  Encontrou : Integer;

begin
  Lista := TStringList.Create;
  Lista.AddStrings(Screen.Fonts);
  Lista.Sort;
  MsgErro := Mensagem;
  if not Lista.Find('Symbol', Encontrou) then
    MsgErro := 'Atenção!!!' + #10 +
               '  Você deve ter a fonte Symbol instalada em sua máquina ' +
               'para que este software funcione corretamente.' + #10 + #10 +
               Mensagem;
  Lista.Free;
  MessageBeep(0);
  MessageDlg(MsgErro, mtInformation, [mbOK], 0);
end;

procedure TfrPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := MessageDlg('Deseja encerrar a aplicação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes;
end;

procedure TfrPrincipal.bnCorClick(Sender: TObject);
begin
  try
    Application.CreateForm(TfrIDCores, frIDCores);
    frIDCores.ShowModal;
  finally
    frIDCores.Free;
  end;
end;

procedure TfrPrincipal.bnValorClick(Sender: TObject);
begin
  try
    Application.CreateForm(TfrIDValor, frIDValor);
    frIDValor.ShowModal;
  finally
    frIDValor.Free;
  end;
end;

procedure TfrPrincipal.lbSiteClick(Sender: TObject);
begin
  ShellExecute(GetDesktopWindow, 'open', 'http://www.dantonjr.com.br', nil, nil, 0);
end;

procedure TfrPrincipal.lbEmailClick(Sender: TObject);
begin
  ShellExecute(GetDesktopWindow, 'open', 'mailto:falecom@dantonjr.com.br?Subject=<<IDResistor>>', nil, nil, 0);
end;

procedure TfrPrincipal.lbSiteMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  frPrincipal.FazLink(lbSite, True);
end;

procedure TfrPrincipal.lbSiteMouseLeave(Sender: TObject);
begin
  frPrincipal.FazLink(lbSite, False);
end;

procedure TfrPrincipal.lbEmailMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  frPrincipal.FazLink(lbEmail, True);
end;

procedure TfrPrincipal.lbEmailMouseLeave(Sender: TObject);
begin
  frPrincipal.FazLink(lbEmail, False);
end;

procedure TfrPrincipal.bbnSobreClick(Sender: TObject);
begin
  MessageDlg(Mensagem, mtInformation, [mbOK], 0);
end;

procedure TfrPrincipal.bnTabelaClick(Sender: TObject);
begin
  try
    Application.CreateForm(TfrTabelaCores, frTabelaCores);
    frTabelaCores.ShowModal;
  finally
    frTabelaCores.Free;
  end;
end;

procedure TfrPrincipal.lblLinkedinClick(Sender: TObject);
begin
  ShellExecute(GetDesktopWindow, 'open', 'http://br.linkedin.com/in/dantonjr', nil, nil, 0);
end;

procedure TfrPrincipal.lblLattesClick(Sender: TObject);
begin
  ShellExecute(GetDesktopWindow, 'open', 'http://lattes.cnpq.br/7084927405072023', nil, nil, 0);
end;

procedure TfrPrincipal.lblLattesMouseLeave(Sender: TObject);
begin
  frPrincipal.FazLink(lblLattes, False);
end;

procedure TfrPrincipal.lblLinkedinMouseLeave(Sender: TObject);
begin
  frPrincipal.FazLink(lblLinkedin, False);
end;

procedure TfrPrincipal.lblLattesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  frPrincipal.FazLink(lblLattes, True);
end;

procedure TfrPrincipal.lblLinkedinMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  frPrincipal.FazLink(lblLinkedin, True);
end;

end.
