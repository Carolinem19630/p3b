
_test_19:     file format elf32-i386


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
   d:	53                   	push   %ebx
   e:	51                   	push   %ecx
   f:	83 ec 10             	sub    $0x10,%esp
   ppid = getpid();
  12:	e8 8d 06 00 00       	call   6a4 <getpid>

   int arg1 = 42, arg2 = 24;
   int thread_pid = thread_create(worker, &arg1, &arg2);
  17:	83 ec 04             	sub    $0x4,%esp
   int arg1 = 42, arg2 = 24;
  1a:	c7 45 f0 2a 00 00 00 	movl   $0x2a,-0x10(%ebp)
   ppid = getpid();
  21:	a3 b0 0f 00 00       	mov    %eax,0xfb0
   int thread_pid = thread_create(worker, &arg1, &arg2);
  26:	8d 45 f4             	lea    -0xc(%ebp),%eax
  29:	50                   	push   %eax
  2a:	8d 45 f0             	lea    -0x10(%ebp),%eax
  2d:	50                   	push   %eax
  2e:	68 b0 01 00 00       	push   $0x1b0
   int arg1 = 42, arg2 = 24;
  33:	c7 45 f4 18 00 00 00 	movl   $0x18,-0xc(%ebp)
   int thread_pid = thread_create(worker, &arg1, &arg2);
  3a:	e8 11 05 00 00       	call   550 <thread_create>
   assert(thread_pid > 0);
  3f:	83 c4 10             	add    $0x10,%esp
  42:	85 c0                	test   %eax,%eax
  44:	7e 7b                	jle    c1 <main+0xc1>
  46:	89 c3                	mov    %eax,%ebx

   int join_pid = thread_join();
  48:	e8 53 05 00 00       	call   5a0 <thread_join>
   assert(join_pid == thread_pid);
  4d:	39 c3                	cmp    %eax,%ebx
  4f:	75 2a                	jne    7b <main+0x7b>
   assert(global == 3);
  51:	83 3d ac 0f 00 00 03 	cmpl   $0x3,0xfac
  58:	0f 84 80 00 00 00    	je     de <main+0xde>
  5e:	6a 22                	push   $0x22
  60:	68 b8 0a 00 00       	push   $0xab8
  65:	68 c2 0a 00 00       	push   $0xac2
  6a:	6a 01                	push   $0x1
  6c:	e8 1f 07 00 00       	call   790 <printf>
  71:	83 c4 0c             	add    $0xc,%esp
  74:	68 74 0b 00 00       	push   $0xb74
  79:	eb 1b                	jmp    96 <main+0x96>
   assert(join_pid == thread_pid);
  7b:	6a 21                	push   $0x21
  7d:	68 b8 0a 00 00       	push   $0xab8
  82:	68 c2 0a 00 00       	push   $0xac2
  87:	6a 01                	push   $0x1
  89:	e8 02 07 00 00       	call   790 <printf>
  8e:	83 c4 0c             	add    $0xc,%esp
  91:	68 5d 0b 00 00       	push   $0xb5d
  96:	68 d9 0a 00 00       	push   $0xad9
  9b:	6a 01                	push   $0x1
  9d:	e8 ee 06 00 00       	call   790 <printf>
  a2:	5a                   	pop    %edx
  a3:	59                   	pop    %ecx
  a4:	68 ed 0a 00 00       	push   $0xaed
  a9:	6a 01                	push   $0x1
  ab:	e8 e0 06 00 00       	call   790 <printf>
  b0:	5b                   	pop    %ebx
  b1:	ff 35 b0 0f 00 00    	push   0xfb0
  b7:	e8 98 05 00 00       	call   654 <kill>
  bc:	e8 63 05 00 00       	call   624 <exit>
   assert(thread_pid > 0);
  c1:	6a 1e                	push   $0x1e
  c3:	68 b8 0a 00 00       	push   $0xab8
  c8:	68 c2 0a 00 00       	push   $0xac2
  cd:	6a 01                	push   $0x1
  cf:	e8 bc 06 00 00       	call   790 <printf>
  d4:	83 c4 0c             	add    $0xc,%esp
  d7:	68 3e 0b 00 00       	push   $0xb3e
  dc:	eb b8                	jmp    96 <main+0x96>

   printf(1, "TEST PASSED\n");
  de:	50                   	push   %eax
  df:	50                   	push   %eax
  e0:	68 80 0b 00 00       	push   $0xb80
  e5:	6a 01                	push   $0x1
  e7:	e8 a4 06 00 00       	call   790 <printf>
   exit();
  ec:	e8 33 05 00 00       	call   624 <exit>
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
   assert(arg1_int == 42);
 10b:	8b 45 08             	mov    0x8(%ebp),%eax
 10e:	83 38 2a             	cmpl   $0x2a,(%eax)
 111:	75 1a                	jne    12d <nested_worker+0x2d>
   assert(arg2_int == 24);
 113:	83 fa 18             	cmp    $0x18,%edx
 116:	75 78                	jne    190 <nested_worker+0x90>
   assert(global == 2);
 118:	83 3d ac 0f 00 00 02 	cmpl   $0x2,0xfac
 11f:	75 52                	jne    173 <nested_worker+0x73>
   global++;
 121:	c7 05 ac 0f 00 00 03 	movl   $0x3,0xfac
 128:	00 00 00 
   // no exit() in thread
}
 12b:	c9                   	leave  
 12c:	c3                   	ret    
   assert(arg1_int == 42);
 12d:	6a 2b                	push   $0x2b
 12f:	68 b8 0a 00 00       	push   $0xab8
 134:	68 c2 0a 00 00       	push   $0xac2
 139:	6a 01                	push   $0x1
 13b:	e8 50 06 00 00       	call   790 <printf>
 140:	83 c4 0c             	add    $0xc,%esp
 143:	68 ca 0a 00 00       	push   $0xaca
   assert(arg2_int == 24);
 148:	68 d9 0a 00 00       	push   $0xad9
 14d:	6a 01                	push   $0x1
 14f:	e8 3c 06 00 00       	call   790 <printf>
 154:	58                   	pop    %eax
 155:	5a                   	pop    %edx
 156:	68 ed 0a 00 00       	push   $0xaed
 15b:	6a 01                	push   $0x1
 15d:	e8 2e 06 00 00       	call   790 <printf>
 162:	59                   	pop    %ecx
 163:	ff 35 b0 0f 00 00    	push   0xfb0
 169:	e8 e6 04 00 00       	call   654 <kill>
 16e:	e8 b1 04 00 00       	call   624 <exit>
   assert(global == 2);
 173:	6a 2d                	push   $0x2d
 175:	68 b8 0a 00 00       	push   $0xab8
 17a:	68 c2 0a 00 00       	push   $0xac2
 17f:	6a 01                	push   $0x1
 181:	e8 0a 06 00 00       	call   790 <printf>
 186:	83 c4 0c             	add    $0xc,%esp
 189:	68 09 0b 00 00       	push   $0xb09
 18e:	eb b8                	jmp    148 <nested_worker+0x48>
   assert(arg2_int == 24);
 190:	6a 2c                	push   $0x2c
 192:	68 b8 0a 00 00       	push   $0xab8
 197:	68 c2 0a 00 00       	push   $0xac2
 19c:	6a 01                	push   $0x1
 19e:	e8 ed 05 00 00       	call   790 <printf>
 1a3:	83 c4 0c             	add    $0xc,%esp
 1a6:	68 fa 0a 00 00       	push   $0xafa
 1ab:	eb 9b                	jmp    148 <nested_worker+0x48>
 1ad:	8d 76 00             	lea    0x0(%esi),%esi

