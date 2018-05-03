program Project1;

uses
  Forms,
  Unit3 in 'Unit3.pas' {interface1},
  Unit4 in 'Unit4.pas' {inputstudent},
  Unit7 in 'Unit7.pas' {F_view_change},
  Unit8 in 'Unit8.pas' {Form_help},
  Unit13 in 'Unit13.pas' {F_enter_num},
  Unit14 in 'Unit14.pas' {F_rep_stu},
  Unit19 in 'Unit19.pas' {F_go_name},
  Unit20 in 'Unit20.pas' {F_name_go},
  Unit21 in 'Unit21.pas' {F_count},
  Unit22 in 'Unit22.pas' {f_count_pri},
  Unit24 in 'Unit24.pas' {F_print},
  Unit9 in 'Unit9.pas' {F_name_stu_out},
  Unit2 in 'Unit2.pas' {DataM: TDataModule},
  Un_F_reg_print in 'Un_F_reg_print.pas' {F_reg_print},
  Unit26 in 'Unit26.pas' {F_count_pri1},
  U_information in 'U_information.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := '„‰ŸÊ„… «·„”Ã· «·⁄«„';
  Application.CreateForm(Tinterface1, interface1);
  Application.CreateForm(TF_view_change, F_view_change);
  Application.CreateForm(TF_count, F_count);
  Application.CreateForm(Tinputstudent, inputstudent);
  Application.CreateForm(TF_go_name, F_go_name);
  Application.CreateForm(TF_enter_num, F_enter_num);
  Application.CreateForm(TForm_help, Form_help);
  Application.CreateForm(TF_rep_stu, F_rep_stu);
  Application.CreateForm(TF_name_go, F_name_go);
  Application.CreateForm(Tf_count_pri, f_count_pri);
  Application.CreateForm(TF_print, F_print);
  Application.CreateForm(TF_name_stu_out, F_name_stu_out);
  Application.CreateForm(TDataM, DataM);
  Application.CreateForm(TF_reg_print, F_reg_print);
  Application.CreateForm(TF_count_pri1, F_count_pri1);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
