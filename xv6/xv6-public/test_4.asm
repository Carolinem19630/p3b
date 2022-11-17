
_test_4:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:

void worker(void *arg1, void *arg2);

int
main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	56                   	push   %esi
   e:	53                   	push   %ebx
   f:	51                   	push   %ecx
  10:	83 ec 0c             	sub    $0xc,%esp
   ppid = getpid();
  13:	e8 5c 05 00 00       	call   574 <getpid>
   void *stack, *p = malloc(PGSIZE * 2);
  18:	83 ec 0c             	sub    $0xc,%esp
  1b:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  20:	a3 10 0e 00 00       	mov    %eax,0xe10
   void *stack, *p = malloc(PGSIZE * 2);
  25:	e8 66 08 00 00       	call   890 <malloc>
   assert(p != NULL);
  2a:	83 c4 10             	add    $0x10,%esp
  2d:	85 c0                	test   %eax,%eax
  2f:	0f 84 29 01 00 00    	je     15e <main+0x15e>
  35:	89 c3                	mov    %eax,%ebx
   if((uint)p % PGSIZE == 0)
     stack = p + 4;
  37:	8d 40 04             	lea    0x4(%eax),%eax
  3a:	f7 c3 ff 0f 00 00    	test   $0xfff,%ebx
  40:	0f 45 c3             	cmovne %ebx,%eax
   else
     stack = p;

   assert(clone(worker, 0, 0, stack) == -1);
  43:	50                   	push   %eax
  44:	6a 00                	push   $0x0
  46:	6a 00                	push   $0x0
  48:	68 c0 01 00 00       	push   $0x1c0
  4d:	e8 42 05 00 00       	call   594 <clone>
  52:	83 c4 10             	add    $0x10,%esp
  55:	83 f8 ff             	cmp    $0xffffffff,%eax
  58:	74 46                	je     a0 <main+0xa0>
  5a:	6a 21                	push   $0x21
  5c:	68 88 09 00 00       	push   $0x988
  61:	68 91 09 00 00       	push   $0x991
  66:	6a 01                	push   $0x1
  68:	e8 f3 05 00 00       	call   660 <printf>
  6d:	83 c4 0c             	add    $0xc,%esp
  70:	68 ec 09 00 00       	push   $0x9ec
  75:	68 a3 09 00 00       	push   $0x9a3
  7a:	6a 01                	push   $0x1
  7c:	e8 df 05 00 00       	call   660 <printf>
  81:	5a                   	pop    %edx
  82:	59                   	pop    %ecx
  83:	68 b7 09 00 00       	push   $0x9b7
  88:	6a 01                	push   $0x1
  8a:	e8 d1 05 00 00       	call   660 <printf>
  8f:	5b                   	pop    %ebx
  90:	ff 35 10 0e 00 00    	push   0xe10
  96:	e8 89 04 00 00       	call   524 <kill>
  9b:	e8 54 04 00 00       	call   4f4 <exit>

   stack = sbrk(0);
  a0:	83 ec 0c             	sub    $0xc,%esp
  a3:	6a 00                	push   $0x0
  a5:	e8 d2 04 00 00       	call   57c <sbrk>
   if((uint)stack % PGSIZE)
  aa:	83 c4 10             	add    $0x10,%esp
   stack = sbrk(0);
  ad:	89 c6                	mov    %eax,%esi
   if((uint)stack % PGSIZE)
  af:	25 ff 0f 00 00       	and    $0xfff,%eax
  b4:	75 59                	jne    10f <main+0x10f>
     stack = stack + (PGSIZE - (uint)stack % PGSIZE);
   sbrk( ((uint)stack - (uint)sbrk(0)) + PGSIZE/2 );
  b6:	83 ec 0c             	sub    $0xc,%esp
  b9:	6a 00                	push   $0x0
  bb:	e8 bc 04 00 00       	call   57c <sbrk>
  c0:	89 c2                	mov    %eax,%edx
  c2:	8d 86 00 08 00 00    	lea    0x800(%esi),%eax
  c8:	29 d0                	sub    %edx,%eax
  ca:	89 04 24             	mov    %eax,(%esp)
  cd:	e8 aa 04 00 00       	call   57c <sbrk>
  d2:	83 c4 10             	add    $0x10,%esp
   assert((uint)stack % PGSIZE == 0);
   assert((uint)sbrk(0) - (uint)stack == PGSIZE/2);
  d5:	83 ec 0c             	sub    $0xc,%esp
  d8:	6a 00                	push   $0x0
  da:	e8 9d 04 00 00       	call   57c <sbrk>
  df:	83 c4 10             	add    $0x10,%esp
  e2:	29 f0                	sub    %esi,%eax
  e4:	3d 00 08 00 00       	cmp    $0x800,%eax
  e9:	0f 84 8f 00 00 00    	je     17e <main+0x17e>
  ef:	6a 28                	push   $0x28
  f1:	68 88 09 00 00       	push   $0x988
  f6:	68 91 09 00 00       	push   $0x991
  fb:	6a 01                	push   $0x1
  fd:	e8 5e 05 00 00       	call   660 <printf>
 102:	83 c4 0c             	add    $0xc,%esp
 105:	68 10 0a 00 00       	push   $0xa10
 10a:	e9 66 ff ff ff       	jmp    75 <main+0x75>
   sbrk( ((uint)stack - (uint)sbrk(0)) + PGSIZE/2 );
 10f:	83 ec 0c             	sub    $0xc,%esp
     stack = stack + (PGSIZE - (uint)stack % PGSIZE);
 112:	29 c6                	sub    %eax,%esi
   sbrk( ((uint)stack - (uint)sbrk(0)) + PGSIZE/2 );
 114:	6a 00                	push   $0x0
     stack = stack + (PGSIZE - (uint)stack % PGSIZE);
 116:	81 c6 00 10 00 00    	add    $0x1000,%esi
   sbrk( ((uint)stack - (uint)sbrk(0)) + PGSIZE/2 );
 11c:	e8 5b 04 00 00       	call   57c <sbrk>
 121:	89 c2                	mov    %eax,%edx
 123:	8d 86 00 08 00 00    	lea    0x800(%esi),%eax
 129:	29 d0                	sub    %edx,%eax
 12b:	89 04 24             	mov    %eax,(%esp)
 12e:	e8 49 04 00 00       	call   57c <sbrk>
   assert((uint)stack % PGSIZE == 0);
 133:	83 c4 10             	add    $0x10,%esp
 136:	f7 c6 ff 0f 00 00    	test   $0xfff,%esi
 13c:	74 97                	je     d5 <main+0xd5>
 13e:	6a 27                	push   $0x27
 140:	68 88 09 00 00       	push   $0x988
 145:	68 91 09 00 00       	push   $0x991
 14a:	6a 01                	push   $0x1
 14c:	e8 0f 05 00 00       	call   660 <printf>
 151:	83 c4 0c             	add    $0xc,%esp
 154:	68 c4 09 00 00       	push   $0x9c4
 159:	e9 17 ff ff ff       	jmp    75 <main+0x75>
   assert(p != NULL);
 15e:	6a 1b                	push   $0x1b
 160:	68 88 09 00 00       	push   $0x988
 165:	68 91 09 00 00       	push   $0x991
 16a:	6a 01                	push   $0x1
 16c:	e8 ef 04 00 00       	call   660 <printf>
 171:	83 c4 0c             	add    $0xc,%esp
 174:	68 99 09 00 00       	push   $0x999
 179:	e9 f7 fe ff ff       	jmp    75 <main+0x75>

   assert(clone(worker, 0, 0, stack) == -1);
 17e:	56                   	push   %esi
 17f:	6a 00                	push   $0x0
 181:	6a 00                	push   $0x0
 183:	68 c0 01 00 00       	push   $0x1c0
 188:	e8 07 04 00 00       	call   594 <clone>
 18d:	83 c4 10             	add    $0x10,%esp
 190:	83 c0 01             	add    $0x1,%eax
 193:	74 07                	je     19c <main+0x19c>
 195:	6a 2a                	push   $0x2a
 197:	e9 c0 fe ff ff       	jmp    5c <main+0x5c>
   
   printf(1, "TEST PASSED\n");
 19c:	50                   	push   %eax
 19d:	50                   	push   %eax
 19e:	68 de 09 00 00       	push   $0x9de
 1a3:	6a 01                	push   $0x1
 1a5:	e8 b6 04 00 00       	call   660 <printf>
   free(p);
 1aa:	89 1c 24             	mov    %ebx,(%esp)
 1ad:	e8 4e 06 00 00       	call   800 <free>
   exit();
 1b2:	e8 3d 03 00 00       	call   4f4 <exit>
 1b7:	66 90                	xchg   %ax,%ax
 1b9:	66 90                	xchg   %ax,%ax
 1bb:	66 90                	xchg   %ax,%ax
 1bd:	66 90                	xchg   %ax,%ax
 1bf:	90                   	nop

