
_test_16:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
void worker(void *arg1, void *arg2);
void nested_worker(void *arg1, void *arg2);

int
main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	53                   	push   %ebx
   e:	51                   	push   %ecx
   f:	83 ec 10             	sub    $0x10,%esp
   ppid = getpid();
  12:	e8 4d 06 00 00       	call   664 <getpid>

   int arg1 = 35;
   int arg2 = 42;
   int thread_pid = thread_create(worker, &arg1, &arg2);
  17:	83 ec 04             	sub    $0x4,%esp
   int arg1 = 35;
  1a:	c7 45 f0 23 00 00 00 	movl   $0x23,-0x10(%ebp)
   ppid = getpid();
  21:	a3 38 0f 00 00       	mov    %eax,0xf38
   int thread_pid = thread_create(worker, &arg1, &arg2);
  26:	8d 45 f4             	lea    -0xc(%ebp),%eax
  29:	50                   	push   %eax
  2a:	8d 45 f0             	lea    -0x10(%ebp),%eax
  2d:	50                   	push   %eax
  2e:	68 c0 01 00 00       	push   $0x1c0
   int arg2 = 42;
  33:	c7 45 f4 2a 00 00 00 	movl   $0x2a,-0xc(%ebp)
   int thread_pid = thread_create(worker, &arg1, &arg2);
  3a:	e8 d1 04 00 00       	call   510 <thread_create>
   assert(thread_pid > 0);
  3f:	83 c4 10             	add    $0x10,%esp
  42:	85 c0                	test   %eax,%eax
  44:	7e 7b                	jle    c1 <main+0xc1>
  46:	89 c3                	mov    %eax,%ebx

   int join_pid = thread_join();
  48:	e8 13 05 00 00       	call   560 <thread_join>
   assert(join_pid == thread_pid);
  4d:	39 c3                	cmp    %eax,%ebx
  4f:	75 2a                	jne    7b <main+0x7b>
   assert(global == 3);
  51:	83 3d 34 0f 00 00 03 	cmpl   $0x3,0xf34
  58:	0f 84 80 00 00 00    	je     de <main+0xde>
  5e:	6a 24                	push   $0x24
  60:	68 78 0a 00 00       	push   $0xa78
  65:	68 82 0a 00 00       	push   $0xa82
  6a:	6a 01                	push   $0x1
  6c:	e8 df 06 00 00       	call   750 <printf>
  71:	83 c4 0c             	add    $0xc,%esp
  74:	68 07 0b 00 00       	push   $0xb07
  79:	eb 1b                	jmp    96 <main+0x96>
   assert(join_pid == thread_pid);
  7b:	6a 23                	push   $0x23
  7d:	68 78 0a 00 00       	push   $0xa78
  82:	68 82 0a 00 00       	push   $0xa82
  87:	6a 01                	push   $0x1
  89:	e8 c2 06 00 00       	call   750 <printf>
  8e:	83 c4 0c             	add    $0xc,%esp
  91:	68 f0 0a 00 00       	push   $0xaf0
  96:	68 99 0a 00 00       	push   $0xa99
  9b:	6a 01                	push   $0x1
  9d:	e8 ae 06 00 00       	call   750 <printf>
  a2:	5a                   	pop    %edx
  a3:	59                   	pop    %ecx
  a4:	68 ad 0a 00 00       	push   $0xaad
  a9:	6a 01                	push   $0x1
  ab:	e8 a0 06 00 00       	call   750 <printf>
  b0:	5b                   	pop    %ebx
  b1:	ff 35 38 0f 00 00    	push   0xf38
  b7:	e8 58 05 00 00       	call   614 <kill>
  bc:	e8 23 05 00 00       	call   5e4 <exit>
   assert(thread_pid > 0);
  c1:	6a 20                	push   $0x20
  c3:	68 78 0a 00 00       	push   $0xa78
  c8:	68 82 0a 00 00       	push   $0xa82
  cd:	6a 01                	push   $0x1
  cf:	e8 7c 06 00 00       	call   750 <printf>
  d4:	83 c4 0c             	add    $0xc,%esp
  d7:	68 e1 0a 00 00       	push   $0xae1
  dc:	eb b8                	jmp    96 <main+0x96>

   printf(1, "TEST PASSED\n");
  de:	50                   	push   %eax
  df:	50                   	push   %eax
  e0:	68 13 0b 00 00       	push   $0xb13
  e5:	6a 01                	push   $0x1
  e7:	e8 64 06 00 00       	call   750 <printf>
   exit();
  ec:	e8 f3 04 00 00       	call   5e4 <exit>
  f1:	66 90                	xchg   %ax,%ax
  f3:	66 90                	xchg   %ax,%ax
  f5:	66 90                	xchg   %ax,%ax
  f7:	66 90                	xchg   %ax,%ax
  f9:	66 90                	xchg   %ax,%ax
  fb:	66 90                	xchg   %ax,%ax
  fd:	66 90                	xchg   %ax,%ax
  ff:	90                   	nop

00000100 <nested_worker>:
}


