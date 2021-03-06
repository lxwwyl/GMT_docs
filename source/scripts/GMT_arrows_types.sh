#!/bin/bash
# Demonstrate how arrows heads can look like (just doing Cartesian arrows here)
ps=GMT_arrows_types.ps
# Cartesian straight arrows
gmt psxy -R0/10/0/15 -JX10c/10c -P -S -W1.5p -Gred -K --MAP_VECTOR_SHAPE=0 << EOF > $ps
0.5	0.5	4.5	0.5	v0.25i+s+e+a40
0.5	1.5	4.5	1.5	v0.25i+s+b
0.5	2.5	4.5	2.5	v0.25i+s+e+b
EOF
gmt psxy -R -J -O -S -W1.5p -Gred -K --MAP_VECTOR_SHAPE=0.5 << EOF >> $ps
0.5	3.5	4.5	3.5	v0.25i+s+e+b
0.5	4.5	4.5	4.5	v0.25i+s+b+a45
0.5	5.5	4.5	5.5	v0.25i+s+e+bi
0.9	6.5	4.1	6.5	v0.25i+s+eI+bI
EOF
gmt psxy -R -J -O -S -W1.5p -Gred -K << EOF >> $ps
0.5	7.5	4.5	7.5	v0.25i+s+et
0.5	8.5	4.5	8.5	v0.25i+s+bc
0.5	9.5	4.5	9.5	v0.25i+s+et+bt
EOF
gmt psxy -R -J -O -S -W1.5p -Gred -K --MAP_VECTOR_SHAPE=0.5 << EOF >> $ps
0.5	10.5	4.5	10.5	v0.25i+s+e+bt
0.5	11.5	4.5	11.5	v0.25i+s+b+ec+a45
EOF
gmt psxy -R -J -O -S -W1.5p -Gred -K --MAP_VECTOR_SHAPE=0.5 << EOF >> $ps
0.5	12.5	4.5	12.5	v0.25i+s+b+ei
0.5	13.5	4.5	13.5	v0.25i+s+bA+eA
EOF

gmt pstext -R -J -F+jML -K -O << EOF >> $ps
5.5	0.5	v0.25i+s+e+a40
5.5	1.5	v0.25i+s+b
5.5	2.5	v0.25i+s+e+b
5.5	3.5	v0.25i+s+e+b
5.5	4.5	v0.25i+s+b+a45
5.5	5.5	v0.25i+s+e+bi
5.5	6.5	v0.25i+s+eI+bI
5.5	7.5	v0.25i+s+et
5.5	8.5	v0.25i+s+bc
5.5	9.5	v0.25i+s+et+bt
5.5	10.5 v0.25i+s+e+bt
5.5	11.5 v0.25i+s+b+ec+a45
5.5	12.5 v0.25i+s+b+ei
5.5	13.5 v0.25i+s+bA+eA
EOF

gmt psxy -R -J -O -T >> $ps
rm gmt.*
