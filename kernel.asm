
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	8b013103          	ld	sp,-1872(sp) # 8000b8b0 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	434060ef          	jal	ra,80006450 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
//Kod preuzet sa vezbi
.global _ZN5Riscv14supervisorTrapEv
.extern _ZN5Riscv20handleSupervisorTrapEv
.align 4
_ZN5Riscv14supervisorTrapEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index,0, 1, 2, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)
    call _ZN5Riscv20handleSupervisorTrapEv
    80001084:	4f8010ef          	jal	ra,8000257c <_ZN5Riscv20handleSupervisorTrapEv>
    .irp index,0, 1, 2, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001088:	00013003          	ld	zero,0(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    80001090:	01013103          	ld	sp,16(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    80001104:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256
    8000110c:	10200073          	sret

0000000080001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
//Kod preuzet sa vezbi
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd sp, 0*8(a0)
    80001110:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 1*8(a0)
    80001114:	00153423          	sd	ra,8(a0)

    ld sp, 0*8(a1)
    80001118:	0005b103          	ld	sp,0(a1)
    ld ra, 1*8(a1)
    8000111c:	0085b083          	ld	ra,8(a1)

    80001120:	00008067          	ret

0000000080001124 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001124:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001128:	00b29a63          	bne	t0,a1,8000113c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000112c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001130:	fe029ae3          	bnez	t0,80001124 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001134:	00000513          	li	a0,0
    jr ra                  # Return.
    80001138:	00008067          	ret

000000008000113c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000113c:	00100513          	li	a0,1
    80001140:	00008067          	ret

0000000080001144 <_Z9mem_allocm>:
#include "../h/syscall_c.h"
#include "../h/Riscv.hpp"
#include "../h/MySemaphore.hpp"

//MEMORY
void * mem_alloc(size_t size){
    80001144:	ff010113          	addi	sp,sp,-16
    80001148:	00813423          	sd	s0,8(sp)
    8000114c:	01010413          	addi	s0,sp,16
    if(size<=0) return nullptr;
    80001150:	02050063          	beqz	a0,80001170 <_Z9mem_allocm+0x2c>
    __asm__ volatile("mv a1, %0" : : "r"(size));
    80001154:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x01");
    80001158:	00100513          	li	a0,1
    __asm__ volatile("ecall");
    8000115c:	00000073          	ecall
    void* returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    80001160:	00050513          	mv	a0,a0
    return returnValue;
}
    80001164:	00813403          	ld	s0,8(sp)
    80001168:	01010113          	addi	sp,sp,16
    8000116c:	00008067          	ret
    if(size<=0) return nullptr;
    80001170:	00000513          	li	a0,0
    80001174:	ff1ff06f          	j	80001164 <_Z9mem_allocm+0x20>

0000000080001178 <_Z8mem_freePv>:

int mem_free(void* free){
    80001178:	ff010113          	addi	sp,sp,-16
    8000117c:	00813423          	sd	s0,8(sp)
    80001180:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r"((uint64)free));
    80001184:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x02");
    80001188:	00200513          	li	a0,2
    __asm__ volatile("ecall");
    8000118c:	00000073          	ecall
    int returnValue=0;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    80001190:	00050513          	mv	a0,a0
    return returnValue;
}
    80001194:	0005051b          	sext.w	a0,a0
    80001198:	00813403          	ld	s0,8(sp)
    8000119c:	01010113          	addi	sp,sp,16
    800011a0:	00008067          	ret

00000000800011a4 <_Z18mem_get_free_spacev>:

size_t mem_get_free_space(){
    800011a4:	ff010113          	addi	sp,sp,-16
    800011a8:	00813423          	sd	s0,8(sp)
    800011ac:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x03");
    800011b0:	00300513          	li	a0,3
    __asm__ volatile("ecall");
    800011b4:	00000073          	ecall
    int returnValue=0;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    800011b8:	00050513          	mv	a0,a0
    return (size_t)returnValue;
}
    800011bc:	0005051b          	sext.w	a0,a0
    800011c0:	00813403          	ld	s0,8(sp)
    800011c4:	01010113          	addi	sp,sp,16
    800011c8:	00008067          	ret

00000000800011cc <_Z26mem_get_largest_free_blockv>:

size_t mem_get_largest_free_block(){
    800011cc:	ff010113          	addi	sp,sp,-16
    800011d0:	00813423          	sd	s0,8(sp)
    800011d4:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x04");
    800011d8:	00400513          	li	a0,4
    __asm__ volatile("ecall");
    800011dc:	00000073          	ecall
    int returnValue=0;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    800011e0:	00050513          	mv	a0,a0
    return (size_t)returnValue;
}
    800011e4:	0005051b          	sext.w	a0,a0
    800011e8:	00813403          	ld	s0,8(sp)
    800011ec:	01010113          	addi	sp,sp,16
    800011f0:	00008067          	ret

00000000800011f4 <_Z13thread_createPP3TCBPFvPvES2_>:

//THREADS
int thread_create (thread_t* handle,void(*start_routine)(void*),void* arg){
    800011f4:	fd010113          	addi	sp,sp,-48
    800011f8:	02113423          	sd	ra,40(sp)
    800011fc:	02813023          	sd	s0,32(sp)
    80001200:	00913c23          	sd	s1,24(sp)
    80001204:	01213823          	sd	s2,16(sp)
    80001208:	01313423          	sd	s3,8(sp)
    8000120c:	03010413          	addi	s0,sp,48
    80001210:	00050493          	mv	s1,a0
    80001214:	00058913          	mv	s2,a1
    80001218:	00060993          	mv	s3,a2
    void* stack = new uint64[DEFAULT_STACK_SIZE];
    8000121c:	00008537          	lui	a0,0x8
    80001220:	00000097          	auipc	ra,0x0
    80001224:	468080e7          	jalr	1128(ra) # 80001688 <_Znam>
    if(stack==nullptr)  return -1;
    80001228:	04050063          	beqz	a0,80001268 <_Z13thread_createPP3TCBPFvPvES2_+0x74>
    __asm__ volatile("mv a3, %0" : : "r"(arg));
    8000122c:	00098693          	mv	a3,s3
    __asm__ volatile("mv a4, %0" : : "r"(stack));
    80001230:	00050713          	mv	a4,a0
    __asm__ volatile("mv a2, %0" : : "r"(start_routine));
    80001234:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" : : "r"(handle));
    80001238:	00048593          	mv	a1,s1
    __asm__ volatile("li a0, 0x11");
    8000123c:	01100513          	li	a0,17
    __asm__ volatile("ecall");
    80001240:	00000073          	ecall
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    80001244:	00050513          	mv	a0,a0
    return (int) ret;
    80001248:	0005051b          	sext.w	a0,a0
}
    8000124c:	02813083          	ld	ra,40(sp)
    80001250:	02013403          	ld	s0,32(sp)
    80001254:	01813483          	ld	s1,24(sp)
    80001258:	01013903          	ld	s2,16(sp)
    8000125c:	00813983          	ld	s3,8(sp)
    80001260:	03010113          	addi	sp,sp,48
    80001264:	00008067          	ret
    if(stack==nullptr)  return -1;
    80001268:	fff00513          	li	a0,-1
    8000126c:	fe1ff06f          	j	8000124c <_Z13thread_createPP3TCBPFvPvES2_+0x58>

0000000080001270 <_Z11thread_exitv>:

int thread_exit (){
    80001270:	ff010113          	addi	sp,sp,-16
    80001274:	00813423          	sd	s0,8(sp)
    80001278:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    8000127c:	01200513          	li	a0,18
    __asm__ volatile("ecall");
    80001280:	00000073          	ecall
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    80001284:	00050513          	mv	a0,a0
    return (int) ret;
}
    80001288:	0005051b          	sext.w	a0,a0
    8000128c:	00813403          	ld	s0,8(sp)
    80001290:	01010113          	addi	sp,sp,16
    80001294:	00008067          	ret

0000000080001298 <_Z15thread_dispatchv>:

void thread_dispatch (){
    80001298:	ff010113          	addi	sp,sp,-16
    8000129c:	00813423          	sd	s0,8(sp)
    800012a0:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    800012a4:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    800012a8:	00000073          	ecall
}
    800012ac:	00813403          	ld	s0,8(sp)
    800012b0:	01010113          	addi	sp,sp,16
    800012b4:	00008067          	ret

00000000800012b8 <_Z8sem_openPP11MySemaphorej>:

// SEMAPHORE
int sem_open (sem_t* handle, unsigned init){
    800012b8:	ff010113          	addi	sp,sp,-16
    800012bc:	00813423          	sd	s0,8(sp)
    800012c0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" : : "r"(init));
    800012c4:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r"(handle));
    800012c8:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    800012cc:	02100513          	li	a0,33
    __asm__ volatile("ecall");
    800012d0:	00000073          	ecall
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    800012d4:	00050513          	mv	a0,a0
    return (int) ret;
}
    800012d8:	0005051b          	sext.w	a0,a0
    800012dc:	00813403          	ld	s0,8(sp)
    800012e0:	01010113          	addi	sp,sp,16
    800012e4:	00008067          	ret

00000000800012e8 <_Z9sem_closeP11MySemaphore>:

int sem_close (sem_t handle){
    800012e8:	ff010113          	addi	sp,sp,-16
    800012ec:	00813423          	sd	s0,8(sp)
    800012f0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r"(handle));
    800012f4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    800012f8:	02200513          	li	a0,34
    __asm__ volatile("ecall");
    800012fc:	00000073          	ecall
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    80001300:	00050513          	mv	a0,a0
    return (int) ret;
}
    80001304:	0005051b          	sext.w	a0,a0
    80001308:	00813403          	ld	s0,8(sp)
    8000130c:	01010113          	addi	sp,sp,16
    80001310:	00008067          	ret

0000000080001314 <_Z8sem_waitP11MySemaphore>:

int sem_wait (sem_t id){
    80001314:	ff010113          	addi	sp,sp,-16
    80001318:	00813423          	sd	s0,8(sp)
    8000131c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r"(id));
    80001320:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    80001324:	02300513          	li	a0,35
    __asm__ volatile("ecall");
    80001328:	00000073          	ecall
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    8000132c:	00050513          	mv	a0,a0
    return (int) ret;
}
    80001330:	0005051b          	sext.w	a0,a0
    80001334:	00813403          	ld	s0,8(sp)
    80001338:	01010113          	addi	sp,sp,16
    8000133c:	00008067          	ret

0000000080001340 <_Z10sem_signalP11MySemaphore>:

int sem_signal (sem_t id){
    80001340:	ff010113          	addi	sp,sp,-16
    80001344:	00813423          	sd	s0,8(sp)
    80001348:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r"(id));
    8000134c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    80001350:	02400513          	li	a0,36
    __asm__ volatile("ecall");
    80001354:	00000073          	ecall
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    80001358:	00050513          	mv	a0,a0
    return (int) ret;
}
    8000135c:	0005051b          	sext.w	a0,a0
    80001360:	00813403          	ld	s0,8(sp)
    80001364:	01010113          	addi	sp,sp,16
    80001368:	00008067          	ret

000000008000136c <_Z10time_sleepm>:

//SLEEP

int time_sleep(time_t sleepTime){
    8000136c:	ff010113          	addi	sp,sp,-16
    80001370:	00813423          	sd	s0,8(sp)
    80001374:	01010413          	addi	s0,sp,16
    if(sleepTime<0) return -1;
    if(sleepTime==0) return 0;
    80001378:	02050263          	beqz	a0,8000139c <_Z10time_sleepm+0x30>
    __asm__ volatile("mv a1, %0" : : "r"(sleepTime));
    8000137c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    80001380:	03100513          	li	a0,49
    __asm__ volatile("ecall");
    80001384:	00000073          	ecall
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    80001388:	00050513          	mv	a0,a0
    return (int) ret;
    8000138c:	0005051b          	sext.w	a0,a0
}
    80001390:	00813403          	ld	s0,8(sp)
    80001394:	01010113          	addi	sp,sp,16
    80001398:	00008067          	ret
    if(sleepTime==0) return 0;
    8000139c:	00000513          	li	a0,0
    800013a0:	ff1ff06f          	j	80001390 <_Z10time_sleepm+0x24>

00000000800013a4 <_Z4putcc>:

//CONSOLE

void putc(char c){
    800013a4:	ff010113          	addi	sp,sp,-16
    800013a8:	00813423          	sd	s0,8(sp)
    800013ac:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r"((uint64)c));
    800013b0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    800013b4:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    800013b8:	00000073          	ecall
}
    800013bc:	00813403          	ld	s0,8(sp)
    800013c0:	01010113          	addi	sp,sp,16
    800013c4:	00008067          	ret

00000000800013c8 <_Z4getcv>:

char getc(){
    800013c8:	ff010113          	addi	sp,sp,-16
    800013cc:	00813423          	sd	s0,8(sp)
    800013d0:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    800013d4:	04100513          	li	a0,65
    __asm__ volatile("ecall");
    800013d8:	00000073          	ecall
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    800013dc:	00050513          	mv	a0,a0
    return (char) ret;
}
    800013e0:	0ff57513          	andi	a0,a0,255
    800013e4:	00813403          	ld	s0,8(sp)
    800013e8:	01010113          	addi	sp,sp,16
    800013ec:	00008067          	ret

00000000800013f0 <_ZN9MyConsole13initMyConsoleEv>:

BoundedBuffer* MyConsole::inputBuffer = nullptr;
BoundedBuffer* MyConsole::outputBuffer = nullptr;
TCB*  MyConsole::writeThr = nullptr;

void MyConsole::initMyConsole() {
    800013f0:	fe010113          	addi	sp,sp,-32
    800013f4:	00113c23          	sd	ra,24(sp)
    800013f8:	00813823          	sd	s0,16(sp)
    800013fc:	00913423          	sd	s1,8(sp)
    80001400:	01213023          	sd	s2,0(sp)
    80001404:	02010413          	addi	s0,sp,32
    MyConsole::inputBuffer=new BoundedBuffer(100);
    80001408:	04000513          	li	a0,64
    8000140c:	00000097          	auipc	ra,0x0
    80001410:	22c080e7          	jalr	556(ra) # 80001638 <_Znwm>
    80001414:	00050493          	mv	s1,a0
    80001418:	06400593          	li	a1,100
    8000141c:	00001097          	auipc	ra,0x1
    80001420:	ca4080e7          	jalr	-860(ra) # 800020c0 <_ZN13BoundedBufferC1Em>
    80001424:	0000a797          	auipc	a5,0xa
    80001428:	4e97be23          	sd	s1,1276(a5) # 8000b920 <_ZN9MyConsole11inputBufferE>
    MyConsole::outputBuffer=new BoundedBuffer(100);
    8000142c:	04000513          	li	a0,64
    80001430:	00000097          	auipc	ra,0x0
    80001434:	208080e7          	jalr	520(ra) # 80001638 <_Znwm>
    80001438:	00050493          	mv	s1,a0
    8000143c:	06400593          	li	a1,100
    80001440:	00001097          	auipc	ra,0x1
    80001444:	c80080e7          	jalr	-896(ra) # 800020c0 <_ZN13BoundedBufferC1Em>
    80001448:	0000a797          	auipc	a5,0xa
    8000144c:	4e97b023          	sd	s1,1248(a5) # 8000b928 <_ZN9MyConsole12outputBufferE>
}
    80001450:	01813083          	ld	ra,24(sp)
    80001454:	01013403          	ld	s0,16(sp)
    80001458:	00813483          	ld	s1,8(sp)
    8000145c:	00013903          	ld	s2,0(sp)
    80001460:	02010113          	addi	sp,sp,32
    80001464:	00008067          	ret
    80001468:	00050913          	mv	s2,a0
    MyConsole::inputBuffer=new BoundedBuffer(100);
    8000146c:	00048513          	mv	a0,s1
    80001470:	00000097          	auipc	ra,0x0
    80001474:	1f0080e7          	jalr	496(ra) # 80001660 <_ZdlPv>
    80001478:	00090513          	mv	a0,s2
    8000147c:	0000b097          	auipc	ra,0xb
    80001480:	60c080e7          	jalr	1548(ra) # 8000ca88 <_Unwind_Resume>
    80001484:	00050913          	mv	s2,a0
    MyConsole::outputBuffer=new BoundedBuffer(100);
    80001488:	00048513          	mv	a0,s1
    8000148c:	00000097          	auipc	ra,0x0
    80001490:	1d4080e7          	jalr	468(ra) # 80001660 <_ZdlPv>
    80001494:	00090513          	mv	a0,s2
    80001498:	0000b097          	auipc	ra,0xb
    8000149c:	5f0080e7          	jalr	1520(ra) # 8000ca88 <_Unwind_Resume>

00000000800014a0 <_ZN9MyConsole12flushConsoleEv>:

void MyConsole::flushConsole() {
    while (!outputBuffer->isEmpty()) {
    800014a0:	0000a797          	auipc	a5,0xa
    800014a4:	4887b783          	ld	a5,1160(a5) # 8000b928 <_ZN9MyConsole12outputBufferE>
    char get();

    void put(char c);

    bool isEmpty() const{
        return count==0;
    800014a8:	0107b783          	ld	a5,16(a5)
    800014ac:	02078e63          	beqz	a5,800014e8 <_ZN9MyConsole12flushConsoleEv+0x48>
void MyConsole::flushConsole() {
    800014b0:	ff010113          	addi	sp,sp,-16
    800014b4:	00113423          	sd	ra,8(sp)
    800014b8:	00813023          	sd	s0,0(sp)
    800014bc:	01010413          	addi	s0,sp,16
        thread_dispatch();
    800014c0:	00000097          	auipc	ra,0x0
    800014c4:	dd8080e7          	jalr	-552(ra) # 80001298 <_Z15thread_dispatchv>
    while (!outputBuffer->isEmpty()) {
    800014c8:	0000a797          	auipc	a5,0xa
    800014cc:	4607b783          	ld	a5,1120(a5) # 8000b928 <_ZN9MyConsole12outputBufferE>
    800014d0:	0107b783          	ld	a5,16(a5)
    800014d4:	fe0796e3          	bnez	a5,800014c0 <_ZN9MyConsole12flushConsoleEv+0x20>
    }
}
    800014d8:	00813083          	ld	ra,8(sp)
    800014dc:	00013403          	ld	s0,0(sp)
    800014e0:	01010113          	addi	sp,sp,16
    800014e4:	00008067          	ret
    800014e8:	00008067          	ret

00000000800014ec <_ZN9MyConsole5myPutEc>:

void MyConsole::myPut(char c) {
    800014ec:	ff010113          	addi	sp,sp,-16
    800014f0:	00113423          	sd	ra,8(sp)
    800014f4:	00813023          	sd	s0,0(sp)
    800014f8:	01010413          	addi	s0,sp,16
    800014fc:	00050593          	mv	a1,a0
    outputBuffer->put(c);
    80001500:	0000a517          	auipc	a0,0xa
    80001504:	42853503          	ld	a0,1064(a0) # 8000b928 <_ZN9MyConsole12outputBufferE>
    80001508:	00001097          	auipc	ra,0x1
    8000150c:	cc8080e7          	jalr	-824(ra) # 800021d0 <_ZN13BoundedBuffer3putEc>
}
    80001510:	00813083          	ld	ra,8(sp)
    80001514:	00013403          	ld	s0,0(sp)
    80001518:	01010113          	addi	sp,sp,16
    8000151c:	00008067          	ret

0000000080001520 <_ZN9MyConsole5myGetEv>:

char MyConsole::myGet() {
    80001520:	ff010113          	addi	sp,sp,-16
    80001524:	00113423          	sd	ra,8(sp)
    80001528:	00813023          	sd	s0,0(sp)
    8000152c:	01010413          	addi	s0,sp,16
    return inputBuffer->get();
    80001530:	0000a517          	auipc	a0,0xa
    80001534:	3f053503          	ld	a0,1008(a0) # 8000b920 <_ZN9MyConsole11inputBufferE>
    80001538:	00001097          	auipc	ra,0x1
    8000153c:	c04080e7          	jalr	-1020(ra) # 8000213c <_ZN13BoundedBuffer3getEv>
}
    80001540:	00813083          	ld	ra,8(sp)
    80001544:	00013403          	ld	s0,0(sp)
    80001548:	01010113          	addi	sp,sp,16
    8000154c:	00008067          	ret

0000000080001550 <_ZN9MyConsole12writeThrBodyEPv>:

void MyConsole::writeThrBody(void *) {
    80001550:	fe010113          	addi	sp,sp,-32
    80001554:	00113c23          	sd	ra,24(sp)
    80001558:	00813823          	sd	s0,16(sp)
    8000155c:	00913423          	sd	s1,8(sp)
    80001560:	02010413          	addi	s0,sp,32
    char *insert = (char *) CONSOLE_TX_DATA;
    80001564:	0000a797          	auipc	a5,0xa
    80001568:	3447b783          	ld	a5,836(a5) # 8000b8a8 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000156c:	0007b483          	ld	s1,0(a5)
    while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    80001570:	0000a797          	auipc	a5,0xa
    80001574:	3107b783          	ld	a5,784(a5) # 8000b880 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001578:	0007b783          	ld	a5,0(a5)
    8000157c:	0007c783          	lbu	a5,0(a5)
    80001580:	0207f793          	andi	a5,a5,32
    80001584:	00078e63          	beqz	a5,800015a0 <_ZN9MyConsole12writeThrBodyEPv+0x50>
        *insert = MyConsole::outputBuffer->get();
    80001588:	0000a517          	auipc	a0,0xa
    8000158c:	3a053503          	ld	a0,928(a0) # 8000b928 <_ZN9MyConsole12outputBufferE>
    80001590:	00001097          	auipc	ra,0x1
    80001594:	bac080e7          	jalr	-1108(ra) # 8000213c <_ZN13BoundedBuffer3getEv>
    80001598:	00a48023          	sb	a0,0(s1)
    while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    8000159c:	fd5ff06f          	j	80001570 <_ZN9MyConsole12writeThrBodyEPv+0x20>
    }
}
    800015a0:	01813083          	ld	ra,24(sp)
    800015a4:	01013403          	ld	s0,16(sp)
    800015a8:	00813483          	ld	s1,8(sp)
    800015ac:	02010113          	addi	sp,sp,32
    800015b0:	00008067          	ret

00000000800015b4 <_ZN9MyConsole14consoleHandlerEv>:

void MyConsole::consoleHandler() {
    800015b4:	fe010113          	addi	sp,sp,-32
    800015b8:	00113c23          	sd	ra,24(sp)
    800015bc:	00813823          	sd	s0,16(sp)
    800015c0:	00913423          	sd	s1,8(sp)
    800015c4:	02010413          	addi	s0,sp,32
    if (plic_claim() == CONSOLE_IRQ) {
    800015c8:	00005097          	auipc	ra,0x5
    800015cc:	6dc080e7          	jalr	1756(ra) # 80006ca4 <plic_claim>
    800015d0:	00a00793          	li	a5,10
    800015d4:	00f50c63          	beq	a0,a5,800015ec <_ZN9MyConsole14consoleHandlerEv+0x38>
        while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
            MyConsole::inputBuffer->put(*reg);
        }
        plic_complete(CONSOLE_IRQ);
    }
}
    800015d8:	01813083          	ld	ra,24(sp)
    800015dc:	01013403          	ld	s0,16(sp)
    800015e0:	00813483          	ld	s1,8(sp)
    800015e4:	02010113          	addi	sp,sp,32
    800015e8:	00008067          	ret
        char *reg= (char *) CONSOLE_RX_DATA;
    800015ec:	0000a797          	auipc	a5,0xa
    800015f0:	28c7b783          	ld	a5,652(a5) # 8000b878 <_GLOBAL_OFFSET_TABLE_+0x8>
    800015f4:	0007b483          	ld	s1,0(a5)
        while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    800015f8:	0000a797          	auipc	a5,0xa
    800015fc:	2887b783          	ld	a5,648(a5) # 8000b880 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001600:	0007b783          	ld	a5,0(a5)
    80001604:	0007c783          	lbu	a5,0(a5)
    80001608:	0017f793          	andi	a5,a5,1
    8000160c:	00078e63          	beqz	a5,80001628 <_ZN9MyConsole14consoleHandlerEv+0x74>
            MyConsole::inputBuffer->put(*reg);
    80001610:	0004c583          	lbu	a1,0(s1)
    80001614:	0000a517          	auipc	a0,0xa
    80001618:	30c53503          	ld	a0,780(a0) # 8000b920 <_ZN9MyConsole11inputBufferE>
    8000161c:	00001097          	auipc	ra,0x1
    80001620:	bb4080e7          	jalr	-1100(ra) # 800021d0 <_ZN13BoundedBuffer3putEc>
        while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80001624:	fd5ff06f          	j	800015f8 <_ZN9MyConsole14consoleHandlerEv+0x44>
        plic_complete(CONSOLE_IRQ);
    80001628:	00a00513          	li	a0,10
    8000162c:	00005097          	auipc	ra,0x5
    80001630:	6b0080e7          	jalr	1712(ra) # 80006cdc <plic_complete>
}
    80001634:	fa5ff06f          	j	800015d8 <_ZN9MyConsole14consoleHandlerEv+0x24>

0000000080001638 <_Znwm>:
#include "../lib/mem.h"
#include "../h/syscall_c.h"

//Overloading new and delete operators

void* operator new (size_t size){
    80001638:	ff010113          	addi	sp,sp,-16
    8000163c:	00113423          	sd	ra,8(sp)
    80001640:	00813023          	sd	s0,0(sp)
    80001644:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001648:	00000097          	auipc	ra,0x0
    8000164c:	afc080e7          	jalr	-1284(ra) # 80001144 <_Z9mem_allocm>
}
    80001650:	00813083          	ld	ra,8(sp)
    80001654:	00013403          	ld	s0,0(sp)
    80001658:	01010113          	addi	sp,sp,16
    8000165c:	00008067          	ret

0000000080001660 <_ZdlPv>:

void operator delete (void* arg) noexcept{
    80001660:	ff010113          	addi	sp,sp,-16
    80001664:	00113423          	sd	ra,8(sp)
    80001668:	00813023          	sd	s0,0(sp)
    8000166c:	01010413          	addi	s0,sp,16
    mem_free(arg);
    80001670:	00000097          	auipc	ra,0x0
    80001674:	b08080e7          	jalr	-1272(ra) # 80001178 <_Z8mem_freePv>
}
    80001678:	00813083          	ld	ra,8(sp)
    8000167c:	00013403          	ld	s0,0(sp)
    80001680:	01010113          	addi	sp,sp,16
    80001684:	00008067          	ret

0000000080001688 <_Znam>:

void *operator new[](size_t size) {
    80001688:	ff010113          	addi	sp,sp,-16
    8000168c:	00113423          	sd	ra,8(sp)
    80001690:	00813023          	sd	s0,0(sp)
    80001694:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001698:	00000097          	auipc	ra,0x0
    8000169c:	aac080e7          	jalr	-1364(ra) # 80001144 <_Z9mem_allocm>
}
    800016a0:	00813083          	ld	ra,8(sp)
    800016a4:	00013403          	ld	s0,0(sp)
    800016a8:	01010113          	addi	sp,sp,16
    800016ac:	00008067          	ret

00000000800016b0 <_ZdaPv>:

void operator delete[](void *arg) noexcept {
    800016b0:	ff010113          	addi	sp,sp,-16
    800016b4:	00113423          	sd	ra,8(sp)
    800016b8:	00813023          	sd	s0,0(sp)
    800016bc:	01010413          	addi	s0,sp,16
    mem_free(arg);
    800016c0:	00000097          	auipc	ra,0x0
    800016c4:	ab8080e7          	jalr	-1352(ra) # 80001178 <_Z8mem_freePv>
}
    800016c8:	00813083          	ld	ra,8(sp)
    800016cc:	00013403          	ld	s0,0(sp)
    800016d0:	01010113          	addi	sp,sp,16
    800016d4:	00008067          	ret

00000000800016d8 <_ZN11MySemaphore7semOpenEPPS_j>:
#include "../h/MySemaphore.hpp"
#include "../h/Scheduler.hpp"
#include "../h/syscall_c.h"

int MySemaphore::semOpen(MySemaphore **handle, unsigned int init) {
    800016d8:	fe010113          	addi	sp,sp,-32
    800016dc:	00113c23          	sd	ra,24(sp)
    800016e0:	00813823          	sd	s0,16(sp)
    800016e4:	00913423          	sd	s1,8(sp)
    800016e8:	01213023          	sd	s2,0(sp)
    800016ec:	02010413          	addi	s0,sp,32
    800016f0:	00050493          	mv	s1,a0
    800016f4:	00058913          	mv	s2,a1
    MySemaphore* sem = new MySemaphore(init);
    800016f8:	02000513          	li	a0,32
    800016fc:	00000097          	auipc	ra,0x0
    80001700:	f3c080e7          	jalr	-196(ra) # 80001638 <_Znwm>

    Elem* head;
    Elem* tail;

public:
    Queue() : head(nullptr), tail(nullptr) {}
    80001704:	00053423          	sd	zero,8(a0)
    80001708:	00053823          	sd	zero,16(a0)
    int val;
    Queue<TCB> waitingThreads;
    bool closed;

    MySemaphore(int val = 1){
        this->closed = false;
    8000170c:	00050c23          	sb	zero,24(a0)
        this->val = val;
    80001710:	01252023          	sw	s2,0(a0)
    *handle = sem;
    80001714:	00a4b023          	sd	a0,0(s1)
    if(!(*handle))  return -1;
    80001718:	02050063          	beqz	a0,80001738 <_ZN11MySemaphore7semOpenEPPS_j+0x60>
    return 0;
    8000171c:	00000513          	li	a0,0
}
    80001720:	01813083          	ld	ra,24(sp)
    80001724:	01013403          	ld	s0,16(sp)
    80001728:	00813483          	ld	s1,8(sp)
    8000172c:	00013903          	ld	s2,0(sp)
    80001730:	02010113          	addi	sp,sp,32
    80001734:	00008067          	ret
    if(!(*handle))  return -1;
    80001738:	fff00513          	li	a0,-1
    8000173c:	fe5ff06f          	j	80001720 <_ZN11MySemaphore7semOpenEPPS_j+0x48>

0000000080001740 <_ZN11MySemaphore5blockEv>:

void MySemaphore::block() {
    80001740:	fe010113          	addi	sp,sp,-32
    80001744:	00113c23          	sd	ra,24(sp)
    80001748:	00813823          	sd	s0,16(sp)
    8000174c:	00913423          	sd	s1,8(sp)
    80001750:	01213023          	sd	s2,0(sp)
    80001754:	02010413          	addi	s0,sp,32
    80001758:	00050493          	mv	s1,a0
    TCB::running->setBlocked(true);
    8000175c:	0000a797          	auipc	a5,0xa
    80001760:	1647b783          	ld	a5,356(a5) # 8000b8c0 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001764:	0007b903          	ld	s2,0(a5)

    bool isFinished() const {return finished;}
    void setFinished(bool f) { TCB::finished = f;}

    bool isBlocked() const {return blocked;}
    void setBlocked(bool f) { TCB::blocked = f;}
    80001768:	00100793          	li	a5,1
    8000176c:	02f904a3          	sb	a5,41(s2)

    bool empty() const { return head == nullptr; }

    void push(T* data) {
        Elem* elem = new Elem(data);
    80001770:	01000513          	li	a0,16
    80001774:	00000097          	auipc	ra,0x0
    80001778:	ec4080e7          	jalr	-316(ra) # 80001638 <_Znwm>
        Elem(T* data) : data(data), next(nullptr) {}
    8000177c:	01253023          	sd	s2,0(a0)
    80001780:	00053423          	sd	zero,8(a0)
        if (tail) tail->next = elem;
    80001784:	0104b783          	ld	a5,16(s1)
    80001788:	02078663          	beqz	a5,800017b4 <_ZN11MySemaphore5blockEv+0x74>
    8000178c:	00a7b423          	sd	a0,8(a5)
        else head = elem;
        tail = elem;
    80001790:	00a4b823          	sd	a0,16(s1)
    this->waitingThreads.push(TCB::running);
    TCB::dispatch();
    80001794:	00001097          	auipc	ra,0x1
    80001798:	c60080e7          	jalr	-928(ra) # 800023f4 <_ZN3TCB8dispatchEv>
}
    8000179c:	01813083          	ld	ra,24(sp)
    800017a0:	01013403          	ld	s0,16(sp)
    800017a4:	00813483          	ld	s1,8(sp)
    800017a8:	00013903          	ld	s2,0(sp)
    800017ac:	02010113          	addi	sp,sp,32
    800017b0:	00008067          	ret
        else head = elem;
    800017b4:	00a4b423          	sd	a0,8(s1)
    800017b8:	fd9ff06f          	j	80001790 <_ZN11MySemaphore5blockEv+0x50>

00000000800017bc <_ZN11MySemaphore7unblockEv>:

void MySemaphore::unblock() {
    800017bc:	fe010113          	addi	sp,sp,-32
    800017c0:	00113c23          	sd	ra,24(sp)
    800017c4:	00813823          	sd	s0,16(sp)
    800017c8:	00913423          	sd	s1,8(sp)
    800017cc:	02010413          	addi	s0,sp,32
    800017d0:	00050793          	mv	a5,a0
    }

    T* pop() {
        if (!head) return nullptr;
    800017d4:	00853503          	ld	a0,8(a0)
    800017d8:	04050463          	beqz	a0,80001820 <_ZN11MySemaphore7unblockEv+0x64>
        Elem* elem = head;
        head = head->next;
    800017dc:	00853703          	ld	a4,8(a0)
    800017e0:	00e7b423          	sd	a4,8(a5)
        if (!head) tail = nullptr;
    800017e4:	02070a63          	beqz	a4,80001818 <_ZN11MySemaphore7unblockEv+0x5c>
        T* ret = elem->data;
    800017e8:	00053483          	ld	s1,0(a0)
        delete elem;
    800017ec:	00000097          	auipc	ra,0x0
    800017f0:	e74080e7          	jalr	-396(ra) # 80001660 <_ZdlPv>
    800017f4:	020484a3          	sb	zero,41(s1)
    TCB* t = this->waitingThreads.pop();
    t->setBlocked(false);
    Scheduler::put(t);
    800017f8:	00048513          	mv	a0,s1
    800017fc:	00000097          	auipc	ra,0x0
    80001800:	258080e7          	jalr	600(ra) # 80001a54 <_ZN9Scheduler3putEP3TCB>
}
    80001804:	01813083          	ld	ra,24(sp)
    80001808:	01013403          	ld	s0,16(sp)
    8000180c:	00813483          	ld	s1,8(sp)
    80001810:	02010113          	addi	sp,sp,32
    80001814:	00008067          	ret
        if (!head) tail = nullptr;
    80001818:	0007b823          	sd	zero,16(a5)
    8000181c:	fcdff06f          	j	800017e8 <_ZN11MySemaphore7unblockEv+0x2c>
        if (!head) return nullptr;
    80001820:	00050493          	mv	s1,a0
    80001824:	fd1ff06f          	j	800017f4 <_ZN11MySemaphore7unblockEv+0x38>

0000000080001828 <_ZN11MySemaphore4waitEv>:
    void unblock();

public:

    bool isClosed(){
        return closed;
    80001828:	01854783          	lbu	a5,24(a0)

int MySemaphore::wait() {
    if(this->isClosed()) return -1;
    8000182c:	04079663          	bnez	a5,80001878 <_ZN11MySemaphore4waitEv+0x50>
    this->val--;
    80001830:	00052783          	lw	a5,0(a0)
    80001834:	fff7879b          	addiw	a5,a5,-1
    80001838:	00f52023          	sw	a5,0(a0)
    if(this->val<0){
    8000183c:	02079713          	slli	a4,a5,0x20
    80001840:	00074663          	bltz	a4,8000184c <_ZN11MySemaphore4waitEv+0x24>
        block();
    }
    return 0;
    80001844:	00000513          	li	a0,0
}
    80001848:	00008067          	ret
int MySemaphore::wait() {
    8000184c:	ff010113          	addi	sp,sp,-16
    80001850:	00113423          	sd	ra,8(sp)
    80001854:	00813023          	sd	s0,0(sp)
    80001858:	01010413          	addi	s0,sp,16
        block();
    8000185c:	00000097          	auipc	ra,0x0
    80001860:	ee4080e7          	jalr	-284(ra) # 80001740 <_ZN11MySemaphore5blockEv>
    return 0;
    80001864:	00000513          	li	a0,0
}
    80001868:	00813083          	ld	ra,8(sp)
    8000186c:	00013403          	ld	s0,0(sp)
    80001870:	01010113          	addi	sp,sp,16
    80001874:	00008067          	ret
    if(this->isClosed()) return -1;
    80001878:	fff00513          	li	a0,-1
    8000187c:	00008067          	ret

0000000080001880 <_ZN11MySemaphore8semCloseEPS_>:

int MySemaphore::semClose(MySemaphore *sem) {
    if(!sem || sem->isClosed())return -1;
    80001880:	0c050263          	beqz	a0,80001944 <_ZN11MySemaphore8semCloseEPS_+0xc4>
int MySemaphore::semClose(MySemaphore *sem) {
    80001884:	fe010113          	addi	sp,sp,-32
    80001888:	00113c23          	sd	ra,24(sp)
    8000188c:	00813823          	sd	s0,16(sp)
    80001890:	00913423          	sd	s1,8(sp)
    80001894:	01213023          	sd	s2,0(sp)
    80001898:	02010413          	addi	s0,sp,32
    8000189c:	00050493          	mv	s1,a0
    800018a0:	01854783          	lbu	a5,24(a0)
    if(!sem || sem->isClosed())return -1;
    800018a4:	0a079463          	bnez	a5,8000194c <_ZN11MySemaphore8semCloseEPS_+0xcc>
    }

    void setClosed(bool val){
        closed=val;
    800018a8:	00100793          	li	a5,1
    800018ac:	00f50c23          	sb	a5,24(a0)
    800018b0:	00853503          	ld	a0,8(a0)
    800018b4:	02050463          	beqz	a0,800018dc <_ZN11MySemaphore8semCloseEPS_+0x5c>
        head = head->next;
    800018b8:	00853783          	ld	a5,8(a0)
    800018bc:	00f4b423          	sd	a5,8(s1)
        if (!head) tail = nullptr;
    800018c0:	00078a63          	beqz	a5,800018d4 <_ZN11MySemaphore8semCloseEPS_+0x54>
        T* ret = elem->data;
    800018c4:	00053903          	ld	s2,0(a0)
        delete elem;
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	d98080e7          	jalr	-616(ra) # 80001660 <_ZdlPv>
        return ret;
    800018d0:	0240006f          	j	800018f4 <_ZN11MySemaphore8semCloseEPS_+0x74>
        if (!head) tail = nullptr;
    800018d4:	0004b823          	sd	zero,16(s1)
    800018d8:	fedff06f          	j	800018c4 <_ZN11MySemaphore8semCloseEPS_+0x44>
        if (!head) return nullptr;
    800018dc:	00050913          	mv	s2,a0
    800018e0:	0140006f          	j	800018f4 <_ZN11MySemaphore8semCloseEPS_+0x74>
        if (!head) tail = nullptr;
    800018e4:	0004b823          	sd	zero,16(s1)
        T* ret = elem->data;
    800018e8:	00053903          	ld	s2,0(a0)
        delete elem;
    800018ec:	00000097          	auipc	ra,0x0
    800018f0:	d74080e7          	jalr	-652(ra) # 80001660 <_ZdlPv>
    sem->setClosed(true);
    TCB* cur = sem->waitingThreads.pop();
    while(cur){
    800018f4:	02090463          	beqz	s2,8000191c <_ZN11MySemaphore8semCloseEPS_+0x9c>
        sem->unblock();
    800018f8:	00048513          	mv	a0,s1
    800018fc:	00000097          	auipc	ra,0x0
    80001900:	ec0080e7          	jalr	-320(ra) # 800017bc <_ZN11MySemaphore7unblockEv>
        if (!head) return nullptr;
    80001904:	0084b503          	ld	a0,8(s1)
    80001908:	00050a63          	beqz	a0,8000191c <_ZN11MySemaphore8semCloseEPS_+0x9c>
        head = head->next;
    8000190c:	00853783          	ld	a5,8(a0)
    80001910:	00f4b423          	sd	a5,8(s1)
        if (!head) tail = nullptr;
    80001914:	fc079ae3          	bnez	a5,800018e8 <_ZN11MySemaphore8semCloseEPS_+0x68>
    80001918:	fcdff06f          	j	800018e4 <_ZN11MySemaphore8semCloseEPS_+0x64>
        cur = sem->waitingThreads.pop();
    }
    delete sem;
    8000191c:	00048513          	mv	a0,s1
    80001920:	00000097          	auipc	ra,0x0
    80001924:	d40080e7          	jalr	-704(ra) # 80001660 <_ZdlPv>
    return 0;
    80001928:	00000513          	li	a0,0
}
    8000192c:	01813083          	ld	ra,24(sp)
    80001930:	01013403          	ld	s0,16(sp)
    80001934:	00813483          	ld	s1,8(sp)
    80001938:	00013903          	ld	s2,0(sp)
    8000193c:	02010113          	addi	sp,sp,32
    80001940:	00008067          	ret
    if(!sem || sem->isClosed())return -1;
    80001944:	fff00513          	li	a0,-1
}
    80001948:	00008067          	ret
    if(!sem || sem->isClosed())return -1;
    8000194c:	fff00513          	li	a0,-1
    80001950:	fddff06f          	j	8000192c <_ZN11MySemaphore8semCloseEPS_+0xac>

0000000080001954 <_ZN11MySemaphore6signalEv>:
        return closed;
    80001954:	01854783          	lbu	a5,24(a0)

int MySemaphore::signal() {
    if(this->isClosed())    return -1;
    80001958:	04079663          	bnez	a5,800019a4 <_ZN11MySemaphore6signalEv+0x50>
    this->val++;
    8000195c:	00052783          	lw	a5,0(a0)
    80001960:	0017879b          	addiw	a5,a5,1
    80001964:	0007871b          	sext.w	a4,a5
    80001968:	00f52023          	sw	a5,0(a0)
    if(this->val <= 0){
    8000196c:	00e05663          	blez	a4,80001978 <_ZN11MySemaphore6signalEv+0x24>
        unblock();
    }
    return 0;
    80001970:	00000513          	li	a0,0
    80001974:	00008067          	ret
int MySemaphore::signal() {
    80001978:	ff010113          	addi	sp,sp,-16
    8000197c:	00113423          	sd	ra,8(sp)
    80001980:	00813023          	sd	s0,0(sp)
    80001984:	01010413          	addi	s0,sp,16
        unblock();
    80001988:	00000097          	auipc	ra,0x0
    8000198c:	e34080e7          	jalr	-460(ra) # 800017bc <_ZN11MySemaphore7unblockEv>
    return 0;
    80001990:	00000513          	li	a0,0
    80001994:	00813083          	ld	ra,8(sp)
    80001998:	00013403          	ld	s0,0(sp)
    8000199c:	01010113          	addi	sp,sp,16
    800019a0:	00008067          	ret
    if(this->isClosed())    return -1;
    800019a4:	fff00513          	li	a0,-1
    800019a8:	00008067          	ret

00000000800019ac <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *tcb)
{
    readyThreadQueue.push(tcb);
    800019ac:	ff010113          	addi	sp,sp,-16
    800019b0:	00813423          	sd	s0,8(sp)
    800019b4:	01010413          	addi	s0,sp,16
    800019b8:	00100793          	li	a5,1
    800019bc:	00f50863          	beq	a0,a5,800019cc <_Z41__static_initialization_and_destruction_0ii+0x20>
    800019c0:	00813403          	ld	s0,8(sp)
    800019c4:	01010113          	addi	sp,sp,16
    800019c8:	00008067          	ret
    800019cc:	000107b7          	lui	a5,0x10
    800019d0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800019d4:	fef596e3          	bne	a1,a5,800019c0 <_Z41__static_initialization_and_destruction_0ii+0x14>
    Queue() : head(nullptr), tail(nullptr) {}
    800019d8:	0000a797          	auipc	a5,0xa
    800019dc:	f6078793          	addi	a5,a5,-160 # 8000b938 <_ZN9Scheduler16readyThreadQueueE>
    800019e0:	0007b023          	sd	zero,0(a5)
    800019e4:	0007b423          	sd	zero,8(a5)
    800019e8:	fd9ff06f          	j	800019c0 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800019ec <_ZN9Scheduler3getEv>:
{
    800019ec:	fe010113          	addi	sp,sp,-32
    800019f0:	00113c23          	sd	ra,24(sp)
    800019f4:	00813823          	sd	s0,16(sp)
    800019f8:	00913423          	sd	s1,8(sp)
    800019fc:	02010413          	addi	s0,sp,32
        if (!head) return nullptr;
    80001a00:	0000a517          	auipc	a0,0xa
    80001a04:	f3853503          	ld	a0,-200(a0) # 8000b938 <_ZN9Scheduler16readyThreadQueueE>
    80001a08:	04050263          	beqz	a0,80001a4c <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80001a0c:	00853783          	ld	a5,8(a0)
    80001a10:	0000a717          	auipc	a4,0xa
    80001a14:	f2f73423          	sd	a5,-216(a4) # 8000b938 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) tail = nullptr;
    80001a18:	02078463          	beqz	a5,80001a40 <_ZN9Scheduler3getEv+0x54>
        T* ret = elem->data;
    80001a1c:	00053483          	ld	s1,0(a0)
        delete elem;
    80001a20:	00000097          	auipc	ra,0x0
    80001a24:	c40080e7          	jalr	-960(ra) # 80001660 <_ZdlPv>
}
    80001a28:	00048513          	mv	a0,s1
    80001a2c:	01813083          	ld	ra,24(sp)
    80001a30:	01013403          	ld	s0,16(sp)
    80001a34:	00813483          	ld	s1,8(sp)
    80001a38:	02010113          	addi	sp,sp,32
    80001a3c:	00008067          	ret
        if (!head) tail = nullptr;
    80001a40:	0000a797          	auipc	a5,0xa
    80001a44:	f007b023          	sd	zero,-256(a5) # 8000b940 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001a48:	fd5ff06f          	j	80001a1c <_ZN9Scheduler3getEv+0x30>
        if (!head) return nullptr;
    80001a4c:	00050493          	mv	s1,a0
    return cur;
    80001a50:	fd9ff06f          	j	80001a28 <_ZN9Scheduler3getEv+0x3c>

0000000080001a54 <_ZN9Scheduler3putEP3TCB>:
{
    80001a54:	fe010113          	addi	sp,sp,-32
    80001a58:	00113c23          	sd	ra,24(sp)
    80001a5c:	00813823          	sd	s0,16(sp)
    80001a60:	00913423          	sd	s1,8(sp)
    80001a64:	02010413          	addi	s0,sp,32
    80001a68:	00050493          	mv	s1,a0
        Elem* elem = new Elem(data);
    80001a6c:	01000513          	li	a0,16
    80001a70:	00000097          	auipc	ra,0x0
    80001a74:	bc8080e7          	jalr	-1080(ra) # 80001638 <_Znwm>
        Elem(T* data) : data(data), next(nullptr) {}
    80001a78:	00953023          	sd	s1,0(a0)
    80001a7c:	00053423          	sd	zero,8(a0)
        if (tail) tail->next = elem;
    80001a80:	0000a797          	auipc	a5,0xa
    80001a84:	ec07b783          	ld	a5,-320(a5) # 8000b940 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001a88:	02078263          	beqz	a5,80001aac <_ZN9Scheduler3putEP3TCB+0x58>
    80001a8c:	00a7b423          	sd	a0,8(a5)
        tail = elem;
    80001a90:	0000a797          	auipc	a5,0xa
    80001a94:	eaa7b823          	sd	a0,-336(a5) # 8000b940 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001a98:	01813083          	ld	ra,24(sp)
    80001a9c:	01013403          	ld	s0,16(sp)
    80001aa0:	00813483          	ld	s1,8(sp)
    80001aa4:	02010113          	addi	sp,sp,32
    80001aa8:	00008067          	ret
        else head = elem;
    80001aac:	0000a797          	auipc	a5,0xa
    80001ab0:	e8a7b623          	sd	a0,-372(a5) # 8000b938 <_ZN9Scheduler16readyThreadQueueE>
    80001ab4:	fddff06f          	j	80001a90 <_ZN9Scheduler3putEP3TCB+0x3c>

0000000080001ab8 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001ab8:	ff010113          	addi	sp,sp,-16
    80001abc:	00113423          	sd	ra,8(sp)
    80001ac0:	00813023          	sd	s0,0(sp)
    80001ac4:	01010413          	addi	s0,sp,16
    80001ac8:	000105b7          	lui	a1,0x10
    80001acc:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001ad0:	00100513          	li	a0,1
    80001ad4:	00000097          	auipc	ra,0x0
    80001ad8:	ed8080e7          	jalr	-296(ra) # 800019ac <_Z41__static_initialization_and_destruction_0ii>
    80001adc:	00813083          	ld	ra,8(sp)
    80001ae0:	00013403          	ld	s0,0(sp)
    80001ae4:	01010113          	addi	sp,sp,16
    80001ae8:	00008067          	ret

0000000080001aec <_Z8userWrapPv>:
#include "../h/MyConsole.hpp"
#include "../test/printing.hpp"

extern void userMain();

void userWrap(void *arg){
    80001aec:	ff010113          	addi	sp,sp,-16
    80001af0:	00113423          	sd	ra,8(sp)
    80001af4:	00813023          	sd	s0,0(sp)
    80001af8:	01010413          	addi	s0,sp,16
    userMain();
    80001afc:	00004097          	auipc	ra,0x4
    80001b00:	dcc080e7          	jalr	-564(ra) # 800058c8 <_Z8userMainv>
}
    80001b04:	00813083          	ld	ra,8(sp)
    80001b08:	00013403          	ld	s0,0(sp)
    80001b0c:	01010113          	addi	sp,sp,16
    80001b10:	00008067          	ret

0000000080001b14 <_Z8idleWrapPv>:

void idleWrap(void * arg){
    80001b14:	ff010113          	addi	sp,sp,-16
    80001b18:	00113423          	sd	ra,8(sp)
    80001b1c:	00813023          	sd	s0,0(sp)
    80001b20:	01010413          	addi	s0,sp,16
    while(true) {
        thread_dispatch();
    80001b24:	fffff097          	auipc	ra,0xfffff
    80001b28:	774080e7          	jalr	1908(ra) # 80001298 <_Z15thread_dispatchv>
    while(true) {
    80001b2c:	ff9ff06f          	j	80001b24 <_Z8idleWrapPv+0x10>

0000000080001b30 <main>:
    }
}

int main() {
    80001b30:	fc010113          	addi	sp,sp,-64
    80001b34:	02113c23          	sd	ra,56(sp)
    80001b38:	02813823          	sd	s0,48(sp)
    80001b3c:	02913423          	sd	s1,40(sp)
    80001b40:	04010413          	addi	s0,sp,64
        __asm__ volatile("li t1, 0x100000");
        __asm__ volatile("sw t0, 0(t1)");
    }

    static void setMode(bool value){
        isKernelMode = value;
    80001b44:	0000a497          	auipc	s1,0xa
    80001b48:	d8c4b483          	ld	s1,-628(s1) # 8000b8d0 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001b4c:	00100793          	li	a5,1
    80001b50:	00f48023          	sb	a5,0(s1)

    //Initialization of kernel
    Riscv::setMode(true);
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001b54:	0000a797          	auipc	a5,0xa
    80001b58:	d3c7b783          	ld	a5,-708(a5) # 8000b890 <_GLOBAL_OFFSET_TABLE_+0x20>
inline void Riscv::w_sepc(uint64 sepc) {
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001b5c:	10579073          	csrw	stvec,a5
    MemoryAllocator::getAllocator();
    80001b60:	00001097          	auipc	ra,0x1
    80001b64:	d80080e7          	jalr	-640(ra) # 800028e0 <_ZN15MemoryAllocator12getAllocatorEv>

    TCB* mainThread;
    thread_create(&mainThread, nullptr, nullptr);
    80001b68:	00000613          	li	a2,0
    80001b6c:	00000593          	li	a1,0
    80001b70:	fd840513          	addi	a0,s0,-40
    80001b74:	fffff097          	auipc	ra,0xfffff
    80001b78:	680080e7          	jalr	1664(ra) # 800011f4 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running=mainThread;
    80001b7c:	0000a797          	auipc	a5,0xa
    80001b80:	d447b783          	ld	a5,-700(a5) # 8000b8c0 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001b84:	fd843703          	ld	a4,-40(s0)
    80001b88:	00e7b023          	sd	a4,0(a5)

    MyConsole::initMyConsole();
    80001b8c:	00000097          	auipc	ra,0x0
    80001b90:	864080e7          	jalr	-1948(ra) # 800013f0 <_ZN9MyConsole13initMyConsoleEv>

    thread_create(&MyConsole::writeThr,&MyConsole::writeThrBody,nullptr);
    80001b94:	00000613          	li	a2,0
    80001b98:	0000a597          	auipc	a1,0xa
    80001b9c:	d085b583          	ld	a1,-760(a1) # 8000b8a0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001ba0:	0000a517          	auipc	a0,0xa
    80001ba4:	d1853503          	ld	a0,-744(a0) # 8000b8b8 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001ba8:	fffff097          	auipc	ra,0xfffff
    80001bac:	64c080e7          	jalr	1612(ra) # 800011f4 <_Z13thread_createPP3TCBPFvPvES2_>
        isKernelMode = value;
    80001bb0:	00048023          	sb	zero,0(s1)

    //User mode starts here
    Riscv::setMode(false);
    TCB *idleThread;
    thread_create(&idleThread, idleWrap, nullptr);
    80001bb4:	00000613          	li	a2,0
    80001bb8:	00000597          	auipc	a1,0x0
    80001bbc:	f5c58593          	addi	a1,a1,-164 # 80001b14 <_Z8idleWrapPv>
    80001bc0:	fd040513          	addi	a0,s0,-48
    80001bc4:	fffff097          	auipc	ra,0xfffff
    80001bc8:	630080e7          	jalr	1584(ra) # 800011f4 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB *userThread;
    thread_create(&userThread, userWrap, nullptr);
    80001bcc:	00000613          	li	a2,0
    80001bd0:	00000597          	auipc	a1,0x0
    80001bd4:	f1c58593          	addi	a1,a1,-228 # 80001aec <_Z8userWrapPv>
    80001bd8:	fc840513          	addi	a0,s0,-56
    80001bdc:	fffff097          	auipc	ra,0xfffff
    80001be0:	618080e7          	jalr	1560(ra) # 800011f4 <_Z13thread_createPP3TCBPFvPvES2_>
inline void Riscv::mc_sip(uint64 mask) {
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001be4:	00200793          	li	a5,2
    80001be8:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while(!userThread->isFinished()){
    80001bec:	fc843783          	ld	a5,-56(s0)
    bool isFinished() const {return finished;}
    80001bf0:	0287c783          	lbu	a5,40(a5)
    80001bf4:	00079863          	bnez	a5,80001c04 <main+0xd4>
        thread_dispatch();
    80001bf8:	fffff097          	auipc	ra,0xfffff
    80001bfc:	6a0080e7          	jalr	1696(ra) # 80001298 <_Z15thread_dispatchv>
    80001c00:	fedff06f          	j	80001bec <main+0xbc>
    }

    //Exiting emulator...
    MyConsole::flushConsole();
    80001c04:	00000097          	auipc	ra,0x0
    80001c08:	89c080e7          	jalr	-1892(ra) # 800014a0 <_ZN9MyConsole12flushConsoleEv>
        __asm__ volatile("li t0, 0x5555");
    80001c0c:	000052b7          	lui	t0,0x5
    80001c10:	5552829b          	addiw	t0,t0,1365
        __asm__ volatile("li t1, 0x100000");
    80001c14:	00100337          	lui	t1,0x100
        __asm__ volatile("sw t0, 0(t1)");
    80001c18:	00532023          	sw	t0,0(t1) # 100000 <_entry-0x7ff00000>
    Riscv::quit();
    return 0;
    80001c1c:	00000513          	li	a0,0
    80001c20:	03813083          	ld	ra,56(sp)
    80001c24:	03013403          	ld	s0,48(sp)
    80001c28:	02813483          	ld	s1,40(sp)
    80001c2c:	04010113          	addi	sp,sp,64
    80001c30:	00008067          	ret

0000000080001c34 <_ZN6Thread7wrapperEPv>:
    if(myHandle!= nullptr)  return 0;
    return -1;
}
void Thread::wrapper(void *t) {
    Thread* thread=(Thread*)t;
    if(thread) {
    80001c34:	02050863          	beqz	a0,80001c64 <_ZN6Thread7wrapperEPv+0x30>
void Thread::wrapper(void *t) {
    80001c38:	ff010113          	addi	sp,sp,-16
    80001c3c:	00113423          	sd	ra,8(sp)
    80001c40:	00813023          	sd	s0,0(sp)
    80001c44:	01010413          	addi	s0,sp,16
        thread->run();
    80001c48:	00053783          	ld	a5,0(a0)
    80001c4c:	0107b783          	ld	a5,16(a5)
    80001c50:	000780e7          	jalr	a5
    }
}
    80001c54:	00813083          	ld	ra,8(sp)
    80001c58:	00013403          	ld	s0,0(sp)
    80001c5c:	01010113          	addi	sp,sp,16
    80001c60:	00008067          	ret
    80001c64:	00008067          	ret

0000000080001c68 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80001c68:	ff010113          	addi	sp,sp,-16
    80001c6c:	00813423          	sd	s0,8(sp)
    80001c70:	01010413          	addi	s0,sp,16
    myHandle->setFinished(true);
    80001c74:	00853783          	ld	a5,8(a0)
    void setFinished(bool f) { TCB::finished = f;}
    80001c78:	00100713          	li	a4,1
    80001c7c:	02e78423          	sb	a4,40(a5)
}
    80001c80:	00813403          	ld	s0,8(sp)
    80001c84:	01010113          	addi	sp,sp,16
    80001c88:	00008067          	ret

0000000080001c8c <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001c8c:	fe010113          	addi	sp,sp,-32
    80001c90:	00113c23          	sd	ra,24(sp)
    80001c94:	00813823          	sd	s0,16(sp)
    80001c98:	00913423          	sd	s1,8(sp)
    80001c9c:	02010413          	addi	s0,sp,32
    80001ca0:	00050493          	mv	s1,a0
}
    80001ca4:	00000097          	auipc	ra,0x0
    80001ca8:	fc4080e7          	jalr	-60(ra) # 80001c68 <_ZN6ThreadD1Ev>
    80001cac:	00048513          	mv	a0,s1
    80001cb0:	00000097          	auipc	ra,0x0
    80001cb4:	9b0080e7          	jalr	-1616(ra) # 80001660 <_ZdlPv>
    80001cb8:	01813083          	ld	ra,24(sp)
    80001cbc:	01013403          	ld	s0,16(sp)
    80001cc0:	00813483          	ld	s1,8(sp)
    80001cc4:	02010113          	addi	sp,sp,32
    80001cc8:	00008067          	ret

0000000080001ccc <_ZN9SemaphoreD1Ev>:
}
int Semaphore::signal() {
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    80001ccc:	ff010113          	addi	sp,sp,-16
    80001cd0:	00113423          	sd	ra,8(sp)
    80001cd4:	00813023          	sd	s0,0(sp)
    80001cd8:	01010413          	addi	s0,sp,16
    80001cdc:	0000a797          	auipc	a5,0xa
    80001ce0:	9a478793          	addi	a5,a5,-1628 # 8000b680 <_ZTV9Semaphore+0x10>
    80001ce4:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001ce8:	00853503          	ld	a0,8(a0)
    80001cec:	fffff097          	auipc	ra,0xfffff
    80001cf0:	5fc080e7          	jalr	1532(ra) # 800012e8 <_Z9sem_closeP11MySemaphore>
}
    80001cf4:	00813083          	ld	ra,8(sp)
    80001cf8:	00013403          	ld	s0,0(sp)
    80001cfc:	01010113          	addi	sp,sp,16
    80001d00:	00008067          	ret

0000000080001d04 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001d04:	fe010113          	addi	sp,sp,-32
    80001d08:	00113c23          	sd	ra,24(sp)
    80001d0c:	00813823          	sd	s0,16(sp)
    80001d10:	00913423          	sd	s1,8(sp)
    80001d14:	02010413          	addi	s0,sp,32
    80001d18:	00050493          	mv	s1,a0
}
    80001d1c:	00000097          	auipc	ra,0x0
    80001d20:	fb0080e7          	jalr	-80(ra) # 80001ccc <_ZN9SemaphoreD1Ev>
    80001d24:	00048513          	mv	a0,s1
    80001d28:	00000097          	auipc	ra,0x0
    80001d2c:	938080e7          	jalr	-1736(ra) # 80001660 <_ZdlPv>
    80001d30:	01813083          	ld	ra,24(sp)
    80001d34:	01013403          	ld	s0,16(sp)
    80001d38:	00813483          	ld	s1,8(sp)
    80001d3c:	02010113          	addi	sp,sp,32
    80001d40:	00008067          	ret

0000000080001d44 <_ZN6ThreadC1Ev>:
Thread::Thread(){
    80001d44:	ff010113          	addi	sp,sp,-16
    80001d48:	00813423          	sd	s0,8(sp)
    80001d4c:	01010413          	addi	s0,sp,16
    80001d50:	0000a797          	auipc	a5,0xa
    80001d54:	90878793          	addi	a5,a5,-1784 # 8000b658 <_ZTV6Thread+0x10>
    80001d58:	00f53023          	sd	a5,0(a0)
    this->body=wrapper;
    80001d5c:	00000797          	auipc	a5,0x0
    80001d60:	ed878793          	addi	a5,a5,-296 # 80001c34 <_ZN6Thread7wrapperEPv>
    80001d64:	00f53823          	sd	a5,16(a0)
    this->arg= this;
    80001d68:	00a53c23          	sd	a0,24(a0)
}
    80001d6c:	00813403          	ld	s0,8(sp)
    80001d70:	01010113          	addi	sp,sp,16
    80001d74:	00008067          	ret

0000000080001d78 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001d78:	ff010113          	addi	sp,sp,-16
    80001d7c:	00813423          	sd	s0,8(sp)
    80001d80:	01010413          	addi	s0,sp,16
    80001d84:	0000a797          	auipc	a5,0xa
    80001d88:	8d478793          	addi	a5,a5,-1836 # 8000b658 <_ZTV6Thread+0x10>
    80001d8c:	00f53023          	sd	a5,0(a0)
    this->body=body;
    80001d90:	00b53823          	sd	a1,16(a0)
    this->arg=arg;
    80001d94:	00c53c23          	sd	a2,24(a0)
}
    80001d98:	00813403          	ld	s0,8(sp)
    80001d9c:	01010113          	addi	sp,sp,16
    80001da0:	00008067          	ret

0000000080001da4 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001da4:	ff010113          	addi	sp,sp,-16
    80001da8:	00113423          	sd	ra,8(sp)
    80001dac:	00813023          	sd	s0,0(sp)
    80001db0:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001db4:	fffff097          	auipc	ra,0xfffff
    80001db8:	4e4080e7          	jalr	1252(ra) # 80001298 <_Z15thread_dispatchv>
}
    80001dbc:	00813083          	ld	ra,8(sp)
    80001dc0:	00013403          	ld	s0,0(sp)
    80001dc4:	01010113          	addi	sp,sp,16
    80001dc8:	00008067          	ret

0000000080001dcc <_ZN6Thread5startEv>:
int Thread::start() {
    80001dcc:	fe010113          	addi	sp,sp,-32
    80001dd0:	00113c23          	sd	ra,24(sp)
    80001dd4:	00813823          	sd	s0,16(sp)
    80001dd8:	00913423          	sd	s1,8(sp)
    80001ddc:	02010413          	addi	s0,sp,32
    80001de0:	00050493          	mv	s1,a0
    thread_create(&myHandle,body, arg);
    80001de4:	01853603          	ld	a2,24(a0)
    80001de8:	01053583          	ld	a1,16(a0)
    80001dec:	00850513          	addi	a0,a0,8
    80001df0:	fffff097          	auipc	ra,0xfffff
    80001df4:	404080e7          	jalr	1028(ra) # 800011f4 <_Z13thread_createPP3TCBPFvPvES2_>
    if(body== nullptr)  TCB::running=myHandle;
    80001df8:	0104b783          	ld	a5,16(s1)
    80001dfc:	02078263          	beqz	a5,80001e20 <_ZN6Thread5startEv+0x54>
    if(myHandle!= nullptr)  return 0;
    80001e00:	0084b783          	ld	a5,8(s1)
    80001e04:	02078863          	beqz	a5,80001e34 <_ZN6Thread5startEv+0x68>
    80001e08:	00000513          	li	a0,0
}
    80001e0c:	01813083          	ld	ra,24(sp)
    80001e10:	01013403          	ld	s0,16(sp)
    80001e14:	00813483          	ld	s1,8(sp)
    80001e18:	02010113          	addi	sp,sp,32
    80001e1c:	00008067          	ret
    if(body== nullptr)  TCB::running=myHandle;
    80001e20:	0084b703          	ld	a4,8(s1)
    80001e24:	0000a797          	auipc	a5,0xa
    80001e28:	a9c7b783          	ld	a5,-1380(a5) # 8000b8c0 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001e2c:	00e7b023          	sd	a4,0(a5)
    80001e30:	fd1ff06f          	j	80001e00 <_ZN6Thread5startEv+0x34>
    return -1;
    80001e34:	fff00513          	li	a0,-1
    80001e38:	fd5ff06f          	j	80001e0c <_ZN6Thread5startEv+0x40>

0000000080001e3c <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80001e3c:	ff010113          	addi	sp,sp,-16
    80001e40:	00113423          	sd	ra,8(sp)
    80001e44:	00813023          	sd	s0,0(sp)
    80001e48:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80001e4c:	fffff097          	auipc	ra,0xfffff
    80001e50:	520080e7          	jalr	1312(ra) # 8000136c <_Z10time_sleepm>
}
    80001e54:	00813083          	ld	ra,8(sp)
    80001e58:	00013403          	ld	s0,0(sp)
    80001e5c:	01010113          	addi	sp,sp,16
    80001e60:	00008067          	ret

0000000080001e64 <_ZN14PeriodicThread3runEv>:
}
PeriodicThread::PeriodicThread(time_t period) : Thread(){
    this->period = period;
}

void PeriodicThread::run() {
    80001e64:	fe010113          	addi	sp,sp,-32
    80001e68:	00113c23          	sd	ra,24(sp)
    80001e6c:	00813823          	sd	s0,16(sp)
    80001e70:	00913423          	sd	s1,8(sp)
    80001e74:	02010413          	addi	s0,sp,32
    80001e78:	00050493          	mv	s1,a0
    while(period!=0){
    80001e7c:	0204b783          	ld	a5,32(s1)
    80001e80:	02078263          	beqz	a5,80001ea4 <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    80001e84:	0004b783          	ld	a5,0(s1)
    80001e88:	0187b783          	ld	a5,24(a5)
    80001e8c:	00048513          	mv	a0,s1
    80001e90:	000780e7          	jalr	a5
        Thread::sleep(period);
    80001e94:	0204b503          	ld	a0,32(s1)
    80001e98:	00000097          	auipc	ra,0x0
    80001e9c:	fa4080e7          	jalr	-92(ra) # 80001e3c <_ZN6Thread5sleepEm>
    while(period!=0){
    80001ea0:	fddff06f          	j	80001e7c <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80001ea4:	01813083          	ld	ra,24(sp)
    80001ea8:	01013403          	ld	s0,16(sp)
    80001eac:	00813483          	ld	s1,8(sp)
    80001eb0:	02010113          	addi	sp,sp,32
    80001eb4:	00008067          	ret

0000000080001eb8 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001eb8:	ff010113          	addi	sp,sp,-16
    80001ebc:	00113423          	sd	ra,8(sp)
    80001ec0:	00813023          	sd	s0,0(sp)
    80001ec4:	01010413          	addi	s0,sp,16
    80001ec8:	00009797          	auipc	a5,0x9
    80001ecc:	7b878793          	addi	a5,a5,1976 # 8000b680 <_ZTV9Semaphore+0x10>
    80001ed0:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80001ed4:	00850513          	addi	a0,a0,8
    80001ed8:	fffff097          	auipc	ra,0xfffff
    80001edc:	3e0080e7          	jalr	992(ra) # 800012b8 <_Z8sem_openPP11MySemaphorej>
}
    80001ee0:	00813083          	ld	ra,8(sp)
    80001ee4:	00013403          	ld	s0,0(sp)
    80001ee8:	01010113          	addi	sp,sp,16
    80001eec:	00008067          	ret

0000000080001ef0 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80001ef0:	ff010113          	addi	sp,sp,-16
    80001ef4:	00113423          	sd	ra,8(sp)
    80001ef8:	00813023          	sd	s0,0(sp)
    80001efc:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001f00:	00853503          	ld	a0,8(a0)
    80001f04:	fffff097          	auipc	ra,0xfffff
    80001f08:	410080e7          	jalr	1040(ra) # 80001314 <_Z8sem_waitP11MySemaphore>
}
    80001f0c:	00813083          	ld	ra,8(sp)
    80001f10:	00013403          	ld	s0,0(sp)
    80001f14:	01010113          	addi	sp,sp,16
    80001f18:	00008067          	ret

0000000080001f1c <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80001f1c:	ff010113          	addi	sp,sp,-16
    80001f20:	00113423          	sd	ra,8(sp)
    80001f24:	00813023          	sd	s0,0(sp)
    80001f28:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001f2c:	00853503          	ld	a0,8(a0)
    80001f30:	fffff097          	auipc	ra,0xfffff
    80001f34:	410080e7          	jalr	1040(ra) # 80001340 <_Z10sem_signalP11MySemaphore>
}
    80001f38:	00813083          	ld	ra,8(sp)
    80001f3c:	00013403          	ld	s0,0(sp)
    80001f40:	01010113          	addi	sp,sp,16
    80001f44:	00008067          	ret

0000000080001f48 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    80001f48:	ff010113          	addi	sp,sp,-16
    80001f4c:	00813423          	sd	s0,8(sp)
    80001f50:	01010413          	addi	s0,sp,16
    period=0;
    80001f54:	02053023          	sd	zero,32(a0)
}
    80001f58:	00813403          	ld	s0,8(sp)
    80001f5c:	01010113          	addi	sp,sp,16
    80001f60:	00008067          	ret

0000000080001f64 <_ZN14PeriodicThreadD1Ev>:

PeriodicThread::~PeriodicThread() noexcept {
    80001f64:	fe010113          	addi	sp,sp,-32
    80001f68:	00113c23          	sd	ra,24(sp)
    80001f6c:	00813823          	sd	s0,16(sp)
    80001f70:	00913423          	sd	s1,8(sp)
    80001f74:	02010413          	addi	s0,sp,32
    80001f78:	00050493          	mv	s1,a0
    80001f7c:	00009797          	auipc	a5,0x9
    80001f80:	72478793          	addi	a5,a5,1828 # 8000b6a0 <_ZTV14PeriodicThread+0x10>
    80001f84:	00f53023          	sd	a5,0(a0)
    terminate();
    80001f88:	00000097          	auipc	ra,0x0
    80001f8c:	fc0080e7          	jalr	-64(ra) # 80001f48 <_ZN14PeriodicThread9terminateEv>
PeriodicThread::~PeriodicThread() noexcept {
    80001f90:	00048513          	mv	a0,s1
    80001f94:	00000097          	auipc	ra,0x0
    80001f98:	cd4080e7          	jalr	-812(ra) # 80001c68 <_ZN6ThreadD1Ev>
}
    80001f9c:	01813083          	ld	ra,24(sp)
    80001fa0:	01013403          	ld	s0,16(sp)
    80001fa4:	00813483          	ld	s1,8(sp)
    80001fa8:	02010113          	addi	sp,sp,32
    80001fac:	00008067          	ret

0000000080001fb0 <_ZN14PeriodicThreadD0Ev>:
PeriodicThread::~PeriodicThread() noexcept {
    80001fb0:	fe010113          	addi	sp,sp,-32
    80001fb4:	00113c23          	sd	ra,24(sp)
    80001fb8:	00813823          	sd	s0,16(sp)
    80001fbc:	00913423          	sd	s1,8(sp)
    80001fc0:	02010413          	addi	s0,sp,32
    80001fc4:	00050493          	mv	s1,a0
}
    80001fc8:	00000097          	auipc	ra,0x0
    80001fcc:	f9c080e7          	jalr	-100(ra) # 80001f64 <_ZN14PeriodicThreadD1Ev>
    80001fd0:	00048513          	mv	a0,s1
    80001fd4:	fffff097          	auipc	ra,0xfffff
    80001fd8:	68c080e7          	jalr	1676(ra) # 80001660 <_ZdlPv>
    80001fdc:	01813083          	ld	ra,24(sp)
    80001fe0:	01013403          	ld	s0,16(sp)
    80001fe4:	00813483          	ld	s1,8(sp)
    80001fe8:	02010113          	addi	sp,sp,32
    80001fec:	00008067          	ret

0000000080001ff0 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(){
    80001ff0:	fe010113          	addi	sp,sp,-32
    80001ff4:	00113c23          	sd	ra,24(sp)
    80001ff8:	00813823          	sd	s0,16(sp)
    80001ffc:	00913423          	sd	s1,8(sp)
    80002000:	01213023          	sd	s2,0(sp)
    80002004:	02010413          	addi	s0,sp,32
    80002008:	00050493          	mv	s1,a0
    8000200c:	00058913          	mv	s2,a1
    80002010:	00000097          	auipc	ra,0x0
    80002014:	d34080e7          	jalr	-716(ra) # 80001d44 <_ZN6ThreadC1Ev>
    80002018:	00009797          	auipc	a5,0x9
    8000201c:	68878793          	addi	a5,a5,1672 # 8000b6a0 <_ZTV14PeriodicThread+0x10>
    80002020:	00f4b023          	sd	a5,0(s1)
    this->period = period;
    80002024:	0324b023          	sd	s2,32(s1)
}
    80002028:	01813083          	ld	ra,24(sp)
    8000202c:	01013403          	ld	s0,16(sp)
    80002030:	00813483          	ld	s1,8(sp)
    80002034:	00013903          	ld	s2,0(sp)
    80002038:	02010113          	addi	sp,sp,32
    8000203c:	00008067          	ret

0000000080002040 <_ZN7Console4getcEv>:

char Console::getc() {
    80002040:	ff010113          	addi	sp,sp,-16
    80002044:	00113423          	sd	ra,8(sp)
    80002048:	00813023          	sd	s0,0(sp)
    8000204c:	01010413          	addi	s0,sp,16
    return::getc();
    80002050:	fffff097          	auipc	ra,0xfffff
    80002054:	378080e7          	jalr	888(ra) # 800013c8 <_Z4getcv>
}
    80002058:	00813083          	ld	ra,8(sp)
    8000205c:	00013403          	ld	s0,0(sp)
    80002060:	01010113          	addi	sp,sp,16
    80002064:	00008067          	ret

0000000080002068 <_ZN7Console4putcEc>:
void Console::putc(char c) {
    80002068:	ff010113          	addi	sp,sp,-16
    8000206c:	00113423          	sd	ra,8(sp)
    80002070:	00813023          	sd	s0,0(sp)
    80002074:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002078:	fffff097          	auipc	ra,0xfffff
    8000207c:	32c080e7          	jalr	812(ra) # 800013a4 <_Z4putcc>
    80002080:	00813083          	ld	ra,8(sp)
    80002084:	00013403          	ld	s0,0(sp)
    80002088:	01010113          	addi	sp,sp,16
    8000208c:	00008067          	ret

0000000080002090 <_ZN6Thread3runEv>:

    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run (){}
    80002090:	ff010113          	addi	sp,sp,-16
    80002094:	00813423          	sd	s0,8(sp)
    80002098:	01010413          	addi	s0,sp,16
    8000209c:	00813403          	ld	s0,8(sp)
    800020a0:	01010113          	addi	sp,sp,16
    800020a4:	00008067          	ret

00000000800020a8 <_ZN14PeriodicThread18periodicActivationEv>:
    virtual ~PeriodicThread();

    virtual void run() override;
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    800020a8:	ff010113          	addi	sp,sp,-16
    800020ac:	00813423          	sd	s0,8(sp)
    800020b0:	01010413          	addi	s0,sp,16
    800020b4:	00813403          	ld	s0,8(sp)
    800020b8:	01010113          	addi	sp,sp,16
    800020bc:	00008067          	ret

00000000800020c0 <_ZN13BoundedBufferC1Em>:
#include "../h/BoundedBuffer.hpp"

BoundedBuffer::BoundedBuffer(uint64 cnt): maxCount(cnt), count(0), head(0), tail(0){
    800020c0:	fe010113          	addi	sp,sp,-32
    800020c4:	00113c23          	sd	ra,24(sp)
    800020c8:	00813823          	sd	s0,16(sp)
    800020cc:	00913423          	sd	s1,8(sp)
    800020d0:	02010413          	addi	s0,sp,32
    800020d4:	00050493          	mv	s1,a0
    800020d8:	00b53423          	sd	a1,8(a0)
    800020dc:	00053823          	sd	zero,16(a0)
    800020e0:	00053c23          	sd	zero,24(a0)
    800020e4:	02053023          	sd	zero,32(a0)
    sem_open(&itemAvailable, 0);
    800020e8:	00000593          	li	a1,0
    800020ec:	02850513          	addi	a0,a0,40
    800020f0:	fffff097          	auipc	ra,0xfffff
    800020f4:	1c8080e7          	jalr	456(ra) # 800012b8 <_Z8sem_openPP11MySemaphorej>
    sem_open(&spaceAvailable,maxCount);
    800020f8:	0084a583          	lw	a1,8(s1)
    800020fc:	03048513          	addi	a0,s1,48
    80002100:	fffff097          	auipc	ra,0xfffff
    80002104:	1b8080e7          	jalr	440(ra) # 800012b8 <_Z8sem_openPP11MySemaphorej>
    sem_open(&mutex, 1);
    80002108:	00100593          	li	a1,1
    8000210c:	03848513          	addi	a0,s1,56
    80002110:	fffff097          	auipc	ra,0xfffff
    80002114:	1a8080e7          	jalr	424(ra) # 800012b8 <_Z8sem_openPP11MySemaphorej>
    buff = new char[maxCount];
    80002118:	0084b503          	ld	a0,8(s1)
    8000211c:	fffff097          	auipc	ra,0xfffff
    80002120:	56c080e7          	jalr	1388(ra) # 80001688 <_Znam>
    80002124:	00a4b023          	sd	a0,0(s1)
}
    80002128:	01813083          	ld	ra,24(sp)
    8000212c:	01013403          	ld	s0,16(sp)
    80002130:	00813483          	ld	s1,8(sp)
    80002134:	02010113          	addi	sp,sp,32
    80002138:	00008067          	ret

000000008000213c <_ZN13BoundedBuffer3getEv>:

char BoundedBuffer::get() {
    8000213c:	fe010113          	addi	sp,sp,-32
    80002140:	00113c23          	sd	ra,24(sp)
    80002144:	00813823          	sd	s0,16(sp)
    80002148:	00913423          	sd	s1,8(sp)
    8000214c:	01213023          	sd	s2,0(sp)
    80002150:	02010413          	addi	s0,sp,32
    80002154:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80002158:	02853503          	ld	a0,40(a0)
    8000215c:	fffff097          	auipc	ra,0xfffff
    80002160:	1b8080e7          	jalr	440(ra) # 80001314 <_Z8sem_waitP11MySemaphore>
    sem_wait(mutex);
    80002164:	0384b503          	ld	a0,56(s1)
    80002168:	fffff097          	auipc	ra,0xfffff
    8000216c:	1ac080e7          	jalr	428(ra) # 80001314 <_Z8sem_waitP11MySemaphore>
    count--;
    80002170:	0104b783          	ld	a5,16(s1)
    80002174:	fff78793          	addi	a5,a5,-1
    80002178:	00f4b823          	sd	a5,16(s1)
    char c = buff[head];
    8000217c:	0004b703          	ld	a4,0(s1)
    80002180:	0184b783          	ld	a5,24(s1)
    80002184:	00f70733          	add	a4,a4,a5
    80002188:	00074903          	lbu	s2,0(a4)
    head = (head+1) % maxCount;
    8000218c:	00178793          	addi	a5,a5,1
    80002190:	0084b703          	ld	a4,8(s1)
    80002194:	02e7f7b3          	remu	a5,a5,a4
    80002198:	00f4bc23          	sd	a5,24(s1)
    sem_signal(mutex);
    8000219c:	0384b503          	ld	a0,56(s1)
    800021a0:	fffff097          	auipc	ra,0xfffff
    800021a4:	1a0080e7          	jalr	416(ra) # 80001340 <_Z10sem_signalP11MySemaphore>
    sem_signal(spaceAvailable);
    800021a8:	0304b503          	ld	a0,48(s1)
    800021ac:	fffff097          	auipc	ra,0xfffff
    800021b0:	194080e7          	jalr	404(ra) # 80001340 <_Z10sem_signalP11MySemaphore>
    return c;
}
    800021b4:	00090513          	mv	a0,s2
    800021b8:	01813083          	ld	ra,24(sp)
    800021bc:	01013403          	ld	s0,16(sp)
    800021c0:	00813483          	ld	s1,8(sp)
    800021c4:	00013903          	ld	s2,0(sp)
    800021c8:	02010113          	addi	sp,sp,32
    800021cc:	00008067          	ret

00000000800021d0 <_ZN13BoundedBuffer3putEc>:

void BoundedBuffer::put(char c) {
    800021d0:	fe010113          	addi	sp,sp,-32
    800021d4:	00113c23          	sd	ra,24(sp)
    800021d8:	00813823          	sd	s0,16(sp)
    800021dc:	00913423          	sd	s1,8(sp)
    800021e0:	01213023          	sd	s2,0(sp)
    800021e4:	02010413          	addi	s0,sp,32
    800021e8:	00050493          	mv	s1,a0
    800021ec:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800021f0:	03053503          	ld	a0,48(a0)
    800021f4:	fffff097          	auipc	ra,0xfffff
    800021f8:	120080e7          	jalr	288(ra) # 80001314 <_Z8sem_waitP11MySemaphore>
    sem_wait(mutex);
    800021fc:	0384b503          	ld	a0,56(s1)
    80002200:	fffff097          	auipc	ra,0xfffff
    80002204:	114080e7          	jalr	276(ra) # 80001314 <_Z8sem_waitP11MySemaphore>
    count++;
    80002208:	0104b783          	ld	a5,16(s1)
    8000220c:	00178793          	addi	a5,a5,1
    80002210:	00f4b823          	sd	a5,16(s1)
    buff[tail] = c;
    80002214:	0004b783          	ld	a5,0(s1)
    80002218:	0204b703          	ld	a4,32(s1)
    8000221c:	00e787b3          	add	a5,a5,a4
    80002220:	01278023          	sb	s2,0(a5)
    tail = (tail+1) % maxCount;
    80002224:	0204b783          	ld	a5,32(s1)
    80002228:	00178793          	addi	a5,a5,1
    8000222c:	0084b703          	ld	a4,8(s1)
    80002230:	02e7f7b3          	remu	a5,a5,a4
    80002234:	02f4b023          	sd	a5,32(s1)
    sem_signal(mutex);
    80002238:	0384b503          	ld	a0,56(s1)
    8000223c:	fffff097          	auipc	ra,0xfffff
    80002240:	104080e7          	jalr	260(ra) # 80001340 <_Z10sem_signalP11MySemaphore>
    sem_signal(itemAvailable);
    80002244:	0284b503          	ld	a0,40(s1)
    80002248:	fffff097          	auipc	ra,0xfffff
    8000224c:	0f8080e7          	jalr	248(ra) # 80001340 <_Z10sem_signalP11MySemaphore>
}
    80002250:	01813083          	ld	ra,24(sp)
    80002254:	01013403          	ld	s0,16(sp)
    80002258:	00813483          	ld	s1,8(sp)
    8000225c:	00013903          	ld	s2,0(sp)
    80002260:	02010113          	addi	sp,sp,32
    80002264:	00008067          	ret

0000000080002268 <_ZN13BoundedBufferD1Ev>:

BoundedBuffer::~BoundedBuffer() {
    80002268:	fe010113          	addi	sp,sp,-32
    8000226c:	00113c23          	sd	ra,24(sp)
    80002270:	00813823          	sd	s0,16(sp)
    80002274:	00913423          	sd	s1,8(sp)
    80002278:	02010413          	addi	s0,sp,32
    8000227c:	00050493          	mv	s1,a0
    mem_free(spaceAvailable);
    80002280:	03053503          	ld	a0,48(a0)
    80002284:	fffff097          	auipc	ra,0xfffff
    80002288:	ef4080e7          	jalr	-268(ra) # 80001178 <_Z8mem_freePv>
    mem_free(itemAvailable);
    8000228c:	0284b503          	ld	a0,40(s1)
    80002290:	fffff097          	auipc	ra,0xfffff
    80002294:	ee8080e7          	jalr	-280(ra) # 80001178 <_Z8mem_freePv>
    mem_free(mutex);
    80002298:	0384b503          	ld	a0,56(s1)
    8000229c:	fffff097          	auipc	ra,0xfffff
    800022a0:	edc080e7          	jalr	-292(ra) # 80001178 <_Z8mem_freePv>
    mem_free(buff);
    800022a4:	0004b503          	ld	a0,0(s1)
    800022a8:	fffff097          	auipc	ra,0xfffff
    800022ac:	ed0080e7          	jalr	-304(ra) # 80001178 <_Z8mem_freePv>
    800022b0:	01813083          	ld	ra,24(sp)
    800022b4:	01013403          	ld	s0,16(sp)
    800022b8:	00813483          	ld	s1,8(sp)
    800022bc:	02010113          	addi	sp,sp,32
    800022c0:	00008067          	ret

00000000800022c4 <_ZN3TCB13threadWrapperEv>:
    running = Scheduler::get();
    TCB::contextSwitch(&old->context, &running->context);
}


void TCB::threadWrapper() {
    800022c4:	ff010113          	addi	sp,sp,-16
    800022c8:	00113423          	sd	ra,8(sp)
    800022cc:	00813023          	sd	s0,0(sp)
    800022d0:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    800022d4:	00000097          	auipc	ra,0x0
    800022d8:	268080e7          	jalr	616(ra) # 8000253c <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    800022dc:	00009797          	auipc	a5,0x9
    800022e0:	66c7b783          	ld	a5,1644(a5) # 8000b948 <_ZN3TCB7runningE>
    800022e4:	0107b703          	ld	a4,16(a5)
    800022e8:	0187b503          	ld	a0,24(a5)
    800022ec:	000700e7          	jalr	a4
    thread_exit();
    800022f0:	fffff097          	auipc	ra,0xfffff
    800022f4:	f80080e7          	jalr	-128(ra) # 80001270 <_Z11thread_exitv>
}
    800022f8:	00813083          	ld	ra,8(sp)
    800022fc:	00013403          	ld	s0,0(sp)
    80002300:	01010113          	addi	sp,sp,16
    80002304:	00008067          	ret

0000000080002308 <_ZN3TCBC1EPFvPvES0_Pm>:
TCB::TCB(Body body, void *arg, uint64 *stack)
    80002308:	ff010113          	addi	sp,sp,-16
    8000230c:	00813423          	sd	s0,8(sp)
    80002310:	01010413          	addi	s0,sp,16
        : context({(uint64)&stack[DEFAULT_STACK_SIZE],(uint64)&threadWrapper}),
    80002314:	000087b7          	lui	a5,0x8
    80002318:	00f687b3          	add	a5,a3,a5
          blocked(false), timeSleep(0), timeSlice(TIME_SLICE){}
    8000231c:	00f53023          	sd	a5,0(a0)
    80002320:	00000797          	auipc	a5,0x0
    80002324:	fa478793          	addi	a5,a5,-92 # 800022c4 <_ZN3TCB13threadWrapperEv>
    80002328:	00f53423          	sd	a5,8(a0)
    8000232c:	00b53823          	sd	a1,16(a0)
    80002330:	00c53c23          	sd	a2,24(a0)
    80002334:	02d53023          	sd	a3,32(a0)
    80002338:	02050423          	sb	zero,40(a0)
    8000233c:	020504a3          	sb	zero,41(a0)
    80002340:	02053823          	sd	zero,48(a0)
    80002344:	00200793          	li	a5,2
    80002348:	02f53c23          	sd	a5,56(a0)
    8000234c:	00813403          	ld	s0,8(sp)
    80002350:	01010113          	addi	sp,sp,16
    80002354:	00008067          	ret

0000000080002358 <_ZN3TCB18createThreadHandleEPPS_PFvPvES2_Pm>:
int TCB::createThreadHandle(TCB **handle, Body body, void *arg, uint64 *stack){
    80002358:	fc010113          	addi	sp,sp,-64
    8000235c:	02113c23          	sd	ra,56(sp)
    80002360:	02813823          	sd	s0,48(sp)
    80002364:	02913423          	sd	s1,40(sp)
    80002368:	03213023          	sd	s2,32(sp)
    8000236c:	01313c23          	sd	s3,24(sp)
    80002370:	01413823          	sd	s4,16(sp)
    80002374:	01513423          	sd	s5,8(sp)
    80002378:	04010413          	addi	s0,sp,64
    8000237c:	00050913          	mv	s2,a0
    80002380:	00058993          	mv	s3,a1
    80002384:	00060a13          	mv	s4,a2
    80002388:	00068a93          	mv	s5,a3
    *handle = new TCB(body,arg,stack);
    8000238c:	04000513          	li	a0,64
    80002390:	fffff097          	auipc	ra,0xfffff
    80002394:	2a8080e7          	jalr	680(ra) # 80001638 <_Znwm>
    80002398:	00050493          	mv	s1,a0
    8000239c:	000a8693          	mv	a3,s5
    800023a0:	000a0613          	mv	a2,s4
    800023a4:	00098593          	mv	a1,s3
    800023a8:	00000097          	auipc	ra,0x0
    800023ac:	f60080e7          	jalr	-160(ra) # 80002308 <_ZN3TCBC1EPFvPvES0_Pm>
    800023b0:	00993023          	sd	s1,0(s2)
    if(!(*handle))  return -1;
    800023b4:	02048c63          	beqz	s1,800023ec <_ZN3TCB18createThreadHandleEPPS_PFvPvES2_Pm+0x94>
    Scheduler::put(*handle);
    800023b8:	00048513          	mv	a0,s1
    800023bc:	fffff097          	auipc	ra,0xfffff
    800023c0:	698080e7          	jalr	1688(ra) # 80001a54 <_ZN9Scheduler3putEP3TCB>
    return 0;
    800023c4:	00000513          	li	a0,0
}
    800023c8:	03813083          	ld	ra,56(sp)
    800023cc:	03013403          	ld	s0,48(sp)
    800023d0:	02813483          	ld	s1,40(sp)
    800023d4:	02013903          	ld	s2,32(sp)
    800023d8:	01813983          	ld	s3,24(sp)
    800023dc:	01013a03          	ld	s4,16(sp)
    800023e0:	00813a83          	ld	s5,8(sp)
    800023e4:	04010113          	addi	sp,sp,64
    800023e8:	00008067          	ret
    if(!(*handle))  return -1;
    800023ec:	fff00513          	li	a0,-1
    800023f0:	fd9ff06f          	j	800023c8 <_ZN3TCB18createThreadHandleEPPS_PFvPvES2_Pm+0x70>

00000000800023f4 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    800023f4:	fe010113          	addi	sp,sp,-32
    800023f8:	00113c23          	sd	ra,24(sp)
    800023fc:	00813823          	sd	s0,16(sp)
    80002400:	00913423          	sd	s1,8(sp)
    80002404:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80002408:	00009497          	auipc	s1,0x9
    8000240c:	5404b483          	ld	s1,1344(s1) # 8000b948 <_ZN3TCB7runningE>
    bool isFinished() const {return finished;}
    80002410:	0284c783          	lbu	a5,40(s1)
    if(!old->isFinished() && !old->isBlocked()){
    80002414:	00079663          	bnez	a5,80002420 <_ZN3TCB8dispatchEv+0x2c>
    bool isBlocked() const {return blocked;}
    80002418:	0294c783          	lbu	a5,41(s1)
    8000241c:	02078c63          	beqz	a5,80002454 <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    80002420:	fffff097          	auipc	ra,0xfffff
    80002424:	5cc080e7          	jalr	1484(ra) # 800019ec <_ZN9Scheduler3getEv>
    80002428:	00050593          	mv	a1,a0
    8000242c:	00009797          	auipc	a5,0x9
    80002430:	50a7be23          	sd	a0,1308(a5) # 8000b948 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80002434:	00048513          	mv	a0,s1
    80002438:	fffff097          	auipc	ra,0xfffff
    8000243c:	cd8080e7          	jalr	-808(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002440:	01813083          	ld	ra,24(sp)
    80002444:	01013403          	ld	s0,16(sp)
    80002448:	00813483          	ld	s1,8(sp)
    8000244c:	02010113          	addi	sp,sp,32
    80002450:	00008067          	ret
        Scheduler::put(old);
    80002454:	00048513          	mv	a0,s1
    80002458:	fffff097          	auipc	ra,0xfffff
    8000245c:	5fc080e7          	jalr	1532(ra) # 80001a54 <_ZN9Scheduler3putEP3TCB>
    80002460:	fc1ff06f          	j	80002420 <_ZN3TCB8dispatchEv+0x2c>

0000000080002464 <_ZN3TCB4exitEv>:

int TCB::exit() {
    80002464:	ff010113          	addi	sp,sp,-16
    80002468:	00113423          	sd	ra,8(sp)
    8000246c:	00813023          	sd	s0,0(sp)
    80002470:	01010413          	addi	s0,sp,16
    void setFinished(bool f) { TCB::finished = f;}
    80002474:	00009797          	auipc	a5,0x9
    80002478:	4d47b783          	ld	a5,1236(a5) # 8000b948 <_ZN3TCB7runningE>
    8000247c:	00100713          	li	a4,1
    80002480:	02e78423          	sb	a4,40(a5)
    running->setFinished(true);
    dispatch();
    80002484:	00000097          	auipc	ra,0x0
    80002488:	f70080e7          	jalr	-144(ra) # 800023f4 <_ZN3TCB8dispatchEv>
    return 0;
}
    8000248c:	00000513          	li	a0,0
    80002490:	00813083          	ld	ra,8(sp)
    80002494:	00013403          	ld	s0,0(sp)
    80002498:	01010113          	addi	sp,sp,16
    8000249c:	00008067          	ret

00000000800024a0 <_ZN3TCB10putToSleepEm>:

int TCB::putToSleep(time_t time) {
    if(time<=0) return -1;
    800024a0:	06050063          	beqz	a0,80002500 <_ZN3TCB10putToSleepEm+0x60>
int TCB::putToSleep(time_t time) {
    800024a4:	fe010113          	addi	sp,sp,-32
    800024a8:	00113c23          	sd	ra,24(sp)
    800024ac:	00813823          	sd	s0,16(sp)
    800024b0:	00913423          	sd	s1,8(sp)
    800024b4:	02010413          	addi	s0,sp,32
    800024b8:	00050793          	mv	a5,a0
    TCB::running->timeSleep = time;
    800024bc:	00009497          	auipc	s1,0x9
    800024c0:	48c48493          	addi	s1,s1,1164 # 8000b948 <_ZN3TCB7runningE>
    800024c4:	0004b503          	ld	a0,0(s1)
    800024c8:	02f53823          	sd	a5,48(a0)
    void setBlocked(bool f) { TCB::blocked = f;}
    800024cc:	00100793          	li	a5,1
    800024d0:	02f504a3          	sb	a5,41(a0)
    TCB::running->setBlocked(true);
    Asleep::put(TCB::running);
    800024d4:	00000097          	auipc	ra,0x0
    800024d8:	724080e7          	jalr	1828(ra) # 80002bf8 <_ZN6Asleep3putEP3TCB>
    TCB::timeSliceCounter = 0;
    800024dc:	0004b423          	sd	zero,8(s1)
    dispatch();
    800024e0:	00000097          	auipc	ra,0x0
    800024e4:	f14080e7          	jalr	-236(ra) # 800023f4 <_ZN3TCB8dispatchEv>
    return 0;
    800024e8:	00000513          	li	a0,0
}
    800024ec:	01813083          	ld	ra,24(sp)
    800024f0:	01013403          	ld	s0,16(sp)
    800024f4:	00813483          	ld	s1,8(sp)
    800024f8:	02010113          	addi	sp,sp,32
    800024fc:	00008067          	ret
    if(time<=0) return -1;
    80002500:	fff00513          	li	a0,-1
}
    80002504:	00008067          	ret

0000000080002508 <_ZN3TCBD1Ev>:

    80002508:	02053503          	ld	a0,32(a0)
    8000250c:	02050663          	beqz	a0,80002538 <_ZN3TCBD1Ev+0x30>
    80002510:	ff010113          	addi	sp,sp,-16
    80002514:	00113423          	sd	ra,8(sp)
    80002518:	00813023          	sd	s0,0(sp)
    8000251c:	01010413          	addi	s0,sp,16
    80002520:	fffff097          	auipc	ra,0xfffff
    80002524:	190080e7          	jalr	400(ra) # 800016b0 <_ZdaPv>
    80002528:	00813083          	ld	ra,8(sp)
    8000252c:	00013403          	ld	s0,0(sp)
    80002530:	01010113          	addi	sp,sp,16
    80002534:	00008067          	ret
    80002538:	00008067          	ret

000000008000253c <_ZN5Riscv10popSppSpieEv>:
#include "../h/MyConsole.hpp"
#include "../test/printing.hpp"

bool Riscv::isKernelMode = true;

void Riscv::popSppSpie() {
    8000253c:	ff010113          	addi	sp,sp,-16
    80002540:	00813423          	sd	s0,8(sp)
    80002544:	01010413          	addi	s0,sp,16
    if(isKernelMode){
    80002548:	00009797          	auipc	a5,0x9
    8000254c:	1787c783          	lbu	a5,376(a5) # 8000b6c0 <_ZN5Riscv12isKernelModeE>
    80002550:	02078063          	beqz	a5,80002570 <_ZN5Riscv10popSppSpieEv+0x34>
        __asm__ volatile("csrs sstatus, %0" : : "r"(SSTATUS_SPP));
    80002554:	10000793          	li	a5,256
    80002558:	1007a073          	csrs	sstatus,a5
    }
    else{
        __asm__ volatile("csrc sstatus, %0" : : "r"(SSTATUS_SPP));
    }
    __asm__ volatile("csrw sepc, ra");
    8000255c:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002560:	10200073          	sret
}
    80002564:	00813403          	ld	s0,8(sp)
    80002568:	01010113          	addi	sp,sp,16
    8000256c:	00008067          	ret
        __asm__ volatile("csrc sstatus, %0" : : "r"(SSTATUS_SPP));
    80002570:	10000793          	li	a5,256
    80002574:	1007b073          	csrc	sstatus,a5
    80002578:	fe5ff06f          	j	8000255c <_ZN5Riscv10popSppSpieEv+0x20>

000000008000257c <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    8000257c:	f9010113          	addi	sp,sp,-112
    80002580:	06113423          	sd	ra,104(sp)
    80002584:	06813023          	sd	s0,96(sp)
    80002588:	07010413          	addi	s0,sp,112
    uint64 volatile arg1, arg2, arg3, arg4;

    //Reading arguments from registers
    __asm__ volatile("mv %0, a4" : "=r"(arg4));
    8000258c:	00070793          	mv	a5,a4
    80002590:	fcf43823          	sd	a5,-48(s0)
    __asm__ volatile("mv %0, a1" : "=r"(arg1));
    80002594:	00058793          	mv	a5,a1
    80002598:	fef43423          	sd	a5,-24(s0)
    __asm__ volatile("mv %0, a2" : "=r"(arg2));
    8000259c:	00060793          	mv	a5,a2
    800025a0:	fef43023          	sd	a5,-32(s0)
    __asm__ volatile("mv %0, a3" : "=r"(arg3));
    800025a4:	00068793          	mv	a5,a3
    800025a8:	fcf43c23          	sd	a5,-40(s0)
    volatile uint64 cause, a0;
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    800025ac:	00050793          	mv	a5,a0
    800025b0:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800025b4:	142027f3          	csrr	a5,scause
    800025b8:	faf43423          	sd	a5,-88(s0)
    return scause;
    800025bc:	fa843783          	ld	a5,-88(s0)
    cause=r_scause();
    800025c0:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800025c4:	141027f3          	csrr	a5,sepc
    800025c8:	faf43023          	sd	a5,-96(s0)
    return sepc;
    800025cc:	fa043783          	ld	a5,-96(s0)
    volatile uint64 sepc, sstatus;
    sepc=r_sepc();
    800025d0:	faf43c23          	sd	a5,-72(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800025d4:	100027f3          	csrr	a5,sstatus
    800025d8:	f8f43c23          	sd	a5,-104(s0)
    return sstatus;
    800025dc:	f9843783          	ld	a5,-104(s0)
    sstatus=r_sstatus();
    800025e0:	faf43823          	sd	a5,-80(s0)

    if (cause == 0x8 || cause == 0x9) {
    800025e4:	fc843703          	ld	a4,-56(s0)
    800025e8:	00800793          	li	a5,8
    800025ec:	0ef70663          	beq	a4,a5,800026d8 <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
    800025f0:	fc843703          	ld	a4,-56(s0)
    800025f4:	00900793          	li	a5,9
    800025f8:	0ef70063          	beq	a4,a5,800026d8 <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
                MyConsole::myPut((char)arg1);
                break;
            }
        }
    }
    else if(cause == (1ul<<63 | 1)){
    800025fc:	fc843703          	ld	a4,-56(s0)
    80002600:	fff00793          	li	a5,-1
    80002604:	03f79793          	slli	a5,a5,0x3f
    80002608:	00178793          	addi	a5,a5,1
    8000260c:	22f70c63          	beq	a4,a5,80002844 <_ZN5Riscv20handleSupervisorTrapEv+0x2c8>
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
        }
        mc_sip(Riscv::SIP_SSIP);
    }
    else if(cause == (1ul<<63 | 9)){
    80002610:	fc843703          	ld	a4,-56(s0)
    80002614:	fff00793          	li	a5,-1
    80002618:	03f79793          	slli	a5,a5,0x3f
    8000261c:	00978793          	addi	a5,a5,9
    80002620:	26f70c63          	beq	a4,a5,80002898 <_ZN5Riscv20handleSupervisorTrapEv+0x31c>
        //console interrupt
        MyConsole::consoleHandler();
    }
    else{
        printString("Unhandled error on line: ");
    80002624:	00007517          	auipc	a0,0x7
    80002628:	9fc50513          	addi	a0,a0,-1540 # 80009020 <CONSOLE_STATUS+0x10>
    8000262c:	00003097          	auipc	ra,0x3
    80002630:	bd4080e7          	jalr	-1068(ra) # 80005200 <_Z11printStringPKc>
        printInt(sepc);
    80002634:	fb843503          	ld	a0,-72(s0)
    80002638:	00000613          	li	a2,0
    8000263c:	00a00593          	li	a1,10
    80002640:	0005051b          	sext.w	a0,a0
    80002644:	00003097          	auipc	ra,0x3
    80002648:	d6c080e7          	jalr	-660(ra) # 800053b0 <_Z8printIntiii>
        printString(", cause: ");
    8000264c:	00007517          	auipc	a0,0x7
    80002650:	9f450513          	addi	a0,a0,-1548 # 80009040 <CONSOLE_STATUS+0x30>
    80002654:	00003097          	auipc	ra,0x3
    80002658:	bac080e7          	jalr	-1108(ra) # 80005200 <_Z11printStringPKc>
        if(cause==0x5){
    8000265c:	fc843703          	ld	a4,-56(s0)
    80002660:	00500793          	li	a5,5
    80002664:	24f70063          	beq	a4,a5,800028a4 <_ZN5Riscv20handleSupervisorTrapEv+0x328>
            printString("address not available for reading.");
        }
        else if(cause==0x7){
    80002668:	fc843703          	ld	a4,-56(s0)
    8000266c:	00700793          	li	a5,7
    80002670:	24f70463          	beq	a4,a5,800028b8 <_ZN5Riscv20handleSupervisorTrapEv+0x33c>
            printString("address not available for writing.");
        }
        else if(cause==0x2){
    80002674:	fc843703          	ld	a4,-56(s0)
    80002678:	00200793          	li	a5,2
    8000267c:	24f70863          	beq	a4,a5,800028cc <_ZN5Riscv20handleSupervisorTrapEv+0x350>
            printString("illegal instruction.");
        }
        else{
            printString("unknown error. ");
    80002680:	00007517          	auipc	a0,0x7
    80002684:	a3850513          	addi	a0,a0,-1480 # 800090b8 <CONSOLE_STATUS+0xa8>
    80002688:	00003097          	auipc	ra,0x3
    8000268c:	b78080e7          	jalr	-1160(ra) # 80005200 <_Z11printStringPKc>
        }
        printString("\n");
    80002690:	00007517          	auipc	a0,0x7
    80002694:	e8050513          	addi	a0,a0,-384 # 80009510 <CONSOLE_STATUS+0x500>
    80002698:	00003097          	auipc	ra,0x3
    8000269c:	b68080e7          	jalr	-1176(ra) # 80005200 <_Z11printStringPKc>
        MyConsole::flushConsole();
    800026a0:	fffff097          	auipc	ra,0xfffff
    800026a4:	e00080e7          	jalr	-512(ra) # 800014a0 <_ZN9MyConsole12flushConsoleEv>
        __asm__ volatile("li t0, 0x5555");
    800026a8:	000052b7          	lui	t0,0x5
    800026ac:	5552829b          	addiw	t0,t0,1365
        __asm__ volatile("li t1, 0x100000");
    800026b0:	00100337          	lui	t1,0x100
        __asm__ volatile("sw t0, 0(t1)");
    800026b4:	00532023          	sw	t0,0(t1) # 100000 <_entry-0x7ff00000>
        Riscv::quit();

    }
    w_sepc(sepc);
    800026b8:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800026bc:	14179073          	csrw	sepc,a5
    w_sstatus(sstatus);
    800026c0:	fb043783          	ld	a5,-80(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800026c4:	10079073          	csrw	sstatus,a5
    800026c8:	06813083          	ld	ra,104(sp)
    800026cc:	06013403          	ld	s0,96(sp)
    800026d0:	07010113          	addi	sp,sp,112
    800026d4:	00008067          	ret
        sepc += 4;
    800026d8:	fb843783          	ld	a5,-72(s0)
    800026dc:	00478793          	addi	a5,a5,4
    800026e0:	faf43c23          	sd	a5,-72(s0)
        switch (a0) {
    800026e4:	fc043783          	ld	a5,-64(s0)
    800026e8:	04200713          	li	a4,66
    800026ec:	fcf766e3          	bltu	a4,a5,800026b8 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
    800026f0:	00279793          	slli	a5,a5,0x2
    800026f4:	00007717          	auipc	a4,0x7
    800026f8:	9d470713          	addi	a4,a4,-1580 # 800090c8 <CONSOLE_STATUS+0xb8>
    800026fc:	00e787b3          	add	a5,a5,a4
    80002700:	0007a783          	lw	a5,0(a5)
    80002704:	00e787b3          	add	a5,a5,a4
    80002708:	00078067          	jr	a5
                void* ret = MemoryAllocator::allocBlock((size_t)arg1);
    8000270c:	fe843503          	ld	a0,-24(s0)
    80002710:	00000097          	auipc	ra,0x0
    80002714:	21c080e7          	jalr	540(ra) # 8000292c <_ZN15MemoryAllocator10allocBlockEm>
                __asm__ volatile("sw %0, 80(x8)" : : "r"(ret));
    80002718:	04a42823          	sw	a0,80(s0)
                break;
    8000271c:	f9dff06f          	j	800026b8 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
                int ret = MemoryAllocator::freeBlock((void*)arg1);
    80002720:	fe843503          	ld	a0,-24(s0)
    80002724:	00000097          	auipc	ra,0x0
    80002728:	388080e7          	jalr	904(ra) # 80002aac <_ZN15MemoryAllocator9freeBlockEPv>
                __asm__ volatile("sw %0, 80(x8)" : : "r"(ret));
    8000272c:	04a42823          	sw	a0,80(s0)
                break;
    80002730:	f89ff06f          	j	800026b8 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
                size_t res = MemoryAllocator::getTotalFreeSize();
    80002734:	00000097          	auipc	ra,0x0
    80002738:	48c080e7          	jalr	1164(ra) # 80002bc0 <_ZN15MemoryAllocator16getTotalFreeSizeEv>
                __asm__ volatile("sw %0, 80(x8)" : : "r"(res));
    8000273c:	04a42823          	sw	a0,80(s0)
                break;
    80002740:	f79ff06f          	j	800026b8 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
                size_t res = MemoryAllocator::getLargestBlock();
    80002744:	00000097          	auipc	ra,0x0
    80002748:	430080e7          	jalr	1072(ra) # 80002b74 <_ZN15MemoryAllocator15getLargestBlockEv>
                __asm__ volatile("sw %0, 80(x8)" : : "r"(res));
    8000274c:	04a42823          	sw	a0,80(s0)
                break;
    80002750:	f69ff06f          	j	800026b8 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
                int ret = TCB::createThreadHandle((TCB**)arg1, (Body)arg2, (void*)arg3, (uint64*)arg4);
    80002754:	fe843503          	ld	a0,-24(s0)
    80002758:	fe043583          	ld	a1,-32(s0)
    8000275c:	fd843603          	ld	a2,-40(s0)
    80002760:	fd043683          	ld	a3,-48(s0)
    80002764:	00000097          	auipc	ra,0x0
    80002768:	bf4080e7          	jalr	-1036(ra) # 80002358 <_ZN3TCB18createThreadHandleEPPS_PFvPvES2_Pm>
                __asm__ volatile("sw %0, 80(x8)" : : "r"(ret));
    8000276c:	04a42823          	sw	a0,80(s0)
                break;
    80002770:	f49ff06f          	j	800026b8 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
                int ret = TCB::exit();
    80002774:	00000097          	auipc	ra,0x0
    80002778:	cf0080e7          	jalr	-784(ra) # 80002464 <_ZN3TCB4exitEv>
                __asm__ volatile("sw %0, 80(x8)" : : "r"(ret));
    8000277c:	04a42823          	sw	a0,80(s0)
                break;
    80002780:	f39ff06f          	j	800026b8 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
    static void dispatch();

    static int putToSleep(time_t time);

    static void setTimeSliceCounter(uint64 time){
        timeSliceCounter = time;
    80002784:	00009797          	auipc	a5,0x9
    80002788:	1147b783          	ld	a5,276(a5) # 8000b898 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000278c:	0007b023          	sd	zero,0(a5)
                TCB::dispatch();
    80002790:	00000097          	auipc	ra,0x0
    80002794:	c64080e7          	jalr	-924(ra) # 800023f4 <_ZN3TCB8dispatchEv>
                break;
    80002798:	f21ff06f          	j	800026b8 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
                int ret = MySemaphore::semOpen((MySemaphore**)arg1, (unsigned int)arg2);
    8000279c:	fe843503          	ld	a0,-24(s0)
    800027a0:	fe043583          	ld	a1,-32(s0)
    800027a4:	0005859b          	sext.w	a1,a1
    800027a8:	fffff097          	auipc	ra,0xfffff
    800027ac:	f30080e7          	jalr	-208(ra) # 800016d8 <_ZN11MySemaphore7semOpenEPPS_j>
                __asm__ volatile("sw %0, 80(x8)" : : "r"(ret));
    800027b0:	04a42823          	sw	a0,80(s0)
                break;
    800027b4:	f05ff06f          	j	800026b8 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
                int ret = MySemaphore::semClose((MySemaphore*)arg1);
    800027b8:	fe843503          	ld	a0,-24(s0)
    800027bc:	fffff097          	auipc	ra,0xfffff
    800027c0:	0c4080e7          	jalr	196(ra) # 80001880 <_ZN11MySemaphore8semCloseEPS_>
                __asm__ volatile("sw %0, 80(x8)" : : "r"(ret));
    800027c4:	04a42823          	sw	a0,80(s0)
                break;
    800027c8:	ef1ff06f          	j	800026b8 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
                MySemaphore* sem = (MySemaphore*)arg1;
    800027cc:	fe843503          	ld	a0,-24(s0)
                if(!sem)    ret = -1;
    800027d0:	00051863          	bnez	a0,800027e0 <_ZN5Riscv20handleSupervisorTrapEv+0x264>
    800027d4:	fff00513          	li	a0,-1
                __asm__ volatile("sw %0, 80(x8)" : : "r"(ret));
    800027d8:	04a42823          	sw	a0,80(s0)
                break;
    800027dc:	eddff06f          	j	800026b8 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
                else ret = sem->wait();
    800027e0:	fffff097          	auipc	ra,0xfffff
    800027e4:	048080e7          	jalr	72(ra) # 80001828 <_ZN11MySemaphore4waitEv>
    800027e8:	ff1ff06f          	j	800027d8 <_ZN5Riscv20handleSupervisorTrapEv+0x25c>
                MySemaphore* sem = (MySemaphore*)arg1;
    800027ec:	fe843503          	ld	a0,-24(s0)
                if(!sem)    ret = -1;
    800027f0:	00051863          	bnez	a0,80002800 <_ZN5Riscv20handleSupervisorTrapEv+0x284>
    800027f4:	fff00513          	li	a0,-1
                __asm__ volatile("sw %0, 80(x8)" : : "r"(ret));
    800027f8:	04a42823          	sw	a0,80(s0)
                break;
    800027fc:	ebdff06f          	j	800026b8 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
                else ret = sem->signal();
    80002800:	fffff097          	auipc	ra,0xfffff
    80002804:	154080e7          	jalr	340(ra) # 80001954 <_ZN11MySemaphore6signalEv>
    80002808:	ff1ff06f          	j	800027f8 <_ZN5Riscv20handleSupervisorTrapEv+0x27c>
                int ret = TCB::putToSleep((time_t)arg1);
    8000280c:	fe843503          	ld	a0,-24(s0)
    80002810:	00000097          	auipc	ra,0x0
    80002814:	c90080e7          	jalr	-880(ra) # 800024a0 <_ZN3TCB10putToSleepEm>
                __asm__ volatile("sw %0, 80(x8)" : : "r"(ret));
    80002818:	04a42823          	sw	a0,80(s0)
                break;
    8000281c:	e9dff06f          	j	800026b8 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
                char c = MyConsole::myGet();
    80002820:	fffff097          	auipc	ra,0xfffff
    80002824:	d00080e7          	jalr	-768(ra) # 80001520 <_ZN9MyConsole5myGetEv>
                __asm__ volatile("sw %0, 80(x8)" : : "r"(c));
    80002828:	04a42823          	sw	a0,80(s0)
                break;
    8000282c:	e8dff06f          	j	800026b8 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
                MyConsole::myPut((char)arg1);
    80002830:	fe843503          	ld	a0,-24(s0)
    80002834:	0ff57513          	andi	a0,a0,255
    80002838:	fffff097          	auipc	ra,0xfffff
    8000283c:	cb4080e7          	jalr	-844(ra) # 800014ec <_ZN9MyConsole5myPutEc>
                break;
    80002840:	e79ff06f          	j	800026b8 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
        Asleep::update();
    80002844:	00000097          	auipc	ra,0x0
    80002848:	4b0080e7          	jalr	1200(ra) # 80002cf4 <_ZN6Asleep6updateEv>
        TCB::timeSliceCounter++;
    8000284c:	00009717          	auipc	a4,0x9
    80002850:	04c73703          	ld	a4,76(a4) # 8000b898 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002854:	00073783          	ld	a5,0(a4)
    80002858:	00178793          	addi	a5,a5,1
    8000285c:	00f73023          	sd	a5,0(a4)
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()){
    80002860:	00009717          	auipc	a4,0x9
    80002864:	06073703          	ld	a4,96(a4) # 8000b8c0 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002868:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const{return timeSlice;}
    8000286c:	03873703          	ld	a4,56(a4)
    80002870:	00e7f863          	bgeu	a5,a4,80002880 <_ZN5Riscv20handleSupervisorTrapEv+0x304>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002874:	00200793          	li	a5,2
    80002878:	1447b073          	csrc	sip,a5
}
    8000287c:	e3dff06f          	j	800026b8 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
            TCB::timeSliceCounter = 0;
    80002880:	00009797          	auipc	a5,0x9
    80002884:	0187b783          	ld	a5,24(a5) # 8000b898 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002888:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    8000288c:	00000097          	auipc	ra,0x0
    80002890:	b68080e7          	jalr	-1176(ra) # 800023f4 <_ZN3TCB8dispatchEv>
    80002894:	fe1ff06f          	j	80002874 <_ZN5Riscv20handleSupervisorTrapEv+0x2f8>
        MyConsole::consoleHandler();
    80002898:	fffff097          	auipc	ra,0xfffff
    8000289c:	d1c080e7          	jalr	-740(ra) # 800015b4 <_ZN9MyConsole14consoleHandlerEv>
    800028a0:	e19ff06f          	j	800026b8 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
            printString("address not available for reading.");
    800028a4:	00006517          	auipc	a0,0x6
    800028a8:	7ac50513          	addi	a0,a0,1964 # 80009050 <CONSOLE_STATUS+0x40>
    800028ac:	00003097          	auipc	ra,0x3
    800028b0:	954080e7          	jalr	-1708(ra) # 80005200 <_Z11printStringPKc>
    800028b4:	dddff06f          	j	80002690 <_ZN5Riscv20handleSupervisorTrapEv+0x114>
            printString("address not available for writing.");
    800028b8:	00006517          	auipc	a0,0x6
    800028bc:	7c050513          	addi	a0,a0,1984 # 80009078 <CONSOLE_STATUS+0x68>
    800028c0:	00003097          	auipc	ra,0x3
    800028c4:	940080e7          	jalr	-1728(ra) # 80005200 <_Z11printStringPKc>
    800028c8:	dc9ff06f          	j	80002690 <_ZN5Riscv20handleSupervisorTrapEv+0x114>
            printString("illegal instruction.");
    800028cc:	00006517          	auipc	a0,0x6
    800028d0:	7d450513          	addi	a0,a0,2004 # 800090a0 <CONSOLE_STATUS+0x90>
    800028d4:	00003097          	auipc	ra,0x3
    800028d8:	92c080e7          	jalr	-1748(ra) # 80005200 <_Z11printStringPKc>
    800028dc:	db5ff06f          	j	80002690 <_ZN5Riscv20handleSupervisorTrapEv+0x114>

00000000800028e0 <_ZN15MemoryAllocator12getAllocatorEv>:
#include "../h/syscall_c.h"
#include "../h/MemoryAllocator.hpp"

MemoryAllocator::MemBlock* MemoryAllocator::freeHead = nullptr;

void MemoryAllocator::getAllocator() {
    800028e0:	ff010113          	addi	sp,sp,-16
    800028e4:	00813423          	sd	s0,8(sp)
    800028e8:	01010413          	addi	s0,sp,16
    freeHead = (MemBlock*)((char*)HEAP_START_ADDR);
    800028ec:	00009797          	auipc	a5,0x9
    800028f0:	f9c7b783          	ld	a5,-100(a5) # 8000b888 <_GLOBAL_OFFSET_TABLE_+0x18>
    800028f4:	0007b783          	ld	a5,0(a5)
    800028f8:	00009717          	auipc	a4,0x9
    800028fc:	06f73023          	sd	a5,96(a4) # 8000b958 <_ZN15MemoryAllocator8freeHeadE>
    freeHead->next = freeHead->prev = nullptr;
    80002900:	0007b823          	sd	zero,16(a5)
    80002904:	0007b423          	sd	zero,8(a5)
    freeHead->size = (size_t)((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - sizeof(MemBlock));
    80002908:	00009717          	auipc	a4,0x9
    8000290c:	fc073703          	ld	a4,-64(a4) # 8000b8c8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002910:	00073703          	ld	a4,0(a4)
    80002914:	40f70733          	sub	a4,a4,a5
    80002918:	fe870713          	addi	a4,a4,-24
    8000291c:	00e7b023          	sd	a4,0(a5)
}
    80002920:	00813403          	ld	s0,8(sp)
    80002924:	01010113          	addi	sp,sp,16
    80002928:	00008067          	ret

000000008000292c <_ZN15MemoryAllocator10allocBlockEm>:

void* MemoryAllocator::allocBlock(size_t size) {
    8000292c:	ff010113          	addi	sp,sp,-16
    80002930:	00813423          	sd	s0,8(sp)
    80002934:	01010413          	addi	s0,sp,16
    if (size == 0) return nullptr;
    80002938:	10050863          	beqz	a0,80002a48 <_ZN15MemoryAllocator10allocBlockEm+0x11c>
    8000293c:	00050693          	mv	a3,a0

    size_t sz = (size / MEM_BLOCK_SIZE + (size % MEM_BLOCK_SIZE == 0 ? 0 : 1)) * MEM_BLOCK_SIZE;
    80002940:	00655613          	srli	a2,a0,0x6
    80002944:	03f57793          	andi	a5,a0,63
    80002948:	00f037b3          	snez	a5,a5
    8000294c:	00f60633          	add	a2,a2,a5
    80002950:	00661613          	slli	a2,a2,0x6

    //Minimum size - sizeof(MemBlock)
    if (sz < sizeof(MemBlock)) {
    80002954:	01700793          	li	a5,23
    80002958:	00c7e463          	bltu	a5,a2,80002960 <_ZN15MemoryAllocator10allocBlockEm+0x34>
        sz = sizeof(MemBlock);
    8000295c:	01800613          	li	a2,24
    }

    MemBlock* cur = freeHead;
    80002960:	00009797          	auipc	a5,0x9
    80002964:	ff87b783          	ld	a5,-8(a5) # 8000b958 <_ZN15MemoryAllocator8freeHeadE>
    MemBlock* candidate = nullptr;


    //Best-fit algorithm
    int found = 0;
    80002968:	00000593          	li	a1,0
    MemBlock* candidate = nullptr;
    8000296c:	00000513          	li	a0,0
    80002970:	0100006f          	j	80002980 <_ZN15MemoryAllocator10allocBlockEm+0x54>

    for(;cur;cur=cur->next) {
        if(cur->size>=size){
            if(!found){
                candidate = cur;
    80002974:	00078513          	mv	a0,a5
                found = 1;
    80002978:	00100593          	li	a1,1
    for(;cur;cur=cur->next) {
    8000297c:	0087b783          	ld	a5,8(a5)
    80002980:	02078063          	beqz	a5,800029a0 <_ZN15MemoryAllocator10allocBlockEm+0x74>
        if(cur->size>=size){
    80002984:	0007b703          	ld	a4,0(a5)
    80002988:	fed76ae3          	bltu	a4,a3,8000297c <_ZN15MemoryAllocator10allocBlockEm+0x50>
            if(!found){
    8000298c:	fe0584e3          	beqz	a1,80002974 <_ZN15MemoryAllocator10allocBlockEm+0x48>
            }
            else if(cur->size < candidate->size){
    80002990:	00053803          	ld	a6,0(a0)
    80002994:	ff0774e3          	bgeu	a4,a6,8000297c <_ZN15MemoryAllocator10allocBlockEm+0x50>
                candidate = cur;
    80002998:	00078513          	mv	a0,a5
    8000299c:	fe1ff06f          	j	8000297c <_ZN15MemoryAllocator10allocBlockEm+0x50>
        }
    }

    cur = candidate;

    if (!cur) return nullptr;
    800029a0:	02050e63          	beqz	a0,800029dc <_ZN15MemoryAllocator10allocBlockEm+0xb0>

    if (cur->size == sz || cur->size-sz < sizeof(MemBlock)) {
    800029a4:	00053783          	ld	a5,0(a0)
    800029a8:	00c78863          	beq	a5,a2,800029b8 <_ZN15MemoryAllocator10allocBlockEm+0x8c>
    800029ac:	40c787b3          	sub	a5,a5,a2
    800029b0:	01700713          	li	a4,23
    800029b4:	04f76263          	bltu	a4,a5,800029f8 <_ZN15MemoryAllocator10allocBlockEm+0xcc>
        if (cur->next) cur->next->prev = cur->prev;
    800029b8:	00853783          	ld	a5,8(a0)
    800029bc:	00078663          	beqz	a5,800029c8 <_ZN15MemoryAllocator10allocBlockEm+0x9c>
    800029c0:	01053703          	ld	a4,16(a0)
    800029c4:	00e7b823          	sd	a4,16(a5)
        if (cur->prev) cur->prev->next = cur->next;
    800029c8:	01053783          	ld	a5,16(a0)
    800029cc:	00078e63          	beqz	a5,800029e8 <_ZN15MemoryAllocator10allocBlockEm+0xbc>
    800029d0:	00853703          	ld	a4,8(a0)
    800029d4:	00e7b423          	sd	a4,8(a5)
        else freeHead = cur->next;

        return (char*)cur + sizeof(MemBlock);
    800029d8:	01850513          	addi	a0,a0,24

        cur->size = sz;

        return (char*)cur + sizeof(MemBlock);
    }
}
    800029dc:	00813403          	ld	s0,8(sp)
    800029e0:	01010113          	addi	sp,sp,16
    800029e4:	00008067          	ret
        else freeHead = cur->next;
    800029e8:	00853783          	ld	a5,8(a0)
    800029ec:	00009717          	auipc	a4,0x9
    800029f0:	f6f73623          	sd	a5,-148(a4) # 8000b958 <_ZN15MemoryAllocator8freeHeadE>
    800029f4:	fe5ff06f          	j	800029d8 <_ZN15MemoryAllocator10allocBlockEm+0xac>
        MemBlock* newFree = (MemBlock*)((char*)cur + sizeof(MemBlock) + sz);
    800029f8:	01860713          	addi	a4,a2,24
    800029fc:	00e50733          	add	a4,a0,a4
        newFree->size = cur->size - sz - sizeof(MemBlock);
    80002a00:	fe878793          	addi	a5,a5,-24
    80002a04:	00f73023          	sd	a5,0(a4)
        newFree->next = cur->next;
    80002a08:	00853783          	ld	a5,8(a0)
    80002a0c:	00f73423          	sd	a5,8(a4)
        newFree->prev = cur->prev;
    80002a10:	01053783          	ld	a5,16(a0)
    80002a14:	00f73823          	sd	a5,16(a4)
        if (cur->next) cur->next->prev = newFree;
    80002a18:	00853783          	ld	a5,8(a0)
    80002a1c:	00078463          	beqz	a5,80002a24 <_ZN15MemoryAllocator10allocBlockEm+0xf8>
    80002a20:	00e7b823          	sd	a4,16(a5)
        if (cur->prev) cur->prev->next = newFree;
    80002a24:	01053783          	ld	a5,16(a0)
    80002a28:	00078a63          	beqz	a5,80002a3c <_ZN15MemoryAllocator10allocBlockEm+0x110>
    80002a2c:	00e7b423          	sd	a4,8(a5)
        cur->size = sz;
    80002a30:	00c53023          	sd	a2,0(a0)
        return (char*)cur + sizeof(MemBlock);
    80002a34:	01850513          	addi	a0,a0,24
    80002a38:	fa5ff06f          	j	800029dc <_ZN15MemoryAllocator10allocBlockEm+0xb0>
        else freeHead = newFree;
    80002a3c:	00009797          	auipc	a5,0x9
    80002a40:	f0e7be23          	sd	a4,-228(a5) # 8000b958 <_ZN15MemoryAllocator8freeHeadE>
    80002a44:	fedff06f          	j	80002a30 <_ZN15MemoryAllocator10allocBlockEm+0x104>
    if (size == 0) return nullptr;
    80002a48:	00000513          	li	a0,0
    80002a4c:	f91ff06f          	j	800029dc <_ZN15MemoryAllocator10allocBlockEm+0xb0>

0000000080002a50 <_ZN15MemoryAllocator10tryToMergeEPNS_8MemBlockE>:

    return 0;
}

//Ideja preuzeta iz zadatka sa vezbi
void MemoryAllocator::tryToMerge(MemBlock* cur) {
    80002a50:	ff010113          	addi	sp,sp,-16
    80002a54:	00813423          	sd	s0,8(sp)
    80002a58:	01010413          	addi	s0,sp,16
    if (!cur) return;
    80002a5c:	00050e63          	beqz	a0,80002a78 <_ZN15MemoryAllocator10tryToMergeEPNS_8MemBlockE+0x28>
    if (cur->next && (char*)cur + sizeof(MemBlock) + cur->size == (char*)cur->next) {
    80002a60:	00853783          	ld	a5,8(a0)
    80002a64:	00078a63          	beqz	a5,80002a78 <_ZN15MemoryAllocator10tryToMergeEPNS_8MemBlockE+0x28>
    80002a68:	00053683          	ld	a3,0(a0)
    80002a6c:	01868713          	addi	a4,a3,24
    80002a70:	00e50733          	add	a4,a0,a4
    80002a74:	00e78863          	beq	a5,a4,80002a84 <_ZN15MemoryAllocator10tryToMergeEPNS_8MemBlockE+0x34>
        MemBlock* nextBlock = cur->next;
        cur->size += sizeof(MemBlock) + nextBlock->size;
        cur->next = nextBlock->next;
        if (nextBlock->next) nextBlock->next->prev = cur;
    }
}
    80002a78:	00813403          	ld	s0,8(sp)
    80002a7c:	01010113          	addi	sp,sp,16
    80002a80:	00008067          	ret
        cur->size += sizeof(MemBlock) + nextBlock->size;
    80002a84:	0007b703          	ld	a4,0(a5)
    80002a88:	00e686b3          	add	a3,a3,a4
    80002a8c:	01868693          	addi	a3,a3,24
    80002a90:	00d53023          	sd	a3,0(a0)
        cur->next = nextBlock->next;
    80002a94:	0087b703          	ld	a4,8(a5)
    80002a98:	00e53423          	sd	a4,8(a0)
        if (nextBlock->next) nextBlock->next->prev = cur;
    80002a9c:	0087b783          	ld	a5,8(a5)
    80002aa0:	fc078ce3          	beqz	a5,80002a78 <_ZN15MemoryAllocator10tryToMergeEPNS_8MemBlockE+0x28>
    80002aa4:	00a7b823          	sd	a0,16(a5)
    80002aa8:	fd1ff06f          	j	80002a78 <_ZN15MemoryAllocator10tryToMergeEPNS_8MemBlockE+0x28>

0000000080002aac <_ZN15MemoryAllocator9freeBlockEPv>:
    if (!ptr) return 0;
    80002aac:	0a050863          	beqz	a0,80002b5c <_ZN15MemoryAllocator9freeBlockEPv+0xb0>
int MemoryAllocator::freeBlock(void* ptr) {
    80002ab0:	fe010113          	addi	sp,sp,-32
    80002ab4:	00113c23          	sd	ra,24(sp)
    80002ab8:	00813823          	sd	s0,16(sp)
    80002abc:	00913423          	sd	s1,8(sp)
    80002ac0:	02010413          	addi	s0,sp,32
    80002ac4:	00050493          	mv	s1,a0
    MemBlock* cur = (MemBlock*)((char*)ptr - sizeof(MemBlock));
    80002ac8:	fe850513          	addi	a0,a0,-24
    if ((char*)cur < (char*)HEAP_START_ADDR || (char*)cur >= (char*)HEAP_END_ADDR) return -1;
    80002acc:	00009797          	auipc	a5,0x9
    80002ad0:	dbc7b783          	ld	a5,-580(a5) # 8000b888 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002ad4:	0007b783          	ld	a5,0(a5)
    80002ad8:	08f56663          	bltu	a0,a5,80002b64 <_ZN15MemoryAllocator9freeBlockEPv+0xb8>
    80002adc:	00009797          	auipc	a5,0x9
    80002ae0:	dec7b783          	ld	a5,-532(a5) # 8000b8c8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002ae4:	0007b783          	ld	a5,0(a5)
    80002ae8:	08f57263          	bgeu	a0,a5,80002b6c <_ZN15MemoryAllocator9freeBlockEPv+0xc0>
    MemBlock* tmp = freeHead;
    80002aec:	00009797          	auipc	a5,0x9
    80002af0:	e6c7b783          	ld	a5,-404(a5) # 8000b958 <_ZN15MemoryAllocator8freeHeadE>
    MemBlock* prev = nullptr;
    80002af4:	00000713          	li	a4,0
    while (tmp && (char*)tmp < (char*)cur) {
    80002af8:	00078a63          	beqz	a5,80002b0c <_ZN15MemoryAllocator9freeBlockEPv+0x60>
    80002afc:	00a7f863          	bgeu	a5,a0,80002b0c <_ZN15MemoryAllocator9freeBlockEPv+0x60>
        prev = tmp;
    80002b00:	00078713          	mv	a4,a5
        tmp = tmp->next;
    80002b04:	0087b783          	ld	a5,8(a5)
    while (tmp && (char*)tmp < (char*)cur) {
    80002b08:	ff1ff06f          	j	80002af8 <_ZN15MemoryAllocator9freeBlockEPv+0x4c>
    cur->next = tmp;
    80002b0c:	fef4b823          	sd	a5,-16(s1)
    cur->prev = prev;
    80002b10:	fee4bc23          	sd	a4,-8(s1)
    if (tmp) tmp->prev = cur;
    80002b14:	00078463          	beqz	a5,80002b1c <_ZN15MemoryAllocator9freeBlockEPv+0x70>
    80002b18:	00a7b823          	sd	a0,16(a5)
    if (prev) prev->next = cur;
    80002b1c:	02070a63          	beqz	a4,80002b50 <_ZN15MemoryAllocator9freeBlockEPv+0xa4>
    80002b20:	00a73423          	sd	a0,8(a4)
    tryToMerge(cur);
    80002b24:	00000097          	auipc	ra,0x0
    80002b28:	f2c080e7          	jalr	-212(ra) # 80002a50 <_ZN15MemoryAllocator10tryToMergeEPNS_8MemBlockE>
    tryToMerge(cur->prev);
    80002b2c:	ff84b503          	ld	a0,-8(s1)
    80002b30:	00000097          	auipc	ra,0x0
    80002b34:	f20080e7          	jalr	-224(ra) # 80002a50 <_ZN15MemoryAllocator10tryToMergeEPNS_8MemBlockE>
    return 0;
    80002b38:	00000513          	li	a0,0
}
    80002b3c:	01813083          	ld	ra,24(sp)
    80002b40:	01013403          	ld	s0,16(sp)
    80002b44:	00813483          	ld	s1,8(sp)
    80002b48:	02010113          	addi	sp,sp,32
    80002b4c:	00008067          	ret
    else freeHead = cur;
    80002b50:	00009797          	auipc	a5,0x9
    80002b54:	e0a7b423          	sd	a0,-504(a5) # 8000b958 <_ZN15MemoryAllocator8freeHeadE>
    80002b58:	fcdff06f          	j	80002b24 <_ZN15MemoryAllocator9freeBlockEPv+0x78>
    if (!ptr) return 0;
    80002b5c:	00000513          	li	a0,0
}
    80002b60:	00008067          	ret
    if ((char*)cur < (char*)HEAP_START_ADDR || (char*)cur >= (char*)HEAP_END_ADDR) return -1;
    80002b64:	fff00513          	li	a0,-1
    80002b68:	fd5ff06f          	j	80002b3c <_ZN15MemoryAllocator9freeBlockEPv+0x90>
    80002b6c:	fff00513          	li	a0,-1
    80002b70:	fcdff06f          	j	80002b3c <_ZN15MemoryAllocator9freeBlockEPv+0x90>

0000000080002b74 <_ZN15MemoryAllocator15getLargestBlockEv>:

size_t MemoryAllocator::getLargestBlock() {
    80002b74:	ff010113          	addi	sp,sp,-16
    80002b78:	00813423          	sd	s0,8(sp)
    80002b7c:	01010413          	addi	s0,sp,16
    if (!freeHead) return 0;
    80002b80:	00009797          	auipc	a5,0x9
    80002b84:	dd87b783          	ld	a5,-552(a5) # 8000b958 <_ZN15MemoryAllocator8freeHeadE>
    80002b88:	02078463          	beqz	a5,80002bb0 <_ZN15MemoryAllocator15getLargestBlockEv+0x3c>
    size_t curMax = freeHead->size;
    80002b8c:	0007b503          	ld	a0,0(a5)
    MemBlock* cur = freeHead->next;
    80002b90:	0087b783          	ld	a5,8(a5)
    80002b94:	0080006f          	j	80002b9c <_ZN15MemoryAllocator15getLargestBlockEv+0x28>
    while (cur) {
        if (cur->size > curMax) curMax = cur->size;
        cur = cur->next;
    80002b98:	0087b783          	ld	a5,8(a5)
    while (cur) {
    80002b9c:	00078c63          	beqz	a5,80002bb4 <_ZN15MemoryAllocator15getLargestBlockEv+0x40>
        if (cur->size > curMax) curMax = cur->size;
    80002ba0:	0007b703          	ld	a4,0(a5)
    80002ba4:	fee57ae3          	bgeu	a0,a4,80002b98 <_ZN15MemoryAllocator15getLargestBlockEv+0x24>
    80002ba8:	00070513          	mv	a0,a4
    80002bac:	fedff06f          	j	80002b98 <_ZN15MemoryAllocator15getLargestBlockEv+0x24>
    if (!freeHead) return 0;
    80002bb0:	00000513          	li	a0,0
    }
    return curMax;
}
    80002bb4:	00813403          	ld	s0,8(sp)
    80002bb8:	01010113          	addi	sp,sp,16
    80002bbc:	00008067          	ret

0000000080002bc0 <_ZN15MemoryAllocator16getTotalFreeSizeEv>:

size_t MemoryAllocator::getTotalFreeSize() {
    80002bc0:	ff010113          	addi	sp,sp,-16
    80002bc4:	00813423          	sd	s0,8(sp)
    80002bc8:	01010413          	addi	s0,sp,16
    size_t total = 0;
    MemBlock* cur = freeHead;
    80002bcc:	00009797          	auipc	a5,0x9
    80002bd0:	d8c7b783          	ld	a5,-628(a5) # 8000b958 <_ZN15MemoryAllocator8freeHeadE>
    size_t total = 0;
    80002bd4:	00000513          	li	a0,0
    while (cur) {
    80002bd8:	00078a63          	beqz	a5,80002bec <_ZN15MemoryAllocator16getTotalFreeSizeEv+0x2c>
        total += cur->size;
    80002bdc:	0007b703          	ld	a4,0(a5)
    80002be0:	00e50533          	add	a0,a0,a4
        cur = cur->next;
    80002be4:	0087b783          	ld	a5,8(a5)
    while (cur) {
    80002be8:	ff1ff06f          	j	80002bd8 <_ZN15MemoryAllocator16getTotalFreeSizeEv+0x18>
    }
    return total;
}
    80002bec:	00813403          	ld	s0,8(sp)
    80002bf0:	01010113          	addi	sp,sp,16
    80002bf4:	00008067          	ret

0000000080002bf8 <_ZN6Asleep3putEP3TCB>:
#include "../h/Asleep.hpp"
#include "../h/Scheduler.hpp"

Asleep::Node* Asleep::head = nullptr;

void Asleep::put(TCB* tcb) {
    80002bf8:	fe010113          	addi	sp,sp,-32
    80002bfc:	00113c23          	sd	ra,24(sp)
    80002c00:	00813823          	sd	s0,16(sp)
    80002c04:	00913423          	sd	s1,8(sp)
    80002c08:	02010413          	addi	s0,sp,32
    80002c0c:	00050493          	mv	s1,a0
    Node* newNode = new Node(tcb);
    80002c10:	01000513          	li	a0,16
    80002c14:	fffff097          	auipc	ra,0xfffff
    80002c18:	a24080e7          	jalr	-1500(ra) # 80001638 <_Znwm>
class Asleep {
private:
    struct Node {
        TCB* tcb;
        Node* next;
        explicit Node(TCB* t) : tcb(t), next(nullptr) {}
    80002c1c:	00953023          	sd	s1,0(a0)
    80002c20:	00053423          	sd	zero,8(a0)

    if (!head) {
    80002c24:	00009597          	auipc	a1,0x9
    80002c28:	d3c5b583          	ld	a1,-708(a1) # 8000b960 <_ZN6Asleep4headE>
    80002c2c:	02058a63          	beqz	a1,80002c60 <_ZN6Asleep3putEP3TCB+0x68>
        head = newNode;
        return;
    }

    Node* curr = head;
    80002c30:	00058793          	mv	a5,a1
    Node* prev = nullptr;
    80002c34:	00000613          	li	a2,0

    while (curr && curr->tcb->timeSleep <= tcb->timeSleep) {
    80002c38:	02078a63          	beqz	a5,80002c6c <_ZN6Asleep3putEP3TCB+0x74>
    80002c3c:	0007b703          	ld	a4,0(a5)
    80002c40:	03073683          	ld	a3,48(a4)
    80002c44:	0304b703          	ld	a4,48(s1)
    80002c48:	02d76263          	bltu	a4,a3,80002c6c <_ZN6Asleep3putEP3TCB+0x74>
        tcb->timeSleep -= curr->tcb->timeSleep;
    80002c4c:	40d70733          	sub	a4,a4,a3
    80002c50:	02e4b823          	sd	a4,48(s1)
        prev = curr;
    80002c54:	00078613          	mv	a2,a5
        curr = curr->next;
    80002c58:	0087b783          	ld	a5,8(a5)
    while (curr && curr->tcb->timeSleep <= tcb->timeSleep) {
    80002c5c:	fddff06f          	j	80002c38 <_ZN6Asleep3putEP3TCB+0x40>
        head = newNode;
    80002c60:	00009797          	auipc	a5,0x9
    80002c64:	d0a7b023          	sd	a0,-768(a5) # 8000b960 <_ZN6Asleep4headE>
        return;
    80002c68:	0340006f          	j	80002c9c <_ZN6Asleep3putEP3TCB+0xa4>
    }

    if (!curr) {
    80002c6c:	04078263          	beqz	a5,80002cb0 <_ZN6Asleep3putEP3TCB+0xb8>
        newNode->tcb->timeSleep = tcb->timeSleep;
        prev->next = newNode;
    }
    else if (!prev) {
    80002c70:	04060a63          	beqz	a2,80002cc4 <_ZN6Asleep3putEP3TCB+0xcc>
        newNode->tcb->timeSleep = tcb->timeSleep;
        newNode->next = head;
        head = newNode;
    }
    else {
        newNode->tcb->timeSleep = tcb->timeSleep;
    80002c74:	00053703          	ld	a4,0(a0)
    80002c78:	0304b683          	ld	a3,48(s1)
    80002c7c:	02d73823          	sd	a3,48(a4)
        prev->next = newNode;
    80002c80:	00a63423          	sd	a0,8(a2)
        newNode->next = curr;
    80002c84:	00f53423          	sd	a5,8(a0)
        curr->tcb->timeSleep -= tcb->timeSleep;
    80002c88:	0007b703          	ld	a4,0(a5)
    80002c8c:	0304b683          	ld	a3,48(s1)
    80002c90:	03073783          	ld	a5,48(a4)
    80002c94:	40d787b3          	sub	a5,a5,a3
    80002c98:	02f73823          	sd	a5,48(a4)
    }
}
    80002c9c:	01813083          	ld	ra,24(sp)
    80002ca0:	01013403          	ld	s0,16(sp)
    80002ca4:	00813483          	ld	s1,8(sp)
    80002ca8:	02010113          	addi	sp,sp,32
    80002cac:	00008067          	ret
        newNode->tcb->timeSleep = tcb->timeSleep;
    80002cb0:	00053783          	ld	a5,0(a0)
    80002cb4:	0304b703          	ld	a4,48(s1)
    80002cb8:	02e7b823          	sd	a4,48(a5)
        prev->next = newNode;
    80002cbc:	00a63423          	sd	a0,8(a2)
    80002cc0:	fddff06f          	j	80002c9c <_ZN6Asleep3putEP3TCB+0xa4>
        head->tcb->timeSleep -= tcb->timeSleep;
    80002cc4:	0005b703          	ld	a4,0(a1)
    80002cc8:	0304b683          	ld	a3,48(s1)
    80002ccc:	03073783          	ld	a5,48(a4)
    80002cd0:	40d787b3          	sub	a5,a5,a3
    80002cd4:	02f73823          	sd	a5,48(a4)
        newNode->tcb->timeSleep = tcb->timeSleep;
    80002cd8:	00053783          	ld	a5,0(a0)
    80002cdc:	0304b703          	ld	a4,48(s1)
    80002ce0:	02e7b823          	sd	a4,48(a5)
        newNode->next = head;
    80002ce4:	00b53423          	sd	a1,8(a0)
        head = newNode;
    80002ce8:	00009797          	auipc	a5,0x9
    80002cec:	c6a7bc23          	sd	a0,-904(a5) # 8000b960 <_ZN6Asleep4headE>
    80002cf0:	fadff06f          	j	80002c9c <_ZN6Asleep3putEP3TCB+0xa4>

0000000080002cf4 <_ZN6Asleep6updateEv>:

void Asleep::update() {
    if (!head) return;
    80002cf4:	00009797          	auipc	a5,0x9
    80002cf8:	c6c7b783          	ld	a5,-916(a5) # 8000b960 <_ZN6Asleep4headE>
    80002cfc:	08078463          	beqz	a5,80002d84 <_ZN6Asleep6updateEv+0x90>
void Asleep::update() {
    80002d00:	fe010113          	addi	sp,sp,-32
    80002d04:	00113c23          	sd	ra,24(sp)
    80002d08:	00813823          	sd	s0,16(sp)
    80002d0c:	00913423          	sd	s1,8(sp)
    80002d10:	02010413          	addi	s0,sp,32

    head->tcb->timeSleep--;
    80002d14:	0007b703          	ld	a4,0(a5)
    80002d18:	03073783          	ld	a5,48(a4)
    80002d1c:	fff78793          	addi	a5,a5,-1
    80002d20:	02f73823          	sd	a5,48(a4)
    while (head && head->tcb->timeSleep == 0) {
    80002d24:	00009497          	auipc	s1,0x9
    80002d28:	c3c4b483          	ld	s1,-964(s1) # 8000b960 <_ZN6Asleep4headE>
    80002d2c:	04048263          	beqz	s1,80002d70 <_ZN6Asleep6updateEv+0x7c>
    80002d30:	0004b503          	ld	a0,0(s1)
    80002d34:	03053783          	ld	a5,48(a0)
    80002d38:	02079c63          	bnez	a5,80002d70 <_ZN6Asleep6updateEv+0x7c>
    void setBlocked(bool f) { TCB::blocked = f;}
    80002d3c:	020504a3          	sb	zero,41(a0)
        Node* old = head;
        TCB* tcb = old->tcb;
        tcb->setBlocked(false);
        Scheduler::put(tcb);
    80002d40:	fffff097          	auipc	ra,0xfffff
    80002d44:	d14080e7          	jalr	-748(ra) # 80001a54 <_ZN9Scheduler3putEP3TCB>
        head = head->next;
    80002d48:	00009797          	auipc	a5,0x9
    80002d4c:	c1878793          	addi	a5,a5,-1000 # 8000b960 <_ZN6Asleep4headE>
    80002d50:	0007b703          	ld	a4,0(a5)
    80002d54:	00873703          	ld	a4,8(a4)
    80002d58:	00e7b023          	sd	a4,0(a5)
        delete old;
    80002d5c:	fc0484e3          	beqz	s1,80002d24 <_ZN6Asleep6updateEv+0x30>
    80002d60:	00048513          	mv	a0,s1
    80002d64:	fffff097          	auipc	ra,0xfffff
    80002d68:	8fc080e7          	jalr	-1796(ra) # 80001660 <_ZdlPv>
    80002d6c:	fb9ff06f          	j	80002d24 <_ZN6Asleep6updateEv+0x30>
    }
}
    80002d70:	01813083          	ld	ra,24(sp)
    80002d74:	01013403          	ld	s0,16(sp)
    80002d78:	00813483          	ld	s1,8(sp)
    80002d7c:	02010113          	addi	sp,sp,32
    80002d80:	00008067          	ret
    80002d84:	00008067          	ret

0000000080002d88 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002d88:	fe010113          	addi	sp,sp,-32
    80002d8c:	00113c23          	sd	ra,24(sp)
    80002d90:	00813823          	sd	s0,16(sp)
    80002d94:	00913423          	sd	s1,8(sp)
    80002d98:	01213023          	sd	s2,0(sp)
    80002d9c:	02010413          	addi	s0,sp,32
    80002da0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002da4:	00000913          	li	s2,0
    80002da8:	00c0006f          	j	80002db4 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002dac:	ffffe097          	auipc	ra,0xffffe
    80002db0:	4ec080e7          	jalr	1260(ra) # 80001298 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002db4:	ffffe097          	auipc	ra,0xffffe
    80002db8:	614080e7          	jalr	1556(ra) # 800013c8 <_Z4getcv>
    80002dbc:	0005059b          	sext.w	a1,a0
    80002dc0:	01b00793          	li	a5,27
    80002dc4:	02f58a63          	beq	a1,a5,80002df8 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002dc8:	0084b503          	ld	a0,8(s1)
    80002dcc:	00003097          	auipc	ra,0x3
    80002dd0:	400080e7          	jalr	1024(ra) # 800061cc <_ZN6Buffer3putEi>
        i++;
    80002dd4:	0019071b          	addiw	a4,s2,1
    80002dd8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002ddc:	0004a683          	lw	a3,0(s1)
    80002de0:	0026979b          	slliw	a5,a3,0x2
    80002de4:	00d787bb          	addw	a5,a5,a3
    80002de8:	0017979b          	slliw	a5,a5,0x1
    80002dec:	02f767bb          	remw	a5,a4,a5
    80002df0:	fc0792e3          	bnez	a5,80002db4 <_ZL16producerKeyboardPv+0x2c>
    80002df4:	fb9ff06f          	j	80002dac <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002df8:	00100793          	li	a5,1
    80002dfc:	00009717          	auipc	a4,0x9
    80002e00:	b6f72623          	sw	a5,-1172(a4) # 8000b968 <_ZL9threadEnd>
    data->buffer->put('!');
    80002e04:	02100593          	li	a1,33
    80002e08:	0084b503          	ld	a0,8(s1)
    80002e0c:	00003097          	auipc	ra,0x3
    80002e10:	3c0080e7          	jalr	960(ra) # 800061cc <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002e14:	0104b503          	ld	a0,16(s1)
    80002e18:	ffffe097          	auipc	ra,0xffffe
    80002e1c:	528080e7          	jalr	1320(ra) # 80001340 <_Z10sem_signalP11MySemaphore>
}
    80002e20:	01813083          	ld	ra,24(sp)
    80002e24:	01013403          	ld	s0,16(sp)
    80002e28:	00813483          	ld	s1,8(sp)
    80002e2c:	00013903          	ld	s2,0(sp)
    80002e30:	02010113          	addi	sp,sp,32
    80002e34:	00008067          	ret

0000000080002e38 <_ZL8producerPv>:

static void producer(void *arg) {
    80002e38:	fe010113          	addi	sp,sp,-32
    80002e3c:	00113c23          	sd	ra,24(sp)
    80002e40:	00813823          	sd	s0,16(sp)
    80002e44:	00913423          	sd	s1,8(sp)
    80002e48:	01213023          	sd	s2,0(sp)
    80002e4c:	02010413          	addi	s0,sp,32
    80002e50:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002e54:	00000913          	li	s2,0
    80002e58:	00c0006f          	j	80002e64 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002e5c:	ffffe097          	auipc	ra,0xffffe
    80002e60:	43c080e7          	jalr	1084(ra) # 80001298 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002e64:	00009797          	auipc	a5,0x9
    80002e68:	b047a783          	lw	a5,-1276(a5) # 8000b968 <_ZL9threadEnd>
    80002e6c:	02079e63          	bnez	a5,80002ea8 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002e70:	0004a583          	lw	a1,0(s1)
    80002e74:	0305859b          	addiw	a1,a1,48
    80002e78:	0084b503          	ld	a0,8(s1)
    80002e7c:	00003097          	auipc	ra,0x3
    80002e80:	350080e7          	jalr	848(ra) # 800061cc <_ZN6Buffer3putEi>
        i++;
    80002e84:	0019071b          	addiw	a4,s2,1
    80002e88:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002e8c:	0004a683          	lw	a3,0(s1)
    80002e90:	0026979b          	slliw	a5,a3,0x2
    80002e94:	00d787bb          	addw	a5,a5,a3
    80002e98:	0017979b          	slliw	a5,a5,0x1
    80002e9c:	02f767bb          	remw	a5,a4,a5
    80002ea0:	fc0792e3          	bnez	a5,80002e64 <_ZL8producerPv+0x2c>
    80002ea4:	fb9ff06f          	j	80002e5c <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002ea8:	0104b503          	ld	a0,16(s1)
    80002eac:	ffffe097          	auipc	ra,0xffffe
    80002eb0:	494080e7          	jalr	1172(ra) # 80001340 <_Z10sem_signalP11MySemaphore>
}
    80002eb4:	01813083          	ld	ra,24(sp)
    80002eb8:	01013403          	ld	s0,16(sp)
    80002ebc:	00813483          	ld	s1,8(sp)
    80002ec0:	00013903          	ld	s2,0(sp)
    80002ec4:	02010113          	addi	sp,sp,32
    80002ec8:	00008067          	ret

0000000080002ecc <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002ecc:	fd010113          	addi	sp,sp,-48
    80002ed0:	02113423          	sd	ra,40(sp)
    80002ed4:	02813023          	sd	s0,32(sp)
    80002ed8:	00913c23          	sd	s1,24(sp)
    80002edc:	01213823          	sd	s2,16(sp)
    80002ee0:	01313423          	sd	s3,8(sp)
    80002ee4:	03010413          	addi	s0,sp,48
    80002ee8:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002eec:	00000993          	li	s3,0
    80002ef0:	01c0006f          	j	80002f0c <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002ef4:	ffffe097          	auipc	ra,0xffffe
    80002ef8:	3a4080e7          	jalr	932(ra) # 80001298 <_Z15thread_dispatchv>
    80002efc:	0500006f          	j	80002f4c <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002f00:	00a00513          	li	a0,10
    80002f04:	ffffe097          	auipc	ra,0xffffe
    80002f08:	4a0080e7          	jalr	1184(ra) # 800013a4 <_Z4putcc>
    while (!threadEnd) {
    80002f0c:	00009797          	auipc	a5,0x9
    80002f10:	a5c7a783          	lw	a5,-1444(a5) # 8000b968 <_ZL9threadEnd>
    80002f14:	06079063          	bnez	a5,80002f74 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002f18:	00893503          	ld	a0,8(s2)
    80002f1c:	00003097          	auipc	ra,0x3
    80002f20:	340080e7          	jalr	832(ra) # 8000625c <_ZN6Buffer3getEv>
        i++;
    80002f24:	0019849b          	addiw	s1,s3,1
    80002f28:	0004899b          	sext.w	s3,s1
        putc(key);
    80002f2c:	0ff57513          	andi	a0,a0,255
    80002f30:	ffffe097          	auipc	ra,0xffffe
    80002f34:	474080e7          	jalr	1140(ra) # 800013a4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002f38:	00092703          	lw	a4,0(s2)
    80002f3c:	0027179b          	slliw	a5,a4,0x2
    80002f40:	00e787bb          	addw	a5,a5,a4
    80002f44:	02f4e7bb          	remw	a5,s1,a5
    80002f48:	fa0786e3          	beqz	a5,80002ef4 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002f4c:	05000793          	li	a5,80
    80002f50:	02f4e4bb          	remw	s1,s1,a5
    80002f54:	fa049ce3          	bnez	s1,80002f0c <_ZL8consumerPv+0x40>
    80002f58:	fa9ff06f          	j	80002f00 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002f5c:	00893503          	ld	a0,8(s2)
    80002f60:	00003097          	auipc	ra,0x3
    80002f64:	2fc080e7          	jalr	764(ra) # 8000625c <_ZN6Buffer3getEv>
        putc(key);
    80002f68:	0ff57513          	andi	a0,a0,255
    80002f6c:	ffffe097          	auipc	ra,0xffffe
    80002f70:	438080e7          	jalr	1080(ra) # 800013a4 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002f74:	00893503          	ld	a0,8(s2)
    80002f78:	00003097          	auipc	ra,0x3
    80002f7c:	370080e7          	jalr	880(ra) # 800062e8 <_ZN6Buffer6getCntEv>
    80002f80:	fca04ee3          	bgtz	a0,80002f5c <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002f84:	01093503          	ld	a0,16(s2)
    80002f88:	ffffe097          	auipc	ra,0xffffe
    80002f8c:	3b8080e7          	jalr	952(ra) # 80001340 <_Z10sem_signalP11MySemaphore>
}
    80002f90:	02813083          	ld	ra,40(sp)
    80002f94:	02013403          	ld	s0,32(sp)
    80002f98:	01813483          	ld	s1,24(sp)
    80002f9c:	01013903          	ld	s2,16(sp)
    80002fa0:	00813983          	ld	s3,8(sp)
    80002fa4:	03010113          	addi	sp,sp,48
    80002fa8:	00008067          	ret

0000000080002fac <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002fac:	f9010113          	addi	sp,sp,-112
    80002fb0:	06113423          	sd	ra,104(sp)
    80002fb4:	06813023          	sd	s0,96(sp)
    80002fb8:	04913c23          	sd	s1,88(sp)
    80002fbc:	05213823          	sd	s2,80(sp)
    80002fc0:	05313423          	sd	s3,72(sp)
    80002fc4:	05413023          	sd	s4,64(sp)
    80002fc8:	03513c23          	sd	s5,56(sp)
    80002fcc:	03613823          	sd	s6,48(sp)
    80002fd0:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002fd4:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002fd8:	00006517          	auipc	a0,0x6
    80002fdc:	20050513          	addi	a0,a0,512 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80002fe0:	00002097          	auipc	ra,0x2
    80002fe4:	220080e7          	jalr	544(ra) # 80005200 <_Z11printStringPKc>
    getString(input, 30);
    80002fe8:	01e00593          	li	a1,30
    80002fec:	fa040493          	addi	s1,s0,-96
    80002ff0:	00048513          	mv	a0,s1
    80002ff4:	00002097          	auipc	ra,0x2
    80002ff8:	294080e7          	jalr	660(ra) # 80005288 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002ffc:	00048513          	mv	a0,s1
    80003000:	00002097          	auipc	ra,0x2
    80003004:	360080e7          	jalr	864(ra) # 80005360 <_Z11stringToIntPKc>
    80003008:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000300c:	00006517          	auipc	a0,0x6
    80003010:	1ec50513          	addi	a0,a0,492 # 800091f8 <CONSOLE_STATUS+0x1e8>
    80003014:	00002097          	auipc	ra,0x2
    80003018:	1ec080e7          	jalr	492(ra) # 80005200 <_Z11printStringPKc>
    getString(input, 30);
    8000301c:	01e00593          	li	a1,30
    80003020:	00048513          	mv	a0,s1
    80003024:	00002097          	auipc	ra,0x2
    80003028:	264080e7          	jalr	612(ra) # 80005288 <_Z9getStringPci>
    n = stringToInt(input);
    8000302c:	00048513          	mv	a0,s1
    80003030:	00002097          	auipc	ra,0x2
    80003034:	330080e7          	jalr	816(ra) # 80005360 <_Z11stringToIntPKc>
    80003038:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000303c:	00006517          	auipc	a0,0x6
    80003040:	1dc50513          	addi	a0,a0,476 # 80009218 <CONSOLE_STATUS+0x208>
    80003044:	00002097          	auipc	ra,0x2
    80003048:	1bc080e7          	jalr	444(ra) # 80005200 <_Z11printStringPKc>
    8000304c:	00000613          	li	a2,0
    80003050:	00a00593          	li	a1,10
    80003054:	00090513          	mv	a0,s2
    80003058:	00002097          	auipc	ra,0x2
    8000305c:	358080e7          	jalr	856(ra) # 800053b0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003060:	00006517          	auipc	a0,0x6
    80003064:	1d050513          	addi	a0,a0,464 # 80009230 <CONSOLE_STATUS+0x220>
    80003068:	00002097          	auipc	ra,0x2
    8000306c:	198080e7          	jalr	408(ra) # 80005200 <_Z11printStringPKc>
    80003070:	00000613          	li	a2,0
    80003074:	00a00593          	li	a1,10
    80003078:	00048513          	mv	a0,s1
    8000307c:	00002097          	auipc	ra,0x2
    80003080:	334080e7          	jalr	820(ra) # 800053b0 <_Z8printIntiii>
    printString(".\n");
    80003084:	00006517          	auipc	a0,0x6
    80003088:	1c450513          	addi	a0,a0,452 # 80009248 <CONSOLE_STATUS+0x238>
    8000308c:	00002097          	auipc	ra,0x2
    80003090:	174080e7          	jalr	372(ra) # 80005200 <_Z11printStringPKc>
    if(threadNum > n) {
    80003094:	0324c463          	blt	s1,s2,800030bc <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003098:	03205c63          	blez	s2,800030d0 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    8000309c:	03800513          	li	a0,56
    800030a0:	ffffe097          	auipc	ra,0xffffe
    800030a4:	598080e7          	jalr	1432(ra) # 80001638 <_Znwm>
    800030a8:	00050a13          	mv	s4,a0
    800030ac:	00048593          	mv	a1,s1
    800030b0:	00003097          	auipc	ra,0x3
    800030b4:	080080e7          	jalr	128(ra) # 80006130 <_ZN6BufferC1Ei>
    800030b8:	0300006f          	j	800030e8 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800030bc:	00006517          	auipc	a0,0x6
    800030c0:	19450513          	addi	a0,a0,404 # 80009250 <CONSOLE_STATUS+0x240>
    800030c4:	00002097          	auipc	ra,0x2
    800030c8:	13c080e7          	jalr	316(ra) # 80005200 <_Z11printStringPKc>
        return;
    800030cc:	0140006f          	j	800030e0 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800030d0:	00006517          	auipc	a0,0x6
    800030d4:	1c050513          	addi	a0,a0,448 # 80009290 <CONSOLE_STATUS+0x280>
    800030d8:	00002097          	auipc	ra,0x2
    800030dc:	128080e7          	jalr	296(ra) # 80005200 <_Z11printStringPKc>
        return;
    800030e0:	000b0113          	mv	sp,s6
    800030e4:	1500006f          	j	80003234 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800030e8:	00000593          	li	a1,0
    800030ec:	00009517          	auipc	a0,0x9
    800030f0:	88450513          	addi	a0,a0,-1916 # 8000b970 <_ZL10waitForAll>
    800030f4:	ffffe097          	auipc	ra,0xffffe
    800030f8:	1c4080e7          	jalr	452(ra) # 800012b8 <_Z8sem_openPP11MySemaphorej>
    thread_t threads[threadNum];
    800030fc:	00391793          	slli	a5,s2,0x3
    80003100:	00f78793          	addi	a5,a5,15
    80003104:	ff07f793          	andi	a5,a5,-16
    80003108:	40f10133          	sub	sp,sp,a5
    8000310c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003110:	0019071b          	addiw	a4,s2,1
    80003114:	00171793          	slli	a5,a4,0x1
    80003118:	00e787b3          	add	a5,a5,a4
    8000311c:	00379793          	slli	a5,a5,0x3
    80003120:	00f78793          	addi	a5,a5,15
    80003124:	ff07f793          	andi	a5,a5,-16
    80003128:	40f10133          	sub	sp,sp,a5
    8000312c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003130:	00191613          	slli	a2,s2,0x1
    80003134:	012607b3          	add	a5,a2,s2
    80003138:	00379793          	slli	a5,a5,0x3
    8000313c:	00f987b3          	add	a5,s3,a5
    80003140:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003144:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003148:	00009717          	auipc	a4,0x9
    8000314c:	82873703          	ld	a4,-2008(a4) # 8000b970 <_ZL10waitForAll>
    80003150:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003154:	00078613          	mv	a2,a5
    80003158:	00000597          	auipc	a1,0x0
    8000315c:	d7458593          	addi	a1,a1,-652 # 80002ecc <_ZL8consumerPv>
    80003160:	f9840513          	addi	a0,s0,-104
    80003164:	ffffe097          	auipc	ra,0xffffe
    80003168:	090080e7          	jalr	144(ra) # 800011f4 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000316c:	00000493          	li	s1,0
    80003170:	0280006f          	j	80003198 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003174:	00000597          	auipc	a1,0x0
    80003178:	c1458593          	addi	a1,a1,-1004 # 80002d88 <_ZL16producerKeyboardPv>
                      data + i);
    8000317c:	00179613          	slli	a2,a5,0x1
    80003180:	00f60633          	add	a2,a2,a5
    80003184:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003188:	00c98633          	add	a2,s3,a2
    8000318c:	ffffe097          	auipc	ra,0xffffe
    80003190:	068080e7          	jalr	104(ra) # 800011f4 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003194:	0014849b          	addiw	s1,s1,1
    80003198:	0524d263          	bge	s1,s2,800031dc <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    8000319c:	00149793          	slli	a5,s1,0x1
    800031a0:	009787b3          	add	a5,a5,s1
    800031a4:	00379793          	slli	a5,a5,0x3
    800031a8:	00f987b3          	add	a5,s3,a5
    800031ac:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800031b0:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800031b4:	00008717          	auipc	a4,0x8
    800031b8:	7bc73703          	ld	a4,1980(a4) # 8000b970 <_ZL10waitForAll>
    800031bc:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800031c0:	00048793          	mv	a5,s1
    800031c4:	00349513          	slli	a0,s1,0x3
    800031c8:	00aa8533          	add	a0,s5,a0
    800031cc:	fa9054e3          	blez	s1,80003174 <_Z22producerConsumer_C_APIv+0x1c8>
    800031d0:	00000597          	auipc	a1,0x0
    800031d4:	c6858593          	addi	a1,a1,-920 # 80002e38 <_ZL8producerPv>
    800031d8:	fa5ff06f          	j	8000317c <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800031dc:	ffffe097          	auipc	ra,0xffffe
    800031e0:	0bc080e7          	jalr	188(ra) # 80001298 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800031e4:	00000493          	li	s1,0
    800031e8:	00994e63          	blt	s2,s1,80003204 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800031ec:	00008517          	auipc	a0,0x8
    800031f0:	78453503          	ld	a0,1924(a0) # 8000b970 <_ZL10waitForAll>
    800031f4:	ffffe097          	auipc	ra,0xffffe
    800031f8:	120080e7          	jalr	288(ra) # 80001314 <_Z8sem_waitP11MySemaphore>
    for (int i = 0; i <= threadNum; i++) {
    800031fc:	0014849b          	addiw	s1,s1,1
    80003200:	fe9ff06f          	j	800031e8 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003204:	00008517          	auipc	a0,0x8
    80003208:	76c53503          	ld	a0,1900(a0) # 8000b970 <_ZL10waitForAll>
    8000320c:	ffffe097          	auipc	ra,0xffffe
    80003210:	0dc080e7          	jalr	220(ra) # 800012e8 <_Z9sem_closeP11MySemaphore>
    delete buffer;
    80003214:	000a0e63          	beqz	s4,80003230 <_Z22producerConsumer_C_APIv+0x284>
    80003218:	000a0513          	mv	a0,s4
    8000321c:	00003097          	auipc	ra,0x3
    80003220:	154080e7          	jalr	340(ra) # 80006370 <_ZN6BufferD1Ev>
    80003224:	000a0513          	mv	a0,s4
    80003228:	ffffe097          	auipc	ra,0xffffe
    8000322c:	438080e7          	jalr	1080(ra) # 80001660 <_ZdlPv>
    80003230:	000b0113          	mv	sp,s6

}
    80003234:	f9040113          	addi	sp,s0,-112
    80003238:	06813083          	ld	ra,104(sp)
    8000323c:	06013403          	ld	s0,96(sp)
    80003240:	05813483          	ld	s1,88(sp)
    80003244:	05013903          	ld	s2,80(sp)
    80003248:	04813983          	ld	s3,72(sp)
    8000324c:	04013a03          	ld	s4,64(sp)
    80003250:	03813a83          	ld	s5,56(sp)
    80003254:	03013b03          	ld	s6,48(sp)
    80003258:	07010113          	addi	sp,sp,112
    8000325c:	00008067          	ret
    80003260:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003264:	000a0513          	mv	a0,s4
    80003268:	ffffe097          	auipc	ra,0xffffe
    8000326c:	3f8080e7          	jalr	1016(ra) # 80001660 <_ZdlPv>
    80003270:	00048513          	mv	a0,s1
    80003274:	0000a097          	auipc	ra,0xa
    80003278:	814080e7          	jalr	-2028(ra) # 8000ca88 <_Unwind_Resume>

000000008000327c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000327c:	fe010113          	addi	sp,sp,-32
    80003280:	00113c23          	sd	ra,24(sp)
    80003284:	00813823          	sd	s0,16(sp)
    80003288:	00913423          	sd	s1,8(sp)
    8000328c:	01213023          	sd	s2,0(sp)
    80003290:	02010413          	addi	s0,sp,32
    80003294:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003298:	00100793          	li	a5,1
    8000329c:	02a7f863          	bgeu	a5,a0,800032cc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800032a0:	00a00793          	li	a5,10
    800032a4:	02f577b3          	remu	a5,a0,a5
    800032a8:	02078e63          	beqz	a5,800032e4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800032ac:	fff48513          	addi	a0,s1,-1
    800032b0:	00000097          	auipc	ra,0x0
    800032b4:	fcc080e7          	jalr	-52(ra) # 8000327c <_ZL9fibonaccim>
    800032b8:	00050913          	mv	s2,a0
    800032bc:	ffe48513          	addi	a0,s1,-2
    800032c0:	00000097          	auipc	ra,0x0
    800032c4:	fbc080e7          	jalr	-68(ra) # 8000327c <_ZL9fibonaccim>
    800032c8:	00a90533          	add	a0,s2,a0
}
    800032cc:	01813083          	ld	ra,24(sp)
    800032d0:	01013403          	ld	s0,16(sp)
    800032d4:	00813483          	ld	s1,8(sp)
    800032d8:	00013903          	ld	s2,0(sp)
    800032dc:	02010113          	addi	sp,sp,32
    800032e0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800032e4:	ffffe097          	auipc	ra,0xffffe
    800032e8:	fb4080e7          	jalr	-76(ra) # 80001298 <_Z15thread_dispatchv>
    800032ec:	fc1ff06f          	j	800032ac <_ZL9fibonaccim+0x30>

00000000800032f0 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800032f0:	fe010113          	addi	sp,sp,-32
    800032f4:	00113c23          	sd	ra,24(sp)
    800032f8:	00813823          	sd	s0,16(sp)
    800032fc:	00913423          	sd	s1,8(sp)
    80003300:	01213023          	sd	s2,0(sp)
    80003304:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003308:	00000913          	li	s2,0
    8000330c:	0380006f          	j	80003344 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003310:	ffffe097          	auipc	ra,0xffffe
    80003314:	f88080e7          	jalr	-120(ra) # 80001298 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003318:	00148493          	addi	s1,s1,1
    8000331c:	000027b7          	lui	a5,0x2
    80003320:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003324:	0097ee63          	bltu	a5,s1,80003340 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003328:	00000713          	li	a4,0
    8000332c:	000077b7          	lui	a5,0x7
    80003330:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003334:	fce7eee3          	bltu	a5,a4,80003310 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003338:	00170713          	addi	a4,a4,1
    8000333c:	ff1ff06f          	j	8000332c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003340:	00190913          	addi	s2,s2,1
    80003344:	00900793          	li	a5,9
    80003348:	0527e063          	bltu	a5,s2,80003388 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000334c:	00006517          	auipc	a0,0x6
    80003350:	f7450513          	addi	a0,a0,-140 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80003354:	00002097          	auipc	ra,0x2
    80003358:	eac080e7          	jalr	-340(ra) # 80005200 <_Z11printStringPKc>
    8000335c:	00000613          	li	a2,0
    80003360:	00a00593          	li	a1,10
    80003364:	0009051b          	sext.w	a0,s2
    80003368:	00002097          	auipc	ra,0x2
    8000336c:	048080e7          	jalr	72(ra) # 800053b0 <_Z8printIntiii>
    80003370:	00006517          	auipc	a0,0x6
    80003374:	1a050513          	addi	a0,a0,416 # 80009510 <CONSOLE_STATUS+0x500>
    80003378:	00002097          	auipc	ra,0x2
    8000337c:	e88080e7          	jalr	-376(ra) # 80005200 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003380:	00000493          	li	s1,0
    80003384:	f99ff06f          	j	8000331c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003388:	00006517          	auipc	a0,0x6
    8000338c:	f4050513          	addi	a0,a0,-192 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80003390:	00002097          	auipc	ra,0x2
    80003394:	e70080e7          	jalr	-400(ra) # 80005200 <_Z11printStringPKc>
    finishedA = true;
    80003398:	00100793          	li	a5,1
    8000339c:	00008717          	auipc	a4,0x8
    800033a0:	5cf70e23          	sb	a5,1500(a4) # 8000b978 <_ZL9finishedA>
}
    800033a4:	01813083          	ld	ra,24(sp)
    800033a8:	01013403          	ld	s0,16(sp)
    800033ac:	00813483          	ld	s1,8(sp)
    800033b0:	00013903          	ld	s2,0(sp)
    800033b4:	02010113          	addi	sp,sp,32
    800033b8:	00008067          	ret

00000000800033bc <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800033bc:	fe010113          	addi	sp,sp,-32
    800033c0:	00113c23          	sd	ra,24(sp)
    800033c4:	00813823          	sd	s0,16(sp)
    800033c8:	00913423          	sd	s1,8(sp)
    800033cc:	01213023          	sd	s2,0(sp)
    800033d0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800033d4:	00000913          	li	s2,0
    800033d8:	0380006f          	j	80003410 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800033dc:	ffffe097          	auipc	ra,0xffffe
    800033e0:	ebc080e7          	jalr	-324(ra) # 80001298 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800033e4:	00148493          	addi	s1,s1,1
    800033e8:	000027b7          	lui	a5,0x2
    800033ec:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800033f0:	0097ee63          	bltu	a5,s1,8000340c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800033f4:	00000713          	li	a4,0
    800033f8:	000077b7          	lui	a5,0x7
    800033fc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003400:	fce7eee3          	bltu	a5,a4,800033dc <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003404:	00170713          	addi	a4,a4,1
    80003408:	ff1ff06f          	j	800033f8 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000340c:	00190913          	addi	s2,s2,1
    80003410:	00f00793          	li	a5,15
    80003414:	0527e063          	bltu	a5,s2,80003454 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003418:	00006517          	auipc	a0,0x6
    8000341c:	ec050513          	addi	a0,a0,-320 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80003420:	00002097          	auipc	ra,0x2
    80003424:	de0080e7          	jalr	-544(ra) # 80005200 <_Z11printStringPKc>
    80003428:	00000613          	li	a2,0
    8000342c:	00a00593          	li	a1,10
    80003430:	0009051b          	sext.w	a0,s2
    80003434:	00002097          	auipc	ra,0x2
    80003438:	f7c080e7          	jalr	-132(ra) # 800053b0 <_Z8printIntiii>
    8000343c:	00006517          	auipc	a0,0x6
    80003440:	0d450513          	addi	a0,a0,212 # 80009510 <CONSOLE_STATUS+0x500>
    80003444:	00002097          	auipc	ra,0x2
    80003448:	dbc080e7          	jalr	-580(ra) # 80005200 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000344c:	00000493          	li	s1,0
    80003450:	f99ff06f          	j	800033e8 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003454:	00006517          	auipc	a0,0x6
    80003458:	e8c50513          	addi	a0,a0,-372 # 800092e0 <CONSOLE_STATUS+0x2d0>
    8000345c:	00002097          	auipc	ra,0x2
    80003460:	da4080e7          	jalr	-604(ra) # 80005200 <_Z11printStringPKc>
    finishedB = true;
    80003464:	00100793          	li	a5,1
    80003468:	00008717          	auipc	a4,0x8
    8000346c:	50f708a3          	sb	a5,1297(a4) # 8000b979 <_ZL9finishedB>
    thread_dispatch();
    80003470:	ffffe097          	auipc	ra,0xffffe
    80003474:	e28080e7          	jalr	-472(ra) # 80001298 <_Z15thread_dispatchv>
}
    80003478:	01813083          	ld	ra,24(sp)
    8000347c:	01013403          	ld	s0,16(sp)
    80003480:	00813483          	ld	s1,8(sp)
    80003484:	00013903          	ld	s2,0(sp)
    80003488:	02010113          	addi	sp,sp,32
    8000348c:	00008067          	ret

0000000080003490 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003490:	fe010113          	addi	sp,sp,-32
    80003494:	00113c23          	sd	ra,24(sp)
    80003498:	00813823          	sd	s0,16(sp)
    8000349c:	00913423          	sd	s1,8(sp)
    800034a0:	01213023          	sd	s2,0(sp)
    800034a4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800034a8:	00000493          	li	s1,0
    800034ac:	0400006f          	j	800034ec <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800034b0:	00006517          	auipc	a0,0x6
    800034b4:	e4050513          	addi	a0,a0,-448 # 800092f0 <CONSOLE_STATUS+0x2e0>
    800034b8:	00002097          	auipc	ra,0x2
    800034bc:	d48080e7          	jalr	-696(ra) # 80005200 <_Z11printStringPKc>
    800034c0:	00000613          	li	a2,0
    800034c4:	00a00593          	li	a1,10
    800034c8:	00048513          	mv	a0,s1
    800034cc:	00002097          	auipc	ra,0x2
    800034d0:	ee4080e7          	jalr	-284(ra) # 800053b0 <_Z8printIntiii>
    800034d4:	00006517          	auipc	a0,0x6
    800034d8:	03c50513          	addi	a0,a0,60 # 80009510 <CONSOLE_STATUS+0x500>
    800034dc:	00002097          	auipc	ra,0x2
    800034e0:	d24080e7          	jalr	-732(ra) # 80005200 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800034e4:	0014849b          	addiw	s1,s1,1
    800034e8:	0ff4f493          	andi	s1,s1,255
    800034ec:	00200793          	li	a5,2
    800034f0:	fc97f0e3          	bgeu	a5,s1,800034b0 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800034f4:	00006517          	auipc	a0,0x6
    800034f8:	e0450513          	addi	a0,a0,-508 # 800092f8 <CONSOLE_STATUS+0x2e8>
    800034fc:	00002097          	auipc	ra,0x2
    80003500:	d04080e7          	jalr	-764(ra) # 80005200 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003504:	00700313          	li	t1,7
    thread_dispatch();
    80003508:	ffffe097          	auipc	ra,0xffffe
    8000350c:	d90080e7          	jalr	-624(ra) # 80001298 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003510:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003514:	00006517          	auipc	a0,0x6
    80003518:	df450513          	addi	a0,a0,-524 # 80009308 <CONSOLE_STATUS+0x2f8>
    8000351c:	00002097          	auipc	ra,0x2
    80003520:	ce4080e7          	jalr	-796(ra) # 80005200 <_Z11printStringPKc>
    80003524:	00000613          	li	a2,0
    80003528:	00a00593          	li	a1,10
    8000352c:	0009051b          	sext.w	a0,s2
    80003530:	00002097          	auipc	ra,0x2
    80003534:	e80080e7          	jalr	-384(ra) # 800053b0 <_Z8printIntiii>
    80003538:	00006517          	auipc	a0,0x6
    8000353c:	fd850513          	addi	a0,a0,-40 # 80009510 <CONSOLE_STATUS+0x500>
    80003540:	00002097          	auipc	ra,0x2
    80003544:	cc0080e7          	jalr	-832(ra) # 80005200 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003548:	00c00513          	li	a0,12
    8000354c:	00000097          	auipc	ra,0x0
    80003550:	d30080e7          	jalr	-720(ra) # 8000327c <_ZL9fibonaccim>
    80003554:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003558:	00006517          	auipc	a0,0x6
    8000355c:	db850513          	addi	a0,a0,-584 # 80009310 <CONSOLE_STATUS+0x300>
    80003560:	00002097          	auipc	ra,0x2
    80003564:	ca0080e7          	jalr	-864(ra) # 80005200 <_Z11printStringPKc>
    80003568:	00000613          	li	a2,0
    8000356c:	00a00593          	li	a1,10
    80003570:	0009051b          	sext.w	a0,s2
    80003574:	00002097          	auipc	ra,0x2
    80003578:	e3c080e7          	jalr	-452(ra) # 800053b0 <_Z8printIntiii>
    8000357c:	00006517          	auipc	a0,0x6
    80003580:	f9450513          	addi	a0,a0,-108 # 80009510 <CONSOLE_STATUS+0x500>
    80003584:	00002097          	auipc	ra,0x2
    80003588:	c7c080e7          	jalr	-900(ra) # 80005200 <_Z11printStringPKc>
    8000358c:	0400006f          	j	800035cc <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003590:	00006517          	auipc	a0,0x6
    80003594:	d6050513          	addi	a0,a0,-672 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80003598:	00002097          	auipc	ra,0x2
    8000359c:	c68080e7          	jalr	-920(ra) # 80005200 <_Z11printStringPKc>
    800035a0:	00000613          	li	a2,0
    800035a4:	00a00593          	li	a1,10
    800035a8:	00048513          	mv	a0,s1
    800035ac:	00002097          	auipc	ra,0x2
    800035b0:	e04080e7          	jalr	-508(ra) # 800053b0 <_Z8printIntiii>
    800035b4:	00006517          	auipc	a0,0x6
    800035b8:	f5c50513          	addi	a0,a0,-164 # 80009510 <CONSOLE_STATUS+0x500>
    800035bc:	00002097          	auipc	ra,0x2
    800035c0:	c44080e7          	jalr	-956(ra) # 80005200 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800035c4:	0014849b          	addiw	s1,s1,1
    800035c8:	0ff4f493          	andi	s1,s1,255
    800035cc:	00500793          	li	a5,5
    800035d0:	fc97f0e3          	bgeu	a5,s1,80003590 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800035d4:	00006517          	auipc	a0,0x6
    800035d8:	cf450513          	addi	a0,a0,-780 # 800092c8 <CONSOLE_STATUS+0x2b8>
    800035dc:	00002097          	auipc	ra,0x2
    800035e0:	c24080e7          	jalr	-988(ra) # 80005200 <_Z11printStringPKc>
    finishedC = true;
    800035e4:	00100793          	li	a5,1
    800035e8:	00008717          	auipc	a4,0x8
    800035ec:	38f70923          	sb	a5,914(a4) # 8000b97a <_ZL9finishedC>
    thread_dispatch();
    800035f0:	ffffe097          	auipc	ra,0xffffe
    800035f4:	ca8080e7          	jalr	-856(ra) # 80001298 <_Z15thread_dispatchv>
}
    800035f8:	01813083          	ld	ra,24(sp)
    800035fc:	01013403          	ld	s0,16(sp)
    80003600:	00813483          	ld	s1,8(sp)
    80003604:	00013903          	ld	s2,0(sp)
    80003608:	02010113          	addi	sp,sp,32
    8000360c:	00008067          	ret

0000000080003610 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003610:	fe010113          	addi	sp,sp,-32
    80003614:	00113c23          	sd	ra,24(sp)
    80003618:	00813823          	sd	s0,16(sp)
    8000361c:	00913423          	sd	s1,8(sp)
    80003620:	01213023          	sd	s2,0(sp)
    80003624:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003628:	00a00493          	li	s1,10
    8000362c:	0400006f          	j	8000366c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003630:	00006517          	auipc	a0,0x6
    80003634:	cf050513          	addi	a0,a0,-784 # 80009320 <CONSOLE_STATUS+0x310>
    80003638:	00002097          	auipc	ra,0x2
    8000363c:	bc8080e7          	jalr	-1080(ra) # 80005200 <_Z11printStringPKc>
    80003640:	00000613          	li	a2,0
    80003644:	00a00593          	li	a1,10
    80003648:	00048513          	mv	a0,s1
    8000364c:	00002097          	auipc	ra,0x2
    80003650:	d64080e7          	jalr	-668(ra) # 800053b0 <_Z8printIntiii>
    80003654:	00006517          	auipc	a0,0x6
    80003658:	ebc50513          	addi	a0,a0,-324 # 80009510 <CONSOLE_STATUS+0x500>
    8000365c:	00002097          	auipc	ra,0x2
    80003660:	ba4080e7          	jalr	-1116(ra) # 80005200 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003664:	0014849b          	addiw	s1,s1,1
    80003668:	0ff4f493          	andi	s1,s1,255
    8000366c:	00c00793          	li	a5,12
    80003670:	fc97f0e3          	bgeu	a5,s1,80003630 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003674:	00006517          	auipc	a0,0x6
    80003678:	cb450513          	addi	a0,a0,-844 # 80009328 <CONSOLE_STATUS+0x318>
    8000367c:	00002097          	auipc	ra,0x2
    80003680:	b84080e7          	jalr	-1148(ra) # 80005200 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003684:	00500313          	li	t1,5
    thread_dispatch();
    80003688:	ffffe097          	auipc	ra,0xffffe
    8000368c:	c10080e7          	jalr	-1008(ra) # 80001298 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003690:	01000513          	li	a0,16
    80003694:	00000097          	auipc	ra,0x0
    80003698:	be8080e7          	jalr	-1048(ra) # 8000327c <_ZL9fibonaccim>
    8000369c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800036a0:	00006517          	auipc	a0,0x6
    800036a4:	c9850513          	addi	a0,a0,-872 # 80009338 <CONSOLE_STATUS+0x328>
    800036a8:	00002097          	auipc	ra,0x2
    800036ac:	b58080e7          	jalr	-1192(ra) # 80005200 <_Z11printStringPKc>
    800036b0:	00000613          	li	a2,0
    800036b4:	00a00593          	li	a1,10
    800036b8:	0009051b          	sext.w	a0,s2
    800036bc:	00002097          	auipc	ra,0x2
    800036c0:	cf4080e7          	jalr	-780(ra) # 800053b0 <_Z8printIntiii>
    800036c4:	00006517          	auipc	a0,0x6
    800036c8:	e4c50513          	addi	a0,a0,-436 # 80009510 <CONSOLE_STATUS+0x500>
    800036cc:	00002097          	auipc	ra,0x2
    800036d0:	b34080e7          	jalr	-1228(ra) # 80005200 <_Z11printStringPKc>
    800036d4:	0400006f          	j	80003714 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800036d8:	00006517          	auipc	a0,0x6
    800036dc:	c4850513          	addi	a0,a0,-952 # 80009320 <CONSOLE_STATUS+0x310>
    800036e0:	00002097          	auipc	ra,0x2
    800036e4:	b20080e7          	jalr	-1248(ra) # 80005200 <_Z11printStringPKc>
    800036e8:	00000613          	li	a2,0
    800036ec:	00a00593          	li	a1,10
    800036f0:	00048513          	mv	a0,s1
    800036f4:	00002097          	auipc	ra,0x2
    800036f8:	cbc080e7          	jalr	-836(ra) # 800053b0 <_Z8printIntiii>
    800036fc:	00006517          	auipc	a0,0x6
    80003700:	e1450513          	addi	a0,a0,-492 # 80009510 <CONSOLE_STATUS+0x500>
    80003704:	00002097          	auipc	ra,0x2
    80003708:	afc080e7          	jalr	-1284(ra) # 80005200 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000370c:	0014849b          	addiw	s1,s1,1
    80003710:	0ff4f493          	andi	s1,s1,255
    80003714:	00f00793          	li	a5,15
    80003718:	fc97f0e3          	bgeu	a5,s1,800036d8 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    8000371c:	00006517          	auipc	a0,0x6
    80003720:	c2c50513          	addi	a0,a0,-980 # 80009348 <CONSOLE_STATUS+0x338>
    80003724:	00002097          	auipc	ra,0x2
    80003728:	adc080e7          	jalr	-1316(ra) # 80005200 <_Z11printStringPKc>
    finishedD = true;
    8000372c:	00100793          	li	a5,1
    80003730:	00008717          	auipc	a4,0x8
    80003734:	24f705a3          	sb	a5,587(a4) # 8000b97b <_ZL9finishedD>
    thread_dispatch();
    80003738:	ffffe097          	auipc	ra,0xffffe
    8000373c:	b60080e7          	jalr	-1184(ra) # 80001298 <_Z15thread_dispatchv>
}
    80003740:	01813083          	ld	ra,24(sp)
    80003744:	01013403          	ld	s0,16(sp)
    80003748:	00813483          	ld	s1,8(sp)
    8000374c:	00013903          	ld	s2,0(sp)
    80003750:	02010113          	addi	sp,sp,32
    80003754:	00008067          	ret

0000000080003758 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003758:	fc010113          	addi	sp,sp,-64
    8000375c:	02113c23          	sd	ra,56(sp)
    80003760:	02813823          	sd	s0,48(sp)
    80003764:	02913423          	sd	s1,40(sp)
    80003768:	03213023          	sd	s2,32(sp)
    8000376c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003770:	02000513          	li	a0,32
    80003774:	ffffe097          	auipc	ra,0xffffe
    80003778:	ec4080e7          	jalr	-316(ra) # 80001638 <_Znwm>
    8000377c:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003780:	ffffe097          	auipc	ra,0xffffe
    80003784:	5c4080e7          	jalr	1476(ra) # 80001d44 <_ZN6ThreadC1Ev>
    80003788:	00008797          	auipc	a5,0x8
    8000378c:	f5078793          	addi	a5,a5,-176 # 8000b6d8 <_ZTV7WorkerA+0x10>
    80003790:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003794:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003798:	00006517          	auipc	a0,0x6
    8000379c:	bc050513          	addi	a0,a0,-1088 # 80009358 <CONSOLE_STATUS+0x348>
    800037a0:	00002097          	auipc	ra,0x2
    800037a4:	a60080e7          	jalr	-1440(ra) # 80005200 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800037a8:	02000513          	li	a0,32
    800037ac:	ffffe097          	auipc	ra,0xffffe
    800037b0:	e8c080e7          	jalr	-372(ra) # 80001638 <_Znwm>
    800037b4:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800037b8:	ffffe097          	auipc	ra,0xffffe
    800037bc:	58c080e7          	jalr	1420(ra) # 80001d44 <_ZN6ThreadC1Ev>
    800037c0:	00008797          	auipc	a5,0x8
    800037c4:	f4078793          	addi	a5,a5,-192 # 8000b700 <_ZTV7WorkerB+0x10>
    800037c8:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800037cc:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800037d0:	00006517          	auipc	a0,0x6
    800037d4:	ba050513          	addi	a0,a0,-1120 # 80009370 <CONSOLE_STATUS+0x360>
    800037d8:	00002097          	auipc	ra,0x2
    800037dc:	a28080e7          	jalr	-1496(ra) # 80005200 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800037e0:	02000513          	li	a0,32
    800037e4:	ffffe097          	auipc	ra,0xffffe
    800037e8:	e54080e7          	jalr	-428(ra) # 80001638 <_Znwm>
    800037ec:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800037f0:	ffffe097          	auipc	ra,0xffffe
    800037f4:	554080e7          	jalr	1364(ra) # 80001d44 <_ZN6ThreadC1Ev>
    800037f8:	00008797          	auipc	a5,0x8
    800037fc:	f3078793          	addi	a5,a5,-208 # 8000b728 <_ZTV7WorkerC+0x10>
    80003800:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003804:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003808:	00006517          	auipc	a0,0x6
    8000380c:	b8050513          	addi	a0,a0,-1152 # 80009388 <CONSOLE_STATUS+0x378>
    80003810:	00002097          	auipc	ra,0x2
    80003814:	9f0080e7          	jalr	-1552(ra) # 80005200 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003818:	02000513          	li	a0,32
    8000381c:	ffffe097          	auipc	ra,0xffffe
    80003820:	e1c080e7          	jalr	-484(ra) # 80001638 <_Znwm>
    80003824:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003828:	ffffe097          	auipc	ra,0xffffe
    8000382c:	51c080e7          	jalr	1308(ra) # 80001d44 <_ZN6ThreadC1Ev>
    80003830:	00008797          	auipc	a5,0x8
    80003834:	f2078793          	addi	a5,a5,-224 # 8000b750 <_ZTV7WorkerD+0x10>
    80003838:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    8000383c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003840:	00006517          	auipc	a0,0x6
    80003844:	b6050513          	addi	a0,a0,-1184 # 800093a0 <CONSOLE_STATUS+0x390>
    80003848:	00002097          	auipc	ra,0x2
    8000384c:	9b8080e7          	jalr	-1608(ra) # 80005200 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003850:	00000493          	li	s1,0
    80003854:	00300793          	li	a5,3
    80003858:	0297c663          	blt	a5,s1,80003884 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    8000385c:	00349793          	slli	a5,s1,0x3
    80003860:	fe040713          	addi	a4,s0,-32
    80003864:	00f707b3          	add	a5,a4,a5
    80003868:	fe07b503          	ld	a0,-32(a5)
    8000386c:	ffffe097          	auipc	ra,0xffffe
    80003870:	560080e7          	jalr	1376(ra) # 80001dcc <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003874:	0014849b          	addiw	s1,s1,1
    80003878:	fddff06f          	j	80003854 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    8000387c:	ffffe097          	auipc	ra,0xffffe
    80003880:	528080e7          	jalr	1320(ra) # 80001da4 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003884:	00008797          	auipc	a5,0x8
    80003888:	0f47c783          	lbu	a5,244(a5) # 8000b978 <_ZL9finishedA>
    8000388c:	fe0788e3          	beqz	a5,8000387c <_Z20Threads_CPP_API_testv+0x124>
    80003890:	00008797          	auipc	a5,0x8
    80003894:	0e97c783          	lbu	a5,233(a5) # 8000b979 <_ZL9finishedB>
    80003898:	fe0782e3          	beqz	a5,8000387c <_Z20Threads_CPP_API_testv+0x124>
    8000389c:	00008797          	auipc	a5,0x8
    800038a0:	0de7c783          	lbu	a5,222(a5) # 8000b97a <_ZL9finishedC>
    800038a4:	fc078ce3          	beqz	a5,8000387c <_Z20Threads_CPP_API_testv+0x124>
    800038a8:	00008797          	auipc	a5,0x8
    800038ac:	0d37c783          	lbu	a5,211(a5) # 8000b97b <_ZL9finishedD>
    800038b0:	fc0786e3          	beqz	a5,8000387c <_Z20Threads_CPP_API_testv+0x124>
    800038b4:	fc040493          	addi	s1,s0,-64
    800038b8:	0080006f          	j	800038c0 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800038bc:	00848493          	addi	s1,s1,8
    800038c0:	fe040793          	addi	a5,s0,-32
    800038c4:	08f48663          	beq	s1,a5,80003950 <_Z20Threads_CPP_API_testv+0x1f8>
    800038c8:	0004b503          	ld	a0,0(s1)
    800038cc:	fe0508e3          	beqz	a0,800038bc <_Z20Threads_CPP_API_testv+0x164>
    800038d0:	00053783          	ld	a5,0(a0)
    800038d4:	0087b783          	ld	a5,8(a5)
    800038d8:	000780e7          	jalr	a5
    800038dc:	fe1ff06f          	j	800038bc <_Z20Threads_CPP_API_testv+0x164>
    800038e0:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800038e4:	00048513          	mv	a0,s1
    800038e8:	ffffe097          	auipc	ra,0xffffe
    800038ec:	d78080e7          	jalr	-648(ra) # 80001660 <_ZdlPv>
    800038f0:	00090513          	mv	a0,s2
    800038f4:	00009097          	auipc	ra,0x9
    800038f8:	194080e7          	jalr	404(ra) # 8000ca88 <_Unwind_Resume>
    800038fc:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003900:	00048513          	mv	a0,s1
    80003904:	ffffe097          	auipc	ra,0xffffe
    80003908:	d5c080e7          	jalr	-676(ra) # 80001660 <_ZdlPv>
    8000390c:	00090513          	mv	a0,s2
    80003910:	00009097          	auipc	ra,0x9
    80003914:	178080e7          	jalr	376(ra) # 8000ca88 <_Unwind_Resume>
    80003918:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    8000391c:	00048513          	mv	a0,s1
    80003920:	ffffe097          	auipc	ra,0xffffe
    80003924:	d40080e7          	jalr	-704(ra) # 80001660 <_ZdlPv>
    80003928:	00090513          	mv	a0,s2
    8000392c:	00009097          	auipc	ra,0x9
    80003930:	15c080e7          	jalr	348(ra) # 8000ca88 <_Unwind_Resume>
    80003934:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003938:	00048513          	mv	a0,s1
    8000393c:	ffffe097          	auipc	ra,0xffffe
    80003940:	d24080e7          	jalr	-732(ra) # 80001660 <_ZdlPv>
    80003944:	00090513          	mv	a0,s2
    80003948:	00009097          	auipc	ra,0x9
    8000394c:	140080e7          	jalr	320(ra) # 8000ca88 <_Unwind_Resume>
}
    80003950:	03813083          	ld	ra,56(sp)
    80003954:	03013403          	ld	s0,48(sp)
    80003958:	02813483          	ld	s1,40(sp)
    8000395c:	02013903          	ld	s2,32(sp)
    80003960:	04010113          	addi	sp,sp,64
    80003964:	00008067          	ret

0000000080003968 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003968:	ff010113          	addi	sp,sp,-16
    8000396c:	00113423          	sd	ra,8(sp)
    80003970:	00813023          	sd	s0,0(sp)
    80003974:	01010413          	addi	s0,sp,16
    80003978:	00008797          	auipc	a5,0x8
    8000397c:	d6078793          	addi	a5,a5,-672 # 8000b6d8 <_ZTV7WorkerA+0x10>
    80003980:	00f53023          	sd	a5,0(a0)
    80003984:	ffffe097          	auipc	ra,0xffffe
    80003988:	2e4080e7          	jalr	740(ra) # 80001c68 <_ZN6ThreadD1Ev>
    8000398c:	00813083          	ld	ra,8(sp)
    80003990:	00013403          	ld	s0,0(sp)
    80003994:	01010113          	addi	sp,sp,16
    80003998:	00008067          	ret

000000008000399c <_ZN7WorkerAD0Ev>:
    8000399c:	fe010113          	addi	sp,sp,-32
    800039a0:	00113c23          	sd	ra,24(sp)
    800039a4:	00813823          	sd	s0,16(sp)
    800039a8:	00913423          	sd	s1,8(sp)
    800039ac:	02010413          	addi	s0,sp,32
    800039b0:	00050493          	mv	s1,a0
    800039b4:	00008797          	auipc	a5,0x8
    800039b8:	d2478793          	addi	a5,a5,-732 # 8000b6d8 <_ZTV7WorkerA+0x10>
    800039bc:	00f53023          	sd	a5,0(a0)
    800039c0:	ffffe097          	auipc	ra,0xffffe
    800039c4:	2a8080e7          	jalr	680(ra) # 80001c68 <_ZN6ThreadD1Ev>
    800039c8:	00048513          	mv	a0,s1
    800039cc:	ffffe097          	auipc	ra,0xffffe
    800039d0:	c94080e7          	jalr	-876(ra) # 80001660 <_ZdlPv>
    800039d4:	01813083          	ld	ra,24(sp)
    800039d8:	01013403          	ld	s0,16(sp)
    800039dc:	00813483          	ld	s1,8(sp)
    800039e0:	02010113          	addi	sp,sp,32
    800039e4:	00008067          	ret

00000000800039e8 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800039e8:	ff010113          	addi	sp,sp,-16
    800039ec:	00113423          	sd	ra,8(sp)
    800039f0:	00813023          	sd	s0,0(sp)
    800039f4:	01010413          	addi	s0,sp,16
    800039f8:	00008797          	auipc	a5,0x8
    800039fc:	d0878793          	addi	a5,a5,-760 # 8000b700 <_ZTV7WorkerB+0x10>
    80003a00:	00f53023          	sd	a5,0(a0)
    80003a04:	ffffe097          	auipc	ra,0xffffe
    80003a08:	264080e7          	jalr	612(ra) # 80001c68 <_ZN6ThreadD1Ev>
    80003a0c:	00813083          	ld	ra,8(sp)
    80003a10:	00013403          	ld	s0,0(sp)
    80003a14:	01010113          	addi	sp,sp,16
    80003a18:	00008067          	ret

0000000080003a1c <_ZN7WorkerBD0Ev>:
    80003a1c:	fe010113          	addi	sp,sp,-32
    80003a20:	00113c23          	sd	ra,24(sp)
    80003a24:	00813823          	sd	s0,16(sp)
    80003a28:	00913423          	sd	s1,8(sp)
    80003a2c:	02010413          	addi	s0,sp,32
    80003a30:	00050493          	mv	s1,a0
    80003a34:	00008797          	auipc	a5,0x8
    80003a38:	ccc78793          	addi	a5,a5,-820 # 8000b700 <_ZTV7WorkerB+0x10>
    80003a3c:	00f53023          	sd	a5,0(a0)
    80003a40:	ffffe097          	auipc	ra,0xffffe
    80003a44:	228080e7          	jalr	552(ra) # 80001c68 <_ZN6ThreadD1Ev>
    80003a48:	00048513          	mv	a0,s1
    80003a4c:	ffffe097          	auipc	ra,0xffffe
    80003a50:	c14080e7          	jalr	-1004(ra) # 80001660 <_ZdlPv>
    80003a54:	01813083          	ld	ra,24(sp)
    80003a58:	01013403          	ld	s0,16(sp)
    80003a5c:	00813483          	ld	s1,8(sp)
    80003a60:	02010113          	addi	sp,sp,32
    80003a64:	00008067          	ret

0000000080003a68 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003a68:	ff010113          	addi	sp,sp,-16
    80003a6c:	00113423          	sd	ra,8(sp)
    80003a70:	00813023          	sd	s0,0(sp)
    80003a74:	01010413          	addi	s0,sp,16
    80003a78:	00008797          	auipc	a5,0x8
    80003a7c:	cb078793          	addi	a5,a5,-848 # 8000b728 <_ZTV7WorkerC+0x10>
    80003a80:	00f53023          	sd	a5,0(a0)
    80003a84:	ffffe097          	auipc	ra,0xffffe
    80003a88:	1e4080e7          	jalr	484(ra) # 80001c68 <_ZN6ThreadD1Ev>
    80003a8c:	00813083          	ld	ra,8(sp)
    80003a90:	00013403          	ld	s0,0(sp)
    80003a94:	01010113          	addi	sp,sp,16
    80003a98:	00008067          	ret

0000000080003a9c <_ZN7WorkerCD0Ev>:
    80003a9c:	fe010113          	addi	sp,sp,-32
    80003aa0:	00113c23          	sd	ra,24(sp)
    80003aa4:	00813823          	sd	s0,16(sp)
    80003aa8:	00913423          	sd	s1,8(sp)
    80003aac:	02010413          	addi	s0,sp,32
    80003ab0:	00050493          	mv	s1,a0
    80003ab4:	00008797          	auipc	a5,0x8
    80003ab8:	c7478793          	addi	a5,a5,-908 # 8000b728 <_ZTV7WorkerC+0x10>
    80003abc:	00f53023          	sd	a5,0(a0)
    80003ac0:	ffffe097          	auipc	ra,0xffffe
    80003ac4:	1a8080e7          	jalr	424(ra) # 80001c68 <_ZN6ThreadD1Ev>
    80003ac8:	00048513          	mv	a0,s1
    80003acc:	ffffe097          	auipc	ra,0xffffe
    80003ad0:	b94080e7          	jalr	-1132(ra) # 80001660 <_ZdlPv>
    80003ad4:	01813083          	ld	ra,24(sp)
    80003ad8:	01013403          	ld	s0,16(sp)
    80003adc:	00813483          	ld	s1,8(sp)
    80003ae0:	02010113          	addi	sp,sp,32
    80003ae4:	00008067          	ret

0000000080003ae8 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003ae8:	ff010113          	addi	sp,sp,-16
    80003aec:	00113423          	sd	ra,8(sp)
    80003af0:	00813023          	sd	s0,0(sp)
    80003af4:	01010413          	addi	s0,sp,16
    80003af8:	00008797          	auipc	a5,0x8
    80003afc:	c5878793          	addi	a5,a5,-936 # 8000b750 <_ZTV7WorkerD+0x10>
    80003b00:	00f53023          	sd	a5,0(a0)
    80003b04:	ffffe097          	auipc	ra,0xffffe
    80003b08:	164080e7          	jalr	356(ra) # 80001c68 <_ZN6ThreadD1Ev>
    80003b0c:	00813083          	ld	ra,8(sp)
    80003b10:	00013403          	ld	s0,0(sp)
    80003b14:	01010113          	addi	sp,sp,16
    80003b18:	00008067          	ret

0000000080003b1c <_ZN7WorkerDD0Ev>:
    80003b1c:	fe010113          	addi	sp,sp,-32
    80003b20:	00113c23          	sd	ra,24(sp)
    80003b24:	00813823          	sd	s0,16(sp)
    80003b28:	00913423          	sd	s1,8(sp)
    80003b2c:	02010413          	addi	s0,sp,32
    80003b30:	00050493          	mv	s1,a0
    80003b34:	00008797          	auipc	a5,0x8
    80003b38:	c1c78793          	addi	a5,a5,-996 # 8000b750 <_ZTV7WorkerD+0x10>
    80003b3c:	00f53023          	sd	a5,0(a0)
    80003b40:	ffffe097          	auipc	ra,0xffffe
    80003b44:	128080e7          	jalr	296(ra) # 80001c68 <_ZN6ThreadD1Ev>
    80003b48:	00048513          	mv	a0,s1
    80003b4c:	ffffe097          	auipc	ra,0xffffe
    80003b50:	b14080e7          	jalr	-1260(ra) # 80001660 <_ZdlPv>
    80003b54:	01813083          	ld	ra,24(sp)
    80003b58:	01013403          	ld	s0,16(sp)
    80003b5c:	00813483          	ld	s1,8(sp)
    80003b60:	02010113          	addi	sp,sp,32
    80003b64:	00008067          	ret

0000000080003b68 <_ZN7WorkerA3runEv>:
    void run() override {
    80003b68:	ff010113          	addi	sp,sp,-16
    80003b6c:	00113423          	sd	ra,8(sp)
    80003b70:	00813023          	sd	s0,0(sp)
    80003b74:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003b78:	00000593          	li	a1,0
    80003b7c:	fffff097          	auipc	ra,0xfffff
    80003b80:	774080e7          	jalr	1908(ra) # 800032f0 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003b84:	00813083          	ld	ra,8(sp)
    80003b88:	00013403          	ld	s0,0(sp)
    80003b8c:	01010113          	addi	sp,sp,16
    80003b90:	00008067          	ret

0000000080003b94 <_ZN7WorkerB3runEv>:
    void run() override {
    80003b94:	ff010113          	addi	sp,sp,-16
    80003b98:	00113423          	sd	ra,8(sp)
    80003b9c:	00813023          	sd	s0,0(sp)
    80003ba0:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003ba4:	00000593          	li	a1,0
    80003ba8:	00000097          	auipc	ra,0x0
    80003bac:	814080e7          	jalr	-2028(ra) # 800033bc <_ZN7WorkerB11workerBodyBEPv>
    }
    80003bb0:	00813083          	ld	ra,8(sp)
    80003bb4:	00013403          	ld	s0,0(sp)
    80003bb8:	01010113          	addi	sp,sp,16
    80003bbc:	00008067          	ret

0000000080003bc0 <_ZN7WorkerC3runEv>:
    void run() override {
    80003bc0:	ff010113          	addi	sp,sp,-16
    80003bc4:	00113423          	sd	ra,8(sp)
    80003bc8:	00813023          	sd	s0,0(sp)
    80003bcc:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003bd0:	00000593          	li	a1,0
    80003bd4:	00000097          	auipc	ra,0x0
    80003bd8:	8bc080e7          	jalr	-1860(ra) # 80003490 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003bdc:	00813083          	ld	ra,8(sp)
    80003be0:	00013403          	ld	s0,0(sp)
    80003be4:	01010113          	addi	sp,sp,16
    80003be8:	00008067          	ret

0000000080003bec <_ZN7WorkerD3runEv>:
    void run() override {
    80003bec:	ff010113          	addi	sp,sp,-16
    80003bf0:	00113423          	sd	ra,8(sp)
    80003bf4:	00813023          	sd	s0,0(sp)
    80003bf8:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003bfc:	00000593          	li	a1,0
    80003c00:	00000097          	auipc	ra,0x0
    80003c04:	a10080e7          	jalr	-1520(ra) # 80003610 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003c08:	00813083          	ld	ra,8(sp)
    80003c0c:	00013403          	ld	s0,0(sp)
    80003c10:	01010113          	addi	sp,sp,16
    80003c14:	00008067          	ret

0000000080003c18 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003c18:	f8010113          	addi	sp,sp,-128
    80003c1c:	06113c23          	sd	ra,120(sp)
    80003c20:	06813823          	sd	s0,112(sp)
    80003c24:	06913423          	sd	s1,104(sp)
    80003c28:	07213023          	sd	s2,96(sp)
    80003c2c:	05313c23          	sd	s3,88(sp)
    80003c30:	05413823          	sd	s4,80(sp)
    80003c34:	05513423          	sd	s5,72(sp)
    80003c38:	05613023          	sd	s6,64(sp)
    80003c3c:	03713c23          	sd	s7,56(sp)
    80003c40:	03813823          	sd	s8,48(sp)
    80003c44:	03913423          	sd	s9,40(sp)
    80003c48:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003c4c:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003c50:	00005517          	auipc	a0,0x5
    80003c54:	58850513          	addi	a0,a0,1416 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80003c58:	00001097          	auipc	ra,0x1
    80003c5c:	5a8080e7          	jalr	1448(ra) # 80005200 <_Z11printStringPKc>
    getString(input, 30);
    80003c60:	01e00593          	li	a1,30
    80003c64:	f8040493          	addi	s1,s0,-128
    80003c68:	00048513          	mv	a0,s1
    80003c6c:	00001097          	auipc	ra,0x1
    80003c70:	61c080e7          	jalr	1564(ra) # 80005288 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003c74:	00048513          	mv	a0,s1
    80003c78:	00001097          	auipc	ra,0x1
    80003c7c:	6e8080e7          	jalr	1768(ra) # 80005360 <_Z11stringToIntPKc>
    80003c80:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003c84:	00005517          	auipc	a0,0x5
    80003c88:	57450513          	addi	a0,a0,1396 # 800091f8 <CONSOLE_STATUS+0x1e8>
    80003c8c:	00001097          	auipc	ra,0x1
    80003c90:	574080e7          	jalr	1396(ra) # 80005200 <_Z11printStringPKc>
    getString(input, 30);
    80003c94:	01e00593          	li	a1,30
    80003c98:	00048513          	mv	a0,s1
    80003c9c:	00001097          	auipc	ra,0x1
    80003ca0:	5ec080e7          	jalr	1516(ra) # 80005288 <_Z9getStringPci>
    n = stringToInt(input);
    80003ca4:	00048513          	mv	a0,s1
    80003ca8:	00001097          	auipc	ra,0x1
    80003cac:	6b8080e7          	jalr	1720(ra) # 80005360 <_Z11stringToIntPKc>
    80003cb0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003cb4:	00005517          	auipc	a0,0x5
    80003cb8:	56450513          	addi	a0,a0,1380 # 80009218 <CONSOLE_STATUS+0x208>
    80003cbc:	00001097          	auipc	ra,0x1
    80003cc0:	544080e7          	jalr	1348(ra) # 80005200 <_Z11printStringPKc>
    printInt(threadNum);
    80003cc4:	00000613          	li	a2,0
    80003cc8:	00a00593          	li	a1,10
    80003ccc:	00098513          	mv	a0,s3
    80003cd0:	00001097          	auipc	ra,0x1
    80003cd4:	6e0080e7          	jalr	1760(ra) # 800053b0 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003cd8:	00005517          	auipc	a0,0x5
    80003cdc:	55850513          	addi	a0,a0,1368 # 80009230 <CONSOLE_STATUS+0x220>
    80003ce0:	00001097          	auipc	ra,0x1
    80003ce4:	520080e7          	jalr	1312(ra) # 80005200 <_Z11printStringPKc>
    printInt(n);
    80003ce8:	00000613          	li	a2,0
    80003cec:	00a00593          	li	a1,10
    80003cf0:	00048513          	mv	a0,s1
    80003cf4:	00001097          	auipc	ra,0x1
    80003cf8:	6bc080e7          	jalr	1724(ra) # 800053b0 <_Z8printIntiii>
    printString(".\n");
    80003cfc:	00005517          	auipc	a0,0x5
    80003d00:	54c50513          	addi	a0,a0,1356 # 80009248 <CONSOLE_STATUS+0x238>
    80003d04:	00001097          	auipc	ra,0x1
    80003d08:	4fc080e7          	jalr	1276(ra) # 80005200 <_Z11printStringPKc>
    if (threadNum > n) {
    80003d0c:	0334c463          	blt	s1,s3,80003d34 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003d10:	03305c63          	blez	s3,80003d48 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003d14:	03800513          	li	a0,56
    80003d18:	ffffe097          	auipc	ra,0xffffe
    80003d1c:	920080e7          	jalr	-1760(ra) # 80001638 <_Znwm>
    80003d20:	00050a93          	mv	s5,a0
    80003d24:	00048593          	mv	a1,s1
    80003d28:	00001097          	auipc	ra,0x1
    80003d2c:	7a8080e7          	jalr	1960(ra) # 800054d0 <_ZN9BufferCPPC1Ei>
    80003d30:	0300006f          	j	80003d60 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003d34:	00005517          	auipc	a0,0x5
    80003d38:	51c50513          	addi	a0,a0,1308 # 80009250 <CONSOLE_STATUS+0x240>
    80003d3c:	00001097          	auipc	ra,0x1
    80003d40:	4c4080e7          	jalr	1220(ra) # 80005200 <_Z11printStringPKc>
        return;
    80003d44:	0140006f          	j	80003d58 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003d48:	00005517          	auipc	a0,0x5
    80003d4c:	54850513          	addi	a0,a0,1352 # 80009290 <CONSOLE_STATUS+0x280>
    80003d50:	00001097          	auipc	ra,0x1
    80003d54:	4b0080e7          	jalr	1200(ra) # 80005200 <_Z11printStringPKc>
        return;
    80003d58:	000c0113          	mv	sp,s8
    80003d5c:	2140006f          	j	80003f70 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003d60:	01000513          	li	a0,16
    80003d64:	ffffe097          	auipc	ra,0xffffe
    80003d68:	8d4080e7          	jalr	-1836(ra) # 80001638 <_Znwm>
    80003d6c:	00050913          	mv	s2,a0
    80003d70:	00000593          	li	a1,0
    80003d74:	ffffe097          	auipc	ra,0xffffe
    80003d78:	144080e7          	jalr	324(ra) # 80001eb8 <_ZN9SemaphoreC1Ej>
    80003d7c:	00008797          	auipc	a5,0x8
    80003d80:	c127b623          	sd	s2,-1012(a5) # 8000b988 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003d84:	00399793          	slli	a5,s3,0x3
    80003d88:	00f78793          	addi	a5,a5,15
    80003d8c:	ff07f793          	andi	a5,a5,-16
    80003d90:	40f10133          	sub	sp,sp,a5
    80003d94:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003d98:	0019871b          	addiw	a4,s3,1
    80003d9c:	00171793          	slli	a5,a4,0x1
    80003da0:	00e787b3          	add	a5,a5,a4
    80003da4:	00379793          	slli	a5,a5,0x3
    80003da8:	00f78793          	addi	a5,a5,15
    80003dac:	ff07f793          	andi	a5,a5,-16
    80003db0:	40f10133          	sub	sp,sp,a5
    80003db4:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003db8:	00199493          	slli	s1,s3,0x1
    80003dbc:	013484b3          	add	s1,s1,s3
    80003dc0:	00349493          	slli	s1,s1,0x3
    80003dc4:	009b04b3          	add	s1,s6,s1
    80003dc8:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003dcc:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003dd0:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003dd4:	02800513          	li	a0,40
    80003dd8:	ffffe097          	auipc	ra,0xffffe
    80003ddc:	860080e7          	jalr	-1952(ra) # 80001638 <_Znwm>
    80003de0:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003de4:	ffffe097          	auipc	ra,0xffffe
    80003de8:	f60080e7          	jalr	-160(ra) # 80001d44 <_ZN6ThreadC1Ev>
    80003dec:	00008797          	auipc	a5,0x8
    80003df0:	9dc78793          	addi	a5,a5,-1572 # 8000b7c8 <_ZTV8Consumer+0x10>
    80003df4:	00fbb023          	sd	a5,0(s7)
    80003df8:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003dfc:	000b8513          	mv	a0,s7
    80003e00:	ffffe097          	auipc	ra,0xffffe
    80003e04:	fcc080e7          	jalr	-52(ra) # 80001dcc <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003e08:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003e0c:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003e10:	00008797          	auipc	a5,0x8
    80003e14:	b787b783          	ld	a5,-1160(a5) # 8000b988 <_ZL10waitForAll>
    80003e18:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003e1c:	02800513          	li	a0,40
    80003e20:	ffffe097          	auipc	ra,0xffffe
    80003e24:	818080e7          	jalr	-2024(ra) # 80001638 <_Znwm>
    80003e28:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003e2c:	ffffe097          	auipc	ra,0xffffe
    80003e30:	f18080e7          	jalr	-232(ra) # 80001d44 <_ZN6ThreadC1Ev>
    80003e34:	00008797          	auipc	a5,0x8
    80003e38:	94478793          	addi	a5,a5,-1724 # 8000b778 <_ZTV16ProducerKeyborad+0x10>
    80003e3c:	00f4b023          	sd	a5,0(s1)
    80003e40:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003e44:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003e48:	00048513          	mv	a0,s1
    80003e4c:	ffffe097          	auipc	ra,0xffffe
    80003e50:	f80080e7          	jalr	-128(ra) # 80001dcc <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003e54:	00100913          	li	s2,1
    80003e58:	0300006f          	j	80003e88 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003e5c:	00008797          	auipc	a5,0x8
    80003e60:	94478793          	addi	a5,a5,-1724 # 8000b7a0 <_ZTV8Producer+0x10>
    80003e64:	00fcb023          	sd	a5,0(s9)
    80003e68:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003e6c:	00391793          	slli	a5,s2,0x3
    80003e70:	00fa07b3          	add	a5,s4,a5
    80003e74:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003e78:	000c8513          	mv	a0,s9
    80003e7c:	ffffe097          	auipc	ra,0xffffe
    80003e80:	f50080e7          	jalr	-176(ra) # 80001dcc <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003e84:	0019091b          	addiw	s2,s2,1
    80003e88:	05395263          	bge	s2,s3,80003ecc <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003e8c:	00191493          	slli	s1,s2,0x1
    80003e90:	012484b3          	add	s1,s1,s2
    80003e94:	00349493          	slli	s1,s1,0x3
    80003e98:	009b04b3          	add	s1,s6,s1
    80003e9c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003ea0:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003ea4:	00008797          	auipc	a5,0x8
    80003ea8:	ae47b783          	ld	a5,-1308(a5) # 8000b988 <_ZL10waitForAll>
    80003eac:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003eb0:	02800513          	li	a0,40
    80003eb4:	ffffd097          	auipc	ra,0xffffd
    80003eb8:	784080e7          	jalr	1924(ra) # 80001638 <_Znwm>
    80003ebc:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003ec0:	ffffe097          	auipc	ra,0xffffe
    80003ec4:	e84080e7          	jalr	-380(ra) # 80001d44 <_ZN6ThreadC1Ev>
    80003ec8:	f95ff06f          	j	80003e5c <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003ecc:	ffffe097          	auipc	ra,0xffffe
    80003ed0:	ed8080e7          	jalr	-296(ra) # 80001da4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003ed4:	00000493          	li	s1,0
    80003ed8:	0099ce63          	blt	s3,s1,80003ef4 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003edc:	00008517          	auipc	a0,0x8
    80003ee0:	aac53503          	ld	a0,-1364(a0) # 8000b988 <_ZL10waitForAll>
    80003ee4:	ffffe097          	auipc	ra,0xffffe
    80003ee8:	00c080e7          	jalr	12(ra) # 80001ef0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003eec:	0014849b          	addiw	s1,s1,1
    80003ef0:	fe9ff06f          	j	80003ed8 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003ef4:	00008517          	auipc	a0,0x8
    80003ef8:	a9453503          	ld	a0,-1388(a0) # 8000b988 <_ZL10waitForAll>
    80003efc:	00050863          	beqz	a0,80003f0c <_Z20testConsumerProducerv+0x2f4>
    80003f00:	00053783          	ld	a5,0(a0)
    80003f04:	0087b783          	ld	a5,8(a5)
    80003f08:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003f0c:	00000493          	li	s1,0
    80003f10:	0080006f          	j	80003f18 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003f14:	0014849b          	addiw	s1,s1,1
    80003f18:	0334d263          	bge	s1,s3,80003f3c <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003f1c:	00349793          	slli	a5,s1,0x3
    80003f20:	00fa07b3          	add	a5,s4,a5
    80003f24:	0007b503          	ld	a0,0(a5)
    80003f28:	fe0506e3          	beqz	a0,80003f14 <_Z20testConsumerProducerv+0x2fc>
    80003f2c:	00053783          	ld	a5,0(a0)
    80003f30:	0087b783          	ld	a5,8(a5)
    80003f34:	000780e7          	jalr	a5
    80003f38:	fddff06f          	j	80003f14 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003f3c:	000b8a63          	beqz	s7,80003f50 <_Z20testConsumerProducerv+0x338>
    80003f40:	000bb783          	ld	a5,0(s7)
    80003f44:	0087b783          	ld	a5,8(a5)
    80003f48:	000b8513          	mv	a0,s7
    80003f4c:	000780e7          	jalr	a5
    delete buffer;
    80003f50:	000a8e63          	beqz	s5,80003f6c <_Z20testConsumerProducerv+0x354>
    80003f54:	000a8513          	mv	a0,s5
    80003f58:	00002097          	auipc	ra,0x2
    80003f5c:	870080e7          	jalr	-1936(ra) # 800057c8 <_ZN9BufferCPPD1Ev>
    80003f60:	000a8513          	mv	a0,s5
    80003f64:	ffffd097          	auipc	ra,0xffffd
    80003f68:	6fc080e7          	jalr	1788(ra) # 80001660 <_ZdlPv>
    80003f6c:	000c0113          	mv	sp,s8
}
    80003f70:	f8040113          	addi	sp,s0,-128
    80003f74:	07813083          	ld	ra,120(sp)
    80003f78:	07013403          	ld	s0,112(sp)
    80003f7c:	06813483          	ld	s1,104(sp)
    80003f80:	06013903          	ld	s2,96(sp)
    80003f84:	05813983          	ld	s3,88(sp)
    80003f88:	05013a03          	ld	s4,80(sp)
    80003f8c:	04813a83          	ld	s5,72(sp)
    80003f90:	04013b03          	ld	s6,64(sp)
    80003f94:	03813b83          	ld	s7,56(sp)
    80003f98:	03013c03          	ld	s8,48(sp)
    80003f9c:	02813c83          	ld	s9,40(sp)
    80003fa0:	08010113          	addi	sp,sp,128
    80003fa4:	00008067          	ret
    80003fa8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003fac:	000a8513          	mv	a0,s5
    80003fb0:	ffffd097          	auipc	ra,0xffffd
    80003fb4:	6b0080e7          	jalr	1712(ra) # 80001660 <_ZdlPv>
    80003fb8:	00048513          	mv	a0,s1
    80003fbc:	00009097          	auipc	ra,0x9
    80003fc0:	acc080e7          	jalr	-1332(ra) # 8000ca88 <_Unwind_Resume>
    80003fc4:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003fc8:	00090513          	mv	a0,s2
    80003fcc:	ffffd097          	auipc	ra,0xffffd
    80003fd0:	694080e7          	jalr	1684(ra) # 80001660 <_ZdlPv>
    80003fd4:	00048513          	mv	a0,s1
    80003fd8:	00009097          	auipc	ra,0x9
    80003fdc:	ab0080e7          	jalr	-1360(ra) # 8000ca88 <_Unwind_Resume>
    80003fe0:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003fe4:	000b8513          	mv	a0,s7
    80003fe8:	ffffd097          	auipc	ra,0xffffd
    80003fec:	678080e7          	jalr	1656(ra) # 80001660 <_ZdlPv>
    80003ff0:	00048513          	mv	a0,s1
    80003ff4:	00009097          	auipc	ra,0x9
    80003ff8:	a94080e7          	jalr	-1388(ra) # 8000ca88 <_Unwind_Resume>
    80003ffc:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004000:	00048513          	mv	a0,s1
    80004004:	ffffd097          	auipc	ra,0xffffd
    80004008:	65c080e7          	jalr	1628(ra) # 80001660 <_ZdlPv>
    8000400c:	00090513          	mv	a0,s2
    80004010:	00009097          	auipc	ra,0x9
    80004014:	a78080e7          	jalr	-1416(ra) # 8000ca88 <_Unwind_Resume>
    80004018:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    8000401c:	000c8513          	mv	a0,s9
    80004020:	ffffd097          	auipc	ra,0xffffd
    80004024:	640080e7          	jalr	1600(ra) # 80001660 <_ZdlPv>
    80004028:	00048513          	mv	a0,s1
    8000402c:	00009097          	auipc	ra,0x9
    80004030:	a5c080e7          	jalr	-1444(ra) # 8000ca88 <_Unwind_Resume>

0000000080004034 <_ZN8Consumer3runEv>:
    void run() override {
    80004034:	fd010113          	addi	sp,sp,-48
    80004038:	02113423          	sd	ra,40(sp)
    8000403c:	02813023          	sd	s0,32(sp)
    80004040:	00913c23          	sd	s1,24(sp)
    80004044:	01213823          	sd	s2,16(sp)
    80004048:	01313423          	sd	s3,8(sp)
    8000404c:	03010413          	addi	s0,sp,48
    80004050:	00050913          	mv	s2,a0
        int i = 0;
    80004054:	00000993          	li	s3,0
    80004058:	0100006f          	j	80004068 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    8000405c:	00a00513          	li	a0,10
    80004060:	ffffe097          	auipc	ra,0xffffe
    80004064:	008080e7          	jalr	8(ra) # 80002068 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004068:	00008797          	auipc	a5,0x8
    8000406c:	9187a783          	lw	a5,-1768(a5) # 8000b980 <_ZL9threadEnd>
    80004070:	04079a63          	bnez	a5,800040c4 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004074:	02093783          	ld	a5,32(s2)
    80004078:	0087b503          	ld	a0,8(a5)
    8000407c:	00001097          	auipc	ra,0x1
    80004080:	638080e7          	jalr	1592(ra) # 800056b4 <_ZN9BufferCPP3getEv>
            i++;
    80004084:	0019849b          	addiw	s1,s3,1
    80004088:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    8000408c:	0ff57513          	andi	a0,a0,255
    80004090:	ffffe097          	auipc	ra,0xffffe
    80004094:	fd8080e7          	jalr	-40(ra) # 80002068 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004098:	05000793          	li	a5,80
    8000409c:	02f4e4bb          	remw	s1,s1,a5
    800040a0:	fc0494e3          	bnez	s1,80004068 <_ZN8Consumer3runEv+0x34>
    800040a4:	fb9ff06f          	j	8000405c <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800040a8:	02093783          	ld	a5,32(s2)
    800040ac:	0087b503          	ld	a0,8(a5)
    800040b0:	00001097          	auipc	ra,0x1
    800040b4:	604080e7          	jalr	1540(ra) # 800056b4 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800040b8:	0ff57513          	andi	a0,a0,255
    800040bc:	ffffe097          	auipc	ra,0xffffe
    800040c0:	fac080e7          	jalr	-84(ra) # 80002068 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800040c4:	02093783          	ld	a5,32(s2)
    800040c8:	0087b503          	ld	a0,8(a5)
    800040cc:	00001097          	auipc	ra,0x1
    800040d0:	674080e7          	jalr	1652(ra) # 80005740 <_ZN9BufferCPP6getCntEv>
    800040d4:	fca04ae3          	bgtz	a0,800040a8 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800040d8:	02093783          	ld	a5,32(s2)
    800040dc:	0107b503          	ld	a0,16(a5)
    800040e0:	ffffe097          	auipc	ra,0xffffe
    800040e4:	e3c080e7          	jalr	-452(ra) # 80001f1c <_ZN9Semaphore6signalEv>
    }
    800040e8:	02813083          	ld	ra,40(sp)
    800040ec:	02013403          	ld	s0,32(sp)
    800040f0:	01813483          	ld	s1,24(sp)
    800040f4:	01013903          	ld	s2,16(sp)
    800040f8:	00813983          	ld	s3,8(sp)
    800040fc:	03010113          	addi	sp,sp,48
    80004100:	00008067          	ret

0000000080004104 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004104:	ff010113          	addi	sp,sp,-16
    80004108:	00113423          	sd	ra,8(sp)
    8000410c:	00813023          	sd	s0,0(sp)
    80004110:	01010413          	addi	s0,sp,16
    80004114:	00007797          	auipc	a5,0x7
    80004118:	6b478793          	addi	a5,a5,1716 # 8000b7c8 <_ZTV8Consumer+0x10>
    8000411c:	00f53023          	sd	a5,0(a0)
    80004120:	ffffe097          	auipc	ra,0xffffe
    80004124:	b48080e7          	jalr	-1208(ra) # 80001c68 <_ZN6ThreadD1Ev>
    80004128:	00813083          	ld	ra,8(sp)
    8000412c:	00013403          	ld	s0,0(sp)
    80004130:	01010113          	addi	sp,sp,16
    80004134:	00008067          	ret

0000000080004138 <_ZN8ConsumerD0Ev>:
    80004138:	fe010113          	addi	sp,sp,-32
    8000413c:	00113c23          	sd	ra,24(sp)
    80004140:	00813823          	sd	s0,16(sp)
    80004144:	00913423          	sd	s1,8(sp)
    80004148:	02010413          	addi	s0,sp,32
    8000414c:	00050493          	mv	s1,a0
    80004150:	00007797          	auipc	a5,0x7
    80004154:	67878793          	addi	a5,a5,1656 # 8000b7c8 <_ZTV8Consumer+0x10>
    80004158:	00f53023          	sd	a5,0(a0)
    8000415c:	ffffe097          	auipc	ra,0xffffe
    80004160:	b0c080e7          	jalr	-1268(ra) # 80001c68 <_ZN6ThreadD1Ev>
    80004164:	00048513          	mv	a0,s1
    80004168:	ffffd097          	auipc	ra,0xffffd
    8000416c:	4f8080e7          	jalr	1272(ra) # 80001660 <_ZdlPv>
    80004170:	01813083          	ld	ra,24(sp)
    80004174:	01013403          	ld	s0,16(sp)
    80004178:	00813483          	ld	s1,8(sp)
    8000417c:	02010113          	addi	sp,sp,32
    80004180:	00008067          	ret

0000000080004184 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004184:	ff010113          	addi	sp,sp,-16
    80004188:	00113423          	sd	ra,8(sp)
    8000418c:	00813023          	sd	s0,0(sp)
    80004190:	01010413          	addi	s0,sp,16
    80004194:	00007797          	auipc	a5,0x7
    80004198:	5e478793          	addi	a5,a5,1508 # 8000b778 <_ZTV16ProducerKeyborad+0x10>
    8000419c:	00f53023          	sd	a5,0(a0)
    800041a0:	ffffe097          	auipc	ra,0xffffe
    800041a4:	ac8080e7          	jalr	-1336(ra) # 80001c68 <_ZN6ThreadD1Ev>
    800041a8:	00813083          	ld	ra,8(sp)
    800041ac:	00013403          	ld	s0,0(sp)
    800041b0:	01010113          	addi	sp,sp,16
    800041b4:	00008067          	ret

00000000800041b8 <_ZN16ProducerKeyboradD0Ev>:
    800041b8:	fe010113          	addi	sp,sp,-32
    800041bc:	00113c23          	sd	ra,24(sp)
    800041c0:	00813823          	sd	s0,16(sp)
    800041c4:	00913423          	sd	s1,8(sp)
    800041c8:	02010413          	addi	s0,sp,32
    800041cc:	00050493          	mv	s1,a0
    800041d0:	00007797          	auipc	a5,0x7
    800041d4:	5a878793          	addi	a5,a5,1448 # 8000b778 <_ZTV16ProducerKeyborad+0x10>
    800041d8:	00f53023          	sd	a5,0(a0)
    800041dc:	ffffe097          	auipc	ra,0xffffe
    800041e0:	a8c080e7          	jalr	-1396(ra) # 80001c68 <_ZN6ThreadD1Ev>
    800041e4:	00048513          	mv	a0,s1
    800041e8:	ffffd097          	auipc	ra,0xffffd
    800041ec:	478080e7          	jalr	1144(ra) # 80001660 <_ZdlPv>
    800041f0:	01813083          	ld	ra,24(sp)
    800041f4:	01013403          	ld	s0,16(sp)
    800041f8:	00813483          	ld	s1,8(sp)
    800041fc:	02010113          	addi	sp,sp,32
    80004200:	00008067          	ret

0000000080004204 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004204:	ff010113          	addi	sp,sp,-16
    80004208:	00113423          	sd	ra,8(sp)
    8000420c:	00813023          	sd	s0,0(sp)
    80004210:	01010413          	addi	s0,sp,16
    80004214:	00007797          	auipc	a5,0x7
    80004218:	58c78793          	addi	a5,a5,1420 # 8000b7a0 <_ZTV8Producer+0x10>
    8000421c:	00f53023          	sd	a5,0(a0)
    80004220:	ffffe097          	auipc	ra,0xffffe
    80004224:	a48080e7          	jalr	-1464(ra) # 80001c68 <_ZN6ThreadD1Ev>
    80004228:	00813083          	ld	ra,8(sp)
    8000422c:	00013403          	ld	s0,0(sp)
    80004230:	01010113          	addi	sp,sp,16
    80004234:	00008067          	ret

0000000080004238 <_ZN8ProducerD0Ev>:
    80004238:	fe010113          	addi	sp,sp,-32
    8000423c:	00113c23          	sd	ra,24(sp)
    80004240:	00813823          	sd	s0,16(sp)
    80004244:	00913423          	sd	s1,8(sp)
    80004248:	02010413          	addi	s0,sp,32
    8000424c:	00050493          	mv	s1,a0
    80004250:	00007797          	auipc	a5,0x7
    80004254:	55078793          	addi	a5,a5,1360 # 8000b7a0 <_ZTV8Producer+0x10>
    80004258:	00f53023          	sd	a5,0(a0)
    8000425c:	ffffe097          	auipc	ra,0xffffe
    80004260:	a0c080e7          	jalr	-1524(ra) # 80001c68 <_ZN6ThreadD1Ev>
    80004264:	00048513          	mv	a0,s1
    80004268:	ffffd097          	auipc	ra,0xffffd
    8000426c:	3f8080e7          	jalr	1016(ra) # 80001660 <_ZdlPv>
    80004270:	01813083          	ld	ra,24(sp)
    80004274:	01013403          	ld	s0,16(sp)
    80004278:	00813483          	ld	s1,8(sp)
    8000427c:	02010113          	addi	sp,sp,32
    80004280:	00008067          	ret

0000000080004284 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004284:	fe010113          	addi	sp,sp,-32
    80004288:	00113c23          	sd	ra,24(sp)
    8000428c:	00813823          	sd	s0,16(sp)
    80004290:	00913423          	sd	s1,8(sp)
    80004294:	02010413          	addi	s0,sp,32
    80004298:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    8000429c:	ffffd097          	auipc	ra,0xffffd
    800042a0:	12c080e7          	jalr	300(ra) # 800013c8 <_Z4getcv>
    800042a4:	0005059b          	sext.w	a1,a0
    800042a8:	01b00793          	li	a5,27
    800042ac:	00f58c63          	beq	a1,a5,800042c4 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800042b0:	0204b783          	ld	a5,32(s1)
    800042b4:	0087b503          	ld	a0,8(a5)
    800042b8:	00001097          	auipc	ra,0x1
    800042bc:	36c080e7          	jalr	876(ra) # 80005624 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800042c0:	fddff06f          	j	8000429c <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800042c4:	00100793          	li	a5,1
    800042c8:	00007717          	auipc	a4,0x7
    800042cc:	6af72c23          	sw	a5,1720(a4) # 8000b980 <_ZL9threadEnd>
        td->buffer->put('!');
    800042d0:	0204b783          	ld	a5,32(s1)
    800042d4:	02100593          	li	a1,33
    800042d8:	0087b503          	ld	a0,8(a5)
    800042dc:	00001097          	auipc	ra,0x1
    800042e0:	348080e7          	jalr	840(ra) # 80005624 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800042e4:	0204b783          	ld	a5,32(s1)
    800042e8:	0107b503          	ld	a0,16(a5)
    800042ec:	ffffe097          	auipc	ra,0xffffe
    800042f0:	c30080e7          	jalr	-976(ra) # 80001f1c <_ZN9Semaphore6signalEv>
    }
    800042f4:	01813083          	ld	ra,24(sp)
    800042f8:	01013403          	ld	s0,16(sp)
    800042fc:	00813483          	ld	s1,8(sp)
    80004300:	02010113          	addi	sp,sp,32
    80004304:	00008067          	ret

0000000080004308 <_ZN8Producer3runEv>:
    void run() override {
    80004308:	fe010113          	addi	sp,sp,-32
    8000430c:	00113c23          	sd	ra,24(sp)
    80004310:	00813823          	sd	s0,16(sp)
    80004314:	00913423          	sd	s1,8(sp)
    80004318:	01213023          	sd	s2,0(sp)
    8000431c:	02010413          	addi	s0,sp,32
    80004320:	00050493          	mv	s1,a0
        int i = 0;
    80004324:	00000913          	li	s2,0
        while (!threadEnd) {
    80004328:	00007797          	auipc	a5,0x7
    8000432c:	6587a783          	lw	a5,1624(a5) # 8000b980 <_ZL9threadEnd>
    80004330:	04079263          	bnez	a5,80004374 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004334:	0204b783          	ld	a5,32(s1)
    80004338:	0007a583          	lw	a1,0(a5)
    8000433c:	0305859b          	addiw	a1,a1,48
    80004340:	0087b503          	ld	a0,8(a5)
    80004344:	00001097          	auipc	ra,0x1
    80004348:	2e0080e7          	jalr	736(ra) # 80005624 <_ZN9BufferCPP3putEi>
            i++;
    8000434c:	0019071b          	addiw	a4,s2,1
    80004350:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004354:	0204b783          	ld	a5,32(s1)
    80004358:	0007a783          	lw	a5,0(a5)
    8000435c:	00e787bb          	addw	a5,a5,a4
    80004360:	00500513          	li	a0,5
    80004364:	02a7e53b          	remw	a0,a5,a0
    80004368:	ffffe097          	auipc	ra,0xffffe
    8000436c:	ad4080e7          	jalr	-1324(ra) # 80001e3c <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004370:	fb9ff06f          	j	80004328 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004374:	0204b783          	ld	a5,32(s1)
    80004378:	0107b503          	ld	a0,16(a5)
    8000437c:	ffffe097          	auipc	ra,0xffffe
    80004380:	ba0080e7          	jalr	-1120(ra) # 80001f1c <_ZN9Semaphore6signalEv>
    }
    80004384:	01813083          	ld	ra,24(sp)
    80004388:	01013403          	ld	s0,16(sp)
    8000438c:	00813483          	ld	s1,8(sp)
    80004390:	00013903          	ld	s2,0(sp)
    80004394:	02010113          	addi	sp,sp,32
    80004398:	00008067          	ret

000000008000439c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000439c:	fe010113          	addi	sp,sp,-32
    800043a0:	00113c23          	sd	ra,24(sp)
    800043a4:	00813823          	sd	s0,16(sp)
    800043a8:	00913423          	sd	s1,8(sp)
    800043ac:	01213023          	sd	s2,0(sp)
    800043b0:	02010413          	addi	s0,sp,32
    800043b4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800043b8:	00100793          	li	a5,1
    800043bc:	02a7f863          	bgeu	a5,a0,800043ec <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800043c0:	00a00793          	li	a5,10
    800043c4:	02f577b3          	remu	a5,a0,a5
    800043c8:	02078e63          	beqz	a5,80004404 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800043cc:	fff48513          	addi	a0,s1,-1
    800043d0:	00000097          	auipc	ra,0x0
    800043d4:	fcc080e7          	jalr	-52(ra) # 8000439c <_ZL9fibonaccim>
    800043d8:	00050913          	mv	s2,a0
    800043dc:	ffe48513          	addi	a0,s1,-2
    800043e0:	00000097          	auipc	ra,0x0
    800043e4:	fbc080e7          	jalr	-68(ra) # 8000439c <_ZL9fibonaccim>
    800043e8:	00a90533          	add	a0,s2,a0
}
    800043ec:	01813083          	ld	ra,24(sp)
    800043f0:	01013403          	ld	s0,16(sp)
    800043f4:	00813483          	ld	s1,8(sp)
    800043f8:	00013903          	ld	s2,0(sp)
    800043fc:	02010113          	addi	sp,sp,32
    80004400:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004404:	ffffd097          	auipc	ra,0xffffd
    80004408:	e94080e7          	jalr	-364(ra) # 80001298 <_Z15thread_dispatchv>
    8000440c:	fc1ff06f          	j	800043cc <_ZL9fibonaccim+0x30>

0000000080004410 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004410:	fe010113          	addi	sp,sp,-32
    80004414:	00113c23          	sd	ra,24(sp)
    80004418:	00813823          	sd	s0,16(sp)
    8000441c:	00913423          	sd	s1,8(sp)
    80004420:	01213023          	sd	s2,0(sp)
    80004424:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004428:	00a00493          	li	s1,10
    8000442c:	0400006f          	j	8000446c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004430:	00005517          	auipc	a0,0x5
    80004434:	ef050513          	addi	a0,a0,-272 # 80009320 <CONSOLE_STATUS+0x310>
    80004438:	00001097          	auipc	ra,0x1
    8000443c:	dc8080e7          	jalr	-568(ra) # 80005200 <_Z11printStringPKc>
    80004440:	00000613          	li	a2,0
    80004444:	00a00593          	li	a1,10
    80004448:	00048513          	mv	a0,s1
    8000444c:	00001097          	auipc	ra,0x1
    80004450:	f64080e7          	jalr	-156(ra) # 800053b0 <_Z8printIntiii>
    80004454:	00005517          	auipc	a0,0x5
    80004458:	0bc50513          	addi	a0,a0,188 # 80009510 <CONSOLE_STATUS+0x500>
    8000445c:	00001097          	auipc	ra,0x1
    80004460:	da4080e7          	jalr	-604(ra) # 80005200 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004464:	0014849b          	addiw	s1,s1,1
    80004468:	0ff4f493          	andi	s1,s1,255
    8000446c:	00c00793          	li	a5,12
    80004470:	fc97f0e3          	bgeu	a5,s1,80004430 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004474:	00005517          	auipc	a0,0x5
    80004478:	eb450513          	addi	a0,a0,-332 # 80009328 <CONSOLE_STATUS+0x318>
    8000447c:	00001097          	auipc	ra,0x1
    80004480:	d84080e7          	jalr	-636(ra) # 80005200 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004484:	00500313          	li	t1,5
    thread_dispatch();
    80004488:	ffffd097          	auipc	ra,0xffffd
    8000448c:	e10080e7          	jalr	-496(ra) # 80001298 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004490:	01000513          	li	a0,16
    80004494:	00000097          	auipc	ra,0x0
    80004498:	f08080e7          	jalr	-248(ra) # 8000439c <_ZL9fibonaccim>
    8000449c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800044a0:	00005517          	auipc	a0,0x5
    800044a4:	e9850513          	addi	a0,a0,-360 # 80009338 <CONSOLE_STATUS+0x328>
    800044a8:	00001097          	auipc	ra,0x1
    800044ac:	d58080e7          	jalr	-680(ra) # 80005200 <_Z11printStringPKc>
    800044b0:	00000613          	li	a2,0
    800044b4:	00a00593          	li	a1,10
    800044b8:	0009051b          	sext.w	a0,s2
    800044bc:	00001097          	auipc	ra,0x1
    800044c0:	ef4080e7          	jalr	-268(ra) # 800053b0 <_Z8printIntiii>
    800044c4:	00005517          	auipc	a0,0x5
    800044c8:	04c50513          	addi	a0,a0,76 # 80009510 <CONSOLE_STATUS+0x500>
    800044cc:	00001097          	auipc	ra,0x1
    800044d0:	d34080e7          	jalr	-716(ra) # 80005200 <_Z11printStringPKc>
    800044d4:	0400006f          	j	80004514 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800044d8:	00005517          	auipc	a0,0x5
    800044dc:	e4850513          	addi	a0,a0,-440 # 80009320 <CONSOLE_STATUS+0x310>
    800044e0:	00001097          	auipc	ra,0x1
    800044e4:	d20080e7          	jalr	-736(ra) # 80005200 <_Z11printStringPKc>
    800044e8:	00000613          	li	a2,0
    800044ec:	00a00593          	li	a1,10
    800044f0:	00048513          	mv	a0,s1
    800044f4:	00001097          	auipc	ra,0x1
    800044f8:	ebc080e7          	jalr	-324(ra) # 800053b0 <_Z8printIntiii>
    800044fc:	00005517          	auipc	a0,0x5
    80004500:	01450513          	addi	a0,a0,20 # 80009510 <CONSOLE_STATUS+0x500>
    80004504:	00001097          	auipc	ra,0x1
    80004508:	cfc080e7          	jalr	-772(ra) # 80005200 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000450c:	0014849b          	addiw	s1,s1,1
    80004510:	0ff4f493          	andi	s1,s1,255
    80004514:	00f00793          	li	a5,15
    80004518:	fc97f0e3          	bgeu	a5,s1,800044d8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000451c:	00005517          	auipc	a0,0x5
    80004520:	e2c50513          	addi	a0,a0,-468 # 80009348 <CONSOLE_STATUS+0x338>
    80004524:	00001097          	auipc	ra,0x1
    80004528:	cdc080e7          	jalr	-804(ra) # 80005200 <_Z11printStringPKc>
    finishedD = true;
    8000452c:	00100793          	li	a5,1
    80004530:	00007717          	auipc	a4,0x7
    80004534:	46f70023          	sb	a5,1120(a4) # 8000b990 <_ZL9finishedD>
    thread_dispatch();
    80004538:	ffffd097          	auipc	ra,0xffffd
    8000453c:	d60080e7          	jalr	-672(ra) # 80001298 <_Z15thread_dispatchv>
}
    80004540:	01813083          	ld	ra,24(sp)
    80004544:	01013403          	ld	s0,16(sp)
    80004548:	00813483          	ld	s1,8(sp)
    8000454c:	00013903          	ld	s2,0(sp)
    80004550:	02010113          	addi	sp,sp,32
    80004554:	00008067          	ret

0000000080004558 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004558:	fe010113          	addi	sp,sp,-32
    8000455c:	00113c23          	sd	ra,24(sp)
    80004560:	00813823          	sd	s0,16(sp)
    80004564:	00913423          	sd	s1,8(sp)
    80004568:	01213023          	sd	s2,0(sp)
    8000456c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004570:	00000493          	li	s1,0
    80004574:	0400006f          	j	800045b4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004578:	00005517          	auipc	a0,0x5
    8000457c:	d7850513          	addi	a0,a0,-648 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80004580:	00001097          	auipc	ra,0x1
    80004584:	c80080e7          	jalr	-896(ra) # 80005200 <_Z11printStringPKc>
    80004588:	00000613          	li	a2,0
    8000458c:	00a00593          	li	a1,10
    80004590:	00048513          	mv	a0,s1
    80004594:	00001097          	auipc	ra,0x1
    80004598:	e1c080e7          	jalr	-484(ra) # 800053b0 <_Z8printIntiii>
    8000459c:	00005517          	auipc	a0,0x5
    800045a0:	f7450513          	addi	a0,a0,-140 # 80009510 <CONSOLE_STATUS+0x500>
    800045a4:	00001097          	auipc	ra,0x1
    800045a8:	c5c080e7          	jalr	-932(ra) # 80005200 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800045ac:	0014849b          	addiw	s1,s1,1
    800045b0:	0ff4f493          	andi	s1,s1,255
    800045b4:	00200793          	li	a5,2
    800045b8:	fc97f0e3          	bgeu	a5,s1,80004578 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800045bc:	00005517          	auipc	a0,0x5
    800045c0:	d3c50513          	addi	a0,a0,-708 # 800092f8 <CONSOLE_STATUS+0x2e8>
    800045c4:	00001097          	auipc	ra,0x1
    800045c8:	c3c080e7          	jalr	-964(ra) # 80005200 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800045cc:	00700313          	li	t1,7
    thread_dispatch();
    800045d0:	ffffd097          	auipc	ra,0xffffd
    800045d4:	cc8080e7          	jalr	-824(ra) # 80001298 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800045d8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800045dc:	00005517          	auipc	a0,0x5
    800045e0:	d2c50513          	addi	a0,a0,-724 # 80009308 <CONSOLE_STATUS+0x2f8>
    800045e4:	00001097          	auipc	ra,0x1
    800045e8:	c1c080e7          	jalr	-996(ra) # 80005200 <_Z11printStringPKc>
    800045ec:	00000613          	li	a2,0
    800045f0:	00a00593          	li	a1,10
    800045f4:	0009051b          	sext.w	a0,s2
    800045f8:	00001097          	auipc	ra,0x1
    800045fc:	db8080e7          	jalr	-584(ra) # 800053b0 <_Z8printIntiii>
    80004600:	00005517          	auipc	a0,0x5
    80004604:	f1050513          	addi	a0,a0,-240 # 80009510 <CONSOLE_STATUS+0x500>
    80004608:	00001097          	auipc	ra,0x1
    8000460c:	bf8080e7          	jalr	-1032(ra) # 80005200 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004610:	00c00513          	li	a0,12
    80004614:	00000097          	auipc	ra,0x0
    80004618:	d88080e7          	jalr	-632(ra) # 8000439c <_ZL9fibonaccim>
    8000461c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004620:	00005517          	auipc	a0,0x5
    80004624:	cf050513          	addi	a0,a0,-784 # 80009310 <CONSOLE_STATUS+0x300>
    80004628:	00001097          	auipc	ra,0x1
    8000462c:	bd8080e7          	jalr	-1064(ra) # 80005200 <_Z11printStringPKc>
    80004630:	00000613          	li	a2,0
    80004634:	00a00593          	li	a1,10
    80004638:	0009051b          	sext.w	a0,s2
    8000463c:	00001097          	auipc	ra,0x1
    80004640:	d74080e7          	jalr	-652(ra) # 800053b0 <_Z8printIntiii>
    80004644:	00005517          	auipc	a0,0x5
    80004648:	ecc50513          	addi	a0,a0,-308 # 80009510 <CONSOLE_STATUS+0x500>
    8000464c:	00001097          	auipc	ra,0x1
    80004650:	bb4080e7          	jalr	-1100(ra) # 80005200 <_Z11printStringPKc>
    80004654:	0400006f          	j	80004694 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004658:	00005517          	auipc	a0,0x5
    8000465c:	c9850513          	addi	a0,a0,-872 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80004660:	00001097          	auipc	ra,0x1
    80004664:	ba0080e7          	jalr	-1120(ra) # 80005200 <_Z11printStringPKc>
    80004668:	00000613          	li	a2,0
    8000466c:	00a00593          	li	a1,10
    80004670:	00048513          	mv	a0,s1
    80004674:	00001097          	auipc	ra,0x1
    80004678:	d3c080e7          	jalr	-708(ra) # 800053b0 <_Z8printIntiii>
    8000467c:	00005517          	auipc	a0,0x5
    80004680:	e9450513          	addi	a0,a0,-364 # 80009510 <CONSOLE_STATUS+0x500>
    80004684:	00001097          	auipc	ra,0x1
    80004688:	b7c080e7          	jalr	-1156(ra) # 80005200 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000468c:	0014849b          	addiw	s1,s1,1
    80004690:	0ff4f493          	andi	s1,s1,255
    80004694:	00500793          	li	a5,5
    80004698:	fc97f0e3          	bgeu	a5,s1,80004658 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    8000469c:	00005517          	auipc	a0,0x5
    800046a0:	c2c50513          	addi	a0,a0,-980 # 800092c8 <CONSOLE_STATUS+0x2b8>
    800046a4:	00001097          	auipc	ra,0x1
    800046a8:	b5c080e7          	jalr	-1188(ra) # 80005200 <_Z11printStringPKc>
    finishedC = true;
    800046ac:	00100793          	li	a5,1
    800046b0:	00007717          	auipc	a4,0x7
    800046b4:	2ef700a3          	sb	a5,737(a4) # 8000b991 <_ZL9finishedC>
    thread_dispatch();
    800046b8:	ffffd097          	auipc	ra,0xffffd
    800046bc:	be0080e7          	jalr	-1056(ra) # 80001298 <_Z15thread_dispatchv>
}
    800046c0:	01813083          	ld	ra,24(sp)
    800046c4:	01013403          	ld	s0,16(sp)
    800046c8:	00813483          	ld	s1,8(sp)
    800046cc:	00013903          	ld	s2,0(sp)
    800046d0:	02010113          	addi	sp,sp,32
    800046d4:	00008067          	ret

00000000800046d8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800046d8:	fe010113          	addi	sp,sp,-32
    800046dc:	00113c23          	sd	ra,24(sp)
    800046e0:	00813823          	sd	s0,16(sp)
    800046e4:	00913423          	sd	s1,8(sp)
    800046e8:	01213023          	sd	s2,0(sp)
    800046ec:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800046f0:	00000913          	li	s2,0
    800046f4:	0380006f          	j	8000472c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800046f8:	ffffd097          	auipc	ra,0xffffd
    800046fc:	ba0080e7          	jalr	-1120(ra) # 80001298 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004700:	00148493          	addi	s1,s1,1
    80004704:	000027b7          	lui	a5,0x2
    80004708:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000470c:	0097ee63          	bltu	a5,s1,80004728 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004710:	00000713          	li	a4,0
    80004714:	000077b7          	lui	a5,0x7
    80004718:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000471c:	fce7eee3          	bltu	a5,a4,800046f8 <_ZL11workerBodyBPv+0x20>
    80004720:	00170713          	addi	a4,a4,1
    80004724:	ff1ff06f          	j	80004714 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004728:	00190913          	addi	s2,s2,1
    8000472c:	00f00793          	li	a5,15
    80004730:	0527e063          	bltu	a5,s2,80004770 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004734:	00005517          	auipc	a0,0x5
    80004738:	ba450513          	addi	a0,a0,-1116 # 800092d8 <CONSOLE_STATUS+0x2c8>
    8000473c:	00001097          	auipc	ra,0x1
    80004740:	ac4080e7          	jalr	-1340(ra) # 80005200 <_Z11printStringPKc>
    80004744:	00000613          	li	a2,0
    80004748:	00a00593          	li	a1,10
    8000474c:	0009051b          	sext.w	a0,s2
    80004750:	00001097          	auipc	ra,0x1
    80004754:	c60080e7          	jalr	-928(ra) # 800053b0 <_Z8printIntiii>
    80004758:	00005517          	auipc	a0,0x5
    8000475c:	db850513          	addi	a0,a0,-584 # 80009510 <CONSOLE_STATUS+0x500>
    80004760:	00001097          	auipc	ra,0x1
    80004764:	aa0080e7          	jalr	-1376(ra) # 80005200 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004768:	00000493          	li	s1,0
    8000476c:	f99ff06f          	j	80004704 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004770:	00005517          	auipc	a0,0x5
    80004774:	b7050513          	addi	a0,a0,-1168 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004778:	00001097          	auipc	ra,0x1
    8000477c:	a88080e7          	jalr	-1400(ra) # 80005200 <_Z11printStringPKc>
    finishedB = true;
    80004780:	00100793          	li	a5,1
    80004784:	00007717          	auipc	a4,0x7
    80004788:	20f70723          	sb	a5,526(a4) # 8000b992 <_ZL9finishedB>
    thread_dispatch();
    8000478c:	ffffd097          	auipc	ra,0xffffd
    80004790:	b0c080e7          	jalr	-1268(ra) # 80001298 <_Z15thread_dispatchv>
}
    80004794:	01813083          	ld	ra,24(sp)
    80004798:	01013403          	ld	s0,16(sp)
    8000479c:	00813483          	ld	s1,8(sp)
    800047a0:	00013903          	ld	s2,0(sp)
    800047a4:	02010113          	addi	sp,sp,32
    800047a8:	00008067          	ret

00000000800047ac <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800047ac:	fe010113          	addi	sp,sp,-32
    800047b0:	00113c23          	sd	ra,24(sp)
    800047b4:	00813823          	sd	s0,16(sp)
    800047b8:	00913423          	sd	s1,8(sp)
    800047bc:	01213023          	sd	s2,0(sp)
    800047c0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800047c4:	00000913          	li	s2,0
    800047c8:	0380006f          	j	80004800 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800047cc:	ffffd097          	auipc	ra,0xffffd
    800047d0:	acc080e7          	jalr	-1332(ra) # 80001298 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800047d4:	00148493          	addi	s1,s1,1
    800047d8:	000027b7          	lui	a5,0x2
    800047dc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800047e0:	0097ee63          	bltu	a5,s1,800047fc <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800047e4:	00000713          	li	a4,0
    800047e8:	000077b7          	lui	a5,0x7
    800047ec:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800047f0:	fce7eee3          	bltu	a5,a4,800047cc <_ZL11workerBodyAPv+0x20>
    800047f4:	00170713          	addi	a4,a4,1
    800047f8:	ff1ff06f          	j	800047e8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800047fc:	00190913          	addi	s2,s2,1
    80004800:	00900793          	li	a5,9
    80004804:	0527e063          	bltu	a5,s2,80004844 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004808:	00005517          	auipc	a0,0x5
    8000480c:	ab850513          	addi	a0,a0,-1352 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80004810:	00001097          	auipc	ra,0x1
    80004814:	9f0080e7          	jalr	-1552(ra) # 80005200 <_Z11printStringPKc>
    80004818:	00000613          	li	a2,0
    8000481c:	00a00593          	li	a1,10
    80004820:	0009051b          	sext.w	a0,s2
    80004824:	00001097          	auipc	ra,0x1
    80004828:	b8c080e7          	jalr	-1140(ra) # 800053b0 <_Z8printIntiii>
    8000482c:	00005517          	auipc	a0,0x5
    80004830:	ce450513          	addi	a0,a0,-796 # 80009510 <CONSOLE_STATUS+0x500>
    80004834:	00001097          	auipc	ra,0x1
    80004838:	9cc080e7          	jalr	-1588(ra) # 80005200 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000483c:	00000493          	li	s1,0
    80004840:	f99ff06f          	j	800047d8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004844:	00005517          	auipc	a0,0x5
    80004848:	a8450513          	addi	a0,a0,-1404 # 800092c8 <CONSOLE_STATUS+0x2b8>
    8000484c:	00001097          	auipc	ra,0x1
    80004850:	9b4080e7          	jalr	-1612(ra) # 80005200 <_Z11printStringPKc>
    finishedA = true;
    80004854:	00100793          	li	a5,1
    80004858:	00007717          	auipc	a4,0x7
    8000485c:	12f70da3          	sb	a5,315(a4) # 8000b993 <_ZL9finishedA>
}
    80004860:	01813083          	ld	ra,24(sp)
    80004864:	01013403          	ld	s0,16(sp)
    80004868:	00813483          	ld	s1,8(sp)
    8000486c:	00013903          	ld	s2,0(sp)
    80004870:	02010113          	addi	sp,sp,32
    80004874:	00008067          	ret

0000000080004878 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004878:	fd010113          	addi	sp,sp,-48
    8000487c:	02113423          	sd	ra,40(sp)
    80004880:	02813023          	sd	s0,32(sp)
    80004884:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004888:	00000613          	li	a2,0
    8000488c:	00000597          	auipc	a1,0x0
    80004890:	f2058593          	addi	a1,a1,-224 # 800047ac <_ZL11workerBodyAPv>
    80004894:	fd040513          	addi	a0,s0,-48
    80004898:	ffffd097          	auipc	ra,0xffffd
    8000489c:	95c080e7          	jalr	-1700(ra) # 800011f4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800048a0:	00005517          	auipc	a0,0x5
    800048a4:	ab850513          	addi	a0,a0,-1352 # 80009358 <CONSOLE_STATUS+0x348>
    800048a8:	00001097          	auipc	ra,0x1
    800048ac:	958080e7          	jalr	-1704(ra) # 80005200 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800048b0:	00000613          	li	a2,0
    800048b4:	00000597          	auipc	a1,0x0
    800048b8:	e2458593          	addi	a1,a1,-476 # 800046d8 <_ZL11workerBodyBPv>
    800048bc:	fd840513          	addi	a0,s0,-40
    800048c0:	ffffd097          	auipc	ra,0xffffd
    800048c4:	934080e7          	jalr	-1740(ra) # 800011f4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800048c8:	00005517          	auipc	a0,0x5
    800048cc:	aa850513          	addi	a0,a0,-1368 # 80009370 <CONSOLE_STATUS+0x360>
    800048d0:	00001097          	auipc	ra,0x1
    800048d4:	930080e7          	jalr	-1744(ra) # 80005200 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800048d8:	00000613          	li	a2,0
    800048dc:	00000597          	auipc	a1,0x0
    800048e0:	c7c58593          	addi	a1,a1,-900 # 80004558 <_ZL11workerBodyCPv>
    800048e4:	fe040513          	addi	a0,s0,-32
    800048e8:	ffffd097          	auipc	ra,0xffffd
    800048ec:	90c080e7          	jalr	-1780(ra) # 800011f4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800048f0:	00005517          	auipc	a0,0x5
    800048f4:	a9850513          	addi	a0,a0,-1384 # 80009388 <CONSOLE_STATUS+0x378>
    800048f8:	00001097          	auipc	ra,0x1
    800048fc:	908080e7          	jalr	-1784(ra) # 80005200 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004900:	00000613          	li	a2,0
    80004904:	00000597          	auipc	a1,0x0
    80004908:	b0c58593          	addi	a1,a1,-1268 # 80004410 <_ZL11workerBodyDPv>
    8000490c:	fe840513          	addi	a0,s0,-24
    80004910:	ffffd097          	auipc	ra,0xffffd
    80004914:	8e4080e7          	jalr	-1820(ra) # 800011f4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004918:	00005517          	auipc	a0,0x5
    8000491c:	a8850513          	addi	a0,a0,-1400 # 800093a0 <CONSOLE_STATUS+0x390>
    80004920:	00001097          	auipc	ra,0x1
    80004924:	8e0080e7          	jalr	-1824(ra) # 80005200 <_Z11printStringPKc>
    80004928:	00c0006f          	j	80004934 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000492c:	ffffd097          	auipc	ra,0xffffd
    80004930:	96c080e7          	jalr	-1684(ra) # 80001298 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004934:	00007797          	auipc	a5,0x7
    80004938:	05f7c783          	lbu	a5,95(a5) # 8000b993 <_ZL9finishedA>
    8000493c:	fe0788e3          	beqz	a5,8000492c <_Z18Threads_C_API_testv+0xb4>
    80004940:	00007797          	auipc	a5,0x7
    80004944:	0527c783          	lbu	a5,82(a5) # 8000b992 <_ZL9finishedB>
    80004948:	fe0782e3          	beqz	a5,8000492c <_Z18Threads_C_API_testv+0xb4>
    8000494c:	00007797          	auipc	a5,0x7
    80004950:	0457c783          	lbu	a5,69(a5) # 8000b991 <_ZL9finishedC>
    80004954:	fc078ce3          	beqz	a5,8000492c <_Z18Threads_C_API_testv+0xb4>
    80004958:	00007797          	auipc	a5,0x7
    8000495c:	0387c783          	lbu	a5,56(a5) # 8000b990 <_ZL9finishedD>
    80004960:	fc0786e3          	beqz	a5,8000492c <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004964:	02813083          	ld	ra,40(sp)
    80004968:	02013403          	ld	s0,32(sp)
    8000496c:	03010113          	addi	sp,sp,48
    80004970:	00008067          	ret

0000000080004974 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004974:	fd010113          	addi	sp,sp,-48
    80004978:	02113423          	sd	ra,40(sp)
    8000497c:	02813023          	sd	s0,32(sp)
    80004980:	00913c23          	sd	s1,24(sp)
    80004984:	01213823          	sd	s2,16(sp)
    80004988:	01313423          	sd	s3,8(sp)
    8000498c:	03010413          	addi	s0,sp,48
    80004990:	00050993          	mv	s3,a0
    80004994:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004998:	00000913          	li	s2,0
    8000499c:	00c0006f          	j	800049a8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800049a0:	ffffd097          	auipc	ra,0xffffd
    800049a4:	404080e7          	jalr	1028(ra) # 80001da4 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800049a8:	ffffd097          	auipc	ra,0xffffd
    800049ac:	a20080e7          	jalr	-1504(ra) # 800013c8 <_Z4getcv>
    800049b0:	0005059b          	sext.w	a1,a0
    800049b4:	01b00793          	li	a5,27
    800049b8:	02f58a63          	beq	a1,a5,800049ec <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800049bc:	0084b503          	ld	a0,8(s1)
    800049c0:	00001097          	auipc	ra,0x1
    800049c4:	c64080e7          	jalr	-924(ra) # 80005624 <_ZN9BufferCPP3putEi>
        i++;
    800049c8:	0019071b          	addiw	a4,s2,1
    800049cc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800049d0:	0004a683          	lw	a3,0(s1)
    800049d4:	0026979b          	slliw	a5,a3,0x2
    800049d8:	00d787bb          	addw	a5,a5,a3
    800049dc:	0017979b          	slliw	a5,a5,0x1
    800049e0:	02f767bb          	remw	a5,a4,a5
    800049e4:	fc0792e3          	bnez	a5,800049a8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800049e8:	fb9ff06f          	j	800049a0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800049ec:	00100793          	li	a5,1
    800049f0:	00007717          	auipc	a4,0x7
    800049f4:	faf72423          	sw	a5,-88(a4) # 8000b998 <_ZL9threadEnd>
    td->buffer->put('!');
    800049f8:	0209b783          	ld	a5,32(s3)
    800049fc:	02100593          	li	a1,33
    80004a00:	0087b503          	ld	a0,8(a5)
    80004a04:	00001097          	auipc	ra,0x1
    80004a08:	c20080e7          	jalr	-992(ra) # 80005624 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004a0c:	0104b503          	ld	a0,16(s1)
    80004a10:	ffffd097          	auipc	ra,0xffffd
    80004a14:	50c080e7          	jalr	1292(ra) # 80001f1c <_ZN9Semaphore6signalEv>
}
    80004a18:	02813083          	ld	ra,40(sp)
    80004a1c:	02013403          	ld	s0,32(sp)
    80004a20:	01813483          	ld	s1,24(sp)
    80004a24:	01013903          	ld	s2,16(sp)
    80004a28:	00813983          	ld	s3,8(sp)
    80004a2c:	03010113          	addi	sp,sp,48
    80004a30:	00008067          	ret

0000000080004a34 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004a34:	fe010113          	addi	sp,sp,-32
    80004a38:	00113c23          	sd	ra,24(sp)
    80004a3c:	00813823          	sd	s0,16(sp)
    80004a40:	00913423          	sd	s1,8(sp)
    80004a44:	01213023          	sd	s2,0(sp)
    80004a48:	02010413          	addi	s0,sp,32
    80004a4c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004a50:	00000913          	li	s2,0
    80004a54:	00c0006f          	j	80004a60 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004a58:	ffffd097          	auipc	ra,0xffffd
    80004a5c:	34c080e7          	jalr	844(ra) # 80001da4 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004a60:	00007797          	auipc	a5,0x7
    80004a64:	f387a783          	lw	a5,-200(a5) # 8000b998 <_ZL9threadEnd>
    80004a68:	02079e63          	bnez	a5,80004aa4 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004a6c:	0004a583          	lw	a1,0(s1)
    80004a70:	0305859b          	addiw	a1,a1,48
    80004a74:	0084b503          	ld	a0,8(s1)
    80004a78:	00001097          	auipc	ra,0x1
    80004a7c:	bac080e7          	jalr	-1108(ra) # 80005624 <_ZN9BufferCPP3putEi>
        i++;
    80004a80:	0019071b          	addiw	a4,s2,1
    80004a84:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004a88:	0004a683          	lw	a3,0(s1)
    80004a8c:	0026979b          	slliw	a5,a3,0x2
    80004a90:	00d787bb          	addw	a5,a5,a3
    80004a94:	0017979b          	slliw	a5,a5,0x1
    80004a98:	02f767bb          	remw	a5,a4,a5
    80004a9c:	fc0792e3          	bnez	a5,80004a60 <_ZN12ProducerSync8producerEPv+0x2c>
    80004aa0:	fb9ff06f          	j	80004a58 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004aa4:	0104b503          	ld	a0,16(s1)
    80004aa8:	ffffd097          	auipc	ra,0xffffd
    80004aac:	474080e7          	jalr	1140(ra) # 80001f1c <_ZN9Semaphore6signalEv>
}
    80004ab0:	01813083          	ld	ra,24(sp)
    80004ab4:	01013403          	ld	s0,16(sp)
    80004ab8:	00813483          	ld	s1,8(sp)
    80004abc:	00013903          	ld	s2,0(sp)
    80004ac0:	02010113          	addi	sp,sp,32
    80004ac4:	00008067          	ret

0000000080004ac8 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004ac8:	fd010113          	addi	sp,sp,-48
    80004acc:	02113423          	sd	ra,40(sp)
    80004ad0:	02813023          	sd	s0,32(sp)
    80004ad4:	00913c23          	sd	s1,24(sp)
    80004ad8:	01213823          	sd	s2,16(sp)
    80004adc:	01313423          	sd	s3,8(sp)
    80004ae0:	01413023          	sd	s4,0(sp)
    80004ae4:	03010413          	addi	s0,sp,48
    80004ae8:	00050993          	mv	s3,a0
    80004aec:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004af0:	00000a13          	li	s4,0
    80004af4:	01c0006f          	j	80004b10 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004af8:	ffffd097          	auipc	ra,0xffffd
    80004afc:	2ac080e7          	jalr	684(ra) # 80001da4 <_ZN6Thread8dispatchEv>
    80004b00:	0500006f          	j	80004b50 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004b04:	00a00513          	li	a0,10
    80004b08:	ffffd097          	auipc	ra,0xffffd
    80004b0c:	89c080e7          	jalr	-1892(ra) # 800013a4 <_Z4putcc>
    while (!threadEnd) {
    80004b10:	00007797          	auipc	a5,0x7
    80004b14:	e887a783          	lw	a5,-376(a5) # 8000b998 <_ZL9threadEnd>
    80004b18:	06079263          	bnez	a5,80004b7c <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004b1c:	00893503          	ld	a0,8(s2)
    80004b20:	00001097          	auipc	ra,0x1
    80004b24:	b94080e7          	jalr	-1132(ra) # 800056b4 <_ZN9BufferCPP3getEv>
        i++;
    80004b28:	001a049b          	addiw	s1,s4,1
    80004b2c:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004b30:	0ff57513          	andi	a0,a0,255
    80004b34:	ffffd097          	auipc	ra,0xffffd
    80004b38:	870080e7          	jalr	-1936(ra) # 800013a4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004b3c:	00092703          	lw	a4,0(s2)
    80004b40:	0027179b          	slliw	a5,a4,0x2
    80004b44:	00e787bb          	addw	a5,a5,a4
    80004b48:	02f4e7bb          	remw	a5,s1,a5
    80004b4c:	fa0786e3          	beqz	a5,80004af8 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004b50:	05000793          	li	a5,80
    80004b54:	02f4e4bb          	remw	s1,s1,a5
    80004b58:	fa049ce3          	bnez	s1,80004b10 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004b5c:	fa9ff06f          	j	80004b04 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004b60:	0209b783          	ld	a5,32(s3)
    80004b64:	0087b503          	ld	a0,8(a5)
    80004b68:	00001097          	auipc	ra,0x1
    80004b6c:	b4c080e7          	jalr	-1204(ra) # 800056b4 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004b70:	0ff57513          	andi	a0,a0,255
    80004b74:	ffffd097          	auipc	ra,0xffffd
    80004b78:	4f4080e7          	jalr	1268(ra) # 80002068 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004b7c:	0209b783          	ld	a5,32(s3)
    80004b80:	0087b503          	ld	a0,8(a5)
    80004b84:	00001097          	auipc	ra,0x1
    80004b88:	bbc080e7          	jalr	-1092(ra) # 80005740 <_ZN9BufferCPP6getCntEv>
    80004b8c:	fca04ae3          	bgtz	a0,80004b60 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004b90:	01093503          	ld	a0,16(s2)
    80004b94:	ffffd097          	auipc	ra,0xffffd
    80004b98:	388080e7          	jalr	904(ra) # 80001f1c <_ZN9Semaphore6signalEv>
}
    80004b9c:	02813083          	ld	ra,40(sp)
    80004ba0:	02013403          	ld	s0,32(sp)
    80004ba4:	01813483          	ld	s1,24(sp)
    80004ba8:	01013903          	ld	s2,16(sp)
    80004bac:	00813983          	ld	s3,8(sp)
    80004bb0:	00013a03          	ld	s4,0(sp)
    80004bb4:	03010113          	addi	sp,sp,48
    80004bb8:	00008067          	ret

0000000080004bbc <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004bbc:	f8010113          	addi	sp,sp,-128
    80004bc0:	06113c23          	sd	ra,120(sp)
    80004bc4:	06813823          	sd	s0,112(sp)
    80004bc8:	06913423          	sd	s1,104(sp)
    80004bcc:	07213023          	sd	s2,96(sp)
    80004bd0:	05313c23          	sd	s3,88(sp)
    80004bd4:	05413823          	sd	s4,80(sp)
    80004bd8:	05513423          	sd	s5,72(sp)
    80004bdc:	05613023          	sd	s6,64(sp)
    80004be0:	03713c23          	sd	s7,56(sp)
    80004be4:	03813823          	sd	s8,48(sp)
    80004be8:	03913423          	sd	s9,40(sp)
    80004bec:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004bf0:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004bf4:	00004517          	auipc	a0,0x4
    80004bf8:	5e450513          	addi	a0,a0,1508 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80004bfc:	00000097          	auipc	ra,0x0
    80004c00:	604080e7          	jalr	1540(ra) # 80005200 <_Z11printStringPKc>
    getString(input, 30);
    80004c04:	01e00593          	li	a1,30
    80004c08:	f8040493          	addi	s1,s0,-128
    80004c0c:	00048513          	mv	a0,s1
    80004c10:	00000097          	auipc	ra,0x0
    80004c14:	678080e7          	jalr	1656(ra) # 80005288 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004c18:	00048513          	mv	a0,s1
    80004c1c:	00000097          	auipc	ra,0x0
    80004c20:	744080e7          	jalr	1860(ra) # 80005360 <_Z11stringToIntPKc>
    80004c24:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004c28:	00004517          	auipc	a0,0x4
    80004c2c:	5d050513          	addi	a0,a0,1488 # 800091f8 <CONSOLE_STATUS+0x1e8>
    80004c30:	00000097          	auipc	ra,0x0
    80004c34:	5d0080e7          	jalr	1488(ra) # 80005200 <_Z11printStringPKc>
    getString(input, 30);
    80004c38:	01e00593          	li	a1,30
    80004c3c:	00048513          	mv	a0,s1
    80004c40:	00000097          	auipc	ra,0x0
    80004c44:	648080e7          	jalr	1608(ra) # 80005288 <_Z9getStringPci>
    n = stringToInt(input);
    80004c48:	00048513          	mv	a0,s1
    80004c4c:	00000097          	auipc	ra,0x0
    80004c50:	714080e7          	jalr	1812(ra) # 80005360 <_Z11stringToIntPKc>
    80004c54:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004c58:	00004517          	auipc	a0,0x4
    80004c5c:	5c050513          	addi	a0,a0,1472 # 80009218 <CONSOLE_STATUS+0x208>
    80004c60:	00000097          	auipc	ra,0x0
    80004c64:	5a0080e7          	jalr	1440(ra) # 80005200 <_Z11printStringPKc>
    80004c68:	00000613          	li	a2,0
    80004c6c:	00a00593          	li	a1,10
    80004c70:	00090513          	mv	a0,s2
    80004c74:	00000097          	auipc	ra,0x0
    80004c78:	73c080e7          	jalr	1852(ra) # 800053b0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004c7c:	00004517          	auipc	a0,0x4
    80004c80:	5b450513          	addi	a0,a0,1460 # 80009230 <CONSOLE_STATUS+0x220>
    80004c84:	00000097          	auipc	ra,0x0
    80004c88:	57c080e7          	jalr	1404(ra) # 80005200 <_Z11printStringPKc>
    80004c8c:	00000613          	li	a2,0
    80004c90:	00a00593          	li	a1,10
    80004c94:	00048513          	mv	a0,s1
    80004c98:	00000097          	auipc	ra,0x0
    80004c9c:	718080e7          	jalr	1816(ra) # 800053b0 <_Z8printIntiii>
    printString(".\n");
    80004ca0:	00004517          	auipc	a0,0x4
    80004ca4:	5a850513          	addi	a0,a0,1448 # 80009248 <CONSOLE_STATUS+0x238>
    80004ca8:	00000097          	auipc	ra,0x0
    80004cac:	558080e7          	jalr	1368(ra) # 80005200 <_Z11printStringPKc>
    if(threadNum > n) {
    80004cb0:	0324c463          	blt	s1,s2,80004cd8 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004cb4:	03205c63          	blez	s2,80004cec <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004cb8:	03800513          	li	a0,56
    80004cbc:	ffffd097          	auipc	ra,0xffffd
    80004cc0:	97c080e7          	jalr	-1668(ra) # 80001638 <_Znwm>
    80004cc4:	00050a93          	mv	s5,a0
    80004cc8:	00048593          	mv	a1,s1
    80004ccc:	00001097          	auipc	ra,0x1
    80004cd0:	804080e7          	jalr	-2044(ra) # 800054d0 <_ZN9BufferCPPC1Ei>
    80004cd4:	0300006f          	j	80004d04 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004cd8:	00004517          	auipc	a0,0x4
    80004cdc:	57850513          	addi	a0,a0,1400 # 80009250 <CONSOLE_STATUS+0x240>
    80004ce0:	00000097          	auipc	ra,0x0
    80004ce4:	520080e7          	jalr	1312(ra) # 80005200 <_Z11printStringPKc>
        return;
    80004ce8:	0140006f          	j	80004cfc <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004cec:	00004517          	auipc	a0,0x4
    80004cf0:	5a450513          	addi	a0,a0,1444 # 80009290 <CONSOLE_STATUS+0x280>
    80004cf4:	00000097          	auipc	ra,0x0
    80004cf8:	50c080e7          	jalr	1292(ra) # 80005200 <_Z11printStringPKc>
        return;
    80004cfc:	000b8113          	mv	sp,s7
    80004d00:	2380006f          	j	80004f38 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004d04:	01000513          	li	a0,16
    80004d08:	ffffd097          	auipc	ra,0xffffd
    80004d0c:	930080e7          	jalr	-1744(ra) # 80001638 <_Znwm>
    80004d10:	00050493          	mv	s1,a0
    80004d14:	00000593          	li	a1,0
    80004d18:	ffffd097          	auipc	ra,0xffffd
    80004d1c:	1a0080e7          	jalr	416(ra) # 80001eb8 <_ZN9SemaphoreC1Ej>
    80004d20:	00007797          	auipc	a5,0x7
    80004d24:	c897b023          	sd	s1,-896(a5) # 8000b9a0 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004d28:	00391793          	slli	a5,s2,0x3
    80004d2c:	00f78793          	addi	a5,a5,15
    80004d30:	ff07f793          	andi	a5,a5,-16
    80004d34:	40f10133          	sub	sp,sp,a5
    80004d38:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004d3c:	0019071b          	addiw	a4,s2,1
    80004d40:	00171793          	slli	a5,a4,0x1
    80004d44:	00e787b3          	add	a5,a5,a4
    80004d48:	00379793          	slli	a5,a5,0x3
    80004d4c:	00f78793          	addi	a5,a5,15
    80004d50:	ff07f793          	andi	a5,a5,-16
    80004d54:	40f10133          	sub	sp,sp,a5
    80004d58:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004d5c:	00191c13          	slli	s8,s2,0x1
    80004d60:	012c07b3          	add	a5,s8,s2
    80004d64:	00379793          	slli	a5,a5,0x3
    80004d68:	00fa07b3          	add	a5,s4,a5
    80004d6c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004d70:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004d74:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004d78:	02800513          	li	a0,40
    80004d7c:	ffffd097          	auipc	ra,0xffffd
    80004d80:	8bc080e7          	jalr	-1860(ra) # 80001638 <_Znwm>
    80004d84:	00050b13          	mv	s6,a0
    80004d88:	012c0c33          	add	s8,s8,s2
    80004d8c:	003c1c13          	slli	s8,s8,0x3
    80004d90:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004d94:	ffffd097          	auipc	ra,0xffffd
    80004d98:	fb0080e7          	jalr	-80(ra) # 80001d44 <_ZN6ThreadC1Ev>
    80004d9c:	00007797          	auipc	a5,0x7
    80004da0:	aa478793          	addi	a5,a5,-1372 # 8000b840 <_ZTV12ConsumerSync+0x10>
    80004da4:	00fb3023          	sd	a5,0(s6)
    80004da8:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004dac:	000b0513          	mv	a0,s6
    80004db0:	ffffd097          	auipc	ra,0xffffd
    80004db4:	01c080e7          	jalr	28(ra) # 80001dcc <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004db8:	00000493          	li	s1,0
    80004dbc:	0380006f          	j	80004df4 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004dc0:	00007797          	auipc	a5,0x7
    80004dc4:	a5878793          	addi	a5,a5,-1448 # 8000b818 <_ZTV12ProducerSync+0x10>
    80004dc8:	00fcb023          	sd	a5,0(s9)
    80004dcc:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004dd0:	00349793          	slli	a5,s1,0x3
    80004dd4:	00f987b3          	add	a5,s3,a5
    80004dd8:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004ddc:	00349793          	slli	a5,s1,0x3
    80004de0:	00f987b3          	add	a5,s3,a5
    80004de4:	0007b503          	ld	a0,0(a5)
    80004de8:	ffffd097          	auipc	ra,0xffffd
    80004dec:	fe4080e7          	jalr	-28(ra) # 80001dcc <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004df0:	0014849b          	addiw	s1,s1,1
    80004df4:	0b24d063          	bge	s1,s2,80004e94 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004df8:	00149793          	slli	a5,s1,0x1
    80004dfc:	009787b3          	add	a5,a5,s1
    80004e00:	00379793          	slli	a5,a5,0x3
    80004e04:	00fa07b3          	add	a5,s4,a5
    80004e08:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004e0c:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004e10:	00007717          	auipc	a4,0x7
    80004e14:	b9073703          	ld	a4,-1136(a4) # 8000b9a0 <_ZL10waitForAll>
    80004e18:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004e1c:	02905863          	blez	s1,80004e4c <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004e20:	02800513          	li	a0,40
    80004e24:	ffffd097          	auipc	ra,0xffffd
    80004e28:	814080e7          	jalr	-2028(ra) # 80001638 <_Znwm>
    80004e2c:	00050c93          	mv	s9,a0
    80004e30:	00149c13          	slli	s8,s1,0x1
    80004e34:	009c0c33          	add	s8,s8,s1
    80004e38:	003c1c13          	slli	s8,s8,0x3
    80004e3c:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004e40:	ffffd097          	auipc	ra,0xffffd
    80004e44:	f04080e7          	jalr	-252(ra) # 80001d44 <_ZN6ThreadC1Ev>
    80004e48:	f79ff06f          	j	80004dc0 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004e4c:	02800513          	li	a0,40
    80004e50:	ffffc097          	auipc	ra,0xffffc
    80004e54:	7e8080e7          	jalr	2024(ra) # 80001638 <_Znwm>
    80004e58:	00050c93          	mv	s9,a0
    80004e5c:	00149c13          	slli	s8,s1,0x1
    80004e60:	009c0c33          	add	s8,s8,s1
    80004e64:	003c1c13          	slli	s8,s8,0x3
    80004e68:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004e6c:	ffffd097          	auipc	ra,0xffffd
    80004e70:	ed8080e7          	jalr	-296(ra) # 80001d44 <_ZN6ThreadC1Ev>
    80004e74:	00007797          	auipc	a5,0x7
    80004e78:	97c78793          	addi	a5,a5,-1668 # 8000b7f0 <_ZTV16ProducerKeyboard+0x10>
    80004e7c:	00fcb023          	sd	a5,0(s9)
    80004e80:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004e84:	00349793          	slli	a5,s1,0x3
    80004e88:	00f987b3          	add	a5,s3,a5
    80004e8c:	0197b023          	sd	s9,0(a5)
    80004e90:	f4dff06f          	j	80004ddc <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004e94:	ffffd097          	auipc	ra,0xffffd
    80004e98:	f10080e7          	jalr	-240(ra) # 80001da4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004e9c:	00000493          	li	s1,0
    80004ea0:	00994e63          	blt	s2,s1,80004ebc <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004ea4:	00007517          	auipc	a0,0x7
    80004ea8:	afc53503          	ld	a0,-1284(a0) # 8000b9a0 <_ZL10waitForAll>
    80004eac:	ffffd097          	auipc	ra,0xffffd
    80004eb0:	044080e7          	jalr	68(ra) # 80001ef0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004eb4:	0014849b          	addiw	s1,s1,1
    80004eb8:	fe9ff06f          	j	80004ea0 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004ebc:	00000493          	li	s1,0
    80004ec0:	0080006f          	j	80004ec8 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004ec4:	0014849b          	addiw	s1,s1,1
    80004ec8:	0324d263          	bge	s1,s2,80004eec <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004ecc:	00349793          	slli	a5,s1,0x3
    80004ed0:	00f987b3          	add	a5,s3,a5
    80004ed4:	0007b503          	ld	a0,0(a5)
    80004ed8:	fe0506e3          	beqz	a0,80004ec4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004edc:	00053783          	ld	a5,0(a0)
    80004ee0:	0087b783          	ld	a5,8(a5)
    80004ee4:	000780e7          	jalr	a5
    80004ee8:	fddff06f          	j	80004ec4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004eec:	000b0a63          	beqz	s6,80004f00 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004ef0:	000b3783          	ld	a5,0(s6)
    80004ef4:	0087b783          	ld	a5,8(a5)
    80004ef8:	000b0513          	mv	a0,s6
    80004efc:	000780e7          	jalr	a5
    delete waitForAll;
    80004f00:	00007517          	auipc	a0,0x7
    80004f04:	aa053503          	ld	a0,-1376(a0) # 8000b9a0 <_ZL10waitForAll>
    80004f08:	00050863          	beqz	a0,80004f18 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004f0c:	00053783          	ld	a5,0(a0)
    80004f10:	0087b783          	ld	a5,8(a5)
    80004f14:	000780e7          	jalr	a5
    delete buffer;
    80004f18:	000a8e63          	beqz	s5,80004f34 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004f1c:	000a8513          	mv	a0,s5
    80004f20:	00001097          	auipc	ra,0x1
    80004f24:	8a8080e7          	jalr	-1880(ra) # 800057c8 <_ZN9BufferCPPD1Ev>
    80004f28:	000a8513          	mv	a0,s5
    80004f2c:	ffffc097          	auipc	ra,0xffffc
    80004f30:	734080e7          	jalr	1844(ra) # 80001660 <_ZdlPv>
    80004f34:	000b8113          	mv	sp,s7

}
    80004f38:	f8040113          	addi	sp,s0,-128
    80004f3c:	07813083          	ld	ra,120(sp)
    80004f40:	07013403          	ld	s0,112(sp)
    80004f44:	06813483          	ld	s1,104(sp)
    80004f48:	06013903          	ld	s2,96(sp)
    80004f4c:	05813983          	ld	s3,88(sp)
    80004f50:	05013a03          	ld	s4,80(sp)
    80004f54:	04813a83          	ld	s5,72(sp)
    80004f58:	04013b03          	ld	s6,64(sp)
    80004f5c:	03813b83          	ld	s7,56(sp)
    80004f60:	03013c03          	ld	s8,48(sp)
    80004f64:	02813c83          	ld	s9,40(sp)
    80004f68:	08010113          	addi	sp,sp,128
    80004f6c:	00008067          	ret
    80004f70:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004f74:	000a8513          	mv	a0,s5
    80004f78:	ffffc097          	auipc	ra,0xffffc
    80004f7c:	6e8080e7          	jalr	1768(ra) # 80001660 <_ZdlPv>
    80004f80:	00048513          	mv	a0,s1
    80004f84:	00008097          	auipc	ra,0x8
    80004f88:	b04080e7          	jalr	-1276(ra) # 8000ca88 <_Unwind_Resume>
    80004f8c:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004f90:	00048513          	mv	a0,s1
    80004f94:	ffffc097          	auipc	ra,0xffffc
    80004f98:	6cc080e7          	jalr	1740(ra) # 80001660 <_ZdlPv>
    80004f9c:	00090513          	mv	a0,s2
    80004fa0:	00008097          	auipc	ra,0x8
    80004fa4:	ae8080e7          	jalr	-1304(ra) # 8000ca88 <_Unwind_Resume>
    80004fa8:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004fac:	000b0513          	mv	a0,s6
    80004fb0:	ffffc097          	auipc	ra,0xffffc
    80004fb4:	6b0080e7          	jalr	1712(ra) # 80001660 <_ZdlPv>
    80004fb8:	00048513          	mv	a0,s1
    80004fbc:	00008097          	auipc	ra,0x8
    80004fc0:	acc080e7          	jalr	-1332(ra) # 8000ca88 <_Unwind_Resume>
    80004fc4:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004fc8:	000c8513          	mv	a0,s9
    80004fcc:	ffffc097          	auipc	ra,0xffffc
    80004fd0:	694080e7          	jalr	1684(ra) # 80001660 <_ZdlPv>
    80004fd4:	00048513          	mv	a0,s1
    80004fd8:	00008097          	auipc	ra,0x8
    80004fdc:	ab0080e7          	jalr	-1360(ra) # 8000ca88 <_Unwind_Resume>
    80004fe0:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004fe4:	000c8513          	mv	a0,s9
    80004fe8:	ffffc097          	auipc	ra,0xffffc
    80004fec:	678080e7          	jalr	1656(ra) # 80001660 <_ZdlPv>
    80004ff0:	00048513          	mv	a0,s1
    80004ff4:	00008097          	auipc	ra,0x8
    80004ff8:	a94080e7          	jalr	-1388(ra) # 8000ca88 <_Unwind_Resume>

0000000080004ffc <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004ffc:	ff010113          	addi	sp,sp,-16
    80005000:	00113423          	sd	ra,8(sp)
    80005004:	00813023          	sd	s0,0(sp)
    80005008:	01010413          	addi	s0,sp,16
    8000500c:	00007797          	auipc	a5,0x7
    80005010:	83478793          	addi	a5,a5,-1996 # 8000b840 <_ZTV12ConsumerSync+0x10>
    80005014:	00f53023          	sd	a5,0(a0)
    80005018:	ffffd097          	auipc	ra,0xffffd
    8000501c:	c50080e7          	jalr	-944(ra) # 80001c68 <_ZN6ThreadD1Ev>
    80005020:	00813083          	ld	ra,8(sp)
    80005024:	00013403          	ld	s0,0(sp)
    80005028:	01010113          	addi	sp,sp,16
    8000502c:	00008067          	ret

0000000080005030 <_ZN12ConsumerSyncD0Ev>:
    80005030:	fe010113          	addi	sp,sp,-32
    80005034:	00113c23          	sd	ra,24(sp)
    80005038:	00813823          	sd	s0,16(sp)
    8000503c:	00913423          	sd	s1,8(sp)
    80005040:	02010413          	addi	s0,sp,32
    80005044:	00050493          	mv	s1,a0
    80005048:	00006797          	auipc	a5,0x6
    8000504c:	7f878793          	addi	a5,a5,2040 # 8000b840 <_ZTV12ConsumerSync+0x10>
    80005050:	00f53023          	sd	a5,0(a0)
    80005054:	ffffd097          	auipc	ra,0xffffd
    80005058:	c14080e7          	jalr	-1004(ra) # 80001c68 <_ZN6ThreadD1Ev>
    8000505c:	00048513          	mv	a0,s1
    80005060:	ffffc097          	auipc	ra,0xffffc
    80005064:	600080e7          	jalr	1536(ra) # 80001660 <_ZdlPv>
    80005068:	01813083          	ld	ra,24(sp)
    8000506c:	01013403          	ld	s0,16(sp)
    80005070:	00813483          	ld	s1,8(sp)
    80005074:	02010113          	addi	sp,sp,32
    80005078:	00008067          	ret

000000008000507c <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    8000507c:	ff010113          	addi	sp,sp,-16
    80005080:	00113423          	sd	ra,8(sp)
    80005084:	00813023          	sd	s0,0(sp)
    80005088:	01010413          	addi	s0,sp,16
    8000508c:	00006797          	auipc	a5,0x6
    80005090:	78c78793          	addi	a5,a5,1932 # 8000b818 <_ZTV12ProducerSync+0x10>
    80005094:	00f53023          	sd	a5,0(a0)
    80005098:	ffffd097          	auipc	ra,0xffffd
    8000509c:	bd0080e7          	jalr	-1072(ra) # 80001c68 <_ZN6ThreadD1Ev>
    800050a0:	00813083          	ld	ra,8(sp)
    800050a4:	00013403          	ld	s0,0(sp)
    800050a8:	01010113          	addi	sp,sp,16
    800050ac:	00008067          	ret

00000000800050b0 <_ZN12ProducerSyncD0Ev>:
    800050b0:	fe010113          	addi	sp,sp,-32
    800050b4:	00113c23          	sd	ra,24(sp)
    800050b8:	00813823          	sd	s0,16(sp)
    800050bc:	00913423          	sd	s1,8(sp)
    800050c0:	02010413          	addi	s0,sp,32
    800050c4:	00050493          	mv	s1,a0
    800050c8:	00006797          	auipc	a5,0x6
    800050cc:	75078793          	addi	a5,a5,1872 # 8000b818 <_ZTV12ProducerSync+0x10>
    800050d0:	00f53023          	sd	a5,0(a0)
    800050d4:	ffffd097          	auipc	ra,0xffffd
    800050d8:	b94080e7          	jalr	-1132(ra) # 80001c68 <_ZN6ThreadD1Ev>
    800050dc:	00048513          	mv	a0,s1
    800050e0:	ffffc097          	auipc	ra,0xffffc
    800050e4:	580080e7          	jalr	1408(ra) # 80001660 <_ZdlPv>
    800050e8:	01813083          	ld	ra,24(sp)
    800050ec:	01013403          	ld	s0,16(sp)
    800050f0:	00813483          	ld	s1,8(sp)
    800050f4:	02010113          	addi	sp,sp,32
    800050f8:	00008067          	ret

00000000800050fc <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800050fc:	ff010113          	addi	sp,sp,-16
    80005100:	00113423          	sd	ra,8(sp)
    80005104:	00813023          	sd	s0,0(sp)
    80005108:	01010413          	addi	s0,sp,16
    8000510c:	00006797          	auipc	a5,0x6
    80005110:	6e478793          	addi	a5,a5,1764 # 8000b7f0 <_ZTV16ProducerKeyboard+0x10>
    80005114:	00f53023          	sd	a5,0(a0)
    80005118:	ffffd097          	auipc	ra,0xffffd
    8000511c:	b50080e7          	jalr	-1200(ra) # 80001c68 <_ZN6ThreadD1Ev>
    80005120:	00813083          	ld	ra,8(sp)
    80005124:	00013403          	ld	s0,0(sp)
    80005128:	01010113          	addi	sp,sp,16
    8000512c:	00008067          	ret

0000000080005130 <_ZN16ProducerKeyboardD0Ev>:
    80005130:	fe010113          	addi	sp,sp,-32
    80005134:	00113c23          	sd	ra,24(sp)
    80005138:	00813823          	sd	s0,16(sp)
    8000513c:	00913423          	sd	s1,8(sp)
    80005140:	02010413          	addi	s0,sp,32
    80005144:	00050493          	mv	s1,a0
    80005148:	00006797          	auipc	a5,0x6
    8000514c:	6a878793          	addi	a5,a5,1704 # 8000b7f0 <_ZTV16ProducerKeyboard+0x10>
    80005150:	00f53023          	sd	a5,0(a0)
    80005154:	ffffd097          	auipc	ra,0xffffd
    80005158:	b14080e7          	jalr	-1260(ra) # 80001c68 <_ZN6ThreadD1Ev>
    8000515c:	00048513          	mv	a0,s1
    80005160:	ffffc097          	auipc	ra,0xffffc
    80005164:	500080e7          	jalr	1280(ra) # 80001660 <_ZdlPv>
    80005168:	01813083          	ld	ra,24(sp)
    8000516c:	01013403          	ld	s0,16(sp)
    80005170:	00813483          	ld	s1,8(sp)
    80005174:	02010113          	addi	sp,sp,32
    80005178:	00008067          	ret

000000008000517c <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    8000517c:	ff010113          	addi	sp,sp,-16
    80005180:	00113423          	sd	ra,8(sp)
    80005184:	00813023          	sd	s0,0(sp)
    80005188:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    8000518c:	02053583          	ld	a1,32(a0)
    80005190:	fffff097          	auipc	ra,0xfffff
    80005194:	7e4080e7          	jalr	2020(ra) # 80004974 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005198:	00813083          	ld	ra,8(sp)
    8000519c:	00013403          	ld	s0,0(sp)
    800051a0:	01010113          	addi	sp,sp,16
    800051a4:	00008067          	ret

00000000800051a8 <_ZN12ProducerSync3runEv>:
    void run() override {
    800051a8:	ff010113          	addi	sp,sp,-16
    800051ac:	00113423          	sd	ra,8(sp)
    800051b0:	00813023          	sd	s0,0(sp)
    800051b4:	01010413          	addi	s0,sp,16
        producer(td);
    800051b8:	02053583          	ld	a1,32(a0)
    800051bc:	00000097          	auipc	ra,0x0
    800051c0:	878080e7          	jalr	-1928(ra) # 80004a34 <_ZN12ProducerSync8producerEPv>
    }
    800051c4:	00813083          	ld	ra,8(sp)
    800051c8:	00013403          	ld	s0,0(sp)
    800051cc:	01010113          	addi	sp,sp,16
    800051d0:	00008067          	ret

00000000800051d4 <_ZN12ConsumerSync3runEv>:
    void run() override {
    800051d4:	ff010113          	addi	sp,sp,-16
    800051d8:	00113423          	sd	ra,8(sp)
    800051dc:	00813023          	sd	s0,0(sp)
    800051e0:	01010413          	addi	s0,sp,16
        consumer(td);
    800051e4:	02053583          	ld	a1,32(a0)
    800051e8:	00000097          	auipc	ra,0x0
    800051ec:	8e0080e7          	jalr	-1824(ra) # 80004ac8 <_ZN12ConsumerSync8consumerEPv>
    }
    800051f0:	00813083          	ld	ra,8(sp)
    800051f4:	00013403          	ld	s0,0(sp)
    800051f8:	01010113          	addi	sp,sp,16
    800051fc:	00008067          	ret

0000000080005200 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005200:	fe010113          	addi	sp,sp,-32
    80005204:	00113c23          	sd	ra,24(sp)
    80005208:	00813823          	sd	s0,16(sp)
    8000520c:	00913423          	sd	s1,8(sp)
    80005210:	02010413          	addi	s0,sp,32
    80005214:	00050493          	mv	s1,a0
    LOCK();
    80005218:	00100613          	li	a2,1
    8000521c:	00000593          	li	a1,0
    80005220:	00006517          	auipc	a0,0x6
    80005224:	78850513          	addi	a0,a0,1928 # 8000b9a8 <lockPrint>
    80005228:	ffffc097          	auipc	ra,0xffffc
    8000522c:	efc080e7          	jalr	-260(ra) # 80001124 <copy_and_swap>
    80005230:	00050863          	beqz	a0,80005240 <_Z11printStringPKc+0x40>
    80005234:	ffffc097          	auipc	ra,0xffffc
    80005238:	064080e7          	jalr	100(ra) # 80001298 <_Z15thread_dispatchv>
    8000523c:	fddff06f          	j	80005218 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005240:	0004c503          	lbu	a0,0(s1)
    80005244:	00050a63          	beqz	a0,80005258 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005248:	ffffc097          	auipc	ra,0xffffc
    8000524c:	15c080e7          	jalr	348(ra) # 800013a4 <_Z4putcc>
        string++;
    80005250:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005254:	fedff06f          	j	80005240 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005258:	00000613          	li	a2,0
    8000525c:	00100593          	li	a1,1
    80005260:	00006517          	auipc	a0,0x6
    80005264:	74850513          	addi	a0,a0,1864 # 8000b9a8 <lockPrint>
    80005268:	ffffc097          	auipc	ra,0xffffc
    8000526c:	ebc080e7          	jalr	-324(ra) # 80001124 <copy_and_swap>
    80005270:	fe0514e3          	bnez	a0,80005258 <_Z11printStringPKc+0x58>
}
    80005274:	01813083          	ld	ra,24(sp)
    80005278:	01013403          	ld	s0,16(sp)
    8000527c:	00813483          	ld	s1,8(sp)
    80005280:	02010113          	addi	sp,sp,32
    80005284:	00008067          	ret

0000000080005288 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005288:	fd010113          	addi	sp,sp,-48
    8000528c:	02113423          	sd	ra,40(sp)
    80005290:	02813023          	sd	s0,32(sp)
    80005294:	00913c23          	sd	s1,24(sp)
    80005298:	01213823          	sd	s2,16(sp)
    8000529c:	01313423          	sd	s3,8(sp)
    800052a0:	01413023          	sd	s4,0(sp)
    800052a4:	03010413          	addi	s0,sp,48
    800052a8:	00050993          	mv	s3,a0
    800052ac:	00058a13          	mv	s4,a1
    LOCK();
    800052b0:	00100613          	li	a2,1
    800052b4:	00000593          	li	a1,0
    800052b8:	00006517          	auipc	a0,0x6
    800052bc:	6f050513          	addi	a0,a0,1776 # 8000b9a8 <lockPrint>
    800052c0:	ffffc097          	auipc	ra,0xffffc
    800052c4:	e64080e7          	jalr	-412(ra) # 80001124 <copy_and_swap>
    800052c8:	00050863          	beqz	a0,800052d8 <_Z9getStringPci+0x50>
    800052cc:	ffffc097          	auipc	ra,0xffffc
    800052d0:	fcc080e7          	jalr	-52(ra) # 80001298 <_Z15thread_dispatchv>
    800052d4:	fddff06f          	j	800052b0 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800052d8:	00000913          	li	s2,0
    800052dc:	00090493          	mv	s1,s2
    800052e0:	0019091b          	addiw	s2,s2,1
    800052e4:	03495a63          	bge	s2,s4,80005318 <_Z9getStringPci+0x90>
        cc = getc();
    800052e8:	ffffc097          	auipc	ra,0xffffc
    800052ec:	0e0080e7          	jalr	224(ra) # 800013c8 <_Z4getcv>
        if(cc < 1)
    800052f0:	02050463          	beqz	a0,80005318 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800052f4:	009984b3          	add	s1,s3,s1
    800052f8:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800052fc:	00a00793          	li	a5,10
    80005300:	00f50a63          	beq	a0,a5,80005314 <_Z9getStringPci+0x8c>
    80005304:	00d00793          	li	a5,13
    80005308:	fcf51ae3          	bne	a0,a5,800052dc <_Z9getStringPci+0x54>
        buf[i++] = c;
    8000530c:	00090493          	mv	s1,s2
    80005310:	0080006f          	j	80005318 <_Z9getStringPci+0x90>
    80005314:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005318:	009984b3          	add	s1,s3,s1
    8000531c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005320:	00000613          	li	a2,0
    80005324:	00100593          	li	a1,1
    80005328:	00006517          	auipc	a0,0x6
    8000532c:	68050513          	addi	a0,a0,1664 # 8000b9a8 <lockPrint>
    80005330:	ffffc097          	auipc	ra,0xffffc
    80005334:	df4080e7          	jalr	-524(ra) # 80001124 <copy_and_swap>
    80005338:	fe0514e3          	bnez	a0,80005320 <_Z9getStringPci+0x98>
    return buf;
}
    8000533c:	00098513          	mv	a0,s3
    80005340:	02813083          	ld	ra,40(sp)
    80005344:	02013403          	ld	s0,32(sp)
    80005348:	01813483          	ld	s1,24(sp)
    8000534c:	01013903          	ld	s2,16(sp)
    80005350:	00813983          	ld	s3,8(sp)
    80005354:	00013a03          	ld	s4,0(sp)
    80005358:	03010113          	addi	sp,sp,48
    8000535c:	00008067          	ret

0000000080005360 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005360:	ff010113          	addi	sp,sp,-16
    80005364:	00813423          	sd	s0,8(sp)
    80005368:	01010413          	addi	s0,sp,16
    8000536c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005370:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005374:	0006c603          	lbu	a2,0(a3)
    80005378:	fd06071b          	addiw	a4,a2,-48
    8000537c:	0ff77713          	andi	a4,a4,255
    80005380:	00900793          	li	a5,9
    80005384:	02e7e063          	bltu	a5,a4,800053a4 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005388:	0025179b          	slliw	a5,a0,0x2
    8000538c:	00a787bb          	addw	a5,a5,a0
    80005390:	0017979b          	slliw	a5,a5,0x1
    80005394:	00168693          	addi	a3,a3,1
    80005398:	00c787bb          	addw	a5,a5,a2
    8000539c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800053a0:	fd5ff06f          	j	80005374 <_Z11stringToIntPKc+0x14>
    return n;
}
    800053a4:	00813403          	ld	s0,8(sp)
    800053a8:	01010113          	addi	sp,sp,16
    800053ac:	00008067          	ret

00000000800053b0 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800053b0:	fc010113          	addi	sp,sp,-64
    800053b4:	02113c23          	sd	ra,56(sp)
    800053b8:	02813823          	sd	s0,48(sp)
    800053bc:	02913423          	sd	s1,40(sp)
    800053c0:	03213023          	sd	s2,32(sp)
    800053c4:	01313c23          	sd	s3,24(sp)
    800053c8:	04010413          	addi	s0,sp,64
    800053cc:	00050493          	mv	s1,a0
    800053d0:	00058913          	mv	s2,a1
    800053d4:	00060993          	mv	s3,a2
    LOCK();
    800053d8:	00100613          	li	a2,1
    800053dc:	00000593          	li	a1,0
    800053e0:	00006517          	auipc	a0,0x6
    800053e4:	5c850513          	addi	a0,a0,1480 # 8000b9a8 <lockPrint>
    800053e8:	ffffc097          	auipc	ra,0xffffc
    800053ec:	d3c080e7          	jalr	-708(ra) # 80001124 <copy_and_swap>
    800053f0:	00050863          	beqz	a0,80005400 <_Z8printIntiii+0x50>
    800053f4:	ffffc097          	auipc	ra,0xffffc
    800053f8:	ea4080e7          	jalr	-348(ra) # 80001298 <_Z15thread_dispatchv>
    800053fc:	fddff06f          	j	800053d8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005400:	00098463          	beqz	s3,80005408 <_Z8printIntiii+0x58>
    80005404:	0804c463          	bltz	s1,8000548c <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005408:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000540c:	00000593          	li	a1,0
    }

    i = 0;
    80005410:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005414:	0009079b          	sext.w	a5,s2
    80005418:	0325773b          	remuw	a4,a0,s2
    8000541c:	00048613          	mv	a2,s1
    80005420:	0014849b          	addiw	s1,s1,1
    80005424:	02071693          	slli	a3,a4,0x20
    80005428:	0206d693          	srli	a3,a3,0x20
    8000542c:	00006717          	auipc	a4,0x6
    80005430:	42c70713          	addi	a4,a4,1068 # 8000b858 <digits>
    80005434:	00d70733          	add	a4,a4,a3
    80005438:	00074683          	lbu	a3,0(a4)
    8000543c:	fd040713          	addi	a4,s0,-48
    80005440:	00c70733          	add	a4,a4,a2
    80005444:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005448:	0005071b          	sext.w	a4,a0
    8000544c:	0325553b          	divuw	a0,a0,s2
    80005450:	fcf772e3          	bgeu	a4,a5,80005414 <_Z8printIntiii+0x64>
    if(neg)
    80005454:	00058c63          	beqz	a1,8000546c <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005458:	fd040793          	addi	a5,s0,-48
    8000545c:	009784b3          	add	s1,a5,s1
    80005460:	02d00793          	li	a5,45
    80005464:	fef48823          	sb	a5,-16(s1)
    80005468:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000546c:	fff4849b          	addiw	s1,s1,-1
    80005470:	0204c463          	bltz	s1,80005498 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005474:	fd040793          	addi	a5,s0,-48
    80005478:	009787b3          	add	a5,a5,s1
    8000547c:	ff07c503          	lbu	a0,-16(a5)
    80005480:	ffffc097          	auipc	ra,0xffffc
    80005484:	f24080e7          	jalr	-220(ra) # 800013a4 <_Z4putcc>
    80005488:	fe5ff06f          	j	8000546c <_Z8printIntiii+0xbc>
        x = -xx;
    8000548c:	4090053b          	negw	a0,s1
        neg = 1;
    80005490:	00100593          	li	a1,1
        x = -xx;
    80005494:	f7dff06f          	j	80005410 <_Z8printIntiii+0x60>

    UNLOCK();
    80005498:	00000613          	li	a2,0
    8000549c:	00100593          	li	a1,1
    800054a0:	00006517          	auipc	a0,0x6
    800054a4:	50850513          	addi	a0,a0,1288 # 8000b9a8 <lockPrint>
    800054a8:	ffffc097          	auipc	ra,0xffffc
    800054ac:	c7c080e7          	jalr	-900(ra) # 80001124 <copy_and_swap>
    800054b0:	fe0514e3          	bnez	a0,80005498 <_Z8printIntiii+0xe8>
    800054b4:	03813083          	ld	ra,56(sp)
    800054b8:	03013403          	ld	s0,48(sp)
    800054bc:	02813483          	ld	s1,40(sp)
    800054c0:	02013903          	ld	s2,32(sp)
    800054c4:	01813983          	ld	s3,24(sp)
    800054c8:	04010113          	addi	sp,sp,64
    800054cc:	00008067          	ret

00000000800054d0 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800054d0:	fd010113          	addi	sp,sp,-48
    800054d4:	02113423          	sd	ra,40(sp)
    800054d8:	02813023          	sd	s0,32(sp)
    800054dc:	00913c23          	sd	s1,24(sp)
    800054e0:	01213823          	sd	s2,16(sp)
    800054e4:	01313423          	sd	s3,8(sp)
    800054e8:	03010413          	addi	s0,sp,48
    800054ec:	00050493          	mv	s1,a0
    800054f0:	00058913          	mv	s2,a1
    800054f4:	0015879b          	addiw	a5,a1,1
    800054f8:	0007851b          	sext.w	a0,a5
    800054fc:	00f4a023          	sw	a5,0(s1)
    80005500:	0004a823          	sw	zero,16(s1)
    80005504:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005508:	00251513          	slli	a0,a0,0x2
    8000550c:	ffffc097          	auipc	ra,0xffffc
    80005510:	c38080e7          	jalr	-968(ra) # 80001144 <_Z9mem_allocm>
    80005514:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005518:	01000513          	li	a0,16
    8000551c:	ffffc097          	auipc	ra,0xffffc
    80005520:	11c080e7          	jalr	284(ra) # 80001638 <_Znwm>
    80005524:	00050993          	mv	s3,a0
    80005528:	00000593          	li	a1,0
    8000552c:	ffffd097          	auipc	ra,0xffffd
    80005530:	98c080e7          	jalr	-1652(ra) # 80001eb8 <_ZN9SemaphoreC1Ej>
    80005534:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005538:	01000513          	li	a0,16
    8000553c:	ffffc097          	auipc	ra,0xffffc
    80005540:	0fc080e7          	jalr	252(ra) # 80001638 <_Znwm>
    80005544:	00050993          	mv	s3,a0
    80005548:	00090593          	mv	a1,s2
    8000554c:	ffffd097          	auipc	ra,0xffffd
    80005550:	96c080e7          	jalr	-1684(ra) # 80001eb8 <_ZN9SemaphoreC1Ej>
    80005554:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005558:	01000513          	li	a0,16
    8000555c:	ffffc097          	auipc	ra,0xffffc
    80005560:	0dc080e7          	jalr	220(ra) # 80001638 <_Znwm>
    80005564:	00050913          	mv	s2,a0
    80005568:	00100593          	li	a1,1
    8000556c:	ffffd097          	auipc	ra,0xffffd
    80005570:	94c080e7          	jalr	-1716(ra) # 80001eb8 <_ZN9SemaphoreC1Ej>
    80005574:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005578:	01000513          	li	a0,16
    8000557c:	ffffc097          	auipc	ra,0xffffc
    80005580:	0bc080e7          	jalr	188(ra) # 80001638 <_Znwm>
    80005584:	00050913          	mv	s2,a0
    80005588:	00100593          	li	a1,1
    8000558c:	ffffd097          	auipc	ra,0xffffd
    80005590:	92c080e7          	jalr	-1748(ra) # 80001eb8 <_ZN9SemaphoreC1Ej>
    80005594:	0324b823          	sd	s2,48(s1)
}
    80005598:	02813083          	ld	ra,40(sp)
    8000559c:	02013403          	ld	s0,32(sp)
    800055a0:	01813483          	ld	s1,24(sp)
    800055a4:	01013903          	ld	s2,16(sp)
    800055a8:	00813983          	ld	s3,8(sp)
    800055ac:	03010113          	addi	sp,sp,48
    800055b0:	00008067          	ret
    800055b4:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800055b8:	00098513          	mv	a0,s3
    800055bc:	ffffc097          	auipc	ra,0xffffc
    800055c0:	0a4080e7          	jalr	164(ra) # 80001660 <_ZdlPv>
    800055c4:	00048513          	mv	a0,s1
    800055c8:	00007097          	auipc	ra,0x7
    800055cc:	4c0080e7          	jalr	1216(ra) # 8000ca88 <_Unwind_Resume>
    800055d0:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800055d4:	00098513          	mv	a0,s3
    800055d8:	ffffc097          	auipc	ra,0xffffc
    800055dc:	088080e7          	jalr	136(ra) # 80001660 <_ZdlPv>
    800055e0:	00048513          	mv	a0,s1
    800055e4:	00007097          	auipc	ra,0x7
    800055e8:	4a4080e7          	jalr	1188(ra) # 8000ca88 <_Unwind_Resume>
    800055ec:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800055f0:	00090513          	mv	a0,s2
    800055f4:	ffffc097          	auipc	ra,0xffffc
    800055f8:	06c080e7          	jalr	108(ra) # 80001660 <_ZdlPv>
    800055fc:	00048513          	mv	a0,s1
    80005600:	00007097          	auipc	ra,0x7
    80005604:	488080e7          	jalr	1160(ra) # 8000ca88 <_Unwind_Resume>
    80005608:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000560c:	00090513          	mv	a0,s2
    80005610:	ffffc097          	auipc	ra,0xffffc
    80005614:	050080e7          	jalr	80(ra) # 80001660 <_ZdlPv>
    80005618:	00048513          	mv	a0,s1
    8000561c:	00007097          	auipc	ra,0x7
    80005620:	46c080e7          	jalr	1132(ra) # 8000ca88 <_Unwind_Resume>

0000000080005624 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005624:	fe010113          	addi	sp,sp,-32
    80005628:	00113c23          	sd	ra,24(sp)
    8000562c:	00813823          	sd	s0,16(sp)
    80005630:	00913423          	sd	s1,8(sp)
    80005634:	01213023          	sd	s2,0(sp)
    80005638:	02010413          	addi	s0,sp,32
    8000563c:	00050493          	mv	s1,a0
    80005640:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005644:	01853503          	ld	a0,24(a0)
    80005648:	ffffd097          	auipc	ra,0xffffd
    8000564c:	8a8080e7          	jalr	-1880(ra) # 80001ef0 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005650:	0304b503          	ld	a0,48(s1)
    80005654:	ffffd097          	auipc	ra,0xffffd
    80005658:	89c080e7          	jalr	-1892(ra) # 80001ef0 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000565c:	0084b783          	ld	a5,8(s1)
    80005660:	0144a703          	lw	a4,20(s1)
    80005664:	00271713          	slli	a4,a4,0x2
    80005668:	00e787b3          	add	a5,a5,a4
    8000566c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005670:	0144a783          	lw	a5,20(s1)
    80005674:	0017879b          	addiw	a5,a5,1
    80005678:	0004a703          	lw	a4,0(s1)
    8000567c:	02e7e7bb          	remw	a5,a5,a4
    80005680:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005684:	0304b503          	ld	a0,48(s1)
    80005688:	ffffd097          	auipc	ra,0xffffd
    8000568c:	894080e7          	jalr	-1900(ra) # 80001f1c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005690:	0204b503          	ld	a0,32(s1)
    80005694:	ffffd097          	auipc	ra,0xffffd
    80005698:	888080e7          	jalr	-1912(ra) # 80001f1c <_ZN9Semaphore6signalEv>

}
    8000569c:	01813083          	ld	ra,24(sp)
    800056a0:	01013403          	ld	s0,16(sp)
    800056a4:	00813483          	ld	s1,8(sp)
    800056a8:	00013903          	ld	s2,0(sp)
    800056ac:	02010113          	addi	sp,sp,32
    800056b0:	00008067          	ret

00000000800056b4 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800056b4:	fe010113          	addi	sp,sp,-32
    800056b8:	00113c23          	sd	ra,24(sp)
    800056bc:	00813823          	sd	s0,16(sp)
    800056c0:	00913423          	sd	s1,8(sp)
    800056c4:	01213023          	sd	s2,0(sp)
    800056c8:	02010413          	addi	s0,sp,32
    800056cc:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800056d0:	02053503          	ld	a0,32(a0)
    800056d4:	ffffd097          	auipc	ra,0xffffd
    800056d8:	81c080e7          	jalr	-2020(ra) # 80001ef0 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800056dc:	0284b503          	ld	a0,40(s1)
    800056e0:	ffffd097          	auipc	ra,0xffffd
    800056e4:	810080e7          	jalr	-2032(ra) # 80001ef0 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800056e8:	0084b703          	ld	a4,8(s1)
    800056ec:	0104a783          	lw	a5,16(s1)
    800056f0:	00279693          	slli	a3,a5,0x2
    800056f4:	00d70733          	add	a4,a4,a3
    800056f8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800056fc:	0017879b          	addiw	a5,a5,1
    80005700:	0004a703          	lw	a4,0(s1)
    80005704:	02e7e7bb          	remw	a5,a5,a4
    80005708:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000570c:	0284b503          	ld	a0,40(s1)
    80005710:	ffffd097          	auipc	ra,0xffffd
    80005714:	80c080e7          	jalr	-2036(ra) # 80001f1c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005718:	0184b503          	ld	a0,24(s1)
    8000571c:	ffffd097          	auipc	ra,0xffffd
    80005720:	800080e7          	jalr	-2048(ra) # 80001f1c <_ZN9Semaphore6signalEv>

    return ret;
}
    80005724:	00090513          	mv	a0,s2
    80005728:	01813083          	ld	ra,24(sp)
    8000572c:	01013403          	ld	s0,16(sp)
    80005730:	00813483          	ld	s1,8(sp)
    80005734:	00013903          	ld	s2,0(sp)
    80005738:	02010113          	addi	sp,sp,32
    8000573c:	00008067          	ret

0000000080005740 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005740:	fe010113          	addi	sp,sp,-32
    80005744:	00113c23          	sd	ra,24(sp)
    80005748:	00813823          	sd	s0,16(sp)
    8000574c:	00913423          	sd	s1,8(sp)
    80005750:	01213023          	sd	s2,0(sp)
    80005754:	02010413          	addi	s0,sp,32
    80005758:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000575c:	02853503          	ld	a0,40(a0)
    80005760:	ffffc097          	auipc	ra,0xffffc
    80005764:	790080e7          	jalr	1936(ra) # 80001ef0 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005768:	0304b503          	ld	a0,48(s1)
    8000576c:	ffffc097          	auipc	ra,0xffffc
    80005770:	784080e7          	jalr	1924(ra) # 80001ef0 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005774:	0144a783          	lw	a5,20(s1)
    80005778:	0104a903          	lw	s2,16(s1)
    8000577c:	0327ce63          	blt	a5,s2,800057b8 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005780:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005784:	0304b503          	ld	a0,48(s1)
    80005788:	ffffc097          	auipc	ra,0xffffc
    8000578c:	794080e7          	jalr	1940(ra) # 80001f1c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005790:	0284b503          	ld	a0,40(s1)
    80005794:	ffffc097          	auipc	ra,0xffffc
    80005798:	788080e7          	jalr	1928(ra) # 80001f1c <_ZN9Semaphore6signalEv>

    return ret;
}
    8000579c:	00090513          	mv	a0,s2
    800057a0:	01813083          	ld	ra,24(sp)
    800057a4:	01013403          	ld	s0,16(sp)
    800057a8:	00813483          	ld	s1,8(sp)
    800057ac:	00013903          	ld	s2,0(sp)
    800057b0:	02010113          	addi	sp,sp,32
    800057b4:	00008067          	ret
        ret = cap - head + tail;
    800057b8:	0004a703          	lw	a4,0(s1)
    800057bc:	4127093b          	subw	s2,a4,s2
    800057c0:	00f9093b          	addw	s2,s2,a5
    800057c4:	fc1ff06f          	j	80005784 <_ZN9BufferCPP6getCntEv+0x44>

00000000800057c8 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800057c8:	fe010113          	addi	sp,sp,-32
    800057cc:	00113c23          	sd	ra,24(sp)
    800057d0:	00813823          	sd	s0,16(sp)
    800057d4:	00913423          	sd	s1,8(sp)
    800057d8:	02010413          	addi	s0,sp,32
    800057dc:	00050493          	mv	s1,a0
    Console::putc('\n');
    800057e0:	00a00513          	li	a0,10
    800057e4:	ffffd097          	auipc	ra,0xffffd
    800057e8:	884080e7          	jalr	-1916(ra) # 80002068 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800057ec:	00004517          	auipc	a0,0x4
    800057f0:	bcc50513          	addi	a0,a0,-1076 # 800093b8 <CONSOLE_STATUS+0x3a8>
    800057f4:	00000097          	auipc	ra,0x0
    800057f8:	a0c080e7          	jalr	-1524(ra) # 80005200 <_Z11printStringPKc>
    while (getCnt()) {
    800057fc:	00048513          	mv	a0,s1
    80005800:	00000097          	auipc	ra,0x0
    80005804:	f40080e7          	jalr	-192(ra) # 80005740 <_ZN9BufferCPP6getCntEv>
    80005808:	02050c63          	beqz	a0,80005840 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000580c:	0084b783          	ld	a5,8(s1)
    80005810:	0104a703          	lw	a4,16(s1)
    80005814:	00271713          	slli	a4,a4,0x2
    80005818:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000581c:	0007c503          	lbu	a0,0(a5)
    80005820:	ffffd097          	auipc	ra,0xffffd
    80005824:	848080e7          	jalr	-1976(ra) # 80002068 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005828:	0104a783          	lw	a5,16(s1)
    8000582c:	0017879b          	addiw	a5,a5,1
    80005830:	0004a703          	lw	a4,0(s1)
    80005834:	02e7e7bb          	remw	a5,a5,a4
    80005838:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000583c:	fc1ff06f          	j	800057fc <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005840:	02100513          	li	a0,33
    80005844:	ffffd097          	auipc	ra,0xffffd
    80005848:	824080e7          	jalr	-2012(ra) # 80002068 <_ZN7Console4putcEc>
    Console::putc('\n');
    8000584c:	00a00513          	li	a0,10
    80005850:	ffffd097          	auipc	ra,0xffffd
    80005854:	818080e7          	jalr	-2024(ra) # 80002068 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005858:	0084b503          	ld	a0,8(s1)
    8000585c:	ffffc097          	auipc	ra,0xffffc
    80005860:	91c080e7          	jalr	-1764(ra) # 80001178 <_Z8mem_freePv>
    delete itemAvailable;
    80005864:	0204b503          	ld	a0,32(s1)
    80005868:	00050863          	beqz	a0,80005878 <_ZN9BufferCPPD1Ev+0xb0>
    8000586c:	00053783          	ld	a5,0(a0)
    80005870:	0087b783          	ld	a5,8(a5)
    80005874:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005878:	0184b503          	ld	a0,24(s1)
    8000587c:	00050863          	beqz	a0,8000588c <_ZN9BufferCPPD1Ev+0xc4>
    80005880:	00053783          	ld	a5,0(a0)
    80005884:	0087b783          	ld	a5,8(a5)
    80005888:	000780e7          	jalr	a5
    delete mutexTail;
    8000588c:	0304b503          	ld	a0,48(s1)
    80005890:	00050863          	beqz	a0,800058a0 <_ZN9BufferCPPD1Ev+0xd8>
    80005894:	00053783          	ld	a5,0(a0)
    80005898:	0087b783          	ld	a5,8(a5)
    8000589c:	000780e7          	jalr	a5
    delete mutexHead;
    800058a0:	0284b503          	ld	a0,40(s1)
    800058a4:	00050863          	beqz	a0,800058b4 <_ZN9BufferCPPD1Ev+0xec>
    800058a8:	00053783          	ld	a5,0(a0)
    800058ac:	0087b783          	ld	a5,8(a5)
    800058b0:	000780e7          	jalr	a5
}
    800058b4:	01813083          	ld	ra,24(sp)
    800058b8:	01013403          	ld	s0,16(sp)
    800058bc:	00813483          	ld	s1,8(sp)
    800058c0:	02010113          	addi	sp,sp,32
    800058c4:	00008067          	ret

00000000800058c8 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800058c8:	fe010113          	addi	sp,sp,-32
    800058cc:	00113c23          	sd	ra,24(sp)
    800058d0:	00813823          	sd	s0,16(sp)
    800058d4:	00913423          	sd	s1,8(sp)
    800058d8:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800058dc:	00004517          	auipc	a0,0x4
    800058e0:	af450513          	addi	a0,a0,-1292 # 800093d0 <CONSOLE_STATUS+0x3c0>
    800058e4:	00000097          	auipc	ra,0x0
    800058e8:	91c080e7          	jalr	-1764(ra) # 80005200 <_Z11printStringPKc>
    int test = getc() - '0';
    800058ec:	ffffc097          	auipc	ra,0xffffc
    800058f0:	adc080e7          	jalr	-1316(ra) # 800013c8 <_Z4getcv>
    800058f4:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800058f8:	ffffc097          	auipc	ra,0xffffc
    800058fc:	ad0080e7          	jalr	-1328(ra) # 800013c8 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005900:	00700793          	li	a5,7
    80005904:	1097e263          	bltu	a5,s1,80005a08 <_Z8userMainv+0x140>
    80005908:	00249493          	slli	s1,s1,0x2
    8000590c:	00004717          	auipc	a4,0x4
    80005910:	d1c70713          	addi	a4,a4,-740 # 80009628 <CONSOLE_STATUS+0x618>
    80005914:	00e484b3          	add	s1,s1,a4
    80005918:	0004a783          	lw	a5,0(s1)
    8000591c:	00e787b3          	add	a5,a5,a4
    80005920:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80005924:	fffff097          	auipc	ra,0xfffff
    80005928:	f54080e7          	jalr	-172(ra) # 80004878 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    8000592c:	00004517          	auipc	a0,0x4
    80005930:	ac450513          	addi	a0,a0,-1340 # 800093f0 <CONSOLE_STATUS+0x3e0>
    80005934:	00000097          	auipc	ra,0x0
    80005938:	8cc080e7          	jalr	-1844(ra) # 80005200 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    8000593c:	01813083          	ld	ra,24(sp)
    80005940:	01013403          	ld	s0,16(sp)
    80005944:	00813483          	ld	s1,8(sp)
    80005948:	02010113          	addi	sp,sp,32
    8000594c:	00008067          	ret
            Threads_CPP_API_test();
    80005950:	ffffe097          	auipc	ra,0xffffe
    80005954:	e08080e7          	jalr	-504(ra) # 80003758 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005958:	00004517          	auipc	a0,0x4
    8000595c:	ad850513          	addi	a0,a0,-1320 # 80009430 <CONSOLE_STATUS+0x420>
    80005960:	00000097          	auipc	ra,0x0
    80005964:	8a0080e7          	jalr	-1888(ra) # 80005200 <_Z11printStringPKc>
            break;
    80005968:	fd5ff06f          	j	8000593c <_Z8userMainv+0x74>
            producerConsumer_C_API();
    8000596c:	ffffd097          	auipc	ra,0xffffd
    80005970:	640080e7          	jalr	1600(ra) # 80002fac <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005974:	00004517          	auipc	a0,0x4
    80005978:	afc50513          	addi	a0,a0,-1284 # 80009470 <CONSOLE_STATUS+0x460>
    8000597c:	00000097          	auipc	ra,0x0
    80005980:	884080e7          	jalr	-1916(ra) # 80005200 <_Z11printStringPKc>
            break;
    80005984:	fb9ff06f          	j	8000593c <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80005988:	fffff097          	auipc	ra,0xfffff
    8000598c:	234080e7          	jalr	564(ra) # 80004bbc <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005990:	00004517          	auipc	a0,0x4
    80005994:	b3050513          	addi	a0,a0,-1232 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80005998:	00000097          	auipc	ra,0x0
    8000599c:	868080e7          	jalr	-1944(ra) # 80005200 <_Z11printStringPKc>
            break;
    800059a0:	f9dff06f          	j	8000593c <_Z8userMainv+0x74>
            testSleeping();
    800059a4:	00000097          	auipc	ra,0x0
    800059a8:	11c080e7          	jalr	284(ra) # 80005ac0 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    800059ac:	00004517          	auipc	a0,0x4
    800059b0:	b6c50513          	addi	a0,a0,-1172 # 80009518 <CONSOLE_STATUS+0x508>
    800059b4:	00000097          	auipc	ra,0x0
    800059b8:	84c080e7          	jalr	-1972(ra) # 80005200 <_Z11printStringPKc>
            break;
    800059bc:	f81ff06f          	j	8000593c <_Z8userMainv+0x74>
            testConsumerProducer();
    800059c0:	ffffe097          	auipc	ra,0xffffe
    800059c4:	258080e7          	jalr	600(ra) # 80003c18 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    800059c8:	00004517          	auipc	a0,0x4
    800059cc:	b8050513          	addi	a0,a0,-1152 # 80009548 <CONSOLE_STATUS+0x538>
    800059d0:	00000097          	auipc	ra,0x0
    800059d4:	830080e7          	jalr	-2000(ra) # 80005200 <_Z11printStringPKc>
            break;
    800059d8:	f65ff06f          	j	8000593c <_Z8userMainv+0x74>
            System_Mode_test();
    800059dc:	00000097          	auipc	ra,0x0
    800059e0:	658080e7          	jalr	1624(ra) # 80006034 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    800059e4:	00004517          	auipc	a0,0x4
    800059e8:	ba450513          	addi	a0,a0,-1116 # 80009588 <CONSOLE_STATUS+0x578>
    800059ec:	00000097          	auipc	ra,0x0
    800059f0:	814080e7          	jalr	-2028(ra) # 80005200 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800059f4:	00004517          	auipc	a0,0x4
    800059f8:	bb450513          	addi	a0,a0,-1100 # 800095a8 <CONSOLE_STATUS+0x598>
    800059fc:	00000097          	auipc	ra,0x0
    80005a00:	804080e7          	jalr	-2044(ra) # 80005200 <_Z11printStringPKc>
            break;
    80005a04:	f39ff06f          	j	8000593c <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005a08:	00004517          	auipc	a0,0x4
    80005a0c:	bf850513          	addi	a0,a0,-1032 # 80009600 <CONSOLE_STATUS+0x5f0>
    80005a10:	fffff097          	auipc	ra,0xfffff
    80005a14:	7f0080e7          	jalr	2032(ra) # 80005200 <_Z11printStringPKc>
    80005a18:	f25ff06f          	j	8000593c <_Z8userMainv+0x74>

0000000080005a1c <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005a1c:	fe010113          	addi	sp,sp,-32
    80005a20:	00113c23          	sd	ra,24(sp)
    80005a24:	00813823          	sd	s0,16(sp)
    80005a28:	00913423          	sd	s1,8(sp)
    80005a2c:	01213023          	sd	s2,0(sp)
    80005a30:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005a34:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005a38:	00600493          	li	s1,6
    while (--i > 0) {
    80005a3c:	fff4849b          	addiw	s1,s1,-1
    80005a40:	04905463          	blez	s1,80005a88 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005a44:	00004517          	auipc	a0,0x4
    80005a48:	c0450513          	addi	a0,a0,-1020 # 80009648 <CONSOLE_STATUS+0x638>
    80005a4c:	fffff097          	auipc	ra,0xfffff
    80005a50:	7b4080e7          	jalr	1972(ra) # 80005200 <_Z11printStringPKc>
        printInt(sleep_time);
    80005a54:	00000613          	li	a2,0
    80005a58:	00a00593          	li	a1,10
    80005a5c:	0009051b          	sext.w	a0,s2
    80005a60:	00000097          	auipc	ra,0x0
    80005a64:	950080e7          	jalr	-1712(ra) # 800053b0 <_Z8printIntiii>
        printString(" !\n");
    80005a68:	00004517          	auipc	a0,0x4
    80005a6c:	be850513          	addi	a0,a0,-1048 # 80009650 <CONSOLE_STATUS+0x640>
    80005a70:	fffff097          	auipc	ra,0xfffff
    80005a74:	790080e7          	jalr	1936(ra) # 80005200 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005a78:	00090513          	mv	a0,s2
    80005a7c:	ffffc097          	auipc	ra,0xffffc
    80005a80:	8f0080e7          	jalr	-1808(ra) # 8000136c <_Z10time_sleepm>
    while (--i > 0) {
    80005a84:	fb9ff06f          	j	80005a3c <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005a88:	00a00793          	li	a5,10
    80005a8c:	02f95933          	divu	s2,s2,a5
    80005a90:	fff90913          	addi	s2,s2,-1
    80005a94:	00006797          	auipc	a5,0x6
    80005a98:	f1c78793          	addi	a5,a5,-228 # 8000b9b0 <_ZL8finished>
    80005a9c:	01278933          	add	s2,a5,s2
    80005aa0:	00100793          	li	a5,1
    80005aa4:	00f90023          	sb	a5,0(s2)
}
    80005aa8:	01813083          	ld	ra,24(sp)
    80005aac:	01013403          	ld	s0,16(sp)
    80005ab0:	00813483          	ld	s1,8(sp)
    80005ab4:	00013903          	ld	s2,0(sp)
    80005ab8:	02010113          	addi	sp,sp,32
    80005abc:	00008067          	ret

0000000080005ac0 <_Z12testSleepingv>:

void testSleeping() {
    80005ac0:	fc010113          	addi	sp,sp,-64
    80005ac4:	02113c23          	sd	ra,56(sp)
    80005ac8:	02813823          	sd	s0,48(sp)
    80005acc:	02913423          	sd	s1,40(sp)
    80005ad0:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005ad4:	00a00793          	li	a5,10
    80005ad8:	fcf43823          	sd	a5,-48(s0)
    80005adc:	01400793          	li	a5,20
    80005ae0:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005ae4:	00000493          	li	s1,0
    80005ae8:	02c0006f          	j	80005b14 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005aec:	00349793          	slli	a5,s1,0x3
    80005af0:	fd040613          	addi	a2,s0,-48
    80005af4:	00f60633          	add	a2,a2,a5
    80005af8:	00000597          	auipc	a1,0x0
    80005afc:	f2458593          	addi	a1,a1,-220 # 80005a1c <_ZL9sleepyRunPv>
    80005b00:	fc040513          	addi	a0,s0,-64
    80005b04:	00f50533          	add	a0,a0,a5
    80005b08:	ffffb097          	auipc	ra,0xffffb
    80005b0c:	6ec080e7          	jalr	1772(ra) # 800011f4 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005b10:	0014849b          	addiw	s1,s1,1
    80005b14:	00100793          	li	a5,1
    80005b18:	fc97dae3          	bge	a5,s1,80005aec <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005b1c:	00006797          	auipc	a5,0x6
    80005b20:	e947c783          	lbu	a5,-364(a5) # 8000b9b0 <_ZL8finished>
    80005b24:	fe078ce3          	beqz	a5,80005b1c <_Z12testSleepingv+0x5c>
    80005b28:	00006797          	auipc	a5,0x6
    80005b2c:	e897c783          	lbu	a5,-375(a5) # 8000b9b1 <_ZL8finished+0x1>
    80005b30:	fe0786e3          	beqz	a5,80005b1c <_Z12testSleepingv+0x5c>
}
    80005b34:	03813083          	ld	ra,56(sp)
    80005b38:	03013403          	ld	s0,48(sp)
    80005b3c:	02813483          	ld	s1,40(sp)
    80005b40:	04010113          	addi	sp,sp,64
    80005b44:	00008067          	ret

0000000080005b48 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005b48:	fe010113          	addi	sp,sp,-32
    80005b4c:	00113c23          	sd	ra,24(sp)
    80005b50:	00813823          	sd	s0,16(sp)
    80005b54:	00913423          	sd	s1,8(sp)
    80005b58:	01213023          	sd	s2,0(sp)
    80005b5c:	02010413          	addi	s0,sp,32
    80005b60:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005b64:	00100793          	li	a5,1
    80005b68:	02a7f863          	bgeu	a5,a0,80005b98 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005b6c:	00a00793          	li	a5,10
    80005b70:	02f577b3          	remu	a5,a0,a5
    80005b74:	02078e63          	beqz	a5,80005bb0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005b78:	fff48513          	addi	a0,s1,-1
    80005b7c:	00000097          	auipc	ra,0x0
    80005b80:	fcc080e7          	jalr	-52(ra) # 80005b48 <_ZL9fibonaccim>
    80005b84:	00050913          	mv	s2,a0
    80005b88:	ffe48513          	addi	a0,s1,-2
    80005b8c:	00000097          	auipc	ra,0x0
    80005b90:	fbc080e7          	jalr	-68(ra) # 80005b48 <_ZL9fibonaccim>
    80005b94:	00a90533          	add	a0,s2,a0
}
    80005b98:	01813083          	ld	ra,24(sp)
    80005b9c:	01013403          	ld	s0,16(sp)
    80005ba0:	00813483          	ld	s1,8(sp)
    80005ba4:	00013903          	ld	s2,0(sp)
    80005ba8:	02010113          	addi	sp,sp,32
    80005bac:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005bb0:	ffffb097          	auipc	ra,0xffffb
    80005bb4:	6e8080e7          	jalr	1768(ra) # 80001298 <_Z15thread_dispatchv>
    80005bb8:	fc1ff06f          	j	80005b78 <_ZL9fibonaccim+0x30>

0000000080005bbc <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005bbc:	fe010113          	addi	sp,sp,-32
    80005bc0:	00113c23          	sd	ra,24(sp)
    80005bc4:	00813823          	sd	s0,16(sp)
    80005bc8:	00913423          	sd	s1,8(sp)
    80005bcc:	01213023          	sd	s2,0(sp)
    80005bd0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005bd4:	00a00493          	li	s1,10
    80005bd8:	0400006f          	j	80005c18 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005bdc:	00003517          	auipc	a0,0x3
    80005be0:	74450513          	addi	a0,a0,1860 # 80009320 <CONSOLE_STATUS+0x310>
    80005be4:	fffff097          	auipc	ra,0xfffff
    80005be8:	61c080e7          	jalr	1564(ra) # 80005200 <_Z11printStringPKc>
    80005bec:	00000613          	li	a2,0
    80005bf0:	00a00593          	li	a1,10
    80005bf4:	00048513          	mv	a0,s1
    80005bf8:	fffff097          	auipc	ra,0xfffff
    80005bfc:	7b8080e7          	jalr	1976(ra) # 800053b0 <_Z8printIntiii>
    80005c00:	00004517          	auipc	a0,0x4
    80005c04:	91050513          	addi	a0,a0,-1776 # 80009510 <CONSOLE_STATUS+0x500>
    80005c08:	fffff097          	auipc	ra,0xfffff
    80005c0c:	5f8080e7          	jalr	1528(ra) # 80005200 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005c10:	0014849b          	addiw	s1,s1,1
    80005c14:	0ff4f493          	andi	s1,s1,255
    80005c18:	00c00793          	li	a5,12
    80005c1c:	fc97f0e3          	bgeu	a5,s1,80005bdc <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005c20:	00003517          	auipc	a0,0x3
    80005c24:	70850513          	addi	a0,a0,1800 # 80009328 <CONSOLE_STATUS+0x318>
    80005c28:	fffff097          	auipc	ra,0xfffff
    80005c2c:	5d8080e7          	jalr	1496(ra) # 80005200 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005c30:	00500313          	li	t1,5
    thread_dispatch();
    80005c34:	ffffb097          	auipc	ra,0xffffb
    80005c38:	664080e7          	jalr	1636(ra) # 80001298 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005c3c:	01000513          	li	a0,16
    80005c40:	00000097          	auipc	ra,0x0
    80005c44:	f08080e7          	jalr	-248(ra) # 80005b48 <_ZL9fibonaccim>
    80005c48:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005c4c:	00003517          	auipc	a0,0x3
    80005c50:	6ec50513          	addi	a0,a0,1772 # 80009338 <CONSOLE_STATUS+0x328>
    80005c54:	fffff097          	auipc	ra,0xfffff
    80005c58:	5ac080e7          	jalr	1452(ra) # 80005200 <_Z11printStringPKc>
    80005c5c:	00000613          	li	a2,0
    80005c60:	00a00593          	li	a1,10
    80005c64:	0009051b          	sext.w	a0,s2
    80005c68:	fffff097          	auipc	ra,0xfffff
    80005c6c:	748080e7          	jalr	1864(ra) # 800053b0 <_Z8printIntiii>
    80005c70:	00004517          	auipc	a0,0x4
    80005c74:	8a050513          	addi	a0,a0,-1888 # 80009510 <CONSOLE_STATUS+0x500>
    80005c78:	fffff097          	auipc	ra,0xfffff
    80005c7c:	588080e7          	jalr	1416(ra) # 80005200 <_Z11printStringPKc>
    80005c80:	0400006f          	j	80005cc0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005c84:	00003517          	auipc	a0,0x3
    80005c88:	69c50513          	addi	a0,a0,1692 # 80009320 <CONSOLE_STATUS+0x310>
    80005c8c:	fffff097          	auipc	ra,0xfffff
    80005c90:	574080e7          	jalr	1396(ra) # 80005200 <_Z11printStringPKc>
    80005c94:	00000613          	li	a2,0
    80005c98:	00a00593          	li	a1,10
    80005c9c:	00048513          	mv	a0,s1
    80005ca0:	fffff097          	auipc	ra,0xfffff
    80005ca4:	710080e7          	jalr	1808(ra) # 800053b0 <_Z8printIntiii>
    80005ca8:	00004517          	auipc	a0,0x4
    80005cac:	86850513          	addi	a0,a0,-1944 # 80009510 <CONSOLE_STATUS+0x500>
    80005cb0:	fffff097          	auipc	ra,0xfffff
    80005cb4:	550080e7          	jalr	1360(ra) # 80005200 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005cb8:	0014849b          	addiw	s1,s1,1
    80005cbc:	0ff4f493          	andi	s1,s1,255
    80005cc0:	00f00793          	li	a5,15
    80005cc4:	fc97f0e3          	bgeu	a5,s1,80005c84 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005cc8:	00003517          	auipc	a0,0x3
    80005ccc:	68050513          	addi	a0,a0,1664 # 80009348 <CONSOLE_STATUS+0x338>
    80005cd0:	fffff097          	auipc	ra,0xfffff
    80005cd4:	530080e7          	jalr	1328(ra) # 80005200 <_Z11printStringPKc>
    finishedD = true;
    80005cd8:	00100793          	li	a5,1
    80005cdc:	00006717          	auipc	a4,0x6
    80005ce0:	ccf70b23          	sb	a5,-810(a4) # 8000b9b2 <_ZL9finishedD>
    thread_dispatch();
    80005ce4:	ffffb097          	auipc	ra,0xffffb
    80005ce8:	5b4080e7          	jalr	1460(ra) # 80001298 <_Z15thread_dispatchv>
}
    80005cec:	01813083          	ld	ra,24(sp)
    80005cf0:	01013403          	ld	s0,16(sp)
    80005cf4:	00813483          	ld	s1,8(sp)
    80005cf8:	00013903          	ld	s2,0(sp)
    80005cfc:	02010113          	addi	sp,sp,32
    80005d00:	00008067          	ret

0000000080005d04 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005d04:	fe010113          	addi	sp,sp,-32
    80005d08:	00113c23          	sd	ra,24(sp)
    80005d0c:	00813823          	sd	s0,16(sp)
    80005d10:	00913423          	sd	s1,8(sp)
    80005d14:	01213023          	sd	s2,0(sp)
    80005d18:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005d1c:	00000493          	li	s1,0
    80005d20:	0400006f          	j	80005d60 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005d24:	00003517          	auipc	a0,0x3
    80005d28:	5cc50513          	addi	a0,a0,1484 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80005d2c:	fffff097          	auipc	ra,0xfffff
    80005d30:	4d4080e7          	jalr	1236(ra) # 80005200 <_Z11printStringPKc>
    80005d34:	00000613          	li	a2,0
    80005d38:	00a00593          	li	a1,10
    80005d3c:	00048513          	mv	a0,s1
    80005d40:	fffff097          	auipc	ra,0xfffff
    80005d44:	670080e7          	jalr	1648(ra) # 800053b0 <_Z8printIntiii>
    80005d48:	00003517          	auipc	a0,0x3
    80005d4c:	7c850513          	addi	a0,a0,1992 # 80009510 <CONSOLE_STATUS+0x500>
    80005d50:	fffff097          	auipc	ra,0xfffff
    80005d54:	4b0080e7          	jalr	1200(ra) # 80005200 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005d58:	0014849b          	addiw	s1,s1,1
    80005d5c:	0ff4f493          	andi	s1,s1,255
    80005d60:	00200793          	li	a5,2
    80005d64:	fc97f0e3          	bgeu	a5,s1,80005d24 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005d68:	00003517          	auipc	a0,0x3
    80005d6c:	59050513          	addi	a0,a0,1424 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80005d70:	fffff097          	auipc	ra,0xfffff
    80005d74:	490080e7          	jalr	1168(ra) # 80005200 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005d78:	00700313          	li	t1,7
    thread_dispatch();
    80005d7c:	ffffb097          	auipc	ra,0xffffb
    80005d80:	51c080e7          	jalr	1308(ra) # 80001298 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005d84:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005d88:	00003517          	auipc	a0,0x3
    80005d8c:	58050513          	addi	a0,a0,1408 # 80009308 <CONSOLE_STATUS+0x2f8>
    80005d90:	fffff097          	auipc	ra,0xfffff
    80005d94:	470080e7          	jalr	1136(ra) # 80005200 <_Z11printStringPKc>
    80005d98:	00000613          	li	a2,0
    80005d9c:	00a00593          	li	a1,10
    80005da0:	0009051b          	sext.w	a0,s2
    80005da4:	fffff097          	auipc	ra,0xfffff
    80005da8:	60c080e7          	jalr	1548(ra) # 800053b0 <_Z8printIntiii>
    80005dac:	00003517          	auipc	a0,0x3
    80005db0:	76450513          	addi	a0,a0,1892 # 80009510 <CONSOLE_STATUS+0x500>
    80005db4:	fffff097          	auipc	ra,0xfffff
    80005db8:	44c080e7          	jalr	1100(ra) # 80005200 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005dbc:	00c00513          	li	a0,12
    80005dc0:	00000097          	auipc	ra,0x0
    80005dc4:	d88080e7          	jalr	-632(ra) # 80005b48 <_ZL9fibonaccim>
    80005dc8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005dcc:	00003517          	auipc	a0,0x3
    80005dd0:	54450513          	addi	a0,a0,1348 # 80009310 <CONSOLE_STATUS+0x300>
    80005dd4:	fffff097          	auipc	ra,0xfffff
    80005dd8:	42c080e7          	jalr	1068(ra) # 80005200 <_Z11printStringPKc>
    80005ddc:	00000613          	li	a2,0
    80005de0:	00a00593          	li	a1,10
    80005de4:	0009051b          	sext.w	a0,s2
    80005de8:	fffff097          	auipc	ra,0xfffff
    80005dec:	5c8080e7          	jalr	1480(ra) # 800053b0 <_Z8printIntiii>
    80005df0:	00003517          	auipc	a0,0x3
    80005df4:	72050513          	addi	a0,a0,1824 # 80009510 <CONSOLE_STATUS+0x500>
    80005df8:	fffff097          	auipc	ra,0xfffff
    80005dfc:	408080e7          	jalr	1032(ra) # 80005200 <_Z11printStringPKc>
    80005e00:	0400006f          	j	80005e40 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005e04:	00003517          	auipc	a0,0x3
    80005e08:	4ec50513          	addi	a0,a0,1260 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80005e0c:	fffff097          	auipc	ra,0xfffff
    80005e10:	3f4080e7          	jalr	1012(ra) # 80005200 <_Z11printStringPKc>
    80005e14:	00000613          	li	a2,0
    80005e18:	00a00593          	li	a1,10
    80005e1c:	00048513          	mv	a0,s1
    80005e20:	fffff097          	auipc	ra,0xfffff
    80005e24:	590080e7          	jalr	1424(ra) # 800053b0 <_Z8printIntiii>
    80005e28:	00003517          	auipc	a0,0x3
    80005e2c:	6e850513          	addi	a0,a0,1768 # 80009510 <CONSOLE_STATUS+0x500>
    80005e30:	fffff097          	auipc	ra,0xfffff
    80005e34:	3d0080e7          	jalr	976(ra) # 80005200 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005e38:	0014849b          	addiw	s1,s1,1
    80005e3c:	0ff4f493          	andi	s1,s1,255
    80005e40:	00500793          	li	a5,5
    80005e44:	fc97f0e3          	bgeu	a5,s1,80005e04 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005e48:	00003517          	auipc	a0,0x3
    80005e4c:	48050513          	addi	a0,a0,1152 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80005e50:	fffff097          	auipc	ra,0xfffff
    80005e54:	3b0080e7          	jalr	944(ra) # 80005200 <_Z11printStringPKc>
    finishedC = true;
    80005e58:	00100793          	li	a5,1
    80005e5c:	00006717          	auipc	a4,0x6
    80005e60:	b4f70ba3          	sb	a5,-1193(a4) # 8000b9b3 <_ZL9finishedC>
    thread_dispatch();
    80005e64:	ffffb097          	auipc	ra,0xffffb
    80005e68:	434080e7          	jalr	1076(ra) # 80001298 <_Z15thread_dispatchv>
}
    80005e6c:	01813083          	ld	ra,24(sp)
    80005e70:	01013403          	ld	s0,16(sp)
    80005e74:	00813483          	ld	s1,8(sp)
    80005e78:	00013903          	ld	s2,0(sp)
    80005e7c:	02010113          	addi	sp,sp,32
    80005e80:	00008067          	ret

0000000080005e84 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005e84:	fe010113          	addi	sp,sp,-32
    80005e88:	00113c23          	sd	ra,24(sp)
    80005e8c:	00813823          	sd	s0,16(sp)
    80005e90:	00913423          	sd	s1,8(sp)
    80005e94:	01213023          	sd	s2,0(sp)
    80005e98:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005e9c:	00000913          	li	s2,0
    80005ea0:	0400006f          	j	80005ee0 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005ea4:	ffffb097          	auipc	ra,0xffffb
    80005ea8:	3f4080e7          	jalr	1012(ra) # 80001298 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005eac:	00148493          	addi	s1,s1,1
    80005eb0:	000027b7          	lui	a5,0x2
    80005eb4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005eb8:	0097ee63          	bltu	a5,s1,80005ed4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005ebc:	00000713          	li	a4,0
    80005ec0:	000077b7          	lui	a5,0x7
    80005ec4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005ec8:	fce7eee3          	bltu	a5,a4,80005ea4 <_ZL11workerBodyBPv+0x20>
    80005ecc:	00170713          	addi	a4,a4,1
    80005ed0:	ff1ff06f          	j	80005ec0 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005ed4:	00a00793          	li	a5,10
    80005ed8:	04f90663          	beq	s2,a5,80005f24 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005edc:	00190913          	addi	s2,s2,1
    80005ee0:	00f00793          	li	a5,15
    80005ee4:	0527e463          	bltu	a5,s2,80005f2c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005ee8:	00003517          	auipc	a0,0x3
    80005eec:	3f050513          	addi	a0,a0,1008 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80005ef0:	fffff097          	auipc	ra,0xfffff
    80005ef4:	310080e7          	jalr	784(ra) # 80005200 <_Z11printStringPKc>
    80005ef8:	00000613          	li	a2,0
    80005efc:	00a00593          	li	a1,10
    80005f00:	0009051b          	sext.w	a0,s2
    80005f04:	fffff097          	auipc	ra,0xfffff
    80005f08:	4ac080e7          	jalr	1196(ra) # 800053b0 <_Z8printIntiii>
    80005f0c:	00003517          	auipc	a0,0x3
    80005f10:	60450513          	addi	a0,a0,1540 # 80009510 <CONSOLE_STATUS+0x500>
    80005f14:	fffff097          	auipc	ra,0xfffff
    80005f18:	2ec080e7          	jalr	748(ra) # 80005200 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005f1c:	00000493          	li	s1,0
    80005f20:	f91ff06f          	j	80005eb0 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005f24:	14102ff3          	csrr	t6,sepc
    80005f28:	fb5ff06f          	j	80005edc <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005f2c:	00003517          	auipc	a0,0x3
    80005f30:	3b450513          	addi	a0,a0,948 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80005f34:	fffff097          	auipc	ra,0xfffff
    80005f38:	2cc080e7          	jalr	716(ra) # 80005200 <_Z11printStringPKc>
    finishedB = true;
    80005f3c:	00100793          	li	a5,1
    80005f40:	00006717          	auipc	a4,0x6
    80005f44:	a6f70a23          	sb	a5,-1420(a4) # 8000b9b4 <_ZL9finishedB>
    thread_dispatch();
    80005f48:	ffffb097          	auipc	ra,0xffffb
    80005f4c:	350080e7          	jalr	848(ra) # 80001298 <_Z15thread_dispatchv>
}
    80005f50:	01813083          	ld	ra,24(sp)
    80005f54:	01013403          	ld	s0,16(sp)
    80005f58:	00813483          	ld	s1,8(sp)
    80005f5c:	00013903          	ld	s2,0(sp)
    80005f60:	02010113          	addi	sp,sp,32
    80005f64:	00008067          	ret

0000000080005f68 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005f68:	fe010113          	addi	sp,sp,-32
    80005f6c:	00113c23          	sd	ra,24(sp)
    80005f70:	00813823          	sd	s0,16(sp)
    80005f74:	00913423          	sd	s1,8(sp)
    80005f78:	01213023          	sd	s2,0(sp)
    80005f7c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005f80:	00000913          	li	s2,0
    80005f84:	0380006f          	j	80005fbc <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005f88:	ffffb097          	auipc	ra,0xffffb
    80005f8c:	310080e7          	jalr	784(ra) # 80001298 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005f90:	00148493          	addi	s1,s1,1
    80005f94:	000027b7          	lui	a5,0x2
    80005f98:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005f9c:	0097ee63          	bltu	a5,s1,80005fb8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005fa0:	00000713          	li	a4,0
    80005fa4:	000077b7          	lui	a5,0x7
    80005fa8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005fac:	fce7eee3          	bltu	a5,a4,80005f88 <_ZL11workerBodyAPv+0x20>
    80005fb0:	00170713          	addi	a4,a4,1
    80005fb4:	ff1ff06f          	j	80005fa4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005fb8:	00190913          	addi	s2,s2,1
    80005fbc:	00900793          	li	a5,9
    80005fc0:	0527e063          	bltu	a5,s2,80006000 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005fc4:	00003517          	auipc	a0,0x3
    80005fc8:	2fc50513          	addi	a0,a0,764 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80005fcc:	fffff097          	auipc	ra,0xfffff
    80005fd0:	234080e7          	jalr	564(ra) # 80005200 <_Z11printStringPKc>
    80005fd4:	00000613          	li	a2,0
    80005fd8:	00a00593          	li	a1,10
    80005fdc:	0009051b          	sext.w	a0,s2
    80005fe0:	fffff097          	auipc	ra,0xfffff
    80005fe4:	3d0080e7          	jalr	976(ra) # 800053b0 <_Z8printIntiii>
    80005fe8:	00003517          	auipc	a0,0x3
    80005fec:	52850513          	addi	a0,a0,1320 # 80009510 <CONSOLE_STATUS+0x500>
    80005ff0:	fffff097          	auipc	ra,0xfffff
    80005ff4:	210080e7          	jalr	528(ra) # 80005200 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005ff8:	00000493          	li	s1,0
    80005ffc:	f99ff06f          	j	80005f94 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006000:	00003517          	auipc	a0,0x3
    80006004:	2c850513          	addi	a0,a0,712 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80006008:	fffff097          	auipc	ra,0xfffff
    8000600c:	1f8080e7          	jalr	504(ra) # 80005200 <_Z11printStringPKc>
    finishedA = true;
    80006010:	00100793          	li	a5,1
    80006014:	00006717          	auipc	a4,0x6
    80006018:	9af700a3          	sb	a5,-1631(a4) # 8000b9b5 <_ZL9finishedA>
}
    8000601c:	01813083          	ld	ra,24(sp)
    80006020:	01013403          	ld	s0,16(sp)
    80006024:	00813483          	ld	s1,8(sp)
    80006028:	00013903          	ld	s2,0(sp)
    8000602c:	02010113          	addi	sp,sp,32
    80006030:	00008067          	ret

0000000080006034 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006034:	fd010113          	addi	sp,sp,-48
    80006038:	02113423          	sd	ra,40(sp)
    8000603c:	02813023          	sd	s0,32(sp)
    80006040:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006044:	00000613          	li	a2,0
    80006048:	00000597          	auipc	a1,0x0
    8000604c:	f2058593          	addi	a1,a1,-224 # 80005f68 <_ZL11workerBodyAPv>
    80006050:	fd040513          	addi	a0,s0,-48
    80006054:	ffffb097          	auipc	ra,0xffffb
    80006058:	1a0080e7          	jalr	416(ra) # 800011f4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    8000605c:	00003517          	auipc	a0,0x3
    80006060:	2fc50513          	addi	a0,a0,764 # 80009358 <CONSOLE_STATUS+0x348>
    80006064:	fffff097          	auipc	ra,0xfffff
    80006068:	19c080e7          	jalr	412(ra) # 80005200 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000606c:	00000613          	li	a2,0
    80006070:	00000597          	auipc	a1,0x0
    80006074:	e1458593          	addi	a1,a1,-492 # 80005e84 <_ZL11workerBodyBPv>
    80006078:	fd840513          	addi	a0,s0,-40
    8000607c:	ffffb097          	auipc	ra,0xffffb
    80006080:	178080e7          	jalr	376(ra) # 800011f4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006084:	00003517          	auipc	a0,0x3
    80006088:	2ec50513          	addi	a0,a0,748 # 80009370 <CONSOLE_STATUS+0x360>
    8000608c:	fffff097          	auipc	ra,0xfffff
    80006090:	174080e7          	jalr	372(ra) # 80005200 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006094:	00000613          	li	a2,0
    80006098:	00000597          	auipc	a1,0x0
    8000609c:	c6c58593          	addi	a1,a1,-916 # 80005d04 <_ZL11workerBodyCPv>
    800060a0:	fe040513          	addi	a0,s0,-32
    800060a4:	ffffb097          	auipc	ra,0xffffb
    800060a8:	150080e7          	jalr	336(ra) # 800011f4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800060ac:	00003517          	auipc	a0,0x3
    800060b0:	2dc50513          	addi	a0,a0,732 # 80009388 <CONSOLE_STATUS+0x378>
    800060b4:	fffff097          	auipc	ra,0xfffff
    800060b8:	14c080e7          	jalr	332(ra) # 80005200 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800060bc:	00000613          	li	a2,0
    800060c0:	00000597          	auipc	a1,0x0
    800060c4:	afc58593          	addi	a1,a1,-1284 # 80005bbc <_ZL11workerBodyDPv>
    800060c8:	fe840513          	addi	a0,s0,-24
    800060cc:	ffffb097          	auipc	ra,0xffffb
    800060d0:	128080e7          	jalr	296(ra) # 800011f4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800060d4:	00003517          	auipc	a0,0x3
    800060d8:	2cc50513          	addi	a0,a0,716 # 800093a0 <CONSOLE_STATUS+0x390>
    800060dc:	fffff097          	auipc	ra,0xfffff
    800060e0:	124080e7          	jalr	292(ra) # 80005200 <_Z11printStringPKc>
    800060e4:	00c0006f          	j	800060f0 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800060e8:	ffffb097          	auipc	ra,0xffffb
    800060ec:	1b0080e7          	jalr	432(ra) # 80001298 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800060f0:	00006797          	auipc	a5,0x6
    800060f4:	8c57c783          	lbu	a5,-1851(a5) # 8000b9b5 <_ZL9finishedA>
    800060f8:	fe0788e3          	beqz	a5,800060e8 <_Z16System_Mode_testv+0xb4>
    800060fc:	00006797          	auipc	a5,0x6
    80006100:	8b87c783          	lbu	a5,-1864(a5) # 8000b9b4 <_ZL9finishedB>
    80006104:	fe0782e3          	beqz	a5,800060e8 <_Z16System_Mode_testv+0xb4>
    80006108:	00006797          	auipc	a5,0x6
    8000610c:	8ab7c783          	lbu	a5,-1877(a5) # 8000b9b3 <_ZL9finishedC>
    80006110:	fc078ce3          	beqz	a5,800060e8 <_Z16System_Mode_testv+0xb4>
    80006114:	00006797          	auipc	a5,0x6
    80006118:	89e7c783          	lbu	a5,-1890(a5) # 8000b9b2 <_ZL9finishedD>
    8000611c:	fc0786e3          	beqz	a5,800060e8 <_Z16System_Mode_testv+0xb4>
    }

}
    80006120:	02813083          	ld	ra,40(sp)
    80006124:	02013403          	ld	s0,32(sp)
    80006128:	03010113          	addi	sp,sp,48
    8000612c:	00008067          	ret

0000000080006130 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006130:	fe010113          	addi	sp,sp,-32
    80006134:	00113c23          	sd	ra,24(sp)
    80006138:	00813823          	sd	s0,16(sp)
    8000613c:	00913423          	sd	s1,8(sp)
    80006140:	01213023          	sd	s2,0(sp)
    80006144:	02010413          	addi	s0,sp,32
    80006148:	00050493          	mv	s1,a0
    8000614c:	00058913          	mv	s2,a1
    80006150:	0015879b          	addiw	a5,a1,1
    80006154:	0007851b          	sext.w	a0,a5
    80006158:	00f4a023          	sw	a5,0(s1)
    8000615c:	0004a823          	sw	zero,16(s1)
    80006160:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006164:	00251513          	slli	a0,a0,0x2
    80006168:	ffffb097          	auipc	ra,0xffffb
    8000616c:	fdc080e7          	jalr	-36(ra) # 80001144 <_Z9mem_allocm>
    80006170:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006174:	00000593          	li	a1,0
    80006178:	02048513          	addi	a0,s1,32
    8000617c:	ffffb097          	auipc	ra,0xffffb
    80006180:	13c080e7          	jalr	316(ra) # 800012b8 <_Z8sem_openPP11MySemaphorej>
    sem_open(&spaceAvailable, _cap);
    80006184:	00090593          	mv	a1,s2
    80006188:	01848513          	addi	a0,s1,24
    8000618c:	ffffb097          	auipc	ra,0xffffb
    80006190:	12c080e7          	jalr	300(ra) # 800012b8 <_Z8sem_openPP11MySemaphorej>
    sem_open(&mutexHead, 1);
    80006194:	00100593          	li	a1,1
    80006198:	02848513          	addi	a0,s1,40
    8000619c:	ffffb097          	auipc	ra,0xffffb
    800061a0:	11c080e7          	jalr	284(ra) # 800012b8 <_Z8sem_openPP11MySemaphorej>
    sem_open(&mutexTail, 1);
    800061a4:	00100593          	li	a1,1
    800061a8:	03048513          	addi	a0,s1,48
    800061ac:	ffffb097          	auipc	ra,0xffffb
    800061b0:	10c080e7          	jalr	268(ra) # 800012b8 <_Z8sem_openPP11MySemaphorej>
}
    800061b4:	01813083          	ld	ra,24(sp)
    800061b8:	01013403          	ld	s0,16(sp)
    800061bc:	00813483          	ld	s1,8(sp)
    800061c0:	00013903          	ld	s2,0(sp)
    800061c4:	02010113          	addi	sp,sp,32
    800061c8:	00008067          	ret

00000000800061cc <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800061cc:	fe010113          	addi	sp,sp,-32
    800061d0:	00113c23          	sd	ra,24(sp)
    800061d4:	00813823          	sd	s0,16(sp)
    800061d8:	00913423          	sd	s1,8(sp)
    800061dc:	01213023          	sd	s2,0(sp)
    800061e0:	02010413          	addi	s0,sp,32
    800061e4:	00050493          	mv	s1,a0
    800061e8:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800061ec:	01853503          	ld	a0,24(a0)
    800061f0:	ffffb097          	auipc	ra,0xffffb
    800061f4:	124080e7          	jalr	292(ra) # 80001314 <_Z8sem_waitP11MySemaphore>

    sem_wait(mutexTail);
    800061f8:	0304b503          	ld	a0,48(s1)
    800061fc:	ffffb097          	auipc	ra,0xffffb
    80006200:	118080e7          	jalr	280(ra) # 80001314 <_Z8sem_waitP11MySemaphore>
    buffer[tail] = val;
    80006204:	0084b783          	ld	a5,8(s1)
    80006208:	0144a703          	lw	a4,20(s1)
    8000620c:	00271713          	slli	a4,a4,0x2
    80006210:	00e787b3          	add	a5,a5,a4
    80006214:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006218:	0144a783          	lw	a5,20(s1)
    8000621c:	0017879b          	addiw	a5,a5,1
    80006220:	0004a703          	lw	a4,0(s1)
    80006224:	02e7e7bb          	remw	a5,a5,a4
    80006228:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000622c:	0304b503          	ld	a0,48(s1)
    80006230:	ffffb097          	auipc	ra,0xffffb
    80006234:	110080e7          	jalr	272(ra) # 80001340 <_Z10sem_signalP11MySemaphore>

    sem_signal(itemAvailable);
    80006238:	0204b503          	ld	a0,32(s1)
    8000623c:	ffffb097          	auipc	ra,0xffffb
    80006240:	104080e7          	jalr	260(ra) # 80001340 <_Z10sem_signalP11MySemaphore>

}
    80006244:	01813083          	ld	ra,24(sp)
    80006248:	01013403          	ld	s0,16(sp)
    8000624c:	00813483          	ld	s1,8(sp)
    80006250:	00013903          	ld	s2,0(sp)
    80006254:	02010113          	addi	sp,sp,32
    80006258:	00008067          	ret

000000008000625c <_ZN6Buffer3getEv>:

int Buffer::get() {
    8000625c:	fe010113          	addi	sp,sp,-32
    80006260:	00113c23          	sd	ra,24(sp)
    80006264:	00813823          	sd	s0,16(sp)
    80006268:	00913423          	sd	s1,8(sp)
    8000626c:	01213023          	sd	s2,0(sp)
    80006270:	02010413          	addi	s0,sp,32
    80006274:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006278:	02053503          	ld	a0,32(a0)
    8000627c:	ffffb097          	auipc	ra,0xffffb
    80006280:	098080e7          	jalr	152(ra) # 80001314 <_Z8sem_waitP11MySemaphore>

    sem_wait(mutexHead);
    80006284:	0284b503          	ld	a0,40(s1)
    80006288:	ffffb097          	auipc	ra,0xffffb
    8000628c:	08c080e7          	jalr	140(ra) # 80001314 <_Z8sem_waitP11MySemaphore>

    int ret = buffer[head];
    80006290:	0084b703          	ld	a4,8(s1)
    80006294:	0104a783          	lw	a5,16(s1)
    80006298:	00279693          	slli	a3,a5,0x2
    8000629c:	00d70733          	add	a4,a4,a3
    800062a0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800062a4:	0017879b          	addiw	a5,a5,1
    800062a8:	0004a703          	lw	a4,0(s1)
    800062ac:	02e7e7bb          	remw	a5,a5,a4
    800062b0:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800062b4:	0284b503          	ld	a0,40(s1)
    800062b8:	ffffb097          	auipc	ra,0xffffb
    800062bc:	088080e7          	jalr	136(ra) # 80001340 <_Z10sem_signalP11MySemaphore>

    sem_signal(spaceAvailable);
    800062c0:	0184b503          	ld	a0,24(s1)
    800062c4:	ffffb097          	auipc	ra,0xffffb
    800062c8:	07c080e7          	jalr	124(ra) # 80001340 <_Z10sem_signalP11MySemaphore>

    return ret;
}
    800062cc:	00090513          	mv	a0,s2
    800062d0:	01813083          	ld	ra,24(sp)
    800062d4:	01013403          	ld	s0,16(sp)
    800062d8:	00813483          	ld	s1,8(sp)
    800062dc:	00013903          	ld	s2,0(sp)
    800062e0:	02010113          	addi	sp,sp,32
    800062e4:	00008067          	ret

00000000800062e8 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800062e8:	fe010113          	addi	sp,sp,-32
    800062ec:	00113c23          	sd	ra,24(sp)
    800062f0:	00813823          	sd	s0,16(sp)
    800062f4:	00913423          	sd	s1,8(sp)
    800062f8:	01213023          	sd	s2,0(sp)
    800062fc:	02010413          	addi	s0,sp,32
    80006300:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006304:	02853503          	ld	a0,40(a0)
    80006308:	ffffb097          	auipc	ra,0xffffb
    8000630c:	00c080e7          	jalr	12(ra) # 80001314 <_Z8sem_waitP11MySemaphore>
    sem_wait(mutexTail);
    80006310:	0304b503          	ld	a0,48(s1)
    80006314:	ffffb097          	auipc	ra,0xffffb
    80006318:	000080e7          	jalr	ra # 80001314 <_Z8sem_waitP11MySemaphore>

    if (tail >= head) {
    8000631c:	0144a783          	lw	a5,20(s1)
    80006320:	0104a903          	lw	s2,16(s1)
    80006324:	0327ce63          	blt	a5,s2,80006360 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006328:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    8000632c:	0304b503          	ld	a0,48(s1)
    80006330:	ffffb097          	auipc	ra,0xffffb
    80006334:	010080e7          	jalr	16(ra) # 80001340 <_Z10sem_signalP11MySemaphore>
    sem_signal(mutexHead);
    80006338:	0284b503          	ld	a0,40(s1)
    8000633c:	ffffb097          	auipc	ra,0xffffb
    80006340:	004080e7          	jalr	4(ra) # 80001340 <_Z10sem_signalP11MySemaphore>

    return ret;
}
    80006344:	00090513          	mv	a0,s2
    80006348:	01813083          	ld	ra,24(sp)
    8000634c:	01013403          	ld	s0,16(sp)
    80006350:	00813483          	ld	s1,8(sp)
    80006354:	00013903          	ld	s2,0(sp)
    80006358:	02010113          	addi	sp,sp,32
    8000635c:	00008067          	ret
        ret = cap - head + tail;
    80006360:	0004a703          	lw	a4,0(s1)
    80006364:	4127093b          	subw	s2,a4,s2
    80006368:	00f9093b          	addw	s2,s2,a5
    8000636c:	fc1ff06f          	j	8000632c <_ZN6Buffer6getCntEv+0x44>

0000000080006370 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006370:	fe010113          	addi	sp,sp,-32
    80006374:	00113c23          	sd	ra,24(sp)
    80006378:	00813823          	sd	s0,16(sp)
    8000637c:	00913423          	sd	s1,8(sp)
    80006380:	02010413          	addi	s0,sp,32
    80006384:	00050493          	mv	s1,a0
    putc('\n');
    80006388:	00a00513          	li	a0,10
    8000638c:	ffffb097          	auipc	ra,0xffffb
    80006390:	018080e7          	jalr	24(ra) # 800013a4 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006394:	00003517          	auipc	a0,0x3
    80006398:	02450513          	addi	a0,a0,36 # 800093b8 <CONSOLE_STATUS+0x3a8>
    8000639c:	fffff097          	auipc	ra,0xfffff
    800063a0:	e64080e7          	jalr	-412(ra) # 80005200 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800063a4:	00048513          	mv	a0,s1
    800063a8:	00000097          	auipc	ra,0x0
    800063ac:	f40080e7          	jalr	-192(ra) # 800062e8 <_ZN6Buffer6getCntEv>
    800063b0:	02a05c63          	blez	a0,800063e8 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800063b4:	0084b783          	ld	a5,8(s1)
    800063b8:	0104a703          	lw	a4,16(s1)
    800063bc:	00271713          	slli	a4,a4,0x2
    800063c0:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800063c4:	0007c503          	lbu	a0,0(a5)
    800063c8:	ffffb097          	auipc	ra,0xffffb
    800063cc:	fdc080e7          	jalr	-36(ra) # 800013a4 <_Z4putcc>
        head = (head + 1) % cap;
    800063d0:	0104a783          	lw	a5,16(s1)
    800063d4:	0017879b          	addiw	a5,a5,1
    800063d8:	0004a703          	lw	a4,0(s1)
    800063dc:	02e7e7bb          	remw	a5,a5,a4
    800063e0:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800063e4:	fc1ff06f          	j	800063a4 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800063e8:	02100513          	li	a0,33
    800063ec:	ffffb097          	auipc	ra,0xffffb
    800063f0:	fb8080e7          	jalr	-72(ra) # 800013a4 <_Z4putcc>
    putc('\n');
    800063f4:	00a00513          	li	a0,10
    800063f8:	ffffb097          	auipc	ra,0xffffb
    800063fc:	fac080e7          	jalr	-84(ra) # 800013a4 <_Z4putcc>
    mem_free(buffer);
    80006400:	0084b503          	ld	a0,8(s1)
    80006404:	ffffb097          	auipc	ra,0xffffb
    80006408:	d74080e7          	jalr	-652(ra) # 80001178 <_Z8mem_freePv>
    sem_close(itemAvailable);
    8000640c:	0204b503          	ld	a0,32(s1)
    80006410:	ffffb097          	auipc	ra,0xffffb
    80006414:	ed8080e7          	jalr	-296(ra) # 800012e8 <_Z9sem_closeP11MySemaphore>
    sem_close(spaceAvailable);
    80006418:	0184b503          	ld	a0,24(s1)
    8000641c:	ffffb097          	auipc	ra,0xffffb
    80006420:	ecc080e7          	jalr	-308(ra) # 800012e8 <_Z9sem_closeP11MySemaphore>
    sem_close(mutexTail);
    80006424:	0304b503          	ld	a0,48(s1)
    80006428:	ffffb097          	auipc	ra,0xffffb
    8000642c:	ec0080e7          	jalr	-320(ra) # 800012e8 <_Z9sem_closeP11MySemaphore>
    sem_close(mutexHead);
    80006430:	0284b503          	ld	a0,40(s1)
    80006434:	ffffb097          	auipc	ra,0xffffb
    80006438:	eb4080e7          	jalr	-332(ra) # 800012e8 <_Z9sem_closeP11MySemaphore>
}
    8000643c:	01813083          	ld	ra,24(sp)
    80006440:	01013403          	ld	s0,16(sp)
    80006444:	00813483          	ld	s1,8(sp)
    80006448:	02010113          	addi	sp,sp,32
    8000644c:	00008067          	ret

0000000080006450 <start>:
    80006450:	ff010113          	addi	sp,sp,-16
    80006454:	00813423          	sd	s0,8(sp)
    80006458:	01010413          	addi	s0,sp,16
    8000645c:	300027f3          	csrr	a5,mstatus
    80006460:	ffffe737          	lui	a4,0xffffe
    80006464:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1bdf>
    80006468:	00e7f7b3          	and	a5,a5,a4
    8000646c:	00001737          	lui	a4,0x1
    80006470:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006474:	00e7e7b3          	or	a5,a5,a4
    80006478:	30079073          	csrw	mstatus,a5
    8000647c:	00000797          	auipc	a5,0x0
    80006480:	16078793          	addi	a5,a5,352 # 800065dc <system_main>
    80006484:	34179073          	csrw	mepc,a5
    80006488:	00000793          	li	a5,0
    8000648c:	18079073          	csrw	satp,a5
    80006490:	000107b7          	lui	a5,0x10
    80006494:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006498:	30279073          	csrw	medeleg,a5
    8000649c:	30379073          	csrw	mideleg,a5
    800064a0:	104027f3          	csrr	a5,sie
    800064a4:	2227e793          	ori	a5,a5,546
    800064a8:	10479073          	csrw	sie,a5
    800064ac:	fff00793          	li	a5,-1
    800064b0:	00a7d793          	srli	a5,a5,0xa
    800064b4:	3b079073          	csrw	pmpaddr0,a5
    800064b8:	00f00793          	li	a5,15
    800064bc:	3a079073          	csrw	pmpcfg0,a5
    800064c0:	f14027f3          	csrr	a5,mhartid
    800064c4:	0200c737          	lui	a4,0x200c
    800064c8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800064cc:	0007869b          	sext.w	a3,a5
    800064d0:	00269713          	slli	a4,a3,0x2
    800064d4:	000f4637          	lui	a2,0xf4
    800064d8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800064dc:	00d70733          	add	a4,a4,a3
    800064e0:	0037979b          	slliw	a5,a5,0x3
    800064e4:	020046b7          	lui	a3,0x2004
    800064e8:	00d787b3          	add	a5,a5,a3
    800064ec:	00c585b3          	add	a1,a1,a2
    800064f0:	00371693          	slli	a3,a4,0x3
    800064f4:	00005717          	auipc	a4,0x5
    800064f8:	4cc70713          	addi	a4,a4,1228 # 8000b9c0 <timer_scratch>
    800064fc:	00b7b023          	sd	a1,0(a5)
    80006500:	00d70733          	add	a4,a4,a3
    80006504:	00f73c23          	sd	a5,24(a4)
    80006508:	02c73023          	sd	a2,32(a4)
    8000650c:	34071073          	csrw	mscratch,a4
    80006510:	00000797          	auipc	a5,0x0
    80006514:	6e078793          	addi	a5,a5,1760 # 80006bf0 <timervec>
    80006518:	30579073          	csrw	mtvec,a5
    8000651c:	300027f3          	csrr	a5,mstatus
    80006520:	0087e793          	ori	a5,a5,8
    80006524:	30079073          	csrw	mstatus,a5
    80006528:	304027f3          	csrr	a5,mie
    8000652c:	0807e793          	ori	a5,a5,128
    80006530:	30479073          	csrw	mie,a5
    80006534:	f14027f3          	csrr	a5,mhartid
    80006538:	0007879b          	sext.w	a5,a5
    8000653c:	00078213          	mv	tp,a5
    80006540:	30200073          	mret
    80006544:	00813403          	ld	s0,8(sp)
    80006548:	01010113          	addi	sp,sp,16
    8000654c:	00008067          	ret

0000000080006550 <timerinit>:
    80006550:	ff010113          	addi	sp,sp,-16
    80006554:	00813423          	sd	s0,8(sp)
    80006558:	01010413          	addi	s0,sp,16
    8000655c:	f14027f3          	csrr	a5,mhartid
    80006560:	0200c737          	lui	a4,0x200c
    80006564:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006568:	0007869b          	sext.w	a3,a5
    8000656c:	00269713          	slli	a4,a3,0x2
    80006570:	000f4637          	lui	a2,0xf4
    80006574:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006578:	00d70733          	add	a4,a4,a3
    8000657c:	0037979b          	slliw	a5,a5,0x3
    80006580:	020046b7          	lui	a3,0x2004
    80006584:	00d787b3          	add	a5,a5,a3
    80006588:	00c585b3          	add	a1,a1,a2
    8000658c:	00371693          	slli	a3,a4,0x3
    80006590:	00005717          	auipc	a4,0x5
    80006594:	43070713          	addi	a4,a4,1072 # 8000b9c0 <timer_scratch>
    80006598:	00b7b023          	sd	a1,0(a5)
    8000659c:	00d70733          	add	a4,a4,a3
    800065a0:	00f73c23          	sd	a5,24(a4)
    800065a4:	02c73023          	sd	a2,32(a4)
    800065a8:	34071073          	csrw	mscratch,a4
    800065ac:	00000797          	auipc	a5,0x0
    800065b0:	64478793          	addi	a5,a5,1604 # 80006bf0 <timervec>
    800065b4:	30579073          	csrw	mtvec,a5
    800065b8:	300027f3          	csrr	a5,mstatus
    800065bc:	0087e793          	ori	a5,a5,8
    800065c0:	30079073          	csrw	mstatus,a5
    800065c4:	304027f3          	csrr	a5,mie
    800065c8:	0807e793          	ori	a5,a5,128
    800065cc:	30479073          	csrw	mie,a5
    800065d0:	00813403          	ld	s0,8(sp)
    800065d4:	01010113          	addi	sp,sp,16
    800065d8:	00008067          	ret

00000000800065dc <system_main>:
    800065dc:	fe010113          	addi	sp,sp,-32
    800065e0:	00813823          	sd	s0,16(sp)
    800065e4:	00913423          	sd	s1,8(sp)
    800065e8:	00113c23          	sd	ra,24(sp)
    800065ec:	02010413          	addi	s0,sp,32
    800065f0:	00000097          	auipc	ra,0x0
    800065f4:	0c4080e7          	jalr	196(ra) # 800066b4 <cpuid>
    800065f8:	00005497          	auipc	s1,0x5
    800065fc:	2f848493          	addi	s1,s1,760 # 8000b8f0 <started>
    80006600:	02050263          	beqz	a0,80006624 <system_main+0x48>
    80006604:	0004a783          	lw	a5,0(s1)
    80006608:	0007879b          	sext.w	a5,a5
    8000660c:	fe078ce3          	beqz	a5,80006604 <system_main+0x28>
    80006610:	0ff0000f          	fence
    80006614:	00003517          	auipc	a0,0x3
    80006618:	07450513          	addi	a0,a0,116 # 80009688 <CONSOLE_STATUS+0x678>
    8000661c:	00001097          	auipc	ra,0x1
    80006620:	a70080e7          	jalr	-1424(ra) # 8000708c <panic>
    80006624:	00001097          	auipc	ra,0x1
    80006628:	9c4080e7          	jalr	-1596(ra) # 80006fe8 <consoleinit>
    8000662c:	00001097          	auipc	ra,0x1
    80006630:	150080e7          	jalr	336(ra) # 8000777c <printfinit>
    80006634:	00003517          	auipc	a0,0x3
    80006638:	edc50513          	addi	a0,a0,-292 # 80009510 <CONSOLE_STATUS+0x500>
    8000663c:	00001097          	auipc	ra,0x1
    80006640:	aac080e7          	jalr	-1364(ra) # 800070e8 <__printf>
    80006644:	00003517          	auipc	a0,0x3
    80006648:	01450513          	addi	a0,a0,20 # 80009658 <CONSOLE_STATUS+0x648>
    8000664c:	00001097          	auipc	ra,0x1
    80006650:	a9c080e7          	jalr	-1380(ra) # 800070e8 <__printf>
    80006654:	00003517          	auipc	a0,0x3
    80006658:	ebc50513          	addi	a0,a0,-324 # 80009510 <CONSOLE_STATUS+0x500>
    8000665c:	00001097          	auipc	ra,0x1
    80006660:	a8c080e7          	jalr	-1396(ra) # 800070e8 <__printf>
    80006664:	00001097          	auipc	ra,0x1
    80006668:	4a4080e7          	jalr	1188(ra) # 80007b08 <kinit>
    8000666c:	00000097          	auipc	ra,0x0
    80006670:	148080e7          	jalr	328(ra) # 800067b4 <trapinit>
    80006674:	00000097          	auipc	ra,0x0
    80006678:	16c080e7          	jalr	364(ra) # 800067e0 <trapinithart>
    8000667c:	00000097          	auipc	ra,0x0
    80006680:	5b4080e7          	jalr	1460(ra) # 80006c30 <plicinit>
    80006684:	00000097          	auipc	ra,0x0
    80006688:	5d4080e7          	jalr	1492(ra) # 80006c58 <plicinithart>
    8000668c:	00000097          	auipc	ra,0x0
    80006690:	078080e7          	jalr	120(ra) # 80006704 <userinit>
    80006694:	0ff0000f          	fence
    80006698:	00100793          	li	a5,1
    8000669c:	00003517          	auipc	a0,0x3
    800066a0:	fd450513          	addi	a0,a0,-44 # 80009670 <CONSOLE_STATUS+0x660>
    800066a4:	00f4a023          	sw	a5,0(s1)
    800066a8:	00001097          	auipc	ra,0x1
    800066ac:	a40080e7          	jalr	-1472(ra) # 800070e8 <__printf>
    800066b0:	0000006f          	j	800066b0 <system_main+0xd4>

00000000800066b4 <cpuid>:
    800066b4:	ff010113          	addi	sp,sp,-16
    800066b8:	00813423          	sd	s0,8(sp)
    800066bc:	01010413          	addi	s0,sp,16
    800066c0:	00020513          	mv	a0,tp
    800066c4:	00813403          	ld	s0,8(sp)
    800066c8:	0005051b          	sext.w	a0,a0
    800066cc:	01010113          	addi	sp,sp,16
    800066d0:	00008067          	ret

00000000800066d4 <mycpu>:
    800066d4:	ff010113          	addi	sp,sp,-16
    800066d8:	00813423          	sd	s0,8(sp)
    800066dc:	01010413          	addi	s0,sp,16
    800066e0:	00020793          	mv	a5,tp
    800066e4:	00813403          	ld	s0,8(sp)
    800066e8:	0007879b          	sext.w	a5,a5
    800066ec:	00779793          	slli	a5,a5,0x7
    800066f0:	00006517          	auipc	a0,0x6
    800066f4:	30050513          	addi	a0,a0,768 # 8000c9f0 <cpus>
    800066f8:	00f50533          	add	a0,a0,a5
    800066fc:	01010113          	addi	sp,sp,16
    80006700:	00008067          	ret

0000000080006704 <userinit>:
    80006704:	ff010113          	addi	sp,sp,-16
    80006708:	00813423          	sd	s0,8(sp)
    8000670c:	01010413          	addi	s0,sp,16
    80006710:	00813403          	ld	s0,8(sp)
    80006714:	01010113          	addi	sp,sp,16
    80006718:	ffffb317          	auipc	t1,0xffffb
    8000671c:	41830067          	jr	1048(t1) # 80001b30 <main>

0000000080006720 <either_copyout>:
    80006720:	ff010113          	addi	sp,sp,-16
    80006724:	00813023          	sd	s0,0(sp)
    80006728:	00113423          	sd	ra,8(sp)
    8000672c:	01010413          	addi	s0,sp,16
    80006730:	02051663          	bnez	a0,8000675c <either_copyout+0x3c>
    80006734:	00058513          	mv	a0,a1
    80006738:	00060593          	mv	a1,a2
    8000673c:	0006861b          	sext.w	a2,a3
    80006740:	00002097          	auipc	ra,0x2
    80006744:	c54080e7          	jalr	-940(ra) # 80008394 <__memmove>
    80006748:	00813083          	ld	ra,8(sp)
    8000674c:	00013403          	ld	s0,0(sp)
    80006750:	00000513          	li	a0,0
    80006754:	01010113          	addi	sp,sp,16
    80006758:	00008067          	ret
    8000675c:	00003517          	auipc	a0,0x3
    80006760:	f5450513          	addi	a0,a0,-172 # 800096b0 <CONSOLE_STATUS+0x6a0>
    80006764:	00001097          	auipc	ra,0x1
    80006768:	928080e7          	jalr	-1752(ra) # 8000708c <panic>

000000008000676c <either_copyin>:
    8000676c:	ff010113          	addi	sp,sp,-16
    80006770:	00813023          	sd	s0,0(sp)
    80006774:	00113423          	sd	ra,8(sp)
    80006778:	01010413          	addi	s0,sp,16
    8000677c:	02059463          	bnez	a1,800067a4 <either_copyin+0x38>
    80006780:	00060593          	mv	a1,a2
    80006784:	0006861b          	sext.w	a2,a3
    80006788:	00002097          	auipc	ra,0x2
    8000678c:	c0c080e7          	jalr	-1012(ra) # 80008394 <__memmove>
    80006790:	00813083          	ld	ra,8(sp)
    80006794:	00013403          	ld	s0,0(sp)
    80006798:	00000513          	li	a0,0
    8000679c:	01010113          	addi	sp,sp,16
    800067a0:	00008067          	ret
    800067a4:	00003517          	auipc	a0,0x3
    800067a8:	f3450513          	addi	a0,a0,-204 # 800096d8 <CONSOLE_STATUS+0x6c8>
    800067ac:	00001097          	auipc	ra,0x1
    800067b0:	8e0080e7          	jalr	-1824(ra) # 8000708c <panic>

00000000800067b4 <trapinit>:
    800067b4:	ff010113          	addi	sp,sp,-16
    800067b8:	00813423          	sd	s0,8(sp)
    800067bc:	01010413          	addi	s0,sp,16
    800067c0:	00813403          	ld	s0,8(sp)
    800067c4:	00003597          	auipc	a1,0x3
    800067c8:	f3c58593          	addi	a1,a1,-196 # 80009700 <CONSOLE_STATUS+0x6f0>
    800067cc:	00006517          	auipc	a0,0x6
    800067d0:	2a450513          	addi	a0,a0,676 # 8000ca70 <tickslock>
    800067d4:	01010113          	addi	sp,sp,16
    800067d8:	00001317          	auipc	t1,0x1
    800067dc:	5c030067          	jr	1472(t1) # 80007d98 <initlock>

00000000800067e0 <trapinithart>:
    800067e0:	ff010113          	addi	sp,sp,-16
    800067e4:	00813423          	sd	s0,8(sp)
    800067e8:	01010413          	addi	s0,sp,16
    800067ec:	00000797          	auipc	a5,0x0
    800067f0:	2f478793          	addi	a5,a5,756 # 80006ae0 <kernelvec>
    800067f4:	10579073          	csrw	stvec,a5
    800067f8:	00813403          	ld	s0,8(sp)
    800067fc:	01010113          	addi	sp,sp,16
    80006800:	00008067          	ret

0000000080006804 <usertrap>:
    80006804:	ff010113          	addi	sp,sp,-16
    80006808:	00813423          	sd	s0,8(sp)
    8000680c:	01010413          	addi	s0,sp,16
    80006810:	00813403          	ld	s0,8(sp)
    80006814:	01010113          	addi	sp,sp,16
    80006818:	00008067          	ret

000000008000681c <usertrapret>:
    8000681c:	ff010113          	addi	sp,sp,-16
    80006820:	00813423          	sd	s0,8(sp)
    80006824:	01010413          	addi	s0,sp,16
    80006828:	00813403          	ld	s0,8(sp)
    8000682c:	01010113          	addi	sp,sp,16
    80006830:	00008067          	ret

0000000080006834 <kerneltrap>:
    80006834:	fe010113          	addi	sp,sp,-32
    80006838:	00813823          	sd	s0,16(sp)
    8000683c:	00113c23          	sd	ra,24(sp)
    80006840:	00913423          	sd	s1,8(sp)
    80006844:	02010413          	addi	s0,sp,32
    80006848:	142025f3          	csrr	a1,scause
    8000684c:	100027f3          	csrr	a5,sstatus
    80006850:	0027f793          	andi	a5,a5,2
    80006854:	10079c63          	bnez	a5,8000696c <kerneltrap+0x138>
    80006858:	142027f3          	csrr	a5,scause
    8000685c:	0207ce63          	bltz	a5,80006898 <kerneltrap+0x64>
    80006860:	00003517          	auipc	a0,0x3
    80006864:	ee850513          	addi	a0,a0,-280 # 80009748 <CONSOLE_STATUS+0x738>
    80006868:	00001097          	auipc	ra,0x1
    8000686c:	880080e7          	jalr	-1920(ra) # 800070e8 <__printf>
    80006870:	141025f3          	csrr	a1,sepc
    80006874:	14302673          	csrr	a2,stval
    80006878:	00003517          	auipc	a0,0x3
    8000687c:	ee050513          	addi	a0,a0,-288 # 80009758 <CONSOLE_STATUS+0x748>
    80006880:	00001097          	auipc	ra,0x1
    80006884:	868080e7          	jalr	-1944(ra) # 800070e8 <__printf>
    80006888:	00003517          	auipc	a0,0x3
    8000688c:	ee850513          	addi	a0,a0,-280 # 80009770 <CONSOLE_STATUS+0x760>
    80006890:	00000097          	auipc	ra,0x0
    80006894:	7fc080e7          	jalr	2044(ra) # 8000708c <panic>
    80006898:	0ff7f713          	andi	a4,a5,255
    8000689c:	00900693          	li	a3,9
    800068a0:	04d70063          	beq	a4,a3,800068e0 <kerneltrap+0xac>
    800068a4:	fff00713          	li	a4,-1
    800068a8:	03f71713          	slli	a4,a4,0x3f
    800068ac:	00170713          	addi	a4,a4,1
    800068b0:	fae798e3          	bne	a5,a4,80006860 <kerneltrap+0x2c>
    800068b4:	00000097          	auipc	ra,0x0
    800068b8:	e00080e7          	jalr	-512(ra) # 800066b4 <cpuid>
    800068bc:	06050663          	beqz	a0,80006928 <kerneltrap+0xf4>
    800068c0:	144027f3          	csrr	a5,sip
    800068c4:	ffd7f793          	andi	a5,a5,-3
    800068c8:	14479073          	csrw	sip,a5
    800068cc:	01813083          	ld	ra,24(sp)
    800068d0:	01013403          	ld	s0,16(sp)
    800068d4:	00813483          	ld	s1,8(sp)
    800068d8:	02010113          	addi	sp,sp,32
    800068dc:	00008067          	ret
    800068e0:	00000097          	auipc	ra,0x0
    800068e4:	3c4080e7          	jalr	964(ra) # 80006ca4 <plic_claim>
    800068e8:	00a00793          	li	a5,10
    800068ec:	00050493          	mv	s1,a0
    800068f0:	06f50863          	beq	a0,a5,80006960 <kerneltrap+0x12c>
    800068f4:	fc050ce3          	beqz	a0,800068cc <kerneltrap+0x98>
    800068f8:	00050593          	mv	a1,a0
    800068fc:	00003517          	auipc	a0,0x3
    80006900:	e2c50513          	addi	a0,a0,-468 # 80009728 <CONSOLE_STATUS+0x718>
    80006904:	00000097          	auipc	ra,0x0
    80006908:	7e4080e7          	jalr	2020(ra) # 800070e8 <__printf>
    8000690c:	01013403          	ld	s0,16(sp)
    80006910:	01813083          	ld	ra,24(sp)
    80006914:	00048513          	mv	a0,s1
    80006918:	00813483          	ld	s1,8(sp)
    8000691c:	02010113          	addi	sp,sp,32
    80006920:	00000317          	auipc	t1,0x0
    80006924:	3bc30067          	jr	956(t1) # 80006cdc <plic_complete>
    80006928:	00006517          	auipc	a0,0x6
    8000692c:	14850513          	addi	a0,a0,328 # 8000ca70 <tickslock>
    80006930:	00001097          	auipc	ra,0x1
    80006934:	48c080e7          	jalr	1164(ra) # 80007dbc <acquire>
    80006938:	00005717          	auipc	a4,0x5
    8000693c:	fbc70713          	addi	a4,a4,-68 # 8000b8f4 <ticks>
    80006940:	00072783          	lw	a5,0(a4)
    80006944:	00006517          	auipc	a0,0x6
    80006948:	12c50513          	addi	a0,a0,300 # 8000ca70 <tickslock>
    8000694c:	0017879b          	addiw	a5,a5,1
    80006950:	00f72023          	sw	a5,0(a4)
    80006954:	00001097          	auipc	ra,0x1
    80006958:	534080e7          	jalr	1332(ra) # 80007e88 <release>
    8000695c:	f65ff06f          	j	800068c0 <kerneltrap+0x8c>
    80006960:	00001097          	auipc	ra,0x1
    80006964:	090080e7          	jalr	144(ra) # 800079f0 <uartintr>
    80006968:	fa5ff06f          	j	8000690c <kerneltrap+0xd8>
    8000696c:	00003517          	auipc	a0,0x3
    80006970:	d9c50513          	addi	a0,a0,-612 # 80009708 <CONSOLE_STATUS+0x6f8>
    80006974:	00000097          	auipc	ra,0x0
    80006978:	718080e7          	jalr	1816(ra) # 8000708c <panic>

000000008000697c <clockintr>:
    8000697c:	fe010113          	addi	sp,sp,-32
    80006980:	00813823          	sd	s0,16(sp)
    80006984:	00913423          	sd	s1,8(sp)
    80006988:	00113c23          	sd	ra,24(sp)
    8000698c:	02010413          	addi	s0,sp,32
    80006990:	00006497          	auipc	s1,0x6
    80006994:	0e048493          	addi	s1,s1,224 # 8000ca70 <tickslock>
    80006998:	00048513          	mv	a0,s1
    8000699c:	00001097          	auipc	ra,0x1
    800069a0:	420080e7          	jalr	1056(ra) # 80007dbc <acquire>
    800069a4:	00005717          	auipc	a4,0x5
    800069a8:	f5070713          	addi	a4,a4,-176 # 8000b8f4 <ticks>
    800069ac:	00072783          	lw	a5,0(a4)
    800069b0:	01013403          	ld	s0,16(sp)
    800069b4:	01813083          	ld	ra,24(sp)
    800069b8:	00048513          	mv	a0,s1
    800069bc:	0017879b          	addiw	a5,a5,1
    800069c0:	00813483          	ld	s1,8(sp)
    800069c4:	00f72023          	sw	a5,0(a4)
    800069c8:	02010113          	addi	sp,sp,32
    800069cc:	00001317          	auipc	t1,0x1
    800069d0:	4bc30067          	jr	1212(t1) # 80007e88 <release>

00000000800069d4 <devintr>:
    800069d4:	142027f3          	csrr	a5,scause
    800069d8:	00000513          	li	a0,0
    800069dc:	0007c463          	bltz	a5,800069e4 <devintr+0x10>
    800069e0:	00008067          	ret
    800069e4:	fe010113          	addi	sp,sp,-32
    800069e8:	00813823          	sd	s0,16(sp)
    800069ec:	00113c23          	sd	ra,24(sp)
    800069f0:	00913423          	sd	s1,8(sp)
    800069f4:	02010413          	addi	s0,sp,32
    800069f8:	0ff7f713          	andi	a4,a5,255
    800069fc:	00900693          	li	a3,9
    80006a00:	04d70c63          	beq	a4,a3,80006a58 <devintr+0x84>
    80006a04:	fff00713          	li	a4,-1
    80006a08:	03f71713          	slli	a4,a4,0x3f
    80006a0c:	00170713          	addi	a4,a4,1
    80006a10:	00e78c63          	beq	a5,a4,80006a28 <devintr+0x54>
    80006a14:	01813083          	ld	ra,24(sp)
    80006a18:	01013403          	ld	s0,16(sp)
    80006a1c:	00813483          	ld	s1,8(sp)
    80006a20:	02010113          	addi	sp,sp,32
    80006a24:	00008067          	ret
    80006a28:	00000097          	auipc	ra,0x0
    80006a2c:	c8c080e7          	jalr	-884(ra) # 800066b4 <cpuid>
    80006a30:	06050663          	beqz	a0,80006a9c <devintr+0xc8>
    80006a34:	144027f3          	csrr	a5,sip
    80006a38:	ffd7f793          	andi	a5,a5,-3
    80006a3c:	14479073          	csrw	sip,a5
    80006a40:	01813083          	ld	ra,24(sp)
    80006a44:	01013403          	ld	s0,16(sp)
    80006a48:	00813483          	ld	s1,8(sp)
    80006a4c:	00200513          	li	a0,2
    80006a50:	02010113          	addi	sp,sp,32
    80006a54:	00008067          	ret
    80006a58:	00000097          	auipc	ra,0x0
    80006a5c:	24c080e7          	jalr	588(ra) # 80006ca4 <plic_claim>
    80006a60:	00a00793          	li	a5,10
    80006a64:	00050493          	mv	s1,a0
    80006a68:	06f50663          	beq	a0,a5,80006ad4 <devintr+0x100>
    80006a6c:	00100513          	li	a0,1
    80006a70:	fa0482e3          	beqz	s1,80006a14 <devintr+0x40>
    80006a74:	00048593          	mv	a1,s1
    80006a78:	00003517          	auipc	a0,0x3
    80006a7c:	cb050513          	addi	a0,a0,-848 # 80009728 <CONSOLE_STATUS+0x718>
    80006a80:	00000097          	auipc	ra,0x0
    80006a84:	668080e7          	jalr	1640(ra) # 800070e8 <__printf>
    80006a88:	00048513          	mv	a0,s1
    80006a8c:	00000097          	auipc	ra,0x0
    80006a90:	250080e7          	jalr	592(ra) # 80006cdc <plic_complete>
    80006a94:	00100513          	li	a0,1
    80006a98:	f7dff06f          	j	80006a14 <devintr+0x40>
    80006a9c:	00006517          	auipc	a0,0x6
    80006aa0:	fd450513          	addi	a0,a0,-44 # 8000ca70 <tickslock>
    80006aa4:	00001097          	auipc	ra,0x1
    80006aa8:	318080e7          	jalr	792(ra) # 80007dbc <acquire>
    80006aac:	00005717          	auipc	a4,0x5
    80006ab0:	e4870713          	addi	a4,a4,-440 # 8000b8f4 <ticks>
    80006ab4:	00072783          	lw	a5,0(a4)
    80006ab8:	00006517          	auipc	a0,0x6
    80006abc:	fb850513          	addi	a0,a0,-72 # 8000ca70 <tickslock>
    80006ac0:	0017879b          	addiw	a5,a5,1
    80006ac4:	00f72023          	sw	a5,0(a4)
    80006ac8:	00001097          	auipc	ra,0x1
    80006acc:	3c0080e7          	jalr	960(ra) # 80007e88 <release>
    80006ad0:	f65ff06f          	j	80006a34 <devintr+0x60>
    80006ad4:	00001097          	auipc	ra,0x1
    80006ad8:	f1c080e7          	jalr	-228(ra) # 800079f0 <uartintr>
    80006adc:	fadff06f          	j	80006a88 <devintr+0xb4>

0000000080006ae0 <kernelvec>:
    80006ae0:	f0010113          	addi	sp,sp,-256
    80006ae4:	00113023          	sd	ra,0(sp)
    80006ae8:	00213423          	sd	sp,8(sp)
    80006aec:	00313823          	sd	gp,16(sp)
    80006af0:	00413c23          	sd	tp,24(sp)
    80006af4:	02513023          	sd	t0,32(sp)
    80006af8:	02613423          	sd	t1,40(sp)
    80006afc:	02713823          	sd	t2,48(sp)
    80006b00:	02813c23          	sd	s0,56(sp)
    80006b04:	04913023          	sd	s1,64(sp)
    80006b08:	04a13423          	sd	a0,72(sp)
    80006b0c:	04b13823          	sd	a1,80(sp)
    80006b10:	04c13c23          	sd	a2,88(sp)
    80006b14:	06d13023          	sd	a3,96(sp)
    80006b18:	06e13423          	sd	a4,104(sp)
    80006b1c:	06f13823          	sd	a5,112(sp)
    80006b20:	07013c23          	sd	a6,120(sp)
    80006b24:	09113023          	sd	a7,128(sp)
    80006b28:	09213423          	sd	s2,136(sp)
    80006b2c:	09313823          	sd	s3,144(sp)
    80006b30:	09413c23          	sd	s4,152(sp)
    80006b34:	0b513023          	sd	s5,160(sp)
    80006b38:	0b613423          	sd	s6,168(sp)
    80006b3c:	0b713823          	sd	s7,176(sp)
    80006b40:	0b813c23          	sd	s8,184(sp)
    80006b44:	0d913023          	sd	s9,192(sp)
    80006b48:	0da13423          	sd	s10,200(sp)
    80006b4c:	0db13823          	sd	s11,208(sp)
    80006b50:	0dc13c23          	sd	t3,216(sp)
    80006b54:	0fd13023          	sd	t4,224(sp)
    80006b58:	0fe13423          	sd	t5,232(sp)
    80006b5c:	0ff13823          	sd	t6,240(sp)
    80006b60:	cd5ff0ef          	jal	ra,80006834 <kerneltrap>
    80006b64:	00013083          	ld	ra,0(sp)
    80006b68:	00813103          	ld	sp,8(sp)
    80006b6c:	01013183          	ld	gp,16(sp)
    80006b70:	02013283          	ld	t0,32(sp)
    80006b74:	02813303          	ld	t1,40(sp)
    80006b78:	03013383          	ld	t2,48(sp)
    80006b7c:	03813403          	ld	s0,56(sp)
    80006b80:	04013483          	ld	s1,64(sp)
    80006b84:	04813503          	ld	a0,72(sp)
    80006b88:	05013583          	ld	a1,80(sp)
    80006b8c:	05813603          	ld	a2,88(sp)
    80006b90:	06013683          	ld	a3,96(sp)
    80006b94:	06813703          	ld	a4,104(sp)
    80006b98:	07013783          	ld	a5,112(sp)
    80006b9c:	07813803          	ld	a6,120(sp)
    80006ba0:	08013883          	ld	a7,128(sp)
    80006ba4:	08813903          	ld	s2,136(sp)
    80006ba8:	09013983          	ld	s3,144(sp)
    80006bac:	09813a03          	ld	s4,152(sp)
    80006bb0:	0a013a83          	ld	s5,160(sp)
    80006bb4:	0a813b03          	ld	s6,168(sp)
    80006bb8:	0b013b83          	ld	s7,176(sp)
    80006bbc:	0b813c03          	ld	s8,184(sp)
    80006bc0:	0c013c83          	ld	s9,192(sp)
    80006bc4:	0c813d03          	ld	s10,200(sp)
    80006bc8:	0d013d83          	ld	s11,208(sp)
    80006bcc:	0d813e03          	ld	t3,216(sp)
    80006bd0:	0e013e83          	ld	t4,224(sp)
    80006bd4:	0e813f03          	ld	t5,232(sp)
    80006bd8:	0f013f83          	ld	t6,240(sp)
    80006bdc:	10010113          	addi	sp,sp,256
    80006be0:	10200073          	sret
    80006be4:	00000013          	nop
    80006be8:	00000013          	nop
    80006bec:	00000013          	nop

0000000080006bf0 <timervec>:
    80006bf0:	34051573          	csrrw	a0,mscratch,a0
    80006bf4:	00b53023          	sd	a1,0(a0)
    80006bf8:	00c53423          	sd	a2,8(a0)
    80006bfc:	00d53823          	sd	a3,16(a0)
    80006c00:	01853583          	ld	a1,24(a0)
    80006c04:	02053603          	ld	a2,32(a0)
    80006c08:	0005b683          	ld	a3,0(a1)
    80006c0c:	00c686b3          	add	a3,a3,a2
    80006c10:	00d5b023          	sd	a3,0(a1)
    80006c14:	00200593          	li	a1,2
    80006c18:	14459073          	csrw	sip,a1
    80006c1c:	01053683          	ld	a3,16(a0)
    80006c20:	00853603          	ld	a2,8(a0)
    80006c24:	00053583          	ld	a1,0(a0)
    80006c28:	34051573          	csrrw	a0,mscratch,a0
    80006c2c:	30200073          	mret

0000000080006c30 <plicinit>:
    80006c30:	ff010113          	addi	sp,sp,-16
    80006c34:	00813423          	sd	s0,8(sp)
    80006c38:	01010413          	addi	s0,sp,16
    80006c3c:	00813403          	ld	s0,8(sp)
    80006c40:	0c0007b7          	lui	a5,0xc000
    80006c44:	00100713          	li	a4,1
    80006c48:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006c4c:	00e7a223          	sw	a4,4(a5)
    80006c50:	01010113          	addi	sp,sp,16
    80006c54:	00008067          	ret

0000000080006c58 <plicinithart>:
    80006c58:	ff010113          	addi	sp,sp,-16
    80006c5c:	00813023          	sd	s0,0(sp)
    80006c60:	00113423          	sd	ra,8(sp)
    80006c64:	01010413          	addi	s0,sp,16
    80006c68:	00000097          	auipc	ra,0x0
    80006c6c:	a4c080e7          	jalr	-1460(ra) # 800066b4 <cpuid>
    80006c70:	0085171b          	slliw	a4,a0,0x8
    80006c74:	0c0027b7          	lui	a5,0xc002
    80006c78:	00e787b3          	add	a5,a5,a4
    80006c7c:	40200713          	li	a4,1026
    80006c80:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006c84:	00813083          	ld	ra,8(sp)
    80006c88:	00013403          	ld	s0,0(sp)
    80006c8c:	00d5151b          	slliw	a0,a0,0xd
    80006c90:	0c2017b7          	lui	a5,0xc201
    80006c94:	00a78533          	add	a0,a5,a0
    80006c98:	00052023          	sw	zero,0(a0)
    80006c9c:	01010113          	addi	sp,sp,16
    80006ca0:	00008067          	ret

0000000080006ca4 <plic_claim>:
    80006ca4:	ff010113          	addi	sp,sp,-16
    80006ca8:	00813023          	sd	s0,0(sp)
    80006cac:	00113423          	sd	ra,8(sp)
    80006cb0:	01010413          	addi	s0,sp,16
    80006cb4:	00000097          	auipc	ra,0x0
    80006cb8:	a00080e7          	jalr	-1536(ra) # 800066b4 <cpuid>
    80006cbc:	00813083          	ld	ra,8(sp)
    80006cc0:	00013403          	ld	s0,0(sp)
    80006cc4:	00d5151b          	slliw	a0,a0,0xd
    80006cc8:	0c2017b7          	lui	a5,0xc201
    80006ccc:	00a78533          	add	a0,a5,a0
    80006cd0:	00452503          	lw	a0,4(a0)
    80006cd4:	01010113          	addi	sp,sp,16
    80006cd8:	00008067          	ret

0000000080006cdc <plic_complete>:
    80006cdc:	fe010113          	addi	sp,sp,-32
    80006ce0:	00813823          	sd	s0,16(sp)
    80006ce4:	00913423          	sd	s1,8(sp)
    80006ce8:	00113c23          	sd	ra,24(sp)
    80006cec:	02010413          	addi	s0,sp,32
    80006cf0:	00050493          	mv	s1,a0
    80006cf4:	00000097          	auipc	ra,0x0
    80006cf8:	9c0080e7          	jalr	-1600(ra) # 800066b4 <cpuid>
    80006cfc:	01813083          	ld	ra,24(sp)
    80006d00:	01013403          	ld	s0,16(sp)
    80006d04:	00d5179b          	slliw	a5,a0,0xd
    80006d08:	0c201737          	lui	a4,0xc201
    80006d0c:	00f707b3          	add	a5,a4,a5
    80006d10:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006d14:	00813483          	ld	s1,8(sp)
    80006d18:	02010113          	addi	sp,sp,32
    80006d1c:	00008067          	ret

0000000080006d20 <consolewrite>:
    80006d20:	fb010113          	addi	sp,sp,-80
    80006d24:	04813023          	sd	s0,64(sp)
    80006d28:	04113423          	sd	ra,72(sp)
    80006d2c:	02913c23          	sd	s1,56(sp)
    80006d30:	03213823          	sd	s2,48(sp)
    80006d34:	03313423          	sd	s3,40(sp)
    80006d38:	03413023          	sd	s4,32(sp)
    80006d3c:	01513c23          	sd	s5,24(sp)
    80006d40:	05010413          	addi	s0,sp,80
    80006d44:	06c05c63          	blez	a2,80006dbc <consolewrite+0x9c>
    80006d48:	00060993          	mv	s3,a2
    80006d4c:	00050a13          	mv	s4,a0
    80006d50:	00058493          	mv	s1,a1
    80006d54:	00000913          	li	s2,0
    80006d58:	fff00a93          	li	s5,-1
    80006d5c:	01c0006f          	j	80006d78 <consolewrite+0x58>
    80006d60:	fbf44503          	lbu	a0,-65(s0)
    80006d64:	0019091b          	addiw	s2,s2,1
    80006d68:	00148493          	addi	s1,s1,1
    80006d6c:	00001097          	auipc	ra,0x1
    80006d70:	a9c080e7          	jalr	-1380(ra) # 80007808 <uartputc>
    80006d74:	03298063          	beq	s3,s2,80006d94 <consolewrite+0x74>
    80006d78:	00048613          	mv	a2,s1
    80006d7c:	00100693          	li	a3,1
    80006d80:	000a0593          	mv	a1,s4
    80006d84:	fbf40513          	addi	a0,s0,-65
    80006d88:	00000097          	auipc	ra,0x0
    80006d8c:	9e4080e7          	jalr	-1564(ra) # 8000676c <either_copyin>
    80006d90:	fd5518e3          	bne	a0,s5,80006d60 <consolewrite+0x40>
    80006d94:	04813083          	ld	ra,72(sp)
    80006d98:	04013403          	ld	s0,64(sp)
    80006d9c:	03813483          	ld	s1,56(sp)
    80006da0:	02813983          	ld	s3,40(sp)
    80006da4:	02013a03          	ld	s4,32(sp)
    80006da8:	01813a83          	ld	s5,24(sp)
    80006dac:	00090513          	mv	a0,s2
    80006db0:	03013903          	ld	s2,48(sp)
    80006db4:	05010113          	addi	sp,sp,80
    80006db8:	00008067          	ret
    80006dbc:	00000913          	li	s2,0
    80006dc0:	fd5ff06f          	j	80006d94 <consolewrite+0x74>

0000000080006dc4 <consoleread>:
    80006dc4:	f9010113          	addi	sp,sp,-112
    80006dc8:	06813023          	sd	s0,96(sp)
    80006dcc:	04913c23          	sd	s1,88(sp)
    80006dd0:	05213823          	sd	s2,80(sp)
    80006dd4:	05313423          	sd	s3,72(sp)
    80006dd8:	05413023          	sd	s4,64(sp)
    80006ddc:	03513c23          	sd	s5,56(sp)
    80006de0:	03613823          	sd	s6,48(sp)
    80006de4:	03713423          	sd	s7,40(sp)
    80006de8:	03813023          	sd	s8,32(sp)
    80006dec:	06113423          	sd	ra,104(sp)
    80006df0:	01913c23          	sd	s9,24(sp)
    80006df4:	07010413          	addi	s0,sp,112
    80006df8:	00060b93          	mv	s7,a2
    80006dfc:	00050913          	mv	s2,a0
    80006e00:	00058c13          	mv	s8,a1
    80006e04:	00060b1b          	sext.w	s6,a2
    80006e08:	00006497          	auipc	s1,0x6
    80006e0c:	c9048493          	addi	s1,s1,-880 # 8000ca98 <cons>
    80006e10:	00400993          	li	s3,4
    80006e14:	fff00a13          	li	s4,-1
    80006e18:	00a00a93          	li	s5,10
    80006e1c:	05705e63          	blez	s7,80006e78 <consoleread+0xb4>
    80006e20:	09c4a703          	lw	a4,156(s1)
    80006e24:	0984a783          	lw	a5,152(s1)
    80006e28:	0007071b          	sext.w	a4,a4
    80006e2c:	08e78463          	beq	a5,a4,80006eb4 <consoleread+0xf0>
    80006e30:	07f7f713          	andi	a4,a5,127
    80006e34:	00e48733          	add	a4,s1,a4
    80006e38:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006e3c:	0017869b          	addiw	a3,a5,1
    80006e40:	08d4ac23          	sw	a3,152(s1)
    80006e44:	00070c9b          	sext.w	s9,a4
    80006e48:	0b370663          	beq	a4,s3,80006ef4 <consoleread+0x130>
    80006e4c:	00100693          	li	a3,1
    80006e50:	f9f40613          	addi	a2,s0,-97
    80006e54:	000c0593          	mv	a1,s8
    80006e58:	00090513          	mv	a0,s2
    80006e5c:	f8e40fa3          	sb	a4,-97(s0)
    80006e60:	00000097          	auipc	ra,0x0
    80006e64:	8c0080e7          	jalr	-1856(ra) # 80006720 <either_copyout>
    80006e68:	01450863          	beq	a0,s4,80006e78 <consoleread+0xb4>
    80006e6c:	001c0c13          	addi	s8,s8,1
    80006e70:	fffb8b9b          	addiw	s7,s7,-1
    80006e74:	fb5c94e3          	bne	s9,s5,80006e1c <consoleread+0x58>
    80006e78:	000b851b          	sext.w	a0,s7
    80006e7c:	06813083          	ld	ra,104(sp)
    80006e80:	06013403          	ld	s0,96(sp)
    80006e84:	05813483          	ld	s1,88(sp)
    80006e88:	05013903          	ld	s2,80(sp)
    80006e8c:	04813983          	ld	s3,72(sp)
    80006e90:	04013a03          	ld	s4,64(sp)
    80006e94:	03813a83          	ld	s5,56(sp)
    80006e98:	02813b83          	ld	s7,40(sp)
    80006e9c:	02013c03          	ld	s8,32(sp)
    80006ea0:	01813c83          	ld	s9,24(sp)
    80006ea4:	40ab053b          	subw	a0,s6,a0
    80006ea8:	03013b03          	ld	s6,48(sp)
    80006eac:	07010113          	addi	sp,sp,112
    80006eb0:	00008067          	ret
    80006eb4:	00001097          	auipc	ra,0x1
    80006eb8:	1d8080e7          	jalr	472(ra) # 8000808c <push_on>
    80006ebc:	0984a703          	lw	a4,152(s1)
    80006ec0:	09c4a783          	lw	a5,156(s1)
    80006ec4:	0007879b          	sext.w	a5,a5
    80006ec8:	fef70ce3          	beq	a4,a5,80006ec0 <consoleread+0xfc>
    80006ecc:	00001097          	auipc	ra,0x1
    80006ed0:	234080e7          	jalr	564(ra) # 80008100 <pop_on>
    80006ed4:	0984a783          	lw	a5,152(s1)
    80006ed8:	07f7f713          	andi	a4,a5,127
    80006edc:	00e48733          	add	a4,s1,a4
    80006ee0:	01874703          	lbu	a4,24(a4)
    80006ee4:	0017869b          	addiw	a3,a5,1
    80006ee8:	08d4ac23          	sw	a3,152(s1)
    80006eec:	00070c9b          	sext.w	s9,a4
    80006ef0:	f5371ee3          	bne	a4,s3,80006e4c <consoleread+0x88>
    80006ef4:	000b851b          	sext.w	a0,s7
    80006ef8:	f96bf2e3          	bgeu	s7,s6,80006e7c <consoleread+0xb8>
    80006efc:	08f4ac23          	sw	a5,152(s1)
    80006f00:	f7dff06f          	j	80006e7c <consoleread+0xb8>

0000000080006f04 <consputc>:
    80006f04:	10000793          	li	a5,256
    80006f08:	00f50663          	beq	a0,a5,80006f14 <consputc+0x10>
    80006f0c:	00001317          	auipc	t1,0x1
    80006f10:	9f430067          	jr	-1548(t1) # 80007900 <uartputc_sync>
    80006f14:	ff010113          	addi	sp,sp,-16
    80006f18:	00113423          	sd	ra,8(sp)
    80006f1c:	00813023          	sd	s0,0(sp)
    80006f20:	01010413          	addi	s0,sp,16
    80006f24:	00800513          	li	a0,8
    80006f28:	00001097          	auipc	ra,0x1
    80006f2c:	9d8080e7          	jalr	-1576(ra) # 80007900 <uartputc_sync>
    80006f30:	02000513          	li	a0,32
    80006f34:	00001097          	auipc	ra,0x1
    80006f38:	9cc080e7          	jalr	-1588(ra) # 80007900 <uartputc_sync>
    80006f3c:	00013403          	ld	s0,0(sp)
    80006f40:	00813083          	ld	ra,8(sp)
    80006f44:	00800513          	li	a0,8
    80006f48:	01010113          	addi	sp,sp,16
    80006f4c:	00001317          	auipc	t1,0x1
    80006f50:	9b430067          	jr	-1612(t1) # 80007900 <uartputc_sync>

0000000080006f54 <consoleintr>:
    80006f54:	fe010113          	addi	sp,sp,-32
    80006f58:	00813823          	sd	s0,16(sp)
    80006f5c:	00913423          	sd	s1,8(sp)
    80006f60:	01213023          	sd	s2,0(sp)
    80006f64:	00113c23          	sd	ra,24(sp)
    80006f68:	02010413          	addi	s0,sp,32
    80006f6c:	00006917          	auipc	s2,0x6
    80006f70:	b2c90913          	addi	s2,s2,-1236 # 8000ca98 <cons>
    80006f74:	00050493          	mv	s1,a0
    80006f78:	00090513          	mv	a0,s2
    80006f7c:	00001097          	auipc	ra,0x1
    80006f80:	e40080e7          	jalr	-448(ra) # 80007dbc <acquire>
    80006f84:	02048c63          	beqz	s1,80006fbc <consoleintr+0x68>
    80006f88:	0a092783          	lw	a5,160(s2)
    80006f8c:	09892703          	lw	a4,152(s2)
    80006f90:	07f00693          	li	a3,127
    80006f94:	40e7873b          	subw	a4,a5,a4
    80006f98:	02e6e263          	bltu	a3,a4,80006fbc <consoleintr+0x68>
    80006f9c:	00d00713          	li	a4,13
    80006fa0:	04e48063          	beq	s1,a4,80006fe0 <consoleintr+0x8c>
    80006fa4:	07f7f713          	andi	a4,a5,127
    80006fa8:	00e90733          	add	a4,s2,a4
    80006fac:	0017879b          	addiw	a5,a5,1
    80006fb0:	0af92023          	sw	a5,160(s2)
    80006fb4:	00970c23          	sb	s1,24(a4)
    80006fb8:	08f92e23          	sw	a5,156(s2)
    80006fbc:	01013403          	ld	s0,16(sp)
    80006fc0:	01813083          	ld	ra,24(sp)
    80006fc4:	00813483          	ld	s1,8(sp)
    80006fc8:	00013903          	ld	s2,0(sp)
    80006fcc:	00006517          	auipc	a0,0x6
    80006fd0:	acc50513          	addi	a0,a0,-1332 # 8000ca98 <cons>
    80006fd4:	02010113          	addi	sp,sp,32
    80006fd8:	00001317          	auipc	t1,0x1
    80006fdc:	eb030067          	jr	-336(t1) # 80007e88 <release>
    80006fe0:	00a00493          	li	s1,10
    80006fe4:	fc1ff06f          	j	80006fa4 <consoleintr+0x50>

0000000080006fe8 <consoleinit>:
    80006fe8:	fe010113          	addi	sp,sp,-32
    80006fec:	00113c23          	sd	ra,24(sp)
    80006ff0:	00813823          	sd	s0,16(sp)
    80006ff4:	00913423          	sd	s1,8(sp)
    80006ff8:	02010413          	addi	s0,sp,32
    80006ffc:	00006497          	auipc	s1,0x6
    80007000:	a9c48493          	addi	s1,s1,-1380 # 8000ca98 <cons>
    80007004:	00048513          	mv	a0,s1
    80007008:	00002597          	auipc	a1,0x2
    8000700c:	77858593          	addi	a1,a1,1912 # 80009780 <CONSOLE_STATUS+0x770>
    80007010:	00001097          	auipc	ra,0x1
    80007014:	d88080e7          	jalr	-632(ra) # 80007d98 <initlock>
    80007018:	00000097          	auipc	ra,0x0
    8000701c:	7ac080e7          	jalr	1964(ra) # 800077c4 <uartinit>
    80007020:	01813083          	ld	ra,24(sp)
    80007024:	01013403          	ld	s0,16(sp)
    80007028:	00000797          	auipc	a5,0x0
    8000702c:	d9c78793          	addi	a5,a5,-612 # 80006dc4 <consoleread>
    80007030:	0af4bc23          	sd	a5,184(s1)
    80007034:	00000797          	auipc	a5,0x0
    80007038:	cec78793          	addi	a5,a5,-788 # 80006d20 <consolewrite>
    8000703c:	0cf4b023          	sd	a5,192(s1)
    80007040:	00813483          	ld	s1,8(sp)
    80007044:	02010113          	addi	sp,sp,32
    80007048:	00008067          	ret

000000008000704c <console_read>:
    8000704c:	ff010113          	addi	sp,sp,-16
    80007050:	00813423          	sd	s0,8(sp)
    80007054:	01010413          	addi	s0,sp,16
    80007058:	00813403          	ld	s0,8(sp)
    8000705c:	00006317          	auipc	t1,0x6
    80007060:	af433303          	ld	t1,-1292(t1) # 8000cb50 <devsw+0x10>
    80007064:	01010113          	addi	sp,sp,16
    80007068:	00030067          	jr	t1

000000008000706c <console_write>:
    8000706c:	ff010113          	addi	sp,sp,-16
    80007070:	00813423          	sd	s0,8(sp)
    80007074:	01010413          	addi	s0,sp,16
    80007078:	00813403          	ld	s0,8(sp)
    8000707c:	00006317          	auipc	t1,0x6
    80007080:	adc33303          	ld	t1,-1316(t1) # 8000cb58 <devsw+0x18>
    80007084:	01010113          	addi	sp,sp,16
    80007088:	00030067          	jr	t1

000000008000708c <panic>:
    8000708c:	fe010113          	addi	sp,sp,-32
    80007090:	00113c23          	sd	ra,24(sp)
    80007094:	00813823          	sd	s0,16(sp)
    80007098:	00913423          	sd	s1,8(sp)
    8000709c:	02010413          	addi	s0,sp,32
    800070a0:	00050493          	mv	s1,a0
    800070a4:	00002517          	auipc	a0,0x2
    800070a8:	6e450513          	addi	a0,a0,1764 # 80009788 <CONSOLE_STATUS+0x778>
    800070ac:	00006797          	auipc	a5,0x6
    800070b0:	b407a623          	sw	zero,-1204(a5) # 8000cbf8 <pr+0x18>
    800070b4:	00000097          	auipc	ra,0x0
    800070b8:	034080e7          	jalr	52(ra) # 800070e8 <__printf>
    800070bc:	00048513          	mv	a0,s1
    800070c0:	00000097          	auipc	ra,0x0
    800070c4:	028080e7          	jalr	40(ra) # 800070e8 <__printf>
    800070c8:	00002517          	auipc	a0,0x2
    800070cc:	44850513          	addi	a0,a0,1096 # 80009510 <CONSOLE_STATUS+0x500>
    800070d0:	00000097          	auipc	ra,0x0
    800070d4:	018080e7          	jalr	24(ra) # 800070e8 <__printf>
    800070d8:	00100793          	li	a5,1
    800070dc:	00005717          	auipc	a4,0x5
    800070e0:	80f72e23          	sw	a5,-2020(a4) # 8000b8f8 <panicked>
    800070e4:	0000006f          	j	800070e4 <panic+0x58>

00000000800070e8 <__printf>:
    800070e8:	f3010113          	addi	sp,sp,-208
    800070ec:	08813023          	sd	s0,128(sp)
    800070f0:	07313423          	sd	s3,104(sp)
    800070f4:	09010413          	addi	s0,sp,144
    800070f8:	05813023          	sd	s8,64(sp)
    800070fc:	08113423          	sd	ra,136(sp)
    80007100:	06913c23          	sd	s1,120(sp)
    80007104:	07213823          	sd	s2,112(sp)
    80007108:	07413023          	sd	s4,96(sp)
    8000710c:	05513c23          	sd	s5,88(sp)
    80007110:	05613823          	sd	s6,80(sp)
    80007114:	05713423          	sd	s7,72(sp)
    80007118:	03913c23          	sd	s9,56(sp)
    8000711c:	03a13823          	sd	s10,48(sp)
    80007120:	03b13423          	sd	s11,40(sp)
    80007124:	00006317          	auipc	t1,0x6
    80007128:	abc30313          	addi	t1,t1,-1348 # 8000cbe0 <pr>
    8000712c:	01832c03          	lw	s8,24(t1)
    80007130:	00b43423          	sd	a1,8(s0)
    80007134:	00c43823          	sd	a2,16(s0)
    80007138:	00d43c23          	sd	a3,24(s0)
    8000713c:	02e43023          	sd	a4,32(s0)
    80007140:	02f43423          	sd	a5,40(s0)
    80007144:	03043823          	sd	a6,48(s0)
    80007148:	03143c23          	sd	a7,56(s0)
    8000714c:	00050993          	mv	s3,a0
    80007150:	4a0c1663          	bnez	s8,800075fc <__printf+0x514>
    80007154:	60098c63          	beqz	s3,8000776c <__printf+0x684>
    80007158:	0009c503          	lbu	a0,0(s3)
    8000715c:	00840793          	addi	a5,s0,8
    80007160:	f6f43c23          	sd	a5,-136(s0)
    80007164:	00000493          	li	s1,0
    80007168:	22050063          	beqz	a0,80007388 <__printf+0x2a0>
    8000716c:	00002a37          	lui	s4,0x2
    80007170:	00018ab7          	lui	s5,0x18
    80007174:	000f4b37          	lui	s6,0xf4
    80007178:	00989bb7          	lui	s7,0x989
    8000717c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007180:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007184:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007188:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000718c:	00148c9b          	addiw	s9,s1,1
    80007190:	02500793          	li	a5,37
    80007194:	01998933          	add	s2,s3,s9
    80007198:	38f51263          	bne	a0,a5,8000751c <__printf+0x434>
    8000719c:	00094783          	lbu	a5,0(s2)
    800071a0:	00078c9b          	sext.w	s9,a5
    800071a4:	1e078263          	beqz	a5,80007388 <__printf+0x2a0>
    800071a8:	0024849b          	addiw	s1,s1,2
    800071ac:	07000713          	li	a4,112
    800071b0:	00998933          	add	s2,s3,s1
    800071b4:	38e78a63          	beq	a5,a4,80007548 <__printf+0x460>
    800071b8:	20f76863          	bltu	a4,a5,800073c8 <__printf+0x2e0>
    800071bc:	42a78863          	beq	a5,a0,800075ec <__printf+0x504>
    800071c0:	06400713          	li	a4,100
    800071c4:	40e79663          	bne	a5,a4,800075d0 <__printf+0x4e8>
    800071c8:	f7843783          	ld	a5,-136(s0)
    800071cc:	0007a603          	lw	a2,0(a5)
    800071d0:	00878793          	addi	a5,a5,8
    800071d4:	f6f43c23          	sd	a5,-136(s0)
    800071d8:	42064a63          	bltz	a2,8000760c <__printf+0x524>
    800071dc:	00a00713          	li	a4,10
    800071e0:	02e677bb          	remuw	a5,a2,a4
    800071e4:	00002d97          	auipc	s11,0x2
    800071e8:	5ccd8d93          	addi	s11,s11,1484 # 800097b0 <digits>
    800071ec:	00900593          	li	a1,9
    800071f0:	0006051b          	sext.w	a0,a2
    800071f4:	00000c93          	li	s9,0
    800071f8:	02079793          	slli	a5,a5,0x20
    800071fc:	0207d793          	srli	a5,a5,0x20
    80007200:	00fd87b3          	add	a5,s11,a5
    80007204:	0007c783          	lbu	a5,0(a5)
    80007208:	02e656bb          	divuw	a3,a2,a4
    8000720c:	f8f40023          	sb	a5,-128(s0)
    80007210:	14c5d863          	bge	a1,a2,80007360 <__printf+0x278>
    80007214:	06300593          	li	a1,99
    80007218:	00100c93          	li	s9,1
    8000721c:	02e6f7bb          	remuw	a5,a3,a4
    80007220:	02079793          	slli	a5,a5,0x20
    80007224:	0207d793          	srli	a5,a5,0x20
    80007228:	00fd87b3          	add	a5,s11,a5
    8000722c:	0007c783          	lbu	a5,0(a5)
    80007230:	02e6d73b          	divuw	a4,a3,a4
    80007234:	f8f400a3          	sb	a5,-127(s0)
    80007238:	12a5f463          	bgeu	a1,a0,80007360 <__printf+0x278>
    8000723c:	00a00693          	li	a3,10
    80007240:	00900593          	li	a1,9
    80007244:	02d777bb          	remuw	a5,a4,a3
    80007248:	02079793          	slli	a5,a5,0x20
    8000724c:	0207d793          	srli	a5,a5,0x20
    80007250:	00fd87b3          	add	a5,s11,a5
    80007254:	0007c503          	lbu	a0,0(a5)
    80007258:	02d757bb          	divuw	a5,a4,a3
    8000725c:	f8a40123          	sb	a0,-126(s0)
    80007260:	48e5f263          	bgeu	a1,a4,800076e4 <__printf+0x5fc>
    80007264:	06300513          	li	a0,99
    80007268:	02d7f5bb          	remuw	a1,a5,a3
    8000726c:	02059593          	slli	a1,a1,0x20
    80007270:	0205d593          	srli	a1,a1,0x20
    80007274:	00bd85b3          	add	a1,s11,a1
    80007278:	0005c583          	lbu	a1,0(a1)
    8000727c:	02d7d7bb          	divuw	a5,a5,a3
    80007280:	f8b401a3          	sb	a1,-125(s0)
    80007284:	48e57263          	bgeu	a0,a4,80007708 <__printf+0x620>
    80007288:	3e700513          	li	a0,999
    8000728c:	02d7f5bb          	remuw	a1,a5,a3
    80007290:	02059593          	slli	a1,a1,0x20
    80007294:	0205d593          	srli	a1,a1,0x20
    80007298:	00bd85b3          	add	a1,s11,a1
    8000729c:	0005c583          	lbu	a1,0(a1)
    800072a0:	02d7d7bb          	divuw	a5,a5,a3
    800072a4:	f8b40223          	sb	a1,-124(s0)
    800072a8:	46e57663          	bgeu	a0,a4,80007714 <__printf+0x62c>
    800072ac:	02d7f5bb          	remuw	a1,a5,a3
    800072b0:	02059593          	slli	a1,a1,0x20
    800072b4:	0205d593          	srli	a1,a1,0x20
    800072b8:	00bd85b3          	add	a1,s11,a1
    800072bc:	0005c583          	lbu	a1,0(a1)
    800072c0:	02d7d7bb          	divuw	a5,a5,a3
    800072c4:	f8b402a3          	sb	a1,-123(s0)
    800072c8:	46ea7863          	bgeu	s4,a4,80007738 <__printf+0x650>
    800072cc:	02d7f5bb          	remuw	a1,a5,a3
    800072d0:	02059593          	slli	a1,a1,0x20
    800072d4:	0205d593          	srli	a1,a1,0x20
    800072d8:	00bd85b3          	add	a1,s11,a1
    800072dc:	0005c583          	lbu	a1,0(a1)
    800072e0:	02d7d7bb          	divuw	a5,a5,a3
    800072e4:	f8b40323          	sb	a1,-122(s0)
    800072e8:	3eeaf863          	bgeu	s5,a4,800076d8 <__printf+0x5f0>
    800072ec:	02d7f5bb          	remuw	a1,a5,a3
    800072f0:	02059593          	slli	a1,a1,0x20
    800072f4:	0205d593          	srli	a1,a1,0x20
    800072f8:	00bd85b3          	add	a1,s11,a1
    800072fc:	0005c583          	lbu	a1,0(a1)
    80007300:	02d7d7bb          	divuw	a5,a5,a3
    80007304:	f8b403a3          	sb	a1,-121(s0)
    80007308:	42eb7e63          	bgeu	s6,a4,80007744 <__printf+0x65c>
    8000730c:	02d7f5bb          	remuw	a1,a5,a3
    80007310:	02059593          	slli	a1,a1,0x20
    80007314:	0205d593          	srli	a1,a1,0x20
    80007318:	00bd85b3          	add	a1,s11,a1
    8000731c:	0005c583          	lbu	a1,0(a1)
    80007320:	02d7d7bb          	divuw	a5,a5,a3
    80007324:	f8b40423          	sb	a1,-120(s0)
    80007328:	42ebfc63          	bgeu	s7,a4,80007760 <__printf+0x678>
    8000732c:	02079793          	slli	a5,a5,0x20
    80007330:	0207d793          	srli	a5,a5,0x20
    80007334:	00fd8db3          	add	s11,s11,a5
    80007338:	000dc703          	lbu	a4,0(s11)
    8000733c:	00a00793          	li	a5,10
    80007340:	00900c93          	li	s9,9
    80007344:	f8e404a3          	sb	a4,-119(s0)
    80007348:	00065c63          	bgez	a2,80007360 <__printf+0x278>
    8000734c:	f9040713          	addi	a4,s0,-112
    80007350:	00f70733          	add	a4,a4,a5
    80007354:	02d00693          	li	a3,45
    80007358:	fed70823          	sb	a3,-16(a4)
    8000735c:	00078c93          	mv	s9,a5
    80007360:	f8040793          	addi	a5,s0,-128
    80007364:	01978cb3          	add	s9,a5,s9
    80007368:	f7f40d13          	addi	s10,s0,-129
    8000736c:	000cc503          	lbu	a0,0(s9)
    80007370:	fffc8c93          	addi	s9,s9,-1
    80007374:	00000097          	auipc	ra,0x0
    80007378:	b90080e7          	jalr	-1136(ra) # 80006f04 <consputc>
    8000737c:	ffac98e3          	bne	s9,s10,8000736c <__printf+0x284>
    80007380:	00094503          	lbu	a0,0(s2)
    80007384:	e00514e3          	bnez	a0,8000718c <__printf+0xa4>
    80007388:	1a0c1663          	bnez	s8,80007534 <__printf+0x44c>
    8000738c:	08813083          	ld	ra,136(sp)
    80007390:	08013403          	ld	s0,128(sp)
    80007394:	07813483          	ld	s1,120(sp)
    80007398:	07013903          	ld	s2,112(sp)
    8000739c:	06813983          	ld	s3,104(sp)
    800073a0:	06013a03          	ld	s4,96(sp)
    800073a4:	05813a83          	ld	s5,88(sp)
    800073a8:	05013b03          	ld	s6,80(sp)
    800073ac:	04813b83          	ld	s7,72(sp)
    800073b0:	04013c03          	ld	s8,64(sp)
    800073b4:	03813c83          	ld	s9,56(sp)
    800073b8:	03013d03          	ld	s10,48(sp)
    800073bc:	02813d83          	ld	s11,40(sp)
    800073c0:	0d010113          	addi	sp,sp,208
    800073c4:	00008067          	ret
    800073c8:	07300713          	li	a4,115
    800073cc:	1ce78a63          	beq	a5,a4,800075a0 <__printf+0x4b8>
    800073d0:	07800713          	li	a4,120
    800073d4:	1ee79e63          	bne	a5,a4,800075d0 <__printf+0x4e8>
    800073d8:	f7843783          	ld	a5,-136(s0)
    800073dc:	0007a703          	lw	a4,0(a5)
    800073e0:	00878793          	addi	a5,a5,8
    800073e4:	f6f43c23          	sd	a5,-136(s0)
    800073e8:	28074263          	bltz	a4,8000766c <__printf+0x584>
    800073ec:	00002d97          	auipc	s11,0x2
    800073f0:	3c4d8d93          	addi	s11,s11,964 # 800097b0 <digits>
    800073f4:	00f77793          	andi	a5,a4,15
    800073f8:	00fd87b3          	add	a5,s11,a5
    800073fc:	0007c683          	lbu	a3,0(a5)
    80007400:	00f00613          	li	a2,15
    80007404:	0007079b          	sext.w	a5,a4
    80007408:	f8d40023          	sb	a3,-128(s0)
    8000740c:	0047559b          	srliw	a1,a4,0x4
    80007410:	0047569b          	srliw	a3,a4,0x4
    80007414:	00000c93          	li	s9,0
    80007418:	0ee65063          	bge	a2,a4,800074f8 <__printf+0x410>
    8000741c:	00f6f693          	andi	a3,a3,15
    80007420:	00dd86b3          	add	a3,s11,a3
    80007424:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007428:	0087d79b          	srliw	a5,a5,0x8
    8000742c:	00100c93          	li	s9,1
    80007430:	f8d400a3          	sb	a3,-127(s0)
    80007434:	0cb67263          	bgeu	a2,a1,800074f8 <__printf+0x410>
    80007438:	00f7f693          	andi	a3,a5,15
    8000743c:	00dd86b3          	add	a3,s11,a3
    80007440:	0006c583          	lbu	a1,0(a3)
    80007444:	00f00613          	li	a2,15
    80007448:	0047d69b          	srliw	a3,a5,0x4
    8000744c:	f8b40123          	sb	a1,-126(s0)
    80007450:	0047d593          	srli	a1,a5,0x4
    80007454:	28f67e63          	bgeu	a2,a5,800076f0 <__printf+0x608>
    80007458:	00f6f693          	andi	a3,a3,15
    8000745c:	00dd86b3          	add	a3,s11,a3
    80007460:	0006c503          	lbu	a0,0(a3)
    80007464:	0087d813          	srli	a6,a5,0x8
    80007468:	0087d69b          	srliw	a3,a5,0x8
    8000746c:	f8a401a3          	sb	a0,-125(s0)
    80007470:	28b67663          	bgeu	a2,a1,800076fc <__printf+0x614>
    80007474:	00f6f693          	andi	a3,a3,15
    80007478:	00dd86b3          	add	a3,s11,a3
    8000747c:	0006c583          	lbu	a1,0(a3)
    80007480:	00c7d513          	srli	a0,a5,0xc
    80007484:	00c7d69b          	srliw	a3,a5,0xc
    80007488:	f8b40223          	sb	a1,-124(s0)
    8000748c:	29067a63          	bgeu	a2,a6,80007720 <__printf+0x638>
    80007490:	00f6f693          	andi	a3,a3,15
    80007494:	00dd86b3          	add	a3,s11,a3
    80007498:	0006c583          	lbu	a1,0(a3)
    8000749c:	0107d813          	srli	a6,a5,0x10
    800074a0:	0107d69b          	srliw	a3,a5,0x10
    800074a4:	f8b402a3          	sb	a1,-123(s0)
    800074a8:	28a67263          	bgeu	a2,a0,8000772c <__printf+0x644>
    800074ac:	00f6f693          	andi	a3,a3,15
    800074b0:	00dd86b3          	add	a3,s11,a3
    800074b4:	0006c683          	lbu	a3,0(a3)
    800074b8:	0147d79b          	srliw	a5,a5,0x14
    800074bc:	f8d40323          	sb	a3,-122(s0)
    800074c0:	21067663          	bgeu	a2,a6,800076cc <__printf+0x5e4>
    800074c4:	02079793          	slli	a5,a5,0x20
    800074c8:	0207d793          	srli	a5,a5,0x20
    800074cc:	00fd8db3          	add	s11,s11,a5
    800074d0:	000dc683          	lbu	a3,0(s11)
    800074d4:	00800793          	li	a5,8
    800074d8:	00700c93          	li	s9,7
    800074dc:	f8d403a3          	sb	a3,-121(s0)
    800074e0:	00075c63          	bgez	a4,800074f8 <__printf+0x410>
    800074e4:	f9040713          	addi	a4,s0,-112
    800074e8:	00f70733          	add	a4,a4,a5
    800074ec:	02d00693          	li	a3,45
    800074f0:	fed70823          	sb	a3,-16(a4)
    800074f4:	00078c93          	mv	s9,a5
    800074f8:	f8040793          	addi	a5,s0,-128
    800074fc:	01978cb3          	add	s9,a5,s9
    80007500:	f7f40d13          	addi	s10,s0,-129
    80007504:	000cc503          	lbu	a0,0(s9)
    80007508:	fffc8c93          	addi	s9,s9,-1
    8000750c:	00000097          	auipc	ra,0x0
    80007510:	9f8080e7          	jalr	-1544(ra) # 80006f04 <consputc>
    80007514:	ff9d18e3          	bne	s10,s9,80007504 <__printf+0x41c>
    80007518:	0100006f          	j	80007528 <__printf+0x440>
    8000751c:	00000097          	auipc	ra,0x0
    80007520:	9e8080e7          	jalr	-1560(ra) # 80006f04 <consputc>
    80007524:	000c8493          	mv	s1,s9
    80007528:	00094503          	lbu	a0,0(s2)
    8000752c:	c60510e3          	bnez	a0,8000718c <__printf+0xa4>
    80007530:	e40c0ee3          	beqz	s8,8000738c <__printf+0x2a4>
    80007534:	00005517          	auipc	a0,0x5
    80007538:	6ac50513          	addi	a0,a0,1708 # 8000cbe0 <pr>
    8000753c:	00001097          	auipc	ra,0x1
    80007540:	94c080e7          	jalr	-1716(ra) # 80007e88 <release>
    80007544:	e49ff06f          	j	8000738c <__printf+0x2a4>
    80007548:	f7843783          	ld	a5,-136(s0)
    8000754c:	03000513          	li	a0,48
    80007550:	01000d13          	li	s10,16
    80007554:	00878713          	addi	a4,a5,8
    80007558:	0007bc83          	ld	s9,0(a5)
    8000755c:	f6e43c23          	sd	a4,-136(s0)
    80007560:	00000097          	auipc	ra,0x0
    80007564:	9a4080e7          	jalr	-1628(ra) # 80006f04 <consputc>
    80007568:	07800513          	li	a0,120
    8000756c:	00000097          	auipc	ra,0x0
    80007570:	998080e7          	jalr	-1640(ra) # 80006f04 <consputc>
    80007574:	00002d97          	auipc	s11,0x2
    80007578:	23cd8d93          	addi	s11,s11,572 # 800097b0 <digits>
    8000757c:	03ccd793          	srli	a5,s9,0x3c
    80007580:	00fd87b3          	add	a5,s11,a5
    80007584:	0007c503          	lbu	a0,0(a5)
    80007588:	fffd0d1b          	addiw	s10,s10,-1
    8000758c:	004c9c93          	slli	s9,s9,0x4
    80007590:	00000097          	auipc	ra,0x0
    80007594:	974080e7          	jalr	-1676(ra) # 80006f04 <consputc>
    80007598:	fe0d12e3          	bnez	s10,8000757c <__printf+0x494>
    8000759c:	f8dff06f          	j	80007528 <__printf+0x440>
    800075a0:	f7843783          	ld	a5,-136(s0)
    800075a4:	0007bc83          	ld	s9,0(a5)
    800075a8:	00878793          	addi	a5,a5,8
    800075ac:	f6f43c23          	sd	a5,-136(s0)
    800075b0:	000c9a63          	bnez	s9,800075c4 <__printf+0x4dc>
    800075b4:	1080006f          	j	800076bc <__printf+0x5d4>
    800075b8:	001c8c93          	addi	s9,s9,1
    800075bc:	00000097          	auipc	ra,0x0
    800075c0:	948080e7          	jalr	-1720(ra) # 80006f04 <consputc>
    800075c4:	000cc503          	lbu	a0,0(s9)
    800075c8:	fe0518e3          	bnez	a0,800075b8 <__printf+0x4d0>
    800075cc:	f5dff06f          	j	80007528 <__printf+0x440>
    800075d0:	02500513          	li	a0,37
    800075d4:	00000097          	auipc	ra,0x0
    800075d8:	930080e7          	jalr	-1744(ra) # 80006f04 <consputc>
    800075dc:	000c8513          	mv	a0,s9
    800075e0:	00000097          	auipc	ra,0x0
    800075e4:	924080e7          	jalr	-1756(ra) # 80006f04 <consputc>
    800075e8:	f41ff06f          	j	80007528 <__printf+0x440>
    800075ec:	02500513          	li	a0,37
    800075f0:	00000097          	auipc	ra,0x0
    800075f4:	914080e7          	jalr	-1772(ra) # 80006f04 <consputc>
    800075f8:	f31ff06f          	j	80007528 <__printf+0x440>
    800075fc:	00030513          	mv	a0,t1
    80007600:	00000097          	auipc	ra,0x0
    80007604:	7bc080e7          	jalr	1980(ra) # 80007dbc <acquire>
    80007608:	b4dff06f          	j	80007154 <__printf+0x6c>
    8000760c:	40c0053b          	negw	a0,a2
    80007610:	00a00713          	li	a4,10
    80007614:	02e576bb          	remuw	a3,a0,a4
    80007618:	00002d97          	auipc	s11,0x2
    8000761c:	198d8d93          	addi	s11,s11,408 # 800097b0 <digits>
    80007620:	ff700593          	li	a1,-9
    80007624:	02069693          	slli	a3,a3,0x20
    80007628:	0206d693          	srli	a3,a3,0x20
    8000762c:	00dd86b3          	add	a3,s11,a3
    80007630:	0006c683          	lbu	a3,0(a3)
    80007634:	02e557bb          	divuw	a5,a0,a4
    80007638:	f8d40023          	sb	a3,-128(s0)
    8000763c:	10b65e63          	bge	a2,a1,80007758 <__printf+0x670>
    80007640:	06300593          	li	a1,99
    80007644:	02e7f6bb          	remuw	a3,a5,a4
    80007648:	02069693          	slli	a3,a3,0x20
    8000764c:	0206d693          	srli	a3,a3,0x20
    80007650:	00dd86b3          	add	a3,s11,a3
    80007654:	0006c683          	lbu	a3,0(a3)
    80007658:	02e7d73b          	divuw	a4,a5,a4
    8000765c:	00200793          	li	a5,2
    80007660:	f8d400a3          	sb	a3,-127(s0)
    80007664:	bca5ece3          	bltu	a1,a0,8000723c <__printf+0x154>
    80007668:	ce5ff06f          	j	8000734c <__printf+0x264>
    8000766c:	40e007bb          	negw	a5,a4
    80007670:	00002d97          	auipc	s11,0x2
    80007674:	140d8d93          	addi	s11,s11,320 # 800097b0 <digits>
    80007678:	00f7f693          	andi	a3,a5,15
    8000767c:	00dd86b3          	add	a3,s11,a3
    80007680:	0006c583          	lbu	a1,0(a3)
    80007684:	ff100613          	li	a2,-15
    80007688:	0047d69b          	srliw	a3,a5,0x4
    8000768c:	f8b40023          	sb	a1,-128(s0)
    80007690:	0047d59b          	srliw	a1,a5,0x4
    80007694:	0ac75e63          	bge	a4,a2,80007750 <__printf+0x668>
    80007698:	00f6f693          	andi	a3,a3,15
    8000769c:	00dd86b3          	add	a3,s11,a3
    800076a0:	0006c603          	lbu	a2,0(a3)
    800076a4:	00f00693          	li	a3,15
    800076a8:	0087d79b          	srliw	a5,a5,0x8
    800076ac:	f8c400a3          	sb	a2,-127(s0)
    800076b0:	d8b6e4e3          	bltu	a3,a1,80007438 <__printf+0x350>
    800076b4:	00200793          	li	a5,2
    800076b8:	e2dff06f          	j	800074e4 <__printf+0x3fc>
    800076bc:	00002c97          	auipc	s9,0x2
    800076c0:	0d4c8c93          	addi	s9,s9,212 # 80009790 <CONSOLE_STATUS+0x780>
    800076c4:	02800513          	li	a0,40
    800076c8:	ef1ff06f          	j	800075b8 <__printf+0x4d0>
    800076cc:	00700793          	li	a5,7
    800076d0:	00600c93          	li	s9,6
    800076d4:	e0dff06f          	j	800074e0 <__printf+0x3f8>
    800076d8:	00700793          	li	a5,7
    800076dc:	00600c93          	li	s9,6
    800076e0:	c69ff06f          	j	80007348 <__printf+0x260>
    800076e4:	00300793          	li	a5,3
    800076e8:	00200c93          	li	s9,2
    800076ec:	c5dff06f          	j	80007348 <__printf+0x260>
    800076f0:	00300793          	li	a5,3
    800076f4:	00200c93          	li	s9,2
    800076f8:	de9ff06f          	j	800074e0 <__printf+0x3f8>
    800076fc:	00400793          	li	a5,4
    80007700:	00300c93          	li	s9,3
    80007704:	dddff06f          	j	800074e0 <__printf+0x3f8>
    80007708:	00400793          	li	a5,4
    8000770c:	00300c93          	li	s9,3
    80007710:	c39ff06f          	j	80007348 <__printf+0x260>
    80007714:	00500793          	li	a5,5
    80007718:	00400c93          	li	s9,4
    8000771c:	c2dff06f          	j	80007348 <__printf+0x260>
    80007720:	00500793          	li	a5,5
    80007724:	00400c93          	li	s9,4
    80007728:	db9ff06f          	j	800074e0 <__printf+0x3f8>
    8000772c:	00600793          	li	a5,6
    80007730:	00500c93          	li	s9,5
    80007734:	dadff06f          	j	800074e0 <__printf+0x3f8>
    80007738:	00600793          	li	a5,6
    8000773c:	00500c93          	li	s9,5
    80007740:	c09ff06f          	j	80007348 <__printf+0x260>
    80007744:	00800793          	li	a5,8
    80007748:	00700c93          	li	s9,7
    8000774c:	bfdff06f          	j	80007348 <__printf+0x260>
    80007750:	00100793          	li	a5,1
    80007754:	d91ff06f          	j	800074e4 <__printf+0x3fc>
    80007758:	00100793          	li	a5,1
    8000775c:	bf1ff06f          	j	8000734c <__printf+0x264>
    80007760:	00900793          	li	a5,9
    80007764:	00800c93          	li	s9,8
    80007768:	be1ff06f          	j	80007348 <__printf+0x260>
    8000776c:	00002517          	auipc	a0,0x2
    80007770:	02c50513          	addi	a0,a0,44 # 80009798 <CONSOLE_STATUS+0x788>
    80007774:	00000097          	auipc	ra,0x0
    80007778:	918080e7          	jalr	-1768(ra) # 8000708c <panic>

000000008000777c <printfinit>:
    8000777c:	fe010113          	addi	sp,sp,-32
    80007780:	00813823          	sd	s0,16(sp)
    80007784:	00913423          	sd	s1,8(sp)
    80007788:	00113c23          	sd	ra,24(sp)
    8000778c:	02010413          	addi	s0,sp,32
    80007790:	00005497          	auipc	s1,0x5
    80007794:	45048493          	addi	s1,s1,1104 # 8000cbe0 <pr>
    80007798:	00048513          	mv	a0,s1
    8000779c:	00002597          	auipc	a1,0x2
    800077a0:	00c58593          	addi	a1,a1,12 # 800097a8 <CONSOLE_STATUS+0x798>
    800077a4:	00000097          	auipc	ra,0x0
    800077a8:	5f4080e7          	jalr	1524(ra) # 80007d98 <initlock>
    800077ac:	01813083          	ld	ra,24(sp)
    800077b0:	01013403          	ld	s0,16(sp)
    800077b4:	0004ac23          	sw	zero,24(s1)
    800077b8:	00813483          	ld	s1,8(sp)
    800077bc:	02010113          	addi	sp,sp,32
    800077c0:	00008067          	ret

00000000800077c4 <uartinit>:
    800077c4:	ff010113          	addi	sp,sp,-16
    800077c8:	00813423          	sd	s0,8(sp)
    800077cc:	01010413          	addi	s0,sp,16
    800077d0:	100007b7          	lui	a5,0x10000
    800077d4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800077d8:	f8000713          	li	a4,-128
    800077dc:	00e781a3          	sb	a4,3(a5)
    800077e0:	00300713          	li	a4,3
    800077e4:	00e78023          	sb	a4,0(a5)
    800077e8:	000780a3          	sb	zero,1(a5)
    800077ec:	00e781a3          	sb	a4,3(a5)
    800077f0:	00700693          	li	a3,7
    800077f4:	00d78123          	sb	a3,2(a5)
    800077f8:	00e780a3          	sb	a4,1(a5)
    800077fc:	00813403          	ld	s0,8(sp)
    80007800:	01010113          	addi	sp,sp,16
    80007804:	00008067          	ret

0000000080007808 <uartputc>:
    80007808:	00004797          	auipc	a5,0x4
    8000780c:	0f07a783          	lw	a5,240(a5) # 8000b8f8 <panicked>
    80007810:	00078463          	beqz	a5,80007818 <uartputc+0x10>
    80007814:	0000006f          	j	80007814 <uartputc+0xc>
    80007818:	fd010113          	addi	sp,sp,-48
    8000781c:	02813023          	sd	s0,32(sp)
    80007820:	00913c23          	sd	s1,24(sp)
    80007824:	01213823          	sd	s2,16(sp)
    80007828:	01313423          	sd	s3,8(sp)
    8000782c:	02113423          	sd	ra,40(sp)
    80007830:	03010413          	addi	s0,sp,48
    80007834:	00004917          	auipc	s2,0x4
    80007838:	0cc90913          	addi	s2,s2,204 # 8000b900 <uart_tx_r>
    8000783c:	00093783          	ld	a5,0(s2)
    80007840:	00004497          	auipc	s1,0x4
    80007844:	0c848493          	addi	s1,s1,200 # 8000b908 <uart_tx_w>
    80007848:	0004b703          	ld	a4,0(s1)
    8000784c:	02078693          	addi	a3,a5,32
    80007850:	00050993          	mv	s3,a0
    80007854:	02e69c63          	bne	a3,a4,8000788c <uartputc+0x84>
    80007858:	00001097          	auipc	ra,0x1
    8000785c:	834080e7          	jalr	-1996(ra) # 8000808c <push_on>
    80007860:	00093783          	ld	a5,0(s2)
    80007864:	0004b703          	ld	a4,0(s1)
    80007868:	02078793          	addi	a5,a5,32
    8000786c:	00e79463          	bne	a5,a4,80007874 <uartputc+0x6c>
    80007870:	0000006f          	j	80007870 <uartputc+0x68>
    80007874:	00001097          	auipc	ra,0x1
    80007878:	88c080e7          	jalr	-1908(ra) # 80008100 <pop_on>
    8000787c:	00093783          	ld	a5,0(s2)
    80007880:	0004b703          	ld	a4,0(s1)
    80007884:	02078693          	addi	a3,a5,32
    80007888:	fce688e3          	beq	a3,a4,80007858 <uartputc+0x50>
    8000788c:	01f77693          	andi	a3,a4,31
    80007890:	00005597          	auipc	a1,0x5
    80007894:	37058593          	addi	a1,a1,880 # 8000cc00 <uart_tx_buf>
    80007898:	00d586b3          	add	a3,a1,a3
    8000789c:	00170713          	addi	a4,a4,1
    800078a0:	01368023          	sb	s3,0(a3)
    800078a4:	00e4b023          	sd	a4,0(s1)
    800078a8:	10000637          	lui	a2,0x10000
    800078ac:	02f71063          	bne	a4,a5,800078cc <uartputc+0xc4>
    800078b0:	0340006f          	j	800078e4 <uartputc+0xdc>
    800078b4:	00074703          	lbu	a4,0(a4)
    800078b8:	00f93023          	sd	a5,0(s2)
    800078bc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800078c0:	00093783          	ld	a5,0(s2)
    800078c4:	0004b703          	ld	a4,0(s1)
    800078c8:	00f70e63          	beq	a4,a5,800078e4 <uartputc+0xdc>
    800078cc:	00564683          	lbu	a3,5(a2)
    800078d0:	01f7f713          	andi	a4,a5,31
    800078d4:	00e58733          	add	a4,a1,a4
    800078d8:	0206f693          	andi	a3,a3,32
    800078dc:	00178793          	addi	a5,a5,1
    800078e0:	fc069ae3          	bnez	a3,800078b4 <uartputc+0xac>
    800078e4:	02813083          	ld	ra,40(sp)
    800078e8:	02013403          	ld	s0,32(sp)
    800078ec:	01813483          	ld	s1,24(sp)
    800078f0:	01013903          	ld	s2,16(sp)
    800078f4:	00813983          	ld	s3,8(sp)
    800078f8:	03010113          	addi	sp,sp,48
    800078fc:	00008067          	ret

0000000080007900 <uartputc_sync>:
    80007900:	ff010113          	addi	sp,sp,-16
    80007904:	00813423          	sd	s0,8(sp)
    80007908:	01010413          	addi	s0,sp,16
    8000790c:	00004717          	auipc	a4,0x4
    80007910:	fec72703          	lw	a4,-20(a4) # 8000b8f8 <panicked>
    80007914:	02071663          	bnez	a4,80007940 <uartputc_sync+0x40>
    80007918:	00050793          	mv	a5,a0
    8000791c:	100006b7          	lui	a3,0x10000
    80007920:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007924:	02077713          	andi	a4,a4,32
    80007928:	fe070ce3          	beqz	a4,80007920 <uartputc_sync+0x20>
    8000792c:	0ff7f793          	andi	a5,a5,255
    80007930:	00f68023          	sb	a5,0(a3)
    80007934:	00813403          	ld	s0,8(sp)
    80007938:	01010113          	addi	sp,sp,16
    8000793c:	00008067          	ret
    80007940:	0000006f          	j	80007940 <uartputc_sync+0x40>

0000000080007944 <uartstart>:
    80007944:	ff010113          	addi	sp,sp,-16
    80007948:	00813423          	sd	s0,8(sp)
    8000794c:	01010413          	addi	s0,sp,16
    80007950:	00004617          	auipc	a2,0x4
    80007954:	fb060613          	addi	a2,a2,-80 # 8000b900 <uart_tx_r>
    80007958:	00004517          	auipc	a0,0x4
    8000795c:	fb050513          	addi	a0,a0,-80 # 8000b908 <uart_tx_w>
    80007960:	00063783          	ld	a5,0(a2)
    80007964:	00053703          	ld	a4,0(a0)
    80007968:	04f70263          	beq	a4,a5,800079ac <uartstart+0x68>
    8000796c:	100005b7          	lui	a1,0x10000
    80007970:	00005817          	auipc	a6,0x5
    80007974:	29080813          	addi	a6,a6,656 # 8000cc00 <uart_tx_buf>
    80007978:	01c0006f          	j	80007994 <uartstart+0x50>
    8000797c:	0006c703          	lbu	a4,0(a3)
    80007980:	00f63023          	sd	a5,0(a2)
    80007984:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007988:	00063783          	ld	a5,0(a2)
    8000798c:	00053703          	ld	a4,0(a0)
    80007990:	00f70e63          	beq	a4,a5,800079ac <uartstart+0x68>
    80007994:	01f7f713          	andi	a4,a5,31
    80007998:	00e806b3          	add	a3,a6,a4
    8000799c:	0055c703          	lbu	a4,5(a1)
    800079a0:	00178793          	addi	a5,a5,1
    800079a4:	02077713          	andi	a4,a4,32
    800079a8:	fc071ae3          	bnez	a4,8000797c <uartstart+0x38>
    800079ac:	00813403          	ld	s0,8(sp)
    800079b0:	01010113          	addi	sp,sp,16
    800079b4:	00008067          	ret

00000000800079b8 <uartgetc>:
    800079b8:	ff010113          	addi	sp,sp,-16
    800079bc:	00813423          	sd	s0,8(sp)
    800079c0:	01010413          	addi	s0,sp,16
    800079c4:	10000737          	lui	a4,0x10000
    800079c8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800079cc:	0017f793          	andi	a5,a5,1
    800079d0:	00078c63          	beqz	a5,800079e8 <uartgetc+0x30>
    800079d4:	00074503          	lbu	a0,0(a4)
    800079d8:	0ff57513          	andi	a0,a0,255
    800079dc:	00813403          	ld	s0,8(sp)
    800079e0:	01010113          	addi	sp,sp,16
    800079e4:	00008067          	ret
    800079e8:	fff00513          	li	a0,-1
    800079ec:	ff1ff06f          	j	800079dc <uartgetc+0x24>

00000000800079f0 <uartintr>:
    800079f0:	100007b7          	lui	a5,0x10000
    800079f4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800079f8:	0017f793          	andi	a5,a5,1
    800079fc:	0a078463          	beqz	a5,80007aa4 <uartintr+0xb4>
    80007a00:	fe010113          	addi	sp,sp,-32
    80007a04:	00813823          	sd	s0,16(sp)
    80007a08:	00913423          	sd	s1,8(sp)
    80007a0c:	00113c23          	sd	ra,24(sp)
    80007a10:	02010413          	addi	s0,sp,32
    80007a14:	100004b7          	lui	s1,0x10000
    80007a18:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007a1c:	0ff57513          	andi	a0,a0,255
    80007a20:	fffff097          	auipc	ra,0xfffff
    80007a24:	534080e7          	jalr	1332(ra) # 80006f54 <consoleintr>
    80007a28:	0054c783          	lbu	a5,5(s1)
    80007a2c:	0017f793          	andi	a5,a5,1
    80007a30:	fe0794e3          	bnez	a5,80007a18 <uartintr+0x28>
    80007a34:	00004617          	auipc	a2,0x4
    80007a38:	ecc60613          	addi	a2,a2,-308 # 8000b900 <uart_tx_r>
    80007a3c:	00004517          	auipc	a0,0x4
    80007a40:	ecc50513          	addi	a0,a0,-308 # 8000b908 <uart_tx_w>
    80007a44:	00063783          	ld	a5,0(a2)
    80007a48:	00053703          	ld	a4,0(a0)
    80007a4c:	04f70263          	beq	a4,a5,80007a90 <uartintr+0xa0>
    80007a50:	100005b7          	lui	a1,0x10000
    80007a54:	00005817          	auipc	a6,0x5
    80007a58:	1ac80813          	addi	a6,a6,428 # 8000cc00 <uart_tx_buf>
    80007a5c:	01c0006f          	j	80007a78 <uartintr+0x88>
    80007a60:	0006c703          	lbu	a4,0(a3)
    80007a64:	00f63023          	sd	a5,0(a2)
    80007a68:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007a6c:	00063783          	ld	a5,0(a2)
    80007a70:	00053703          	ld	a4,0(a0)
    80007a74:	00f70e63          	beq	a4,a5,80007a90 <uartintr+0xa0>
    80007a78:	01f7f713          	andi	a4,a5,31
    80007a7c:	00e806b3          	add	a3,a6,a4
    80007a80:	0055c703          	lbu	a4,5(a1)
    80007a84:	00178793          	addi	a5,a5,1
    80007a88:	02077713          	andi	a4,a4,32
    80007a8c:	fc071ae3          	bnez	a4,80007a60 <uartintr+0x70>
    80007a90:	01813083          	ld	ra,24(sp)
    80007a94:	01013403          	ld	s0,16(sp)
    80007a98:	00813483          	ld	s1,8(sp)
    80007a9c:	02010113          	addi	sp,sp,32
    80007aa0:	00008067          	ret
    80007aa4:	00004617          	auipc	a2,0x4
    80007aa8:	e5c60613          	addi	a2,a2,-420 # 8000b900 <uart_tx_r>
    80007aac:	00004517          	auipc	a0,0x4
    80007ab0:	e5c50513          	addi	a0,a0,-420 # 8000b908 <uart_tx_w>
    80007ab4:	00063783          	ld	a5,0(a2)
    80007ab8:	00053703          	ld	a4,0(a0)
    80007abc:	04f70263          	beq	a4,a5,80007b00 <uartintr+0x110>
    80007ac0:	100005b7          	lui	a1,0x10000
    80007ac4:	00005817          	auipc	a6,0x5
    80007ac8:	13c80813          	addi	a6,a6,316 # 8000cc00 <uart_tx_buf>
    80007acc:	01c0006f          	j	80007ae8 <uartintr+0xf8>
    80007ad0:	0006c703          	lbu	a4,0(a3)
    80007ad4:	00f63023          	sd	a5,0(a2)
    80007ad8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007adc:	00063783          	ld	a5,0(a2)
    80007ae0:	00053703          	ld	a4,0(a0)
    80007ae4:	02f70063          	beq	a4,a5,80007b04 <uartintr+0x114>
    80007ae8:	01f7f713          	andi	a4,a5,31
    80007aec:	00e806b3          	add	a3,a6,a4
    80007af0:	0055c703          	lbu	a4,5(a1)
    80007af4:	00178793          	addi	a5,a5,1
    80007af8:	02077713          	andi	a4,a4,32
    80007afc:	fc071ae3          	bnez	a4,80007ad0 <uartintr+0xe0>
    80007b00:	00008067          	ret
    80007b04:	00008067          	ret

0000000080007b08 <kinit>:
    80007b08:	fc010113          	addi	sp,sp,-64
    80007b0c:	02913423          	sd	s1,40(sp)
    80007b10:	fffff7b7          	lui	a5,0xfffff
    80007b14:	00006497          	auipc	s1,0x6
    80007b18:	10b48493          	addi	s1,s1,267 # 8000dc1f <end+0xfff>
    80007b1c:	02813823          	sd	s0,48(sp)
    80007b20:	01313c23          	sd	s3,24(sp)
    80007b24:	00f4f4b3          	and	s1,s1,a5
    80007b28:	02113c23          	sd	ra,56(sp)
    80007b2c:	03213023          	sd	s2,32(sp)
    80007b30:	01413823          	sd	s4,16(sp)
    80007b34:	01513423          	sd	s5,8(sp)
    80007b38:	04010413          	addi	s0,sp,64
    80007b3c:	000017b7          	lui	a5,0x1
    80007b40:	01100993          	li	s3,17
    80007b44:	00f487b3          	add	a5,s1,a5
    80007b48:	01b99993          	slli	s3,s3,0x1b
    80007b4c:	06f9e063          	bltu	s3,a5,80007bac <kinit+0xa4>
    80007b50:	00005a97          	auipc	s5,0x5
    80007b54:	0d0a8a93          	addi	s5,s5,208 # 8000cc20 <end>
    80007b58:	0754ec63          	bltu	s1,s5,80007bd0 <kinit+0xc8>
    80007b5c:	0734fa63          	bgeu	s1,s3,80007bd0 <kinit+0xc8>
    80007b60:	00088a37          	lui	s4,0x88
    80007b64:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007b68:	00004917          	auipc	s2,0x4
    80007b6c:	da890913          	addi	s2,s2,-600 # 8000b910 <kmem>
    80007b70:	00ca1a13          	slli	s4,s4,0xc
    80007b74:	0140006f          	j	80007b88 <kinit+0x80>
    80007b78:	000017b7          	lui	a5,0x1
    80007b7c:	00f484b3          	add	s1,s1,a5
    80007b80:	0554e863          	bltu	s1,s5,80007bd0 <kinit+0xc8>
    80007b84:	0534f663          	bgeu	s1,s3,80007bd0 <kinit+0xc8>
    80007b88:	00001637          	lui	a2,0x1
    80007b8c:	00100593          	li	a1,1
    80007b90:	00048513          	mv	a0,s1
    80007b94:	00000097          	auipc	ra,0x0
    80007b98:	5e4080e7          	jalr	1508(ra) # 80008178 <__memset>
    80007b9c:	00093783          	ld	a5,0(s2)
    80007ba0:	00f4b023          	sd	a5,0(s1)
    80007ba4:	00993023          	sd	s1,0(s2)
    80007ba8:	fd4498e3          	bne	s1,s4,80007b78 <kinit+0x70>
    80007bac:	03813083          	ld	ra,56(sp)
    80007bb0:	03013403          	ld	s0,48(sp)
    80007bb4:	02813483          	ld	s1,40(sp)
    80007bb8:	02013903          	ld	s2,32(sp)
    80007bbc:	01813983          	ld	s3,24(sp)
    80007bc0:	01013a03          	ld	s4,16(sp)
    80007bc4:	00813a83          	ld	s5,8(sp)
    80007bc8:	04010113          	addi	sp,sp,64
    80007bcc:	00008067          	ret
    80007bd0:	00002517          	auipc	a0,0x2
    80007bd4:	bf850513          	addi	a0,a0,-1032 # 800097c8 <digits+0x18>
    80007bd8:	fffff097          	auipc	ra,0xfffff
    80007bdc:	4b4080e7          	jalr	1204(ra) # 8000708c <panic>

0000000080007be0 <freerange>:
    80007be0:	fc010113          	addi	sp,sp,-64
    80007be4:	000017b7          	lui	a5,0x1
    80007be8:	02913423          	sd	s1,40(sp)
    80007bec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007bf0:	009504b3          	add	s1,a0,s1
    80007bf4:	fffff537          	lui	a0,0xfffff
    80007bf8:	02813823          	sd	s0,48(sp)
    80007bfc:	02113c23          	sd	ra,56(sp)
    80007c00:	03213023          	sd	s2,32(sp)
    80007c04:	01313c23          	sd	s3,24(sp)
    80007c08:	01413823          	sd	s4,16(sp)
    80007c0c:	01513423          	sd	s5,8(sp)
    80007c10:	01613023          	sd	s6,0(sp)
    80007c14:	04010413          	addi	s0,sp,64
    80007c18:	00a4f4b3          	and	s1,s1,a0
    80007c1c:	00f487b3          	add	a5,s1,a5
    80007c20:	06f5e463          	bltu	a1,a5,80007c88 <freerange+0xa8>
    80007c24:	00005a97          	auipc	s5,0x5
    80007c28:	ffca8a93          	addi	s5,s5,-4 # 8000cc20 <end>
    80007c2c:	0954e263          	bltu	s1,s5,80007cb0 <freerange+0xd0>
    80007c30:	01100993          	li	s3,17
    80007c34:	01b99993          	slli	s3,s3,0x1b
    80007c38:	0734fc63          	bgeu	s1,s3,80007cb0 <freerange+0xd0>
    80007c3c:	00058a13          	mv	s4,a1
    80007c40:	00004917          	auipc	s2,0x4
    80007c44:	cd090913          	addi	s2,s2,-816 # 8000b910 <kmem>
    80007c48:	00002b37          	lui	s6,0x2
    80007c4c:	0140006f          	j	80007c60 <freerange+0x80>
    80007c50:	000017b7          	lui	a5,0x1
    80007c54:	00f484b3          	add	s1,s1,a5
    80007c58:	0554ec63          	bltu	s1,s5,80007cb0 <freerange+0xd0>
    80007c5c:	0534fa63          	bgeu	s1,s3,80007cb0 <freerange+0xd0>
    80007c60:	00001637          	lui	a2,0x1
    80007c64:	00100593          	li	a1,1
    80007c68:	00048513          	mv	a0,s1
    80007c6c:	00000097          	auipc	ra,0x0
    80007c70:	50c080e7          	jalr	1292(ra) # 80008178 <__memset>
    80007c74:	00093703          	ld	a4,0(s2)
    80007c78:	016487b3          	add	a5,s1,s6
    80007c7c:	00e4b023          	sd	a4,0(s1)
    80007c80:	00993023          	sd	s1,0(s2)
    80007c84:	fcfa76e3          	bgeu	s4,a5,80007c50 <freerange+0x70>
    80007c88:	03813083          	ld	ra,56(sp)
    80007c8c:	03013403          	ld	s0,48(sp)
    80007c90:	02813483          	ld	s1,40(sp)
    80007c94:	02013903          	ld	s2,32(sp)
    80007c98:	01813983          	ld	s3,24(sp)
    80007c9c:	01013a03          	ld	s4,16(sp)
    80007ca0:	00813a83          	ld	s5,8(sp)
    80007ca4:	00013b03          	ld	s6,0(sp)
    80007ca8:	04010113          	addi	sp,sp,64
    80007cac:	00008067          	ret
    80007cb0:	00002517          	auipc	a0,0x2
    80007cb4:	b1850513          	addi	a0,a0,-1256 # 800097c8 <digits+0x18>
    80007cb8:	fffff097          	auipc	ra,0xfffff
    80007cbc:	3d4080e7          	jalr	980(ra) # 8000708c <panic>

0000000080007cc0 <kfree>:
    80007cc0:	fe010113          	addi	sp,sp,-32
    80007cc4:	00813823          	sd	s0,16(sp)
    80007cc8:	00113c23          	sd	ra,24(sp)
    80007ccc:	00913423          	sd	s1,8(sp)
    80007cd0:	02010413          	addi	s0,sp,32
    80007cd4:	03451793          	slli	a5,a0,0x34
    80007cd8:	04079c63          	bnez	a5,80007d30 <kfree+0x70>
    80007cdc:	00005797          	auipc	a5,0x5
    80007ce0:	f4478793          	addi	a5,a5,-188 # 8000cc20 <end>
    80007ce4:	00050493          	mv	s1,a0
    80007ce8:	04f56463          	bltu	a0,a5,80007d30 <kfree+0x70>
    80007cec:	01100793          	li	a5,17
    80007cf0:	01b79793          	slli	a5,a5,0x1b
    80007cf4:	02f57e63          	bgeu	a0,a5,80007d30 <kfree+0x70>
    80007cf8:	00001637          	lui	a2,0x1
    80007cfc:	00100593          	li	a1,1
    80007d00:	00000097          	auipc	ra,0x0
    80007d04:	478080e7          	jalr	1144(ra) # 80008178 <__memset>
    80007d08:	00004797          	auipc	a5,0x4
    80007d0c:	c0878793          	addi	a5,a5,-1016 # 8000b910 <kmem>
    80007d10:	0007b703          	ld	a4,0(a5)
    80007d14:	01813083          	ld	ra,24(sp)
    80007d18:	01013403          	ld	s0,16(sp)
    80007d1c:	00e4b023          	sd	a4,0(s1)
    80007d20:	0097b023          	sd	s1,0(a5)
    80007d24:	00813483          	ld	s1,8(sp)
    80007d28:	02010113          	addi	sp,sp,32
    80007d2c:	00008067          	ret
    80007d30:	00002517          	auipc	a0,0x2
    80007d34:	a9850513          	addi	a0,a0,-1384 # 800097c8 <digits+0x18>
    80007d38:	fffff097          	auipc	ra,0xfffff
    80007d3c:	354080e7          	jalr	852(ra) # 8000708c <panic>

0000000080007d40 <kalloc>:
    80007d40:	fe010113          	addi	sp,sp,-32
    80007d44:	00813823          	sd	s0,16(sp)
    80007d48:	00913423          	sd	s1,8(sp)
    80007d4c:	00113c23          	sd	ra,24(sp)
    80007d50:	02010413          	addi	s0,sp,32
    80007d54:	00004797          	auipc	a5,0x4
    80007d58:	bbc78793          	addi	a5,a5,-1092 # 8000b910 <kmem>
    80007d5c:	0007b483          	ld	s1,0(a5)
    80007d60:	02048063          	beqz	s1,80007d80 <kalloc+0x40>
    80007d64:	0004b703          	ld	a4,0(s1)
    80007d68:	00001637          	lui	a2,0x1
    80007d6c:	00500593          	li	a1,5
    80007d70:	00048513          	mv	a0,s1
    80007d74:	00e7b023          	sd	a4,0(a5)
    80007d78:	00000097          	auipc	ra,0x0
    80007d7c:	400080e7          	jalr	1024(ra) # 80008178 <__memset>
    80007d80:	01813083          	ld	ra,24(sp)
    80007d84:	01013403          	ld	s0,16(sp)
    80007d88:	00048513          	mv	a0,s1
    80007d8c:	00813483          	ld	s1,8(sp)
    80007d90:	02010113          	addi	sp,sp,32
    80007d94:	00008067          	ret

0000000080007d98 <initlock>:
    80007d98:	ff010113          	addi	sp,sp,-16
    80007d9c:	00813423          	sd	s0,8(sp)
    80007da0:	01010413          	addi	s0,sp,16
    80007da4:	00813403          	ld	s0,8(sp)
    80007da8:	00b53423          	sd	a1,8(a0)
    80007dac:	00052023          	sw	zero,0(a0)
    80007db0:	00053823          	sd	zero,16(a0)
    80007db4:	01010113          	addi	sp,sp,16
    80007db8:	00008067          	ret

0000000080007dbc <acquire>:
    80007dbc:	fe010113          	addi	sp,sp,-32
    80007dc0:	00813823          	sd	s0,16(sp)
    80007dc4:	00913423          	sd	s1,8(sp)
    80007dc8:	00113c23          	sd	ra,24(sp)
    80007dcc:	01213023          	sd	s2,0(sp)
    80007dd0:	02010413          	addi	s0,sp,32
    80007dd4:	00050493          	mv	s1,a0
    80007dd8:	10002973          	csrr	s2,sstatus
    80007ddc:	100027f3          	csrr	a5,sstatus
    80007de0:	ffd7f793          	andi	a5,a5,-3
    80007de4:	10079073          	csrw	sstatus,a5
    80007de8:	fffff097          	auipc	ra,0xfffff
    80007dec:	8ec080e7          	jalr	-1812(ra) # 800066d4 <mycpu>
    80007df0:	07852783          	lw	a5,120(a0)
    80007df4:	06078e63          	beqz	a5,80007e70 <acquire+0xb4>
    80007df8:	fffff097          	auipc	ra,0xfffff
    80007dfc:	8dc080e7          	jalr	-1828(ra) # 800066d4 <mycpu>
    80007e00:	07852783          	lw	a5,120(a0)
    80007e04:	0004a703          	lw	a4,0(s1)
    80007e08:	0017879b          	addiw	a5,a5,1
    80007e0c:	06f52c23          	sw	a5,120(a0)
    80007e10:	04071063          	bnez	a4,80007e50 <acquire+0x94>
    80007e14:	00100713          	li	a4,1
    80007e18:	00070793          	mv	a5,a4
    80007e1c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007e20:	0007879b          	sext.w	a5,a5
    80007e24:	fe079ae3          	bnez	a5,80007e18 <acquire+0x5c>
    80007e28:	0ff0000f          	fence
    80007e2c:	fffff097          	auipc	ra,0xfffff
    80007e30:	8a8080e7          	jalr	-1880(ra) # 800066d4 <mycpu>
    80007e34:	01813083          	ld	ra,24(sp)
    80007e38:	01013403          	ld	s0,16(sp)
    80007e3c:	00a4b823          	sd	a0,16(s1)
    80007e40:	00013903          	ld	s2,0(sp)
    80007e44:	00813483          	ld	s1,8(sp)
    80007e48:	02010113          	addi	sp,sp,32
    80007e4c:	00008067          	ret
    80007e50:	0104b903          	ld	s2,16(s1)
    80007e54:	fffff097          	auipc	ra,0xfffff
    80007e58:	880080e7          	jalr	-1920(ra) # 800066d4 <mycpu>
    80007e5c:	faa91ce3          	bne	s2,a0,80007e14 <acquire+0x58>
    80007e60:	00002517          	auipc	a0,0x2
    80007e64:	97050513          	addi	a0,a0,-1680 # 800097d0 <digits+0x20>
    80007e68:	fffff097          	auipc	ra,0xfffff
    80007e6c:	224080e7          	jalr	548(ra) # 8000708c <panic>
    80007e70:	00195913          	srli	s2,s2,0x1
    80007e74:	fffff097          	auipc	ra,0xfffff
    80007e78:	860080e7          	jalr	-1952(ra) # 800066d4 <mycpu>
    80007e7c:	00197913          	andi	s2,s2,1
    80007e80:	07252e23          	sw	s2,124(a0)
    80007e84:	f75ff06f          	j	80007df8 <acquire+0x3c>

0000000080007e88 <release>:
    80007e88:	fe010113          	addi	sp,sp,-32
    80007e8c:	00813823          	sd	s0,16(sp)
    80007e90:	00113c23          	sd	ra,24(sp)
    80007e94:	00913423          	sd	s1,8(sp)
    80007e98:	01213023          	sd	s2,0(sp)
    80007e9c:	02010413          	addi	s0,sp,32
    80007ea0:	00052783          	lw	a5,0(a0)
    80007ea4:	00079a63          	bnez	a5,80007eb8 <release+0x30>
    80007ea8:	00002517          	auipc	a0,0x2
    80007eac:	93050513          	addi	a0,a0,-1744 # 800097d8 <digits+0x28>
    80007eb0:	fffff097          	auipc	ra,0xfffff
    80007eb4:	1dc080e7          	jalr	476(ra) # 8000708c <panic>
    80007eb8:	01053903          	ld	s2,16(a0)
    80007ebc:	00050493          	mv	s1,a0
    80007ec0:	fffff097          	auipc	ra,0xfffff
    80007ec4:	814080e7          	jalr	-2028(ra) # 800066d4 <mycpu>
    80007ec8:	fea910e3          	bne	s2,a0,80007ea8 <release+0x20>
    80007ecc:	0004b823          	sd	zero,16(s1)
    80007ed0:	0ff0000f          	fence
    80007ed4:	0f50000f          	fence	iorw,ow
    80007ed8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007edc:	ffffe097          	auipc	ra,0xffffe
    80007ee0:	7f8080e7          	jalr	2040(ra) # 800066d4 <mycpu>
    80007ee4:	100027f3          	csrr	a5,sstatus
    80007ee8:	0027f793          	andi	a5,a5,2
    80007eec:	04079a63          	bnez	a5,80007f40 <release+0xb8>
    80007ef0:	07852783          	lw	a5,120(a0)
    80007ef4:	02f05e63          	blez	a5,80007f30 <release+0xa8>
    80007ef8:	fff7871b          	addiw	a4,a5,-1
    80007efc:	06e52c23          	sw	a4,120(a0)
    80007f00:	00071c63          	bnez	a4,80007f18 <release+0x90>
    80007f04:	07c52783          	lw	a5,124(a0)
    80007f08:	00078863          	beqz	a5,80007f18 <release+0x90>
    80007f0c:	100027f3          	csrr	a5,sstatus
    80007f10:	0027e793          	ori	a5,a5,2
    80007f14:	10079073          	csrw	sstatus,a5
    80007f18:	01813083          	ld	ra,24(sp)
    80007f1c:	01013403          	ld	s0,16(sp)
    80007f20:	00813483          	ld	s1,8(sp)
    80007f24:	00013903          	ld	s2,0(sp)
    80007f28:	02010113          	addi	sp,sp,32
    80007f2c:	00008067          	ret
    80007f30:	00002517          	auipc	a0,0x2
    80007f34:	8c850513          	addi	a0,a0,-1848 # 800097f8 <digits+0x48>
    80007f38:	fffff097          	auipc	ra,0xfffff
    80007f3c:	154080e7          	jalr	340(ra) # 8000708c <panic>
    80007f40:	00002517          	auipc	a0,0x2
    80007f44:	8a050513          	addi	a0,a0,-1888 # 800097e0 <digits+0x30>
    80007f48:	fffff097          	auipc	ra,0xfffff
    80007f4c:	144080e7          	jalr	324(ra) # 8000708c <panic>

0000000080007f50 <holding>:
    80007f50:	00052783          	lw	a5,0(a0)
    80007f54:	00079663          	bnez	a5,80007f60 <holding+0x10>
    80007f58:	00000513          	li	a0,0
    80007f5c:	00008067          	ret
    80007f60:	fe010113          	addi	sp,sp,-32
    80007f64:	00813823          	sd	s0,16(sp)
    80007f68:	00913423          	sd	s1,8(sp)
    80007f6c:	00113c23          	sd	ra,24(sp)
    80007f70:	02010413          	addi	s0,sp,32
    80007f74:	01053483          	ld	s1,16(a0)
    80007f78:	ffffe097          	auipc	ra,0xffffe
    80007f7c:	75c080e7          	jalr	1884(ra) # 800066d4 <mycpu>
    80007f80:	01813083          	ld	ra,24(sp)
    80007f84:	01013403          	ld	s0,16(sp)
    80007f88:	40a48533          	sub	a0,s1,a0
    80007f8c:	00153513          	seqz	a0,a0
    80007f90:	00813483          	ld	s1,8(sp)
    80007f94:	02010113          	addi	sp,sp,32
    80007f98:	00008067          	ret

0000000080007f9c <push_off>:
    80007f9c:	fe010113          	addi	sp,sp,-32
    80007fa0:	00813823          	sd	s0,16(sp)
    80007fa4:	00113c23          	sd	ra,24(sp)
    80007fa8:	00913423          	sd	s1,8(sp)
    80007fac:	02010413          	addi	s0,sp,32
    80007fb0:	100024f3          	csrr	s1,sstatus
    80007fb4:	100027f3          	csrr	a5,sstatus
    80007fb8:	ffd7f793          	andi	a5,a5,-3
    80007fbc:	10079073          	csrw	sstatus,a5
    80007fc0:	ffffe097          	auipc	ra,0xffffe
    80007fc4:	714080e7          	jalr	1812(ra) # 800066d4 <mycpu>
    80007fc8:	07852783          	lw	a5,120(a0)
    80007fcc:	02078663          	beqz	a5,80007ff8 <push_off+0x5c>
    80007fd0:	ffffe097          	auipc	ra,0xffffe
    80007fd4:	704080e7          	jalr	1796(ra) # 800066d4 <mycpu>
    80007fd8:	07852783          	lw	a5,120(a0)
    80007fdc:	01813083          	ld	ra,24(sp)
    80007fe0:	01013403          	ld	s0,16(sp)
    80007fe4:	0017879b          	addiw	a5,a5,1
    80007fe8:	06f52c23          	sw	a5,120(a0)
    80007fec:	00813483          	ld	s1,8(sp)
    80007ff0:	02010113          	addi	sp,sp,32
    80007ff4:	00008067          	ret
    80007ff8:	0014d493          	srli	s1,s1,0x1
    80007ffc:	ffffe097          	auipc	ra,0xffffe
    80008000:	6d8080e7          	jalr	1752(ra) # 800066d4 <mycpu>
    80008004:	0014f493          	andi	s1,s1,1
    80008008:	06952e23          	sw	s1,124(a0)
    8000800c:	fc5ff06f          	j	80007fd0 <push_off+0x34>

0000000080008010 <pop_off>:
    80008010:	ff010113          	addi	sp,sp,-16
    80008014:	00813023          	sd	s0,0(sp)
    80008018:	00113423          	sd	ra,8(sp)
    8000801c:	01010413          	addi	s0,sp,16
    80008020:	ffffe097          	auipc	ra,0xffffe
    80008024:	6b4080e7          	jalr	1716(ra) # 800066d4 <mycpu>
    80008028:	100027f3          	csrr	a5,sstatus
    8000802c:	0027f793          	andi	a5,a5,2
    80008030:	04079663          	bnez	a5,8000807c <pop_off+0x6c>
    80008034:	07852783          	lw	a5,120(a0)
    80008038:	02f05a63          	blez	a5,8000806c <pop_off+0x5c>
    8000803c:	fff7871b          	addiw	a4,a5,-1
    80008040:	06e52c23          	sw	a4,120(a0)
    80008044:	00071c63          	bnez	a4,8000805c <pop_off+0x4c>
    80008048:	07c52783          	lw	a5,124(a0)
    8000804c:	00078863          	beqz	a5,8000805c <pop_off+0x4c>
    80008050:	100027f3          	csrr	a5,sstatus
    80008054:	0027e793          	ori	a5,a5,2
    80008058:	10079073          	csrw	sstatus,a5
    8000805c:	00813083          	ld	ra,8(sp)
    80008060:	00013403          	ld	s0,0(sp)
    80008064:	01010113          	addi	sp,sp,16
    80008068:	00008067          	ret
    8000806c:	00001517          	auipc	a0,0x1
    80008070:	78c50513          	addi	a0,a0,1932 # 800097f8 <digits+0x48>
    80008074:	fffff097          	auipc	ra,0xfffff
    80008078:	018080e7          	jalr	24(ra) # 8000708c <panic>
    8000807c:	00001517          	auipc	a0,0x1
    80008080:	76450513          	addi	a0,a0,1892 # 800097e0 <digits+0x30>
    80008084:	fffff097          	auipc	ra,0xfffff
    80008088:	008080e7          	jalr	8(ra) # 8000708c <panic>

000000008000808c <push_on>:
    8000808c:	fe010113          	addi	sp,sp,-32
    80008090:	00813823          	sd	s0,16(sp)
    80008094:	00113c23          	sd	ra,24(sp)
    80008098:	00913423          	sd	s1,8(sp)
    8000809c:	02010413          	addi	s0,sp,32
    800080a0:	100024f3          	csrr	s1,sstatus
    800080a4:	100027f3          	csrr	a5,sstatus
    800080a8:	0027e793          	ori	a5,a5,2
    800080ac:	10079073          	csrw	sstatus,a5
    800080b0:	ffffe097          	auipc	ra,0xffffe
    800080b4:	624080e7          	jalr	1572(ra) # 800066d4 <mycpu>
    800080b8:	07852783          	lw	a5,120(a0)
    800080bc:	02078663          	beqz	a5,800080e8 <push_on+0x5c>
    800080c0:	ffffe097          	auipc	ra,0xffffe
    800080c4:	614080e7          	jalr	1556(ra) # 800066d4 <mycpu>
    800080c8:	07852783          	lw	a5,120(a0)
    800080cc:	01813083          	ld	ra,24(sp)
    800080d0:	01013403          	ld	s0,16(sp)
    800080d4:	0017879b          	addiw	a5,a5,1
    800080d8:	06f52c23          	sw	a5,120(a0)
    800080dc:	00813483          	ld	s1,8(sp)
    800080e0:	02010113          	addi	sp,sp,32
    800080e4:	00008067          	ret
    800080e8:	0014d493          	srli	s1,s1,0x1
    800080ec:	ffffe097          	auipc	ra,0xffffe
    800080f0:	5e8080e7          	jalr	1512(ra) # 800066d4 <mycpu>
    800080f4:	0014f493          	andi	s1,s1,1
    800080f8:	06952e23          	sw	s1,124(a0)
    800080fc:	fc5ff06f          	j	800080c0 <push_on+0x34>

0000000080008100 <pop_on>:
    80008100:	ff010113          	addi	sp,sp,-16
    80008104:	00813023          	sd	s0,0(sp)
    80008108:	00113423          	sd	ra,8(sp)
    8000810c:	01010413          	addi	s0,sp,16
    80008110:	ffffe097          	auipc	ra,0xffffe
    80008114:	5c4080e7          	jalr	1476(ra) # 800066d4 <mycpu>
    80008118:	100027f3          	csrr	a5,sstatus
    8000811c:	0027f793          	andi	a5,a5,2
    80008120:	04078463          	beqz	a5,80008168 <pop_on+0x68>
    80008124:	07852783          	lw	a5,120(a0)
    80008128:	02f05863          	blez	a5,80008158 <pop_on+0x58>
    8000812c:	fff7879b          	addiw	a5,a5,-1
    80008130:	06f52c23          	sw	a5,120(a0)
    80008134:	07853783          	ld	a5,120(a0)
    80008138:	00079863          	bnez	a5,80008148 <pop_on+0x48>
    8000813c:	100027f3          	csrr	a5,sstatus
    80008140:	ffd7f793          	andi	a5,a5,-3
    80008144:	10079073          	csrw	sstatus,a5
    80008148:	00813083          	ld	ra,8(sp)
    8000814c:	00013403          	ld	s0,0(sp)
    80008150:	01010113          	addi	sp,sp,16
    80008154:	00008067          	ret
    80008158:	00001517          	auipc	a0,0x1
    8000815c:	6c850513          	addi	a0,a0,1736 # 80009820 <digits+0x70>
    80008160:	fffff097          	auipc	ra,0xfffff
    80008164:	f2c080e7          	jalr	-212(ra) # 8000708c <panic>
    80008168:	00001517          	auipc	a0,0x1
    8000816c:	69850513          	addi	a0,a0,1688 # 80009800 <digits+0x50>
    80008170:	fffff097          	auipc	ra,0xfffff
    80008174:	f1c080e7          	jalr	-228(ra) # 8000708c <panic>

0000000080008178 <__memset>:
    80008178:	ff010113          	addi	sp,sp,-16
    8000817c:	00813423          	sd	s0,8(sp)
    80008180:	01010413          	addi	s0,sp,16
    80008184:	1a060e63          	beqz	a2,80008340 <__memset+0x1c8>
    80008188:	40a007b3          	neg	a5,a0
    8000818c:	0077f793          	andi	a5,a5,7
    80008190:	00778693          	addi	a3,a5,7
    80008194:	00b00813          	li	a6,11
    80008198:	0ff5f593          	andi	a1,a1,255
    8000819c:	fff6071b          	addiw	a4,a2,-1
    800081a0:	1b06e663          	bltu	a3,a6,8000834c <__memset+0x1d4>
    800081a4:	1cd76463          	bltu	a4,a3,8000836c <__memset+0x1f4>
    800081a8:	1a078e63          	beqz	a5,80008364 <__memset+0x1ec>
    800081ac:	00b50023          	sb	a1,0(a0)
    800081b0:	00100713          	li	a4,1
    800081b4:	1ae78463          	beq	a5,a4,8000835c <__memset+0x1e4>
    800081b8:	00b500a3          	sb	a1,1(a0)
    800081bc:	00200713          	li	a4,2
    800081c0:	1ae78a63          	beq	a5,a4,80008374 <__memset+0x1fc>
    800081c4:	00b50123          	sb	a1,2(a0)
    800081c8:	00300713          	li	a4,3
    800081cc:	18e78463          	beq	a5,a4,80008354 <__memset+0x1dc>
    800081d0:	00b501a3          	sb	a1,3(a0)
    800081d4:	00400713          	li	a4,4
    800081d8:	1ae78263          	beq	a5,a4,8000837c <__memset+0x204>
    800081dc:	00b50223          	sb	a1,4(a0)
    800081e0:	00500713          	li	a4,5
    800081e4:	1ae78063          	beq	a5,a4,80008384 <__memset+0x20c>
    800081e8:	00b502a3          	sb	a1,5(a0)
    800081ec:	00700713          	li	a4,7
    800081f0:	18e79e63          	bne	a5,a4,8000838c <__memset+0x214>
    800081f4:	00b50323          	sb	a1,6(a0)
    800081f8:	00700e93          	li	t4,7
    800081fc:	00859713          	slli	a4,a1,0x8
    80008200:	00e5e733          	or	a4,a1,a4
    80008204:	01059e13          	slli	t3,a1,0x10
    80008208:	01c76e33          	or	t3,a4,t3
    8000820c:	01859313          	slli	t1,a1,0x18
    80008210:	006e6333          	or	t1,t3,t1
    80008214:	02059893          	slli	a7,a1,0x20
    80008218:	40f60e3b          	subw	t3,a2,a5
    8000821c:	011368b3          	or	a7,t1,a7
    80008220:	02859813          	slli	a6,a1,0x28
    80008224:	0108e833          	or	a6,a7,a6
    80008228:	03059693          	slli	a3,a1,0x30
    8000822c:	003e589b          	srliw	a7,t3,0x3
    80008230:	00d866b3          	or	a3,a6,a3
    80008234:	03859713          	slli	a4,a1,0x38
    80008238:	00389813          	slli	a6,a7,0x3
    8000823c:	00f507b3          	add	a5,a0,a5
    80008240:	00e6e733          	or	a4,a3,a4
    80008244:	000e089b          	sext.w	a7,t3
    80008248:	00f806b3          	add	a3,a6,a5
    8000824c:	00e7b023          	sd	a4,0(a5)
    80008250:	00878793          	addi	a5,a5,8
    80008254:	fed79ce3          	bne	a5,a3,8000824c <__memset+0xd4>
    80008258:	ff8e7793          	andi	a5,t3,-8
    8000825c:	0007871b          	sext.w	a4,a5
    80008260:	01d787bb          	addw	a5,a5,t4
    80008264:	0ce88e63          	beq	a7,a4,80008340 <__memset+0x1c8>
    80008268:	00f50733          	add	a4,a0,a5
    8000826c:	00b70023          	sb	a1,0(a4)
    80008270:	0017871b          	addiw	a4,a5,1
    80008274:	0cc77663          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    80008278:	00e50733          	add	a4,a0,a4
    8000827c:	00b70023          	sb	a1,0(a4)
    80008280:	0027871b          	addiw	a4,a5,2
    80008284:	0ac77e63          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    80008288:	00e50733          	add	a4,a0,a4
    8000828c:	00b70023          	sb	a1,0(a4)
    80008290:	0037871b          	addiw	a4,a5,3
    80008294:	0ac77663          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    80008298:	00e50733          	add	a4,a0,a4
    8000829c:	00b70023          	sb	a1,0(a4)
    800082a0:	0047871b          	addiw	a4,a5,4
    800082a4:	08c77e63          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    800082a8:	00e50733          	add	a4,a0,a4
    800082ac:	00b70023          	sb	a1,0(a4)
    800082b0:	0057871b          	addiw	a4,a5,5
    800082b4:	08c77663          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    800082b8:	00e50733          	add	a4,a0,a4
    800082bc:	00b70023          	sb	a1,0(a4)
    800082c0:	0067871b          	addiw	a4,a5,6
    800082c4:	06c77e63          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    800082c8:	00e50733          	add	a4,a0,a4
    800082cc:	00b70023          	sb	a1,0(a4)
    800082d0:	0077871b          	addiw	a4,a5,7
    800082d4:	06c77663          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    800082d8:	00e50733          	add	a4,a0,a4
    800082dc:	00b70023          	sb	a1,0(a4)
    800082e0:	0087871b          	addiw	a4,a5,8
    800082e4:	04c77e63          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    800082e8:	00e50733          	add	a4,a0,a4
    800082ec:	00b70023          	sb	a1,0(a4)
    800082f0:	0097871b          	addiw	a4,a5,9
    800082f4:	04c77663          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    800082f8:	00e50733          	add	a4,a0,a4
    800082fc:	00b70023          	sb	a1,0(a4)
    80008300:	00a7871b          	addiw	a4,a5,10
    80008304:	02c77e63          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    80008308:	00e50733          	add	a4,a0,a4
    8000830c:	00b70023          	sb	a1,0(a4)
    80008310:	00b7871b          	addiw	a4,a5,11
    80008314:	02c77663          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    80008318:	00e50733          	add	a4,a0,a4
    8000831c:	00b70023          	sb	a1,0(a4)
    80008320:	00c7871b          	addiw	a4,a5,12
    80008324:	00c77e63          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    80008328:	00e50733          	add	a4,a0,a4
    8000832c:	00b70023          	sb	a1,0(a4)
    80008330:	00d7879b          	addiw	a5,a5,13
    80008334:	00c7f663          	bgeu	a5,a2,80008340 <__memset+0x1c8>
    80008338:	00f507b3          	add	a5,a0,a5
    8000833c:	00b78023          	sb	a1,0(a5)
    80008340:	00813403          	ld	s0,8(sp)
    80008344:	01010113          	addi	sp,sp,16
    80008348:	00008067          	ret
    8000834c:	00b00693          	li	a3,11
    80008350:	e55ff06f          	j	800081a4 <__memset+0x2c>
    80008354:	00300e93          	li	t4,3
    80008358:	ea5ff06f          	j	800081fc <__memset+0x84>
    8000835c:	00100e93          	li	t4,1
    80008360:	e9dff06f          	j	800081fc <__memset+0x84>
    80008364:	00000e93          	li	t4,0
    80008368:	e95ff06f          	j	800081fc <__memset+0x84>
    8000836c:	00000793          	li	a5,0
    80008370:	ef9ff06f          	j	80008268 <__memset+0xf0>
    80008374:	00200e93          	li	t4,2
    80008378:	e85ff06f          	j	800081fc <__memset+0x84>
    8000837c:	00400e93          	li	t4,4
    80008380:	e7dff06f          	j	800081fc <__memset+0x84>
    80008384:	00500e93          	li	t4,5
    80008388:	e75ff06f          	j	800081fc <__memset+0x84>
    8000838c:	00600e93          	li	t4,6
    80008390:	e6dff06f          	j	800081fc <__memset+0x84>

0000000080008394 <__memmove>:
    80008394:	ff010113          	addi	sp,sp,-16
    80008398:	00813423          	sd	s0,8(sp)
    8000839c:	01010413          	addi	s0,sp,16
    800083a0:	0e060863          	beqz	a2,80008490 <__memmove+0xfc>
    800083a4:	fff6069b          	addiw	a3,a2,-1
    800083a8:	0006881b          	sext.w	a6,a3
    800083ac:	0ea5e863          	bltu	a1,a0,8000849c <__memmove+0x108>
    800083b0:	00758713          	addi	a4,a1,7
    800083b4:	00a5e7b3          	or	a5,a1,a0
    800083b8:	40a70733          	sub	a4,a4,a0
    800083bc:	0077f793          	andi	a5,a5,7
    800083c0:	00f73713          	sltiu	a4,a4,15
    800083c4:	00174713          	xori	a4,a4,1
    800083c8:	0017b793          	seqz	a5,a5
    800083cc:	00e7f7b3          	and	a5,a5,a4
    800083d0:	10078863          	beqz	a5,800084e0 <__memmove+0x14c>
    800083d4:	00900793          	li	a5,9
    800083d8:	1107f463          	bgeu	a5,a6,800084e0 <__memmove+0x14c>
    800083dc:	0036581b          	srliw	a6,a2,0x3
    800083e0:	fff8081b          	addiw	a6,a6,-1
    800083e4:	02081813          	slli	a6,a6,0x20
    800083e8:	01d85893          	srli	a7,a6,0x1d
    800083ec:	00858813          	addi	a6,a1,8
    800083f0:	00058793          	mv	a5,a1
    800083f4:	00050713          	mv	a4,a0
    800083f8:	01088833          	add	a6,a7,a6
    800083fc:	0007b883          	ld	a7,0(a5)
    80008400:	00878793          	addi	a5,a5,8
    80008404:	00870713          	addi	a4,a4,8
    80008408:	ff173c23          	sd	a7,-8(a4)
    8000840c:	ff0798e3          	bne	a5,a6,800083fc <__memmove+0x68>
    80008410:	ff867713          	andi	a4,a2,-8
    80008414:	02071793          	slli	a5,a4,0x20
    80008418:	0207d793          	srli	a5,a5,0x20
    8000841c:	00f585b3          	add	a1,a1,a5
    80008420:	40e686bb          	subw	a3,a3,a4
    80008424:	00f507b3          	add	a5,a0,a5
    80008428:	06e60463          	beq	a2,a4,80008490 <__memmove+0xfc>
    8000842c:	0005c703          	lbu	a4,0(a1)
    80008430:	00e78023          	sb	a4,0(a5)
    80008434:	04068e63          	beqz	a3,80008490 <__memmove+0xfc>
    80008438:	0015c603          	lbu	a2,1(a1)
    8000843c:	00100713          	li	a4,1
    80008440:	00c780a3          	sb	a2,1(a5)
    80008444:	04e68663          	beq	a3,a4,80008490 <__memmove+0xfc>
    80008448:	0025c603          	lbu	a2,2(a1)
    8000844c:	00200713          	li	a4,2
    80008450:	00c78123          	sb	a2,2(a5)
    80008454:	02e68e63          	beq	a3,a4,80008490 <__memmove+0xfc>
    80008458:	0035c603          	lbu	a2,3(a1)
    8000845c:	00300713          	li	a4,3
    80008460:	00c781a3          	sb	a2,3(a5)
    80008464:	02e68663          	beq	a3,a4,80008490 <__memmove+0xfc>
    80008468:	0045c603          	lbu	a2,4(a1)
    8000846c:	00400713          	li	a4,4
    80008470:	00c78223          	sb	a2,4(a5)
    80008474:	00e68e63          	beq	a3,a4,80008490 <__memmove+0xfc>
    80008478:	0055c603          	lbu	a2,5(a1)
    8000847c:	00500713          	li	a4,5
    80008480:	00c782a3          	sb	a2,5(a5)
    80008484:	00e68663          	beq	a3,a4,80008490 <__memmove+0xfc>
    80008488:	0065c703          	lbu	a4,6(a1)
    8000848c:	00e78323          	sb	a4,6(a5)
    80008490:	00813403          	ld	s0,8(sp)
    80008494:	01010113          	addi	sp,sp,16
    80008498:	00008067          	ret
    8000849c:	02061713          	slli	a4,a2,0x20
    800084a0:	02075713          	srli	a4,a4,0x20
    800084a4:	00e587b3          	add	a5,a1,a4
    800084a8:	f0f574e3          	bgeu	a0,a5,800083b0 <__memmove+0x1c>
    800084ac:	02069613          	slli	a2,a3,0x20
    800084b0:	02065613          	srli	a2,a2,0x20
    800084b4:	fff64613          	not	a2,a2
    800084b8:	00e50733          	add	a4,a0,a4
    800084bc:	00c78633          	add	a2,a5,a2
    800084c0:	fff7c683          	lbu	a3,-1(a5)
    800084c4:	fff78793          	addi	a5,a5,-1
    800084c8:	fff70713          	addi	a4,a4,-1
    800084cc:	00d70023          	sb	a3,0(a4)
    800084d0:	fec798e3          	bne	a5,a2,800084c0 <__memmove+0x12c>
    800084d4:	00813403          	ld	s0,8(sp)
    800084d8:	01010113          	addi	sp,sp,16
    800084dc:	00008067          	ret
    800084e0:	02069713          	slli	a4,a3,0x20
    800084e4:	02075713          	srli	a4,a4,0x20
    800084e8:	00170713          	addi	a4,a4,1
    800084ec:	00e50733          	add	a4,a0,a4
    800084f0:	00050793          	mv	a5,a0
    800084f4:	0005c683          	lbu	a3,0(a1)
    800084f8:	00178793          	addi	a5,a5,1
    800084fc:	00158593          	addi	a1,a1,1
    80008500:	fed78fa3          	sb	a3,-1(a5)
    80008504:	fee798e3          	bne	a5,a4,800084f4 <__memmove+0x160>
    80008508:	f89ff06f          	j	80008490 <__memmove+0xfc>
	...
