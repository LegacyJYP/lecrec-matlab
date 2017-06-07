function data = adjustvolume(data, percent)

max_amplitude = max(abs(data(:)));
amplifier_rate = 1+percent/100;
if (max_amplitude * (amplifier_rate)) > 1
    disp(['Cannot be >1 (',num2str(max_amplitude * (percent/100)),')']);
    amplifier_rate = 1 / max_amplitude;
end

data = data.*amplifier_rate;