
_test_20:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
}

void worker(void *arg1, void *arg2);

int main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	51                   	push   %ecx
   e:	83 ec 14             	sub    $0x14,%esp
   ppid = getpid();
  11:	e8 ee 06 00 00       	call   704 <getpid>

   int arg1 = 11, arg2 = 22;

   size = (unsigned int)sbrk(0);
  16:	83 ec 0c             	sub    $0xc,%esp
   int arg1 = 11, arg2 = 22;
  19:	c7 45 f0 0b 00 00 00 	movl   $0xb,-0x10(%ebp)
   size = (unsigned int)sbrk(0);
  20:	6a 00                	push   $0x0
   ppid = getpid();
  22:	a3 b8 0f 00 00       	mov    %eax,0xfb8
   int arg1 = 11, arg2 = 22;
  27:	c7 45 f4 16 00 00 00 	movl   $0x16,-0xc(%ebp)
   size = (unsigned int)sbrk(0);
  2e:	e8 d9 06 00 00       	call   70c <sbrk>

   int thread_pid = thread_create(worker, &arg1, &arg2);
  33:	83 c4 0c             	add    $0xc,%esp
   size = (unsigned int)sbrk(0);
  36:	a3 b0 0f 00 00       	mov    %eax,0xfb0
   int thread_pid = thread_create(worker, &arg1, &arg2);
  3b:	8d 45 f4             	lea    -0xc(%ebp),%eax
  3e:	50                   	push   %eax
  3f:	8d 45 f0             	lea    -0x10(%ebp),%eax
  42:	50                   	push   %eax
  43:	68 b0 01 00 00       	push   $0x1b0
  48:	e8 63 05 00 00       	call   5b0 <thread_create>
   assert(thread_pid > 0);
  4d:	83 c4 10             	add    $0x10,%esp
  50:	85 c0                	test   %eax,%eax
  52:	7e 62                	jle    b6 <main+0xb6>
   
   int join_pid = thread_join();
  54:	e8 a7 05 00 00       	call   600 <thread_join>
   assert(join_pid > 0);
  59:	85 c0                	test   %eax,%eax
  5b:	7e 13                	jle    70 <main+0x70>
   

   printf(1, "TEST PASSED\n");
  5d:	50                   	push   %eax
  5e:	50                   	push   %eax
  5f:	68 a1 0b 00 00       	push   $0xba1
  64:	6a 01                	push   $0x1
  66:	e8 85 07 00 00       	call   7f0 <printf>
   exit();
  6b:	e8 14 06 00 00       	call   684 <exit>
   assert(join_pid > 0);
  70:	6a 27                	push   $0x27
  72:	68 18 0b 00 00       	push   $0xb18
  77:	68 22 0b 00 00       	push   $0xb22
  7c:	6a 01                	push   $0x1
  7e:	e8 6d 07 00 00       	call   7f0 <printf>
  83:	83 c4 0c             	add    $0xc,%esp
  86:	68 85 0b 00 00       	push   $0xb85
  8b:	68 48 0b 00 00       	push   $0xb48
  90:	6a 01                	push   $0x1
  92:	e8 59 07 00 00       	call   7f0 <printf>
  97:	5a                   	pop    %edx
  98:	59                   	pop    %ecx
  99:	68 5c 0b 00 00       	push   $0xb5c
  9e:	6a 01                	push   $0x1
  a0:	e8 4b 07 00 00       	call   7f0 <printf>
  a5:	58                   	pop    %eax
  a6:	ff 35 b8 0f 00 00    	push   0xfb8
  ac:	e8 03 06 00 00       	call   6b4 <kill>
  b1:	e8 ce 05 00 00       	call   684 <exit>
   assert(thread_pid > 0);
  b6:	6a 24                	push   $0x24
  b8:	68 18 0b 00 00       	push   $0xb18
  bd:	68 22 0b 00 00       	push   $0xb22
  c2:	6a 01                	push   $0x1
  c4:	e8 27 07 00 00       	call   7f0 <printf>
  c9:	83 c4 0c             	add    $0xc,%esp
  cc:	68 92 0b 00 00       	push   $0xb92
  d1:	eb b8                	jmp    8b <main+0x8b>
  d3:	66 90                	xchg   %ax,%ax
  d5:	66 90                	xchg   %ax,%ax
  d7:	66 90                	xchg   %ax,%ax
  d9:	66 90                	xchg   %ax,%ax
  db:	66 90                	xchg   %ax,%ax
  dd:	66 90                	xchg   %ax,%ax
  df:	90                   	nop

000000e0 <worker2>:
}

void worker2(void *arg1, void *arg2)
{
  e0:	55                   	push   %ebp
  e1:	89 e5                	mov    %esp,%ebp
  e3:	83 ec 14             	sub    $0x14,%esp
   lock_acquire(&lock);
  e6:	68 a8 0f 00 00       	push   $0xfa8
  eb:	e8 60 05 00 00       	call   650 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
  f0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  f7:	e8 10 06 00 00       	call   70c <sbrk>
  fc:	83 c4 10             	add    $0x10,%esp
  ff:	3b 05 b0 0f 00 00    	cmp    0xfb0,%eax
 105:	74 46                	je     14d <worker2+0x6d>
 107:	6a 31                	push   $0x31
   global++;
   lock_release(&lock);

   
   lock_acquire(&lock2);
   assert((unsigned int)sbrk(0) == size);
 109:	68 18 0b 00 00       	push   $0xb18
 10e:	68 22 0b 00 00       	push   $0xb22
 113:	6a 01                	push   $0x1
 115:	e8 d6 06 00 00       	call   7f0 <printf>
 11a:	83 c4 0c             	add    $0xc,%esp
 11d:	68 2a 0b 00 00       	push   $0xb2a
 122:	68 48 0b 00 00       	push   $0xb48
 127:	6a 01                	push   $0x1
 129:	e8 c2 06 00 00       	call   7f0 <printf>
 12e:	58                   	pop    %eax
 12f:	5a                   	pop    %edx
 130:	68 5c 0b 00 00       	push   $0xb5c
 135:	6a 01                	push   $0x1
 137:	e8 b4 06 00 00       	call   7f0 <printf>
 13c:	59                   	pop    %ecx
 13d:	ff 35 b8 0f 00 00    	push   0xfb8
 143:	e8 6c 05 00 00       	call   6b4 <kill>
 148:	e8 37 05 00 00       	call   684 <exit>
   lock_release(&lock);
 14d:	83 ec 0c             	sub    $0xc,%esp
   global++;
 150:	83 05 b4 0f 00 00 01 	addl   $0x1,0xfb4
   lock_release(&lock);
 157:	68 a8 0f 00 00       	push   $0xfa8
 15c:	e8 0f 05 00 00       	call   670 <lock_release>
   lock_acquire(&lock2);
 161:	c7 04 24 a0 0f 00 00 	movl   $0xfa0,(%esp)
 168:	e8 e3 04 00 00       	call   650 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 16d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 174:	e8 93 05 00 00       	call   70c <sbrk>
 179:	83 c4 10             	add    $0x10,%esp
 17c:	3b 05 b0 0f 00 00    	cmp    0xfb0,%eax
 182:	74 04                	je     188 <worker2+0xa8>
 184:	6a 37                	push   $0x37
 186:	eb 81                	jmp    109 <worker2+0x29>
   global++;
   lock_release(&lock2);
 188:	83 ec 0c             	sub    $0xc,%esp
   global++;
 18b:	83 05 b4 0f 00 00 01 	addl   $0x1,0xfb4
   lock_release(&lock2);
 192:	68 a0 0f 00 00       	push   $0xfa0
 197:	e8 d4 04 00 00       	call   670 <lock_release>

   
   exit();
 19c:	e8 e3 04 00 00       	call   684 <exit>
 1a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1af:	90                   	nop

000001b0 <worker>:
}


