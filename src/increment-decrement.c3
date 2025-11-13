import std::io;

// c3c compile-run increment-decrement.c3

fn void main()
{
    {
        int i = 0;
        io::printn(i++);
        io::printn(i);
    }
    // 0
    // 1
    {
        int i = 0;
        io::printn(++i);
        io::printn(i);
    }
    // 1
    // 1
    {
        int i = 10;
        io::printn(i--);
        io::printn(i);
    }
    // 10
    // 9
    {
        int i = 10;
        io::printn(--i);
        io::printn(i);
    }
    // 9
    // 9
}
