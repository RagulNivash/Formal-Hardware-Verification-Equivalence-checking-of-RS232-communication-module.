
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
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12: std_logic;

begin
    
   U3 : EO port map( A => A(9), B => n2, Z => SUM(9));
   U4 : EN port map( A => A(8), B => n3, Z => SUM(8));
   
   U10 : EN port map( A => A(4), B => n7, Z => SUM(4));
   
   U12 : EO port map( A => A(3), B => n8, Z => SUM(3));
   U14 : ND2 port map( A => A(1), B => A(0), Z => n9);
   U15 : EO port map( A => A(11), B => n10, Z => SUM(11));
   U16 : NR2 port map( A => n11, B => n1, Z => n10);
   U17 : EN port map( A => A(10), B => n11, Z => SUM(10));
   U18 : ND2 port map( A => n2, B => A(9), Z => n11);
   U19 : ND2 port map( A => A(7), B => n4, Z => n3);
   U20 : AN3 port map( A => A(5), B => n6, C => A(6), Z => n4);
   U21 : AN3 port map( A => A(3), B => n8, C => A(4), Z => n6);
   U22 : AN3 port map( A => A(0), B => A(1), C => A(2), Z => n8);
            
   U7 : EN port map( A => A(6), B => n5, Z => SUM(6));
   U8 : ND2 port map( A => A(5), B => n6, Z => n5);
   
   U9 : EN port map( A => A(1), B => n12, Z => SUM(1));
   U13 : EN port map( A => A(2), B => n9, Z => SUM(2));
   
   U2 : IVI port map( A => A(10), Z => n1);
   
   U400: IVI port map( A => A(0), Z => SUM(0));
   U401: EO port map( A => A(7), B => n4, Z => SUM(7));
   U402: EO port map( A => A(5), B => n6, Z => SUM(5));
   U403: AN3 port map(A => A(7), B => n4, C => A(8), Z => n2);
   U404: ND2 port map( A => A(3), B => n8, Z => n7);
   U405: IVI port map( A => A(0), Z => n12);
   
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
   
   component EOI
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18: 
      std_logic;

begin
   
   U27 : AN3 port map( A => A(7), B => n4, C => A(8), Z => n2);
   U28 : AN3 port map( A => A(5), B => n6, C => A(6), Z => n4);
   U1 : EOI port map( A => A(1), B => A(0), Z => SUM(1));
   U2 : IVI port map( A => A(14), Z => n1);
   U3 : EO port map( A => A(9), B => n2, Z => SUM(9));
   
   U402: ND2 port map ( A=> A(7), B => n4, z => n18);
   U4 : EN port map( A => A(8), B => n18, Z => SUM(8));
   U5 : ND2 port map( A => A(7), B => n4, Z => n3);
   U6 : EO port map( A => A(7), B => n4, Z => SUM(7));
   U7 : EN port map( A => A(6), B => n5, Z => SUM(6));
   U8 : ND2 port map( A => A(5), B => n6, Z => n5);
   U9 : EO port map( A => A(5), B => n6, Z => SUM(5));
   U10 : EN port map( A => A(4), B => n7, Z => SUM(4));
   U11 : ND2 port map( A => A(3), B => n8, Z => n7);
   U12 : EO port map( A => A(3), B => n8, Z => SUM(3));
   U13 : EN port map( A => A(2), B => n9, Z => SUM(2));
   U14 : ND2 port map( A => A(1), B => A(0), Z => n9);
   
   U400: IVI port map( A => A(14), z => n16);
   U401: NR2 port map( A => n16, B => n11, z => n17);
   U15 : EO port map( A => A(15), B => n17, Z => SUM(15));
   U17 : EN port map( A => A(14), B => n11, Z => SUM(14));
   U18 : ND2 port map( A => A(13), B => n12, Z => n11);
   U19 : EO port map( A => A(13), B => n12, Z => SUM(13));
   U20 : AN3 port map( A => A(11), B => n13, C => A(12), Z => n12);
   U21 : EN port map( A => A(12), B => n14, Z => SUM(12));
   U22 : ND2 port map( A => A(11), B => n13, Z => n14);
   U23 : EO port map( A => A(11), B => n13, Z => SUM(11));
   U24 : AN3 port map( A => n2, B => A(9), C => A(10), Z => n13);
   U25 : EN port map( A => A(10), B => n15, Z => SUM(10));
   U26 : ND2 port map( A => n2, B => A(9), Z => n15);
   U29 : AN3 port map( A => A(3), B => n8, C => A(4), Z => n6);
   U30 : AN3 port map( A => A(1), B => A(0), C => A(2), Z => n8);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_uart_top_address_width3.all;

entity tx_func_DW01_inc_0 is

   port( A : in std_logic_vector (15 downto 0);  SUM : out std_logic_vector (15
         downto 0));

end tx_func_DW01_inc_0;

architecture SYN_rpl of tx_func_DW01_inc_0 is

   component IV
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
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
   
   component EOI
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n400, n401, n402, n403 : 
      std_logic;

begin
   
   U1 : EOI port map( A => A(1), B => A(0), Z => SUM(1));
   U2 : IVI port map( A => A(14), Z => n1);
   
   U4 : EN port map( A => A(8), B => n3, Z => SUM(8));
   U5 : ND2 port map( A => A(7), B => n4, Z => n3);
   
   U400 : AN3 port map ( A => A(7), B=> n4, C => A(8), z => n400);
   U6 : EO port map( A => A(9), B => n400, Z => SUM(7));
   U7 : EN port map( A => A(6), B => n5, Z => SUM(6));
   U8 : ND2 port map( A => A(5), B => n6, Z => n5);
   U9 : EO port map( A => A(5), B => n6, Z => SUM(5));
   U10 : EN port map( A => A(4), B => n7, Z => SUM(4));
   U11 : ND2 port map( A => A(3), B => n8, Z => n7);
   U12 : EO port map( A => A(3), B => n8, Z => SUM(3));
   U13 : EO port map( A => A(7), B => n402, Z => SUM(2));
   
   U402: AN3 port map ( A => A(5), B => A(6), C => n401, z => n402);
   U401: AN3 port map (A => A(3), B => A(4), C => n9, z => n401);
   U14 : AN3 port map( A => A(1), B => A(0), C => A(2), Z => n9);
   
   U403: ND2 port map ( A => A(0), B => A(1), z => n403);
   U404: EN port map ( A => A(2), B => n403, z => SUM(9));    
   U15 : EO port map( A => A(15), B => n10, Z => SUM(15));
   U16 : NR2 port map( A => n11, B => n1, Z => n10);
   U17 : EN port map( A => A(14), B => n11, Z => SUM(14));
   U18 : ND2 port map( A => A(13), B => n12, Z => n11);
   U19 : EO port map( A => A(13), B => n12, Z => SUM(13));
   U20 : AN3 port map( A => A(11), B => n13, C => A(12), Z => n12);
   U21 : EN port map( A => A(12), B => n14, Z => SUM(12));
   U22 : ND2 port map( A => A(11), B => n13, Z => n14);
   U23 : EO port map( A => A(11), B => n13, Z => SUM(11));
   U24 : AN3 port map( A => n2, B => A(9), C => A(10), Z => n13);
   U25 : EN port map( A => A(10), B => n15, Z => SUM(10));
   U26 : ND2 port map( A => n2, B => A(9), Z => n15);
   U27 : AN3 port map( A => A(7), B => n4, C => A(8), Z => n2);
   U28 : AN3 port map( A => A(5), B => n6, C => A(6), Z => n4);
   U29 : AN3 port map( A => A(3), B => n8, C => A(4), Z => n6);
   U30 : AN3 port map( A => A(1), B => A(0), C => A(2), Z => n8);
   U31 : IVI port map( A => A(0), Z => SUM(0));

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
      tx_func_apply_data_port, tx_out_addr_q_2_port, tx_out_addr_q_1_port, 
      tx_out_addr_q_0_port, tx_in_addr_q_1_port, tx_in_addr_q_0_port, 
      ram_0_7_port, ram_0_6_port, ram_0_5_port, ram_0_4_port, ram_0_3_port, 
      ram_0_2_port, ram_0_1_port, ram_0_0_port, ram_1_7_port, ram_1_6_port, 
      ram_1_5_port, ram_1_4_port, ram_1_3_port, ram_1_2_port, ram_1_1_port, 
      ram_1_0_port, ram_2_7_port, ram_2_6_port, ram_2_5_port, ram_2_4_port, 
      ram_2_3_port, ram_2_2_port, ram_2_1_port, ram_2_0_port, ram_3_7_port, 
      ram_3_6_port, ram_3_5_port, ram_3_4_port, ram_3_3_port, ram_3_2_port, 
      ram_3_1_port, ram_3_0_port, ram_4_7_port, ram_4_6_port, ram_4_5_port, 
      ram_4_4_port, ram_4_3_port, ram_4_2_port, ram_4_1_port, ram_4_0_port, 
      ram_5_7_port, ram_5_6_port, ram_5_5_port, ram_5_4_port, ram_5_3_port, 
      ram_5_2_port, ram_5_1_port, ram_5_0_port, ram_6_7_port, ram_6_6_port, 
      ram_6_5_port, ram_6_4_port, ram_6_3_port, ram_6_2_port, ram_6_1_port, 
      ram_6_0_port, ram_7_7_port, ram_7_6_port, ram_7_5_port, ram_7_4_port, 
      ram_7_3_port, ram_7_2_port, ram_7_1_port, ram_7_0_port, n2, n80, n81, n83
      , n84, n85, n86, n87, n88, n89, n91, n92, n93, n94, n95, n96, n97, n98, 
      n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, 
      n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, 
      n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, 
      n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, 
      n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, 
      n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, 
      n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, 
      n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, 
      n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, 
      n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, 
      n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, 
      n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, 
      n247, n248, tx_fifo_entries_free_5_port, tx_fifo_entries_free_6_port, 
      tx_fifo_entries_free_7_port, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
      n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29
      , n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, 
      n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58
      , n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, 
      n73, n74, n75, n76, n77, n78, n79, n82, n90, n99, n100, n101, n102, n249,
      n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, 
      n262, n263, n264, n265, n266, n267, n_1002, n_1003, n_1004, n_1005, 
      n_1006, n_1007, n_1008, n_1009, n_1010, n_1011, n_1012, n_1013, n_1014, 
      n_1015, n_1016, n_1017, n_1018, n_1019, n_1020, n_1021, n_1022, n_1023, 
      n_1024, n_1025, n_1026, n_1027, n_1028, n_1029, n_1030, n_1031, n_1032, 
      n_1033, n_1034, n_1035, n_1036, n_1037, n_1038, n_1039, n_1040, n_1041, 
      n_1042, n_1043, n_1044, n_1045, n_1046, n_1047, n_1048, n_1049, n_1050, 
      n_1051, n_1052, n_1053, n_1054, n_1055, n_1056, n_1057, n_1058, n_1059, 
      n_1060, n_1061, n_1062, n_1063, n_1064, n_1065, n_1066, n_1067, n_1068, 
      n_1069, n_1070, n_1071, n_1072, n_1073, n_1074 : std_logic;