000001b0 <worker>:

void
worker(void *arg1, void *arg2) {
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	53                   	push   %ebx
 1b4:	83 ec 14             	sub    $0x14,%esp
   int tmp1 = *(int*)arg1;
 1b7:	8b 45 08             	mov    0x8(%ebp),%eax
   int tmp2 = *(int*)arg2;
 1ba:	8b 55 0c             	mov    0xc(%ebp),%edx
   int tmp1 = *(int*)arg1;
 1bd:	8b 00                	mov    (%eax),%eax
   int tmp2 = *(int*)arg2;
 1bf:	8b 12                	mov    (%edx),%edx
   int tmp1 = *(int*)arg1;
 1c1:	89 45 f0             	mov    %eax,-0x10(%ebp)
   int tmp2 = *(int*)arg2;
 1c4:	89 55 f4             	mov    %edx,-0xc(%ebp)
   assert(tmp1 == 42);
 1c7:	83 f8 2a             	cmp    $0x2a,%eax
 1ca:	75 75                	jne    241 <worker+0x91>
   assert(tmp2 == 24);
 1cc:	83 fa 18             	cmp    $0x18,%edx
 1cf:	75 2a                	jne    1fb <worker+0x4b>
   assert(global == 1);
 1d1:	83 3d ac 0f 00 00 01 	cmpl   $0x1,0xfac
 1d8:	0f 84 80 00 00 00    	je     25e <worker+0xae>
 1de:	6a 38                	push   $0x38
 1e0:	68 b8 0a 00 00       	push   $0xab8
 1e5:	68 c2 0a 00 00       	push   $0xac2
 1ea:	6a 01                	push   $0x1
 1ec:	e8 9f 05 00 00       	call   790 <printf>
 1f1:	83 c4 0c             	add    $0xc,%esp
 1f4:	68 2b 0b 00 00       	push   $0xb2b
 1f9:	eb 1b                	jmp    216 <worker+0x66>
   assert(tmp2 == 24);
 1fb:	6a 37                	push   $0x37
 1fd:	68 b8 0a 00 00       	push   $0xab8
 202:	68 c2 0a 00 00       	push   $0xac2
 207:	6a 01                	push   $0x1
 209:	e8 82 05 00 00       	call   790 <printf>
 20e:	83 c4 0c             	add    $0xc,%esp
 211:	68 20 0b 00 00       	push   $0xb20
 216:	68 d9 0a 00 00       	push   $0xad9
 21b:	6a 01                	push   $0x1
 21d:	e8 6e 05 00 00       	call   790 <printf>
 222:	5a                   	pop    %edx
 223:	59                   	pop    %ecx
 224:	68 ed 0a 00 00       	push   $0xaed
 229:	6a 01                	push   $0x1
 22b:	e8 60 05 00 00       	call   790 <printf>
 230:	5b                   	pop    %ebx
 231:	ff 35 b0 0f 00 00    	push   0xfb0
 237:	e8 18 04 00 00       	call   654 <kill>
 23c:	e8 e3 03 00 00       	call   624 <exit>
   assert(tmp1 == 42);
 241:	6a 36                	push   $0x36
 243:	68 b8 0a 00 00       	push   $0xab8
 248:	68 c2 0a 00 00       	push   $0xac2
 24d:	6a 01                	push   $0x1
 24f:	e8 3c 05 00 00       	call   790 <printf>
 254:	83 c4 0c             	add    $0xc,%esp
 257:	68 15 0b 00 00       	push   $0xb15
 25c:	eb b8                	jmp    216 <worker+0x66>
   global++;

   int nested_thread_pid = thread_create(nested_worker, &tmp1, &tmp2);
 25e:	50                   	push   %eax
 25f:	8d 45 f4             	lea    -0xc(%ebp),%eax
 262:	50                   	push   %eax
 263:	8d 45 f0             	lea    -0x10(%ebp),%eax
 266:	50                   	push   %eax
 267:	68 00 01 00 00       	push   $0x100
   global++;
 26c:	c7 05 ac 0f 00 00 02 	movl   $0x2,0xfac
 273:	00 00 00 
   int nested_thread_pid = thread_create(nested_worker, &tmp1, &tmp2);
 276:	e8 d5 02 00 00       	call   550 <thread_create>
   assert(nested_thread_pid > 0);
 27b:	83 c4 10             	add    $0x10,%esp
   int nested_thread_pid = thread_create(nested_worker, &tmp1, &tmp2);
 27e:	89 c3                	mov    %eax,%ebx
   assert(nested_thread_pid > 0);
 280:	85 c0                	test   %eax,%eax
 282:	7e 4d                	jle    2d1 <worker+0x121>
   for(int j=0;j<10000;j++);

   int nested_join_pid = thread_join();
 284:	e8 17 03 00 00       	call   5a0 <thread_join>
   assert(nested_join_pid)
 289:	85 c0                	test   %eax,%eax
 28b:	74 24                	je     2b1 <worker+0x101>
   assert(nested_join_pid == nested_thread_pid);
 28d:	39 c3                	cmp    %eax,%ebx
 28f:	74 60                	je     2f1 <worker+0x141>
 291:	6a 41                	push   $0x41
 293:	68 b8 0a 00 00       	push   $0xab8
 298:	68 c2 0a 00 00       	push   $0xac2
 29d:	6a 01                	push   $0x1
 29f:	e8 ec 04 00 00       	call   790 <printf>
 2a4:	83 c4 0c             	add    $0xc,%esp
 2a7:	68 90 0b 00 00       	push   $0xb90
 2ac:	e9 65 ff ff ff       	jmp    216 <worker+0x66>
   assert(nested_join_pid)
 2b1:	6a 40                	push   $0x40
 2b3:	68 b8 0a 00 00       	push   $0xab8
 2b8:	68 c2 0a 00 00       	push   $0xac2
 2bd:	6a 01                	push   $0x1
 2bf:	e8 cc 04 00 00       	call   790 <printf>
 2c4:	83 c4 0c             	add    $0xc,%esp
 2c7:	68 4d 0b 00 00       	push   $0xb4d
 2cc:	e9 45 ff ff ff       	jmp    216 <worker+0x66>
   assert(nested_thread_pid > 0);
 2d1:	6a 3c                	push   $0x3c
 2d3:	68 b8 0a 00 00       	push   $0xab8
 2d8:	68 c2 0a 00 00       	push   $0xac2
 2dd:	6a 01                	push   $0x1
 2df:	e8 ac 04 00 00       	call   790 <printf>
 2e4:	83 c4 0c             	add    $0xc,%esp
 2e7:	68 37 0b 00 00       	push   $0xb37
 2ec:	e9 25 ff ff ff       	jmp    216 <worker+0x66>
   exit();
 2f1:	e8 2e 03 00 00       	call   624 <exit>
 2f6:	66 90                	xchg   %ax,%ax
 2f8:	66 90                	xchg   %ax,%ax
 2fa:	66 90                	xchg   %ax,%ax
 2fc:	66 90                	xchg   %ax,%ax
 2fe:	66 90                	xchg   %ax,%ax

00000300 <strcpy>:
#include "x86.h"
#define PGSIZE 4096

char*
strcpy(char *s, const char *t)
{
 300:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 301:	31 c0                	xor    %eax,%eax
{
 303:	89 e5                	mov    %esp,%ebp
 305:	53                   	push   %ebx
 306:	8b 4d 08             	mov    0x8(%ebp),%ecx
 309:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 30c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 310:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 314:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 317:	83 c0 01             	add    $0x1,%eax
 31a:	84 d2                	test   %dl,%dl
 31c:	75 f2                	jne    310 <strcpy+0x10>
    ;
  return os;
}
 31e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 321:	89 c8                	mov    %ecx,%eax
 323:	c9                   	leave  
 324:	c3                   	ret    
 325:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 32c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000330 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	53                   	push   %ebx
 334:	8b 55 08             	mov    0x8(%ebp),%edx
 337:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 33a:	0f b6 02             	movzbl (%edx),%eax
 33d:	84 c0                	test   %al,%al
 33f:	75 17                	jne    358 <strcmp+0x28>
 341:	eb 3a                	jmp    37d <strcmp+0x4d>
 343:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 347:	90                   	nop
 348:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 34c:	83 c2 01             	add    $0x1,%edx
 34f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 352:	84 c0                	test   %al,%al
 354:	74 1a                	je     370 <strcmp+0x40>
    p++, q++;
 356:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 358:	0f b6 19             	movzbl (%ecx),%ebx
 35b:	38 c3                	cmp    %al,%bl
 35d:	74 e9                	je     348 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 35f:	29 d8                	sub    %ebx,%eax
}
 361:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 364:	c9                   	leave  
 365:	c3                   	ret    
 366:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 36d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 370:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 374:	31 c0                	xor    %eax,%eax
 376:	29 d8                	sub    %ebx,%eax
}
 378:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 37b:	c9                   	leave  
 37c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 37d:	0f b6 19             	movzbl (%ecx),%ebx
 380:	31 c0                	xor    %eax,%eax
 382:	eb db                	jmp    35f <strcmp+0x2f>
 384:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 38b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 38f:	90                   	nop