void nested_worker(void *arg1, void *arg2){
 100:	55                   	push   %ebp
 101:	89 e5                	mov    %esp,%ebp
 103:	83 ec 08             	sub    $0x8,%esp
   int arg1_int = *(int*)arg1;
   int arg2_int = *(int*)arg2;
 106:	8b 45 0c             	mov    0xc(%ebp),%eax
 109:	8b 10                	mov    (%eax),%edx
   assert(arg1_int == 35);
 10b:	8b 45 08             	mov    0x8(%ebp),%eax
 10e:	83 38 23             	cmpl   $0x23,(%eax)
 111:	75 75                	jne    188 <nested_worker+0x88>
   assert(arg2_int == 42);
 113:	83 fa 2a             	cmp    $0x2a,%edx
 116:	75 2a                	jne    142 <nested_worker+0x42>
   assert(global == 2);
 118:	83 3d 34 0f 00 00 02 	cmpl   $0x2,0xf34
 11f:	0f 84 80 00 00 00    	je     1a5 <nested_worker+0xa5>
 125:	6a 30                	push   $0x30
 127:	68 78 0a 00 00       	push   $0xa78
 12c:	68 82 0a 00 00       	push   $0xa82
 131:	6a 01                	push   $0x1
 133:	e8 18 06 00 00       	call   750 <printf>
 138:	83 c4 0c             	add    $0xc,%esp
 13b:	68 c9 0a 00 00       	push   $0xac9
 140:	eb 1b                	jmp    15d <nested_worker+0x5d>
   assert(arg2_int == 42);
 142:	6a 2f                	push   $0x2f
 144:	68 78 0a 00 00       	push   $0xa78
 149:	68 82 0a 00 00       	push   $0xa82
 14e:	6a 01                	push   $0x1
 150:	e8 fb 05 00 00       	call   750 <printf>
 155:	83 c4 0c             	add    $0xc,%esp
 158:	68 ba 0a 00 00       	push   $0xaba
 15d:	68 99 0a 00 00       	push   $0xa99
 162:	6a 01                	push   $0x1
 164:	e8 e7 05 00 00       	call   750 <printf>
 169:	58                   	pop    %eax
 16a:	5a                   	pop    %edx
 16b:	68 ad 0a 00 00       	push   $0xaad
 170:	6a 01                	push   $0x1
 172:	e8 d9 05 00 00       	call   750 <printf>
 177:	59                   	pop    %ecx
 178:	ff 35 38 0f 00 00    	push   0xf38
 17e:	e8 91 04 00 00       	call   614 <kill>
 183:	e8 5c 04 00 00       	call   5e4 <exit>
   assert(arg1_int == 35);
 188:	6a 2e                	push   $0x2e
 18a:	68 78 0a 00 00       	push   $0xa78
 18f:	68 82 0a 00 00       	push   $0xa82
 194:	6a 01                	push   $0x1
 196:	e8 b5 05 00 00       	call   750 <printf>
 19b:	83 c4 0c             	add    $0xc,%esp
 19e:	68 8a 0a 00 00       	push   $0xa8a
 1a3:	eb b8                	jmp    15d <nested_worker+0x5d>
   global++;
 1a5:	c7 05 34 0f 00 00 03 	movl   $0x3,0xf34
 1ac:	00 00 00 
   exit();
 1af:	e8 30 04 00 00       	call   5e4 <exit>
 1b4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1bf:	90                   	nop

000001c0 <worker>:
}

void
worker(void *arg1, void *arg2) {
 1c0:	55                   	push   %ebp
 1c1:	89 e5                	mov    %esp,%ebp
 1c3:	53                   	push   %ebx
 1c4:	83 ec 14             	sub    $0x14,%esp
   int arg1_int = *(int*)arg1;
 1c7:	8b 45 08             	mov    0x8(%ebp),%eax
   int arg2_int = *(int*)arg2;
 1ca:	8b 55 0c             	mov    0xc(%ebp),%edx
   int arg1_int = *(int*)arg1;
 1cd:	8b 00                	mov    (%eax),%eax
   int arg2_int = *(int*)arg2;
 1cf:	8b 12                	mov    (%edx),%edx
   int arg1_int = *(int*)arg1;
 1d1:	89 45 f0             	mov    %eax,-0x10(%ebp)
   int arg2_int = *(int*)arg2;
 1d4:	89 55 f4             	mov    %edx,-0xc(%ebp)
   assert(arg1_int == 35);
 1d7:	83 f8 23             	cmp    $0x23,%eax
 1da:	75 75                	jne    251 <worker+0x91>
   assert(arg2_int == 42);
 1dc:	83 fa 2a             	cmp    $0x2a,%edx
 1df:	75 2a                	jne    20b <worker+0x4b>
   assert(global == 1);
 1e1:	83 3d 34 0f 00 00 01 	cmpl   $0x1,0xf34
 1e8:	0f 84 80 00 00 00    	je     26e <worker+0xae>
 1ee:	6a 3b                	push   $0x3b
 1f0:	68 78 0a 00 00       	push   $0xa78
 1f5:	68 82 0a 00 00       	push   $0xa82
 1fa:	6a 01                	push   $0x1
 1fc:	e8 4f 05 00 00       	call   750 <printf>
 201:	83 c4 0c             	add    $0xc,%esp
 204:	68 d5 0a 00 00       	push   $0xad5
 209:	eb 1b                	jmp    226 <worker+0x66>
   assert(arg2_int == 42);
 20b:	6a 3a                	push   $0x3a
 20d:	68 78 0a 00 00       	push   $0xa78
 212:	68 82 0a 00 00       	push   $0xa82
 217:	6a 01                	push   $0x1
 219:	e8 32 05 00 00       	call   750 <printf>
 21e:	83 c4 0c             	add    $0xc,%esp
 221:	68 ba 0a 00 00       	push   $0xaba
 226:	68 99 0a 00 00       	push   $0xa99
 22b:	6a 01                	push   $0x1
 22d:	e8 1e 05 00 00       	call   750 <printf>
 232:	5a                   	pop    %edx
 233:	59                   	pop    %ecx
 234:	68 ad 0a 00 00       	push   $0xaad
 239:	6a 01                	push   $0x1
 23b:	e8 10 05 00 00       	call   750 <printf>
 240:	5b                   	pop    %ebx
 241:	ff 35 38 0f 00 00    	push   0xf38
 247:	e8 c8 03 00 00       	call   614 <kill>
 24c:	e8 93 03 00 00       	call   5e4 <exit>
   assert(arg1_int == 35);
 251:	6a 39                	push   $0x39
 253:	68 78 0a 00 00       	push   $0xa78
 258:	68 82 0a 00 00       	push   $0xa82
 25d:	6a 01                	push   $0x1
 25f:	e8 ec 04 00 00       	call   750 <printf>
 264:	83 c4 0c             	add    $0xc,%esp
 267:	68 8a 0a 00 00       	push   $0xa8a
 26c:	eb b8                	jmp    226 <worker+0x66>
   global++;
   int nested_thread_pid = thread_create(nested_worker, &arg1_int, &arg2_int);
 26e:	50                   	push   %eax
 26f:	8d 45 f4             	lea    -0xc(%ebp),%eax
 272:	50                   	push   %eax
 273:	8d 45 f0             	lea    -0x10(%ebp),%eax
 276:	50                   	push   %eax
 277:	68 00 01 00 00       	push   $0x100
   global++;
 27c:	c7 05 34 0f 00 00 02 	movl   $0x2,0xf34
 283:	00 00 00 
   int nested_thread_pid = thread_create(nested_worker, &arg1_int, &arg2_int);
 286:	e8 85 02 00 00       	call   510 <thread_create>
 28b:	89 c3                	mov    %eax,%ebx
   int nested_join_pid = thread_join();
 28d:	e8 ce 02 00 00       	call   560 <thread_join>
   assert(nested_join_pid == nested_thread_pid);
 292:	83 c4 10             	add    $0x10,%esp
 295:	39 c3                	cmp    %eax,%ebx
 297:	74 20                	je     2b9 <worker+0xf9>
 299:	6a 3f                	push   $0x3f
 29b:	68 78 0a 00 00       	push   $0xa78
 2a0:	68 82 0a 00 00       	push   $0xa82
 2a5:	6a 01                	push   $0x1
 2a7:	e8 a4 04 00 00       	call   750 <printf>
 2ac:	83 c4 0c             	add    $0xc,%esp
 2af:	68 20 0b 00 00       	push   $0xb20
 2b4:	e9 6d ff ff ff       	jmp    226 <worker+0x66>
   exit();
 2b9:	e8 26 03 00 00       	call   5e4 <exit>
 2be:	66 90                	xchg   %ax,%ax

000002c0 <strcpy>:
#include "x86.h"
#define PGSIZE 4096

char*
strcpy(char *s, const char *t)
{
 2c0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 2c1:	31 c0                	xor    %eax,%eax
{
 2c3:	89 e5                	mov    %esp,%ebp
 2c5:	53                   	push   %ebx
 2c6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 2c9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 2cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 2d0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 2d4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 2d7:	83 c0 01             	add    $0x1,%eax
 2da:	84 d2                	test   %dl,%dl
 2dc:	75 f2                	jne    2d0 <strcpy+0x10>
    ;
  return os;
}
 2de:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2e1:	89 c8                	mov    %ecx,%eax
 2e3:	c9                   	leave  
 2e4:	c3                   	ret    
 2e5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000002f0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 2f0:	55                   	push   %ebp
 2f1:	89 e5                	mov    %esp,%ebp
 2f3:	53                   	push   %ebx
 2f4:	8b 55 08             	mov    0x8(%ebp),%edx
 2f7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 2fa:	0f b6 02             	movzbl (%edx),%eax
 2fd:	84 c0                	test   %al,%al
 2ff:	75 17                	jne    318 <strcmp+0x28>
 301:	eb 3a                	jmp    33d <strcmp+0x4d>
 303:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 307:	90                   	nop
 308:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 30c:	83 c2 01             	add    $0x1,%edx
 30f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 312:	84 c0                	test   %al,%al
 314:	74 1a                	je     330 <strcmp+0x40>
    p++, q++;
 316:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 318:	0f b6 19             	movzbl (%ecx),%ebx
 31b:	38 c3                	cmp    %al,%bl
 31d:	74 e9                	je     308 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 31f:	29 d8                	sub    %ebx,%eax
}
 321:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 324:	c9                   	leave  
 325:	c3                   	ret    
 326:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 32d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 330:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 334:	31 c0                	xor    %eax,%eax
 336:	29 d8                	sub    %ebx,%eax
}
 338:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 33b:	c9                   	leave  
 33c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 33d:	0f b6 19             	movzbl (%ecx),%ebx
 340:	31 c0                	xor    %eax,%eax
 342:	eb db                	jmp    31f <strcmp+0x2f>
 344:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 34b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 34f:	90                   	nop