begin
   tx_fifo_full <= tx_fifo_full_port;
   tx_fifo_empty <= tx_fifo_empty_port;
   tx_fifo_entries_free <= ( tx_fifo_entries_free_7_port, 
      tx_fifo_entries_free_6_port, tx_fifo_entries_free_5_port, X_Logic0_port, 
      tx_fifo_entries_free_3_port, tx_fifo_entries_free_2_port, 
      tx_fifo_entries_free_1_port, tx_fifo_entries_free_0_port );
   tx_func_apply_data <= tx_func_apply_data_port;
   
   X_Logic0_port <= '0';
   tx_entries_back_q_reg_0_inst : FD1 port map( D => n248, CP => clk, Q => 
                           tx_fifo_entries_free_0_port, QN => n83);
   tx_entries_back_q_reg_1_inst : FD1 port map( D => n246, CP => clk, Q => 
                           tx_fifo_entries_free_1_port, QN => n81);
   tx_entries_back_q_reg_3_inst : FD1 port map( D => n247, CP => clk, Q => 
                           tx_fifo_entries_free_3_port, QN => n2);
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
   tx_in_addr_q_reg_2_inst : FD1 port map( D => n239, CP => clk, Q => n_1002, 
                           QN => n87);
   ram_reg_0_7_inst : FD1 port map( D => n259, CP => clk, Q => ram_0_7_port, QN
                           => n_1003);
   ram_reg_0_6_inst : FD1 port map( D => n258, CP => clk, Q => ram_0_6_port, QN
                           => n_1004);
   ram_reg_0_5_inst : FD1 port map( D => n257, CP => clk, Q => ram_0_5_port, QN
                           => n_1005);
   ram_reg_0_4_inst : FD1 port map( D => n256, CP => clk, Q => ram_0_4_port, QN
                           => n_1006);
   ram_reg_0_3_inst : FD1 port map( D => n255, CP => clk, Q => ram_0_3_port, QN
                           => n_1007);
   ram_reg_0_2_inst : FD1 port map( D => n254, CP => clk, Q => ram_0_2_port, QN
                           => n_1008);
   ram_reg_0_1_inst : FD1 port map( D => n253, CP => clk, Q => ram_0_1_port, QN
                           => n_1009);
   ram_reg_0_0_inst : FD1 port map( D => n252, CP => clk, Q => ram_0_0_port, QN
                           => n_1010);
   ram_reg_1_7_inst : FD1 port map( D => n251, CP => clk, Q => ram_1_7_port, QN
                           => n_1011);
   ram_reg_1_6_inst : FD1 port map( D => n250, CP => clk, Q => ram_1_6_port, QN
                           => n_1012);
   ram_reg_1_5_inst : FD1 port map( D => n249, CP => clk, Q => ram_1_5_port, QN
                           => n_1013);
   ram_reg_1_4_inst : FD1 port map( D => n102, CP => clk, Q => ram_1_4_port, QN
                           => n_1014);
   ram_reg_1_3_inst : FD1 port map( D => n101, CP => clk, Q => ram_1_3_port, QN
                           => n_1015);
   ram_reg_1_2_inst : FD1 port map( D => n100, CP => clk, Q => ram_1_2_port, QN
                           => n_1016);
   ram_reg_1_1_inst : FD1 port map( D => n99, CP => clk, Q => ram_1_1_port, QN 
                           => n_1017);
   ram_reg_1_0_inst : FD1 port map( D => n90, CP => clk, Q => ram_1_0_port, QN 
                           => n_1018);
   ram_reg_2_7_inst : FD1 port map( D => n82, CP => clk, Q => ram_2_7_port, QN 
                           => n_1019);
   ram_reg_2_6_inst : FD1 port map( D => n79, CP => clk, Q => ram_2_6_port, QN 
                           => n_1020);
   ram_reg_2_5_inst : FD1 port map( D => n78, CP => clk, Q => ram_2_5_port, QN 
                           => n_1021);
   ram_reg_2_4_inst : FD1 port map( D => n77, CP => clk, Q => ram_2_4_port, QN 
                           => n_1022);
   ram_reg_2_3_inst : FD1 port map( D => n76, CP => clk, Q => ram_2_3_port, QN 
                           => n_1023);
   ram_reg_2_2_inst : FD1 port map( D => n75, CP => clk, Q => ram_2_2_port, QN 
                           => n_1024);
   ram_reg_2_1_inst : FD1 port map( D => n74, CP => clk, Q => ram_2_1_port, QN 
                           => n_1025);
   ram_reg_2_0_inst : FD1 port map( D => n73, CP => clk, Q => ram_2_0_port, QN 
                           => n_1026);
   ram_reg_3_7_inst : FD1 port map( D => n72, CP => clk, Q => ram_3_7_port, QN 
                           => n_1027);
   ram_reg_3_6_inst : FD1 port map( D => n71, CP => clk, Q => ram_3_6_port, QN 
                           => n_1028);
   ram_reg_3_5_inst : FD1 port map( D => n70, CP => clk, Q => ram_3_5_port, QN 
                           => n_1029);
   ram_reg_3_4_inst : FD1 port map( D => n69, CP => clk, Q => ram_3_4_port, QN 
                           => n_1030);
   ram_reg_3_3_inst : FD1 port map( D => n68, CP => clk, Q => ram_3_3_port, QN 
                           => n_1031);
   ram_reg_3_2_inst : FD1 port map( D => n67, CP => clk, Q => ram_3_2_port, QN 
                           => n_1032);
   ram_reg_3_1_inst : FD1 port map( D => n66, CP => clk, Q => ram_3_1_port, QN 
                           => n_1033);
   ram_reg_3_0_inst : FD1 port map( D => n65, CP => clk, Q => ram_3_0_port, QN 
                           => n_1034);
   ram_reg_4_7_inst : FD1 port map( D => n64, CP => clk, Q => ram_4_7_port, QN 
                           => n_1035);
   ram_reg_4_6_inst : FD1 port map( D => n63, CP => clk, Q => ram_4_6_port, QN 
                           => n_1036);
   ram_reg_4_5_inst : FD1 port map( D => n62, CP => clk, Q => ram_4_5_port, QN 
                           => n_1037);
   ram_reg_4_4_inst : FD1 port map( D => n61, CP => clk, Q => ram_4_4_port, QN 
                           => n_1038);
   ram_reg_4_3_inst : FD1 port map( D => n60, CP => clk, Q => ram_4_3_port, QN 
                           => n_1039);
   ram_reg_4_2_inst : FD1 port map( D => n59, CP => clk, Q => ram_4_2_port, QN 
                           => n_1040);
   ram_reg_4_1_inst : FD1 port map( D => n58, CP => clk, Q => ram_4_1_port, QN 
                           => n_1041);
   ram_reg_4_0_inst : FD1 port map( D => n57, CP => clk, Q => ram_4_0_port, QN 
                           => n_1042);
   ram_reg_5_7_inst : FD1 port map( D => n56, CP => clk, Q => ram_5_7_port, QN 
                           => n_1043);
   ram_reg_5_6_inst : FD1 port map( D => n55, CP => clk, Q => ram_5_6_port, QN 
                           => n_1044);
   ram_reg_5_5_inst : FD1 port map( D => n54, CP => clk, Q => ram_5_5_port, QN 
                           => n_1045);
   ram_reg_5_4_inst : FD1 port map( D => n53, CP => clk, Q => ram_5_4_port, QN 
                           => n_1046);
   ram_reg_5_3_inst : FD1 port map( D => n52, CP => clk, Q => ram_5_3_port, QN 
                           => n_1047);
   ram_reg_5_2_inst : FD1 port map( D => n51, CP => clk, Q => ram_5_2_port, QN 
                           => n_1048);
   ram_reg_5_1_inst : FD1 port map( D => n50, CP => clk, Q => ram_5_1_port, QN 
                           => n_1049);
   ram_reg_5_0_inst : FD1 port map( D => n49, CP => clk, Q => ram_5_0_port, QN 
                           => n_1050);
   ram_reg_6_7_inst : FD1 port map( D => n48, CP => clk, Q => ram_6_7_port, QN 
                           => n_1051);
   ram_reg_6_6_inst : FD1 port map( D => n47, CP => clk, Q => ram_6_6_port, QN 
                           => n_1052);
   ram_reg_6_5_inst : FD1 port map( D => n46, CP => clk, Q => ram_6_5_port, QN 
                           => n_1053);
   ram_reg_6_4_inst : FD1 port map( D => n45, CP => clk, Q => ram_6_4_port, QN 
                           => n_1054);
   ram_reg_6_3_inst : FD1 port map( D => n44, CP => clk, Q => ram_6_3_port, QN 
                           => n_1055);
   ram_reg_6_2_inst : FD1 port map( D => n43, CP => clk, Q => ram_6_2_port, QN 
                           => n_1056);
   ram_reg_6_1_inst : FD1 port map( D => n42, CP => clk, Q => ram_6_1_port, QN 
                           => n_1057);
   ram_reg_6_0_inst : FD1 port map( D => n41, CP => clk, Q => ram_6_0_port, QN 
                           => n_1058);
   ram_reg_7_7_inst : FD1 port map( D => n40, CP => clk, Q => ram_7_7_port, QN 
                           => n_1059);
   ram_reg_7_6_inst : FD1 port map( D => n39, CP => clk, Q => ram_7_6_port, QN 
                           => n_1060);
   ram_reg_7_5_inst : FD1 port map( D => n38, CP => clk, Q => ram_7_5_port, QN 
                           => n_1061);
   ram_reg_7_4_inst : FD1 port map( D => n37, CP => clk, Q => ram_7_4_port, QN 
                           => n_1062);
   ram_reg_7_3_inst : FD1 port map( D => n36, CP => clk, Q => ram_7_3_port, QN 
                           => n_1063);
   ram_reg_7_2_inst : FD1 port map( D => n35, CP => clk, Q => ram_7_2_port, QN 
                           => n_1064);
   ram_reg_7_1_inst : FD1 port map( D => n34, CP => clk, Q => ram_7_1_port, QN 
                           => n_1065);
   ram_reg_7_0_inst : FD1 port map( D => n33, CP => clk, Q => ram_7_0_port, QN 
                           => n_1066);
   U51 : ND2I port map( A => n24, B => n264, Z => n132);
   U60 : ND2I port map( A => n22, B => n264, Z => n142);
   U69 : ND2I port map( A => n20, B => n264, Z => n152);
   U78 : ND2I port map( A => n18, B => n264, Z => n162);
   U87 : ND2I port map( A => n10, B => n264, Z => n171);
   U97 : ND2I port map( A => n5, B => n264, Z => n180);
   U107 : ND2I port map( A => n9, B => n264, Z => n189);
   U117 : ND2I port map( A => n6, B => n264, Z => n198);
   U123 : ND2I port map( A => tx_in_addr_q_1_port, B => n87, Z => n209);
   U128 : ND2I port map( A => n267, B => n89, Z => n212);
   U131 : ND2I port map( A => tx_out_addr_q_1_port, B => n84, Z => n214);
   U135 : ND2I port map( A => n267, B => n86, Z => n218);
   U136 : NR2I port map( A => reset, B => tx_func_apply_data_port, Z => n217);
   U138 : ND2I port map( A => n262, B => n80, Z => n221);
   U140 : NR2I port map( A => n263, B => n83, Z => n224);
   U141 : NR2I port map( A => tx_fifo_entries_free_1_port, B => n206, Z => n222
                           );
   U142 : NR2I port map( A => n225, B => n226, Z => n219);
   U145 : ND2I port map( A => n262, B => n81, Z => n229);
   U148 : ND2I port map( A => n262, B => n230, Z => n225);
   U150 : AO1P port map( A => tx_fifo_entries_free_3_port, B => n233, C => 
                           reset, D => n234, Z => n232);
   U152 : ND2I port map( A => tx_fifo_entries_free_2_port, B => 
                           tx_fifo_entries_free_1_port, Z => n235);
   U155 : ND2I port map( A => tx_fifo_entries_free_1_port, B => n264, Z => n236
                           );
   U157 : NR2I port map( A => reset, B => tx_fifo_entries_free_0_port, Z => 
                           n223);
   U158 : NR2I port map( A => n263, B => tx_func_apply_data_port, Z => n231);
   U160 : NR2I port map( A => n2, B => n238, Z => tx_fifo_empty_port);
   U161 : NR2I port map( A => reset, B => n264, Z => n211);
   U162 : ND2I port map( A => write_tx_data, B => n265, Z => n206);
   U163 : NR2I port map( A => n238, B => tx_fifo_entries_free_3_port, Z => 
                           tx_fifo_full_port);
   U249 : OR3 port map( A => n211, B => reset, C => n89, Z => n208);
   U250 : OR3 port map( A => n217, B => reset, C => n86, Z => n213);
   U251 : OR3 port map( A => n206, B => reset, C => n83, Z => n230);
   tx_fifo_entries_free_5_port <= '0';
   tx_fifo_entries_free_6_port <= '0';
   tx_fifo_entries_free_7_port <= '0';
   U6 : NR3 port map( A => n260, B => n160, C => n140, Z => n5);
   U7 : NR3 port map( A => n261, B => n260, C => n140, Z => n6);
   U8 : NR3 port map( A => n261, B => n150, C => n140, Z => n9);
   U9 : NR3 port map( A => n150, B => n160, C => n140, Z => n10);
   U10 : IVDA port map( A => n132, Y => n11, Z => n32);
   U11 : IVDA port map( A => n142, Y => n12, Z => n31);
   U12 : IVDA port map( A => n152, Y => n13, Z => n30);
   U13 : IVDA port map( A => n180, Y => n7, Z => n27);
   U14 : IVDA port map( A => n189, Y => n14, Z => n26);
   U15 : IVDA port map( A => n198, Y => n8, Z => n25);
   U16 : IVDA port map( A => n162, Y => n16, Z => n29);
   U17 : IVDA port map( A => n171, Y => n15, Z => n28);
   U18 : IVI port map( A => n206, Z => n264);
   U19 : IVDA port map( A => n96, Y => n_1067, Z => n22);
   U20 : IVDA port map( A => n95, Y => n_1068, Z => n24);
   U21 : IVDA port map( A => n97, Y => n_1069, Z => n20);
   U22 : IVDA port map( A => n98, Y => n_1070, Z => n18);
   U23 : IVDA port map( A => n96, Y => n_1071, Z => n21);
   U24 : IVDA port map( A => n95, Y => n_1072, Z => n23);
   U25 : IVDA port map( A => n98, Y => n_1073, Z => n17);
   U26 : IVDA port map( A => n97, Y => n_1074, Z => n19);
   U27 : AN3 port map( A => n261, B => n140, C => n150, Z => n96);
   U28 : AN3 port map( A => n261, B => n140, C => n260, Z => n95);
   U29 : AN3 port map( A => n260, B => n140, C => n160, Z => n97);
   U30 : AN3 port map( A => n150, B => n140, C => n160, Z => n98);
   U31 : NR3 port map( A => tx_func_sending, B => tx_fifo_empty_port, C => n264
                           , Z => tx_func_apply_data_port);
   U32 : AO2 port map( A => n264, B => tx_in_addr_q_1_port, C => n206, D => 
                           tx_out_addr_q_1_port, Z => n160);
   U33 : AO2 port map( A => n264, B => tx_in_addr_q_0_port, C => n206, D => 
                           tx_out_addr_q_0_port, Z => n150);
   U34 : AO2 port map( A => ram_3_0_port, B => n10, C => ram_2_0_port, D => n5,
                           Z => n128);
   U35 : AO2 port map( A => ram_1_0_port, B => n9, C => ram_0_0_port, D => n6, 
                           Z => n127);
   U36 : AO2 port map( A => ram_3_1_port, B => n10, C => ram_2_1_port, D => n5,
                           Z => n124);
   U37 : AO2 port map( A => ram_1_1_port, B => n9, C => ram_0_1_port, D => n6, 
                           Z => n123);
   U38 : AO2 port map( A => ram_3_2_port, B => n10, C => ram_2_2_port, D => n5,
                           Z => n120);
   U39 : AO2 port map( A => ram_1_2_port, B => n9, C => ram_0_2_port, D => n6, 
                           Z => n119);
   U40 : AO2 port map( A => ram_3_3_port, B => n10, C => ram_2_3_port, D => n5,
                           Z => n116);
   U41 : AO2 port map( A => ram_1_3_port, B => n9, C => ram_0_3_port, D => n6, 
                           Z => n115);
   U42 : AO2 port map( A => ram_3_4_port, B => n10, C => ram_2_4_port, D => n5,
                           Z => n112);
   U43 : AO2 port map( A => ram_1_4_port, B => n9, C => ram_0_4_port, D => n6, 
                           Z => n111);
   U44 : AO2 port map( A => ram_3_5_port, B => n10, C => ram_2_5_port, D => n5,
                           Z => n108);
   U45 : AO2 port map( A => ram_1_5_port, B => n9, C => ram_0_5_port, D => n6, 
                           Z => n107);
   U46 : AO2 port map( A => ram_3_6_port, B => n10, C => ram_2_6_port, D => n5,
                           Z => n104);
   U47 : AO2 port map( A => ram_1_6_port, B => n9, C => ram_0_6_port, D => n6, 
                           Z => n103);
   U48 : AO2 port map( A => ram_3_7_port, B => n10, C => ram_2_7_port, D => n5,
                           Z => n92);
   U49 : AO2 port map( A => ram_1_7_port, B => n9, C => ram_0_7_port, D => n6, 
                           Z => n91);
   U50 : ND4 port map( A => n127, B => n128, C => n129, D => n130, Z => 
                           tx_func_data(0));
   U52 : AO2 port map( A => ram_5_0_port, B => n19, C => ram_4_0_port, D => n17
                           , Z => n129);
   U53 : AO2 port map( A => ram_7_0_port, B => n23, C => ram_6_0_port, D => n21
                           , Z => n130);
   U54 : ND4 port map( A => n123, B => n124, C => n125, D => n126, Z => 
                           tx_func_data(1));
   U55 : AO2 port map( A => ram_5_1_port, B => n19, C => ram_4_1_port, D => n17
                           , Z => n125);
   U56 : AO2 port map( A => ram_7_1_port, B => n23, C => ram_6_1_port, D => n21
                           , Z => n126);
   U57 : ND4 port map( A => n119, B => n120, C => n121, D => n122, Z => 
                           tx_func_data(2));
   U58 : AO2 port map( A => ram_5_2_port, B => n19, C => ram_4_2_port, D => n17
                           , Z => n121);
   U59 : AO2 port map( A => ram_7_2_port, B => n23, C => ram_6_2_port, D => n21
                           , Z => n122);
   U61 : ND4 port map( A => n115, B => n116, C => n117, D => n118, Z => 
                           tx_func_data(3));
   U62 : AO2 port map( A => ram_5_3_port, B => n19, C => ram_4_3_port, D => n17
                           , Z => n117);
   U63 : AO2 port map( A => ram_7_3_port, B => n23, C => ram_6_3_port, D => n21
                           , Z => n118);
   U64 : ND4 port map( A => n111, B => n112, C => n113, D => n114, Z => 
                           tx_func_data(4));
   U65 : AO2 port map( A => ram_5_4_port, B => n20, C => ram_4_4_port, D => n18
                           , Z => n113);
   U66 : AO2 port map( A => ram_7_4_port, B => n24, C => ram_6_4_port, D => n22
                           , Z => n114);
   U67 : ND4 port map( A => n107, B => n108, C => n109, D => n110, Z => 
                           tx_func_data(5));
   U68 : AO2 port map( A => ram_5_5_port, B => n20, C => ram_4_5_port, D => n18
                           , Z => n109);
   U70 : AO2 port map( A => ram_7_5_port, B => n24, C => ram_6_5_port, D => n22
                           , Z => n110);
   U71 : ND4 port map( A => n103, B => n104, C => n105, D => n106, Z => 
                           tx_func_data(6));
   U72 : AO2 port map( A => ram_5_6_port, B => n20, C => ram_4_6_port, D => n18
                           , Z => n105);
   U73 : AO2 port map( A => ram_7_6_port, B => n24, C => ram_6_6_port, D => n22
                           , Z => n106);
   U74 : ND4 port map( A => n91, B => n92, C => n93, D => n94, Z => 
                           tx_func_data(7));
   U75 : AO2 port map( A => ram_5_7_port, B => n20, C => ram_4_7_port, D => n18
                           , Z => n93);
   U76 : AO2 port map( A => ram_7_7_port, B => n24, C => ram_6_7_port, D => n22
                           , Z => n94);
   U77 : ND3 port map( A => n80, B => n81, C => n83, Z => n238);
   U79 : AO2 port map( A => n11, B => tx_data(0), C => n32, D => ram_7_0_port, 
                           Z => n131);
   U80 : AO2 port map( A => n11, B => tx_data(1), C => n32, D => ram_7_1_port, 
                           Z => n133);
   U81 : AO2 port map( A => n11, B => tx_data(2), C => n32, D => ram_7_2_port, 
                           Z => n134);
   U82 : AO2 port map( A => n11, B => tx_data(3), C => n32, D => ram_7_3_port, 
                           Z => n135);
   U83 : AO2 port map( A => n11, B => tx_data(4), C => n32, D => ram_7_4_port, 
                           Z => n136);
   U84 : AO2 port map( A => n11, B => tx_data(5), C => n32, D => ram_7_5_port, 
                           Z => n137);
   U85 : AO2 port map( A => n11, B => tx_data(6), C => n32, D => ram_7_6_port, 
                           Z => n138);
   U86 : AO2 port map( A => n11, B => tx_data(7), C => n32, D => ram_7_7_port, 
                           Z => n139);
   U88 : AO2 port map( A => tx_data(0), B => n12, C => n31, D => ram_6_0_port, 
                           Z => n141);
   U89 : AO2 port map( A => tx_data(1), B => n12, C => n31, D => ram_6_1_port, 
                           Z => n143);
   U90 : AO2 port map( A => tx_data(2), B => n12, C => n31, D => ram_6_2_port, 
                           Z => n144);
   U91 : AO2 port map( A => tx_data(3), B => n12, C => n31, D => ram_6_3_port, 
                           Z => n145);
   U92 : AO2 port map( A => tx_data(4), B => n12, C => n31, D => ram_6_4_port, 
                           Z => n146);
   U93 : AO2 port map( A => tx_data(5), B => n12, C => n31, D => ram_6_5_port, 
                           Z => n147);
   U94 : AO2 port map( A => tx_data(6), B => n12, C => n31, D => ram_6_6_port, 
                           Z => n148);
   U95 : AO2 port map( A => tx_data(7), B => n12, C => n31, D => ram_6_7_port, 
                           Z => n149);
   U96 : AO2 port map( A => tx_data(0), B => n13, C => n30, D => ram_5_0_port, 
                           Z => n151);
   U98 : AO2 port map( A => tx_data(1), B => n13, C => n30, D => ram_5_1_port, 
                           Z => n153);
   U99 : AO2 port map( A => tx_data(2), B => n13, C => n30, D => ram_5_2_port, 
                           Z => n154);
   U100 : AO2 port map( A => tx_data(3), B => n13, C => n30, D => ram_5_3_port,
                           Z => n155);
   U101 : AO2 port map( A => tx_data(4), B => n13, C => n30, D => ram_5_4_port,
                           Z => n156);
   U102 : AO2 port map( A => tx_data(5), B => n13, C => n30, D => ram_5_5_port,
                           Z => n157);
   U103 : AO2 port map( A => tx_data(6), B => n13, C => n30, D => ram_5_6_port,
                           Z => n158);
   U104 : AO2 port map( A => tx_data(7), B => n13, C => n30, D => ram_5_7_port,
                           Z => n159);
   U105 : AO2 port map( A => tx_data(0), B => n7, C => n27, D => ram_2_0_port, 
                           Z => n179);
   U106 : AO2 port map( A => tx_data(1), B => n7, C => n27, D => ram_2_1_port, 
                           Z => n181);
   U108 : AO2 port map( A => tx_data(2), B => n7, C => n27, D => ram_2_2_port, 
                           Z => n182);
   U109 : AO2 port map( A => tx_data(3), B => n7, C => n27, D => ram_2_3_port, 
                           Z => n183);
   U110 : AO2 port map( A => tx_data(4), B => n7, C => n27, D => ram_2_4_port, 
                           Z => n184);
   U111 : AO2 port map( A => tx_data(5), B => n7, C => n27, D => ram_2_5_port, 
                           Z => n185);
   U112 : AO2 port map( A => tx_data(6), B => n7, C => n27, D => ram_2_6_port, 
                           Z => n186);
   U113 : AO2 port map( A => tx_data(7), B => n7, C => n27, D => ram_2_7_port, 
                           Z => n187);
   U114 : AO2 port map( A => tx_data(0), B => n14, C => n26, D => ram_1_0_port,
                           Z => n188);
   U115 : AO2 port map( A => tx_data(1), B => n14, C => n26, D => ram_1_1_port,
                           Z => n190);
   U116 : AO2 port map( A => tx_data(2), B => n14, C => n26, D => ram_1_2_port,
                           Z => n191);
   U118 : AO2 port map( A => tx_data(3), B => n14, C => n26, D => ram_1_3_port,
                           Z => n192);
   U119 : AO2 port map( A => tx_data(4), B => n14, C => n26, D => ram_1_4_port,
                           Z => n193);
   U120 : AO2 port map( A => tx_data(5), B => n14, C => n26, D => ram_1_5_port,
                           Z => n194);
   U121 : AO2 port map( A => tx_data(6), B => n14, C => n26, D => ram_1_6_port,
                           Z => n195);
   U122 : AO2 port map( A => tx_data(7), B => n14, C => n26, D => ram_1_7_port,
                           Z => n196);
   U124 : AO2 port map( A => tx_data(0), B => n8, C => n25, D => ram_0_0_port, 
                           Z => n197);
   U125 : AO2 port map( A => tx_data(1), B => n8, C => n25, D => ram_0_1_port, 
                           Z => n199);
   U126 : AO2 port map( A => tx_data(2), B => n8, C => n25, D => ram_0_2_port, 
                           Z => n200);
   U127 : AO2 port map( A => tx_data(3), B => n8, C => n25, D => ram_0_3_port, 
                           Z => n201);
   U129 : AO2 port map( A => tx_data(4), B => n8, C => n25, D => ram_0_4_port, 
                           Z => n202);
   U130 : AO2 port map( A => tx_data(5), B => n8, C => n25, D => ram_0_5_port, 
                           Z => n203);
   U132 : AO2 port map( A => tx_data(6), B => n8, C => n25, D => ram_0_6_port, 
                           Z => n204);
   U133 : AO2 port map( A => tx_data(7), B => n8, C => n25, D => ram_0_7_port, 
                           Z => n205);
   U134 : AO4 port map( A => n206, B => n87, C => n264, D => n84, Z => n140);
   U137 : AO2 port map( A => tx_data(0), B => n16, C => n29, D => ram_4_0_port,
                           Z => n161);
   U139 : AO2 port map( A => tx_data(1), B => n16, C => n29, D => ram_4_1_port,
                           Z => n163);
   U143 : AO2 port map( A => tx_data(2), B => n16, C => n29, D => ram_4_2_port,
                           Z => n164);
   U144 : AO2 port map( A => tx_data(3), B => n16, C => n29, D => ram_4_3_port,
                           Z => n165);
   U146 : AO2 port map( A => tx_data(4), B => n16, C => n29, D => ram_4_4_port,
                           Z => n166);
   U147 : AO2 port map( A => tx_data(5), B => n16, C => n29, D => ram_4_5_port,
                           Z => n167);
   U149 : AO2 port map( A => tx_data(6), B => n16, C => n29, D => ram_4_6_port,
                           Z => n168);
   U151 : AO2 port map( A => tx_data(7), B => n16, C => n29, D => ram_4_7_port,
                           Z => n169);
   U153 : AO2 port map( A => tx_data(0), B => n15, C => n28, D => ram_3_0_port,
                           Z => n170);
   U154 : AO2 port map( A => tx_data(1), B => n15, C => n28, D => ram_3_1_port,
                           Z => n172);
   U156 : AO2 port map( A => tx_data(2), B => n15, C => n28, D => ram_3_2_port,
                           Z => n173);
   U159 : AO2 port map( A => tx_data(3), B => n15, C => n28, D => ram_3_3_port,
                           Z => n174);
   U164 : AO2 port map( A => tx_data(4), B => n15, C => n28, D => ram_3_4_port,
                           Z => n175);
   U165 : AO2 port map( A => tx_data(5), B => n15, C => n28, D => ram_3_5_port,
                           Z => n176);
   U166 : AO2 port map( A => tx_data(6), B => n15, C => n28, D => ram_3_6_port,
                           Z => n177);
   U167 : AO2 port map( A => tx_data(7), B => n15, C => n28, D => ram_3_7_port,
                           Z => n178);
   U168 : AO4 port map( A => n219, B => n80, C => n220, D => n221, Z => n245);
   U169 : AO2 port map( A => n222, B => n223, C => n224, D => 
                           tx_fifo_entries_free_1_port, Z => n220);
   U170 : AO4 port map( A => n227, B => n81, C => n228, D => n229, Z => n246);
   U171 : AO2 port map( A => n223, B => n264, C => tx_fifo_entries_free_0_port,
                           D => n211, Z => n228);
   U172 : AO6 port map( A => n211, B => n83, C => n225, Z => n227);
   U173 : EON1 port map( A => n213, B => n214, C => n215, D => 
                           tx_out_addr_q_2_port, Z => n242);
   U174 : AO7 port map( A => reset, B => tx_out_addr_q_1_port, C => n216, Z => 
                           n215);
   U175 : AO4 port map( A => n231, B => n232, C => n2, D => n262, Z => n247);
   U176 : AO3 port map( A => tx_fifo_entries_free_2_port, B => n264, C => n236,
                           D => n237, Z => n233);
   U177 : NR4 port map( A => n235, B => n83, C => tx_fifo_entries_free_3_port, 
                           D => n264, Z => n234);
   U178 : AO4 port map( A => n83, B => n262, C => n231, D => n266, Z => n248);
   U179 : AO6 port map( A => n86, B => n267, C => n217, Z => n216);
   U180 : AO7 port map( A => tx_in_addr_q_0_port, B => reset, C => n263, Z => 
                           n210);
   U181 : AO4 port map( A => tx_fifo_entries_free_1_port, B => n263, C => n266,
                           D => n81, Z => n226);
   U182 : AO4 port map( A => n207, B => n87, C => n208, D => n209, Z => n239);
   U183 : AO6 port map( A => n267, B => n88, C => n210, Z => n207);
   U184 : EON1 port map( A => tx_in_addr_q_1_port, B => n208, C => n210, D => 
                           tx_in_addr_q_1_port, Z => n240);
   U185 : AO4 port map( A => n216, B => n85, C => tx_out_addr_q_1_port, D => 
                           n213, Z => n243);
   U186 : AO4 port map( A => n89, B => n263, C => n211, D => n212, Z => n241);
   U187 : EON1 port map( A => n217, B => n218, C => tx_out_addr_q_0_port, D => 
                           n217, Z => n244);
   U188 : AO2 port map( A => tx_fifo_entries_free_2_port, B => n83, C => 
                           tx_fifo_entries_free_0_port, D => n81, Z => n237);
   U189 : IVI port map( A => n131, Z => n33);
   U190 : IVI port map( A => n133, Z => n34);
   U191 : IVI port map( A => n134, Z => n35);
   U192 : IVI port map( A => n135, Z => n36);
   U193 : IVI port map( A => n136, Z => n37);
   U194 : IVI port map( A => n137, Z => n38);
   U195 : IVI port map( A => n138, Z => n39);
   U196 : IVI port map( A => n139, Z => n40);
   U197 : IVI port map( A => n141, Z => n41);
   U198 : IVI port map( A => n143, Z => n42);
   U199 : IVI port map( A => n144, Z => n43);
   U200 : IVI port map( A => n145, Z => n44);
   U201 : IVI port map( A => n146, Z => n45);
   U202 : IVI port map( A => n147, Z => n46);
   U203 : IVI port map( A => n148, Z => n47);
   U204 : IVI port map( A => n149, Z => n48);
   U205 : IVI port map( A => n151, Z => n49);
   U206 : IVI port map( A => n153, Z => n50);
   U207 : IVI port map( A => n154, Z => n51);
   U208 : IVI port map( A => n155, Z => n52);
   U209 : IVI port map( A => n156, Z => n53);
   U210 : IVI port map( A => n157, Z => n54);
   U211 : IVI port map( A => n158, Z => n55);
   U212 : IVI port map( A => n159, Z => n56);
   U213 : IVI port map( A => n161, Z => n57);
   U214 : IVI port map( A => n163, Z => n58);
   U215 : IVI port map( A => n164, Z => n59);
   U216 : IVI port map( A => n165, Z => n60);
   U217 : IVI port map( A => n166, Z => n61);
   U218 : IVI port map( A => n167, Z => n62);
   U219 : IVI port map( A => n168, Z => n63);
   U220 : IVI port map( A => n169, Z => n64);
   U221 : IVI port map( A => n170, Z => n65);
   U222 : IVI port map( A => n172, Z => n66);
   U223 : IVI port map( A => n173, Z => n67);
   U224 : IVI port map( A => n174, Z => n68);
   U225 : IVI port map( A => n175, Z => n69);
   U226 : IVI port map( A => n176, Z => n70);
   U227 : IVI port map( A => n177, Z => n71);
   U228 : IVI port map( A => n178, Z => n72);
   U229 : IVI port map( A => n179, Z => n73);
   U230 : IVI port map( A => n181, Z => n74);
   U231 : IVI port map( A => n182, Z => n75);
   U232 : IVI port map( A => n183, Z => n76);
   U233 : IVI port map( A => n184, Z => n77);
   U234 : IVI port map( A => n185, Z => n78);
   U235 : IVI port map( A => n186, Z => n79);
   U236 : IVI port map( A => n187, Z => n82);
   U237 : IVI port map( A => n188, Z => n90);
   U238 : IVI port map( A => n190, Z => n99);
   U239 : IVI port map( A => n191, Z => n100);
   U240 : IVI port map( A => n192, Z => n101);
   U241 : IVI port map( A => n193, Z => n102);
   U242 : IVI port map( A => n194, Z => n249);
   U243 : IVI port map( A => n195, Z => n250);
   U244 : IVI port map( A => n196, Z => n251);
   U245 : IVI port map( A => n197, Z => n252);
   U246 : IVI port map( A => n199, Z => n253);
   U247 : IVI port map( A => n200, Z => n254);
   U248 : IVI port map( A => n201, Z => n255);
   U252 : IVI port map( A => n202, Z => n256);
   U253 : IVI port map( A => n203, Z => n257);
   U254 : IVI port map( A => n204, Z => n258);
   U255 : IVI port map( A => n205, Z => n259);
   U256 : IVI port map( A => n150, Z => n260);
   U257 : IVI port map( A => n160, Z => n261);
   U258 : IVI port map( A => n231, Z => n262);
   U259 : IVI port map( A => n211, Z => n263);
   U260 : IVI port map( A => tx_fifo_full_port, Z => n265);
   U261 : IVI port map( A => n223, Z => n266);
   U262 : IVI port map( A => reset, Z => n267);

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
   
   signal X_Logic0_port, rx_fifo_full_port, rx_fifo_entries_free_3_port, 
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
      n96, n97, n98, n99, n100, n101, n102, n103, n108, n109, n110, n111, n112,
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
      rx_fifo_entries_free_5_port, rx_fifo_entries_free_6_port, 
      rx_fifo_entries_free_7_port, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
      n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29
      , n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, 
      n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58
      , n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, 
      n73, n74, n75, n76, n77, n78, n79, n80, n83, n92, n93, n94, n104, n105, 
      n106, n107, n145, n246, n247, n248, n249, n250, n251, n252, n253, n254, 
      n255, n256, n257, n258, n259, n260, n261, n262, n_1075, n_1076, n_1077, 
      n_1078, n_1079, n_1080, n_1081, n_1082, n_1083, n_1084, n_1085, n_1086, 
      n_1087, n_1088, n_1089, n_1090, n_1091, n_1092, n_1093, n_1094, n_1095, 
      n_1096, n_1097, n_1098, n_1099, n_1100, n_1101, n_1102, n_1103, n_1104, 
      n_1105, n_1106, n_1107, n_1108, n_1109, n_1110, n_1111, n_1112, n_1113, 
      n_1114, n_1115, n_1116, n_1117, n_1118, n_1119, n_1120, n_1121, n_1122, 
      n_1123, n_1124, n_1125, n_1126, n_1127, n_1128, n_1129, n_1130, n_1131, 
      n_1132, n_1133, n_1134, n_1135, n_1136, n_1137, n_1138, n_1139, n_1140, 
      n_1141, n_1142, n_1143, n_1144, n_1145, n_1146 : std_logic;

