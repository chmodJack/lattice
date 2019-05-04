
-- VHDL netlist produced by program ldbanno, Version Diamond (64-bit) 3.10.0.111.2

-- ldbanno -n VHDL -o led_impl1_vho.vho -w -neg -gui -msgset D:/code/fpga/lattice/led2/promote.xml led_impl1.ncd 
-- Netlist created on Sat Apr 27 17:43:14 2019
-- Netlist written on Sat Apr 27 17:44:46 2019
-- Design is for device LCMXO2-4000HC
-- Design is for package CSBGA132
-- Design is for performance grade 4

-- entity lut4
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut4 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut4 : ENTITY IS TRUE;

  end lut4;

  architecture Structure of lut4 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"0F0F")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity gnd
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity gnd is
    port (PWR0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gnd : ENTITY IS TRUE;

  end gnd;

  architecture Structure of gnd is
  begin
    INST1: VLO
      port map (Z=>PWR0);
  end Structure;

-- entity SLICE_0
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_0 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_0";

      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (C0: in Std_logic; F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_0 : ENTITY IS TRUE;

  end SLICE_0;

  architecture Structure of SLICE_0 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component lut4
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    sw_2_I_0_1_lut: lut4
      port map (A=>GNDI, B=>GNDI, C=>C0_ipd, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C0_ipd, C0, tipd_C0);
    END BLOCK;

    VitalBehavior : PROCESS (C0_ipd, F0_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40001
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40001 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40001 : ENTITY IS TRUE;

  end lut40001;

  architecture Structure of lut40001 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"3333")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_1
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_1 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_1";

      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (B0: in Std_logic; F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_1 : ENTITY IS TRUE;

  end SLICE_1;

  architecture Structure of SLICE_1 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal B0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40001
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    sw_1_I_0_1_lut: lut40001
      port map (A=>GNDI, B=>B0_ipd, C=>GNDI, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B0_ipd, B0, tipd_B0);
    END BLOCK;

    VitalBehavior : PROCESS (B0_ipd, F0_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40002
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40002 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40002 : ENTITY IS TRUE;

  end lut40002;

  architecture Structure of lut40002 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"5555")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_2
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_2 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_2";

      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (A0: in Std_logic; F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_2 : ENTITY IS TRUE;

  end SLICE_2;

  architecture Structure of SLICE_2 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40002
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    sw_0_I_0_1_lut: lut40002
      port map (A=>A0_ipd, B=>GNDI, C=>GNDI, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (A0_ipd, F0_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity xo2iobuf
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf is
    port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf : ENTITY IS TRUE;

  end xo2iobuf;

  architecture Structure of xo2iobuf is
  begin
    INST5: OBZPD
      port map (I=>I, T=>T, O=>PAD);
  end Structure;

-- entity led1_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity led1_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "led1_2_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_led12	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; led12: out Std_logic);

    ATTRIBUTE Vital_Level0 OF led1_2_B : ENTITY IS TRUE;

  end led1_2_B;

  architecture Structure of led1_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal led12_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    led1_pad_2: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>led12_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, led12_out)
    VARIABLE led12_zd         	: std_logic := 'X';
    VARIABLE led12_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    led12_zd 	:= led12_out;

    VitalPathDelay01 (
      OutSignal => led12, OutSignalName => "led12", OutTemp => led12_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_led12,
                           PathCondition => TRUE)),
      GlitchData => led12_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity led1_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity led1_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "led1_1_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_led11	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; led11: out Std_logic);

    ATTRIBUTE Vital_Level0 OF led1_1_B : ENTITY IS TRUE;

  end led1_1_B;

  architecture Structure of led1_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal led11_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    led1_pad_1: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>led11_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, led11_out)
    VARIABLE led11_zd         	: std_logic := 'X';
    VARIABLE led11_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    led11_zd 	:= led11_out;

    VitalPathDelay01 (
      OutSignal => led11, OutSignalName => "led11", OutTemp => led11_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_led11,
                           PathCondition => TRUE)),
      GlitchData => led11_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity led1_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity led1_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "led1_0_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_led10	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; led10: out Std_logic);

    ATTRIBUTE Vital_Level0 OF led1_0_B : ENTITY IS TRUE;

  end led1_0_B;

  architecture Structure of led1_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal led10_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    led1_pad_0: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>led10_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, led10_out)
    VARIABLE led10_zd         	: std_logic := 'X';
    VARIABLE led10_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    led10_zd 	:= led10_out;

    VitalPathDelay01 (
      OutSignal => led10, OutSignalName => "led10", OutTemp => led10_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_led10,
                           PathCondition => TRUE)),
      GlitchData => led10_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity led2_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity led2_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "led2_2_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_led22	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; led22: out Std_logic);

    ATTRIBUTE Vital_Level0 OF led2_2_B : ENTITY IS TRUE;

  end led2_2_B;

  architecture Structure of led2_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal led22_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    led2_pad_2: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>led22_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, led22_out)
    VARIABLE led22_zd         	: std_logic := 'X';
    VARIABLE led22_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    led22_zd 	:= led22_out;

    VitalPathDelay01 (
      OutSignal => led22, OutSignalName => "led22", OutTemp => led22_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_led22,
                           PathCondition => TRUE)),
      GlitchData => led22_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity led2_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity led2_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "led2_1_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_led21	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; led21: out Std_logic);

    ATTRIBUTE Vital_Level0 OF led2_1_B : ENTITY IS TRUE;

  end led2_1_B;

  architecture Structure of led2_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal led21_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    led2_pad_1: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>led21_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, led21_out)
    VARIABLE led21_zd         	: std_logic := 'X';
    VARIABLE led21_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    led21_zd 	:= led21_out;

    VitalPathDelay01 (
      OutSignal => led21, OutSignalName => "led21", OutTemp => led21_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_led21,
                           PathCondition => TRUE)),
      GlitchData => led21_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity led2_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity led2_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "led2_0_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_led20	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; led20: out Std_logic);

    ATTRIBUTE Vital_Level0 OF led2_0_B : ENTITY IS TRUE;

  end led2_0_B;

  architecture Structure of led2_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal led20_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    led2_pad_0: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>led20_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, led20_out)
    VARIABLE led20_zd         	: std_logic := 'X';
    VARIABLE led20_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    led20_zd 	:= led20_out;

    VitalPathDelay01 (
      OutSignal => led20, OutSignalName => "led20", OutTemp => led20_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_led20,
                           PathCondition => TRUE)),
      GlitchData => led20_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity xo2iobuf0003
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf0003 is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf0003 : ENTITY IS TRUE;

  end xo2iobuf0003;

  architecture Structure of xo2iobuf0003 is
  begin
    INST1: IBPD
      port map (I=>PAD, O=>Z);
  end Structure;

