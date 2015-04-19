## Copyright (C) 2008-2010 Florian Mueller
## Copyright (C) 2008-2010 Davide Mazza <shiner80@gmail.com>
## Copyright (C) 2010 Carnë Draug <carandraug+dev@gmail.com>
##
## This program is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program; if not, see <http://www.gnu.org/licenses/>.
##
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