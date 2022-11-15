
_test_9:     file format elf32-i386


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
  10:	83 ec 1c             	sub    $0x1c,%esp
   ppid = getpid();
  13:	e8 ab 04 00 00       	call   4c3 <getpid>
   void *stack, *p = malloc(PGSIZE * 2);
  18:	83 ec 0c             	sub    $0xc,%esp
  1b:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  20:	a3 00 0d 00 00       	mov    %eax,0xd00
   void *stack, *p = malloc(PGSIZE * 2);
  25:	e8 b6 07 00 00       	call   7e0 <malloc>
   assert(p != NULL);
  2a:	83 c4 10             	add    $0x10,%esp
  2d:	85 c0                	test   %eax,%eax
  2f:	0f 84 d3 00 00 00    	je     108 <main+0x108>
   if((uint)p % PGSIZE)
  35:	89 c2                	mov    %eax,%edx
  37:	89 c3                	mov    %eax,%ebx
  39:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
  3f:	0f 85 8c 00 00 00    	jne    d1 <main+0xd1>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
   else
     stack = p;

   int clone_pid = clone(worker, stack, 0, stack);
  45:	50                   	push   %eax
  46:	6a 00                	push   $0x0
  48:	50                   	push   %eax
  49:	68 30 01 00 00       	push   $0x130
  4e:	e8 90 04 00 00       	call   4e3 <clone>
   assert(clone_pid > 0);
  53:	83 c4 10             	add    $0x10,%esp
   int clone_pid = clone(worker, stack, 0, stack);
  56:	89 c6                	mov    %eax,%esi
   assert(clone_pid > 0);
  58:	85 c0                	test   %eax,%eax
  5a:	0f 8e 8b 00 00 00    	jle    eb <main+0xeb>
   while(global != 5);
  60:	8b 15 fc 0c 00 00    	mov    0xcfc,%edx
  66:	83 fa 05             	cmp    $0x5,%edx
  69:	75 f5                	jne    60 <main+0x60>
   printf(1, "TEST PASSED\n");
  6b:	50                   	push   %eax
  6c:	50                   	push   %eax
  6d:	68 22 09 00 00       	push   $0x922
  72:	6a 01                	push   $0x1
  74:	e8 37 05 00 00       	call   5b0 <printf>

   void *join_stack;
   int join_pid = join(&join_stack);
  79:	8d 45 e4             	lea    -0x1c(%ebp),%eax
  7c:	89 04 24             	mov    %eax,(%esp)
  7f:	e8 67 04 00 00       	call   4eb <join>
   assert(join_pid == clone_pid);
  84:	83 c4 10             	add    $0x10,%esp
  87:	39 c6                	cmp    %eax,%esi
  89:	74 52                	je     dd <main+0xdd>
  8b:	6a 29                	push   $0x29
  8d:	68 d8 08 00 00       	push   $0x8d8
  92:	68 e1 08 00 00       	push   $0x8e1
  97:	6a 01                	push   $0x1
  99:	e8 12 05 00 00       	call   5b0 <printf>
  9e:	83 c4 0c             	add    $0xc,%esp
  a1:	68 2f 09 00 00       	push   $0x92f
   assert(clone_pid > 0);
  a6:	68 e9 08 00 00       	push   $0x8e9
  ab:	6a 01                	push   $0x1
  ad:	e8 fe 04 00 00       	call   5b0 <printf>
  b2:	5a                   	pop    %edx
  b3:	59                   	pop    %ecx
  b4:	68 fd 08 00 00       	push   $0x8fd
  b9:	6a 01                	push   $0x1
  bb:	e8 f0 04 00 00       	call   5b0 <printf>
  c0:	5b                   	pop    %ebx
  c1:	ff 35 00 0d 00 00    	push   0xd00
  c7:	e8 a7 03 00 00       	call   473 <kill>
  cc:	e8 72 03 00 00       	call   443 <exit>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
  d1:	29 d0                	sub    %edx,%eax
  d3:	05 00 10 00 00       	add    $0x1000,%eax
  d8:	e9 68 ff ff ff       	jmp    45 <main+0x45>
   free(p);
  dd:	83 ec 0c             	sub    $0xc,%esp
  e0:	53                   	push   %ebx
  e1:	e8 6a 06 00 00       	call   750 <free>
   exit();
  e6:	e8 58 03 00 00       	call   443 <exit>
   assert(clone_pid > 0);
  eb:	6a 23                	push   $0x23
  ed:	68 d8 08 00 00       	push   $0x8d8
  f2:	68 e1 08 00 00       	push   $0x8e1
  f7:	6a 01                	push   $0x1
  f9:	e8 b2 04 00 00       	call   5b0 <printf>
  fe:	83 c4 0c             	add    $0xc,%esp
 101:	68 14 09 00 00       	push   $0x914
 106:	eb 9e                	jmp    a6 <main+0xa6>
   assert(p != NULL);
 108:	6a 1c                	push   $0x1c
 10a:	68 d8 08 00 00       	push   $0x8d8
 10f:	68 e1 08 00 00       	push   $0x8e1
 114:	6a 01                	push   $0x1
 116:	e8 95 04 00 00       	call   5b0 <printf>
 11b:	83 c4 0c             	add    $0xc,%esp
 11e:	68 0a 09 00 00       	push   $0x90a
 123:	eb 81                	jmp    a6 <main+0xa6>
 125:	66 90                	xchg   %ax,%ax
 127:	66 90                	xchg   %ax,%ax
 129:	66 90                	xchg   %ax,%ax
 12b:	66 90                	xchg   %ax,%ax
 12d:	66 90                	xchg   %ax,%ax
 12f:	90                   	nop

