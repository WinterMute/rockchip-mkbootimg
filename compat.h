static inline int make_directory(const char* name, int mode)
{
#ifdef __MINGW32__
    (void)mode;
    return mkdir(name);
#else
    return mkdir(name, mode); /* Or what parameter you need here ... */
#endif
}