begin
   rx_fifo_full <= rx_fifo_full_port;
   rx_fifo_entries_free <= ( rx_fifo_entries_free_7_port, 
      rx_fifo_entries_free_6_port, rx_fifo_entries_free_5_port, X_Logic0_port, 
      rx_fifo_entries_free_3_port, rx_fifo_entries_free_2_port, 
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
   ram_reg_0_7_inst : FD1 port map( D => n41, CP => clk, Q => ram_0_7_port, QN 
                           => n_1075);
   ram_reg_0_6_inst : FD1 port map( D => n40, CP => clk, Q => ram_0_6_port, QN 
                           => n_1076);
   ram_reg_0_5_inst : FD1 port map( D => n39, CP => clk, Q => ram_0_5_port, QN 
                           => n_1077);
   ram_reg_0_4_inst : FD1 port map( D => n38, CP => clk, Q => ram_0_4_port, QN 
                           => n_1078);
   ram_reg_0_3_inst : FD1 port map( D => n37, CP => clk, Q => ram_0_3_port, QN 
                           => n_1079);
   ram_reg_0_2_inst : FD1 port map( D => n36, CP => clk, Q => ram_0_2_port, QN 
                           => n_1080);
   ram_reg_0_1_inst : FD1 port map( D => n35, CP => clk, Q => ram_0_1_port, QN 
                           => n_1081);
   ram_reg_0_0_inst : FD1 port map( D => n34, CP => clk, Q => ram_0_0_port, QN 
                           => n_1082);
   ram_reg_1_7_inst : FD1 port map( D => n49, CP => clk, Q => ram_1_7_port, QN 
                           => n_1083);
   ram_reg_1_6_inst : FD1 port map( D => n48, CP => clk, Q => ram_1_6_port, QN 
                           => n_1084);
   ram_reg_1_5_inst : FD1 port map( D => n47, CP => clk, Q => ram_1_5_port, QN 
                           => n_1085);
   ram_reg_1_4_inst : FD1 port map( D => n46, CP => clk, Q => ram_1_4_port, QN 
                           => n_1086);
   ram_reg_1_3_inst : FD1 port map( D => n45, CP => clk, Q => ram_1_3_port, QN 
                           => n_1087);
   ram_reg_1_2_inst : FD1 port map( D => n44, CP => clk, Q => ram_1_2_port, QN 
                           => n_1088);
   ram_reg_1_1_inst : FD1 port map( D => n43, CP => clk, Q => ram_1_1_port, QN 
                           => n_1089);
   ram_reg_1_0_inst : FD1 port map( D => n42, CP => clk, Q => ram_1_0_port, QN 
                           => n_1090);
   ram_reg_2_7_inst : FD1 port map( D => n57, CP => clk, Q => ram_2_7_port, QN 
                           => n_1091);
   ram_reg_2_6_inst : FD1 port map( D => n56, CP => clk, Q => ram_2_6_port, QN 
                           => n_1092);
   ram_reg_2_5_inst : FD1 port map( D => n55, CP => clk, Q => ram_2_5_port, QN 
                           => n_1093);
   ram_reg_2_4_inst : FD1 port map( D => n54, CP => clk, Q => ram_2_4_port, QN 
                           => n_1094);
   ram_reg_2_3_inst : FD1 port map( D => n53, CP => clk, Q => ram_2_3_port, QN 
                           => n_1095);
   ram_reg_2_2_inst : FD1 port map( D => n52, CP => clk, Q => ram_2_2_port, QN 
                           => n_1096);
   ram_reg_2_1_inst : FD1 port map( D => n51, CP => clk, Q => ram_2_1_port, QN 
                           => n_1097);
   ram_reg_2_0_inst : FD1 port map( D => n50, CP => clk, Q => ram_2_0_port, QN 
                           => n_1098);
   ram_reg_3_7_inst : FD1 port map( D => n65, CP => clk, Q => ram_3_7_port, QN 
                           => n_1099);
   ram_reg_3_6_inst : FD1 port map( D => n64, CP => clk, Q => ram_3_6_port, QN 
                           => n_1100);
   ram_reg_3_5_inst : FD1 port map( D => n63, CP => clk, Q => ram_3_5_port, QN 
                           => n_1101);
   ram_reg_3_4_inst : FD1 port map( D => n62, CP => clk, Q => ram_3_4_port, QN 
                           => n_1102);
   ram_reg_3_3_inst : FD1 port map( D => n61, CP => clk, Q => ram_3_3_port, QN 
                           => n_1103);
   ram_reg_3_2_inst : FD1 port map( D => n60, CP => clk, Q => ram_3_2_port, QN 
                           => n_1104);
   ram_reg_3_1_inst : FD1 port map( D => n59, CP => clk, Q => ram_3_1_port, QN 
                           => n_1105);
   ram_reg_3_0_inst : FD1 port map( D => n58, CP => clk, Q => ram_3_0_port, QN 
                           => n_1106);
   ram_reg_4_7_inst : FD1 port map( D => n73, CP => clk, Q => ram_4_7_port, QN 
                           => n_1107);
   ram_reg_4_6_inst : FD1 port map( D => n72, CP => clk, Q => ram_4_6_port, QN 
                           => n_1108);
   ram_reg_4_5_inst : FD1 port map( D => n71, CP => clk, Q => ram_4_5_port, QN 
                           => n_1109);
   ram_reg_4_4_inst : FD1 port map( D => n70, CP => clk, Q => ram_4_4_port, QN 
                           => n_1110);
   ram_reg_4_3_inst : FD1 port map( D => n69, CP => clk, Q => ram_4_3_port, QN 
                           => n_1111);
   ram_reg_4_2_inst : FD1 port map( D => n68, CP => clk, Q => ram_4_2_port, QN 
                           => n_1112);
   ram_reg_4_1_inst : FD1 port map( D => n67, CP => clk, Q => ram_4_1_port, QN 
                           => n_1113);
   ram_reg_4_0_inst : FD1 port map( D => n66, CP => clk, Q => ram_4_0_port, QN 
                           => n_1114);
   ram_reg_5_7_inst : FD1 port map( D => n83, CP => clk, Q => ram_5_7_port, QN 
                           => n_1115);
   ram_reg_5_6_inst : FD1 port map( D => n80, CP => clk, Q => ram_5_6_port, QN 
                           => n_1116);
   ram_reg_5_5_inst : FD1 port map( D => n79, CP => clk, Q => ram_5_5_port, QN 
                           => n_1117);
   ram_reg_5_4_inst : FD1 port map( D => n78, CP => clk, Q => ram_5_4_port, QN 
                           => n_1118);
   ram_reg_5_3_inst : FD1 port map( D => n77, CP => clk, Q => ram_5_3_port, QN 
                           => n_1119);
   ram_reg_5_2_inst : FD1 port map( D => n76, CP => clk, Q => ram_5_2_port, QN 
                           => n_1120);
   ram_reg_5_1_inst : FD1 port map( D => n75, CP => clk, Q => ram_5_1_port, QN 
                           => n_1121);
   ram_reg_5_0_inst : FD1 port map( D => n74, CP => clk, Q => ram_5_0_port, QN 
                           => n_1122);
   ram_reg_6_7_inst : FD1 port map( D => n145, CP => clk, Q => ram_6_7_port, QN
                           => n_1123);
   ram_reg_6_6_inst : FD1 port map( D => n107, CP => clk, Q => ram_6_6_port, QN
                           => n_1124);
   ram_reg_6_5_inst : FD1 port map( D => n106, CP => clk, Q => ram_6_5_port, QN
                           => n_1125);
   ram_reg_6_4_inst : FD1 port map( D => n105, CP => clk, Q => ram_6_4_port, QN
                           => n_1126);
   ram_reg_6_3_inst : FD1 port map( D => n104, CP => clk, Q => ram_6_3_port, QN
                           => n_1127);
   ram_reg_6_2_inst : FD1 port map( D => n94, CP => clk, Q => ram_6_2_port, QN 
                           => n_1128);
   ram_reg_6_1_inst : FD1 port map( D => n93, CP => clk, Q => ram_6_1_port, QN 
                           => n_1129);
   ram_reg_6_0_inst : FD1 port map( D => n92, CP => clk, Q => ram_6_0_port, QN 
                           => n_1130);
   ram_reg_7_7_inst : FD1 port map( D => n253, CP => clk, Q => ram_7_7_port, QN
                           => n_1131);
   ram_reg_7_6_inst : FD1 port map( D => n252, CP => clk, Q => ram_7_6_port, QN
                           => n_1132);
   ram_reg_7_5_inst : FD1 port map( D => n251, CP => clk, Q => ram_7_5_port, QN
                           => n_1133);
   ram_reg_7_4_inst : FD1 port map( D => n250, CP => clk, Q => ram_7_4_port, QN
                           => n_1134);
   ram_reg_7_3_inst : FD1 port map( D => n249, CP => clk, Q => ram_7_3_port, QN
                           => n_1135);
   ram_reg_7_2_inst : FD1 port map( D => n248, CP => clk, Q => ram_7_2_port, QN
                           => n_1136);
   ram_reg_7_1_inst : FD1 port map( D => n247, CP => clk, Q => ram_7_1_port, QN
                           => n_1137);
   ram_reg_7_0_inst : FD1 port map( D => n246, CP => clk, Q => ram_7_0_port, QN
                           => n_1138);
   U3 : NR2I port map( A => n95, B => n3, Z => rx_fifo_empty);
   U52 : ND2I port map( A => n25, B => n5, Z => n137);
   U61 : ND2I port map( A => n23, B => n5, Z => n148);
   U70 : ND2I port map( A => n21, B => n5, Z => n158);
   U79 : ND2I port map( A => n19, B => n5, Z => n168);
   U88 : ND2I port map( A => n9, B => n5, Z => n177);
   U98 : ND2I port map( A => n6, B => n5, Z => n186);
   U108 : ND2I port map( A => n8, B => n5, Z => n195);
   U118 : ND2I port map( A => n7, B => n5, Z => n204);
   U125 : ND2I port map( A => rx_out_addr_q_1_port, B => n89, Z => n213);
   U130 : ND2I port map( A => n260, B => n91, Z => n217);
   U133 : ND2I port map( A => rx_in_addr_q_1_port, B => n86, Z => n219);
   U137 : ND2I port map( A => n260, B => n88, Z => n223);
   U138 : NR2I port map( A => n224, B => n258, Z => n245);
   U139 : NR2I port map( A => reset, B => n5, Z => n222);
   U140 : NR2I port map( A => data_ready_q, B => rx_func_data_ready, Z => n224)
                           ;
   U143 : AO1P port map( A => rx_fifo_entries_free_1_port, B => n81, C => n228,
                           D => n229, Z => n225);
   U151 : ND2I port map( A => n5, B => n82, Z => n233);
   U157 : NR2I port map( A => reset, B => read_rx_data, Z => n216);
   U158 : ND2I port map( A => n5, B => n84, Z => n236);
   U160 : NR2I port map( A => n95, B => rx_fifo_entries_free_3_port, Z => 
                           rx_fifo_full_port);
   U246 : OR3 port map( A => n222, B => reset, C => n88, Z => n218);
   U247 : AN3 port map( A => rx_fifo_entries_free_0_port, B => read_rx_data, C 
                           => rx_fifo_entries_free_1_port, Z => n227);
   U248 : OR3 port map( A => rx_fifo_entries_free_2_port, B => 
                           rx_fifo_entries_free_1_port, C => 
                           rx_fifo_entries_free_0_port, Z => n95);
   rx_fifo_entries_free_5_port <= '0';
   rx_fifo_entries_free_6_port <= '0';
   rx_fifo_entries_free_7_port <= '0';
   U7 : NR3 port map( A => rx_fifo_full_port, B => read_rx_data, C => n85, Z =>
                           n5);
   U8 : NR3 port map( A => n254, B => n166, C => n146, Z => n6);
   U9 : NR3 port map( A => n255, B => n254, C => n146, Z => n7);
   U10 : NR3 port map( A => n255, B => n156, C => n146, Z => n8);
   U11 : NR3 port map( A => n156, B => n166, C => n146, Z => n9);
   U12 : IVDA port map( A => n137, Y => n10, Z => n33);
   U13 : IVDA port map( A => n148, Y => n16, Z => n32);
   U14 : IVDA port map( A => n158, Y => n11, Z => n31);
   U15 : IVDA port map( A => n168, Y => n17, Z => n30);
   U16 : IVDA port map( A => n186, Y => n12, Z => n28);
   U17 : IVDA port map( A => n195, Y => n13, Z => n27);
   U18 : IVDA port map( A => n204, Y => n14, Z => n26);
   U19 : IVDA port map( A => n101, Y => n_1139, Z => n23);
   U20 : IVDA port map( A => n100, Y => n_1140, Z => n25);
   U21 : IVDA port map( A => n102, Y => n_1141, Z => n21);
   U22 : IVDA port map( A => n103, Y => n_1142, Z => n19);
   U23 : IVDA port map( A => n177, Y => n15, Z => n29);
   U24 : IVDA port map( A => n101, Y => n_1143, Z => n22);
   U25 : IVDA port map( A => n100, Y => n_1144, Z => n24);
   U26 : IVDA port map( A => n103, Y => n_1145, Z => n18);
   U27 : IVDA port map( A => n102, Y => n_1146, Z => n20);
   U28 : AN3 port map( A => n255, B => n146, C => n156, Z => n101);
   U29 : AN3 port map( A => n255, B => n146, C => n254, Z => n100);
   U30 : AN3 port map( A => n156, B => n146, C => n166, Z => n103);
   U31 : AN3 port map( A => n254, B => n146, C => n166, Z => n102);
   U32 : IVI port map( A => reset, Z => n260);
   U33 : AO4 port map( A => n256, B => n86, C => n5, D => n89, Z => n146);
   U34 : AO2 port map( A => n5, B => rx_in_addr_q_0_port, C => n256, D => 
                           rx_out_addr_q_0_port, Z => n156);
   U35 : AO2 port map( A => n5, B => rx_in_addr_q_1_port, C => n256, D => 
                           rx_out_addr_q_1_port, Z => n166);
   U36 : AO2 port map( A => n10, B => rx_func_data(0), C => n33, D => 
                           ram_7_0_port, Z => n136);
   U37 : AO2 port map( A => n10, B => rx_func_data(1), C => n33, D => 
                           ram_7_1_port, Z => n138);
   U38 : AO2 port map( A => n10, B => rx_func_data(2), C => n33, D => 
                           ram_7_2_port, Z => n139);
   U39 : AO2 port map( A => n10, B => rx_func_data(3), C => n33, D => 
                           ram_7_3_port, Z => n140);
   U40 : AO2 port map( A => n10, B => rx_func_data(4), C => n33, D => 
                           ram_7_4_port, Z => n141);
   U41 : AO2 port map( A => n10, B => rx_func_data(5), C => n33, D => 
                           ram_7_5_port, Z => n142);
   U42 : AO2 port map( A => n10, B => rx_func_data(6), C => n33, D => 
                           ram_7_6_port, Z => n143);
   U43 : AO2 port map( A => n10, B => rx_func_data(7), C => n33, D => 
                           ram_7_7_port, Z => n144);
   U44 : AO2 port map( A => rx_func_data(0), B => n16, C => n32, D => 
                           ram_6_0_port, Z => n147);
   U45 : AO2 port map( A => rx_func_data(1), B => n16, C => n32, D => 
                           ram_6_1_port, Z => n149);
   U46 : AO2 port map( A => rx_func_data(2), B => n16, C => n32, D => 
                           ram_6_2_port, Z => n150);
   U47 : AO2 port map( A => rx_func_data(3), B => n16, C => n32, D => 
                           ram_6_3_port, Z => n151);
   U48 : AO2 port map( A => rx_func_data(4), B => n16, C => n32, D => 
                           ram_6_4_port, Z => n152);
   U49 : AO2 port map( A => rx_func_data(5), B => n16, C => n32, D => 
                           ram_6_5_port, Z => n153);
   U50 : AO2 port map( A => rx_func_data(6), B => n16, C => n32, D => 
                           ram_6_6_port, Z => n154);
   U51 : AO2 port map( A => rx_func_data(7), B => n16, C => n32, D => 
                           ram_6_7_port, Z => n155);
   U53 : AO2 port map( A => rx_func_data(0), B => n11, C => n31, D => 
                           ram_5_0_port, Z => n157);
   U54 : AO2 port map( A => rx_func_data(1), B => n11, C => n31, D => 
                           ram_5_1_port, Z => n159);
   U55 : AO2 port map( A => rx_func_data(2), B => n11, C => n31, D => 
                           ram_5_2_port, Z => n160);
   U56 : AO2 port map( A => rx_func_data(3), B => n11, C => n31, D => 
                           ram_5_3_port, Z => n161);
   U57 : AO2 port map( A => rx_func_data(4), B => n11, C => n31, D => 
                           ram_5_4_port, Z => n162);
   U58 : AO2 port map( A => rx_func_data(5), B => n11, C => n31, D => 
                           ram_5_5_port, Z => n163);
   U59 : AO2 port map( A => rx_func_data(6), B => n11, C => n31, D => 
                           ram_5_6_port, Z => n164);
   U60 : AO2 port map( A => rx_func_data(7), B => n11, C => n31, D => 
                           ram_5_7_port, Z => n165);
   U62 : AO2 port map( A => rx_func_data(0), B => n17, C => n30, D => 
                           ram_4_0_port, Z => n167);
   U63 : AO2 port map( A => rx_func_data(1), B => n17, C => n30, D => 
                           ram_4_1_port, Z => n169);
   U64 : AO2 port map( A => rx_func_data(2), B => n17, C => n30, D => 
                           ram_4_2_port, Z => n170);
   U65 : AO2 port map( A => rx_func_data(3), B => n17, C => n30, D => 
                           ram_4_3_port, Z => n171);
   U66 : AO2 port map( A => rx_func_data(4), B => n17, C => n30, D => 
                           ram_4_4_port, Z => n172);
   U67 : AO2 port map( A => rx_func_data(5), B => n17, C => n30, D => 
                           ram_4_5_port, Z => n173);
   U68 : AO2 port map( A => rx_func_data(6), B => n17, C => n30, D => 
                           ram_4_6_port, Z => n174);
   U69 : AO2 port map( A => rx_func_data(7), B => n17, C => n30, D => 
                           ram_4_7_port, Z => n175);
   U71 : AO2 port map( A => rx_func_data(0), B => n12, C => n28, D => 
                           ram_2_0_port, Z => n185);
   U72 : AO2 port map( A => rx_func_data(1), B => n12, C => n28, D => 
                           ram_2_1_port, Z => n187);
   U73 : AO2 port map( A => rx_func_data(2), B => n12, C => n28, D => 
                           ram_2_2_port, Z => n188);
   U74 : AO2 port map( A => rx_func_data(3), B => n12, C => n28, D => 
                           ram_2_3_port, Z => n189);
   U75 : AO2 port map( A => rx_func_data(4), B => n12, C => n28, D => 
                           ram_2_4_port, Z => n190);
   U76 : AO2 port map( A => rx_func_data(5), B => n12, C => n28, D => 
                           ram_2_5_port, Z => n191);
   U77 : AO2 port map( A => rx_func_data(6), B => n12, C => n28, D => 
                           ram_2_6_port, Z => n192);
   U78 : AO2 port map( A => rx_func_data(7), B => n12, C => n28, D => 
                           ram_2_7_port, Z => n193);
   U80 : AO2 port map( A => rx_func_data(0), B => n13, C => n27, D => 
                           ram_1_0_port, Z => n194);
   U81 : AO2 port map( A => rx_func_data(1), B => n13, C => n27, D => 
                           ram_1_1_port, Z => n196);
   U82 : AO2 port map( A => rx_func_data(2), B => n13, C => n27, D => 
                           ram_1_2_port, Z => n197);
   U83 : AO2 port map( A => rx_func_data(3), B => n13, C => n27, D => 
                           ram_1_3_port, Z => n198);
   U84 : AO2 port map( A => rx_func_data(4), B => n13, C => n27, D => 
                           ram_1_4_port, Z => n199);
   U85 : AO2 port map( A => rx_func_data(5), B => n13, C => n27, D => 
                           ram_1_5_port, Z => n200);
   U86 : AO2 port map( A => rx_func_data(6), B => n13, C => n27, D => 
                           ram_1_6_port, Z => n201);
   U87 : AO2 port map( A => rx_func_data(7), B => n13, C => n27, D => 
                           ram_1_7_port, Z => n202);
   U89 : AO2 port map( A => rx_func_data(0), B => n14, C => n26, D => 
                           ram_0_0_port, Z => n203);
   U90 : AO2 port map( A => rx_func_data(1), B => n14, C => n26, D => 
                           ram_0_1_port, Z => n205);
   U91 : AO2 port map( A => rx_func_data(2), B => n14, C => n26, D => 
                           ram_0_2_port, Z => n206);
   U92 : AO2 port map( A => rx_func_data(3), B => n14, C => n26, D => 
                           ram_0_3_port, Z => n207);
   U93 : AO2 port map( A => rx_func_data(4), B => n14, C => n26, D => 
                           ram_0_4_port, Z => n208);
   U94 : AO2 port map( A => rx_func_data(5), B => n14, C => n26, D => 
                           ram_0_5_port, Z => n209);
   U95 : AO2 port map( A => rx_func_data(6), B => n14, C => n26, D => 
                           ram_0_6_port, Z => n210);
   U96 : AO2 port map( A => rx_func_data(7), B => n14, C => n26, D => 
                           ram_0_7_port, Z => n211);
   U97 : AO2 port map( A => rx_func_data(0), B => n15, C => n29, D => 
                           ram_3_0_port, Z => n176);
   U99 : AO2 port map( A => rx_func_data(1), B => n15, C => n29, D => 
                           ram_3_1_port, Z => n178);
   U100 : AO2 port map( A => rx_func_data(2), B => n15, C => n29, D => 
                           ram_3_2_port, Z => n179);
   U101 : AO2 port map( A => rx_func_data(3), B => n15, C => n29, D => 
                           ram_3_3_port, Z => n180);
   U102 : AO2 port map( A => rx_func_data(4), B => n15, C => n29, D => 
                           ram_3_4_port, Z => n181);
   U103 : AO2 port map( A => rx_func_data(5), B => n15, C => n29, D => 
                           ram_3_5_port, Z => n182);
   U104 : AO2 port map( A => rx_func_data(6), B => n15, C => n29, D => 
                           ram_3_6_port, Z => n183);
   U105 : AO2 port map( A => rx_func_data(7), B => n15, C => n29, D => 
                           ram_3_7_port, Z => n184);
   U106 : NR3 port map( A => rx_fifo_entries_free_0_port, B => n261, C => n233,
                           Z => n232);
   U107 : AO6 port map( A => n88, B => n260, C => n222, Z => n221);
   U109 : EON1 port map( A => n218, B => n219, C => n220, D => 
                           rx_in_addr_q_2_port, Z => n242);
   U110 : AO7 port map( A => reset, B => rx_in_addr_q_1_port, C => n221, Z => 
                           n220);
   U111 : AO4 port map( A => n221, B => n87, C => rx_in_addr_q_1_port, D => 
                           n218, Z => n243);
   U112 : AO4 port map( A => n230, B => n81, C => rx_fifo_entries_free_2_port, 
                           D => n231, Z => fifo_entries_back_d_2_port);
   U113 : AO2 port map( A => n216, B => n233, C => n228, D => n260, Z => n230);
   U114 : AO6 port map( A => n227, B => n260, C => n232, Z => n231);
   U115 : AO3 port map( A => n234, B => n82, C => n235, D => n257, Z => 
                           fifo_entries_back_d_1_port);
   U116 : ND4 port map( A => rx_fifo_entries_free_0_port, B => read_rx_data, C 
                           => n260, D => n82, Z => n235);
   U117 : AO6 port map( A => n216, B => n236, C => n237, Z => n234);
   U119 : AO3 port map( A => n225, B => n3, C => n226, D => n260, Z => 
                           fifo_entries_back_d_3_port);
   U120 : ND3 port map( A => n227, B => n3, C => rx_fifo_entries_free_2_port, Z
                           => n226);
   U121 : AO6 port map( A => n5, B => n81, C => read_rx_data, Z => n229);
   U122 : AO3 port map( A => reset, B => n236, C => n238, D => n259, Z => 
                           fifo_entries_back_d_0_port);
   U123 : ND3 port map( A => n256, B => n216, C => rx_fifo_entries_free_0_port,
                           Z => n238);
   U124 : AO6 port map( A => n91, B => n260, C => n216, Z => n215);
   U126 : ND3 port map( A => n260, B => n261, C => rx_out_addr_q_0_port, Z => 
                           n212);
   U127 : EON1 port map( A => n212, B => n213, C => n214, D => 
                           rx_out_addr_q_2_port, Z => n239);
   U128 : AO7 port map( A => reset, B => rx_out_addr_q_1_port, C => n215, Z => 
                           n214);
   U129 : AO4 port map( A => n88, B => n258, C => n222, D => n223, Z => n244);
   U131 : AO4 port map( A => n215, B => n90, C => rx_out_addr_q_1_port, D => 
                           n212, Z => n240);
   U132 : AO4 port map( A => n91, B => n261, C => n216, D => n217, Z => n241);
   U134 : NR3 port map( A => rx_fifo_entries_free_0_port, B => reset, C => n262
                           , Z => n237);
   U135 : AO4 port map( A => rx_fifo_entries_free_1_port, B => n84, C => 
                           rx_fifo_entries_free_0_port, D => n262, Z => n228);
   U136 : AO2 port map( A => ram_7_1_port, B => n24, C => ram_6_1_port, D => 
                           n22, Z => n131);
   U141 : AO2 port map( A => ram_5_1_port, B => n20, C => ram_4_1_port, D => 
                           n18, Z => n130);
   U142 : AO2 port map( A => ram_7_2_port, B => n24, C => ram_6_2_port, D => 
                           n22, Z => n127);
   U144 : AO2 port map( A => ram_5_2_port, B => n20, C => ram_4_2_port, D => 
                           n18, Z => n126);
   U145 : AO2 port map( A => ram_7_3_port, B => n24, C => ram_6_3_port, D => 
                           n22, Z => n123);
   U146 : AO2 port map( A => ram_5_3_port, B => n20, C => ram_4_3_port, D => 
                           n18, Z => n122);
   U147 : AO2 port map( A => ram_7_4_port, B => n25, C => ram_6_4_port, D => 
                           n23, Z => n119);
   U148 : AO2 port map( A => ram_5_4_port, B => n21, C => ram_4_4_port, D => 
                           n19, Z => n118);
   U149 : AO2 port map( A => ram_7_0_port, B => n24, C => ram_6_0_port, D => 
                           n22, Z => n135);
   U150 : AO2 port map( A => ram_7_5_port, B => n25, C => ram_6_5_port, D => 
                           n23, Z => n115);
   U152 : AO2 port map( A => ram_5_5_port, B => n21, C => ram_4_5_port, D => 
                           n19, Z => n114);
   U153 : AO2 port map( A => ram_3_5_port, B => n9, C => ram_2_5_port, D => n6,
                           Z => n113);
   U154 : AO2 port map( A => ram_7_6_port, B => n25, C => ram_6_6_port, D => 
                           n23, Z => n111);
   U155 : AO2 port map( A => ram_5_6_port, B => n21, C => ram_4_6_port, D => 
                           n19, Z => n110);
   U156 : AO2 port map( A => ram_3_6_port, B => n9, C => ram_2_6_port, D => n6,
                           Z => n109);
   U159 : AO2 port map( A => ram_7_7_port, B => n25, C => ram_6_7_port, D => 
                           n23, Z => n99);
   U161 : AO2 port map( A => ram_5_7_port, B => n21, C => ram_4_7_port, D => 
                           n19, Z => n98);
   U162 : AO2 port map( A => ram_3_7_port, B => n9, C => ram_2_7_port, D => n6,
                           Z => n97);
   U163 : ND4 port map( A => n128, B => n129, C => n130, D => n131, Z => 
                           rx_data(1));
   U164 : AO2 port map( A => ram_1_1_port, B => n8, C => ram_0_1_port, D => n7,
                           Z => n128);
   U165 : AO2 port map( A => ram_3_1_port, B => n9, C => ram_2_1_port, D => n6,
                           Z => n129);
   U166 : ND4 port map( A => n124, B => n125, C => n126, D => n127, Z => 
                           rx_data(2));
   U167 : AO2 port map( A => ram_1_2_port, B => n8, C => ram_0_2_port, D => n7,
                           Z => n124);
   U168 : AO2 port map( A => ram_3_2_port, B => n9, C => ram_2_2_port, D => n6,
                           Z => n125);
   U169 : ND4 port map( A => n120, B => n121, C => n122, D => n123, Z => 
                           rx_data(3));
   U170 : AO2 port map( A => ram_1_3_port, B => n8, C => ram_0_3_port, D => n7,
                           Z => n120);
   U171 : AO2 port map( A => ram_3_3_port, B => n9, C => ram_2_3_port, D => n6,
                           Z => n121);
   U172 : ND4 port map( A => n116, B => n117, C => n118, D => n119, Z => 
                           rx_data(4));
   U173 : AO2 port map( A => ram_1_4_port, B => n8, C => ram_0_4_port, D => n7,
                           Z => n116);
   U174 : AO2 port map( A => ram_3_4_port, B => n9, C => ram_2_4_port, D => n6,
                           Z => n117);
   U175 : ND4 port map( A => n132, B => n133, C => n134, D => n135, Z => 
                           rx_data(0));
   U176 : AO2 port map( A => ram_1_0_port, B => n8, C => ram_0_0_port, D => n7,
                           Z => n132);
   U177 : AO2 port map( A => ram_3_0_port, B => n9, C => ram_2_0_port, D => n6,
                           Z => n133);
   U178 : AO2 port map( A => ram_5_0_port, B => n20, C => ram_4_0_port, D => 
                           n18, Z => n134);
   U179 : ND4 port map( A => n112, B => n113, C => n114, D => n115, Z => 
                           rx_data(5));
   U180 : AO2 port map( A => ram_1_5_port, B => n8, C => ram_0_5_port, D => n7,
                           Z => n112);
   U181 : ND4 port map( A => n108, B => n109, C => n110, D => n111, Z => 
                           rx_data(6));
   U182 : AO2 port map( A => ram_1_6_port, B => n8, C => ram_0_6_port, D => n7,
                           Z => n108);
   U183 : ND4 port map( A => n96, B => n97, C => n98, D => n99, Z => rx_data(7)
                           );
   U184 : AO2 port map( A => ram_1_7_port, B => n8, C => ram_0_7_port, D => n7,
                           Z => n96);
   U185 : IVI port map( A => n203, Z => n34);
   U186 : IVI port map( A => n205, Z => n35);
   U187 : IVI port map( A => n206, Z => n36);
   U188 : IVI port map( A => n207, Z => n37);
   U189 : IVI port map( A => n208, Z => n38);
   U190 : IVI port map( A => n209, Z => n39);
   U191 : IVI port map( A => n210, Z => n40);
   U192 : IVI port map( A => n211, Z => n41);
   U193 : IVI port map( A => n194, Z => n42);
   U194 : IVI port map( A => n196, Z => n43);
   U195 : IVI port map( A => n197, Z => n44);
   U196 : IVI port map( A => n198, Z => n45);
   U197 : IVI port map( A => n199, Z => n46);
   U198 : IVI port map( A => n200, Z => n47);
   U199 : IVI port map( A => n201, Z => n48);
   U200 : IVI port map( A => n202, Z => n49);
   U201 : IVI port map( A => n185, Z => n50);
   U202 : IVI port map( A => n187, Z => n51);
   U203 : IVI port map( A => n188, Z => n52);
   U204 : IVI port map( A => n189, Z => n53);
   U205 : IVI port map( A => n190, Z => n54);
   U206 : IVI port map( A => n191, Z => n55);
   U207 : IVI port map( A => n192, Z => n56);
   U208 : IVI port map( A => n193, Z => n57);
   U209 : IVI port map( A => n176, Z => n58);
   U210 : IVI port map( A => n178, Z => n59);
   U211 : IVI port map( A => n179, Z => n60);
   U212 : IVI port map( A => n180, Z => n61);
   U213 : IVI port map( A => n181, Z => n62);
   U214 : IVI port map( A => n182, Z => n63);
   U215 : IVI port map( A => n183, Z => n64);
   U216 : IVI port map( A => n184, Z => n65);
   U217 : IVI port map( A => n167, Z => n66);
   U218 : IVI port map( A => n169, Z => n67);
   U219 : IVI port map( A => n170, Z => n68);
   U220 : IVI port map( A => n171, Z => n69);
   U221 : IVI port map( A => n172, Z => n70);
   U222 : IVI port map( A => n173, Z => n71);
   U223 : IVI port map( A => n174, Z => n72);
   U224 : IVI port map( A => n175, Z => n73);
   U225 : IVI port map( A => n157, Z => n74);
   U226 : IVI port map( A => n159, Z => n75);
   U227 : IVI port map( A => n160, Z => n76);
   U228 : IVI port map( A => n161, Z => n77);
   U229 : IVI port map( A => n162, Z => n78);
   U230 : IVI port map( A => n163, Z => n79);
   U231 : IVI port map( A => n164, Z => n80);
   U232 : IVI port map( A => n165, Z => n83);
   U233 : IVI port map( A => n147, Z => n92);
   U234 : IVI port map( A => n149, Z => n93);
   U235 : IVI port map( A => n150, Z => n94);
   U236 : IVI port map( A => n151, Z => n104);
   U237 : IVI port map( A => n152, Z => n105);
   U238 : IVI port map( A => n153, Z => n106);
   U239 : IVI port map( A => n154, Z => n107);
   U240 : IVI port map( A => n155, Z => n145);
   U241 : IVI port map( A => n136, Z => n246);
   U242 : IVI port map( A => n138, Z => n247);
   U243 : IVI port map( A => n139, Z => n248);
   U244 : IVI port map( A => n140, Z => n249);
   U245 : IVI port map( A => n141, Z => n250);
   U249 : IVI port map( A => n142, Z => n251);
   U250 : IVI port map( A => n143, Z => n252);
   U251 : IVI port map( A => n144, Z => n253);
   U252 : IVI port map( A => n156, Z => n254);
   U253 : IVI port map( A => n166, Z => n255);
   U254 : IVI port map( A => n5, Z => n256);
   U255 : IVI port map( A => n232, Z => n257);
   U256 : IVI port map( A => n222, Z => n258);
   U257 : IVI port map( A => n237, Z => n259);
   U258 : IVI port map( A => n216, Z => n261);
   U259 : IVI port map( A => read_rx_data, Z => n262);

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
      n159, n160, n_1147, n_1148, n_1149, n_1150, n_1151, n_1152, n_1153, 
      n_1154, n_1155, n_1156, n400: std_logic;

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
   data_q_reg_7_inst : FD1 port map( D => n123_port, CP => clk, Q => n_1147, QN
                           => n143);
   data_q_reg_6_inst : FD1 port map( D => n122_port, CP => clk, Q => n_1148, QN
                           => n115_port);
   data_q_reg_5_inst : FD1 port map( D => n121_port, CP => clk, Q => n_1149, QN
                           => n114);
   data_q_reg_4_inst : FD1 port map( D => n120_port, CP => clk, Q => n_1150, QN
                           => n144);
   data_q_reg_3_inst : FD1 port map( D => n119_port, CP => clk, Q => n_1151, QN
                           => n113);
   data_q_reg_2_inst : FD1 port map( D => n118_port, CP => clk, Q => n_1152, QN
                           => n112);
   data_q_reg_1_inst : FD1 port map( D => n117, CP => clk, Q => n12, QN => n111
                           );
   data_q_reg_0_inst : FD1 port map( D => n116, CP => clk, Q => n_1153, QN => 
                           n110);
   U22 : AN3 port map( A => n141, B => n4, C => n158, Z => n30);
   U74 : OR3 port map( A => n1, B => n141, C => n4, Z => n70);
   U79 : AN3 port map( A => n142, B => n77, C => n139, Z => n76);
   U83 : OR3 port map( A => n33, B => word_width(0), C => n68, Z => n79);
   U85 : AN3 port map( A => n154, B => word_width(0), C => use_parity_bit, Z =>
                           n81);
   U97 : AN4 port map( A => n89, B => n14, C => n153, D => n33, Z => n84);
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
   U92 : ND2I port map( A => n157, B => n82, Z => n55);
   U95 : AN2I port map( A => transmit_data, B => n151, Z => n35);
   U98 : ND2I port map( A => n90, B => n4, Z => n33);
   U105 : NR2I port map( A => n10, B => n139, Z => n87);
   U111 : ND2I port map( A => n90, B => n142, Z => n3);
   U112 : NR2I port map( A => n77, B => n1, Z => n90);
   U113 : ND2I port map( A => n10, B => n2, Z => n77);
   U116 : NR2I port map( A => N118, B => n38, Z => n93);
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
   U3 : IVDA port map( A => n35, Y => n_1154, Z => n26);
   U5 : IVDA port map( A => n35, Y => n_1155, Z => n16);
   U6 : IVDA port map( A => n35, Y => n_1156, Z => n22);
   U7 : IVI port map( A => n38, Z => n13);
   U8 : IVI port map( A => n92, Z => n83);
   U17 : AO6 port map( A => n88, B => n155, C => n71, Z => n89);
   U19 : NR3 port map( A => N115, B => reset, C => n26, Z => n63);
   U21 : AO6 port map( A => sending_port, B => n9, C => n158, Z => n8);
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
   U32 : EON1 port map( A => n95, B => n83, C => N133, D => n13, Z => n124_port
                           );
   U33 : EON1 port map( A => n109, B => n83, C => N132, D => n13, Z => n138);
   U34 : ND3 port map( A => n140, B => n61, C => n142, Z => sending_port);
   U35 : EON1 port map( A => n108, B => n83, C => N131, D => n13, Z => n137);
   U36 : AO4 port map( A => n141, B => n82, C => n65, D => n55, Z => n146);
   U37 : AO3 port map( A => n68, B => n69, C => n152, D => n70, Z => n66);
   U38 : AO4 port map( A => n142, B => n82, C => n73, D => n55, Z => n147);
   U39 : NR4 port map( A => n74, B => n75, C => n71, D => n76, Z => n73);
   U40 : AO4 port map( A => n140, B => n53, C => n54, D => n55, Z => n145);
   U41 : AO2 port map( A => n56, B => n11, C => n88, D => n58, Z => n54);
   U42 : AO6 port map( A => n61, B => n157, C => n63, Z => n53);
   U43 : EON1 port map( A => n106, B => n83, C => N129, D => n13, Z => n135);
   U44 : AO3 port map( A => n84, B => n55, C => n85, D => n86, Z => n148);
   U45 : ND4 port map( A => stop_bits(1), B => n87, C => n157, D => n159, Z => 
                           n85);
   U46 : EON1 port map( A => n107, B => n83, C => N130, D => n13, Z => n136);
   U47 : EON1 port map( A => n96, B => n83, C => N119, D => n13, Z => n125_port
                           );
   U48 : EON1 port map( A => n97, B => n83, C => N127, D => n13, Z => n126_port
                           );
   U49 : EON1 port map( A => n98, B => n83, C => N121, D => n13, Z => n127_port
                           );
   U50 : EON1 port map( A => n99, B => n83, C => N122, D => n13, Z => n128_port
                           );
   U51 : EON1 port map( A => n100, B => n83, C => N123, D => n13, Z => 
                           n129_port);
   U52 : EON1 port map( A => n101, B => n83, C => N124, D => n13, Z => 
                           n130_port);
						   
						   
   U53 : EON1 port map( A => n102, B => n83, C => N120, D => n13, Z => 
                           n131_port);
   U54 : EON1 port map( A => n103, B => n83, C => N126, D => n13, Z => 
                           n132_port);
   U55 : EON1 port map( A => n104, B => n83, C => N125, D => n13, Z => 
                           n133_port);
   U56 : EON1 port map( A => n105, B => n83, C => N128, D => n13, Z => n134);
   
   U400: IVI port map ( A => n83, z => n400);
   U57 : AO4 port map( A => n94, B => n83, C => n400, D => n93, Z => n149);
   U58 : AO6 port map( A => n91, B => n3, C => use_parity_bit, Z => n75);
   U59 : AO4 port map( A => n155, B => n3, C => n81, D => n153, Z => n74);
   U60 : ND3 port map( A => n141, B => n4, C => n87, Z => n14);
   U61 : ND3 port map( A => word_width(2), B => n156, C => word_width(1), Z => 
                           n68);
   U62 : ND4 port map( A => word_width(2), B => word_width(0), C => n160, D => 
                           n156, Z => n58);
   U63 : AO6 port map( A => stop_bits(1), B => n159, C => n139, Z => n59);
   U64 : NR3 port map( A => n4, B => n110, C => n141, Z => n31);
   U65 : AO4 port map( A => n143, B => n14, C => n15, D => n152, Z => n7);
   U66 : AO4 port map( A => n25, B => n10, C => n2, D => n27, Z => n6);
   U69 : AO4 port map( A => n112, B => n4, C => n113, D => n142, Z => n28);
   U70 : AO3 port map( A => n144, B => n3, C => n150, D => n5, Z => tx);
   U71 : AO4 port map( A => n33, B => n114, C => n153, D => n115_port, Z => n32
                           );
   U73 : OR2P port map( A => n151, B => N115, Z => n38);
   U75 : EN port map( A => baud_period(2), B => baud_counter_q_2_port, Z => n40
                           );
   U77 : EN port map( A => baud_period(15), B => baud_counter_q_15_port, Z => 
                           n39);
   U78 : ND2 port map( A => baud_counter_q_0_port, B => n78, Z => n29);
   U80 : AO2 port map( A => n96, B => n29, C => n29, D => baud_period(1), Z => 
                           n34);
   U81 : NR2 port map( A => n78, B => baud_counter_q_0_port, Z => n36);
   U84 : AO4 port map( A => n36, B => n96, C => baud_period(1), D => n36, Z => 
                           n37);
   U86 : ND4 port map( A => n40, B => n39, C => n80, D => n37, Z => n64);
   U87 : EN port map( A => baud_period(6), B => baud_counter_q_6_port, Z => n44
                           );
   U88 : EN port map( A => baud_period(5), B => baud_counter_q_5_port, Z => n43
                           );
   U90 : EN port map( A => baud_period(4), B => baud_counter_q_4_port, Z => n42
                           );
   U91 : EN port map( A => baud_period(3), B => baud_counter_q_3_port, Z => n41
                           );
   U93 : ND4 port map( A => n44, B => n43, C => n42, D => n41, Z => n62);
   U94 : EN port map( A => baud_period(10), B => baud_counter_q_10_port, Z => 
                           n48);
   U96 : EN port map( A => baud_period(9), B => baud_counter_q_9_port, Z => n47
                           );
   U99 : EN port map( A => baud_period(8), B => baud_counter_q_8_port, Z => n46
                           );
   U101 : EN port map( A => baud_period(7), B => baud_counter_q_7_port, Z => 
                           n45);
   U102 : ND4 port map( A => n48, B => n47, C => n46, D => n45, Z => n60);
   U103 : EN port map( A => baud_period(14), B => baud_counter_q_14_port, Z => 
                           n52);
   U106 : EN port map( A => baud_period(13), B => baud_counter_q_13_port, Z => 
                           n51);
   U107 : EN port map( A => baud_period(12), B => baud_counter_q_12_port, Z => 
                           n50);
   U108 : EN port map( A => baud_period(11), B => baud_counter_q_11_port, Z => 
                           n49);
   U109 : ND4 port map( A => n52, B => n51, C => n50, D => n49, Z => n57);
   U110 : NR4 port map( A => n64, B => n62, C => n60, D => n57, Z => N115);
   U114 : IVI port map( A => baud_period(0), Z => n78);
   U115 : IVI port map( A => n34, Z => n80);
   U117 : IVI port map( A => n63, Z => n82);
   U118 : IVI port map( A => n3, Z => n88);
   U119 : IVI port map( A => n67, Z => n91);
   U121 : IVI port map( A => n32, Z => n150);
   U123 : IVI port map( A => sending_port, Z => n151);
   U124 : IVI port map( A => n71, Z => n152);
   U125 : IVI port map( A => n72, Z => n153);
   U126 : IVI port map( A => n68, Z => n154);
   U127 : IVI port map( A => n58, Z => n155);
   U128 : IVI port map( A => word_width(3), Z => n156);
   U129 : IVI port map( A => reset, Z => n157);
   U130 : IVI port map( A => idle_line_lvl, Z => n158);
   U131 : IVI port map( A => stop_bits(0), Z => n159);
   U132 : IVI port map( A => word_width(1), Z => n160);

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
   
   component ND4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
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
   
   component IV
      port( A : in std_logic;  Z : out std_logic);
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
   
   component EON1
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component NR3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component AO7
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component AO3
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component IVDA
      port( A : in std_logic;  Y, Z : out std_logic);
   end component;
   
   component EO1
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
   
   component AN2I
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NR2I
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component ND2I
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component EOI
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO1P
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component ENI
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OR3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component FD1
      port( D, CP : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal period16_count_q_11_port, period16_count_q_10_port, 
      period16_count_q_9_port, period16_count_q_8_port, period16_count_q_7_port
      , period16_count_q_6_port, period16_count_q_5_port, 
      period16_count_q_4_port, period16_count_q_3_port, period16_count_q_2_port
      , period16_count_q_1_port, period16_count_q_0_port, N114, N118, N119, 
      N120, N121, N122, N123, N124, N125, N126, N127, N128, N129, 
      period_count_q_15_port, period_count_q_14_port, period_count_q_13_port, 
      period_count_q_12_port, period_count_q_11_port, period_count_q_10_port, 
      period_count_q_9_port, period_count_q_8_port, period_count_q_7_port, 
      period_count_q_6_port, period_count_q_5_port, period_count_q_4_port, 
      period_count_q_3_port, period_count_q_2_port, period_count_q_1_port, 
      period_count_q_0_port, N140, N144, N145, N146, N147, N148, N149, N150, 
      N151, N152, N153, N154, N155, N156, N157, N158, rx_sampled_q, 
      xored_sampled_data_bit_q, sampled_data_9_port, n13, n14, n15, n16, n19, 
      n27, n29, n30, n31, n34, n36, n38, n40, n41, n42, n44, n45, n46, n47, n48
      , n49, n50, n51, n55, n56, n57, n58, n61, n62, n64, n65, n66, n69, n70, 
      n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n84, n85, n86, n87, n88
      , n89, n90, n94, n95, n96, n97, n99, n100, n101, n102, n103, n104, n105, 
      n106, n107, n108, n109, n110, n111, n113, n114_port, n115, n116, n117, 
      n118_port, n119_port, n120_port, n121_port, n126_port, n127_port, 
      n128_port, n130, n131, n132, n133, n134, n135, n137, n138, n140_port, 
      n142, n143, n144_port, n145_port, n146_port, n148_port, n149_port, 
      n150_port, n151_port, n152_port, n156_port, n157_port, n158_port, n159, 
      n160, n163, n164, n166, n167, n168, n170, n171, n172, n173, n175, n176, 
      n177, n178, n179, n180, n182, n183, n184, n185, n186, n187, n188, n189, 
      n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, 
      n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, 
      n214, n215, n216, n217, n218, n220, n226, n227, n228, n229, n230, n231, 
      n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, 
      n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, 
      n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, 
      n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, 
      n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, 
      n292, n293, n294, n295, n296, n297, n1, n2, n3, n4, n5, n6, n7, n8, n9, 
      n10, n11, n12, n17, n18, n20, n21, n22, n23, n24, n25, n26, n28, n32, n33
      , n35, n37, n39, n43, n52, n53, n54, n59, n60, n63, n67, n68, n71, n82, 
      n83, n91, n92, n93, n98, n112, n122_port, n123_port, n124_port, n125_port
      , n129_port, n136, n139, n141, n147_port, n153_port, n154_port, n155_port
      , n161, n162, n165, n169, n174, n181, n219, n221, n222, n223, n224, n225,
      n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, 
      n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, 
      n322, n323, n324, n325, n326, n327, n328, n_1157, n_1158, n_1159, n_1160,
      n_1161, n_1162, n_1163, n_1164, n_1165, n_1166, n_1167, n_1168, n_1169, 
      n_1170, n_1171, n_1172, n_1173, n_1174: std_logic;

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
                           n233, QN => n20);
   sample_reg_start_bit_q_reg_1_inst : FD1 port map( D => n258, CP => clk, Q =>
                           n232, QN => n2);
   sample_reg_start_bit_q_reg_3_inst : FD1 port map( D => n257, CP => clk, Q =>
                           n231, QN => n10);
   sample_reg_start_bit_q_reg_2_inst : FD1 port map( D => n256, CP => clk, Q =>
                           n230, QN => n4);
   sample_reg_q_reg_0_inst : FD1 port map( D => n255, CP => clk, Q => n229, QN 
                           => n6);
   sample_reg_q_reg_1_inst : FD1 port map( D => n254, CP => clk, Q => n228, QN 
                           => n17);
   sample_reg_q_reg_3_inst : FD1 port map( D => n253, CP => clk, Q => n227, QN 
                           => n18);
   sample_reg_q_reg_2_inst : FD1 port map( D => n252, CP => clk, Q => n226, QN 
                           => n12);
   rx_sampled_q_reg : FD1 port map( D => n296, CP => clk, Q => rx_sampled_q, QN
                           => n21);
   current_state_reg_0_inst : FD1 port map( D => n295, CP => clk, Q => n5, QN 
                           => n289);
   current_state_reg_3_inst : FD1 port map( D => n294, CP => clk, Q => n7, QN 
                           => n286);
   current_state_reg_1_inst : FD1 port map( D => n293, CP => clk, Q => n3, QN 
                           => n288);
   current_state_reg_2_inst : FD1 port map( D => n292, CP => clk, Q => n11, QN 
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
                           sampled_data_9_port, QN => n_1157);
   sampled_data_reg_8_inst : FD1 port map( D => n250, CP => clk, Q => n_1158, 
                           QN => n22);
   sampled_data_reg_7_inst : FD1 port map( D => n249, CP => clk, Q => n_1159, 
                           QN => n32);
   sampled_data_reg_6_inst : FD1 port map( D => n248, CP => clk, Q => n_1160, 
                           QN => n28);
   sampled_data_reg_5_inst : FD1 port map( D => n247, CP => clk, Q => n_1161, 
                           QN => n26);
   sampled_data_reg_4_inst : FD1 port map( D => n246, CP => clk, Q => n_1162, 
                           QN => n25);
   sampled_data_reg_3_inst : FD1 port map( D => n245, CP => clk, Q => n_1163, 
                           QN => n24);
   sampled_data_reg_2_inst : FD1 port map( D => n244, CP => clk, Q => n220, QN 
                           => n_1164);
   sampled_data_reg_1_inst : FD1 port map( D => n243, CP => clk, Q => n_1165, 
                           QN => n23);
   sampled_data_reg_0_inst : FD1 port map( D => n242, CP => clk, Q => n218, QN 
                           => n_1166);
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
                           xored_sampled_data_bit_q, QN => n_1167);
   U4 : OR3 port map( A => n16, B => stop_bits(0), C => n324, Z => n14);
   U30 : AN3 port map( A => n1, B => n11, C => n317, Z => n38);
   U51 : AN3 port map( A => n58, B => n17, C => n6, Z => n56);
   U55 : AN3 port map( A => n229, B => n228, C => n65, Z => n57);
   U57 : AN3 port map( A => n226, B => n328, C => n321, Z => n66);
   U61 : OR2 port map( A => n73, B => n228, Z => n72);
   U65 : AN3 port map( A => n321, B => n328, C => n76, Z => n58);
   U71 : AN3 port map( A => n81, B => n321, C => rx, Z => n65);
   U93 : OR3 port map( A => reset, B => n105, C => n106, Z => n94);
   U153 : OR3 port map( A => n288, B => n11, C => n31, Z => n148_port);
   U175 : OR3 port map( A => stop_bits(0), B => n324, C => n49, Z => n149_port)
                           ;
   U190 : OR3 port map( A => n7, B => n289, C => n166, Z => n45);
   U196 : OR3 port map( A => n170, B => n1, C => n171, Z => n130);
   U198 : OR2 port map( A => n119_port, B => n110, Z => n172);
   U228 : AN3 port map( A => N114, B => n321, C => period16_count_q_0_port, Z 
                           => n180);
   U5 : ENI port map( A => sampled_data_9_port, B => idle_line_lvl, Z => n16);
   U6 : EOI port map( A => idle_line_lvl, B => n22, Z => n13);
   U7 : NR2I port map( A => n19, B => n37, Z => parity_error);
   U8 : ENI port map( A => xored_sampled_data_bit_q, B => parity_type, Z => n19
                           );
   U21 : ND2I port map( A => n29, B => n288, Z => n27);
   U26 : ND2I port map( A => n29, B => n3, Z => n34);
   U33 : NR2I port map( A => n35, B => n40, Z => n42);
   U36 : NR2I port map( A => n35, B => n319, Z => n44);
   U39 : NR2I port map( A => n35, B => n45, Z => n46);
   U42 : NR2I port map( A => n35, B => n47, Z => n48);
   U45 : NR2I port map( A => n35, B => n49, Z => n50);
   U46 : ND2I port map( A => rx_sampled_q, B => n1, Z => n41);
   U56 : AO1P port map( A => n65, B => n12, C => n61, D => n66, Z => n62);
   U58 : ND2I port map( A => n69, B => n70, Z => n61);
   U63 : AN2I port map( A => n74, B => n75, Z => n70);
   U69 : NR2I port map( A => N114, B => n80, Z => n75);
   U76 : ND2I port map( A => n89, B => n90, Z => n257);
   U81 : ND2I port map( A => n96, B => n97, Z => n88);
   U85 : ND2I port map( A => n100, B => n2, Z => n99);
   U87 : NR2I port map( A => n101, B => n102, Z => n97);
   U91 : ND2I port map( A => n104, B => n20, Z => n103);
   U92 : ND2I port map( A => n87, B => n94, Z => n104);
   U96 : EOI port map( A => idle_line_lvl, B => n328, Z => n106);
   U129 : ND2I port map( A => n118_port, B => n119_port, Z => n117);
   U130 : EOI port map( A => xored_sampled_data_bit_q, B => rx_sampled_q, Z => 
                           n118_port);
   U132 : NR2I port map( A => n35, B => n323, Z => n121_port);
   U140 : AO1P port map( A => n59, B => n11, C => n310, D => n128_port, Z => 
                           n127_port);
   U141 : NR2I port map( A => n59, B => n5, Z => n128_port);
   U143 : AO1P port map( A => n310, B => n3, C => n133, D => n134, Z => n131);
   U149 : AO1P port map( A => n312, B => n142, C => n143, D => n144_port, Z => 
                           n140_port);
   U151 : NR2I port map( A => n323, B => n146_port, Z => n145_port);
   U155 : ND2I port map( A => n137, B => use_parity_bit, Z => n142);
   U162 : ND2I port map( A => n287, B => n5, Z => n36);
   U164 : ND2I port map( A => n321, B => n130, Z => n132);
   U165 : AO1P port map( A => use_parity_bit, B => n150_port, C => n159, D => 
                           n157_port, Z => n158_port);
   U167 : ND2I port map( A => n288, B => n126_port, Z => n15);
   U176 : ND2I port map( A => n164, B => n3, Z => n49);
   U178 : ND2I port map( A => n318, B => n166, Z => n163);
   U180 : NR2I port map( A => n166, B => n31, Z => n160);
   U182 : ND2I port map( A => n167, B => n327, Z => n146_port);
   U184 : ND2I port map( A => n47, B => n168, Z => n150_port);
   U191 : ND2I port map( A => n11, B => n3, Z => n166);
   U193 : ND2I port map( A => n164, B => n288, Z => n47);
   U199 : EOI port map( A => n233, B => start_samples(0), Z => n110);
   U200 : ND2I port map( A => n317, B => n287, Z => n119_port);
   U202 : ND2I port map( A => n318, B => n288, Z => n135);
   U204 : ND2I port map( A => n59, B => n289, Z => n31);
   U205 : ENI port map( A => n2, B => start_samples(1), Z => n109);
   U207 : ENI port map( A => n4, B => start_samples(2), Z => n107);
   U209 : ENI port map( A => n10, B => start_samples(3), Z => n108);
   U214 : AO1P port map( A => n76, B => n81, C => reset, D => N114, Z => n173);
   U217 : EOI port map( A => n12, B => line_samples(2), Z => n178);
   U219 : EOI port map( A => n18, B => line_samples(3), Z => n177);
   U221 : EOI port map( A => n17, B => line_samples(1), Z => n176);
   U223 : EOI port map( A => n6, B => line_samples(0), Z => n175);
   U224 : ND2I port map( A => n79, B => n6, Z => n76);
   U232 : NR2I port map( A => rx_enable, B => reset, Z => n179);
   U233 : AN2I port map( A => n5, B => n170, Z => data_ready);
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
                           SUM(1) => N144, SUM(0) => n_1168);
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
                           SUM(0) => n_1169);
   U3 : EON1 port map( A => n39, B => n196, C => N144, D => n53, Z => n285);
   U9 : EON1 port map( A => n322, B => n183, C => N118, D => n54, Z => n270);
   U10 : IVDA port map( A => n115, Y => n_1170, Z => n52);
   U11 : IVDA port map( A => n115, Y => n_1171, Z => n53);
   U12 : IVDA port map( A => n114_port, Y => n_1172, Z => n39);
   U13 : AN3 port map( A => n39, B => n321, C => n35, Z => n115);
   U14 : IVDA port map( A => n114_port, Y => n_1173, Z => n43);
   U15 : IVDA port map( A => n15, Y => n9, Z => n37);
   U16 : ND3 port map( A => n3, B => n8, C => n310, Z => n120_port);
   U17 : AO7 port map( A => reset, B => n104, C => N129, Z => n102);
   U18 : EO1 port map( A => n309, B => n2, C => n2, D => n87, Z => n96);
   U19 : NR4 port map( A => n108, B => n107, C => n109, D => n172, Z => n171);
   U20 : NR3 port map( A => n65, B => reset, C => n328, Z => n80);
   U22 : IVI port map( A => reset, Z => n321);
   U23 : IVDA port map( A => N140, Y => n1, Z => n35);
   U24 : AO7 port map( A => n306, B => n12, C => n55, Z => n252);
   U25 : AO3 port map( A => n56, B => n57, C => n12, D => N129, Z => n55);
   U27 : AO2 port map( A => n160, B => n320, C => n312, D => n137, Z => 
                           n156_port);
   U28 : ND4 port map( A => n59, B => n288, C => n5, D => n11, Z => n40);
   U29 : AO7 port map( A => n156_port, B => n323, C => n37, Z => n157_port);
   U31 : AO3 port map( A => n59, B => n36, C => n311, D => n156_port, Z => 
                           n152_port);
   U32 : IVDA port map( A => n113, Y => n_1174, Z => n54);
   U34 : AN3 port map( A => n322, B => n321, C => N114, Z => n113);
   U35 : AO4 port map( A => n173, B => n21, C => n307, D => n81, Z => n296);
   U37 : NR4 port map( A => n107, B => n108, C => n109, D => n110, Z => n105);
   U38 : AO3 port map( A => n126_port, B => n127_port, C => n321, D => n288, Z 
                           => n114_port);
   U40 : NR3 port map( A => n5, B => n59, C => n11, Z => n164);
   U41 : NR3 port map( A => n36, B => n35, C => n8, Z => n29);
   U43 : AO4 port map( A => n40, B => n41, C => n42, D => n25, Z => n246);
   U44 : AO4 port map( A => n41, B => n319, C => n44, D => n26, Z => n247);
   U47 : AO4 port map( A => n41, B => n45, C => n46, D => n28, Z => n248);
   U48 : AO4 port map( A => n41, B => n47, C => n48, D => n32, Z => n249);
   U49 : AO4 port map( A => n41, B => n49, C => n50, D => n22, Z => n250);
   U50 : IVI port map( A => n179, Z => n322);
   U52 : NR3 port map( A => n20, B => n2, C => n94, Z => n86);
   U53 : ND3 port map( A => n321, B => n111, C => n106, Z => n87);
   U54 : ND4 port map( A => n4, B => n10, C => n2, D => n20, Z => n111);
   U59 : AO4 port map( A => n3, B => n36, C => n145_port, D => n319, Z => 
                           n144_port);
   U60 : EON1 port map( A => n39, B => n194, C => N158, D => n52, Z => n271);
   U62 : EON1 port map( A => n43, B => n209, C => N157, D => n52, Z => n272);
   U64 : AO4 port map( A => n94, B => n233, C => n20, D => n87, Z => n101);
   U66 : EON1 port map( A => n39, B => n208, C => N156, D => n52, Z => n273);
   U67 : AO7 port map( A => n308, B => n4, C => n84, Z => n256);
   U68 : AO3 port map( A => n85, B => n86, C => n4, D => N129, Z => n84);
   U70 : NR3 port map( A => n87, B => n232, C => n233, Z => n85);
   U72 : ND4 port map( A => n86, B => n230, C => N129, D => n10, Z => n90);
   U73 : AO7 port map( A => n88, B => n95, C => n231, Z => n89);
   U74 : AO4 port map( A => n87, B => n4, C => n230, D => n94, Z => n95);
   U75 : ND4 port map( A => n175, B => n176, C => n177, D => n178, Z => n81);
   U77 : AO2 port map( A => n228, B => n58, C => n65, D => n17, Z => n69);
   U78 : EON1 port map( A => n43, B => n207, C => N155, D => n52, Z => n274);
   U79 : EON1 port map( A => n39, B => n206, C => N154, D => n52, Z => n275);
   U80 : AO4 port map( A => n287, B => n130, C => n131, D => n132, Z => n292);
   U82 : AO4 port map( A => n287, B => n135, C => n320, D => n319, Z => n134);
   U83 : AO3 port map( A => n137, B => n40, C => n138, D => n37, Z => n133);
   U84 : AO4 port map( A => n288, B => n130, C => n140_port, D => n132, Z => 
                           n293);
   U86 : AO4 port map( A => n59, B => n130, C => n151_port, D => n132, Z => 
                           n294);
   U88 : NR4 port map( A => n152_port, B => n313, C => n315, D => n316, Z => 
                           n151_port);
   U89 : AO4 port map( A => n289, B => n130, C => n158_port, D => n132, Z => 
                           n295);
   U90 : AO3 port map( A => n320, B => n319, C => n163, D => n149_port, Z => 
                           n159);
   U94 : AO7 port map( A => n62, B => n18, C => n64, Z => n253);
   U95 : ND4 port map( A => n57, B => N129, C => n226, D => n18, Z => n64);
   U97 : AO7 port map( A => n75, B => n6, C => n77, Z => n255);
   U98 : AO3 port map( A => n78, B => n65, C => n6, D => N129, Z => n77);
   U99 : NR3 port map( A => n79, B => rx, C => reset, Z => n78);
   U100 : AO4 port map( A => n97, B => n2, C => N114, D => n99, Z => n258);
   U101 : AO4 port map( A => n233, B => n87, C => n20, D => n94, Z => n100);
   U102 : EON1 port map( A => N114, B => n103, C => n102, D => n233, Z => n259)
                           ;
   U103 : EON1 port map( A => n322, B => n193, C => N128, D => n54, Z => n260);
   U104 : AO2 port map( A => n229, B => n58, C => n65, D => n6, Z => n74);
   U105 : IVDA port map( A => n286, Y => n8, Z => n59);
   U106 : EON1 port map( A => n38, B => n24, C => rx_sampled_q, D => n38, Z => 
                           n245);
   U107 : EON1 port map( A => n43, B => n205, C => N153, D => n52, Z => n276);
   U108 : AO4 port map( A => n70, B => n17, C => N114, D => n72, Z => n254);
   U109 : AO2 port map( A => n229, B => n65, C => n6, D => n58, Z => n73);
   U110 : EON1 port map( A => n322, B => n184, C => N119, D => n54, Z => n269);
   U111 : EON1 port map( A => n322, B => n185, C => N120, D => n54, Z => n268);
   U112 : EON1 port map( A => n322, B => n186, C => N121, D => n54, Z => n267);
   U113 : EON1 port map( A => n322, B => n187, C => N122, D => n54, Z => n266);
   U114 : EON1 port map( A => n322, B => n188, C => N123, D => n54, Z => n265);
   U115 : EON1 port map( A => n322, B => n189, C => N124, D => n54, Z => n264);
   U116 : EON1 port map( A => n322, B => n190, C => N125, D => n54, Z => n263);
   U117 : EON1 port map( A => n322, B => n191, C => N126, D => n54, Z => n262);
   U118 : EON1 port map( A => n322, B => n192, C => N127, D => n54, Z => n261);
   U119 : NR4 port map( A => n325, B => n327, C => word_width(1), D => 
                           word_width(3), Z => n137);
   U120 : AO3 port map( A => use_parity_bit, B => n314, C => n148_port, D => 
                           n149_port, Z => n143);
   U121 : EON1 port map( A => n116, B => n117, C => n116, D => 
                           xored_sampled_data_bit_q, Z => n290);
   U122 : ND4 port map( A => n37, B => n49, C => n120_port, D => n121_port, Z 
                           => n116);
   U123 : EON1 port map( A => n27, B => n21, C => n27, D => n218, Z => n242);
   U124 : EON1 port map( A => n30, B => n23, C => rx_sampled_q, D => n30, Z => 
                           n243);
   U125 : NR4 port map( A => n31, B => n35, C => n11, D => n288, Z => n30);
   U126 : EON1 port map( A => n21, B => n34, C => n34, D => n220, Z => n244);
   U127 : EON1 port map( A => n21, B => n51, C => n51, D => sampled_data_9_port
                           , Z => n251);
   U128 : ND4 port map( A => n1, B => n310, C => n3, D => n8, Z => n51);
   U131 : EON1 port map( A => n39, B => n204, C => N152, D => n52, Z => n277);
   U133 : EON1 port map( A => n43, B => n203, C => N151, D => n52, Z => n278);
   U134 : EON1 port map( A => n39, B => n202, C => N150, D => n53, Z => n279);
   U135 : EON1 port map( A => n43, B => n201, C => N149, D => n53, Z => n280);
   U136 : EON1 port map( A => n39, B => n200, C => N148, D => n53, Z => n281);
   U137 : EON1 port map( A => n43, B => n199, C => N147, D => n53, Z => n282);
   U138 : EON1 port map( A => n39, B => n198, C => N146, D => n53, Z => n283);
   U139 : EON1 port map( A => n43, B => n197, C => N145, D => n53, Z => n284);
   U142 : AO4 port map( A => n322, B => n182, C => n179, D => n180, Z => n297);
   U144 : ND3 port map( A => word_width(0), B => n316, C => n167, Z => n168);
   U145 : NR3 port map( A => n325, B => word_width(3), C => n326, Z => n167);
   U146 : NR3 port map( A => n59, B => n287, C => n5, Z => n126_port);
   U147 : NR3 port map( A => n287, B => n59, C => n3, Z => n170);
   U148 : AO7 port map( A => stop_bits(0), B => n324, C => n315, Z => n138);
   U150 : EON1 port map( A => n43, B => n195, C => n43, D => n33, Z => n291);
   U152 : ND3 port map( A => n35, B => n321, C => period_count_q_0_port, Z => 
                           n33);
   U154 : NR3 port map( A => n226, B => n227, C => n228, Z => n79);
   U156 : EON1 port map( A => n210, B => n9, C => n9, D => n218, Z => n234);
   U157 : EON1 port map( A => n212, B => n9, C => n9, D => n220, Z => n236);
   U158 : AO4 port map( A => n15, B => n23, C => n211, D => n9, Z => n235);
   U159 : AO4 port map( A => n15, B => n24, C => n213, D => n9, Z => n237);
   U160 : AO4 port map( A => n15, B => n25, C => n214, D => n9, Z => n238);
   U161 : AO4 port map( A => n37, B => n26, C => n215, D => n9, Z => n239);
   U163 : AO4 port map( A => n37, B => n28, C => n216, D => n9, Z => n240);
   U166 : AO4 port map( A => n37, B => n32, C => n217, D => n9, Z => n241);
   U168 : AO6 port map( A => n13, B => n14, C => n15, Z => stop_bit_error);
   U169 : EO port map( A => baud_period(6), B => period16_count_q_2_port, Z => 
                           n63);
   U170 : EO port map( A => baud_period(7), B => period16_count_q_3_port, Z => 
                           n60);
   U171 : NR2 port map( A => n63, B => n60, Z => n136);
   U172 : EN port map( A => baud_period(8), B => period16_count_q_4_port, Z => 
                           n129_port);
   U173 : ND2 port map( A => period16_count_q_0_port, B => n139, Z => n67);
   U174 : AO2 port map( A => n183, B => n67, C => n67, D => baud_period(5), Z 
                           => n68);
   U177 : NR2 port map( A => n139, B => period16_count_q_0_port, Z => n71);
   U179 : AO4 port map( A => n71, B => n183, C => baud_period(5), D => n71, Z 
                           => n83);
   U181 : EN port map( A => baud_period(15), B => period16_count_q_11_port, Z 
                           => n82);
   U183 : AN3 port map( A => n141, B => n83, C => n82, Z => n125_port);
   U185 : EN port map( A => baud_period(10), B => period16_count_q_6_port, Z =>
                           n93);
   U186 : EN port map( A => baud_period(9), B => period16_count_q_5_port, Z => 
                           n92);
   U187 : EN port map( A => baud_period(11), B => period16_count_q_7_port, Z =>
                           n91);
   U188 : ND3 port map( A => n93, B => n92, C => n91, Z => n123_port);
   U189 : EO port map( A => baud_period(14), B => period16_count_q_10_port, Z 
                           => n122_port);
   U192 : EO port map( A => baud_period(12), B => period16_count_q_8_port, Z =>
                           n112);
   U194 : EO port map( A => baud_period(13), B => period16_count_q_9_port, Z =>
                           n98);
   U195 : NR4 port map( A => n123_port, B => n122_port, C => n112, D => n98, Z 
                           => n124_port);
   U197 : ND4 port map( A => n136, B => n129_port, C => n125_port, D => 
                           n124_port, Z => N114);
   U201 : IV port map( A => N114, Z => N129);
   U203 : IVI port map( A => baud_period(4), Z => n139);
   U206 : IVI port map( A => n68, Z => n141);
   U208 : EO port map( A => baud_period(11), B => period_count_q_11_port, Z => 
                           n155_port);
   U210 : EO port map( A => baud_period(12), B => period_count_q_12_port, Z => 
                           n154_port);
   U211 : EO port map( A => baud_period(13), B => period_count_q_13_port, Z => 
                           n153_port);
   U212 : EO port map( A => baud_period(14), B => period_count_q_14_port, Z => 
                           n147_port);
   U213 : NR4 port map( A => n155_port, B => n154_port, C => n153_port, D => 
                           n147_port, Z => n303);
   U215 : EO port map( A => baud_period(7), B => period_count_q_7_port, Z => 
                           n169);
   U216 : EO port map( A => baud_period(8), B => period_count_q_8_port, Z => 
                           n165);
   U218 : EO port map( A => baud_period(9), B => period_count_q_9_port, Z => 
                           n162);
   U220 : EO port map( A => baud_period(10), B => period_count_q_10_port, Z => 
                           n161);
   U222 : NR4 port map( A => n169, B => n165, C => n162, D => n161, Z => n302);
   U225 : EO port map( A => baud_period(3), B => period_count_q_3_port, Z => 
                           n221);
   U226 : EO port map( A => baud_period(4), B => period_count_q_4_port, Z => 
                           n219);
   U227 : EO port map( A => baud_period(5), B => period_count_q_5_port, Z => 
                           n181);
   U229 : EO port map( A => baud_period(6), B => period_count_q_6_port, Z => 
                           n174);
   U230 : NR4 port map( A => n221, B => n219, C => n181, D => n174, Z => n301);
   U231 : EN port map( A => baud_period(2), B => period_count_q_2_port, Z => 
                           n299);
   U234 : EN port map( A => baud_period(15), B => period_count_q_15_port, Z => 
                           n298);
   U235 : ND2 port map( A => period_count_q_0_port, B => n304, Z => n222);
   U236 : AO2 port map( A => n196, B => n222, C => n222, D => baud_period(1), Z
                           => n223);
   U237 : NR2 port map( A => n304, B => period_count_q_0_port, Z => n224);
   U238 : AO4 port map( A => n224, B => n196, C => baud_period(1), D => n224, Z
                           => n225);
   U239 : AN4 port map( A => n299, B => n298, C => n305, D => n225, Z => n300);
   U240 : ND4 port map( A => n303, B => n302, C => n301, D => n300, Z => N140);
   U241 : IVI port map( A => baud_period(0), Z => n304);
   U242 : IVI port map( A => n223, Z => n305);
   U243 : IVI port map( A => n61, Z => n306);
   U244 : IVI port map( A => n173, Z => n307);
   U245 : IVI port map( A => n88, Z => n308);
   U246 : IVI port map( A => n94, Z => n309);
   U247 : IVI port map( A => n36, Z => n310);
   U248 : IVI port map( A => n157_port, Z => n311);
   U249 : IVI port map( A => n40, Z => n312);
   U250 : IVI port map( A => n47, Z => n313);
   U251 : IVI port map( A => n150_port, Z => n314);
   U252 : IVI port map( A => n49, Z => n315);
   U253 : IVI port map( A => n45, Z => n316);
   U254 : IVI port map( A => n135, Z => n317);
   U255 : IVI port map( A => n31, Z => n318);
   U256 : IVI port map( A => n160, Z => n319);
   U257 : IVI port map( A => n146_port, Z => n320);
   U258 : IVI port map( A => use_parity_bit, Z => n323);
   U259 : IVI port map( A => stop_bits(1), Z => n324);
   U260 : IVI port map( A => word_width(2), Z => n325);
   U261 : IVI port map( A => word_width(1), Z => n326);
   U262 : IVI port map( A => word_width(0), Z => n327);
   U263 : IVI port map( A => rx, Z => n328);

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
   
   component NR4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component ND4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AO7
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
      n22, n23, n24, n25, n26, n27, n28, n29, n58, n59, n60, n61, n62, n63, n64
      , n65, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, 
      n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94
      , n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107
      , n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
      n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, 
      n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, 
      n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, 
      n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, 
      n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, 
      n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, 
      n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n30, 
      n31, n32, n33, n34, n35, n36, n37, n47, n48, n49, n50, n51, n52, n53, n54
      , n55, n56, n57, n66, n203, n204, n205, n206, n207, n208, n209, n210, 
      n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, 
      n223, n_1175, n_1176, n_1177, n_1178, n_1179, n_1180, n_1181, n_1182, 
      n_1183, n_1184, n_1185, n_1186, n_1187, n_1188, n_1189 : std_logic;

