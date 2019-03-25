/*
 * Debug Utility function
 *
 * Created by He, Hao at 2019-3-11
 */

#ifndef SIMULATOR_DEBUG_H
#define SIMULATOR_DEBUG_H

#include <cstdarg>
#include <cstdio>

#define DEBUG

inline void dbgprintf(const char *format, ...) {
#ifdef DEBUG
  char buf[BUFSIZ];
  va_list args;
  va_start(args, format);
  vsprintf(buf, format, args);
  fprintf(stderr, "%s", buf);
  va_end(args);
#endif
}

#endif
