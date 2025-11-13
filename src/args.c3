import std::io;

// c3c compile-run args.c3 -- a b c

fn void main(String[] args)
{
    for (int i = 1; i < args.len; i++)
    {
        io::printn(args[i]);
    }
    // a
    // b
    // c

    foreach (arg : args[1..])
    {
        io::printn(arg);
    }
    // a
    // b
    // c
}
