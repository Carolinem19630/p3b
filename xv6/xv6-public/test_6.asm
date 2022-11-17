
_test_6:     file format elf32-i386


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
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
  11:	83 ec 28             	sub    $0x28,%esp
   ppid = getpid();
  14:	e8 1b 06 00 00       	call   634 <getpid>

   void *stack, *p = malloc(PGSIZE * 2);
  19:	83 ec 0c             	sub    $0xc,%esp
  1c:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  21:	a3 0c 0f 00 00       	mov    %eax,0xf0c
   void *stack, *p = malloc(PGSIZE * 2);
  26:	e8 25 09 00 00       	call   950 <malloc>
   assert(p != NULL);
  2b:	83 c4 10             	add    $0x10,%esp
  2e:	85 c0                	test   %eax,%eax
  30:	0f 84 d5 00 00 00    	je     10b <main+0x10b>
  36:	89 c3                	mov    %eax,%ebx
   if((uint)p % PGSIZE)
  38:	89 c7                	mov    %eax,%edi
  3a:	25 ff 0f 00 00       	and    $0xfff,%eax
  3f:	74 0a                	je     4b <main+0x4b>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
  41:	89 da                	mov    %ebx,%edx
  43:	29 c2                	sub    %eax,%edx
  45:	8d ba 00 10 00 00    	lea    0x1000(%edx),%edi
   else
     stack = p;

   int arg1 = 42, arg2 = 24;
   int clone_pid = clone(worker, &arg1, &arg2, stack);
  4b:	8d 45 e4             	lea    -0x1c(%ebp),%eax
  4e:	57                   	push   %edi
  4f:	50                   	push   %eax
  50:	8d 45 e0             	lea    -0x20(%ebp),%eax
  53:	50                   	push   %eax
  54:	68 d0 01 00 00       	push   $0x1d0
   int arg1 = 42, arg2 = 24;
  59:	c7 45 e0 2a 00 00 00 	movl   $0x2a,-0x20(%ebp)
  60:	c7 45 e4 18 00 00 00 	movl   $0x18,-0x1c(%ebp)
   int clone_pid = clone(worker, &arg1, &arg2, stack);
  67:	e8 e8 05 00 00       	call   654 <clone>
   assert(clone_pid > 0);
  6c:	83 c4 10             	add    $0x10,%esp
   int clone_pid = clone(worker, &arg1, &arg2, stack);
  6f:	89 c6                	mov    %eax,%esi
   assert(clone_pid > 0);
  71:	85 c0                	test   %eax,%eax
  73:	7e 79                	jle    ee <main+0xee>

   sbrk(PGSIZE);
  75:	83 ec 0c             	sub    $0xc,%esp
  78:	68 00 10 00 00       	push   $0x1000
  7d:	e8 ba 05 00 00       	call   63c <sbrk>
   void **join_stack = (void**) ((uint)sbrk(0) - 4);
  82:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  89:	e8 ae 05 00 00       	call   63c <sbrk>
  8e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   assert(join((void**)((uint)join_stack + 2)) == -1);
  91:	83 e8 02             	sub    $0x2,%eax
  94:	89 04 24             	mov    %eax,(%esp)
  97:	e8 c0 05 00 00       	call   65c <join>
  9c:	83 c4 10             	add    $0x10,%esp
  9f:	83 c0 01             	add    $0x1,%eax
  a2:	0f 84 80 00 00 00    	je     128 <main+0x128>
  a8:	6a 29                	push   $0x29
  aa:	68 48 0a 00 00       	push   $0xa48
  af:	68 51 0a 00 00       	push   $0xa51
  b4:	6a 01                	push   $0x1
  b6:	e8 65 06 00 00       	call   720 <printf>
  bb:	83 c4 0c             	add    $0xc,%esp
  be:	68 00 0b 00 00       	push   $0xb00
   assert(clone_pid > 0);
  c3:	68 64 0a 00 00       	push   $0xa64
  c8:	6a 01                	push   $0x1
  ca:	e8 51 06 00 00       	call   720 <printf>
  cf:	5a                   	pop    %edx
  d0:	59                   	pop    %ecx
  d1:	68 78 0a 00 00       	push   $0xa78
  d6:	6a 01                	push   $0x1
  d8:	e8 43 06 00 00       	call   720 <printf>
  dd:	5b                   	pop    %ebx
  de:	ff 35 0c 0f 00 00    	push   0xf0c
  e4:	e8 fb 04 00 00       	call   5e4 <kill>
  e9:	e8 c6 04 00 00       	call   5b4 <exit>
  ee:	6a 25                	push   $0x25
  f0:	68 48 0a 00 00       	push   $0xa48
  f5:	68 51 0a 00 00       	push   $0xa51
  fa:	6a 01                	push   $0x1
  fc:	e8 1f 06 00 00       	call   720 <printf>
 101:	83 c4 0c             	add    $0xc,%esp
 104:	68 a6 0a 00 00       	push   $0xaa6
 109:	eb b8                	jmp    c3 <main+0xc3>
   assert(p != NULL);
 10b:	6a 1d                	push   $0x1d
 10d:	68 48 0a 00 00       	push   $0xa48
 112:	68 51 0a 00 00       	push   $0xa51
 117:	6a 01                	push   $0x1
 119:	e8 02 06 00 00       	call   720 <printf>
 11e:	83 c4 0c             	add    $0xc,%esp
 121:	68 9c 0a 00 00       	push   $0xa9c
 126:	eb 9b                	jmp    c3 <main+0xc3>
   void **join_stack = (void**) ((uint)sbrk(0) - 4);
 128:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   assert(join(join_stack) == clone_pid);
 12b:	83 ec 0c             	sub    $0xc,%esp
   void **join_stack = (void**) ((uint)sbrk(0) - 4);
 12e:	83 e8 04             	sub    $0x4,%eax
   assert(join(join_stack) == clone_pid);
 131:	50                   	push   %eax
 132:	e8 25 05 00 00       	call   65c <join>
 137:	83 c4 10             	add    $0x10,%esp
 13a:	39 f0                	cmp    %esi,%eax
 13c:	74 20                	je     15e <main+0x15e>
 13e:	6a 2a                	push   $0x2a
 140:	68 48 0a 00 00       	push   $0xa48
 145:	68 51 0a 00 00       	push   $0xa51
 14a:	6a 01                	push   $0x1
 14c:	e8 cf 05 00 00       	call   720 <printf>
 151:	83 c4 0c             	add    $0xc,%esp
 154:	68 b4 0a 00 00       	push   $0xab4
 159:	e9 65 ff ff ff       	jmp    c3 <main+0xc3>
   assert(stack == *join_stack);
 15e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 161:	39 78 fc             	cmp    %edi,-0x4(%eax)
 164:	74 20                	je     186 <main+0x186>
 166:	6a 2b                	push   $0x2b
 168:	68 48 0a 00 00       	push   $0xa48
 16d:	68 51 0a 00 00       	push   $0xa51
 172:	6a 01                	push   $0x1
 174:	e8 a7 05 00 00       	call   720 <printf>
 179:	83 c4 0c             	add    $0xc,%esp
 17c:	68 d2 0a 00 00       	push   $0xad2
 181:	e9 3d ff ff ff       	jmp    c3 <main+0xc3>
   assert(global == 2);
 186:	83 3d 08 0f 00 00 02 	cmpl   $0x2,0xf08
 18d:	74 20                	je     1af <main+0x1af>
 18f:	6a 2c                	push   $0x2c
 191:	68 48 0a 00 00       	push   $0xa48
 196:	68 51 0a 00 00       	push   $0xa51
 19b:	6a 01                	push   $0x1
 19d:	e8 7e 05 00 00       	call   720 <printf>
 1a2:	83 c4 0c             	add    $0xc,%esp
 1a5:	68 e7 0a 00 00       	push   $0xae7
 1aa:	e9 14 ff ff ff       	jmp    c3 <main+0xc3>

   printf(1, "TEST PASSED\n");
 1af:	50                   	push   %eax
 1b0:	50                   	push   %eax
 1b1:	68 f3 0a 00 00       	push   $0xaf3
 1b6:	6a 01                	push   $0x1
 1b8:	e8 63 05 00 00       	call   720 <printf>
   free(p);
 1bd:	89 1c 24             	mov    %ebx,(%esp)
 1c0:	e8 fb 06 00 00       	call   8c0 <free>
   exit();
 1c5:	e8 ea 03 00 00       	call   5b4 <exit>
 1ca:	66 90                	xchg   %ax,%ax
 1cc:	66 90                	xchg   %ax,%ax
 1ce:	66 90                	xchg   %ax,%ax