00000130 <worker>:
}

void
worker(void *arg1, void *arg2) {
 130:	55                   	push   %ebp
 131:	89 e5                	mov    %esp,%ebp
 133:	83 ec 08             	sub    $0x8,%esp
   assert((uint)&arg2 == ((uint)arg1 + PGSIZE - 4));
 136:	8b 45 08             	mov    0x8(%ebp),%eax
 139:	8d 4d 0c             	lea    0xc(%ebp),%ecx
 13c:	8d 90 fc 0f 00 00    	lea    0xffc(%eax),%edx
 142:	39 d1                	cmp    %edx,%ecx
 144:	75 7d                	jne    1c3 <worker+0x93>
   assert((uint)&arg1 == ((uint)arg1 + PGSIZE - 8));
 146:	8d 90 f8 0f 00 00    	lea    0xff8(%eax),%edx
 14c:	8d 4d 08             	lea    0x8(%ebp),%ecx
 14f:	39 d1                	cmp    %edx,%ecx
 151:	75 2a                	jne    17d <worker+0x4d>
   assert(*((uint*) (arg1 + PGSIZE - 12)) == 0xffffffff);
 153:	83 b8 f4 0f 00 00 ff 	cmpl   $0xffffffff,0xff4(%eax)
 15a:	0f 84 80 00 00 00    	je     1e0 <worker+0xb0>
 160:	6a 32                	push   $0x32
 162:	68 d8 08 00 00       	push   $0x8d8
 167:	68 e1 08 00 00       	push   $0x8e1
 16c:	6a 01                	push   $0x1
 16e:	e8 3d 04 00 00       	call   5b0 <printf>
 173:	83 c4 0c             	add    $0xc,%esp
 176:	68 a0 09 00 00       	push   $0x9a0
 17b:	eb 1b                	jmp    198 <worker+0x68>
   assert((uint)&arg1 == ((uint)arg1 + PGSIZE - 8));
 17d:	6a 31                	push   $0x31
 17f:	68 d8 08 00 00       	push   $0x8d8
 184:	68 e1 08 00 00       	push   $0x8e1
 189:	6a 01                	push   $0x1
 18b:	e8 20 04 00 00       	call   5b0 <printf>
 190:	83 c4 0c             	add    $0xc,%esp
 193:	68 74 09 00 00       	push   $0x974
 198:	68 e9 08 00 00       	push   $0x8e9
 19d:	6a 01                	push   $0x1
 19f:	e8 0c 04 00 00       	call   5b0 <printf>
 1a4:	58                   	pop    %eax
 1a5:	5a                   	pop    %edx
 1a6:	68 fd 08 00 00       	push   $0x8fd
 1ab:	6a 01                	push   $0x1
 1ad:	e8 fe 03 00 00       	call   5b0 <printf>
 1b2:	59                   	pop    %ecx
 1b3:	ff 35 00 0d 00 00    	push   0xd00
 1b9:	e8 b5 02 00 00       	call   473 <kill>
 1be:	e8 80 02 00 00       	call   443 <exit>
   assert((uint)&arg2 == ((uint)arg1 + PGSIZE - 4));
 1c3:	6a 30                	push   $0x30
 1c5:	68 d8 08 00 00       	push   $0x8d8
 1ca:	68 e1 08 00 00       	push   $0x8e1
 1cf:	6a 01                	push   $0x1
 1d1:	e8 da 03 00 00       	call   5b0 <printf>
 1d6:	83 c4 0c             	add    $0xc,%esp
 1d9:	68 48 09 00 00       	push   $0x948
 1de:	eb b8                	jmp    198 <worker+0x68>
   global = 5;
 1e0:	c7 05 fc 0c 00 00 05 	movl   $0x5,0xcfc
 1e7:	00 00 00 
   exit();
 1ea:	e8 54 02 00 00       	call   443 <exit>
 1ef:	90                   	nop

000001f0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 1f0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 1f1:	31 c0                	xor    %eax,%eax
{
 1f3:	89 e5                	mov    %esp,%ebp
 1f5:	53                   	push   %ebx
 1f6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1f9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 1fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 200:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 204:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 207:	83 c0 01             	add    $0x1,%eax
 20a:	84 d2                	test   %dl,%dl
 20c:	75 f2                	jne    200 <strcpy+0x10>
    ;
  return os;
}
 20e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 211:	89 c8                	mov    %ecx,%eax
 213:	c9                   	leave  
 214:	c3                   	ret    
 215:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 21c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000220 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 220:	55                   	push   %ebp
 221:	89 e5                	mov    %esp,%ebp
 223:	53                   	push   %ebx
 224:	8b 55 08             	mov    0x8(%ebp),%edx
 227:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 22a:	0f b6 02             	movzbl (%edx),%eax
 22d:	84 c0                	test   %al,%al
 22f:	75 17                	jne    248 <strcmp+0x28>
 231:	eb 3a                	jmp    26d <strcmp+0x4d>
 233:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 237:	90                   	nop
 238:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 23c:	83 c2 01             	add    $0x1,%edx
 23f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 242:	84 c0                	test   %al,%al
 244:	74 1a                	je     260 <strcmp+0x40>
    p++, q++;
 246:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 248:	0f b6 19             	movzbl (%ecx),%ebx
 24b:	38 c3                	cmp    %al,%bl
 24d:	74 e9                	je     238 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 24f:	29 d8                	sub    %ebx,%eax
}
 251:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 254:	c9                   	leave  
 255:	c3                   	ret    
 256:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 25d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 260:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 264:	31 c0                	xor    %eax,%eax
 266:	29 d8                	sub    %ebx,%eax
}
 268:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 26b:	c9                   	leave  
 26c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 26d:	0f b6 19             	movzbl (%ecx),%ebx
 270:	31 c0                	xor    %eax,%eax
 272:	eb db                	jmp    24f <strcmp+0x2f>
 274:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 27b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 27f:	90                   	nop