00000390 <strlen>:

uint
strlen(const char *s)
{
 390:	55                   	push   %ebp
 391:	89 e5                	mov    %esp,%ebp
 393:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 396:	80 3a 00             	cmpb   $0x0,(%edx)
 399:	74 15                	je     3b0 <strlen+0x20>
 39b:	31 c0                	xor    %eax,%eax
 39d:	8d 76 00             	lea    0x0(%esi),%esi
 3a0:	83 c0 01             	add    $0x1,%eax
 3a3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 3a7:	89 c1                	mov    %eax,%ecx
 3a9:	75 f5                	jne    3a0 <strlen+0x10>
    ;
  return n;
}
 3ab:	89 c8                	mov    %ecx,%eax
 3ad:	5d                   	pop    %ebp
 3ae:	c3                   	ret    
 3af:	90                   	nop
  for(n = 0; s[n]; n++)
 3b0:	31 c9                	xor    %ecx,%ecx
}
 3b2:	5d                   	pop    %ebp
 3b3:	89 c8                	mov    %ecx,%eax
 3b5:	c3                   	ret    
 3b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3bd:	8d 76 00             	lea    0x0(%esi),%esi

000003c0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 3c0:	55                   	push   %ebp
 3c1:	89 e5                	mov    %esp,%ebp
 3c3:	57                   	push   %edi
 3c4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 3c7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 3ca:	8b 45 0c             	mov    0xc(%ebp),%eax
 3cd:	89 d7                	mov    %edx,%edi
 3cf:	fc                   	cld    
 3d0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 3d2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 3d5:	89 d0                	mov    %edx,%eax
 3d7:	c9                   	leave  
 3d8:	c3                   	ret    
 3d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003e0 <strchr>:

char*
strchr(const char *s, char c)
{
 3e0:	55                   	push   %ebp
 3e1:	89 e5                	mov    %esp,%ebp
 3e3:	8b 45 08             	mov    0x8(%ebp),%eax
 3e6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 3ea:	0f b6 10             	movzbl (%eax),%edx
 3ed:	84 d2                	test   %dl,%dl
 3ef:	75 12                	jne    403 <strchr+0x23>
 3f1:	eb 1d                	jmp    410 <strchr+0x30>
 3f3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3f7:	90                   	nop
 3f8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 3fc:	83 c0 01             	add    $0x1,%eax
 3ff:	84 d2                	test   %dl,%dl
 401:	74 0d                	je     410 <strchr+0x30>
    if(*s == c)
 403:	38 d1                	cmp    %dl,%cl
 405:	75 f1                	jne    3f8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 407:	5d                   	pop    %ebp
 408:	c3                   	ret    
 409:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 410:	31 c0                	xor    %eax,%eax
}
 412:	5d                   	pop    %ebp
 413:	c3                   	ret    
 414:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 41b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 41f:	90                   	nop