000001d0 <worker>:
}

void
worker(void *arg1, void *arg2) {
 1d0:	55                   	push   %ebp
 1d1:	89 e5                	mov    %esp,%ebp
 1d3:	83 ec 08             	sub    $0x8,%esp
   int tmp1 = *(int*)arg1;
   int tmp2 = *(int*)arg2;
 1d6:	8b 45 0c             	mov    0xc(%ebp),%eax
 1d9:	8b 10                	mov    (%eax),%edx
   assert(tmp1 == 42);
 1db:	8b 45 08             	mov    0x8(%ebp),%eax
 1de:	83 38 2a             	cmpl   $0x2a,(%eax)
 1e1:	75 75                	jne    258 <worker+0x88>
   assert(tmp2 == 24);
 1e3:	83 fa 18             	cmp    $0x18,%edx
 1e6:	75 2a                	jne    212 <worker+0x42>
   assert(global == 1);
 1e8:	83 3d 08 0f 00 00 01 	cmpl   $0x1,0xf08
 1ef:	0f 84 80 00 00 00    	je     275 <worker+0xa5>
 1f5:	6a 39                	push   $0x39
 1f7:	68 48 0a 00 00       	push   $0xa48
 1fc:	68 51 0a 00 00       	push   $0xa51
 201:	6a 01                	push   $0x1
 203:	e8 18 05 00 00       	call   720 <printf>
 208:	83 c4 0c             	add    $0xc,%esp
 20b:	68 90 0a 00 00       	push   $0xa90
 210:	eb 1b                	jmp    22d <worker+0x5d>
   assert(tmp2 == 24);
 212:	6a 38                	push   $0x38
 214:	68 48 0a 00 00       	push   $0xa48
 219:	68 51 0a 00 00       	push   $0xa51
 21e:	6a 01                	push   $0x1
 220:	e8 fb 04 00 00       	call   720 <printf>
 225:	83 c4 0c             	add    $0xc,%esp
 228:	68 85 0a 00 00       	push   $0xa85
 22d:	68 64 0a 00 00       	push   $0xa64
 232:	6a 01                	push   $0x1
 234:	e8 e7 04 00 00       	call   720 <printf>
 239:	58                   	pop    %eax
 23a:	5a                   	pop    %edx
 23b:	68 78 0a 00 00       	push   $0xa78
 240:	6a 01                	push   $0x1
 242:	e8 d9 04 00 00       	call   720 <printf>
 247:	59                   	pop    %ecx
 248:	ff 35 0c 0f 00 00    	push   0xf0c
 24e:	e8 91 03 00 00       	call   5e4 <kill>
 253:	e8 5c 03 00 00       	call   5b4 <exit>
   assert(tmp1 == 42);
 258:	6a 37                	push   $0x37
 25a:	68 48 0a 00 00       	push   $0xa48
 25f:	68 51 0a 00 00       	push   $0xa51
 264:	6a 01                	push   $0x1
 266:	e8 b5 04 00 00       	call   720 <printf>
 26b:	83 c4 0c             	add    $0xc,%esp
 26e:	68 59 0a 00 00       	push   $0xa59
 273:	eb b8                	jmp    22d <worker+0x5d>
   global++;
 275:	c7 05 08 0f 00 00 02 	movl   $0x2,0xf08
 27c:	00 00 00 
   exit();
 27f:	e8 30 03 00 00       	call   5b4 <exit>
 284:	66 90                	xchg   %ax,%ax
 286:	66 90                	xchg   %ax,%ax
 288:	66 90                	xchg   %ax,%ax
 28a:	66 90                	xchg   %ax,%ax
 28c:	66 90                	xchg   %ax,%ax
 28e:	66 90                	xchg   %ax,%ax

00000290 <strcpy>:
#include "x86.h"
#define PGSIZE 4096

char*
strcpy(char *s, const char *t)
{
 290:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 291:	31 c0                	xor    %eax,%eax
{
 293:	89 e5                	mov    %esp,%ebp
 295:	53                   	push   %ebx
 296:	8b 4d 08             	mov    0x8(%ebp),%ecx
 299:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 29c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 2a0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 2a4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 2a7:	83 c0 01             	add    $0x1,%eax
 2aa:	84 d2                	test   %dl,%dl
 2ac:	75 f2                	jne    2a0 <strcpy+0x10>
    ;
  return os;
}
 2ae:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2b1:	89 c8                	mov    %ecx,%eax
 2b3:	c9                   	leave  
 2b4:	c3                   	ret    
 2b5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000002c0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 2c0:	55                   	push   %ebp
 2c1:	89 e5                	mov    %esp,%ebp
 2c3:	53                   	push   %ebx
 2c4:	8b 55 08             	mov    0x8(%ebp),%edx
 2c7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 2ca:	0f b6 02             	movzbl (%edx),%eax
 2cd:	84 c0                	test   %al,%al
 2cf:	75 17                	jne    2e8 <strcmp+0x28>
 2d1:	eb 3a                	jmp    30d <strcmp+0x4d>
 2d3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2d7:	90                   	nop
 2d8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 2dc:	83 c2 01             	add    $0x1,%edx
 2df:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 2e2:	84 c0                	test   %al,%al
 2e4:	74 1a                	je     300 <strcmp+0x40>
    p++, q++;
 2e6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 2e8:	0f b6 19             	movzbl (%ecx),%ebx
 2eb:	38 c3                	cmp    %al,%bl
 2ed:	74 e9                	je     2d8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 2ef:	29 d8                	sub    %ebx,%eax
}
 2f1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2f4:	c9                   	leave  
 2f5:	c3                   	ret    
 2f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2fd:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 300:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 304:	31 c0                	xor    %eax,%eax
 306:	29 d8                	sub    %ebx,%eax
}
 308:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 30b:	c9                   	leave  
 30c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 30d:	0f b6 19             	movzbl (%ecx),%ebx
 310:	31 c0                	xor    %eax,%eax
 312:	eb db                	jmp    2ef <strcmp+0x2f>
 314:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 31b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 31f:	90                   	nop

