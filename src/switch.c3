import std::io;

// c3c compile-run switch.c3

fn void main()
{
    // switch
    {
        int i = 4;
        switch (i)
        {
            case 0:
                io::printn("zero");
            case 1:
                io::printn("one");
            case 2..3:
                io::printn("two or three");
            default:
                io::printn("default");
        }
    }
    // zero

    // switch with nextcase
    {
        int i = 0;
        switch (i)
        {
            case 0:
                io::printn("zero");
                nextcase;
            case 1:
                io::printn("one");
            default:
                io::printn("default");
        }
    }
    // zero
    // one

    // switch with nextcase (use nextcase with an expression)
    {
        int i = 0;
        switch (i)
        {
            case 0:
                io::printn("zero");
                nextcase default;
            case 1:
                io::printn("one");
            default:
                io::printn("default");
        }
    }
    // zero
    // default
}
