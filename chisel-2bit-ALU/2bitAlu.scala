package examples

import chisel3._

import chisel3.util._
class ALU2Bit extends Module {
  val io = IO(new Bundle {
    val A = Input(UInt(2.W))            // 2-bit input A
    val B = Input(UInt(2.W))            // 2-bit input B
    val Op = Input(UInt(2.W))           // Operation selector
    val Result = Output(UInt(2.W))      // 2-bit result
    val LED = Output(UInt(4.W))         // 4 LEDs for displaying result
  })

  // Compute result based on the operation selected
  io.Result := MuxLookup(io.Op, 0.U(2.W), Array(
    0.U(2.W) -> (io.A + io.B),        // A + B
    1.U(2.W) -> (io.A - io.B),        // A - B
    2.U(2.W) -> (io.A & io.B),        // A AND B
    3.U(2.W) -> (io.A | io.B)         // A OR B
  ))

  // Display result on LEDs, padding with two leading zeros
  io.LED := Cat(0.U(2.W), io.Result)   // Concatenate two zeros with the result
}

object ALU2Bit extends App {
  chisel3.Driver.execute(args, () => new ALU2Bit)
}
