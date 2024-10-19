
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_uart_top_address_width3 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_uart_top_address_width3;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_uart_top_address_width3.all;

entity rx_func_DW01_inc_1 is

   port( A : in std_logic_vector (11 downto 0);  SUM : out std_logic_vector (11
         downto 0));

end rx_func_DW01_inc_1;

architecture SYN_rpl of rx_func_DW01_inc_1 is

   component AN3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component ND2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component EN
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component EO
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component IVI
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal SUM_11_port, SUM_10_port, SUM_9_port, SUM_8_port, SUM_7_port, 
      SUM_6_port, SUM_5_port, SUM_4_port, SUM_3_port, SUM_2_port, SUM_1_port, 
      SUM_0_port, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12 : std_logic;

begin
   SUM <= ( SUM_11_port, SUM_10_port, SUM_9_port, SUM_8_port, SUM_7_port, 
      SUM_6_port, SUM_5_port, SUM_4_port, SUM_3_port, SUM_2_port, SUM_1_port, 
      SUM_0_port );
   
   U1 : IVI port map( A => A(0), Z => SUM_0_port);
   U2 : IVI port map( A => A(10), Z => n2);
   U3 : EO port map( A => A(9), B => n3, Z => SUM_9_port);
   U4 : EN port map( A => A(8), B => n4, Z => SUM_8_port);
   U5 : ND2 port map( A => A(7), B => n5, Z => n4);
   U6 : EO port map( A => A(7), B => n5, Z => SUM_7_port);
   U7 : EN port map( A => A(6), B => n6, Z => SUM_6_port);
   U8 : ND2 port map( A => A(5), B => n7, Z => n6);
   U9 : EO port map( A => A(5), B => n7, Z => SUM_5_port);
   U10 : EN port map( A => A(4), B => n8, Z => SUM_4_port);
   U11 : ND2 port map( A => A(3), B => n9, Z => n8);
   U12 : EO port map( A => A(3), B => n9, Z => SUM_3_port);
   U13 : EN port map( A => A(2), B => n10, Z => SUM_2_port);
   U14 : ND2 port map( A => A(1), B => A(0), Z => n10);
   U15 : EN port map( A => A(1), B => SUM_0_port, Z => SUM_1_port);
   U16 : EO port map( A => A(11), B => n11, Z => SUM_11_port);
   U17 : NR2 port map( A => n12, B => n2, Z => n11);
   U18 : EN port map( A => A(10), B => n12, Z => SUM_10_port);
   U19 : ND2 port map( A => n3, B => A(9), Z => n12);
   U20 : AN3 port map( A => A(7), B => n5, C => A(8), Z => n3);
   U21 : AN3 port map( A => A(5), B => n7, C => A(6), Z => n5);
   U22 : AN3 port map( A => A(3), B => n9, C => A(4), Z => n7);
   U23 : AN3 port map( A => A(1), B => A(0), C => A(2), Z => n9);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_uart_top_address_width3.all;

entity rx_func_DW01_inc_0 is

   port( A : in std_logic_vector (15 downto 0);  SUM : out std_logic_vector (15
         downto 0));

end rx_func_DW01_inc_0;

architecture SYN_rpl of rx_func_DW01_inc_0 is

   component AN3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component ND2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component EN
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component EO
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component IVI
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal SUM_15_port, SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port, 
      SUM_10_port, SUM_9_port, SUM_8_port, SUM_7_port, SUM_6_port, SUM_5_port, 
      SUM_4_port, SUM_3_port, SUM_2_port, SUM_1_port, n1, SUM_0_port, n3, n4, 
      n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16 : std_logic;

begin
   SUM <= ( SUM_15_port, SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port, 
      SUM_10_port, SUM_9_port, SUM_8_port, SUM_7_port, SUM_6_port, SUM_5_port, 
      SUM_4_port, SUM_3_port, SUM_2_port, SUM_1_port, SUM_0_port );
   
   U1 : IVI port map( A => A(14), Z => n1);
   U2 : IVI port map( A => A(0), Z => SUM_0_port);
   U3 : EO port map( A => A(9), B => n3, Z => SUM_9_port);
   U4 : EN port map( A => A(8), B => n4, Z => SUM_8_port);
   U5 : ND2 port map( A => A(7), B => n5, Z => n4);
   U6 : EO port map( A => A(7), B => n5, Z => SUM_7_port);
   U7 : EN port map( A => A(6), B => n6, Z => SUM_6_port);
   U8 : ND2 port map( A => A(5), B => n7, Z => n6);
   U9 : EO port map( A => A(5), B => n7, Z => SUM_5_port);
   U10 : EN port map( A => A(4), B => n8, Z => SUM_4_port);
   U11 : ND2 port map( A => A(3), B => n9, Z => n8);
   U12 : EO port map( A => A(3), B => n9, Z => SUM_3_port);
   U13 : EN port map( A => A(2), B => n10, Z => SUM_2_port);
   U14 : ND2 port map( A => A(1), B => A(0), Z => n10);
   U15 : EN port map( A => A(1), B => SUM_0_port, Z => SUM_1_port);
   U16 : EO port map( A => A(15), B => n11, Z => SUM_15_port);
   U17 : NR2 port map( A => n12, B => n1, Z => n11);
   U18 : EN port map( A => A(14), B => n12, Z => SUM_14_port);
   U19 : ND2 port map( A => A(13), B => n13, Z => n12);
   U20 : EO port map( A => A(13), B => n13, Z => SUM_13_port);
   U21 : AN3 port map( A => A(11), B => n14, C => A(12), Z => n13);
   U22 : EN port map( A => A(12), B => n15, Z => SUM_12_port);
   U23 : ND2 port map( A => A(11), B => n14, Z => n15);
   U24 : EO port map( A => A(11), B => n14, Z => SUM_11_port);
   U25 : AN3 port map( A => n3, B => A(9), C => A(10), Z => n14);
   U26 : EN port map( A => A(10), B => n16, Z => SUM_10_port);
   U27 : ND2 port map( A => n3, B => A(9), Z => n16);
   U28 : AN3 port map( A => A(7), B => n5, C => A(8), Z => n3);
   U29 : AN3 port map( A => A(5), B => n7, C => A(6), Z => n5);
   U30 : AN3 port map( A => A(3), B => n9, C => A(4), Z => n7);
   U31 : AN3 port map( A => A(1), B => A(0), C => A(2), Z => n9);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_uart_top_address_width3.all;

entity tx_func_DW01_inc_0 is

   port( A : in std_logic_vector (15 downto 0);  SUM : out std_logic_vector (15
         downto 0));

end tx_func_DW01_inc_0;

architecture SYN_rpl of tx_func_DW01_inc_0 is

   component AN3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component ND2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component EN
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component EO
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component IVI
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal SUM_15_port, SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port, 
      SUM_10_port, SUM_9_port, SUM_8_port, SUM_7_port, SUM_6_port, SUM_5_port, 
      SUM_4_port, SUM_3_port, SUM_2_port, SUM_1_port, SUM_0_port, n2, n3, n4, 
      n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16 : std_logic;

begin
   SUM <= ( SUM_15_port, SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port, 
      SUM_10_port, SUM_9_port, SUM_8_port, SUM_7_port, SUM_6_port, SUM_5_port, 
      SUM_4_port, SUM_3_port, SUM_2_port, SUM_1_port, SUM_0_port );
   
   U1 : IVI port map( A => A(0), Z => SUM_0_port);
   U2 : IVI port map( A => A(14), Z => n2);
   U3 : EO port map( A => A(9), B => n3, Z => SUM_9_port);
   U4 : EN port map( A => A(8), B => n4, Z => SUM_8_port);
   U5 : ND2 port map( A => A(7), B => n5, Z => n4);
   U6 : EO port map( A => A(7), B => n5, Z => SUM_7_port);
   U7 : EN port map( A => A(6), B => n6, Z => SUM_6_port);
   U8 : ND2 port map( A => A(5), B => n7, Z => n6);
   U9 : EO port map( A => A(5), B => n7, Z => SUM_5_port);
   U10 : EN port map( A => A(4), B => n8, Z => SUM_4_port);
   U11 : ND2 port map( A => A(3), B => n9, Z => n8);
   U12 : EO port map( A => A(3), B => n9, Z => SUM_3_port);
   U13 : EN port map( A => A(2), B => n10, Z => SUM_2_port);
   U14 : ND2 port map( A => A(1), B => A(0), Z => n10);
   U15 : EN port map( A => A(1), B => SUM_0_port, Z => SUM_1_port);
   U16 : EO port map( A => A(15), B => n11, Z => SUM_15_port);
   U17 : NR2 port map( A => n12, B => n2, Z => n11);
   U18 : EN port map( A => A(14), B => n12, Z => SUM_14_port);
   U19 : ND2 port map( A => A(13), B => n13, Z => n12);
   U20 : EO port map( A => A(13), B => n13, Z => SUM_13_port);
   U21 : AN3 port map( A => A(11), B => n14, C => A(12), Z => n13);
   U22 : EN port map( A => A(12), B => n15, Z => SUM_12_port);
   U23 : ND2 port map( A => A(11), B => n14, Z => n15);
   U24 : EO port map( A => A(11), B => n14, Z => SUM_11_port);
   U25 : AN3 port map( A => n3, B => A(9), C => A(10), Z => n14);
   U26 : EN port map( A => A(10), B => n16, Z => SUM_10_port);
   U27 : ND2 port map( A => n3, B => A(9), Z => n16);
   U28 : AN3 port map( A => A(7), B => n5, C => A(8), Z => n3);
   U29 : AN3 port map( A => A(5), B => n7, C => A(6), Z => n5);
   U30 : AN3 port map( A => A(3), B => n9, C => A(4), Z => n7);
   U31 : AN3 port map( A => A(1), B => A(0), C => A(2), Z => n9);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_uart_top_address_width3.all;

entity tx_fifo is

   port( clk, reset, write_tx_data : in std_logic;  tx_data : in 
         std_logic_vector (7 downto 0);  tx_fifo_full, tx_fifo_empty : out 
         std_logic;  tx_fifo_entries_free, tx_func_data : out std_logic_vector 
         (7 downto 0);  tx_func_apply_data : out std_logic;  tx_func_sending : 
         in std_logic);

end tx_fifo;

