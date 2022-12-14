library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

entity servoReadPin is
    Port ( 	clk : in  STD_LOGIC;

				s : in STD_LOGIC_VECTOR(7 DOWNTO 0);

				Qpwm : out  STD_LOGIC
				
			);

end servoReadPin;

architecture Behavioral of servoReadPin is

   signal COUNT : integer range 0 to 2048 ;

	signal sq : std_logic;

	signal spwm :  STD_LOGIC_VECTOR(174 DOWNTO 0);

	component DIVIDER is

		port 
		(
				CLK : in std_logic;

				Q : out std_logic
		);

   end component;
	
begin

process (sq)

begin

		if sq'event and sq = '1' then

			if (COUNT >= 2000) then

				COUNT <= 0;

			else

				COUNT <= COUNT +1;

			end if;
	
		end if;

end process;

process (COUNT)

	begin

		if (COUNT <= 100) then spwm(0) <= '1'; else spwm(0) <= '0'; end if;
		if (COUNT <= 101) then spwm(1) <= '1'; else spwm(1) <= '0'; end if;
		if (COUNT <= 102) then spwm(2) <= '1'; else spwm(2) <= '0'; end if;
		if (COUNT <= 103) then spwm(3) <= '1'; else spwm(3) <= '0'; end if;
		if (COUNT <= 104) then spwm(4) <= '1'; else spwm(4) <= '0'; end if;
		if (COUNT <= 105) then spwm(5) <= '1'; else spwm(5) <= '0'; end if;
		if (COUNT <= 106) then spwm(6) <= '1'; else spwm(6) <= '0'; end if;
		if (COUNT <= 107) then spwm(7) <= '1'; else spwm(7) <= '0'; end if;
		if (COUNT <= 108) then spwm(8) <= '1'; else spwm(8) <= '0'; end if;
		if (COUNT <= 110) then spwm(9) <= '1'; else spwm(9) <= '0'; end if;
		if (COUNT <= 111) then spwm(10) <= '1'; else spwm(10) <= '0'; end if;
		if (COUNT <= 112) then spwm(11) <= '1'; else spwm(11) <= '0'; end if;
		if (COUNT <= 113) then spwm(12) <= '1'; else spwm(12) <= '0'; end if;
		if (COUNT <= 114) then spwm(13) <= '1'; else spwm(13) <= '0'; end if;
		if (COUNT <= 115) then spwm(14) <= '1'; else spwm(14) <= '0'; end if;
		if (COUNT <= 116) then spwm(15) <= '1'; else spwm(15) <= '0'; end if;
		if (COUNT <= 117) then spwm(16) <= '1'; else spwm(16) <= '0'; end if;
		if (COUNT <= 118) then spwm(17) <= '1'; else spwm(17) <= '0'; end if;
		if (COUNT <= 120) then spwm(18) <= '1'; else spwm(18) <= '0'; end if;
		if (COUNT <= 121) then spwm(19) <= '1'; else spwm(19) <= '0'; end if;
		if (COUNT <= 122) then spwm(20) <= '1'; else spwm(20) <= '0'; end if;
		if (COUNT <= 123) then spwm(21) <= '1'; else spwm(21) <= '0'; end if;
		if (COUNT <= 124) then spwm(22) <= '1'; else spwm(22) <= '0'; end if;
		if (COUNT <= 125) then spwm(23) <= '1'; else spwm(23) <= '0'; end if;
		if (COUNT <= 126) then spwm(24) <= '1'; else spwm(24) <= '0'; end if;
		if (COUNT <= 127) then spwm(25) <= '1'; else spwm(25) <= '0'; end if;
		if (COUNT <= 128) then spwm(26) <= '1'; else spwm(26) <= '0'; end if;
		if (COUNT <= 130) then spwm(27) <= '1'; else spwm(27) <= '0'; end if;
		if (COUNT <= 131) then spwm(28) <= '1'; else spwm(28) <= '0'; end if;
		if (COUNT <= 132) then spwm(29) <= '1'; else spwm(29) <= '0'; end if;
		if (COUNT <= 133) then spwm(30) <= '1'; else spwm(30) <= '0'; end if;
		if (COUNT <= 134) then spwm(31) <= '1'; else spwm(31) <= '0'; end if;
		if (COUNT <= 135) then spwm(32) <= '1'; else spwm(32) <= '0'; end if;
		if (COUNT <= 136) then spwm(33) <= '1'; else spwm(33) <= '0'; end if;
		if (COUNT <= 137) then spwm(34) <= '1'; else spwm(34) <= '0'; end if;
		if (COUNT <= 138) then spwm(35) <= '1'; else spwm(35) <= '0'; end if;
		if (COUNT <= 140) then spwm(36) <= '1'; else spwm(36) <= '0'; end if;
		if (COUNT <= 141) then spwm(37) <= '1'; else spwm(37) <= '0'; end if;
		if (COUNT <= 142) then spwm(38) <= '1'; else spwm(38) <= '0'; end if;
		if (COUNT <= 143) then spwm(39) <= '1'; else spwm(39) <= '0'; end if;
		if (COUNT <= 144) then spwm(40) <= '1'; else spwm(40) <= '0'; end if;
		if (COUNT <= 145) then spwm(41) <= '1'; else spwm(41) <= '0'; end if;
		if (COUNT <= 146) then spwm(42) <= '1'; else spwm(42) <= '0'; end if;
		if (COUNT <= 147) then spwm(43) <= '1'; else spwm(43) <= '0'; end if;
		if (COUNT <= 148) then spwm(44) <= '1'; else spwm(44) <= '0'; end if;
		if (COUNT <= 150) then spwm(45) <= '1'; else spwm(45) <= '0'; end if;
		if (COUNT <= 151) then spwm(46) <= '1'; else spwm(46) <= '0'; end if;
		if (COUNT <= 152) then spwm(47) <= '1'; else spwm(47) <= '0'; end if;
		if (COUNT <= 153) then spwm(48) <= '1'; else spwm(48) <= '0'; end if;
		if (COUNT <= 154) then spwm(49) <= '1'; else spwm(49) <= '0'; end if;
		if (COUNT <= 155) then spwm(50) <= '1'; else spwm(50) <= '0'; end if;
		if (COUNT <= 156) then spwm(51) <= '1'; else spwm(51) <= '0'; end if;
		if (COUNT <= 157) then spwm(52) <= '1'; else spwm(52) <= '0'; end if;
		if (COUNT <= 158) then spwm(53) <= '1'; else spwm(53) <= '0'; end if;
		if (COUNT <= 160) then spwm(54) <= '1'; else spwm(54) <= '0'; end if;
		if (COUNT <= 161) then spwm(55) <= '1'; else spwm(55) <= '0'; end if;
		if (COUNT <= 162) then spwm(56) <= '1'; else spwm(56) <= '0'; end if;
		if (COUNT <= 163) then spwm(57) <= '1'; else spwm(57) <= '0'; end if;
		if (COUNT <= 164) then spwm(58) <= '1'; else spwm(58) <= '0'; end if;
		if (COUNT <= 165) then spwm(59) <= '1'; else spwm(59) <= '0'; end if;
		if (COUNT <= 166) then spwm(60) <= '1'; else spwm(60) <= '0'; end if;
		if (COUNT <= 167) then spwm(61) <= '1'; else spwm(61) <= '0'; end if;
		if (COUNT <= 168) then spwm(62) <= '1'; else spwm(62) <= '0'; end if;
		if (COUNT <= 170) then spwm(63) <= '1'; else spwm(63) <= '0'; end if;
		if (COUNT <= 171) then spwm(64) <= '1'; else spwm(64) <= '0'; end if;
		if (COUNT <= 172) then spwm(65) <= '1'; else spwm(65) <= '0'; end if;
		if (COUNT <= 173) then spwm(66) <= '1'; else spwm(66) <= '0'; end if;
		if (COUNT <= 174) then spwm(67) <= '1'; else spwm(67) <= '0'; end if;
		if (COUNT <= 175) then spwm(68) <= '1'; else spwm(68) <= '0'; end if;
		if (COUNT <= 176) then spwm(69) <= '1'; else spwm(69) <= '0'; end if;
		if (COUNT <= 177) then spwm(70) <= '1'; else spwm(70) <= '0'; end if;
		if (COUNT <= 178) then spwm(71) <= '1'; else spwm(71) <= '0'; end if;
		if (COUNT <= 180) then spwm(72) <= '1'; else spwm(72) <= '0'; end if;
		if (COUNT <= 181) then spwm(73) <= '1'; else spwm(73) <= '0'; end if;
		if (COUNT <= 182) then spwm(74) <= '1'; else spwm(74) <= '0'; end if;
		if (COUNT <= 183) then spwm(75) <= '1'; else spwm(75) <= '0'; end if;
		if (COUNT <= 184) then spwm(76) <= '1'; else spwm(76) <= '0'; end if;
		if (COUNT <= 185) then spwm(77) <= '1'; else spwm(77) <= '0'; end if;
		if (COUNT <= 186) then spwm(78) <= '1'; else spwm(78) <= '0'; end if;
		if (COUNT <= 187) then spwm(79) <= '1'; else spwm(79) <= '0'; end if;
		if (COUNT <= 188) then spwm(80) <= '1'; else spwm(80) <= '0'; end if;
		if (COUNT <= 190) then spwm(81) <= '1'; else spwm(81) <= '0'; end if;
		if (COUNT <= 191) then spwm(82) <= '1'; else spwm(82) <= '0'; end if;
		if (COUNT <= 192) then spwm(83) <= '1'; else spwm(83) <= '0'; end if;
		if (COUNT <= 193) then spwm(84) <= '1'; else spwm(84) <= '0'; end if;
		if (COUNT <= 194) then spwm(85) <= '1'; else spwm(85) <= '0'; end if;
		if (COUNT <= 195) then spwm(86) <= '1'; else spwm(86) <= '0'; end if;
		if (COUNT <= 196) then spwm(87) <= '1'; else spwm(87) <= '0'; end if;
		if (COUNT <= 197) then spwm(88) <= '1'; else spwm(88) <= '0'; end if;
		if (COUNT <= 198) then spwm(89) <= '1'; else spwm(89) <= '0'; end if;
		if (COUNT <= 200) then spwm(90) <= '1'; else spwm(90) <= '0'; end if;
		if (COUNT <= 201) then spwm(91) <= '1'; else spwm(91) <= '0'; end if;
		if (COUNT <= 202) then spwm(92) <= '1'; else spwm(92) <= '0'; end if;
		if (COUNT <= 203) then spwm(93) <= '1'; else spwm(93) <= '0'; end if;
		if (COUNT <= 204) then spwm(94) <= '1'; else spwm(94) <= '0'; end if;
		if (COUNT <= 205) then spwm(95) <= '1'; else spwm(95) <= '0'; end if;
		if (COUNT <= 206) then spwm(96) <= '1'; else spwm(96) <= '0'; end if;
		if (COUNT <= 207) then spwm(97) <= '1'; else spwm(97) <= '0'; end if;
		if (COUNT <= 208) then spwm(98) <= '1'; else spwm(98) <= '0'; end if;
		if (COUNT <= 210) then spwm(99) <= '1'; else spwm(99) <= '0'; end if;
		if (COUNT <= 211) then spwm(100) <= '1'; else spwm(100) <= '0'; end if;
		if (COUNT <= 212) then spwm(101) <= '1'; else spwm(101) <= '0'; end if;
		if (COUNT <= 213) then spwm(102) <= '1'; else spwm(102) <= '0'; end if;
		if (COUNT <= 214) then spwm(103) <= '1'; else spwm(103) <= '0'; end if;
		if (COUNT <= 215) then spwm(104) <= '1'; else spwm(104) <= '0'; end if;
		if (COUNT <= 216) then spwm(105) <= '1'; else spwm(105) <= '0'; end if;
		if (COUNT <= 217) then spwm(106) <= '1'; else spwm(106) <= '0'; end if;
		if (COUNT <= 218) then spwm(107) <= '1'; else spwm(107) <= '0'; end if;
		if (COUNT <= 220) then spwm(108) <= '1'; else spwm(108) <= '0'; end if;
		if (COUNT <= 221) then spwm(109) <= '1'; else spwm(109) <= '0'; end if;
		if (COUNT <= 222) then spwm(110) <= '1'; else spwm(110) <= '0'; end if;
		if (COUNT <= 223) then spwm(111) <= '1'; else spwm(111) <= '0'; end if;
		if (COUNT <= 224) then spwm(112) <= '1'; else spwm(112) <= '0'; end if;
		if (COUNT <= 225) then spwm(113) <= '1'; else spwm(113) <= '0'; end if;
		if (COUNT <= 226) then spwm(114) <= '1'; else spwm(114) <= '0'; end if;
		if (COUNT <= 227) then spwm(115) <= '1'; else spwm(115) <= '0'; end if;
		if (COUNT <= 228) then spwm(116) <= '1'; else spwm(116) <= '0'; end if;
		if (COUNT <= 230) then spwm(117) <= '1'; else spwm(117) <= '0'; end if;
		if (COUNT <= 231) then spwm(118) <= '1'; else spwm(118) <= '0'; end if;
		if (COUNT <= 232) then spwm(119) <= '1'; else spwm(119) <= '0'; end if;
		if (COUNT <= 233) then spwm(120) <= '1'; else spwm(120) <= '0'; end if;
		if (COUNT <= 234) then spwm(121) <= '1'; else spwm(121) <= '0'; end if;
		if (COUNT <= 235) then spwm(122) <= '1'; else spwm(122) <= '0'; end if;
		if (COUNT <= 236) then spwm(123) <= '1'; else spwm(123) <= '0'; end if;
		if (COUNT <= 237) then spwm(124) <= '1'; else spwm(124) <= '0'; end if;
		if (COUNT <= 238) then spwm(125) <= '1'; else spwm(125) <= '0'; end if;
		if (COUNT <= 240) then spwm(126) <= '1'; else spwm(126) <= '0'; end if;
		if (COUNT <= 241) then spwm(127) <= '1'; else spwm(127) <= '0'; end if;
		if (COUNT <= 242) then spwm(128) <= '1'; else spwm(128) <= '0'; end if;
		if (COUNT <= 243) then spwm(129) <= '1'; else spwm(129) <= '0'; end if;
		if (COUNT <= 244) then spwm(130) <= '1'; else spwm(130) <= '0'; end if;
		if (COUNT <= 245) then spwm(131) <= '1'; else spwm(131) <= '0'; end if;
		if (COUNT <= 246) then spwm(132) <= '1'; else spwm(132) <= '0'; end if;
		if (COUNT <= 247) then spwm(133) <= '1'; else spwm(133) <= '0'; end if;
		if (COUNT <= 248) then spwm(134) <= '1'; else spwm(134) <= '0'; end if;
		if (COUNT <= 250) then spwm(135) <= '1'; else spwm(135) <= '0'; end if;
		if (COUNT <= 251) then spwm(136) <= '1'; else spwm(136) <= '0'; end if;
		if (COUNT <= 252) then spwm(137) <= '1'; else spwm(137) <= '0'; end if;
		if (COUNT <= 253) then spwm(138) <= '1'; else spwm(138) <= '0'; end if;
		if (COUNT <= 254) then spwm(139) <= '1'; else spwm(139) <= '0'; end if;
		if (COUNT <= 255) then spwm(140) <= '1'; else spwm(140) <= '0'; end if;
		if (COUNT <= 256) then spwm(141) <= '1'; else spwm(141) <= '0'; end if;
		if (COUNT <= 257) then spwm(142) <= '1'; else spwm(142) <= '0'; end if;
		if (COUNT <= 258) then spwm(143) <= '1'; else spwm(143) <= '0'; end if;
		if (COUNT <= 260) then spwm(144) <= '1'; else spwm(144) <= '0'; end if;
		if (COUNT <= 261) then spwm(145) <= '1'; else spwm(145) <= '0'; end if;
		if (COUNT <= 262) then spwm(146) <= '1'; else spwm(146) <= '0'; end if;
		if (COUNT <= 263) then spwm(147) <= '1'; else spwm(147) <= '0'; end if;
		if (COUNT <= 264) then spwm(148) <= '1'; else spwm(148) <= '0'; end if;
		if (COUNT <= 265) then spwm(149) <= '1'; else spwm(149) <= '0'; end if;
		if (COUNT <= 266) then spwm(150) <= '1'; else spwm(150) <= '0'; end if;
		if (COUNT <= 267) then spwm(151) <= '1'; else spwm(151) <= '0'; end if;
		if (COUNT <= 268) then spwm(152) <= '1'; else spwm(152) <= '0'; end if;
		if (COUNT <= 270) then spwm(153) <= '1'; else spwm(153) <= '0'; end if;
		if (COUNT <= 271) then spwm(154) <= '1'; else spwm(154) <= '0'; end if;
		if (COUNT <= 272) then spwm(155) <= '1'; else spwm(155) <= '0'; end if;