00000280 <strlen>:

uint
strlen(const char *s)
{
 280:	55                   	push   %ebp
 281:	89 e5                	mov    %esp,%ebp
 283:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 286:	80 3a 00             	cmpb   $0x0,(%edx)
 289:	74 15                	je     2a0 <strlen+0x20>
 28b:	31 c0                	xor    %eax,%eax
 28d:	8d 76 00             	lea    0x0(%esi),%esi
 290:	83 c0 01             	add    $0x1,%eax
 293:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 297:	89 c1                	mov    %eax,%ecx
 299:	75 f5                	jne    290 <strlen+0x10>
    ;
  return n;
}
 29b:	89 c8                	mov    %ecx,%eax
 29d:	5d                   	pop    %ebp
 29e:	c3                   	ret    
 29f:	90                   	nop
  for(n = 0; s[n]; n++)
 2a0:	31 c9                	xor    %ecx,%ecx
}
 2a2:	5d                   	pop    %ebp
 2a3:	89 c8                	mov    %ecx,%eax
 2a5:	c3                   	ret    
 2a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2ad:	8d 76 00             	lea    0x0(%esi),%esi

000002b0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 2b0:	55                   	push   %ebp
 2b1:	89 e5                	mov    %esp,%ebp
 2b3:	57                   	push   %edi
 2b4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 2b7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 2ba:	8b 45 0c             	mov    0xc(%ebp),%eax
 2bd:	89 d7                	mov    %edx,%edi
 2bf:	fc                   	cld    
 2c0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 2c2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 2c5:	89 d0                	mov    %edx,%eax
 2c7:	c9                   	leave  
 2c8:	c3                   	ret    
 2c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000002d0 <strchr>:

char*
strchr(const char *s, char c)
{
 2d0:	55                   	push   %ebp
 2d1:	89 e5                	mov    %esp,%ebp
 2d3:	8b 45 08             	mov    0x8(%ebp),%eax
 2d6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 2da:	0f b6 10             	movzbl (%eax),%edx
 2dd:	84 d2                	test   %dl,%dl
 2df:	75 12                	jne    2f3 <strchr+0x23>
 2e1:	eb 1d                	jmp    300 <strchr+0x30>
 2e3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2e7:	90                   	nop
 2e8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 2ec:	83 c0 01             	add    $0x1,%eax
 2ef:	84 d2                	test   %dl,%dl
 2f1:	74 0d                	je     300 <strchr+0x30>
    if(*s == c)
 2f3:	38 d1                	cmp    %dl,%cl
 2f5:	75 f1                	jne    2e8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 2f7:	5d                   	pop    %ebp
 2f8:	c3                   	ret    
 2f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 300:	31 c0                	xor    %eax,%eax
}
 302:	5d                   	pop    %ebp
 303:	c3                   	ret    
 304:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 30b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 30f:	90                   	nop

00000310 <gets>:

