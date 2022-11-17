
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
  13:	e8 4e 05 00 00       	call   566 <getpid>
   void *stack, *p = malloc(PGSIZE * 2);
  18:	83 ec 0c             	sub    $0xc,%esp
  1b:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  20:	a3 00 0e 00 00       	mov    %eax,0xe00
   void *stack, *p = malloc(PGSIZE * 2);
  25:	e8 56 08 00 00       	call   880 <malloc>
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
  4d:	e8 34 05 00 00       	call   586 <clone>
  52:	83 c4 10             	add    $0x10,%esp
  55:	83 f8 ff             	cmp    $0xffffffff,%eax
  58:	74 46                	je     a0 <main+0xa0>
  5a:	6a 21                	push   $0x21
  5c:	68 78 09 00 00       	push   $0x978
  61:	68 81 09 00 00       	push   $0x981
  66:	6a 01                	push   $0x1
  68:	e8 e3 05 00 00       	call   650 <printf>
  6d:	83 c4 0c             	add    $0xc,%esp
  70:	68 dc 09 00 00       	push   $0x9dc
  75:	68 93 09 00 00       	push   $0x993
  7a:	6a 01                	push   $0x1
  7c:	e8 cf 05 00 00       	call   650 <printf>
  81:	5a                   	pop    %edx
  82:	59                   	pop    %ecx
  83:	68 a7 09 00 00       	push   $0x9a7
  88:	6a 01                	push   $0x1
  8a:	e8 c1 05 00 00       	call   650 <printf>
  8f:	5b                   	pop    %ebx
  90:	ff 35 00 0e 00 00    	push   0xe00
  96:	e8 7b 04 00 00       	call   516 <kill>
  9b:	e8 46 04 00 00       	call   4e6 <exit>

   stack = sbrk(0);
  a0:	83 ec 0c             	sub    $0xc,%esp
  a3:	6a 00                	push   $0x0
  a5:	e8 c4 04 00 00       	call   56e <sbrk>
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
  bb:	e8 ae 04 00 00       	call   56e <sbrk>
  c0:	89 c2                	mov    %eax,%edx
  c2:	8d 86 00 08 00 00    	lea    0x800(%esi),%eax
  c8:	29 d0                	sub    %edx,%eax
  ca:	89 04 24             	mov    %eax,(%esp)
  cd:	e8 9c 04 00 00       	call   56e <sbrk>
  d2:	83 c4 10             	add    $0x10,%esp
   assert((uint)stack % PGSIZE == 0);
   assert((uint)sbrk(0) - (uint)stack == PGSIZE/2);
  d5:	83 ec 0c             	sub    $0xc,%esp
  d8:	6a 00                	push   $0x0
  da:	e8 8f 04 00 00       	call   56e <sbrk>
  df:	83 c4 10             	add    $0x10,%esp
  e2:	29 f0                	sub    %esi,%eax
  e4:	3d 00 08 00 00       	cmp    $0x800,%eax
  e9:	0f 84 8f 00 00 00    	je     17e <main+0x17e>
  ef:	6a 28                	push   $0x28
  f1:	68 78 09 00 00       	push   $0x978
  f6:	68 81 09 00 00       	push   $0x981
  fb:	6a 01                	push   $0x1
  fd:	e8 4e 05 00 00       	call   650 <printf>
 102:	83 c4 0c             	add    $0xc,%esp
 105:	68 00 0a 00 00       	push   $0xa00
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
 11c:	e8 4d 04 00 00       	call   56e <sbrk>
 121:	89 c2                	mov    %eax,%edx
 123:	8d 86 00 08 00 00    	lea    0x800(%esi),%eax
 129:	29 d0                	sub    %edx,%eax
 12b:	89 04 24             	mov    %eax,(%esp)
 12e:	e8 3b 04 00 00       	call   56e <sbrk>
   assert((uint)stack % PGSIZE == 0);
 133:	83 c4 10             	add    $0x10,%esp
 136:	f7 c6 ff 0f 00 00    	test   $0xfff,%esi
 13c:	74 97                	je     d5 <main+0xd5>
 13e:	6a 27                	push   $0x27
 140:	68 78 09 00 00       	push   $0x978
 145:	68 81 09 00 00       	push   $0x981
 14a:	6a 01                	push   $0x1
 14c:	e8 ff 04 00 00       	call   650 <printf>
 151:	83 c4 0c             	add    $0xc,%esp
 154:	68 b4 09 00 00       	push   $0x9b4
 159:	e9 17 ff ff ff       	jmp    75 <main+0x75>
   assert(p != NULL);
 15e:	6a 1b                	push   $0x1b
 160:	68 78 09 00 00       	push   $0x978
 165:	68 81 09 00 00       	push   $0x981
 16a:	6a 01                	push   $0x1
 16c:	e8 df 04 00 00       	call   650 <printf>
 171:	83 c4 0c             	add    $0xc,%esp
 174:	68 89 09 00 00       	push   $0x989
 179:	e9 f7 fe ff ff       	jmp    75 <main+0x75>

   assert(clone(worker, 0, 0, stack) == -1);
 17e:	56                   	push   %esi
 17f:	6a 00                	push   $0x0
 181:	6a 00                	push   $0x0
 183:	68 c0 01 00 00       	push   $0x1c0
 188:	e8 f9 03 00 00       	call   586 <clone>
 18d:	83 c4 10             	add    $0x10,%esp
 190:	83 c0 01             	add    $0x1,%eax
 193:	74 07                	je     19c <main+0x19c>
 195:	6a 2a                	push   $0x2a
 197:	e9 c0 fe ff ff       	jmp    5c <main+0x5c>
   
   printf(1, "TEST PASSED\n");
 19c:	50                   	push   %eax
 19d:	50                   	push   %eax
 19e:	68 ce 09 00 00       	push   $0x9ce
 1a3:	6a 01                	push   $0x1
 1a5:	e8 a6 04 00 00       	call   650 <printf>
   free(p);
 1aa:	89 1c 24             	mov    %ebx,(%esp)
 1ad:	e8 3e 06 00 00       	call   7f0 <free>
   exit();
 1b2:	e8 2f 03 00 00       	call   4e6 <exit>
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
 1c6:	e8 1b 03 00 00       	call   4e6 <exit>
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
 308:	e8 f1 01 00 00       	call   4fe <read>
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
 36d:	e8 b4 01 00 00       	call   526 <open>
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
 382:	e8 b7 01 00 00       	call   53e <fstat>
  close(fd);
 387:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 38a:	89 c6                	mov    %eax,%esi
  close(fd);
 38c:	e8 7d 01 00 00       	call   50e <close>
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
 42b:	e8 50 04 00 00       	call   880 <malloc>
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
 452:	e8 2f 01 00 00       	call   586 <clone>

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
 47b:	e8 0e 01 00 00       	call   58e <join>
 480:	89 c3                	mov    %eax,%ebx
  free(stack);
 482:	58                   	pop    %eax
 483:	ff 75 f4             	push   -0xc(%ebp)
 486:	e8 65 03 00 00       	call   7f0 <free>
  return childpid;
}
 48b:	89 d8                	mov    %ebx,%eax
 48d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 490:	c9                   	leave  
 491:	c3                   	ret    
 492:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 499:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000004a0 <lock_init>:
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	8b 45 08             	mov    0x8(%ebp),%eax
 4a6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 4ac:	5d                   	pop    %ebp
 4ad:	c3                   	ret    
 4ae:	66 90                	xchg   %ax,%ax

