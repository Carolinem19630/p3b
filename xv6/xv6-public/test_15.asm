
_test_15:     file format elf32-i386


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
   ppid = getpid();
   f:	e8 10 05 00 00       	call   524 <getpid>

   lock_init(&lock);
  14:	83 ec 0c             	sub    $0xc,%esp
  17:	68 90 0d 00 00       	push   $0xd90
   ppid = getpid();
  1c:	a3 9c 0d 00 00       	mov    %eax,0xd9c
   lock_init(&lock);
  21:	e8 2a 04 00 00       	call   450 <lock_init>

   int i;
   for (i = 0; i < num_threads; i++) {
  26:	a1 8c 0d 00 00       	mov    0xd8c,%eax
  2b:	83 c4 10             	add    $0x10,%esp
  2e:	85 c0                	test   %eax,%eax
  30:	0f 8e b4 00 00 00    	jle    ea <main+0xea>
  36:	31 db                	xor    %ebx,%ebx
  38:	eb 12                	jmp    4c <main+0x4c>
  3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  40:	a1 8c 0d 00 00       	mov    0xd8c,%eax
  45:	83 c3 01             	add    $0x1,%ebx
  48:	39 d8                	cmp    %ebx,%eax
  4a:	7e 5e                	jle    aa <main+0xaa>
      int thread_pid = thread_create(worker, 0, 0);
  4c:	83 ec 04             	sub    $0x4,%esp
  4f:	6a 00                	push   $0x0
  51:	6a 00                	push   $0x0
  53:	68 30 01 00 00       	push   $0x130
  58:	e8 73 03 00 00       	call   3d0 <thread_create>
      assert(thread_pid > 0);
  5d:	83 c4 10             	add    $0x10,%esp
  60:	85 c0                	test   %eax,%eax
  62:	7f dc                	jg     40 <main+0x40>
  64:	6a 25                	push   $0x25
  66:	68 38 09 00 00       	push   $0x938
  6b:	68 42 09 00 00       	push   $0x942
  70:	6a 01                	push   $0x1
  72:	e8 99 05 00 00       	call   610 <printf>
  77:	83 c4 0c             	add    $0xc,%esp
  7a:	68 4a 09 00 00       	push   $0x94a
   }

   for (i = 0; i < num_threads; i++) {
      int join_pid = thread_join();
      assert(join_pid > 0);
  7f:	68 59 09 00 00       	push   $0x959
  84:	6a 01                	push   $0x1
  86:	e8 85 05 00 00       	call   610 <printf>
  8b:	5a                   	pop    %edx
  8c:	59                   	pop    %ecx
  8d:	68 6d 09 00 00       	push   $0x96d
  92:	6a 01                	push   $0x1
  94:	e8 77 05 00 00       	call   610 <printf>
  99:	5b                   	pop    %ebx
  9a:	ff 35 9c 0d 00 00    	push   0xd9c
  a0:	e8 2f 04 00 00       	call   4d4 <kill>
  a5:	e8 fa 03 00 00       	call   4a4 <exit>
   for (i = 0; i < num_threads; i++) {
  aa:	85 c0                	test   %eax,%eax
  ac:	7e 3c                	jle    ea <main+0xea>
  ae:	31 db                	xor    %ebx,%ebx
  b0:	eb 12                	jmp    c4 <main+0xc4>
  b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  b8:	a1 8c 0d 00 00       	mov    0xd8c,%eax
  bd:	83 c3 01             	add    $0x1,%ebx
  c0:	39 d8                	cmp    %ebx,%eax
  c2:	7e 26                	jle    ea <main+0xea>
      int join_pid = thread_join();
  c4:	e8 57 03 00 00       	call   420 <thread_join>
      assert(join_pid > 0);
  c9:	85 c0                	test   %eax,%eax
  cb:	7f eb                	jg     b8 <main+0xb8>
  cd:	6a 2a                	push   $0x2a
  cf:	68 38 09 00 00       	push   $0x938
  d4:	68 42 09 00 00       	push   $0x942
  d9:	6a 01                	push   $0x1
  db:	e8 30 05 00 00       	call   610 <printf>
  e0:	83 c4 0c             	add    $0xc,%esp
  e3:	68 7a 09 00 00       	push   $0x97a
  e8:	eb 95                	jmp    7f <main+0x7f>
   }

   assert(global == num_threads * loops);
  ea:	0f af 05 88 0d 00 00 	imul   0xd88,%eax
  f1:	3b 05 98 0d 00 00    	cmp    0xd98,%eax
  f7:	74 20                	je     119 <main+0x119>
  f9:	6a 2d                	push   $0x2d
  fb:	68 38 09 00 00       	push   $0x938
 100:	68 42 09 00 00       	push   $0x942
 105:	6a 01                	push   $0x1
 107:	e8 04 05 00 00       	call   610 <printf>
 10c:	83 c4 0c             	add    $0xc,%esp
 10f:	68 87 09 00 00       	push   $0x987
 114:	e9 66 ff ff ff       	jmp    7f <main+0x7f>

   printf(1, "TEST PASSED\n");
 119:	50                   	push   %eax
 11a:	50                   	push   %eax
 11b:	68 a5 09 00 00       	push   $0x9a5
 120:	6a 01                	push   $0x1
 122:	e8 e9 04 00 00       	call   610 <printf>
   exit();
 127:	e8 78 03 00 00       	call   4a4 <exit>
 12c:	66 90                	xchg   %ax,%ax
 12e:	66 90                	xchg   %ax,%ax

00000130 <worker>:
}