-- entity key_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity key_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "key_2_B";

      tipd_key2  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_key2_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_key2 	: VitalDelayType := 0 ns;
      tpw_key2_posedge	: VitalDelayType := 0 ns;
      tpw_key2_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; key2: in Std_logic);

    ATTRIBUTE Vital_Level0 OF key_2_B : ENTITY IS TRUE;

  end key_2_B;

  architecture Structure of key_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal key2_ipd 	: std_logic := 'X';

    component xo2iobuf0003
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    led1_c_2_pad: xo2iobuf0003
      port map (Z=>PADDI_out, PAD=>key2_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(key2_ipd, key2, tipd_key2);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, key2_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_key2_key2          	: x01 := '0';
    VARIABLE periodcheckinfo_key2	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => key2_ipd,
        TestSignalName => "key2",
        Period => tperiod_key2,
        PulseWidthHigh => tpw_key2_posedge,
        PulseWidthLow => tpw_key2_negedge,
        PeriodData => periodcheckinfo_key2,
        Violation => tviol_key2_key2,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => key2_ipd'last_event,
                           PathDelay => tpd_key2_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity key_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity key_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "key_1_B";

      tipd_key1  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_key1_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_key1 	: VitalDelayType := 0 ns;
      tpw_key1_posedge	: VitalDelayType := 0 ns;
      tpw_key1_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; key1: in Std_logic);

    ATTRIBUTE Vital_Level0 OF key_1_B : ENTITY IS TRUE;

  end key_1_B;

  architecture Structure of key_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal key1_ipd 	: std_logic := 'X';

    component xo2iobuf0003
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    led1_c_1_pad: xo2iobuf0003
      port map (Z=>PADDI_out, PAD=>key1_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(key1_ipd, key1, tipd_key1);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, key1_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_key1_key1          	: x01 := '0';
    VARIABLE periodcheckinfo_key1	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => key1_ipd,
        TestSignalName => "key1",
        Period => tperiod_key1,
        PulseWidthHigh => tpw_key1_posedge,
        PulseWidthLow => tpw_key1_negedge,
        PeriodData => periodcheckinfo_key1,
        Violation => tviol_key1_key1,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => key1_ipd'last_event,
                           PathDelay => tpd_key1_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity key_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity key_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "key_0_B";

      tipd_key0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_key0_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_key0 	: VitalDelayType := 0 ns;
      tpw_key0_posedge	: VitalDelayType := 0 ns;
      tpw_key0_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; key0: in Std_logic);

    ATTRIBUTE Vital_Level0 OF key_0_B : ENTITY IS TRUE;

  end key_0_B;

  architecture Structure of key_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal key0_ipd 	: std_logic := 'X';

    component xo2iobuf0003
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    led1_c_0_pad: xo2iobuf0003
      port map (Z=>PADDI_out, PAD=>key0_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(key0_ipd, key0, tipd_key0);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, key0_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_key0_key0          	: x01 := '0';
    VARIABLE periodcheckinfo_key0	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => key0_ipd,
        TestSignalName => "key0",
        Period => tperiod_key0,
        PulseWidthHigh => tpw_key0_posedge,
        PulseWidthLow => tpw_key0_negedge,
        PeriodData => periodcheckinfo_key0,
        Violation => tviol_key0_key0,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => key0_ipd'last_event,
                           PathDelay => tpd_key0_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sw_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity sw_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "sw_2_B";

      tipd_sw2  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_sw2_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_sw2 	: VitalDelayType := 0 ns;
      tpw_sw2_posedge	: VitalDelayType := 0 ns;
      tpw_sw2_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; sw2: in Std_logic);

    ATTRIBUTE Vital_Level0 OF sw_2_B : ENTITY IS TRUE;

  end sw_2_B;

  architecture Structure of sw_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal sw2_ipd 	: std_logic := 'X';

    component xo2iobuf0003
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    sw_pad_2: xo2iobuf0003
      port map (Z=>PADDI_out, PAD=>sw2_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(sw2_ipd, sw2, tipd_sw2);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, sw2_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_sw2_sw2          	: x01 := '0';
    VARIABLE periodcheckinfo_sw2	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => sw2_ipd,
        TestSignalName => "sw2",
        Period => tperiod_sw2,
        PulseWidthHigh => tpw_sw2_posedge,
        PulseWidthLow => tpw_sw2_negedge,
        PeriodData => periodcheckinfo_sw2,
        Violation => tviol_sw2_sw2,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => sw2_ipd'last_event,
                           PathDelay => tpd_sw2_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sw_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity sw_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "sw_1_B";

      tipd_sw1  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_sw1_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_sw1 	: VitalDelayType := 0 ns;
      tpw_sw1_posedge	: VitalDelayType := 0 ns;
      tpw_sw1_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; sw1: in Std_logic);

    ATTRIBUTE Vital_Level0 OF sw_1_B : ENTITY IS TRUE;

  end sw_1_B;

  architecture Structure of sw_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal sw1_ipd 	: std_logic := 'X';

    component xo2iobuf0003
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    sw_pad_1: xo2iobuf0003
      port map (Z=>PADDI_out, PAD=>sw1_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(sw1_ipd, sw1, tipd_sw1);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, sw1_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_sw1_sw1          	: x01 := '0';
    VARIABLE periodcheckinfo_sw1	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => sw1_ipd,
        TestSignalName => "sw1",
        Period => tperiod_sw1,
        PulseWidthHigh => tpw_sw1_posedge,
        PulseWidthLow => tpw_sw1_negedge,
        PeriodData => periodcheckinfo_sw1,
        Violation => tviol_sw1_sw1,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => sw1_ipd'last_event,
                           PathDelay => tpd_sw1_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sw_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity sw_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "sw_0_B";

      tipd_sw0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_sw0_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_sw0 	: VitalDelayType := 0 ns;
      tpw_sw0_posedge	: VitalDelayType := 0 ns;
      tpw_sw0_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; sw0: in Std_logic);

    ATTRIBUTE Vital_Level0 OF sw_0_B : ENTITY IS TRUE;

  end sw_0_B;

  architecture Structure of sw_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal sw0_ipd 	: std_logic := 'X';

    component xo2iobuf0003
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    sw_pad_0: xo2iobuf0003
      port map (Z=>PADDI_out, PAD=>sw0_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(sw0_ipd, sw0, tipd_sw0);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, sw0_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_sw0_sw0          	: x01 := '0';
    VARIABLE periodcheckinfo_sw0	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => sw0_ipd,
        TestSignalName => "sw0",
        Period => tperiod_sw0,
        PulseWidthHigh => tpw_sw0_posedge,
        PulseWidthLow => tpw_sw0_negedge,
        PeriodData => periodcheckinfo_sw0,
        Violation => tviol_sw0_sw0,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => sw0_ipd'last_event,
                           PathDelay => tpd_sw0_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity led
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity led is
    port (key: in Std_logic_vector (2 downto 0); 
          sw: in Std_logic_vector (2 downto 0); 
          led1: out Std_logic_vector (2 downto 0); 
          led2: out Std_logic_vector (2 downto 0));



  end led;

  architecture Structure of led is
    signal sw_c_2: Std_logic;
    signal led2_c_2: Std_logic;
    signal sw_c_1: Std_logic;
    signal led2_c_1: Std_logic;
    signal sw_c_0: Std_logic;
    signal led2_c_0: Std_logic;
    signal led1_c_2_c: Std_logic;
    signal led1_c_1_c: Std_logic;
    signal led1_c_0_c: Std_logic;
    signal VCCI: Std_logic;
    component SLICE_0
      port (C0: in Std_logic; F0: out Std_logic);
    end component;
    component SLICE_1
      port (B0: in Std_logic; F0: out Std_logic);
    end component;
    component SLICE_2
      port (A0: in Std_logic; F0: out Std_logic);
    end component;
    component led1_2_B
      port (PADDO: in Std_logic; led12: out Std_logic);
    end component;
    component led1_1_B
      port (PADDO: in Std_logic; led11: out Std_logic);
    end component;
    component led1_0_B
      port (PADDO: in Std_logic; led10: out Std_logic);
    end component;
    component led2_2_B
      port (PADDO: in Std_logic; led22: out Std_logic);
    end component;
    component led2_1_B
      port (PADDO: in Std_logic; led21: out Std_logic);
    end component;
    component led2_0_B
      port (PADDO: in Std_logic; led20: out Std_logic);
    end component;
    component key_2_B
      port (PADDI: out Std_logic; key2: in Std_logic);
    end component;
    component key_1_B
      port (PADDI: out Std_logic; key1: in Std_logic);
    end component;
    component key_0_B
      port (PADDI: out Std_logic; key0: in Std_logic);
    end component;
    component sw_2_B
      port (PADDI: out Std_logic; sw2: in Std_logic);
    end component;
    component sw_1_B
      port (PADDI: out Std_logic; sw1: in Std_logic);
    end component;
    component sw_0_B
      port (PADDI: out Std_logic; sw0: in Std_logic);
    end component;
  begin
    SLICE_0I: SLICE_0
      port map (C0=>sw_c_2, F0=>led2_c_2);
    SLICE_1I: SLICE_1
      port map (B0=>sw_c_1, F0=>led2_c_1);
    SLICE_2I: SLICE_2
      port map (A0=>sw_c_0, F0=>led2_c_0);
    led1_2_I: led1_2_B
      port map (PADDO=>led1_c_2_c, led12=>led1(2));
    led1_1_I: led1_1_B
      port map (PADDO=>led1_c_1_c, led11=>led1(1));
    led1_0_I: led1_0_B
      port map (PADDO=>led1_c_0_c, led10=>led1(0));
    led2_2_I: led2_2_B
      port map (PADDO=>led2_c_2, led22=>led2(2));
    led2_1_I: led2_1_B
      port map (PADDO=>led2_c_1, led21=>led2(1));
    led2_0_I: led2_0_B
      port map (PADDO=>led2_c_0, led20=>led2(0));
    key_2_I: key_2_B
      port map (PADDI=>led1_c_2_c, key2=>key(2));
    key_1_I: key_1_B
      port map (PADDI=>led1_c_1_c, key1=>key(1));
    key_0_I: key_0_B
      port map (PADDI=>led1_c_0_c, key0=>key(0));
    sw_2_I: sw_2_B
      port map (PADDI=>sw_c_2, sw2=>sw(2));
    sw_1_I: sw_1_B
      port map (PADDI=>sw_c_1, sw1=>sw(1));
    sw_0_I: sw_0_B
      port map (PADDI=>sw_c_0, sw0=>sw(0));
    VHI_INST: VHI
      port map (Z=>VCCI);
    PUR_INST: PUR
      port map (PUR=>VCCI);
    GSR_INST: GSR
      port map (GSR=>VCCI);
  end Structure;



  library IEEE, vital2000, MACHXO2;
  configuration Structure_CON of led is
    for Structure
    end for;
  end Structure_CON;


