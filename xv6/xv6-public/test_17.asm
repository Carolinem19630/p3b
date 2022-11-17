
_test_17:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
}

void merge_sort(void *array, void *size);

int main(int argc, char *argv[])
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
  12:	e8 6d 06 00 00       	call   684 <getpid>
   4. Merge function
   */


    int size = 11;
    global = (int*)malloc(size * sizeof(int));
  17:	83 ec 0c             	sub    $0xc,%esp
    int size = 11;
  1a:	c7 45 f4 0b 00 00 00 	movl   $0xb,-0xc(%ebp)
    global = (int*)malloc(size * sizeof(int));
  21:	6a 2c                	push   $0x2c
   ppid = getpid();
  23:	a3 28 0f 00 00       	mov    %eax,0xf28
    global = (int*)malloc(size * sizeof(int));
  28:	e8 73 09 00 00       	call   9a0 <malloc>
    for(int i = 0; i < size; i++){
  2d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  30:	83 c4 10             	add    $0x10,%esp
    global = (int*)malloc(size * sizeof(int));
  33:	a3 24 0f 00 00       	mov    %eax,0xf24
    for(int i = 0; i < size; i++){
  38:	85 d2                	test   %edx,%edx
  3a:	7e 1b                	jle    57 <main+0x57>
  3c:	31 c9                	xor    %ecx,%ecx
  3e:	eb 05                	jmp    45 <main+0x45>
        global[i] = size - i - 1;
    }

   int thread_pid = thread_create(merge_sort, global, &size);
  40:	a1 24 0f 00 00       	mov    0xf24,%eax
        global[i] = size - i - 1;
  45:	29 ca                	sub    %ecx,%edx
  47:	83 ea 01             	sub    $0x1,%edx
  4a:	89 14 88             	mov    %edx,(%eax,%ecx,4)
    for(int i = 0; i < size; i++){
  4d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  50:	83 c1 01             	add    $0x1,%ecx
  53:	39 ca                	cmp    %ecx,%edx
  55:	7f e9                	jg     40 <main+0x40>
   int thread_pid = thread_create(merge_sort, global, &size);
  57:	83 ec 04             	sub    $0x4,%esp
  5a:	8d 45 f4             	lea    -0xc(%ebp),%eax
  5d:	50                   	push   %eax
  5e:	ff 35 24 0f 00 00    	push   0xf24
  64:	68 50 02 00 00       	push   $0x250
  69:	e8 c2 04 00 00       	call   530 <thread_create>
   assert(thread_pid > 0);
  6e:	83 c4 10             	add    $0x10,%esp
   int thread_pid = thread_create(merge_sort, global, &size);
  71:	89 c3                	mov    %eax,%ebx
   assert(thread_pid > 0);
  73:	85 c0                	test   %eax,%eax
  75:	0f 8e 84 00 00 00    	jle    ff <main+0xff>

   int join_pid = thread_join();
  7b:	e8 00 05 00 00       	call   580 <thread_join>
   assert(join_pid == thread_pid);
  80:	39 c3                	cmp    %eax,%ebx
  82:	75 35                	jne    b9 <main+0xb9>
   assert(global[0] == 0);
  84:	a1 24 0f 00 00       	mov    0xf24,%eax
  89:	83 38 00             	cmpl   $0x0,(%eax)
  8c:	0f 85 9d 00 00 00    	jne    12f <main+0x12f>
   assert(global[10] == 10); 
  92:	83 78 28 0a          	cmpl   $0xa,0x28(%eax)
  96:	0f 84 80 00 00 00    	je     11c <main+0x11c>
  9c:	6a 35                	push   $0x35
  9e:	68 98 0a 00 00       	push   $0xa98
  a3:	68 a2 0a 00 00       	push   $0xaa2
  a8:	6a 01                	push   $0x1
  aa:	e8 c1 06 00 00       	call   770 <printf>
  af:	83 c4 0c             	add    $0xc,%esp
  b2:	68 00 0b 00 00       	push   $0xb00
  b7:	eb 1b                	jmp    d4 <main+0xd4>
   assert(join_pid == thread_pid);
  b9:	6a 33                	push   $0x33
  bb:	68 98 0a 00 00       	push   $0xa98
  c0:	68 a2 0a 00 00       	push   $0xaa2
  c5:	6a 01                	push   $0x1
  c7:	e8 a4 06 00 00       	call   770 <printf>
  cc:	83 c4 0c             	add    $0xc,%esp
  cf:	68 da 0a 00 00       	push   $0xada
  d4:	68 b9 0a 00 00       	push   $0xab9
  d9:	6a 01                	push   $0x1
  db:	e8 90 06 00 00       	call   770 <printf>
  e0:	5a                   	pop    %edx
  e1:	59                   	pop    %ecx
  e2:	68 cd 0a 00 00       	push   $0xacd
  e7:	6a 01                	push   $0x1
  e9:	e8 82 06 00 00       	call   770 <printf>
  ee:	5b                   	pop    %ebx
  ef:	ff 35 28 0f 00 00    	push   0xf28
  f5:	e8 3a 05 00 00       	call   634 <kill>
  fa:	e8 05 05 00 00       	call   604 <exit>
   assert(thread_pid > 0);
  ff:	6a 30                	push   $0x30
 101:	68 98 0a 00 00       	push   $0xa98
 106:	68 a2 0a 00 00       	push   $0xaa2
 10b:	6a 01                	push   $0x1
 10d:	e8 5e 06 00 00       	call   770 <printf>
 112:	83 c4 0c             	add    $0xc,%esp
 115:	68 aa 0a 00 00       	push   $0xaaa
 11a:	eb b8                	jmp    d4 <main+0xd4>

   printf(1, "TEST PASSED\n");
 11c:	50                   	push   %eax
 11d:	50                   	push   %eax
 11e:	68 11 0b 00 00       	push   $0xb11
 123:	6a 01                	push   $0x1
 125:	e8 46 06 00 00       	call   770 <printf>
   exit();
 12a:	e8 d5 04 00 00       	call   604 <exit>
   assert(global[0] == 0);
 12f:	6a 34                	push   $0x34
 131:	68 98 0a 00 00       	push   $0xa98
 136:	68 a2 0a 00 00       	push   $0xaa2
 13b:	6a 01                	push   $0x1
 13d:	e8 2e 06 00 00       	call   770 <printf>
 142:	83 c4 0c             	add    $0xc,%esp
 145:	68 f1 0a 00 00       	push   $0xaf1
 14a:	eb 88                	jmp    d4 <main+0xd4>
 14c:	66 90                	xchg   %ax,%ax
 14e:	66 90                	xchg   %ax,%ax

00000150 <merge>:
}

void merge(int* array, int* array_right,int size_left, int size_right,int*temp_array){
 150:	55                   	push   %ebp
    int i = 0;
    int j = 0;
    int k = 0;
 151:	31 d2                	xor    %edx,%edx
    int i = 0;
 153:	31 c9                	xor    %ecx,%ecx
void merge(int* array, int* array_right,int size_left, int size_right,int*temp_array){
 155:	89 e5                	mov    %esp,%ebp
 157:	57                   	push   %edi
 158:	56                   	push   %esi
 159:	53                   	push   %ebx
    int j = 0;
 15a:	31 db                	xor    %ebx,%ebx
void merge(int* array, int* array_right,int size_left, int size_right,int*temp_array){
 15c:	83 ec 0c             	sub    $0xc,%esp
 15f:	8b 7d 10             	mov    0x10(%ebp),%edi
    while(i < size_left && j < size_right){
 162:	85 ff                	test   %edi,%edi
 164:	7e 41                	jle    1a7 <merge+0x57>
 166:	8b 45 14             	mov    0x14(%ebp),%eax
 169:	85 c0                	test   %eax,%eax
 16b:	7f 18                	jg     185 <merge+0x35>
 16d:	eb 38                	jmp    1a7 <merge+0x57>
 16f:	90                   	nop
        if(array[i] < array_right[j]){
            temp_array[k] = array[i];
 170:	8b 75 18             	mov    0x18(%ebp),%esi
            i++;
 173:	83 c1 01             	add    $0x1,%ecx
            temp_array[k] = array[i];
 176:	89 04 96             	mov    %eax,(%esi,%edx,4)
        }
        else{
            temp_array[k] = array_right[j];
            j++;
        }
        k++;
 179:	83 c2 01             	add    $0x1,%edx
    while(i < size_left && j < size_right){
 17c:	39 f9                	cmp    %edi,%ecx
 17e:	7d 27                	jge    1a7 <merge+0x57>
 180:	3b 5d 14             	cmp    0x14(%ebp),%ebx
 183:	7d 22                	jge    1a7 <merge+0x57>
        if(array[i] < array_right[j]){
 185:	8b 45 08             	mov    0x8(%ebp),%eax
 188:	8b 75 0c             	mov    0xc(%ebp),%esi
 18b:	8b 04 88             	mov    (%eax,%ecx,4),%eax
 18e:	8b 34 9e             	mov    (%esi,%ebx,4),%esi
 191:	39 f0                	cmp    %esi,%eax
 193:	7c db                	jl     170 <merge+0x20>
            j++;
 195:	89 f0                	mov    %esi,%eax
            temp_array[k] = array[i];
 197:	8b 75 18             	mov    0x18(%ebp),%esi
            j++;
 19a:	83 c3 01             	add    $0x1,%ebx
            temp_array[k] = array[i];
 19d:	89 04 96             	mov    %eax,(%esi,%edx,4)
        k++;
 1a0:	83 c2 01             	add    $0x1,%edx
    while(i < size_left && j < size_right){
 1a3:	39 f9                	cmp    %edi,%ecx
 1a5:	7c d9                	jl     180 <merge+0x30>
    }
    while(i < size_left){
 1a7:	39 cf                	cmp    %ecx,%edi
 1a9:	7e 3e                	jle    1e9 <merge+0x99>
 1ab:	8b 45 08             	mov    0x8(%ebp),%eax
 1ae:	8b 75 18             	mov    0x18(%ebp),%esi
 1b1:	89 55 e8             	mov    %edx,-0x18(%ebp)
 1b4:	8d 04 88             	lea    (%eax,%ecx,4),%eax
 1b7:	8d 34 96             	lea    (%esi,%edx,4),%esi
 1ba:	89 45 f0             	mov    %eax,-0x10(%ebp)
 1bd:	8b 45 08             	mov    0x8(%ebp),%eax
 1c0:	8d 04 b8             	lea    (%eax,%edi,4),%eax
 1c3:	89 45 ec             	mov    %eax,-0x14(%ebp)
 1c6:	8b 45 f0             	mov    -0x10(%ebp),%eax
 1c9:	89 4d f0             	mov    %ecx,-0x10(%ebp)
 1cc:	8b 4d ec             	mov    -0x14(%ebp),%ecx
 1cf:	90                   	nop
        temp_array[k] = array[i];
 1d0:	8b 10                	mov    (%eax),%edx
    while(i < size_left){
 1d2:	83 c0 04             	add    $0x4,%eax
 1d5:	83 c6 04             	add    $0x4,%esi
        temp_array[k] = array[i];
 1d8:	89 56 fc             	mov    %edx,-0x4(%esi)
    while(i < size_left){
 1db:	39 c8                	cmp    %ecx,%eax
 1dd:	75 f1                	jne    1d0 <merge+0x80>
        i++;
        k++;
 1df:	8b 55 e8             	mov    -0x18(%ebp),%edx
 1e2:	8b 4d f0             	mov    -0x10(%ebp),%ecx
 1e5:	01 fa                	add    %edi,%edx
 1e7:	29 ca                	sub    %ecx,%edx
    }
    while(j < size_right){
 1e9:	39 5d 14             	cmp    %ebx,0x14(%ebp)
 1ec:	7e 29                	jle    217 <merge+0xc7>
 1ee:	8b 45 0c             	mov    0xc(%ebp),%eax
 1f1:	8b 4d 14             	mov    0x14(%ebp),%ecx
 1f4:	8d 04 98             	lea    (%eax,%ebx,4),%eax
 1f7:	8b 5d 18             	mov    0x18(%ebp),%ebx
 1fa:	8d 14 93             	lea    (%ebx,%edx,4),%edx
 1fd:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 200:	8d 0c 8b             	lea    (%ebx,%ecx,4),%ecx
 203:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 207:	90                   	nop
        temp_array[k] = array_right[j];
 208:	8b 18                	mov    (%eax),%ebx
    while(j < size_right){
 20a:	83 c0 04             	add    $0x4,%eax
 20d:	83 c2 04             	add    $0x4,%edx
        temp_array[k] = array_right[j];
 210:	89 5a fc             	mov    %ebx,-0x4(%edx)
    while(j < size_right){
 213:	39 c1                	cmp    %eax,%ecx
 215:	75 f1                	jne    208 <merge+0xb8>
        j++;
        k++;
    }
    for(int i = 0; i < size_left + size_right; i++){
 217:	03 7d 14             	add    0x14(%ebp),%edi
 21a:	85 ff                	test   %edi,%edi
 21c:	7e 21                	jle    23f <merge+0xef>
 21e:	8b 45 18             	mov    0x18(%ebp),%eax
 221:	8b 55 08             	mov    0x8(%ebp),%edx
 224:	8d 1c b8             	lea    (%eax,%edi,4),%ebx
 227:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 22e:	66 90                	xchg   %ax,%ax
        array[i] = temp_array[i];
 230:	8b 08                	mov    (%eax),%ecx
    for(int i = 0; i < size_left + size_right; i++){
 232:	83 c0 04             	add    $0x4,%eax
 235:	83 c2 04             	add    $0x4,%edx
        array[i] = temp_array[i];
 238:	89 4a fc             	mov    %ecx,-0x4(%edx)
    for(int i = 0; i < size_left + size_right; i++){
 23b:	39 d8                	cmp    %ebx,%eax
 23d:	75 f1                	jne    230 <merge+0xe0>
    }
   
}
 23f:	83 c4 0c             	add    $0xc,%esp
 242:	5b                   	pop    %ebx
 243:	5e                   	pop    %esi
 244:	5f                   	pop    %edi
 245:	5d                   	pop    %ebp
 246:	c3                   	ret    
 247:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 24e:	66 90                	xchg   %ax,%ax

00000250 <merge_sort>:

void merge_sort(void *arg1, void *arg2) {
 250:	55                   	push   %ebp
 251:	89 e5                	mov    %esp,%ebp
 253:	57                   	push   %edi
 254:	56                   	push   %esi
 255:	53                   	push   %ebx
 256:	83 ec 1c             	sub    $0x1c,%esp
   int *array = (int*)arg1;
   int size = *(int*)arg2;
 259:	8b 45 0c             	mov    0xc(%ebp),%eax
void merge_sort(void *arg1, void *arg2) {
 25c:	8b 75 08             	mov    0x8(%ebp),%esi
   int size = *(int*)arg2;
 25f:	8b 18                	mov    (%eax),%ebx

   if (size==1){
 261:	83 fb 01             	cmp    $0x1,%ebx
 264:	74 6e                	je     2d4 <merge_sort+0x84>
       exit();
   }

   
   int size_left = size/2;
 266:	89 d8                	mov    %ebx,%eax
 268:	b9 02 00 00 00       	mov    $0x2,%ecx
 26d:	99                   	cltd   
 26e:	f7 f9                	idiv   %ecx
   int size_right = size-size/2;
 270:	89 da                	mov    %ebx,%edx
 

//    int nested_join_pid_1 = thread_join();
//    int nested_join_pid_2 = thread_join();

   int* temp_array = malloc(size*sizeof(int));
 272:	c1 e3 02             	shl    $0x2,%ebx
   int size_right = size-size/2;
 275:	29 c2                	sub    %eax,%edx
   int* array_right = (int*)(array + size_left);
 277:	8d 3c 86             	lea    (%esi,%eax,4),%edi
   int size_left = size/2;
 27a:	89 45 e0             	mov    %eax,-0x20(%ebp)
   thread_create(merge_sort, array, &size_left);
 27d:	50                   	push   %eax
 27e:	8d 45 e0             	lea    -0x20(%ebp),%eax
 281:	50                   	push   %eax
 282:	56                   	push   %esi
 283:	68 50 02 00 00       	push   $0x250
   int size_right = size-size/2;
 288:	89 55 e4             	mov    %edx,-0x1c(%ebp)
   thread_create(merge_sort, array, &size_left);
 28b:	e8 a0 02 00 00       	call   530 <thread_create>
   thread_create(merge_sort, array_right, &size_right);
 290:	83 c4 0c             	add    $0xc,%esp
 293:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 296:	50                   	push   %eax
 297:	57                   	push   %edi
 298:	68 50 02 00 00       	push   $0x250
 29d:	e8 8e 02 00 00       	call   530 <thread_create>
   thread_join();
 2a2:	e8 d9 02 00 00       	call   580 <thread_join>
   thread_join();
 2a7:	e8 d4 02 00 00       	call   580 <thread_join>
   int* temp_array = malloc(size*sizeof(int));
 2ac:	89 1c 24             	mov    %ebx,(%esp)
 2af:	e8 ec 06 00 00       	call   9a0 <malloc>

   merge(array,array_right,size_left,size_right,temp_array);
 2b4:	89 04 24             	mov    %eax,(%esp)
   int* temp_array = malloc(size*sizeof(int));
 2b7:	89 c3                	mov    %eax,%ebx
   merge(array,array_right,size_left,size_right,temp_array);
 2b9:	ff 75 e4             	push   -0x1c(%ebp)
 2bc:	ff 75 e0             	push   -0x20(%ebp)
 2bf:	57                   	push   %edi
 2c0:	56                   	push   %esi
 2c1:	e8 8a fe ff ff       	call   150 <merge>

   free(temp_array);
 2c6:	83 c4 14             	add    $0x14,%esp
 2c9:	53                   	push   %ebx
 2ca:	e8 41 06 00 00       	call   910 <free>

//    assert(nested_thread_pid_l == nested_join_pid_1 || nested_thread_pid_l == nested_join_pid_2);
//    assert(nested_thread_pid_r == nested_join_pid_1 || nested_thread_pid_r == nested_join_pid_2);
   exit();
 2cf:	e8 30 03 00 00       	call   604 <exit>
       exit();
 2d4:	e8 2b 03 00 00       	call   604 <exit>
 2d9:	66 90                	xchg   %ax,%ax
 2db:	66 90                	xchg   %ax,%ax
 2dd:	66 90                	xchg   %ax,%ax
 2df:	90                   	nop

000002e0 <strcpy>:
#include "x86.h"
#define PGSIZE 4096

char*
strcpy(char *s, const char *t)
{
 2e0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 2e1:	31 c0                	xor    %eax,%eax
{
 2e3:	89 e5                	mov    %esp,%ebp
 2e5:	53                   	push   %ebx
 2e6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 2e9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 2ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 2f0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 2f4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 2f7:	83 c0 01             	add    $0x1,%eax
 2fa:	84 d2                	test   %dl,%dl
 2fc:	75 f2                	jne    2f0 <strcpy+0x10>
    ;
  return os;
}
 2fe:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 301:	89 c8                	mov    %ecx,%eax
 303:	c9                   	leave  
 304:	c3                   	ret    
 305:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 30c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000310 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 310:	55                   	push   %ebp
 311:	89 e5                	mov    %esp,%ebp
 313:	53                   	push   %ebx
 314:	8b 55 08             	mov    0x8(%ebp),%edx
 317:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 31a:	0f b6 02             	movzbl (%edx),%eax
 31d:	84 c0                	test   %al,%al
 31f:	75 17                	jne    338 <strcmp+0x28>
 321:	eb 3a                	jmp    35d <strcmp+0x4d>
 323:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 327:	90                   	nop
 328:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 32c:	83 c2 01             	add    $0x1,%edx
 32f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 332:	84 c0                	test   %al,%al
 334:	74 1a                	je     350 <strcmp+0x40>
    p++, q++;
 336:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 338:	0f b6 19             	movzbl (%ecx),%ebx
 33b:	38 c3                	cmp    %al,%bl
 33d:	74 e9                	je     328 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 33f:	29 d8                	sub    %ebx,%eax
}
 341:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 344:	c9                   	leave  
 345:	c3                   	ret    
 346:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 34d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 350:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 354:	31 c0                	xor    %eax,%eax
 356:	29 d8                	sub    %ebx,%eax
}
 358:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 35b:	c9                   	leave  
 35c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 35d:	0f b6 19             	movzbl (%ecx),%ebx
 360:	31 c0                	xor    %eax,%eax
 362:	eb db                	jmp    33f <strcmp+0x2f>
 364:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 36b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 36f:	90                   	nop

00000370 <strlen>:

uint
strlen(const char *s)
{
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 376:	80 3a 00             	cmpb   $0x0,(%edx)
 379:	74 15                	je     390 <strlen+0x20>
 37b:	31 c0                	xor    %eax,%eax
 37d:	8d 76 00             	lea    0x0(%esi),%esi
 380:	83 c0 01             	add    $0x1,%eax
 383:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 387:	89 c1                	mov    %eax,%ecx
 389:	75 f5                	jne    380 <strlen+0x10>
    ;
  return n;
}
 38b:	89 c8                	mov    %ecx,%eax
 38d:	5d                   	pop    %ebp
 38e:	c3                   	ret    
 38f:	90                   	nop
  for(n = 0; s[n]; n++)
 390:	31 c9                	xor    %ecx,%ecx
}
 392:	5d                   	pop    %ebp
 393:	89 c8                	mov    %ecx,%eax
 395:	c3                   	ret    
 396:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 39d:	8d 76 00             	lea    0x0(%esi),%esi

000003a0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	57                   	push   %edi
 3a4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 3a7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 3aa:	8b 45 0c             	mov    0xc(%ebp),%eax
 3ad:	89 d7                	mov    %edx,%edi
 3af:	fc                   	cld    
 3b0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 3b2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 3b5:	89 d0                	mov    %edx,%eax
 3b7:	c9                   	leave  
 3b8:	c3                   	ret    
 3b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003c0 <strchr>:

char*
strchr(const char *s, char c)
{
 3c0:	55                   	push   %ebp
 3c1:	89 e5                	mov    %esp,%ebp
 3c3:	8b 45 08             	mov    0x8(%ebp),%eax
 3c6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 3ca:	0f b6 10             	movzbl (%eax),%edx
 3cd:	84 d2                	test   %dl,%dl
 3cf:	75 12                	jne    3e3 <strchr+0x23>
 3d1:	eb 1d                	jmp    3f0 <strchr+0x30>
 3d3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3d7:	90                   	nop
 3d8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 3dc:	83 c0 01             	add    $0x1,%eax
 3df:	84 d2                	test   %dl,%dl
 3e1:	74 0d                	je     3f0 <strchr+0x30>
    if(*s == c)
 3e3:	38 d1                	cmp    %dl,%cl
 3e5:	75 f1                	jne    3d8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 3e7:	5d                   	pop    %ebp
 3e8:	c3                   	ret    
 3e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 3f0:	31 c0                	xor    %eax,%eax
}
 3f2:	5d                   	pop    %ebp
 3f3:	c3                   	ret    
 3f4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3ff:	90                   	nop

00000400 <gets>:

char*
gets(char *buf, int max)
{
 400:	55                   	push   %ebp
 401:	89 e5                	mov    %esp,%ebp
 403:	57                   	push   %edi
 404:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 405:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 408:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 409:	31 db                	xor    %ebx,%ebx
{
 40b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 40e:	eb 27                	jmp    437 <gets+0x37>
    cc = read(0, &c, 1);
 410:	83 ec 04             	sub    $0x4,%esp
 413:	6a 01                	push   $0x1
 415:	57                   	push   %edi
 416:	6a 00                	push   $0x0
 418:	e8 ff 01 00 00       	call   61c <read>
    if(cc < 1)
 41d:	83 c4 10             	add    $0x10,%esp
 420:	85 c0                	test   %eax,%eax
 422:	7e 1d                	jle    441 <gets+0x41>
      break;
    buf[i++] = c;
 424:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 428:	8b 55 08             	mov    0x8(%ebp),%edx
 42b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 42f:	3c 0a                	cmp    $0xa,%al
 431:	74 1d                	je     450 <gets+0x50>
 433:	3c 0d                	cmp    $0xd,%al
 435:	74 19                	je     450 <gets+0x50>
  for(i=0; i+1 < max; ){
 437:	89 de                	mov    %ebx,%esi
 439:	83 c3 01             	add    $0x1,%ebx
 43c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 43f:	7c cf                	jl     410 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 441:	8b 45 08             	mov    0x8(%ebp),%eax
 444:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 448:	8d 65 f4             	lea    -0xc(%ebp),%esp
 44b:	5b                   	pop    %ebx
 44c:	5e                   	pop    %esi
 44d:	5f                   	pop    %edi
 44e:	5d                   	pop    %ebp
 44f:	c3                   	ret    
  buf[i] = '\0';
 450:	8b 45 08             	mov    0x8(%ebp),%eax
 453:	89 de                	mov    %ebx,%esi
 455:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 459:	8d 65 f4             	lea    -0xc(%ebp),%esp
 45c:	5b                   	pop    %ebx
 45d:	5e                   	pop    %esi
 45e:	5f                   	pop    %edi
 45f:	5d                   	pop    %ebp
 460:	c3                   	ret    
 461:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 468:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 46f:	90                   	nop

00000470 <stat>:

int
stat(const char *n, struct stat *st)
{
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	56                   	push   %esi
 474:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 475:	83 ec 08             	sub    $0x8,%esp
 478:	6a 00                	push   $0x0
 47a:	ff 75 08             	push   0x8(%ebp)
 47d:	e8 c2 01 00 00       	call   644 <open>
  if(fd < 0)
 482:	83 c4 10             	add    $0x10,%esp
 485:	85 c0                	test   %eax,%eax
 487:	78 27                	js     4b0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 489:	83 ec 08             	sub    $0x8,%esp
 48c:	ff 75 0c             	push   0xc(%ebp)
 48f:	89 c3                	mov    %eax,%ebx
 491:	50                   	push   %eax
 492:	e8 c5 01 00 00       	call   65c <fstat>
  close(fd);
 497:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 49a:	89 c6                	mov    %eax,%esi
  close(fd);
 49c:	e8 8b 01 00 00       	call   62c <close>
  return r;
 4a1:	83 c4 10             	add    $0x10,%esp
}
 4a4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 4a7:	89 f0                	mov    %esi,%eax
 4a9:	5b                   	pop    %ebx
 4aa:	5e                   	pop    %esi
 4ab:	5d                   	pop    %ebp
 4ac:	c3                   	ret    
 4ad:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 4b0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 4b5:	eb ed                	jmp    4a4 <stat+0x34>
 4b7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4be:	66 90                	xchg   %ax,%ax

000004c0 <atoi>:

int
atoi(const char *s)
{
 4c0:	55                   	push   %ebp
 4c1:	89 e5                	mov    %esp,%ebp
 4c3:	53                   	push   %ebx
 4c4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 4c7:	0f be 02             	movsbl (%edx),%eax
 4ca:	8d 48 d0             	lea    -0x30(%eax),%ecx
 4cd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 4d0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 4d5:	77 1e                	ja     4f5 <atoi+0x35>
 4d7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4de:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 4e0:	83 c2 01             	add    $0x1,%edx
 4e3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 4e6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 4ea:	0f be 02             	movsbl (%edx),%eax
 4ed:	8d 58 d0             	lea    -0x30(%eax),%ebx
 4f0:	80 fb 09             	cmp    $0x9,%bl
 4f3:	76 eb                	jbe    4e0 <atoi+0x20>
  return n;
}
 4f5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4f8:	89 c8                	mov    %ecx,%eax
 4fa:	c9                   	leave  
 4fb:	c3                   	ret    
 4fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000500 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
 503:	57                   	push   %edi
 504:	8b 45 10             	mov    0x10(%ebp),%eax
 507:	8b 55 08             	mov    0x8(%ebp),%edx
 50a:	56                   	push   %esi
 50b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 50e:	85 c0                	test   %eax,%eax
 510:	7e 13                	jle    525 <memmove+0x25>
 512:	01 d0                	add    %edx,%eax
  dst = vdst;
 514:	89 d7                	mov    %edx,%edi
 516:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 51d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 520:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 521:	39 f8                	cmp    %edi,%eax
 523:	75 fb                	jne    520 <memmove+0x20>
  return vdst;
}
 525:	5e                   	pop    %esi
 526:	89 d0                	mov    %edx,%eax
 528:	5f                   	pop    %edi
 529:	5d                   	pop    %ebp
 52a:	c3                   	ret    
 52b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 52f:	90                   	nop

00000530 <thread_create>:

// call malloc() to create a new user stack
// use clone() to create the child thread -> get it running
// returns the newly created PID to the parent && 0 to child if successful
// returns -1 if unsucessful
int thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2) {
 530:	55                   	push   %ebp
 531:	89 e5                	mov    %esp,%ebp
 533:	83 ec 14             	sub    $0x14,%esp

  void *stack;
  if ((stack= malloc(2*PGSIZE)) == 0){
 536:	68 00 20 00 00       	push   $0x2000
 53b:	e8 60 04 00 00       	call   9a0 <malloc>
 540:	83 c4 10             	add    $0x10,%esp
 543:	85 c0                	test   %eax,%eax
 545:	74 25                	je     56c <thread_create+0x3c>
    return -1;
  }

  // stack - page aligned
  if((uint)stack % PGSIZE)
 547:	89 c2                	mov    %eax,%edx
 549:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 54f:	74 07                	je     558 <thread_create+0x28>
    stack = stack + (PGSIZE - (uint)stack % PGSIZE);
 551:	29 d0                	sub    %edx,%eax
 553:	05 00 10 00 00       	add    $0x1000,%eax

  int childPid = clone(start_routine, arg1, arg2, stack);
 558:	50                   	push   %eax
 559:	ff 75 10             	push   0x10(%ebp)
 55c:	ff 75 0c             	push   0xc(%ebp)
 55f:	ff 75 08             	push   0x8(%ebp)
 562:	e8 3d 01 00 00       	call   6a4 <clone>

  return childPid;
 567:	83 c4 10             	add    $0x10,%esp
}
 56a:	c9                   	leave  
 56b:	c3                   	ret    
 56c:	c9                   	leave  
    return -1;
 56d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
 572:	c3                   	ret    
 573:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 57a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000580 <thread_join>:

// call join() and frees the user stack
// returns waited-for PID if successful, -1 otherwise
int thread_join() {
 580:	55                   	push   %ebp
 581:	89 e5                	mov    %esp,%ebp
 583:	53                   	push   %ebx

  void *stack;
  int childpid = join(&stack);
 584:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join() {
 587:	83 ec 20             	sub    $0x20,%esp
  int childpid = join(&stack);
 58a:	50                   	push   %eax
 58b:	e8 1c 01 00 00       	call   6ac <join>
 590:	89 c3                	mov    %eax,%ebx
  free(stack);
 592:	58                   	pop    %eax
 593:	ff 75 f4             	push   -0xc(%ebp)
 596:	e8 75 03 00 00       	call   910 <free>
  return childpid;
}
 59b:	89 d8                	mov    %ebx,%eax
 59d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5a0:	c9                   	leave  
 5a1:	c3                   	ret    
 5a2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000005b0 <lock_init>:
      : "memory"
    );
    return value;
}
 
void lock_init(lock_t *lock) {
 5b0:	55                   	push   %ebp
 5b1:	89 e5                	mov    %esp,%ebp
 5b3:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 5b6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 5bc:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 5c3:	5d                   	pop    %ebp
 5c4:	c3                   	ret    
 5c5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000005d0 <lock_acquire>:

void lock_acquire(lock_t *lock) {
 5d0:	55                   	push   %ebp
 5d1:	89 e5                	mov    %esp,%ebp
 5d3:	8b 55 08             	mov    0x8(%ebp),%edx
    __asm__ volatile("lock; xaddl %0, %1"
 5d6:	8b 02                	mov    (%edx),%eax
 5d8:	f0 0f c1 02          	lock xadd %eax,(%edx)
  int myturn = FetchAndAdd(&lock->ticket, lock->ticket);
  while (lock->turn != myturn)  ; // spin
 5dc:	8b 52 04             	mov    0x4(%edx),%edx
 5df:	90                   	nop
 5e0:	39 c2                	cmp    %eax,%edx
 5e2:	75 fc                	jne    5e0 <lock_acquire+0x10>
}
 5e4:	5d                   	pop    %ebp
 5e5:	c3                   	ret    
 5e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5ed:	8d 76 00             	lea    0x0(%esi),%esi

000005f0 <lock_release>:

void lock_release(lock_t *lock) {
 5f0:	55                   	push   %ebp
 5f1:	89 e5                	mov    %esp,%ebp
 5f3:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 5f6:	83 40 04 01          	addl   $0x1,0x4(%eax)
 5fa:	5d                   	pop    %ebp
 5fb:	c3                   	ret    

000005fc <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 5fc:	b8 01 00 00 00       	mov    $0x1,%eax
 601:	cd 40                	int    $0x40
 603:	c3                   	ret    

00000604 <exit>:
SYSCALL(exit)
 604:	b8 02 00 00 00       	mov    $0x2,%eax
 609:	cd 40                	int    $0x40
 60b:	c3                   	ret    

0000060c <wait>:
SYSCALL(wait)
 60c:	b8 03 00 00 00       	mov    $0x3,%eax
 611:	cd 40                	int    $0x40
 613:	c3                   	ret    

00000614 <pipe>:
SYSCALL(pipe)
 614:	b8 04 00 00 00       	mov    $0x4,%eax
 619:	cd 40                	int    $0x40
 61b:	c3                   	ret    

0000061c <read>:
SYSCALL(read)
 61c:	b8 05 00 00 00       	mov    $0x5,%eax
 621:	cd 40                	int    $0x40
 623:	c3                   	ret    

00000624 <write>:
SYSCALL(write)
 624:	b8 10 00 00 00       	mov    $0x10,%eax
 629:	cd 40                	int    $0x40
 62b:	c3                   	ret    

0000062c <close>:
SYSCALL(close)
 62c:	b8 15 00 00 00       	mov    $0x15,%eax
 631:	cd 40                	int    $0x40
 633:	c3                   	ret    

00000634 <kill>:
SYSCALL(kill)
 634:	b8 06 00 00 00       	mov    $0x6,%eax
 639:	cd 40                	int    $0x40
 63b:	c3                   	ret    

0000063c <exec>:
SYSCALL(exec)
 63c:	b8 07 00 00 00       	mov    $0x7,%eax
 641:	cd 40                	int    $0x40
 643:	c3                   	ret    

00000644 <open>:
SYSCALL(open)
 644:	b8 0f 00 00 00       	mov    $0xf,%eax
 649:	cd 40                	int    $0x40
 64b:	c3                   	ret    

0000064c <mknod>:
SYSCALL(mknod)
 64c:	b8 11 00 00 00       	mov    $0x11,%eax
 651:	cd 40                	int    $0x40
 653:	c3                   	ret    

00000654 <unlink>:
SYSCALL(unlink)
 654:	b8 12 00 00 00       	mov    $0x12,%eax
 659:	cd 40                	int    $0x40
 65b:	c3                   	ret    

0000065c <fstat>:
SYSCALL(fstat)
 65c:	b8 08 00 00 00       	mov    $0x8,%eax
 661:	cd 40                	int    $0x40
 663:	c3                   	ret    

00000664 <link>:
SYSCALL(link)
 664:	b8 13 00 00 00       	mov    $0x13,%eax
 669:	cd 40                	int    $0x40
 66b:	c3                   	ret    

0000066c <mkdir>:
SYSCALL(mkdir)
 66c:	b8 14 00 00 00       	mov    $0x14,%eax
 671:	cd 40                	int    $0x40
 673:	c3                   	ret    

00000674 <chdir>:
SYSCALL(chdir)
 674:	b8 09 00 00 00       	mov    $0x9,%eax
 679:	cd 40                	int    $0x40
 67b:	c3                   	ret    

0000067c <dup>:
SYSCALL(dup)
 67c:	b8 0a 00 00 00       	mov    $0xa,%eax
 681:	cd 40                	int    $0x40
 683:	c3                   	ret    

00000684 <getpid>:
SYSCALL(getpid)
 684:	b8 0b 00 00 00       	mov    $0xb,%eax
 689:	cd 40                	int    $0x40
 68b:	c3                   	ret    

0000068c <sbrk>:
SYSCALL(sbrk)
 68c:	b8 0c 00 00 00       	mov    $0xc,%eax
 691:	cd 40                	int    $0x40
 693:	c3                   	ret    

00000694 <sleep>:
SYSCALL(sleep)
 694:	b8 0d 00 00 00       	mov    $0xd,%eax
 699:	cd 40                	int    $0x40
 69b:	c3                   	ret    

0000069c <uptime>:
SYSCALL(uptime)
 69c:	b8 0e 00 00 00       	mov    $0xe,%eax
 6a1:	cd 40                	int    $0x40
 6a3:	c3                   	ret    

000006a4 <clone>:
SYSCALL(clone)
 6a4:	b8 16 00 00 00       	mov    $0x16,%eax
 6a9:	cd 40                	int    $0x40
 6ab:	c3                   	ret    

000006ac <join>:
SYSCALL(join)
 6ac:	b8 17 00 00 00       	mov    $0x17,%eax
 6b1:	cd 40                	int    $0x40
 6b3:	c3                   	ret    
 6b4:	66 90                	xchg   %ax,%ax
 6b6:	66 90                	xchg   %ax,%ax
 6b8:	66 90                	xchg   %ax,%ax
 6ba:	66 90                	xchg   %ax,%ax
 6bc:	66 90                	xchg   %ax,%ax
 6be:	66 90                	xchg   %ax,%ax

000006c0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 6c0:	55                   	push   %ebp
 6c1:	89 e5                	mov    %esp,%ebp
 6c3:	57                   	push   %edi
 6c4:	56                   	push   %esi
 6c5:	53                   	push   %ebx
 6c6:	83 ec 3c             	sub    $0x3c,%esp
 6c9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 6cc:	89 d1                	mov    %edx,%ecx
{
 6ce:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 6d1:	85 d2                	test   %edx,%edx
 6d3:	0f 89 7f 00 00 00    	jns    758 <printint+0x98>
 6d9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 6dd:	74 79                	je     758 <printint+0x98>
    neg = 1;
 6df:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 6e6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 6e8:	31 db                	xor    %ebx,%ebx
 6ea:	8d 75 d7             	lea    -0x29(%ebp),%esi
 6ed:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 6f0:	89 c8                	mov    %ecx,%eax
 6f2:	31 d2                	xor    %edx,%edx
 6f4:	89 cf                	mov    %ecx,%edi
 6f6:	f7 75 c4             	divl   -0x3c(%ebp)
 6f9:	0f b6 92 80 0b 00 00 	movzbl 0xb80(%edx),%edx
 700:	89 45 c0             	mov    %eax,-0x40(%ebp)
 703:	89 d8                	mov    %ebx,%eax
 705:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 708:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 70b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 70e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 711:	76 dd                	jbe    6f0 <printint+0x30>
  if(neg)
 713:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 716:	85 c9                	test   %ecx,%ecx
 718:	74 0c                	je     726 <printint+0x66>
    buf[i++] = '-';
 71a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 71f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 721:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 726:	8b 7d b8             	mov    -0x48(%ebp),%edi
 729:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 72d:	eb 07                	jmp    736 <printint+0x76>
 72f:	90                   	nop
    putc(fd, buf[i]);
 730:	0f b6 13             	movzbl (%ebx),%edx
 733:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 736:	83 ec 04             	sub    $0x4,%esp
 739:	88 55 d7             	mov    %dl,-0x29(%ebp)
 73c:	6a 01                	push   $0x1
 73e:	56                   	push   %esi
 73f:	57                   	push   %edi
 740:	e8 df fe ff ff       	call   624 <write>
  while(--i >= 0)
 745:	83 c4 10             	add    $0x10,%esp
 748:	39 de                	cmp    %ebx,%esi
 74a:	75 e4                	jne    730 <printint+0x70>
}
 74c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 74f:	5b                   	pop    %ebx
 750:	5e                   	pop    %esi
 751:	5f                   	pop    %edi
 752:	5d                   	pop    %ebp
 753:	c3                   	ret    
 754:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 758:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 75f:	eb 87                	jmp    6e8 <printint+0x28>
 761:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 768:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 76f:	90                   	nop

00000770 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 770:	55                   	push   %ebp
 771:	89 e5                	mov    %esp,%ebp
 773:	57                   	push   %edi
 774:	56                   	push   %esi
 775:	53                   	push   %ebx
 776:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 779:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 77c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 77f:	0f b6 13             	movzbl (%ebx),%edx
 782:	84 d2                	test   %dl,%dl
 784:	74 6a                	je     7f0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 786:	8d 45 10             	lea    0x10(%ebp),%eax
 789:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 78c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 78f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 791:	89 45 d0             	mov    %eax,-0x30(%ebp)
 794:	eb 36                	jmp    7cc <printf+0x5c>
 796:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 79d:	8d 76 00             	lea    0x0(%esi),%esi
 7a0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 7a3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 7a8:	83 f8 25             	cmp    $0x25,%eax
 7ab:	74 15                	je     7c2 <printf+0x52>
  write(fd, &c, 1);
 7ad:	83 ec 04             	sub    $0x4,%esp
 7b0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 7b3:	6a 01                	push   $0x1
 7b5:	57                   	push   %edi
 7b6:	56                   	push   %esi
 7b7:	e8 68 fe ff ff       	call   624 <write>
 7bc:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 7bf:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 7c2:	0f b6 13             	movzbl (%ebx),%edx
 7c5:	83 c3 01             	add    $0x1,%ebx
 7c8:	84 d2                	test   %dl,%dl
 7ca:	74 24                	je     7f0 <printf+0x80>
    c = fmt[i] & 0xff;
 7cc:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 7cf:	85 c9                	test   %ecx,%ecx
 7d1:	74 cd                	je     7a0 <printf+0x30>
      }
    } else if(state == '%'){
 7d3:	83 f9 25             	cmp    $0x25,%ecx
 7d6:	75 ea                	jne    7c2 <printf+0x52>
      if(c == 'd'){
 7d8:	83 f8 25             	cmp    $0x25,%eax
 7db:	0f 84 07 01 00 00    	je     8e8 <printf+0x178>
 7e1:	83 e8 63             	sub    $0x63,%eax
 7e4:	83 f8 15             	cmp    $0x15,%eax
 7e7:	77 17                	ja     800 <printf+0x90>
 7e9:	ff 24 85 28 0b 00 00 	jmp    *0xb28(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 7f0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7f3:	5b                   	pop    %ebx
 7f4:	5e                   	pop    %esi
 7f5:	5f                   	pop    %edi
 7f6:	5d                   	pop    %ebp
 7f7:	c3                   	ret    
 7f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7ff:	90                   	nop
  write(fd, &c, 1);
 800:	83 ec 04             	sub    $0x4,%esp
 803:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 806:	6a 01                	push   $0x1
 808:	57                   	push   %edi
 809:	56                   	push   %esi
 80a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 80e:	e8 11 fe ff ff       	call   624 <write>
        putc(fd, c);
 813:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 817:	83 c4 0c             	add    $0xc,%esp
 81a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 81d:	6a 01                	push   $0x1
 81f:	57                   	push   %edi
 820:	56                   	push   %esi
 821:	e8 fe fd ff ff       	call   624 <write>
        putc(fd, c);
 826:	83 c4 10             	add    $0x10,%esp
      state = 0;
 829:	31 c9                	xor    %ecx,%ecx
 82b:	eb 95                	jmp    7c2 <printf+0x52>
 82d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 830:	83 ec 0c             	sub    $0xc,%esp
 833:	b9 10 00 00 00       	mov    $0x10,%ecx
 838:	6a 00                	push   $0x0
 83a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 83d:	8b 10                	mov    (%eax),%edx
 83f:	89 f0                	mov    %esi,%eax
 841:	e8 7a fe ff ff       	call   6c0 <printint>
        ap++;
 846:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 84a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 84d:	31 c9                	xor    %ecx,%ecx
 84f:	e9 6e ff ff ff       	jmp    7c2 <printf+0x52>
 854:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 858:	8b 45 d0             	mov    -0x30(%ebp),%eax
 85b:	8b 10                	mov    (%eax),%edx
        ap++;
 85d:	83 c0 04             	add    $0x4,%eax
 860:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 863:	85 d2                	test   %edx,%edx
 865:	0f 84 8d 00 00 00    	je     8f8 <printf+0x188>
        while(*s != 0){
 86b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 86e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 870:	84 c0                	test   %al,%al
 872:	0f 84 4a ff ff ff    	je     7c2 <printf+0x52>
 878:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 87b:	89 d3                	mov    %edx,%ebx
 87d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 880:	83 ec 04             	sub    $0x4,%esp
          s++;
 883:	83 c3 01             	add    $0x1,%ebx
 886:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 889:	6a 01                	push   $0x1
 88b:	57                   	push   %edi
 88c:	56                   	push   %esi
 88d:	e8 92 fd ff ff       	call   624 <write>
        while(*s != 0){
 892:	0f b6 03             	movzbl (%ebx),%eax
 895:	83 c4 10             	add    $0x10,%esp
 898:	84 c0                	test   %al,%al
 89a:	75 e4                	jne    880 <printf+0x110>
      state = 0;
 89c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 89f:	31 c9                	xor    %ecx,%ecx
 8a1:	e9 1c ff ff ff       	jmp    7c2 <printf+0x52>
 8a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8ad:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 8b0:	83 ec 0c             	sub    $0xc,%esp
 8b3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 8b8:	6a 01                	push   $0x1
 8ba:	e9 7b ff ff ff       	jmp    83a <printf+0xca>
 8bf:	90                   	nop
        putc(fd, *ap);
 8c0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 8c3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 8c6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 8c8:	6a 01                	push   $0x1
 8ca:	57                   	push   %edi
 8cb:	56                   	push   %esi
        putc(fd, *ap);
 8cc:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 8cf:	e8 50 fd ff ff       	call   624 <write>
        ap++;
 8d4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 8d8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8db:	31 c9                	xor    %ecx,%ecx
 8dd:	e9 e0 fe ff ff       	jmp    7c2 <printf+0x52>
 8e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 8e8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 8eb:	83 ec 04             	sub    $0x4,%esp
 8ee:	e9 2a ff ff ff       	jmp    81d <printf+0xad>
 8f3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8f7:	90                   	nop
          s = "(null)";
 8f8:	ba 1e 0b 00 00       	mov    $0xb1e,%edx
        while(*s != 0){
 8fd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 900:	b8 28 00 00 00       	mov    $0x28,%eax
 905:	89 d3                	mov    %edx,%ebx
 907:	e9 74 ff ff ff       	jmp    880 <printf+0x110>
 90c:	66 90                	xchg   %ax,%ax
 90e:	66 90                	xchg   %ax,%ax

00000910 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 910:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 911:	a1 2c 0f 00 00       	mov    0xf2c,%eax
{
 916:	89 e5                	mov    %esp,%ebp
 918:	57                   	push   %edi
 919:	56                   	push   %esi
 91a:	53                   	push   %ebx
 91b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 91e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 921:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 928:	89 c2                	mov    %eax,%edx
 92a:	8b 00                	mov    (%eax),%eax
 92c:	39 ca                	cmp    %ecx,%edx
 92e:	73 30                	jae    960 <free+0x50>
 930:	39 c1                	cmp    %eax,%ecx
 932:	72 04                	jb     938 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 934:	39 c2                	cmp    %eax,%edx
 936:	72 f0                	jb     928 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 938:	8b 73 fc             	mov    -0x4(%ebx),%esi
 93b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 93e:	39 f8                	cmp    %edi,%eax
 940:	74 30                	je     972 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 942:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 945:	8b 42 04             	mov    0x4(%edx),%eax
 948:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 94b:	39 f1                	cmp    %esi,%ecx
 94d:	74 3a                	je     989 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 94f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 951:	5b                   	pop    %ebx
  freep = p;
 952:	89 15 2c 0f 00 00    	mov    %edx,0xf2c
}
 958:	5e                   	pop    %esi
 959:	5f                   	pop    %edi
 95a:	5d                   	pop    %ebp
 95b:	c3                   	ret    
 95c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 960:	39 c2                	cmp    %eax,%edx
 962:	72 c4                	jb     928 <free+0x18>
 964:	39 c1                	cmp    %eax,%ecx
 966:	73 c0                	jae    928 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 968:	8b 73 fc             	mov    -0x4(%ebx),%esi
 96b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 96e:	39 f8                	cmp    %edi,%eax
 970:	75 d0                	jne    942 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 972:	03 70 04             	add    0x4(%eax),%esi
 975:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 978:	8b 02                	mov    (%edx),%eax
 97a:	8b 00                	mov    (%eax),%eax
 97c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 97f:	8b 42 04             	mov    0x4(%edx),%eax
 982:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 985:	39 f1                	cmp    %esi,%ecx
 987:	75 c6                	jne    94f <free+0x3f>
    p->s.size += bp->s.size;
 989:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 98c:	89 15 2c 0f 00 00    	mov    %edx,0xf2c
    p->s.size += bp->s.size;
 992:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 995:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 998:	89 0a                	mov    %ecx,(%edx)
}
 99a:	5b                   	pop    %ebx
 99b:	5e                   	pop    %esi
 99c:	5f                   	pop    %edi
 99d:	5d                   	pop    %ebp
 99e:	c3                   	ret    
 99f:	90                   	nop

000009a0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 9a0:	55                   	push   %ebp
 9a1:	89 e5                	mov    %esp,%ebp
 9a3:	57                   	push   %edi
 9a4:	56                   	push   %esi
 9a5:	53                   	push   %ebx
 9a6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9a9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 9ac:	8b 3d 2c 0f 00 00    	mov    0xf2c,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9b2:	8d 70 07             	lea    0x7(%eax),%esi
 9b5:	c1 ee 03             	shr    $0x3,%esi
 9b8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 9bb:	85 ff                	test   %edi,%edi
 9bd:	0f 84 9d 00 00 00    	je     a60 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9c3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 9c5:	8b 4a 04             	mov    0x4(%edx),%ecx
 9c8:	39 f1                	cmp    %esi,%ecx
 9ca:	73 6a                	jae    a36 <malloc+0x96>
 9cc:	bb 00 10 00 00       	mov    $0x1000,%ebx
 9d1:	39 de                	cmp    %ebx,%esi
 9d3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 9d6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 9dd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 9e0:	eb 17                	jmp    9f9 <malloc+0x59>
 9e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9e8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 9ea:	8b 48 04             	mov    0x4(%eax),%ecx
 9ed:	39 f1                	cmp    %esi,%ecx
 9ef:	73 4f                	jae    a40 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 9f1:	8b 3d 2c 0f 00 00    	mov    0xf2c,%edi
 9f7:	89 c2                	mov    %eax,%edx
 9f9:	39 d7                	cmp    %edx,%edi
 9fb:	75 eb                	jne    9e8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 9fd:	83 ec 0c             	sub    $0xc,%esp
 a00:	ff 75 e4             	push   -0x1c(%ebp)
 a03:	e8 84 fc ff ff       	call   68c <sbrk>
  if(p == (char*)-1)
 a08:	83 c4 10             	add    $0x10,%esp
 a0b:	83 f8 ff             	cmp    $0xffffffff,%eax
 a0e:	74 1c                	je     a2c <malloc+0x8c>
  hp->s.size = nu;
 a10:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 a13:	83 ec 0c             	sub    $0xc,%esp
 a16:	83 c0 08             	add    $0x8,%eax
 a19:	50                   	push   %eax
 a1a:	e8 f1 fe ff ff       	call   910 <free>
  return freep;
 a1f:	8b 15 2c 0f 00 00    	mov    0xf2c,%edx
      if((p = morecore(nunits)) == 0)
 a25:	83 c4 10             	add    $0x10,%esp
 a28:	85 d2                	test   %edx,%edx
 a2a:	75 bc                	jne    9e8 <malloc+0x48>
        return 0;
  }
}
 a2c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 a2f:	31 c0                	xor    %eax,%eax
}
 a31:	5b                   	pop    %ebx
 a32:	5e                   	pop    %esi
 a33:	5f                   	pop    %edi
 a34:	5d                   	pop    %ebp
 a35:	c3                   	ret    
    if(p->s.size >= nunits){
 a36:	89 d0                	mov    %edx,%eax
 a38:	89 fa                	mov    %edi,%edx
 a3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 a40:	39 ce                	cmp    %ecx,%esi
 a42:	74 4c                	je     a90 <malloc+0xf0>
        p->s.size -= nunits;
 a44:	29 f1                	sub    %esi,%ecx
 a46:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 a49:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 a4c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 a4f:	89 15 2c 0f 00 00    	mov    %edx,0xf2c
}
 a55:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 a58:	83 c0 08             	add    $0x8,%eax
}
 a5b:	5b                   	pop    %ebx
 a5c:	5e                   	pop    %esi
 a5d:	5f                   	pop    %edi
 a5e:	5d                   	pop    %ebp
 a5f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 a60:	c7 05 2c 0f 00 00 30 	movl   $0xf30,0xf2c
 a67:	0f 00 00 
    base.s.size = 0;
 a6a:	bf 30 0f 00 00       	mov    $0xf30,%edi
    base.s.ptr = freep = prevp = &base;
 a6f:	c7 05 30 0f 00 00 30 	movl   $0xf30,0xf30
 a76:	0f 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a79:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 a7b:	c7 05 34 0f 00 00 00 	movl   $0x0,0xf34
 a82:	00 00 00 
    if(p->s.size >= nunits){
 a85:	e9 42 ff ff ff       	jmp    9cc <malloc+0x2c>
 a8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 a90:	8b 08                	mov    (%eax),%ecx
 a92:	89 0a                	mov    %ecx,(%edx)
 a94:	eb b9                	jmp    a4f <malloc+0xaf>
