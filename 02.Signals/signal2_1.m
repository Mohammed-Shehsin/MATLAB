time = 0 : 0.00001 : 2;
amplitude = 5.12;
frequency = 5;
sawtooth_signal= abs(amplitude*sawtooth(2 * frequency * pi * time)) ;

plot(time, sawtooth_signal);
form_factor_value = formfactor(sawtooth_signal);
comparing_signal = load('form.dat');
compared_form_factor_value = formfactor(comparing_signal);

printf("Form factor is %f\n", form_factor_value);
printf("Form factor is %f\n", compared_form_factor_value);
