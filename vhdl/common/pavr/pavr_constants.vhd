-- <File header>
-- Project
--    pAVR (pipelined AVR) is an 8 bit RISC controller, compatible with Atmel's
--    AVR core, but about 3x faster in terms of both clock frequency and MIPS.
--    The increase in speed comes from a relatively deep pipeline. The original
--    AVR core has only two pipeline stages (fetch and execute), while pAVR has
--    6 pipeline stages:
--       1. PM    (read Program Memory)
--       2. INSTR (load Instruction)
--       3. RFRD  (decode Instruction and read Register File)
--       4. OPS   (load Operands)
--       5. ALU   (execute ALU opcode or access Unified Memory)
--       6. RFWR  (write Register File)
-- Version
--    0.35
-- Date
--    2004 March 11
-- Author
--    Doru Cuturela, doruu@yahoo.com, geocities.com/doruu
-- License
--    This program is free software; you can redistribute it and/or modify
--    it under the terms of the GNU General Public License as published by
--    the Free Software Foundation; either version 2 of the License, or
--    (at your option) any later version.
--    This program is distributed in the hope that it will be useful,
--    but WITHOUT ANY WARRANTY; without even the implied warranty of
--    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--    GNU General Public License for more details.
--    You should have received a copy of the GNU General Public License
--    along with this program; if not, write to the Free Software
--    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
-- </File header>



-- <File info>
-- This file defines the constants needed by pAVR.
-- When costumizing pAVR, modify model-specific settings.
-- However, don't touch family-specific settings.
-- </File info>



-- <File body>
library work;
use work.std_util.all;
use work.pavr_util.all;
library ieee;
use ieee.std_logic_1164.all;