00000320 <strlen>:

uint
strlen(const char *s)
{
 320:	55                   	push   %ebp
 321:	89 e5                	mov    %esp,%ebp
 323:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 326:	80 3a 00             	cmpb   $0x0,(%edx)
 329:	74 15                	je     340 <strlen+0x20>
 32b:	31 c0                	xor    %eax,%eax
 32d:	8d 76 00             	lea    0x0(%esi),%esi
 330:	83 c0 01             	add    $0x1,%eax
 333:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 337:	89 c1                	mov    %eax,%ecx
 339:	75 f5                	jne    330 <strlen+0x10>
    ;
  return n;
}
 33b:	89 c8                	mov    %ecx,%eax
 33d:	5d                   	pop    %ebp
 33e:	c3                   	ret    
 33f:	90                   	nop
  for(n = 0; s[n]; n++)
 340:	31 c9                	xor    %ecx,%ecx
}
 342:	5d                   	pop    %ebp
 343:	89 c8                	mov    %ecx,%eax
 345:	c3                   	ret    
 346:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 34d:	8d 76 00             	lea    0x0(%esi),%esi

00000350 <memset>:

void*
memset(void *dst, int c, uint n)
{
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	57                   	push   %edi
 354:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 357:	8b 4d 10             	mov    0x10(%ebp),%ecx
 35a:	8b 45 0c             	mov    0xc(%ebp),%eax
 35d:	89 d7                	mov    %edx,%edi
 35f:	fc                   	cld    
 360:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 362:	8b 7d fc             	mov    -0x4(%ebp),%edi
 365:	89 d0                	mov    %edx,%eax
 367:	c9                   	leave  
 368:	c3                   	ret    
 369:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000370 <strchr>:

char*
strchr(const char *s, char c)
{
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	8b 45 08             	mov    0x8(%ebp),%eax
 376:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 37a:	0f b6 10             	movzbl (%eax),%edx
 37d:	84 d2                	test   %dl,%dl
 37f:	75 12                	jne    393 <strchr+0x23>
 381:	eb 1d                	jmp    3a0 <strchr+0x30>
 383:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 387:	90                   	nop
 388:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 38c:	83 c0 01             	add    $0x1,%eax
 38f:	84 d2                	test   %dl,%dl
 391:	74 0d                	je     3a0 <strchr+0x30>
    if(*s == c)
 393:	38 d1                	cmp    %dl,%cl
 395:	75 f1                	jne    388 <strchr+0x18>
      return (char*)s;
  return 0;
}
 397:	5d                   	pop    %ebp
 398:	c3                   	ret    
 399:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 3a0:	31 c0                	xor    %eax,%eax
}
 3a2:	5d                   	pop    %ebp
 3a3:	c3                   	ret    
 3a4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3af:	90                   	nop

000003b0 <gets>:

