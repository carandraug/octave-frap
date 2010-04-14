function [bin_time bin_rec] = calculator_log_binning (bl_avg, times, nPre_bleach, nFrames, bin_start);

  ## Remove pre-bleach and set time start to zero
  times   = times(nPre_bleach+1:end) - times(nPre_bleach+1);
  bl_avg  = bl_avg(nPre_bleach+1:end);

  ## Calculate last time when bleach

  ## Get log of time
  log_times = log10(times);

  bin_rec(1:bin_start)  = bl_avg(1:bin_start);

  ## Length of binning interval on logarithmic scale
    if cur_int > bin_int
      bin_rec(iBin_rec)   = mean(bl_avg(iBin_start:iBin_end));
      iBin_start  = i+1;
      cur_int     = 0;
      iBin_rec    = iBin_rec +1;
endfunction