char*
gets(char *buf, int max)
{
 310:	55                   	push   %ebp
 311:	89 e5                	mov    %esp,%ebp
 313:	57                   	push   %edi
 314:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 315:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 318:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 319:	31 db                	xor    %ebx,%ebx
{
 31b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 31e:	eb 27                	jmp    347 <gets+0x37>
    cc = read(0, &c, 1);
 320:	83 ec 04             	sub    $0x4,%esp
 323:	6a 01                	push   $0x1
 325:	57                   	push   %edi
 326:	6a 00                	push   $0x0
 328:	e8 2e 01 00 00       	call   45b <read>
    if(cc < 1)
 32d:	83 c4 10             	add    $0x10,%esp
 330:	85 c0                	test   %eax,%eax
 332:	7e 1d                	jle    351 <gets+0x41>
      break;
    buf[i++] = c;
 334:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 338:	8b 55 08             	mov    0x8(%ebp),%edx
 33b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 33f:	3c 0a                	cmp    $0xa,%al
 341:	74 1d                	je     360 <gets+0x50>
 343:	3c 0d                	cmp    $0xd,%al
 345:	74 19                	je     360 <gets+0x50>
  for(i=0; i+1 < max; ){
 347:	89 de                	mov    %ebx,%esi
 349:	83 c3 01             	add    $0x1,%ebx
 34c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 34f:	7c cf                	jl     320 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 351:	8b 45 08             	mov    0x8(%ebp),%eax
 354:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 358:	8d 65 f4             	lea    -0xc(%ebp),%esp
 35b:	5b                   	pop    %ebx
 35c:	5e                   	pop    %esi
 35d:	5f                   	pop    %edi
 35e:	5d                   	pop    %ebp
 35f:	c3                   	ret    
  buf[i] = '\0';
 360:	8b 45 08             	mov    0x8(%ebp),%eax
 363:	89 de                	mov    %ebx,%esi
 365:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 369:	8d 65 f4             	lea    -0xc(%ebp),%esp
 36c:	5b                   	pop    %ebx
 36d:	5e                   	pop    %esi
 36e:	5f                   	pop    %edi
 36f:	5d                   	pop    %ebp
 370:	c3                   	ret    
 371:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 378:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 37f:	90                   	nop

00000380 <stat>:

int
stat(const char *n, struct stat *st)
{
 380:	55                   	push   %ebp
 381:	89 e5                	mov    %esp,%ebp
 383:	56                   	push   %esi
 384:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 385:	83 ec 08             	sub    $0x8,%esp
 388:	6a 00                	push   $0x0
 38a:	ff 75 08             	push   0x8(%ebp)
 38d:	e8 f1 00 00 00       	call   483 <open>
  if(fd < 0)
 392:	83 c4 10             	add    $0x10,%esp
 395:	85 c0                	test   %eax,%eax
 397:	78 27                	js     3c0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 399:	83 ec 08             	sub    $0x8,%esp
 39c:	ff 75 0c             	push   0xc(%ebp)
 39f:	89 c3                	mov    %eax,%ebx
 3a1:	50                   	push   %eax
 3a2:	e8 f4 00 00 00       	call   49b <fstat>
  close(fd);
 3a7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 3aa:	89 c6                	mov    %eax,%esi
  close(fd);
 3ac:	e8 ba 00 00 00       	call   46b <close>
  return r;
 3b1:	83 c4 10             	add    $0x10,%esp
}
 3b4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 3b7:	89 f0                	mov    %esi,%eax
 3b9:	5b                   	pop    %ebx
 3ba:	5e                   	pop    %esi
 3bb:	5d                   	pop    %ebp
 3bc:	c3                   	ret    
 3bd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 3c0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 3c5:	eb ed                	jmp    3b4 <stat+0x34>
 3c7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ce:	66 90                	xchg   %ax,%ax

000003d0 <atoi>:

int
atoi(const char *s)
{
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	53                   	push   %ebx
 3d4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 3d7:	0f be 02             	movsbl (%edx),%eax
 3da:	8d 48 d0             	lea    -0x30(%eax),%ecx
 3dd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 3e0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 3e5:	77 1e                	ja     405 <atoi+0x35>
 3e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ee:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 3f0:	83 c2 01             	add    $0x1,%edx
 3f3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 3f6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 3fa:	0f be 02             	movsbl (%edx),%eax
 3fd:	8d 58 d0             	lea    -0x30(%eax),%ebx
 400:	80 fb 09             	cmp    $0x9,%bl
 403:	76 eb                	jbe    3f0 <atoi+0x20>
  return n;
}
 405:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 408:	89 c8                	mov    %ecx,%eax
 40a:	c9                   	leave  
 40b:	c3                   	ret    
 40c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000410 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 410:	55                   	push   %ebp
 411:	89 e5                	mov    %esp,%ebp
 413:	57                   	push   %edi
 414:	8b 45 10             	mov    0x10(%ebp),%eax
 417:	8b 55 08             	mov    0x8(%ebp),%edx
 41a:	56                   	push   %esi
 41b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 41e:	85 c0                	test   %eax,%eax
 420:	7e 13                	jle    435 <memmove+0x25>
 422:	01 d0                	add    %edx,%eax
  dst = vdst;
 424:	89 d7                	mov    %edx,%edi
 426:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 42d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 430:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 431:	39 f8                	cmp    %edi,%eax
 433:	75 fb                	jne    430 <memmove+0x20>
  return vdst;
}
 435:	5e                   	pop    %esi
 436:	89 d0                	mov    %edx,%eax
 438:	5f                   	pop    %edi
 439:	5d                   	pop    %ebp
 43a:	c3                   	ret    

0000043b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 43b:	b8 01 00 00 00       	mov    $0x1,%eax
 440:	cd 40                	int    $0x40
 442:	c3                   	ret    

00000443 <exit>:
SYSCALL(exit)
 443:	b8 02 00 00 00       	mov    $0x2,%eax
 448:	cd 40                	int    $0x40
 44a:	c3                   	ret    

0000044b <wait>:
SYSCALL(wait)
 44b:	b8 03 00 00 00       	mov    $0x3,%eax
 450:	cd 40                	int    $0x40
 452:	c3                   	ret    

00000453 <pipe>:
SYSCALL(pipe)
 453:	b8 04 00 00 00       	mov    $0x4,%eax
 458:	cd 40                	int    $0x40
 45a:	c3                   	ret    

0000045b <read>:
SYSCALL(read)
 45b:	b8 05 00 00 00       	mov    $0x5,%eax
 460:	cd 40                	int    $0x40
 462:	c3                   	ret    

00000463 <write>:
SYSCALL(write)
 463:	b8 10 00 00 00       	mov    $0x10,%eax
 468:	cd 40                	int    $0x40
 46a:	c3                   	ret    

0000046b <close>:
SYSCALL(close)
 46b:	b8 15 00 00 00       	mov    $0x15,%eax
 470:	cd 40                	int    $0x40
 472:	c3                   	ret    

00000473 <kill>:
SYSCALL(kill)
 473:	b8 06 00 00 00       	mov    $0x6,%eax
 478:	cd 40                	int    $0x40
 47a:	c3                   	ret    

0000047b <exec>:
SYSCALL(exec)
 47b:	b8 07 00 00 00       	mov    $0x7,%eax
 480:	cd 40                	int    $0x40
 482:	c3                   	ret    

00000483 <open>:
SYSCALL(open)
 483:	b8 0f 00 00 00       	mov    $0xf,%eax
 488:	cd 40                	int    $0x40
 48a:	c3                   	ret    

0000048b <mknod>:
SYSCALL(mknod)
 48b:	b8 11 00 00 00       	mov    $0x11,%eax
 490:	cd 40                	int    $0x40
 492:	c3                   	ret    

00000493 <unlink>:
SYSCALL(unlink)
 493:	b8 12 00 00 00       	mov    $0x12,%eax
 498:	cd 40                	int    $0x40
 49a:	c3                   	ret    

0000049b <fstat>:
SYSCALL(fstat)
 49b:	b8 08 00 00 00       	mov    $0x8,%eax
 4a0:	cd 40                	int    $0x40
 4a2:	c3                   	ret    

000004a3 <link>:
SYSCALL(link)
 4a3:	b8 13 00 00 00       	mov    $0x13,%eax
 4a8:	cd 40                	int    $0x40
 4aa:	c3                   	ret    

000004ab <mkdir>:
SYSCALL(mkdir)
 4ab:	b8 14 00 00 00       	mov    $0x14,%eax
 4b0:	cd 40                	int    $0x40
 4b2:	c3                   	ret    

000004b3 <chdir>:
SYSCALL(chdir)
 4b3:	b8 09 00 00 00       	mov    $0x9,%eax
 4b8:	cd 40                	int    $0x40
 4ba:	c3                   	ret    

000004bb <dup>:
SYSCALL(dup)
 4bb:	b8 0a 00 00 00       	mov    $0xa,%eax
 4c0:	cd 40                	int    $0x40
 4c2:	c3                   	ret    

000004c3 <getpid>:
SYSCALL(getpid)
 4c3:	b8 0b 00 00 00       	mov    $0xb,%eax
 4c8:	cd 40                	int    $0x40
 4ca:	c3                   	ret    

000004cb <sbrk>:
SYSCALL(sbrk)
 4cb:	b8 0c 00 00 00       	mov    $0xc,%eax
 4d0:	cd 40                	int    $0x40
 4d2:	c3                   	ret    

000004d3 <sleep>:
SYSCALL(sleep)
 4d3:	b8 0d 00 00 00       	mov    $0xd,%eax
 4d8:	cd 40                	int    $0x40
 4da:	c3                   	ret    

000004db <uptime>:
SYSCALL(uptime)
 4db:	b8 0e 00 00 00       	mov    $0xe,%eax
 4e0:	cd 40                	int    $0x40
 4e2:	c3                   	ret    

000004e3 <clone>:
SYSCALL(clone)
 4e3:	b8 16 00 00 00       	mov    $0x16,%eax
 4e8:	cd 40                	int    $0x40
 4ea:	c3                   	ret    

000004eb <join>:
SYSCALL(join)
 4eb:	b8 17 00 00 00       	mov    $0x17,%eax
 4f0:	cd 40                	int    $0x40
 4f2:	c3                   	ret    
 4f3:	66 90                	xchg   %ax,%ax
 4f5:	66 90                	xchg   %ax,%ax
 4f7:	66 90                	xchg   %ax,%ax
 4f9:	66 90                	xchg   %ax,%ax
 4fb:	66 90                	xchg   %ax,%ax
 4fd:	66 90                	xchg   %ax,%ax
 4ff:	90                   	nop

00000500 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
 503:	57                   	push   %edi
 504:	56                   	push   %esi
 505:	53                   	push   %ebx
 506:	83 ec 3c             	sub    $0x3c,%esp
 509:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 50c:	89 d1                	mov    %edx,%ecx
{
 50e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 511:	85 d2                	test   %edx,%edx
 513:	0f 89 7f 00 00 00    	jns    598 <printint+0x98>
 519:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 51d:	74 79                	je     598 <printint+0x98>
    neg = 1;
 51f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 526:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 528:	31 db                	xor    %ebx,%ebx
 52a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 52d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 530:	89 c8                	mov    %ecx,%eax
 532:	31 d2                	xor    %edx,%edx
 534:	89 cf                	mov    %ecx,%edi
 536:	f7 75 c4             	divl   -0x3c(%ebp)
 539:	0f b6 92 30 0a 00 00 	movzbl 0xa30(%edx),%edx
 540:	89 45 c0             	mov    %eax,-0x40(%ebp)
 543:	89 d8                	mov    %ebx,%eax
 545:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 548:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 54b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 54e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 551:	76 dd                	jbe    530 <printint+0x30>
  if(neg)
 553:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 556:	85 c9                	test   %ecx,%ecx
 558:	74 0c                	je     566 <printint+0x66>
    buf[i++] = '-';
 55a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 55f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 561:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 566:	8b 7d b8             	mov    -0x48(%ebp),%edi
 569:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 56d:	eb 07                	jmp    576 <printint+0x76>
 56f:	90                   	nop
    putc(fd, buf[i]);
 570:	0f b6 13             	movzbl (%ebx),%edx
 573:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 576:	83 ec 04             	sub    $0x4,%esp
 579:	88 55 d7             	mov    %dl,-0x29(%ebp)
 57c:	6a 01                	push   $0x1
 57e:	56                   	push   %esi
 57f:	57                   	push   %edi
 580:	e8 de fe ff ff       	call   463 <write>
  while(--i >= 0)
 585:	83 c4 10             	add    $0x10,%esp
 588:	39 de                	cmp    %ebx,%esi
 58a:	75 e4                	jne    570 <printint+0x70>
}
 58c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 58f:	5b                   	pop    %ebx
 590:	5e                   	pop    %esi
 591:	5f                   	pop    %edi
 592:	5d                   	pop    %ebp
 593:	c3                   	ret    
 594:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 598:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 59f:	eb 87                	jmp    528 <printint+0x28>
 5a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5af:	90                   	nop

000005b0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 5b0:	55                   	push   %ebp
 5b1:	89 e5                	mov    %esp,%ebp
 5b3:	57                   	push   %edi
 5b4:	56                   	push   %esi
 5b5:	53                   	push   %ebx
 5b6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 5b9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 5bc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 5bf:	0f b6 13             	movzbl (%ebx),%edx
 5c2:	84 d2                	test   %dl,%dl
 5c4:	74 6a                	je     630 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 5c6:	8d 45 10             	lea    0x10(%ebp),%eax
 5c9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 5cc:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 5cf:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 5d1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 5d4:	eb 36                	jmp    60c <printf+0x5c>
 5d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5dd:	8d 76 00             	lea    0x0(%esi),%esi
 5e0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 5e3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 5e8:	83 f8 25             	cmp    $0x25,%eax
 5eb:	74 15                	je     602 <printf+0x52>
  write(fd, &c, 1);
 5ed:	83 ec 04             	sub    $0x4,%esp
 5f0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 5f3:	6a 01                	push   $0x1
 5f5:	57                   	push   %edi
 5f6:	56                   	push   %esi
 5f7:	e8 67 fe ff ff       	call   463 <write>
 5fc:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 5ff:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 602:	0f b6 13             	movzbl (%ebx),%edx
 605:	83 c3 01             	add    $0x1,%ebx
 608:	84 d2                	test   %dl,%dl
 60a:	74 24                	je     630 <printf+0x80>
    c = fmt[i] & 0xff;
 60c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 60f:	85 c9                	test   %ecx,%ecx
 611:	74 cd                	je     5e0 <printf+0x30>
      }
    } else if(state == '%'){
 613:	83 f9 25             	cmp    $0x25,%ecx
 616:	75 ea                	jne    602 <printf+0x52>
      if(c == 'd'){
 618:	83 f8 25             	cmp    $0x25,%eax
 61b:	0f 84 07 01 00 00    	je     728 <printf+0x178>
 621:	83 e8 63             	sub    $0x63,%eax
 624:	83 f8 15             	cmp    $0x15,%eax
 627:	77 17                	ja     640 <printf+0x90>
 629:	ff 24 85 d8 09 00 00 	jmp    *0x9d8(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 630:	8d 65 f4             	lea    -0xc(%ebp),%esp
 633:	5b                   	pop    %ebx
 634:	5e                   	pop    %esi
 635:	5f                   	pop    %edi
 636:	5d                   	pop    %ebp
 637:	c3                   	ret    
 638:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 63f:	90                   	nop
  write(fd, &c, 1);
 640:	83 ec 04             	sub    $0x4,%esp
 643:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 646:	6a 01                	push   $0x1
 648:	57                   	push   %edi
 649:	56                   	push   %esi
 64a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 64e:	e8 10 fe ff ff       	call   463 <write>
        putc(fd, c);
 653:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 657:	83 c4 0c             	add    $0xc,%esp
 65a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 65d:	6a 01                	push   $0x1
 65f:	57                   	push   %edi
 660:	56                   	push   %esi
 661:	e8 fd fd ff ff       	call   463 <write>
        putc(fd, c);
 666:	83 c4 10             	add    $0x10,%esp
      state = 0;
 669:	31 c9                	xor    %ecx,%ecx
 66b:	eb 95                	jmp    602 <printf+0x52>
 66d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 670:	83 ec 0c             	sub    $0xc,%esp
 673:	b9 10 00 00 00       	mov    $0x10,%ecx
 678:	6a 00                	push   $0x0
 67a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 67d:	8b 10                	mov    (%eax),%edx
 67f:	89 f0                	mov    %esi,%eax
 681:	e8 7a fe ff ff       	call   500 <printint>
        ap++;
 686:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 68a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 68d:	31 c9                	xor    %ecx,%ecx
 68f:	e9 6e ff ff ff       	jmp    602 <printf+0x52>
 694:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 698:	8b 45 d0             	mov    -0x30(%ebp),%eax
 69b:	8b 10                	mov    (%eax),%edx
        ap++;
 69d:	83 c0 04             	add    $0x4,%eax
 6a0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 6a3:	85 d2                	test   %edx,%edx
 6a5:	0f 84 8d 00 00 00    	je     738 <printf+0x188>
        while(*s != 0){
 6ab:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 6ae:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 6b0:	84 c0                	test   %al,%al
 6b2:	0f 84 4a ff ff ff    	je     602 <printf+0x52>
 6b8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 6bb:	89 d3                	mov    %edx,%ebx
 6bd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 6c0:	83 ec 04             	sub    $0x4,%esp
          s++;
 6c3:	83 c3 01             	add    $0x1,%ebx
 6c6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 6c9:	6a 01                	push   $0x1
 6cb:	57                   	push   %edi
 6cc:	56                   	push   %esi
 6cd:	e8 91 fd ff ff       	call   463 <write>
        while(*s != 0){
 6d2:	0f b6 03             	movzbl (%ebx),%eax
 6d5:	83 c4 10             	add    $0x10,%esp
 6d8:	84 c0                	test   %al,%al
 6da:	75 e4                	jne    6c0 <printf+0x110>
      state = 0;
 6dc:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 6df:	31 c9                	xor    %ecx,%ecx
 6e1:	e9 1c ff ff ff       	jmp    602 <printf+0x52>
 6e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6ed:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 6f0:	83 ec 0c             	sub    $0xc,%esp
 6f3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 6f8:	6a 01                	push   $0x1
 6fa:	e9 7b ff ff ff       	jmp    67a <printf+0xca>
 6ff:	90                   	nop
        putc(fd, *ap);
 700:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 703:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 706:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 708:	6a 01                	push   $0x1
 70a:	57                   	push   %edi
 70b:	56                   	push   %esi
        putc(fd, *ap);
 70c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 70f:	e8 4f fd ff ff       	call   463 <write>
        ap++;
 714:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 718:	83 c4 10             	add    $0x10,%esp
      state = 0;
 71b:	31 c9                	xor    %ecx,%ecx
 71d:	e9 e0 fe ff ff       	jmp    602 <printf+0x52>
 722:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 728:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 72b:	83 ec 04             	sub    $0x4,%esp
 72e:	e9 2a ff ff ff       	jmp    65d <printf+0xad>
 733:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 737:	90                   	nop
          s = "(null)";
 738:	ba ce 09 00 00       	mov    $0x9ce,%edx
        while(*s != 0){
 73d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 740:	b8 28 00 00 00       	mov    $0x28,%eax
 745:	89 d3                	mov    %edx,%ebx
 747:	e9 74 ff ff ff       	jmp    6c0 <printf+0x110>
 74c:	66 90                	xchg   %ax,%ax
 74e:	66 90                	xchg   %ax,%ax

00000750 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 750:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 751:	a1 04 0d 00 00       	mov    0xd04,%eax
{
 756:	89 e5                	mov    %esp,%ebp
 758:	57                   	push   %edi
 759:	56                   	push   %esi
 75a:	53                   	push   %ebx
 75b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 75e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 761:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 768:	89 c2                	mov    %eax,%edx
 76a:	8b 00                	mov    (%eax),%eax
 76c:	39 ca                	cmp    %ecx,%edx
 76e:	73 30                	jae    7a0 <free+0x50>
 770:	39 c1                	cmp    %eax,%ecx
 772:	72 04                	jb     778 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 774:	39 c2                	cmp    %eax,%edx
 776:	72 f0                	jb     768 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 778:	8b 73 fc             	mov    -0x4(%ebx),%esi
 77b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 77e:	39 f8                	cmp    %edi,%eax
 780:	74 30                	je     7b2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 782:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 785:	8b 42 04             	mov    0x4(%edx),%eax
 788:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 78b:	39 f1                	cmp    %esi,%ecx
 78d:	74 3a                	je     7c9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 78f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 791:	5b                   	pop    %ebx
  freep = p;
 792:	89 15 04 0d 00 00    	mov    %edx,0xd04
}
 798:	5e                   	pop    %esi
 799:	5f                   	pop    %edi
 79a:	5d                   	pop    %ebp
 79b:	c3                   	ret    
 79c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 7a0:	39 c2                	cmp    %eax,%edx
 7a2:	72 c4                	jb     768 <free+0x18>
 7a4:	39 c1                	cmp    %eax,%ecx
 7a6:	73 c0                	jae    768 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 7a8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 7ab:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 7ae:	39 f8                	cmp    %edi,%eax
 7b0:	75 d0                	jne    782 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 7b2:	03 70 04             	add    0x4(%eax),%esi
 7b5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 7b8:	8b 02                	mov    (%edx),%eax
 7ba:	8b 00                	mov    (%eax),%eax
 7bc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 7bf:	8b 42 04             	mov    0x4(%edx),%eax
 7c2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 7c5:	39 f1                	cmp    %esi,%ecx
 7c7:	75 c6                	jne    78f <free+0x3f>
    p->s.size += bp->s.size;
 7c9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 7cc:	89 15 04 0d 00 00    	mov    %edx,0xd04
    p->s.size += bp->s.size;
 7d2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 7d5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 7d8:	89 0a                	mov    %ecx,(%edx)
}
 7da:	5b                   	pop    %ebx
 7db:	5e                   	pop    %esi
 7dc:	5f                   	pop    %edi
 7dd:	5d                   	pop    %ebp
 7de:	c3                   	ret    
 7df:	90                   	nop

000007e0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 7e0:	55                   	push   %ebp
 7e1:	89 e5                	mov    %esp,%ebp
 7e3:	57                   	push   %edi
 7e4:	56                   	push   %esi
 7e5:	53                   	push   %ebx
 7e6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 7e9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 7ec:	8b 3d 04 0d 00 00    	mov    0xd04,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 7f2:	8d 70 07             	lea    0x7(%eax),%esi
 7f5:	c1 ee 03             	shr    $0x3,%esi
 7f8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 7fb:	85 ff                	test   %edi,%edi
 7fd:	0f 84 9d 00 00 00    	je     8a0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 803:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 805:	8b 4a 04             	mov    0x4(%edx),%ecx
 808:	39 f1                	cmp    %esi,%ecx
 80a:	73 6a                	jae    876 <malloc+0x96>
 80c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 811:	39 de                	cmp    %ebx,%esi
 813:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 816:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 81d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 820:	eb 17                	jmp    839 <malloc+0x59>
 822:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 828:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 82a:	8b 48 04             	mov    0x4(%eax),%ecx
 82d:	39 f1                	cmp    %esi,%ecx
 82f:	73 4f                	jae    880 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 831:	8b 3d 04 0d 00 00    	mov    0xd04,%edi
 837:	89 c2                	mov    %eax,%edx
 839:	39 d7                	cmp    %edx,%edi
 83b:	75 eb                	jne    828 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 83d:	83 ec 0c             	sub    $0xc,%esp
 840:	ff 75 e4             	push   -0x1c(%ebp)
 843:	e8 83 fc ff ff       	call   4cb <sbrk>
  if(p == (char*)-1)
 848:	83 c4 10             	add    $0x10,%esp
 84b:	83 f8 ff             	cmp    $0xffffffff,%eax
 84e:	74 1c                	je     86c <malloc+0x8c>
  hp->s.size = nu;
 850:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 853:	83 ec 0c             	sub    $0xc,%esp
 856:	83 c0 08             	add    $0x8,%eax
 859:	50                   	push   %eax
 85a:	e8 f1 fe ff ff       	call   750 <free>
  return freep;
 85f:	8b 15 04 0d 00 00    	mov    0xd04,%edx
      if((p = morecore(nunits)) == 0)
 865:	83 c4 10             	add    $0x10,%esp
 868:	85 d2                	test   %edx,%edx
 86a:	75 bc                	jne    828 <malloc+0x48>
        return 0;
  }
}
 86c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 86f:	31 c0                	xor    %eax,%eax
}
 871:	5b                   	pop    %ebx
 872:	5e                   	pop    %esi
 873:	5f                   	pop    %edi
 874:	5d                   	pop    %ebp
 875:	c3                   	ret    
    if(p->s.size >= nunits){
 876:	89 d0                	mov    %edx,%eax
 878:	89 fa                	mov    %edi,%edx
 87a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 880:	39 ce                	cmp    %ecx,%esi
 882:	74 4c                	je     8d0 <malloc+0xf0>
        p->s.size -= nunits;
 884:	29 f1                	sub    %esi,%ecx
 886:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 889:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 88c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 88f:	89 15 04 0d 00 00    	mov    %edx,0xd04
}
 895:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 898:	83 c0 08             	add    $0x8,%eax
}
 89b:	5b                   	pop    %ebx
 89c:	5e                   	pop    %esi
 89d:	5f                   	pop    %edi
 89e:	5d                   	pop    %ebp
 89f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 8a0:	c7 05 04 0d 00 00 08 	movl   $0xd08,0xd04
 8a7:	0d 00 00 
    base.s.size = 0;
 8aa:	bf 08 0d 00 00       	mov    $0xd08,%edi
    base.s.ptr = freep = prevp = &base;
 8af:	c7 05 08 0d 00 00 08 	movl   $0xd08,0xd08
 8b6:	0d 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8b9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 8bb:	c7 05 0c 0d 00 00 00 	movl   $0x0,0xd0c
 8c2:	00 00 00 
    if(p->s.size >= nunits){
 8c5:	e9 42 ff ff ff       	jmp    80c <malloc+0x2c>
 8ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 8d0:	8b 08                	mov    (%eax),%ecx
 8d2:	89 0a                	mov    %ecx,(%edx)
 8d4:	eb b9                	jmp    88f <malloc+0xaf>
