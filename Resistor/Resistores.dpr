program Resistores;

uses
  Forms,
  UIDValor in 'UIDValor.pas' {frIDValor},
  UPrincipal in 'UPrincipal.pas' {frPrincipal},
  UTabelaCores in 'UTabelaCores.pas' {frTabelaCores},
  UIDCores in 'UIDCores.pas' {frIDCores};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Identificador de Resistores 3.0a';
  Application.CreateForm(TfrPrincipal, frPrincipal);
  Application.Run;
end.