architecture SYN_behaviour of tx_fifo is

   component IVI
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AO2
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component EON1
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AO4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AO6
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component AO7
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component NR4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AO3
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component ND3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component ND4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component NR3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component AN3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component IVDA
      port( A : in std_logic;  Y, Z : out std_logic);
   end component;
   
   component OR3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component NR2I
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component ND2I
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO1P
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component FD1
      port( D, CP : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal X_Logic0_port, tx_fifo_full_port, tx_fifo_empty_port, 
      tx_fifo_entries_free_3_port, tx_fifo_entries_free_2_port, 
      tx_fifo_entries_free_1_port, tx_fifo_entries_free_0_port, 
      tx_out_addr_q_2_port, tx_out_addr_q_1_port, tx_out_addr_q_0_port, 
      tx_in_addr_q_1_port, tx_in_addr_q_0_port, ram_0_7_port, ram_0_6_port, 
      ram_0_5_port, ram_0_4_port, ram_0_3_port, ram_0_2_port, ram_0_1_port, 
      ram_0_0_port, ram_1_7_port, ram_1_6_port, ram_1_5_port, ram_1_4_port, 
      ram_1_3_port, ram_1_2_port, ram_1_1_port, ram_1_0_port, ram_2_7_port, 
      ram_2_6_port, ram_2_5_port, ram_2_4_port, ram_2_3_port, ram_2_2_port, 
      ram_2_1_port, ram_2_0_port, ram_3_7_port, ram_3_6_port, ram_3_5_port, 
      ram_3_4_port, ram_3_3_port, ram_3_2_port, ram_3_1_port, ram_3_0_port, 
      ram_4_7_port, ram_4_6_port, ram_4_5_port, ram_4_4_port, ram_4_3_port, 
      ram_4_2_port, ram_4_1_port, ram_4_0_port, ram_5_7_port, ram_5_6_port, 
      ram_5_5_port, ram_5_4_port, ram_5_3_port, ram_5_2_port, ram_5_1_port, 
      ram_5_0_port, ram_6_7_port, ram_6_6_port, ram_6_5_port, ram_6_4_port, 
      ram_6_3_port, ram_6_2_port, ram_6_1_port, ram_6_0_port, ram_7_7_port, 
      ram_7_6_port, ram_7_5_port, ram_7_4_port, ram_7_3_port, ram_7_2_port, 
      ram_7_1_port, ram_7_0_port, n79, n80, n81, n83, n84, n85, n86, n87, n88, 
      n89, n91, n92, n93, n94, n95, n96, n97, n98, n103, n104, n105, n106, n107
      , n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
      n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, 
      n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, 
      n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, 
      n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, 
      n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, 
      n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, 
      n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, 
      n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, 
      n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, 
      n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, 
      n240, n241, n242, n243, n244, n245, n246, n247, n248, 
      tx_func_apply_data_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, 
      n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26
      , n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, 
      n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55
      , n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, 
      n70, n71, n72, n73, n74, n75, n76, n77, n78, n82, n90, n99, n100, n101, 
      n102, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, 
      n260, n261, n262, n263, n264, n_1000, n_1001, n_1002, n_1003, n_1004, 
      n_1005, n_1006, n_1007, n_1008, n_1009, n_1010, n_1011, n_1012, n_1013, 
      n_1014, n_1015, n_1016, n_1017, n_1018, n_1019, n_1020, n_1021, n_1022, 
      n_1023, n_1024, n_1025, n_1026, n_1027, n_1028, n_1029, n_1030, n_1031, 
      n_1032, n_1033, n_1034, n_1035, n_1036, n_1037, n_1038, n_1039, n_1040, 
      n_1041, n_1042, n_1043, n_1044, n_1045, n_1046, n_1047, n_1048, n_1049, 
      n_1050, n_1051, n_1052, n_1053, n_1054, n_1055, n_1056, n_1057, n_1058, 
      n_1059, n_1060, n_1061, n_1062, n_1063, n_1064, n_1065, n_1066, n_1067, 
      n_1068, n_1069, n_1070, n_1071, n_1072 : std_logic;

begin
   tx_fifo_full <= tx_fifo_full_port;
   tx_fifo_empty <= tx_fifo_empty_port;
   tx_fifo_entries_free <= ( X_Logic0_port, X_Logic0_port, X_Logic0_port, 
      X_Logic0_port, tx_fifo_entries_free_3_port, tx_fifo_entries_free_2_port, 
      tx_fifo_entries_free_1_port, tx_fifo_entries_free_0_port );
   tx_func_apply_data <= tx_func_apply_data_port;
   
   X_Logic0_port <= '0';
   tx_entries_back_q_reg_0_inst : FD1 port map( D => n248, CP => clk, Q => 
                           tx_fifo_entries_free_0_port, QN => n83);
   tx_entries_back_q_reg_1_inst : FD1 port map( D => n246, CP => clk, Q => 
                           tx_fifo_entries_free_1_port, QN => n81);
   tx_entries_back_q_reg_3_inst : FD1 port map( D => n247, CP => clk, Q => 
                           tx_fifo_entries_free_3_port, QN => n79);
   tx_entries_back_q_reg_2_inst : FD1 port map( D => n245, CP => clk, Q => 
                           tx_fifo_entries_free_2_port, QN => n80);
   tx_out_addr_q_reg_0_inst : FD1 port map( D => n244, CP => clk, Q => 
                           tx_out_addr_q_0_port, QN => n86);
   tx_out_addr_q_reg_1_inst : FD1 port map( D => n243, CP => clk, Q => 
                           tx_out_addr_q_1_port, QN => n85);
   tx_out_addr_q_reg_2_inst : FD1 port map( D => n242, CP => clk, Q => 
                           tx_out_addr_q_2_port, QN => n84);
   tx_in_addr_q_reg_0_inst : FD1 port map( D => n241, CP => clk, Q => 
                           tx_in_addr_q_0_port, QN => n89);
   tx_in_addr_q_reg_1_inst : FD1 port map( D => n240, CP => clk, Q => 
                           tx_in_addr_q_1_port, QN => n88);
   tx_in_addr_q_reg_2_inst : FD1 port map( D => n239, CP => clk, Q => n_1000, 
                           QN => n87);
   ram_reg_0_7_inst : FD1 port map( D => n257, CP => clk, Q => ram_0_7_port, QN
                           => n_1001);
   ram_reg_0_6_inst : FD1 port map( D => n256, CP => clk, Q => ram_0_6_port, QN
                           => n_1002);
   ram_reg_0_5_inst : FD1 port map( D => n255, CP => clk, Q => ram_0_5_port, QN
                           => n_1003);
   ram_reg_0_4_inst : FD1 port map( D => n254, CP => clk, Q => ram_0_4_port, QN
                           => n_1004);
   ram_reg_0_3_inst : FD1 port map( D => n253, CP => clk, Q => ram_0_3_port, QN
                           => n_1005);
   ram_reg_0_2_inst : FD1 port map( D => n252, CP => clk, Q => ram_0_2_port, QN
                           => n_1006);
   ram_reg_0_1_inst : FD1 port map( D => n251, CP => clk, Q => ram_0_1_port, QN
                           => n_1007);
   ram_reg_0_0_inst : FD1 port map( D => n250, CP => clk, Q => ram_0_0_port, QN
                           => n_1008);
   ram_reg_1_7_inst : FD1 port map( D => n249, CP => clk, Q => ram_1_7_port, QN
                           => n_1009);
   ram_reg_1_6_inst : FD1 port map( D => n102, CP => clk, Q => ram_1_6_port, QN
                           => n_1010);
   ram_reg_1_5_inst : FD1 port map( D => n101, CP => clk, Q => ram_1_5_port, QN
                           => n_1011);
   ram_reg_1_4_inst : FD1 port map( D => n100, CP => clk, Q => ram_1_4_port, QN
                           => n_1012);
   ram_reg_1_3_inst : FD1 port map( D => n99, CP => clk, Q => ram_1_3_port, QN 
                           => n_1013);
   ram_reg_1_2_inst : FD1 port map( D => n90, CP => clk, Q => ram_1_2_port, QN 
                           => n_1014);
   ram_reg_1_1_inst : FD1 port map( D => n82, CP => clk, Q => ram_1_1_port, QN 
                           => n_1015);
   ram_reg_1_0_inst : FD1 port map( D => n78, CP => clk, Q => ram_1_0_port, QN 
                           => n_1016);
   ram_reg_2_7_inst : FD1 port map( D => n77, CP => clk, Q => ram_2_7_port, QN 
                           => n_1017);
   ram_reg_2_6_inst : FD1 port map( D => n76, CP => clk, Q => ram_2_6_port, QN 
                           => n_1018);
   ram_reg_2_5_inst : FD1 port map( D => n75, CP => clk, Q => ram_2_5_port, QN 
                           => n_1019);
   ram_reg_2_4_inst : FD1 port map( D => n74, CP => clk, Q => ram_2_4_port, QN 
                           => n_1020);
   ram_reg_2_3_inst : FD1 port map( D => n73, CP => clk, Q => ram_2_3_port, QN 
                           => n_1021);
   ram_reg_2_2_inst : FD1 port map( D => n72, CP => clk, Q => ram_2_2_port, QN 
                           => n_1022);
   ram_reg_2_1_inst : FD1 port map( D => n71, CP => clk, Q => ram_2_1_port, QN 
                           => n_1023);
   ram_reg_2_0_inst : FD1 port map( D => n70, CP => clk, Q => ram_2_0_port, QN 
                           => n_1024);
   ram_reg_3_7_inst : FD1 port map( D => n69, CP => clk, Q => ram_3_7_port, QN 
                           => n_1025);
   ram_reg_3_6_inst : FD1 port map( D => n68, CP => clk, Q => ram_3_6_port, QN 
                           => n_1026);
   ram_reg_3_5_inst : FD1 port map( D => n67, CP => clk, Q => ram_3_5_port, QN 
                           => n_1027);
   ram_reg_3_4_inst : FD1 port map( D => n66, CP => clk, Q => ram_3_4_port, QN 
                           => n_1028);
   ram_reg_3_3_inst : FD1 port map( D => n65, CP => clk, Q => ram_3_3_port, QN 
                           => n_1029);
   ram_reg_3_2_inst : FD1 port map( D => n64, CP => clk, Q => ram_3_2_port, QN 
                           => n_1030);
   ram_reg_3_1_inst : FD1 port map( D => n63, CP => clk, Q => ram_3_1_port, QN 
                           => n_1031);
   ram_reg_3_0_inst : FD1 port map( D => n62, CP => clk, Q => ram_3_0_port, QN 
                           => n_1032);
   ram_reg_4_7_inst : FD1 port map( D => n61, CP => clk, Q => ram_4_7_port, QN 
                           => n_1033);
   ram_reg_4_6_inst : FD1 port map( D => n60, CP => clk, Q => ram_4_6_port, QN 
                           => n_1034);
   ram_reg_4_5_inst : FD1 port map( D => n59, CP => clk, Q => ram_4_5_port, QN 
                           => n_1035);
   ram_reg_4_4_inst : FD1 port map( D => n58, CP => clk, Q => ram_4_4_port, QN 
                           => n_1036);
   ram_reg_4_3_inst : FD1 port map( D => n57, CP => clk, Q => ram_4_3_port, QN 
                           => n_1037);
   ram_reg_4_2_inst : FD1 port map( D => n56, CP => clk, Q => ram_4_2_port, QN 
                           => n_1038);
   ram_reg_4_1_inst : FD1 port map( D => n55, CP => clk, Q => ram_4_1_port, QN 
                           => n_1039);
   ram_reg_4_0_inst : FD1 port map( D => n54, CP => clk, Q => ram_4_0_port, QN 
                           => n_1040);
   ram_reg_5_7_inst : FD1 port map( D => n53, CP => clk, Q => ram_5_7_port, QN 
                           => n_1041);
   ram_reg_5_6_inst : FD1 port map( D => n52, CP => clk, Q => ram_5_6_port, QN 
                           => n_1042);
   ram_reg_5_5_inst : FD1 port map( D => n51, CP => clk, Q => ram_5_5_port, QN 
                           => n_1043);
   ram_reg_5_4_inst : FD1 port map( D => n50, CP => clk, Q => ram_5_4_port, QN 
                           => n_1044);
   ram_reg_5_3_inst : FD1 port map( D => n49, CP => clk, Q => ram_5_3_port, QN 
                           => n_1045);
   ram_reg_5_2_inst : FD1 port map( D => n48, CP => clk, Q => ram_5_2_port, QN 
                           => n_1046);
   ram_reg_5_1_inst : FD1 port map( D => n47, CP => clk, Q => ram_5_1_port, QN 
                           => n_1047);
   ram_reg_5_0_inst : FD1 port map( D => n46, CP => clk, Q => ram_5_0_port, QN 
                           => n_1048);
   ram_reg_6_7_inst : FD1 port map( D => n45, CP => clk, Q => ram_6_7_port, QN 
                           => n_1049);
   ram_reg_6_6_inst : FD1 port map( D => n44, CP => clk, Q => ram_6_6_port, QN 
                           => n_1050);
   ram_reg_6_5_inst : FD1 port map( D => n43, CP => clk, Q => ram_6_5_port, QN 
                           => n_1051);
   ram_reg_6_4_inst : FD1 port map( D => n42, CP => clk, Q => ram_6_4_port, QN 
                           => n_1052);
   ram_reg_6_3_inst : FD1 port map( D => n41, CP => clk, Q => ram_6_3_port, QN 
                           => n_1053);
   ram_reg_6_2_inst : FD1 port map( D => n40, CP => clk, Q => ram_6_2_port, QN 
                           => n_1054);
   ram_reg_6_1_inst : FD1 port map( D => n39, CP => clk, Q => ram_6_1_port, QN 
                           => n_1055);
   ram_reg_6_0_inst : FD1 port map( D => n38, CP => clk, Q => ram_6_0_port, QN 
                           => n_1056);
   ram_reg_7_7_inst : FD1 port map( D => n37, CP => clk, Q => ram_7_7_port, QN 
                           => n_1057);
   ram_reg_7_6_inst : FD1 port map( D => n36, CP => clk, Q => ram_7_6_port, QN 
                           => n_1058);
   ram_reg_7_5_inst : FD1 port map( D => n35, CP => clk, Q => ram_7_5_port, QN 
                           => n_1059);
   ram_reg_7_4_inst : FD1 port map( D => n34, CP => clk, Q => ram_7_4_port, QN 
                           => n_1060);
   ram_reg_7_3_inst : FD1 port map( D => n33, CP => clk, Q => ram_7_3_port, QN 
                           => n_1061);
   ram_reg_7_2_inst : FD1 port map( D => n32, CP => clk, Q => ram_7_2_port, QN 
                           => n_1062);
   ram_reg_7_1_inst : FD1 port map( D => n31, CP => clk, Q => ram_7_1_port, QN 
                           => n_1063);
   ram_reg_7_0_inst : FD1 port map( D => n30, CP => clk, Q => ram_7_0_port, QN 
                           => n_1064);
   U51 : ND2I port map( A => n20, B => n261, Z => n132);
   U60 : ND2I port map( A => n18, B => n261, Z => n142);
   U69 : ND2I port map( A => n16, B => n261, Z => n152);
   U78 : ND2I port map( A => n14, B => n261, Z => n162);
   U87 : ND2I port map( A => n6, B => n261, Z => n171);
   U97 : ND2I port map( A => n1, B => n261, Z => n180);
   U107 : ND2I port map( A => n5, B => n261, Z => n189);
   U117 : ND2I port map( A => n2, B => n261, Z => n198);
   U123 : ND2I port map( A => tx_in_addr_q_1_port, B => n87, Z => n209);
   U128 : ND2I port map( A => n264, B => n89, Z => n212);
   U131 : ND2I port map( A => tx_out_addr_q_1_port, B => n84, Z => n214);
   U135 : ND2I port map( A => n264, B => n86, Z => n218);
   U136 : NR2I port map( A => reset, B => tx_func_apply_data_port, Z => n217);
   U138 : ND2I port map( A => n29, B => n80, Z => n221);
   U140 : NR2I port map( A => n260, B => n83, Z => n224);
   U141 : NR2I port map( A => tx_fifo_entries_free_1_port, B => n206, Z => n222
                           );
   U142 : NR2I port map( A => n225, B => n226, Z => n219);
   U145 : ND2I port map( A => n29, B => n81, Z => n229);
   U148 : ND2I port map( A => n29, B => n230, Z => n225);
   U150 : AO1P port map( A => tx_fifo_entries_free_3_port, B => n233, C => 
                           reset, D => n234, Z => n232);
   U152 : ND2I port map( A => tx_fifo_entries_free_2_port, B => 
                           tx_fifo_entries_free_1_port, Z => n235);
   U155 : ND2I port map( A => tx_fifo_entries_free_1_port, B => n261, Z => n236
                           );
   U157 : NR2I port map( A => reset, B => tx_fifo_entries_free_0_port, Z => 
                           n223);
   U158 : NR2I port map( A => n260, B => tx_func_apply_data_port, Z => n231);
   U159 : NR2I port map( A => reset, B => n261, Z => n211);
   U161 : ND2I port map( A => write_tx_data, B => n262, Z => n206);
   U162 : NR2I port map( A => n238, B => tx_fifo_entries_free_3_port, Z => 
                           tx_fifo_full_port);
   U163 : NR2I port map( A => n79, B => n238, Z => tx_fifo_empty_port);
   U249 : OR3 port map( A => n211, B => reset, C => n89, Z => n208);
   U250 : OR3 port map( A => n217, B => reset, C => n86, Z => n213);
   U251 : OR3 port map( A => n206, B => reset, C => n83, Z => n230);
   U3 : NR3 port map( A => n258, B => n160, C => n140, Z => n1);
   U4 : NR3 port map( A => n259, B => n258, C => n140, Z => n2);
   U5 : NR3 port map( A => n259, B => n150, C => n140, Z => n5);
   U6 : NR3 port map( A => n150, B => n160, C => n140, Z => n6);
   U7 : IVDA port map( A => n132, Y => n7, Z => n28);
   U8 : IVDA port map( A => n142, Y => n8, Z => n27);
   U9 : IVDA port map( A => n152, Y => n9, Z => n26);
   U10 : IVDA port map( A => n180, Y => n3, Z => n23);
   U11 : IVDA port map( A => n189, Y => n10, Z => n22);
   U12 : IVDA port map( A => n198, Y => n4, Z => n21);
   U13 : IVDA port map( A => n162, Y => n12, Z => n25);
   U14 : IVDA port map( A => n171, Y => n11, Z => n24);
   U15 : IVI port map( A => n206, Z => n261);
   U16 : IVDA port map( A => n96, Y => n_1065, Z => n18);
   U17 : IVDA port map( A => n95, Y => n_1066, Z => n20);
   U18 : IVDA port map( A => n97, Y => n_1067, Z => n16);
   U19 : IVDA port map( A => n98, Y => n_1068, Z => n14);
   U20 : IVDA port map( A => n96, Y => n_1069, Z => n17);
   U21 : IVDA port map( A => n95, Y => n_1070, Z => n19);
   U22 : IVDA port map( A => n98, Y => n_1071, Z => n13);
   U23 : IVDA port map( A => n97, Y => n_1072, Z => n15);
   U24 : AN3 port map( A => n259, B => n140, C => n150, Z => n96);
   U25 : AN3 port map( A => n259, B => n140, C => n258, Z => n95);
   U26 : AN3 port map( A => n258, B => n140, C => n160, Z => n97);
   U27 : AN3 port map( A => n150, B => n140, C => n160, Z => n98);
   U28 : NR3 port map( A => tx_func_sending, B => tx_fifo_empty_port, C => n261
                           , Z => tx_func_apply_data_port);
   U29 : AO2 port map( A => n261, B => tx_in_addr_q_1_port, C => n206, D => 
                           tx_out_addr_q_1_port, Z => n160);
   U30 : AO2 port map( A => n261, B => tx_in_addr_q_0_port, C => n206, D => 
                           tx_out_addr_q_0_port, Z => n150);
   U31 : AO2 port map( A => ram_3_0_port, B => n6, C => ram_2_0_port, D => n1, 
                           Z => n128);
   U32 : AO2 port map( A => ram_1_0_port, B => n5, C => ram_0_0_port, D => n2, 
                           Z => n127);
   U33 : AO2 port map( A => ram_3_1_port, B => n6, C => ram_2_1_port, D => n1, 
                           Z => n124);
   U34 : AO2 port map( A => ram_1_1_port, B => n5, C => ram_0_1_port, D => n2, 
                           Z => n123);
   U35 : AO2 port map( A => ram_3_2_port, B => n6, C => ram_2_2_port, D => n1, 
                           Z => n120);
   U36 : AO2 port map( A => ram_1_2_port, B => n5, C => ram_0_2_port, D => n2, 
                           Z => n119);
   U37 : AO2 port map( A => ram_3_3_port, B => n6, C => ram_2_3_port, D => n1, 
                           Z => n116);
   U38 : AO2 port map( A => ram_1_3_port, B => n5, C => ram_0_3_port, D => n2, 
                           Z => n115);
   U39 : AO2 port map( A => ram_3_4_port, B => n6, C => ram_2_4_port, D => n1, 
                           Z => n112);
   U40 : AO2 port map( A => ram_1_4_port, B => n5, C => ram_0_4_port, D => n2, 
                           Z => n111);
   U41 : AO2 port map( A => ram_3_5_port, B => n6, C => ram_2_5_port, D => n1, 
                           Z => n108);
   U42 : AO2 port map( A => ram_1_5_port, B => n5, C => ram_0_5_port, D => n2, 
                           Z => n107);
   U43 : AO2 port map( A => ram_3_6_port, B => n6, C => ram_2_6_port, D => n1, 
                           Z => n104);
   U44 : AO2 port map( A => ram_1_6_port, B => n5, C => ram_0_6_port, D => n2, 
                           Z => n103);
   U45 : AO2 port map( A => ram_3_7_port, B => n6, C => ram_2_7_port, D => n1, 
                           Z => n92);
   U46 : AO2 port map( A => ram_1_7_port, B => n5, C => ram_0_7_port, D => n2, 
                           Z => n91);
   U47 : ND4 port map( A => n127, B => n128, C => n129, D => n130, Z => 
                           tx_func_data(0));
   U48 : AO2 port map( A => ram_5_0_port, B => n15, C => ram_4_0_port, D => n13
                           , Z => n129);
   U49 : AO2 port map( A => ram_7_0_port, B => n19, C => ram_6_0_port, D => n17
                           , Z => n130);
   U50 : ND4 port map( A => n123, B => n124, C => n125, D => n126, Z => 
                           tx_func_data(1));
   U52 : AO2 port map( A => ram_5_1_port, B => n15, C => ram_4_1_port, D => n13
                           , Z => n125);
   U53 : AO2 port map( A => ram_7_1_port, B => n19, C => ram_6_1_port, D => n17
                           , Z => n126);
   U54 : ND4 port map( A => n119, B => n120, C => n121, D => n122, Z => 
                           tx_func_data(2));
   U55 : AO2 port map( A => ram_5_2_port, B => n15, C => ram_4_2_port, D => n13
                           , Z => n121);
   U56 : AO2 port map( A => ram_7_2_port, B => n19, C => ram_6_2_port, D => n17
                           , Z => n122);
   U57 : ND4 port map( A => n115, B => n116, C => n117, D => n118, Z => 
                           tx_func_data(3));
   U58 : AO2 port map( A => ram_5_3_port, B => n15, C => ram_4_3_port, D => n13
                           , Z => n117);
   U59 : AO2 port map( A => ram_7_3_port, B => n19, C => ram_6_3_port, D => n17
                           , Z => n118);
   U61 : ND4 port map( A => n111, B => n112, C => n113, D => n114, Z => 
                           tx_func_data(4));
   U62 : AO2 port map( A => ram_5_4_port, B => n16, C => ram_4_4_port, D => n14
                           , Z => n113);
   U63 : AO2 port map( A => ram_7_4_port, B => n20, C => ram_6_4_port, D => n18
                           , Z => n114);
   U64 : ND4 port map( A => n107, B => n108, C => n109, D => n110, Z => 
                           tx_func_data(5));
   U65 : AO2 port map( A => ram_5_5_port, B => n16, C => ram_4_5_port, D => n14
                           , Z => n109);
   U66 : AO2 port map( A => ram_7_5_port, B => n20, C => ram_6_5_port, D => n18
                           , Z => n110);
   U67 : ND4 port map( A => n103, B => n104, C => n105, D => n106, Z => 
                           tx_func_data(6));
   U68 : AO2 port map( A => ram_5_6_port, B => n16, C => ram_4_6_port, D => n14
                           , Z => n105);
   U70 : AO2 port map( A => ram_7_6_port, B => n20, C => ram_6_6_port, D => n18
                           , Z => n106);
   U71 : ND4 port map( A => n91, B => n92, C => n93, D => n94, Z => 
                           tx_func_data(7));
   U72 : AO2 port map( A => ram_5_7_port, B => n16, C => ram_4_7_port, D => n14
                           , Z => n93);
   U73 : AO2 port map( A => ram_7_7_port, B => n20, C => ram_6_7_port, D => n18
                           , Z => n94);
   U74 : ND3 port map( A => n80, B => n81, C => n83, Z => n238);
   U75 : AO2 port map( A => n7, B => tx_data(0), C => n28, D => ram_7_0_port, Z
                           => n131);
   U76 : AO2 port map( A => n7, B => tx_data(1), C => n28, D => ram_7_1_port, Z
                           => n133);
   U77 : AO2 port map( A => n7, B => tx_data(2), C => n28, D => ram_7_2_port, Z
                           => n134);
   U79 : AO2 port map( A => n7, B => tx_data(3), C => n28, D => ram_7_3_port, Z
                           => n135);
   U80 : AO2 port map( A => n7, B => tx_data(4), C => n28, D => ram_7_4_port, Z
                           => n136);
   U81 : AO2 port map( A => n7, B => tx_data(5), C => n28, D => ram_7_5_port, Z
                           => n137);
   U82 : AO2 port map( A => n7, B => tx_data(6), C => n28, D => ram_7_6_port, Z
                           => n138);
   U83 : AO2 port map( A => n7, B => tx_data(7), C => n28, D => ram_7_7_port, Z
                           => n139);
   U84 : AO2 port map( A => tx_data(0), B => n8, C => n27, D => ram_6_0_port, Z
                           => n141);
   U85 : AO2 port map( A => tx_data(1), B => n8, C => n27, D => ram_6_1_port, Z
                           => n143);
   U86 : AO2 port map( A => tx_data(2), B => n8, C => n27, D => ram_6_2_port, Z
                           => n144);
   U88 : AO2 port map( A => tx_data(3), B => n8, C => n27, D => ram_6_3_port, Z
                           => n145);
   U89 : AO2 port map( A => tx_data(4), B => n8, C => n27, D => ram_6_4_port, Z
                           => n146);
   U90 : AO2 port map( A => tx_data(5), B => n8, C => n27, D => ram_6_5_port, Z
                           => n147);
   U91 : AO2 port map( A => tx_data(6), B => n8, C => n27, D => ram_6_6_port, Z
                           => n148);
   U92 : AO2 port map( A => tx_data(7), B => n8, C => n27, D => ram_6_7_port, Z
                           => n149);
   U93 : AO2 port map( A => tx_data(0), B => n9, C => n26, D => ram_5_0_port, Z
                           => n151);
   U94 : AO2 port map( A => tx_data(1), B => n9, C => n26, D => ram_5_1_port, Z
                           => n153);
   U95 : AO2 port map( A => tx_data(2), B => n9, C => n26, D => ram_5_2_port, Z
                           => n154);
   U96 : AO2 port map( A => tx_data(3), B => n9, C => n26, D => ram_5_3_port, Z
                           => n155);
   U98 : AO2 port map( A => tx_data(4), B => n9, C => n26, D => ram_5_4_port, Z
                           => n156);
   U99 : AO2 port map( A => tx_data(5), B => n9, C => n26, D => ram_5_5_port, Z
                           => n157);
   U100 : AO2 port map( A => tx_data(6), B => n9, C => n26, D => ram_5_6_port, 
                           Z => n158);
   U101 : AO2 port map( A => tx_data(7), B => n9, C => n26, D => ram_5_7_port, 
                           Z => n159);
   U102 : AO2 port map( A => tx_data(0), B => n3, C => n23, D => ram_2_0_port, 
                           Z => n179);
   U103 : AO2 port map( A => tx_data(1), B => n3, C => n23, D => ram_2_1_port, 
                           Z => n181);
   U104 : AO2 port map( A => tx_data(2), B => n3, C => n23, D => ram_2_2_port, 
                           Z => n182);
   U105 : AO2 port map( A => tx_data(3), B => n3, C => n23, D => ram_2_3_port, 
                           Z => n183);
   U106 : AO2 port map( A => tx_data(4), B => n3, C => n23, D => ram_2_4_port, 
                           Z => n184);
   U108 : AO2 port map( A => tx_data(5), B => n3, C => n23, D => ram_2_5_port, 
                           Z => n185);
   U109 : AO2 port map( A => tx_data(6), B => n3, C => n23, D => ram_2_6_port, 
                           Z => n186);
   U110 : AO2 port map( A => tx_data(7), B => n3, C => n23, D => ram_2_7_port, 
                           Z => n187);
   U111 : AO2 port map( A => tx_data(0), B => n10, C => n22, D => ram_1_0_port,
                           Z => n188);
   U112 : AO2 port map( A => tx_data(1), B => n10, C => n22, D => ram_1_1_port,
                           Z => n190);
   U113 : AO2 port map( A => tx_data(2), B => n10, C => n22, D => ram_1_2_port,
                           Z => n191);
   U114 : AO2 port map( A => tx_data(3), B => n10, C => n22, D => ram_1_3_port,
                           Z => n192);
   U115 : AO2 port map( A => tx_data(4), B => n10, C => n22, D => ram_1_4_port,
                           Z => n193);
   U116 : AO2 port map( A => tx_data(5), B => n10, C => n22, D => ram_1_5_port,
                           Z => n194);
   U118 : AO2 port map( A => tx_data(6), B => n10, C => n22, D => ram_1_6_port,
                           Z => n195);
   U119 : AO2 port map( A => tx_data(7), B => n10, C => n22, D => ram_1_7_port,
                           Z => n196);
   U120 : AO2 port map( A => tx_data(0), B => n4, C => n21, D => ram_0_0_port, 
                           Z => n197);
   U121 : AO2 port map( A => tx_data(1), B => n4, C => n21, D => ram_0_1_port, 
                           Z => n199);
   U122 : AO2 port map( A => tx_data(2), B => n4, C => n21, D => ram_0_2_port, 
                           Z => n200);
   U124 : AO2 port map( A => tx_data(3), B => n4, C => n21, D => ram_0_3_port, 
                           Z => n201);
   U125 : AO2 port map( A => tx_data(4), B => n4, C => n21, D => ram_0_4_port, 
                           Z => n202);
   U126 : AO2 port map( A => tx_data(5), B => n4, C => n21, D => ram_0_5_port, 
                           Z => n203);
   U127 : AO2 port map( A => tx_data(6), B => n4, C => n21, D => ram_0_6_port, 
                           Z => n204);
   U129 : AO2 port map( A => tx_data(7), B => n4, C => n21, D => ram_0_7_port, 
                           Z => n205);
   U130 : AO4 port map( A => n206, B => n87, C => n261, D => n84, Z => n140);
   U132 : AO2 port map( A => tx_data(0), B => n12, C => n25, D => ram_4_0_port,
                           Z => n161);
   U133 : AO2 port map( A => tx_data(1), B => n12, C => n25, D => ram_4_1_port,
                           Z => n163);
   U134 : AO2 port map( A => tx_data(2), B => n12, C => n25, D => ram_4_2_port,
                           Z => n164);
   U137 : AO2 port map( A => tx_data(3), B => n12, C => n25, D => ram_4_3_port,
                           Z => n165);
   U139 : AO2 port map( A => tx_data(4), B => n12, C => n25, D => ram_4_4_port,
                           Z => n166);
   U143 : AO2 port map( A => tx_data(5), B => n12, C => n25, D => ram_4_5_port,
                           Z => n167);
   U144 : AO2 port map( A => tx_data(6), B => n12, C => n25, D => ram_4_6_port,
                           Z => n168);
   U146 : AO2 port map( A => tx_data(7), B => n12, C => n25, D => ram_4_7_port,
                           Z => n169);
   U147 : AO2 port map( A => tx_data(0), B => n11, C => n24, D => ram_3_0_port,
                           Z => n170);
   U149 : AO2 port map( A => tx_data(1), B => n11, C => n24, D => ram_3_1_port,
                           Z => n172);
   U151 : AO2 port map( A => tx_data(2), B => n11, C => n24, D => ram_3_2_port,
                           Z => n173);
   U153 : AO2 port map( A => tx_data(3), B => n11, C => n24, D => ram_3_3_port,
                           Z => n174);
   U154 : AO2 port map( A => tx_data(4), B => n11, C => n24, D => ram_3_4_port,
                           Z => n175);
   U156 : AO2 port map( A => tx_data(5), B => n11, C => n24, D => ram_3_5_port,
                           Z => n176);
   U160 : AO2 port map( A => tx_data(6), B => n11, C => n24, D => ram_3_6_port,
                           Z => n177);
   U164 : AO2 port map( A => tx_data(7), B => n11, C => n24, D => ram_3_7_port,
                           Z => n178);
   U165 : AO4 port map( A => n219, B => n80, C => n220, D => n221, Z => n245);
   U166 : AO2 port map( A => n222, B => n223, C => n224, D => 
                           tx_fifo_entries_free_1_port, Z => n220);
   U167 : AO4 port map( A => n227, B => n81, C => n228, D => n229, Z => n246);
   U168 : AO2 port map( A => n223, B => n261, C => tx_fifo_entries_free_0_port,
                           D => n211, Z => n228);
   U169 : AO6 port map( A => n211, B => n83, C => n225, Z => n227);
   U170 : EON1 port map( A => n213, B => n214, C => n215, D => 
                           tx_out_addr_q_2_port, Z => n242);
   U171 : AO7 port map( A => reset, B => tx_out_addr_q_1_port, C => n216, Z => 
                           n215);
   U172 : AO4 port map( A => n231, B => n232, C => n79, D => n29, Z => n247);
   U173 : AO3 port map( A => tx_fifo_entries_free_2_port, B => n261, C => n236,
                           D => n237, Z => n233);
   U174 : NR4 port map( A => n235, B => n83, C => tx_fifo_entries_free_3_port, 
                           D => n261, Z => n234);
   U175 : AO4 port map( A => n83, B => n29, C => n231, D => n263, Z => n248);
   U176 : AO6 port map( A => n86, B => n264, C => n217, Z => n216);
   U177 : AO7 port map( A => tx_in_addr_q_0_port, B => reset, C => n260, Z => 
                           n210);
   U178 : AO4 port map( A => tx_fifo_entries_free_1_port, B => n260, C => n263,
                           D => n81, Z => n226);
   U179 : AO4 port map( A => n207, B => n87, C => n208, D => n209, Z => n239);
   U180 : AO6 port map( A => n264, B => n88, C => n210, Z => n207);
   U181 : EON1 port map( A => tx_in_addr_q_1_port, B => n208, C => n210, D => 
                           tx_in_addr_q_1_port, Z => n240);
   U182 : AO4 port map( A => n216, B => n85, C => tx_out_addr_q_1_port, D => 
                           n213, Z => n243);
   U183 : AO4 port map( A => n89, B => n260, C => n211, D => n212, Z => n241);
   U184 : EON1 port map( A => n217, B => n218, C => tx_out_addr_q_0_port, D => 
                           n217, Z => n244);
   U185 : AO2 port map( A => tx_fifo_entries_free_2_port, B => n83, C => 
                           tx_fifo_entries_free_0_port, D => n81, Z => n237);
   U186 : IVI port map( A => n231, Z => n29);
   U187 : IVI port map( A => n131, Z => n30);
   U188 : IVI port map( A => n133, Z => n31);
   U189 : IVI port map( A => n134, Z => n32);
   U190 : IVI port map( A => n135, Z => n33);
   U191 : IVI port map( A => n136, Z => n34);
   U192 : IVI port map( A => n137, Z => n35);
   U193 : IVI port map( A => n138, Z => n36);
   U194 : IVI port map( A => n139, Z => n37);
   U195 : IVI port map( A => n141, Z => n38);
   U196 : IVI port map( A => n143, Z => n39);
   U197 : IVI port map( A => n144, Z => n40);
   U198 : IVI port map( A => n145, Z => n41);
   U199 : IVI port map( A => n146, Z => n42);
   U200 : IVI port map( A => n147, Z => n43);
   U201 : IVI port map( A => n148, Z => n44);
   U202 : IVI port map( A => n149, Z => n45);
   U203 : IVI port map( A => n151, Z => n46);
   U204 : IVI port map( A => n153, Z => n47);
   U205 : IVI port map( A => n154, Z => n48);
   U206 : IVI port map( A => n155, Z => n49);
   U207 : IVI port map( A => n156, Z => n50);
   U208 : IVI port map( A => n157, Z => n51);
   U209 : IVI port map( A => n158, Z => n52);
   U210 : IVI port map( A => n159, Z => n53);
   U211 : IVI port map( A => n161, Z => n54);
   U212 : IVI port map( A => n163, Z => n55);
   U213 : IVI port map( A => n164, Z => n56);
   U214 : IVI port map( A => n165, Z => n57);
   U215 : IVI port map( A => n166, Z => n58);
   U216 : IVI port map( A => n167, Z => n59);
   U217 : IVI port map( A => n168, Z => n60);
   U218 : IVI port map( A => n169, Z => n61);
   U219 : IVI port map( A => n170, Z => n62);
   U220 : IVI port map( A => n172, Z => n63);
   U221 : IVI port map( A => n173, Z => n64);
   U222 : IVI port map( A => n174, Z => n65);
   U223 : IVI port map( A => n175, Z => n66);
   U224 : IVI port map( A => n176, Z => n67);
   U225 : IVI port map( A => n177, Z => n68);
   U226 : IVI port map( A => n178, Z => n69);
   U227 : IVI port map( A => n179, Z => n70);
   U228 : IVI port map( A => n181, Z => n71);
   U229 : IVI port map( A => n182, Z => n72);
   U230 : IVI port map( A => n183, Z => n73);
   U231 : IVI port map( A => n184, Z => n74);
   U232 : IVI port map( A => n185, Z => n75);
   U233 : IVI port map( A => n186, Z => n76);
   U234 : IVI port map( A => n187, Z => n77);
   U235 : IVI port map( A => n188, Z => n78);
   U236 : IVI port map( A => n190, Z => n82);
   U237 : IVI port map( A => n191, Z => n90);
   U238 : IVI port map( A => n192, Z => n99);
   U239 : IVI port map( A => n193, Z => n100);
   U240 : IVI port map( A => n194, Z => n101);
   U241 : IVI port map( A => n195, Z => n102);
   U242 : IVI port map( A => n196, Z => n249);
   U243 : IVI port map( A => n197, Z => n250);
   U244 : IVI port map( A => n199, Z => n251);
   U245 : IVI port map( A => n200, Z => n252);
   U246 : IVI port map( A => n201, Z => n253);
   U247 : IVI port map( A => n202, Z => n254);
   U248 : IVI port map( A => n203, Z => n255);
   U252 : IVI port map( A => n204, Z => n256);
   U253 : IVI port map( A => n205, Z => n257);
   U254 : IVI port map( A => n150, Z => n258);
   U255 : IVI port map( A => n160, Z => n259);
   U256 : IVI port map( A => n211, Z => n260);
   U257 : IVI port map( A => tx_fifo_full_port, Z => n262);
   U258 : IVI port map( A => n223, Z => n263);
   U259 : IVI port map( A => reset, Z => n264);

end SYN_behaviour;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_uart_top_address_width3.all;

entity rx_fifo is

   port( clk, reset, read_rx_data : in std_logic;  rx_data : out 
         std_logic_vector (7 downto 0);  rx_fifo_full, rx_fifo_empty : out 
         std_logic;  rx_fifo_entries_free : out std_logic_vector (7 downto 0); 
         rx_func_data : in std_logic_vector (7 downto 0);  rx_func_data_ready :
         in std_logic);

end rx_fifo;

architecture SYN_behaviour of rx_fifo is

   component IVI
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AO2
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component ND4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AO4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component NR3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component AO7
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component EON1
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component ND3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component AO6
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component AO3
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AN3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component IVDA
      port( A : in std_logic;  Y, Z : out std_logic);
   end component;
   
   component OR3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component NR2I
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component ND2I
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO1P
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component FD1
      port( D, CP : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal X_Logic0_port, rx_fifo_entries_free_3_port, 
      rx_fifo_entries_free_2_port, rx_fifo_entries_free_1_port, 
      rx_fifo_entries_free_0_port, data_ready_q, rx_in_addr_q_2_port, 
      rx_in_addr_q_1_port, rx_in_addr_q_0_port, rx_out_addr_q_2_port, 
      rx_out_addr_q_1_port, rx_out_addr_q_0_port, fifo_entries_back_d_3_port, 
      fifo_entries_back_d_2_port, fifo_entries_back_d_1_port, 
      fifo_entries_back_d_0_port, ram_0_7_port, ram_0_6_port, ram_0_5_port, 
      ram_0_4_port, ram_0_3_port, ram_0_2_port, ram_0_1_port, ram_0_0_port, 
      ram_1_7_port, ram_1_6_port, ram_1_5_port, ram_1_4_port, ram_1_3_port, 
      ram_1_2_port, ram_1_1_port, ram_1_0_port, ram_2_7_port, ram_2_6_port, 
      ram_2_5_port, ram_2_4_port, ram_2_3_port, ram_2_2_port, ram_2_1_port, 
      ram_2_0_port, ram_3_7_port, ram_3_6_port, ram_3_5_port, ram_3_4_port, 
      ram_3_3_port, ram_3_2_port, ram_3_1_port, ram_3_0_port, ram_4_7_port, 
      ram_4_6_port, ram_4_5_port, ram_4_4_port, ram_4_3_port, ram_4_2_port, 
      ram_4_1_port, ram_4_0_port, ram_5_7_port, ram_5_6_port, ram_5_5_port, 
      ram_5_4_port, ram_5_3_port, ram_5_2_port, ram_5_1_port, ram_5_0_port, 
      ram_6_7_port, ram_6_6_port, ram_6_5_port, ram_6_4_port, ram_6_3_port, 
      ram_6_2_port, ram_6_1_port, ram_6_0_port, ram_7_7_port, ram_7_6_port, 
      ram_7_5_port, ram_7_4_port, ram_7_3_port, ram_7_2_port, ram_7_1_port, 
      ram_7_0_port, n3, n81, n82, n84, n85, n86, n87, n88, n89, n90, n91, n95, 
      n96, n97, n98, n99, n100, n101, n102, n107, n108, n109, n110, n111, n112,
      n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, 
      n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, 
      n137, n138, n139, n140, n141, n142, n143, n144, n146, n147, n148, n149, 
      n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, 
      n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, 
      n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, 
      n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, 
      n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, 
      n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, 
      n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, 
      n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, 
      rx_fifo_full_port, n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, 
      n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28
      , n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, 
      n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57
      , n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, 
      n72, n73, n74, n75, n76, n77, n78, n79, n80, n83, n92, n93, n94, n103, 
      n104, n105, n106, n145, n246, n247, n248, n249, n250, n251, n252, n253, 
      n254, n255, n256, n257, n258, n259, n_1073, n_1074, n_1075, n_1076, 
      n_1077, n_1078, n_1079, n_1080, n_1081, n_1082, n_1083, n_1084, n_1085, 
      n_1086, n_1087, n_1088, n_1089, n_1090, n_1091, n_1092, n_1093, n_1094, 
      n_1095, n_1096, n_1097, n_1098, n_1099, n_1100, n_1101, n_1102, n_1103, 
      n_1104, n_1105, n_1106, n_1107, n_1108, n_1109, n_1110, n_1111, n_1112, 
      n_1113, n_1114, n_1115, n_1116, n_1117, n_1118, n_1119, n_1120, n_1121, 
      n_1122, n_1123, n_1124, n_1125, n_1126, n_1127, n_1128, n_1129, n_1130, 
      n_1131, n_1132, n_1133, n_1134, n_1135, n_1136, n_1137, n_1138, n_1139, 
      n_1140, n_1141, n_1142, n_1143, n_1144 : std_logic;

begin
   rx_fifo_full <= rx_fifo_full_port;
   rx_fifo_entries_free <= ( X_Logic0_port, X_Logic0_port, X_Logic0_port, 
      X_Logic0_port, rx_fifo_entries_free_3_port, rx_fifo_entries_free_2_port, 
      rx_fifo_entries_free_1_port, rx_fifo_entries_free_0_port );
   
   X_Logic0_port <= '0';
   data_ready_q_reg : FD1 port map( D => n245, CP => clk, Q => data_ready_q, QN
                           => n85);
   fifo_entries_back_q_reg_0_inst : FD1 port map( D => 
                           fifo_entries_back_d_0_port, CP => clk, Q => 
                           rx_fifo_entries_free_0_port, QN => n84);
   fifo_entries_back_q_reg_1_inst : FD1 port map( D => 
                           fifo_entries_back_d_1_port, CP => clk, Q => 
                           rx_fifo_entries_free_1_port, QN => n82);
   fifo_entries_back_q_reg_2_inst : FD1 port map( D => 
                           fifo_entries_back_d_2_port, CP => clk, Q => 
                           rx_fifo_entries_free_2_port, QN => n81);
   fifo_entries_back_q_reg_3_inst : FD1 port map( D => 
                           fifo_entries_back_d_3_port, CP => clk, Q => 
                           rx_fifo_entries_free_3_port, QN => n3);
   rx_in_addr_q_reg_0_inst : FD1 port map( D => n244, CP => clk, Q => 
                           rx_in_addr_q_0_port, QN => n88);
   rx_in_addr_q_reg_1_inst : FD1 port map( D => n243, CP => clk, Q => 
                           rx_in_addr_q_1_port, QN => n87);
   rx_in_addr_q_reg_2_inst : FD1 port map( D => n242, CP => clk, Q => 
                           rx_in_addr_q_2_port, QN => n86);
   rx_out_addr_q_reg_0_inst : FD1 port map( D => n241, CP => clk, Q => 
                           rx_out_addr_q_0_port, QN => n91);
   rx_out_addr_q_reg_1_inst : FD1 port map( D => n240, CP => clk, Q => 
                           rx_out_addr_q_1_port, QN => n90);
   rx_out_addr_q_reg_2_inst : FD1 port map( D => n239, CP => clk, Q => 
                           rx_out_addr_q_2_port, QN => n89);
   ram_reg_0_7_inst : FD1 port map( D => n38, CP => clk, Q => ram_0_7_port, QN 
                           => n_1073);
   ram_reg_0_6_inst : FD1 port map( D => n37, CP => clk, Q => ram_0_6_port, QN 
                           => n_1074);
   ram_reg_0_5_inst : FD1 port map( D => n36, CP => clk, Q => ram_0_5_port, QN 
                           => n_1075);
   ram_reg_0_4_inst : FD1 port map( D => n35, CP => clk, Q => ram_0_4_port, QN 
                           => n_1076);
   ram_reg_0_3_inst : FD1 port map( D => n34, CP => clk, Q => ram_0_3_port, QN 
                           => n_1077);
   ram_reg_0_2_inst : FD1 port map( D => n33, CP => clk, Q => ram_0_2_port, QN 
                           => n_1078);
   ram_reg_0_1_inst : FD1 port map( D => n32, CP => clk, Q => ram_0_1_port, QN 
                           => n_1079);
   ram_reg_0_0_inst : FD1 port map( D => n31, CP => clk, Q => ram_0_0_port, QN 
                           => n_1080);
   ram_reg_1_7_inst : FD1 port map( D => n46, CP => clk, Q => ram_1_7_port, QN 
                           => n_1081);
   ram_reg_1_6_inst : FD1 port map( D => n45, CP => clk, Q => ram_1_6_port, QN 
                           => n_1082);
   ram_reg_1_5_inst : FD1 port map( D => n44, CP => clk, Q => ram_1_5_port, QN 
                           => n_1083);
   ram_reg_1_4_inst : FD1 port map( D => n43, CP => clk, Q => ram_1_4_port, QN 
                           => n_1084);
   ram_reg_1_3_inst : FD1 port map( D => n42, CP => clk, Q => ram_1_3_port, QN 
                           => n_1085);
   ram_reg_1_2_inst : FD1 port map( D => n41, CP => clk, Q => ram_1_2_port, QN 
                           => n_1086);
   ram_reg_1_1_inst : FD1 port map( D => n40, CP => clk, Q => ram_1_1_port, QN 
                           => n_1087);
   ram_reg_1_0_inst : FD1 port map( D => n39, CP => clk, Q => ram_1_0_port, QN 
                           => n_1088);
   ram_reg_2_7_inst : FD1 port map( D => n54, CP => clk, Q => ram_2_7_port, QN 
                           => n_1089);
   ram_reg_2_6_inst : FD1 port map( D => n53, CP => clk, Q => ram_2_6_port, QN 
                           => n_1090);
   ram_reg_2_5_inst : FD1 port map( D => n52, CP => clk, Q => ram_2_5_port, QN 
                           => n_1091);
   ram_reg_2_4_inst : FD1 port map( D => n51, CP => clk, Q => ram_2_4_port, QN 
                           => n_1092);
   ram_reg_2_3_inst : FD1 port map( D => n50, CP => clk, Q => ram_2_3_port, QN 
                           => n_1093);
   ram_reg_2_2_inst : FD1 port map( D => n49, CP => clk, Q => ram_2_2_port, QN 
                           => n_1094);
   ram_reg_2_1_inst : FD1 port map( D => n48, CP => clk, Q => ram_2_1_port, QN 
                           => n_1095);
   ram_reg_2_0_inst : FD1 port map( D => n47, CP => clk, Q => ram_2_0_port, QN 
                           => n_1096);
   ram_reg_3_7_inst : FD1 port map( D => n62, CP => clk, Q => ram_3_7_port, QN 
                           => n_1097);
   ram_reg_3_6_inst : FD1 port map( D => n61, CP => clk, Q => ram_3_6_port, QN 
                           => n_1098);
   ram_reg_3_5_inst : FD1 port map( D => n60, CP => clk, Q => ram_3_5_port, QN 
                           => n_1099);
   ram_reg_3_4_inst : FD1 port map( D => n59, CP => clk, Q => ram_3_4_port, QN 
                           => n_1100);
   ram_reg_3_3_inst : FD1 port map( D => n58, CP => clk, Q => ram_3_3_port, QN 
                           => n_1101);
   ram_reg_3_2_inst : FD1 port map( D => n57, CP => clk, Q => ram_3_2_port, QN 
                           => n_1102);
   ram_reg_3_1_inst : FD1 port map( D => n56, CP => clk, Q => ram_3_1_port, QN 
                           => n_1103);
   ram_reg_3_0_inst : FD1 port map( D => n55, CP => clk, Q => ram_3_0_port, QN 
                           => n_1104);
   ram_reg_4_7_inst : FD1 port map( D => n70, CP => clk, Q => ram_4_7_port, QN 
                           => n_1105);
   ram_reg_4_6_inst : FD1 port map( D => n69, CP => clk, Q => ram_4_6_port, QN 
                           => n_1106);
   ram_reg_4_5_inst : FD1 port map( D => n68, CP => clk, Q => ram_4_5_port, QN 
                           => n_1107);
   ram_reg_4_4_inst : FD1 port map( D => n67, CP => clk, Q => ram_4_4_port, QN 
                           => n_1108);
   ram_reg_4_3_inst : FD1 port map( D => n66, CP => clk, Q => ram_4_3_port, QN 
                           => n_1109);
   ram_reg_4_2_inst : FD1 port map( D => n65, CP => clk, Q => ram_4_2_port, QN 
                           => n_1110);
   ram_reg_4_1_inst : FD1 port map( D => n64, CP => clk, Q => ram_4_1_port, QN 
                           => n_1111);
   ram_reg_4_0_inst : FD1 port map( D => n63, CP => clk, Q => ram_4_0_port, QN 
                           => n_1112);
   ram_reg_5_7_inst : FD1 port map( D => n78, CP => clk, Q => ram_5_7_port, QN 
                           => n_1113);
   ram_reg_5_6_inst : FD1 port map( D => n77, CP => clk, Q => ram_5_6_port, QN 
                           => n_1114);
   ram_reg_5_5_inst : FD1 port map( D => n76, CP => clk, Q => ram_5_5_port, QN 
                           => n_1115);
   ram_reg_5_4_inst : FD1 port map( D => n75, CP => clk, Q => ram_5_4_port, QN 
                           => n_1116);
   ram_reg_5_3_inst : FD1 port map( D => n74, CP => clk, Q => ram_5_3_port, QN 
                           => n_1117);
   ram_reg_5_2_inst : FD1 port map( D => n73, CP => clk, Q => ram_5_2_port, QN 
                           => n_1118);
   ram_reg_5_1_inst : FD1 port map( D => n72, CP => clk, Q => ram_5_1_port, QN 
                           => n_1119);
   ram_reg_5_0_inst : FD1 port map( D => n71, CP => clk, Q => ram_5_0_port, QN 
                           => n_1120);
   ram_reg_6_7_inst : FD1 port map( D => n104, CP => clk, Q => ram_6_7_port, QN
                           => n_1121);
   ram_reg_6_6_inst : FD1 port map( D => n103, CP => clk, Q => ram_6_6_port, QN
                           => n_1122);
   ram_reg_6_5_inst : FD1 port map( D => n94, CP => clk, Q => ram_6_5_port, QN 
                           => n_1123);
   ram_reg_6_4_inst : FD1 port map( D => n93, CP => clk, Q => ram_6_4_port, QN 
                           => n_1124);
   ram_reg_6_3_inst : FD1 port map( D => n92, CP => clk, Q => ram_6_3_port, QN 
                           => n_1125);
   ram_reg_6_2_inst : FD1 port map( D => n83, CP => clk, Q => ram_6_2_port, QN 
                           => n_1126);
   ram_reg_6_1_inst : FD1 port map( D => n80, CP => clk, Q => ram_6_1_port, QN 
                           => n_1127);
   ram_reg_6_0_inst : FD1 port map( D => n79, CP => clk, Q => ram_6_0_port, QN 
                           => n_1128);
   ram_reg_7_7_inst : FD1 port map( D => n250, CP => clk, Q => ram_7_7_port, QN
                           => n_1129);
   ram_reg_7_6_inst : FD1 port map( D => n249, CP => clk, Q => ram_7_6_port, QN
                           => n_1130);
   ram_reg_7_5_inst : FD1 port map( D => n248, CP => clk, Q => ram_7_5_port, QN
                           => n_1131);
   ram_reg_7_4_inst : FD1 port map( D => n247, CP => clk, Q => ram_7_4_port, QN
                           => n_1132);
   ram_reg_7_3_inst : FD1 port map( D => n246, CP => clk, Q => ram_7_3_port, QN
                           => n_1133);
   ram_reg_7_2_inst : FD1 port map( D => n145, CP => clk, Q => ram_7_2_port, QN
                           => n_1134);
   ram_reg_7_1_inst : FD1 port map( D => n106, CP => clk, Q => ram_7_1_port, QN
                           => n_1135);
   ram_reg_7_0_inst : FD1 port map( D => n105, CP => clk, Q => ram_7_0_port, QN
                           => n_1136);
   U43 : NR2I port map( A => n135, B => n3, Z => rx_fifo_empty);
   U52 : ND2I port map( A => n22, B => n1, Z => n137);
   U61 : ND2I port map( A => n20, B => n1, Z => n148);
   U70 : ND2I port map( A => n18, B => n1, Z => n158);
   U79 : ND2I port map( A => n16, B => n1, Z => n168);
   U88 : ND2I port map( A => n6, B => n1, Z => n177);
   U98 : ND2I port map( A => n2, B => n1, Z => n186);
   U108 : ND2I port map( A => n5, B => n1, Z => n195);
   U118 : ND2I port map( A => n4, B => n1, Z => n204);
   U125 : ND2I port map( A => rx_out_addr_q_1_port, B => n89, Z => n213);
   U130 : ND2I port map( A => n257, B => n91, Z => n217);
   U133 : ND2I port map( A => rx_in_addr_q_1_port, B => n86, Z => n219);
   U137 : ND2I port map( A => n257, B => n88, Z => n223);
   U138 : NR2I port map( A => n224, B => n255, Z => n245);
   U139 : NR2I port map( A => reset, B => n1, Z => n222);
   U140 : NR2I port map( A => data_ready_q, B => rx_func_data_ready, Z => n224)
                           ;
   U143 : AO1P port map( A => rx_fifo_entries_free_1_port, B => n81, C => n228,
                           D => n229, Z => n225);
   U151 : ND2I port map( A => n1, B => n82, Z => n233);
   U157 : NR2I port map( A => reset, B => read_rx_data, Z => n216);
   U158 : ND2I port map( A => n1, B => n84, Z => n236);
   U160 : NR2I port map( A => n135, B => rx_fifo_entries_free_3_port, Z => 
                           rx_fifo_full_port);
   U246 : OR3 port map( A => n222, B => reset, C => n88, Z => n218);
   U247 : AN3 port map( A => rx_fifo_entries_free_0_port, B => read_rx_data, C 
                           => rx_fifo_entries_free_1_port, Z => n227);
   U248 : OR3 port map( A => rx_fifo_entries_free_2_port, B => 
                           rx_fifo_entries_free_1_port, C => 
                           rx_fifo_entries_free_0_port, Z => n135);
   U3 : NR3 port map( A => rx_fifo_full_port, B => read_rx_data, C => n85, Z =>
                           n1);
   U4 : NR3 port map( A => n251, B => n166, C => n146, Z => n2);
   U5 : NR3 port map( A => n252, B => n251, C => n146, Z => n4);
   U6 : NR3 port map( A => n252, B => n156, C => n146, Z => n5);
   U7 : NR3 port map( A => n156, B => n166, C => n146, Z => n6);
   U8 : IVDA port map( A => n137, Y => n7, Z => n30);
   U9 : IVDA port map( A => n148, Y => n13, Z => n29);
   U10 : IVDA port map( A => n158, Y => n8, Z => n28);
   U11 : IVDA port map( A => n168, Y => n14, Z => n27);
   U12 : IVDA port map( A => n186, Y => n9, Z => n25);
   U13 : IVDA port map( A => n195, Y => n10, Z => n24);
   U14 : IVDA port map( A => n204, Y => n11, Z => n23);
   U15 : IVDA port map( A => n100, Y => n_1137, Z => n20);
   U16 : IVDA port map( A => n99, Y => n_1138, Z => n22);
   U17 : IVDA port map( A => n101, Y => n_1139, Z => n18);
   U18 : IVDA port map( A => n102, Y => n_1140, Z => n16);
   U19 : IVDA port map( A => n177, Y => n12, Z => n26);
   U20 : IVDA port map( A => n100, Y => n_1141, Z => n19);
   U21 : IVDA port map( A => n99, Y => n_1142, Z => n21);
   U22 : IVDA port map( A => n102, Y => n_1143, Z => n15);
   U23 : IVDA port map( A => n101, Y => n_1144, Z => n17);
   U24 : AN3 port map( A => n252, B => n146, C => n156, Z => n100);
   U25 : AN3 port map( A => n252, B => n146, C => n251, Z => n99);
   U26 : AN3 port map( A => n156, B => n146, C => n166, Z => n102);
   U27 : AN3 port map( A => n251, B => n146, C => n166, Z => n101);
   U28 : IVI port map( A => reset, Z => n257);
   U29 : AO4 port map( A => n253, B => n86, C => n1, D => n89, Z => n146);
   U30 : AO2 port map( A => n1, B => rx_in_addr_q_0_port, C => n253, D => 
                           rx_out_addr_q_0_port, Z => n156);
   U31 : AO2 port map( A => n1, B => rx_in_addr_q_1_port, C => n253, D => 
                           rx_out_addr_q_1_port, Z => n166);
   U32 : AO2 port map( A => n7, B => rx_func_data(0), C => n30, D => 
                           ram_7_0_port, Z => n136);
   U33 : AO2 port map( A => n7, B => rx_func_data(1), C => n30, D => 
                           ram_7_1_port, Z => n138);
   U34 : AO2 port map( A => n7, B => rx_func_data(2), C => n30, D => 
                           ram_7_2_port, Z => n139);
   U35 : AO2 port map( A => n7, B => rx_func_data(3), C => n30, D => 
                           ram_7_3_port, Z => n140);
   U36 : AO2 port map( A => n7, B => rx_func_data(4), C => n30, D => 
                           ram_7_4_port, Z => n141);
   U37 : AO2 port map( A => n7, B => rx_func_data(5), C => n30, D => 
                           ram_7_5_port, Z => n142);
   U38 : AO2 port map( A => n7, B => rx_func_data(6), C => n30, D => 
                           ram_7_6_port, Z => n143);
   U39 : AO2 port map( A => n7, B => rx_func_data(7), C => n30, D => 
                           ram_7_7_port, Z => n144);
   U40 : AO2 port map( A => rx_func_data(0), B => n13, C => n29, D => 
                           ram_6_0_port, Z => n147);
   U41 : AO2 port map( A => rx_func_data(1), B => n13, C => n29, D => 
                           ram_6_1_port, Z => n149);
   U42 : AO2 port map( A => rx_func_data(2), B => n13, C => n29, D => 
                           ram_6_2_port, Z => n150);
   U44 : AO2 port map( A => rx_func_data(3), B => n13, C => n29, D => 
                           ram_6_3_port, Z => n151);
   U45 : AO2 port map( A => rx_func_data(4), B => n13, C => n29, D => 
                           ram_6_4_port, Z => n152);
   U46 : AO2 port map( A => rx_func_data(5), B => n13, C => n29, D => 
                           ram_6_5_port, Z => n153);
   U47 : AO2 port map( A => rx_func_data(6), B => n13, C => n29, D => 
                           ram_6_6_port, Z => n154);
   U48 : AO2 port map( A => rx_func_data(7), B => n13, C => n29, D => 
                           ram_6_7_port, Z => n155);
   U49 : AO2 port map( A => rx_func_data(0), B => n8, C => n28, D => 
                           ram_5_0_port, Z => n157);
   U50 : AO2 port map( A => rx_func_data(1), B => n8, C => n28, D => 
                           ram_5_1_port, Z => n159);
   U51 : AO2 port map( A => rx_func_data(2), B => n8, C => n28, D => 
                           ram_5_2_port, Z => n160);
   U53 : AO2 port map( A => rx_func_data(3), B => n8, C => n28, D => 
                           ram_5_3_port, Z => n161);
   U54 : AO2 port map( A => rx_func_data(4), B => n8, C => n28, D => 
                           ram_5_4_port, Z => n162);
   U55 : AO2 port map( A => rx_func_data(5), B => n8, C => n28, D => 
                           ram_5_5_port, Z => n163);
   U56 : AO2 port map( A => rx_func_data(6), B => n8, C => n28, D => 
                           ram_5_6_port, Z => n164);
   U57 : AO2 port map( A => rx_func_data(7), B => n8, C => n28, D => 
                           ram_5_7_port, Z => n165);
   U58 : AO2 port map( A => rx_func_data(0), B => n14, C => n27, D => 
                           ram_4_0_port, Z => n167);
   U59 : AO2 port map( A => rx_func_data(1), B => n14, C => n27, D => 
                           ram_4_1_port, Z => n169);
   U60 : AO2 port map( A => rx_func_data(2), B => n14, C => n27, D => 
                           ram_4_2_port, Z => n170);
   U62 : AO2 port map( A => rx_func_data(3), B => n14, C => n27, D => 
                           ram_4_3_port, Z => n171);
   U63 : AO2 port map( A => rx_func_data(4), B => n14, C => n27, D => 
                           ram_4_4_port, Z => n172);
   U64 : AO2 port map( A => rx_func_data(5), B => n14, C => n27, D => 
                           ram_4_5_port, Z => n173);
   U65 : AO2 port map( A => rx_func_data(6), B => n14, C => n27, D => 
                           ram_4_6_port, Z => n174);
   U66 : AO2 port map( A => rx_func_data(7), B => n14, C => n27, D => 
                           ram_4_7_port, Z => n175);
   U67 : AO2 port map( A => rx_func_data(0), B => n9, C => n25, D => 
                           ram_2_0_port, Z => n185);
   U68 : AO2 port map( A => rx_func_data(1), B => n9, C => n25, D => 
                           ram_2_1_port, Z => n187);
   U69 : AO2 port map( A => rx_func_data(2), B => n9, C => n25, D => 
                           ram_2_2_port, Z => n188);
   U71 : AO2 port map( A => rx_func_data(3), B => n9, C => n25, D => 
                           ram_2_3_port, Z => n189);
   U72 : AO2 port map( A => rx_func_data(4), B => n9, C => n25, D => 
                           ram_2_4_port, Z => n190);
   U73 : AO2 port map( A => rx_func_data(5), B => n9, C => n25, D => 
                           ram_2_5_port, Z => n191);
   U74 : AO2 port map( A => rx_func_data(6), B => n9, C => n25, D => 
                           ram_2_6_port, Z => n192);
   U75 : AO2 port map( A => rx_func_data(7), B => n9, C => n25, D => 
                           ram_2_7_port, Z => n193);
   U76 : AO2 port map( A => rx_func_data(0), B => n10, C => n24, D => 
                           ram_1_0_port, Z => n194);
   U77 : AO2 port map( A => rx_func_data(1), B => n10, C => n24, D => 
                           ram_1_1_port, Z => n196);
   U78 : AO2 port map( A => rx_func_data(2), B => n10, C => n24, D => 
                           ram_1_2_port, Z => n197);
   U80 : AO2 port map( A => rx_func_data(3), B => n10, C => n24, D => 
                           ram_1_3_port, Z => n198);
   U81 : AO2 port map( A => rx_func_data(4), B => n10, C => n24, D => 
                           ram_1_4_port, Z => n199);
   U82 : AO2 port map( A => rx_func_data(5), B => n10, C => n24, D => 
                           ram_1_5_port, Z => n200);
   U83 : AO2 port map( A => rx_func_data(6), B => n10, C => n24, D => 
                           ram_1_6_port, Z => n201);
   U84 : AO2 port map( A => rx_func_data(7), B => n10, C => n24, D => 
                           ram_1_7_port, Z => n202);
   U85 : AO2 port map( A => rx_func_data(0), B => n11, C => n23, D => 
                           ram_0_0_port, Z => n203);
   U86 : AO2 port map( A => rx_func_data(1), B => n11, C => n23, D => 
                           ram_0_1_port, Z => n205);
   U87 : AO2 port map( A => rx_func_data(2), B => n11, C => n23, D => 
                           ram_0_2_port, Z => n206);
   U89 : AO2 port map( A => rx_func_data(3), B => n11, C => n23, D => 
                           ram_0_3_port, Z => n207);
   U90 : AO2 port map( A => rx_func_data(4), B => n11, C => n23, D => 
                           ram_0_4_port, Z => n208);
   U91 : AO2 port map( A => rx_func_data(5), B => n11, C => n23, D => 
                           ram_0_5_port, Z => n209);
   U92 : AO2 port map( A => rx_func_data(6), B => n11, C => n23, D => 
                           ram_0_6_port, Z => n210);
   U93 : AO2 port map( A => rx_func_data(7), B => n11, C => n23, D => 
                           ram_0_7_port, Z => n211);
   U94 : AO2 port map( A => rx_func_data(0), B => n12, C => n26, D => 
                           ram_3_0_port, Z => n176);
   U95 : AO2 port map( A => rx_func_data(1), B => n12, C => n26, D => 
                           ram_3_1_port, Z => n178);
   U96 : AO2 port map( A => rx_func_data(2), B => n12, C => n26, D => 
                           ram_3_2_port, Z => n179);
   U97 : AO2 port map( A => rx_func_data(3), B => n12, C => n26, D => 
                           ram_3_3_port, Z => n180);
   U99 : AO2 port map( A => rx_func_data(4), B => n12, C => n26, D => 
                           ram_3_4_port, Z => n181);
   U100 : AO2 port map( A => rx_func_data(5), B => n12, C => n26, D => 
                           ram_3_5_port, Z => n182);
   U101 : AO2 port map( A => rx_func_data(6), B => n12, C => n26, D => 
                           ram_3_6_port, Z => n183);
   U102 : AO2 port map( A => rx_func_data(7), B => n12, C => n26, D => 
                           ram_3_7_port, Z => n184);
   U103 : NR3 port map( A => rx_fifo_entries_free_0_port, B => n258, C => n233,
                           Z => n232);
   U104 : AO6 port map( A => n88, B => n257, C => n222, Z => n221);
   U105 : EON1 port map( A => n218, B => n219, C => n220, D => 
                           rx_in_addr_q_2_port, Z => n242);
   U106 : AO7 port map( A => reset, B => rx_in_addr_q_1_port, C => n221, Z => 
                           n220);
   U107 : AO4 port map( A => n221, B => n87, C => rx_in_addr_q_1_port, D => 
                           n218, Z => n243);
   U109 : AO4 port map( A => n230, B => n81, C => rx_fifo_entries_free_2_port, 
                           D => n231, Z => fifo_entries_back_d_2_port);
   U110 : AO2 port map( A => n216, B => n233, C => n228, D => n257, Z => n230);
   U111 : AO6 port map( A => n227, B => n257, C => n232, Z => n231);
   U112 : AO3 port map( A => n234, B => n82, C => n235, D => n254, Z => 
                           fifo_entries_back_d_1_port);
   U113 : ND4 port map( A => rx_fifo_entries_free_0_port, B => read_rx_data, C 
                           => n257, D => n82, Z => n235);
   U114 : AO6 port map( A => n216, B => n236, C => n237, Z => n234);
   U115 : AO3 port map( A => n225, B => n3, C => n226, D => n257, Z => 
                           fifo_entries_back_d_3_port);
   U116 : ND3 port map( A => n227, B => n3, C => rx_fifo_entries_free_2_port, Z
                           => n226);
   U117 : AO6 port map( A => n1, B => n81, C => read_rx_data, Z => n229);
   U119 : AO3 port map( A => reset, B => n236, C => n238, D => n256, Z => 
                           fifo_entries_back_d_0_port);
   U120 : ND3 port map( A => n253, B => n216, C => rx_fifo_entries_free_0_port,
                           Z => n238);
   U121 : AO6 port map( A => n91, B => n257, C => n216, Z => n215);
   U122 : ND3 port map( A => n257, B => n258, C => rx_out_addr_q_0_port, Z => 
                           n212);
   U123 : EON1 port map( A => n212, B => n213, C => n214, D => 
                           rx_out_addr_q_2_port, Z => n239);
   U124 : AO7 port map( A => reset, B => rx_out_addr_q_1_port, C => n215, Z => 
                           n214);
   U126 : AO4 port map( A => n88, B => n255, C => n222, D => n223, Z => n244);
   U127 : AO4 port map( A => n215, B => n90, C => rx_out_addr_q_1_port, D => 
                           n212, Z => n240);
   U128 : AO4 port map( A => n91, B => n258, C => n216, D => n217, Z => n241);
   U129 : NR3 port map( A => rx_fifo_entries_free_0_port, B => reset, C => n259
                           , Z => n237);
   U131 : AO4 port map( A => rx_fifo_entries_free_1_port, B => n84, C => 
                           rx_fifo_entries_free_0_port, D => n259, Z => n228);
   U132 : AO2 port map( A => ram_7_1_port, B => n21, C => ram_6_1_port, D => 
                           n19, Z => n130);
   U134 : AO2 port map( A => ram_5_1_port, B => n17, C => ram_4_1_port, D => 
                           n15, Z => n129);
   U135 : AO2 port map( A => ram_7_2_port, B => n21, C => ram_6_2_port, D => 
                           n19, Z => n126);
   U136 : AO2 port map( A => ram_5_2_port, B => n17, C => ram_4_2_port, D => 
                           n15, Z => n125);
   U141 : AO2 port map( A => ram_7_3_port, B => n21, C => ram_6_3_port, D => 
                           n19, Z => n122);
   U142 : AO2 port map( A => ram_5_3_port, B => n17, C => ram_4_3_port, D => 
                           n15, Z => n121);
   U144 : AO2 port map( A => ram_7_4_port, B => n22, C => ram_6_4_port, D => 
                           n20, Z => n118);
   U145 : AO2 port map( A => ram_5_4_port, B => n18, C => ram_4_4_port, D => 
                           n16, Z => n117);
   U146 : AO2 port map( A => ram_7_0_port, B => n21, C => ram_6_0_port, D => 
                           n19, Z => n134);
   U147 : AO2 port map( A => ram_7_5_port, B => n22, C => ram_6_5_port, D => 
                           n20, Z => n114);
   U148 : AO2 port map( A => ram_5_5_port, B => n18, C => ram_4_5_port, D => 
                           n16, Z => n113);
   U149 : AO2 port map( A => ram_3_5_port, B => n6, C => ram_2_5_port, D => n2,
                           Z => n112);
   U150 : AO2 port map( A => ram_7_6_port, B => n22, C => ram_6_6_port, D => 
                           n20, Z => n110);
   U152 : AO2 port map( A => ram_5_6_port, B => n18, C => ram_4_6_port, D => 
                           n16, Z => n109);
   U153 : AO2 port map( A => ram_3_6_port, B => n6, C => ram_2_6_port, D => n2,
                           Z => n108);
   U154 : AO2 port map( A => ram_7_7_port, B => n22, C => ram_6_7_port, D => 
                           n20, Z => n98);
   U155 : AO2 port map( A => ram_5_7_port, B => n18, C => ram_4_7_port, D => 
                           n16, Z => n97);
   U156 : AO2 port map( A => ram_3_7_port, B => n6, C => ram_2_7_port, D => n2,
                           Z => n96);
   U159 : ND4 port map( A => n127, B => n128, C => n129, D => n130, Z => 
                           rx_data(1));
   U161 : AO2 port map( A => ram_1_1_port, B => n5, C => ram_0_1_port, D => n4,
                           Z => n127);
   U162 : AO2 port map( A => ram_3_1_port, B => n6, C => ram_2_1_port, D => n2,
                           Z => n128);
   U163 : ND4 port map( A => n123, B => n124, C => n125, D => n126, Z => 
                           rx_data(2));
   U164 : AO2 port map( A => ram_1_2_port, B => n5, C => ram_0_2_port, D => n4,
                           Z => n123);
   U165 : AO2 port map( A => ram_3_2_port, B => n6, C => ram_2_2_port, D => n2,
                           Z => n124);
   U166 : ND4 port map( A => n119, B => n120, C => n121, D => n122, Z => 
                           rx_data(3));
   U167 : AO2 port map( A => ram_1_3_port, B => n5, C => ram_0_3_port, D => n4,
                           Z => n119);
   U168 : AO2 port map( A => ram_3_3_port, B => n6, C => ram_2_3_port, D => n2,
                           Z => n120);
   U169 : ND4 port map( A => n115, B => n116, C => n117, D => n118, Z => 
                           rx_data(4));
   U170 : AO2 port map( A => ram_1_4_port, B => n5, C => ram_0_4_port, D => n4,
                           Z => n115);
   U171 : AO2 port map( A => ram_3_4_port, B => n6, C => ram_2_4_port, D => n2,
                           Z => n116);
   U172 : ND4 port map( A => n131, B => n132, C => n133, D => n134, Z => 
                           rx_data(0));
   U173 : AO2 port map( A => ram_1_0_port, B => n5, C => ram_0_0_port, D => n4,
                           Z => n131);
   U174 : AO2 port map( A => ram_3_0_port, B => n6, C => ram_2_0_port, D => n2,
                           Z => n132);
   U175 : AO2 port map( A => ram_5_0_port, B => n17, C => ram_4_0_port, D => 
                           n15, Z => n133);
   U176 : ND4 port map( A => n111, B => n112, C => n113, D => n114, Z => 
                           rx_data(5));
   U177 : AO2 port map( A => ram_1_5_port, B => n5, C => ram_0_5_port, D => n4,
                           Z => n111);
   U178 : ND4 port map( A => n107, B => n108, C => n109, D => n110, Z => 
                           rx_data(6));
   U179 : AO2 port map( A => ram_1_6_port, B => n5, C => ram_0_6_port, D => n4,
                           Z => n107);
   U180 : ND4 port map( A => n95, B => n96, C => n97, D => n98, Z => rx_data(7)
                           );
   U181 : AO2 port map( A => ram_1_7_port, B => n5, C => ram_0_7_port, D => n4,
                           Z => n95);
   U182 : IVI port map( A => n203, Z => n31);
   U183 : IVI port map( A => n205, Z => n32);
   U184 : IVI port map( A => n206, Z => n33);
   U185 : IVI port map( A => n207, Z => n34);
   U186 : IVI port map( A => n208, Z => n35);
   U187 : IVI port map( A => n209, Z => n36);
   U188 : IVI port map( A => n210, Z => n37);
   U189 : IVI port map( A => n211, Z => n38);
   U190 : IVI port map( A => n194, Z => n39);
   U191 : IVI port map( A => n196, Z => n40);
   U192 : IVI port map( A => n197, Z => n41);
   U193 : IVI port map( A => n198, Z => n42);
   U194 : IVI port map( A => n199, Z => n43);
   U195 : IVI port map( A => n200, Z => n44);
   U196 : IVI port map( A => n201, Z => n45);
   U197 : IVI port map( A => n202, Z => n46);
   U198 : IVI port map( A => n185, Z => n47);
   U199 : IVI port map( A => n187, Z => n48);
   U200 : IVI port map( A => n188, Z => n49);
   U201 : IVI port map( A => n189, Z => n50);
   U202 : IVI port map( A => n190, Z => n51);
   U203 : IVI port map( A => n191, Z => n52);
   U204 : IVI port map( A => n192, Z => n53);
   U205 : IVI port map( A => n193, Z => n54);
   U206 : IVI port map( A => n176, Z => n55);
   U207 : IVI port map( A => n178, Z => n56);
   U208 : IVI port map( A => n179, Z => n57);
   U209 : IVI port map( A => n180, Z => n58);
   U210 : IVI port map( A => n181, Z => n59);
   U211 : IVI port map( A => n182, Z => n60);
   U212 : IVI port map( A => n183, Z => n61);
   U213 : IVI port map( A => n184, Z => n62);
   U214 : IVI port map( A => n167, Z => n63);
   U215 : IVI port map( A => n169, Z => n64);
   U216 : IVI port map( A => n170, Z => n65);
   U217 : IVI port map( A => n171, Z => n66);
   U218 : IVI port map( A => n172, Z => n67);
   U219 : IVI port map( A => n173, Z => n68);
   U220 : IVI port map( A => n174, Z => n69);
   U221 : IVI port map( A => n175, Z => n70);
   U222 : IVI port map( A => n157, Z => n71);
   U223 : IVI port map( A => n159, Z => n72);
   U224 : IVI port map( A => n160, Z => n73);
   U225 : IVI port map( A => n161, Z => n74);
   U226 : IVI port map( A => n162, Z => n75);
   U227 : IVI port map( A => n163, Z => n76);
   U228 : IVI port map( A => n164, Z => n77);
   U229 : IVI port map( A => n165, Z => n78);
   U230 : IVI port map( A => n147, Z => n79);
   U231 : IVI port map( A => n149, Z => n80);
   U232 : IVI port map( A => n150, Z => n83);
   U233 : IVI port map( A => n151, Z => n92);
   U234 : IVI port map( A => n152, Z => n93);
   U235 : IVI port map( A => n153, Z => n94);
   U236 : IVI port map( A => n154, Z => n103);
   U237 : IVI port map( A => n155, Z => n104);
   U238 : IVI port map( A => n136, Z => n105);
   U239 : IVI port map( A => n138, Z => n106);
   U240 : IVI port map( A => n139, Z => n145);
   U241 : IVI port map( A => n140, Z => n246);
   U242 : IVI port map( A => n141, Z => n247);
   U243 : IVI port map( A => n142, Z => n248);
   U244 : IVI port map( A => n143, Z => n249);
   U245 : IVI port map( A => n144, Z => n250);
   U249 : IVI port map( A => n156, Z => n251);
   U250 : IVI port map( A => n166, Z => n252);
   U251 : IVI port map( A => n1, Z => n253);
   U252 : IVI port map( A => n232, Z => n254);
   U253 : IVI port map( A => n222, Z => n255);
   U254 : IVI port map( A => n237, Z => n256);
   U255 : IVI port map( A => n216, Z => n258);
   U256 : IVI port map( A => read_rx_data, Z => n259);

end SYN_behaviour;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_uart_top_address_width3.all;

entity tx_func is

   port( clk, reset : in std_logic;  data : in std_logic_vector (7 downto 0);  
         transmit_data : in std_logic;  word_width : in std_logic_vector (3 
         downto 0);  baud_period : in std_logic_vector (15 downto 0);  
         use_parity_bit, parity_type : in std_logic;  stop_bits : in 
         std_logic_vector (1 downto 0);  idle_line_lvl : in std_logic;  tx, 
         sending : out std_logic);

end tx_func;

architecture SYN_behaviour of tx_func is

   component IVI
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NR4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component ND4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component EN
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component NR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO2
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component ND2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2P
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO3
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component NR3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component AO6
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component ND3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component EON1
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AO7
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component IVDA
      port( A : in std_logic;  Y, Z : out std_logic);
   end component;
   
   component tx_func_DW01_inc_0
      port( A : in std_logic_vector (15 downto 0);  SUM : out std_logic_vector 
            (15 downto 0));
   end component;
   
   component NR2I
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component ND2I
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AN2I
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO1P
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component ENI
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component EOI
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AN3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component AN4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component OR3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component FD1
      port( D, CP : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal sending_port, baud_counter_q_15_port, baud_counter_q_14_port, 
      baud_counter_q_13_port, baud_counter_q_12_port, baud_counter_q_11_port, 
      baud_counter_q_10_port, baud_counter_q_9_port, baud_counter_q_8_port, 
      baud_counter_q_7_port, baud_counter_q_6_port, baud_counter_q_5_port, 
      baud_counter_q_4_port, baud_counter_q_3_port, baud_counter_q_2_port, 
      baud_counter_q_1_port, baud_counter_q_0_port, N115, N118, N119, N120, 
      N121, N122, N123, N124, N125, N126, N127, N128, N129, N130, N131, N132, 
      N133, n3, n5, n6, n7, n8, n9, n11, n14, n15, n17, n18, n19, n20, n21, n23
      , n24, n25, n27, n28, n30, n31, n32, n33, n35, n38, n53, n54, n55, n56, 
      n58, n59, n61, n63, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75
      , n76, n77, n79, n81, n84, n85, n86, n87, n89, n90, n92, n93, n94, n95, 
      n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
      n109, n110, n111, n112, n113, n114, n115_port, n116, n117, n118_port, 
      n119_port, n120_port, n121_port, n122_port, n123_port, n124_port, 
      n125_port, n126_port, n127_port, n128_port, n129_port, n130_port, 
      n131_port, n132_port, n133_port, n134, n135, n136, n137, n138, n139, n140
      , n141, n142, n143, n144, n145, n146, n147, n148, n149, n1, n2, n4, n10, 
      n12, n13, n16, n22, n26, n29, n34, n36, n37, n39, n40, n41, n42, n43, n44
      , n45, n46, n47, n48, n49, n50, n51, n52, n57, n60, n62, n64, n78, n80, 
      n82, n83, n88, n91, n150, n151, n152, n153, n154, n155, n156, n157, n158,
      n159, n160, n161, n_1145, n_1146, n_1147, n_1148, n_1149, n_1150, n_1151,
      n_1152, n_1153, n_1154 : std_logic;

begin
   sending <= sending_port;
   
   baud_counter_q_reg_0_inst : FD1 port map( D => n149, CP => clk, Q => 
                           baud_counter_q_0_port, QN => n94);
   baud_counter_q_reg_15_inst : FD1 port map( D => n124_port, CP => clk, Q => 
                           baud_counter_q_15_port, QN => n95);
   current_state_reg_3_inst : FD1 port map( D => n148, CP => clk, Q => n1, QN 
                           => n139);
   current_state_reg_2_inst : FD1 port map( D => n145, CP => clk, Q => n10, QN 
                           => n140);
   current_state_reg_0_inst : FD1 port map( D => n147, CP => clk, Q => n4, QN 
                           => n142);
   current_state_reg_1_inst : FD1 port map( D => n146, CP => clk, Q => n2, QN 
                           => n141);
   baud_counter_q_reg_14_inst : FD1 port map( D => n138, CP => clk, Q => 
                           baud_counter_q_14_port, QN => n109);
   baud_counter_q_reg_13_inst : FD1 port map( D => n137, CP => clk, Q => 
                           baud_counter_q_13_port, QN => n108);
   baud_counter_q_reg_12_inst : FD1 port map( D => n136, CP => clk, Q => 
                           baud_counter_q_12_port, QN => n107);
   baud_counter_q_reg_11_inst : FD1 port map( D => n135, CP => clk, Q => 
                           baud_counter_q_11_port, QN => n106);
   baud_counter_q_reg_10_inst : FD1 port map( D => n134, CP => clk, Q => 
                           baud_counter_q_10_port, QN => n105);
   baud_counter_q_reg_9_inst : FD1 port map( D => n133_port, CP => clk, Q => 
                           baud_counter_q_9_port, QN => n104);
   baud_counter_q_reg_8_inst : FD1 port map( D => n132_port, CP => clk, Q => 
                           baud_counter_q_8_port, QN => n103);
   baud_counter_q_reg_7_inst : FD1 port map( D => n131_port, CP => clk, Q => 
                           baud_counter_q_7_port, QN => n102);
   baud_counter_q_reg_6_inst : FD1 port map( D => n130_port, CP => clk, Q => 
                           baud_counter_q_6_port, QN => n101);
   baud_counter_q_reg_5_inst : FD1 port map( D => n129_port, CP => clk, Q => 
                           baud_counter_q_5_port, QN => n100);
   baud_counter_q_reg_4_inst : FD1 port map( D => n128_port, CP => clk, Q => 
                           baud_counter_q_4_port, QN => n99);
   baud_counter_q_reg_3_inst : FD1 port map( D => n127_port, CP => clk, Q => 
                           baud_counter_q_3_port, QN => n98);
   baud_counter_q_reg_2_inst : FD1 port map( D => n126_port, CP => clk, Q => 
                           baud_counter_q_2_port, QN => n97);
   baud_counter_q_reg_1_inst : FD1 port map( D => n125_port, CP => clk, Q => 
                           baud_counter_q_1_port, QN => n96);
   data_q_reg_7_inst : FD1 port map( D => n123_port, CP => clk, Q => n_1145, QN
                           => n143);
   data_q_reg_6_inst : FD1 port map( D => n122_port, CP => clk, Q => n_1146, QN
                           => n115_port);
   data_q_reg_5_inst : FD1 port map( D => n121_port, CP => clk, Q => n_1147, QN
                           => n114);
   data_q_reg_4_inst : FD1 port map( D => n120_port, CP => clk, Q => n_1148, QN
                           => n144);
   data_q_reg_3_inst : FD1 port map( D => n119_port, CP => clk, Q => n_1149, QN
                           => n113);
   data_q_reg_2_inst : FD1 port map( D => n118_port, CP => clk, Q => n_1150, QN
                           => n112);
   data_q_reg_1_inst : FD1 port map( D => n117, CP => clk, Q => n12, QN => n111
                           );
   data_q_reg_0_inst : FD1 port map( D => n116, CP => clk, Q => n_1151, QN => 
                           n110);
   U22 : AN3 port map( A => n141, B => n4, C => n159, Z => n30);
   U74 : OR3 port map( A => n1, B => n141, C => n4, Z => n70);
   U79 : AN3 port map( A => n142, B => n77, C => n139, Z => n76);
   U83 : OR3 port map( A => n33, B => word_width(0), C => n68, Z => n79);
   U85 : AN3 port map( A => n155, B => word_width(0), C => use_parity_bit, Z =>
                           n81);
   U97 : AN4 port map( A => n89, B => n14, C => n154, D => n33, Z => n84);
   U100 : AN3 port map( A => n142, B => n141, C => n87, Z => n72);
   U104 : AN3 port map( A => n142, B => n2, C => n87, Z => n71);
   U4 : AO1P port map( A => n139, B => n6, C => n7, D => n8, Z => n5);
   U9 : EOI port map( A => n17, B => parity_type, Z => n15);
   U10 : EOI port map( A => n18, B => n19, Z => n17);
   U11 : EOI port map( A => n20, B => n21, Z => n19);
   U12 : EOI port map( A => n112, B => n113, Z => n21);
   U13 : ENI port map( A => n110, B => n12, Z => n20);
   U14 : EOI port map( A => n23, B => n24, Z => n18);
   U15 : EOI port map( A => n114, B => n115_port, Z => n24);
   U16 : ENI port map( A => n144, B => n143, Z => n23);
   U18 : ND2I port map( A => n28, B => n10, Z => n27);
   U20 : AO1P port map( A => n11, B => n12, C => n30, D => n31, Z => n25);
   U67 : NR2I port map( A => n142, B => n141, Z => n11);
   U68 : NR2I port map( A => n59, B => n10, Z => n56);
   U72 : AO1P port map( A => n61, B => n4, C => n66, D => n67, Z => n65);
   U76 : ND2I port map( A => word_width(0), B => n72, Z => n69);
   U82 : ND2I port map( A => n14, B => n79, Z => n67);
   U89 : ND2I port map( A => n63, B => n1, Z => n86);
   U92 : ND2I port map( A => n158, B => n83, Z => n55);
   U95 : AN2I port map( A => transmit_data, B => n152, Z => n35);
   U98 : ND2I port map( A => n90, B => n4, Z => n33);
   U105 : NR2I port map( A => n10, B => n139, Z => n87);
   U111 : ND2I port map( A => n90, B => n142, Z => n3);
   U112 : NR2I port map( A => n77, B => n1, Z => n90);
   U113 : ND2I port map( A => n10, B => n2, Z => n77);
   U116 : NR2I port map( A => N118, B => n29, Z => n93);
   U120 : NR2I port map( A => sending_port, B => transmit_data, Z => n92);
   U122 : NR2I port map( A => n1, B => n2, Z => n61);
   add_84 : tx_func_DW01_inc_0 port map( A(15) => baud_counter_q_15_port, A(14)
                           => baud_counter_q_14_port, A(13) => 
                           baud_counter_q_13_port, A(12) => 
                           baud_counter_q_12_port, A(11) => 
                           baud_counter_q_11_port, A(10) => 
                           baud_counter_q_10_port, A(9) => 
                           baud_counter_q_9_port, A(8) => baud_counter_q_8_port
                           , A(7) => baud_counter_q_7_port, A(6) => 
                           baud_counter_q_6_port, A(5) => baud_counter_q_5_port
                           , A(4) => baud_counter_q_4_port, A(3) => 
                           baud_counter_q_3_port, A(2) => baud_counter_q_2_port
                           , A(1) => baud_counter_q_1_port, A(0) => 
                           baud_counter_q_0_port, SUM(15) => N133, SUM(14) => 
                           N132, SUM(13) => N131, SUM(12) => N130, SUM(11) => 
                           N129, SUM(10) => N128, SUM(9) => N127, SUM(8) => 
                           N126, SUM(7) => N125, SUM(6) => N124, SUM(5) => N123
                           , SUM(4) => N122, SUM(3) => N121, SUM(2) => N120, 
                           SUM(1) => N119, SUM(0) => N118);
   U3 : IVDA port map( A => n35, Y => n_1152, Z => n26);
   U5 : IVDA port map( A => n38, Y => n13, Z => n29);
   U6 : IVDA port map( A => n35, Y => n_1153, Z => n16);
   U7 : IVDA port map( A => n35, Y => n_1154, Z => n22);
   U8 : IVI port map( A => n92, Z => n88);
   U17 : AO6 port map( A => n91, B => n156, C => n71, Z => n89);
   U19 : NR3 port map( A => N115, B => reset, C => n26, Z => n63);
   U21 : AO6 port map( A => sending_port, B => n9, C => n159, Z => n8);
   U23 : AO7 port map( A => n11, B => n10, C => n1, Z => n9);
   U24 : EON1 port map( A => n110, B => n16, C => data(0), D => n16, Z => n116)
                           ;
   U25 : EON1 port map( A => n111, B => n22, C => data(1), D => n22, Z => n117)
                           ;
   U26 : EON1 port map( A => n112, B => n26, C => data(2), D => n26, Z => 
                           n118_port);
   U27 : EON1 port map( A => n113, B => n16, C => data(3), D => n16, Z => 
                           n119_port);
   U28 : EON1 port map( A => n144, B => n22, C => data(4), D => n22, Z => 
                           n120_port);
   U29 : EON1 port map( A => n114, B => n26, C => data(5), D => n26, Z => 
                           n121_port);
   U30 : EON1 port map( A => n115_port, B => n16, C => data(6), D => n16, Z => 
                           n122_port);
   U31 : EON1 port map( A => n143, B => n22, C => data(7), D => n22, Z => 
                           n123_port);
   U32 : EON1 port map( A => n95, B => n88, C => N133, D => n13, Z => n124_port
                           );
   U33 : EON1 port map( A => n109, B => n88, C => N132, D => n13, Z => n138);
   U34 : ND3 port map( A => n140, B => n61, C => n142, Z => sending_port);
   U35 : EON1 port map( A => n108, B => n88, C => N131, D => n13, Z => n137);
   U36 : AO4 port map( A => n141, B => n83, C => n65, D => n55, Z => n146);
   U37 : AO3 port map( A => n68, B => n69, C => n153, D => n70, Z => n66);
   U38 : AO4 port map( A => n142, B => n83, C => n73, D => n55, Z => n147);
   U39 : NR4 port map( A => n74, B => n75, C => n71, D => n76, Z => n73);
   U40 : AO4 port map( A => n140, B => n53, C => n54, D => n55, Z => n145);
   U41 : AO2 port map( A => n56, B => n11, C => n91, D => n58, Z => n54);
   U42 : AO6 port map( A => n61, B => n158, C => n63, Z => n53);
   U43 : EON1 port map( A => n107, B => n88, C => N130, D => n13, Z => n136);
   U44 : AO3 port map( A => n84, B => n55, C => n85, D => n86, Z => n148);
   U45 : ND4 port map( A => stop_bits(1), B => n87, C => n158, D => n160, Z => 
                           n85);
   U46 : EON1 port map( A => n106, B => n88, C => N129, D => n13, Z => n135);
   U47 : EON1 port map( A => n96, B => n88, C => N119, D => n13, Z => n125_port
                           );
   U48 : EON1 port map( A => n97, B => n88, C => N120, D => n13, Z => n126_port
                           );
   U49 : EON1 port map( A => n98, B => n88, C => N121, D => n13, Z => n127_port
                           );
   U50 : EON1 port map( A => n99, B => n88, C => N122, D => n13, Z => n128_port
                           );
   U51 : EON1 port map( A => n100, B => n88, C => N123, D => n13, Z => 
                           n129_port);
   U52 : EON1 port map( A => n101, B => n88, C => N124, D => n13, Z => 
                           n130_port);
   U53 : EON1 port map( A => n102, B => n88, C => N125, D => n13, Z => 
                           n131_port);
   U54 : EON1 port map( A => n103, B => n88, C => N126, D => n13, Z => 
                           n132_port);
   U55 : EON1 port map( A => n104, B => n88, C => N127, D => n13, Z => 
                           n133_port);
   U56 : EON1 port map( A => n105, B => n88, C => N128, D => n13, Z => n134);
   U57 : AO4 port map( A => n94, B => n88, C => n92, D => n93, Z => n149);
   U58 : AO4 port map( A => n156, B => n3, C => n81, D => n154, Z => n74);
   U59 : AO6 port map( A => n150, B => n3, C => use_parity_bit, Z => n75);
   U60 : ND3 port map( A => n141, B => n4, C => n87, Z => n14);
   U61 : ND3 port map( A => word_width(2), B => n157, C => word_width(1), Z => 
                           n68);
   U62 : ND4 port map( A => word_width(2), B => word_width(0), C => n161, D => 
                           n157, Z => n58);
   U63 : AO6 port map( A => stop_bits(1), B => n160, C => n139, Z => n59);
   U64 : NR3 port map( A => n4, B => n110, C => n141, Z => n31);
   U65 : AO4 port map( A => n143, B => n14, C => n15, D => n153, Z => n7);
   U66 : AO4 port map( A => n25, B => n10, C => n2, D => n27, Z => n6);
   U69 : AO4 port map( A => n112, B => n4, C => n113, D => n142, Z => n28);
   U70 : AO3 port map( A => n144, B => n3, C => n151, D => n5, Z => tx);
   U71 : AO4 port map( A => n33, B => n114, C => n154, D => n115_port, Z => n32
                           );
   U73 : OR2P port map( A => n152, B => N115, Z => n38);
   U75 : EN port map( A => baud_period(2), B => baud_counter_q_2_port, Z => n41
                           );
   U77 : EN port map( A => baud_period(15), B => baud_counter_q_15_port, Z => 
                           n40);
   U78 : ND2 port map( A => baud_counter_q_0_port, B => n80, Z => n34);
   U80 : AO2 port map( A => n96, B => n34, C => n34, D => baud_period(1), Z => 
                           n36);
   U81 : NR2 port map( A => n80, B => baud_counter_q_0_port, Z => n37);
   U84 : AO4 port map( A => n37, B => n96, C => baud_period(1), D => n37, Z => 
                           n39);
   U86 : ND4 port map( A => n41, B => n40, C => n82, D => n39, Z => n78);
   U87 : EN port map( A => baud_period(6), B => baud_counter_q_6_port, Z => n45
                           );
   U88 : EN port map( A => baud_period(5), B => baud_counter_q_5_port, Z => n44
                           );
   U90 : EN port map( A => baud_period(4), B => baud_counter_q_4_port, Z => n43
                           );
   U91 : EN port map( A => baud_period(3), B => baud_counter_q_3_port, Z => n42
                           );
   U93 : ND4 port map( A => n45, B => n44, C => n43, D => n42, Z => n64);
   U94 : EN port map( A => baud_period(10), B => baud_counter_q_10_port, Z => 
                           n49);
   U96 : EN port map( A => baud_period(9), B => baud_counter_q_9_port, Z => n48
                           );
   U99 : EN port map( A => baud_period(8), B => baud_counter_q_8_port, Z => n47
                           );
   U101 : EN port map( A => baud_period(7), B => baud_counter_q_7_port, Z => 
                           n46);
   U102 : ND4 port map( A => n49, B => n48, C => n47, D => n46, Z => n62);
   U103 : EN port map( A => baud_period(14), B => baud_counter_q_14_port, Z => 
                           n57);
   U106 : EN port map( A => baud_period(13), B => baud_counter_q_13_port, Z => 
                           n52);
   U107 : EN port map( A => baud_period(12), B => baud_counter_q_12_port, Z => 
                           n51);
   U108 : EN port map( A => baud_period(11), B => baud_counter_q_11_port, Z => 
                           n50);
   U109 : ND4 port map( A => n57, B => n52, C => n51, D => n50, Z => n60);
   U110 : NR4 port map( A => n78, B => n64, C => n62, D => n60, Z => N115);
   U114 : IVI port map( A => baud_period(0), Z => n80);
   U115 : IVI port map( A => n36, Z => n82);
   U117 : IVI port map( A => n63, Z => n83);
   U118 : IVI port map( A => n3, Z => n91);
   U119 : IVI port map( A => n67, Z => n150);
   U121 : IVI port map( A => n32, Z => n151);
   U123 : IVI port map( A => sending_port, Z => n152);
   U124 : IVI port map( A => n71, Z => n153);
   U125 : IVI port map( A => n72, Z => n154);
   U126 : IVI port map( A => n68, Z => n155);
   U127 : IVI port map( A => n58, Z => n156);
   U128 : IVI port map( A => word_width(3), Z => n157);
   U129 : IVI port map( A => reset, Z => n158);
   U130 : IVI port map( A => idle_line_lvl, Z => n159);
   U131 : IVI port map( A => stop_bits(0), Z => n160);
   U132 : IVI port map( A => word_width(1), Z => n161);

end SYN_behaviour;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_uart_top_address_width3.all;

entity rx_func is

   port( clk, reset, rx_enable, rx : in std_logic;  word_width : in 
         std_logic_vector (3 downto 0);  baud_period : in std_logic_vector (15 
         downto 0);  use_parity_bit, parity_type : in std_logic;  stop_bits : 
         in std_logic_vector (1 downto 0);  idle_line_lvl : in std_logic;  
         start_samples, line_samples : in std_logic_vector (3 downto 0);  data 
         : out std_logic_vector (7 downto 0);  data_ready, parity_error, 
         stop_bit_error : out std_logic);

end rx_func;

architecture SYN_behaviour of rx_func is

   component IVI
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AN4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AO4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component NR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO2
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component ND2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component EN
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NR4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component EO
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component ND3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component AN3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component AO6
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component ND4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component EON1
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AO3
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component NR3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component AO7
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component IVDA
      port( A : in std_logic;  Y, Z : out std_logic);
   end component;
   
   component EO1
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AN4P
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component rx_func_DW01_inc_1
      port( A : in std_logic_vector (11 downto 0);  SUM : out std_logic_vector 
            (11 downto 0));
   end component;
   
   component rx_func_DW01_inc_0
      port( A : in std_logic_vector (15 downto 0);  SUM : out std_logic_vector 
            (15 downto 0));
   end component;
   
   component ENI
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component ND2I
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NR2I
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AN2I
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO1P
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component EOI
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OR3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component FD1
      port( D, CP : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal period16_count_q_11_port, period16_count_q_10_port, 
      period16_count_q_9_port, period16_count_q_8_port, period16_count_q_7_port
      , period16_count_q_6_port, period16_count_q_5_port, 
      period16_count_q_4_port, period16_count_q_3_port, period16_count_q_2_port
      , period16_count_q_1_port, period16_count_q_0_port, N117, N118, N119, 
      N120, N121, N122, N123, N124, N125, N126, N127, N128, 
      period_count_q_15_port, period_count_q_14_port, period_count_q_13_port, 
      period_count_q_12_port, period_count_q_11_port, period_count_q_10_port, 
      period_count_q_9_port, period_count_q_8_port, period_count_q_7_port, 
      period_count_q_6_port, period_count_q_5_port, period_count_q_4_port, 
      period_count_q_3_port, period_count_q_2_port, period_count_q_1_port, 
      period_count_q_0_port, N143, N144, N145, N146, N147, N148, N149, N150, 
      N151, N152, N153, N154, N155, N156, N157, N158, rx_sampled_q, 
      xored_sampled_data_bit_q, sampled_data_9_port, sampled_data_8_port, n14, 
      n21, n23, n24, n28, n30, n31, n34, n35, n37, n39, n40, n41, n42, n43, n44
      , n46, n50, n51, n52, n53, n56, n57, n59, n60, n61, n62, n63, n65, n66, 
      n67, n68, n71, n72, n73, n74, n75, n76, n79, n80, n81, n82, n83, n84, n85
      , n87, n88, n90, n91, n93, n94, n96, n97, n98, n99, n100, n101, n102, 
      n103, n104, n105, n106, n108, n109, n111, n112, n115, n116, n117_port, 
      n118_port, n119_port, n120_port, n123_port, n124_port, n125_port, 
      n126_port, n128_port, n129, n130, n131, n132, n134, n135, n136, n139, 
      n140, n141, n142, n143_port, n144_port, n145_port, n147_port, n148_port, 
      n149_port, n150_port, n151_port, n152_port, n155_port, n156_port, 
      n157_port, n158_port, n159, n162, n163, n164, n165, n166, n168, n169, 
      n170, n171, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, 
      n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, 
      n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, 
      n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, 
      n220, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, 
      n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, 
      n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, 
      n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, 
      n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, 
      n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, 
      n297, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n15, n16, 
      n17, n18, n19, n20, n22, n25, n26, n27, n29, n32, n33, n36, n38, n45, n47
      , n48, n49, n54, n55, n58, n64, n69, n70, n77, n78, n86, n89, n92, n95, 
      n107, n110, n113, n114, n121_port, n122_port, n127_port, n133, n137, n138
      , n146_port, n153_port, n154_port, n160, n161, n167, n172, n219, n221, 
      n222, n223, n224, n225, n298, n299, n300, n301, n302, n303, n304, n305, 
      n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, 
      n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n_1155,
      n_1156, n_1157, n_1158, n_1159, n_1160, n_1161, n_1162, n_1163, n_1164, 
      n_1165, n_1166 : std_logic;

begin
   
   period16_count_q_reg_0_inst : FD1 port map( D => n297, CP => clk, Q => 
                           period16_count_q_0_port, QN => n182);
   period16_count_q_reg_11_inst : FD1 port map( D => n260, CP => clk, Q => 
                           period16_count_q_11_port, QN => n193);
   period16_count_q_reg_10_inst : FD1 port map( D => n261, CP => clk, Q => 
                           period16_count_q_10_port, QN => n192);
   period16_count_q_reg_9_inst : FD1 port map( D => n262, CP => clk, Q => 
                           period16_count_q_9_port, QN => n191);
   period16_count_q_reg_8_inst : FD1 port map( D => n263, CP => clk, Q => 
                           period16_count_q_8_port, QN => n190);
   period16_count_q_reg_7_inst : FD1 port map( D => n264, CP => clk, Q => 
                           period16_count_q_7_port, QN => n189);
   period16_count_q_reg_6_inst : FD1 port map( D => n265, CP => clk, Q => 
                           period16_count_q_6_port, QN => n188);
   period16_count_q_reg_5_inst : FD1 port map( D => n266, CP => clk, Q => 
                           period16_count_q_5_port, QN => n187);
   period16_count_q_reg_4_inst : FD1 port map( D => n267, CP => clk, Q => 
                           period16_count_q_4_port, QN => n186);
   period16_count_q_reg_3_inst : FD1 port map( D => n268, CP => clk, Q => 
                           period16_count_q_3_port, QN => n185);
   period16_count_q_reg_2_inst : FD1 port map( D => n269, CP => clk, Q => 
                           period16_count_q_2_port, QN => n184);
   period16_count_q_reg_1_inst : FD1 port map( D => n270, CP => clk, Q => 
                           period16_count_q_1_port, QN => n183);
   sample_reg_start_bit_q_reg_0_inst : FD1 port map( D => n259, CP => clk, Q =>
                           n233, QN => n2);
   sample_reg_start_bit_q_reg_1_inst : FD1 port map( D => n258, CP => clk, Q =>
                           n232, QN => n5);
   sample_reg_start_bit_q_reg_3_inst : FD1 port map( D => n257, CP => clk, Q =>
                           n231, QN => n17);
   sample_reg_start_bit_q_reg_2_inst : FD1 port map( D => n256, CP => clk, Q =>
                           n230, QN => n8);
   sample_reg_q_reg_0_inst : FD1 port map( D => n255, CP => clk, Q => n229, QN 
                           => n16);
   sample_reg_q_reg_1_inst : FD1 port map( D => n254, CP => clk, Q => n228, QN 
                           => n9);
   sample_reg_q_reg_3_inst : FD1 port map( D => n253, CP => clk, Q => n227, QN 
                           => n15);
   sample_reg_q_reg_2_inst : FD1 port map( D => n252, CP => clk, Q => n226, QN 
                           => n4);
   rx_sampled_q_reg : FD1 port map( D => n296, CP => clk, Q => rx_sampled_q, QN
                           => n18);
   current_state_reg_0_inst : FD1 port map( D => n295, CP => clk, Q => n12, QN 
                           => n289);
   current_state_reg_3_inst : FD1 port map( D => n294, CP => clk, Q => n1, QN 
                           => n286);
   current_state_reg_1_inst : FD1 port map( D => n293, CP => clk, Q => n6, QN 
                           => n288);
   current_state_reg_2_inst : FD1 port map( D => n292, CP => clk, Q => n10, QN 
                           => n287);
   period_count_q_reg_15_inst : FD1 port map( D => n271, CP => clk, Q => 
                           period_count_q_15_port, QN => n194);
   period_count_q_reg_1_inst : FD1 port map( D => n285, CP => clk, Q => 
                           period_count_q_1_port, QN => n196);
   period_count_q_reg_2_inst : FD1 port map( D => n284, CP => clk, Q => 
                           period_count_q_2_port, QN => n197);
   period_count_q_reg_3_inst : FD1 port map( D => n283, CP => clk, Q => 
                           period_count_q_3_port, QN => n198);
   period_count_q_reg_4_inst : FD1 port map( D => n282, CP => clk, Q => 
                           period_count_q_4_port, QN => n199);
   period_count_q_reg_5_inst : FD1 port map( D => n281, CP => clk, Q => 
                           period_count_q_5_port, QN => n200);
   period_count_q_reg_6_inst : FD1 port map( D => n280, CP => clk, Q => 
                           period_count_q_6_port, QN => n201);
   period_count_q_reg_7_inst : FD1 port map( D => n279, CP => clk, Q => 
                           period_count_q_7_port, QN => n202);
   period_count_q_reg_8_inst : FD1 port map( D => n278, CP => clk, Q => 
                           period_count_q_8_port, QN => n203);
   period_count_q_reg_9_inst : FD1 port map( D => n277, CP => clk, Q => 
                           period_count_q_9_port, QN => n204);
   period_count_q_reg_10_inst : FD1 port map( D => n276, CP => clk, Q => 
                           period_count_q_10_port, QN => n205);
   period_count_q_reg_11_inst : FD1 port map( D => n275, CP => clk, Q => 
                           period_count_q_11_port, QN => n206);
   period_count_q_reg_12_inst : FD1 port map( D => n274, CP => clk, Q => 
                           period_count_q_12_port, QN => n207);
   period_count_q_reg_13_inst : FD1 port map( D => n273, CP => clk, Q => 
                           period_count_q_13_port, QN => n208);
   period_count_q_reg_14_inst : FD1 port map( D => n272, CP => clk, Q => 
                           period_count_q_14_port, QN => n209);
   period_count_q_reg_0_inst : FD1 port map( D => n291, CP => clk, Q => 
                           period_count_q_0_port, QN => n195);
   sampled_data_reg_9_inst : FD1 port map( D => n251, CP => clk, Q => 
                           sampled_data_9_port, QN => n_1155);
   sampled_data_reg_8_inst : FD1 port map( D => n250, CP => clk, Q => 
                           sampled_data_8_port, QN => n19);
   sampled_data_reg_7_inst : FD1 port map( D => n249, CP => clk, Q => n_1156, 
                           QN => n29);
   sampled_data_reg_6_inst : FD1 port map( D => n248, CP => clk, Q => n_1157, 
                           QN => n27);
   sampled_data_reg_5_inst : FD1 port map( D => n247, CP => clk, Q => n_1158, 
                           QN => n26);
   sampled_data_reg_4_inst : FD1 port map( D => n246, CP => clk, Q => n_1159, 
                           QN => n25);
   sampled_data_reg_3_inst : FD1 port map( D => n245, CP => clk, Q => n_1160, 
                           QN => n22);
   sampled_data_reg_2_inst : FD1 port map( D => n244, CP => clk, Q => n220, QN 
                           => n_1161);
   sampled_data_reg_1_inst : FD1 port map( D => n243, CP => clk, Q => n_1162, 
                           QN => n20);
   sampled_data_reg_0_inst : FD1 port map( D => n242, CP => clk, Q => n218, QN 
                           => n_1163);
   data_reg_7_inst : FD1 port map( D => n241, CP => clk, Q => data(7), QN => 
                           n217);
   data_reg_6_inst : FD1 port map( D => n240, CP => clk, Q => data(6), QN => 
                           n216);
   data_reg_5_inst : FD1 port map( D => n239, CP => clk, Q => data(5), QN => 
                           n215);
   data_reg_4_inst : FD1 port map( D => n238, CP => clk, Q => data(4), QN => 
                           n214);
   data_reg_3_inst : FD1 port map( D => n237, CP => clk, Q => data(3), QN => 
                           n213);
   data_reg_2_inst : FD1 port map( D => n236, CP => clk, Q => data(2), QN => 
                           n212);
   data_reg_1_inst : FD1 port map( D => n235, CP => clk, Q => data(1), QN => 
                           n211);
   data_reg_0_inst : FD1 port map( D => n234, CP => clk, Q => data(0), QN => 
                           n210);
   xored_sampled_data_bit_q_reg : FD1 port map( D => n290, CP => clk, Q => 
                           xored_sampled_data_bit_q, QN => n_1164);
   U21 : AN3 port map( A => n30, B => n13, C => n286, Z => n23);
   U46 : AN3 port map( A => n53, B => n9, C => n16, Z => n51);
   U50 : AN3 port map( A => n229, B => n228, C => n60, Z => n52);
   U56 : OR2 port map( A => n66, B => n228, Z => n65);
   U60 : AN3 port map( A => n11, B => n328, C => n71, Z => n53);
   U67 : AN3 port map( A => n76, B => n11, C => rx, Z => n60);
   U74 : AN3 port map( A => n233, B => n232, C => n87, Z => n81);
   U131 : OR3 port map( A => n288, B => n286, C => n314, Z => n119_port);
   U173 : OR3 port map( A => stop_bits(0), B => n43, C => n325, Z => n148_port)
                           ;
   U183 : AN3 port map( A => word_width(2), B => n322, C => word_width(1), Z =>
                           n165);
   U188 : AN3 port map( A => n289, B => n1, C => n287, Z => n163);
   U189 : OR3 port map( A => n168, B => n13, C => n169, Z => n128_port);
   U191 : OR2 port map( A => n118_port, B => n105, Z => n170);
   U214 : AN3 port map( A => n4, B => n15, C => n9, Z => n74);
   U224 : AN3 port map( A => n10, B => n1, C => n288, Z => n168);
   U227 : OR3 port map( A => n180, B => stop_bits(0), C => n325, Z => n179);
   U233 : AN3 port map( A => n1, B => n10, C => n289, Z => n124_port);
   U15 : ND2I port map( A => n23, B => n288, Z => n21);
   U20 : ND2I port map( A => n23, B => n6, Z => n28);
   U27 : NR2I port map( A => n320, B => n315, Z => n35);
   U30 : NR2I port map( A => n320, B => n310, Z => n37);
   U33 : NR2I port map( A => n320, B => n316, Z => n39);
   U37 : NR2I port map( A => n320, B => n41, Z => n42);
   U40 : NR2I port map( A => n320, B => n43, Z => n44);
   U41 : ND2I port map( A => rx_sampled_q, B => n13, Z => n34);
   U51 : AO1P port map( A => n60, B => n4, C => n56, D => n61, Z => n57);
   U53 : ND2I port map( A => n62, B => n63, Z => n56);
   U58 : AN2I port map( A => n67, B => n68, Z => n63);
   U64 : NR2I port map( A => n307, B => n75, Z => n68);
   U72 : ND2I port map( A => n84, B => n85, Z => n257);
   U77 : ND2I port map( A => n90, B => n91, Z => n83);
   U80 : ND2I port map( A => n94, B => n5, Z => n93);
   U82 : NR2I port map( A => n96, B => n97, Z => n91);
   U86 : ND2I port map( A => n99, B => n2, Z => n98);
   U87 : ND2I port map( A => n82, B => n309, Z => n99);
   U92 : ENI port map( A => idle_line_lvl, B => rx, Z => n101);
   U126 : ND2I port map( A => n117_port, B => n118_port, Z => n116);
   U127 : ENI port map( A => xored_sampled_data_bit_q, B => n18, Z => n117_port
                           );
   U129 : NR2I port map( A => n320, B => n324, Z => n120_port);
   U137 : AO1P port map( A => n286, B => n10, C => n30, D => n126_port, Z => 
                           n125_port);
   U138 : NR2I port map( A => n286, B => n12, Z => n126_port);
   U140 : AO1P port map( A => n30, B => n6, C => n131, D => n132, Z => n129);
   U147 : AO1P port map( A => n139, B => n141, C => n142, D => n143_port, Z => 
                           n140);
   U149 : NR2I port map( A => n324, B => n145_port, Z => n144_port);
   U153 : ND2I port map( A => n135, B => use_parity_bit, Z => n141);
   U161 : NR2I port map( A => n10, B => n289, Z => n30);
   U163 : ND2I port map( A => n11, B => n128_port, Z => n130);
   U165 : AO1P port map( A => use_parity_bit, B => n150_port, C => n158_port, D
                           => n156_port, Z => n157_port);
   U174 : ND2I port map( A => n163, B => n6, Z => n43);
   U175 : ND2I port map( A => n149_port, B => n164, Z => n162);
   U177 : NR2I port map( A => n164, B => n313, Z => n159);
   U179 : ND2I port map( A => n165, B => n327, Z => n145_port);
   U181 : ND2I port map( A => n41, B => n166, Z => n150_port);
   U186 : ND2I port map( A => n10, B => n6, Z => n164);
   U187 : ND2I port map( A => n163, B => n288, Z => n41);
   U192 : ENI port map( A => n2, B => start_samples(0), Z => n105);
   U194 : ND2I port map( A => n134, B => n287, Z => n118_port);
   U195 : NR2I port map( A => n313, B => n6, Z => n134);
   U198 : NR2I port map( A => n1, B => n12, Z => n149_port);
   U199 : EOI port map( A => n232, B => start_samples(1), Z => n104);
   U200 : EOI port map( A => n230, B => start_samples(2), Z => n102);
   U201 : EOI port map( A => n231, B => start_samples(3), Z => n103);
   U205 : AO1P port map( A => n71, B => n76, C => n47, D => n307, Z => n171);
   U208 : ENI port map( A => n226, B => line_samples(2), Z => n176);
   U209 : ENI port map( A => n227, B => line_samples(3), Z => n175);
   U210 : ENI port map( A => n228, B => line_samples(1), Z => n174);
   U211 : ENI port map( A => n229, B => line_samples(0), Z => n173);
   U212 : ND2I port map( A => n74, B => n16, Z => n71);
   U222 : NR2I port map( A => rx_enable, B => n47, Z => n109);
   U223 : AN2I port map( A => n12, B => n168, Z => data_ready);
   U229 : ENI port map( A => sampled_data_9_port, B => idle_line_lvl, Z => n180
                           );
   U230 : ENI port map( A => idle_line_lvl, B => sampled_data_8_port, Z => n178
                           );
   U231 : NR2I port map( A => n181, B => n33, Z => parity_error);
   U232 : ND2I port map( A => n288, B => n124_port, Z => n14);
   U236 : ENI port map( A => xored_sampled_data_bit_q, B => parity_type, Z => 
                           n181);
   add_107 : rx_func_DW01_inc_0 port map( A(15) => period_count_q_15_port, 
                           A(14) => period_count_q_14_port, A(13) => 
                           period_count_q_13_port, A(12) => 
                           period_count_q_12_port, A(11) => 
                           period_count_q_11_port, A(10) => 
                           period_count_q_10_port, A(9) => 
                           period_count_q_9_port, A(8) => period_count_q_8_port
                           , A(7) => period_count_q_7_port, A(6) => 
                           period_count_q_6_port, A(5) => period_count_q_5_port
                           , A(4) => period_count_q_4_port, A(3) => 
                           period_count_q_3_port, A(2) => period_count_q_2_port
                           , A(1) => period_count_q_1_port, A(0) => 
                           period_count_q_0_port, SUM(15) => N158, SUM(14) => 
                           N157, SUM(13) => N156, SUM(12) => N155, SUM(11) => 
                           N154, SUM(10) => N153, SUM(9) => N152, SUM(8) => 
                           N151, SUM(7) => N150, SUM(6) => N149, SUM(5) => N148
                           , SUM(4) => N147, SUM(3) => N146, SUM(2) => N145, 
                           SUM(1) => N144, SUM(0) => N143);
   add_96 : rx_func_DW01_inc_1 port map( A(11) => period16_count_q_11_port, 
                           A(10) => period16_count_q_10_port, A(9) => 
                           period16_count_q_9_port, A(8) => 
                           period16_count_q_8_port, A(7) => 
                           period16_count_q_7_port, A(6) => 
                           period16_count_q_6_port, A(5) => 
                           period16_count_q_5_port, A(4) => 
                           period16_count_q_4_port, A(3) => 
                           period16_count_q_3_port, A(2) => 
                           period16_count_q_2_port, A(1) => 
                           period16_count_q_1_port, A(0) => 
                           period16_count_q_0_port, SUM(11) => N128, SUM(10) =>
                           N127, SUM(9) => N126, SUM(8) => N125, SUM(7) => N124
                           , SUM(6) => N123, SUM(5) => N122, SUM(4) => N121, 
                           SUM(3) => N120, SUM(2) => N119, SUM(1) => N118, 
                           SUM(0) => N117);
   U3 : AN4P port map( A => n302, B => n301, C => n300, D => n299, Z => n13);
   U4 : IVDA port map( A => n112, Y => n_1165, Z => n38);
   U5 : NR3 port map( A => n3, B => n47, C => n13, Z => n112);
   U6 : IVDA port map( A => n14, Y => n7, Z => n33);
   U7 : NR4 port map( A => n103, B => n102, C => n104, D => n170, Z => n169);
   U8 : NR3 port map( A => n60, B => n47, C => n328, Z => n75);
   U9 : AO2 port map( A => n159, B => n321, C => n139, D => n135, Z => 
                           n155_port);
   U10 : AO7 port map( A => n155_port, B => n324, C => n33, Z => n156_port);
   U11 : IVDA port map( A => n108, Y => n_1166, Z => n45);
   U12 : NR3 port map( A => n109, B => n47, C => n32, Z => n108);
   U13 : AO7 port map( A => n305, B => n4, C => n50, Z => n252);
   U14 : AO3 port map( A => n51, B => n52, C => n4, D => n32, Z => n50);
   U16 : AO4 port map( A => n171, B => n18, C => n306, D => n76, Z => n296);
   U17 : AO7 port map( A => n47, B => n99, C => n32, Z => n97);
   U18 : IVDA port map( A => n111, Y => n3, Z => n36);
   U19 : AO4 port map( A => n6, B => n314, C => n144_port, D => n310, Z => 
                           n143_port);
   U22 : EO1 port map( A => n87, B => n5, C => n5, D => n82, Z => n90);
   U23 : NR3 port map( A => n47, B => n100, C => n101, Z => n87);
   U24 : NR4 port map( A => n102, B => n103, C => n104, D => n105, Z => n100);
   U25 : ND3 port map( A => n11, B => n106, C => n101, Z => n82);
   U26 : ND4 port map( A => n8, B => n17, C => n5, D => n2, Z => n106);
   U28 : IVDA port map( A => reset, Y => n11, Z => n47);
   U29 : AO4 port map( A => n315, B => n34, C => n35, D => n25, Z => n246);
   U31 : AO4 port map( A => n34, B => n310, C => n37, D => n26, Z => n247);
   U32 : AO4 port map( A => n34, B => n316, C => n39, D => n27, Z => n248);
   U34 : AO4 port map( A => n34, B => n41, C => n42, D => n29, Z => n249);
   U35 : IVI port map( A => n109, Z => n323);
   U36 : EON1 port map( A => n36, B => n194, C => N158, D => n38, Z => n271);
   U38 : AO3 port map( A => n124_port, B => n125_port, C => n11, D => n288, Z 
                           => n111);
   U39 : EON1 port map( A => n36, B => n209, C => N157, D => n38, Z => n272);
   U42 : EON1 port map( A => n36, B => n208, C => N156, D => n38, Z => n273);
   U43 : EON1 port map( A => n36, B => n207, C => N155, D => n38, Z => n274);
   U44 : EON1 port map( A => n36, B => n206, C => N154, D => n38, Z => n275);
   U45 : EON1 port map( A => n36, B => n205, C => N153, D => n38, Z => n276);
   U47 : EON1 port map( A => n36, B => n204, C => N152, D => n38, Z => n277);
   U48 : EON1 port map( A => n36, B => n203, C => N151, D => n38, Z => n278);
   U49 : EON1 port map( A => n36, B => n202, C => N150, D => n38, Z => n279);
   U52 : EON1 port map( A => n36, B => n201, C => N149, D => n38, Z => n280);
   U54 : EON1 port map( A => n36, B => n200, C => N148, D => n38, Z => n281);
   U55 : EON1 port map( A => n36, B => n199, C => N147, D => n38, Z => n282);
   U57 : EON1 port map( A => n36, B => n198, C => N146, D => n38, Z => n283);
   U59 : EON1 port map( A => n36, B => n197, C => N145, D => n38, Z => n284);
   U61 : EON1 port map( A => n36, B => n196, C => N144, D => n38, Z => n285);
   U62 : AO4 port map( A => n287, B => n128_port, C => n129, D => n130, Z => 
                           n292);
   U63 : AO3 port map( A => n135, B => n315, C => n136, D => n33, Z => n131);
   U65 : AO4 port map( A => n287, B => n312, C => n321, D => n310, Z => n132);
   U66 : AO4 port map( A => n288, B => n128_port, C => n140, D => n130, Z => 
                           n293);
   U68 : AO4 port map( A => n286, B => n128_port, C => n151_port, D => n130, Z 
                           => n294);
   U69 : NR4 port map( A => n152_port, B => n318, C => n319, D => n40, Z => 
                           n151_port);
   U70 : AO3 port map( A => n286, B => n314, C => n311, D => n155_port, Z => 
                           n152_port);
   U71 : AO4 port map( A => n289, B => n128_port, C => n157_port, D => n130, Z 
                           => n295);
   U73 : AO3 port map( A => n321, B => n310, C => n162, D => n148_port, Z => 
                           n158_port);
   U75 : AN4 port map( A => n114, B => n113, C => n110, D => n107, Z => n32);
   U76 : AO2 port map( A => n228, B => n53, C => n60, D => n9, Z => n62);
   U78 : AO7 port map( A => n57, B => n15, C => n59, Z => n253);
   U79 : ND4 port map( A => n52, B => n32, C => n226, D => n15, Z => n59);
   U81 : NR3 port map( A => n4, B => rx, C => n47, Z => n61);
   U83 : EON1 port map( A => n323, B => n193, C => N128, D => n45, Z => n260);
   U84 : AO2 port map( A => n229, B => n53, C => n60, D => n16, Z => n67);
   U85 : NR4 port map( A => n1, B => n6, C => n289, D => n287, Z => n139);
   U88 : ND4 port map( A => n173, B => n174, C => n175, D => n176, Z => n76);
   U89 : EON1 port map( A => n24, B => n20, C => rx_sampled_q, D => n24, Z => 
                           n243);
   U90 : NR4 port map( A => n313, B => n320, C => n10, D => n288, Z => n24);
   U91 : EON1 port map( A => n323, B => n183, C => N118, D => n45, Z => n270);
   U93 : EON1 port map( A => n323, B => n184, C => N119, D => n45, Z => n269);
   U94 : EON1 port map( A => n323, B => n185, C => N120, D => n45, Z => n268);
   U95 : EON1 port map( A => n323, B => n186, C => N121, D => n45, Z => n267);
   U96 : EON1 port map( A => n323, B => n187, C => N122, D => n45, Z => n266);
   U97 : EON1 port map( A => n323, B => n188, C => N123, D => n45, Z => n265);
   U98 : EON1 port map( A => n323, B => n189, C => N124, D => n45, Z => n264);
   U99 : EON1 port map( A => n323, B => n190, C => N125, D => n45, Z => n263);
   U100 : EON1 port map( A => n323, B => n191, C => N126, D => n45, Z => n262);
   U101 : EON1 port map( A => n323, B => n192, C => N127, D => n45, Z => n261);
   U102 : NR4 port map( A => n326, B => n327, C => word_width(1), D => 
                           word_width(3), Z => n135);
   U103 : AO4 port map( A => n309, B => n233, C => n2, D => n82, Z => n96);
   U104 : EON1 port map( A => n115, B => n116, C => n115, D => 
                           xored_sampled_data_bit_q, Z => n290);
   U105 : ND4 port map( A => n43, B => n33, C => n119_port, D => n120_port, Z 
                           => n115);
   U106 : EON1 port map( A => n31, B => n22, C => rx_sampled_q, D => n31, Z => 
                           n245);
   U107 : NR3 port map( A => n320, B => n287, C => n312, Z => n31);
   U108 : AO4 port map( A => n36, B => n195, C => n3, D => n123_port, Z => n291
                           );
   U109 : NR3 port map( A => n13, B => n47, C => N143, Z => n123_port);
   U110 : AO4 port map( A => n63, B => n9, C => n307, D => n65, Z => n254);
   U111 : AO2 port map( A => n229, B => n60, C => n16, D => n53, Z => n66);
   U112 : AO7 port map( A => n308, B => n8, C => n79, Z => n256);
   U113 : AO3 port map( A => n80, B => n81, C => n8, D => n32, Z => n79);
   U114 : NR3 port map( A => n82, B => n232, C => n233, Z => n80);
   U115 : ND4 port map( A => n81, B => n230, C => n32, D => n17, Z => n85);
   U116 : AO7 port map( A => n83, B => n88, C => n231, Z => n84);
   U117 : AO4 port map( A => n82, B => n8, C => n230, D => n309, Z => n88);
   U118 : NR3 port map( A => n1, B => n289, C => n164, Z => n40);
   U119 : AO4 port map( A => n323, B => n182, C => n109, D => n177, Z => n297);
   U120 : NR3 port map( A => n32, B => n47, C => N117, Z => n177);
   U121 : AO7 port map( A => stop_bits(0), B => n325, C => n319, Z => n136);
   U122 : ND3 port map( A => word_width(0), B => n40, C => n165, Z => n166);
   U123 : EON1 port map( A => n21, B => n18, C => n21, D => n218, Z => n242);
   U124 : EON1 port map( A => n18, B => n28, C => n28, D => n220, Z => n244);
   U125 : AO4 port map( A => n34, B => n43, C => n44, D => n19, Z => n250);
   U128 : AO7 port map( A => n68, B => n16, C => n72, Z => n255);
   U130 : AO3 port map( A => n73, B => n60, C => n16, D => n32, Z => n72);
   U132 : NR3 port map( A => n74, B => rx, C => n47, Z => n73);
   U133 : AO4 port map( A => n91, B => n5, C => n307, D => n93, Z => n258);
   U134 : AO4 port map( A => n233, B => n82, C => n2, D => n309, Z => n94);
   U135 : EON1 port map( A => n307, B => n98, C => n97, D => n233, Z => n259);
   U136 : AO3 port map( A => use_parity_bit, B => n317, C => n147_port, D => 
                           n148_port, Z => n142);
   U139 : ND3 port map( A => n6, B => n287, C => n149_port, Z => n147_port);
   U141 : EON1 port map( A => n210, B => n7, C => n7, D => n218, Z => n234);
   U142 : AO4 port map( A => n14, B => n20, C => n211, D => n7, Z => n235);
   U143 : EON1 port map( A => n212, B => n7, C => n7, D => n220, Z => n236);
   U144 : AO4 port map( A => n14, B => n22, C => n213, D => n7, Z => n237);
   U145 : AO4 port map( A => n14, B => n25, C => n214, D => n7, Z => n238);
   U146 : AO4 port map( A => n14, B => n26, C => n215, D => n7, Z => n239);
   U148 : AO4 port map( A => n33, B => n27, C => n216, D => n7, Z => n240);
   U150 : AO4 port map( A => n33, B => n29, C => n217, D => n7, Z => n241);
   U151 : EON1 port map( A => n18, B => n46, C => n46, D => sampled_data_9_port
                           , Z => n251);
   U152 : ND4 port map( A => n13, B => n30, C => n6, D => n1, Z => n46);
   U154 : AO6 port map( A => n178, B => n179, C => n33, Z => stop_bit_error);
   U155 : EO port map( A => baud_period(6), B => period16_count_q_2_port, Z => 
                           n49);
   U156 : EO port map( A => baud_period(7), B => period16_count_q_3_port, Z => 
                           n48);
   U157 : NR2 port map( A => n49, B => n48, Z => n114);
   U158 : EN port map( A => baud_period(8), B => period16_count_q_4_port, Z => 
                           n113);
   U159 : ND2 port map( A => period16_count_q_0_port, B => n121_port, Z => n54)
                           ;
   U160 : AO2 port map( A => n183, B => n54, C => n54, D => baud_period(5), Z 
                           => n55);
   U162 : NR2 port map( A => n121_port, B => period16_count_q_0_port, Z => n58)
                           ;
   U164 : AO4 port map( A => n58, B => n183, C => baud_period(5), D => n58, Z 
                           => n69);
   U166 : EN port map( A => baud_period(15), B => period16_count_q_11_port, Z 
                           => n64);
   U167 : AN3 port map( A => n122_port, B => n69, C => n64, Z => n110);
   U168 : EN port map( A => baud_period(10), B => period16_count_q_6_port, Z =>
                           n78);
   U169 : EN port map( A => baud_period(9), B => period16_count_q_5_port, Z => 
                           n77);
   U170 : EN port map( A => baud_period(11), B => period16_count_q_7_port, Z =>
                           n70);
   U171 : ND3 port map( A => n78, B => n77, C => n70, Z => n95);
   U172 : EO port map( A => baud_period(14), B => period16_count_q_10_port, Z 
                           => n92);
   U176 : EO port map( A => baud_period(12), B => period16_count_q_8_port, Z =>
                           n89);
   U178 : EO port map( A => baud_period(13), B => period16_count_q_9_port, Z =>
                           n86);
   U180 : NR4 port map( A => n95, B => n92, C => n89, D => n86, Z => n107);
   U182 : IVI port map( A => baud_period(4), Z => n121_port);
   U184 : IVI port map( A => n55, Z => n122_port);
   U185 : EO port map( A => baud_period(11), B => period_count_q_11_port, Z => 
                           n138);
   U190 : EO port map( A => baud_period(12), B => period_count_q_12_port, Z => 
                           n137);
   U193 : EO port map( A => baud_period(13), B => period_count_q_13_port, Z => 
                           n133);
   U196 : EO port map( A => baud_period(14), B => period_count_q_14_port, Z => 
                           n127_port);
   U197 : NR4 port map( A => n138, B => n137, C => n133, D => n127_port, Z => 
                           n302);
   U202 : EO port map( A => baud_period(7), B => period_count_q_7_port, Z => 
                           n160);
   U203 : EO port map( A => baud_period(8), B => period_count_q_8_port, Z => 
                           n154_port);
   U204 : EO port map( A => baud_period(9), B => period_count_q_9_port, Z => 
                           n153_port);
   U206 : EO port map( A => baud_period(10), B => period_count_q_10_port, Z => 
                           n146_port);
   U207 : NR4 port map( A => n160, B => n154_port, C => n153_port, D => 
                           n146_port, Z => n301);
   U213 : EO port map( A => baud_period(3), B => period_count_q_3_port, Z => 
                           n219);
   U215 : EO port map( A => baud_period(4), B => period_count_q_4_port, Z => 
                           n172);
   U216 : EO port map( A => baud_period(5), B => period_count_q_5_port, Z => 
                           n167);
   U217 : EO port map( A => baud_period(6), B => period_count_q_6_port, Z => 
                           n161);
   U218 : NR4 port map( A => n219, B => n172, C => n167, D => n161, Z => n300);
   U219 : EN port map( A => baud_period(2), B => period_count_q_2_port, Z => 
                           n298);
   U220 : EN port map( A => baud_period(15), B => period_count_q_15_port, Z => 
                           n225);
   U221 : ND2 port map( A => period_count_q_0_port, B => n303, Z => n221);
   U225 : AO2 port map( A => n196, B => n221, C => n221, D => baud_period(1), Z
                           => n222);
   U226 : NR2 port map( A => n303, B => period_count_q_0_port, Z => n223);
   U228 : AO4 port map( A => n223, B => n196, C => baud_period(1), D => n223, Z
                           => n224);
   U234 : AN4 port map( A => n298, B => n225, C => n304, D => n224, Z => n299);
   U235 : IVI port map( A => baud_period(0), Z => n303);
   U237 : IVI port map( A => n222, Z => n304);
   U238 : IVI port map( A => n56, Z => n305);
   U239 : IVI port map( A => n171, Z => n306);
   U240 : IVI port map( A => n32, Z => n307);
   U241 : IVI port map( A => n83, Z => n308);
   U242 : IVI port map( A => n87, Z => n309);
   U243 : IVI port map( A => n159, Z => n310);
   U244 : IVI port map( A => n156_port, Z => n311);
   U245 : IVI port map( A => n134, Z => n312);
   U246 : IVI port map( A => n149_port, Z => n313);
   U247 : IVI port map( A => n30, Z => n314);
   U248 : IVI port map( A => n139, Z => n315);
   U249 : IVI port map( A => n40, Z => n316);
   U250 : IVI port map( A => n150_port, Z => n317);
   U251 : IVI port map( A => n41, Z => n318);
   U252 : IVI port map( A => n43, Z => n319);
   U253 : IVI port map( A => n13, Z => n320);
   U254 : IVI port map( A => n145_port, Z => n321);
   U255 : IVI port map( A => word_width(3), Z => n322);
   U256 : IVI port map( A => use_parity_bit, Z => n324);
   U257 : IVI port map( A => stop_bits(1), Z => n325);
   U258 : IVI port map( A => word_width(2), Z => n326);
   U259 : IVI port map( A => word_width(0), Z => n327);
   U260 : IVI port map( A => rx, Z => n328);

end SYN_behaviour;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_uart_top_address_width3.all;

entity uart_wb is

   port( CLK_I, master_rst, RST_I : in std_logic;  ADR_I, DAT_I : in 
         std_logic_vector (7 downto 0);  WE_I, STB_I, CYC_I : in std_logic;  
         DAT_O : out std_logic_vector (7 downto 0);  ACK_O : out std_logic;  
         word_width : out std_logic_vector (3 downto 0);  baud_period : out 
         std_logic_vector (15 downto 0);  use_parity_bit, parity_type : out 
         std_logic;  stop_bits : out std_logic_vector (1 downto 0);  
         idle_line_lvl, rx_enable : out std_logic;  start_samples, line_samples
         : out std_logic_vector (3 downto 0);  uart_rx_rst, uart_rx_fifo_rst, 
         uart_tx_rst, uart_tx_fifo_rst : out std_logic;  tx_fifo_entries_free :
         in std_logic_vector (7 downto 0);  write_tx_data : out std_logic;  
         tx_data : out std_logic_vector (7 downto 0);  read_rx_data : out 
         std_logic;  rx_data, rx_fifo_entries_free : in std_logic_vector (7 
         downto 0));

end uart_wb;

architecture SYN_behaviour of uart_wb is

   component IVI
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AO1P
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component NR4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component IVDA
      port( A : in std_logic;  Y, Z : out std_logic);
   end component;
   
   component EON1
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AO2
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AO4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AO3
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component ND4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AO7
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component ND3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component ND2I
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OR3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component AN3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NR2I
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component FD1
      port( D, CP : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal baud_period_15_port, baud_period_14_port, baud_period_13_port, 
      baud_period_12_port, baud_period_11_port, baud_period_10_port, 
      baud_period_9_port, baud_period_8_port, baud_period_7_port, 
      baud_period_6_port, baud_period_5_port, baud_period_4_port, 
      baud_period_3_port, baud_period_2_port, baud_period_1_port, 
      baud_period_0_port, rx_enable_port, start_samples_3_port, 
      start_samples_2_port, start_samples_1_port, start_samples_0_port, 
      line_samples_3_port, line_samples_2_port, line_samples_1_port, 
      line_samples_0_port, reg_addr_1000_q_4_port, reg_addr_1000_q_3_port, 
      reg_addr_1000_q_2_port, reg_addr_1000_q_1_port, reg_addr_1000_q_0_port, 
      reg_addr_1001_q_4_port, reg_addr_1001_q_3_port, reg_addr_1001_q_2_port, 
      reg_addr_1001_q_1_port, reg_addr_1001_q_0_port, n1, n2, n3, n4, n5, n6, 
      n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, 
      n22, n23, n24, n25, n27, n29, n31, n33, n62, n63, n64, n65, n66, n67, n69
      , n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, 
      n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98
      , n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, 
      n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, 
      n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, 
      n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, 
      n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, 
      n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, 
      n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, 
      n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, 
      n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, 
      n26, n28, n30, n32, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44
      , n45, n46, n47, n48, n49, n50, n51, n52, n53, n58, n59, n60, n61, n68, 
      n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, 
      n219, n_1167, n_1168, n_1169, n_1170, n_1171, n_1172, n_1173, n_1174, 
      n_1175, n_1176, n_1177, n_1178, n_1179, n_1180 : std_logic;

begin
   ACK_O <= STB_I;
   baud_period <= ( baud_period_15_port, baud_period_14_port, 
      baud_period_13_port, baud_period_12_port, baud_period_11_port, 
      baud_period_10_port, baud_period_9_port, baud_period_8_port, 
      baud_period_7_port, baud_period_6_port, baud_period_5_port, 
      baud_period_4_port, baud_period_3_port, baud_period_2_port, 
      baud_period_1_port, baud_period_0_port );
   rx_enable <= rx_enable_port;
   start_samples <= ( start_samples_3_port, start_samples_2_port, 
      start_samples_1_port, start_samples_0_port );
   line_samples <= ( line_samples_3_port, line_samples_2_port, 
      line_samples_1_port, line_samples_0_port );
   tx_data <= ( DAT_I(7), DAT_I(6), DAT_I(5), DAT_I(4), DAT_I(3), DAT_I(2), 
      DAT_I(1), DAT_I(0) );
   
   word_width(3) <= '0';
   reg_addr_1001_q_reg_0_inst : FD1 port map( D => n206, CP => CLK_I, Q => 
                           reg_addr_1001_q_0_port, QN => n_1167);
   reg_addr_1001_q_reg_4_inst : FD1 port map( D => n164, CP => CLK_I, Q => 
                           reg_addr_1001_q_4_port, QN => n_1168);
   reg_addr_1001_q_reg_3_inst : FD1 port map( D => n165, CP => CLK_I, Q => 
                           reg_addr_1001_q_3_port, QN => n_1169);
   reg_addr_1001_q_reg_2_inst : FD1 port map( D => n166, CP => CLK_I, Q => 
                           reg_addr_1001_q_2_port, QN => n_1170);
   reg_addr_1001_q_reg_1_inst : FD1 port map( D => n167, CP => CLK_I, Q => 
                           reg_addr_1001_q_1_port, QN => n_1171);
   reg_addr_1000_q_reg_4_inst : FD1 port map( D => n168, CP => CLK_I, Q => 
                           reg_addr_1000_q_4_port, QN => n27);
   reg_addr_1000_q_reg_3_inst : FD1 port map( D => n169, CP => CLK_I, Q => 
                           reg_addr_1000_q_3_port, QN => n29);
   reg_addr_1000_q_reg_2_inst : FD1 port map( D => n170, CP => CLK_I, Q => 
                           reg_addr_1000_q_2_port, QN => n31);
   reg_addr_1000_q_reg_1_inst : FD1 port map( D => n171, CP => CLK_I, Q => 
                           reg_addr_1000_q_1_port, QN => n33);
   reg_addr_1000_q_reg_0_inst : FD1 port map( D => n172, CP => CLK_I, Q => 
                           reg_addr_1000_q_0_port, QN => n_1172);
   reg_addr_111_q_reg_7_inst : FD1 port map( D => n173, CP => CLK_I, Q => 
                           baud_period_15_port, QN => n18);
   reg_addr_111_q_reg_6_inst : FD1 port map( D => n174, CP => CLK_I, Q => 
                           baud_period_14_port, QN => n19);
   reg_addr_111_q_reg_5_inst : FD1 port map( D => n175, CP => CLK_I, Q => 
                           baud_period_13_port, QN => n20);
   reg_addr_111_q_reg_4_inst : FD1 port map( D => n176, CP => CLK_I, Q => 
                           baud_period_12_port, QN => n21);
   reg_addr_111_q_reg_3_inst : FD1 port map( D => n177, CP => CLK_I, Q => 
                           baud_period_11_port, QN => n22);
   reg_addr_111_q_reg_2_inst : FD1 port map( D => n178, CP => CLK_I, Q => 
                           baud_period_10_port, QN => n23);
   reg_addr_111_q_reg_1_inst : FD1 port map( D => n179, CP => CLK_I, Q => 
                           baud_period_9_port, QN => n24);
   reg_addr_111_q_reg_0_inst : FD1 port map( D => n180, CP => CLK_I, Q => 
                           baud_period_8_port, QN => n25);
   reg_addr_110_q_reg_4_inst : FD1 port map( D => n184, CP => CLK_I, Q => 
                           baud_period_4_port, QN => n_1173);
   reg_addr_110_q_reg_7_inst : FD1 port map( D => n181, CP => CLK_I, Q => 
                           baud_period_7_port, QN => n14);
   reg_addr_110_q_reg_6_inst : FD1 port map( D => n182, CP => CLK_I, Q => 
                           baud_period_6_port, QN => n15);
   reg_addr_110_q_reg_5_inst : FD1 port map( D => n183, CP => CLK_I, Q => 
                           baud_period_5_port, QN => n16);
   reg_addr_110_q_reg_3_inst : FD1 port map( D => n185, CP => CLK_I, Q => 
                           baud_period_3_port, QN => n_1174);
   reg_addr_110_q_reg_2_inst : FD1 port map( D => n186, CP => CLK_I, Q => 
                           baud_period_2_port, QN => n_1175);
   reg_addr_110_q_reg_1_inst : FD1 port map( D => n187, CP => CLK_I, Q => 
                           baud_period_1_port, QN => n_1176);
   reg_addr_110_q_reg_0_inst : FD1 port map( D => n188, CP => CLK_I, Q => 
                           baud_period_0_port, QN => n17);
   reg_addr_101_q_reg_6_inst : FD1 port map( D => n190, CP => CLK_I, Q => 
                           start_samples_2_port, QN => n_1177);
   reg_addr_101_q_reg_5_inst : FD1 port map( D => n191, CP => CLK_I, Q => 
                           start_samples_1_port, QN => n_1178);
   reg_addr_101_q_reg_2_inst : FD1 port map( D => n194, CP => CLK_I, Q => 
                           line_samples_2_port, QN => n_1179);
   reg_addr_101_q_reg_7_inst : FD1 port map( D => n189, CP => CLK_I, Q => 
                           start_samples_3_port, QN => n_1180);
   reg_addr_101_q_reg_4_inst : FD1 port map( D => n192, CP => CLK_I, Q => 
                           start_samples_0_port, QN => n10);
   reg_addr_101_q_reg_3_inst : FD1 port map( D => n193, CP => CLK_I, Q => 
                           line_samples_3_port, QN => n11);
   reg_addr_101_q_reg_1_inst : FD1 port map( D => n195, CP => CLK_I, Q => 
                           line_samples_1_port, QN => n12);
   reg_addr_101_q_reg_0_inst : FD1 port map( D => n196, CP => CLK_I, Q => 
                           line_samples_0_port, QN => n13);
   reg_addr_100_q_reg_7_inst : FD1 port map( D => n197, CP => CLK_I, Q => 
                           idle_line_lvl, QN => n2);
   reg_addr_100_q_reg_3_inst : FD1 port map( D => n201, CP => CLK_I, Q => 
                           stop_bits(0), QN => n6);
   reg_addr_100_q_reg_6_inst : FD1 port map( D => n198, CP => CLK_I, Q => 
                           use_parity_bit, QN => n3);
   reg_addr_100_q_reg_5_inst : FD1 port map( D => n199, CP => CLK_I, Q => 
                           parity_type, QN => n4);
   reg_addr_100_q_reg_4_inst : FD1 port map( D => n200, CP => CLK_I, Q => 
                           stop_bits(1), QN => n5);
   reg_addr_100_q_reg_2_inst : FD1 port map( D => n202, CP => CLK_I, Q => 
                           word_width(2), QN => n7);
   reg_addr_100_q_reg_1_inst : FD1 port map( D => n203, CP => CLK_I, Q => 
                           word_width(1), QN => n8);
   reg_addr_100_q_reg_0_inst : FD1 port map( D => n204, CP => CLK_I, Q => 
                           word_width(0), QN => n9);
   reg_addr_1_q_reg : FD1 port map( D => n205, CP => CLK_I, Q => rx_enable_port
                           , QN => n1);
   U3 : AO1P port map( A => RST_I, B => reg_addr_1001_q_2_port, C => master_rst
                           , D => reg_addr_1000_q_2_port, Z => n62);
   U4 : AO1P port map( A => RST_I, B => reg_addr_1001_q_1_port, C => master_rst
                           , D => reg_addr_1000_q_1_port, Z => n63);
   U5 : AO1P port map( A => RST_I, B => reg_addr_1001_q_4_port, C => master_rst
                           , D => reg_addr_1000_q_4_port, Z => n64);
   U6 : AO1P port map( A => RST_I, B => reg_addr_1001_q_3_port, C => master_rst
                           , D => reg_addr_1000_q_3_port, Z => n65);
   U8 : ND2I port map( A => reg_addr_1001_q_4_port, B => n66, Z => n67);
   U10 : ND2I port map( A => reg_addr_1001_q_3_port, B => n66, Z => n69);
   U12 : ND2I port map( A => reg_addr_1001_q_2_port, B => n66, Z => n70);
   U14 : ND2I port map( A => reg_addr_1001_q_1_port, B => n66, Z => n71);
   U19 : NR2I port map( A => n73, B => n218, Z => n172);
   U20 : ND2I port map( A => n72, B => n34, Z => n73);
   U30 : ND2I port map( A => n76, B => n32, Z => n77);
   U36 : NR2I port map( A => DAT_I(4), B => n37, Z => n81);
   U41 : ND2I port map( A => n79, B => n45, Z => n80);
   U43 : ND2I port map( A => n82, B => n28, Z => n78);
   U46 : ND2I port map( A => start_samples_2_port, B => n52, Z => n85);
   U48 : ND2I port map( A => start_samples_1_port, B => n52, Z => n86);
   U52 : ND2I port map( A => line_samples_2_port, B => n52, Z => n88);
   U55 : ND2I port map( A => n87, B => n44, Z => n84);
   U58 : NR2I port map( A => DAT_I(7), B => n37, Z => n91);
   U63 : NR2I port map( A => DAT_I(3), B => n37, Z => n93);
   U67 : ND2I port map( A => n90, B => n43, Z => n92);
   U69 : ND2I port map( A => n94, B => n28, Z => n89);
   U71 : ND2I port map( A => n95, B => n42, Z => n96);
   U75 : ND2I port map( A => reg_addr_1001_q_0_port, B => n66, Z => n99);
   U77 : NR2I port map( A => n26, B => n100, Z => n75);
   U78 : NR2I port map( A => n210, B => n101, Z => n98);
   U80 : NR2I port map( A => n74, B => n97, Z => write_tx_data);
   U82 : ND2I port map( A => WE_I, B => CYC_I, Z => n101);
   U84 : AO1P port map( A => n61, B => start_samples_3_port, C => n105, D => 
                           n106, Z => n103);
   U87 : ND2I port map( A => rx_fifo_entries_free(7), B => n112, Z => n111);
   U88 : ND2I port map( A => tx_fifo_entries_free(7), B => n113, Z => n110);
   U90 : AO1P port map( A => n61, B => start_samples_2_port, C => n115, D => 
                           n116, Z => n114);
   U93 : ND2I port map( A => rx_fifo_entries_free(6), B => n112, Z => n118);
   U94 : ND2I port map( A => tx_fifo_entries_free(6), B => n113, Z => n117);
   U96 : ND2I port map( A => n28, B => n59, Z => n104);
   U97 : AO1P port map( A => n61, B => start_samples_1_port, C => n120, D => 
                           n121, Z => n119);
   U100 : ND2I port map( A => rx_fifo_entries_free(5), B => n112, Z => n123);
   U101 : ND2I port map( A => tx_fifo_entries_free(5), B => n113, Z => n122);
   U103 : AO1P port map( A => n60, B => baud_period_4_port, C => n128, D => 
                           n129, Z => n127);
   U109 : AO1P port map( A => n60, B => baud_period_3_port, C => n137, D => 
                           n138, Z => n136);
   U115 : AO1P port map( A => n60, B => baud_period_2_port, C => n143, D => 
                           n144, Z => n142);
   U121 : AO1P port map( A => n60, B => baud_period_1_port, C => n149, D => 
                           n150, Z => n148);
   U130 : NR2I port map( A => n100, B => n210, Z => n131);
   U131 : NR2I port map( A => n100, B => ADR_I(0), Z => n132);
   U132 : ND2I port map( A => ADR_I(3), B => n102, Z => n100);
   U134 : ND2I port map( A => rx_fifo_entries_free(0), B => n112, Z => n158);
   U135 : NR2I port map( A => n159, B => ADR_I(0), Z => n112);
   U136 : ND2I port map( A => tx_fifo_entries_free(0), B => n113, Z => n157);
   U137 : NR2I port map( A => n159, B => n210, Z => n113);
   U138 : ND2I port map( A => n94, B => n210, Z => n109);
   U140 : ND2I port map( A => n82, B => n210, Z => n107);
   U141 : ND2I port map( A => n94, B => ADR_I(0), Z => n130);
   U142 : NR2I port map( A => n160, B => ADR_I(1), Z => n94);
   U145 : ND2I port map( A => rx_data(0), B => n151, Z => n161);
   U147 : ND2I port map( A => n210, B => n68, Z => n163);
   U148 : NR2I port map( A => ADR_I(2), B => ADR_I(1), Z => n102);
   U149 : ND2I port map( A => n82, B => ADR_I(0), Z => n108);
   U150 : NR2I port map( A => n208, B => n160, Z => n82);
   U151 : ND2I port map( A => ADR_I(2), B => n68, Z => n160);
   U184 : OR2 port map( A => n101, B => ADR_I(0), Z => n74);
   U185 : AN3 port map( A => n125, B => n126, C => n127, Z => n124);
   U186 : AN3 port map( A => n134, B => n135, C => n136, Z => n133);
   U187 : AN3 port map( A => n140, B => n141, C => n142, Z => n139);
   U188 : AN3 port map( A => n146, B => n147, C => n148, Z => n145);
   U189 : OR3 port map( A => ADR_I(2), B => ADR_I(3), C => n208, Z => n159);
   U7 : AO7 port map( A => n209, B => n78, C => n38, Z => n76);
   U9 : AO7 port map( A => n209, B => n89, C => n34, Z => n87);
   U11 : ND2I port map( A => n98, B => n75, Z => n66);
   U13 : AO7 port map( A => n74, B => n89, C => n32, Z => n90);
   U15 : AO7 port map( A => n74, B => n78, C => n36, Z => n79);
   U16 : AO7 port map( A => n58, B => n74, C => n39, Z => n72);
   U17 : ND3 port map( A => n68, B => n102, C => n28, Z => n97);
   U18 : AO4 port map( A => n102, B => n68, C => n207, D => n163, Z => n151);
   U21 : AO4 port map( A => n90, B => n9, C => n218, D => n92, Z => n204);
   U22 : AO4 port map( A => n90, B => n8, C => n217, D => n92, Z => n203);
   U23 : AO4 port map( A => n90, B => n7, C => n216, D => n92, Z => n202);
   U24 : AO4 port map( A => n90, B => n5, C => n214, D => n92, Z => n200);
   U25 : AO4 port map( A => n90, B => n4, C => n213, D => n92, Z => n199);
   U26 : AO4 port map( A => n90, B => n3, C => n212, D => n92, Z => n198);
   U27 : AO4 port map( A => n76, B => n25, C => n218, D => n77, Z => n180);
   U28 : AO4 port map( A => n76, B => n24, C => n217, D => n77, Z => n179);
   U29 : AO4 port map( A => n76, B => n23, C => n216, D => n77, Z => n178);
   U31 : AO4 port map( A => n76, B => n22, C => n215, D => n77, Z => n177);
   U32 : AO4 port map( A => n76, B => n21, C => n214, D => n77, Z => n176);
   U33 : AO4 port map( A => n76, B => n20, C => n77, D => n213, Z => n175);
   U34 : AO4 port map( A => n76, B => n19, C => n77, D => n212, Z => n174);
   U35 : AO4 port map( A => n76, B => n18, C => n77, D => n211, Z => n173);
   U37 : AO4 port map( A => n90, B => n6, C => n51, D => n93, Z => n201);
   U38 : AO4 port map( A => n90, B => n2, C => n51, D => n91, Z => n197);
   U39 : AO4 port map( A => n87, B => n13, C => n218, D => n84, Z => n196);
   U40 : AO4 port map( A => n87, B => n12, C => n217, D => n84, Z => n195);
   U42 : AO4 port map( A => n87, B => n11, C => n215, D => n84, Z => n193);
   U44 : AO4 port map( A => n87, B => n10, C => n214, D => n84, Z => n192);
   U45 : EON1 port map( A => n211, B => n84, C => n52, D => 
                           start_samples_3_port, Z => n189);
   U47 : AO4 port map( A => n79, B => n17, C => n218, D => n80, Z => n188);
   U49 : EON1 port map( A => n217, B => n80, C => n53, D => baud_period_1_port,
                           Z => n187);
   U50 : EON1 port map( A => n216, B => n80, C => n53, D => baud_period_2_port,
                           Z => n186);
   U51 : EON1 port map( A => n215, B => n80, C => n53, D => baud_period_3_port,
                           Z => n185);
   U53 : AO4 port map( A => n79, B => n16, C => n213, D => n80, Z => n183);
   U54 : AO4 port map( A => n79, B => n15, C => n212, D => n80, Z => n182);
   U56 : AO4 port map( A => n79, B => n14, C => n211, D => n80, Z => n181);
   U57 : AO3 port map( A => n52, B => n216, C => n88, D => n35, Z => n194);
   U59 : AO3 port map( A => n52, B => n213, C => n86, D => n36, Z => n191);
   U60 : AO3 port map( A => n52, B => n212, C => n85, D => n35, Z => n190);
   U61 : EON1 port map( A => n53, B => n81, C => n53, D => baud_period_4_port, 
                           Z => n184);
   U62 : AO4 port map( A => n72, B => n33, C => n217, D => n73, Z => n171);
   U64 : AO4 port map( A => n72, B => n31, C => n216, D => n73, Z => n170);
   U65 : AO4 port map( A => n72, B => n29, C => n215, D => n73, Z => n169);
   U66 : AO4 port map( A => n72, B => n27, C => n214, D => n73, Z => n168);
   U68 : AO4 port map( A => n95, B => n1, C => n218, D => n96, Z => n205);
   U70 : AO7 port map( A => n209, B => n97, C => n39, Z => n95);
   U72 : AO3 port map( A => n66, B => n217, C => n71, D => n40, Z => n167);
   U73 : AO3 port map( A => n66, B => n216, C => n70, D => n41, Z => n166);
   U74 : AO3 port map( A => n66, B => n215, C => n69, D => n40, Z => n165);
   U76 : AO3 port map( A => n66, B => n214, C => n67, D => n41, Z => n164);
   U79 : AO3 port map( A => n66, B => n218, C => n99, D => n38, Z => n206);
   U81 : NR4 port map( A => WE_I, B => ADR_I(0), C => n219, D => n97, Z => 
                           read_rx_data);
   U83 : AO3 port map( A => n9, B => n109, C => n157, D => n158, Z => n155);
   U85 : AO4 port map( A => n13, B => n130, C => n17, D => n107, Z => n154);
   U86 : AO4 port map( A => n16, B => n107, C => n20, D => n108, Z => n121);
   U89 : AO3 port map( A => n4, B => n109, C => n122, D => n123, Z => n120);
   U91 : AO4 port map( A => n15, B => n107, C => n19, D => n108, Z => n116);
   U92 : AO3 port map( A => n3, B => n109, C => n117, D => n118, Z => n115);
   U95 : AO4 port map( A => n14, B => n107, C => n18, D => n108, Z => n106);
   U98 : AO3 port map( A => n2, B => n109, C => n110, D => n111, Z => n105);
   U99 : AO4 port map( A => n8, B => n109, C => n12, D => n130, Z => n149);
   U102 : AO4 port map( A => n24, B => n108, C => n59, D => n46, Z => n150);
   U104 : EON1 port map( A => n7, B => n109, C => line_samples_2_port, D => n61
                           , Z => n143);
   U105 : AO4 port map( A => n23, B => n108, C => n59, D => n47, Z => n144);
   U106 : AO4 port map( A => n6, B => n109, C => n11, D => n130, Z => n137);
   U107 : AO4 port map( A => n22, B => n108, C => n59, D => n48, Z => n138);
   U108 : AO4 port map( A => n5, B => n109, C => n10, D => n130, Z => n128);
   U110 : AO4 port map( A => n21, B => n108, C => n59, D => n49, Z => n129);
   U111 : AO2 port map( A => n132, B => reg_addr_1000_q_0_port, C => 
                           reg_addr_1001_q_0_port, D => n131, Z => n156);
   U112 : ND4 port map( A => rx_enable_port, B => n102, C => ADR_I(0), D => n68
                           , Z => n162);
   U113 : EON1 port map( A => n152, B => n26, C => n26, D => rx_data(0), Z => 
                           DAT_O(0));
   U114 : NR4 port map( A => n153, B => n154, C => n155, D => n50, Z => n152);
   U116 : AO3 port map( A => n25, B => n108, C => n161, D => n162, Z => n153);
   U117 : AO4 port map( A => n145, B => n26, C => n28, D => n46, Z => DAT_O(1))
                           ;
   U118 : AO2 port map( A => n131, B => reg_addr_1001_q_1_port, C => n132, D =>
                           reg_addr_1000_q_1_port, Z => n146);
   U119 : AO2 port map( A => tx_fifo_entries_free(1), B => n113, C => 
                           rx_fifo_entries_free(1), D => n112, Z => n147);
   U120 : AO4 port map( A => n139, B => n26, C => n28, D => n47, Z => DAT_O(2))
                           ;
   U122 : AO2 port map( A => n131, B => reg_addr_1001_q_2_port, C => n132, D =>
                           reg_addr_1000_q_2_port, Z => n140);
   U123 : AO2 port map( A => tx_fifo_entries_free(2), B => n113, C => 
                           rx_fifo_entries_free(2), D => n112, Z => n141);
   U124 : AO4 port map( A => n133, B => n26, C => n28, D => n48, Z => DAT_O(3))
                           ;
   U125 : AO2 port map( A => n131, B => reg_addr_1001_q_3_port, C => n132, D =>
                           reg_addr_1000_q_3_port, Z => n134);
   U126 : AO2 port map( A => tx_fifo_entries_free(3), B => n113, C => 
                           rx_fifo_entries_free(3), D => n112, Z => n135);
   U127 : AO4 port map( A => n124, B => n26, C => n28, D => n49, Z => DAT_O(4))
                           ;
   U128 : AO2 port map( A => n131, B => reg_addr_1001_q_4_port, C => n132, D =>
                           reg_addr_1000_q_4_port, Z => n125);
   U129 : AO2 port map( A => tx_fifo_entries_free(4), B => n113, C => 
                           rx_fifo_entries_free(4), D => n112, Z => n126);
   U133 : EON1 port map( A => n119, B => n26, C => rx_data(5), D => n104, Z => 
                           DAT_O(5));
   U139 : EON1 port map( A => n114, B => n26, C => rx_data(6), D => n104, Z => 
                           DAT_O(6));
   U143 : EON1 port map( A => n103, B => n26, C => rx_data(7), D => n104, Z => 
                           DAT_O(7));
   U144 : IVDA port map( A => n83, Y => n26, Z => n28);
   U146 : NR4 port map( A => ADR_I(5), B => ADR_I(4), C => ADR_I(7), D => 
                           ADR_I(6), Z => n83);
   U152 : AO1P port map( A => RST_I, B => reg_addr_1001_q_0_port, C => 
                           master_rst, D => reg_addr_1000_q_0_port, Z => n30);
   U153 : IVI port map( A => n37, Z => n32);
   U154 : IVI port map( A => n37, Z => n34);
   U155 : IVI port map( A => n37, Z => n35);
   U156 : IVI port map( A => n37, Z => n36);
   U157 : IVI port map( A => n30, Z => n37);
   U158 : IVI port map( A => n37, Z => n38);
   U159 : IVI port map( A => n37, Z => n39);
   U160 : IVI port map( A => n37, Z => n40);
   U161 : IVI port map( A => n37, Z => n41);
   U162 : IVI port map( A => n37, Z => n42);
   U163 : IVI port map( A => n37, Z => n43);
   U164 : IVI port map( A => n37, Z => n44);
   U165 : IVI port map( A => n37, Z => n45);
   U166 : IVI port map( A => rx_data(1), Z => n46);
   U167 : IVI port map( A => rx_data(2), Z => n47);
   U168 : IVI port map( A => rx_data(3), Z => n48);
   U169 : IVI port map( A => rx_data(4), Z => n49);
   U170 : IVI port map( A => n156, Z => n50);
   U171 : IVI port map( A => n90, Z => n51);
   U172 : IVI port map( A => n87, Z => n52);
   U173 : IVI port map( A => n79, Z => n53);
   U174 : IVI port map( A => n64, Z => uart_rx_rst);
   U175 : IVI port map( A => n65, Z => uart_rx_fifo_rst);
   U176 : IVI port map( A => n62, Z => uart_tx_rst);
   U177 : IVI port map( A => n63, Z => uart_tx_fifo_rst);
   U178 : IVI port map( A => n75, Z => n58);
   U179 : IVI port map( A => n151, Z => n59);
   U180 : IVI port map( A => n107, Z => n60);
   U181 : IVI port map( A => n130, Z => n61);
   U182 : IVI port map( A => ADR_I(3), Z => n68);
   U183 : IVI port map( A => n102, Z => n207);
   U190 : IVI port map( A => ADR_I(1), Z => n208);
   U191 : IVI port map( A => n98, Z => n209);
   U192 : IVI port map( A => ADR_I(0), Z => n210);
   U193 : IVI port map( A => DAT_I(7), Z => n211);
   U194 : IVI port map( A => DAT_I(6), Z => n212);
   U195 : IVI port map( A => DAT_I(5), Z => n213);
   U196 : IVI port map( A => DAT_I(4), Z => n214);
   U197 : IVI port map( A => DAT_I(3), Z => n215);
   U198 : IVI port map( A => DAT_I(2), Z => n216);
   U199 : IVI port map( A => DAT_I(1), Z => n217);
   U200 : IVI port map( A => DAT_I(0), Z => n218);
   U201 : IVI port map( A => CYC_I, Z => n219);

end SYN_behaviour;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_uart_top_address_width3.all;

entity uart_top_address_width3 is

   port( clk, master_rst, RST_I : in std_logic;  ADR_I, DAT_I : in 
         std_logic_vector (7 downto 0);  WE_I, STB_I, CYC_I : in std_logic;  
         DAT_O : out std_logic_vector (7 downto 0);  ACK_O : out std_logic;  rx
         : in std_logic;  tx, rx_fifo_empty, rx_fifo_full, tx_fifo_empty, 
         tx_fifo_full, parity_error, stop_bit_error, transmitting : out 
         std_logic);

end uart_top_address_width3;

architecture SYN_behaviour of uart_top_address_width3 is

   component tx_fifo
      port( clk, reset, write_tx_data : in std_logic;  tx_data : in 
            std_logic_vector (7 downto 0);  tx_fifo_full, tx_fifo_empty : out 
            std_logic;  tx_fifo_entries_free, tx_func_data : out 
            std_logic_vector (7 downto 0);  tx_func_apply_data : out std_logic;
            tx_func_sending : in std_logic);
   end component;
   
   component rx_fifo
      port( clk, reset, read_rx_data : in std_logic;  rx_data : out 
            std_logic_vector (7 downto 0);  rx_fifo_full, rx_fifo_empty : out 
            std_logic;  rx_fifo_entries_free : out std_logic_vector (7 downto 
            0);  rx_func_data : in std_logic_vector (7 downto 0);  
            rx_func_data_ready : in std_logic);
   end component;
   
   component tx_func
      port( clk, reset : in std_logic;  data : in std_logic_vector (7 downto 0)
            ;  transmit_data : in std_logic;  word_width : in std_logic_vector 
            (3 downto 0);  baud_period : in std_logic_vector (15 downto 0);  
            use_parity_bit, parity_type : in std_logic;  stop_bits : in 
            std_logic_vector (1 downto 0);  idle_line_lvl : in std_logic;  tx, 
            sending : out std_logic);
   end component;
   
   component rx_func
      port( clk, reset, rx_enable, rx : in std_logic;  word_width : in 
            std_logic_vector (3 downto 0);  baud_period : in std_logic_vector 
            (15 downto 0);  use_parity_bit, parity_type : in std_logic;  
            stop_bits : in std_logic_vector (1 downto 0);  idle_line_lvl : in 
            std_logic;  start_samples, line_samples : in std_logic_vector (3 
            downto 0);  data : out std_logic_vector (7 downto 0);  data_ready, 
            parity_error, stop_bit_error : out std_logic);
   end component;
   
   component uart_wb
      port( CLK_I, master_rst, RST_I : in std_logic;  ADR_I, DAT_I : in 
            std_logic_vector (7 downto 0);  WE_I, STB_I, CYC_I : in std_logic; 
            DAT_O : out std_logic_vector (7 downto 0);  ACK_O : out std_logic; 
            word_width : out std_logic_vector (3 downto 0);  baud_period : out 
            std_logic_vector (15 downto 0);  use_parity_bit, parity_type : out 
            std_logic;  stop_bits : out std_logic_vector (1 downto 0);  
            idle_line_lvl, rx_enable : out std_logic;  start_samples, 
            line_samples : out std_logic_vector (3 downto 0);  uart_rx_rst, 
            uart_rx_fifo_rst, uart_tx_rst, uart_tx_fifo_rst : out std_logic;  
            tx_fifo_entries_free : in std_logic_vector (7 downto 0);  
            write_tx_data : out std_logic;  tx_data : out std_logic_vector (7 
            downto 0);  read_rx_data : out std_logic;  rx_data, 
            rx_fifo_entries_free : in std_logic_vector (7 downto 0));
   end component;
   
   signal transmitting_port, word_width_3_port, word_width_2_port, 
      word_width_1_port, word_width_0_port, baud_period_15_port, 
      baud_period_14_port, baud_period_13_port, baud_period_12_port, 
      baud_period_11_port, baud_period_10_port, baud_period_9_port, 
      baud_period_8_port, baud_period_7_port, baud_period_6_port, 
      baud_period_5_port, baud_period_4_port, baud_period_3_port, 
      baud_period_2_port, baud_period_1_port, baud_period_0_port, 
      use_parity_bit, parity_type, stop_bits_1_port, stop_bits_0_port, 
      idle_line_lvl, rx_enable, start_samples_3_port, start_samples_2_port, 
      start_samples_1_port, start_samples_0_port, line_samples_3_port, 
      line_samples_2_port, line_samples_1_port, line_samples_0_port, 
      uart_rx_rst, uart_rx_fifo_rst, uart_tx_rst, uart_tx_fifo_rst, 
      tx_fifo_entries_free_7_port, tx_fifo_entries_free_6_port, 
      tx_fifo_entries_free_5_port, tx_fifo_entries_free_4_port, 
      tx_fifo_entries_free_3_port, tx_fifo_entries_free_2_port, 
      tx_fifo_entries_free_1_port, tx_fifo_entries_free_0_port, write_tx_data, 
      tx_data_7_port, tx_data_6_port, tx_data_5_port, tx_data_4_port, 
      tx_data_3_port, tx_data_2_port, tx_data_1_port, tx_data_0_port, 
      read_rx_data, rx_data_7_port, rx_data_6_port, rx_data_5_port, 
      rx_data_4_port, rx_data_3_port, rx_data_2_port, rx_data_1_port, 
      rx_data_0_port, rx_fifo_entries_free_7_port, rx_fifo_entries_free_6_port,
      rx_fifo_entries_free_5_port, rx_fifo_entries_free_4_port, 
      rx_fifo_entries_free_3_port, rx_fifo_entries_free_2_port, 
      rx_fifo_entries_free_1_port, rx_fifo_entries_free_0_port, 
      rx_func_data_7_port, rx_func_data_6_port, rx_func_data_5_port, 
      rx_func_data_4_port, rx_func_data_3_port, rx_func_data_2_port, 
      rx_func_data_1_port, rx_func_data_0_port, rx_func_data_ready, 
      tx_func_data_7_port, tx_func_data_6_port, tx_func_data_5_port, 
      tx_func_data_4_port, tx_func_data_3_port, tx_func_data_2_port, 
      tx_func_data_1_port, tx_func_data_0_port, tx_func_apply_data, n_1181, 
      n_1182, n_1183, n_1184, n_1185, n_1186, n_1187, n_1188, n_1189 : 
      std_logic;

begin
   transmitting <= transmitting_port;
   
   wishBoneInterFace : uart_wb port map( CLK_I => clk, master_rst => master_rst
                           , RST_I => RST_I, ADR_I(7) => ADR_I(7), ADR_I(6) => 
                           ADR_I(6), ADR_I(5) => ADR_I(5), ADR_I(4) => ADR_I(4)
                           , ADR_I(3) => ADR_I(3), ADR_I(2) => ADR_I(2), 
                           ADR_I(1) => ADR_I(1), ADR_I(0) => ADR_I(0), DAT_I(7)
                           => DAT_I(7), DAT_I(6) => DAT_I(6), DAT_I(5) => 
                           DAT_I(5), DAT_I(4) => DAT_I(4), DAT_I(3) => DAT_I(3)
                           , DAT_I(2) => DAT_I(2), DAT_I(1) => DAT_I(1), 
                           DAT_I(0) => DAT_I(0), WE_I => WE_I, STB_I => STB_I, 
                           CYC_I => CYC_I, DAT_O(7) => DAT_O(7), DAT_O(6) => 
                           DAT_O(6), DAT_O(5) => DAT_O(5), DAT_O(4) => DAT_O(4)
                           , DAT_O(3) => DAT_O(3), DAT_O(2) => DAT_O(2), 
                           DAT_O(1) => DAT_O(1), DAT_O(0) => DAT_O(0), ACK_O =>
                           ACK_O, word_width(3) => n_1181, word_width(2) => 
                           word_width_2_port, word_width(1) => 
                           word_width_1_port, word_width(0) => 
                           word_width_0_port, baud_period(15) => 
                           baud_period_15_port, baud_period(14) => 
                           baud_period_14_port, baud_period(13) => 
                           baud_period_13_port, baud_period(12) => 
                           baud_period_12_port, baud_period(11) => 
                           baud_period_11_port, baud_period(10) => 
                           baud_period_10_port, baud_period(9) => 
                           baud_period_9_port, baud_period(8) => 
                           baud_period_8_port, baud_period(7) => 
                           baud_period_7_port, baud_period(6) => 
                           baud_period_6_port, baud_period(5) => 
                           baud_period_5_port, baud_period(4) => 
                           baud_period_4_port, baud_period(3) => 
                           baud_period_3_port, baud_period(2) => 
                           baud_period_2_port, baud_period(1) => 
                           baud_period_1_port, baud_period(0) => 
                           baud_period_0_port, use_parity_bit => use_parity_bit
                           , parity_type => parity_type, stop_bits(1) => 
                           stop_bits_1_port, stop_bits(0) => stop_bits_0_port, 
                           idle_line_lvl => idle_line_lvl, rx_enable => 
                           rx_enable, start_samples(3) => start_samples_3_port,
                           start_samples(2) => start_samples_2_port, 
                           start_samples(1) => start_samples_1_port, 
                           start_samples(0) => start_samples_0_port, 
                           line_samples(3) => line_samples_3_port, 
                           line_samples(2) => line_samples_2_port, 
                           line_samples(1) => line_samples_1_port, 
                           line_samples(0) => line_samples_0_port, uart_rx_rst 
                           => uart_rx_rst, uart_rx_fifo_rst => uart_rx_fifo_rst
                           , uart_tx_rst => uart_tx_rst, uart_tx_fifo_rst => 
                           uart_tx_fifo_rst, tx_fifo_entries_free(7) => 
                           tx_fifo_entries_free_7_port, tx_fifo_entries_free(6)
                           => tx_fifo_entries_free_6_port, 
                           tx_fifo_entries_free(5) => 
                           tx_fifo_entries_free_5_port, tx_fifo_entries_free(4)
                           => tx_fifo_entries_free_4_port, 
                           tx_fifo_entries_free(3) => 
                           tx_fifo_entries_free_3_port, tx_fifo_entries_free(2)
                           => tx_fifo_entries_free_2_port, 
                           tx_fifo_entries_free(1) => 
                           tx_fifo_entries_free_1_port, tx_fifo_entries_free(0)
                           => tx_fifo_entries_free_0_port, write_tx_data => 
                           write_tx_data, tx_data(7) => tx_data_7_port, 
                           tx_data(6) => tx_data_6_port, tx_data(5) => 
                           tx_data_5_port, tx_data(4) => tx_data_4_port, 
                           tx_data(3) => tx_data_3_port, tx_data(2) => 
                           tx_data_2_port, tx_data(1) => tx_data_1_port, 
                           tx_data(0) => tx_data_0_port, read_rx_data => 
                           read_rx_data, rx_data(7) => rx_data_7_port, 
                           rx_data(6) => rx_data_6_port, rx_data(5) => 
                           rx_data_5_port, rx_data(4) => rx_data_4_port, 
                           rx_data(3) => rx_data_3_port, rx_data(2) => 
                           rx_data_2_port, rx_data(1) => rx_data_1_port, 
                           rx_data(0) => rx_data_0_port, 
                           rx_fifo_entries_free(7) => 
                           rx_fifo_entries_free_7_port, rx_fifo_entries_free(6)
                           => rx_fifo_entries_free_6_port, 
                           rx_fifo_entries_free(5) => 
                           rx_fifo_entries_free_5_port, rx_fifo_entries_free(4)
                           => rx_fifo_entries_free_4_port, 
                           rx_fifo_entries_free(3) => 
                           rx_fifo_entries_free_3_port, rx_fifo_entries_free(2)
                           => rx_fifo_entries_free_2_port, 
                           rx_fifo_entries_free(1) => 
                           rx_fifo_entries_free_1_port, rx_fifo_entries_free(0)
                           => rx_fifo_entries_free_0_port);
   UartRx : rx_func port map( clk => clk, reset => uart_rx_rst, rx_enable => 
                           rx_enable, rx => rx, word_width(3) => 
                           word_width_3_port, word_width(2) => 
                           word_width_2_port, word_width(1) => 
                           word_width_1_port, word_width(0) => 
                           word_width_0_port, baud_period(15) => 
                           baud_period_15_port, baud_period(14) => 
                           baud_period_14_port, baud_period(13) => 
                           baud_period_13_port, baud_period(12) => 
                           baud_period_12_port, baud_period(11) => 
                           baud_period_11_port, baud_period(10) => 
                           baud_period_10_port, baud_period(9) => 
                           baud_period_9_port, baud_period(8) => 
                           baud_period_8_port, baud_period(7) => 
                           baud_period_7_port, baud_period(6) => 
                           baud_period_6_port, baud_period(5) => 
                           baud_period_5_port, baud_period(4) => 
                           baud_period_4_port, baud_period(3) => 
                           baud_period_3_port, baud_period(2) => 
                           baud_period_2_port, baud_period(1) => 
                           baud_period_1_port, baud_period(0) => 
                           baud_period_0_port, use_parity_bit => use_parity_bit
                           , parity_type => parity_type, stop_bits(1) => 
                           stop_bits_1_port, stop_bits(0) => stop_bits_0_port, 
                           idle_line_lvl => idle_line_lvl, start_samples(3) => 
                           start_samples_3_port, start_samples(2) => 
                           start_samples_2_port, start_samples(1) => 
                           start_samples_1_port, start_samples(0) => 
                           start_samples_0_port, line_samples(3) => 
                           line_samples_3_port, line_samples(2) => 
                           line_samples_2_port, line_samples(1) => 
                           line_samples_1_port, line_samples(0) => 
                           line_samples_0_port, data(7) => rx_func_data_7_port,
                           data(6) => rx_func_data_6_port, data(5) => 
                           rx_func_data_5_port, data(4) => rx_func_data_4_port,
                           data(3) => rx_func_data_3_port, data(2) => 
                           rx_func_data_2_port, data(1) => rx_func_data_1_port,
                           data(0) => rx_func_data_0_port, data_ready => 
                           rx_func_data_ready, parity_error => parity_error, 
                           stop_bit_error => stop_bit_error);
   UartTx : tx_func port map( clk => clk, reset => uart_tx_rst, data(7) => 
                           tx_func_data_7_port, data(6) => tx_func_data_6_port,
                           data(5) => tx_func_data_5_port, data(4) => 
                           tx_func_data_4_port, data(3) => tx_func_data_3_port,
                           data(2) => tx_func_data_2_port, data(1) => 
                           tx_func_data_1_port, data(0) => tx_func_data_0_port,
                           transmit_data => tx_func_apply_data, word_width(3) 
                           => word_width_3_port, word_width(2) => 
                           word_width_2_port, word_width(1) => 
                           word_width_1_port, word_width(0) => 
                           word_width_0_port, baud_period(15) => 
                           baud_period_15_port, baud_period(14) => 
                           baud_period_14_port, baud_period(13) => 
                           baud_period_13_port, baud_period(12) => 
                           baud_period_12_port, baud_period(11) => 
                           baud_period_11_port, baud_period(10) => 
                           baud_period_10_port, baud_period(9) => 
                           baud_period_9_port, baud_period(8) => 
                           baud_period_8_port, baud_period(7) => 
                           baud_period_7_port, baud_period(6) => 
                           baud_period_6_port, baud_period(5) => 
                           baud_period_5_port, baud_period(4) => 
                           baud_period_4_port, baud_period(3) => 
                           baud_period_3_port, baud_period(2) => 
                           baud_period_2_port, baud_period(1) => 
                           baud_period_1_port, baud_period(0) => 
                           baud_period_0_port, use_parity_bit => use_parity_bit
                           , parity_type => parity_type, stop_bits(1) => 
                           stop_bits_1_port, stop_bits(0) => stop_bits_0_port, 
                           idle_line_lvl => idle_line_lvl, tx => tx, sending =>
                           transmitting_port);
   RxFifo : rx_fifo port map( clk => clk, reset => uart_rx_fifo_rst, 
                           read_rx_data => read_rx_data, rx_data(7) => 
                           rx_data_7_port, rx_data(6) => rx_data_6_port, 
                           rx_data(5) => rx_data_5_port, rx_data(4) => 
                           rx_data_4_port, rx_data(3) => rx_data_3_port, 
                           rx_data(2) => rx_data_2_port, rx_data(1) => 
                           rx_data_1_port, rx_data(0) => rx_data_0_port, 
                           rx_fifo_full => rx_fifo_full, rx_fifo_empty => 
                           rx_fifo_empty, rx_fifo_entries_free(7) => n_1182, 
                           rx_fifo_entries_free(6) => n_1183, 
                           rx_fifo_entries_free(5) => n_1184, 
                           rx_fifo_entries_free(4) => n_1185, 
                           rx_fifo_entries_free(3) => 
                           rx_fifo_entries_free_3_port, rx_fifo_entries_free(2)
                           => rx_fifo_entries_free_2_port, 
                           rx_fifo_entries_free(1) => 
                           rx_fifo_entries_free_1_port, rx_fifo_entries_free(0)
                           => rx_fifo_entries_free_0_port, rx_func_data(7) => 
                           rx_func_data_7_port, rx_func_data(6) => 
                           rx_func_data_6_port, rx_func_data(5) => 
                           rx_func_data_5_port, rx_func_data(4) => 
                           rx_func_data_4_port, rx_func_data(3) => 
                           rx_func_data_3_port, rx_func_data(2) => 
                           rx_func_data_2_port, rx_func_data(1) => 
                           rx_func_data_1_port, rx_func_data(0) => 
                           rx_func_data_0_port, rx_func_data_ready => 
                           rx_func_data_ready);
   TxFifo : tx_fifo port map( clk => clk, reset => uart_tx_fifo_rst, 
                           write_tx_data => write_tx_data, tx_data(7) => 
                           tx_data_7_port, tx_data(6) => tx_data_6_port, 
                           tx_data(5) => tx_data_5_port, tx_data(4) => 
                           tx_data_4_port, tx_data(3) => tx_data_3_port, 
                           tx_data(2) => tx_data_2_port, tx_data(1) => 
                           tx_data_1_port, tx_data(0) => tx_data_0_port, 
                           tx_fifo_full => tx_fifo_full, tx_fifo_empty => 
                           tx_fifo_empty, tx_fifo_entries_free(7) => n_1186, 
                           tx_fifo_entries_free(6) => n_1187, 
                           tx_fifo_entries_free(5) => n_1188, 
                           tx_fifo_entries_free(4) => n_1189, 
                           tx_fifo_entries_free(3) => 
                           tx_fifo_entries_free_3_port, tx_fifo_entries_free(2)
                           => tx_fifo_entries_free_2_port, 
                           tx_fifo_entries_free(1) => 
                           tx_fifo_entries_free_1_port, tx_fifo_entries_free(0)
                           => tx_fifo_entries_free_0_port, tx_func_data(7) => 
                           tx_func_data_7_port, tx_func_data(6) => 
                           tx_func_data_6_port, tx_func_data(5) => 
                           tx_func_data_5_port, tx_func_data(4) => 
                           tx_func_data_4_port, tx_func_data(3) => 
                           tx_func_data_3_port, tx_func_data(2) => 
                           tx_func_data_2_port, tx_func_data(1) => 
                           tx_func_data_1_port, tx_func_data(0) => 
                           tx_func_data_0_port, tx_func_apply_data => 
                           tx_func_apply_data, tx_func_sending => 
                           transmitting_port);
   tx_fifo_entries_free_4_port <= '0';
   tx_fifo_entries_free_5_port <= '0';
   tx_fifo_entries_free_6_port <= '0';
   tx_fifo_entries_free_7_port <= '0';
   rx_fifo_entries_free_4_port <= '0';
   rx_fifo_entries_free_5_port <= '0';
   rx_fifo_entries_free_6_port <= '0';
   rx_fifo_entries_free_7_port <= '0';
   word_width_3_port <= '0';

end SYN_behaviour;
