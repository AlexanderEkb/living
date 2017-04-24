program ResMan;



{$R 'ResManEx.res' 'ResManEx.rc'}

uses
  Forms,
  Main in 'Main.pas' {MainForm},
  Notepad in 'Notepad.pas' {NotepadForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TNotepadForm, NotepadForm);
  Application.Run;
end.
