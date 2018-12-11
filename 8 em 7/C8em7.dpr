program C8em7;

uses
  Forms,
  Principal in 'Principal.pas' {frPrincipal};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Compactação "8 em 7"';
  Application.CreateForm(TfrPrincipal, frPrincipal);
  Application.Run;
end.