000001c0 <worker>:
}

void
worker(void *arg1, void *arg2) {
 1c0:	55                   	push   %ebp
 1c1:	89 e5                	mov    %esp,%ebp
 1c3:	83 ec 08             	sub    $0x8,%esp
   exit();
 1c6:	e8 29 03 00 00       	call   4f4 <exit>
 1cb:	66 90                	xchg   %ax,%ax
 1cd:	66 90                	xchg   %ax,%ax
 1cf:	90                   	nop

000001d0 <strcpy>:
#include "x86.h"
#define PGSIZE 4096

char*
strcpy(char *s, const char *t)
{
 1d0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 1d1:	31 c0                	xor    %eax,%eax
{
 1d3:	89 e5                	mov    %esp,%ebp
 1d5:	53                   	push   %ebx
 1d6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1d9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 1dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 1e0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 1e4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 1e7:	83 c0 01             	add    $0x1,%eax
 1ea:	84 d2                	test   %dl,%dl
 1ec:	75 f2                	jne    1e0 <strcpy+0x10>
    ;
  return os;
}
 1ee:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1f1:	89 c8                	mov    %ecx,%eax
 1f3:	c9                   	leave  
 1f4:	c3                   	ret    
 1f5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000200 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 200:	55                   	push   %ebp
 201:	89 e5                	mov    %esp,%ebp
 203:	53                   	push   %ebx
 204:	8b 55 08             	mov    0x8(%ebp),%edx
 207:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 20a:	0f b6 02             	movzbl (%edx),%eax
 20d:	84 c0                	test   %al,%al
 20f:	75 17                	jne    228 <strcmp+0x28>
 211:	eb 3a                	jmp    24d <strcmp+0x4d>
 213:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 217:	90                   	nop
 218:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 21c:	83 c2 01             	add    $0x1,%edx
 21f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 222:	84 c0                	test   %al,%al
 224:	74 1a                	je     240 <strcmp+0x40>
    p++, q++;
 226:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 228:	0f b6 19             	movzbl (%ecx),%ebx
 22b:	38 c3                	cmp    %al,%bl
 22d:	74 e9                	je     218 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 22f:	29 d8                	sub    %ebx,%eax
}
 231:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 234:	c9                   	leave  
 235:	c3                   	ret    
 236:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 23d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 240:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 244:	31 c0                	xor    %eax,%eax
 246:	29 d8                	sub    %ebx,%eax
}
 248:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 24b:	c9                   	leave  
 24c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 24d:	0f b6 19             	movzbl (%ecx),%ebx
 250:	31 c0                	xor    %eax,%eax
 252:	eb db                	jmp    22f <strcmp+0x2f>
 254:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 25b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 25f:	90                   	nop