void
worker(void *arg1, void *arg2) {
 130:	55                   	push   %ebp
 131:	89 e5                	mov    %esp,%ebp
 133:	53                   	push   %ebx
 134:	83 ec 04             	sub    $0x4,%esp
   int i, j, tmp;
   for (i = 0; i < loops; i++) {
 137:	a1 88 0d 00 00       	mov    0xd88,%eax
 13c:	85 c0                	test   %eax,%eax
 13e:	7e 36                	jle    176 <worker+0x46>
 140:	31 db                	xor    %ebx,%ebx
 142:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      lock_acquire(&lock);
 148:	83 ec 0c             	sub    $0xc,%esp
   for (i = 0; i < loops; i++) {
 14b:	83 c3 01             	add    $0x1,%ebx
      lock_acquire(&lock);
 14e:	68 90 0d 00 00       	push   $0xd90
 153:	e8 18 03 00 00       	call   470 <lock_acquire>
      tmp = global;
      for(j = 0; j < 50; j++); // take some time
      global = tmp + 1;
      lock_release(&lock);
 158:	c7 04 24 90 0d 00 00 	movl   $0xd90,(%esp)
      global = tmp + 1;
 15f:	83 05 98 0d 00 00 01 	addl   $0x1,0xd98
      lock_release(&lock);
 166:	e8 25 03 00 00       	call   490 <lock_release>
   for (i = 0; i < loops; i++) {
 16b:	83 c4 10             	add    $0x10,%esp
 16e:	39 1d 88 0d 00 00    	cmp    %ebx,0xd88
 174:	7f d2                	jg     148 <worker+0x18>
   }
   exit();
 176:	e8 29 03 00 00       	call   4a4 <exit>
 17b:	66 90                	xchg   %ax,%ax
 17d:	66 90                	xchg   %ax,%ax
 17f:	90                   	nop

00000180 <strcpy>:
#include "x86.h"
#define PGSIZE 4096

char*
strcpy(char *s, const char *t)
{
 180:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 181:	31 c0                	xor    %eax,%eax
{
 183:	89 e5                	mov    %esp,%ebp
 185:	53                   	push   %ebx
 186:	8b 4d 08             	mov    0x8(%ebp),%ecx
 189:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 18c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 190:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 194:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 197:	83 c0 01             	add    $0x1,%eax
 19a:	84 d2                	test   %dl,%dl
 19c:	75 f2                	jne    190 <strcpy+0x10>
    ;
  return os;
}
 19e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1a1:	89 c8                	mov    %ecx,%eax
 1a3:	c9                   	leave  
 1a4:	c3                   	ret    
 1a5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000001b0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	53                   	push   %ebx
 1b4:	8b 55 08             	mov    0x8(%ebp),%edx
 1b7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 1ba:	0f b6 02             	movzbl (%edx),%eax
 1bd:	84 c0                	test   %al,%al
 1bf:	75 17                	jne    1d8 <strcmp+0x28>
 1c1:	eb 3a                	jmp    1fd <strcmp+0x4d>
 1c3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1c7:	90                   	nop
 1c8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 1cc:	83 c2 01             	add    $0x1,%edx
 1cf:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 1d2:	84 c0                	test   %al,%al
 1d4:	74 1a                	je     1f0 <strcmp+0x40>
    p++, q++;
 1d6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 1d8:	0f b6 19             	movzbl (%ecx),%ebx
 1db:	38 c3                	cmp    %al,%bl
 1dd:	74 e9                	je     1c8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 1df:	29 d8                	sub    %ebx,%eax
}
 1e1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1e4:	c9                   	leave  
 1e5:	c3                   	ret    
 1e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1ed:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 1f0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 1f4:	31 c0                	xor    %eax,%eax
 1f6:	29 d8                	sub    %ebx,%eax
}
 1f8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1fb:	c9                   	leave  
 1fc:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 1fd:	0f b6 19             	movzbl (%ecx),%ebx
 200:	31 c0                	xor    %eax,%eax
 202:	eb db                	jmp    1df <strcmp+0x2f>
 204:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 20b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 20f:	90                   	nop

00000210 <strlen>:

uint
strlen(const char *s)
{
 210:	55                   	push   %ebp
 211:	89 e5                	mov    %esp,%ebp
 213:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 216:	80 3a 00             	cmpb   $0x0,(%edx)
 219:	74 15                	je     230 <strlen+0x20>
 21b:	31 c0                	xor    %eax,%eax
 21d:	8d 76 00             	lea    0x0(%esi),%esi
 220:	83 c0 01             	add    $0x1,%eax
 223:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 227:	89 c1                	mov    %eax,%ecx
 229:	75 f5                	jne    220 <strlen+0x10>
    ;
  return n;
}
 22b:	89 c8                	mov    %ecx,%eax
 22d:	5d                   	pop    %ebp
 22e:	c3                   	ret    
 22f:	90                   	nop
  for(n = 0; s[n]; n++)
 230:	31 c9                	xor    %ecx,%ecx
}
 232:	5d                   	pop    %ebp
 233:	89 c8                	mov    %ecx,%eax
 235:	c3                   	ret    
 236:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 23d:	8d 76 00             	lea    0x0(%esi),%esi

00000240 <memset>:

void*
memset(void *dst, int c, uint n)
{
 240:	55                   	push   %ebp
 241:	89 e5                	mov    %esp,%ebp
 243:	57                   	push   %edi
 244:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 247:	8b 4d 10             	mov    0x10(%ebp),%ecx
 24a:	8b 45 0c             	mov    0xc(%ebp),%eax
 24d:	89 d7                	mov    %edx,%edi
 24f:	fc                   	cld    
 250:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 252:	8b 7d fc             	mov    -0x4(%ebp),%edi
 255:	89 d0                	mov    %edx,%eax
 257:	c9                   	leave  
 258:	c3                   	ret    
 259:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000260 <strchr>:

char*
strchr(const char *s, char c)
{
 260:	55                   	push   %ebp
 261:	89 e5                	mov    %esp,%ebp
 263:	8b 45 08             	mov    0x8(%ebp),%eax
 266:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 26a:	0f b6 10             	movzbl (%eax),%edx
 26d:	84 d2                	test   %dl,%dl
 26f:	75 12                	jne    283 <strchr+0x23>
 271:	eb 1d                	jmp    290 <strchr+0x30>
 273:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 277:	90                   	nop
 278:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 27c:	83 c0 01             	add    $0x1,%eax
 27f:	84 d2                	test   %dl,%dl
 281:	74 0d                	je     290 <strchr+0x30>
    if(*s == c)
 283:	38 d1                	cmp    %dl,%cl
 285:	75 f1                	jne    278 <strchr+0x18>
      return (char*)s;
  return 0;
}
 287:	5d                   	pop    %ebp
 288:	c3                   	ret    
 289:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 290:	31 c0                	xor    %eax,%eax
}
 292:	5d                   	pop    %ebp
 293:	c3                   	ret    
 294:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 29b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 29f:	90                   	nop

000002a0 <gets>:

char*
gets(char *buf, int max)
{
 2a0:	55                   	push   %ebp
 2a1:	89 e5                	mov    %esp,%ebp
 2a3:	57                   	push   %edi
 2a4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 2a5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 2a8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 2a9:	31 db                	xor    %ebx,%ebx
{
 2ab:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 2ae:	eb 27                	jmp    2d7 <gets+0x37>
    cc = read(0, &c, 1);
 2b0:	83 ec 04             	sub    $0x4,%esp
 2b3:	6a 01                	push   $0x1
 2b5:	57                   	push   %edi
 2b6:	6a 00                	push   $0x0
 2b8:	e8 ff 01 00 00       	call   4bc <read>
    if(cc < 1)
 2bd:	83 c4 10             	add    $0x10,%esp
 2c0:	85 c0                	test   %eax,%eax
 2c2:	7e 1d                	jle    2e1 <gets+0x41>
      break;
    buf[i++] = c;
 2c4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 2c8:	8b 55 08             	mov    0x8(%ebp),%edx
 2cb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 2cf:	3c 0a                	cmp    $0xa,%al
 2d1:	74 1d                	je     2f0 <gets+0x50>
 2d3:	3c 0d                	cmp    $0xd,%al
 2d5:	74 19                	je     2f0 <gets+0x50>
  for(i=0; i+1 < max; ){
 2d7:	89 de                	mov    %ebx,%esi
 2d9:	83 c3 01             	add    $0x1,%ebx
 2dc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 2df:	7c cf                	jl     2b0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 2e1:	8b 45 08             	mov    0x8(%ebp),%eax
 2e4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 2e8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2eb:	5b                   	pop    %ebx
 2ec:	5e                   	pop    %esi
 2ed:	5f                   	pop    %edi
 2ee:	5d                   	pop    %ebp
 2ef:	c3                   	ret    
  buf[i] = '\0';
 2f0:	8b 45 08             	mov    0x8(%ebp),%eax
 2f3:	89 de                	mov    %ebx,%esi
 2f5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 2f9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2fc:	5b                   	pop    %ebx
 2fd:	5e                   	pop    %esi
 2fe:	5f                   	pop    %edi
 2ff:	5d                   	pop    %ebp
 300:	c3                   	ret    
 301:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 308:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 30f:	90                   	nop

00000310 <stat>:

int
stat(const char *n, struct stat *st)
{
 310:	55                   	push   %ebp
 311:	89 e5                	mov    %esp,%ebp
 313:	56                   	push   %esi
 314:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 315:	83 ec 08             	sub    $0x8,%esp
 318:	6a 00                	push   $0x0
 31a:	ff 75 08             	push   0x8(%ebp)
 31d:	e8 c2 01 00 00       	call   4e4 <open>
  if(fd < 0)
 322:	83 c4 10             	add    $0x10,%esp
 325:	85 c0                	test   %eax,%eax
 327:	78 27                	js     350 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 329:	83 ec 08             	sub    $0x8,%esp
 32c:	ff 75 0c             	push   0xc(%ebp)
 32f:	89 c3                	mov    %eax,%ebx
 331:	50                   	push   %eax
 332:	e8 c5 01 00 00       	call   4fc <fstat>
  close(fd);
 337:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 33a:	89 c6                	mov    %eax,%esi
  close(fd);
 33c:	e8 8b 01 00 00       	call   4cc <close>
  return r;
 341:	83 c4 10             	add    $0x10,%esp
}
 344:	8d 65 f8             	lea    -0x8(%ebp),%esp
 347:	89 f0                	mov    %esi,%eax
 349:	5b                   	pop    %ebx
 34a:	5e                   	pop    %esi
 34b:	5d                   	pop    %ebp
 34c:	c3                   	ret    
 34d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 350:	be ff ff ff ff       	mov    $0xffffffff,%esi
 355:	eb ed                	jmp    344 <stat+0x34>
 357:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 35e:	66 90                	xchg   %ax,%ax

00000360 <atoi>:

int
atoi(const char *s)
{
 360:	55                   	push   %ebp
 361:	89 e5                	mov    %esp,%ebp
 363:	53                   	push   %ebx
 364:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 367:	0f be 02             	movsbl (%edx),%eax
 36a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 36d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 370:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 375:	77 1e                	ja     395 <atoi+0x35>
 377:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 37e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 380:	83 c2 01             	add    $0x1,%edx
 383:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 386:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 38a:	0f be 02             	movsbl (%edx),%eax
 38d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 390:	80 fb 09             	cmp    $0x9,%bl
 393:	76 eb                	jbe    380 <atoi+0x20>
  return n;
}
 395:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 398:	89 c8                	mov    %ecx,%eax
 39a:	c9                   	leave  
 39b:	c3                   	ret    
 39c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003a0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	57                   	push   %edi
 3a4:	8b 45 10             	mov    0x10(%ebp),%eax
 3a7:	8b 55 08             	mov    0x8(%ebp),%edx
 3aa:	56                   	push   %esi
 3ab:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 3ae:	85 c0                	test   %eax,%eax
 3b0:	7e 13                	jle    3c5 <memmove+0x25>
 3b2:	01 d0                	add    %edx,%eax
  dst = vdst;
 3b4:	89 d7                	mov    %edx,%edi
 3b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3bd:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 3c0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 3c1:	39 f8                	cmp    %edi,%eax
 3c3:	75 fb                	jne    3c0 <memmove+0x20>
  return vdst;
}
 3c5:	5e                   	pop    %esi
 3c6:	89 d0                	mov    %edx,%eax
 3c8:	5f                   	pop    %edi
 3c9:	5d                   	pop    %ebp
 3ca:	c3                   	ret    
 3cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3cf:	90                   	nop

000003d0 <thread_create>:

// call malloc() to create a new user stack
// use clone() to create the child thread -> get it running
// returns the newly created PID to the parent && 0 to child if successful
// returns -1 if unsucessful
int thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2) {
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	83 ec 14             	sub    $0x14,%esp

  void *stack;
  if ((stack= malloc(2*PGSIZE)) == 0){
 3d6:	68 00 20 00 00       	push   $0x2000
 3db:	e8 60 04 00 00       	call   840 <malloc>
 3e0:	83 c4 10             	add    $0x10,%esp
 3e3:	85 c0                	test   %eax,%eax
 3e5:	74 25                	je     40c <thread_create+0x3c>
    return -1;
  }

  // stack - page aligned
  if((uint)stack % PGSIZE)
 3e7:	89 c2                	mov    %eax,%edx
 3e9:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 3ef:	74 07                	je     3f8 <thread_create+0x28>
    stack = stack + (PGSIZE - (uint)stack % PGSIZE);
 3f1:	29 d0                	sub    %edx,%eax
 3f3:	05 00 10 00 00       	add    $0x1000,%eax

  int childPid = clone(start_routine, arg1, arg2, stack);
 3f8:	50                   	push   %eax
 3f9:	ff 75 10             	push   0x10(%ebp)
 3fc:	ff 75 0c             	push   0xc(%ebp)
 3ff:	ff 75 08             	push   0x8(%ebp)
 402:	e8 3d 01 00 00       	call   544 <clone>

  return childPid;
 407:	83 c4 10             	add    $0x10,%esp
}
 40a:	c9                   	leave  
 40b:	c3                   	ret    
 40c:	c9                   	leave  
    return -1;
 40d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
 412:	c3                   	ret    
 413:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 41a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000420 <thread_join>:

// call join() and frees the user stack
// returns waited-for PID if successful, -1 otherwise
int thread_join() {
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	53                   	push   %ebx

  void *stack;
  int childpid = join(&stack);
 424:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join() {
 427:	83 ec 20             	sub    $0x20,%esp
  int childpid = join(&stack);
 42a:	50                   	push   %eax
 42b:	e8 1c 01 00 00       	call   54c <join>
 430:	89 c3                	mov    %eax,%ebx
  free(stack);
 432:	58                   	pop    %eax
 433:	ff 75 f4             	push   -0xc(%ebp)
 436:	e8 75 03 00 00       	call   7b0 <free>
  return childpid;
}
 43b:	89 d8                	mov    %ebx,%eax
 43d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 440:	c9                   	leave  
 441:	c3                   	ret    
 442:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 449:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000450 <lock_init>:
      : "memory"
    );
    return value;
}
 
void lock_init(lock_t *lock) {
 450:	55                   	push   %ebp
 451:	89 e5                	mov    %esp,%ebp
 453:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 456:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 45c:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 463:	5d                   	pop    %ebp
 464:	c3                   	ret    
 465:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 46c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000470 <lock_acquire>:

void lock_acquire(lock_t *lock) {
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	8b 55 08             	mov    0x8(%ebp),%edx
    __asm__ volatile("lock; xaddl %0, %1"
 476:	8b 02                	mov    (%edx),%eax
 478:	f0 0f c1 02          	lock xadd %eax,(%edx)
  int myturn = FetchAndAdd(&lock->ticket, lock->ticket);
  while (lock->turn != myturn)  ; // spin
 47c:	8b 52 04             	mov    0x4(%edx),%edx
 47f:	90                   	nop
 480:	39 c2                	cmp    %eax,%edx
 482:	75 fc                	jne    480 <lock_acquire+0x10>
}
 484:	5d                   	pop    %ebp
 485:	c3                   	ret    
 486:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 48d:	8d 76 00             	lea    0x0(%esi),%esi

00000490 <lock_release>:

void lock_release(lock_t *lock) {
 490:	55                   	push   %ebp
 491:	89 e5                	mov    %esp,%ebp
 493:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 496:	83 40 04 01          	addl   $0x1,0x4(%eax)
 49a:	5d                   	pop    %ebp
 49b:	c3                   	ret    

0000049c <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 49c:	b8 01 00 00 00       	mov    $0x1,%eax
 4a1:	cd 40                	int    $0x40
 4a3:	c3                   	ret    

000004a4 <exit>:
SYSCALL(exit)
 4a4:	b8 02 00 00 00       	mov    $0x2,%eax
 4a9:	cd 40                	int    $0x40
 4ab:	c3                   	ret    

000004ac <wait>:
SYSCALL(wait)
 4ac:	b8 03 00 00 00       	mov    $0x3,%eax
 4b1:	cd 40                	int    $0x40
 4b3:	c3                   	ret    

000004b4 <pipe>:
SYSCALL(pipe)
 4b4:	b8 04 00 00 00       	mov    $0x4,%eax
 4b9:	cd 40                	int    $0x40
 4bb:	c3                   	ret    

000004bc <read>:
SYSCALL(read)
 4bc:	b8 05 00 00 00       	mov    $0x5,%eax
 4c1:	cd 40                	int    $0x40
 4c3:	c3                   	ret    

000004c4 <write>:
SYSCALL(write)
 4c4:	b8 10 00 00 00       	mov    $0x10,%eax
 4c9:	cd 40                	int    $0x40
 4cb:	c3                   	ret    

000004cc <close>:
SYSCALL(close)
 4cc:	b8 15 00 00 00       	mov    $0x15,%eax
 4d1:	cd 40                	int    $0x40
 4d3:	c3                   	ret    

000004d4 <kill>:
SYSCALL(kill)
 4d4:	b8 06 00 00 00       	mov    $0x6,%eax
 4d9:	cd 40                	int    $0x40
 4db:	c3                   	ret    

000004dc <exec>:
SYSCALL(exec)
 4dc:	b8 07 00 00 00       	mov    $0x7,%eax
 4e1:	cd 40                	int    $0x40
 4e3:	c3                   	ret    

000004e4 <open>:
SYSCALL(open)
 4e4:	b8 0f 00 00 00       	mov    $0xf,%eax
 4e9:	cd 40                	int    $0x40
 4eb:	c3                   	ret    

000004ec <mknod>:
SYSCALL(mknod)
 4ec:	b8 11 00 00 00       	mov    $0x11,%eax
 4f1:	cd 40                	int    $0x40
 4f3:	c3                   	ret    

000004f4 <unlink>:
SYSCALL(unlink)
 4f4:	b8 12 00 00 00       	mov    $0x12,%eax
 4f9:	cd 40                	int    $0x40
 4fb:	c3                   	ret    

000004fc <fstat>:
SYSCALL(fstat)
 4fc:	b8 08 00 00 00       	mov    $0x8,%eax
 501:	cd 40                	int    $0x40
 503:	c3                   	ret    

00000504 <link>:
SYSCALL(link)
 504:	b8 13 00 00 00       	mov    $0x13,%eax
 509:	cd 40                	int    $0x40
 50b:	c3                   	ret    

0000050c <mkdir>:
SYSCALL(mkdir)
 50c:	b8 14 00 00 00       	mov    $0x14,%eax
 511:	cd 40                	int    $0x40
 513:	c3                   	ret    

00000514 <chdir>:
SYSCALL(chdir)
 514:	b8 09 00 00 00       	mov    $0x9,%eax
 519:	cd 40                	int    $0x40
 51b:	c3                   	ret    

0000051c <dup>:
SYSCALL(dup)
 51c:	b8 0a 00 00 00       	mov    $0xa,%eax
 521:	cd 40                	int    $0x40
 523:	c3                   	ret    

00000524 <getpid>:
SYSCALL(getpid)
 524:	b8 0b 00 00 00       	mov    $0xb,%eax
 529:	cd 40                	int    $0x40
 52b:	c3                   	ret    

0000052c <sbrk>:
SYSCALL(sbrk)
 52c:	b8 0c 00 00 00       	mov    $0xc,%eax
 531:	cd 40                	int    $0x40
 533:	c3                   	ret    

00000534 <sleep>:
SYSCALL(sleep)
 534:	b8 0d 00 00 00       	mov    $0xd,%eax
 539:	cd 40                	int    $0x40
 53b:	c3                   	ret    

0000053c <uptime>:
SYSCALL(uptime)
 53c:	b8 0e 00 00 00       	mov    $0xe,%eax
 541:	cd 40                	int    $0x40
 543:	c3                   	ret    

00000544 <clone>:
SYSCALL(clone)
 544:	b8 16 00 00 00       	mov    $0x16,%eax
 549:	cd 40                	int    $0x40
 54b:	c3                   	ret    

0000054c <join>:
SYSCALL(join)
 54c:	b8 17 00 00 00       	mov    $0x17,%eax
 551:	cd 40                	int    $0x40
 553:	c3                   	ret    
 554:	66 90                	xchg   %ax,%ax
 556:	66 90                	xchg   %ax,%ax
 558:	66 90                	xchg   %ax,%ax
 55a:	66 90                	xchg   %ax,%ax
 55c:	66 90                	xchg   %ax,%ax
 55e:	66 90                	xchg   %ax,%ax

00000560 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 560:	55                   	push   %ebp
 561:	89 e5                	mov    %esp,%ebp
 563:	57                   	push   %edi
 564:	56                   	push   %esi
 565:	53                   	push   %ebx
 566:	83 ec 3c             	sub    $0x3c,%esp
 569:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 56c:	89 d1                	mov    %edx,%ecx
{
 56e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 571:	85 d2                	test   %edx,%edx
 573:	0f 89 7f 00 00 00    	jns    5f8 <printint+0x98>
 579:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 57d:	74 79                	je     5f8 <printint+0x98>
    neg = 1;
 57f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 586:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 588:	31 db                	xor    %ebx,%ebx
 58a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 58d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 590:	89 c8                	mov    %ecx,%eax
 592:	31 d2                	xor    %edx,%edx
 594:	89 cf                	mov    %ecx,%edi
 596:	f7 75 c4             	divl   -0x3c(%ebp)
 599:	0f b6 92 14 0a 00 00 	movzbl 0xa14(%edx),%edx
 5a0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 5a3:	89 d8                	mov    %ebx,%eax
 5a5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 5a8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 5ab:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 5ae:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 5b1:	76 dd                	jbe    590 <printint+0x30>
  if(neg)
 5b3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 5b6:	85 c9                	test   %ecx,%ecx
 5b8:	74 0c                	je     5c6 <printint+0x66>
    buf[i++] = '-';
 5ba:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 5bf:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 5c1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 5c6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 5c9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 5cd:	eb 07                	jmp    5d6 <printint+0x76>
 5cf:	90                   	nop
    putc(fd, buf[i]);
 5d0:	0f b6 13             	movzbl (%ebx),%edx
 5d3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 5d6:	83 ec 04             	sub    $0x4,%esp
 5d9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 5dc:	6a 01                	push   $0x1
 5de:	56                   	push   %esi
 5df:	57                   	push   %edi
 5e0:	e8 df fe ff ff       	call   4c4 <write>
  while(--i >= 0)
 5e5:	83 c4 10             	add    $0x10,%esp
 5e8:	39 de                	cmp    %ebx,%esi
 5ea:	75 e4                	jne    5d0 <printint+0x70>
}
 5ec:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5ef:	5b                   	pop    %ebx
 5f0:	5e                   	pop    %esi
 5f1:	5f                   	pop    %edi
 5f2:	5d                   	pop    %ebp
 5f3:	c3                   	ret    
 5f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 5f8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 5ff:	eb 87                	jmp    588 <printint+0x28>
 601:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 608:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 60f:	90                   	nop

00000610 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 610:	55                   	push   %ebp
 611:	89 e5                	mov    %esp,%ebp
 613:	57                   	push   %edi
 614:	56                   	push   %esi
 615:	53                   	push   %ebx
 616:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 619:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 61c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 61f:	0f b6 13             	movzbl (%ebx),%edx
 622:	84 d2                	test   %dl,%dl
 624:	74 6a                	je     690 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 626:	8d 45 10             	lea    0x10(%ebp),%eax
 629:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 62c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 62f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 631:	89 45 d0             	mov    %eax,-0x30(%ebp)
 634:	eb 36                	jmp    66c <printf+0x5c>
 636:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 63d:	8d 76 00             	lea    0x0(%esi),%esi
 640:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 643:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 648:	83 f8 25             	cmp    $0x25,%eax
 64b:	74 15                	je     662 <printf+0x52>
  write(fd, &c, 1);
 64d:	83 ec 04             	sub    $0x4,%esp
 650:	88 55 e7             	mov    %dl,-0x19(%ebp)
 653:	6a 01                	push   $0x1
 655:	57                   	push   %edi
 656:	56                   	push   %esi
 657:	e8 68 fe ff ff       	call   4c4 <write>
 65c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 65f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 662:	0f b6 13             	movzbl (%ebx),%edx
 665:	83 c3 01             	add    $0x1,%ebx
 668:	84 d2                	test   %dl,%dl
 66a:	74 24                	je     690 <printf+0x80>
    c = fmt[i] & 0xff;
 66c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 66f:	85 c9                	test   %ecx,%ecx
 671:	74 cd                	je     640 <printf+0x30>
      }
    } else if(state == '%'){
 673:	83 f9 25             	cmp    $0x25,%ecx
 676:	75 ea                	jne    662 <printf+0x52>
      if(c == 'd'){
 678:	83 f8 25             	cmp    $0x25,%eax
 67b:	0f 84 07 01 00 00    	je     788 <printf+0x178>
 681:	83 e8 63             	sub    $0x63,%eax
 684:	83 f8 15             	cmp    $0x15,%eax
 687:	77 17                	ja     6a0 <printf+0x90>
 689:	ff 24 85 bc 09 00 00 	jmp    *0x9bc(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 690:	8d 65 f4             	lea    -0xc(%ebp),%esp
 693:	5b                   	pop    %ebx
 694:	5e                   	pop    %esi
 695:	5f                   	pop    %edi
 696:	5d                   	pop    %ebp
 697:	c3                   	ret    
 698:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 69f:	90                   	nop
  write(fd, &c, 1);
 6a0:	83 ec 04             	sub    $0x4,%esp
 6a3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 6a6:	6a 01                	push   $0x1
 6a8:	57                   	push   %edi
 6a9:	56                   	push   %esi
 6aa:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 6ae:	e8 11 fe ff ff       	call   4c4 <write>
        putc(fd, c);
 6b3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 6b7:	83 c4 0c             	add    $0xc,%esp
 6ba:	88 55 e7             	mov    %dl,-0x19(%ebp)
 6bd:	6a 01                	push   $0x1
 6bf:	57                   	push   %edi
 6c0:	56                   	push   %esi
 6c1:	e8 fe fd ff ff       	call   4c4 <write>
        putc(fd, c);
 6c6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 6c9:	31 c9                	xor    %ecx,%ecx
 6cb:	eb 95                	jmp    662 <printf+0x52>
 6cd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 6d0:	83 ec 0c             	sub    $0xc,%esp
 6d3:	b9 10 00 00 00       	mov    $0x10,%ecx
 6d8:	6a 00                	push   $0x0
 6da:	8b 45 d0             	mov    -0x30(%ebp),%eax
 6dd:	8b 10                	mov    (%eax),%edx
 6df:	89 f0                	mov    %esi,%eax
 6e1:	e8 7a fe ff ff       	call   560 <printint>
        ap++;
 6e6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 6ea:	83 c4 10             	add    $0x10,%esp
      state = 0;
 6ed:	31 c9                	xor    %ecx,%ecx
 6ef:	e9 6e ff ff ff       	jmp    662 <printf+0x52>
 6f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 6f8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 6fb:	8b 10                	mov    (%eax),%edx
        ap++;
 6fd:	83 c0 04             	add    $0x4,%eax
 700:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 703:	85 d2                	test   %edx,%edx
 705:	0f 84 8d 00 00 00    	je     798 <printf+0x188>
        while(*s != 0){
 70b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 70e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 710:	84 c0                	test   %al,%al
 712:	0f 84 4a ff ff ff    	je     662 <printf+0x52>
 718:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 71b:	89 d3                	mov    %edx,%ebx
 71d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 720:	83 ec 04             	sub    $0x4,%esp
          s++;
 723:	83 c3 01             	add    $0x1,%ebx
 726:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 729:	6a 01                	push   $0x1
 72b:	57                   	push   %edi
 72c:	56                   	push   %esi
 72d:	e8 92 fd ff ff       	call   4c4 <write>
        while(*s != 0){
 732:	0f b6 03             	movzbl (%ebx),%eax
 735:	83 c4 10             	add    $0x10,%esp
 738:	84 c0                	test   %al,%al
 73a:	75 e4                	jne    720 <printf+0x110>
      state = 0;
 73c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 73f:	31 c9                	xor    %ecx,%ecx
 741:	e9 1c ff ff ff       	jmp    662 <printf+0x52>
 746:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 74d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 750:	83 ec 0c             	sub    $0xc,%esp
 753:	b9 0a 00 00 00       	mov    $0xa,%ecx
 758:	6a 01                	push   $0x1
 75a:	e9 7b ff ff ff       	jmp    6da <printf+0xca>
 75f:	90                   	nop
        putc(fd, *ap);
 760:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 763:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 766:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 768:	6a 01                	push   $0x1
 76a:	57                   	push   %edi
 76b:	56                   	push   %esi
        putc(fd, *ap);
 76c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 76f:	e8 50 fd ff ff       	call   4c4 <write>
        ap++;
 774:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 778:	83 c4 10             	add    $0x10,%esp
      state = 0;
 77b:	31 c9                	xor    %ecx,%ecx
 77d:	e9 e0 fe ff ff       	jmp    662 <printf+0x52>
 782:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 788:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 78b:	83 ec 04             	sub    $0x4,%esp
 78e:	e9 2a ff ff ff       	jmp    6bd <printf+0xad>
 793:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 797:	90                   	nop
          s = "(null)";
 798:	ba b2 09 00 00       	mov    $0x9b2,%edx
        while(*s != 0){
 79d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 7a0:	b8 28 00 00 00       	mov    $0x28,%eax
 7a5:	89 d3                	mov    %edx,%ebx
 7a7:	e9 74 ff ff ff       	jmp    720 <printf+0x110>
 7ac:	66 90                	xchg   %ax,%ax
 7ae:	66 90                	xchg   %ax,%ax

000007b0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 7b0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 7b1:	a1 a0 0d 00 00       	mov    0xda0,%eax
{
 7b6:	89 e5                	mov    %esp,%ebp
 7b8:	57                   	push   %edi
 7b9:	56                   	push   %esi
 7ba:	53                   	push   %ebx
 7bb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 7be:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 7c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7c8:	89 c2                	mov    %eax,%edx
 7ca:	8b 00                	mov    (%eax),%eax
 7cc:	39 ca                	cmp    %ecx,%edx
 7ce:	73 30                	jae    800 <free+0x50>
 7d0:	39 c1                	cmp    %eax,%ecx
 7d2:	72 04                	jb     7d8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 7d4:	39 c2                	cmp    %eax,%edx
 7d6:	72 f0                	jb     7c8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 7d8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 7db:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 7de:	39 f8                	cmp    %edi,%eax
 7e0:	74 30                	je     812 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 7e2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 7e5:	8b 42 04             	mov    0x4(%edx),%eax
 7e8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 7eb:	39 f1                	cmp    %esi,%ecx
 7ed:	74 3a                	je     829 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 7ef:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 7f1:	5b                   	pop    %ebx
  freep = p;
 7f2:	89 15 a0 0d 00 00    	mov    %edx,0xda0
}
 7f8:	5e                   	pop    %esi
 7f9:	5f                   	pop    %edi
 7fa:	5d                   	pop    %ebp
 7fb:	c3                   	ret    
 7fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 800:	39 c2                	cmp    %eax,%edx
 802:	72 c4                	jb     7c8 <free+0x18>
 804:	39 c1                	cmp    %eax,%ecx
 806:	73 c0                	jae    7c8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 808:	8b 73 fc             	mov    -0x4(%ebx),%esi
 80b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 80e:	39 f8                	cmp    %edi,%eax
 810:	75 d0                	jne    7e2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 812:	03 70 04             	add    0x4(%eax),%esi
 815:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 818:	8b 02                	mov    (%edx),%eax
 81a:	8b 00                	mov    (%eax),%eax
 81c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 81f:	8b 42 04             	mov    0x4(%edx),%eax
 822:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 825:	39 f1                	cmp    %esi,%ecx
 827:	75 c6                	jne    7ef <free+0x3f>
    p->s.size += bp->s.size;
 829:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 82c:	89 15 a0 0d 00 00    	mov    %edx,0xda0
    p->s.size += bp->s.size;
 832:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 835:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 838:	89 0a                	mov    %ecx,(%edx)
}
 83a:	5b                   	pop    %ebx
 83b:	5e                   	pop    %esi
 83c:	5f                   	pop    %edi
 83d:	5d                   	pop    %ebp
 83e:	c3                   	ret    
 83f:	90                   	nop

00000840 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 840:	55                   	push   %ebp
 841:	89 e5                	mov    %esp,%ebp
 843:	57                   	push   %edi
 844:	56                   	push   %esi
 845:	53                   	push   %ebx
 846:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 849:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 84c:	8b 3d a0 0d 00 00    	mov    0xda0,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 852:	8d 70 07             	lea    0x7(%eax),%esi
 855:	c1 ee 03             	shr    $0x3,%esi
 858:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 85b:	85 ff                	test   %edi,%edi
 85d:	0f 84 9d 00 00 00    	je     900 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 863:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 865:	8b 4a 04             	mov    0x4(%edx),%ecx
 868:	39 f1                	cmp    %esi,%ecx
 86a:	73 6a                	jae    8d6 <malloc+0x96>
 86c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 871:	39 de                	cmp    %ebx,%esi
 873:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 876:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 87d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 880:	eb 17                	jmp    899 <malloc+0x59>
 882:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 888:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 88a:	8b 48 04             	mov    0x4(%eax),%ecx
 88d:	39 f1                	cmp    %esi,%ecx
 88f:	73 4f                	jae    8e0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 891:	8b 3d a0 0d 00 00    	mov    0xda0,%edi
 897:	89 c2                	mov    %eax,%edx
 899:	39 d7                	cmp    %edx,%edi
 89b:	75 eb                	jne    888 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 89d:	83 ec 0c             	sub    $0xc,%esp
 8a0:	ff 75 e4             	push   -0x1c(%ebp)
 8a3:	e8 84 fc ff ff       	call   52c <sbrk>
  if(p == (char*)-1)
 8a8:	83 c4 10             	add    $0x10,%esp
 8ab:	83 f8 ff             	cmp    $0xffffffff,%eax
 8ae:	74 1c                	je     8cc <malloc+0x8c>
  hp->s.size = nu;
 8b0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 8b3:	83 ec 0c             	sub    $0xc,%esp
 8b6:	83 c0 08             	add    $0x8,%eax
 8b9:	50                   	push   %eax
 8ba:	e8 f1 fe ff ff       	call   7b0 <free>
  return freep;
 8bf:	8b 15 a0 0d 00 00    	mov    0xda0,%edx
      if((p = morecore(nunits)) == 0)
 8c5:	83 c4 10             	add    $0x10,%esp
 8c8:	85 d2                	test   %edx,%edx
 8ca:	75 bc                	jne    888 <malloc+0x48>
        return 0;
  }
}
 8cc:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 8cf:	31 c0                	xor    %eax,%eax
}
 8d1:	5b                   	pop    %ebx
 8d2:	5e                   	pop    %esi
 8d3:	5f                   	pop    %edi
 8d4:	5d                   	pop    %ebp
 8d5:	c3                   	ret    
    if(p->s.size >= nunits){
 8d6:	89 d0                	mov    %edx,%eax
 8d8:	89 fa                	mov    %edi,%edx
 8da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 8e0:	39 ce                	cmp    %ecx,%esi
 8e2:	74 4c                	je     930 <malloc+0xf0>
        p->s.size -= nunits;
 8e4:	29 f1                	sub    %esi,%ecx
 8e6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 8e9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 8ec:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 8ef:	89 15 a0 0d 00 00    	mov    %edx,0xda0
}
 8f5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 8f8:	83 c0 08             	add    $0x8,%eax
}
 8fb:	5b                   	pop    %ebx
 8fc:	5e                   	pop    %esi
 8fd:	5f                   	pop    %edi
 8fe:	5d                   	pop    %ebp
 8ff:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 900:	c7 05 a0 0d 00 00 a4 	movl   $0xda4,0xda0
 907:	0d 00 00 
    base.s.size = 0;
 90a:	bf a4 0d 00 00       	mov    $0xda4,%edi
    base.s.ptr = freep = prevp = &base;
 90f:	c7 05 a4 0d 00 00 a4 	movl   $0xda4,0xda4
 916:	0d 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 919:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 91b:	c7 05 a8 0d 00 00 00 	movl   $0x0,0xda8
 922:	00 00 00 
    if(p->s.size >= nunits){
 925:	e9 42 ff ff ff       	jmp    86c <malloc+0x2c>
 92a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 930:	8b 08                	mov    (%eax),%ecx
 932:	89 0a                	mov    %ecx,(%edx)
 934:	eb b9                	jmp    8ef <malloc+0xaf>
