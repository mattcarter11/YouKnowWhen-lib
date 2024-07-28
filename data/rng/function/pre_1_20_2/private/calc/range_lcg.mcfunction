### ===== Normalize Distribution for Range ========
#
#    public int nextInt(int bound) {
#        if (bound <= 0)
#            throw new IllegalArgumentException(BadBound);
#
#        int r = next(31);
#        int m = bound - 1;
#        if ((bound & m) == 0)  // i.e., bound is a power of 2
#            r = (int)((bound * (long)r) >> 31);
#        else {
#            for (int u = r; u - (r = u % bound) + m < 0; u = next(31));
#        }
#        return r;
#    }

function rng:pre_1_20_2/private/calc/lcg

scoreboard players operation #temp rng = out rng
scoreboard players operation out rng %= #range rng
scoreboard players operation #temp rng -= out rng
scoreboard players operation #temp rng += #m1 rng
execute if score #temp rng matches ..-1 run function rng:pre_1_20_2/private/calc/range_lcg