char*
gets(char *buf, int max)
{
 3b0:	55                   	push   %ebp
 3b1:	89 e5                	mov    %esp,%ebp
 3b3:	57                   	push   %edi
 3b4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 3b5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 3b8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 3b9:	31 db                	xor    %ebx,%ebx
{
 3bb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 3be:	eb 27                	jmp    3e7 <gets+0x37>
    cc = read(0, &c, 1);
 3c0:	83 ec 04             	sub    $0x4,%esp
 3c3:	6a 01                	push   $0x1
 3c5:	57                   	push   %edi
 3c6:	6a 00                	push   $0x0
 3c8:	e8 ff 01 00 00       	call   5cc <read>
    if(cc < 1)
 3cd:	83 c4 10             	add    $0x10,%esp
 3d0:	85 c0                	test   %eax,%eax
 3d2:	7e 1d                	jle    3f1 <gets+0x41>
      break;
    buf[i++] = c;
 3d4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 3d8:	8b 55 08             	mov    0x8(%ebp),%edx
 3db:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 3df:	3c 0a                	cmp    $0xa,%al
 3e1:	74 1d                	je     400 <gets+0x50>
 3e3:	3c 0d                	cmp    $0xd,%al
 3e5:	74 19                	je     400 <gets+0x50>
  for(i=0; i+1 < max; ){
 3e7:	89 de                	mov    %ebx,%esi
 3e9:	83 c3 01             	add    $0x1,%ebx
 3ec:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 3ef:	7c cf                	jl     3c0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 3f1:	8b 45 08             	mov    0x8(%ebp),%eax
 3f4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 3f8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3fb:	5b                   	pop    %ebx
 3fc:	5e                   	pop    %esi
 3fd:	5f                   	pop    %edi
 3fe:	5d                   	pop    %ebp
 3ff:	c3                   	ret    
  buf[i] = '\0';
 400:	8b 45 08             	mov    0x8(%ebp),%eax
 403:	89 de                	mov    %ebx,%esi
 405:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 409:	8d 65 f4             	lea    -0xc(%ebp),%esp
 40c:	5b                   	pop    %ebx
 40d:	5e                   	pop    %esi
 40e:	5f                   	pop    %edi
 40f:	5d                   	pop    %ebp
 410:	c3                   	ret    
 411:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 418:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 41f:	90                   	nop

00000420 <stat>:

int
stat(const char *n, struct stat *st)
{
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	56                   	push   %esi
 424:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 425:	83 ec 08             	sub    $0x8,%esp
 428:	6a 00                	push   $0x0
 42a:	ff 75 08             	push   0x8(%ebp)
 42d:	e8 c2 01 00 00       	call   5f4 <open>
  if(fd < 0)
 432:	83 c4 10             	add    $0x10,%esp
 435:	85 c0                	test   %eax,%eax
 437:	78 27                	js     460 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 439:	83 ec 08             	sub    $0x8,%esp
 43c:	ff 75 0c             	push   0xc(%ebp)
 43f:	89 c3                	mov    %eax,%ebx
 441:	50                   	push   %eax
 442:	e8 c5 01 00 00       	call   60c <fstat>
  close(fd);
 447:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 44a:	89 c6                	mov    %eax,%esi
  close(fd);
 44c:	e8 8b 01 00 00       	call   5dc <close>
  return r;
 451:	83 c4 10             	add    $0x10,%esp
}
 454:	8d 65 f8             	lea    -0x8(%ebp),%esp
 457:	89 f0                	mov    %esi,%eax
 459:	5b                   	pop    %ebx
 45a:	5e                   	pop    %esi
 45b:	5d                   	pop    %ebp
 45c:	c3                   	ret    
 45d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 460:	be ff ff ff ff       	mov    $0xffffffff,%esi
 465:	eb ed                	jmp    454 <stat+0x34>
 467:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 46e:	66 90                	xchg   %ax,%ax

00000470 <atoi>:

int
atoi(const char *s)
{
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	53                   	push   %ebx
 474:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 477:	0f be 02             	movsbl (%edx),%eax
 47a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 47d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 480:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 485:	77 1e                	ja     4a5 <atoi+0x35>
 487:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 48e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 490:	83 c2 01             	add    $0x1,%edx
 493:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 496:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 49a:	0f be 02             	movsbl (%edx),%eax
 49d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 4a0:	80 fb 09             	cmp    $0x9,%bl
 4a3:	76 eb                	jbe    490 <atoi+0x20>
  return n;
}
 4a5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4a8:	89 c8                	mov    %ecx,%eax
 4aa:	c9                   	leave  
 4ab:	c3                   	ret    
 4ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004b0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 4b0:	55                   	push   %ebp
 4b1:	89 e5                	mov    %esp,%ebp
 4b3:	57                   	push   %edi
 4b4:	8b 45 10             	mov    0x10(%ebp),%eax
 4b7:	8b 55 08             	mov    0x8(%ebp),%edx
 4ba:	56                   	push   %esi
 4bb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 4be:	85 c0                	test   %eax,%eax
 4c0:	7e 13                	jle    4d5 <memmove+0x25>
 4c2:	01 d0                	add    %edx,%eax
  dst = vdst;
 4c4:	89 d7                	mov    %edx,%edi
 4c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4cd:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 4d0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 4d1:	39 f8                	cmp    %edi,%eax
 4d3:	75 fb                	jne    4d0 <memmove+0x20>
  return vdst;
}
 4d5:	5e                   	pop    %esi
 4d6:	89 d0                	mov    %edx,%eax
 4d8:	5f                   	pop    %edi
 4d9:	5d                   	pop    %ebp
 4da:	c3                   	ret    
 4db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4df:	90                   	nop

000004e0 <thread_create>:

// call malloc() to create a new user stack
// use clone() to create the child thread -> get it running
// returns the newly created PID to the parent && 0 to child if successful
// returns -1 if unsucessful
int thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2) {
 4e0:	55                   	push   %ebp
 4e1:	89 e5                	mov    %esp,%ebp
 4e3:	83 ec 14             	sub    $0x14,%esp

  void *stack;
  if ((stack= malloc(2*PGSIZE)) == 0){
 4e6:	68 00 20 00 00       	push   $0x2000
 4eb:	e8 60 04 00 00       	call   950 <malloc>
 4f0:	83 c4 10             	add    $0x10,%esp
 4f3:	85 c0                	test   %eax,%eax
 4f5:	74 25                	je     51c <thread_create+0x3c>
    return -1;
  }

  // stack - page aligned
  if((uint)stack % PGSIZE)
 4f7:	89 c2                	mov    %eax,%edx
 4f9:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 4ff:	74 07                	je     508 <thread_create+0x28>
    stack = stack + (PGSIZE - (uint)stack % PGSIZE);
 501:	29 d0                	sub    %edx,%eax
 503:	05 00 10 00 00       	add    $0x1000,%eax

  int childPid = clone(start_routine, arg1, arg2, stack);
 508:	50                   	push   %eax
 509:	ff 75 10             	push   0x10(%ebp)
 50c:	ff 75 0c             	push   0xc(%ebp)
 50f:	ff 75 08             	push   0x8(%ebp)
 512:	e8 3d 01 00 00       	call   654 <clone>

  return childPid;
 517:	83 c4 10             	add    $0x10,%esp
}
 51a:	c9                   	leave  
 51b:	c3                   	ret    
 51c:	c9                   	leave  
    return -1;
 51d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
 522:	c3                   	ret    
 523:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 52a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000530 <thread_join>:

// call join() and frees the user stack
// returns waited-for PID if successful, -1 otherwise
int thread_join() {
 530:	55                   	push   %ebp
 531:	89 e5                	mov    %esp,%ebp
 533:	53                   	push   %ebx

  void *stack;
  int childpid = join(&stack);
 534:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join() {
 537:	83 ec 20             	sub    $0x20,%esp
  int childpid = join(&stack);
 53a:	50                   	push   %eax
 53b:	e8 1c 01 00 00       	call   65c <join>
 540:	89 c3                	mov    %eax,%ebx
  free(stack);
 542:	58                   	pop    %eax
 543:	ff 75 f4             	push   -0xc(%ebp)
 546:	e8 75 03 00 00       	call   8c0 <free>
  return childpid;
}
 54b:	89 d8                	mov    %ebx,%eax
 54d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 550:	c9                   	leave  
 551:	c3                   	ret    
 552:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 559:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000560 <lock_init>:
      : "memory"
    );
    return value;
}
 
