
_test:     file format elf32-i386


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
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
  11:	83 ec 18             	sub    $0x18,%esp
   ppid = getpid();
  14:	e8 6b 07 00 00       	call   784 <getpid>

   int arg1 = 11, arg2 = 22;

   lock_init(&lock);
  19:	83 ec 0c             	sub    $0xc,%esp
   int arg1 = 11, arg2 = 22;
  1c:	c7 45 e0 0b 00 00 00 	movl   $0xb,-0x20(%ebp)
   lock_init(&lock);
  23:	68 30 10 00 00       	push   $0x1030
   ppid = getpid();
  28:	a3 40 10 00 00       	mov    %eax,0x1040
   int arg1 = 11, arg2 = 22;
  2d:	c7 45 e4 16 00 00 00 	movl   $0x16,-0x1c(%ebp)
   lock_init(&lock);
  34:	e8 77 06 00 00       	call   6b0 <lock_init>
   lock_init(&lock2);
  39:	c7 04 24 28 10 00 00 	movl   $0x1028,(%esp)
  40:	e8 6b 06 00 00       	call   6b0 <lock_init>
   lock_acquire(&lock);
  45:	c7 04 24 30 10 00 00 	movl   $0x1030,(%esp)
  4c:	e8 7f 06 00 00       	call   6d0 <lock_acquire>
   lock_acquire(&lock2);
  51:	c7 04 24 28 10 00 00 	movl   $0x1028,(%esp)
  58:	e8 73 06 00 00       	call   6d0 <lock_acquire>

   for (int i = 0; i < num_threads; i++) {
  5d:	8b 35 24 10 00 00    	mov    0x1024,%esi
  63:	83 c4 10             	add    $0x10,%esp
  66:	85 f6                	test   %esi,%esi
  68:	7e 75                	jle    df <main+0xdf>
  6a:	31 db                	xor    %ebx,%ebx
  6c:	8d 7d e4             	lea    -0x1c(%ebp),%edi
  6f:	8d 75 e0             	lea    -0x20(%ebp),%esi
  72:	eb 0f                	jmp    83 <main+0x83>
  74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  78:	83 c3 01             	add    $0x1,%ebx
  7b:	39 1d 24 10 00 00    	cmp    %ebx,0x1024
  81:	7e 5c                	jle    df <main+0xdf>
      int thread_pid = thread_create(worker, &arg1, &arg2);
  83:	83 ec 04             	sub    $0x4,%esp
  86:	57                   	push   %edi
  87:	56                   	push   %esi
  88:	68 20 02 00 00       	push   $0x220
  8d:	e8 9e 05 00 00       	call   630 <thread_create>
      assert(thread_pid > 0);
  92:	83 c4 10             	add    $0x10,%esp
  95:	85 c0                	test   %eax,%eax
  97:	7f df                	jg     78 <main+0x78>
  99:	6a 28                	push   $0x28
  9b:	68 98 0b 00 00       	push   $0xb98
  a0:	68 9f 0b 00 00       	push   $0xb9f
  a5:	6a 01                	push   $0x1
  a7:	e8 c4 07 00 00       	call   870 <printf>
  ac:	83 c4 0c             	add    $0xc,%esp
  af:	68 e6 0b 00 00       	push   $0xbe6
   }
   lock_release(&lock2);

   for (int i = 0; i < num_threads; i++) {
      int join_pid = thread_join();
      assert(join_pid > 0);
  b4:	68 c5 0b 00 00       	push   $0xbc5
  b9:	6a 01                	push   $0x1
  bb:	e8 b0 07 00 00       	call   870 <printf>
  c0:	5a                   	pop    %edx
  c1:	59                   	pop    %ecx
  c2:	68 d9 0b 00 00       	push   $0xbd9
  c7:	6a 01                	push   $0x1
  c9:	e8 a2 07 00 00       	call   870 <printf>
  ce:	5b                   	pop    %ebx
  cf:	ff 35 40 10 00 00    	push   0x1040
  d5:	e8 5a 06 00 00       	call   734 <kill>
  da:	e8 25 06 00 00       	call   704 <exit>
   size = (unsigned int)sbrk(0);
  df:	83 ec 0c             	sub    $0xc,%esp
  e2:	6a 00                	push   $0x0
  e4:	e8 a3 06 00 00       	call   78c <sbrk>
   while (global < num_threads) {
  e9:	83 c4 10             	add    $0x10,%esp
   size = (unsigned int)sbrk(0);
  ec:	a3 38 10 00 00       	mov    %eax,0x1038
   while (global < num_threads) {
  f1:	a1 24 10 00 00       	mov    0x1024,%eax
  f6:	39 05 3c 10 00 00    	cmp    %eax,0x103c
  fc:	7d 37                	jge    135 <main+0x135>
  fe:	66 90                	xchg   %ax,%ax
      lock_release(&lock);
 100:	83 ec 0c             	sub    $0xc,%esp
 103:	68 30 10 00 00       	push   $0x1030
 108:	e8 e3 05 00 00       	call   6f0 <lock_release>
      sleep(100);
 10d:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 114:	e8 7b 06 00 00       	call   794 <sleep>
      lock_acquire(&lock);
 119:	c7 04 24 30 10 00 00 	movl   $0x1030,(%esp)
 120:	e8 ab 05 00 00       	call   6d0 <lock_acquire>
   while (global < num_threads) {
 125:	a1 24 10 00 00       	mov    0x1024,%eax
 12a:	83 c4 10             	add    $0x10,%esp
 12d:	39 05 3c 10 00 00    	cmp    %eax,0x103c
 133:	7c cb                	jl     100 <main+0x100>
   global = 0;
 135:	c7 05 3c 10 00 00 00 	movl   $0x0,0x103c
 13c:	00 00 00 
   sbrk(10000);
 13f:	83 ec 0c             	sub    $0xc,%esp
 142:	68 10 27 00 00       	push   $0x2710
 147:	e8 40 06 00 00       	call   78c <sbrk>
   size = (unsigned int)sbrk(0);
 14c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 153:	e8 34 06 00 00       	call   78c <sbrk>
   lock_release(&lock);
 158:	c7 04 24 30 10 00 00 	movl   $0x1030,(%esp)
   size = (unsigned int)sbrk(0);
 15f:	a3 38 10 00 00       	mov    %eax,0x1038
   lock_release(&lock);
 164:	e8 87 05 00 00       	call   6f0 <lock_release>
   while (global < num_threads) {
 169:	a1 24 10 00 00       	mov    0x1024,%eax
 16e:	83 c4 10             	add    $0x10,%esp
 171:	39 05 3c 10 00 00    	cmp    %eax,0x103c
 177:	7d 3c                	jge    1b5 <main+0x1b5>
 179:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      lock_release(&lock2);
 180:	83 ec 0c             	sub    $0xc,%esp
 183:	68 28 10 00 00       	push   $0x1028
 188:	e8 63 05 00 00       	call   6f0 <lock_release>
      sleep(100);
 18d:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 194:	e8 fb 05 00 00       	call   794 <sleep>
      lock_acquire(&lock2);
 199:	c7 04 24 28 10 00 00 	movl   $0x1028,(%esp)
 1a0:	e8 2b 05 00 00       	call   6d0 <lock_acquire>
   while (global < num_threads) {
 1a5:	a1 24 10 00 00       	mov    0x1024,%eax
 1aa:	83 c4 10             	add    $0x10,%esp
 1ad:	39 05 3c 10 00 00    	cmp    %eax,0x103c
 1b3:	7c cb                	jl     180 <main+0x180>
   lock_release(&lock2);
 1b5:	83 ec 0c             	sub    $0xc,%esp
 1b8:	68 28 10 00 00       	push   $0x1028
 1bd:	e8 2e 05 00 00       	call   6f0 <lock_release>
   for (int i = 0; i < num_threads; i++) {
 1c2:	83 c4 10             	add    $0x10,%esp
 1c5:	83 3d 24 10 00 00 00 	cmpl   $0x0,0x1024
 1cc:	7e 3e                	jle    20c <main+0x20c>
 1ce:	31 db                	xor    %ebx,%ebx
 1d0:	eb 11                	jmp    1e3 <main+0x1e3>
 1d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1d8:	83 c3 01             	add    $0x1,%ebx
 1db:	39 1d 24 10 00 00    	cmp    %ebx,0x1024
 1e1:	7e 29                	jle    20c <main+0x20c>
      int join_pid = thread_join();
 1e3:	e8 98 04 00 00       	call   680 <thread_join>
      assert(join_pid > 0);
 1e8:	85 c0                	test   %eax,%eax
 1ea:	7f ec                	jg     1d8 <main+0x1d8>
 1ec:	6a 41                	push   $0x41
 1ee:	68 98 0b 00 00       	push   $0xb98
 1f3:	68 9f 0b 00 00       	push   $0xb9f
 1f8:	6a 01                	push   $0x1
 1fa:	e8 71 06 00 00       	call   870 <printf>
 1ff:	83 c4 0c             	add    $0xc,%esp
 202:	68 f5 0b 00 00       	push   $0xbf5
 207:	e9 a8 fe ff ff       	jmp    b4 <main+0xb4>
   }

   printf(1, "TEST PASSED\n");
 20c:	50                   	push   %eax
 20d:	50                   	push   %eax
 20e:	68 02 0c 00 00       	push   $0xc02
 213:	6a 01                	push   $0x1
 215:	e8 56 06 00 00       	call   870 <printf>
   exit();
 21a:	e8 e5 04 00 00       	call   704 <exit>
 21f:	90                   	nop

00000220 <worker>:
   
   exit();
}


void worker(void *arg1, void *arg2) {
 220:	55                   	push   %ebp
 221:	89 e5                	mov    %esp,%ebp
 223:	83 ec 14             	sub    $0x14,%esp
   lock_acquire(&lock);
 226:	68 30 10 00 00       	push   $0x1030
 22b:	e8 a0 04 00 00       	call   6d0 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 230:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 237:	e8 50 05 00 00       	call   78c <sbrk>
 23c:	83 c4 10             	add    $0x10,%esp
 23f:	3b 05 38 10 00 00    	cmp    0x1038,%eax
 245:	74 46                	je     28d <worker+0x6d>
 247:	6a 5b                	push   $0x5b
   


   lock_acquire(&lock2);
   //printf(1, "sbrk 0%d\n", sbrk(0));
   assert((unsigned int)sbrk(0) == size);
 249:	68 98 0b 00 00       	push   $0xb98
 24e:	68 9f 0b 00 00       	push   $0xb9f
 253:	6a 01                	push   $0x1
 255:	e8 16 06 00 00       	call   870 <printf>
 25a:	83 c4 0c             	add    $0xc,%esp
 25d:	68 a7 0b 00 00       	push   $0xba7
 262:	68 c5 0b 00 00       	push   $0xbc5
 267:	6a 01                	push   $0x1
 269:	e8 02 06 00 00       	call   870 <printf>
 26e:	58                   	pop    %eax
 26f:	5a                   	pop    %edx
 270:	68 d9 0b 00 00       	push   $0xbd9
 275:	6a 01                	push   $0x1
 277:	e8 f4 05 00 00       	call   870 <printf>
 27c:	59                   	pop    %ecx
 27d:	ff 35 40 10 00 00    	push   0x1040
 283:	e8 ac 04 00 00       	call   734 <kill>
 288:	e8 77 04 00 00       	call   704 <exit>
   lock_release(&lock);
 28d:	83 ec 0c             	sub    $0xc,%esp
   global++;
 290:	83 05 3c 10 00 00 01 	addl   $0x1,0x103c
   lock_release(&lock);
 297:	68 30 10 00 00       	push   $0x1030
 29c:	e8 4f 04 00 00       	call   6f0 <lock_release>
   lock_acquire(&lock2);
 2a1:	c7 04 24 28 10 00 00 	movl   $0x1028,(%esp)
 2a8:	e8 23 04 00 00       	call   6d0 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 2ad:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 2b4:	e8 d3 04 00 00       	call   78c <sbrk>
 2b9:	83 c4 10             	add    $0x10,%esp
 2bc:	3b 05 38 10 00 00    	cmp    0x1038,%eax
 2c2:	74 04                	je     2c8 <worker+0xa8>
 2c4:	6a 64                	push   $0x64
 2c6:	eb 81                	jmp    249 <worker+0x29>
   global++;
   sbrk(10000);
 2c8:	83 ec 0c             	sub    $0xc,%esp
   global++;
 2cb:	83 05 3c 10 00 00 01 	addl   $0x1,0x103c
   sbrk(10000);
 2d2:	68 10 27 00 00       	push   $0x2710
 2d7:	e8 b0 04 00 00       	call   78c <sbrk>
   size = (unsigned int)sbrk(0);
 2dc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 2e3:	e8 a4 04 00 00       	call   78c <sbrk>
   lock_release(&lock2);
 2e8:	c7 04 24 28 10 00 00 	movl   $0x1028,(%esp)
   size = (unsigned int)sbrk(0);
 2ef:	a3 38 10 00 00       	mov    %eax,0x1038
   lock_release(&lock2);
 2f4:	e8 f7 03 00 00       	call   6f0 <lock_release>



   exit();
 2f9:	e8 06 04 00 00       	call   704 <exit>
 2fe:	66 90                	xchg   %ax,%ax

00000300 <worker2>:
{
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	83 ec 08             	sub    $0x8,%esp
   int arg2_int = *(int*)arg2;
 306:	8b 45 0c             	mov    0xc(%ebp),%eax
 309:	8b 10                	mov    (%eax),%edx
   assert(arg1_int == 11);
 30b:	8b 45 08             	mov    0x8(%ebp),%eax
 30e:	83 38 0b             	cmpl   $0xb,(%eax)
 311:	75 4b                	jne    35e <worker2+0x5e>
   assert(arg2_int == 22);
 313:	83 fa 16             	cmp    $0x16,%edx
 316:	74 63                	je     37b <worker2+0x7b>
 318:	6a 4d                	push   $0x4d
 31a:	68 98 0b 00 00       	push   $0xb98
 31f:	68 9f 0b 00 00       	push   $0xb9f
 324:	6a 01                	push   $0x1
 326:	e8 45 05 00 00       	call   870 <printf>
 32b:	83 c4 0c             	add    $0xc,%esp
 32e:	68 1e 0c 00 00       	push   $0xc1e
 333:	68 c5 0b 00 00       	push   $0xbc5
 338:	6a 01                	push   $0x1
 33a:	e8 31 05 00 00       	call   870 <printf>
 33f:	58                   	pop    %eax
 340:	5a                   	pop    %edx
 341:	68 d9 0b 00 00       	push   $0xbd9
 346:	6a 01                	push   $0x1
 348:	e8 23 05 00 00       	call   870 <printf>
 34d:	59                   	pop    %ecx
 34e:	ff 35 40 10 00 00    	push   0x1040
 354:	e8 db 03 00 00       	call   734 <kill>
 359:	e8 a6 03 00 00       	call   704 <exit>
   assert(arg1_int == 11);
 35e:	6a 4c                	push   $0x4c
 360:	68 98 0b 00 00       	push   $0xb98
 365:	68 9f 0b 00 00       	push   $0xb9f
 36a:	6a 01                	push   $0x1
 36c:	e8 ff 04 00 00       	call   870 <printf>
 371:	83 c4 0c             	add    $0xc,%esp
 374:	68 0f 0c 00 00       	push   $0xc0f
 379:	eb b8                	jmp    333 <worker2+0x33>
   lock_acquire(&lock2);
 37b:	83 ec 0c             	sub    $0xc,%esp
 37e:	68 28 10 00 00       	push   $0x1028
 383:	e8 48 03 00 00       	call   6d0 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 388:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 38f:	e8 f8 03 00 00       	call   78c <sbrk>
 394:	83 c4 10             	add    $0x10,%esp
 397:	3b 05 38 10 00 00    	cmp    0x1038,%eax
 39d:	74 20                	je     3bf <worker2+0xbf>
 39f:	6a 50                	push   $0x50
 3a1:	68 98 0b 00 00       	push   $0xb98
 3a6:	68 9f 0b 00 00       	push   $0xb9f
 3ab:	6a 01                	push   $0x1
 3ad:	e8 be 04 00 00       	call   870 <printf>
 3b2:	83 c4 0c             	add    $0xc,%esp
 3b5:	68 a7 0b 00 00       	push   $0xba7
 3ba:	e9 74 ff ff ff       	jmp    333 <worker2+0x33>
   lock_release(&lock2);
 3bf:	83 ec 0c             	sub    $0xc,%esp
   global++;
 3c2:	83 05 3c 10 00 00 01 	addl   $0x1,0x103c
   lock_release(&lock2);
 3c9:	68 28 10 00 00       	push   $0x1028
 3ce:	e8 1d 03 00 00       	call   6f0 <lock_release>
   exit();
 3d3:	e8 2c 03 00 00       	call   704 <exit>
 3d8:	66 90                	xchg   %ax,%ax
 3da:	66 90                	xchg   %ax,%ax
 3dc:	66 90                	xchg   %ax,%ax
 3de:	66 90                	xchg   %ax,%ax

000003e0 <strcpy>:
#include "x86.h"
#define PGSIZE 4096

char*
strcpy(char *s, const char *t)
{
 3e0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 3e1:	31 c0                	xor    %eax,%eax
{
 3e3:	89 e5                	mov    %esp,%ebp
 3e5:	53                   	push   %ebx
 3e6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 3e9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 3ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 3f0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 3f4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 3f7:	83 c0 01             	add    $0x1,%eax
 3fa:	84 d2                	test   %dl,%dl
 3fc:	75 f2                	jne    3f0 <strcpy+0x10>
    ;
  return os;
}
 3fe:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 401:	89 c8                	mov    %ecx,%eax
 403:	c9                   	leave  
 404:	c3                   	ret    
 405:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 40c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000410 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 410:	55                   	push   %ebp
 411:	89 e5                	mov    %esp,%ebp
 413:	53                   	push   %ebx
 414:	8b 55 08             	mov    0x8(%ebp),%edx
 417:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 41a:	0f b6 02             	movzbl (%edx),%eax
 41d:	84 c0                	test   %al,%al
 41f:	75 17                	jne    438 <strcmp+0x28>
 421:	eb 3a                	jmp    45d <strcmp+0x4d>
 423:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 427:	90                   	nop
 428:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 42c:	83 c2 01             	add    $0x1,%edx
 42f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 432:	84 c0                	test   %al,%al
 434:	74 1a                	je     450 <strcmp+0x40>
    p++, q++;
 436:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 438:	0f b6 19             	movzbl (%ecx),%ebx
 43b:	38 c3                	cmp    %al,%bl
 43d:	74 e9                	je     428 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 43f:	29 d8                	sub    %ebx,%eax
}
 441:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 444:	c9                   	leave  
 445:	c3                   	ret    
 446:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 44d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 450:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 454:	31 c0                	xor    %eax,%eax
 456:	29 d8                	sub    %ebx,%eax
}
 458:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 45b:	c9                   	leave  
 45c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 45d:	0f b6 19             	movzbl (%ecx),%ebx
 460:	31 c0                	xor    %eax,%eax
 462:	eb db                	jmp    43f <strcmp+0x2f>
 464:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 46b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 46f:	90                   	nop

00000470 <strlen>:

uint
strlen(const char *s)
{
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 476:	80 3a 00             	cmpb   $0x0,(%edx)
 479:	74 15                	je     490 <strlen+0x20>
 47b:	31 c0                	xor    %eax,%eax
 47d:	8d 76 00             	lea    0x0(%esi),%esi
 480:	83 c0 01             	add    $0x1,%eax
 483:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 487:	89 c1                	mov    %eax,%ecx
 489:	75 f5                	jne    480 <strlen+0x10>
    ;
  return n;
}
 48b:	89 c8                	mov    %ecx,%eax
 48d:	5d                   	pop    %ebp
 48e:	c3                   	ret    
 48f:	90                   	nop
  for(n = 0; s[n]; n++)
 490:	31 c9                	xor    %ecx,%ecx
}
 492:	5d                   	pop    %ebp
 493:	89 c8                	mov    %ecx,%eax
 495:	c3                   	ret    
 496:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 49d:	8d 76 00             	lea    0x0(%esi),%esi

000004a0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	57                   	push   %edi
 4a4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 4a7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 4aa:	8b 45 0c             	mov    0xc(%ebp),%eax
 4ad:	89 d7                	mov    %edx,%edi
 4af:	fc                   	cld    
 4b0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 4b2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 4b5:	89 d0                	mov    %edx,%eax
 4b7:	c9                   	leave  
 4b8:	c3                   	ret    
 4b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000004c0 <strchr>:

char*
strchr(const char *s, char c)
{
 4c0:	55                   	push   %ebp
 4c1:	89 e5                	mov    %esp,%ebp
 4c3:	8b 45 08             	mov    0x8(%ebp),%eax
 4c6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 4ca:	0f b6 10             	movzbl (%eax),%edx
 4cd:	84 d2                	test   %dl,%dl
 4cf:	75 12                	jne    4e3 <strchr+0x23>
 4d1:	eb 1d                	jmp    4f0 <strchr+0x30>
 4d3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4d7:	90                   	nop
 4d8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 4dc:	83 c0 01             	add    $0x1,%eax
 4df:	84 d2                	test   %dl,%dl
 4e1:	74 0d                	je     4f0 <strchr+0x30>
    if(*s == c)
 4e3:	38 d1                	cmp    %dl,%cl
 4e5:	75 f1                	jne    4d8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 4e7:	5d                   	pop    %ebp
 4e8:	c3                   	ret    
 4e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 4f0:	31 c0                	xor    %eax,%eax
}
 4f2:	5d                   	pop    %ebp
 4f3:	c3                   	ret    
 4f4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4ff:	90                   	nop

00000500 <gets>:

char*
gets(char *buf, int max)
{
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
 503:	57                   	push   %edi
 504:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 505:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 508:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 509:	31 db                	xor    %ebx,%ebx
{
 50b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 50e:	eb 27                	jmp    537 <gets+0x37>
    cc = read(0, &c, 1);
 510:	83 ec 04             	sub    $0x4,%esp
 513:	6a 01                	push   $0x1
 515:	57                   	push   %edi
 516:	6a 00                	push   $0x0
 518:	e8 ff 01 00 00       	call   71c <read>
    if(cc < 1)
 51d:	83 c4 10             	add    $0x10,%esp
 520:	85 c0                	test   %eax,%eax
 522:	7e 1d                	jle    541 <gets+0x41>
      break;
    buf[i++] = c;
 524:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 528:	8b 55 08             	mov    0x8(%ebp),%edx
 52b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 52f:	3c 0a                	cmp    $0xa,%al
 531:	74 1d                	je     550 <gets+0x50>
 533:	3c 0d                	cmp    $0xd,%al
 535:	74 19                	je     550 <gets+0x50>
  for(i=0; i+1 < max; ){
 537:	89 de                	mov    %ebx,%esi
 539:	83 c3 01             	add    $0x1,%ebx
 53c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 53f:	7c cf                	jl     510 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 541:	8b 45 08             	mov    0x8(%ebp),%eax
 544:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 548:	8d 65 f4             	lea    -0xc(%ebp),%esp
 54b:	5b                   	pop    %ebx
 54c:	5e                   	pop    %esi
 54d:	5f                   	pop    %edi
 54e:	5d                   	pop    %ebp
 54f:	c3                   	ret    
  buf[i] = '\0';
 550:	8b 45 08             	mov    0x8(%ebp),%eax
 553:	89 de                	mov    %ebx,%esi
 555:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 559:	8d 65 f4             	lea    -0xc(%ebp),%esp
 55c:	5b                   	pop    %ebx
 55d:	5e                   	pop    %esi
 55e:	5f                   	pop    %edi
 55f:	5d                   	pop    %ebp
 560:	c3                   	ret    
 561:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 568:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 56f:	90                   	nop

00000570 <stat>:

int
stat(const char *n, struct stat *st)
{
 570:	55                   	push   %ebp
 571:	89 e5                	mov    %esp,%ebp
 573:	56                   	push   %esi
 574:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 575:	83 ec 08             	sub    $0x8,%esp
 578:	6a 00                	push   $0x0
 57a:	ff 75 08             	push   0x8(%ebp)
 57d:	e8 c2 01 00 00       	call   744 <open>
  if(fd < 0)
 582:	83 c4 10             	add    $0x10,%esp
 585:	85 c0                	test   %eax,%eax
 587:	78 27                	js     5b0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 589:	83 ec 08             	sub    $0x8,%esp
 58c:	ff 75 0c             	push   0xc(%ebp)
 58f:	89 c3                	mov    %eax,%ebx
 591:	50                   	push   %eax
 592:	e8 c5 01 00 00       	call   75c <fstat>
  close(fd);
 597:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 59a:	89 c6                	mov    %eax,%esi
  close(fd);
 59c:	e8 8b 01 00 00       	call   72c <close>
  return r;
 5a1:	83 c4 10             	add    $0x10,%esp
}
 5a4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 5a7:	89 f0                	mov    %esi,%eax
 5a9:	5b                   	pop    %ebx
 5aa:	5e                   	pop    %esi
 5ab:	5d                   	pop    %ebp
 5ac:	c3                   	ret    
 5ad:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 5b0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 5b5:	eb ed                	jmp    5a4 <stat+0x34>
 5b7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5be:	66 90                	xchg   %ax,%ax

000005c0 <atoi>:

int
atoi(const char *s)
{
 5c0:	55                   	push   %ebp
 5c1:	89 e5                	mov    %esp,%ebp
 5c3:	53                   	push   %ebx
 5c4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 5c7:	0f be 02             	movsbl (%edx),%eax
 5ca:	8d 48 d0             	lea    -0x30(%eax),%ecx
 5cd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 5d0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 5d5:	77 1e                	ja     5f5 <atoi+0x35>
 5d7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5de:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 5e0:	83 c2 01             	add    $0x1,%edx
 5e3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 5e6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 5ea:	0f be 02             	movsbl (%edx),%eax
 5ed:	8d 58 d0             	lea    -0x30(%eax),%ebx
 5f0:	80 fb 09             	cmp    $0x9,%bl
 5f3:	76 eb                	jbe    5e0 <atoi+0x20>
  return n;
}
 5f5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5f8:	89 c8                	mov    %ecx,%eax
 5fa:	c9                   	leave  
 5fb:	c3                   	ret    
 5fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000600 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 600:	55                   	push   %ebp
 601:	89 e5                	mov    %esp,%ebp
 603:	57                   	push   %edi
 604:	8b 45 10             	mov    0x10(%ebp),%eax
 607:	8b 55 08             	mov    0x8(%ebp),%edx
 60a:	56                   	push   %esi
 60b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 60e:	85 c0                	test   %eax,%eax
 610:	7e 13                	jle    625 <memmove+0x25>
 612:	01 d0                	add    %edx,%eax
  dst = vdst;
 614:	89 d7                	mov    %edx,%edi
 616:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 61d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 620:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 621:	39 f8                	cmp    %edi,%eax
 623:	75 fb                	jne    620 <memmove+0x20>
  return vdst;
}
 625:	5e                   	pop    %esi
 626:	89 d0                	mov    %edx,%eax
 628:	5f                   	pop    %edi
 629:	5d                   	pop    %ebp
 62a:	c3                   	ret    
 62b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 62f:	90                   	nop

00000630 <thread_create>:

// call malloc() to create a new user stack
// use clone() to create the child thread -> get it running
// returns the newly created PID to the parent && 0 to child if successful
// returns -1 if unsucessful
int thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2) {
 630:	55                   	push   %ebp
 631:	89 e5                	mov    %esp,%ebp
 633:	83 ec 14             	sub    $0x14,%esp

  void *stack;
  if ((stack= malloc(2*PGSIZE)) == 0){
 636:	68 00 20 00 00       	push   $0x2000
 63b:	e8 60 04 00 00       	call   aa0 <malloc>
 640:	83 c4 10             	add    $0x10,%esp
 643:	85 c0                	test   %eax,%eax
 645:	74 25                	je     66c <thread_create+0x3c>
    return -1;
  }

  // stack - page aligned
  if((uint)stack % PGSIZE)
 647:	89 c2                	mov    %eax,%edx
 649:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 64f:	74 07                	je     658 <thread_create+0x28>
    stack = stack + (PGSIZE - (uint)stack % PGSIZE);
 651:	29 d0                	sub    %edx,%eax
 653:	05 00 10 00 00       	add    $0x1000,%eax

  int childPid = clone(start_routine, arg1, arg2, stack);
 658:	50                   	push   %eax
 659:	ff 75 10             	push   0x10(%ebp)
 65c:	ff 75 0c             	push   0xc(%ebp)
 65f:	ff 75 08             	push   0x8(%ebp)
 662:	e8 3d 01 00 00       	call   7a4 <clone>

  return childPid;
 667:	83 c4 10             	add    $0x10,%esp
}
 66a:	c9                   	leave  
 66b:	c3                   	ret    
 66c:	c9                   	leave  
    return -1;
 66d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
 672:	c3                   	ret    
 673:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 67a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000680 <thread_join>:

// call join() and frees the user stack
// returns waited-for PID if successful, -1 otherwise
int thread_join() {
 680:	55                   	push   %ebp
 681:	89 e5                	mov    %esp,%ebp
 683:	53                   	push   %ebx

  void *stack;
  int childpid = join(&stack);
 684:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join() {
 687:	83 ec 20             	sub    $0x20,%esp
  int childpid = join(&stack);
 68a:	50                   	push   %eax
 68b:	e8 1c 01 00 00       	call   7ac <join>
 690:	89 c3                	mov    %eax,%ebx
  free(stack);
 692:	58                   	pop    %eax
 693:	ff 75 f4             	push   -0xc(%ebp)
 696:	e8 75 03 00 00       	call   a10 <free>
  return childpid;
}
 69b:	89 d8                	mov    %ebx,%eax
 69d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 6a0:	c9                   	leave  
 6a1:	c3                   	ret    
 6a2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000006b0 <lock_init>:
      : "memory"
    );
    return value;
}
 
void lock_init(lock_t *lock) {
 6b0:	55                   	push   %ebp
 6b1:	89 e5                	mov    %esp,%ebp
 6b3:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 6b6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 6bc:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 6c3:	5d                   	pop    %ebp
 6c4:	c3                   	ret    
 6c5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000006d0 <lock_acquire>:

void lock_acquire(lock_t *lock) {
 6d0:	55                   	push   %ebp
 6d1:	89 e5                	mov    %esp,%ebp
 6d3:	8b 55 08             	mov    0x8(%ebp),%edx
    __asm__ volatile("lock; xaddl %0, %1"
 6d6:	8b 02                	mov    (%edx),%eax
 6d8:	f0 0f c1 02          	lock xadd %eax,(%edx)
  int myturn = FetchAndAdd(&lock->ticket, lock->ticket);
  while (lock->turn != myturn)  ; // spin
 6dc:	8b 52 04             	mov    0x4(%edx),%edx
 6df:	90                   	nop
 6e0:	39 c2                	cmp    %eax,%edx
 6e2:	75 fc                	jne    6e0 <lock_acquire+0x10>
}
 6e4:	5d                   	pop    %ebp
 6e5:	c3                   	ret    
 6e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6ed:	8d 76 00             	lea    0x0(%esi),%esi

000006f0 <lock_release>:

void lock_release(lock_t *lock) {
 6f0:	55                   	push   %ebp
 6f1:	89 e5                	mov    %esp,%ebp
 6f3:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 6f6:	83 40 04 01          	addl   $0x1,0x4(%eax)
 6fa:	5d                   	pop    %ebp
 6fb:	c3                   	ret    

000006fc <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 6fc:	b8 01 00 00 00       	mov    $0x1,%eax
 701:	cd 40                	int    $0x40
 703:	c3                   	ret    

00000704 <exit>:
SYSCALL(exit)
 704:	b8 02 00 00 00       	mov    $0x2,%eax
 709:	cd 40                	int    $0x40
 70b:	c3                   	ret    

0000070c <wait>:
SYSCALL(wait)
 70c:	b8 03 00 00 00       	mov    $0x3,%eax
 711:	cd 40                	int    $0x40
 713:	c3                   	ret    

00000714 <pipe>:
SYSCALL(pipe)
 714:	b8 04 00 00 00       	mov    $0x4,%eax
 719:	cd 40                	int    $0x40
 71b:	c3                   	ret    

0000071c <read>:
SYSCALL(read)
 71c:	b8 05 00 00 00       	mov    $0x5,%eax
 721:	cd 40                	int    $0x40
 723:	c3                   	ret    

00000724 <write>:
SYSCALL(write)
 724:	b8 10 00 00 00       	mov    $0x10,%eax
 729:	cd 40                	int    $0x40
 72b:	c3                   	ret    

0000072c <close>:
SYSCALL(close)
 72c:	b8 15 00 00 00       	mov    $0x15,%eax
 731:	cd 40                	int    $0x40
 733:	c3                   	ret    

00000734 <kill>:
SYSCALL(kill)
 734:	b8 06 00 00 00       	mov    $0x6,%eax
 739:	cd 40                	int    $0x40
 73b:	c3                   	ret    

0000073c <exec>:
SYSCALL(exec)
 73c:	b8 07 00 00 00       	mov    $0x7,%eax
 741:	cd 40                	int    $0x40
 743:	c3                   	ret    

00000744 <open>:
SYSCALL(open)
 744:	b8 0f 00 00 00       	mov    $0xf,%eax
 749:	cd 40                	int    $0x40
 74b:	c3                   	ret    

0000074c <mknod>:
SYSCALL(mknod)
 74c:	b8 11 00 00 00       	mov    $0x11,%eax
 751:	cd 40                	int    $0x40
 753:	c3                   	ret    

00000754 <unlink>:
SYSCALL(unlink)
 754:	b8 12 00 00 00       	mov    $0x12,%eax
 759:	cd 40                	int    $0x40
 75b:	c3                   	ret    

0000075c <fstat>:
SYSCALL(fstat)
 75c:	b8 08 00 00 00       	mov    $0x8,%eax
 761:	cd 40                	int    $0x40
 763:	c3                   	ret    

00000764 <link>:
SYSCALL(link)
 764:	b8 13 00 00 00       	mov    $0x13,%eax
 769:	cd 40                	int    $0x40
 76b:	c3                   	ret    

0000076c <mkdir>:
SYSCALL(mkdir)
 76c:	b8 14 00 00 00       	mov    $0x14,%eax
 771:	cd 40                	int    $0x40
 773:	c3                   	ret    

00000774 <chdir>:
SYSCALL(chdir)
 774:	b8 09 00 00 00       	mov    $0x9,%eax
 779:	cd 40                	int    $0x40
 77b:	c3                   	ret    

0000077c <dup>:
SYSCALL(dup)
 77c:	b8 0a 00 00 00       	mov    $0xa,%eax
 781:	cd 40                	int    $0x40
 783:	c3                   	ret    

00000784 <getpid>:
SYSCALL(getpid)
 784:	b8 0b 00 00 00       	mov    $0xb,%eax
 789:	cd 40                	int    $0x40
 78b:	c3                   	ret    

0000078c <sbrk>:
SYSCALL(sbrk)
 78c:	b8 0c 00 00 00       	mov    $0xc,%eax
 791:	cd 40                	int    $0x40
 793:	c3                   	ret    

00000794 <sleep>:
SYSCALL(sleep)
 794:	b8 0d 00 00 00       	mov    $0xd,%eax
 799:	cd 40                	int    $0x40
 79b:	c3                   	ret    

0000079c <uptime>:
SYSCALL(uptime)
 79c:	b8 0e 00 00 00       	mov    $0xe,%eax
 7a1:	cd 40                	int    $0x40
 7a3:	c3                   	ret    

000007a4 <clone>:
SYSCALL(clone)
 7a4:	b8 16 00 00 00       	mov    $0x16,%eax
 7a9:	cd 40                	int    $0x40
 7ab:	c3                   	ret    

000007ac <join>:
SYSCALL(join)
 7ac:	b8 17 00 00 00       	mov    $0x17,%eax
 7b1:	cd 40                	int    $0x40
 7b3:	c3                   	ret    
 7b4:	66 90                	xchg   %ax,%ax
 7b6:	66 90                	xchg   %ax,%ax
 7b8:	66 90                	xchg   %ax,%ax
 7ba:	66 90                	xchg   %ax,%ax
 7bc:	66 90                	xchg   %ax,%ax
 7be:	66 90                	xchg   %ax,%ax

000007c0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 7c0:	55                   	push   %ebp
 7c1:	89 e5                	mov    %esp,%ebp
 7c3:	57                   	push   %edi
 7c4:	56                   	push   %esi
 7c5:	53                   	push   %ebx
 7c6:	83 ec 3c             	sub    $0x3c,%esp
 7c9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 7cc:	89 d1                	mov    %edx,%ecx
{
 7ce:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 7d1:	85 d2                	test   %edx,%edx
 7d3:	0f 89 7f 00 00 00    	jns    858 <printint+0x98>
 7d9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 7dd:	74 79                	je     858 <printint+0x98>
    neg = 1;
 7df:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 7e6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 7e8:	31 db                	xor    %ebx,%ebx
 7ea:	8d 75 d7             	lea    -0x29(%ebp),%esi
 7ed:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 7f0:	89 c8                	mov    %ecx,%eax
 7f2:	31 d2                	xor    %edx,%edx
 7f4:	89 cf                	mov    %ecx,%edi
 7f6:	f7 75 c4             	divl   -0x3c(%ebp)
 7f9:	0f b6 92 8c 0c 00 00 	movzbl 0xc8c(%edx),%edx
 800:	89 45 c0             	mov    %eax,-0x40(%ebp)
 803:	89 d8                	mov    %ebx,%eax
 805:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 808:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 80b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 80e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 811:	76 dd                	jbe    7f0 <printint+0x30>
  if(neg)
 813:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 816:	85 c9                	test   %ecx,%ecx
 818:	74 0c                	je     826 <printint+0x66>
    buf[i++] = '-';
 81a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 81f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 821:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 826:	8b 7d b8             	mov    -0x48(%ebp),%edi
 829:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 82d:	eb 07                	jmp    836 <printint+0x76>
 82f:	90                   	nop
    putc(fd, buf[i]);
 830:	0f b6 13             	movzbl (%ebx),%edx
 833:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 836:	83 ec 04             	sub    $0x4,%esp
 839:	88 55 d7             	mov    %dl,-0x29(%ebp)
 83c:	6a 01                	push   $0x1
 83e:	56                   	push   %esi
 83f:	57                   	push   %edi
 840:	e8 df fe ff ff       	call   724 <write>
  while(--i >= 0)
 845:	83 c4 10             	add    $0x10,%esp
 848:	39 de                	cmp    %ebx,%esi
 84a:	75 e4                	jne    830 <printint+0x70>
}
 84c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 84f:	5b                   	pop    %ebx
 850:	5e                   	pop    %esi
 851:	5f                   	pop    %edi
 852:	5d                   	pop    %ebp
 853:	c3                   	ret    
 854:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 858:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 85f:	eb 87                	jmp    7e8 <printint+0x28>
 861:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 868:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 86f:	90                   	nop

00000870 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 870:	55                   	push   %ebp
 871:	89 e5                	mov    %esp,%ebp
 873:	57                   	push   %edi
 874:	56                   	push   %esi
 875:	53                   	push   %ebx
 876:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 879:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 87c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 87f:	0f b6 13             	movzbl (%ebx),%edx
 882:	84 d2                	test   %dl,%dl
 884:	74 6a                	je     8f0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 886:	8d 45 10             	lea    0x10(%ebp),%eax
 889:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 88c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 88f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 891:	89 45 d0             	mov    %eax,-0x30(%ebp)
 894:	eb 36                	jmp    8cc <printf+0x5c>
 896:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 89d:	8d 76 00             	lea    0x0(%esi),%esi
 8a0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 8a3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 8a8:	83 f8 25             	cmp    $0x25,%eax
 8ab:	74 15                	je     8c2 <printf+0x52>
  write(fd, &c, 1);
 8ad:	83 ec 04             	sub    $0x4,%esp
 8b0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 8b3:	6a 01                	push   $0x1
 8b5:	57                   	push   %edi
 8b6:	56                   	push   %esi
 8b7:	e8 68 fe ff ff       	call   724 <write>
 8bc:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 8bf:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 8c2:	0f b6 13             	movzbl (%ebx),%edx
 8c5:	83 c3 01             	add    $0x1,%ebx
 8c8:	84 d2                	test   %dl,%dl
 8ca:	74 24                	je     8f0 <printf+0x80>
    c = fmt[i] & 0xff;
 8cc:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 8cf:	85 c9                	test   %ecx,%ecx
 8d1:	74 cd                	je     8a0 <printf+0x30>
      }
    } else if(state == '%'){
 8d3:	83 f9 25             	cmp    $0x25,%ecx
 8d6:	75 ea                	jne    8c2 <printf+0x52>
      if(c == 'd'){
 8d8:	83 f8 25             	cmp    $0x25,%eax
 8db:	0f 84 07 01 00 00    	je     9e8 <printf+0x178>
 8e1:	83 e8 63             	sub    $0x63,%eax
 8e4:	83 f8 15             	cmp    $0x15,%eax
 8e7:	77 17                	ja     900 <printf+0x90>
 8e9:	ff 24 85 34 0c 00 00 	jmp    *0xc34(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 8f0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8f3:	5b                   	pop    %ebx
 8f4:	5e                   	pop    %esi
 8f5:	5f                   	pop    %edi
 8f6:	5d                   	pop    %ebp
 8f7:	c3                   	ret    
 8f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8ff:	90                   	nop
  write(fd, &c, 1);
 900:	83 ec 04             	sub    $0x4,%esp
 903:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 906:	6a 01                	push   $0x1
 908:	57                   	push   %edi
 909:	56                   	push   %esi
 90a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 90e:	e8 11 fe ff ff       	call   724 <write>
        putc(fd, c);
 913:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 917:	83 c4 0c             	add    $0xc,%esp
 91a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 91d:	6a 01                	push   $0x1
 91f:	57                   	push   %edi
 920:	56                   	push   %esi
 921:	e8 fe fd ff ff       	call   724 <write>
        putc(fd, c);
 926:	83 c4 10             	add    $0x10,%esp
      state = 0;
 929:	31 c9                	xor    %ecx,%ecx
 92b:	eb 95                	jmp    8c2 <printf+0x52>
 92d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 930:	83 ec 0c             	sub    $0xc,%esp
 933:	b9 10 00 00 00       	mov    $0x10,%ecx
 938:	6a 00                	push   $0x0
 93a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 93d:	8b 10                	mov    (%eax),%edx
 93f:	89 f0                	mov    %esi,%eax
 941:	e8 7a fe ff ff       	call   7c0 <printint>
        ap++;
 946:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 94a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 94d:	31 c9                	xor    %ecx,%ecx
 94f:	e9 6e ff ff ff       	jmp    8c2 <printf+0x52>
 954:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 958:	8b 45 d0             	mov    -0x30(%ebp),%eax
 95b:	8b 10                	mov    (%eax),%edx
        ap++;
 95d:	83 c0 04             	add    $0x4,%eax
 960:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 963:	85 d2                	test   %edx,%edx
 965:	0f 84 8d 00 00 00    	je     9f8 <printf+0x188>
        while(*s != 0){
 96b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 96e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 970:	84 c0                	test   %al,%al
 972:	0f 84 4a ff ff ff    	je     8c2 <printf+0x52>
 978:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 97b:	89 d3                	mov    %edx,%ebx
 97d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 980:	83 ec 04             	sub    $0x4,%esp
          s++;
 983:	83 c3 01             	add    $0x1,%ebx
 986:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 989:	6a 01                	push   $0x1
 98b:	57                   	push   %edi
 98c:	56                   	push   %esi
 98d:	e8 92 fd ff ff       	call   724 <write>
        while(*s != 0){
 992:	0f b6 03             	movzbl (%ebx),%eax
 995:	83 c4 10             	add    $0x10,%esp
 998:	84 c0                	test   %al,%al
 99a:	75 e4                	jne    980 <printf+0x110>
      state = 0;
 99c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 99f:	31 c9                	xor    %ecx,%ecx
 9a1:	e9 1c ff ff ff       	jmp    8c2 <printf+0x52>
 9a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9ad:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 9b0:	83 ec 0c             	sub    $0xc,%esp
 9b3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 9b8:	6a 01                	push   $0x1
 9ba:	e9 7b ff ff ff       	jmp    93a <printf+0xca>
 9bf:	90                   	nop
        putc(fd, *ap);
 9c0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 9c3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 9c6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 9c8:	6a 01                	push   $0x1
 9ca:	57                   	push   %edi
 9cb:	56                   	push   %esi
        putc(fd, *ap);
 9cc:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 9cf:	e8 50 fd ff ff       	call   724 <write>
        ap++;
 9d4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 9d8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 9db:	31 c9                	xor    %ecx,%ecx
 9dd:	e9 e0 fe ff ff       	jmp    8c2 <printf+0x52>
 9e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 9e8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 9eb:	83 ec 04             	sub    $0x4,%esp
 9ee:	e9 2a ff ff ff       	jmp    91d <printf+0xad>
 9f3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 9f7:	90                   	nop
          s = "(null)";
 9f8:	ba 2d 0c 00 00       	mov    $0xc2d,%edx
        while(*s != 0){
 9fd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 a00:	b8 28 00 00 00       	mov    $0x28,%eax
 a05:	89 d3                	mov    %edx,%ebx
 a07:	e9 74 ff ff ff       	jmp    980 <printf+0x110>
 a0c:	66 90                	xchg   %ax,%ax
 a0e:	66 90                	xchg   %ax,%ax

00000a10 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 a10:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a11:	a1 44 10 00 00       	mov    0x1044,%eax
{
 a16:	89 e5                	mov    %esp,%ebp
 a18:	57                   	push   %edi
 a19:	56                   	push   %esi
 a1a:	53                   	push   %ebx
 a1b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 a1e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a21:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a28:	89 c2                	mov    %eax,%edx
 a2a:	8b 00                	mov    (%eax),%eax
 a2c:	39 ca                	cmp    %ecx,%edx
 a2e:	73 30                	jae    a60 <free+0x50>
 a30:	39 c1                	cmp    %eax,%ecx
 a32:	72 04                	jb     a38 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a34:	39 c2                	cmp    %eax,%edx
 a36:	72 f0                	jb     a28 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 a38:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a3b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a3e:	39 f8                	cmp    %edi,%eax
 a40:	74 30                	je     a72 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 a42:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 a45:	8b 42 04             	mov    0x4(%edx),%eax
 a48:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a4b:	39 f1                	cmp    %esi,%ecx
 a4d:	74 3a                	je     a89 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 a4f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 a51:	5b                   	pop    %ebx
  freep = p;
 a52:	89 15 44 10 00 00    	mov    %edx,0x1044
}
 a58:	5e                   	pop    %esi
 a59:	5f                   	pop    %edi
 a5a:	5d                   	pop    %ebp
 a5b:	c3                   	ret    
 a5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a60:	39 c2                	cmp    %eax,%edx
 a62:	72 c4                	jb     a28 <free+0x18>
 a64:	39 c1                	cmp    %eax,%ecx
 a66:	73 c0                	jae    a28 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 a68:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a6b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a6e:	39 f8                	cmp    %edi,%eax
 a70:	75 d0                	jne    a42 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 a72:	03 70 04             	add    0x4(%eax),%esi
 a75:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 a78:	8b 02                	mov    (%edx),%eax
 a7a:	8b 00                	mov    (%eax),%eax
 a7c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 a7f:	8b 42 04             	mov    0x4(%edx),%eax
 a82:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a85:	39 f1                	cmp    %esi,%ecx
 a87:	75 c6                	jne    a4f <free+0x3f>
    p->s.size += bp->s.size;
 a89:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 a8c:	89 15 44 10 00 00    	mov    %edx,0x1044
    p->s.size += bp->s.size;
 a92:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 a95:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 a98:	89 0a                	mov    %ecx,(%edx)
}
 a9a:	5b                   	pop    %ebx
 a9b:	5e                   	pop    %esi
 a9c:	5f                   	pop    %edi
 a9d:	5d                   	pop    %ebp
 a9e:	c3                   	ret    
 a9f:	90                   	nop

00000aa0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 aa0:	55                   	push   %ebp
 aa1:	89 e5                	mov    %esp,%ebp
 aa3:	57                   	push   %edi
 aa4:	56                   	push   %esi
 aa5:	53                   	push   %ebx
 aa6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 aa9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 aac:	8b 3d 44 10 00 00    	mov    0x1044,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 ab2:	8d 70 07             	lea    0x7(%eax),%esi
 ab5:	c1 ee 03             	shr    $0x3,%esi
 ab8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 abb:	85 ff                	test   %edi,%edi
 abd:	0f 84 9d 00 00 00    	je     b60 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ac3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 ac5:	8b 4a 04             	mov    0x4(%edx),%ecx
 ac8:	39 f1                	cmp    %esi,%ecx
 aca:	73 6a                	jae    b36 <malloc+0x96>
 acc:	bb 00 10 00 00       	mov    $0x1000,%ebx
 ad1:	39 de                	cmp    %ebx,%esi
 ad3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 ad6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 add:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 ae0:	eb 17                	jmp    af9 <malloc+0x59>
 ae2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ae8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 aea:	8b 48 04             	mov    0x4(%eax),%ecx
 aed:	39 f1                	cmp    %esi,%ecx
 aef:	73 4f                	jae    b40 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 af1:	8b 3d 44 10 00 00    	mov    0x1044,%edi
 af7:	89 c2                	mov    %eax,%edx
 af9:	39 d7                	cmp    %edx,%edi
 afb:	75 eb                	jne    ae8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 afd:	83 ec 0c             	sub    $0xc,%esp
 b00:	ff 75 e4             	push   -0x1c(%ebp)
 b03:	e8 84 fc ff ff       	call   78c <sbrk>
  if(p == (char*)-1)
 b08:	83 c4 10             	add    $0x10,%esp
 b0b:	83 f8 ff             	cmp    $0xffffffff,%eax
 b0e:	74 1c                	je     b2c <malloc+0x8c>
  hp->s.size = nu;
 b10:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 b13:	83 ec 0c             	sub    $0xc,%esp
 b16:	83 c0 08             	add    $0x8,%eax
 b19:	50                   	push   %eax
 b1a:	e8 f1 fe ff ff       	call   a10 <free>
  return freep;
 b1f:	8b 15 44 10 00 00    	mov    0x1044,%edx
      if((p = morecore(nunits)) == 0)
 b25:	83 c4 10             	add    $0x10,%esp
 b28:	85 d2                	test   %edx,%edx
 b2a:	75 bc                	jne    ae8 <malloc+0x48>
        return 0;
  }
}
 b2c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 b2f:	31 c0                	xor    %eax,%eax
}
 b31:	5b                   	pop    %ebx
 b32:	5e                   	pop    %esi
 b33:	5f                   	pop    %edi
 b34:	5d                   	pop    %ebp
 b35:	c3                   	ret    
    if(p->s.size >= nunits){
 b36:	89 d0                	mov    %edx,%eax
 b38:	89 fa                	mov    %edi,%edx
 b3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 b40:	39 ce                	cmp    %ecx,%esi
 b42:	74 4c                	je     b90 <malloc+0xf0>
        p->s.size -= nunits;
 b44:	29 f1                	sub    %esi,%ecx
 b46:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 b49:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 b4c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 b4f:	89 15 44 10 00 00    	mov    %edx,0x1044
}
 b55:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 b58:	83 c0 08             	add    $0x8,%eax
}
 b5b:	5b                   	pop    %ebx
 b5c:	5e                   	pop    %esi
 b5d:	5f                   	pop    %edi
 b5e:	5d                   	pop    %ebp
 b5f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 b60:	c7 05 44 10 00 00 48 	movl   $0x1048,0x1044
 b67:	10 00 00 
    base.s.size = 0;
 b6a:	bf 48 10 00 00       	mov    $0x1048,%edi
    base.s.ptr = freep = prevp = &base;
 b6f:	c7 05 48 10 00 00 48 	movl   $0x1048,0x1048
 b76:	10 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b79:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 b7b:	c7 05 4c 10 00 00 00 	movl   $0x0,0x104c
 b82:	00 00 00 
    if(p->s.size >= nunits){
 b85:	e9 42 ff ff ff       	jmp    acc <malloc+0x2c>
 b8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 b90:	8b 08                	mov    (%eax),%ecx
 b92:	89 0a                	mov    %ecx,(%edx)
 b94:	eb b9                	jmp    b4f <malloc+0xaf>
