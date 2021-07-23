unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.StdCtrls, FMX.ListBox, FMX.Layouts, FMX.Controls.Presentation;

type
  TForm1 = class(TForm)
    ToolBar1: TToolBar;
    ListBox1: TListBox;
    ListBoxItem3: TListBoxItem;
    txtPeso: TListBoxItem;
    ListBoxItem5: TListBoxItem;
    ListBoxItem6: TListBoxItem;
    ListBoxItem8: TListBoxItem;
    Label1: TLabel;
    txtPeso1: TEdit;
    txtAltura: TEdit;
    btnCalcular: TButton;
    btnLimpar: TButton;
    abc: TListBoxItem;
    lblMsg: TLabel;
    procedure btnCalcularClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  peso, altura : real;
  resultado : real;
  msg : string;

implementation

{$R *.fmx}

procedure TForm1.btnCalcularClick(Sender: TObject);
begin
 resultado := peso/(altura*altura);
 peso :=strToFloat(txtPeso1.Text);
 altura := strToFloat(txtAltura.Text);


    if (resultado<18.5) then
    begin
       lblMsg.Text :='Você está Abaixo do Peso';
    end
    else if (resultado<25) then
    begin
     lblMsg.Text := 'Você está no Peso ideal';
    end
    else if (resultado<30) then
    begin
      lblMsg.Text := 'Você está em obesidade Grau I';
    end
    else if (resultado<40) then
    begin
      lblMsg.Text := 'Você está em Obesidade Grau II';
    end
    else
    begin
      lblMsg.Text := 'Você está em Obesidade grau III';
    end;



end;

procedure TForm1.btnLimparClick(Sender: TObject);
begin
  txtAltura.Text := '';
  txtPeso1.Text := '';
end;

end.