00000350 <strlen>:

uint
strlen(const char *s)
{
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 356:	80 3a 00             	cmpb   $0x0,(%edx)
 359:	74 15                	je     370 <strlen+0x20>
 35b:	31 c0                	xor    %eax,%eax
 35d:	8d 76 00             	lea    0x0(%esi),%esi
 360:	83 c0 01             	add    $0x1,%eax
 363:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 367:	89 c1                	mov    %eax,%ecx
 369:	75 f5                	jne    360 <strlen+0x10>
    ;
  return n;
}
 36b:	89 c8                	mov    %ecx,%eax
 36d:	5d                   	pop    %ebp
 36e:	c3                   	ret    
 36f:	90                   	nop
  for(n = 0; s[n]; n++)
 370:	31 c9                	xor    %ecx,%ecx
}
 372:	5d                   	pop    %ebp
 373:	89 c8                	mov    %ecx,%eax
 375:	c3                   	ret    
 376:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 37d:	8d 76 00             	lea    0x0(%esi),%esi

00000380 <memset>:

void*
memset(void *dst, int c, uint n)
{
 380:	55                   	push   %ebp
 381:	89 e5                	mov    %esp,%ebp
 383:	57                   	push   %edi
 384:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 387:	8b 4d 10             	mov    0x10(%ebp),%ecx
 38a:	8b 45 0c             	mov    0xc(%ebp),%eax
 38d:	89 d7                	mov    %edx,%edi
 38f:	fc                   	cld    
 390:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 392:	8b 7d fc             	mov    -0x4(%ebp),%edi
 395:	89 d0                	mov    %edx,%eax
 397:	c9                   	leave  
 398:	c3                   	ret    
 399:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003a0 <strchr>:

char*
strchr(const char *s, char c)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	8b 45 08             	mov    0x8(%ebp),%eax
 3a6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 3aa:	0f b6 10             	movzbl (%eax),%edx
 3ad:	84 d2                	test   %dl,%dl
 3af:	75 12                	jne    3c3 <strchr+0x23>
 3b1:	eb 1d                	jmp    3d0 <strchr+0x30>
 3b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3b7:	90                   	nop
 3b8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 3bc:	83 c0 01             	add    $0x1,%eax
 3bf:	84 d2                	test   %dl,%dl
 3c1:	74 0d                	je     3d0 <strchr+0x30>
    if(*s == c)
 3c3:	38 d1                	cmp    %dl,%cl
 3c5:	75 f1                	jne    3b8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 3c7:	5d                   	pop    %ebp
 3c8:	c3                   	ret    
 3c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 3d0:	31 c0                	xor    %eax,%eax
}
 3d2:	5d                   	pop    %ebp
 3d3:	c3                   	ret    
 3d4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3df:	90                   	nop

000003e0 <gets>:

