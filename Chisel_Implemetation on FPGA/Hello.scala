package examples

import chisel3._

/**
 * The blinking LED component.
 */
class Hello extends Module {
  val io = IO(new Bundle {
    val led = Output(UInt(1.W))
  })
  
  val CNT_MAX = (50000000 / 2 - 1).U
  val cntReg = RegInit(0.U(32.W))
  val blkReg = RegInit(0.U(1.W))

  cntReg := cntReg + 1.U
  when(cntReg === CNT_MAX) {
    cntReg := 0.U
    blkReg := ~blkReg
  }
  
  io.led := blkReg
}

// If you want to generate Verilog code, you need to add this back:
object HelloVerilog extends App {
  println("Generating Verilog for Hello module...")
  chisel3.Driver.execute(Array[String](), () => new Hello())

}