--		if (COUNT <= 273) then spwm(156) <= '1'; else spwm(156) <= '0'; end if;
--		if (COUNT <= 274) then spwm(157) <= '1'; else spwm(157) <= '0'; end if;
--		if (COUNT <= 275) then spwm(158) <= '1'; else spwm(158) <= '0'; end if;
--		if (COUNT <= 276) then spwm(159) <= '1'; else spwm(159) <= '0'; end if;
--		if (COUNT <= 277) then spwm(160) <= '1'; else spwm(160) <= '0'; end if;
--		if (COUNT <= 278) then spwm(161) <= '1'; else spwm(161) <= '0'; end if;
--		if (COUNT <= 280) then spwm(162) <= '1'; else spwm(162) <= '0'; end if;
--		if (COUNT <= 281) then spwm(163) <= '1'; else spwm(163) <= '0'; end if;
--		if (COUNT <= 282) then spwm(164) <= '1'; else spwm(164) <= '0'; end if;
--		if (COUNT <= 283) then spwm(165) <= '1'; else spwm(165) <= '0'; end if;
--		if (COUNT <= 284) then spwm(166) <= '1'; else spwm(166) <= '0'; end if;
--		if (COUNT <= 285) then spwm(167) <= '1'; else spwm(167) <= '0'; end if;
--		if (COUNT <= 286) then spwm(168) <= '1'; else spwm(168) <= '0'; end if;
--		if (COUNT <= 287) then spwm(169) <= '1'; else spwm(169) <= '0'; end if;
--		if (COUNT <= 288) then spwm(170) <= '1'; else spwm(170) <= '0'; end if;
--		if (COUNT <= 290) then spwm(171) <= '1'; else spwm(171) <= '0'; end if;
--		if (COUNT <= 291) then spwm(172) <= '1'; else spwm(172) <= '0'; end if;