00000420 <gets>:

char*
gets(char *buf, int max)
{
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	57                   	push   %edi
 424:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 425:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 428:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 429:	31 db                	xor    %ebx,%ebx
{
 42b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 42e:	eb 27                	jmp    457 <gets+0x37>
    cc = read(0, &c, 1);
 430:	83 ec 04             	sub    $0x4,%esp
 433:	6a 01                	push   $0x1
 435:	57                   	push   %edi
 436:	6a 00                	push   $0x0
 438:	e8 ff 01 00 00       	call   63c <read>
    if(cc < 1)
 43d:	83 c4 10             	add    $0x10,%esp
 440:	85 c0                	test   %eax,%eax
 442:	7e 1d                	jle    461 <gets+0x41>
      break;
    buf[i++] = c;
 444:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 448:	8b 55 08             	mov    0x8(%ebp),%edx
 44b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 44f:	3c 0a                	cmp    $0xa,%al
 451:	74 1d                	je     470 <gets+0x50>
 453:	3c 0d                	cmp    $0xd,%al
 455:	74 19                	je     470 <gets+0x50>
  for(i=0; i+1 < max; ){
 457:	89 de                	mov    %ebx,%esi
 459:	83 c3 01             	add    $0x1,%ebx
 45c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 45f:	7c cf                	jl     430 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 461:	8b 45 08             	mov    0x8(%ebp),%eax
 464:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 468:	8d 65 f4             	lea    -0xc(%ebp),%esp
 46b:	5b                   	pop    %ebx
 46c:	5e                   	pop    %esi
 46d:	5f                   	pop    %edi
 46e:	5d                   	pop    %ebp
 46f:	c3                   	ret    
  buf[i] = '\0';
 470:	8b 45 08             	mov    0x8(%ebp),%eax
 473:	89 de                	mov    %ebx,%esi
 475:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 479:	8d 65 f4             	lea    -0xc(%ebp),%esp
 47c:	5b                   	pop    %ebx
 47d:	5e                   	pop    %esi
 47e:	5f                   	pop    %edi
 47f:	5d                   	pop    %ebp
 480:	c3                   	ret    
 481:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 488:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 48f:	90                   	nop

00000490 <stat>:

int
stat(const char *n, struct stat *st)
{
 490:	55                   	push   %ebp
 491:	89 e5                	mov    %esp,%ebp
 493:	56                   	push   %esi
 494:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 495:	83 ec 08             	sub    $0x8,%esp
 498:	6a 00                	push   $0x0
 49a:	ff 75 08             	push   0x8(%ebp)
 49d:	e8 c2 01 00 00       	call   664 <open>
  if(fd < 0)
 4a2:	83 c4 10             	add    $0x10,%esp
 4a5:	85 c0                	test   %eax,%eax
 4a7:	78 27                	js     4d0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 4a9:	83 ec 08             	sub    $0x8,%esp
 4ac:	ff 75 0c             	push   0xc(%ebp)
 4af:	89 c3                	mov    %eax,%ebx
 4b1:	50                   	push   %eax
 4b2:	e8 c5 01 00 00       	call   67c <fstat>
  close(fd);
 4b7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 4ba:	89 c6                	mov    %eax,%esi
  close(fd);
 4bc:	e8 8b 01 00 00       	call   64c <close>
  return r;
 4c1:	83 c4 10             	add    $0x10,%esp
}
 4c4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 4c7:	89 f0                	mov    %esi,%eax
 4c9:	5b                   	pop    %ebx
 4ca:	5e                   	pop    %esi
 4cb:	5d                   	pop    %ebp
 4cc:	c3                   	ret    
 4cd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 4d0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 4d5:	eb ed                	jmp    4c4 <stat+0x34>
 4d7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4de:	66 90                	xchg   %ax,%ax

000004e0 <atoi>:

int
atoi(const char *s)
{
 4e0:	55                   	push   %ebp
 4e1:	89 e5                	mov    %esp,%ebp
 4e3:	53                   	push   %ebx
 4e4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 4e7:	0f be 02             	movsbl (%edx),%eax
 4ea:	8d 48 d0             	lea    -0x30(%eax),%ecx
 4ed:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 4f0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 4f5:	77 1e                	ja     515 <atoi+0x35>
 4f7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4fe:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 500:	83 c2 01             	add    $0x1,%edx
 503:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 506:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 50a:	0f be 02             	movsbl (%edx),%eax
 50d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 510:	80 fb 09             	cmp    $0x9,%bl
 513:	76 eb                	jbe    500 <atoi+0x20>
  return n;
}
 515:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 518:	89 c8                	mov    %ecx,%eax
 51a:	c9                   	leave  
 51b:	c3                   	ret    
 51c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000520 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 520:	55                   	push   %ebp
 521:	89 e5                	mov    %esp,%ebp
 523:	57                   	push   %edi
 524:	8b 45 10             	mov    0x10(%ebp),%eax
 527:	8b 55 08             	mov    0x8(%ebp),%edx
 52a:	56                   	push   %esi
 52b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 52e:	85 c0                	test   %eax,%eax
 530:	7e 13                	jle    545 <memmove+0x25>
 532:	01 d0                	add    %edx,%eax
  dst = vdst;
 534:	89 d7                	mov    %edx,%edi
 536:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 53d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 540:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 541:	39 f8                	cmp    %edi,%eax
 543:	75 fb                	jne    540 <memmove+0x20>
  return vdst;
}
 545:	5e                   	pop    %esi
 546:	89 d0                	mov    %edx,%eax
 548:	5f                   	pop    %edi
 549:	5d                   	pop    %ebp
 54a:	c3                   	ret    
 54b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 54f:	90                   	nop

00000550 <thread_create>:

// call malloc() to create a new user stack
// use clone() to create the child thread -> get it running
// returns the newly created PID to the parent && 0 to child if successful
// returns -1 if unsucessful
int thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2) {
 550:	55                   	push   %ebp
 551:	89 e5                	mov    %esp,%ebp
 553:	83 ec 14             	sub    $0x14,%esp

  void *stack;
  if ((stack= malloc(2*PGSIZE)) == 0){
 556:	68 00 20 00 00       	push   $0x2000
 55b:	e8 60 04 00 00       	call   9c0 <malloc>
 560:	83 c4 10             	add    $0x10,%esp
 563:	85 c0                	test   %eax,%eax
 565:	74 25                	je     58c <thread_create+0x3c>
    return -1;
  }

  // stack - page aligned
  if((uint)stack % PGSIZE)
 567:	89 c2                	mov    %eax,%edx
 569:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 56f:	74 07                	je     578 <thread_create+0x28>
    stack = stack + (PGSIZE - (uint)stack % PGSIZE);
 571:	29 d0                	sub    %edx,%eax
 573:	05 00 10 00 00       	add    $0x1000,%eax

  int childPid = clone(start_routine, arg1, arg2, stack);
 578:	50                   	push   %eax
 579:	ff 75 10             	push   0x10(%ebp)
 57c:	ff 75 0c             	push   0xc(%ebp)
 57f:	ff 75 08             	push   0x8(%ebp)
 582:	e8 3d 01 00 00       	call   6c4 <clone>

  return childPid;
 587:	83 c4 10             	add    $0x10,%esp
}
 58a:	c9                   	leave  
 58b:	c3                   	ret    
 58c:	c9                   	leave  
    return -1;
 58d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
 592:	c3                   	ret    
 593:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 59a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000005a0 <thread_join>:

// call join() and frees the user stack
// returns waited-for PID if successful, -1 otherwise
int thread_join() {
 5a0:	55                   	push   %ebp
 5a1:	89 e5                	mov    %esp,%ebp
 5a3:	53                   	push   %ebx

  void *stack;
  int childpid = join(&stack);
 5a4:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join() {
 5a7:	83 ec 20             	sub    $0x20,%esp
  int childpid = join(&stack);
 5aa:	50                   	push   %eax
 5ab:	e8 1c 01 00 00       	call   6cc <join>
 5b0:	89 c3                	mov    %eax,%ebx
  free(stack);
 5b2:	58                   	pop    %eax
 5b3:	ff 75 f4             	push   -0xc(%ebp)
 5b6:	e8 75 03 00 00       	call   930 <free>
  return childpid;
}
 5bb:	89 d8                	mov    %ebx,%eax
 5bd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5c0:	c9                   	leave  
 5c1:	c3                   	ret    
 5c2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000005d0 <lock_init>:
      : "memory"
    );
    return value;
}
 
