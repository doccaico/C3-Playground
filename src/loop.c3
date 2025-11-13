import std::io;

// c3c compile-run loop.c3

fn void main()
{
    //
    // Manual loop
    //

    // while
    {
        int i = 0;
        while (i < 5)
        {
            io::print(i);
            i++;
        }
        io::printn();
    }
    // 01234

    // while with break
    {
        int i = 0;
        while (true)
        {
            io::print(i);
            i++;

            if (i == 5) break;
        }
        io::printn();
    }
    // 01234

    // while with labelled break
    {
        int i = 0;
        while OUTER: (true)
        {
            io::print(i);
            i++;

            if (i == 5) break OUTER;
        }
        io::printn();
    }
    // 01234

    // do-while
    {
        int i = 0;
        do OUTER:
        {
            io::print(i);
            i++;
        } while (i != 5);
        io::printn();
    }
    // 01234

    // do-while (whileを省略したバージョン)
    // この場合、while(0)のように振る舞う(loopには使えない)
    {
        int i = 0;
        do
        {
            if (i) break;
            io::print(i);
        };
        io::printn();
    }
    // 0

    // for
    {
        for (int i = 0; i < 5; i++)
        {
            io::print(i);
        }
        io::printn();
    }
    // 01234

    //
    // Ranged-based loop
    //

    // foreach
    {
        int[*] array = {0, 1, 2, 3, 4};
        foreach (val : array)
        {
            io::print(val);
        }
        io::printn();
    }
    // 01234

    // foreach with index
    {
        int[*] array = {0, 1, 2, 3, 4};
        foreach (i, val : array)
        {
            io::printf("%d %d ", i, val);
        }
        io::printn();
    }
    // 0 0 1 1 2 2 3 3 4 4

    // foreach-reverse
    {
        int[*] array = {0, 1, 2, 3, 4};
        foreach_r (val : array)
        {
            io::print(val);
        }
        io::printn();
    }
    // 43210

    // foreach-reverse with index
    {
        int[*] array = {0, 1, 2, 3, 4};
        foreach_r (i, val : array)
        {
            io::printf("%d %d ", i, val);
        }
        io::printn();
    }
    // 4 4 3 3 2 2 1 1 0 0
}