char*
gets(char *buf, int max)
{
 3e0:	55                   	push   %ebp
 3e1:	89 e5                	mov    %esp,%ebp
 3e3:	57                   	push   %edi
 3e4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 3e5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 3e8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 3e9:	31 db                	xor    %ebx,%ebx
{
 3eb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 3ee:	eb 27                	jmp    417 <gets+0x37>
    cc = read(0, &c, 1);
 3f0:	83 ec 04             	sub    $0x4,%esp
 3f3:	6a 01                	push   $0x1
 3f5:	57                   	push   %edi
 3f6:	6a 00                	push   $0x0
 3f8:	e8 ff 01 00 00       	call   5fc <read>
    if(cc < 1)
 3fd:	83 c4 10             	add    $0x10,%esp
 400:	85 c0                	test   %eax,%eax
 402:	7e 1d                	jle    421 <gets+0x41>
      break;
    buf[i++] = c;
 404:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 408:	8b 55 08             	mov    0x8(%ebp),%edx
 40b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 40f:	3c 0a                	cmp    $0xa,%al
 411:	74 1d                	je     430 <gets+0x50>
 413:	3c 0d                	cmp    $0xd,%al
 415:	74 19                	je     430 <gets+0x50>
  for(i=0; i+1 < max; ){
 417:	89 de                	mov    %ebx,%esi
 419:	83 c3 01             	add    $0x1,%ebx
 41c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 41f:	7c cf                	jl     3f0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 421:	8b 45 08             	mov    0x8(%ebp),%eax
 424:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 428:	8d 65 f4             	lea    -0xc(%ebp),%esp
 42b:	5b                   	pop    %ebx
 42c:	5e                   	pop    %esi
 42d:	5f                   	pop    %edi
 42e:	5d                   	pop    %ebp
 42f:	c3                   	ret    
  buf[i] = '\0';
 430:	8b 45 08             	mov    0x8(%ebp),%eax
 433:	89 de                	mov    %ebx,%esi
 435:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 439:	8d 65 f4             	lea    -0xc(%ebp),%esp
 43c:	5b                   	pop    %ebx
 43d:	5e                   	pop    %esi
 43e:	5f                   	pop    %edi
 43f:	5d                   	pop    %ebp
 440:	c3                   	ret    
 441:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 448:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 44f:	90                   	nop

00000450 <stat>:

int
stat(const char *n, struct stat *st)
{
 450:	55                   	push   %ebp
 451:	89 e5                	mov    %esp,%ebp
 453:	56                   	push   %esi
 454:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 455:	83 ec 08             	sub    $0x8,%esp
 458:	6a 00                	push   $0x0
 45a:	ff 75 08             	push   0x8(%ebp)
 45d:	e8 c2 01 00 00       	call   624 <open>
  if(fd < 0)
 462:	83 c4 10             	add    $0x10,%esp
 465:	85 c0                	test   %eax,%eax
 467:	78 27                	js     490 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 469:	83 ec 08             	sub    $0x8,%esp
 46c:	ff 75 0c             	push   0xc(%ebp)
 46f:	89 c3                	mov    %eax,%ebx
 471:	50                   	push   %eax
 472:	e8 c5 01 00 00       	call   63c <fstat>
  close(fd);
 477:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 47a:	89 c6                	mov    %eax,%esi
  close(fd);
 47c:	e8 8b 01 00 00       	call   60c <close>
  return r;
 481:	83 c4 10             	add    $0x10,%esp
}
 484:	8d 65 f8             	lea    -0x8(%ebp),%esp
 487:	89 f0                	mov    %esi,%eax
 489:	5b                   	pop    %ebx
 48a:	5e                   	pop    %esi
 48b:	5d                   	pop    %ebp
 48c:	c3                   	ret    
 48d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 490:	be ff ff ff ff       	mov    $0xffffffff,%esi
 495:	eb ed                	jmp    484 <stat+0x34>
 497:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 49e:	66 90                	xchg   %ax,%ax

000004a0 <atoi>:

int
atoi(const char *s)
{
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	53                   	push   %ebx
 4a4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 4a7:	0f be 02             	movsbl (%edx),%eax
 4aa:	8d 48 d0             	lea    -0x30(%eax),%ecx
 4ad:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 4b0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 4b5:	77 1e                	ja     4d5 <atoi+0x35>
 4b7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4be:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 4c0:	83 c2 01             	add    $0x1,%edx
 4c3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 4c6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 4ca:	0f be 02             	movsbl (%edx),%eax
 4cd:	8d 58 d0             	lea    -0x30(%eax),%ebx
 4d0:	80 fb 09             	cmp    $0x9,%bl
 4d3:	76 eb                	jbe    4c0 <atoi+0x20>
  return n;
}
 4d5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4d8:	89 c8                	mov    %ecx,%eax
 4da:	c9                   	leave  
 4db:	c3                   	ret    
 4dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004e0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 4e0:	55                   	push   %ebp
 4e1:	89 e5                	mov    %esp,%ebp
 4e3:	57                   	push   %edi
 4e4:	8b 45 10             	mov    0x10(%ebp),%eax
 4e7:	8b 55 08             	mov    0x8(%ebp),%edx
 4ea:	56                   	push   %esi
 4eb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 4ee:	85 c0                	test   %eax,%eax
 4f0:	7e 13                	jle    505 <memmove+0x25>
 4f2:	01 d0                	add    %edx,%eax
  dst = vdst;
 4f4:	89 d7                	mov    %edx,%edi
 4f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4fd:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 500:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 501:	39 f8                	cmp    %edi,%eax
 503:	75 fb                	jne    500 <memmove+0x20>
  return vdst;
}
 505:	5e                   	pop    %esi
 506:	89 d0                	mov    %edx,%eax
 508:	5f                   	pop    %edi
 509:	5d                   	pop    %ebp
 50a:	c3                   	ret    
 50b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 50f:	90                   	nop

00000510 <thread_create>:

// call malloc() to create a new user stack
// use clone() to create the child thread -> get it running
// returns the newly created PID to the parent && 0 to child if successful
// returns -1 if unsucessful
int thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2) {
 510:	55                   	push   %ebp
 511:	89 e5                	mov    %esp,%ebp
 513:	83 ec 14             	sub    $0x14,%esp

  void *stack;
  if ((stack= malloc(2*PGSIZE)) == 0){
 516:	68 00 20 00 00       	push   $0x2000
 51b:	e8 60 04 00 00       	call   980 <malloc>
 520:	83 c4 10             	add    $0x10,%esp
 523:	85 c0                	test   %eax,%eax
 525:	74 25                	je     54c <thread_create+0x3c>
    return -1;
  }

  // stack - page aligned
  if((uint)stack % PGSIZE)
 527:	89 c2                	mov    %eax,%edx
 529:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 52f:	74 07                	je     538 <thread_create+0x28>
    stack = stack + (PGSIZE - (uint)stack % PGSIZE);
 531:	29 d0                	sub    %edx,%eax
 533:	05 00 10 00 00       	add    $0x1000,%eax

  int childPid = clone(start_routine, arg1, arg2, stack);
 538:	50                   	push   %eax
 539:	ff 75 10             	push   0x10(%ebp)
 53c:	ff 75 0c             	push   0xc(%ebp)
 53f:	ff 75 08             	push   0x8(%ebp)
 542:	e8 3d 01 00 00       	call   684 <clone>

  return childPid;
 547:	83 c4 10             	add    $0x10,%esp
}
 54a:	c9                   	leave  
 54b:	c3                   	ret    
 54c:	c9                   	leave  
    return -1;
 54d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
 552:	c3                   	ret    
 553:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 55a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000560 <thread_join>:

// call join() and frees the user stack
// returns waited-for PID if successful, -1 otherwise
int thread_join() {
 560:	55                   	push   %ebp
 561:	89 e5                	mov    %esp,%ebp
 563:	53                   	push   %ebx

  void *stack;
  int childpid = join(&stack);
 564:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join() {
 567:	83 ec 20             	sub    $0x20,%esp
  int childpid = join(&stack);
 56a:	50                   	push   %eax
 56b:	e8 1c 01 00 00       	call   68c <join>
 570:	89 c3                	mov    %eax,%ebx
  free(stack);
 572:	58                   	pop    %eax
 573:	ff 75 f4             	push   -0xc(%ebp)
 576:	e8 75 03 00 00       	call   8f0 <free>
  return childpid;
}
 57b:	89 d8                	mov    %ebx,%eax
 57d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 580:	c9                   	leave  
 581:	c3                   	ret    
 582:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 589:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000590 <lock_init>:
      : "memory"
    );
    return value;
}
 