000004b0 <lock_acquire>:
 
void lock_init(lock_t *lock) {
  lock->flag= 0;
}

void lock_acquire(lock_t *lock) {
 4b0:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 4b1:	b9 01 00 00 00       	mov    $0x1,%ecx
 4b6:	89 e5                	mov    %esp,%ebp
 4b8:	8b 55 08             	mov    0x8(%ebp),%edx
 4bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4bf:	90                   	nop
 4c0:	89 c8                	mov    %ecx,%eax
 4c2:	f0 87 02             	lock xchg %eax,(%edx)
  while(xchg((uint*)&lock->flag, (uint)1) != 0)
 4c5:	85 c0                	test   %eax,%eax
 4c7:	75 f7                	jne    4c0 <lock_acquire+0x10>
    ;
}
 4c9:	5d                   	pop    %ebp
 4ca:	c3                   	ret    
 4cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4cf:	90                   	nop

000004d0 <lock_release>:

void lock_release(lock_t *lock) {
 4d0:	55                   	push   %ebp
 4d1:	89 e5                	mov    %esp,%ebp
  lock->flag = 0;
 4d3:	8b 45 08             	mov    0x8(%ebp),%eax
 4d6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 4dc:	5d                   	pop    %ebp
 4dd:	c3                   	ret    

000004de <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 4de:	b8 01 00 00 00       	mov    $0x1,%eax
 4e3:	cd 40                	int    $0x40
 4e5:	c3                   	ret    

000004e6 <exit>:
SYSCALL(exit)
 4e6:	b8 02 00 00 00       	mov    $0x2,%eax
 4eb:	cd 40                	int    $0x40
 4ed:	c3                   	ret    

000004ee <wait>:
SYSCALL(wait)
 4ee:	b8 03 00 00 00       	mov    $0x3,%eax
 4f3:	cd 40                	int    $0x40
 4f5:	c3                   	ret    

000004f6 <pipe>:
SYSCALL(pipe)
 4f6:	b8 04 00 00 00       	mov    $0x4,%eax
 4fb:	cd 40                	int    $0x40
 4fd:	c3                   	ret    

000004fe <read>:
SYSCALL(read)
 4fe:	b8 05 00 00 00       	mov    $0x5,%eax
 503:	cd 40                	int    $0x40
 505:	c3                   	ret    

00000506 <write>:
SYSCALL(write)
 506:	b8 10 00 00 00       	mov    $0x10,%eax
 50b:	cd 40                	int    $0x40
 50d:	c3                   	ret    

0000050e <close>:
SYSCALL(close)
 50e:	b8 15 00 00 00       	mov    $0x15,%eax
 513:	cd 40                	int    $0x40
 515:	c3                   	ret    

00000516 <kill>:
SYSCALL(kill)
 516:	b8 06 00 00 00       	mov    $0x6,%eax
 51b:	cd 40                	int    $0x40
 51d:	c3                   	ret    

0000051e <exec>:
SYSCALL(exec)
 51e:	b8 07 00 00 00       	mov    $0x7,%eax
 523:	cd 40                	int    $0x40
 525:	c3                   	ret    

00000526 <open>:
SYSCALL(open)
 526:	b8 0f 00 00 00       	mov    $0xf,%eax
 52b:	cd 40                	int    $0x40
 52d:	c3                   	ret    

0000052e <mknod>:
SYSCALL(mknod)
 52e:	b8 11 00 00 00       	mov    $0x11,%eax
 533:	cd 40                	int    $0x40
 535:	c3                   	ret    

00000536 <unlink>:
SYSCALL(unlink)
 536:	b8 12 00 00 00       	mov    $0x12,%eax
 53b:	cd 40                	int    $0x40
 53d:	c3                   	ret    

0000053e <fstat>:
SYSCALL(fstat)
 53e:	b8 08 00 00 00       	mov    $0x8,%eax
 543:	cd 40                	int    $0x40
 545:	c3                   	ret    

00000546 <link>:
SYSCALL(link)
 546:	b8 13 00 00 00       	mov    $0x13,%eax
 54b:	cd 40                	int    $0x40
 54d:	c3                   	ret    

0000054e <mkdir>:
SYSCALL(mkdir)
 54e:	b8 14 00 00 00       	mov    $0x14,%eax
 553:	cd 40                	int    $0x40
 555:	c3                   	ret    

00000556 <chdir>:
SYSCALL(chdir)
 556:	b8 09 00 00 00       	mov    $0x9,%eax
 55b:	cd 40                	int    $0x40
 55d:	c3                   	ret    

0000055e <dup>:
SYSCALL(dup)
 55e:	b8 0a 00 00 00       	mov    $0xa,%eax
 563:	cd 40                	int    $0x40
 565:	c3                   	ret    

00000566 <getpid>:
SYSCALL(getpid)
 566:	b8 0b 00 00 00       	mov    $0xb,%eax
 56b:	cd 40                	int    $0x40
 56d:	c3                   	ret    

0000056e <sbrk>:
SYSCALL(sbrk)
 56e:	b8 0c 00 00 00       	mov    $0xc,%eax
 573:	cd 40                	int    $0x40
 575:	c3                   	ret    

00000576 <sleep>:
SYSCALL(sleep)
 576:	b8 0d 00 00 00       	mov    $0xd,%eax
 57b:	cd 40                	int    $0x40
 57d:	c3                   	ret    

0000057e <uptime>:
SYSCALL(uptime)
 57e:	b8 0e 00 00 00       	mov    $0xe,%eax
 583:	cd 40                	int    $0x40
 585:	c3                   	ret    

00000586 <clone>:
SYSCALL(clone)
 586:	b8 16 00 00 00       	mov    $0x16,%eax
 58b:	cd 40                	int    $0x40
 58d:	c3                   	ret    

0000058e <join>:
SYSCALL(join)
 58e:	b8 17 00 00 00       	mov    $0x17,%eax
 593:	cd 40                	int    $0x40
 595:	c3                   	ret    
 596:	66 90                	xchg   %ax,%ax
 598:	66 90                	xchg   %ax,%ax
 59a:	66 90                	xchg   %ax,%ax
 59c:	66 90                	xchg   %ax,%ax
 59e:	66 90                	xchg   %ax,%ax

000005a0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 5a0:	55                   	push   %ebp
 5a1:	89 e5                	mov    %esp,%ebp
 5a3:	57                   	push   %edi
 5a4:	56                   	push   %esi
 5a5:	53                   	push   %ebx
 5a6:	83 ec 3c             	sub    $0x3c,%esp
 5a9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 5ac:	89 d1                	mov    %edx,%ecx
{
 5ae:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 5b1:	85 d2                	test   %edx,%edx
 5b3:	0f 89 7f 00 00 00    	jns    638 <printint+0x98>
 5b9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 5bd:	74 79                	je     638 <printint+0x98>
    neg = 1;
 5bf:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 5c6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 5c8:	31 db                	xor    %ebx,%ebx
 5ca:	8d 75 d7             	lea    -0x29(%ebp),%esi
 5cd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 5d0:	89 c8                	mov    %ecx,%eax
 5d2:	31 d2                	xor    %edx,%edx
 5d4:	89 cf                	mov    %ecx,%edi
 5d6:	f7 75 c4             	divl   -0x3c(%ebp)
 5d9:	0f b6 92 88 0a 00 00 	movzbl 0xa88(%edx),%edx
 5e0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 5e3:	89 d8                	mov    %ebx,%eax
 5e5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 5e8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 5eb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 5ee:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 5f1:	76 dd                	jbe    5d0 <printint+0x30>
  if(neg)
 5f3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 5f6:	85 c9                	test   %ecx,%ecx
 5f8:	74 0c                	je     606 <printint+0x66>
    buf[i++] = '-';
 5fa:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 5ff:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 601:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 606:	8b 7d b8             	mov    -0x48(%ebp),%edi
 609:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 60d:	eb 07                	jmp    616 <printint+0x76>
 60f:	90                   	nop
    putc(fd, buf[i]);
 610:	0f b6 13             	movzbl (%ebx),%edx
 613:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 616:	83 ec 04             	sub    $0x4,%esp
 619:	88 55 d7             	mov    %dl,-0x29(%ebp)
 61c:	6a 01                	push   $0x1
 61e:	56                   	push   %esi
 61f:	57                   	push   %edi
 620:	e8 e1 fe ff ff       	call   506 <write>
  while(--i >= 0)
 625:	83 c4 10             	add    $0x10,%esp
 628:	39 de                	cmp    %ebx,%esi
 62a:	75 e4                	jne    610 <printint+0x70>
}
 62c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 62f:	5b                   	pop    %ebx
 630:	5e                   	pop    %esi
 631:	5f                   	pop    %edi
 632:	5d                   	pop    %ebp
 633:	c3                   	ret    
 634:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 638:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 63f:	eb 87                	jmp    5c8 <printint+0x28>
 641:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 648:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 64f:	90                   	nop

00000650 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 650:	55                   	push   %ebp
 651:	89 e5                	mov    %esp,%ebp
 653:	57                   	push   %edi
 654:	56                   	push   %esi
 655:	53                   	push   %ebx
 656:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 659:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 65c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 65f:	0f b6 13             	movzbl (%ebx),%edx
 662:	84 d2                	test   %dl,%dl
 664:	74 6a                	je     6d0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 666:	8d 45 10             	lea    0x10(%ebp),%eax
 669:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 66c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 66f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 671:	89 45 d0             	mov    %eax,-0x30(%ebp)
 674:	eb 36                	jmp    6ac <printf+0x5c>
 676:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 67d:	8d 76 00             	lea    0x0(%esi),%esi
 680:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 683:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 688:	83 f8 25             	cmp    $0x25,%eax
 68b:	74 15                	je     6a2 <printf+0x52>
  write(fd, &c, 1);
 68d:	83 ec 04             	sub    $0x4,%esp
 690:	88 55 e7             	mov    %dl,-0x19(%ebp)
 693:	6a 01                	push   $0x1
 695:	57                   	push   %edi
 696:	56                   	push   %esi
 697:	e8 6a fe ff ff       	call   506 <write>
 69c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 69f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 6a2:	0f b6 13             	movzbl (%ebx),%edx
 6a5:	83 c3 01             	add    $0x1,%ebx
 6a8:	84 d2                	test   %dl,%dl
 6aa:	74 24                	je     6d0 <printf+0x80>
    c = fmt[i] & 0xff;
 6ac:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 6af:	85 c9                	test   %ecx,%ecx
 6b1:	74 cd                	je     680 <printf+0x30>
      }
    } else if(state == '%'){
 6b3:	83 f9 25             	cmp    $0x25,%ecx
 6b6:	75 ea                	jne    6a2 <printf+0x52>
      if(c == 'd'){
 6b8:	83 f8 25             	cmp    $0x25,%eax
 6bb:	0f 84 07 01 00 00    	je     7c8 <printf+0x178>
 6c1:	83 e8 63             	sub    $0x63,%eax
 6c4:	83 f8 15             	cmp    $0x15,%eax
 6c7:	77 17                	ja     6e0 <printf+0x90>
 6c9:	ff 24 85 30 0a 00 00 	jmp    *0xa30(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 6d0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6d3:	5b                   	pop    %ebx
 6d4:	5e                   	pop    %esi
 6d5:	5f                   	pop    %edi
 6d6:	5d                   	pop    %ebp
 6d7:	c3                   	ret    
 6d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6df:	90                   	nop
  write(fd, &c, 1);
 6e0:	83 ec 04             	sub    $0x4,%esp
 6e3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 6e6:	6a 01                	push   $0x1
 6e8:	57                   	push   %edi
 6e9:	56                   	push   %esi
 6ea:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 6ee:	e8 13 fe ff ff       	call   506 <write>
        putc(fd, c);
 6f3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 6f7:	83 c4 0c             	add    $0xc,%esp
 6fa:	88 55 e7             	mov    %dl,-0x19(%ebp)
 6fd:	6a 01                	push   $0x1
 6ff:	57                   	push   %edi
 700:	56                   	push   %esi
 701:	e8 00 fe ff ff       	call   506 <write>
        putc(fd, c);
 706:	83 c4 10             	add    $0x10,%esp
      state = 0;
 709:	31 c9                	xor    %ecx,%ecx
 70b:	eb 95                	jmp    6a2 <printf+0x52>
 70d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 710:	83 ec 0c             	sub    $0xc,%esp
 713:	b9 10 00 00 00       	mov    $0x10,%ecx
 718:	6a 00                	push   $0x0
 71a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 71d:	8b 10                	mov    (%eax),%edx
 71f:	89 f0                	mov    %esi,%eax
 721:	e8 7a fe ff ff       	call   5a0 <printint>
        ap++;
 726:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 72a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 72d:	31 c9                	xor    %ecx,%ecx
 72f:	e9 6e ff ff ff       	jmp    6a2 <printf+0x52>
 734:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 738:	8b 45 d0             	mov    -0x30(%ebp),%eax
 73b:	8b 10                	mov    (%eax),%edx
        ap++;
 73d:	83 c0 04             	add    $0x4,%eax
 740:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 743:	85 d2                	test   %edx,%edx
 745:	0f 84 8d 00 00 00    	je     7d8 <printf+0x188>
        while(*s != 0){
 74b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 74e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 750:	84 c0                	test   %al,%al
 752:	0f 84 4a ff ff ff    	je     6a2 <printf+0x52>
 758:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 75b:	89 d3                	mov    %edx,%ebx
 75d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 760:	83 ec 04             	sub    $0x4,%esp
          s++;
 763:	83 c3 01             	add    $0x1,%ebx
 766:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 769:	6a 01                	push   $0x1
 76b:	57                   	push   %edi
 76c:	56                   	push   %esi
 76d:	e8 94 fd ff ff       	call   506 <write>
        while(*s != 0){
 772:	0f b6 03             	movzbl (%ebx),%eax
 775:	83 c4 10             	add    $0x10,%esp
 778:	84 c0                	test   %al,%al
 77a:	75 e4                	jne    760 <printf+0x110>
      state = 0;
 77c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 77f:	31 c9                	xor    %ecx,%ecx
 781:	e9 1c ff ff ff       	jmp    6a2 <printf+0x52>
 786:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 78d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 790:	83 ec 0c             	sub    $0xc,%esp
 793:	b9 0a 00 00 00       	mov    $0xa,%ecx
 798:	6a 01                	push   $0x1
 79a:	e9 7b ff ff ff       	jmp    71a <printf+0xca>
 79f:	90                   	nop
        putc(fd, *ap);
 7a0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 7a3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 7a6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 7a8:	6a 01                	push   $0x1
 7aa:	57                   	push   %edi
 7ab:	56                   	push   %esi
        putc(fd, *ap);
 7ac:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 7af:	e8 52 fd ff ff       	call   506 <write>
        ap++;
 7b4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 7b8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7bb:	31 c9                	xor    %ecx,%ecx
 7bd:	e9 e0 fe ff ff       	jmp    6a2 <printf+0x52>
 7c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 7c8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 7cb:	83 ec 04             	sub    $0x4,%esp
 7ce:	e9 2a ff ff ff       	jmp    6fd <printf+0xad>
 7d3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 7d7:	90                   	nop
          s = "(null)";
 7d8:	ba 28 0a 00 00       	mov    $0xa28,%edx
        while(*s != 0){
 7dd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 7e0:	b8 28 00 00 00       	mov    $0x28,%eax
 7e5:	89 d3                	mov    %edx,%ebx
 7e7:	e9 74 ff ff ff       	jmp    760 <printf+0x110>
 7ec:	66 90                	xchg   %ax,%ax
 7ee:	66 90                	xchg   %ax,%ax

000007f0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 7f0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 7f1:	a1 04 0e 00 00       	mov    0xe04,%eax
{
 7f6:	89 e5                	mov    %esp,%ebp
 7f8:	57                   	push   %edi
 7f9:	56                   	push   %esi
 7fa:	53                   	push   %ebx
 7fb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 7fe:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 801:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 808:	89 c2                	mov    %eax,%edx
 80a:	8b 00                	mov    (%eax),%eax
 80c:	39 ca                	cmp    %ecx,%edx
 80e:	73 30                	jae    840 <free+0x50>
 810:	39 c1                	cmp    %eax,%ecx
 812:	72 04                	jb     818 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 814:	39 c2                	cmp    %eax,%edx
 816:	72 f0                	jb     808 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 818:	8b 73 fc             	mov    -0x4(%ebx),%esi
 81b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 81e:	39 f8                	cmp    %edi,%eax
 820:	74 30                	je     852 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 822:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 825:	8b 42 04             	mov    0x4(%edx),%eax
 828:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 82b:	39 f1                	cmp    %esi,%ecx
 82d:	74 3a                	je     869 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 82f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 831:	5b                   	pop    %ebx
  freep = p;
 832:	89 15 04 0e 00 00    	mov    %edx,0xe04
}
 838:	5e                   	pop    %esi
 839:	5f                   	pop    %edi
 83a:	5d                   	pop    %ebp
 83b:	c3                   	ret    
 83c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 840:	39 c2                	cmp    %eax,%edx
 842:	72 c4                	jb     808 <free+0x18>
 844:	39 c1                	cmp    %eax,%ecx
 846:	73 c0                	jae    808 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 848:	8b 73 fc             	mov    -0x4(%ebx),%esi
 84b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 84e:	39 f8                	cmp    %edi,%eax
 850:	75 d0                	jne    822 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 852:	03 70 04             	add    0x4(%eax),%esi
 855:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 858:	8b 02                	mov    (%edx),%eax
 85a:	8b 00                	mov    (%eax),%eax
 85c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 85f:	8b 42 04             	mov    0x4(%edx),%eax
 862:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 865:	39 f1                	cmp    %esi,%ecx
 867:	75 c6                	jne    82f <free+0x3f>
    p->s.size += bp->s.size;
 869:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 86c:	89 15 04 0e 00 00    	mov    %edx,0xe04
    p->s.size += bp->s.size;
 872:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 875:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 878:	89 0a                	mov    %ecx,(%edx)
}
 87a:	5b                   	pop    %ebx
 87b:	5e                   	pop    %esi
 87c:	5f                   	pop    %edi
 87d:	5d                   	pop    %ebp
 87e:	c3                   	ret    
 87f:	90                   	nop

00000880 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 880:	55                   	push   %ebp
 881:	89 e5                	mov    %esp,%ebp
 883:	57                   	push   %edi
 884:	56                   	push   %esi
 885:	53                   	push   %ebx
 886:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 889:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 88c:	8b 3d 04 0e 00 00    	mov    0xe04,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 892:	8d 70 07             	lea    0x7(%eax),%esi
 895:	c1 ee 03             	shr    $0x3,%esi
 898:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 89b:	85 ff                	test   %edi,%edi
 89d:	0f 84 9d 00 00 00    	je     940 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8a3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 8a5:	8b 4a 04             	mov    0x4(%edx),%ecx
 8a8:	39 f1                	cmp    %esi,%ecx
 8aa:	73 6a                	jae    916 <malloc+0x96>
 8ac:	bb 00 10 00 00       	mov    $0x1000,%ebx
 8b1:	39 de                	cmp    %ebx,%esi
 8b3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 8b6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 8bd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8c0:	eb 17                	jmp    8d9 <malloc+0x59>
 8c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8c8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 8ca:	8b 48 04             	mov    0x4(%eax),%ecx
 8cd:	39 f1                	cmp    %esi,%ecx
 8cf:	73 4f                	jae    920 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 8d1:	8b 3d 04 0e 00 00    	mov    0xe04,%edi
 8d7:	89 c2                	mov    %eax,%edx
 8d9:	39 d7                	cmp    %edx,%edi
 8db:	75 eb                	jne    8c8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 8dd:	83 ec 0c             	sub    $0xc,%esp
 8e0:	ff 75 e4             	push   -0x1c(%ebp)
 8e3:	e8 86 fc ff ff       	call   56e <sbrk>
  if(p == (char*)-1)
 8e8:	83 c4 10             	add    $0x10,%esp
 8eb:	83 f8 ff             	cmp    $0xffffffff,%eax
 8ee:	74 1c                	je     90c <malloc+0x8c>
  hp->s.size = nu;
 8f0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 8f3:	83 ec 0c             	sub    $0xc,%esp
 8f6:	83 c0 08             	add    $0x8,%eax
 8f9:	50                   	push   %eax
 8fa:	e8 f1 fe ff ff       	call   7f0 <free>
  return freep;
 8ff:	8b 15 04 0e 00 00    	mov    0xe04,%edx
      if((p = morecore(nunits)) == 0)
 905:	83 c4 10             	add    $0x10,%esp
 908:	85 d2                	test   %edx,%edx
 90a:	75 bc                	jne    8c8 <malloc+0x48>
        return 0;
  }
}
 90c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 90f:	31 c0                	xor    %eax,%eax
}
 911:	5b                   	pop    %ebx
 912:	5e                   	pop    %esi
 913:	5f                   	pop    %edi
 914:	5d                   	pop    %ebp
 915:	c3                   	ret    
    if(p->s.size >= nunits){
 916:	89 d0                	mov    %edx,%eax
 918:	89 fa                	mov    %edi,%edx
 91a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 920:	39 ce                	cmp    %ecx,%esi
 922:	74 4c                	je     970 <malloc+0xf0>
        p->s.size -= nunits;
 924:	29 f1                	sub    %esi,%ecx
 926:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 929:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 92c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 92f:	89 15 04 0e 00 00    	mov    %edx,0xe04
}
 935:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 938:	83 c0 08             	add    $0x8,%eax
}
 93b:	5b                   	pop    %ebx
 93c:	5e                   	pop    %esi
 93d:	5f                   	pop    %edi
 93e:	5d                   	pop    %ebp
 93f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 940:	c7 05 04 0e 00 00 08 	movl   $0xe08,0xe04
 947:	0e 00 00 
    base.s.size = 0;
 94a:	bf 08 0e 00 00       	mov    $0xe08,%edi
    base.s.ptr = freep = prevp = &base;
 94f:	c7 05 08 0e 00 00 08 	movl   $0xe08,0xe08
 956:	0e 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 959:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 95b:	c7 05 0c 0e 00 00 00 	movl   $0x0,0xe0c
 962:	00 00 00 
    if(p->s.size >= nunits){
 965:	e9 42 ff ff ff       	jmp    8ac <malloc+0x2c>
 96a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 970:	8b 08                	mov    (%eax),%ecx
 972:	89 0a                	mov    %ecx,(%edx)
 974:	eb b9                	jmp    92f <malloc+0xaf>
