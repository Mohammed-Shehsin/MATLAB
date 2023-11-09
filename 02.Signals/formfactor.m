function form_factor = formfactor(signal)

 rms_value = sqrt(mean(signal.^2));
 mean_value = mean(signal);
 form_factor = rms_value / abs(mean_value);

  end