void lock_init(lock_t *lock) {
 590:	55                   	push   %ebp
 591:	89 e5                	mov    %esp,%ebp
 593:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 596:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 59c:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 5a3:	5d                   	pop    %ebp
 5a4:	c3                   	ret    
 5a5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000005b0 <lock_acquire>:

void lock_acquire(lock_t *lock) {
 5b0:	55                   	push   %ebp
 5b1:	89 e5                	mov    %esp,%ebp
 5b3:	8b 55 08             	mov    0x8(%ebp),%edx
    __asm__ volatile("lock; xaddl %0, %1"
 5b6:	8b 02                	mov    (%edx),%eax
 5b8:	f0 0f c1 02          	lock xadd %eax,(%edx)
  int myturn = FetchAndAdd(&lock->ticket, lock->ticket);
  while (lock->turn != myturn)  ; // spin
 5bc:	8b 52 04             	mov    0x4(%edx),%edx
 5bf:	90                   	nop
 5c0:	39 c2                	cmp    %eax,%edx
 5c2:	75 fc                	jne    5c0 <lock_acquire+0x10>
}
 5c4:	5d                   	pop    %ebp
 5c5:	c3                   	ret    
 5c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5cd:	8d 76 00             	lea    0x0(%esi),%esi

000005d0 <lock_release>:

void lock_release(lock_t *lock) {
 5d0:	55                   	push   %ebp
 5d1:	89 e5                	mov    %esp,%ebp
 5d3:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 5d6:	83 40 04 01          	addl   $0x1,0x4(%eax)
 5da:	5d                   	pop    %ebp
 5db:	c3                   	ret    

000005dc <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 5dc:	b8 01 00 00 00       	mov    $0x1,%eax
 5e1:	cd 40                	int    $0x40
 5e3:	c3                   	ret    

000005e4 <exit>:
SYSCALL(exit)
 5e4:	b8 02 00 00 00       	mov    $0x2,%eax
 5e9:	cd 40                	int    $0x40
 5eb:	c3                   	ret    

000005ec <wait>:
SYSCALL(wait)
 5ec:	b8 03 00 00 00       	mov    $0x3,%eax
 5f1:	cd 40                	int    $0x40
 5f3:	c3                   	ret    

000005f4 <pipe>:
SYSCALL(pipe)
 5f4:	b8 04 00 00 00       	mov    $0x4,%eax
 5f9:	cd 40                	int    $0x40
 5fb:	c3                   	ret    

000005fc <read>:
SYSCALL(read)
 5fc:	b8 05 00 00 00       	mov    $0x5,%eax
 601:	cd 40                	int    $0x40
 603:	c3                   	ret    

00000604 <write>:
SYSCALL(write)
 604:	b8 10 00 00 00       	mov    $0x10,%eax
 609:	cd 40                	int    $0x40
 60b:	c3                   	ret    

0000060c <close>:
SYSCALL(close)
 60c:	b8 15 00 00 00       	mov    $0x15,%eax
 611:	cd 40                	int    $0x40
 613:	c3                   	ret    

00000614 <kill>:
SYSCALL(kill)
 614:	b8 06 00 00 00       	mov    $0x6,%eax
 619:	cd 40                	int    $0x40
 61b:	c3                   	ret    

0000061c <exec>:
SYSCALL(exec)
 61c:	b8 07 00 00 00       	mov    $0x7,%eax
 621:	cd 40                	int    $0x40
 623:	c3                   	ret    

00000624 <open>:
SYSCALL(open)
 624:	b8 0f 00 00 00       	mov    $0xf,%eax
 629:	cd 40                	int    $0x40
 62b:	c3                   	ret    

0000062c <mknod>:
SYSCALL(mknod)
 62c:	b8 11 00 00 00       	mov    $0x11,%eax
 631:	cd 40                	int    $0x40
 633:	c3                   	ret    

00000634 <unlink>:
SYSCALL(unlink)
 634:	b8 12 00 00 00       	mov    $0x12,%eax
 639:	cd 40                	int    $0x40
 63b:	c3                   	ret    

0000063c <fstat>:
SYSCALL(fstat)
 63c:	b8 08 00 00 00       	mov    $0x8,%eax
 641:	cd 40                	int    $0x40
 643:	c3                   	ret    

00000644 <link>:
SYSCALL(link)
 644:	b8 13 00 00 00       	mov    $0x13,%eax
 649:	cd 40                	int    $0x40
 64b:	c3                   	ret    

0000064c <mkdir>:
SYSCALL(mkdir)
 64c:	b8 14 00 00 00       	mov    $0x14,%eax
 651:	cd 40                	int    $0x40
 653:	c3                   	ret    

00000654 <chdir>:
SYSCALL(chdir)
 654:	b8 09 00 00 00       	mov    $0x9,%eax
 659:	cd 40                	int    $0x40
 65b:	c3                   	ret    

0000065c <dup>:
SYSCALL(dup)
 65c:	b8 0a 00 00 00       	mov    $0xa,%eax
 661:	cd 40                	int    $0x40
 663:	c3                   	ret    

00000664 <getpid>:
SYSCALL(getpid)
 664:	b8 0b 00 00 00       	mov    $0xb,%eax
 669:	cd 40                	int    $0x40
 66b:	c3                   	ret    

0000066c <sbrk>:
SYSCALL(sbrk)
 66c:	b8 0c 00 00 00       	mov    $0xc,%eax
 671:	cd 40                	int    $0x40
 673:	c3                   	ret    

00000674 <sleep>:
SYSCALL(sleep)
 674:	b8 0d 00 00 00       	mov    $0xd,%eax
 679:	cd 40                	int    $0x40
 67b:	c3                   	ret    

0000067c <uptime>:
SYSCALL(uptime)
 67c:	b8 0e 00 00 00       	mov    $0xe,%eax
 681:	cd 40                	int    $0x40
 683:	c3                   	ret    

00000684 <clone>:
SYSCALL(clone)
 684:	b8 16 00 00 00       	mov    $0x16,%eax
 689:	cd 40                	int    $0x40
 68b:	c3                   	ret    

0000068c <join>:
SYSCALL(join)
 68c:	b8 17 00 00 00       	mov    $0x17,%eax
 691:	cd 40                	int    $0x40
 693:	c3                   	ret    
 694:	66 90                	xchg   %ax,%ax
 696:	66 90                	xchg   %ax,%ax
 698:	66 90                	xchg   %ax,%ax
 69a:	66 90                	xchg   %ax,%ax
 69c:	66 90                	xchg   %ax,%ax
 69e:	66 90                	xchg   %ax,%ax

000006a0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 6a0:	55                   	push   %ebp
 6a1:	89 e5                	mov    %esp,%ebp
 6a3:	57                   	push   %edi
 6a4:	56                   	push   %esi
 6a5:	53                   	push   %ebx
 6a6:	83 ec 3c             	sub    $0x3c,%esp
 6a9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 6ac:	89 d1                	mov    %edx,%ecx
{
 6ae:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 6b1:	85 d2                	test   %edx,%edx
 6b3:	0f 89 7f 00 00 00    	jns    738 <printint+0x98>
 6b9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 6bd:	74 79                	je     738 <printint+0x98>
    neg = 1;
 6bf:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 6c6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 6c8:	31 db                	xor    %ebx,%ebx
 6ca:	8d 75 d7             	lea    -0x29(%ebp),%esi
 6cd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 6d0:	89 c8                	mov    %ecx,%eax
 6d2:	31 d2                	xor    %edx,%edx
 6d4:	89 cf                	mov    %ecx,%edi
 6d6:	f7 75 c4             	divl   -0x3c(%ebp)
 6d9:	0f b6 92 a4 0b 00 00 	movzbl 0xba4(%edx),%edx
 6e0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 6e3:	89 d8                	mov    %ebx,%eax
 6e5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 6e8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 6eb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 6ee:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 6f1:	76 dd                	jbe    6d0 <printint+0x30>
  if(neg)
 6f3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 6f6:	85 c9                	test   %ecx,%ecx
 6f8:	74 0c                	je     706 <printint+0x66>
    buf[i++] = '-';
 6fa:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 6ff:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 701:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 706:	8b 7d b8             	mov    -0x48(%ebp),%edi
 709:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 70d:	eb 07                	jmp    716 <printint+0x76>
 70f:	90                   	nop
    putc(fd, buf[i]);
 710:	0f b6 13             	movzbl (%ebx),%edx
 713:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 716:	83 ec 04             	sub    $0x4,%esp
 719:	88 55 d7             	mov    %dl,-0x29(%ebp)
 71c:	6a 01                	push   $0x1
 71e:	56                   	push   %esi
 71f:	57                   	push   %edi
 720:	e8 df fe ff ff       	call   604 <write>
  while(--i >= 0)
 725:	83 c4 10             	add    $0x10,%esp
 728:	39 de                	cmp    %ebx,%esi
 72a:	75 e4                	jne    710 <printint+0x70>
}
 72c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 72f:	5b                   	pop    %ebx
 730:	5e                   	pop    %esi
 731:	5f                   	pop    %edi
 732:	5d                   	pop    %ebp
 733:	c3                   	ret    
 734:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 738:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 73f:	eb 87                	jmp    6c8 <printint+0x28>
 741:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 748:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 74f:	90                   	nop

00000750 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 750:	55                   	push   %ebp
 751:	89 e5                	mov    %esp,%ebp
 753:	57                   	push   %edi
 754:	56                   	push   %esi
 755:	53                   	push   %ebx
 756:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 759:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 75c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 75f:	0f b6 13             	movzbl (%ebx),%edx
 762:	84 d2                	test   %dl,%dl
 764:	74 6a                	je     7d0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 766:	8d 45 10             	lea    0x10(%ebp),%eax
 769:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 76c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 76f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 771:	89 45 d0             	mov    %eax,-0x30(%ebp)
 774:	eb 36                	jmp    7ac <printf+0x5c>
 776:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 77d:	8d 76 00             	lea    0x0(%esi),%esi
 780:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 783:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 788:	83 f8 25             	cmp    $0x25,%eax
 78b:	74 15                	je     7a2 <printf+0x52>
  write(fd, &c, 1);
 78d:	83 ec 04             	sub    $0x4,%esp
 790:	88 55 e7             	mov    %dl,-0x19(%ebp)
 793:	6a 01                	push   $0x1
 795:	57                   	push   %edi
 796:	56                   	push   %esi
 797:	e8 68 fe ff ff       	call   604 <write>
 79c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 79f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 7a2:	0f b6 13             	movzbl (%ebx),%edx
 7a5:	83 c3 01             	add    $0x1,%ebx
 7a8:	84 d2                	test   %dl,%dl
 7aa:	74 24                	je     7d0 <printf+0x80>
    c = fmt[i] & 0xff;
 7ac:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 7af:	85 c9                	test   %ecx,%ecx
 7b1:	74 cd                	je     780 <printf+0x30>
      }
    } else if(state == '%'){
 7b3:	83 f9 25             	cmp    $0x25,%ecx
 7b6:	75 ea                	jne    7a2 <printf+0x52>
      if(c == 'd'){
 7b8:	83 f8 25             	cmp    $0x25,%eax
 7bb:	0f 84 07 01 00 00    	je     8c8 <printf+0x178>
 7c1:	83 e8 63             	sub    $0x63,%eax
 7c4:	83 f8 15             	cmp    $0x15,%eax
 7c7:	77 17                	ja     7e0 <printf+0x90>
 7c9:	ff 24 85 4c 0b 00 00 	jmp    *0xb4c(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 7d0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7d3:	5b                   	pop    %ebx
 7d4:	5e                   	pop    %esi
 7d5:	5f                   	pop    %edi
 7d6:	5d                   	pop    %ebp
 7d7:	c3                   	ret    
 7d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7df:	90                   	nop
  write(fd, &c, 1);
 7e0:	83 ec 04             	sub    $0x4,%esp
 7e3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 7e6:	6a 01                	push   $0x1
 7e8:	57                   	push   %edi
 7e9:	56                   	push   %esi
 7ea:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 7ee:	e8 11 fe ff ff       	call   604 <write>
        putc(fd, c);
 7f3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 7f7:	83 c4 0c             	add    $0xc,%esp
 7fa:	88 55 e7             	mov    %dl,-0x19(%ebp)
 7fd:	6a 01                	push   $0x1
 7ff:	57                   	push   %edi
 800:	56                   	push   %esi
 801:	e8 fe fd ff ff       	call   604 <write>
        putc(fd, c);
 806:	83 c4 10             	add    $0x10,%esp
      state = 0;
 809:	31 c9                	xor    %ecx,%ecx
 80b:	eb 95                	jmp    7a2 <printf+0x52>
 80d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 810:	83 ec 0c             	sub    $0xc,%esp
 813:	b9 10 00 00 00       	mov    $0x10,%ecx
 818:	6a 00                	push   $0x0
 81a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 81d:	8b 10                	mov    (%eax),%edx
 81f:	89 f0                	mov    %esi,%eax
 821:	e8 7a fe ff ff       	call   6a0 <printint>
        ap++;
 826:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 82a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 82d:	31 c9                	xor    %ecx,%ecx
 82f:	e9 6e ff ff ff       	jmp    7a2 <printf+0x52>
 834:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 838:	8b 45 d0             	mov    -0x30(%ebp),%eax
 83b:	8b 10                	mov    (%eax),%edx
        ap++;
 83d:	83 c0 04             	add    $0x4,%eax
 840:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 843:	85 d2                	test   %edx,%edx
 845:	0f 84 8d 00 00 00    	je     8d8 <printf+0x188>
        while(*s != 0){
 84b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 84e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 850:	84 c0                	test   %al,%al
 852:	0f 84 4a ff ff ff    	je     7a2 <printf+0x52>
 858:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 85b:	89 d3                	mov    %edx,%ebx
 85d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 860:	83 ec 04             	sub    $0x4,%esp
          s++;
 863:	83 c3 01             	add    $0x1,%ebx
 866:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 869:	6a 01                	push   $0x1
 86b:	57                   	push   %edi
 86c:	56                   	push   %esi
 86d:	e8 92 fd ff ff       	call   604 <write>
        while(*s != 0){
 872:	0f b6 03             	movzbl (%ebx),%eax
 875:	83 c4 10             	add    $0x10,%esp
 878:	84 c0                	test   %al,%al
 87a:	75 e4                	jne    860 <printf+0x110>
      state = 0;
 87c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 87f:	31 c9                	xor    %ecx,%ecx
 881:	e9 1c ff ff ff       	jmp    7a2 <printf+0x52>
 886:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 88d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 890:	83 ec 0c             	sub    $0xc,%esp
 893:	b9 0a 00 00 00       	mov    $0xa,%ecx
 898:	6a 01                	push   $0x1
 89a:	e9 7b ff ff ff       	jmp    81a <printf+0xca>
 89f:	90                   	nop
        putc(fd, *ap);
 8a0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 8a3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 8a6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 8a8:	6a 01                	push   $0x1
 8aa:	57                   	push   %edi
 8ab:	56                   	push   %esi
        putc(fd, *ap);
 8ac:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 8af:	e8 50 fd ff ff       	call   604 <write>
        ap++;
 8b4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 8b8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8bb:	31 c9                	xor    %ecx,%ecx
 8bd:	e9 e0 fe ff ff       	jmp    7a2 <printf+0x52>
 8c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 8c8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 8cb:	83 ec 04             	sub    $0x4,%esp
 8ce:	e9 2a ff ff ff       	jmp    7fd <printf+0xad>
 8d3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8d7:	90                   	nop
          s = "(null)";
 8d8:	ba 45 0b 00 00       	mov    $0xb45,%edx
        while(*s != 0){
 8dd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 8e0:	b8 28 00 00 00       	mov    $0x28,%eax
 8e5:	89 d3                	mov    %edx,%ebx
 8e7:	e9 74 ff ff ff       	jmp    860 <printf+0x110>
 8ec:	66 90                	xchg   %ax,%ax
 8ee:	66 90                	xchg   %ax,%ax

000008f0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 8f0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8f1:	a1 3c 0f 00 00       	mov    0xf3c,%eax
{
 8f6:	89 e5                	mov    %esp,%ebp
 8f8:	57                   	push   %edi
 8f9:	56                   	push   %esi
 8fa:	53                   	push   %ebx
 8fb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 8fe:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 901:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 908:	89 c2                	mov    %eax,%edx
 90a:	8b 00                	mov    (%eax),%eax
 90c:	39 ca                	cmp    %ecx,%edx
 90e:	73 30                	jae    940 <free+0x50>
 910:	39 c1                	cmp    %eax,%ecx
 912:	72 04                	jb     918 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 914:	39 c2                	cmp    %eax,%edx
 916:	72 f0                	jb     908 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 918:	8b 73 fc             	mov    -0x4(%ebx),%esi
 91b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 91e:	39 f8                	cmp    %edi,%eax
 920:	74 30                	je     952 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 922:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 925:	8b 42 04             	mov    0x4(%edx),%eax
 928:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 92b:	39 f1                	cmp    %esi,%ecx
 92d:	74 3a                	je     969 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 92f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 931:	5b                   	pop    %ebx
  freep = p;
 932:	89 15 3c 0f 00 00    	mov    %edx,0xf3c
}
 938:	5e                   	pop    %esi
 939:	5f                   	pop    %edi
 93a:	5d                   	pop    %ebp
 93b:	c3                   	ret    
 93c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 940:	39 c2                	cmp    %eax,%edx
 942:	72 c4                	jb     908 <free+0x18>
 944:	39 c1                	cmp    %eax,%ecx
 946:	73 c0                	jae    908 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 948:	8b 73 fc             	mov    -0x4(%ebx),%esi
 94b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 94e:	39 f8                	cmp    %edi,%eax
 950:	75 d0                	jne    922 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 952:	03 70 04             	add    0x4(%eax),%esi
 955:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 958:	8b 02                	mov    (%edx),%eax
 95a:	8b 00                	mov    (%eax),%eax
 95c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 95f:	8b 42 04             	mov    0x4(%edx),%eax
 962:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 965:	39 f1                	cmp    %esi,%ecx
 967:	75 c6                	jne    92f <free+0x3f>
    p->s.size += bp->s.size;
 969:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 96c:	89 15 3c 0f 00 00    	mov    %edx,0xf3c
    p->s.size += bp->s.size;
 972:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 975:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 978:	89 0a                	mov    %ecx,(%edx)
}
 97a:	5b                   	pop    %ebx
 97b:	5e                   	pop    %esi
 97c:	5f                   	pop    %edi
 97d:	5d                   	pop    %ebp
 97e:	c3                   	ret    
 97f:	90                   	nop

00000980 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 980:	55                   	push   %ebp
 981:	89 e5                	mov    %esp,%ebp
 983:	57                   	push   %edi
 984:	56                   	push   %esi
 985:	53                   	push   %ebx
 986:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 989:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 98c:	8b 3d 3c 0f 00 00    	mov    0xf3c,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 992:	8d 70 07             	lea    0x7(%eax),%esi
 995:	c1 ee 03             	shr    $0x3,%esi
 998:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 99b:	85 ff                	test   %edi,%edi
 99d:	0f 84 9d 00 00 00    	je     a40 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9a3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 9a5:	8b 4a 04             	mov    0x4(%edx),%ecx
 9a8:	39 f1                	cmp    %esi,%ecx
 9aa:	73 6a                	jae    a16 <malloc+0x96>
 9ac:	bb 00 10 00 00       	mov    $0x1000,%ebx
 9b1:	39 de                	cmp    %ebx,%esi
 9b3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 9b6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 9bd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 9c0:	eb 17                	jmp    9d9 <malloc+0x59>
 9c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9c8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 9ca:	8b 48 04             	mov    0x4(%eax),%ecx
 9cd:	39 f1                	cmp    %esi,%ecx
 9cf:	73 4f                	jae    a20 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 9d1:	8b 3d 3c 0f 00 00    	mov    0xf3c,%edi
 9d7:	89 c2                	mov    %eax,%edx
 9d9:	39 d7                	cmp    %edx,%edi
 9db:	75 eb                	jne    9c8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 9dd:	83 ec 0c             	sub    $0xc,%esp
 9e0:	ff 75 e4             	push   -0x1c(%ebp)
 9e3:	e8 84 fc ff ff       	call   66c <sbrk>
  if(p == (char*)-1)
 9e8:	83 c4 10             	add    $0x10,%esp
 9eb:	83 f8 ff             	cmp    $0xffffffff,%eax
 9ee:	74 1c                	je     a0c <malloc+0x8c>
  hp->s.size = nu;
 9f0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 9f3:	83 ec 0c             	sub    $0xc,%esp
 9f6:	83 c0 08             	add    $0x8,%eax
 9f9:	50                   	push   %eax
 9fa:	e8 f1 fe ff ff       	call   8f0 <free>
  return freep;
 9ff:	8b 15 3c 0f 00 00    	mov    0xf3c,%edx
      if((p = morecore(nunits)) == 0)
 a05:	83 c4 10             	add    $0x10,%esp
 a08:	85 d2                	test   %edx,%edx
 a0a:	75 bc                	jne    9c8 <malloc+0x48>
        return 0;
  }
}
 a0c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 a0f:	31 c0                	xor    %eax,%eax
}
 a11:	5b                   	pop    %ebx
 a12:	5e                   	pop    %esi
 a13:	5f                   	pop    %edi
 a14:	5d                   	pop    %ebp
 a15:	c3                   	ret    
    if(p->s.size >= nunits){
 a16:	89 d0                	mov    %edx,%eax
 a18:	89 fa                	mov    %edi,%edx
 a1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 a20:	39 ce                	cmp    %ecx,%esi
 a22:	74 4c                	je     a70 <malloc+0xf0>
        p->s.size -= nunits;
 a24:	29 f1                	sub    %esi,%ecx
 a26:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 a29:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 a2c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 a2f:	89 15 3c 0f 00 00    	mov    %edx,0xf3c
}
 a35:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 a38:	83 c0 08             	add    $0x8,%eax
}
 a3b:	5b                   	pop    %ebx
 a3c:	5e                   	pop    %esi
 a3d:	5f                   	pop    %edi
 a3e:	5d                   	pop    %ebp
 a3f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 a40:	c7 05 3c 0f 00 00 40 	movl   $0xf40,0xf3c
 a47:	0f 00 00 
    base.s.size = 0;
 a4a:	bf 40 0f 00 00       	mov    $0xf40,%edi
    base.s.ptr = freep = prevp = &base;
 a4f:	c7 05 40 0f 00 00 40 	movl   $0xf40,0xf40
 a56:	0f 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a59:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 a5b:	c7 05 44 0f 00 00 00 	movl   $0x0,0xf44
 a62:	00 00 00 
    if(p->s.size >= nunits){
 a65:	e9 42 ff ff ff       	jmp    9ac <malloc+0x2c>
 a6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 a70:	8b 08                	mov    (%eax),%ecx
 a72:	89 0a                	mov    %ecx,(%edx)
 a74:	eb b9                	jmp    a2f <malloc+0xaf>
