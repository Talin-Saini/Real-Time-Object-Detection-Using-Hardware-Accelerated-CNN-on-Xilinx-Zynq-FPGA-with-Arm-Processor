; ModuleID = 'C:/Users/ishan/ECT_110_vitis/cnn/cnn/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_int<8>" = type { %"struct.ap_int_base<8, true>" }
%"struct.ap_int_base<8, true>" = type { %"struct.ssdm_int<8, true>" }
%"struct.ssdm_int<8, true>" = type { i8 }
%"struct.ap_int<6>" = type { %"struct.ap_int_base<6, true>" }
%"struct.ap_int_base<6, true>" = type { %"struct.ssdm_int<6, true>" }
%"struct.ssdm_int<6, true>" = type { i6 }
%"struct.ap_int<4>" = type { %"struct.ap_int_base<4, true>" }
%"struct.ap_int_base<4, true>" = type { %"struct.ssdm_int<4, true>" }
%"struct.ssdm_int<4, true>" = type { i4 }
%"struct.ap_int<2>" = type { %"struct.ap_int_base<2, true>" }
%"struct.ap_int_base<2, true>" = type { %"struct.ssdm_int<2, true>" }
%"struct.ssdm_int<2, true>" = type { i2 }
%"struct.ap_int<32>" = type { %"struct.ap_int_base<32, true>" }
%"struct.ap_int_base<32, true>" = type { %"struct.ssdm_int<32, true>" }
%"struct.ssdm_int<32, true>" = type { i32 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_cnn_accelerator_ir(%"struct.ap_int<8>"* noalias nocapture nonnull readonly "maxi" %input, %"struct.ap_int<8>"* noalias nocapture nonnull readonly "maxi" %weights8, %"struct.ap_int<6>"* noalias nocapture nonnull readonly "maxi" %weights6, %"struct.ap_int<4>"* noalias nocapture nonnull readonly "maxi" %weights4, %"struct.ap_int<2>"* noalias nocapture nonnull readonly "maxi" %weights2, %"struct.ap_int<32>"* noalias nocapture nonnull "maxi" %output, i32 %Cin, i32 %Cout, i32 %H, i32 %W, i32 %precision) local_unnamed_addr #0 {
entry:
  %input_copy = alloca i8, align 512
  %weights8_copy = alloca i8, align 512
  %weights6_copy = alloca i6, align 512
  %weights4_copy = alloca i4, align 512
  %weights2_copy = alloca i2, align 512
  %output_copy = alloca i32, align 512
  call fastcc void @copy_in(%"struct.ap_int<8>"* nonnull %input, i8* nonnull align 512 %input_copy, %"struct.ap_int<8>"* nonnull %weights8, i8* nonnull align 512 %weights8_copy, %"struct.ap_int<6>"* nonnull %weights6, i6* nonnull align 512 %weights6_copy, %"struct.ap_int<4>"* nonnull %weights4, i4* nonnull align 512 %weights4_copy, %"struct.ap_int<2>"* nonnull %weights2, i2* nonnull align 512 %weights2_copy, %"struct.ap_int<32>"* nonnull %output, i32* nonnull align 512 %output_copy)
  call void @apatb_cnn_accelerator_hw(i8* %input_copy, i8* %weights8_copy, i6* %weights6_copy, i4* %weights4_copy, i2* %weights2_copy, i32* %output_copy, i32 %Cin, i32 %Cout, i32 %H, i32 %W, i32 %precision)
  call void @copy_back(%"struct.ap_int<8>"* %input, i8* %input_copy, %"struct.ap_int<8>"* %weights8, i8* %weights8_copy, %"struct.ap_int<6>"* %weights6, i6* %weights6_copy, %"struct.ap_int<4>"* %weights4, i4* %weights4_copy, %"struct.ap_int<2>"* %weights2, i2* %weights2_copy, %"struct.ap_int<32>"* %output, i32* %output_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in(%"struct.ap_int<8>"* noalias readonly "unpacked"="0", i8* noalias nocapture align 512 "unpacked"="1.0", %"struct.ap_int<8>"* noalias readonly "unpacked"="2", i8* noalias nocapture align 512 "unpacked"="3.0", %"struct.ap_int<6>"* noalias readonly "unpacked"="4", i6* noalias nocapture align 512 "unpacked"="5.0", %"struct.ap_int<4>"* noalias readonly "unpacked"="6", i4* noalias nocapture align 512 "unpacked"="7.0", %"struct.ap_int<2>"* noalias readonly "unpacked"="8", i2* noalias nocapture align 512 "unpacked"="9.0", %"struct.ap_int<32>"* noalias readonly "unpacked"="10", i32* noalias nocapture align 512 "unpacked"="11.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<8>.47"(i8* align 512 %1, %"struct.ap_int<8>"* %0)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<8>.47"(i8* align 512 %3, %"struct.ap_int<8>"* %2)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<6>.35"(i6* align 512 %5, %"struct.ap_int<6>"* %4)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<4>"(i4* align 512 %7, %"struct.ap_int<4>"* %6)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<2>.21"(i2* align 512 %9, %"struct.ap_int<2>"* %8)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<32>"(i32* align 512 %11, %"struct.ap_int<32>"* %10)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_int<6>"(%"struct.ap_int<6>"* noalias "unpacked"="0" %dst, i6* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_int<6>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_int<6>", %"struct.ap_int<6>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i6* %src to i8*
  %2 = load i8, i8* %1
  %3 = trunc i8 %2 to i6
  store i6 %3, i6* %dst.0.0.04, align 1
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_int<4>"(i4* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_int<4>"* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_int<4>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_int<4>", %"struct.ap_int<4>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i4* %src.0.0.03 to i8*
  %2 = load i8, i8* %1
  %3 = trunc i8 %2 to i4
  store i4 %3, i4* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_int<2>"(%"struct.ap_int<2>"* noalias "unpacked"="0" %dst, i2* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_int<2>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_int<2>", %"struct.ap_int<2>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i2* %src to i8*
  %2 = load i8, i8* %1
  %3 = trunc i8 %2 to i2
  store i2 %3, i2* %dst.0.0.04, align 1
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_int<32>"(i32* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_int<32>"* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_int<32>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_int<32>", %"struct.ap_int<32>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %src.0.0.03, align 4
  store i32 %1, i32* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out(%"struct.ap_int<8>"* noalias "unpacked"="0", i8* noalias nocapture readonly align 512 "unpacked"="1.0", %"struct.ap_int<8>"* noalias "unpacked"="2", i8* noalias nocapture readonly align 512 "unpacked"="3.0", %"struct.ap_int<6>"* noalias "unpacked"="4", i6* noalias nocapture readonly align 512 "unpacked"="5.0", %"struct.ap_int<4>"* noalias "unpacked"="6", i4* noalias nocapture readonly align 512 "unpacked"="7.0", %"struct.ap_int<2>"* noalias "unpacked"="8", i2* noalias nocapture readonly align 512 "unpacked"="9.0", %"struct.ap_int<32>"* noalias "unpacked"="10", i32* noalias nocapture readonly align 512 "unpacked"="11.0") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<8>"(%"struct.ap_int<8>"* %0, i8* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<8>"(%"struct.ap_int<8>"* %2, i8* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<6>"(%"struct.ap_int<6>"* %4, i6* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<4>.28"(%"struct.ap_int<4>"* %6, i4* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<2>"(%"struct.ap_int<2>"* %8, i2* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<32>.14"(%"struct.ap_int<32>"* %10, i32* align 512 %11)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_int<32>.14"(%"struct.ap_int<32>"* noalias "unpacked"="0" %dst, i32* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_int<32>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_int<32>", %"struct.ap_int<32>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %src, align 512
  store i32 %1, i32* %dst.0.0.04, align 4
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_int<2>.21"(i2* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_int<2>"* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_int<2>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_int<2>", %"struct.ap_int<2>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i2* %src.0.0.03 to i8*
  %2 = load i8, i8* %1
  %3 = trunc i8 %2 to i2
  store i2 %3, i2* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_int<4>.28"(%"struct.ap_int<4>"* noalias "unpacked"="0" %dst, i4* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_int<4>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_int<4>", %"struct.ap_int<4>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i4* %src to i8*
  %2 = load i8, i8* %1
  %3 = trunc i8 %2 to i4
  store i4 %3, i4* %dst.0.0.04, align 1
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_int<6>.35"(i6* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_int<6>"* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_int<6>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_int<6>", %"struct.ap_int<6>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i6* %src.0.0.03 to i8*
  %2 = load i8, i8* %1
  %3 = trunc i8 %2 to i6
  store i6 %3, i6* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_int<8>"(%"struct.ap_int<8>"* noalias "unpacked"="0" %dst, i8* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_int<8>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_int<8>", %"struct.ap_int<8>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = load i8, i8* %src, align 512
  store i8 %1, i8* %dst.0.0.04, align 1
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_int<8>.47"(i8* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_int<8>"* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_int<8>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_int<8>", %"struct.ap_int<8>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = load i8, i8* %src.0.0.03, align 1
  store i8 %1, i8* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_cnn_accelerator_hw(i8*, i8*, i6*, i4*, i2*, i32*, i32, i32, i32, i32, i32)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back(%"struct.ap_int<8>"* noalias "unpacked"="0", i8* noalias nocapture readonly align 512 "unpacked"="1.0", %"struct.ap_int<8>"* noalias "unpacked"="2", i8* noalias nocapture readonly align 512 "unpacked"="3.0", %"struct.ap_int<6>"* noalias "unpacked"="4", i6* noalias nocapture readonly align 512 "unpacked"="5.0", %"struct.ap_int<4>"* noalias "unpacked"="6", i4* noalias nocapture readonly align 512 "unpacked"="7.0", %"struct.ap_int<2>"* noalias "unpacked"="8", i2* noalias nocapture readonly align 512 "unpacked"="9.0", %"struct.ap_int<32>"* noalias "unpacked"="10", i32* noalias nocapture readonly align 512 "unpacked"="11.0") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<32>.14"(%"struct.ap_int<32>"* %10, i32* align 512 %11)
  ret void
}

declare void @cnn_accelerator_hw_stub(%"struct.ap_int<8>"* noalias nocapture nonnull readonly, %"struct.ap_int<8>"* noalias nocapture nonnull readonly, %"struct.ap_int<6>"* noalias nocapture nonnull readonly, %"struct.ap_int<4>"* noalias nocapture nonnull readonly, %"struct.ap_int<2>"* noalias nocapture nonnull readonly, %"struct.ap_int<32>"* noalias nocapture nonnull, i32, i32, i32, i32, i32)

define void @cnn_accelerator_hw_stub_wrapper(i8*, i8*, i6*, i4*, i2*, i32*, i32, i32, i32, i32, i32) #4 {
entry:
  %11 = call i8* @malloc(i64 1)
  %12 = bitcast i8* %11 to %"struct.ap_int<8>"*
  %13 = call i8* @malloc(i64 1)
  %14 = bitcast i8* %13 to %"struct.ap_int<8>"*
  %15 = call i8* @malloc(i64 1)
  %16 = bitcast i8* %15 to %"struct.ap_int<6>"*
  %17 = call i8* @malloc(i64 1)
  %18 = bitcast i8* %17 to %"struct.ap_int<4>"*
  %19 = call i8* @malloc(i64 1)
  %20 = bitcast i8* %19 to %"struct.ap_int<2>"*
  %21 = call i8* @malloc(i64 4)
  %22 = bitcast i8* %21 to %"struct.ap_int<32>"*
  call void @copy_out(%"struct.ap_int<8>"* %12, i8* %0, %"struct.ap_int<8>"* %14, i8* %1, %"struct.ap_int<6>"* %16, i6* %2, %"struct.ap_int<4>"* %18, i4* %3, %"struct.ap_int<2>"* %20, i2* %4, %"struct.ap_int<32>"* %22, i32* %5)
  call void @cnn_accelerator_hw_stub(%"struct.ap_int<8>"* %12, %"struct.ap_int<8>"* %14, %"struct.ap_int<6>"* %16, %"struct.ap_int<4>"* %18, %"struct.ap_int<2>"* %20, %"struct.ap_int<32>"* %22, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10)
  call void @copy_in(%"struct.ap_int<8>"* %12, i8* %0, %"struct.ap_int<8>"* %14, i8* %1, %"struct.ap_int<6>"* %16, i6* %2, %"struct.ap_int<4>"* %18, i4* %3, %"struct.ap_int<2>"* %20, i2* %4, %"struct.ap_int<32>"* %22, i32* %5)
  call void @free(i8* %11)
  call void @free(i8* %13)
  call void @free(i8* %15)
  call void @free(i8* %17)
  call void @free(i8* %19)
  call void @free(i8* %21)
  ret void
}

attributes #0 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
