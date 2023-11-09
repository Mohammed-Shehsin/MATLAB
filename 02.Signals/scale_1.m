function normalized_signal = scale_1(signal)



  min_value = min(signal);
  max_value = max(signal);

  normalized_signal = 2 * ( signal - min_value ) / (max_value - min_value );


  end