package pavr_constants is

   ----------------------------------------------------------------------------
   -- Controller model-specific settings. Modify here to costumize pAVR.



   -- Data memory RAM-related constants. Take care, these must be self-consistent.
   -- Data memory length and address width
   constant pavr_dm_len    : natural := 8192;
   constant pavr_dm_addr_w : natural := 13;

   -- Is data memory bigger than  256 bytes? (to be corellated with the
   --    above) We need this to know whether to update both bytes of pointer
   --    registers, or only the low byte, in loads/stores with pre/post
   --    de/increment.
   -- This is basically a boolean (=1 -> true; =0 -> false).
   constant pavr_dm_bigger_than_256: std_logic := '1';

   -- Is data memory bigger than 64KB? (to be corellated with the above) We need
   --    this to know whether if to make use of data ramp registers or not. That
   --    is, ramp registers RAMPX, RAMPY and RAMPZ.
   constant pavr_dm_bigger_than_64K: std_logic := '0';



   -- Program memory-related constants
   -- Is program memory bigger than 64KB? We need this to know whether or not to
   --    make use of ramp registers when accessing the Program Memory. These
   --    registers are: ramp register EIND (for instructions EICALL and EIJMP)
   --    and RAMPZ (for instruction ELPM).
   constant pavr_pm_bigger_than_64K: std_logic := '1';



   -- IOF registers addresses
   -- Kernel registers
   constant pavr_sreg_addr    : natural := 16#3F#;
   constant pavr_sph_addr     : natural := 16#3E#;
   constant pavr_spl_addr     : natural := 16#3D#;
   constant pavr_rampx_addr   : natural := 16#39#;
   constant pavr_rampy_addr   : natural := 16#3a#;
   constant pavr_rampz_addr   : natural := 16#3b#;
   constant pavr_rampd_addr   : natural := 16#30#;
   constant pavr_eind_addr    : natural := 16#31#;

   -- Feature registers



   -- Interrupt priorities



   -- Interrupt vectors
   -- These can be anywhere in the 22 bit wide addressing space.



   ----------------------------------------------------------------------------
   -- Family-specific settings. That is, don't touch.

   -- ALU
   constant pavr_alu_opcode_w          : natural := 5;
      constant pavr_alu_opcode_nop        : natural :=  0;
      constant pavr_alu_opcode_op1        : natural :=  1;
      constant pavr_alu_opcode_op2        : natural :=  2;
      constant pavr_alu_opcode_add8       : natural :=  3;
      constant pavr_alu_opcode_adc8       : natural :=  4;
      constant pavr_alu_opcode_sub8       : natural :=  5;
      constant pavr_alu_opcode_sbc8       : natural :=  6;
      constant pavr_alu_opcode_and8       : natural :=  7;
      constant pavr_alu_opcode_eor8       : natural :=  8;
      constant pavr_alu_opcode_or8        : natural :=  9;
      constant pavr_alu_opcode_inc8       : natural := 10;
      constant pavr_alu_opcode_dec8       : natural := 11;
      constant pavr_alu_opcode_com8       : natural := 12;
      constant pavr_alu_opcode_neg8       : natural := 13;
      constant pavr_alu_opcode_swap8      : natural := 14;
      constant pavr_alu_opcode_lsr8       : natural := 15;
      constant pavr_alu_opcode_asr8       : natural := 16;
      constant pavr_alu_opcode_ror8       : natural := 17;
      constant pavr_alu_opcode_add16      : natural := 18;
      constant pavr_alu_opcode_sub16      : natural := 19;
      constant pavr_alu_opcode_mul8       : natural := 20;
      constant pavr_alu_opcode_muls8      : natural := 21;
      constant pavr_alu_opcode_mulsu8     : natural := 22;
      constant pavr_alu_opcode_fmul8      : natural := 23;
      constant pavr_alu_opcode_fmuls8     : natural := 24;
      constant pavr_alu_opcode_fmulsu8    : natural := 25;
   -- Select operand 1's higher 8 bits source.
   constant pavr_alu_op1_hi8_sel_w           : natural := 1;
      constant pavr_alu_op1_hi8_sel_zero        : std_logic := '0';
      constant pavr_alu_op1_hi8_sel_op1bpu      : std_logic := '1';
   -- Select operand 2's source.
   constant pavr_alu_op2_sel_w            : natural := 2;
      constant pavr_alu_op2_sel_op2bpu       : std_logic_vector(pavr_alu_op2_sel_w - 1 downto 0) := "00";
      constant pavr_alu_op2_sel_k8           : std_logic_vector(pavr_alu_op2_sel_w - 1 downto 0) := "01";
      constant pavr_alu_op2_sel_1            : std_logic_vector(pavr_alu_op2_sel_w - 1 downto 0) := "10";
      constant pavr_alu_op2_sel_minus1       : std_logic_vector(pavr_alu_op2_sel_w - 1 downto 0) := "11";
   -- Flags
   constant pavr_alu_h_sel_w        : natural := 2;
     constant pavr_alu_h_sel_same      : std_logic_vector(pavr_alu_h_sel_w - 1 downto 0) := "00";
     constant pavr_alu_h_sel_add8      : std_logic_vector(pavr_alu_h_sel_w - 1 downto 0) := "01";
     constant pavr_alu_h_sel_sub8      : std_logic_vector(pavr_alu_h_sel_w - 1 downto 0) := "10";
     constant pavr_alu_h_sel_neg8      : std_logic_vector(pavr_alu_h_sel_w - 1 downto 0) := "11";
   constant pavr_alu_s_sel_w        : natural := 1;
      constant pavr_alu_s_sel_same     : std_logic := '0';
      constant pavr_alu_s_sel_nxorv    : std_logic := '1';
   constant pavr_alu_v_sel_w        : natural := 4;
     constant pavr_alu_v_sel_same      : std_logic_vector(pavr_alu_v_sel_w - 1 downto 0) := "0000";
     constant pavr_alu_v_sel_add8      : std_logic_vector(pavr_alu_v_sel_w - 1 downto 0) := "0001";
     constant pavr_alu_v_sel_sub8      : std_logic_vector(pavr_alu_v_sel_w - 1 downto 0) := "0010";
     constant pavr_alu_v_sel_z         : std_logic_vector(pavr_alu_v_sel_w - 1 downto 0) := "0011";
     constant pavr_alu_v_sel_inc8      : std_logic_vector(pavr_alu_v_sel_w - 1 downto 0) := "0100";
     constant pavr_alu_v_sel_dec8      : std_logic_vector(pavr_alu_v_sel_w - 1 downto 0) := "0101";
     constant pavr_alu_v_sel_neg8      : std_logic_vector(pavr_alu_v_sel_w - 1 downto 0) := "0110";
     constant pavr_alu_v_sel_nxorc     : std_logic_vector(pavr_alu_v_sel_w - 1 downto 0) := "0111";
     constant pavr_alu_v_sel_add16     : std_logic_vector(pavr_alu_v_sel_w - 1 downto 0) := "1000";
     constant pavr_alu_v_sel_sub16     : std_logic_vector(pavr_alu_v_sel_w - 1 downto 0) := "1001";
   constant pavr_alu_n_sel_w        : natural := 2;
     constant pavr_alu_n_sel_same      : std_logic_vector(pavr_alu_n_sel_w - 1 downto 0) := "00";
     constant pavr_alu_n_sel_msb8      : std_logic_vector(pavr_alu_n_sel_w - 1 downto 0) := "01";
     constant pavr_alu_n_sel_z         : std_logic_vector(pavr_alu_n_sel_w - 1 downto 0) := "10";
     constant pavr_alu_n_sel_msb16     : std_logic_vector(pavr_alu_n_sel_w - 1 downto 0) := "11";
   constant pavr_alu_z_sel_w        : natural := 2;
      constant pavr_alu_z_sel_same     : std_logic_vector(pavr_alu_z_sel_w - 1 downto 0) := "00";
      constant pavr_alu_z_sel_z8       : std_logic_vector(pavr_alu_z_sel_w - 1 downto 0) := "01";
      constant pavr_alu_z_sel_z8c      : std_logic_vector(pavr_alu_z_sel_w - 1 downto 0) := "10";
      constant pavr_alu_z_sel_z16      : std_logic_vector(pavr_alu_z_sel_w - 1 downto 0) := "11";
   constant pavr_alu_c_sel_w        : natural := 4;
      constant pavr_alu_c_sel_same     : std_logic_vector(pavr_alu_c_sel_w - 1 downto 0) := "0000";
      constant pavr_alu_c_sel_add8     : std_logic_vector(pavr_alu_c_sel_w - 1 downto 0) := "0001";
      constant pavr_alu_c_sel_sub8     : std_logic_vector(pavr_alu_c_sel_w - 1 downto 0) := "0010";
      constant pavr_alu_c_sel_one      : std_logic_vector(pavr_alu_c_sel_w - 1 downto 0) := "0011";
      constant pavr_alu_c_sel_neg8     : std_logic_vector(pavr_alu_c_sel_w - 1 downto 0) := "0100";
      constant pavr_alu_c_sel_lsbop1   : std_logic_vector(pavr_alu_c_sel_w - 1 downto 0) := "0101";
      constant pavr_alu_c_sel_add16    : std_logic_vector(pavr_alu_c_sel_w - 1 downto 0) := "0110";
      constant pavr_alu_c_sel_sub16    : std_logic_vector(pavr_alu_c_sel_w - 1 downto 0) := "0111";
      constant pavr_alu_c_sel_mul8    : std_logic_vector(pavr_alu_c_sel_w - 1 downto 0) := "1000";
      

   -- IOF
   constant pavr_iof_opcode_w          : natural := 3;
      constant pavr_iof_opcode_nop        : std_logic_vector(pavr_iof_opcode_w - 1 downto 0) := "000";
      constant pavr_iof_opcode_rdbyte     : std_logic_vector(pavr_iof_opcode_w - 1 downto 0) := "001";
      constant pavr_iof_opcode_wrbyte     : std_logic_vector(pavr_iof_opcode_w - 1 downto 0) := "010";
      constant pavr_iof_opcode_clrbit     : std_logic_vector(pavr_iof_opcode_w - 1 downto 0) := "011";
      constant pavr_iof_opcode_setbit     : std_logic_vector(pavr_iof_opcode_w - 1 downto 0) := "100";
      constant pavr_iof_opcode_ldbit      : std_logic_vector(pavr_iof_opcode_w - 1 downto 0) := "101";
      constant pavr_iof_opcode_stbit      : std_logic_vector(pavr_iof_opcode_w - 1 downto 0) := "110";

   -- DACU
   constant pavr_dacudo_sel_w             : natural := 2;
      constant pavr_dacudo_sel_rfrd1do       : std_logic_vector(pavr_dacudo_sel_w - 1 downto 0) := "00";
      constant pavr_dacudo_sel_iofdo         : std_logic_vector(pavr_dacudo_sel_w - 1 downto 0) := "01";
      constant pavr_dacudo_sel_dmdo          : std_logic_vector(pavr_dacudo_sel_w - 1 downto 0) := "10";
   constant pavr_dacu_device_sel_w        : natural := 2;
     constant pavr_dacu_device_sel_rf        : std_logic_vector(pavr_dacu_device_sel_w - 1 downto 0) := "00";
     constant pavr_dacu_device_sel_iof       : std_logic_vector(pavr_dacu_device_sel_w - 1 downto 0) := "01";
     constant pavr_dacu_device_sel_dm        : std_logic_vector(pavr_dacu_device_sel_w - 1 downto 0) := "10";

   -- PM
   constant pavr_pc_sel_w        : natural := 1;
      constant pavr_pc_sel_same     : std_logic := '0';
      constant pavr_pc_sel_inc      : std_logic := '1';

   -- SFU
   constant pavr_s5_skip_cond_sel_w             : natural := 2;
      constant pavr_s5_skip_cond_sel_zflag         : std_logic_vector(pavr_s5_skip_cond_sel_w - 1 downto 0) := "00";
      constant pavr_s5_skip_cond_sel_bitrf         : std_logic_vector(pavr_s5_skip_cond_sel_w - 1 downto 0) := "01";
      constant pavr_s5_skip_cond_sel_notbitrf      : std_logic_vector(pavr_s5_skip_cond_sel_w - 1 downto 0) := "10";
   constant pavr_s6_skip_cond_sel_w             : natural := 1;
      constant pavr_s6_skip_cond_sel_bitiof        : std_logic := '0';
      constant pavr_s6_skip_cond_sel_notbitiof     : std_logic := '1';
   constant pavr_s5_skip_bitrf_sel_w      : natural := 3;
   constant pavr_s6_skip_bitiof_sel_w     : natural := 3;
   constant pavr_s5_branch_cond_sel_w              : natural := 1;
      constant pavr_s5_branch_cond_sel_bitsreg        : std_logic := '0';
      constant pavr_s5_branch_cond_sel_notbitsreg     : std_logic := '1';

end;
-- </File body>
