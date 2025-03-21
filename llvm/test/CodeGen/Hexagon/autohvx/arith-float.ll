; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=hexagon < %s | FileCheck %s

define <64 x half> @f0(<64 x half> %a0, <64 x half> %a1) #0 {
; CHECK-LABEL: f0:
; CHECK:       // %bb.0: // %b0
; CHECK-NEXT:    {
; CHECK-NEXT:     v0.qf16 = vadd(v0.hf,v1.hf)
; CHECK-NEXT:    }
; CHECK-NEXT:    {
; CHECK-NEXT:     v0.hf = v0.qf16
; CHECK-NEXT:     jumpr r31
; CHECK-NEXT:    }
b0:
  %v0 = fadd <64 x half> %a0, %a1
  ret <64 x half> %v0
}

define <32 x float> @f1(<32 x float> %a0, <32 x float> %a1) #0 {
; CHECK-LABEL: f1:
; CHECK:       // %bb.0: // %b0
; CHECK-NEXT:    {
; CHECK-NEXT:     v0.qf32 = vadd(v0.sf,v1.sf)
; CHECK-NEXT:    }
; CHECK-NEXT:    {
; CHECK-NEXT:     v0.sf = v0.qf32
; CHECK-NEXT:     jumpr r31
; CHECK-NEXT:    }
b0:
  %v0 = fadd <32 x float> %a0, %a1
  ret <32 x float> %v0
}

define <64 x half> @f2(<64 x half> %a0, <64 x half> %a1) #0 {
; CHECK-LABEL: f2:
; CHECK:       // %bb.0: // %b0
; CHECK-NEXT:    {
; CHECK-NEXT:     v0.qf16 = vsub(v0.hf,v1.hf)
; CHECK-NEXT:    }
; CHECK-NEXT:    {
; CHECK-NEXT:     v0.hf = v0.qf16
; CHECK-NEXT:     jumpr r31
; CHECK-NEXT:    }
b0:
  %v0 = fsub <64 x half> %a0, %a1
  ret <64 x half> %v0
}

define <32 x float> @f3(<32 x float> %a0, <32 x float> %a1) #0 {
; CHECK-LABEL: f3:
; CHECK:       // %bb.0: // %b0
; CHECK-NEXT:    {
; CHECK-NEXT:     v0.qf32 = vsub(v0.sf,v1.sf)
; CHECK-NEXT:    }
; CHECK-NEXT:    {
; CHECK-NEXT:     v0.sf = v0.qf32
; CHECK-NEXT:     jumpr r31
; CHECK-NEXT:    }
b0:
  %v0 = fsub <32 x float> %a0, %a1
  ret <32 x float> %v0
}

define <64 x half> @f4(<64 x half> %a0, <64 x half> %a1) #0 {
; CHECK-LABEL: f4:
; CHECK:       // %bb.0: // %b0
; CHECK-NEXT:    {
; CHECK-NEXT:     v0.qf16 = vmpy(v0.hf,v1.hf)
; CHECK-NEXT:    }
; CHECK-NEXT:    {
; CHECK-NEXT:     v0.hf = v0.qf16
; CHECK-NEXT:     jumpr r31
; CHECK-NEXT:    }
b0:
  %v0 = fmul <64 x half> %a0, %a1
  ret <64 x half> %v0
}

define <32 x float> @f5(<32 x float> %a0, <32 x float> %a1) #0 {
; CHECK-LABEL: f5:
; CHECK:       // %bb.0: // %b0
; CHECK-NEXT:    {
; CHECK-NEXT:     v0.qf32 = vmpy(v0.sf,v1.sf)
; CHECK-NEXT:    }
; CHECK-NEXT:    {
; CHECK-NEXT:     v0.sf = v0.qf32
; CHECK-NEXT:     jumpr r31
; CHECK-NEXT:    }
b0:
  %v0 = fmul <32 x float> %a0, %a1
  ret <32 x float> %v0
}

define <64 x half> @f6(<64 x half> %a0, <64 x half> %a1) #1 {
; CHECK-LABEL: f6:
; CHECK:       // %bb.0: // %b0
; CHECK-NEXT:    {
; CHECK-NEXT:     v0.hf = vadd(v0.hf,v1.hf)
; CHECK-NEXT:     jumpr r31
; CHECK-NEXT:    }
b0:
  %v0 = fadd <64 x half> %a0, %a1
  ret <64 x half> %v0
}

define <32 x float> @f7(<32 x float> %a0, <32 x float> %a1) #1 {
; CHECK-LABEL: f7:
; CHECK:       // %bb.0: // %b0
; CHECK-NEXT:    {
; CHECK-NEXT:     v0.sf = vadd(v0.sf,v1.sf)
; CHECK-NEXT:     jumpr r31
; CHECK-NEXT:    }
b0:
  %v0 = fadd <32 x float> %a0, %a1
  ret <32 x float> %v0
}

define <64 x half> @f8(<64 x half> %a0, <64 x half> %a1) #1 {
; CHECK-LABEL: f8:
; CHECK:       // %bb.0: // %b0
; CHECK-NEXT:    {
; CHECK-NEXT:     v0.hf = vsub(v0.hf,v1.hf)
; CHECK-NEXT:     jumpr r31
; CHECK-NEXT:    }
b0:
  %v0 = fsub <64 x half> %a0, %a1
  ret <64 x half> %v0
}

define <32 x float> @f9(<32 x float> %a0, <32 x float> %a1) #1 {
; CHECK-LABEL: f9:
; CHECK:       // %bb.0: // %b0
; CHECK-NEXT:    {
; CHECK-NEXT:     v0.sf = vsub(v0.sf,v1.sf)
; CHECK-NEXT:     jumpr r31
; CHECK-NEXT:    }
b0:
  %v0 = fsub <32 x float> %a0, %a1
  ret <32 x float> %v0
}

define <64 x half> @f10(<64 x half> %a0, <64 x half> %a1) #1 {
; CHECK-LABEL: f10:
; CHECK:       // %bb.0: // %b0
; CHECK-NEXT:    {
; CHECK-NEXT:     v0.hf = vmpy(v0.hf,v1.hf)
; CHECK-NEXT:     jumpr r31
; CHECK-NEXT:    }
b0:
  %v0 = fmul <64 x half> %a0, %a1
  ret <64 x half> %v0
}

define <32 x float> @f11(<32 x float> %a0, <32 x float> %a1) #1 {
; CHECK-LABEL: f11:
; CHECK:       // %bb.0: // %b0
; CHECK-NEXT:    {
; CHECK-NEXT:     v0.sf = vmpy(v0.sf,v1.sf)
; CHECK-NEXT:     jumpr r31
; CHECK-NEXT:    }
b0:
  %v0 = fmul <32 x float> %a0, %a1
  ret <32 x float> %v0
}

attributes #0 = { nounwind "target-cpu"="hexagonv69" "target-features"="+hvxv69,+hvx-length128b,+hvx-qfloat" }
attributes #1 = { nounwind "target-cpu"="hexagonv69" "target-features"="+hvxv69,+hvx-length128b,+hvx-ieee-fp" }