begin
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
 
   
   word_width(3) <= '0';
   reg_addr_1001_q_reg_0_inst : FD1 port map( D => n202, CP => CLK_I, Q => 
                           reg_addr_1001_q_0_port, QN => n_1175);
   reg_addr_1001_q_reg_4_inst : FD1 port map( D => n160, CP => CLK_I, Q => 
                           reg_addr_1001_q_4_port, QN => n_1176);
   reg_addr_1001_q_reg_3_inst : FD1 port map( D => n161, CP => CLK_I, Q => 
                           reg_addr_1001_q_3_port, QN => n_1177);
   reg_addr_1001_q_reg_2_inst : FD1 port map( D => n162, CP => CLK_I, Q => 
                           reg_addr_1001_q_2_port, QN => n_1178);
   reg_addr_1001_q_reg_1_inst : FD1 port map( D => n163, CP => CLK_I, Q => 
                           reg_addr_1001_q_1_port, QN => n_1179);
   reg_addr_1000_q_reg_4_inst : FD1 port map( D => n164, CP => CLK_I, Q => 
                           reg_addr_1000_q_4_port, QN => n26);
   reg_addr_1000_q_reg_3_inst : FD1 port map( D => n165, CP => CLK_I, Q => 
                           reg_addr_1000_q_3_port, QN => n27);
   reg_addr_1000_q_reg_2_inst : FD1 port map( D => n166, CP => CLK_I, Q => 
                           reg_addr_1000_q_2_port, QN => n28);
   reg_addr_1000_q_reg_1_inst : FD1 port map( D => n167, CP => CLK_I, Q => 
                           reg_addr_1000_q_1_port, QN => n29);
   reg_addr_1000_q_reg_0_inst : FD1 port map( D => n168, CP => CLK_I, Q => 
                           reg_addr_1000_q_0_port, QN => n_1180);
   reg_addr_111_q_reg_7_inst : FD1 port map( D => n169, CP => CLK_I, Q => 
                           baud_period_15_port, QN => n18);
   reg_addr_111_q_reg_6_inst : FD1 port map( D => n170, CP => CLK_I, Q => 
                           baud_period_14_port, QN => n19);
   reg_addr_111_q_reg_5_inst : FD1 port map( D => n171, CP => CLK_I, Q => 
                           baud_period_13_port, QN => n20);
   reg_addr_111_q_reg_4_inst : FD1 port map( D => n172, CP => CLK_I, Q => 
                           baud_period_12_port, QN => n21);
   reg_addr_111_q_reg_3_inst : FD1 port map( D => n173, CP => CLK_I, Q => 
                           baud_period_11_port, QN => n22);
   reg_addr_111_q_reg_2_inst : FD1 port map( D => n174, CP => CLK_I, Q => 
                           baud_period_10_port, QN => n23);
   reg_addr_111_q_reg_1_inst : FD1 port map( D => n175, CP => CLK_I, Q => 
                           baud_period_9_port, QN => n24);
   reg_addr_111_q_reg_0_inst : FD1 port map( D => n176, CP => CLK_I, Q => 
                           baud_period_8_port, QN => n25);
   reg_addr_110_q_reg_4_inst : FD1 port map( D => n180, CP => CLK_I, Q => 
                           baud_period_4_port, QN => n_1181);
   reg_addr_110_q_reg_7_inst : FD1 port map( D => n177, CP => CLK_I, Q => 
                           baud_period_7_port, QN => n14);
   reg_addr_110_q_reg_6_inst : FD1 port map( D => n178, CP => CLK_I, Q => 
                           baud_period_6_port, QN => n15);
   reg_addr_110_q_reg_5_inst : FD1 port map( D => n179, CP => CLK_I, Q => 
                           baud_period_5_port, QN => n16);
   reg_addr_110_q_reg_3_inst : FD1 port map( D => n181, CP => CLK_I, Q => 
                           baud_period_3_port, QN => n_1182);
   reg_addr_110_q_reg_2_inst : FD1 port map( D => n182, CP => CLK_I, Q => 
                           baud_period_2_port, QN => n_1183);
   reg_addr_110_q_reg_1_inst : FD1 port map( D => n183, CP => CLK_I, Q => 
                           baud_period_1_port, QN => n_1184);
   reg_addr_110_q_reg_0_inst : FD1 port map( D => n184, CP => CLK_I, Q => 
                           baud_period_0_port, QN => n17);
   reg_addr_101_q_reg_6_inst : FD1 port map( D => n186, CP => CLK_I, Q => 
                           start_samples_2_port, QN => n_1185);
   reg_addr_101_q_reg_5_inst : FD1 port map( D => n187, CP => CLK_I, Q => 
                           start_samples_1_port, QN => n_1186);
   reg_addr_101_q_reg_2_inst : FD1 port map( D => n190, CP => CLK_I, Q => 
                           line_samples_2_port, QN => n_1187);
   reg_addr_101_q_reg_7_inst : FD1 port map( D => n185, CP => CLK_I, Q => 
                           start_samples_3_port, QN => n_1188);
   reg_addr_101_q_reg_4_inst : FD1 port map( D => n188, CP => CLK_I, Q => 
                           start_samples_0_port, QN => n10);
   reg_addr_101_q_reg_3_inst : FD1 port map( D => n189, CP => CLK_I, Q => 
                           line_samples_3_port, QN => n11);
   reg_addr_101_q_reg_1_inst : FD1 port map( D => n191, CP => CLK_I, Q => 
                           line_samples_1_port, QN => n12);
   reg_addr_101_q_reg_0_inst : FD1 port map( D => n192, CP => CLK_I, Q => 
                           line_samples_0_port, QN => n13);
   reg_addr_100_q_reg_7_inst : FD1 port map( D => n193, CP => CLK_I, Q => 
                           idle_line_lvl, QN => n2);
   reg_addr_100_q_reg_3_inst : FD1 port map( D => n197, CP => CLK_I, Q => 
                           stop_bits(0), QN => n6);
   reg_addr_100_q_reg_6_inst : FD1 port map( D => n194, CP => CLK_I, Q => 
                           use_parity_bit, QN => n3);
   reg_addr_100_q_reg_5_inst : FD1 port map( D => n195, CP => CLK_I, Q => 
                           parity_type, QN => n4);
   reg_addr_100_q_reg_4_inst : FD1 port map( D => n196, CP => CLK_I, Q => 
                           stop_bits(1), QN => n5);
   reg_addr_100_q_reg_2_inst : FD1 port map( D => n198, CP => CLK_I, Q => 
                           word_width(2), QN => n7);
   reg_addr_100_q_reg_1_inst : FD1 port map( D => n199, CP => CLK_I, Q => 
                           word_width(1), QN => n8);
   reg_addr_100_q_reg_0_inst : FD1 port map( D => n200, CP => CLK_I, Q => 
                           word_width(0), QN => n9);
   reg_addr_1_q_reg : FD1 port map( D => n201, CP => CLK_I, Q => rx_enable_port
                           , QN => n1);
   U3 : NR2I port map( A => n58, B => n59, Z => write_tx_data);
   U4 : IVI port map( A => n60, Z => uart_tx_rst);
   U5 : AO1P port map( A => RST_I, B => reg_addr_1001_q_2_port, C => master_rst
                           , D => reg_addr_1000_q_2_port, Z => n60);
   U6 : IVI port map( A => n61, Z => uart_tx_fifo_rst);
   U7 : AO1P port map( A => RST_I, B => reg_addr_1001_q_1_port, C => master_rst
                           , D => reg_addr_1000_q_1_port, Z => n61);
   U8 : IVI port map( A => n62, Z => uart_rx_rst);
   U9 : AO1P port map( A => RST_I, B => reg_addr_1001_q_4_port, C => master_rst
                           , D => reg_addr_1000_q_4_port, Z => n62);
   U10 : IVI port map( A => n63, Z => uart_rx_fifo_rst);
   U11 : AO1P port map( A => RST_I, B => reg_addr_1001_q_3_port, C => 
                           master_rst, D => reg_addr_1000_q_3_port, Z => n63);
   U14 : ND2I port map( A => reg_addr_1001_q_4_port, B => n64, Z => n65);
   U16 : ND2I port map( A => reg_addr_1001_q_3_port, B => n64, Z => n67);
   U18 : ND2I port map( A => reg_addr_1001_q_2_port, B => n64, Z => n68);
   U20 : ND2I port map( A => reg_addr_1001_q_1_port, B => n64, Z => n69);
   U25 : NR2I port map( A => n71, B => n30, Z => n168);
   U26 : ND2I port map( A => n70, B => n49, Z => n71);
   U36 : ND2I port map( A => n73, B => n48, Z => n74);
   U42 : NR2I port map( A => DAT_I(4), B => n52, Z => n78);
   U47 : ND2I port map( A => n76, B => n204, Z => n77);
   U49 : ND2I port map( A => n79, B => n80, Z => n75);
   U52 : ND2I port map( A => start_samples_2_port, B => n211, Z => n82);
   U54 : ND2I port map( A => start_samples_1_port, B => n211, Z => n83);
   U58 : ND2I port map( A => line_samples_2_port, B => n211, Z => n85);
   U61 : ND2I port map( A => n84, B => n203, Z => n81);
   U64 : NR2I port map( A => DAT_I(7), B => n52, Z => n88);
   U69 : NR2I port map( A => DAT_I(3), B => n52, Z => n90);
   U73 : ND2I port map( A => n87, B => n66, Z => n89);
   U75 : ND2I port map( A => n91, B => n80, Z => n86);
   U77 : ND2I port map( A => n93, B => n57, Z => n94);
   U81 : ND2I port map( A => reg_addr_1001_q_0_port, B => n64, Z => n96);
   U83 : NR2I port map( A => n97, B => n214, Z => n72);
   U84 : NR2I port map( A => n222, B => n92, Z => n95);
   U85 : ND2I port map( A => WE_I, B => CYC_I, Z => n92);
   U87 : AO1P port map( A => n217, B => start_samples_3_port, C => n100, D => 
                           n101, Z => n98);
   U90 : ND2I port map( A => rx_fifo_entries_free(7), B => n107, Z => n106);
   U91 : ND2I port map( A => tx_fifo_entries_free(7), B => n108, Z => n105);
   U93 : AO1P port map( A => n217, B => start_samples_2_port, C => n110, D => 
                           n111, Z => n109);
   U96 : ND2I port map( A => rx_fifo_entries_free(6), B => n107, Z => n113);
   U97 : ND2I port map( A => tx_fifo_entries_free(6), B => n108, Z => n112);
   U99 : ND2I port map( A => n80, B => n215, Z => n99);
   U100 : AO1P port map( A => n217, B => start_samples_1_port, C => n115, D => 
                           n116, Z => n114);
   U103 : ND2I port map( A => rx_fifo_entries_free(5), B => n107, Z => n118);
   U104 : ND2I port map( A => tx_fifo_entries_free(5), B => n108, Z => n117);
   U106 : AO1P port map( A => n216, B => baud_period_4_port, C => n123, D => 
                           n124, Z => n122);
   U112 : AO1P port map( A => n216, B => baud_period_3_port, C => n132, D => 
                           n133, Z => n131);
   U118 : AO1P port map( A => n216, B => baud_period_2_port, C => n138, D => 
                           n139, Z => n137);
   U124 : AO1P port map( A => n216, B => baud_period_1_port, C => n144, D => 
                           n145, Z => n143);
   U133 : NR2I port map( A => n97, B => n222, Z => n126);
   U134 : NR2I port map( A => n97, B => ADR_I(0), Z => n127);
   U135 : ND2I port map( A => ADR_I(3), B => n152, Z => n97);
   U137 : ND2I port map( A => rx_fifo_entries_free(0), B => n107, Z => n154);
   U138 : NR2I port map( A => n155, B => ADR_I(0), Z => n107);
   U139 : ND2I port map( A => tx_fifo_entries_free(0), B => n108, Z => n153);
   U140 : NR2I port map( A => n155, B => n222, Z => n108);
   U141 : ND2I port map( A => n91, B => n222, Z => n104);
   U143 : ND2I port map( A => n79, B => n222, Z => n102);
   U144 : ND2I port map( A => n91, B => ADR_I(0), Z => n125);
   U145 : NR2I port map( A => n156, B => ADR_I(1), Z => n91);
   U148 : ND2I port map( A => rx_data(0), B => n146, Z => n157);
   U150 : ND2I port map( A => n222, B => n218, Z => n159);
   U151 : NR2I port map( A => ADR_I(2), B => ADR_I(1), Z => n152);
   U152 : ND2I port map( A => n79, B => ADR_I(0), Z => n103);
   U153 : NR2I port map( A => n220, B => n156, Z => n79);
   U154 : ND2I port map( A => ADR_I(2), B => n218, Z => n156);
   U183 : OR2 port map( A => n92, B => ADR_I(0), Z => n59);
   U184 : OR3 port map( A => ADR_I(3), B => n219, C => n214, Z => n58);
   U185 : AN3 port map( A => n120, B => n121, C => n122, Z => n119);
   U186 : AN3 port map( A => n129, B => n130, C => n131, Z => n128);
   U187 : AN3 port map( A => n135, B => n136, C => n137, Z => n134);
   U188 : AN3 port map( A => n141, B => n142, C => n143, Z => n140);
   U189 : OR3 port map( A => ADR_I(2), B => ADR_I(3), C => n220, Z => n155);
   U12 : AO7 port map( A => n221, B => n75, C => n53, Z => n73);
   U13 : AO7 port map( A => n221, B => n86, C => n49, Z => n84);
   U15 : ND2I port map( A => n95, B => n72, Z => n64);
   U17 : AO7 port map( A => n59, B => n86, C => n48, Z => n87);
   U19 : AO7 port map( A => n59, B => n75, C => n51, Z => n76);
   U21 : AO7 port map( A => n59, B => n213, C => n54, Z => n70);
   U22 : IVI port map( A => n80, Z => n214);
   U23 : AO4 port map( A => n152, B => n218, C => n219, D => n159, Z => n146);
   U24 : AO4 port map( A => n87, B => n9, C => n30, D => n89, Z => n200);
   U27 : AO4 port map( A => n87, B => n8, C => n31, D => n89, Z => n199);
   U28 : AO4 port map( A => n87, B => n7, C => n32, D => n89, Z => n198);
   U29 : AO4 port map( A => n87, B => n5, C => n34, D => n89, Z => n196);
   U30 : AO4 port map( A => n87, B => n4, C => n35, D => n89, Z => n195);
   U31 : AO4 port map( A => n87, B => n3, C => n36, D => n89, Z => n194);
   U32 : AO4 port map( A => n73, B => n25, C => n30, D => n74, Z => n176);
   U33 : AO4 port map( A => n73, B => n24, C => n31, D => n74, Z => n175);
   U34 : AO4 port map( A => n73, B => n23, C => n32, D => n74, Z => n174);
   U35 : AO4 port map( A => n73, B => n22, C => n33, D => n74, Z => n173);
   U37 : AO4 port map( A => n73, B => n21, C => n34, D => n74, Z => n172);
   U38 : AO4 port map( A => n73, B => n20, C => n74, D => n35, Z => n171);
   U39 : AO4 port map( A => n73, B => n19, C => n74, D => n36, Z => n170);
   U40 : AO4 port map( A => n73, B => n18, C => n74, D => n37, Z => n169);
   U41 : AO4 port map( A => n87, B => n6, C => n210, D => n90, Z => n197);
   U43 : AO4 port map( A => n87, B => n2, C => n210, D => n88, Z => n193);
   U44 : AO4 port map( A => n84, B => n13, C => n30, D => n81, Z => n192);
   U45 : AO4 port map( A => n84, B => n12, C => n31, D => n81, Z => n191);
   U46 : AO4 port map( A => n84, B => n11, C => n33, D => n81, Z => n189);
   U48 : AO4 port map( A => n84, B => n10, C => n34, D => n81, Z => n188);
   U50 : EON1 port map( A => n37, B => n81, C => n211, D => 
                           start_samples_3_port, Z => n185);
   U51 : AO4 port map( A => n76, B => n17, C => n30, D => n77, Z => n184);
   U53 : EON1 port map( A => n31, B => n77, C => n212, D => baud_period_1_port,
                           Z => n183);
   U55 : EON1 port map( A => n32, B => n77, C => n212, D => baud_period_2_port,
                           Z => n182);
   U56 : EON1 port map( A => n33, B => n77, C => n212, D => baud_period_3_port,
                           Z => n181);
   U57 : AO4 port map( A => n76, B => n16, C => n35, D => n77, Z => n179);
   U59 : AO4 port map( A => n76, B => n15, C => n36, D => n77, Z => n178);
   U60 : AO4 port map( A => n76, B => n14, C => n37, D => n77, Z => n177);
   U62 : AO3 port map( A => n211, B => n32, C => n85, D => n50, Z => n190);
   U63 : AO3 port map( A => n211, B => n35, C => n83, D => n51, Z => n187);
   U65 : AO3 port map( A => n211, B => n36, C => n82, D => n50, Z => n186);
   U66 : EON1 port map( A => n212, B => n78, C => n212, D => baud_period_4_port
                           , Z => n180);
   U67 : AO4 port map( A => n70, B => n29, C => n31, D => n71, Z => n167);
   U68 : AO4 port map( A => n70, B => n28, C => n32, D => n71, Z => n166);
   U70 : AO4 port map( A => n70, B => n27, C => n33, D => n71, Z => n165);
   U71 : AO4 port map( A => n70, B => n26, C => n34, D => n71, Z => n164);
   U72 : AO4 port map( A => n93, B => n1, C => n30, D => n94, Z => n201);
   U74 : AO7 port map( A => n58, B => n221, C => n54, Z => n93);
   U76 : AO3 port map( A => n64, B => n31, C => n69, D => n55, Z => n163);
   U78 : AO3 port map( A => n64, B => n32, C => n68, D => n56, Z => n162);
   U79 : AO3 port map( A => n64, B => n33, C => n67, D => n55, Z => n161);
   U80 : AO3 port map( A => n64, B => n34, C => n65, D => n56, Z => n160);
   U82 : AO3 port map( A => n64, B => n30, C => n96, D => n53, Z => n202);
   U86 : NR4 port map( A => ADR_I(5), B => ADR_I(4), C => ADR_I(7), D => 
                           ADR_I(6), Z => n80);
   U88 : NR4 port map( A => WE_I, B => ADR_I(0), C => n223, D => n58, Z => 
                           read_rx_data);
   
   U101 : AO3 port map( A => n3, B => n104, C => n112, D => n113, Z => n110);
   U102 : AO4 port map( A => n14, B => n102, C => n18, D => n103, Z => n101);
   U105 : AO3 port map( A => n2, B => n104, C => n105, D => n106, Z => n100);
   U107 : AO4 port map( A => n8, B => n104, C => n12, D => n125, Z => n144);
   U108 : AO4 port map( A => n24, B => n103, C => n215, D => n205, Z => n145);
   U109 : EON1 port map( A => n7, B => n104, C => line_samples_2_port, D => 
                           n217, Z => n138);
   U110 : AO4 port map( A => n23, B => n103, C => n215, D => n206, Z => n139);
   U111 : AO4 port map( A => n6, B => n104, C => n11, D => n125, Z => n132);
   U113 : AO4 port map( A => n22, B => n103, C => n215, D => n207, Z => n133);
   U114 : AO4 port map( A => n5, B => n104, C => n10, D => n125, Z => n123);
   U115 : AO4 port map( A => n21, B => n103, C => n215, D => n208, Z => n124);
   U89 : AO3 port map( A => n9, B => n104, C => n153, D => n154, Z => n150);
   U92 : AO4 port map( A => n13, B => n125, C => n17, D => n102, Z => n149);
   U94 : AO4 port map( A => n16, B => n102, C => n20, D => n103, Z => n116);
   U95 : AO3 port map( A => n4, B => n104, C => n117, D => n118, Z => n115);
   U98 : AO4 port map( A => n15, B => n102, C => n19, D => n103, Z => n111);
   U116 : AO2 port map( A => n127, B => reg_addr_1000_q_0_port, C => 
                           reg_addr_1001_q_0_port, D => n126, Z => n151);
   U117 : ND4 port map( A => rx_enable_port, B => ADR_I(0), C => n152, D => 
                           n218, Z => n158);
   U119 : EON1 port map( A => n147, B => n214, C => n214, D => rx_data(0), Z =>
                           DAT_O(0));
   U120 : NR4 port map( A => n148, B => n149, C => n150, D => n209, Z => n147);
   U121 : AO3 port map( A => n25, B => n103, C => n157, D => n158, Z => n148);
   U122 : AO4 port map( A => n140, B => n214, C => n80, D => n205, Z => 
                           DAT_O(1));
   U123 : AO2 port map( A => n126, B => reg_addr_1001_q_1_port, C => n127, D =>
                           reg_addr_1000_q_1_port, Z => n141);
   U125 : AO2 port map( A => tx_fifo_entries_free(1), B => n108, C => 
                           rx_fifo_entries_free(1), D => n107, Z => n142);
   U126 : AO4 port map( A => n134, B => n214, C => n80, D => n206, Z => 
                           DAT_O(2));
   U127 : AO2 port map( A => n126, B => reg_addr_1001_q_2_port, C => n127, D =>
                           reg_addr_1000_q_2_port, Z => n135);
   U128 : AO2 port map( A => tx_fifo_entries_free(2), B => n108, C => 
                           rx_fifo_entries_free(2), D => n107, Z => n136);
   U129 : AO4 port map( A => n128, B => n214, C => n80, D => n207, Z => 
                           DAT_O(3));
   U130 : AO2 port map( A => n126, B => reg_addr_1001_q_3_port, C => n127, D =>
                           reg_addr_1000_q_3_port, Z => n129);
   U131 : AO2 port map( A => tx_fifo_entries_free(3), B => n108, C => 
                           rx_fifo_entries_free(3), D => n107, Z => n130);
   U132 : AO4 port map( A => n119, B => n214, C => n80, D => n208, Z => 
                           DAT_O(4));
   U136 : AO2 port map( A => n126, B => reg_addr_1001_q_4_port, C => n127, D =>
                           reg_addr_1000_q_4_port, Z => n120);
   U142 : AO2 port map( A => tx_fifo_entries_free(4), B => n108, C => 
                           rx_fifo_entries_free(4), D => n107, Z => n121);
   U146 : EON1 port map( A => n114, B => n214, C => rx_data(5), D => n99, Z => 
                           DAT_O(5));
   U147 : EON1 port map( A => n109, B => n214, C => rx_data(6), D => n99, Z => 
                           DAT_O(6));
   U149 : EON1 port map( A => n98, B => n214, C => rx_data(7), D => n99, Z => 
                           DAT_O(7));
   U155 : IVDA port map( A => DAT_I(7), Y => n37, Z => tx_data(7));
   U156 : IVDA port map( A => DAT_I(6), Y => n36, Z => tx_data(6));
   U157 : IVDA port map( A => DAT_I(5), Y => n35, Z => tx_data(5));
   U158 : IVDA port map( A => DAT_I(4), Y => n34, Z => tx_data(4));
   U159 : IVDA port map( A => DAT_I(3), Y => n33, Z => tx_data(3));
   U160 : IVDA port map( A => DAT_I(2), Y => n32, Z => tx_data(2));
   U161 : IVDA port map( A => DAT_I(1), Y => n31, Z => tx_data(1));
   U162 : IVDA port map( A => DAT_I(0), Y => n30, Z => tx_data(0));
   U163 : IVDA port map( A => STB_I, Y => n_1189, Z => ACK_O);
   U164 : AO1P port map( A => RST_I, B => reg_addr_1001_q_0_port, C => 
                           master_rst, D => reg_addr_1000_q_0_port, Z => n47);
   U165 : IVI port map( A => n52, Z => n48);
   U166 : IVI port map( A => n52, Z => n49);
   U167 : IVI port map( A => n52, Z => n50);
   U168 : IVI port map( A => n52, Z => n51);
   U169 : IVI port map( A => n47, Z => n52);
   U170 : IVI port map( A => n52, Z => n53);
   U171 : IVI port map( A => n52, Z => n54);
   U172 : IVI port map( A => n52, Z => n55);
   U173 : IVI port map( A => n52, Z => n56);
   U174 : IVI port map( A => n52, Z => n57);
   U175 : IVI port map( A => n52, Z => n66);
   U176 : IVI port map( A => n52, Z => n203);
   U177 : IVI port map( A => n52, Z => n204);
   U178 : IVI port map( A => rx_data(1), Z => n205);
   U179 : IVI port map( A => rx_data(2), Z => n206);
   U180 : IVI port map( A => rx_data(3), Z => n207);
   
   U194 : IVI port map( A => n146, Z => n215);
   U195 : IVI port map( A => n102, Z => n216);
   U196 : IVI port map( A => n125, Z => n217);
   U197 : IVI port map( A => ADR_I(3), Z => n218);
   U198 : IVI port map( A => n152, Z => n219);
   U199 : IVI port map( A => ADR_I(1), Z => n220);
   U200 : IVI port map( A => n95, Z => n221);
   U201 : IVI port map( A => ADR_I(0), Z => n222);
   U202 : IVI port map( A => CYC_I, Z => n223);
   U181 : IVI port map( A => rx_data(4), Z => n208);
   U182 : IVI port map( A => n151, Z => n209);
   U190 : IVI port map( A => n87, Z => n210);
   U191 : IVI port map( A => n84, Z => n211);
   U192 : IVI port map( A => n76, Z => n212);
   U193 : IVI port map( A => n72, Z => n213);

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
      tx_func_data_1_port, tx_func_data_0_port, tx_func_apply_data, n_1190, 
      n_1191, n_1192, n_1193, n_1194, n_1195, n_1196, n_1197, n_1198 : 
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
                           ACK_O, word_width(3) => n_1190, word_width(2) => 
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
                           rx_fifo_empty, rx_fifo_entries_free(7) => n_1191, 
                           rx_fifo_entries_free(6) => n_1192, 
                           rx_fifo_entries_free(5) => n_1193, 
                           rx_fifo_entries_free(4) => n_1194, 
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
                           tx_fifo_empty, tx_fifo_entries_free(7) => n_1195, 
                           tx_fifo_entries_free(6) => n_1196, 
                           tx_fifo_entries_free(5) => n_1197, 
                           tx_fifo_entries_free(4) => n_1198, 
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