end process;

	Qpwm <= 	spwm(0)		when s = "00000000" else

				spwm(1) 		when s = "00000001" else

				spwm(2) 		when s = "00000010" else

				spwm(3) 		when s = "00000011" else
				
				spwm(4) 		when s = "00000100" else

				spwm(5) 		when s = "00000101" else

				spwm(6) 		when s = "00000110" else

				spwm(7) 		when s = "00000111" else
				
				spwm(8) 		when s = "00001000" else

				spwm(9) 		when s = "00001001" else

				spwm(10) 	when s = "00001010" else

				spwm(11) 	when s = "00001011" else
				
				spwm(12) 	when s = "00001100" else

				spwm(13) 	when s = "00001101" else

				spwm(14) 	when s = "00001110" else

				spwm(15) 	when s = "00001111" else
				
				spwm(16) 	when s = "00010000" else

				spwm(17) 	when s = "00010001" else

				spwm(18)		when s = "00010010" else
				
				spwm(19) 	when s = "00010011" else

				spwm(20) 	when s = "00010100" else

				spwm(21) 	when s = "00010101" else

				spwm(22) 	when s = "00010110" else
				
				spwm(23) 	when s = "00010111" else

				spwm(24) 	when s = "00011000" else

				spwm(25) 	when s = "00011001" else

				spwm(26) 	when s = "00011010" else
				
				spwm(27) 	when s = "00011011" else

				spwm(28) 	when s = "00011100" else

				spwm(29) 	when s = "00011101" else
				
				spwm(30) 	when s = "00011110" else

				spwm(31) 	when s = "00011111" else

				spwm(32) 	when s = "00100000" else

				spwm(33) 	when s = "00100001" else

				spwm(34) 	when s = "00100010" else

				spwm(35) 	when s = "00100011" else

				spwm(36) 	when s = "00100100" else	

				spwm(37) 	when s = "00100101" else

				spwm(38) 	when s = "00100110" else

				spwm(39) 	when s = "00100111" else

				spwm(40) 	when s = "00101000" else

				spwm(41) 	when s = "00101001" else

				spwm(42) 	when s = "00101010" else				
				
				spwm(43) 	when s = "00101011" else
				
				spwm(44) 	when s = "00101100" else
				
				spwm(45) 	when s = "00101101" else

				spwm(46) 	when s = "00101110" else

				spwm(47) 	when s = "00101111" else				
				
				spwm(48) 	when s = "00110000" else
				
				spwm(49) 	when s = "00110001" else
				
				spwm(50) 	when s = "00110010" else

				spwm(51) 	when s = "00110011" else

				spwm(52) 	when s = "00110100" else				
				
				spwm(53) 	when s = "00110101" else
				
				spwm(54) 	when s = "00110110" else
				
				spwm(55) 	when s = "00110111" else
				
				spwm(56) 	when s = "00111000" else

				spwm(57) 	when s = "00111001" else

				spwm(58) 	when s = "00111010" else				
				
				spwm(59) 	when s = "00111011" else
				
				spwm(60) 	when s = "00111100" else
				
				spwm(61) 	when s = "00111101" else
				
				spwm(62) 	when s = "00111110" else

				spwm(63) 	when s = "00111111" else

				spwm(64) 	when s = "01000000" else				
				
				spwm(65) 	when s = "01000001" else
				
				spwm(66) 	when s = "01000010" else
				
				spwm(67) 	when s = "01000011" else
				
				spwm(68) 	when s = "01000100" else
				
				spwm(69) 	when s = "01000101" else
				
				spwm(70) 	when s = "01000110" else
				
				spwm(71) 	when s = "01000111" else
				
				spwm(72) 	when s = "01001000" else
				
				spwm(73) 	when s = "01001001" else
				
				spwm(74) 	when s = "01001010" else
				
				spwm(75) 	when s = "01001011" else
				
				spwm(76) 	when s = "01001100" else
				
				spwm(77) 	when s = "01001101" else
				
				spwm(78) 	when s = "01001110" else
				
				spwm(79) 	when s = "01001111" else
				
				spwm(80) 	when s = "01010000" else
				
				spwm(81) 	when s = "01010001" else
				
				spwm(82) 	when s = "01010010" else
				
				spwm(83) 	when s = "01010011" else
				
				spwm(84) 	when s = "01010100" else
				
				spwm(85) 	when s = "01010101" else
				
				spwm(86) 	when s = "01010110" else
				
				spwm(87) 	when s = "01010111" else
				
				spwm(88) 	when s = "01011000" else
				
				spwm(89) 	when s = "01011001" else
				
				spwm(90) 	when s = "01011010" else
				
				spwm(91) 	when s = "01011011" else
				
				spwm(92) 	when s = "01011100" else
				
				spwm(93) 	when s = "01011101" else
				
				spwm(94) 	when s = "01011110" else
				
				spwm(95) 	when s = "01011111" else
				
				spwm(96) 	when s = "01100000" else
				
				spwm(97) 	when s = "01100001" else
				
				spwm(98) 	when s = "01100010" else
				
				spwm(99) 	when s = "01100011" else
				
				spwm(100) 	when s = "01100100" else
				
				spwm(101) 	when s = "01100101" else
				
				spwm(102) 	when s = "01100110" else
				
				spwm(103) 	when s = "01100111" else
				
				spwm(104) 	when s = "01101000" else
				
				spwm(105) 	when s = "01101001" else
				
				spwm(106) 	when s = "01101010" else
				
				spwm(107) 	when s = "01101011" else
				
				spwm(108) 	when s = "01101100" else
				
				spwm(109) 	when s = "01101101" else
				
				spwm(110) 	when s = "01101110" else
				
				spwm(111) 	when s = "01101111" else
				
				spwm(112) 	when s = "01110000" else
				
				spwm(113) 	when s = "01110001" else
				
				spwm(114) 	when s = "01110010" else
				
				spwm(115) 	when s = "01110011" else
				
				spwm(116) 	when s = "01110100" else
				
				spwm(117) 	when s = "01110101" else
				
				spwm(118) 	when s = "01110110" else
				
				spwm(119) 	when s = "01110111" else
				
				spwm(120) 	when s = "01111000" else
				
				spwm(121) 	when s = "01111001" else
				
				spwm(122) 	when s = "01111010" else
				
				spwm(123) 	when s = "01111011" else
				
				spwm(124) 	when s = "01111100" else
				
				spwm(125) 	when s = "01111101" else
				
				spwm(126) 	when s = "01111110" else
				
				spwm(127) 	when s = "01111111" else
				
				spwm(128) 	when s = "10000000" else
				
				spwm(129) 	when s = "10000001" else
				
				spwm(130) 	when s = "10000010" else
				
				spwm(131) 	when s = "10000011" else
				
				spwm(132) 	when s = "10000100" else
				
				spwm(133) 	when s = "10000101" else
				
				spwm(134) 	when s = "10000110" else
				
				spwm(135) 	when s = "10000111" else

				spwm(136) 	when s = "10001000" else
				
				spwm(137) 	when s = "10001001" else
				
				spwm(138) 	when s = "10001010" else
				
				spwm(139) 	when s = "10001011" else
				
				spwm(140) 	when s = "10001100" else
				
				spwm(141) 	when s = "10001101" else
				
				spwm(142) 	when s = "10001110" else
				
				spwm(143) 	when s = "10001111" else
				
				spwm(144) 	when s = "10010000" else
				
				spwm(145) 	when s = "10010001" else
				
				spwm(146) 	when s = "10010010" else
				
				spwm(147) 	when s = "10010011" else
				
				spwm(148) 	when s = "10010100" else
				
				spwm(149) 	when s = "10010101" else
				
				spwm(150) 	when s = "10010110" else
				
				spwm(151) 	when s = "10010111" else					
				
				spwm(152) 	when s = "10011000" else
				
				spwm(153) 	when s = "10011001" else
				
				spwm(154) 	when s = "10011010" else					
				
				spwm(155) 	when s = "10011011" else
				
				spwm(156) 	when s = "10011100" else					
				
				spwm(157) 	when s = "10011101" else
				
				spwm(158) 	when s = "10011110" else
				
				spwm(159) 	when s = "10011111" else					
				
				spwm(160) 	when s = "10100000" else
				
				spwm(161) 	when s = "10100001" else					
				
				spwm(162) 	when s = "10100010" else
				
				spwm(163) 	when s = "10100011" else
				
				spwm(164) 	when s = "10100100" else					
				
				spwm(165) 	when s = "10100101" else
				
				spwm(166) 	when s = "10100110" else					
				
				spwm(167) 	when s = "10100111" else
				
				spwm(168) 	when s = "10101000" else
				
				spwm(169) 	when s = "10101001" else					
				
				spwm(170) 	when s = "10101010" else
				
				spwm(171) 	when s = "10101011" else
				
				spwm(172) 	when s = "10101100" else
				
				spwm(173) 	when s = "10101100" else
				
				spwm(174);

c1: DIVIDER port map(CLK, sq);

end Behavioral;