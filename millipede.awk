#!/usr/bin/env awk -f

BEGIN {
    Paddings[0] = 2
    Paddings[1] = 1
    Paddings[2] = 0
    Paddings[3] = 1
    Paddings[4] = 2
    Paddings[5] = 3
    Paddings[6] = 4
    Paddings[7] = 3

    Size = 20
    if (ARGC > 1) {
        Size = ARGV[1]
    }

    millipede(Size)
}

func millipede(Size) {
    print "    ╚⊙ ⊙╝"
    for(i = 0; i < Size; i++) {
        printf("%*s╚═(███)═╝\n", Paddings[i % 8], "")
    }
}