void worker(void *arg1, void *arg2) {
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	83 ec 14             	sub    $0x14,%esp
   lock_init(&lock);
 1b6:	68 a8 0f 00 00       	push   $0xfa8
 1bb:	e8 70 04 00 00       	call   630 <lock_init>
   lock_init(&lock2);
 1c0:	c7 04 24 a0 0f 00 00 	movl   $0xfa0,(%esp)
 1c7:	e8 64 04 00 00       	call   630 <lock_init>
   lock_acquire(&lock);
 1cc:	c7 04 24 a8 0f 00 00 	movl   $0xfa8,(%esp)
 1d3:	e8 78 04 00 00       	call   650 <lock_acquire>
   lock_acquire(&lock2);
 1d8:	c7 04 24 a0 0f 00 00 	movl   $0xfa0,(%esp)
 1df:	e8 6c 04 00 00       	call   650 <lock_acquire>

   int nested_thread_id = thread_create(worker2, 0, 0);
 1e4:	83 c4 0c             	add    $0xc,%esp
 1e7:	6a 00                	push   $0x0
 1e9:	6a 00                	push   $0x0
 1eb:	68 e0 00 00 00       	push   $0xe0
 1f0:	e8 bb 03 00 00       	call   5b0 <thread_create>
    assert(nested_thread_id > 0);
 1f5:	83 c4 10             	add    $0x10,%esp
 1f8:	85 c0                	test   %eax,%eax
 1fa:	0f 8e 39 01 00 00    	jle    339 <worker+0x189>
   size = (unsigned int)sbrk(0);
 200:	83 ec 0c             	sub    $0xc,%esp
 203:	6a 00                	push   $0x0
 205:	e8 02 05 00 00       	call   70c <sbrk>

   while (global < num_threads) {
 20a:	83 c4 10             	add    $0x10,%esp
   size = (unsigned int)sbrk(0);
 20d:	a3 b0 0f 00 00       	mov    %eax,0xfb0
   while (global < num_threads) {
 212:	a1 9c 0f 00 00       	mov    0xf9c,%eax
 217:	39 05 b4 0f 00 00    	cmp    %eax,0xfb4
 21d:	7d 36                	jge    255 <worker+0xa5>
 21f:	90                   	nop
      lock_release(&lock);
 220:	83 ec 0c             	sub    $0xc,%esp
 223:	68 a8 0f 00 00       	push   $0xfa8
 228:	e8 43 04 00 00       	call   670 <lock_release>
      sleep(100);
 22d:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 234:	e8 db 04 00 00       	call   714 <sleep>
      lock_acquire(&lock);
 239:	c7 04 24 a8 0f 00 00 	movl   $0xfa8,(%esp)
 240:	e8 0b 04 00 00       	call   650 <lock_acquire>
   while (global < num_threads) {
 245:	a1 9c 0f 00 00       	mov    0xf9c,%eax
 24a:	83 c4 10             	add    $0x10,%esp
 24d:	39 05 b4 0f 00 00    	cmp    %eax,0xfb4
 253:	7c cb                	jl     220 <worker+0x70>
   }

   global = 0;
 255:	c7 05 b4 0f 00 00 00 	movl   $0x0,0xfb4
 25c:	00 00 00 
   sbrk(10000);
 25f:	83 ec 0c             	sub    $0xc,%esp
 262:	68 10 27 00 00       	push   $0x2710
 267:	e8 a0 04 00 00       	call   70c <sbrk>
   size = (unsigned int)sbrk(0);
 26c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 273:	e8 94 04 00 00       	call   70c <sbrk>
   lock_release(&lock);
 278:	c7 04 24 a8 0f 00 00 	movl   $0xfa8,(%esp)
   size = (unsigned int)sbrk(0);
 27f:	a3 b0 0f 00 00       	mov    %eax,0xfb0
   lock_release(&lock);
 284:	e8 e7 03 00 00       	call   670 <lock_release>

   while (global < num_threads) {
 289:	a1 9c 0f 00 00       	mov    0xf9c,%eax
 28e:	83 c4 10             	add    $0x10,%esp
 291:	39 05 b4 0f 00 00    	cmp    %eax,0xfb4
 297:	7d 3c                	jge    2d5 <worker+0x125>
 299:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      lock_release(&lock2);
 2a0:	83 ec 0c             	sub    $0xc,%esp
 2a3:	68 a0 0f 00 00       	push   $0xfa0
 2a8:	e8 c3 03 00 00       	call   670 <lock_release>
      sleep(100);
 2ad:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 2b4:	e8 5b 04 00 00       	call   714 <sleep>
      lock_acquire(&lock2);
 2b9:	c7 04 24 a0 0f 00 00 	movl   $0xfa0,(%esp)
 2c0:	e8 8b 03 00 00       	call   650 <lock_acquire>
   while (global < num_threads) {
 2c5:	a1 9c 0f 00 00       	mov    0xf9c,%eax
 2ca:	83 c4 10             	add    $0x10,%esp
 2cd:	39 05 b4 0f 00 00    	cmp    %eax,0xfb4
 2d3:	7c cb                	jl     2a0 <worker+0xf0>
   }
   lock_release(&lock2);
 2d5:	83 ec 0c             	sub    $0xc,%esp
 2d8:	68 a0 0f 00 00       	push   $0xfa0
 2dd:	e8 8e 03 00 00       	call   670 <lock_release>

   int nested_join_pid = thread_join();
 2e2:	e8 19 03 00 00       	call   600 <thread_join>
   assert(nested_join_pid > 0);
 2e7:	83 c4 10             	add    $0x10,%esp
 2ea:	85 c0                	test   %eax,%eax
 2ec:	7e 05                	jle    2f3 <worker+0x143>




   exit();
 2ee:	e8 91 03 00 00       	call   684 <exit>
   assert(nested_join_pid > 0);
 2f3:	6a 5d                	push   $0x5d
 2f5:	68 18 0b 00 00       	push   $0xb18
 2fa:	68 22 0b 00 00       	push   $0xb22
 2ff:	6a 01                	push   $0x1
 301:	e8 ea 04 00 00       	call   7f0 <printf>
 306:	83 c4 0c             	add    $0xc,%esp
 309:	68 7e 0b 00 00       	push   $0xb7e
 30e:	68 48 0b 00 00       	push   $0xb48
 313:	6a 01                	push   $0x1
 315:	e8 d6 04 00 00       	call   7f0 <printf>
 31a:	58                   	pop    %eax
 31b:	5a                   	pop    %edx
 31c:	68 5c 0b 00 00       	push   $0xb5c
 321:	6a 01                	push   $0x1
 323:	e8 c8 04 00 00       	call   7f0 <printf>
 328:	59                   	pop    %ecx
 329:	ff 35 b8 0f 00 00    	push   0xfb8
 32f:	e8 80 03 00 00       	call   6b4 <kill>
 334:	e8 4b 03 00 00       	call   684 <exit>
    assert(nested_thread_id > 0);
 339:	6a 47                	push   $0x47
 33b:	68 18 0b 00 00       	push   $0xb18
 340:	68 22 0b 00 00       	push   $0xb22
 345:	6a 01                	push   $0x1
 347:	e8 a4 04 00 00       	call   7f0 <printf>
 34c:	83 c4 0c             	add    $0xc,%esp
 34f:	68 69 0b 00 00       	push   $0xb69
 354:	eb b8                	jmp    30e <worker+0x15e>
 356:	66 90                	xchg   %ax,%ax
 358:	66 90                	xchg   %ax,%ax
 35a:	66 90                	xchg   %ax,%ax
 35c:	66 90                	xchg   %ax,%ax
 35e:	66 90                	xchg   %ax,%ax

00000360 <strcpy>:
#include "x86.h"
#define PGSIZE 4096

char*
strcpy(char *s, const char *t)
{
 360:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 361:	31 c0                	xor    %eax,%eax
{
 363:	89 e5                	mov    %esp,%ebp
 365:	53                   	push   %ebx
 366:	8b 4d 08             	mov    0x8(%ebp),%ecx
 369:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 36c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 370:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 374:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 377:	83 c0 01             	add    $0x1,%eax
 37a:	84 d2                	test   %dl,%dl
 37c:	75 f2                	jne    370 <strcpy+0x10>
    ;
  return os;
}
 37e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 381:	89 c8                	mov    %ecx,%eax
 383:	c9                   	leave  
 384:	c3                   	ret    
 385:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 38c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000390 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 390:	55                   	push   %ebp
 391:	89 e5                	mov    %esp,%ebp
 393:	53                   	push   %ebx
 394:	8b 55 08             	mov    0x8(%ebp),%edx
 397:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 39a:	0f b6 02             	movzbl (%edx),%eax
 39d:	84 c0                	test   %al,%al
 39f:	75 17                	jne    3b8 <strcmp+0x28>
 3a1:	eb 3a                	jmp    3dd <strcmp+0x4d>
 3a3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3a7:	90                   	nop
 3a8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 3ac:	83 c2 01             	add    $0x1,%edx
 3af:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 3b2:	84 c0                	test   %al,%al
 3b4:	74 1a                	je     3d0 <strcmp+0x40>
    p++, q++;
 3b6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 3b8:	0f b6 19             	movzbl (%ecx),%ebx
 3bb:	38 c3                	cmp    %al,%bl
 3bd:	74 e9                	je     3a8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 3bf:	29 d8                	sub    %ebx,%eax
}
 3c1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3c4:	c9                   	leave  
 3c5:	c3                   	ret    
 3c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3cd:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 3d0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 3d4:	31 c0                	xor    %eax,%eax
 3d6:	29 d8                	sub    %ebx,%eax
}
 3d8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3db:	c9                   	leave  
 3dc:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 3dd:	0f b6 19             	movzbl (%ecx),%ebx
 3e0:	31 c0                	xor    %eax,%eax
 3e2:	eb db                	jmp    3bf <strcmp+0x2f>
 3e4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3ef:	90                   	nop

000003f0 <strlen>:

uint
strlen(const char *s)
{
 3f0:	55                   	push   %ebp
 3f1:	89 e5                	mov    %esp,%ebp
 3f3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 3f6:	80 3a 00             	cmpb   $0x0,(%edx)
 3f9:	74 15                	je     410 <strlen+0x20>
 3fb:	31 c0                	xor    %eax,%eax
 3fd:	8d 76 00             	lea    0x0(%esi),%esi
 400:	83 c0 01             	add    $0x1,%eax
 403:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 407:	89 c1                	mov    %eax,%ecx
 409:	75 f5                	jne    400 <strlen+0x10>
    ;
  return n;
}
 40b:	89 c8                	mov    %ecx,%eax
 40d:	5d                   	pop    %ebp
 40e:	c3                   	ret    
 40f:	90                   	nop
  for(n = 0; s[n]; n++)
 410:	31 c9                	xor    %ecx,%ecx
}
 412:	5d                   	pop    %ebp
 413:	89 c8                	mov    %ecx,%eax
 415:	c3                   	ret    
 416:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 41d:	8d 76 00             	lea    0x0(%esi),%esi

00000420 <memset>:

void*
memset(void *dst, int c, uint n)
{
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	57                   	push   %edi
 424:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 427:	8b 4d 10             	mov    0x10(%ebp),%ecx
 42a:	8b 45 0c             	mov    0xc(%ebp),%eax
 42d:	89 d7                	mov    %edx,%edi
 42f:	fc                   	cld    
 430:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 432:	8b 7d fc             	mov    -0x4(%ebp),%edi
 435:	89 d0                	mov    %edx,%eax
 437:	c9                   	leave  
 438:	c3                   	ret    
 439:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000440 <strchr>:

char*
strchr(const char *s, char c)
{
 440:	55                   	push   %ebp
 441:	89 e5                	mov    %esp,%ebp
 443:	8b 45 08             	mov    0x8(%ebp),%eax
 446:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 44a:	0f b6 10             	movzbl (%eax),%edx
 44d:	84 d2                	test   %dl,%dl
 44f:	75 12                	jne    463 <strchr+0x23>
 451:	eb 1d                	jmp    470 <strchr+0x30>
 453:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 457:	90                   	nop
 458:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 45c:	83 c0 01             	add    $0x1,%eax
 45f:	84 d2                	test   %dl,%dl
 461:	74 0d                	je     470 <strchr+0x30>
    if(*s == c)
 463:	38 d1                	cmp    %dl,%cl
 465:	75 f1                	jne    458 <strchr+0x18>
      return (char*)s;
  return 0;
}
 467:	5d                   	pop    %ebp
 468:	c3                   	ret    
 469:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 470:	31 c0                	xor    %eax,%eax
}
 472:	5d                   	pop    %ebp
 473:	c3                   	ret    
 474:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 47b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 47f:	90                   	nop

00000480 <gets>:

char*
gets(char *buf, int max)
{
 480:	55                   	push   %ebp
 481:	89 e5                	mov    %esp,%ebp
 483:	57                   	push   %edi
 484:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 485:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 488:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 489:	31 db                	xor    %ebx,%ebx
{
 48b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 48e:	eb 27                	jmp    4b7 <gets+0x37>
    cc = read(0, &c, 1);
 490:	83 ec 04             	sub    $0x4,%esp
 493:	6a 01                	push   $0x1
 495:	57                   	push   %edi
 496:	6a 00                	push   $0x0
 498:	e8 ff 01 00 00       	call   69c <read>
    if(cc < 1)
 49d:	83 c4 10             	add    $0x10,%esp
 4a0:	85 c0                	test   %eax,%eax
 4a2:	7e 1d                	jle    4c1 <gets+0x41>
      break;
    buf[i++] = c;
 4a4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 4a8:	8b 55 08             	mov    0x8(%ebp),%edx
 4ab:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 4af:	3c 0a                	cmp    $0xa,%al
 4b1:	74 1d                	je     4d0 <gets+0x50>
 4b3:	3c 0d                	cmp    $0xd,%al
 4b5:	74 19                	je     4d0 <gets+0x50>
  for(i=0; i+1 < max; ){
 4b7:	89 de                	mov    %ebx,%esi
 4b9:	83 c3 01             	add    $0x1,%ebx
 4bc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 4bf:	7c cf                	jl     490 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 4c1:	8b 45 08             	mov    0x8(%ebp),%eax
 4c4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 4c8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4cb:	5b                   	pop    %ebx
 4cc:	5e                   	pop    %esi
 4cd:	5f                   	pop    %edi
 4ce:	5d                   	pop    %ebp
 4cf:	c3                   	ret    
  buf[i] = '\0';
 4d0:	8b 45 08             	mov    0x8(%ebp),%eax
 4d3:	89 de                	mov    %ebx,%esi
 4d5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 4d9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4dc:	5b                   	pop    %ebx
 4dd:	5e                   	pop    %esi
 4de:	5f                   	pop    %edi
 4df:	5d                   	pop    %ebp
 4e0:	c3                   	ret    
 4e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4ef:	90                   	nop

000004f0 <stat>:

int
stat(const char *n, struct stat *st)
{
 4f0:	55                   	push   %ebp
 4f1:	89 e5                	mov    %esp,%ebp
 4f3:	56                   	push   %esi
 4f4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 4f5:	83 ec 08             	sub    $0x8,%esp
 4f8:	6a 00                	push   $0x0
 4fa:	ff 75 08             	push   0x8(%ebp)
 4fd:	e8 c2 01 00 00       	call   6c4 <open>
  if(fd < 0)
 502:	83 c4 10             	add    $0x10,%esp
 505:	85 c0                	test   %eax,%eax
 507:	78 27                	js     530 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 509:	83 ec 08             	sub    $0x8,%esp
 50c:	ff 75 0c             	push   0xc(%ebp)
 50f:	89 c3                	mov    %eax,%ebx
 511:	50                   	push   %eax
 512:	e8 c5 01 00 00       	call   6dc <fstat>
  close(fd);
 517:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 51a:	89 c6                	mov    %eax,%esi
  close(fd);
 51c:	e8 8b 01 00 00       	call   6ac <close>
  return r;
 521:	83 c4 10             	add    $0x10,%esp
}
 524:	8d 65 f8             	lea    -0x8(%ebp),%esp
 527:	89 f0                	mov    %esi,%eax
 529:	5b                   	pop    %ebx
 52a:	5e                   	pop    %esi
 52b:	5d                   	pop    %ebp
 52c:	c3                   	ret    
 52d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 530:	be ff ff ff ff       	mov    $0xffffffff,%esi
 535:	eb ed                	jmp    524 <stat+0x34>
 537:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 53e:	66 90                	xchg   %ax,%ax

00000540 <atoi>:

int
atoi(const char *s)
{
 540:	55                   	push   %ebp
 541:	89 e5                	mov    %esp,%ebp
 543:	53                   	push   %ebx
 544:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 547:	0f be 02             	movsbl (%edx),%eax
 54a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 54d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 550:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 555:	77 1e                	ja     575 <atoi+0x35>
 557:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 55e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 560:	83 c2 01             	add    $0x1,%edx
 563:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 566:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 56a:	0f be 02             	movsbl (%edx),%eax
 56d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 570:	80 fb 09             	cmp    $0x9,%bl
 573:	76 eb                	jbe    560 <atoi+0x20>
  return n;
}
 575:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 578:	89 c8                	mov    %ecx,%eax
 57a:	c9                   	leave  
 57b:	c3                   	ret    
 57c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000580 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 580:	55                   	push   %ebp
 581:	89 e5                	mov    %esp,%ebp
 583:	57                   	push   %edi
 584:	8b 45 10             	mov    0x10(%ebp),%eax
 587:	8b 55 08             	mov    0x8(%ebp),%edx
 58a:	56                   	push   %esi
 58b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 58e:	85 c0                	test   %eax,%eax
 590:	7e 13                	jle    5a5 <memmove+0x25>
 592:	01 d0                	add    %edx,%eax
  dst = vdst;
 594:	89 d7                	mov    %edx,%edi
 596:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 59d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 5a0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 5a1:	39 f8                	cmp    %edi,%eax
 5a3:	75 fb                	jne    5a0 <memmove+0x20>
  return vdst;
}
 5a5:	5e                   	pop    %esi
 5a6:	89 d0                	mov    %edx,%eax
 5a8:	5f                   	pop    %edi
 5a9:	5d                   	pop    %ebp
 5aa:	c3                   	ret    
 5ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5af:	90                   	nop

000005b0 <thread_create>:

// call malloc() to create a new user stack
// use clone() to create the child thread -> get it running
// returns the newly created PID to the parent && 0 to child if successful
// returns -1 if unsucessful
int thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2) {
 5b0:	55                   	push   %ebp
 5b1:	89 e5                	mov    %esp,%ebp
 5b3:	83 ec 14             	sub    $0x14,%esp

  void *stack;
  if ((stack= malloc(2*PGSIZE)) == 0){
 5b6:	68 00 20 00 00       	push   $0x2000
 5bb:	e8 60 04 00 00       	call   a20 <malloc>
 5c0:	83 c4 10             	add    $0x10,%esp
 5c3:	85 c0                	test   %eax,%eax
 5c5:	74 25                	je     5ec <thread_create+0x3c>
    return -1;
  }

  // stack - page aligned
  if((uint)stack % PGSIZE)
 5c7:	89 c2                	mov    %eax,%edx
 5c9:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 5cf:	74 07                	je     5d8 <thread_create+0x28>
    stack = stack + (PGSIZE - (uint)stack % PGSIZE);
 5d1:	29 d0                	sub    %edx,%eax
 5d3:	05 00 10 00 00       	add    $0x1000,%eax

  int childPid = clone(start_routine, arg1, arg2, stack);
 5d8:	50                   	push   %eax
 5d9:	ff 75 10             	push   0x10(%ebp)
 5dc:	ff 75 0c             	push   0xc(%ebp)
 5df:	ff 75 08             	push   0x8(%ebp)
 5e2:	e8 3d 01 00 00       	call   724 <clone>

  return childPid;
 5e7:	83 c4 10             	add    $0x10,%esp
}
 5ea:	c9                   	leave  
 5eb:	c3                   	ret    
 5ec:	c9                   	leave  
    return -1;
 5ed:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
 5f2:	c3                   	ret    
 5f3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000600 <thread_join>:

// call join() and frees the user stack
// returns waited-for PID if successful, -1 otherwise
int thread_join() {
 600:	55                   	push   %ebp
 601:	89 e5                	mov    %esp,%ebp
 603:	53                   	push   %ebx

  void *stack;
  int childpid = join(&stack);
 604:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join() {
 607:	83 ec 20             	sub    $0x20,%esp
  int childpid = join(&stack);
 60a:	50                   	push   %eax
 60b:	e8 1c 01 00 00       	call   72c <join>
 610:	89 c3                	mov    %eax,%ebx
  free(stack);
 612:	58                   	pop    %eax
 613:	ff 75 f4             	push   -0xc(%ebp)
 616:	e8 75 03 00 00       	call   990 <free>
  return childpid;
}
 61b:	89 d8                	mov    %ebx,%eax
 61d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 620:	c9                   	leave  
 621:	c3                   	ret    
 622:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 629:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000630 <lock_init>:
      : "memory"
    );
    return value;
}
 
void lock_init(lock_t *lock) {
 630:	55                   	push   %ebp
 631:	89 e5                	mov    %esp,%ebp
 633:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 636:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 63c:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 643:	5d                   	pop    %ebp
 644:	c3                   	ret    
 645:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 64c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000650 <lock_acquire>:

void lock_acquire(lock_t *lock) {
 650:	55                   	push   %ebp
 651:	89 e5                	mov    %esp,%ebp
 653:	8b 55 08             	mov    0x8(%ebp),%edx
    __asm__ volatile("lock; xaddl %0, %1"
 656:	8b 02                	mov    (%edx),%eax
 658:	f0 0f c1 02          	lock xadd %eax,(%edx)
  int myturn = FetchAndAdd(&lock->ticket, lock->ticket);
  while (lock->turn != myturn)  ; // spin
 65c:	8b 52 04             	mov    0x4(%edx),%edx
 65f:	90                   	nop
 660:	39 c2                	cmp    %eax,%edx
 662:	75 fc                	jne    660 <lock_acquire+0x10>
}
 664:	5d                   	pop    %ebp
 665:	c3                   	ret    
 666:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 66d:	8d 76 00             	lea    0x0(%esi),%esi

00000670 <lock_release>:

void lock_release(lock_t *lock) {
 670:	55                   	push   %ebp
 671:	89 e5                	mov    %esp,%ebp
 673:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 676:	83 40 04 01          	addl   $0x1,0x4(%eax)
 67a:	5d                   	pop    %ebp
 67b:	c3                   	ret    

0000067c <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 67c:	b8 01 00 00 00       	mov    $0x1,%eax
 681:	cd 40                	int    $0x40
 683:	c3                   	ret    

00000684 <exit>:
SYSCALL(exit)
 684:	b8 02 00 00 00       	mov    $0x2,%eax
 689:	cd 40                	int    $0x40
 68b:	c3                   	ret    

0000068c <wait>:
SYSCALL(wait)
 68c:	b8 03 00 00 00       	mov    $0x3,%eax
 691:	cd 40                	int    $0x40
 693:	c3                   	ret    

00000694 <pipe>:
SYSCALL(pipe)
 694:	b8 04 00 00 00       	mov    $0x4,%eax
 699:	cd 40                	int    $0x40
 69b:	c3                   	ret    

0000069c <read>:
SYSCALL(read)
 69c:	b8 05 00 00 00       	mov    $0x5,%eax
 6a1:	cd 40                	int    $0x40
 6a3:	c3                   	ret    

000006a4 <write>:
SYSCALL(write)
 6a4:	b8 10 00 00 00       	mov    $0x10,%eax
 6a9:	cd 40                	int    $0x40
 6ab:	c3                   	ret    

000006ac <close>:
SYSCALL(close)
 6ac:	b8 15 00 00 00       	mov    $0x15,%eax
 6b1:	cd 40                	int    $0x40
 6b3:	c3                   	ret    

000006b4 <kill>:
SYSCALL(kill)
 6b4:	b8 06 00 00 00       	mov    $0x6,%eax
 6b9:	cd 40                	int    $0x40
 6bb:	c3                   	ret    

000006bc <exec>:
SYSCALL(exec)
 6bc:	b8 07 00 00 00       	mov    $0x7,%eax
 6c1:	cd 40                	int    $0x40
 6c3:	c3                   	ret    

000006c4 <open>:
SYSCALL(open)
 6c4:	b8 0f 00 00 00       	mov    $0xf,%eax
 6c9:	cd 40                	int    $0x40
 6cb:	c3                   	ret    

000006cc <mknod>:
SYSCALL(mknod)
 6cc:	b8 11 00 00 00       	mov    $0x11,%eax
 6d1:	cd 40                	int    $0x40
 6d3:	c3                   	ret    

000006d4 <unlink>:
SYSCALL(unlink)
 6d4:	b8 12 00 00 00       	mov    $0x12,%eax
 6d9:	cd 40                	int    $0x40
 6db:	c3                   	ret    

000006dc <fstat>:
SYSCALL(fstat)
 6dc:	b8 08 00 00 00       	mov    $0x8,%eax
 6e1:	cd 40                	int    $0x40
 6e3:	c3                   	ret    

000006e4 <link>:
SYSCALL(link)
 6e4:	b8 13 00 00 00       	mov    $0x13,%eax
 6e9:	cd 40                	int    $0x40
 6eb:	c3                   	ret    

000006ec <mkdir>:
SYSCALL(mkdir)
 6ec:	b8 14 00 00 00       	mov    $0x14,%eax
 6f1:	cd 40                	int    $0x40
 6f3:	c3                   	ret    

000006f4 <chdir>:
SYSCALL(chdir)
 6f4:	b8 09 00 00 00       	mov    $0x9,%eax
 6f9:	cd 40                	int    $0x40
 6fb:	c3                   	ret    

000006fc <dup>:
SYSCALL(dup)
 6fc:	b8 0a 00 00 00       	mov    $0xa,%eax
 701:	cd 40                	int    $0x40
 703:	c3                   	ret    

00000704 <getpid>:
SYSCALL(getpid)
 704:	b8 0b 00 00 00       	mov    $0xb,%eax
 709:	cd 40                	int    $0x40
 70b:	c3                   	ret    

0000070c <sbrk>:
SYSCALL(sbrk)
 70c:	b8 0c 00 00 00       	mov    $0xc,%eax
 711:	cd 40                	int    $0x40
 713:	c3                   	ret    

00000714 <sleep>:
SYSCALL(sleep)
 714:	b8 0d 00 00 00       	mov    $0xd,%eax
 719:	cd 40                	int    $0x40
 71b:	c3                   	ret    

0000071c <uptime>:
SYSCALL(uptime)
 71c:	b8 0e 00 00 00       	mov    $0xe,%eax
 721:	cd 40                	int    $0x40
 723:	c3                   	ret    

00000724 <clone>:
SYSCALL(clone)
 724:	b8 16 00 00 00       	mov    $0x16,%eax
 729:	cd 40                	int    $0x40
 72b:	c3                   	ret    

0000072c <join>:
SYSCALL(join)
 72c:	b8 17 00 00 00       	mov    $0x17,%eax
 731:	cd 40                	int    $0x40
 733:	c3                   	ret    
 734:	66 90                	xchg   %ax,%ax
 736:	66 90                	xchg   %ax,%ax
 738:	66 90                	xchg   %ax,%ax
 73a:	66 90                	xchg   %ax,%ax
 73c:	66 90                	xchg   %ax,%ax
 73e:	66 90                	xchg   %ax,%ax

00000740 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 740:	55                   	push   %ebp
 741:	89 e5                	mov    %esp,%ebp
 743:	57                   	push   %edi
 744:	56                   	push   %esi
 745:	53                   	push   %ebx
 746:	83 ec 3c             	sub    $0x3c,%esp
 749:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 74c:	89 d1                	mov    %edx,%ecx
{
 74e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 751:	85 d2                	test   %edx,%edx
 753:	0f 89 7f 00 00 00    	jns    7d8 <printint+0x98>
 759:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 75d:	74 79                	je     7d8 <printint+0x98>
    neg = 1;
 75f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 766:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 768:	31 db                	xor    %ebx,%ebx
 76a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 76d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 770:	89 c8                	mov    %ecx,%eax
 772:	31 d2                	xor    %edx,%edx
 774:	89 cf                	mov    %ecx,%edi
 776:	f7 75 c4             	divl   -0x3c(%ebp)
 779:	0f b6 92 10 0c 00 00 	movzbl 0xc10(%edx),%edx
 780:	89 45 c0             	mov    %eax,-0x40(%ebp)
 783:	89 d8                	mov    %ebx,%eax
 785:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 788:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 78b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 78e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 791:	76 dd                	jbe    770 <printint+0x30>
  if(neg)
 793:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 796:	85 c9                	test   %ecx,%ecx
 798:	74 0c                	je     7a6 <printint+0x66>
    buf[i++] = '-';
 79a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 79f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 7a1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 7a6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 7a9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 7ad:	eb 07                	jmp    7b6 <printint+0x76>
 7af:	90                   	nop
    putc(fd, buf[i]);
 7b0:	0f b6 13             	movzbl (%ebx),%edx
 7b3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 7b6:	83 ec 04             	sub    $0x4,%esp
 7b9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 7bc:	6a 01                	push   $0x1
 7be:	56                   	push   %esi
 7bf:	57                   	push   %edi
 7c0:	e8 df fe ff ff       	call   6a4 <write>
  while(--i >= 0)
 7c5:	83 c4 10             	add    $0x10,%esp
 7c8:	39 de                	cmp    %ebx,%esi
 7ca:	75 e4                	jne    7b0 <printint+0x70>
}
 7cc:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7cf:	5b                   	pop    %ebx
 7d0:	5e                   	pop    %esi
 7d1:	5f                   	pop    %edi
 7d2:	5d                   	pop    %ebp
 7d3:	c3                   	ret    
 7d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 7d8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 7df:	eb 87                	jmp    768 <printint+0x28>
 7e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7ef:	90                   	nop

000007f0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 7f0:	55                   	push   %ebp
 7f1:	89 e5                	mov    %esp,%ebp
 7f3:	57                   	push   %edi
 7f4:	56                   	push   %esi
 7f5:	53                   	push   %ebx
 7f6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 7f9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 7fc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 7ff:	0f b6 13             	movzbl (%ebx),%edx
 802:	84 d2                	test   %dl,%dl
 804:	74 6a                	je     870 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 806:	8d 45 10             	lea    0x10(%ebp),%eax
 809:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 80c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 80f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 811:	89 45 d0             	mov    %eax,-0x30(%ebp)
 814:	eb 36                	jmp    84c <printf+0x5c>
 816:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 81d:	8d 76 00             	lea    0x0(%esi),%esi
 820:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 823:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 828:	83 f8 25             	cmp    $0x25,%eax
 82b:	74 15                	je     842 <printf+0x52>
  write(fd, &c, 1);
 82d:	83 ec 04             	sub    $0x4,%esp
 830:	88 55 e7             	mov    %dl,-0x19(%ebp)
 833:	6a 01                	push   $0x1
 835:	57                   	push   %edi
 836:	56                   	push   %esi
 837:	e8 68 fe ff ff       	call   6a4 <write>
 83c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 83f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 842:	0f b6 13             	movzbl (%ebx),%edx
 845:	83 c3 01             	add    $0x1,%ebx
 848:	84 d2                	test   %dl,%dl
 84a:	74 24                	je     870 <printf+0x80>
    c = fmt[i] & 0xff;
 84c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 84f:	85 c9                	test   %ecx,%ecx
 851:	74 cd                	je     820 <printf+0x30>
      }
    } else if(state == '%'){
 853:	83 f9 25             	cmp    $0x25,%ecx
 856:	75 ea                	jne    842 <printf+0x52>
      if(c == 'd'){
 858:	83 f8 25             	cmp    $0x25,%eax
 85b:	0f 84 07 01 00 00    	je     968 <printf+0x178>
 861:	83 e8 63             	sub    $0x63,%eax
 864:	83 f8 15             	cmp    $0x15,%eax
 867:	77 17                	ja     880 <printf+0x90>
 869:	ff 24 85 b8 0b 00 00 	jmp    *0xbb8(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 870:	8d 65 f4             	lea    -0xc(%ebp),%esp
 873:	5b                   	pop    %ebx
 874:	5e                   	pop    %esi
 875:	5f                   	pop    %edi
 876:	5d                   	pop    %ebp
 877:	c3                   	ret    
 878:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 87f:	90                   	nop
  write(fd, &c, 1);
 880:	83 ec 04             	sub    $0x4,%esp
 883:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 886:	6a 01                	push   $0x1
 888:	57                   	push   %edi
 889:	56                   	push   %esi
 88a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 88e:	e8 11 fe ff ff       	call   6a4 <write>
        putc(fd, c);
 893:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 897:	83 c4 0c             	add    $0xc,%esp
 89a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 89d:	6a 01                	push   $0x1
 89f:	57                   	push   %edi
 8a0:	56                   	push   %esi
 8a1:	e8 fe fd ff ff       	call   6a4 <write>
        putc(fd, c);
 8a6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8a9:	31 c9                	xor    %ecx,%ecx
 8ab:	eb 95                	jmp    842 <printf+0x52>
 8ad:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 8b0:	83 ec 0c             	sub    $0xc,%esp
 8b3:	b9 10 00 00 00       	mov    $0x10,%ecx
 8b8:	6a 00                	push   $0x0
 8ba:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8bd:	8b 10                	mov    (%eax),%edx
 8bf:	89 f0                	mov    %esi,%eax
 8c1:	e8 7a fe ff ff       	call   740 <printint>
        ap++;
 8c6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 8ca:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8cd:	31 c9                	xor    %ecx,%ecx
 8cf:	e9 6e ff ff ff       	jmp    842 <printf+0x52>
 8d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 8d8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8db:	8b 10                	mov    (%eax),%edx
        ap++;
 8dd:	83 c0 04             	add    $0x4,%eax
 8e0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 8e3:	85 d2                	test   %edx,%edx
 8e5:	0f 84 8d 00 00 00    	je     978 <printf+0x188>
        while(*s != 0){
 8eb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 8ee:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 8f0:	84 c0                	test   %al,%al
 8f2:	0f 84 4a ff ff ff    	je     842 <printf+0x52>
 8f8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 8fb:	89 d3                	mov    %edx,%ebx
 8fd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 900:	83 ec 04             	sub    $0x4,%esp
          s++;
 903:	83 c3 01             	add    $0x1,%ebx
 906:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 909:	6a 01                	push   $0x1
 90b:	57                   	push   %edi
 90c:	56                   	push   %esi
 90d:	e8 92 fd ff ff       	call   6a4 <write>
        while(*s != 0){
 912:	0f b6 03             	movzbl (%ebx),%eax
 915:	83 c4 10             	add    $0x10,%esp
 918:	84 c0                	test   %al,%al
 91a:	75 e4                	jne    900 <printf+0x110>
      state = 0;
 91c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 91f:	31 c9                	xor    %ecx,%ecx
 921:	e9 1c ff ff ff       	jmp    842 <printf+0x52>
 926:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 92d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 930:	83 ec 0c             	sub    $0xc,%esp
 933:	b9 0a 00 00 00       	mov    $0xa,%ecx
 938:	6a 01                	push   $0x1
 93a:	e9 7b ff ff ff       	jmp    8ba <printf+0xca>
 93f:	90                   	nop
        putc(fd, *ap);
 940:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 943:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 946:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 948:	6a 01                	push   $0x1
 94a:	57                   	push   %edi
 94b:	56                   	push   %esi
        putc(fd, *ap);
 94c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 94f:	e8 50 fd ff ff       	call   6a4 <write>
        ap++;
 954:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 958:	83 c4 10             	add    $0x10,%esp
      state = 0;
 95b:	31 c9                	xor    %ecx,%ecx
 95d:	e9 e0 fe ff ff       	jmp    842 <printf+0x52>
 962:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 968:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 96b:	83 ec 04             	sub    $0x4,%esp
 96e:	e9 2a ff ff ff       	jmp    89d <printf+0xad>
 973:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 977:	90                   	nop
          s = "(null)";
 978:	ba ae 0b 00 00       	mov    $0xbae,%edx
        while(*s != 0){
 97d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 980:	b8 28 00 00 00       	mov    $0x28,%eax
 985:	89 d3                	mov    %edx,%ebx
 987:	e9 74 ff ff ff       	jmp    900 <printf+0x110>
 98c:	66 90                	xchg   %ax,%ax
 98e:	66 90                	xchg   %ax,%ax

00000990 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 990:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 991:	a1 bc 0f 00 00       	mov    0xfbc,%eax
{
 996:	89 e5                	mov    %esp,%ebp
 998:	57                   	push   %edi
 999:	56                   	push   %esi
 99a:	53                   	push   %ebx
 99b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 99e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9a8:	89 c2                	mov    %eax,%edx
 9aa:	8b 00                	mov    (%eax),%eax
 9ac:	39 ca                	cmp    %ecx,%edx
 9ae:	73 30                	jae    9e0 <free+0x50>
 9b0:	39 c1                	cmp    %eax,%ecx
 9b2:	72 04                	jb     9b8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9b4:	39 c2                	cmp    %eax,%edx
 9b6:	72 f0                	jb     9a8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 9b8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 9bb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 9be:	39 f8                	cmp    %edi,%eax
 9c0:	74 30                	je     9f2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 9c2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 9c5:	8b 42 04             	mov    0x4(%edx),%eax
 9c8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 9cb:	39 f1                	cmp    %esi,%ecx
 9cd:	74 3a                	je     a09 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 9cf:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 9d1:	5b                   	pop    %ebx
  freep = p;
 9d2:	89 15 bc 0f 00 00    	mov    %edx,0xfbc
}
 9d8:	5e                   	pop    %esi
 9d9:	5f                   	pop    %edi
 9da:	5d                   	pop    %ebp
 9db:	c3                   	ret    
 9dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9e0:	39 c2                	cmp    %eax,%edx
 9e2:	72 c4                	jb     9a8 <free+0x18>
 9e4:	39 c1                	cmp    %eax,%ecx
 9e6:	73 c0                	jae    9a8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 9e8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 9eb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 9ee:	39 f8                	cmp    %edi,%eax
 9f0:	75 d0                	jne    9c2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 9f2:	03 70 04             	add    0x4(%eax),%esi
 9f5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 9f8:	8b 02                	mov    (%edx),%eax
 9fa:	8b 00                	mov    (%eax),%eax
 9fc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 9ff:	8b 42 04             	mov    0x4(%edx),%eax
 a02:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a05:	39 f1                	cmp    %esi,%ecx
 a07:	75 c6                	jne    9cf <free+0x3f>
    p->s.size += bp->s.size;
 a09:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 a0c:	89 15 bc 0f 00 00    	mov    %edx,0xfbc
    p->s.size += bp->s.size;
 a12:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 a15:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 a18:	89 0a                	mov    %ecx,(%edx)
}
 a1a:	5b                   	pop    %ebx
 a1b:	5e                   	pop    %esi
 a1c:	5f                   	pop    %edi
 a1d:	5d                   	pop    %ebp
 a1e:	c3                   	ret    
 a1f:	90                   	nop

00000a20 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 a20:	55                   	push   %ebp
 a21:	89 e5                	mov    %esp,%ebp
 a23:	57                   	push   %edi
 a24:	56                   	push   %esi
 a25:	53                   	push   %ebx
 a26:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a29:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 a2c:	8b 3d bc 0f 00 00    	mov    0xfbc,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a32:	8d 70 07             	lea    0x7(%eax),%esi
 a35:	c1 ee 03             	shr    $0x3,%esi
 a38:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 a3b:	85 ff                	test   %edi,%edi
 a3d:	0f 84 9d 00 00 00    	je     ae0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a43:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 a45:	8b 4a 04             	mov    0x4(%edx),%ecx
 a48:	39 f1                	cmp    %esi,%ecx
 a4a:	73 6a                	jae    ab6 <malloc+0x96>
 a4c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 a51:	39 de                	cmp    %ebx,%esi
 a53:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 a56:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 a5d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 a60:	eb 17                	jmp    a79 <malloc+0x59>
 a62:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a68:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 a6a:	8b 48 04             	mov    0x4(%eax),%ecx
 a6d:	39 f1                	cmp    %esi,%ecx
 a6f:	73 4f                	jae    ac0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 a71:	8b 3d bc 0f 00 00    	mov    0xfbc,%edi
 a77:	89 c2                	mov    %eax,%edx
 a79:	39 d7                	cmp    %edx,%edi
 a7b:	75 eb                	jne    a68 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 a7d:	83 ec 0c             	sub    $0xc,%esp
 a80:	ff 75 e4             	push   -0x1c(%ebp)
 a83:	e8 84 fc ff ff       	call   70c <sbrk>
  if(p == (char*)-1)
 a88:	83 c4 10             	add    $0x10,%esp
 a8b:	83 f8 ff             	cmp    $0xffffffff,%eax
 a8e:	74 1c                	je     aac <malloc+0x8c>
  hp->s.size = nu;
 a90:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 a93:	83 ec 0c             	sub    $0xc,%esp
 a96:	83 c0 08             	add    $0x8,%eax
 a99:	50                   	push   %eax
 a9a:	e8 f1 fe ff ff       	call   990 <free>
  return freep;
 a9f:	8b 15 bc 0f 00 00    	mov    0xfbc,%edx
      if((p = morecore(nunits)) == 0)
 aa5:	83 c4 10             	add    $0x10,%esp
 aa8:	85 d2                	test   %edx,%edx
 aaa:	75 bc                	jne    a68 <malloc+0x48>
        return 0;
  }
}
 aac:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 aaf:	31 c0                	xor    %eax,%eax
}
 ab1:	5b                   	pop    %ebx
 ab2:	5e                   	pop    %esi
 ab3:	5f                   	pop    %edi
 ab4:	5d                   	pop    %ebp
 ab5:	c3                   	ret    
    if(p->s.size >= nunits){
 ab6:	89 d0                	mov    %edx,%eax
 ab8:	89 fa                	mov    %edi,%edx
 aba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 ac0:	39 ce                	cmp    %ecx,%esi
 ac2:	74 4c                	je     b10 <malloc+0xf0>
        p->s.size -= nunits;
 ac4:	29 f1                	sub    %esi,%ecx
 ac6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 ac9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 acc:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 acf:	89 15 bc 0f 00 00    	mov    %edx,0xfbc
}
 ad5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 ad8:	83 c0 08             	add    $0x8,%eax
}
 adb:	5b                   	pop    %ebx
 adc:	5e                   	pop    %esi
 add:	5f                   	pop    %edi
 ade:	5d                   	pop    %ebp
 adf:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 ae0:	c7 05 bc 0f 00 00 c0 	movl   $0xfc0,0xfbc
 ae7:	0f 00 00 
    base.s.size = 0;
 aea:	bf c0 0f 00 00       	mov    $0xfc0,%edi
    base.s.ptr = freep = prevp = &base;
 aef:	c7 05 c0 0f 00 00 c0 	movl   $0xfc0,0xfc0
 af6:	0f 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 af9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 afb:	c7 05 c4 0f 00 00 00 	movl   $0x0,0xfc4
 b02:	00 00 00 
    if(p->s.size >= nunits){
 b05:	e9 42 ff ff ff       	jmp    a4c <malloc+0x2c>
 b0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 b10:	8b 08                	mov    (%eax),%ecx
 b12:	89 0a                	mov    %ecx,(%edx)
 b14:	eb b9                	jmp    acf <malloc+0xaf>
