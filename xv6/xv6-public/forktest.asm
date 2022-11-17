
_forktest:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  printf(1, "fork test OK\n");
}

int
main(void)
{
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 e4 f0             	and    $0xfffffff0,%esp
  forktest();
   6:	e8 35 00 00 00       	call   40 <forktest>
  exit();
   b:	e8 34 04 00 00       	call   444 <exit>

00000010 <printf>:
{
  10:	55                   	push   %ebp
  11:	89 e5                	mov    %esp,%ebp
  13:	53                   	push   %ebx
  14:	83 ec 10             	sub    $0x10,%esp
  17:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  write(fd, s, strlen(s));
  1a:	53                   	push   %ebx
  1b:	e8 90 01 00 00       	call   1b0 <strlen>
  20:	83 c4 0c             	add    $0xc,%esp
  23:	50                   	push   %eax
  24:	53                   	push   %ebx
  25:	ff 75 08             	push   0x8(%ebp)
  28:	e8 37 04 00 00       	call   464 <write>
}
  2d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  30:	83 c4 10             	add    $0x10,%esp
  33:	c9                   	leave  
  34:	c3                   	ret    
  35:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000040 <forktest>:
{
  40:	55                   	push   %ebp
  41:	89 e5                	mov    %esp,%ebp
  43:	53                   	push   %ebx
  for(n=0; n<N; n++){
  44:	31 db                	xor    %ebx,%ebx
{
  46:	83 ec 10             	sub    $0x10,%esp
  write(fd, s, strlen(s));
  49:	68 88 06 00 00       	push   $0x688
  4e:	e8 5d 01 00 00       	call   1b0 <strlen>
  53:	83 c4 0c             	add    $0xc,%esp
  56:	50                   	push   %eax
  57:	68 88 06 00 00       	push   $0x688
  5c:	6a 01                	push   $0x1
  5e:	e8 01 04 00 00       	call   464 <write>
  63:	83 c4 10             	add    $0x10,%esp
  66:	eb 19                	jmp    81 <forktest+0x41>
  68:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  6f:	90                   	nop
    if(pid == 0)
  70:	74 58                	je     ca <forktest+0x8a>
  for(n=0; n<N; n++){
  72:	83 c3 01             	add    $0x1,%ebx
  75:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
  7b:	0f 84 83 00 00 00    	je     104 <forktest+0xc4>
    pid = fork();
  81:	e8 b6 03 00 00       	call   43c <fork>
    if(pid < 0)
  86:	85 c0                	test   %eax,%eax
  88:	79 e6                	jns    70 <forktest+0x30>
  for(; n > 0; n--){
  8a:	85 db                	test   %ebx,%ebx
  8c:	74 10                	je     9e <forktest+0x5e>
  8e:	66 90                	xchg   %ax,%ax
    if(wait() < 0){
  90:	e8 b7 03 00 00       	call   44c <wait>
  95:	85 c0                	test   %eax,%eax
  97:	78 36                	js     cf <forktest+0x8f>
  for(; n > 0; n--){
  99:	83 eb 01             	sub    $0x1,%ebx
  9c:	75 f2                	jne    90 <forktest+0x50>
  if(wait() != -1){
  9e:	e8 a9 03 00 00       	call   44c <wait>
  a3:	83 f8 ff             	cmp    $0xffffffff,%eax
  a6:	75 49                	jne    f1 <forktest+0xb1>
  write(fd, s, strlen(s));
  a8:	83 ec 0c             	sub    $0xc,%esp
  ab:	68 ba 06 00 00       	push   $0x6ba
  b0:	e8 fb 00 00 00       	call   1b0 <strlen>
  b5:	83 c4 0c             	add    $0xc,%esp
  b8:	50                   	push   %eax
  b9:	68 ba 06 00 00       	push   $0x6ba
  be:	6a 01                	push   $0x1
  c0:	e8 9f 03 00 00       	call   464 <write>
}
  c5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  c8:	c9                   	leave  
  c9:	c3                   	ret    
      exit();
  ca:	e8 75 03 00 00       	call   444 <exit>
  write(fd, s, strlen(s));
  cf:	83 ec 0c             	sub    $0xc,%esp
  d2:	68 93 06 00 00       	push   $0x693
  d7:	e8 d4 00 00 00       	call   1b0 <strlen>
  dc:	83 c4 0c             	add    $0xc,%esp
  df:	50                   	push   %eax
  e0:	68 93 06 00 00       	push   $0x693
  e5:	6a 01                	push   $0x1
  e7:	e8 78 03 00 00       	call   464 <write>
      exit();
  ec:	e8 53 03 00 00       	call   444 <exit>
    printf(1, "wait got too many\n");
  f1:	52                   	push   %edx
  f2:	52                   	push   %edx
  f3:	68 a7 06 00 00       	push   $0x6a7
  f8:	6a 01                	push   $0x1
  fa:	e8 11 ff ff ff       	call   10 <printf>
    exit();
  ff:	e8 40 03 00 00       	call   444 <exit>
    printf(1, "fork claimed to work N times!\n", N);
 104:	50                   	push   %eax
 105:	68 e8 03 00 00       	push   $0x3e8
 10a:	68 c8 06 00 00       	push   $0x6c8
 10f:	6a 01                	push   $0x1
 111:	e8 fa fe ff ff       	call   10 <printf>
    exit();
 116:	e8 29 03 00 00       	call   444 <exit>
 11b:	66 90                	xchg   %ax,%ax
 11d:	66 90                	xchg   %ax,%ax
 11f:	90                   	nop

00000120 <strcpy>:
#include "x86.h"
#define PGSIZE 4096

char*
strcpy(char *s, const char *t)
{
 120:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 121:	31 c0                	xor    %eax,%eax
{
 123:	89 e5                	mov    %esp,%ebp
 125:	53                   	push   %ebx
 126:	8b 4d 08             	mov    0x8(%ebp),%ecx
 129:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 12c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 130:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 134:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 137:	83 c0 01             	add    $0x1,%eax
 13a:	84 d2                	test   %dl,%dl
 13c:	75 f2                	jne    130 <strcpy+0x10>
    ;
  return os;
}
 13e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 141:	89 c8                	mov    %ecx,%eax
 143:	c9                   	leave  
 144:	c3                   	ret    
 145:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 14c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000150 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 150:	55                   	push   %ebp
 151:	89 e5                	mov    %esp,%ebp
 153:	53                   	push   %ebx
 154:	8b 55 08             	mov    0x8(%ebp),%edx
 157:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 15a:	0f b6 02             	movzbl (%edx),%eax
 15d:	84 c0                	test   %al,%al
 15f:	75 17                	jne    178 <strcmp+0x28>
 161:	eb 3a                	jmp    19d <strcmp+0x4d>
 163:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 167:	90                   	nop
 168:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 16c:	83 c2 01             	add    $0x1,%edx
 16f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 172:	84 c0                	test   %al,%al
 174:	74 1a                	je     190 <strcmp+0x40>
    p++, q++;
 176:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 178:	0f b6 19             	movzbl (%ecx),%ebx
 17b:	38 c3                	cmp    %al,%bl
 17d:	74 e9                	je     168 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 17f:	29 d8                	sub    %ebx,%eax
}
 181:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 184:	c9                   	leave  
 185:	c3                   	ret    
 186:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 18d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 190:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 194:	31 c0                	xor    %eax,%eax
 196:	29 d8                	sub    %ebx,%eax
}
 198:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 19b:	c9                   	leave  
 19c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 19d:	0f b6 19             	movzbl (%ecx),%ebx
 1a0:	31 c0                	xor    %eax,%eax
 1a2:	eb db                	jmp    17f <strcmp+0x2f>
 1a4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1af:	90                   	nop

000001b0 <strlen>:

uint
strlen(const char *s)
{
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 1b6:	80 3a 00             	cmpb   $0x0,(%edx)
 1b9:	74 15                	je     1d0 <strlen+0x20>
 1bb:	31 c0                	xor    %eax,%eax
 1bd:	8d 76 00             	lea    0x0(%esi),%esi
 1c0:	83 c0 01             	add    $0x1,%eax
 1c3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 1c7:	89 c1                	mov    %eax,%ecx
 1c9:	75 f5                	jne    1c0 <strlen+0x10>
    ;
  return n;
}
 1cb:	89 c8                	mov    %ecx,%eax
 1cd:	5d                   	pop    %ebp
 1ce:	c3                   	ret    
 1cf:	90                   	nop
  for(n = 0; s[n]; n++)
 1d0:	31 c9                	xor    %ecx,%ecx
}
 1d2:	5d                   	pop    %ebp
 1d3:	89 c8                	mov    %ecx,%eax
 1d5:	c3                   	ret    
 1d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1dd:	8d 76 00             	lea    0x0(%esi),%esi

000001e0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 1e0:	55                   	push   %ebp
 1e1:	89 e5                	mov    %esp,%ebp
 1e3:	57                   	push   %edi
 1e4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 1e7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 1ea:	8b 45 0c             	mov    0xc(%ebp),%eax
 1ed:	89 d7                	mov    %edx,%edi
 1ef:	fc                   	cld    
 1f0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 1f2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 1f5:	89 d0                	mov    %edx,%eax
 1f7:	c9                   	leave  
 1f8:	c3                   	ret    
 1f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000200 <strchr>:

char*
strchr(const char *s, char c)
{
 200:	55                   	push   %ebp
 201:	89 e5                	mov    %esp,%ebp
 203:	8b 45 08             	mov    0x8(%ebp),%eax
 206:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 20a:	0f b6 10             	movzbl (%eax),%edx
 20d:	84 d2                	test   %dl,%dl
 20f:	75 12                	jne    223 <strchr+0x23>
 211:	eb 1d                	jmp    230 <strchr+0x30>
 213:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 217:	90                   	nop
 218:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 21c:	83 c0 01             	add    $0x1,%eax
 21f:	84 d2                	test   %dl,%dl
 221:	74 0d                	je     230 <strchr+0x30>
    if(*s == c)
 223:	38 d1                	cmp    %dl,%cl
 225:	75 f1                	jne    218 <strchr+0x18>
      return (char*)s;
  return 0;
}
 227:	5d                   	pop    %ebp
 228:	c3                   	ret    
 229:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 230:	31 c0                	xor    %eax,%eax
}
 232:	5d                   	pop    %ebp
 233:	c3                   	ret    
 234:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 23b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 23f:	90                   	nop

00000240 <gets>:

char*
gets(char *buf, int max)
{
 240:	55                   	push   %ebp
 241:	89 e5                	mov    %esp,%ebp
 243:	57                   	push   %edi
 244:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 245:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 248:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 249:	31 db                	xor    %ebx,%ebx
{
 24b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 24e:	eb 27                	jmp    277 <gets+0x37>
    cc = read(0, &c, 1);
 250:	83 ec 04             	sub    $0x4,%esp
 253:	6a 01                	push   $0x1
 255:	57                   	push   %edi
 256:	6a 00                	push   $0x0
 258:	e8 ff 01 00 00       	call   45c <read>
    if(cc < 1)
 25d:	83 c4 10             	add    $0x10,%esp
 260:	85 c0                	test   %eax,%eax
 262:	7e 1d                	jle    281 <gets+0x41>
      break;
    buf[i++] = c;
 264:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 268:	8b 55 08             	mov    0x8(%ebp),%edx
 26b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 26f:	3c 0a                	cmp    $0xa,%al
 271:	74 1d                	je     290 <gets+0x50>
 273:	3c 0d                	cmp    $0xd,%al
 275:	74 19                	je     290 <gets+0x50>
  for(i=0; i+1 < max; ){
 277:	89 de                	mov    %ebx,%esi
 279:	83 c3 01             	add    $0x1,%ebx
 27c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 27f:	7c cf                	jl     250 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 281:	8b 45 08             	mov    0x8(%ebp),%eax
 284:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 288:	8d 65 f4             	lea    -0xc(%ebp),%esp
 28b:	5b                   	pop    %ebx
 28c:	5e                   	pop    %esi
 28d:	5f                   	pop    %edi
 28e:	5d                   	pop    %ebp
 28f:	c3                   	ret    
  buf[i] = '\0';
 290:	8b 45 08             	mov    0x8(%ebp),%eax
 293:	89 de                	mov    %ebx,%esi
 295:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 299:	8d 65 f4             	lea    -0xc(%ebp),%esp
 29c:	5b                   	pop    %ebx
 29d:	5e                   	pop    %esi
 29e:	5f                   	pop    %edi
 29f:	5d                   	pop    %ebp
 2a0:	c3                   	ret    
 2a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2af:	90                   	nop

000002b0 <stat>:

int
stat(const char *n, struct stat *st)
{
 2b0:	55                   	push   %ebp
 2b1:	89 e5                	mov    %esp,%ebp
 2b3:	56                   	push   %esi
 2b4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 2b5:	83 ec 08             	sub    $0x8,%esp
 2b8:	6a 00                	push   $0x0
 2ba:	ff 75 08             	push   0x8(%ebp)
 2bd:	e8 c2 01 00 00       	call   484 <open>
  if(fd < 0)
 2c2:	83 c4 10             	add    $0x10,%esp
 2c5:	85 c0                	test   %eax,%eax
 2c7:	78 27                	js     2f0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 2c9:	83 ec 08             	sub    $0x8,%esp
 2cc:	ff 75 0c             	push   0xc(%ebp)
 2cf:	89 c3                	mov    %eax,%ebx
 2d1:	50                   	push   %eax
 2d2:	e8 c5 01 00 00       	call   49c <fstat>
  close(fd);
 2d7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 2da:	89 c6                	mov    %eax,%esi
  close(fd);
 2dc:	e8 8b 01 00 00       	call   46c <close>
  return r;
 2e1:	83 c4 10             	add    $0x10,%esp
}
 2e4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 2e7:	89 f0                	mov    %esi,%eax
 2e9:	5b                   	pop    %ebx
 2ea:	5e                   	pop    %esi
 2eb:	5d                   	pop    %ebp
 2ec:	c3                   	ret    
 2ed:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 2f0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 2f5:	eb ed                	jmp    2e4 <stat+0x34>
 2f7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2fe:	66 90                	xchg   %ax,%ax

00000300 <atoi>:

int
atoi(const char *s)
{
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	53                   	push   %ebx
 304:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 307:	0f be 02             	movsbl (%edx),%eax
 30a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 30d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 310:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 315:	77 1e                	ja     335 <atoi+0x35>
 317:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 31e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 320:	83 c2 01             	add    $0x1,%edx
 323:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 326:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 32a:	0f be 02             	movsbl (%edx),%eax
 32d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 330:	80 fb 09             	cmp    $0x9,%bl
 333:	76 eb                	jbe    320 <atoi+0x20>
  return n;
}
 335:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 338:	89 c8                	mov    %ecx,%eax
 33a:	c9                   	leave  
 33b:	c3                   	ret    
 33c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000340 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 340:	55                   	push   %ebp
 341:	89 e5                	mov    %esp,%ebp
 343:	57                   	push   %edi
 344:	8b 45 10             	mov    0x10(%ebp),%eax
 347:	8b 55 08             	mov    0x8(%ebp),%edx
 34a:	56                   	push   %esi
 34b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 34e:	85 c0                	test   %eax,%eax
 350:	7e 13                	jle    365 <memmove+0x25>
 352:	01 d0                	add    %edx,%eax
  dst = vdst;
 354:	89 d7                	mov    %edx,%edi
 356:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 35d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 360:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 361:	39 f8                	cmp    %edi,%eax
 363:	75 fb                	jne    360 <memmove+0x20>
  return vdst;
}
 365:	5e                   	pop    %esi
 366:	89 d0                	mov    %edx,%eax
 368:	5f                   	pop    %edi
 369:	5d                   	pop    %ebp
 36a:	c3                   	ret    
 36b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 36f:	90                   	nop

00000370 <thread_create>:

// call malloc() to create a new user stack
// use clone() to create the child thread -> get it running
// returns the newly created PID to the parent && 0 to child if successful
// returns -1 if unsucessful
int thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2) {
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	83 ec 14             	sub    $0x14,%esp

  void *stack;
  if ((stack= malloc(2*PGSIZE)) == 0){
 376:	68 00 20 00 00       	push   $0x2000
 37b:	e8 10 02 00 00       	call   590 <malloc>
 380:	83 c4 10             	add    $0x10,%esp
 383:	85 c0                	test   %eax,%eax
 385:	74 25                	je     3ac <thread_create+0x3c>
    return -1;
  }

  // stack - page aligned
  if((uint)stack % PGSIZE)
 387:	89 c2                	mov    %eax,%edx
 389:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 38f:	74 07                	je     398 <thread_create+0x28>
    stack = stack + (PGSIZE - (uint)stack % PGSIZE);
 391:	29 d0                	sub    %edx,%eax
 393:	05 00 10 00 00       	add    $0x1000,%eax

  int childPid = clone(start_routine, arg1, arg2, stack);
 398:	50                   	push   %eax
 399:	ff 75 10             	push   0x10(%ebp)
 39c:	ff 75 0c             	push   0xc(%ebp)
 39f:	ff 75 08             	push   0x8(%ebp)
 3a2:	e8 3d 01 00 00       	call   4e4 <clone>

  return childPid;
 3a7:	83 c4 10             	add    $0x10,%esp
}
 3aa:	c9                   	leave  
 3ab:	c3                   	ret    
 3ac:	c9                   	leave  
    return -1;
 3ad:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
 3b2:	c3                   	ret    
 3b3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000003c0 <thread_join>:

// call join() and frees the user stack
// returns waited-for PID if successful, -1 otherwise
int thread_join() {
 3c0:	55                   	push   %ebp
 3c1:	89 e5                	mov    %esp,%ebp
 3c3:	53                   	push   %ebx

  void *stack;
  int childpid = join(&stack);
 3c4:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join() {
 3c7:	83 ec 20             	sub    $0x20,%esp
  int childpid = join(&stack);
 3ca:	50                   	push   %eax
 3cb:	e8 1c 01 00 00       	call   4ec <join>
 3d0:	89 c3                	mov    %eax,%ebx
  free(stack);
 3d2:	58                   	pop    %eax
 3d3:	ff 75 f4             	push   -0xc(%ebp)
 3d6:	e8 25 01 00 00       	call   500 <free>
  return childpid;
}
 3db:	89 d8                	mov    %ebx,%eax
 3dd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3e0:	c9                   	leave  
 3e1:	c3                   	ret    
 3e2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003f0 <lock_init>:
      : "memory"
    );
    return value;
}
 
void lock_init(lock_t *lock) {
 3f0:	55                   	push   %ebp
 3f1:	89 e5                	mov    %esp,%ebp
 3f3:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 3f6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 3fc:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 403:	5d                   	pop    %ebp
 404:	c3                   	ret    
 405:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 40c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000410 <lock_acquire>:

void lock_acquire(lock_t *lock) {
 410:	55                   	push   %ebp
 411:	89 e5                	mov    %esp,%ebp
 413:	8b 55 08             	mov    0x8(%ebp),%edx
    __asm__ volatile("lock; xaddl %0, %1"
 416:	8b 02                	mov    (%edx),%eax
 418:	f0 0f c1 02          	lock xadd %eax,(%edx)
  int myturn = FetchAndAdd(&lock->ticket, lock->ticket);
  while (lock->turn != myturn)  ; // spin
 41c:	8b 52 04             	mov    0x4(%edx),%edx
 41f:	90                   	nop
 420:	39 c2                	cmp    %eax,%edx
 422:	75 fc                	jne    420 <lock_acquire+0x10>
}
 424:	5d                   	pop    %ebp
 425:	c3                   	ret    
 426:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 42d:	8d 76 00             	lea    0x0(%esi),%esi

00000430 <lock_release>:

void lock_release(lock_t *lock) {
 430:	55                   	push   %ebp
 431:	89 e5                	mov    %esp,%ebp
 433:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 436:	83 40 04 01          	addl   $0x1,0x4(%eax)
 43a:	5d                   	pop    %ebp
 43b:	c3                   	ret    

0000043c <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 43c:	b8 01 00 00 00       	mov    $0x1,%eax
 441:	cd 40                	int    $0x40
 443:	c3                   	ret    

00000444 <exit>:
SYSCALL(exit)
 444:	b8 02 00 00 00       	mov    $0x2,%eax
 449:	cd 40                	int    $0x40
 44b:	c3                   	ret    

0000044c <wait>:
SYSCALL(wait)
 44c:	b8 03 00 00 00       	mov    $0x3,%eax
 451:	cd 40                	int    $0x40
 453:	c3                   	ret    

00000454 <pipe>:
SYSCALL(pipe)
 454:	b8 04 00 00 00       	mov    $0x4,%eax
 459:	cd 40                	int    $0x40
 45b:	c3                   	ret    

0000045c <read>:
SYSCALL(read)
 45c:	b8 05 00 00 00       	mov    $0x5,%eax
 461:	cd 40                	int    $0x40
 463:	c3                   	ret    

00000464 <write>:
SYSCALL(write)
 464:	b8 10 00 00 00       	mov    $0x10,%eax
 469:	cd 40                	int    $0x40
 46b:	c3                   	ret    

0000046c <close>:
SYSCALL(close)
 46c:	b8 15 00 00 00       	mov    $0x15,%eax
 471:	cd 40                	int    $0x40
 473:	c3                   	ret    

00000474 <kill>:
SYSCALL(kill)
 474:	b8 06 00 00 00       	mov    $0x6,%eax
 479:	cd 40                	int    $0x40
 47b:	c3                   	ret    

0000047c <exec>:
SYSCALL(exec)
 47c:	b8 07 00 00 00       	mov    $0x7,%eax
 481:	cd 40                	int    $0x40
 483:	c3                   	ret    

00000484 <open>:
SYSCALL(open)
 484:	b8 0f 00 00 00       	mov    $0xf,%eax
 489:	cd 40                	int    $0x40
 48b:	c3                   	ret    

0000048c <mknod>:
SYSCALL(mknod)
 48c:	b8 11 00 00 00       	mov    $0x11,%eax
 491:	cd 40                	int    $0x40
 493:	c3                   	ret    

00000494 <unlink>:
SYSCALL(unlink)
 494:	b8 12 00 00 00       	mov    $0x12,%eax
 499:	cd 40                	int    $0x40
 49b:	c3                   	ret    

0000049c <fstat>:
SYSCALL(fstat)
 49c:	b8 08 00 00 00       	mov    $0x8,%eax
 4a1:	cd 40                	int    $0x40
 4a3:	c3                   	ret    

000004a4 <link>:
SYSCALL(link)
 4a4:	b8 13 00 00 00       	mov    $0x13,%eax
 4a9:	cd 40                	int    $0x40
 4ab:	c3                   	ret    

000004ac <mkdir>:
SYSCALL(mkdir)
 4ac:	b8 14 00 00 00       	mov    $0x14,%eax
 4b1:	cd 40                	int    $0x40
 4b3:	c3                   	ret    

000004b4 <chdir>:
SYSCALL(chdir)
 4b4:	b8 09 00 00 00       	mov    $0x9,%eax
 4b9:	cd 40                	int    $0x40
 4bb:	c3                   	ret    

000004bc <dup>:
SYSCALL(dup)
 4bc:	b8 0a 00 00 00       	mov    $0xa,%eax
 4c1:	cd 40                	int    $0x40
 4c3:	c3                   	ret    

000004c4 <getpid>:
SYSCALL(getpid)
 4c4:	b8 0b 00 00 00       	mov    $0xb,%eax
 4c9:	cd 40                	int    $0x40
 4cb:	c3                   	ret    

000004cc <sbrk>:
SYSCALL(sbrk)
 4cc:	b8 0c 00 00 00       	mov    $0xc,%eax
 4d1:	cd 40                	int    $0x40
 4d3:	c3                   	ret    

000004d4 <sleep>:
SYSCALL(sleep)
 4d4:	b8 0d 00 00 00       	mov    $0xd,%eax
 4d9:	cd 40                	int    $0x40
 4db:	c3                   	ret    

000004dc <uptime>:
SYSCALL(uptime)
 4dc:	b8 0e 00 00 00       	mov    $0xe,%eax
 4e1:	cd 40                	int    $0x40
 4e3:	c3                   	ret    

000004e4 <clone>:
SYSCALL(clone)
 4e4:	b8 16 00 00 00       	mov    $0x16,%eax
 4e9:	cd 40                	int    $0x40
 4eb:	c3                   	ret    

000004ec <join>:
SYSCALL(join)
 4ec:	b8 17 00 00 00       	mov    $0x17,%eax
 4f1:	cd 40                	int    $0x40
 4f3:	c3                   	ret    
 4f4:	66 90                	xchg   %ax,%ax
 4f6:	66 90                	xchg   %ax,%ax
 4f8:	66 90                	xchg   %ax,%ax
 4fa:	66 90                	xchg   %ax,%ax
 4fc:	66 90                	xchg   %ax,%ax
 4fe:	66 90                	xchg   %ax,%ax

00000500 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 500:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 501:	a1 0c 0a 00 00       	mov    0xa0c,%eax
{
 506:	89 e5                	mov    %esp,%ebp
 508:	57                   	push   %edi
 509:	56                   	push   %esi
 50a:	53                   	push   %ebx
 50b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 50e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 511:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 518:	89 c2                	mov    %eax,%edx
 51a:	8b 00                	mov    (%eax),%eax
 51c:	39 ca                	cmp    %ecx,%edx
 51e:	73 30                	jae    550 <free+0x50>
 520:	39 c1                	cmp    %eax,%ecx
 522:	72 04                	jb     528 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 524:	39 c2                	cmp    %eax,%edx
 526:	72 f0                	jb     518 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 528:	8b 73 fc             	mov    -0x4(%ebx),%esi
 52b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 52e:	39 f8                	cmp    %edi,%eax
 530:	74 30                	je     562 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 532:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 535:	8b 42 04             	mov    0x4(%edx),%eax
 538:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 53b:	39 f1                	cmp    %esi,%ecx
 53d:	74 3a                	je     579 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 53f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 541:	5b                   	pop    %ebx
  freep = p;
 542:	89 15 0c 0a 00 00    	mov    %edx,0xa0c
}
 548:	5e                   	pop    %esi
 549:	5f                   	pop    %edi
 54a:	5d                   	pop    %ebp
 54b:	c3                   	ret    
 54c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 550:	39 c2                	cmp    %eax,%edx
 552:	72 c4                	jb     518 <free+0x18>
 554:	39 c1                	cmp    %eax,%ecx
 556:	73 c0                	jae    518 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 558:	8b 73 fc             	mov    -0x4(%ebx),%esi
 55b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 55e:	39 f8                	cmp    %edi,%eax
 560:	75 d0                	jne    532 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 562:	03 70 04             	add    0x4(%eax),%esi
 565:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 568:	8b 02                	mov    (%edx),%eax
 56a:	8b 00                	mov    (%eax),%eax
 56c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 56f:	8b 42 04             	mov    0x4(%edx),%eax
 572:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 575:	39 f1                	cmp    %esi,%ecx
 577:	75 c6                	jne    53f <free+0x3f>
    p->s.size += bp->s.size;
 579:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 57c:	89 15 0c 0a 00 00    	mov    %edx,0xa0c
    p->s.size += bp->s.size;
 582:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 585:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 588:	89 0a                	mov    %ecx,(%edx)
}
 58a:	5b                   	pop    %ebx
 58b:	5e                   	pop    %esi
 58c:	5f                   	pop    %edi
 58d:	5d                   	pop    %ebp
 58e:	c3                   	ret    
 58f:	90                   	nop

00000590 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 590:	55                   	push   %ebp
 591:	89 e5                	mov    %esp,%ebp
 593:	57                   	push   %edi
 594:	56                   	push   %esi
 595:	53                   	push   %ebx
 596:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 599:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 59c:	8b 3d 0c 0a 00 00    	mov    0xa0c,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 5a2:	8d 70 07             	lea    0x7(%eax),%esi
 5a5:	c1 ee 03             	shr    $0x3,%esi
 5a8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 5ab:	85 ff                	test   %edi,%edi
 5ad:	0f 84 9d 00 00 00    	je     650 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 5b3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 5b5:	8b 4a 04             	mov    0x4(%edx),%ecx
 5b8:	39 f1                	cmp    %esi,%ecx
 5ba:	73 6a                	jae    626 <malloc+0x96>
 5bc:	bb 00 10 00 00       	mov    $0x1000,%ebx
 5c1:	39 de                	cmp    %ebx,%esi
 5c3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 5c6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 5cd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 5d0:	eb 17                	jmp    5e9 <malloc+0x59>
 5d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 5d8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 5da:	8b 48 04             	mov    0x4(%eax),%ecx
 5dd:	39 f1                	cmp    %esi,%ecx
 5df:	73 4f                	jae    630 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 5e1:	8b 3d 0c 0a 00 00    	mov    0xa0c,%edi
 5e7:	89 c2                	mov    %eax,%edx
 5e9:	39 d7                	cmp    %edx,%edi
 5eb:	75 eb                	jne    5d8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 5ed:	83 ec 0c             	sub    $0xc,%esp
 5f0:	ff 75 e4             	push   -0x1c(%ebp)
 5f3:	e8 d4 fe ff ff       	call   4cc <sbrk>
  if(p == (char*)-1)
 5f8:	83 c4 10             	add    $0x10,%esp
 5fb:	83 f8 ff             	cmp    $0xffffffff,%eax
 5fe:	74 1c                	je     61c <malloc+0x8c>
  hp->s.size = nu;
 600:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 603:	83 ec 0c             	sub    $0xc,%esp
 606:	83 c0 08             	add    $0x8,%eax
 609:	50                   	push   %eax
 60a:	e8 f1 fe ff ff       	call   500 <free>
  return freep;
 60f:	8b 15 0c 0a 00 00    	mov    0xa0c,%edx
      if((p = morecore(nunits)) == 0)
 615:	83 c4 10             	add    $0x10,%esp
 618:	85 d2                	test   %edx,%edx
 61a:	75 bc                	jne    5d8 <malloc+0x48>
        return 0;
  }
}
 61c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 61f:	31 c0                	xor    %eax,%eax
}
 621:	5b                   	pop    %ebx
 622:	5e                   	pop    %esi
 623:	5f                   	pop    %edi
 624:	5d                   	pop    %ebp
 625:	c3                   	ret    
    if(p->s.size >= nunits){
 626:	89 d0                	mov    %edx,%eax
 628:	89 fa                	mov    %edi,%edx
 62a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 630:	39 ce                	cmp    %ecx,%esi
 632:	74 4c                	je     680 <malloc+0xf0>
        p->s.size -= nunits;
 634:	29 f1                	sub    %esi,%ecx
 636:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 639:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 63c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 63f:	89 15 0c 0a 00 00    	mov    %edx,0xa0c
}
 645:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 648:	83 c0 08             	add    $0x8,%eax
}
 64b:	5b                   	pop    %ebx
 64c:	5e                   	pop    %esi
 64d:	5f                   	pop    %edi
 64e:	5d                   	pop    %ebp
 64f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 650:	c7 05 0c 0a 00 00 10 	movl   $0xa10,0xa0c
 657:	0a 00 00 
    base.s.size = 0;
 65a:	bf 10 0a 00 00       	mov    $0xa10,%edi
    base.s.ptr = freep = prevp = &base;
 65f:	c7 05 10 0a 00 00 10 	movl   $0xa10,0xa10
 666:	0a 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 669:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 66b:	c7 05 14 0a 00 00 00 	movl   $0x0,0xa14
 672:	00 00 00 
    if(p->s.size >= nunits){
 675:	e9 42 ff ff ff       	jmp    5bc <malloc+0x2c>
 67a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 680:	8b 08                	mov    (%eax),%ecx
 682:	89 0a                	mov    %ecx,(%edx)
 684:	eb b9                	jmp    63f <malloc+0xaf>