void lock_init(lock_t *lock) {
 5d0:	55                   	push   %ebp
 5d1:	89 e5                	mov    %esp,%ebp
 5d3:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 5d6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 5dc:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 5e3:	5d                   	pop    %ebp
 5e4:	c3                   	ret    
 5e5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000005f0 <lock_acquire>:

void lock_acquire(lock_t *lock) {
 5f0:	55                   	push   %ebp
 5f1:	89 e5                	mov    %esp,%ebp
 5f3:	8b 55 08             	mov    0x8(%ebp),%edx
    __asm__ volatile("lock; xaddl %0, %1"
 5f6:	8b 02                	mov    (%edx),%eax
 5f8:	f0 0f c1 02          	lock xadd %eax,(%edx)
  int myturn = FetchAndAdd(&lock->ticket, lock->ticket);
  while (lock->turn != myturn)  ; // spin
 5fc:	8b 52 04             	mov    0x4(%edx),%edx
 5ff:	90                   	nop
 600:	39 c2                	cmp    %eax,%edx
 602:	75 fc                	jne    600 <lock_acquire+0x10>
}
 604:	5d                   	pop    %ebp
 605:	c3                   	ret    
 606:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 60d:	8d 76 00             	lea    0x0(%esi),%esi

00000610 <lock_release>:

void lock_release(lock_t *lock) {
 610:	55                   	push   %ebp
 611:	89 e5                	mov    %esp,%ebp
 613:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 616:	83 40 04 01          	addl   $0x1,0x4(%eax)
 61a:	5d                   	pop    %ebp
 61b:	c3                   	ret    

0000061c <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 61c:	b8 01 00 00 00       	mov    $0x1,%eax
 621:	cd 40                	int    $0x40
 623:	c3                   	ret    

00000624 <exit>:
SYSCALL(exit)
 624:	b8 02 00 00 00       	mov    $0x2,%eax
 629:	cd 40                	int    $0x40
 62b:	c3                   	ret    

0000062c <wait>:
SYSCALL(wait)
 62c:	b8 03 00 00 00       	mov    $0x3,%eax
 631:	cd 40                	int    $0x40
 633:	c3                   	ret    

00000634 <pipe>:
SYSCALL(pipe)
 634:	b8 04 00 00 00       	mov    $0x4,%eax
 639:	cd 40                	int    $0x40
 63b:	c3                   	ret    

0000063c <read>:
SYSCALL(read)
 63c:	b8 05 00 00 00       	mov    $0x5,%eax
 641:	cd 40                	int    $0x40
 643:	c3                   	ret    

00000644 <write>:
SYSCALL(write)
 644:	b8 10 00 00 00       	mov    $0x10,%eax
 649:	cd 40                	int    $0x40
 64b:	c3                   	ret    

0000064c <close>:
SYSCALL(close)
 64c:	b8 15 00 00 00       	mov    $0x15,%eax
 651:	cd 40                	int    $0x40
 653:	c3                   	ret    

00000654 <kill>:
SYSCALL(kill)
 654:	b8 06 00 00 00       	mov    $0x6,%eax
 659:	cd 40                	int    $0x40
 65b:	c3                   	ret    

0000065c <exec>:
SYSCALL(exec)
 65c:	b8 07 00 00 00       	mov    $0x7,%eax
 661:	cd 40                	int    $0x40
 663:	c3                   	ret    

00000664 <open>:
SYSCALL(open)
 664:	b8 0f 00 00 00       	mov    $0xf,%eax
 669:	cd 40                	int    $0x40
 66b:	c3                   	ret    

0000066c <mknod>:
SYSCALL(mknod)
 66c:	b8 11 00 00 00       	mov    $0x11,%eax
 671:	cd 40                	int    $0x40
 673:	c3                   	ret    

00000674 <unlink>:
SYSCALL(unlink)
 674:	b8 12 00 00 00       	mov    $0x12,%eax
 679:	cd 40                	int    $0x40
 67b:	c3                   	ret    

0000067c <fstat>:
SYSCALL(fstat)
 67c:	b8 08 00 00 00       	mov    $0x8,%eax
 681:	cd 40                	int    $0x40
 683:	c3                   	ret    

00000684 <link>:
SYSCALL(link)
 684:	b8 13 00 00 00       	mov    $0x13,%eax
 689:	cd 40                	int    $0x40
 68b:	c3                   	ret    

0000068c <mkdir>:
SYSCALL(mkdir)
 68c:	b8 14 00 00 00       	mov    $0x14,%eax
 691:	cd 40                	int    $0x40
 693:	c3                   	ret    

00000694 <chdir>:
SYSCALL(chdir)
 694:	b8 09 00 00 00       	mov    $0x9,%eax
 699:	cd 40                	int    $0x40
 69b:	c3                   	ret    

0000069c <dup>:
SYSCALL(dup)
 69c:	b8 0a 00 00 00       	mov    $0xa,%eax
 6a1:	cd 40                	int    $0x40
 6a3:	c3                   	ret    

000006a4 <getpid>:
SYSCALL(getpid)
 6a4:	b8 0b 00 00 00       	mov    $0xb,%eax
 6a9:	cd 40                	int    $0x40
 6ab:	c3                   	ret    

000006ac <sbrk>:
SYSCALL(sbrk)
 6ac:	b8 0c 00 00 00       	mov    $0xc,%eax
 6b1:	cd 40                	int    $0x40
 6b3:	c3                   	ret    

000006b4 <sleep>:
SYSCALL(sleep)
 6b4:	b8 0d 00 00 00       	mov    $0xd,%eax
 6b9:	cd 40                	int    $0x40
 6bb:	c3                   	ret    

000006bc <uptime>:
SYSCALL(uptime)
 6bc:	b8 0e 00 00 00       	mov    $0xe,%eax
 6c1:	cd 40                	int    $0x40
 6c3:	c3                   	ret    

000006c4 <clone>:
SYSCALL(clone)
 6c4:	b8 16 00 00 00       	mov    $0x16,%eax
 6c9:	cd 40                	int    $0x40
 6cb:	c3                   	ret    

000006cc <join>:
SYSCALL(join)
 6cc:	b8 17 00 00 00       	mov    $0x17,%eax
 6d1:	cd 40                	int    $0x40
 6d3:	c3                   	ret    
 6d4:	66 90                	xchg   %ax,%ax
 6d6:	66 90                	xchg   %ax,%ax
 6d8:	66 90                	xchg   %ax,%ax
 6da:	66 90                	xchg   %ax,%ax
 6dc:	66 90                	xchg   %ax,%ax
 6de:	66 90                	xchg   %ax,%ax

000006e0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 6e0:	55                   	push   %ebp
 6e1:	89 e5                	mov    %esp,%ebp
 6e3:	57                   	push   %edi
 6e4:	56                   	push   %esi
 6e5:	53                   	push   %ebx
 6e6:	83 ec 3c             	sub    $0x3c,%esp
 6e9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 6ec:	89 d1                	mov    %edx,%ecx
{
 6ee:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 6f1:	85 d2                	test   %edx,%edx
 6f3:	0f 89 7f 00 00 00    	jns    778 <printint+0x98>
 6f9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 6fd:	74 79                	je     778 <printint+0x98>
    neg = 1;
 6ff:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 706:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 708:	31 db                	xor    %ebx,%ebx
 70a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 70d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 710:	89 c8                	mov    %ecx,%eax
 712:	31 d2                	xor    %edx,%edx
 714:	89 cf                	mov    %ecx,%edi
 716:	f7 75 c4             	divl   -0x3c(%ebp)
 719:	0f b6 92 14 0c 00 00 	movzbl 0xc14(%edx),%edx
 720:	89 45 c0             	mov    %eax,-0x40(%ebp)
 723:	89 d8                	mov    %ebx,%eax
 725:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 728:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 72b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 72e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 731:	76 dd                	jbe    710 <printint+0x30>
  if(neg)
 733:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 736:	85 c9                	test   %ecx,%ecx
 738:	74 0c                	je     746 <printint+0x66>
    buf[i++] = '-';
 73a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 73f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 741:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 746:	8b 7d b8             	mov    -0x48(%ebp),%edi
 749:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 74d:	eb 07                	jmp    756 <printint+0x76>
 74f:	90                   	nop
    putc(fd, buf[i]);
 750:	0f b6 13             	movzbl (%ebx),%edx
 753:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 756:	83 ec 04             	sub    $0x4,%esp
 759:	88 55 d7             	mov    %dl,-0x29(%ebp)
 75c:	6a 01                	push   $0x1
 75e:	56                   	push   %esi
 75f:	57                   	push   %edi
 760:	e8 df fe ff ff       	call   644 <write>
  while(--i >= 0)
 765:	83 c4 10             	add    $0x10,%esp
 768:	39 de                	cmp    %ebx,%esi
 76a:	75 e4                	jne    750 <printint+0x70>
}
 76c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 76f:	5b                   	pop    %ebx
 770:	5e                   	pop    %esi
 771:	5f                   	pop    %edi
 772:	5d                   	pop    %ebp
 773:	c3                   	ret    
 774:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 778:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 77f:	eb 87                	jmp    708 <printint+0x28>
 781:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 788:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 78f:	90                   	nop

00000790 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 790:	55                   	push   %ebp
 791:	89 e5                	mov    %esp,%ebp
 793:	57                   	push   %edi
 794:	56                   	push   %esi
 795:	53                   	push   %ebx
 796:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 799:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 79c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 79f:	0f b6 13             	movzbl (%ebx),%edx
 7a2:	84 d2                	test   %dl,%dl
 7a4:	74 6a                	je     810 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 7a6:	8d 45 10             	lea    0x10(%ebp),%eax
 7a9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 7ac:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 7af:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 7b1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 7b4:	eb 36                	jmp    7ec <printf+0x5c>
 7b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7bd:	8d 76 00             	lea    0x0(%esi),%esi
 7c0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 7c3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 7c8:	83 f8 25             	cmp    $0x25,%eax
 7cb:	74 15                	je     7e2 <printf+0x52>
  write(fd, &c, 1);
 7cd:	83 ec 04             	sub    $0x4,%esp
 7d0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 7d3:	6a 01                	push   $0x1
 7d5:	57                   	push   %edi
 7d6:	56                   	push   %esi
 7d7:	e8 68 fe ff ff       	call   644 <write>
 7dc:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 7df:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 7e2:	0f b6 13             	movzbl (%ebx),%edx
 7e5:	83 c3 01             	add    $0x1,%ebx
 7e8:	84 d2                	test   %dl,%dl
 7ea:	74 24                	je     810 <printf+0x80>
    c = fmt[i] & 0xff;
 7ec:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 7ef:	85 c9                	test   %ecx,%ecx
 7f1:	74 cd                	je     7c0 <printf+0x30>
      }
    } else if(state == '%'){
 7f3:	83 f9 25             	cmp    $0x25,%ecx
 7f6:	75 ea                	jne    7e2 <printf+0x52>
      if(c == 'd'){
 7f8:	83 f8 25             	cmp    $0x25,%eax
 7fb:	0f 84 07 01 00 00    	je     908 <printf+0x178>
 801:	83 e8 63             	sub    $0x63,%eax
 804:	83 f8 15             	cmp    $0x15,%eax
 807:	77 17                	ja     820 <printf+0x90>
 809:	ff 24 85 bc 0b 00 00 	jmp    *0xbbc(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 810:	8d 65 f4             	lea    -0xc(%ebp),%esp
 813:	5b                   	pop    %ebx
 814:	5e                   	pop    %esi
 815:	5f                   	pop    %edi
 816:	5d                   	pop    %ebp
 817:	c3                   	ret    
 818:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 81f:	90                   	nop
  write(fd, &c, 1);
 820:	83 ec 04             	sub    $0x4,%esp
 823:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 826:	6a 01                	push   $0x1
 828:	57                   	push   %edi
 829:	56                   	push   %esi
 82a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 82e:	e8 11 fe ff ff       	call   644 <write>
        putc(fd, c);
 833:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 837:	83 c4 0c             	add    $0xc,%esp
 83a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 83d:	6a 01                	push   $0x1
 83f:	57                   	push   %edi
 840:	56                   	push   %esi
 841:	e8 fe fd ff ff       	call   644 <write>
        putc(fd, c);
 846:	83 c4 10             	add    $0x10,%esp
      state = 0;
 849:	31 c9                	xor    %ecx,%ecx
 84b:	eb 95                	jmp    7e2 <printf+0x52>
 84d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 850:	83 ec 0c             	sub    $0xc,%esp
 853:	b9 10 00 00 00       	mov    $0x10,%ecx
 858:	6a 00                	push   $0x0
 85a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 85d:	8b 10                	mov    (%eax),%edx
 85f:	89 f0                	mov    %esi,%eax
 861:	e8 7a fe ff ff       	call   6e0 <printint>
        ap++;
 866:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 86a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 86d:	31 c9                	xor    %ecx,%ecx
 86f:	e9 6e ff ff ff       	jmp    7e2 <printf+0x52>
 874:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 878:	8b 45 d0             	mov    -0x30(%ebp),%eax
 87b:	8b 10                	mov    (%eax),%edx
        ap++;
 87d:	83 c0 04             	add    $0x4,%eax
 880:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 883:	85 d2                	test   %edx,%edx
 885:	0f 84 8d 00 00 00    	je     918 <printf+0x188>
        while(*s != 0){
 88b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 88e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 890:	84 c0                	test   %al,%al
 892:	0f 84 4a ff ff ff    	je     7e2 <printf+0x52>
 898:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 89b:	89 d3                	mov    %edx,%ebx
 89d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 8a0:	83 ec 04             	sub    $0x4,%esp
          s++;
 8a3:	83 c3 01             	add    $0x1,%ebx
 8a6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 8a9:	6a 01                	push   $0x1
 8ab:	57                   	push   %edi
 8ac:	56                   	push   %esi
 8ad:	e8 92 fd ff ff       	call   644 <write>
        while(*s != 0){
 8b2:	0f b6 03             	movzbl (%ebx),%eax
 8b5:	83 c4 10             	add    $0x10,%esp
 8b8:	84 c0                	test   %al,%al
 8ba:	75 e4                	jne    8a0 <printf+0x110>
      state = 0;
 8bc:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 8bf:	31 c9                	xor    %ecx,%ecx
 8c1:	e9 1c ff ff ff       	jmp    7e2 <printf+0x52>
 8c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8cd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 8d0:	83 ec 0c             	sub    $0xc,%esp
 8d3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 8d8:	6a 01                	push   $0x1
 8da:	e9 7b ff ff ff       	jmp    85a <printf+0xca>
 8df:	90                   	nop
        putc(fd, *ap);
 8e0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 8e3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 8e6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 8e8:	6a 01                	push   $0x1
 8ea:	57                   	push   %edi
 8eb:	56                   	push   %esi
        putc(fd, *ap);
 8ec:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 8ef:	e8 50 fd ff ff       	call   644 <write>
        ap++;
 8f4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 8f8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8fb:	31 c9                	xor    %ecx,%ecx
 8fd:	e9 e0 fe ff ff       	jmp    7e2 <printf+0x52>
 902:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 908:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 90b:	83 ec 04             	sub    $0x4,%esp
 90e:	e9 2a ff ff ff       	jmp    83d <printf+0xad>
 913:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 917:	90                   	nop
          s = "(null)";
 918:	ba b5 0b 00 00       	mov    $0xbb5,%edx
        while(*s != 0){
 91d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 920:	b8 28 00 00 00       	mov    $0x28,%eax
 925:	89 d3                	mov    %edx,%ebx
 927:	e9 74 ff ff ff       	jmp    8a0 <printf+0x110>
 92c:	66 90                	xchg   %ax,%ax
 92e:	66 90                	xchg   %ax,%ax

00000930 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 930:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 931:	a1 b4 0f 00 00       	mov    0xfb4,%eax
{
 936:	89 e5                	mov    %esp,%ebp
 938:	57                   	push   %edi
 939:	56                   	push   %esi
 93a:	53                   	push   %ebx
 93b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 93e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 941:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 948:	89 c2                	mov    %eax,%edx
 94a:	8b 00                	mov    (%eax),%eax
 94c:	39 ca                	cmp    %ecx,%edx
 94e:	73 30                	jae    980 <free+0x50>
 950:	39 c1                	cmp    %eax,%ecx
 952:	72 04                	jb     958 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 954:	39 c2                	cmp    %eax,%edx
 956:	72 f0                	jb     948 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 958:	8b 73 fc             	mov    -0x4(%ebx),%esi
 95b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 95e:	39 f8                	cmp    %edi,%eax
 960:	74 30                	je     992 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 962:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 965:	8b 42 04             	mov    0x4(%edx),%eax
 968:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 96b:	39 f1                	cmp    %esi,%ecx
 96d:	74 3a                	je     9a9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 96f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 971:	5b                   	pop    %ebx
  freep = p;
 972:	89 15 b4 0f 00 00    	mov    %edx,0xfb4
}
 978:	5e                   	pop    %esi
 979:	5f                   	pop    %edi
 97a:	5d                   	pop    %ebp
 97b:	c3                   	ret    
 97c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 980:	39 c2                	cmp    %eax,%edx
 982:	72 c4                	jb     948 <free+0x18>
 984:	39 c1                	cmp    %eax,%ecx
 986:	73 c0                	jae    948 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 988:	8b 73 fc             	mov    -0x4(%ebx),%esi
 98b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 98e:	39 f8                	cmp    %edi,%eax
 990:	75 d0                	jne    962 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 992:	03 70 04             	add    0x4(%eax),%esi
 995:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 998:	8b 02                	mov    (%edx),%eax
 99a:	8b 00                	mov    (%eax),%eax
 99c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 99f:	8b 42 04             	mov    0x4(%edx),%eax
 9a2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 9a5:	39 f1                	cmp    %esi,%ecx
 9a7:	75 c6                	jne    96f <free+0x3f>
    p->s.size += bp->s.size;
 9a9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 9ac:	89 15 b4 0f 00 00    	mov    %edx,0xfb4
    p->s.size += bp->s.size;
 9b2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 9b5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 9b8:	89 0a                	mov    %ecx,(%edx)
}
 9ba:	5b                   	pop    %ebx
 9bb:	5e                   	pop    %esi
 9bc:	5f                   	pop    %edi
 9bd:	5d                   	pop    %ebp
 9be:	c3                   	ret    
 9bf:	90                   	nop

000009c0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 9c0:	55                   	push   %ebp
 9c1:	89 e5                	mov    %esp,%ebp
 9c3:	57                   	push   %edi
 9c4:	56                   	push   %esi
 9c5:	53                   	push   %ebx
 9c6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9c9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 9cc:	8b 3d b4 0f 00 00    	mov    0xfb4,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9d2:	8d 70 07             	lea    0x7(%eax),%esi
 9d5:	c1 ee 03             	shr    $0x3,%esi
 9d8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 9db:	85 ff                	test   %edi,%edi
 9dd:	0f 84 9d 00 00 00    	je     a80 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9e3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 9e5:	8b 4a 04             	mov    0x4(%edx),%ecx
 9e8:	39 f1                	cmp    %esi,%ecx
 9ea:	73 6a                	jae    a56 <malloc+0x96>
 9ec:	bb 00 10 00 00       	mov    $0x1000,%ebx
 9f1:	39 de                	cmp    %ebx,%esi
 9f3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 9f6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 9fd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 a00:	eb 17                	jmp    a19 <malloc+0x59>
 a02:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a08:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 a0a:	8b 48 04             	mov    0x4(%eax),%ecx
 a0d:	39 f1                	cmp    %esi,%ecx
 a0f:	73 4f                	jae    a60 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 a11:	8b 3d b4 0f 00 00    	mov    0xfb4,%edi
 a17:	89 c2                	mov    %eax,%edx
 a19:	39 d7                	cmp    %edx,%edi
 a1b:	75 eb                	jne    a08 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 a1d:	83 ec 0c             	sub    $0xc,%esp
 a20:	ff 75 e4             	push   -0x1c(%ebp)
 a23:	e8 84 fc ff ff       	call   6ac <sbrk>
  if(p == (char*)-1)
 a28:	83 c4 10             	add    $0x10,%esp
 a2b:	83 f8 ff             	cmp    $0xffffffff,%eax
 a2e:	74 1c                	je     a4c <malloc+0x8c>
  hp->s.size = nu;
 a30:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 a33:	83 ec 0c             	sub    $0xc,%esp
 a36:	83 c0 08             	add    $0x8,%eax
 a39:	50                   	push   %eax
 a3a:	e8 f1 fe ff ff       	call   930 <free>
  return freep;
 a3f:	8b 15 b4 0f 00 00    	mov    0xfb4,%edx
      if((p = morecore(nunits)) == 0)
 a45:	83 c4 10             	add    $0x10,%esp
 a48:	85 d2                	test   %edx,%edx
 a4a:	75 bc                	jne    a08 <malloc+0x48>
        return 0;
  }
}
 a4c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 a4f:	31 c0                	xor    %eax,%eax
}
 a51:	5b                   	pop    %ebx
 a52:	5e                   	pop    %esi
 a53:	5f                   	pop    %edi
 a54:	5d                   	pop    %ebp
 a55:	c3                   	ret    
    if(p->s.size >= nunits){
 a56:	89 d0                	mov    %edx,%eax
 a58:	89 fa                	mov    %edi,%edx
 a5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 a60:	39 ce                	cmp    %ecx,%esi
 a62:	74 4c                	je     ab0 <malloc+0xf0>
        p->s.size -= nunits;
 a64:	29 f1                	sub    %esi,%ecx
 a66:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 a69:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 a6c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 a6f:	89 15 b4 0f 00 00    	mov    %edx,0xfb4
}
 a75:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 a78:	83 c0 08             	add    $0x8,%eax
}
 a7b:	5b                   	pop    %ebx
 a7c:	5e                   	pop    %esi
 a7d:	5f                   	pop    %edi
 a7e:	5d                   	pop    %ebp
 a7f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 a80:	c7 05 b4 0f 00 00 b8 	movl   $0xfb8,0xfb4
 a87:	0f 00 00 
    base.s.size = 0;
 a8a:	bf b8 0f 00 00       	mov    $0xfb8,%edi
    base.s.ptr = freep = prevp = &base;
 a8f:	c7 05 b8 0f 00 00 b8 	movl   $0xfb8,0xfb8
 a96:	0f 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a99:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 a9b:	c7 05 bc 0f 00 00 00 	movl   $0x0,0xfbc
 aa2:	00 00 00 
    if(p->s.size >= nunits){
 aa5:	e9 42 ff ff ff       	jmp    9ec <malloc+0x2c>
 aaa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 ab0:	8b 08                	mov    (%eax),%ecx
 ab2:	89 0a                	mov    %ecx,(%edx)
 ab4:	eb b9                	jmp    a6f <malloc+0xaf>