void lock_init(lock_t *lock) {
 560:	55                   	push   %ebp
 561:	89 e5                	mov    %esp,%ebp
 563:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 566:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 56c:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 573:	5d                   	pop    %ebp
 574:	c3                   	ret    
 575:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 57c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000580 <lock_acquire>:

void lock_acquire(lock_t *lock) {
 580:	55                   	push   %ebp
 581:	89 e5                	mov    %esp,%ebp
 583:	8b 55 08             	mov    0x8(%ebp),%edx
    __asm__ volatile("lock; xaddl %0, %1"
 586:	8b 02                	mov    (%edx),%eax
 588:	f0 0f c1 02          	lock xadd %eax,(%edx)
  int myturn = FetchAndAdd(&lock->ticket, lock->ticket);
  while (lock->turn != myturn)  ; // spin
 58c:	8b 52 04             	mov    0x4(%edx),%edx
 58f:	90                   	nop
 590:	39 c2                	cmp    %eax,%edx
 592:	75 fc                	jne    590 <lock_acquire+0x10>
}
 594:	5d                   	pop    %ebp
 595:	c3                   	ret    
 596:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 59d:	8d 76 00             	lea    0x0(%esi),%esi

000005a0 <lock_release>:

void lock_release(lock_t *lock) {
 5a0:	55                   	push   %ebp
 5a1:	89 e5                	mov    %esp,%ebp
 5a3:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 5a6:	83 40 04 01          	addl   $0x1,0x4(%eax)
 5aa:	5d                   	pop    %ebp
 5ab:	c3                   	ret    

000005ac <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 5ac:	b8 01 00 00 00       	mov    $0x1,%eax
 5b1:	cd 40                	int    $0x40
 5b3:	c3                   	ret    

000005b4 <exit>:
SYSCALL(exit)
 5b4:	b8 02 00 00 00       	mov    $0x2,%eax
 5b9:	cd 40                	int    $0x40
 5bb:	c3                   	ret    

000005bc <wait>:
SYSCALL(wait)
 5bc:	b8 03 00 00 00       	mov    $0x3,%eax
 5c1:	cd 40                	int    $0x40
 5c3:	c3                   	ret    

000005c4 <pipe>:
SYSCALL(pipe)
 5c4:	b8 04 00 00 00       	mov    $0x4,%eax
 5c9:	cd 40                	int    $0x40
 5cb:	c3                   	ret    

000005cc <read>:
SYSCALL(read)
 5cc:	b8 05 00 00 00       	mov    $0x5,%eax
 5d1:	cd 40                	int    $0x40
 5d3:	c3                   	ret    

000005d4 <write>:
SYSCALL(write)
 5d4:	b8 10 00 00 00       	mov    $0x10,%eax
 5d9:	cd 40                	int    $0x40
 5db:	c3                   	ret    

000005dc <close>:
SYSCALL(close)
 5dc:	b8 15 00 00 00       	mov    $0x15,%eax
 5e1:	cd 40                	int    $0x40
 5e3:	c3                   	ret    

000005e4 <kill>:
SYSCALL(kill)
 5e4:	b8 06 00 00 00       	mov    $0x6,%eax
 5e9:	cd 40                	int    $0x40
 5eb:	c3                   	ret    

000005ec <exec>:
SYSCALL(exec)
 5ec:	b8 07 00 00 00       	mov    $0x7,%eax
 5f1:	cd 40                	int    $0x40
 5f3:	c3                   	ret    

000005f4 <open>:
SYSCALL(open)
 5f4:	b8 0f 00 00 00       	mov    $0xf,%eax
 5f9:	cd 40                	int    $0x40
 5fb:	c3                   	ret    

000005fc <mknod>:
SYSCALL(mknod)
 5fc:	b8 11 00 00 00       	mov    $0x11,%eax
 601:	cd 40                	int    $0x40
 603:	c3                   	ret    

00000604 <unlink>:
SYSCALL(unlink)
 604:	b8 12 00 00 00       	mov    $0x12,%eax
 609:	cd 40                	int    $0x40
 60b:	c3                   	ret    

0000060c <fstat>:
SYSCALL(fstat)
 60c:	b8 08 00 00 00       	mov    $0x8,%eax
 611:	cd 40                	int    $0x40
 613:	c3                   	ret    

00000614 <link>:
SYSCALL(link)
 614:	b8 13 00 00 00       	mov    $0x13,%eax
 619:	cd 40                	int    $0x40
 61b:	c3                   	ret    

0000061c <mkdir>:
SYSCALL(mkdir)
 61c:	b8 14 00 00 00       	mov    $0x14,%eax
 621:	cd 40                	int    $0x40
 623:	c3                   	ret    

00000624 <chdir>:
SYSCALL(chdir)
 624:	b8 09 00 00 00       	mov    $0x9,%eax
 629:	cd 40                	int    $0x40
 62b:	c3                   	ret    

0000062c <dup>:
SYSCALL(dup)
 62c:	b8 0a 00 00 00       	mov    $0xa,%eax
 631:	cd 40                	int    $0x40
 633:	c3                   	ret    

00000634 <getpid>:
SYSCALL(getpid)
 634:	b8 0b 00 00 00       	mov    $0xb,%eax
 639:	cd 40                	int    $0x40
 63b:	c3                   	ret    

0000063c <sbrk>:
SYSCALL(sbrk)
 63c:	b8 0c 00 00 00       	mov    $0xc,%eax
 641:	cd 40                	int    $0x40
 643:	c3                   	ret    

00000644 <sleep>:
SYSCALL(sleep)
 644:	b8 0d 00 00 00       	mov    $0xd,%eax
 649:	cd 40                	int    $0x40
 64b:	c3                   	ret    

0000064c <uptime>:
SYSCALL(uptime)
 64c:	b8 0e 00 00 00       	mov    $0xe,%eax
 651:	cd 40                	int    $0x40
 653:	c3                   	ret    

00000654 <clone>:
SYSCALL(clone)
 654:	b8 16 00 00 00       	mov    $0x16,%eax
 659:	cd 40                	int    $0x40
 65b:	c3                   	ret    

0000065c <join>:
SYSCALL(join)
 65c:	b8 17 00 00 00       	mov    $0x17,%eax
 661:	cd 40                	int    $0x40
 663:	c3                   	ret    
 664:	66 90                	xchg   %ax,%ax
 666:	66 90                	xchg   %ax,%ax
 668:	66 90                	xchg   %ax,%ax
 66a:	66 90                	xchg   %ax,%ax
 66c:	66 90                	xchg   %ax,%ax
 66e:	66 90                	xchg   %ax,%ax

00000670 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 670:	55                   	push   %ebp
 671:	89 e5                	mov    %esp,%ebp
 673:	57                   	push   %edi
 674:	56                   	push   %esi
 675:	53                   	push   %ebx
 676:	83 ec 3c             	sub    $0x3c,%esp
 679:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 67c:	89 d1                	mov    %edx,%ecx
{
 67e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 681:	85 d2                	test   %edx,%edx
 683:	0f 89 7f 00 00 00    	jns    708 <printint+0x98>
 689:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 68d:	74 79                	je     708 <printint+0x98>
    neg = 1;
 68f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 696:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 698:	31 db                	xor    %ebx,%ebx
 69a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 69d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 6a0:	89 c8                	mov    %ecx,%eax
 6a2:	31 d2                	xor    %edx,%edx
 6a4:	89 cf                	mov    %ecx,%edi
 6a6:	f7 75 c4             	divl   -0x3c(%ebp)
 6a9:	0f b6 92 8c 0b 00 00 	movzbl 0xb8c(%edx),%edx
 6b0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 6b3:	89 d8                	mov    %ebx,%eax
 6b5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 6b8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 6bb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 6be:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 6c1:	76 dd                	jbe    6a0 <printint+0x30>
  if(neg)
 6c3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 6c6:	85 c9                	test   %ecx,%ecx
 6c8:	74 0c                	je     6d6 <printint+0x66>
    buf[i++] = '-';
 6ca:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 6cf:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 6d1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 6d6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 6d9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 6dd:	eb 07                	jmp    6e6 <printint+0x76>
 6df:	90                   	nop
    putc(fd, buf[i]);
 6e0:	0f b6 13             	movzbl (%ebx),%edx
 6e3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 6e6:	83 ec 04             	sub    $0x4,%esp
 6e9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 6ec:	6a 01                	push   $0x1
 6ee:	56                   	push   %esi
 6ef:	57                   	push   %edi
 6f0:	e8 df fe ff ff       	call   5d4 <write>
  while(--i >= 0)
 6f5:	83 c4 10             	add    $0x10,%esp
 6f8:	39 de                	cmp    %ebx,%esi
 6fa:	75 e4                	jne    6e0 <printint+0x70>
}
 6fc:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6ff:	5b                   	pop    %ebx
 700:	5e                   	pop    %esi
 701:	5f                   	pop    %edi
 702:	5d                   	pop    %ebp
 703:	c3                   	ret    
 704:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 708:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 70f:	eb 87                	jmp    698 <printint+0x28>
 711:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 718:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 71f:	90                   	nop

00000720 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 720:	55                   	push   %ebp
 721:	89 e5                	mov    %esp,%ebp
 723:	57                   	push   %edi
 724:	56                   	push   %esi
 725:	53                   	push   %ebx
 726:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 729:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 72c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 72f:	0f b6 13             	movzbl (%ebx),%edx
 732:	84 d2                	test   %dl,%dl
 734:	74 6a                	je     7a0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 736:	8d 45 10             	lea    0x10(%ebp),%eax
 739:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 73c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 73f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 741:	89 45 d0             	mov    %eax,-0x30(%ebp)
 744:	eb 36                	jmp    77c <printf+0x5c>
 746:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 74d:	8d 76 00             	lea    0x0(%esi),%esi
 750:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 753:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 758:	83 f8 25             	cmp    $0x25,%eax
 75b:	74 15                	je     772 <printf+0x52>
  write(fd, &c, 1);
 75d:	83 ec 04             	sub    $0x4,%esp
 760:	88 55 e7             	mov    %dl,-0x19(%ebp)
 763:	6a 01                	push   $0x1
 765:	57                   	push   %edi
 766:	56                   	push   %esi
 767:	e8 68 fe ff ff       	call   5d4 <write>
 76c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 76f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 772:	0f b6 13             	movzbl (%ebx),%edx
 775:	83 c3 01             	add    $0x1,%ebx
 778:	84 d2                	test   %dl,%dl
 77a:	74 24                	je     7a0 <printf+0x80>
    c = fmt[i] & 0xff;
 77c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 77f:	85 c9                	test   %ecx,%ecx
 781:	74 cd                	je     750 <printf+0x30>
      }
    } else if(state == '%'){
 783:	83 f9 25             	cmp    $0x25,%ecx
 786:	75 ea                	jne    772 <printf+0x52>
      if(c == 'd'){
 788:	83 f8 25             	cmp    $0x25,%eax
 78b:	0f 84 07 01 00 00    	je     898 <printf+0x178>
 791:	83 e8 63             	sub    $0x63,%eax
 794:	83 f8 15             	cmp    $0x15,%eax
 797:	77 17                	ja     7b0 <printf+0x90>
 799:	ff 24 85 34 0b 00 00 	jmp    *0xb34(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 7a0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7a3:	5b                   	pop    %ebx
 7a4:	5e                   	pop    %esi
 7a5:	5f                   	pop    %edi
 7a6:	5d                   	pop    %ebp
 7a7:	c3                   	ret    
 7a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7af:	90                   	nop
  write(fd, &c, 1);
 7b0:	83 ec 04             	sub    $0x4,%esp
 7b3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 7b6:	6a 01                	push   $0x1
 7b8:	57                   	push   %edi
 7b9:	56                   	push   %esi
 7ba:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 7be:	e8 11 fe ff ff       	call   5d4 <write>
        putc(fd, c);
 7c3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 7c7:	83 c4 0c             	add    $0xc,%esp
 7ca:	88 55 e7             	mov    %dl,-0x19(%ebp)
 7cd:	6a 01                	push   $0x1
 7cf:	57                   	push   %edi
 7d0:	56                   	push   %esi
 7d1:	e8 fe fd ff ff       	call   5d4 <write>
        putc(fd, c);
 7d6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7d9:	31 c9                	xor    %ecx,%ecx
 7db:	eb 95                	jmp    772 <printf+0x52>
 7dd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 7e0:	83 ec 0c             	sub    $0xc,%esp
 7e3:	b9 10 00 00 00       	mov    $0x10,%ecx
 7e8:	6a 00                	push   $0x0
 7ea:	8b 45 d0             	mov    -0x30(%ebp),%eax
 7ed:	8b 10                	mov    (%eax),%edx
 7ef:	89 f0                	mov    %esi,%eax
 7f1:	e8 7a fe ff ff       	call   670 <printint>
        ap++;
 7f6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 7fa:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7fd:	31 c9                	xor    %ecx,%ecx
 7ff:	e9 6e ff ff ff       	jmp    772 <printf+0x52>
 804:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 808:	8b 45 d0             	mov    -0x30(%ebp),%eax
 80b:	8b 10                	mov    (%eax),%edx
        ap++;
 80d:	83 c0 04             	add    $0x4,%eax
 810:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 813:	85 d2                	test   %edx,%edx
 815:	0f 84 8d 00 00 00    	je     8a8 <printf+0x188>
        while(*s != 0){
 81b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 81e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 820:	84 c0                	test   %al,%al
 822:	0f 84 4a ff ff ff    	je     772 <printf+0x52>
 828:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 82b:	89 d3                	mov    %edx,%ebx
 82d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 830:	83 ec 04             	sub    $0x4,%esp
          s++;
 833:	83 c3 01             	add    $0x1,%ebx
 836:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 839:	6a 01                	push   $0x1
 83b:	57                   	push   %edi
 83c:	56                   	push   %esi
 83d:	e8 92 fd ff ff       	call   5d4 <write>
        while(*s != 0){
 842:	0f b6 03             	movzbl (%ebx),%eax
 845:	83 c4 10             	add    $0x10,%esp
 848:	84 c0                	test   %al,%al
 84a:	75 e4                	jne    830 <printf+0x110>
      state = 0;
 84c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 84f:	31 c9                	xor    %ecx,%ecx
 851:	e9 1c ff ff ff       	jmp    772 <printf+0x52>
 856:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 85d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 860:	83 ec 0c             	sub    $0xc,%esp
 863:	b9 0a 00 00 00       	mov    $0xa,%ecx
 868:	6a 01                	push   $0x1
 86a:	e9 7b ff ff ff       	jmp    7ea <printf+0xca>
 86f:	90                   	nop
        putc(fd, *ap);
 870:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 873:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 876:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 878:	6a 01                	push   $0x1
 87a:	57                   	push   %edi
 87b:	56                   	push   %esi
        putc(fd, *ap);
 87c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 87f:	e8 50 fd ff ff       	call   5d4 <write>
        ap++;
 884:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 888:	83 c4 10             	add    $0x10,%esp
      state = 0;
 88b:	31 c9                	xor    %ecx,%ecx
 88d:	e9 e0 fe ff ff       	jmp    772 <printf+0x52>
 892:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 898:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 89b:	83 ec 04             	sub    $0x4,%esp
 89e:	e9 2a ff ff ff       	jmp    7cd <printf+0xad>
 8a3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8a7:	90                   	nop
          s = "(null)";
 8a8:	ba 2b 0b 00 00       	mov    $0xb2b,%edx
        while(*s != 0){
 8ad:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 8b0:	b8 28 00 00 00       	mov    $0x28,%eax
 8b5:	89 d3                	mov    %edx,%ebx
 8b7:	e9 74 ff ff ff       	jmp    830 <printf+0x110>
 8bc:	66 90                	xchg   %ax,%ax
 8be:	66 90                	xchg   %ax,%ax

000008c0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 8c0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8c1:	a1 10 0f 00 00       	mov    0xf10,%eax
{
 8c6:	89 e5                	mov    %esp,%ebp
 8c8:	57                   	push   %edi
 8c9:	56                   	push   %esi
 8ca:	53                   	push   %ebx
 8cb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 8ce:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8d8:	89 c2                	mov    %eax,%edx
 8da:	8b 00                	mov    (%eax),%eax
 8dc:	39 ca                	cmp    %ecx,%edx
 8de:	73 30                	jae    910 <free+0x50>
 8e0:	39 c1                	cmp    %eax,%ecx
 8e2:	72 04                	jb     8e8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8e4:	39 c2                	cmp    %eax,%edx
 8e6:	72 f0                	jb     8d8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 8e8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 8eb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 8ee:	39 f8                	cmp    %edi,%eax
 8f0:	74 30                	je     922 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 8f2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 8f5:	8b 42 04             	mov    0x4(%edx),%eax
 8f8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 8fb:	39 f1                	cmp    %esi,%ecx
 8fd:	74 3a                	je     939 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 8ff:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 901:	5b                   	pop    %ebx
  freep = p;
 902:	89 15 10 0f 00 00    	mov    %edx,0xf10
}
 908:	5e                   	pop    %esi
 909:	5f                   	pop    %edi
 90a:	5d                   	pop    %ebp
 90b:	c3                   	ret    
 90c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 910:	39 c2                	cmp    %eax,%edx
 912:	72 c4                	jb     8d8 <free+0x18>
 914:	39 c1                	cmp    %eax,%ecx
 916:	73 c0                	jae    8d8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 918:	8b 73 fc             	mov    -0x4(%ebx),%esi
 91b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 91e:	39 f8                	cmp    %edi,%eax
 920:	75 d0                	jne    8f2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 922:	03 70 04             	add    0x4(%eax),%esi
 925:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 928:	8b 02                	mov    (%edx),%eax
 92a:	8b 00                	mov    (%eax),%eax
 92c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 92f:	8b 42 04             	mov    0x4(%edx),%eax
 932:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 935:	39 f1                	cmp    %esi,%ecx
 937:	75 c6                	jne    8ff <free+0x3f>
    p->s.size += bp->s.size;
 939:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 93c:	89 15 10 0f 00 00    	mov    %edx,0xf10
    p->s.size += bp->s.size;
 942:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 945:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 948:	89 0a                	mov    %ecx,(%edx)
}
 94a:	5b                   	pop    %ebx
 94b:	5e                   	pop    %esi
 94c:	5f                   	pop    %edi
 94d:	5d                   	pop    %ebp
 94e:	c3                   	ret    
 94f:	90                   	nop

00000950 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 950:	55                   	push   %ebp
 951:	89 e5                	mov    %esp,%ebp
 953:	57                   	push   %edi
 954:	56                   	push   %esi
 955:	53                   	push   %ebx
 956:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 959:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 95c:	8b 3d 10 0f 00 00    	mov    0xf10,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 962:	8d 70 07             	lea    0x7(%eax),%esi
 965:	c1 ee 03             	shr    $0x3,%esi
 968:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 96b:	85 ff                	test   %edi,%edi
 96d:	0f 84 9d 00 00 00    	je     a10 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 973:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 975:	8b 4a 04             	mov    0x4(%edx),%ecx
 978:	39 f1                	cmp    %esi,%ecx
 97a:	73 6a                	jae    9e6 <malloc+0x96>
 97c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 981:	39 de                	cmp    %ebx,%esi
 983:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 986:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 98d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 990:	eb 17                	jmp    9a9 <malloc+0x59>
 992:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 998:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 99a:	8b 48 04             	mov    0x4(%eax),%ecx
 99d:	39 f1                	cmp    %esi,%ecx
 99f:	73 4f                	jae    9f0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 9a1:	8b 3d 10 0f 00 00    	mov    0xf10,%edi
 9a7:	89 c2                	mov    %eax,%edx
 9a9:	39 d7                	cmp    %edx,%edi
 9ab:	75 eb                	jne    998 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 9ad:	83 ec 0c             	sub    $0xc,%esp
 9b0:	ff 75 e4             	push   -0x1c(%ebp)
 9b3:	e8 84 fc ff ff       	call   63c <sbrk>
  if(p == (char*)-1)
 9b8:	83 c4 10             	add    $0x10,%esp
 9bb:	83 f8 ff             	cmp    $0xffffffff,%eax
 9be:	74 1c                	je     9dc <malloc+0x8c>
  hp->s.size = nu;
 9c0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 9c3:	83 ec 0c             	sub    $0xc,%esp
 9c6:	83 c0 08             	add    $0x8,%eax
 9c9:	50                   	push   %eax
 9ca:	e8 f1 fe ff ff       	call   8c0 <free>
  return freep;
 9cf:	8b 15 10 0f 00 00    	mov    0xf10,%edx
      if((p = morecore(nunits)) == 0)
 9d5:	83 c4 10             	add    $0x10,%esp
 9d8:	85 d2                	test   %edx,%edx
 9da:	75 bc                	jne    998 <malloc+0x48>
        return 0;
  }
}
 9dc:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 9df:	31 c0                	xor    %eax,%eax
}
 9e1:	5b                   	pop    %ebx
 9e2:	5e                   	pop    %esi
 9e3:	5f                   	pop    %edi
 9e4:	5d                   	pop    %ebp
 9e5:	c3                   	ret    
    if(p->s.size >= nunits){
 9e6:	89 d0                	mov    %edx,%eax
 9e8:	89 fa                	mov    %edi,%edx
 9ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 9f0:	39 ce                	cmp    %ecx,%esi
 9f2:	74 4c                	je     a40 <malloc+0xf0>
        p->s.size -= nunits;
 9f4:	29 f1                	sub    %esi,%ecx
 9f6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 9f9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 9fc:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 9ff:	89 15 10 0f 00 00    	mov    %edx,0xf10
}
 a05:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 a08:	83 c0 08             	add    $0x8,%eax
}
 a0b:	5b                   	pop    %ebx
 a0c:	5e                   	pop    %esi
 a0d:	5f                   	pop    %edi
 a0e:	5d                   	pop    %ebp
 a0f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 a10:	c7 05 10 0f 00 00 14 	movl   $0xf14,0xf10
 a17:	0f 00 00 
    base.s.size = 0;
 a1a:	bf 14 0f 00 00       	mov    $0xf14,%edi
    base.s.ptr = freep = prevp = &base;
 a1f:	c7 05 14 0f 00 00 14 	movl   $0xf14,0xf14
 a26:	0f 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a29:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 a2b:	c7 05 18 0f 00 00 00 	movl   $0x0,0xf18
 a32:	00 00 00 
    if(p->s.size >= nunits){
 a35:	e9 42 ff ff ff       	jmp    97c <malloc+0x2c>
 a3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 a40:	8b 08                	mov    (%eax),%ecx
 a42:	89 0a                	mov    %ecx,(%edx)
 a44:	eb b9                	jmp    9ff <malloc+0xaf>