00000260 <strlen>:

uint
strlen(const char *s)
{
 260:	55                   	push   %ebp
 261:	89 e5                	mov    %esp,%ebp
 263:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 266:	80 3a 00             	cmpb   $0x0,(%edx)
 269:	74 15                	je     280 <strlen+0x20>
 26b:	31 c0                	xor    %eax,%eax
 26d:	8d 76 00             	lea    0x0(%esi),%esi
 270:	83 c0 01             	add    $0x1,%eax
 273:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 277:	89 c1                	mov    %eax,%ecx
 279:	75 f5                	jne    270 <strlen+0x10>
    ;
  return n;
}
 27b:	89 c8                	mov    %ecx,%eax
 27d:	5d                   	pop    %ebp
 27e:	c3                   	ret    
 27f:	90                   	nop
  for(n = 0; s[n]; n++)
 280:	31 c9                	xor    %ecx,%ecx
}
 282:	5d                   	pop    %ebp
 283:	89 c8                	mov    %ecx,%eax
 285:	c3                   	ret    
 286:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 28d:	8d 76 00             	lea    0x0(%esi),%esi

00000290 <memset>:

void*
memset(void *dst, int c, uint n)
{
 290:	55                   	push   %ebp
 291:	89 e5                	mov    %esp,%ebp
 293:	57                   	push   %edi
 294:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 297:	8b 4d 10             	mov    0x10(%ebp),%ecx
 29a:	8b 45 0c             	mov    0xc(%ebp),%eax
 29d:	89 d7                	mov    %edx,%edi
 29f:	fc                   	cld    
 2a0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 2a2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 2a5:	89 d0                	mov    %edx,%eax
 2a7:	c9                   	leave  
 2a8:	c3                   	ret    
 2a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000002b0 <strchr>:

char*
strchr(const char *s, char c)
{
 2b0:	55                   	push   %ebp
 2b1:	89 e5                	mov    %esp,%ebp
 2b3:	8b 45 08             	mov    0x8(%ebp),%eax
 2b6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 2ba:	0f b6 10             	movzbl (%eax),%edx
 2bd:	84 d2                	test   %dl,%dl
 2bf:	75 12                	jne    2d3 <strchr+0x23>
 2c1:	eb 1d                	jmp    2e0 <strchr+0x30>
 2c3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2c7:	90                   	nop
 2c8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 2cc:	83 c0 01             	add    $0x1,%eax
 2cf:	84 d2                	test   %dl,%dl
 2d1:	74 0d                	je     2e0 <strchr+0x30>
    if(*s == c)
 2d3:	38 d1                	cmp    %dl,%cl
 2d5:	75 f1                	jne    2c8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 2d7:	5d                   	pop    %ebp
 2d8:	c3                   	ret    
 2d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 2e0:	31 c0                	xor    %eax,%eax
}
 2e2:	5d                   	pop    %ebp
 2e3:	c3                   	ret    
 2e4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2ef:	90                   	nop

000002f0 <gets>:

char*
gets(char *buf, int max)
{
 2f0:	55                   	push   %ebp
 2f1:	89 e5                	mov    %esp,%ebp
 2f3:	57                   	push   %edi
 2f4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 2f5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 2f8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 2f9:	31 db                	xor    %ebx,%ebx
{
 2fb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 2fe:	eb 27                	jmp    327 <gets+0x37>
    cc = read(0, &c, 1);
 300:	83 ec 04             	sub    $0x4,%esp
 303:	6a 01                	push   $0x1
 305:	57                   	push   %edi
 306:	6a 00                	push   $0x0
 308:	e8 ff 01 00 00       	call   50c <read>
    if(cc < 1)
 30d:	83 c4 10             	add    $0x10,%esp
 310:	85 c0                	test   %eax,%eax
 312:	7e 1d                	jle    331 <gets+0x41>
      break;
    buf[i++] = c;
 314:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 318:	8b 55 08             	mov    0x8(%ebp),%edx
 31b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 31f:	3c 0a                	cmp    $0xa,%al
 321:	74 1d                	je     340 <gets+0x50>
 323:	3c 0d                	cmp    $0xd,%al
 325:	74 19                	je     340 <gets+0x50>
  for(i=0; i+1 < max; ){
 327:	89 de                	mov    %ebx,%esi
 329:	83 c3 01             	add    $0x1,%ebx
 32c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 32f:	7c cf                	jl     300 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 331:	8b 45 08             	mov    0x8(%ebp),%eax
 334:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 338:	8d 65 f4             	lea    -0xc(%ebp),%esp
 33b:	5b                   	pop    %ebx
 33c:	5e                   	pop    %esi
 33d:	5f                   	pop    %edi
 33e:	5d                   	pop    %ebp
 33f:	c3                   	ret    
  buf[i] = '\0';
 340:	8b 45 08             	mov    0x8(%ebp),%eax
 343:	89 de                	mov    %ebx,%esi
 345:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 349:	8d 65 f4             	lea    -0xc(%ebp),%esp
 34c:	5b                   	pop    %ebx
 34d:	5e                   	pop    %esi
 34e:	5f                   	pop    %edi
 34f:	5d                   	pop    %ebp
 350:	c3                   	ret    
 351:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 358:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 35f:	90                   	nop

00000360 <stat>:

int
stat(const char *n, struct stat *st)
{
 360:	55                   	push   %ebp
 361:	89 e5                	mov    %esp,%ebp
 363:	56                   	push   %esi
 364:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 365:	83 ec 08             	sub    $0x8,%esp
 368:	6a 00                	push   $0x0
 36a:	ff 75 08             	push   0x8(%ebp)
 36d:	e8 c2 01 00 00       	call   534 <open>
  if(fd < 0)
 372:	83 c4 10             	add    $0x10,%esp
 375:	85 c0                	test   %eax,%eax
 377:	78 27                	js     3a0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 379:	83 ec 08             	sub    $0x8,%esp
 37c:	ff 75 0c             	push   0xc(%ebp)
 37f:	89 c3                	mov    %eax,%ebx
 381:	50                   	push   %eax
 382:	e8 c5 01 00 00       	call   54c <fstat>
  close(fd);
 387:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 38a:	89 c6                	mov    %eax,%esi
  close(fd);
 38c:	e8 8b 01 00 00       	call   51c <close>
  return r;
 391:	83 c4 10             	add    $0x10,%esp
}
 394:	8d 65 f8             	lea    -0x8(%ebp),%esp
 397:	89 f0                	mov    %esi,%eax
 399:	5b                   	pop    %ebx
 39a:	5e                   	pop    %esi
 39b:	5d                   	pop    %ebp
 39c:	c3                   	ret    
 39d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 3a0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 3a5:	eb ed                	jmp    394 <stat+0x34>
 3a7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ae:	66 90                	xchg   %ax,%ax

000003b0 <atoi>:

int
atoi(const char *s)
{
 3b0:	55                   	push   %ebp
 3b1:	89 e5                	mov    %esp,%ebp
 3b3:	53                   	push   %ebx
 3b4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 3b7:	0f be 02             	movsbl (%edx),%eax
 3ba:	8d 48 d0             	lea    -0x30(%eax),%ecx
 3bd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 3c0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 3c5:	77 1e                	ja     3e5 <atoi+0x35>
 3c7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ce:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 3d0:	83 c2 01             	add    $0x1,%edx
 3d3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 3d6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 3da:	0f be 02             	movsbl (%edx),%eax
 3dd:	8d 58 d0             	lea    -0x30(%eax),%ebx
 3e0:	80 fb 09             	cmp    $0x9,%bl
 3e3:	76 eb                	jbe    3d0 <atoi+0x20>
  return n;
}
 3e5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3e8:	89 c8                	mov    %ecx,%eax
 3ea:	c9                   	leave  
 3eb:	c3                   	ret    
 3ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003f0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 3f0:	55                   	push   %ebp
 3f1:	89 e5                	mov    %esp,%ebp
 3f3:	57                   	push   %edi
 3f4:	8b 45 10             	mov    0x10(%ebp),%eax
 3f7:	8b 55 08             	mov    0x8(%ebp),%edx
 3fa:	56                   	push   %esi
 3fb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 3fe:	85 c0                	test   %eax,%eax
 400:	7e 13                	jle    415 <memmove+0x25>
 402:	01 d0                	add    %edx,%eax
  dst = vdst;
 404:	89 d7                	mov    %edx,%edi
 406:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 40d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 410:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 411:	39 f8                	cmp    %edi,%eax
 413:	75 fb                	jne    410 <memmove+0x20>
  return vdst;
}
 415:	5e                   	pop    %esi
 416:	89 d0                	mov    %edx,%eax
 418:	5f                   	pop    %edi
 419:	5d                   	pop    %ebp
 41a:	c3                   	ret    
 41b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 41f:	90                   	nop

00000420 <thread_create>:

// call malloc() to create a new user stack
// use clone() to create the child thread -> get it running
// returns the newly created PID to the parent && 0 to child if successful
// returns -1 if unsucessful
int thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2) {
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	83 ec 14             	sub    $0x14,%esp

  void *stack;
  if ((stack= malloc(2*PGSIZE)) == 0){
 426:	68 00 20 00 00       	push   $0x2000
 42b:	e8 60 04 00 00       	call   890 <malloc>
 430:	83 c4 10             	add    $0x10,%esp
 433:	85 c0                	test   %eax,%eax
 435:	74 25                	je     45c <thread_create+0x3c>
    return -1;
  }

  // stack - page aligned
  if((uint)stack % PGSIZE)
 437:	89 c2                	mov    %eax,%edx
 439:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 43f:	74 07                	je     448 <thread_create+0x28>
    stack = stack + (PGSIZE - (uint)stack % PGSIZE);
 441:	29 d0                	sub    %edx,%eax
 443:	05 00 10 00 00       	add    $0x1000,%eax

  int childPid = clone(start_routine, arg1, arg2, stack);
 448:	50                   	push   %eax
 449:	ff 75 10             	push   0x10(%ebp)
 44c:	ff 75 0c             	push   0xc(%ebp)
 44f:	ff 75 08             	push   0x8(%ebp)
 452:	e8 3d 01 00 00       	call   594 <clone>

  return childPid;
 457:	83 c4 10             	add    $0x10,%esp
}
 45a:	c9                   	leave  
 45b:	c3                   	ret    
 45c:	c9                   	leave  
    return -1;
 45d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
 462:	c3                   	ret    
 463:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 46a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000470 <thread_join>:

// call join() and frees the user stack
// returns waited-for PID if successful, -1 otherwise
int thread_join() {
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	53                   	push   %ebx

  void *stack;
  int childpid = join(&stack);
 474:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join() {
 477:	83 ec 20             	sub    $0x20,%esp
  int childpid = join(&stack);
 47a:	50                   	push   %eax
 47b:	e8 1c 01 00 00       	call   59c <join>
 480:	89 c3                	mov    %eax,%ebx
  free(stack);
 482:	58                   	pop    %eax
 483:	ff 75 f4             	push   -0xc(%ebp)
 486:	e8 75 03 00 00       	call   800 <free>
  return childpid;
}
 48b:	89 d8                	mov    %ebx,%eax
 48d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 490:	c9                   	leave  
 491:	c3                   	ret    
 492:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 499:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000004a0 <lock_init>:
      : "memory"
    );
    return value;
}
 
void lock_init(lock_t *lock) {
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 4a6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 4ac:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 4b3:	5d                   	pop    %ebp
 4b4:	c3                   	ret    
 4b5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004c0 <lock_acquire>:

void lock_acquire(lock_t *lock) {
 4c0:	55                   	push   %ebp
 4c1:	89 e5                	mov    %esp,%ebp
 4c3:	8b 55 08             	mov    0x8(%ebp),%edx
    __asm__ volatile("lock; xaddl %0, %1"
 4c6:	8b 02                	mov    (%edx),%eax
 4c8:	f0 0f c1 02          	lock xadd %eax,(%edx)
  int myturn = FetchAndAdd(&lock->ticket, lock->ticket);
  while (lock->turn != myturn)  ; // spin
 4cc:	8b 52 04             	mov    0x4(%edx),%edx
 4cf:	90                   	nop
 4d0:	39 c2                	cmp    %eax,%edx
 4d2:	75 fc                	jne    4d0 <lock_acquire+0x10>
}
 4d4:	5d                   	pop    %ebp
 4d5:	c3                   	ret    
 4d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4dd:	8d 76 00             	lea    0x0(%esi),%esi

000004e0 <lock_release>:

void lock_release(lock_t *lock) {
 4e0:	55                   	push   %ebp
 4e1:	89 e5                	mov    %esp,%ebp
 4e3:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 4e6:	83 40 04 01          	addl   $0x1,0x4(%eax)
 4ea:	5d                   	pop    %ebp
 4eb:	c3                   	ret    

000004ec <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 4ec:	b8 01 00 00 00       	mov    $0x1,%eax
 4f1:	cd 40                	int    $0x40
 4f3:	c3                   	ret    

000004f4 <exit>:
SYSCALL(exit)
 4f4:	b8 02 00 00 00       	mov    $0x2,%eax
 4f9:	cd 40                	int    $0x40
 4fb:	c3                   	ret    

000004fc <wait>:
SYSCALL(wait)
 4fc:	b8 03 00 00 00       	mov    $0x3,%eax
 501:	cd 40                	int    $0x40
 503:	c3                   	ret    

00000504 <pipe>:
SYSCALL(pipe)
 504:	b8 04 00 00 00       	mov    $0x4,%eax
 509:	cd 40                	int    $0x40
 50b:	c3                   	ret    

0000050c <read>:
SYSCALL(read)
 50c:	b8 05 00 00 00       	mov    $0x5,%eax
 511:	cd 40                	int    $0x40
 513:	c3                   	ret    

00000514 <write>:
SYSCALL(write)
 514:	b8 10 00 00 00       	mov    $0x10,%eax
 519:	cd 40                	int    $0x40
 51b:	c3                   	ret    

0000051c <close>:
SYSCALL(close)
 51c:	b8 15 00 00 00       	mov    $0x15,%eax
 521:	cd 40                	int    $0x40
 523:	c3                   	ret    

00000524 <kill>:
SYSCALL(kill)
 524:	b8 06 00 00 00       	mov    $0x6,%eax
 529:	cd 40                	int    $0x40
 52b:	c3                   	ret    

0000052c <exec>:
SYSCALL(exec)
 52c:	b8 07 00 00 00       	mov    $0x7,%eax
 531:	cd 40                	int    $0x40
 533:	c3                   	ret    

00000534 <open>:
SYSCALL(open)
 534:	b8 0f 00 00 00       	mov    $0xf,%eax
 539:	cd 40                	int    $0x40
 53b:	c3                   	ret    

0000053c <mknod>:
SYSCALL(mknod)
 53c:	b8 11 00 00 00       	mov    $0x11,%eax
 541:	cd 40                	int    $0x40
 543:	c3                   	ret    

00000544 <unlink>:
SYSCALL(unlink)
 544:	b8 12 00 00 00       	mov    $0x12,%eax
 549:	cd 40                	int    $0x40
 54b:	c3                   	ret    

0000054c <fstat>:
SYSCALL(fstat)
 54c:	b8 08 00 00 00       	mov    $0x8,%eax
 551:	cd 40                	int    $0x40
 553:	c3                   	ret    

00000554 <link>:
SYSCALL(link)
 554:	b8 13 00 00 00       	mov    $0x13,%eax
 559:	cd 40                	int    $0x40
 55b:	c3                   	ret    

0000055c <mkdir>:
SYSCALL(mkdir)
 55c:	b8 14 00 00 00       	mov    $0x14,%eax
 561:	cd 40                	int    $0x40
 563:	c3                   	ret    

00000564 <chdir>:
SYSCALL(chdir)
 564:	b8 09 00 00 00       	mov    $0x9,%eax
 569:	cd 40                	int    $0x40
 56b:	c3                   	ret    

0000056c <dup>:
SYSCALL(dup)
 56c:	b8 0a 00 00 00       	mov    $0xa,%eax
 571:	cd 40                	int    $0x40
 573:	c3                   	ret    

00000574 <getpid>:
SYSCALL(getpid)
 574:	b8 0b 00 00 00       	mov    $0xb,%eax
 579:	cd 40                	int    $0x40
 57b:	c3                   	ret    

0000057c <sbrk>:
SYSCALL(sbrk)
 57c:	b8 0c 00 00 00       	mov    $0xc,%eax
 581:	cd 40                	int    $0x40
 583:	c3                   	ret    

00000584 <sleep>:
SYSCALL(sleep)
 584:	b8 0d 00 00 00       	mov    $0xd,%eax
 589:	cd 40                	int    $0x40
 58b:	c3                   	ret    

0000058c <uptime>:
SYSCALL(uptime)
 58c:	b8 0e 00 00 00       	mov    $0xe,%eax
 591:	cd 40                	int    $0x40
 593:	c3                   	ret    

00000594 <clone>:
SYSCALL(clone)
 594:	b8 16 00 00 00       	mov    $0x16,%eax
 599:	cd 40                	int    $0x40
 59b:	c3                   	ret    

0000059c <join>:
SYSCALL(join)
 59c:	b8 17 00 00 00       	mov    $0x17,%eax
 5a1:	cd 40                	int    $0x40
 5a3:	c3                   	ret    
 5a4:	66 90                	xchg   %ax,%ax
 5a6:	66 90                	xchg   %ax,%ax
 5a8:	66 90                	xchg   %ax,%ax
 5aa:	66 90                	xchg   %ax,%ax
 5ac:	66 90                	xchg   %ax,%ax
 5ae:	66 90                	xchg   %ax,%ax

000005b0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 5b0:	55                   	push   %ebp
 5b1:	89 e5                	mov    %esp,%ebp
 5b3:	57                   	push   %edi
 5b4:	56                   	push   %esi
 5b5:	53                   	push   %ebx
 5b6:	83 ec 3c             	sub    $0x3c,%esp
 5b9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 5bc:	89 d1                	mov    %edx,%ecx
{
 5be:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 5c1:	85 d2                	test   %edx,%edx
 5c3:	0f 89 7f 00 00 00    	jns    648 <printint+0x98>
 5c9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 5cd:	74 79                	je     648 <printint+0x98>
    neg = 1;
 5cf:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 5d6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 5d8:	31 db                	xor    %ebx,%ebx
 5da:	8d 75 d7             	lea    -0x29(%ebp),%esi
 5dd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 5e0:	89 c8                	mov    %ecx,%eax
 5e2:	31 d2                	xor    %edx,%edx
 5e4:	89 cf                	mov    %ecx,%edi
 5e6:	f7 75 c4             	divl   -0x3c(%ebp)
 5e9:	0f b6 92 98 0a 00 00 	movzbl 0xa98(%edx),%edx
 5f0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 5f3:	89 d8                	mov    %ebx,%eax
 5f5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 5f8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 5fb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 5fe:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 601:	76 dd                	jbe    5e0 <printint+0x30>
  if(neg)
 603:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 606:	85 c9                	test   %ecx,%ecx
 608:	74 0c                	je     616 <printint+0x66>
    buf[i++] = '-';
 60a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 60f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 611:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 616:	8b 7d b8             	mov    -0x48(%ebp),%edi
 619:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 61d:	eb 07                	jmp    626 <printint+0x76>
 61f:	90                   	nop
    putc(fd, buf[i]);
 620:	0f b6 13             	movzbl (%ebx),%edx
 623:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 626:	83 ec 04             	sub    $0x4,%esp
 629:	88 55 d7             	mov    %dl,-0x29(%ebp)
 62c:	6a 01                	push   $0x1
 62e:	56                   	push   %esi
 62f:	57                   	push   %edi
 630:	e8 df fe ff ff       	call   514 <write>
  while(--i >= 0)
 635:	83 c4 10             	add    $0x10,%esp
 638:	39 de                	cmp    %ebx,%esi
 63a:	75 e4                	jne    620 <printint+0x70>
}
 63c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 63f:	5b                   	pop    %ebx
 640:	5e                   	pop    %esi
 641:	5f                   	pop    %edi
 642:	5d                   	pop    %ebp
 643:	c3                   	ret    
 644:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 648:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 64f:	eb 87                	jmp    5d8 <printint+0x28>
 651:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 658:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 65f:	90                   	nop

00000660 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 660:	55                   	push   %ebp
 661:	89 e5                	mov    %esp,%ebp
 663:	57                   	push   %edi
 664:	56                   	push   %esi
 665:	53                   	push   %ebx
 666:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 669:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 66c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 66f:	0f b6 13             	movzbl (%ebx),%edx
 672:	84 d2                	test   %dl,%dl
 674:	74 6a                	je     6e0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 676:	8d 45 10             	lea    0x10(%ebp),%eax
 679:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 67c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 67f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 681:	89 45 d0             	mov    %eax,-0x30(%ebp)
 684:	eb 36                	jmp    6bc <printf+0x5c>
 686:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 68d:	8d 76 00             	lea    0x0(%esi),%esi
 690:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 693:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 698:	83 f8 25             	cmp    $0x25,%eax
 69b:	74 15                	je     6b2 <printf+0x52>
  write(fd, &c, 1);
 69d:	83 ec 04             	sub    $0x4,%esp
 6a0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 6a3:	6a 01                	push   $0x1
 6a5:	57                   	push   %edi
 6a6:	56                   	push   %esi
 6a7:	e8 68 fe ff ff       	call   514 <write>
 6ac:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 6af:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 6b2:	0f b6 13             	movzbl (%ebx),%edx
 6b5:	83 c3 01             	add    $0x1,%ebx
 6b8:	84 d2                	test   %dl,%dl
 6ba:	74 24                	je     6e0 <printf+0x80>
    c = fmt[i] & 0xff;
 6bc:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 6bf:	85 c9                	test   %ecx,%ecx
 6c1:	74 cd                	je     690 <printf+0x30>
      }
    } else if(state == '%'){
 6c3:	83 f9 25             	cmp    $0x25,%ecx
 6c6:	75 ea                	jne    6b2 <printf+0x52>
      if(c == 'd'){
 6c8:	83 f8 25             	cmp    $0x25,%eax
 6cb:	0f 84 07 01 00 00    	je     7d8 <printf+0x178>
 6d1:	83 e8 63             	sub    $0x63,%eax
 6d4:	83 f8 15             	cmp    $0x15,%eax
 6d7:	77 17                	ja     6f0 <printf+0x90>
 6d9:	ff 24 85 40 0a 00 00 	jmp    *0xa40(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 6e0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6e3:	5b                   	pop    %ebx
 6e4:	5e                   	pop    %esi
 6e5:	5f                   	pop    %edi
 6e6:	5d                   	pop    %ebp
 6e7:	c3                   	ret    
 6e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6ef:	90                   	nop
  write(fd, &c, 1);
 6f0:	83 ec 04             	sub    $0x4,%esp
 6f3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 6f6:	6a 01                	push   $0x1
 6f8:	57                   	push   %edi
 6f9:	56                   	push   %esi
 6fa:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 6fe:	e8 11 fe ff ff       	call   514 <write>
        putc(fd, c);
 703:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 707:	83 c4 0c             	add    $0xc,%esp
 70a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 70d:	6a 01                	push   $0x1
 70f:	57                   	push   %edi
 710:	56                   	push   %esi
 711:	e8 fe fd ff ff       	call   514 <write>
        putc(fd, c);
 716:	83 c4 10             	add    $0x10,%esp
      state = 0;
 719:	31 c9                	xor    %ecx,%ecx
 71b:	eb 95                	jmp    6b2 <printf+0x52>
 71d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 720:	83 ec 0c             	sub    $0xc,%esp
 723:	b9 10 00 00 00       	mov    $0x10,%ecx
 728:	6a 00                	push   $0x0
 72a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 72d:	8b 10                	mov    (%eax),%edx
 72f:	89 f0                	mov    %esi,%eax
 731:	e8 7a fe ff ff       	call   5b0 <printint>
        ap++;
 736:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 73a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 73d:	31 c9                	xor    %ecx,%ecx
 73f:	e9 6e ff ff ff       	jmp    6b2 <printf+0x52>
 744:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 748:	8b 45 d0             	mov    -0x30(%ebp),%eax
 74b:	8b 10                	mov    (%eax),%edx
        ap++;
 74d:	83 c0 04             	add    $0x4,%eax
 750:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 753:	85 d2                	test   %edx,%edx
 755:	0f 84 8d 00 00 00    	je     7e8 <printf+0x188>
        while(*s != 0){
 75b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 75e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 760:	84 c0                	test   %al,%al
 762:	0f 84 4a ff ff ff    	je     6b2 <printf+0x52>
 768:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 76b:	89 d3                	mov    %edx,%ebx
 76d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 770:	83 ec 04             	sub    $0x4,%esp
          s++;
 773:	83 c3 01             	add    $0x1,%ebx
 776:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 779:	6a 01                	push   $0x1
 77b:	57                   	push   %edi
 77c:	56                   	push   %esi
 77d:	e8 92 fd ff ff       	call   514 <write>
        while(*s != 0){
 782:	0f b6 03             	movzbl (%ebx),%eax
 785:	83 c4 10             	add    $0x10,%esp
 788:	84 c0                	test   %al,%al
 78a:	75 e4                	jne    770 <printf+0x110>
      state = 0;
 78c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 78f:	31 c9                	xor    %ecx,%ecx
 791:	e9 1c ff ff ff       	jmp    6b2 <printf+0x52>
 796:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 79d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 7a0:	83 ec 0c             	sub    $0xc,%esp
 7a3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 7a8:	6a 01                	push   $0x1
 7aa:	e9 7b ff ff ff       	jmp    72a <printf+0xca>
 7af:	90                   	nop
        putc(fd, *ap);
 7b0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 7b3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 7b6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 7b8:	6a 01                	push   $0x1
 7ba:	57                   	push   %edi
 7bb:	56                   	push   %esi
        putc(fd, *ap);
 7bc:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 7bf:	e8 50 fd ff ff       	call   514 <write>
        ap++;
 7c4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 7c8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7cb:	31 c9                	xor    %ecx,%ecx
 7cd:	e9 e0 fe ff ff       	jmp    6b2 <printf+0x52>
 7d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 7d8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 7db:	83 ec 04             	sub    $0x4,%esp
 7de:	e9 2a ff ff ff       	jmp    70d <printf+0xad>
 7e3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 7e7:	90                   	nop
          s = "(null)";
 7e8:	ba 38 0a 00 00       	mov    $0xa38,%edx
        while(*s != 0){
 7ed:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 7f0:	b8 28 00 00 00       	mov    $0x28,%eax
 7f5:	89 d3                	mov    %edx,%ebx
 7f7:	e9 74 ff ff ff       	jmp    770 <printf+0x110>
 7fc:	66 90                	xchg   %ax,%ax
 7fe:	66 90                	xchg   %ax,%ax

00000800 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 800:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 801:	a1 14 0e 00 00       	mov    0xe14,%eax
{
 806:	89 e5                	mov    %esp,%ebp
 808:	57                   	push   %edi
 809:	56                   	push   %esi
 80a:	53                   	push   %ebx
 80b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 80e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 811:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 818:	89 c2                	mov    %eax,%edx
 81a:	8b 00                	mov    (%eax),%eax
 81c:	39 ca                	cmp    %ecx,%edx
 81e:	73 30                	jae    850 <free+0x50>
 820:	39 c1                	cmp    %eax,%ecx
 822:	72 04                	jb     828 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 824:	39 c2                	cmp    %eax,%edx
 826:	72 f0                	jb     818 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 828:	8b 73 fc             	mov    -0x4(%ebx),%esi
 82b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 82e:	39 f8                	cmp    %edi,%eax
 830:	74 30                	je     862 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 832:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 835:	8b 42 04             	mov    0x4(%edx),%eax
 838:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 83b:	39 f1                	cmp    %esi,%ecx
 83d:	74 3a                	je     879 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 83f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 841:	5b                   	pop    %ebx
  freep = p;
 842:	89 15 14 0e 00 00    	mov    %edx,0xe14
}
 848:	5e                   	pop    %esi
 849:	5f                   	pop    %edi
 84a:	5d                   	pop    %ebp
 84b:	c3                   	ret    
 84c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 850:	39 c2                	cmp    %eax,%edx
 852:	72 c4                	jb     818 <free+0x18>
 854:	39 c1                	cmp    %eax,%ecx
 856:	73 c0                	jae    818 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 858:	8b 73 fc             	mov    -0x4(%ebx),%esi
 85b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 85e:	39 f8                	cmp    %edi,%eax
 860:	75 d0                	jne    832 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 862:	03 70 04             	add    0x4(%eax),%esi
 865:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 868:	8b 02                	mov    (%edx),%eax
 86a:	8b 00                	mov    (%eax),%eax
 86c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 86f:	8b 42 04             	mov    0x4(%edx),%eax
 872:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 875:	39 f1                	cmp    %esi,%ecx
 877:	75 c6                	jne    83f <free+0x3f>
    p->s.size += bp->s.size;
 879:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 87c:	89 15 14 0e 00 00    	mov    %edx,0xe14
    p->s.size += bp->s.size;
 882:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 885:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 888:	89 0a                	mov    %ecx,(%edx)
}
 88a:	5b                   	pop    %ebx
 88b:	5e                   	pop    %esi
 88c:	5f                   	pop    %edi
 88d:	5d                   	pop    %ebp
 88e:	c3                   	ret    
 88f:	90                   	nop

00000890 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 890:	55                   	push   %ebp
 891:	89 e5                	mov    %esp,%ebp
 893:	57                   	push   %edi
 894:	56                   	push   %esi
 895:	53                   	push   %ebx
 896:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 899:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 89c:	8b 3d 14 0e 00 00    	mov    0xe14,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8a2:	8d 70 07             	lea    0x7(%eax),%esi
 8a5:	c1 ee 03             	shr    $0x3,%esi
 8a8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 8ab:	85 ff                	test   %edi,%edi
 8ad:	0f 84 9d 00 00 00    	je     950 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8b3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 8b5:	8b 4a 04             	mov    0x4(%edx),%ecx
 8b8:	39 f1                	cmp    %esi,%ecx
 8ba:	73 6a                	jae    926 <malloc+0x96>
 8bc:	bb 00 10 00 00       	mov    $0x1000,%ebx
 8c1:	39 de                	cmp    %ebx,%esi
 8c3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 8c6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 8cd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8d0:	eb 17                	jmp    8e9 <malloc+0x59>
 8d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8d8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 8da:	8b 48 04             	mov    0x4(%eax),%ecx
 8dd:	39 f1                	cmp    %esi,%ecx
 8df:	73 4f                	jae    930 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 8e1:	8b 3d 14 0e 00 00    	mov    0xe14,%edi
 8e7:	89 c2                	mov    %eax,%edx
 8e9:	39 d7                	cmp    %edx,%edi
 8eb:	75 eb                	jne    8d8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 8ed:	83 ec 0c             	sub    $0xc,%esp
 8f0:	ff 75 e4             	push   -0x1c(%ebp)
 8f3:	e8 84 fc ff ff       	call   57c <sbrk>
  if(p == (char*)-1)
 8f8:	83 c4 10             	add    $0x10,%esp
 8fb:	83 f8 ff             	cmp    $0xffffffff,%eax
 8fe:	74 1c                	je     91c <malloc+0x8c>
  hp->s.size = nu;
 900:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 903:	83 ec 0c             	sub    $0xc,%esp
 906:	83 c0 08             	add    $0x8,%eax
 909:	50                   	push   %eax
 90a:	e8 f1 fe ff ff       	call   800 <free>
  return freep;
 90f:	8b 15 14 0e 00 00    	mov    0xe14,%edx
      if((p = morecore(nunits)) == 0)
 915:	83 c4 10             	add    $0x10,%esp
 918:	85 d2                	test   %edx,%edx
 91a:	75 bc                	jne    8d8 <malloc+0x48>
        return 0;
  }
}
 91c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 91f:	31 c0                	xor    %eax,%eax
}
 921:	5b                   	pop    %ebx
 922:	5e                   	pop    %esi
 923:	5f                   	pop    %edi
 924:	5d                   	pop    %ebp
 925:	c3                   	ret    
    if(p->s.size >= nunits){
 926:	89 d0                	mov    %edx,%eax
 928:	89 fa                	mov    %edi,%edx
 92a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 930:	39 ce                	cmp    %ecx,%esi
 932:	74 4c                	je     980 <malloc+0xf0>
        p->s.size -= nunits;
 934:	29 f1                	sub    %esi,%ecx
 936:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 939:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 93c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 93f:	89 15 14 0e 00 00    	mov    %edx,0xe14
}
 945:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 948:	83 c0 08             	add    $0x8,%eax
}
 94b:	5b                   	pop    %ebx
 94c:	5e                   	pop    %esi
 94d:	5f                   	pop    %edi
 94e:	5d                   	pop    %ebp
 94f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 950:	c7 05 14 0e 00 00 18 	movl   $0xe18,0xe14
 957:	0e 00 00 
    base.s.size = 0;
 95a:	bf 18 0e 00 00       	mov    $0xe18,%edi
    base.s.ptr = freep = prevp = &base;
 95f:	c7 05 18 0e 00 00 18 	movl   $0xe18,0xe18
 966:	0e 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 969:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 96b:	c7 05 1c 0e 00 00 00 	movl   $0x0,0xe1c
 972:	00 00 00 
    if(p->s.size >= nunits){
 975:	e9 42 ff ff ff       	jmp    8bc <malloc+0x2c>
 97a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 980:	8b 08                	mov    (%eax),%ecx
 982:	89 0a                	mov    %ecx,(%edx)
 984:	eb b9                	jmp    93f <malloc+0xaf>
