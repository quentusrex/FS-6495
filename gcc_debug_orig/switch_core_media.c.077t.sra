
;; Function greedy_sort (greedy_sort)

Candidate (38925): mtmp
! Disqualifying mtmp - No scalar replacements to be created.
greedy_sort (struct switch_media_handle_t * smh, struct matches * matches, int m_idx, const struct switch_codec_implementation_t * * codec_array, int total_codecs)
{
  const struct switch_codec_implementation_t * imp;
  struct matches mtmp[30];
  int g;
  int f;
  int j;
  _Bool D.45442;
  _Bool D.45441;
  _Bool D.45440;
  int D.45439;
  struct switch_core_media_params_t * D.45438;
  struct matches * D.45437;
  unsigned int D.45436;
  unsigned int f.103;
  const struct switch_codec_implementation_t * D.45432;
  const struct switch_codec_implementation_t * * D.45431;
  unsigned int D.45430;
  unsigned int g.102;
  struct matches * D.45428;
  unsigned int D.45426;
  unsigned int j.101;

<bb 2>:
  # DEBUG j => 0
  # DEBUG f => 0
  mtmp = {};
  # DEBUG j => 0
  # DEBUG j => 0
  if (m_idx_10(D) > 0)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  # j_72 = PHI <j_18(3), 0(2)>
  j.101_11 = (unsigned int) j_72;
  D.45426_15 = j.101_11 * 16;
  D.45428_17 = matches_16(D) + D.45426_15;
  MEM[(struct matches *)&mtmp][j.101_11]{lb: 0 sz: 16} = *D.45428_17;
  j_18 = j_72 + 1;
  # DEBUG j => j_18
  # DEBUG j => j_18
  if (m_idx_10(D) > j_18)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 4>:
  # f_14 = PHI <0(3), 0(2)>
  # g_38 = PHI <0(3), 0(2)>
  # DEBUG g => g_38
  # DEBUG f => f_14
  D.45438_56 = smh_20(D)->mparams;
  D.45439_52 = D.45438_56->num_codecs;
  D.45440_57 = g_38 < D.45439_52;
  D.45441_58 = total_codecs_24(D) > g_38;
  D.45442_59 = D.45440_57 & D.45441_58;
  if (D.45442_59 != 0)
    goto <bb 5>;
  else
    goto <bb 10>;

<bb 5>:
  # f_60 = PHI <f_51(9), f_14(4)>
  # g_61 = PHI <g_42(9), g_38(4)>
  g.102_27 = (unsigned int) g_61;
  D.45430_28 = g.102_27 * 4;
  D.45431_30 = codec_array_29(D) + D.45430_28;
  imp_31 = *D.45431_30;
  # DEBUG imp => imp_31
  # DEBUG j => 0
  # DEBUG f => f_60
  # DEBUG j => 0
  if (m_idx_10(D) > 0)
    goto <bb 6>;
  else
    goto <bb 9>;

<bb 6>:
  # j_66 = PHI <j_41(8), 0(5)>
  # f_67 = PHI <f_3(8), f_60(5)>
  D.45432_33 = mtmp[j_66].imp;
  if (D.45432_33 == imp_31)
    goto <bb 7>;
  else
    goto <bb 8>;

<bb 7>:
  f.103_34 = (unsigned int) f_67;
  D.45436_35 = f.103_34 * 16;
  D.45437_36 = matches_16(D) + D.45436_35;
  j.101_37 = (unsigned int) j_66;
  *D.45437_36 = MEM[(struct matches *)&mtmp][j.101_37]{lb: 0 sz: 16};
  f_40 = f_67 + 1;
  # DEBUG f => f_40

<bb 8>:
  # f_3 = PHI <f_67(6), f_40(7)>
  # DEBUG f => f_3
  j_41 = j_66 + 1;
  # DEBUG j => j_41
  # DEBUG f => f_3
  # DEBUG j => j_41
  if (m_idx_10(D) > j_41)
    goto <bb 6>;
  else
    goto <bb 9>;

<bb 9>:
  # f_51 = PHI <f_3(8), f_60(5)>
  g_42 = g_61 + 1;
  # DEBUG g => g_42
  # DEBUG g => g_42
  # DEBUG f => f_51
  D.45438_21 = smh_20(D)->mparams;
  D.45439_22 = D.45438_21->num_codecs;
  D.45440_23 = D.45439_22 > g_42;
  D.45441_25 = total_codecs_24(D) > g_42;
  D.45442_26 = D.45440_23 & D.45441_25;
  if (D.45442_26 != 0)
    goto <bb 5>;
  else
    goto <bb 10>;

<bb 10>:
  return;

}



;; Function dtls_ok (dtls_ok)

dtls_ok (struct switch_core_session_t * session)
{
  uint32_t D.42521;
  struct switch_channel_t * D.42520;
  int D.42519;

<bb 2>:
  D.42520_2 = session_1(D)->channel;
  D.42521_3 = switch_channel_test_flag (D.42520_2, 111);
  D.42519_4 = (int) D.42521_3;
  return D.42519_4;

}



;; Function switch_core_media_find_zrtp_hash (switch_core_media_find_zrtp_hash)

switch_core_media_find_zrtp_hash (struct switch_core_session_t * session, struct sdp_session_t * sdp)
{
  const char D.47248;
  static const char __func__[33] = "switch_core_media_find_zrtp_hash";
  int got_video;
  int got_audio;
  struct sdp_attribute_t * attr;
  struct sdp_media_t * m;
  struct switch_channel_t * channel;
  char * D.40656;
  struct switch_core_session_t * D.40655;
  char * D.40651;
  struct switch_core_session_t * D.40650;
  const char * D.40647;
  int D.40645;
  const char * D.40639;
  _Bool D.40638;
  _Bool D.40637;
  _Bool D.40636;
  _Bool D.40634;
  _Bool D.40633;
  _Bool D.40632;
  sdp_media_e D.40631;
  long unsigned int D.40628;
  _Bool D.40625;
  _Bool D.40624;
  _Bool D.40623;
  struct switch_core_session_t * D.40622;
  struct switch_media_handle_t * D.40619;

<bb 2>:
  channel_10 = switch_core_session_get_channel (session_9(D));
  # DEBUG channel => channel_10
  # DEBUG got_audio => 0
  # DEBUG got_video => 0
  D.40619_13 = session_9(D)->media_handle;
  if (D.40619_13 == 0B)
    goto <bb 20>;
  else
    goto <bb 3>;

<bb 3>:
  # DEBUG D#1 => &D.40619_13->engines
  # DEBUG audio_engine => D#1
  # DEBUG D#2 => &D.40619_13->engines[1]
  # DEBUG video_engine => D#2
  D.40622_18 = switch_channel_get_session (channel_10);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 334, D.40622_18, 101, "Looking for zrtp-hash\n");
  m_20 = sdp_19(D)->sdp_media;
  # DEBUG m => m_20
  # DEBUG got_video => 0
  # DEBUG got_audio => 0
  # DEBUG m => m_20
  if (m_20 != 0B)
    goto <bb 4>;
  else
    goto <bb 20>;

<bb 4>:
  D.40623_88 = 0;
  D.40624_82 = 0;
  D.40625_87 = D.40623_88 & D.40624_82;
  if (D.40625_87 != 0)
    goto <bb 20>;
  else
    goto <bb 6>;

<bb 5>:
  D.40623_21 = got_audio_4 != 0;
  D.40624_22 = got_video_7 != 0;
  D.40625_23 = D.40623_21 & D.40624_22;
  if (D.40625_23 != 0)
    goto <bb 20>;
  else
    goto <bb 6>;

<bb 6>:
  # m_76 = PHI <m_54(5), m_20(4)>
  # got_audio_85 = PHI <got_audio_4(5), 0(4)>
  # got_video_86 = PHI <got_video_7(5), 0(4)>
  D.40628_24 = m_76->m_port;
  if (D.40628_24 != 0)
    goto <bb 7>;
  else
    goto <bb 19>;

<bb 7>:
  D.40631_25 = m_76->m_type;
  D.40632_26 = D.40631_25 == 2;
  D.40633_27 = got_audio_85 == 0;
  D.40634_28 = D.40632_26 & D.40633_27;
  if (D.40634_28 != 0)
    goto <bb 9>;
  else
    goto <bb 8>;

<bb 8>:
  D.40636_30 = D.40631_25 == 3;
  D.40637_31 = got_video_86 == 0;
  D.40638_32 = D.40636_30 & D.40637_31;
  if (D.40638_32 != 0)
    goto <bb 9>;
  else
    goto <bb 19>;

<bb 9>:
  attr_33 = m_76->m_attributes;
  # DEBUG attr => attr_33
  # DEBUG attr => attr_33
  if (attr_33 != 0B)
    goto <bb 10>;
  else
    goto <bb 19>;

<bb 10>:
  # attr_78 = PHI <attr_53(18), attr_33(9)>
  D.40639_34 = attr_78->a_name;
  # DEBUG s => D.40639_34
  if (D.40639_34 == 0B)
    goto <bb 18>;
  else
    goto <bb 11>;

<bb 11>:
  D.47248_73 = *D.40639_34;
  if (D.47248_73 == 0)
    goto <bb 18>;
  else
    goto <bb 21>;

<bb 12>:
Invalid sum of incoming frequencies 2030, should be 2387
  D.40647_38 = attr_78->a_value;
  if (D.40647_38 == 0B)
    goto <bb 18>;
  else
    goto <bb 13>;

<bb 13>:
  # attr_46 = PHI <attr_78(12)>
  if (D.40631_25 == 2)
    goto <bb 14>;
  else
    goto <bb 15>;

<bb 14>:
  D.40650_40 = switch_channel_get_session (channel_10);
  D.40647_41 = attr_46->a_value;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 343, D.40650_40, 7, "Found audio zrtp-hash; setting r_sdp_audio_zrtp_hash=%s\n", D.40647_41);
  D.40647_42 = attr_46->a_value;
  switch_channel_set_variable_var_check (channel_10, "r_sdp_audio_zrtp_hash", D.40647_42, 1);
  D.40647_43 = attr_46->a_value;
  D.40651_44 = switch_core_perform_session_strdup (session_9(D), D.40647_43, "src/switch_core_media.c", &__func__, 346);
  MEM[(struct switch_rtp_engine_t *)D.40619_13 + 80B].remote_sdp_zrtp_hash = D.40651_44;
  got_audio_45 = got_audio_85 + 1;
  # DEBUG got_audio => got_audio_45
  goto <bb 17>;

<bb 15>:
  if (D.40631_25 == 3)
    goto <bb 16>;
  else
    goto <bb 17>;

<bb 16>:
  D.40655_47 = switch_channel_get_session (channel_10);
  D.40647_48 = attr_46->a_value;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 349, D.40655_47, 7, "Found video zrtp-hash; setting r_sdp_video_zrtp_hash=%s\n", D.40647_48);
  D.40647_49 = attr_46->a_value;
  switch_channel_set_variable_var_check (channel_10, "r_sdp_video_zrtp_hash", D.40647_49, 1);
  D.40647_50 = attr_46->a_value;
  D.40656_51 = switch_core_perform_session_strdup (session_9(D), D.40647_50, "src/switch_core_media.c", &__func__, 352);
  MEM[(struct switch_rtp_engine_t *)D.40619_13 + 11496B].remote_sdp_zrtp_hash = D.40656_51;
  got_video_52 = got_video_86 + 1;
  # DEBUG got_video => got_video_52

<bb 17>:
  # got_audio_3 = PHI <got_audio_45(14), got_audio_85(15), got_audio_85(16)>
  # got_video_6 = PHI <got_video_86(14), got_video_86(15), got_video_52(16)>
  # DEBUG got_video => got_video_6
  # DEBUG got_audio => got_audio_3
  switch_channel_set_flag_value (channel_10, 75, 1);
  goto <bb 19>;

<bb 18>:
Invalid sum of incoming frequencies 7880, should be 7521
  attr_53 = attr_78->a_next;
  # DEBUG attr => attr_53
  # DEBUG attr => attr_53
  if (attr_53 != 0B)
    goto <bb 10>;
  else
    goto <bb 19>;

<bb 19>:
  # got_audio_4 = PHI <got_audio_85(6), got_audio_85(8), got_audio_3(17), got_audio_85(18), got_audio_85(9)>
  # got_video_7 = PHI <got_video_86(6), got_video_86(8), got_video_6(17), got_video_86(18), got_video_86(9)>
  # DEBUG got_video => got_video_7
  # DEBUG got_audio => got_audio_4
  m_54 = m_76->m_next;
  # DEBUG m => m_54
  # DEBUG got_video => got_video_7
  # DEBUG got_audio => got_audio_4
  # DEBUG m => m_54
  if (m_54 != 0B)
    goto <bb 5>;
  else
    goto <bb 20>;

<bb 20>:
  return;

<bb 21>:
  D.40645_37 = strcasecmp (D.40639_34, "zrtp-hash");
  if (D.40645_37 != 0)
    goto <bb 18>;
  else
    goto <bb 12>;

}



;; Function _switch_core_media_pass_zrtp_hash2 (_switch_core_media_pass_zrtp_hash2)

_switch_core_media_pass_zrtp_hash2 (struct switch_core_session_t * aleg_session, struct switch_core_session_t * bleg_session, switch_media_type_t type)
{
  static const char __func__[35] = "_switch_core_media_pass_zrtp_hash2";
  struct switch_rtp_engine_t * bleg_engine;
  struct switch_rtp_engine_t * aleg_engine;
  char * D.47198;
  char * D.47197;
  struct switch_core_session_t * D.47196;
  char * D.47193;
  char * D.47192;
  struct switch_channel_t * D.47191;
  char * D.47190;
  struct switch_core_session_t * D.47189;
  char * D.47186;
  struct switch_core_session_t * D.47185;
  uint32_t D.47182;
  struct switch_core_session_t * D.47181;
  struct switch_channel_t * D.47180;
  unsigned int D.47178;
  struct switch_media_handle_t * D.47176;
  struct switch_media_handle_t * D.47174;

<bb 2>:
  D.47174_2 = aleg_session_1(D)->media_handle;
  if (D.47174_2 == 0B)
    goto <bb 10>;
  else
    goto <bb 3>;

<bb 3>:
  D.47176_4 = bleg_session_3(D)->media_handle;
  if (D.47176_4 == 0B)
    goto <bb 10>;
  else
    goto <bb 4>;

<bb 4>:
  aleg_engine_9 = &D.47174_2->engines[type_7(D)]{lb: 0 sz: 11416};
  # DEBUG aleg_engine => aleg_engine_9
  bleg_engine_13 = &D.47176_4->engines[type_7(D)]{lb: 0 sz: 11416};
  # DEBUG bleg_engine => bleg_engine_13
  D.47180_14 = aleg_session_1(D)->channel;
  D.47181_15 = switch_channel_get_session (D.47180_14);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 255, D.47181_15, 101, "Deciding whether to pass zrtp-hash between a-leg and b-leg\n");
  D.47180_16 = aleg_session_1(D)->channel;
  D.47182_17 = switch_channel_test_flag (D.47180_16, 73);
  if (D.47182_17 == 0)
    goto <bb 5>;
  else
    goto <bb 6>;

<bb 5>:
  D.47180_18 = aleg_session_1(D)->channel;
  D.47185_19 = switch_channel_get_session (D.47180_18);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 259, D.47185_19, 101, "CF_ZRTP_PASSTHRU_REQ not set on a-leg, so not propagating zrtp-hash\n");
  goto <bb 10>;

<bb 6>:
  D.47186_20 = aleg_engine_9->remote_sdp_zrtp_hash;
  if (D.47186_20 != 0B)
    goto <bb 7>;
  else
    goto <bb 8>;

<bb 7>:
  D.47180_21 = aleg_session_1(D)->channel;
  D.47189_22 = switch_channel_get_session (D.47180_21);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 265, D.47189_22, 7, "Passing a-leg remote zrtp-hash (audio) to b-leg\n");
  D.47186_23 = aleg_engine_9->remote_sdp_zrtp_hash;
  D.47190_24 = switch_core_perform_session_strdup (bleg_session_3(D), D.47186_23, "src/switch_core_media.c", &__func__, 266);
  bleg_engine_13->local_sdp_zrtp_hash = D.47190_24;
  D.47191_25 = bleg_session_3(D)->channel;
  switch_channel_set_variable_var_check (D.47191_25, "l_sdp_audio_zrtp_hash", D.47190_24, 1);

<bb 8>:
  D.47193_27 = bleg_engine_13->remote_sdp_zrtp_hash;
  if (D.47193_27 != 0B)
    goto <bb 9>;
  else
    goto <bb 10>;

<bb 9>:
  D.47180_28 = aleg_session_1(D)->channel;
  D.47196_29 = switch_channel_get_session (D.47180_28);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 271, D.47196_29, 7, "Passing b-leg remote zrtp-hash (audio) to a-leg\n");
  D.47193_30 = bleg_engine_13->remote_sdp_zrtp_hash;
  D.47197_31 = switch_core_perform_session_strdup (aleg_session_1(D), D.47193_30, "src/switch_core_media.c", &__func__, 272);
  aleg_engine_9->local_sdp_zrtp_hash = D.47197_31;
  D.47180_32 = aleg_session_1(D)->channel;
  switch_channel_set_variable_var_check (D.47180_32, "l_sdp_audio_zrtp_hash", D.47197_31, 1);

<bb 10>:
  return;

}



;; Function switch_true (switch_true)

switch_true (const char * expr)
{
  int D.47253;
  switch_bool_t D.40615;
  int D.40613;
  int D.40611;
  int D.40609;
  int D.40607;
  int D.40605;
  int D.40603;
  int D.40601;
  int D.40595;

<bb 2>:
  if (expr_2(D) != 0B)
    goto <bb 3>;
  else
    goto <bb 12>;

<bb 3>:
  D.40601_3 = strcasecmp (expr_2(D), "yes");
  if (D.40601_3 == 0)
    goto <bb 13>;
  else
    goto <bb 4>;

<bb 4>:
  D.40603_4 = strcasecmp (expr_2(D), "on");
  if (D.40603_4 == 0)
    goto <bb 13>;
  else
    goto <bb 5>;

<bb 5>:
  D.40605_5 = strcasecmp (expr_2(D), "true");
  if (D.40605_5 == 0)
    goto <bb 13>;
  else
    goto <bb 6>;

<bb 6>:
  D.40607_6 = strcasecmp (expr_2(D), "t");
  if (D.40607_6 == 0)
    goto <bb 13>;
  else
    goto <bb 7>;

<bb 7>:
  D.40609_7 = strcasecmp (expr_2(D), "enabled");
  if (D.40609_7 == 0)
    goto <bb 13>;
  else
    goto <bb 8>;

<bb 8>:
  D.40611_8 = strcasecmp (expr_2(D), "active");
  if (D.40611_8 == 0)
    goto <bb 13>;
  else
    goto <bb 9>;

<bb 9>:
  D.40613_9 = strcasecmp (expr_2(D), "allow");
  if (D.40613_9 == 0)
    goto <bb 13>;
  else
    goto <bb 10>;

<bb 10>:
  D.40615_10 = switch_is_number (expr_2(D));
  if (D.40615_10 != 0)
    goto <bb 11>;
  else
    goto <bb 12>;

<bb 11>:
  # DEBUG __nptr => expr_2(D)
  D.47253_17 = strtol (expr_2(D), 0B, 10);
  if (D.47253_17 != 0)
    goto <bb 13>;
  else
    goto <bb 12>;

<bb 12>:

<bb 13>:
  # D.40595_1 = PHI <1(4), 0(12), 1(3), 1(11), 1(9), 1(8), 1(7), 1(6), 1(5)>
  return D.40595_1;

}



;; Function switch_false (switch_false)

switch_false (const char * expr)
{
  int D.47257;
  switch_bool_t D.41155;
  int D.41153;
  int D.41151;
  int D.41149;
  int D.41147;
  int D.41145;
  int D.41143;
  int D.41141;
  int D.41135;

<bb 2>:
  if (expr_2(D) != 0B)
    goto <bb 3>;
  else
    goto <bb 12>;

<bb 3>:
  D.41141_3 = strcasecmp (expr_2(D), "no");
  if (D.41141_3 == 0)
    goto <bb 13>;
  else
    goto <bb 4>;

<bb 4>:
  D.41143_4 = strcasecmp (expr_2(D), "off");
  if (D.41143_4 == 0)
    goto <bb 13>;
  else
    goto <bb 5>;

<bb 5>:
  D.41145_5 = strcasecmp (expr_2(D), "false");
  if (D.41145_5 == 0)
    goto <bb 13>;
  else
    goto <bb 6>;

<bb 6>:
  D.41147_6 = strcasecmp (expr_2(D), "f");
  if (D.41147_6 == 0)
    goto <bb 13>;
  else
    goto <bb 7>;

<bb 7>:
  D.41149_7 = strcasecmp (expr_2(D), "disabled");
  if (D.41149_7 == 0)
    goto <bb 13>;
  else
    goto <bb 8>;

<bb 8>:
  D.41151_8 = strcasecmp (expr_2(D), "inactive");
  if (D.41151_8 == 0)
    goto <bb 13>;
  else
    goto <bb 9>;

<bb 9>:
  D.41153_9 = strcasecmp (expr_2(D), "disallow");
  if (D.41153_9 == 0)
    goto <bb 13>;
  else
    goto <bb 10>;

<bb 10>:
  D.41155_10 = switch_is_number (expr_2(D));
  if (D.41155_10 != 0)
    goto <bb 11>;
  else
    goto <bb 12>;

<bb 11>:
  # DEBUG __nptr => expr_2(D)
  D.47257_17 = strtol (expr_2(D), 0B, 10);
  if (D.47257_17 == 0)
    goto <bb 13>;
  else
    goto <bb 12>;

<bb 12>:

<bb 13>:
  # D.41135_1 = PHI <1(4), 0(12), 1(3), 1(11), 1(9), 1(8), 1(7), 1(6), 1(5)>
  return D.41135_1;

}



;; Function gen_ice (gen_ice)

gen_ice (struct switch_core_session_t * session, switch_media_type_t type, const char * ip, switch_port_t port)
{
  const char D.47292;
  static const char __func__[8] = "gen_ice";
  static const char __PRETTY_FUNCTION__[8] = "gen_ice";
  char tmp[33];
  struct switch_rtp_engine_t * engine;
  struct switch_media_handle_t * smh;
  char * D.42961;
  int D.42952;
  char * D.42951;
  char * D.42948;
  char * D.42947;
  char * D.42944;
  char * D.42943;
  char * D.42940;
  char * D.42939;
  char * D.42936;
  char * D.42935;
  char * D.42932;
  int8_t D.42929;

<bb 2>:
  tmp = "";
  if (session_1(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 4608, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_2 = session_1(D)->media_handle;
  # DEBUG smh => smh_2
  if (smh_2 == 0B)
    goto <bb 24>;
  else
    goto <bb 5>;

<bb 5>:
  engine_6 = &smh_2->engines[type_4(D)]{lb: 0 sz: 11416};
  # DEBUG engine => engine_6
  D.42929_7 = engine_6->rtcp_mux;
  if (D.42929_7 == 0)
    goto <bb 6>;
  else
    goto <bb 7>;

<bb 6>:
  engine_6->rtcp_mux = 1;

<bb 7>:
  D.42932_8 = smh_2->msid;
  if (D.42932_8 == 0B)
    goto <bb 8>;
  else
    goto <bb 9>;

<bb 8>:
  switch_stun_random_string (&tmp, 32, 0B);
  tmp[32] = 0;
  D.42935_9 = switch_core_perform_session_strdup (session_1(D), &tmp, "src/switch_core_media.c", &__func__, 4625);
  smh_2->msid = D.42935_9;

<bb 9>:
  D.42936_10 = smh_2->cname;
  if (D.42936_10 == 0B)
    goto <bb 10>;
  else
    goto <bb 11>;

<bb 10>:
  switch_stun_random_string (&tmp, 16, 0B);
  tmp[16] = 0;
  D.42939_11 = switch_core_perform_session_strdup (session_1(D), &tmp, "src/switch_core_media.c", &__func__, 4631);
  smh_2->cname = D.42939_11;

<bb 11>:
  D.42940_12 = engine_6->ice_out.ufrag;
  if (D.42940_12 == 0B)
    goto <bb 12>;
  else
    goto <bb 13>;

<bb 12>:
  switch_stun_random_string (&tmp, 16, 0B);
  tmp[16] = 0;
  D.42943_13 = switch_core_perform_session_strdup (session_1(D), &tmp, "src/switch_core_media.c", &__func__, 4637);
  engine_6->ice_out.ufrag = D.42943_13;

<bb 13>:
  D.42944_14 = engine_6->ice_out.pwd;
  if (D.42944_14 == 0B)
    goto <bb 14>;
  else
    goto <bb 15>;

<bb 14>:
  switch_stun_random_string (&tmp, 16, 0B);
  D.42947_15 = switch_core_perform_session_strdup (session_1(D), &tmp, "src/switch_core_media.c", &__func__, 4642);
  engine_6->ice_out.pwd = D.42947_15;

<bb 15>:
  D.42948_16 = engine_6->ice_out.cands[0][0].foundation;
  if (D.42948_16 == 0B)
    goto <bb 16>;
  else
    goto <bb 17>;

<bb 16>:
  switch_stun_random_string (&tmp, 10, "0123456789");
  tmp[10] = 0;
  D.42951_17 = switch_core_perform_session_strdup (session_1(D), &tmp, "src/switch_core_media.c", &__func__, 4648);
  engine_6->ice_out.cands[0][0].foundation = D.42951_17;

<bb 17>:
  engine_6->ice_out.cands[0][0].transport = "udp";
  D.42952_18 = engine_6->ice_out.cands[0][0].component_id;
  if (D.42952_18 == 0)
    goto <bb 18>;
  else
    goto <bb 19>;

<bb 18>:
  engine_6->ice_out.cands[0][0].component_id = 1;
  engine_6->ice_out.cands[0][0].priority = 659136;

<bb 19>:
  # DEBUG s => ip_23(D)
  if (ip_23(D) == 0B)
    goto <bb 21>;
  else
    goto <bb 20>;

<bb 20>:
  D.47292_66 = *ip_23(D);
  if (D.47292_66 == 0)
    goto <bb 21>;
  else
    goto <bb 25>;

<bb 21>:
  if (port_26(D) != 0)
    goto <bb 22>;
  else
    goto <bb 23>;

<bb 22>:
  engine_6->ice_out.cands[0][0].con_port = port_26(D);

<bb 23>:
  engine_6->ice_out.cands[0][0].generation = "0";
  engine_6->ice_out.cands[0][0].ready = 1;

<bb 24>:
  return;

<bb 25>:
  D.42961_25 = switch_core_perform_session_strdup (session_1(D), ip_23(D), "src/switch_core_media.c", &__func__, 4659);
  engine_6->ice_out.cands[0][0].con_addr = D.42961_25;
  goto <bb 21>;

}



;; Function generate_local_fingerprint (generate_local_fingerprint)

generate_local_fingerprint (struct switch_media_handle_t * smh, switch_media_type_t type)
{
  char * cstore.236;
  struct switch_rtp_engine_t * engine;
  struct dtls_fingerprint_t * D.43000;
  char * D.42996;
  uint32_t D.42993;

<bb 2>:
  engine_5 = &smh_1(D)->engines[type_3(D)]{lb: 0 sz: 11416};
  # DEBUG engine => engine_5
  D.42993_6 = engine_5->local_dtls_fingerprint.len;
  if (D.42993_6 == 0)
    goto <bb 3>;
  else
    goto <bb 6>;

<bb 3>:
  D.42996_7 = engine_5->remote_dtls_fingerprint.type;
  if (D.42996_7 != 0B)
    goto <bb 5>;
  else
    goto <bb 4>;

<bb 4>:

<bb 5>:
  # cstore.236_13 = PHI <D.42996_7(3), "sha-256"(4)>
  engine_5->local_dtls_fingerprint.type = cstore.236_13;
  D.43000_9 = &engine_5->local_dtls_fingerprint;
  switch_core_cert_gen_fingerprint ("dtls-srtp", D.43000_9);

<bb 6>:
  return;

}



;; Function start_video_thread (start_video_thread) (unlikely executed)

start_video_thread (struct switch_core_session_t * session)
{
  static const char __func__[19] = "start_video_thread";
  struct switch_media_handle_t * smh;
  struct switch_memory_pool_t * pool;
  struct switch_threadattr_t * thd_attr;
  struct switch_memory_pool_t * D.43812;
  struct media_helper * D.43811;
  struct switch_thread_t * * D.43810;
  struct switch_mutex_t * * D.43809;
  struct switch_mutex_t * * D.43808;
  struct switch_thread_cond_t * * D.43807;
  struct switch_threadattr_t * thd_attr.69;
  switch_payload_t D.43805;
  struct payload_map_t * D.43804;
  struct switch_rtp_t * D.43803;
  char * D.43802;
  struct switch_channel_t * D.43801;
  struct switch_thread_t * D.43798;
  switch_status_t D.43797;

<bb 2>:
  thd_attr = 0B;
  pool_3 = switch_core_session_get_pool (session_2(D));
  # DEBUG pool => pool_3
  # DEBUG v_engine => 0B
  smh_5 = session_2(D)->media_handle;
  # DEBUG smh => smh_5
  if (smh_5 == 0B)
    goto <bb 5>;
  else
    goto <bb 3>;

<bb 3>:
  # DEBUG D#3 => &smh_5->engines[1]
  # DEBUG v_engine => D#3
  D.43798_8 = MEM[(struct switch_rtp_engine_t *)smh_5 + 11496B].media_thread;
  if (D.43798_8 != 0B)
    goto <bb 5>;
  else
    goto <bb 4>;

<bb 4>:
  D.43801_10 = switch_core_session_get_channel (session_2(D));
  D.43802_11 = switch_channel_get_name (D.43801_10);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4120, session_2(D), 5, "%s Starting Video thread\n", D.43802_11);
  D.43803_12 = MEM[(struct switch_rtp_engine_t *)smh_5 + 11496B].rtp_session;
  D.43804_13 = MEM[(struct switch_rtp_engine_t *)smh_5 + 11496B].cur_payload_map;
  D.43805_14 = D.43804_13->agreed_pt;
  switch_rtp_set_default_payload (D.43803_12, D.43805_14);
  MEM[(struct switch_rtp_engine_t *)smh_5 + 11496B].mh.session = session_2(D);
  switch_threadattr_create (&thd_attr, pool_3);
  thd_attr.69_15 = thd_attr;
  switch_threadattr_stacksize_set (thd_attr.69_15, 245760);
  D.43807_16 = &MEM[(struct switch_rtp_engine_t *)smh_5 + 11496B].mh.cond;
  switch_thread_cond_create (D.43807_16, pool_3);
  D.43808_17 = &MEM[(struct switch_rtp_engine_t *)smh_5 + 11496B].mh.cond_mutex;
  switch_mutex_init (D.43808_17, 1, pool_3);
  D.43809_18 = &MEM[(struct switch_rtp_engine_t *)smh_5 + 11496B].read_mutex[1];
  switch_mutex_init (D.43809_18, 1, pool_3);
  D.43810_19 = &MEM[(struct switch_rtp_engine_t *)smh_5 + 11496B].media_thread;
  thd_attr.69_20 = thd_attr;
  D.43811_21 = &MEM[(struct switch_rtp_engine_t *)smh_5 + 11496B].mh;
  D.43812_22 = switch_core_session_get_pool (session_2(D));
  switch_thread_create (D.43810_19, thd_attr.69_20, video_helper_thread, D.43811_21, D.43812_22);

<bb 5>:
  # D.43797_1 = PHI <1(2), 1(3), 0(4)>
  return D.43797_1;

}



;; Function video_helper_thread (video_helper_thread)

video_helper_thread (struct switch_thread_t * thread, void * obj)
{
  static const char __func__[20] = "video_helper_thread";
  struct switch_media_handle_t * smh;
  struct switch_frame_t * read_frame;
  switch_status_t status;
  struct switch_channel_t * channel;
  struct switch_core_session_t * session;
  char * D.43871;
  switch_channel_state_t D.43870;
  uint32_t D.43867;
  int D.43863;
  int D.43862;
  switch_frame_flag_t D.43861;
  struct switch_frame_t * read_frame.73;
  uint32_t D.43857;
  _Bool D.43852;
  _Bool D.43851;
  _Bool D.43850;
  uint32_t D.43847;
  uint32_t D.43844;
  uint32_t D.43841;
  uint32_t D.43837;
  char * iftmp.72;
  char * D.43835;
  struct switch_thread_cond_t * D.43834;
  uint32_t D.43830;
  char * iftmp.71;
  char * D.43828;
  uint32_t D.43825;
  uint32_t D.43821;
  char * iftmp.70;
  char * D.43819;
  struct switch_channel_t * D.43818;
  struct switch_mutex_t * D.43817;

<bb 2>:
  # DEBUG mh => obj_5(D)
  session_7 = MEM[(struct media_helper *)obj_5(D)].session;
  # DEBUG session => session_7
  channel_8 = switch_core_session_get_channel (session_7);
  # DEBUG channel => channel_8
  smh_9 = session_7->media_handle;
  # DEBUG smh => smh_9
  if (smh_9 == 0B)
    goto <bb 28>;
  else
    goto <bb 3>;

<bb 3>:
  switch_core_session_read_lock (session_7);
  MEM[(struct media_helper *)obj_5(D)].up = 1;
  D.43817_11 = MEM[(struct media_helper *)obj_5(D)].cond_mutex;
  switch_mutex_lock (D.43817_11);
  D.43818_12 = session_7->channel;
  D.43819_13 = switch_channel_get_name (D.43818_12);
  D.43821_14 = switch_channel_test_flag (channel_8, 115);
  if (D.43821_14 != 0)
    goto <bb 5>;
  else
    goto <bb 4>;

<bb 4>:

<bb 5>:
  # iftmp.70_2 = PHI <"on"(3), "off"(4)>
  switch_log_printf (0, "src/switch_core_media.c", &__func__, 4044, 0B, 7, "%s Video thread started. Echo is %s\n", D.43819_13, iftmp.70_2);
  switch_core_session_refresh_video (session_7);
  goto <bb 25>;

<bb 6>:
  D.43825_18 = switch_channel_test_flag (channel_8, 113);
  if (D.43825_18 != 0)
    goto <bb 7>;
  else
    goto <bb 12>;

<bb 7>:
  D.43818_19 = session_7->channel;
  D.43828_20 = switch_channel_get_name (D.43818_19);
  D.43830_21 = switch_channel_test_flag (channel_8, 115);
  if (D.43830_21 != 0)
    goto <bb 9>;
  else
    goto <bb 8>;

<bb 8>:

<bb 9>:
  # iftmp.71_3 = PHI <"on"(7), "off"(8)>
  switch_log_printf (0, "src/switch_core_media.c", &__func__, 4051, 0B, 7, "%s Video thread paused. Echo is %s\n", D.43828_20, iftmp.71_3);
  D.43834_24 = MEM[(struct media_helper *)obj_5(D)].cond;
  D.43817_25 = MEM[(struct media_helper *)obj_5(D)].cond_mutex;
  switch_thread_cond_wait (D.43834_24, D.43817_25);
  D.43818_26 = session_7->channel;
  D.43835_27 = switch_channel_get_name (D.43818_26);
  D.43837_28 = switch_channel_test_flag (channel_8, 115);
  if (D.43837_28 != 0)
    goto <bb 11>;
  else
    goto <bb 10>;

<bb 10>:

<bb 11>:
  # iftmp.72_4 = PHI <"on"(9), "off"(10)>
  switch_log_printf (0, "src/switch_core_media.c", &__func__, 4054, 0B, 7, "%s Video thread resumed  Echo is %s\n", D.43835_27, iftmp.72_4);
  switch_core_session_refresh_video (session_7);

<bb 12>:
  D.43841_31 = switch_channel_test_flag (channel_8, 113);
  if (D.43841_31 != 0)
    goto <bb 26>;
  else
    goto <bb 13>;

<bb 13>:
  D.43818_32 = session_7->channel;
  D.43844_33 = switch_channel_test_flag (D.43818_32, 1);
  if (D.43844_33 == 0)
    goto <bb 14>;
  else
    goto <bb 16>;

<bb 14>:
  D.43818_34 = session_7->channel;
  D.43847_35 = switch_channel_test_flag (D.43818_34, 3);
  if (D.43847_35 == 0)
    goto <bb 15>;
  else
    goto <bb 16>;

<bb 15>:
  switch_sleep (10000);
  goto <bb 24>;

<bb 16>:
  status_36 = switch_core_session_read_video_frame (session_7, &read_frame, 0, 0);
  # DEBUG status => status_36
  D.43850_37 = status_36 != 0;
  D.43851_38 = status_36 != 11;
  D.43852_39 = D.43850_37 & D.43851_38;
  if (D.43852_39 != 0)
    goto <bb 17>;
  else
    goto <bb 19>;

<bb 17>:
  if (status_36 != 10)
    goto <bb 18>;
  else
    goto <bb 19>;

<bb 18>:
  switch_cond_next ();
  goto <bb 24>;

<bb 19>:
  D.43857_40 = switch_channel_test_flag (channel_8, 70);
  if (D.43857_40 != 0)
    goto <bb 20>;
  else
    goto <bb 21>;

<bb 20>:
  switch_core_session_refresh_video (session_7);
  switch_channel_clear_flag (channel_8, 70);

<bb 21>:
  read_frame.73_41 = read_frame;
  D.43861_42 = read_frame.73_41->flags;
  D.43862_43 = (int) D.43861_42;
  D.43863_44 = D.43862_43 & 1;
  if (D.43863_44 != 0)
    goto <bb 24>;
  else
    goto <bb 22>;

<bb 22>:
  D.43867_46 = switch_channel_test_flag (channel_8, 115);
  if (D.43867_46 != 0)
    goto <bb 23>;
  else
    goto <bb 24>;

<bb 23>:
  read_frame.73_47 = read_frame;
  switch_core_session_write_video_frame (session_7, read_frame.73_47, 0, 0);

<bb 24>:

<bb 25>:

<bb 26>:
  D.43870_17 = switch_channel_get_state (channel_8);
  if (D.43870_17 <= 9)
    goto <bb 6>;
  else
    goto <bb 27>;

<bb 27>:
  D.43818_48 = session_7->channel;
  D.43871_49 = switch_channel_get_name (D.43818_48);
  switch_log_printf (0, "src/switch_core_media.c", &__func__, 4093, 0B, 7, "%s Video thread ended\n", D.43871_49);
  D.43817_50 = MEM[(struct media_helper *)obj_5(D)].cond_mutex;
  switch_mutex_unlock (D.43817_50);
  switch_core_session_rwunlock (session_7);
  MEM[(struct media_helper *)obj_5(D)].up = 0;

<bb 28>:
  return 0B;

}



;; Function switch_core_media_process_udptl (switch_core_media_process_udptl)

switch_core_media_process_udptl (struct switch_core_session_t * session, struct sdp_session_t * sdp, struct sdp_media_t * m)
{
  int D.47318;
  int D.47315;
  int dft;
  int dft;
  int dft;
  int D.47303;
  int D.47300;
  static const char __func__[32] = "switch_core_media_process_udptl";
  struct sdp_attribute_t * attr;
  struct switch_t38_options_t * t38_options;
  char * D.45416;
  int D.45411;
  char * D.45410;
  int D.45407;
  unsigned int D.45404;
  int D.45400;
  unsigned int D.45397;
  int D.45393;
  char * D.45390;
  int D.45387;
  switch_bool_t D.45383;
  int D.45379;
  switch_bool_t D.45377;
  int D.45373;
  switch_bool_t D.45371;
  int D.45367;
  unsigned int D.45366;
  int D.45362;
  short unsigned int D.45359;
  const char * D.45356;
  int D.45354;
  const char * D.45353;
  char * D.45350;
  const char * D.45347;
  struct sdp_connection_t * D.45344;
  char * D.45341;
  const char * D.45339;
  struct sdp_connection_t * D.45337;
  char * D.45333;
  const char * D.45332;
  struct sdp_origin_t * D.45329;
  short unsigned int D.45328;
  long unsigned int D.45327;
  char * D.45326;
  char * D.45325;
  struct switch_channel_t * D.45322;

<bb 2>:
  D.45322_4 = session_3(D)->channel;
  t38_options_5 = switch_channel_get_private (D.45322_4, "t38_options");
  # DEBUG t38_options => t38_options_5
  if (t38_options_5 == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  t38_options_6 = switch_core_perform_session_alloc (session_3(D), 60, "src/switch_core_media.c", &__func__, 369);
  # DEBUG t38_options => t38_options_6
  t38_options_6->T38FaxVersion = 0;
  t38_options_6->T38MaxBitRate = 14400;
  D.45325_7 = switch_core_perform_session_strdup (session_3(D), "transferredTCF", "src/switch_core_media.c", &__func__, 374);
  t38_options_6->T38FaxRateManagement = D.45325_7;
  D.45326_8 = switch_core_perform_session_strdup (session_3(D), "t38UDPRedundancy", "src/switch_core_media.c", &__func__, 375);
  t38_options_6->T38FaxUdpEC = D.45326_8;
  t38_options_6->T38FaxMaxBuffer = 500;
  t38_options_6->T38FaxMaxDatagram = 500;

<bb 4>:
  # t38_options_1 = PHI <t38_options_5(2), t38_options_6(3)>
  # DEBUG t38_options => t38_options_1
  D.45327_10 = m_9(D)->m_port;
  D.45328_11 = (short unsigned int) D.45327_10;
  t38_options_1->remote_port = D.45328_11;
  D.45329_13 = sdp_12(D)->sdp_origin;
  if (D.45329_13 != 0B)
    goto <bb 5>;
  else
    goto <bb 6>;

<bb 5>:
  D.45332_15 = D.45329_13->o_username;
  D.45333_16 = switch_core_perform_session_strdup (session_3(D), D.45332_15, "src/switch_core_media.c", &__func__, 383);
  t38_options_1->sdp_o_line = D.45333_16;
  goto <bb 7>;

<bb 6>:
  t38_options_1->sdp_o_line = "unknown";

<bb 7>:
  D.45337_17 = m_9(D)->m_connections;
  if (D.45337_17 != 0B)
    goto <bb 8>;
  else
    goto <bb 10>;

<bb 8>:
  D.45339_19 = D.45337_17->c_address;
  if (D.45339_19 != 0B)
    goto <bb 9>;
  else
    goto <bb 10>;

<bb 9>:
  D.45341_22 = switch_core_perform_session_strdup (session_3(D), D.45339_19, "src/switch_core_media.c", &__func__, 389);
  t38_options_1->remote_ip = D.45341_22;
  goto <bb 13>;

<bb 10>:
  D.45344_23 = sdp_12(D)->sdp_connection;
  if (D.45344_23 != 0B)
    goto <bb 11>;
  else
    goto <bb 13>;

<bb 11>:
  D.45347_25 = D.45344_23->c_address;
  if (D.45347_25 != 0B)
    goto <bb 12>;
  else
    goto <bb 13>;

<bb 12>:
  D.45350_28 = switch_core_perform_session_strdup (session_3(D), D.45347_25, "src/switch_core_media.c", &__func__, 391);
  t38_options_1->remote_ip = D.45350_28;

<bb 13>:
  attr_29 = m_9(D)->m_attributes;
  # DEBUG attr => attr_29
  # DEBUG attr => attr_29
  if (attr_29 != 0B)
    goto <bb 14>;
  else
    goto <bb 48>;

<bb 14>:
  # attr_24 = PHI <attr_84(47), attr_29(13)>
  D.45353_30 = attr_24->a_name;
  D.45354_31 = strcasecmp (D.45353_30, "T38FaxVersion");
  if (D.45354_31 == 0)
    goto <bb 15>;
  else
    goto <bb 17>;

<bb 15>:
  D.45356_32 = attr_24->a_value;
  if (D.45356_32 != 0B)
    goto <bb 16>;
  else
    goto <bb 17>;

<bb 16>:
  # DEBUG __nptr => D.45356_32
  D.47300_136 = strtol (D.45356_32, 0B, 10);
  D.45359_35 = (short unsigned int) D.47300_136;
  t38_options_1->T38FaxVersion = D.45359_35;
  goto <bb 47>;

<bb 17>:
  D.45362_37 = strcasecmp (D.45353_30, "T38MaxBitRate");
  if (D.45362_37 == 0)
    goto <bb 18>;
  else
    goto <bb 20>;

<bb 18>:
  D.45356_38 = attr_24->a_value;
  if (D.45356_38 != 0B)
    goto <bb 19>;
  else
    goto <bb 20>;

<bb 19>:
  # DEBUG __nptr => D.45356_38
  D.47303_137 = strtol (D.45356_38, 0B, 10);
  D.45366_41 = (unsigned int) D.47303_137;
  t38_options_1->T38MaxBitRate = D.45366_41;
  goto <bb 47>;

<bb 20>:
  D.45367_43 = strcasecmp (D.45353_30, "T38FaxFillBitRemoval");
  if (D.45367_43 == 0)
    goto <bb 21>;
  else
    goto <bb 24>;

<bb 21>:
  D.45356_44 = attr_24->a_value;
  # DEBUG nptr => D.45356_44
  # DEBUG dft => 1
  if (D.45356_44 != 0B)
    goto <bb 22>;
  else
    goto <bb 23>;

<bb 22>:
  # DEBUG __nptr => D.45356_44
  dft_138 = strtol (D.45356_44, 0B, 10);

<bb 23>:
  # dft_139 = PHI <1(21), dft_138(22)>
  D.45371_46 = (switch_bool_t) dft_139;
  t38_options_1->T38FaxFillBitRemoval = D.45371_46;
  goto <bb 47>;

<bb 24>:
  D.45373_48 = strcasecmp (D.45353_30, "T38FaxTranscodingMMR");
  if (D.45373_48 == 0)
    goto <bb 25>;
  else
    goto <bb 28>;

<bb 25>:
  D.45356_49 = attr_24->a_value;
  # DEBUG nptr => D.45356_49
  # DEBUG dft => 1
  if (D.45356_49 != 0B)
    goto <bb 26>;
  else
    goto <bb 27>;

<bb 26>:
  # DEBUG __nptr => D.45356_49
  dft_140 = strtol (D.45356_49, 0B, 10);

<bb 27>:
  # dft_141 = PHI <1(25), dft_140(26)>
  D.45377_51 = (switch_bool_t) dft_141;
  t38_options_1->T38FaxTranscodingMMR = D.45377_51;
  goto <bb 47>;

<bb 28>:
  D.45379_53 = strcasecmp (D.45353_30, "T38FaxTranscodingJBIG");
  if (D.45379_53 == 0)
    goto <bb 29>;
  else
    goto <bb 32>;

<bb 29>:
  D.45356_54 = attr_24->a_value;
  # DEBUG nptr => D.45356_54
  # DEBUG dft => 1
  if (D.45356_54 != 0B)
    goto <bb 30>;
  else
    goto <bb 31>;

<bb 30>:
  # DEBUG __nptr => D.45356_54
  dft_142 = strtol (D.45356_54, 0B, 10);

<bb 31>:
  # dft_143 = PHI <1(29), dft_142(30)>
  D.45383_56 = (switch_bool_t) dft_143;
  t38_options_1->T38FaxTranscodingJBIG = D.45383_56;
  goto <bb 47>;

<bb 32>:
  D.45387_58 = strcasecmp (D.45353_30, "T38FaxRateManagement");
  if (D.45387_58 == 0)
    goto <bb 33>;
  else
    goto <bb 35>;

<bb 33>:
  D.45356_59 = attr_24->a_value;
  if (D.45356_59 != 0B)
    goto <bb 34>;
  else
    goto <bb 35>;

<bb 34>:
  D.45390_61 = switch_core_perform_session_strdup (session_3(D), D.45356_59, "src/switch_core_media.c", &__func__, 406);
  t38_options_1->T38FaxRateManagement = D.45390_61;
  goto <bb 47>;

<bb 35>:
  D.45393_63 = strcasecmp (D.45353_30, "T38FaxMaxBuffer");
  if (D.45393_63 == 0)
    goto <bb 36>;
  else
    goto <bb 38>;

<bb 36>:
  D.45356_64 = attr_24->a_value;
  if (D.45356_64 != 0B)
    goto <bb 37>;
  else
    goto <bb 38>;

<bb 37>:
  # DEBUG __nptr => D.45356_64
  D.47315_144 = strtol (D.45356_64, 0B, 10);
  D.45397_67 = (unsigned int) D.47315_144;
  t38_options_1->T38FaxMaxBuffer = D.45397_67;
  goto <bb 47>;

<bb 38>:
  D.45400_69 = strcasecmp (D.45353_30, "T38FaxMaxDatagram");
  if (D.45400_69 == 0)
    goto <bb 39>;
  else
    goto <bb 41>;

<bb 39>:
  D.45356_70 = attr_24->a_value;
  if (D.45356_70 != 0B)
    goto <bb 40>;
  else
    goto <bb 41>;

<bb 40>:
  # DEBUG __nptr => D.45356_70
  D.47318_145 = strtol (D.45356_70, 0B, 10);
  D.45404_73 = (unsigned int) D.47318_145;
  t38_options_1->T38FaxMaxDatagram = D.45404_73;
  goto <bb 47>;

<bb 41>:
  D.45407_75 = strcasecmp (D.45353_30, "T38FaxUdpEC");
  if (D.45407_75 == 0)
    goto <bb 42>;
  else
    goto <bb 44>;

<bb 42>:
  D.45356_76 = attr_24->a_value;
  if (D.45356_76 != 0B)
    goto <bb 43>;
  else
    goto <bb 44>;

<bb 43>:
  D.45410_78 = switch_core_perform_session_strdup (session_3(D), D.45356_76, "src/switch_core_media.c", &__func__, 412);
  t38_options_1->T38FaxUdpEC = D.45410_78;
  goto <bb 47>;

<bb 44>:
  D.45411_80 = strcasecmp (D.45353_30, "T38VendorInfo");
  if (D.45411_80 == 0)
    goto <bb 45>;
  else
    goto <bb 47>;

<bb 45>:
  D.45356_81 = attr_24->a_value;
  if (D.45356_81 != 0B)
    goto <bb 46>;
  else
    goto <bb 47>;

<bb 46>:
  D.45416_83 = switch_core_perform_session_strdup (session_3(D), D.45356_81, "src/switch_core_media.c", &__func__, 414);
  t38_options_1->T38VendorInfo = D.45416_83;

<bb 47>:
  attr_84 = attr_24->a_next;
  # DEBUG attr => attr_84
  # DEBUG attr => attr_84
  if (attr_84 != 0B)
    goto <bb 14>;
  else
    goto <bb 48>;

<bb 48>:
  D.45322_85 = session_3(D)->channel;
  switch_channel_set_variable_var_check (D.45322_85, "has_t38", "true", 1);
  D.45322_86 = session_3(D)->channel;
  switch_channel_set_private (D.45322_86, "t38_options", t38_options_1);
  D.45322_87 = session_3(D)->channel;
  switch_channel_set_app_flag_key ("T38", D.45322_87, 2);
  D.45322_88 = session_3(D)->channel;
  switch_channel_execute_on (D.45322_88, "sip_execute_on_image");
  D.45322_89 = session_3(D)->channel;
  switch_channel_api_on (D.45322_89, "sip_api_on_image");
  return t38_options_1;

}



;; Function get_media_profile_name (get_media_profile_name)

get_media_profile_name (struct switch_core_session_t * session, int secure)
{
  const char * D.42974;
  uint32_t D.42971;
  uint32_t D.42968;
  struct switch_channel_t * D.42967;

<bb 2>:
  if (session_2(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 5582, &__PRETTY_FUNCTION__);

<bb 4>:
  D.42967_3 = session_2(D)->channel;
  D.42968_4 = switch_channel_test_flag (D.42967_3, 106);
  if (D.42968_4 != 0)
    goto <bb 5>;
  else
    goto <bb 7>;

<bb 5>:
  D.42967_5 = session_2(D)->channel;
  D.42971_6 = switch_channel_test_flag (D.42967_5, 107);
  if (D.42971_6 != 0)
    goto <bb 9>;
  else
    goto <bb 6>;

<bb 6>:
  goto <bb 9>;

<bb 7>:
  if (secure_9(D) != 0)
    goto <bb 9>;
  else
    goto <bb 8>;

<bb 8>:

<bb 9>:
  # D.42974_1 = PHI <"UDP/TLS/RTP/SAVPF"(5), "RTP/SAVPF"(6), "RTP/SAVP"(7), "RTP/AVP"(8)>
  return D.42974_1;

}



;; Function add_audio_codec.constprop.7 (add_audio_codec.constprop.7)

add_audio_codec.constprop.7 (struct sdp_rtpmap_t * map, int ptime, char * buf)
{
  const char * D.48400;
  <unnamed-unsigned:7> D.48399;
  uint32_t D.48398;
  uint32_t D.48397;
  int D.48396;
  const char * D.48395;
  int D.48394;
  int D.48393;
  long unsigned int D.48392;
  switch_status_t D.48391;
  int D.48390;
  int D.48389;
  size_t D.48388;
  char * D.48387;
  switch_size_t D.48385;
  uint32_t map_bit_rate;
  char ptstr[20];
  char ratestr[20];
  char bitstr[20];
  struct switch_codec_fmtp_t codec_fmtp;
  unsigned char csui.173;
  const char D.48382;

<bb 2>:
  # DEBUG buflen => 1024
  # DEBUG codec_ms => ptime_1(D)
  # DEBUG map_bit_rate => 0
  ptstr = "";
  ratestr = "";
  bitstr = "";
  codec_fmtp = {};
  if (ptime_1(D) == 0)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  D.48400_3 = map_2(D)->rm_encoding;
  D.48399_4 = map_2(D)->rm_pt;
  D.48398_5 = (uint32_t) D.48399_4;
  D.48397_6 = switch_default_ptime (D.48400_3, D.48398_5);
  ptime_7 = (int) D.48397_6;
  # DEBUG codec_ms => ptime_7

<bb 4>:
  # ptime_40 = PHI <ptime_1(D)(2), ptime_7(3)>
  # DEBUG codec_ms => ptime_40
  D.48399_8 = map_2(D)->rm_pt;
  csui.173_9 = (unsigned char) D.48399_8;
  # DEBUG payload => csui.173_9
  if (csui.173_9 <= 18)
    goto <bb 5> (<L0>);
  else
    goto <bb 6> (<L1>);

<L0>:
  map_bit_rate_10 = CSWTCH.174[csui.173_9];

  # map_bit_rate_41 = PHI <0(4), map_bit_rate_10(5)>
<L1>:
<L2>:
  # DEBUG map_bit_rate => NULL
  if (ptime_1(D) == 0)
    goto <bb 7>;
  else
    goto <bb 9>;

<bb 7>:
  D.48400_11 = map_2(D)->rm_encoding;
  D.48396_12 = strcasecmp (D.48400_11, "g723");
  if (D.48396_12 == 0)
    goto <bb 8>;
  else
    goto <bb 9>;

<bb 8>:
  # DEBUG codec_ms => 30
  # DEBUG ptime => 30

<bb 9>:
  # ptime_42 = PHI <ptime_40(6), ptime_40(7), 30(8)>
  # DEBUG codec_ms => ptime_42
  D.48395_13 = map_2(D)->rm_fmtp;
  # DEBUG s => D.48395_13
  if (D.48395_13 == 0B)
    goto <bb 11>;
  else
    goto <bb 10>;

<bb 10>:
  D.48382_14 = *D.48395_13;
  if (D.48382_14 == 0)
    goto <bb 11>;
  else
    goto <bb 25>;

<bb 11>:
Invalid sum of incoming frequencies 5750, should be 1500
  D.48400_16 = map_2(D)->rm_encoding;
  D.48394_17 = strcasecmp (D.48400_16, "ilbc");
  if (D.48394_17 == 0)
    goto <bb 18>;
  else
    goto <bb 12>;

<bb 12>:
Invalid sum of incoming frequencies 750, should be 3550
  D.48393_19 = strcasecmp (D.48400_16, "isac");
  if (D.48393_19 == 0)
    goto <bb 13>;
  else
    goto <bb 18>;

<bb 13>:
  # DEBUG codec_ms => 30
  # DEBUG ptime => 30
  # DEBUG map_bit_rate => 32000
  goto <bb 18>;

<bb 14>:
Invalid sum of incoming frequencies 2125, should be 1450
  D.48390_24 = codec_fmtp.bits_per_second;
  if (D.48390_24 != 0)
    goto <bb 15>;
  else
    goto <bb 16>;

<bb 15>:
  map_bit_rate_26 = (uint32_t) D.48390_24;
  # DEBUG map_bit_rate => map_bit_rate_26

<bb 16>:
  # map_bit_rate_43 = PHI <map_bit_rate_41(14), map_bit_rate_26(15)>
  # DEBUG map_bit_rate => map_bit_rate_43
  D.48389_27 = codec_fmtp.microseconds_per_packet;
  if (D.48389_27 != 0)
    goto <bb 17>;
  else
    goto <bb 18>;

<bb 17>:
  ptime_29 = D.48389_27 / 1000;
  # DEBUG codec_ms => ptime_29

<bb 18>:
Invalid sum of incoming frequencies 7875, should be 10000
  # ptime_32 = PHI <30(11), ptime_42(12), 30(13), ptime_42(25), ptime_42(16), ptime_29(17)>
  # map_bit_rate_33 = PHI <13330(11), map_bit_rate_41(12), 32000(13), map_bit_rate_41(25), map_bit_rate_43(16), map_bit_rate_43(17)>
  # DEBUG map_bit_rate => map_bit_rate_33
  # DEBUG codec_ms => ptime_32
  D.48392_30 = map_2(D)->rm_rate;
  if (D.48392_30 != 0)
    goto <bb 19>;
  else
    goto <bb 20>;

<bb 19>:
  switch_snprintf (&ratestr, 20, "@%uh", D.48392_30);

<bb 20>:
  if (ptime_32 != 0)
    goto <bb 21>;
  else
    goto <bb 22>;

<bb 21>:
  switch_snprintf (&ptstr, 20, "@%di", ptime_32);

<bb 22>:
  if (map_bit_rate_33 != 0)
    goto <bb 23>;
  else
    goto <bb 24>;

<bb 23>:
  switch_snprintf (&bitstr, 20, "@%db", map_bit_rate_33);

<bb 24>:
  D.48388_35 = strlen (buf_34(D));
  D.48387_36 = buf_34(D) + D.48388_35;
  D.48385_38 = 1024 - D.48388_35;
  D.48400_39 = map_2(D)->rm_encoding;
  switch_snprintf (D.48387_36, D.48385_38, ",%s%s%s%s", D.48400_39, &ratestr, &ptstr, &bitstr);
  return;

<bb 25>:
  D.48400_20 = map_2(D)->rm_encoding;
  D.48392_22 = map_2(D)->rm_rate;
  D.48391_23 = switch_core_codec_parse_fmtp (D.48400_20, D.48395_13, D.48392_22, &codec_fmtp);
  if (D.48391_23 == 0)
    goto <bb 14>;
  else
    goto <bb 18>;

}



;; Function get_channels (get_channels)

get_channels (const char * name, int dft)
{
  int D.48615;
  switch_bool_t D.48614;
  int D.48613;
  int D.48612;
  int D.48611;
  int D.48610;
  int D.48609;
  int D.48608;
  int D.48607;
  int D.42982;
  char * D.42978;

<bb 2>:
  D.42978_3 = switch_core_get_variable ("NDLB_broken_opus_sdp");
  # DEBUG expr => D.42978_3
  if (D.42978_3 != 0B)
    goto <bb 3>;
  else
    goto <bb 16>;

<bb 3>:
  D.48607_15 = strcasecmp (D.42978_3, "yes");
  if (D.48607_15 == 0)
    goto <bb 12>;
  else
    goto <bb 4>;

<bb 4>:
  D.48608_16 = strcasecmp (D.42978_3, "on");
  if (D.48608_16 == 0)
    goto <bb 12>;
  else
    goto <bb 5>;

<bb 5>:
  D.48609_17 = strcasecmp (D.42978_3, "true");
  if (D.48609_17 == 0)
    goto <bb 12>;
  else
    goto <bb 6>;

<bb 6>:
  D.48610_18 = strcasecmp (D.42978_3, "t");
  if (D.48610_18 == 0)
    goto <bb 12>;
  else
    goto <bb 7>;

<bb 7>:
  D.48611_19 = strcasecmp (D.42978_3, "enabled");
  if (D.48611_19 == 0)
    goto <bb 12>;
  else
    goto <bb 8>;

<bb 8>:
  D.48612_20 = strcasecmp (D.42978_3, "active");
  if (D.48612_20 == 0)
    goto <bb 12>;
  else
    goto <bb 9>;

<bb 9>:
  D.48613_21 = strcasecmp (D.42978_3, "allow");
  if (D.48613_21 == 0)
    goto <bb 12>;
  else
    goto <bb 10>;

<bb 10>:
  D.48614_22 = switch_is_number (D.42978_3);
  if (D.48614_22 != 0)
    goto <bb 11>;
  else
    goto <bb 16>;

<bb 11>:
  # DEBUG __nptr => D.42978_3
  D.48615_23 = strtol (D.42978_3, 0B, 10);
  if (D.48615_23 != 0)
    goto <bb 12>;
  else
    goto <bb 16>;

<bb 12>:
Invalid sum of outgoing probabilities 0.0%
Invalid sum of incoming frequencies 8349, should be 3315

<bb 13>:
Invalid sum of incoming frequencies 545, should be 6650
  if (dft_8(D) != 0)
    goto <bb 15>;
  else
    goto <bb 14>;

<bb 14>:

<bb 15>:
Invalid sum of incoming frequencies 7757, should be 10000
  # dft_1 = PHI <2(16), 1(14), dft_8(D)(13)>
  return dft_1;

<bb 16>:
  D.42982_6 = strcasecmp (name_5(D), "opus");
  if (D.42982_6 == 0)
    goto <bb 15>;
  else
    goto <bb 13>;

}



;; Function switch_core_media_build_crypto.constprop.8 (switch_core_media_build_crypto.constprop.8)

switch_core_media_build_crypto.constprop.8 (struct switch_media_handle_t * smh, switch_media_type_t type, int index, switch_rtp_crypto_key_type_t ctype, int force)
{
  int D.48631;
  switch_bool_t D.48630;
  int D.48629;
  int D.48628;
  int D.48627;
  int D.48626;
  int D.48625;
  int D.48624;
  int D.48623;
  struct switch_core_session_t * D.48367;
  unsigned char D.48366;
  int D.48365;
  uint32_t D.48364;
  char D.48362;
  unsigned int D.48361;
  char * D.48360;
  char * D.48359;
  struct switch_channel_t * D.48358;
  char * D.48357;
  char * iftmp.164;
  char * iftmp.165;
  struct switch_core_media_params_t * D.48354;
  switch_core_media_NDLB_t D.48353;
  unsigned int D.48352;
  unsigned char b64_key[512];
  unsigned char * key;
  const char * val;
  struct switch_channel_t * channel;
  char * p;
  struct switch_rtp_engine_t * engine;
  static const char __PRETTY_FUNCTION__[31] = "switch_core_media_build_crypto";
  static const char __func__[31] = "switch_core_media_build_crypto";
  static const char __func__[31] = "switch_core_media_build_crypto";
  static const char __PRETTY_FUNCTION__[31] = "switch_core_media_build_crypto";

<bb 2>:
  # DEBUG direction => 0
  b64_key = "";
  if (smh_1(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("smh", "src/switch_core_media.c", 869, &__PRETTY_FUNCTION__);

<bb 4>:
  D.48367_2 = smh_1(D)->session;
  channel_3 = switch_core_session_get_channel (D.48367_2);
  # DEBUG channel => channel_3
  engine_5 = &smh_1(D)->engines[type_4(D)]{lb: 0 sz: 11416};
  # DEBUG engine => engine_5
  if (force_6(D) == 0)
    goto <bb 5>;
  else
    goto <bb 6>;

<bb 5>:
  D.48366_8 = engine_5->ssec[ctype_7(D)].local_raw_key[0];
  if (D.48366_8 != 0)
    goto <bb 28>;
  else
    goto <bb 6>;

<bb 6>:
  key_9 = &engine_5->ssec[ctype_7(D)].local_raw_key;
  # DEBUG key => key_9
  # DEBUG key => key_9
  D.48365_11 = SUITES[ctype_7(D)].keylen;
  D.48364_12 = (uint32_t) D.48365_11;
  switch_rtp_get_random (key_9, D.48364_12);
  switch_b64_encode (key_9, D.48364_12, &b64_key, 512);
  p_16 = strrchr (&b64_key, 61);
  # DEBUG p => p_16
  # DEBUG p => p_16
  if (p_16 != 0B)
    goto <bb 7>;
  else
    goto <bb 10>;

<bb 7>:
  D.48362_30 = *p_16;
  if (D.48362_30 == 61)
    goto <bb 8>;
  else
    goto <bb 10>;

<bb 8>:
Invalid sum of incoming frequencies 9409, should be 9127
  # p_13 = PHI <p_18(9), p_16(7)>
  *p_13 = 0;
  p_18 = p_13 + -1;
  # DEBUG p => p_18
  # DEBUG p => p_18
  if (p_18 != 0B)
    goto <bb 9>;
  else
    goto <bb 10>;

<bb 9>:
  D.48362_19 = *p_18;
  if (D.48362_19 == 61)
    goto <bb 8>;
  else
    goto <bb 10>;

<bb 10>:
Invalid sum of incoming frequencies 591, should be 873
  if (index_21(D) == 0)
    goto <bb 11>;
  else
    goto <bb 12>;

<bb 11>:
  D.48361_22 = ctype_7(D) + 1;
  index_23 = (int) D.48361_22;
  # DEBUG index => index_23

<bb 12>:
  # index_26 = PHI <index_21(D)(10), index_23(11)>
  # DEBUG index => index_26
  D.48367_24 = smh_1(D)->session;
  D.48360_25 = SUITES[ctype_7(D)].name;
  D.48359_27 = switch_core_session_sprintf (D.48367_24, "%d %s inline:%s", index_26, D.48360_25, &b64_key);
  engine_5->ssec[ctype_7(D)].local_crypto_key = D.48359_27;
  D.48367_28 = smh_1(D)->session;
  D.48358_29 = D.48367_28->channel;
  if (type_4(D) == 1)
    goto <bb 13>;
  else
    goto <bb 29>;

<bb 13>:
  # iftmp.164_31 = PHI <"video"(12)>
  switch_channel_set_variable_name_printf (D.48358_29, D.48359_27, "rtp_last_%s_local_crypto_key", iftmp.164_31);
  D.48367_32 = smh_1(D)->session;
  D.48358_33 = D.48367_32->channel;
  switch_channel_set_flag_value (D.48358_33, 92, 1);
  D.48367_34 = smh_1(D)->session;

<bb 14>:
  # iftmp.165_36 = PHI <"video"(13), "audio"(29)>
  # D.48367_73 = PHI <D.48367_34(13), D.48367_75(29)>
  D.48357_35 = engine_5->ssec[ctype_7(D)].local_crypto_key;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 916, D.48367_73, 7, "Set Local %s crypto Key [%s]\n", iftmp.165_36, D.48357_35);
  D.48354_37 = smh_1(D)->mparams;
  D.48353_38 = D.48354_37->ndlb;
  D.48352_39 = D.48353_38 & 8;
  if (D.48352_39 == 0)
    goto <bb 15>;
  else
    goto <bb 27>;

<bb 15>:
  val_40 = switch_channel_get_variable_dup (channel_3, "NDLB_support_asterisk_missing_srtp_auth", 1, -1);
  # DEBUG val => val_40
  if (val_40 == 0B)
    goto <bb 26>;
  else
    goto <bb 16>;

<bb 16>:
  # DEBUG expr => val_40
  D.48623_60 = strcasecmp (val_40, "yes");
  if (D.48623_60 == 0)
    goto <bb 25>;
  else
    goto <bb 17>;

<bb 17>:
  D.48624_61 = strcasecmp (val_40, "on");
  if (D.48624_61 == 0)
    goto <bb 25>;
  else
    goto <bb 18>;

<bb 18>:
  D.48625_62 = strcasecmp (val_40, "true");
  if (D.48625_62 == 0)
    goto <bb 25>;
  else
    goto <bb 19>;

<bb 19>:
  D.48626_63 = strcasecmp (val_40, "t");
  if (D.48626_63 == 0)
    goto <bb 25>;
  else
    goto <bb 20>;

<bb 20>:
  D.48627_64 = strcasecmp (val_40, "enabled");
  if (D.48627_64 == 0)
    goto <bb 25>;
  else
    goto <bb 21>;

<bb 21>:
  D.48628_65 = strcasecmp (val_40, "active");
  if (D.48628_65 == 0)
    goto <bb 25>;
  else
    goto <bb 22>;

<bb 22>:
  D.48629_66 = strcasecmp (val_40, "allow");
  if (D.48629_66 == 0)
    goto <bb 25>;
  else
    goto <bb 23>;

<bb 23>:
  D.48630_67 = switch_is_number (val_40);
  if (D.48630_67 != 0)
    goto <bb 24>;
  else
    goto <bb 30>;

<bb 24>:
  # DEBUG __nptr => val_40
  D.48631_68 = strtol (val_40, 0B, 10);
  if (D.48631_68 != 0)
    goto <bb 25>;
  else
    goto <bb 30>;

<bb 25>:
Invalid sum of outgoing probabilities 0.0%
  goto <bb 27>;

<bb 26>:
  engine_5->ssec[ctype_7(D)].crypto_type = ctype_7(D);
  goto <bb 28>;

<bb 27>:
Invalid sum of incoming frequencies 620, should be 741
  engine_5->ssec[ctype_7(D)].crypto_type = 8;

<bb 28>:
  return 0;

<bb 29>:
  # iftmp.164_14 = PHI <"audio"(12)>
  switch_channel_set_variable_name_printf (D.48358_29, D.48359_27, "rtp_last_%s_local_crypto_key", iftmp.164_14);
  D.48367_41 = smh_1(D)->session;
  D.48358_72 = D.48367_41->channel;
  switch_channel_set_flag_value (D.48358_72, 92, 1);
  D.48367_75 = smh_1(D)->session;
  goto <bb 14>;

<bb 30>:
  goto <bb 26>;

}



;; Function switch_core_session_parse_crypto_prefs (switch_core_session_parse_crypto_prefs)

switch_core_session_parse_crypto_prefs (struct switch_core_session_t * session)
{
  int D.48682;
  switch_bool_t D.48681;
  int D.48680;
  int D.48679;
  int D.48678;
  int D.48677;
  int D.48676;
  int D.48675;
  int D.48674;
  int D.48670;
  switch_bool_t D.48669;
  int D.48668;
  int D.48667;
  int D.48666;
  int D.48665;
  int D.48664;
  int D.48663;
  int D.48662;
  const char D.47287;
  const char D.47283;
  const char D.47279;
  const char D.47275;
  static const char __func__[39] = "switch_core_session_parse_crypto_prefs";
  int k;
  int j;
  int i;
  int argc;
  char * fields[10];
  struct switch_media_handle_t * smh;
  char * suites;
  const char * val;
  const char * var;
  switch_rtp_crypto_key_type_t D.42582;
  switch_rtp_crypto_key_type_t D.42579;
  int D.42576;
  char * D.42575;
  char * D.42574;
  unsigned int D.42573;
  switch_rtp_crypto_mode_t D.42569;
  int D.42565;
  int D.42561;
  int D.42552;
  uint32_t D.42550;
  switch_call_direction_t D.42548;
  switch_call_direction_t D.42529;
  uint32_t D.42526;
  struct switch_channel_t * D.42525;

<bb 2>:
  # DEBUG var => 0B
  # DEBUG val => 0B
  # DEBUG suites => 0B
  # DEBUG argc => 0
  # DEBUG i => 0
  # DEBUG j => 0
  # DEBUG k => 0
  smh_22 = session_21(D)->media_handle;
  # DEBUG smh => smh_22
  if (smh_22 == 0B)
    goto <bb 53>;
  else
    goto <bb 3>;

<bb 3>:
  D.42525_23 = session_21(D)->channel;
  D.42526_24 = switch_channel_test_flag (D.42525_23, 106);
  if (D.42526_24 != 0)
    goto <bb 53>;
  else
    goto <bb 4>;

<bb 4>:
  D.42525_25 = session_21(D)->channel;
  D.42529_26 = switch_channel_direction (D.42525_25);
  if (D.42529_26 == 0)
    goto <bb 6>;
  else
    goto <bb 5>;

<bb 5>:
  # DEBUG var => "rtp_secure_media_outbound"

<bb 6>:
  # var_1 = PHI <"rtp_secure_media_inbound"(4), "rtp_secure_media_outbound"(5)>
  # DEBUG var => var_1
  D.42525_29 = session_21(D)->channel;
  val_30 = switch_channel_get_variable_dup (D.42525_29, var_1, 1, -1);
  # DEBUG val => val_30
  if (val_30 == 0B)
    goto <bb 7>;
  else
    goto <bb 8>;

<bb 7>:
  # DEBUG var => "rtp_secure_media"
  D.42525_32 = session_21(D)->channel;
  val_33 = switch_channel_get_variable_dup (D.42525_32, "rtp_secure_media", 1, -1);
  # DEBUG val => val_33

<bb 8>:
  # var_2 = PHI <var_1(6), "rtp_secure_media"(7)>
  # val_3 = PHI <val_30(6), val_33(7)>
  # DEBUG val => val_3
  # DEBUG var => var_2
  # DEBUG s => val_3
  if (val_3 == 0B)
    goto <bb 11>;
  else
    goto <bb 9>;

<bb 9>:
  D.47275_100 = *val_3;
  if (D.47275_100 == 0)
    goto <bb 11>;
  else
    goto <bb 54>;

<bb 10>:
  *suites_35 = 0;
  suites_36 = suites_35 + 1;
  # DEBUG suites => suites_36

<bb 11>:
  # suites_5 = PHI <0B(9), 0B(54), suites_36(10), 0B(8)>
  # DEBUG suites => suites_5
  # DEBUG s => suites_5
  if (suites_5 == 0B)
    goto <bb 13>;
  else
    goto <bb 12>;

<bb 12>:
  D.47279_102 = MEM[(const char *)suites_5];
  if (D.47279_102 == 0)
    goto <bb 13>;
  else
    goto <bb 14>;

<bb 13>:
Invalid sum of incoming frequencies 387, should be 101
  D.42525_38 = session_21(D)->channel;
  suites_39 = switch_channel_get_variable_dup (D.42525_38, "rtp_secure_media_suites", 1, -1);
  # DEBUG suites => suites_39

<bb 14>:
Invalid sum of incoming frequencies 387, should be 673
  # suites_6 = PHI <suites_5(12), suites_39(13)>
  # DEBUG suites => suites_6
  # DEBUG s => val_3
  if (val_3 == 0B)
    goto <bb 16>;
  else
    goto <bb 15>;

<bb 15>:
  D.47283_104 = *val_3;
  if (D.47283_104 == 0)
    goto <bb 16>;
  else
    goto <bb 19>;

<bb 16>:
Invalid sum of incoming frequencies 387, should be 101
  D.42525_41 = session_21(D)->channel;
  D.42548_42 = switch_channel_direction (D.42525_41);
  if (D.42548_42 == 0)
    goto <bb 17>;
  else
    goto <bb 19>;

<bb 17>:
  D.42525_43 = session_21(D)->channel;
  D.42550_44 = switch_channel_test_flag (D.42525_43, 84);
  if (D.42550_44 == 0)
    goto <bb 19>;
  else
    goto <bb 18>;

<bb 18>:

<bb 19>:
Invalid sum of incoming frequencies 415, should be 673
  # val_4 = PHI <val_3(15), "optional"(17), "forbidden"(18), "forbidden"(16)>
  # DEBUG val => val_4
  D.42552_47 = strcasecmp (val_4, "optional");
  if (D.42552_47 == 0)
    goto <bb 20>;
  else
    goto <bb 21>;

<bb 20>:
  smh_22->crypto_mode = 0;
  goto <bb 45>;

<bb 21>:
  # DEBUG expr => val_4
  if (val_4 != 0B)
    goto <bb 22>;
  else
    goto <bb 55>;

<bb 22>:
  D.48662_112 = strcasecmp (val_4, "yes");
  if (D.48662_112 == 0)
    goto <bb 31>;
  else
    goto <bb 23>;

<bb 23>:
  D.48663_113 = strcasecmp (val_4, "on");
  if (D.48663_113 == 0)
    goto <bb 31>;
  else
    goto <bb 24>;

<bb 24>:
  D.48664_114 = strcasecmp (val_4, "true");
  if (D.48664_114 == 0)
    goto <bb 31>;
  else
    goto <bb 25>;

<bb 25>:
  D.48665_115 = strcasecmp (val_4, "t");
  if (D.48665_115 == 0)
    goto <bb 31>;
  else
    goto <bb 26>;

<bb 26>:
  D.48666_116 = strcasecmp (val_4, "enabled");
  if (D.48666_116 == 0)
    goto <bb 31>;
  else
    goto <bb 27>;

<bb 27>:
  D.48667_117 = strcasecmp (val_4, "active");
  if (D.48667_117 == 0)
    goto <bb 31>;
  else
    goto <bb 28>;

<bb 28>:
  D.48668_118 = strcasecmp (val_4, "allow");
  if (D.48668_118 == 0)
    goto <bb 31>;
  else
    goto <bb 29>;

<bb 29>:
  D.48669_119 = switch_is_number (val_4);
  if (D.48669_119 != 0)
    goto <bb 30>;
  else
    goto <bb 55>;

<bb 30>:
  # DEBUG __nptr => val_4
  D.48670_120 = strtol (val_4, 0B, 10);
  if (D.48670_120 != 0)
    goto <bb 31>;
  else
    goto <bb 55>;

<bb 31>:
Invalid sum of outgoing probabilities 0.0%

<bb 32>:
Invalid sum of incoming frequencies 23, should be 167
  smh_22->crypto_mode = 1;
  goto <bb 45>;

<bb 33>:
  smh_22->crypto_mode = 2;
  # DEBUG expr => val_4
  if (val_4 != 0B)
    goto <bb 34>;
  else
    goto <bb 56>;

<bb 34>:
  D.48674_122 = strcasecmp (val_4, "no");
  if (D.48674_122 == 0)
    goto <bb 43>;
  else
    goto <bb 35>;

<bb 35>:
  D.48675_123 = strcasecmp (val_4, "off");
  if (D.48675_123 == 0)
    goto <bb 43>;
  else
    goto <bb 36>;

<bb 36>:
  D.48676_124 = strcasecmp (val_4, "false");
  if (D.48676_124 == 0)
    goto <bb 43>;
  else
    goto <bb 37>;

<bb 37>:
  D.48677_125 = strcasecmp (val_4, "f");
  if (D.48677_125 == 0)
    goto <bb 43>;
  else
    goto <bb 38>;

<bb 38>:
  D.48678_126 = strcasecmp (val_4, "disabled");
  if (D.48678_126 == 0)
    goto <bb 43>;
  else
    goto <bb 39>;

<bb 39>:
  D.48679_127 = strcasecmp (val_4, "inactive");
  if (D.48679_127 == 0)
    goto <bb 43>;
  else
    goto <bb 40>;

<bb 40>:
  D.48680_128 = strcasecmp (val_4, "disallow");
  if (D.48680_128 == 0)
    goto <bb 43>;
  else
    goto <bb 41>;

<bb 41>:
  D.48681_129 = switch_is_number (val_4);
  if (D.48681_129 != 0)
    goto <bb 42>;
  else
    goto <bb 56>;

<bb 42>:
  # DEBUG __nptr => val_4
  D.48682_130 = strtol (val_4, 0B, 10);
  if (D.48682_130 == 0)
    goto <bb 43>;
  else
    goto <bb 56>;

<bb 43>:
Invalid sum of outgoing probabilities 0.0%
  goto <bb 45>;

<bb 44>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1123, session_21(D), 4, "INVALID VALUE FOR %s defaulting to \'forbidden\'\n", var_2);

<bb 45>:
  D.42569_52 = smh_22->crypto_mode;
  if (D.42569_52 != 2)
    goto <bb 46>;
  else
    goto <bb 60>;

<bb 46>:
  # DEBUG s => suites_6
  if (suites_6 == 0B)
    goto <bb 60>;
  else
    goto <bb 47>;

<bb 47>:
  D.47287_106 = MEM[(const char *)suites_6];
  if (D.47287_106 == 0)
    goto <bb 60>;
  else
    goto <bb 57>;

<bb 48>:
  # j_146 = PHI <j_65(50), j_145(59)>
  D.42574_59 = fields[i_10];
  D.42575_60 = SUITES[j_146].name;
  D.42576_61 = strcasecmp (D.42574_59, D.42575_60);
  if (D.42576_61 == 0)
    goto <bb 49>;
  else
    goto <bb 50>;

<bb 49>:
  # j_141 = PHI <j_146(48)>
  D.42579_62 = SUITES[j_141].type;
  smh_22->crypto_suite_order[k_138] = D.42579_62;
  k_63 = k_138 + 1;
  # DEBUG k => k_63
  # DEBUG ok => 1
  # DEBUG ok => 1
  # DEBUG k => k_63
  goto <bb 51>;

<bb 50>:
  j_65 = j_146 + 1;
  # DEBUG j => j_65
  # DEBUG j => j_65
  if (j_65 != 9)
    goto <bb 48>;
  else
    goto <bb 58>;

<bb 51>:
  # k_147 = PHI <k_63(49), k_160(58)>
  i_66 = i_10 + 1;
  # DEBUG i => i_66
  # DEBUG k => k_147
  # DEBUG i => i_66
  if (argc_55 > i_66)
    goto <bb 59>;
  else
    goto <bb 53>;

<bb 52>:
  # i_154 = PHI <i_70(52), i_158(60)>
  # k_163 = PHI <k_69(52), k_50(60)>
  D.42582_68 = SUITES[i_154].type;
  smh_22->crypto_suite_order[k_163] = D.42582_68;
  k_69 = k_163 + 1;
  # DEBUG k => k_69
  i_70 = i_154 + 1;
  # DEBUG i => i_70
  # DEBUG k => k_69
  # DEBUG i => i_70
  if (i_70 != 9)
    goto <bb 52>;
  else
    goto <bb 53>;

<bb 53>:
  return;

<bb 54>:
  suites_35 = __builtin_strchr (val_3, 58);
  # DEBUG suites => suites_35
  if (suites_35 != 0B)
    goto <bb 10>;
  else
    goto <bb 11>;

<bb 55>:
  D.42561_49 = strcasecmp (val_4, "mandatory");
  if (D.42561_49 == 0)
    goto <bb 32>;
  else
    goto <bb 33>;

<bb 56>:
  D.42565_51 = strcasecmp (val_4, "forbidden");
  if (D.42565_51 != 0)
    goto <bb 44>;
  else
    goto <bb 45>;

<bb 57>:
  D.42573_54 = switch_separate_string (suites_6, 58, &fields, 10);
  argc_55 = (int) D.42573_54;
  # DEBUG argc => argc_55
  # DEBUG i => 0
  # DEBUG k => 0
  # DEBUG i => 0
  if (argc_55 > 0)
    goto <bb 59>;
  else
    goto <bb 53>;

<bb 58>:
  # k_160 = PHI <k_138(50)>
  # DEBUG ok => 0
  # DEBUG k => k_160
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1142, session_21(D), 4, "INVALID SUITE SUPPLIED\n");
  goto <bb 51>;

<bb 59>:
  # j_145 = PHI <0(51), 0(57)>
  # i_10 = PHI <i_66(51), 0(57)>
  # k_138 = PHI <k_147(51), 0(57)>
  # DEBUG j => j_145
  goto <bb 48>;

<bb 60>:
  # i_158 = PHI <0(47), 0(45), 0(46)>
  # k_50 = PHI <0(47), 0(45), 0(46)>
  # DEBUG k => k_50
  # DEBUG i => i_158
  goto <bb 52>;

}



;; Function switch_core_media_crypto_str2type (switch_core_media_crypto_str2type)

switch_core_media_crypto_str2type (const char * str)
{
  int i;
  switch_rtp_crypto_key_type_t D.47213;
  int D.47210;
  size_t D.47209;
  char * D.47208;

<bb 2>:
  # DEBUG i => 0
  # DEBUG i => 0

<bb 3>:
  # i_15 = PHI <i_10(5), 0(2)>
  D.47208_5 = SUITES[i_15].name;
  D.47209_6 = strlen (D.47208_5);
  D.47210_8 = strncasecmp (str_7(D), D.47208_5, D.47209_6);
  if (D.47210_8 == 0)
    goto <bb 4>;
  else
    goto <bb 5>;

<bb 4>:
  # i_13 = PHI <i_15(3)>
  D.47213_9 = SUITES[i_13].type;
  goto <bb 6>;

<bb 5>:
  i_10 = i_15 + 1;
  # DEBUG i => i_10
  # DEBUG i => i_10
  if (i_10 != 9)
    goto <bb 3>;
  else
    goto <bb 6>;

<bb 6>:
  # D.47213_2 = PHI <D.47213_9(4), 9(5)>
  return D.47213_2;

}



;; Function switch_core_session_get_recovery_crypto_key (switch_core_session_get_recovery_crypto_key)

switch_core_session_get_recovery_crypto_key (struct switch_core_session_t * session, switch_media_type_t type)
{
  int tv;
  static const char __func__[44] = "switch_core_session_get_recovery_crypto_key";
  char * ctypevar;
  char * tagvar;
  char * keyvar;
  struct switch_rtp_engine_t * engine;
  const char * tmp;
  char * D.40319;
  switch_rtp_crypto_key_type_t D.40318;
  switch_rtp_crypto_key_type_t D.40317;
  struct switch_channel_t * D.40312;
  struct switch_media_handle_t * D.40304;

<bb 2>:
  D.40304_5 = session_4(D)->media_handle;
  if (D.40304_5 == 0B)
    goto <bb 12>;
  else
    goto <bb 3>;

<bb 3>:
  engine_10 = &D.40304_5->engines[type_8(D)]{lb: 0 sz: 11416};
  # DEBUG engine => engine_10
  if (type_8(D) == 0)
    goto <bb 5>;
  else
    goto <bb 4>;

<bb 4>:
  # DEBUG keyvar => "srtp_remote_video_crypto_key"
  # DEBUG tagvar => "srtp_remote_video_crypto_tag"
  # DEBUG ctypevar => "srtp_remote_video_crypto_type"

<bb 5>:
  # keyvar_1 = PHI <"srtp_remote_audio_crypto_key"(3), "srtp_remote_video_crypto_key"(4)>
  # tagvar_2 = PHI <"srtp_remote_audio_crypto_tag"(3), "srtp_remote_video_crypto_tag"(4)>
  # ctypevar_3 = PHI <"srtp_remote_audio_crypto_type"(3), "srtp_remote_video_crypto_type"(4)>
  # DEBUG ctypevar => ctypevar_3
  # DEBUG tagvar => tagvar_2
  # DEBUG keyvar => keyvar_1
  D.40312_17 = session_4(D)->channel;
  tmp_18 = switch_channel_get_variable_dup (D.40312_17, keyvar_1, 1, -1);
  # DEBUG tmp => tmp_18
  if (tmp_18 != 0B)
    goto <bb 6>;
  else
    goto <bb 12>;

<bb 6>:
  D.40312_19 = session_4(D)->channel;
  tmp_20 = switch_channel_get_variable_dup (D.40312_19, ctypevar_3, 1, -1);
  # DEBUG tmp => tmp_20
  if (tmp_20 != 0B)
    goto <bb 7>;
  else
    goto <bb 8>;

<bb 7>:
  D.40317_21 = switch_core_media_crypto_str2type (tmp_20);
  engine_10->crypto_type = D.40317_21;

<bb 8>:
  D.40318_22 = engine_10->crypto_type;
  D.40319_23 = switch_core_perform_session_strdup (session_4(D), tmp_20, "src/switch_core_media.c", &__func__, 1015);
  engine_10->ssec[D.40318_22].remote_crypto_key = D.40319_23;
  D.40312_24 = session_4(D)->channel;
  tmp_25 = switch_channel_get_variable_dup (D.40312_24, tagvar_2, 1, -1);
  # DEBUG tmp => tmp_25
  if (tmp_25 != 0B)
    goto <bb 9>;
  else
    goto <bb 10>;

<bb 9>:
  # DEBUG __nptr => tmp_25
  tv_43 = strtol (tmp_25, 0B, 10);
  # DEBUG tv => NULL
  D.40318_27 = engine_10->crypto_type;
  engine_10->ssec[D.40318_27].crypto_tag = tv_43;
  goto <bb 11>;

<bb 10>:
  D.40318_28 = engine_10->crypto_type;
  engine_10->ssec[D.40318_28].crypto_tag = 1;

<bb 11>:
  D.40312_29 = session_4(D)->channel;
  switch_channel_set_flag_value (D.40312_29, 92, 1);

<bb 12>:
  return;

}



;; Function switch_core_media_crypto_type2str (switch_core_media_crypto_type2str)

switch_core_media_crypto_type2str (switch_rtp_crypto_key_type_t type)
{
  const char * D.47206;

<bb 2>:
  if (type_1(D) > 8)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("type < CRYPTO_INVALID", "src/switch_core_media.c", 222, &__PRETTY_FUNCTION__);

<bb 4>:
  D.47206_2 = SUITES[type_1(D)].name;
  return D.47206_2;

}



;; Function switch_core_media_crypto_keylen (switch_core_media_crypto_keylen)

switch_core_media_crypto_keylen (switch_rtp_crypto_key_type_t type)
{
  static const char __PRETTY_FUNCTION__[32] = "switch_core_media_crypto_keylen";
  int D.47202;

<bb 2>:
  if (type_1(D) > 8)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("type < CRYPTO_INVALID", "src/switch_core_media.c", 229, &__PRETTY_FUNCTION__);

<bb 4>:
  D.47202_2 = SUITES[type_1(D)].keylen;
  return D.47202_2;

}



;; Function switch_core_media_pass_zrtp_hash2 (switch_core_media_pass_zrtp_hash2)

switch_core_media_pass_zrtp_hash2 (struct switch_core_session_t * aleg_session, struct switch_core_session_t * bleg_session)
{
<bb 2>:
  _switch_core_media_pass_zrtp_hash2 (aleg_session_1(D), bleg_session_2(D), 0);
  _switch_core_media_pass_zrtp_hash2 (aleg_session_1(D), bleg_session_2(D), 1);
  return;

}



;; Function switch_core_media_pass_zrtp_hash (switch_core_media_pass_zrtp_hash)

switch_core_media_pass_zrtp_hash (struct switch_core_session_t * session)
{
  static const char __func__[33] = "switch_core_media_pass_zrtp_hash";
  struct switch_core_session_t * other_session;
  struct switch_channel_t * channel;
  struct switch_core_session_t * other_session.172;
  struct switch_core_session_t * D.47169;
  struct switch_core_session_t * D.47168;
  switch_status_t D.47165;
  struct switch_core_session_t * D.47164;
  uint32_t D.47161;
  struct switch_core_session_t * D.47160;

<bb 2>:
  channel_2 = switch_core_session_get_channel (session_1(D));
  # DEBUG channel => channel_2
  D.47160_3 = switch_channel_get_session (channel_2);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 289, D.47160_3, 101, "Deciding whether to pass zrtp-hash between legs\n");
  D.47161_4 = switch_channel_test_flag (channel_2, 73);
  if (D.47161_4 == 0)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  D.47164_5 = switch_channel_get_session (channel_2);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 291, D.47164_5, 101, "CF_ZRTP_PASSTHRU_REQ not set, so not propagating zrtp-hash\n");
  goto <bb 7>;

<bb 4>:
  D.47165_6 = switch_core_session_perform_get_partner (session_1(D), &other_session, "src/switch_core_media.c", &__func__, 293);
  if (D.47165_6 != 0)
    goto <bb 5>;
  else
    goto <bb 6>;

<bb 5>:
  D.47168_7 = switch_channel_get_session (channel_2);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 294, D.47168_7, 101, "No partner channel found, so not propagating zrtp-hash\n");
  goto <bb 7>;

<bb 6>:
  D.47169_8 = switch_channel_get_session (channel_2);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 297, D.47169_8, 101, "Found peer channel; propagating zrtp-hash if set\n");
  other_session.172_9 = other_session;
  switch_core_media_pass_zrtp_hash2 (session_1(D), other_session.172_9);
  other_session.172_10 = other_session;
  switch_core_session_rwunlock (other_session.172_10);

<bb 7>:
  return;

}



;; Function switch_core_media_get_zrtp_hash (switch_core_media_get_zrtp_hash)

switch_core_media_get_zrtp_hash (struct switch_core_session_t * session, switch_media_type_t type, switch_bool_t local)
{
  struct switch_rtp_engine_t * engine;
  const char * D.47154;
  struct switch_media_handle_t * D.47151;

<bb 2>:
  D.47151_3 = session_2(D)->media_handle;
  if (D.47151_3 == 0B)
    goto <bb 6>;
  else
    goto <bb 3>;

<bb 3>:
  engine_9 = &D.47151_3->engines[type_7(D)]{lb: 0 sz: 11416};
  # DEBUG engine => engine_9
  if (local_10(D) != 0)
    goto <bb 4>;
  else
    goto <bb 5>;

<bb 4>:
  D.47154_11 = engine_9->local_sdp_zrtp_hash;
  goto <bb 6>;

<bb 5>:
  D.47154_12 = engine_9->remote_sdp_zrtp_hash;

<bb 6>:
  # D.47154_1 = PHI <0B(2), D.47154_11(4), D.47154_12(5)>
  return D.47154_1;

}



;; Function switch_core_media_extract_t38_options (switch_core_media_extract_t38_options)

switch_core_media_extract_t38_options (struct switch_core_session_t * session, const char * r_sdp)
{
  struct switch_t38_options_t * t38_options;
  struct sdp_session_t * sdp;
  struct sdp_parser_t * parser;
  struct sdp_media_t * m;
  long unsigned int D.47147;
  sdp_media_e D.47144;
  sdp_proto_e D.47141;
  int D.47135;
  size_t D.47134;

<bb 2>:
  # DEBUG parser => 0B
  # DEBUG t38_options => 0B
  D.47134_7 = strlen (r_sdp_6(D));
  D.47135_8 = (int) D.47134_7;
  parser_9 = sdp_parse (0B, r_sdp_6(D), D.47135_8, 0);
  # DEBUG parser => parser_9
  if (parser_9 == 0B)
    goto <bb 12>;
  else
    goto <bb 3>;

<bb 3>:
  sdp_11 = sdp_session (parser_9);
  # DEBUG sdp => sdp_11
  if (sdp_11 == 0B)
    goto <bb 4>;
  else
    goto <bb 5>;

<bb 4>:
  sdp_parser_free (parser_9);
  goto <bb 12>;

<bb 5>:
  m_13 = sdp_11->sdp_media;
  # DEBUG m => m_13
  # DEBUG m => m_13
  if (m_13 != 0B)
    goto <bb 6>;
  else
    goto <bb 11>;

<bb 6>:
  # m_29 = PHI <m_19(10), m_13(5)>
  D.47141_14 = m_29->m_proto;
  if (D.47141_14 == 258)
    goto <bb 7>;
  else
    goto <bb 10>;

<bb 7>:
  D.47144_15 = m_29->m_type;
  if (D.47144_15 == 8)
    goto <bb 8>;
  else
    goto <bb 10>;

<bb 8>:
  D.47147_16 = m_29->m_port;
  if (D.47147_16 != 0)
    goto <bb 9>;
  else
    goto <bb 10>;

<bb 9>:
  # m_28 = PHI <m_29(8)>
  t38_options_18 = switch_core_media_process_udptl (session_17(D), sdp_11, m_28);
  # DEBUG t38_options => t38_options_18
  goto <bb 11>;

<bb 10>:
  m_19 = m_29->m_next;
  # DEBUG m => m_19
  # DEBUG m => m_19
  if (m_19 != 0B)
    goto <bb 6>;
  else
    goto <bb 11>;

<bb 11>:
  # t38_options_2 = PHI <t38_options_18(9), 0B(10), 0B(5)>
  # DEBUG t38_options => t38_options_2
  sdp_parser_free (parser_9);

<bb 12>:
  # t38_options_3 = PHI <0B(2), 0B(4), t38_options_2(11)>
  return t38_options_3;

}



;; Function switch_core_session_get_payload_code (switch_core_session_get_payload_code)

switch_core_session_get_payload_code (struct switch_core_session_t * session, switch_media_type_t type, const char * iananame, switch_payload_t * ptP, switch_payload_t * recv_ptP, char * * fmtpP)
{
  const char D.47340;
  static const char __PRETTY_FUNCTION__[37] = "switch_core_session_get_payload_code";
  char * fmtp;
  switch_payload_t recv_pt;
  switch_payload_t pt;
  struct switch_rtp_engine_t * engine;
  struct switch_media_handle_t * smh;
  struct payload_map_t * pmap;
  int D.47089;
  char * D.47088;
  uint8_t D.47085;
  struct switch_mutex_t * D.47084;
  switch_status_t D.47081;

<bb 2>:
  # DEBUG pt => 0
  # DEBUG recv_pt => 0
  # DEBUG found => 0
  # DEBUG fmtp => 0B
  if (session_11(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 530, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_12 = session_11(D)->media_handle;
  # DEBUG smh => smh_12
  if (smh_12 == 0B)
    goto <bb 16>;
  else
    goto <bb 5>;

<bb 5>:
  engine_17 = &smh_12->engines[type_15(D)]{lb: 0 sz: 11416};
  # DEBUG engine => engine_17
  D.47084_18 = smh_12->sdp_mutex;
  switch_mutex_lock (D.47084_18);
  pmap_19 = engine_17->payload_map;
  # DEBUG pmap => pmap_19
  # DEBUG pmap => pmap_19
  if (pmap_19 != 0B)
    goto <bb 6>;
  else
    goto <bb 17>;

<bb 6>:
  # pmap_3 = PHI <pmap_28(9), pmap_19(5)>
  D.47085_20 = pmap_3->allocated;
  if (D.47085_20 == 0)
    goto <bb 9>;
  else
    goto <bb 7>;

<bb 7>:
  D.47088_21 = pmap_3->iananame;
  D.47089_23 = strcasecmp (D.47088_21, iananame_22(D));
  if (D.47089_23 == 0)
    goto <bb 8>;
  else
    goto <bb 9>;

<bb 8>:
  # pmap_47 = PHI <pmap_3(7)>
  pt_24 = pmap_47->pt;
  # DEBUG pt => pt_24
  recv_pt_25 = pmap_47->recv_pt;
  # DEBUG recv_pt => recv_pt_25
  fmtp_26 = pmap_47->rm_fmtp;
  # DEBUG fmtp => fmtp_26
  # DEBUG found => 1
  # DEBUG fmtp => fmtp_26
  # DEBUG found => 1
  # DEBUG recv_pt => recv_pt_25
  # DEBUG pt => pt_24
  D.47084_29 = smh_12->sdp_mutex;
  switch_mutex_unlock (D.47084_29);
  if (ptP_30(D) != 0B)
    goto <bb 10>;
  else
    goto <bb 11>;

<bb 9>:
  pmap_28 = pmap_3->next;
  # DEBUG pmap => pmap_28
  # DEBUG pmap => pmap_28
  if (pmap_28 != 0B)
    goto <bb 6>;
  else
    goto <bb 17>;

<bb 10>:
Invalid sum of incoming frequencies 183, should be 345
  *ptP_30(D) = pt_24;

<bb 11>:
  if (recv_ptP_31(D) != 0B)
    goto <bb 12>;
  else
    goto <bb 13>;

<bb 12>:
  *recv_ptP_31(D) = recv_pt_25;

<bb 13>:
  # DEBUG s => fmtp_26
  if (fmtp_26 == 0B)
    goto <bb 16>;
  else
    goto <bb 14>;

<bb 14>:
  D.47340_44 = MEM[(const char *)fmtp_26];
  if (D.47340_44 == 0)
    goto <bb 16>;
  else
    goto <bb 18>;

<bb 15>:
  *fmtpP_33(D) = fmtp_26;

<bb 16>:
Invalid sum of incoming frequencies 1107, should be 848
  # D.47081_6 = PHI <1(4), 0(18), 1(17), 0(14), 0(15), 0(13)>
  return D.47081_6;

<bb 17>:
  # DEBUG fmtp => 0B
  # DEBUG found => 0
  # DEBUG recv_pt => 0
  # DEBUG pt => 0
  D.47084_54 = smh_12->sdp_mutex;
  switch_mutex_unlock (D.47084_54);
  goto <bb 16>;

<bb 18>:
  if (fmtpP_33(D) != 0B)
    goto <bb 15>;
  else
    goto <bb 16>;

}



;; Function switch_core_media_add_payload_map (switch_core_media_add_payload_map)

switch_core_media_add_payload_map (struct switch_core_session_t * session, switch_media_type_t type, const char * name, const char * fmtp, switch_sdp_type_t sdp_type, uint32_t pt, uint32_t rate, uint32_t ptime, uint8_t negotiated)
{
  const char D.47357;
  const char D.47353;
  const char D.47349;
  const char D.47345;
  switch_ssize_t hlen;
  static const char __func__[34] = "switch_core_media_add_payload_map";
  static const char __PRETTY_FUNCTION__[34] = "switch_core_media_add_payload_map";
  int local_pt;
  struct switch_rtp_engine_t * engine;
  struct switch_media_handle_t * smh;
  int exists;
  struct payload_map_t * pmap;
  struct payload_map_t * D.47073;
  unsigned char iftmp.170;
  _Bool D.47057;
  _Bool D.47056;
  _Bool D.47055;
  unsigned char D.47054;
  char * D.47053;
  int D.38491;
  unsigned int D.47041;
  char * D.47040;
  struct switch_memory_pool_t * D.47039;
  uint8_t D.47037;
  struct payload_map_t * D.47035;
  uint8_t D.47030;
  switch_payload_t D.47028;
  int D.38476;
  char * D.47022;
  uint32_t D.47015;
  uint32_t D.47013;
  int D.47011;
  char * D.47010;
  struct switch_mutex_t * D.47004;

<bb 2>:
  # DEBUG exists => 0
  # DEBUG local_pt => 0
  if (session_14(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 589, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_15 = session_14(D)->media_handle;
  # DEBUG smh => smh_15
  if (smh_15 == 0B)
    goto <bb 43>;
  else
    goto <bb 5>;

<bb 5>:
  engine_20 = &smh_15->engines[type_18(D)]{lb: 0 sz: 11416};
  # DEBUG engine => engine_20
  D.47004_21 = smh_15->sdp_mutex;
  switch_mutex_lock (D.47004_21);
  pmap_22 = engine_20->payload_map;
  # DEBUG pmap => pmap_22
  # DEBUG local_pt => 0
  # DEBUG exists => 0
  # DEBUG pmap => pmap_22
  if (pmap_22 != 0B)
    goto <bb 6>;
  else
    goto <bb 46>;

<bb 6>:
  D.47030_47 = pmap_22->allocated;
  if (D.47030_47 != 0)
    goto <bb 7>;
  else
    goto <bb 46>;

<bb 7>:
  # pmap_159 = PHI <pmap_45(17), pmap_22(6)>
  # local_pt_138 = PHI <local_pt_7(17), 0(6)>
  D.47010_24 = pmap_159->iananame;
  D.47011_26 = strcasecmp (name_25(D), D.47010_24);
  if (D.47011_26 == 0)
    goto <bb 8>;
  else
    goto <bb 16>;

<bb 8>:
  D.47013_27 = pmap_159->rate;
  if (D.47013_27 == 0)
    goto <bb 10>;
  else
    goto <bb 9>;

<bb 9>:
  if (D.47013_27 == rate_29(D))
    goto <bb 10>;
  else
    goto <bb 16>;

<bb 10>:
  D.47015_30 = pmap_159->ptime;
  if (D.47015_30 == 0)
    goto <bb 12>;
  else
    goto <bb 11>;

<bb 11>:
  if (D.47015_30 == ptime_32(D))
    goto <bb 12>;
  else
    goto <bb 16>;

<bb 12>:
Invalid sum of incoming frequencies 1967, should be 430
  # DEBUG exists => 1
  # DEBUG s => fmtp_36(D)
  if (fmtp_36(D) == 0B)
    goto <bb 18>;
  else
    goto <bb 13>;

<bb 13>:
Invalid sum of incoming frequencies 366, should be 4082
  D.47345_114 = *fmtp_36(D);
  if (D.47345_114 == 0)
    goto <bb 18>;
  else
    goto <bb 44>;

<bb 14>:
Invalid sum of incoming frequencies 1735, should be 4000
  D.47349_116 = MEM[(const char *)D.47022_38];
  if (D.47349_116 == 0)
    goto <bb 18>;
  else
    goto <bb 45>;

<bb 15>:
Invalid sum of incoming frequencies 1000, should be 2306
  # DEBUG exists => 0
  D.47028_43 = pmap_159->pt;
  local_pt_44 = (int) D.47028_43;
  # DEBUG local_pt => local_pt_44

<bb 16>:
Invalid sum of incoming frequencies 9944, should be 7108
  # local_pt_7 = PHI <local_pt_138(7), local_pt_44(15), local_pt_138(9), local_pt_138(11)>
  # DEBUG local_pt => local_pt_7
  # DEBUG exists => 0
  pmap_45 = pmap_159->next;
  # DEBUG pmap => pmap_45
  # DEBUG local_pt => local_pt_7
  # DEBUG exists => 0
  # DEBUG pmap => pmap_45
  if (pmap_45 != 0B)
    goto <bb 17>;
  else
    goto <bb 46>;

<bb 17>:
  D.47030_23 = pmap_45->allocated;
  if (D.47030_23 != 0)
    goto <bb 7>;
  else
    goto <bb 46>;

<bb 18>:
Invalid sum of incoming frequencies 5412, should be 0
  # exists_6 = PHI <1(14), 1(13), 1(45), 1(12), 1(44)>
  # pmap_77 = PHI <pmap_159(14), pmap_159(13), pmap_159(45), pmap_159(12), pmap_159(44)>
  # local_pt_78 = PHI <local_pt_138(14), local_pt_138(13), local_pt_138(45), local_pt_138(12), local_pt_138(44)>
  # DEBUG exists => exists_6
  goto <bb 22>;

<bb 19>:
Invalid sum of incoming frequencies 369, should be 1349
  D.47037_48 = pmap_22->allocated;
  if (D.47037_48 == 0)
    goto <bb 21>;
  else
    goto <bb 20>;

<bb 20>:
  D.47039_50 = session_14(D)->pool;
  pmap_51 = switch_core_perform_alloc (D.47039_50, 84, "src/switch_core_media.c", &__func__, 624);
  # DEBUG pmap => pmap_51

<bb 21>:
  # pmap_2 = PHI <pmap_22(19), pmap_51(20)>
  # DEBUG pmap => pmap_2
  pmap_2->type = type_18(D);
  D.47039_52 = session_14(D)->pool;
  D.47040_53 = switch_core_perform_strdup (D.47039_52, name_25(D), "src/switch_core_media.c", &__func__, 628);
  pmap_2->iananame = D.47040_53;
  pmap_2->rm_encoding = D.47040_53;
  D.47041_56 = switch_ci_hashfunc_default (D.47040_53, &hlen);
  pmap_2->hash = D.47041_56;

<bb 22>:
Invalid sum of incoming frequencies 1446, should be 2892
  # pmap_3 = PHI <pmap_77(18), pmap_2(21)>
  # exists_128 = PHI <exists_6(18), exists_46(21)>
  # local_pt_156 = PHI <local_pt_78(18), local_pt_158(21)>
  # DEBUG pmap => pmap_3
  pmap_3->sdp_type = sdp_type_57(D);
  if (ptime_32(D) != 0)
    goto <bb 23>;
  else
    goto <bb 24>;

<bb 23>:
  pmap_3->ptime = ptime_32(D);

<bb 24>:
  if (rate_29(D) != 0)
    goto <bb 25>;
  else
    goto <bb 26>;

<bb 25>:
  pmap_3->rate = rate_29(D);

<bb 26>:
  # DEBUG s => fmtp_36(D)
  if (fmtp_36(D) == 0B)
    goto <bb 30>;
  else
    goto <bb 27>;

<bb 27>:
  D.47353_118 = *fmtp_36(D);
  if (D.47353_118 == 0)
    goto <bb 30>;
  else
    goto <bb 47>;

<bb 28>:
Invalid sum of incoming frequencies 1045, should be 1229
  D.47357_120 = MEM[(const char *)D.47022_59];
  if (D.47357_120 == 0)
    goto <bb 29>;
  else
    goto <bb 48>;

<bb 29>:
Invalid sum of incoming frequencies 1107, should be 933
  D.47039_63 = session_14(D)->pool;
  D.47053_64 = switch_core_perform_strdup (D.47039_63, fmtp_36(D), "src/switch_core_media.c", &__func__, 644);
  pmap_3->rm_fmtp = D.47053_64;

<bb 30>:
  pmap_3->allocated = 1;
  D.47054_66 = (unsigned char) pt_65(D);
  pmap_3->recv_pt = D.47054_66;
  D.47055_67 = sdp_type_57(D) == 0;
  D.47056_68 = exists_128 == 0;
  D.47057_69 = D.47055_67 | D.47056_68;
  if (D.47057_69 != 0)
    goto <bb 31>;
  else
    goto <bb 34>;

<bb 31>:
  if (local_pt_156 != 0)
    goto <bb 32>;
  else
    goto <bb 33>;

<bb 32>:
  iftmp.170_70 = (unsigned char) local_pt_156;

<bb 33>:
  # iftmp.170_11 = PHI <iftmp.170_70(32), D.47054_66(31)>
  pmap_3->pt = iftmp.170_11;

<bb 34>:
  if (negotiated_72(D) != 0)
    goto <bb 35>;
  else
    goto <bb 36>;

<bb 35>:
  pmap_3->negotiated = negotiated_72(D);

<bb 36>:
  if (exists_128 == 0)
    goto <bb 37>;
  else
    goto <bb 42>;

<bb 37>:
  D.47035_73 = engine_20->payload_map;
  if (D.47035_73 == pmap_3)
    goto <bb 38>;
  else
    goto <bb 39>;

<bb 38>:
  engine_20->pmap_tail = pmap_3;
  goto <bb 42>;

<bb 39>:
  if (D.47035_73 == 0B)
    goto <bb 40>;
  else
    goto <bb 41>;

<bb 40>:
  engine_20->pmap_tail = pmap_3;
  engine_20->payload_map = pmap_3;
  goto <bb 42>;

<bb 41>:
  D.47073_76 = engine_20->pmap_tail;
  D.47073_76->next = pmap_3;
  engine_20->pmap_tail = pmap_3;

<bb 42>:
  D.47004_79 = smh_15->sdp_mutex;
  switch_mutex_unlock (D.47004_79);

<bb 43>:
  # pmap_9 = PHI <0B(4), pmap_3(42)>
  return pmap_9;

<bb 44>:
  D.47022_38 = pmap_159->rm_fmtp;
  # DEBUG s => D.47022_38
  if (D.47022_38 == 0B)
    goto <bb 18>;
  else
    goto <bb 14>;

<bb 45>:
  D.38476_41 = __builtin_strcmp (D.47022_38, fmtp_36(D));
  if (D.38476_41 != 0)
    goto <bb 15>;
  else
    goto <bb 18>;

<bb 46>:
  # exists_46 = PHI <0(17), 0(16), 0(5), 0(6)>
  # local_pt_158 = PHI <local_pt_7(17), local_pt_7(16), 0(5), 0(6)>
  # DEBUG exists => exists_46
  hlen = -1;
  if (pmap_22 != 0B)
    goto <bb 19>;
  else
    goto <bb 20>;

<bb 47>:
  D.47022_59 = pmap_3->rm_fmtp;
  # DEBUG s => D.47022_59
  if (D.47022_59 == 0B)
    goto <bb 29>;
  else
    goto <bb 28>;

<bb 48>:
  D.38491_62 = __builtin_strcmp (D.47022_59, fmtp_36(D));
  if (D.38491_62 != 0)
    goto <bb 29>;
  else
    goto <bb 30>;

}



;; Function switch_core_media_set_r_sdp_codec_string (switch_core_media_set_r_sdp_codec_string)

Candidate (40018): already_did
! Disqualifying already_did - No scalar replacements to be created.
switch_core_media_set_r_sdp_codec_string (struct switch_core_session_t * session, const char * codec_string, struct sdp_session_t * sdp, switch_sdp_type_t sdp_type)
{
  int D.48797;
  switch_bool_t D.48796;
  int D.48795;
  int D.48794;
  int D.48793;
  int D.48792;
  int D.48791;
  int D.48790;
  int D.48789;
  const char D.47395;
  const char D.47391;
  const char D.47387;
  const char D.47380;
  const char D.47373;
  const char D.47366;
  const char D.47362;
  const struct switch_codec_implementation_t * imp;
  const struct switch_codec_implementation_t * imp;
  const struct switch_codec_implementation_t * imp;
  char * tmp_codec_string;
  static const char __func__[41] = "switch_core_media_set_r_sdp_codec_string";
  static const char __PRETTY_FUNCTION__[41] = "switch_core_media_set_r_sdp_codec_string";
  struct switch_media_handle_t * smh;
  const char * var;
  int prefer_sdp;
  struct switch_channel_t * channel;
  const struct switch_codec_implementation_t * codecs[50];
  char * codec_order[50];
  int num_codecs;
  int already_did[128];
  int i;
  short int match;
  struct sdp_rtpmap_t * map;
  struct sdp_connection_t * connection;
  int dptime;
  int ptime;
  struct sdp_attribute_t * attr;
  struct sdp_media_t * m;
  char buf[1024];
  char D.40591;
  unsigned int D.40590;
  char * D.40588;
  size_t D.40587;
  unsigned int D.40585;
  char * D.40583;
  size_t D.40582;
  int D.40576;
  char * const D.40575;
  uint32_t D.40561;
  switch_call_direction_t D.40558;
  struct switch_channel_t * D.40557;
  int D.40556;
  int D.40555;
  signed char D.40553;
  const switch_payload_t D.40552;
  const switch_codec_type_t D.40550;
  struct switch_core_session_t * D.40547;
  int D.40535;
  char * const D.40534;
  int D.40522;
  int D.40521;
  signed char D.40519;
  const switch_payload_t D.40518;
  const switch_codec_type_t D.40516;
  int D.40510;
  char * const D.40509;
  int D.40506;
  const switch_payload_t D.40505;
  int D.40502;
  int D.40501;
  switch_core_media_NDLB_t D.40500;
  struct switch_core_media_params_t * D.40499;
  int D.40493;
  int D.40491;
  switch_call_direction_t D.40487;
  struct switch_core_session_t * D.40484;
  struct sdp_connection_t * D.40479;
  int D.40474;
  unsigned int D.40466;
  char * D.40464;
  size_t D.40463;
  uint32_t ptime.5;
  long unsigned int D.40457;
  uint32_t D.40456;
  <unnamed-unsigned:7> D.40455;
  const char * D.40454;
  const char * D.40453;
  switch_media_type_t D.40452;
  int D.40447;
  long unsigned int D.40441;
  unsigned int D.40438;
  sdp_media_e D.40437;
  const char * D.40436;
  int D.40433;
  const char * D.40429;
  _Bool D.40426;
  _Bool D.40425;
  _Bool D.40424;
  unsigned int D.40420;

<bb 2>:
  buf = {};
  # DEBUG ptime => 0
  # DEBUG dptime => 0
  # DEBUG match => 0
  already_did = {};
  # DEBUG num_codecs => 0
  codecs = {};
  channel_29 = switch_core_session_get_channel (session_28(D));
  # DEBUG channel => channel_29
  # DEBUG prefer_sdp => 0
  if (session_28(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 8198, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_31 = session_28(D)->media_handle;
  # DEBUG smh => smh_31
  if (smh_31 == 0B)
    goto <bb 115>;
  else
    goto <bb 5>;

<bb 5>:
  var_32 = switch_channel_get_variable_dup (channel_29, "ep_codec_prefer_sdp", 1, -1);
  # DEBUG var => var_32
  if (var_32 != 0B)
    goto <bb 6>;
  else
    goto <bb 16>;

<bb 6>:
  # DEBUG expr => var_32
  D.48789_311 = strcasecmp (var_32, "yes");
  if (D.48789_311 == 0)
    goto <bb 15>;
  else
    goto <bb 7>;

<bb 7>:
  D.48790_312 = strcasecmp (var_32, "on");
  if (D.48790_312 == 0)
    goto <bb 15>;
  else
    goto <bb 8>;

<bb 8>:
  D.48791_313 = strcasecmp (var_32, "true");
  if (D.48791_313 == 0)
    goto <bb 15>;
  else
    goto <bb 9>;

<bb 9>:
  D.48792_314 = strcasecmp (var_32, "t");
  if (D.48792_314 == 0)
    goto <bb 15>;
  else
    goto <bb 10>;

<bb 10>:
  D.48793_315 = strcasecmp (var_32, "enabled");
  if (D.48793_315 == 0)
    goto <bb 15>;
  else
    goto <bb 11>;

<bb 11>:
  D.48794_316 = strcasecmp (var_32, "active");
  if (D.48794_316 == 0)
    goto <bb 15>;
  else
    goto <bb 12>;

<bb 12>:
  D.48795_317 = strcasecmp (var_32, "allow");
  if (D.48795_317 == 0)
    goto <bb 15>;
  else
    goto <bb 13>;

<bb 13>:
  D.48796_318 = switch_is_number (var_32);
  if (D.48796_318 != 0)
    goto <bb 14>;
  else
    goto <bb 116>;

<bb 14>:
  # DEBUG __nptr => var_32
  D.48797_319 = strtol (var_32, 0B, 10);
  if (D.48797_319 != 0)
    goto <bb 15>;
  else
    goto <bb 116>;

<bb 15>:
  # DEBUG prefer_sdp => 1

<bb 16>:
  # prefer_sdp_23 = PHI <0(5), 0(116), 1(15)>
  # DEBUG prefer_sdp => prefer_sdp_23
  # DEBUG s => codec_string_35(D)
  if (codec_string_35(D) == 0B)
    goto <bb 18>;
  else
    goto <bb 17>;

<bb 17>:
  D.47362_278 = *codec_string_35(D);
  if (D.47362_278 == 0)
    goto <bb 18>;
  else
    goto <bb 117>;

<bb 18>:
  num_codecs_42 = switch_loadable_module_get_codecs (&codecs, 50);
  # DEBUG num_codecs => num_codecs_42
  goto <bb 20>;

<bb 19>:
  D.40420_38 = switch_separate_string (tmp_codec_string_37, 44, &codec_order, 50);
  num_codecs_39 = (int) D.40420_38;
  # DEBUG num_codecs => num_codecs_39
  num_codecs_40 = switch_loadable_module_get_codecs_sorted (&codecs, 50, &codec_order, num_codecs_39);
  # DEBUG num_codecs => num_codecs_40
  free (tmp_codec_string_37);
  # DEBUG tmp_codec_string => 0B

<bb 20>:
  # num_codecs_22 = PHI <num_codecs_40(19), num_codecs_42(18), 0(117)>
  # DEBUG num_codecs => num_codecs_22
  D.40424_43 = channel_29 == 0B;
  D.40425_44 = num_codecs_22 == 0;
  D.40426_45 = D.40424_43 | D.40425_44;
  if (D.40426_45 != 0)
    goto <bb 115>;
  else
    goto <bb 21>;

<bb 21>:
  attr_47 = sdp_46(D)->sdp_attributes;
  # DEBUG attr => attr_47
  # DEBUG attr => attr_47
  if (attr_47 != 0B)
    goto <bb 22>;
  else
    goto <bb 26>;

<bb 22>:
  # attr_163 = PHI <attr_54(25), attr_47(21)>
  D.40429_48 = attr_163->a_name;
  # DEBUG s => D.40429_48
  if (D.40429_48 == 0B)
    goto <bb 25>;
  else
    goto <bb 23>;

<bb 23>:
  D.47366_280 = *D.40429_48;
  if (D.47366_280 == 0)
    goto <bb 25>;
  else
    goto <bb 118>;

<bb 24>:
  # attr_204 = PHI <attr_163(118)>
  D.40436_52 = attr_204->a_value;
  # DEBUG __nptr => D.40436_52
  dptime_282 = strtol (D.40436_52, 0B, 10);
  # DEBUG dptime => NULL
  goto <bb 26>;

<bb 25>:
  attr_54 = attr_163->a_next;
  # DEBUG attr => attr_54
  # DEBUG attr => attr_54
  if (attr_54 != 0B)
    goto <bb 22>;
  else
    goto <bb 26>;

<bb 26>:
  # dptime_9 = PHI <dptime_282(24), 0(25), 0(21)>
  # DEBUG dptime => dptime_9
  switch_core_media_find_zrtp_hash (session_28(D), sdp_46(D));
  switch_core_media_pass_zrtp_hash (session_28(D));
  m_55 = sdp_46(D)->sdp_media;
  # DEBUG m => m_55
  # DEBUG m => m_55
  if (m_55 != 0B)
    goto <bb 27>;
  else
    goto <bb 38>;

<bb 27>:
  # m_356 = PHI <m_80(37), m_55(26)>
  # DEBUG ptime => dptime_9
  D.40437_57 = m_356->m_type;
  D.40438_58 = D.40437_57 + 4294967294;
  if (D.40438_58 <= 1)
    goto <bb 28>;
  else
    goto <bb 37>;

<bb 28>:
  D.40441_59 = m_356->m_port;
  if (D.40441_59 != 0)
    goto <bb 29>;
  else
    goto <bb 37>;

<bb 29>:
  map_60 = m_356->m_rtpmaps;
  # DEBUG map => map_60
  # DEBUG map => map_60
  # DEBUG ptime => dptime_9
  if (map_60 != 0B)
    goto <bb 30>;
  else
    goto <bb 37>;

<bb 30>:
  # ptime_344 = PHI <ptime_6(36), dptime_9(29)>
  # map_87 = PHI <map_79(36), map_60(29)>
  attr_61 = m_356->m_attributes;
  # DEBUG attr => attr_61
  # DEBUG attr => attr_61
  if (attr_61 != 0B)
    goto <bb 31>;
  else
    goto <bb 36>;

<bb 31>:
  # attr_158 = PHI <attr_69(35), attr_61(30)>
  D.40429_62 = attr_158->a_name;
  # DEBUG s => D.40429_62
  if (D.40429_62 == 0B)
    goto <bb 35>;
  else
    goto <bb 32>;

<bb 32>:
  D.47373_283 = *D.40429_62;
  if (D.47373_283 == 0)
    goto <bb 35>;
  else
    goto <bb 119>;

<bb 33>:
Invalid sum of incoming frequencies 2030, should be 2387
  D.40436_66 = attr_158->a_value;
  if (D.40436_66 != 0B)
    goto <bb 34>;
  else
    goto <bb 35>;

<bb 34>:
  # D.40436_203 = PHI <D.40436_66(33)>
  D.40436_67 = D.40436_203;
  # DEBUG __nptr => D.40436_67
  ptime_285 = strtol (D.40436_67, 0B, 10);
  # DEBUG ptime => NULL
  goto <bb 36>;

<bb 35>:
Invalid sum of incoming frequencies 9802, should be 9443
  attr_69 = attr_158->a_next;
  # DEBUG attr => attr_69
  # DEBUG attr => attr_69
  if (attr_69 != 0B)
    goto <bb 31>;
  else
    goto <bb 36>;

<bb 36>:
  # ptime_6 = PHI <ptime_285(34), ptime_344(35), ptime_344(30)>
  # DEBUG ptime => ptime_6
  D.40437_70 = m_356->m_type;
  D.40452_71 = D.40437_70 != 2;
  D.40453_72 = map_87->rm_encoding;
  D.40454_73 = map_87->rm_fmtp;
  D.40455_74 = map_87->rm_pt;
  D.40456_75 = (uint32_t) D.40455_74;
  D.40457_76 = map_87->rm_rate;
  ptime.5_77 = (uint32_t) ptime_6;
  switch_core_media_add_payload_map (session_28(D), D.40452_71, D.40453_72, D.40454_73, sdp_type_78(D), D.40456_75, D.40457_76, ptime.5_77, 0);
  map_79 = map_87->rm_next;
  # DEBUG map => map_79
  # DEBUG map => map_79
  # DEBUG ptime => ptime_6
  if (map_79 != 0B)
    goto <bb 30>;
  else
    goto <bb 37>;

<bb 37>:
  m_80 = m_356->m_next;
  # DEBUG m => m_80
  # DEBUG m => m_80
  if (m_80 != 0B)
    goto <bb 27>;
  else
    goto <bb 38>;

<bb 38>:
  m_81 = sdp_46(D)->sdp_media;
  # DEBUG m => m_81
  # DEBUG m => m_81
  if (m_81 != 0B)
    goto <bb 39>;
  else
    goto <bb 113>;

<bb 39>:
  # m_116 = PHI <m_231(112), m_81(38)>
  # DEBUG ptime => dptime_9
  D.40437_83 = m_116->m_type;
  if (D.40437_83 == 8)
    goto <bb 40>;
  else
    goto <bb 42>;

<bb 40>:
  D.40441_84 = m_116->m_port;
  if (D.40441_84 != 0)
    goto <bb 41>;
  else
    goto <bb 85>;

<bb 41>:
  D.40463_85 = strlen (&buf);
  D.40464_86 = &buf + D.40463_85;
  D.40466_88 = 1024 - D.40463_85;
  switch_snprintf (D.40464_86, D.40466_88, ",t38");
  goto <bb 112>;

<bb 42>:
  if (D.40437_83 == 2)
    goto <bb 43>;
  else
    goto <bb 85>;

<bb 43>:
  D.40441_90 = m_116->m_port;
  if (D.40441_90 != 0)
    goto <bb 44>;
  else
    goto <bb 112>;

<bb 44>:
  attr_91 = m_116->m_attributes;
  # DEBUG attr => attr_91
  # DEBUG attr => attr_91
  if (attr_91 != 0B)
    goto <bb 45>;
  else
    goto <bb 50>;

<bb 45>:
  # attr_159 = PHI <attr_99(49), attr_91(44)>
  D.40429_92 = attr_159->a_name;
  # DEBUG s => D.40429_92
  if (D.40429_92 == 0B)
    goto <bb 49>;
  else
    goto <bb 46>;

<bb 46>:
  D.47380_286 = *D.40429_92;
  if (D.47380_286 == 0)
    goto <bb 49>;
  else
    goto <bb 120>;

<bb 47>:
  D.40436_96 = attr_159->a_value;
  if (D.40436_96 != 0B)
    goto <bb 48>;
  else
    goto <bb 49>;

<bb 48>:
  # D.40436_192 = PHI <D.40436_96(47)>
  D.40436_97 = D.40436_192;
  # DEBUG __nptr => D.40436_97
  ptime_288 = strtol (D.40436_97, 0B, 10);
  # DEBUG ptime => NULL
  goto <bb 50>;

<bb 49>:
  attr_99 = attr_159->a_next;
  # DEBUG attr => attr_99
  # DEBUG attr => attr_99
  if (attr_99 != 0B)
    goto <bb 45>;
  else
    goto <bb 50>;

<bb 50>:
  # ptime_8 = PHI <ptime_288(48), dptime_9(49), dptime_9(44)>
  # DEBUG ptime => ptime_8
  connection_100 = sdp_46(D)->sdp_connection;
  # DEBUG connection => connection_100
  D.40479_101 = m_116->m_connections;
  if (D.40479_101 != 0B)
    goto <bb 51>;
  else
    goto <bb 52>;

<bb 51>:
  # DEBUG connection => D.40479_101

<bb 52>:
  # connection_10 = PHI <connection_100(50), D.40479_101(51)>
  # DEBUG connection => connection_10
  if (connection_10 == 0B)
    goto <bb 53>;
  else
    goto <bb 54>;

<bb 53>:
  D.40484_103 = switch_channel_get_session (channel_29);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 8285, D.40484_103, 3, "Cannot find a c= line in the sdp at media or session level!\n");
  goto <bb 113>;

<bb 54>:
  D.40487_104 = switch_channel_direction (channel_29);
  if (D.40487_104 == 0)
    goto <bb 57>;
  else
    goto <bb 55>;

<bb 55>:
  if (prefer_sdp_23 != 0)
    goto <bb 57>;
  else
    goto <bb 56>;

<bb 56>:
  # i_363 = PHI <0(55)>
  # DEBUG i => i_363
  if (num_codecs_22 > i_363)
    goto <bb 70>;
  else
    goto <bb 112>;

<bb 57>:
  map_141 = m_116->m_rtpmaps;
  # DEBUG map => map_141
  # DEBUG map => map_141
  if (map_141 != 0B)
    goto <bb 58>;
  else
    goto <bb 112>;

<bb 58>:
  # map_284 = PHI <map_170(69), map_141(57)>
  D.40455_142 = map_284->rm_pt;
  D.40491_143 = (int) D.40455_142;
  D.40493_146 = already_did[D.40491_143];
  if (D.40493_146 != 0)
    goto <bb 69>;
  else
    goto <bb 59>;

<bb 59>:
Invalid sum of incoming frequencies 502, should be 251
  # i_64 = PHI <0(58)>
  # DEBUG i => i_64
  if (num_codecs_22 > i_64)
    goto <bb 60>;
  else
    goto <bb 69>;

<bb 60>:
  # i_320 = PHI <i_169(68), i_64(59)>
  imp_148 = codecs[i_320];
  # DEBUG imp => imp_148
  D.40453_149 = map_284->rm_encoding;
  # DEBUG s => D.40453_149
  if (D.40453_149 == 0B)
    goto <bb 62>;
  else
    goto <bb 61>;

<bb 61>:
  D.47387_289 = *D.40453_149;
  if (D.47387_289 == 0)
    goto <bb 62>;
  else
    goto <bb 121>;

<bb 62>:
Invalid sum of incoming frequencies 2144, should be 2041
  if (D.40491_143 <= 95)
    goto <bb 63>;
  else
    goto <bb 64>;

<bb 63>:
  D.40505_160 = imp_148->ianacode;
  D.40506_161 = (int) D.40505_160;
  match_162 = D.40491_143 == D.40506_161;
  # DEBUG match => match_162
  goto <bb 66>;

<bb 64>:
Invalid sum of incoming frequencies 1600, should be 1701
  if (D.40453_149 != 0B)
    goto <bb 65>;
  else
    goto <bb 68>;

<bb 65>:
  D.40509_165 = imp_148->iananame;
  D.40510_166 = strcasecmp (D.40453_149, D.40509_165);
  match_167 = D.40510_166 == 0;
  # DEBUG match => match_167

<bb 66>:
  # match_16 = PHI <match_162(63), match_167(65)>
  # DEBUG match => match_16
  if (match_16 != 0)
    goto <bb 67>;
  else
    goto <bb 68>;

<bb 67>:
  add_audio_codec.constprop.7 (map_284, ptime_8, &buf);
  goto <bb 69>;

<bb 68>:
  i_169 = i_320 + 1;
  # DEBUG i => i_169
  # DEBUG i => i_169
  if (num_codecs_22 > i_169)
    goto <bb 60>;
  else
    goto <bb 69>;

<bb 69>:
Invalid sum of incoming frequencies 752, should be 1003
  map_170 = map_284->rm_next;
  # DEBUG map => map_170
  # DEBUG map => map_170
  if (map_170 != 0B)
    goto <bb 58>;
  else
    goto <bb 112>;

<bb 70>:
  # i_102 = PHI <i_140(84), i_363(56)>
  imp_106 = codecs[i_102];
  # DEBUG imp => imp_106
  D.40516_107 = imp_106->codec_type;
  if (D.40516_107 != 0)
    goto <bb 84>;
  else
    goto <bb 71>;

<bb 71>:
  D.40518_108 = imp_106->ianacode;
  D.40519_109 = (signed char) D.40518_108;
  if (D.40519_109 < 0)
    goto <bb 84>;
  else
    goto <bb 72>;

<bb 72>:
  D.40521_111 = (int) D.40518_108;
  D.40522_112 = already_did[D.40521_111];
  if (D.40522_112 != 0)
    goto <bb 84>;
  else
    goto <bb 73>;

<bb 73>:
  map_113 = m_116->m_rtpmaps;
  # DEBUG map => map_113
  # DEBUG map => map_113
  if (map_113 != 0B)
    goto <bb 74>;
  else
    goto <bb 84>;

<bb 74>:
  # map_156 = PHI <map_139(83), map_113(73)>
  D.40455_114 = map_156->rm_pt;
  D.40491_115 = (int) D.40455_114;
  D.40493_118 = already_did[D.40491_115];
  if (D.40493_118 != 0)
    goto <bb 83>;
  else
    goto <bb 75>;

<bb 75>:
Invalid sum of incoming frequencies 2586, should be 1293
  D.40453_119 = map_156->rm_encoding;
  # DEBUG s => D.40453_119
  if (D.40453_119 == 0B)
    goto <bb 77>;
  else
    goto <bb 76>;

<bb 76>:
  D.47391_291 = *D.40453_119;
  if (D.47391_291 == 0)
    goto <bb 77>;
  else
    goto <bb 122>;

<bb 77>:
  if (D.40491_115 <= 95)
    goto <bb 78>;
  else
    goto <bb 79>;

<bb 78>:
  match_132 = D.40521_111 == D.40491_115;
  # DEBUG match => match_132
  goto <bb 81>;

<bb 79>:
  if (D.40453_119 != 0B)
    goto <bb 80>;
  else
    goto <bb 83>;

<bb 80>:
  D.40534_135 = imp_106->iananame;
  D.40535_136 = strcasecmp (D.40453_119, D.40534_135);
  match_137 = D.40535_136 == 0;
  # DEBUG match => match_137

<bb 81>:
  # match_17 = PHI <match_132(78), match_137(80)>
  # DEBUG match => match_17
  if (match_17 != 0)
    goto <bb 82>;
  else
    goto <bb 83>;

<bb 82>:
  # map_205 = PHI <map_156(81)>
  add_audio_codec.constprop.7 (map_205, ptime_8, &buf);
  goto <bb 84>;

<bb 83>:
Invalid sum of incoming frequencies 3821, should be 5113
  map_139 = map_156->rm_next;
  # DEBUG map => map_139
  # DEBUG map => map_139
  if (map_139 != 0B)
    goto <bb 74>;
  else
    goto <bb 84>;

<bb 84>:
  i_140 = i_102 + 1;
  # DEBUG i => i_140
  # DEBUG i => i_140
  if (num_codecs_22 > i_140)
    goto <bb 70>;
  else
    goto <bb 112>;

<bb 85>:
  if (D.40437_83 == 3)
    goto <bb 86>;
  else
    goto <bb 112>;

<bb 86>:
  D.40441_172 = m_116->m_port;
  if (D.40441_172 != 0)
    goto <bb 87>;
  else
    goto <bb 112>;

<bb 87>:
  connection_173 = sdp_46(D)->sdp_connection;
  # DEBUG connection => connection_173
  D.40479_174 = m_116->m_connections;
  if (D.40479_174 != 0B)
    goto <bb 88>;
  else
    goto <bb 89>;

<bb 88>:
  # DEBUG connection => D.40479_174

<bb 89>:
  # connection_11 = PHI <connection_173(87), D.40479_174(88)>
  # DEBUG connection => connection_11
  if (connection_11 == 0B)
    goto <bb 91>;
  else
    goto <bb 90>;

<bb 90>:
  # i_367 = PHI <0(89)>
  # DEBUG i => i_367
  if (num_codecs_22 > i_367)
    goto <bb 92>;
  else
    goto <bb 112>;

<bb 91>:
  D.40547_176 = switch_channel_get_session (channel_29);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 8352, D.40547_176, 3, "Cannot find a c= line in the sdp at media or session level!\n");
  goto <bb 113>;

<bb 92>:
  # i_294 = PHI <i_230(111), i_367(90)>
  imp_178 = codecs[i_294];
  # DEBUG imp => imp_178
  D.40550_179 = imp_178->codec_type;
  if (D.40550_179 != 1)
    goto <bb 111>;
  else
    goto <bb 93>;

<bb 93>:
  D.40552_180 = imp_178->ianacode;
  D.40553_181 = (signed char) D.40552_180;
  if (D.40553_181 < 0)
    goto <bb 111>;
  else
    goto <bb 94>;

<bb 94>:
  D.40555_183 = (int) D.40552_180;
  D.40556_184 = already_did[D.40555_183];
  if (D.40556_184 != 0)
    goto <bb 111>;
  else
    goto <bb 95>;

<bb 95>:
  D.40557_185 = session_28(D)->channel;
  D.40558_186 = switch_channel_direction (D.40557_185);
  if (D.40558_186 == 0)
    goto <bb 96>;
  else
    goto <bb 97>;

<bb 96>:
  D.40557_187 = session_28(D)->channel;
  D.40561_188 = switch_channel_test_flag (D.40557_187, 114);
  if (D.40561_188 != 0)
    goto <bb 111>;
  else
    goto <bb 97>;

<bb 97>:
  map_189 = m_116->m_rtpmaps;
  # DEBUG map => map_189
  # DEBUG map => map_189
  if (map_189 != 0B)
    goto <bb 98>;
  else
    goto <bb 111>;

<bb 98>:
  # map_290 = PHI <map_229(110), map_189(97)>
  D.40455_190 = map_290->rm_pt;
  D.40491_191 = (int) D.40455_190;
  D.40493_194 = already_did[D.40491_191];
  if (D.40493_194 != 0)
    goto <bb 110>;
  else
    goto <bb 99>;

<bb 99>:
Invalid sum of incoming frequencies 2470, should be 1235
  D.40453_195 = map_290->rm_encoding;
  # DEBUG s => D.40453_195
  if (D.40453_195 == 0B)
    goto <bb 101>;
  else
    goto <bb 100>;

<bb 100>:
  D.47395_293 = *D.40453_195;
  if (D.47395_293 == 0)
    goto <bb 101>;
  else
    goto <bb 123>;

<bb 101>:
  if (D.40491_191 <= 95)
    goto <bb 102>;
  else
    goto <bb 103>;

<bb 102>:
  D.40552_206 = imp_178->ianacode;
  D.40555_207 = (int) D.40552_206;
  match_208 = D.40491_191 == D.40555_207;
  # DEBUG match => match_208
  goto <bb 105>;

<bb 103>:
  if (D.40453_195 != 0B)
    goto <bb 104>;
  else
    goto <bb 110>;

<bb 104>:
  D.40575_211 = imp_178->iananame;
  D.40576_212 = strcasecmp (D.40453_195, D.40575_211);
  match_213 = D.40576_212 == 0;
  # DEBUG match => match_213

<bb 105>:
  # match_18 = PHI <match_208(102), match_213(104)>
  # DEBUG match => match_18
  if (match_18 != 0)
    goto <bb 106>;
  else
    goto <bb 110>;

<bb 106>:
  # map_202 = PHI <map_290(105)>
  if (dptime_9 > 0)
    goto <bb 107>;
  else
    goto <bb 108>;

<bb 107>:
  D.40582_215 = strlen (&buf);
  D.40583_216 = &buf + D.40582_215;
  D.40585_218 = 1024 - D.40582_215;
  D.40575_219 = imp_178->iananame;
  D.40457_220 = map_202->rm_rate;
  switch_snprintf (D.40583_216, D.40585_218, ",%s@%uh@%di", D.40575_219, D.40457_220, dptime_9);
  goto <bb 109>;

<bb 108>:
  D.40587_221 = strlen (&buf);
  D.40588_222 = &buf + D.40587_221;
  D.40590_224 = 1024 - D.40587_221;
  D.40575_225 = imp_178->iananame;
  D.40457_226 = map_202->rm_rate;
  switch_snprintf (D.40588_222, D.40590_224, ",%s@%uh", D.40575_225, D.40457_226);

<bb 109>:
  D.40552_227 = imp_178->ianacode;
  D.40555_228 = (int) D.40552_227;
  already_did[D.40555_228] = 1;
  goto <bb 111>;

<bb 110>:
Invalid sum of incoming frequencies 3649, should be 4884
  map_229 = map_290->rm_next;
  # DEBUG map => map_229
  # DEBUG map => map_229
  if (map_229 != 0B)
    goto <bb 98>;
  else
    goto <bb 111>;

<bb 111>:
  i_230 = i_294 + 1;
  # DEBUG i => i_230
  # DEBUG i => i_230
  if (num_codecs_22 > i_230)
    goto <bb 92>;
  else
    goto <bb 112>;

<bb 112>:
  m_231 = m_116->m_next;
  # DEBUG m => m_231
  # DEBUG m => m_231
  if (m_231 != 0B)
    goto <bb 39>;
  else
    goto <bb 113>;

<bb 113>:
  D.40591_232 = buf[0];
  if (D.40591_232 == 44)
    goto <bb 114>;
  else
    goto <bb 115>;

<bb 114>:
  switch_channel_set_variable_var_check (channel_29, "ep_codec_string", &buf[1], 1);

<bb 115>:
  return;

<bb 116>:
  goto <bb 16>;

<bb 117>:
  tmp_codec_string_37 = __strdup (codec_string_35(D));
  # DEBUG tmp_codec_string => tmp_codec_string_37
  if (tmp_codec_string_37 != 0B)
    goto <bb 19>;
  else
    goto <bb 20>;

<bb 118>:
  D.40433_51 = strcasecmp (D.40429_48, "ptime");
  if (D.40433_51 == 0)
    goto <bb 24>;
  else
    goto <bb 25>;

<bb 119>:
  D.40447_65 = strcasecmp (D.40429_62, "ptime");
  if (D.40447_65 == 0)
    goto <bb 33>;
  else
    goto <bb 35>;

<bb 120>:
  D.40474_95 = strcasecmp (D.40429_92, "ptime");
  if (D.40474_95 == 0)
    goto <bb 47>;
  else
    goto <bb 49>;

<bb 121>:
  D.40499_151 = smh_31->mparams;
  D.40500_152 = D.40499_151->ndlb;
  D.40501_153 = (int) D.40500_152;
  D.40502_154 = D.40501_153 & 1;
  if (D.40502_154 != 0)
    goto <bb 62>;
  else
    goto <bb 64>;

<bb 122>:
  D.40499_121 = smh_31->mparams;
  D.40500_122 = D.40499_121->ndlb;
  D.40501_123 = (int) D.40500_122;
  D.40502_124 = D.40501_123 & 1;
  if (D.40502_124 != 0)
    goto <bb 77>;
  else
    goto <bb 79>;

<bb 123>:
  D.40499_197 = smh_31->mparams;
  D.40500_198 = D.40499_197->ndlb;
  D.40501_199 = (int) D.40500_198;
  D.40502_200 = D.40501_199 & 1;
  if (D.40502_200 != 0)
    goto <bb 101>;
  else
    goto <bb 103>;

}



;; Function switch_core_media_get_codec_string (switch_core_media_get_codec_string)

switch_core_media_get_codec_string (struct switch_core_session_t * session)
{
  const char D.47401;
  static const char __PRETTY_FUNCTION__[35] = "switch_core_media_get_codec_string";
  struct switch_media_handle_t * smh;
  const char * fallback;
  const char * preferred;
  struct switch_core_media_params_t * D.46988;
  switch_call_direction_t D.46985;
  struct switch_channel_t * D.46980;

<bb 2>:
  # DEBUG preferred => 0B
  # DEBUG fallback => 0B
  if (session_7(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 685, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_8 = session_7(D)->media_handle;
  # DEBUG smh => smh_8
  if (smh_8 == 0B)
    goto <bb 11>;
  else
    goto <bb 5>;

<bb 5>:
  D.46980_11 = session_7(D)->channel;
  preferred_12 = switch_channel_get_variable_dup (D.46980_11, "absolute_codec_string", 1, -1);
  # DEBUG preferred => preferred_12
  if (preferred_12 == 0B)
    goto <bb 6>;
  else
    goto <bb 7>;

<bb 6>:
  D.46980_13 = session_7(D)->channel;
  preferred_14 = switch_channel_get_variable_dup (D.46980_13, "codec_string", 1, -1);
  # DEBUG preferred => preferred_14

<bb 7>:
  # preferred_1 = PHI <preferred_12(5), preferred_14(6)>
  # DEBUG preferred => preferred_1
  if (preferred_1 == 0B)
    goto <bb 8>;
  else
    goto <bb 11>;

<bb 8>:
  D.46980_15 = session_7(D)->channel;
  D.46985_16 = switch_channel_direction (D.46980_15);
  if (D.46985_16 == 1)
    goto <bb 9>;
  else
    goto <bb 10>;

<bb 9>:
  D.46988_17 = smh_8->mparams;
  preferred_18 = D.46988_17->outbound_codec_string;
  # DEBUG preferred => preferred_18
  fallback_20 = D.46988_17->inbound_codec_string;
  # DEBUG fallback => fallback_20
  goto <bb 11>;

<bb 10>:
  D.46988_21 = smh_8->mparams;
  preferred_22 = D.46988_21->inbound_codec_string;
  # DEBUG preferred => preferred_22
  fallback_24 = D.46988_21->outbound_codec_string;
  # DEBUG fallback => fallback_24

<bb 11>:
  # preferred_2 = PHI <"PCMU"(4), preferred_1(7), preferred_18(9), preferred_22(10)>
  # fallback_3 = PHI <"PCMU"(4), 0B(7), fallback_20(9), fallback_24(10)>
  # DEBUG fallback => fallback_3
  # DEBUG preferred => preferred_2
  # DEBUG s => preferred_2
  if (preferred_2 == 0B)
    goto <bb 13>;
  else
    goto <bb 12>;

<bb 12>:
  D.47401_35 = *preferred_2;
  if (D.47401_35 == 0)
    goto <bb 13>;
  else
    goto <bb 14>;

<bb 13>:
  # preferred_4 = PHI <preferred_2(14), fallback_3(12), fallback_3(11)>
  return preferred_4;

<bb 14>:
  goto <bb 13>;

}



;; Function switch_core_session_clear_crypto (switch_core_session_clear_crypto)

Candidate (38504): vars
! Disqualifying vars - No scalar replacements to be created.
switch_core_session_clear_crypto (struct switch_core_session_t * session)
{
  const char * vars[11];
  struct switch_media_handle_t * smh;
  int i;
  void * D.46973;
  void * D.46971;
  unsigned int i.167;
  const char * D.46965;
  struct switch_channel_t * D.46964;

<bb 2>:
  vars = *.LC10;
  # DEBUG i => 0
  # DEBUG i => 0
  D.46965_21 = vars[0];
  if (D.46965_21 != 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  # i_13 = PHI <i_8(3), 0(2)>
  # D.46965_16 = PHI <D.46965_4(3), D.46965_21(2)>
  D.46964_6 = session_5(D)->channel;
  switch_channel_set_variable_var_check (D.46964_6, D.46965_16, 0B, 1);
  i_8 = i_13 + 1;
  # DEBUG i => i_8
  # DEBUG i => i_8
  D.46965_4 = vars[i_8];
  if (D.46965_4 != 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 4>:
  smh_9 = session_5(D)->media_handle;
  # DEBUG smh => smh_9
  if (smh_9 == 0B)
    goto <bb 6>;
  else
    goto <bb 7>;

<bb 5>:
  # i_29 = PHI <i_19(5), i_7(7)>
  i.167_12 = (unsigned int) i_29;
  D.46971_14 = &smh_9->engines[0].ssec[i.167_12]{lb: 0 sz: 144};
  memset (D.46971_14, 0, 144);
  D.46973_18 = &smh_9->engines[1].ssec[i.167_12]{lb: 0 sz: 144};
  memset (D.46973_18, 0, 144);
  i_19 = i_29 + 1;
  # DEBUG i => i_19
  # DEBUG i => i_19
  if (i_19 != 9)
    goto <bb 5>;
  else
    goto <bb 6>;

<bb 6>:
  return;

<bb 7>:
  # i_7 = PHI <0(4)>
  # DEBUG i => i_7
  goto <bb 5>;

}



;; Function switch_core_session_local_crypto_key (switch_core_session_local_crypto_key)

switch_core_session_local_crypto_key (struct switch_core_session_t * session, switch_media_type_t type)
{
  switch_rtp_crypto_key_type_t D.46951;
  const char * D.46950;
  struct switch_media_handle_t * D.46947;

<bb 2>:
  D.46947_3 = session_2(D)->media_handle;
  if (D.46947_3 == 0B)
    goto <bb 4>;
  else
    goto <bb 3>;

<bb 3>:
  D.46951_8 = D.46947_3->engines[type_7(D)].crypto_type;
  D.46950_9 = D.46947_3->engines[type_7(D)].ssec[D.46951_8].local_crypto_key;

<bb 4>:
  # D.46950_1 = PHI <0B(2), D.46950_9(3)>
  return D.46950_1;

}



;; Function switch_core_media_parse_rtp_bugs (switch_core_media_parse_rtp_bugs)

switch_core_media_parse_rtp_bugs (switch_rtp_bug_flag_t * flag_pole, const char * str)
{
  unsigned int D.46946;
  const char * D.46943;
  unsigned int D.46942;
  const char * D.46939;
  unsigned int D.46938;
  const char * D.46935;
  unsigned int D.46934;
  const char * D.46931;
  unsigned int D.46930;
  const char * D.46927;
  unsigned int D.46926;
  const char * D.46923;
  unsigned int D.46922;
  const char * D.46919;
  unsigned int D.46918;
  const char * D.46915;
  unsigned int D.46914;
  const char * D.46911;
  unsigned int D.46910;
  const char * D.46907;
  unsigned int D.46906;
  const char * D.46903;
  unsigned int D.46902;
  const char * D.46899;
  unsigned int D.46898;
  const char * D.46895;
  unsigned int D.46894;
  const char * D.46891;
  unsigned int D.46890;
  const char * D.46887;
  unsigned int D.46886;
  const char * D.46883;
  unsigned int D.46882;
  const char * D.46879;
  unsigned int D.46878;
  const char * D.46875;
  unsigned int D.46874;
  const char * D.46871;
  unsigned int D.46870;
  const char * D.46867;
  unsigned int D.46866;
  const char * D.46863;
  unsigned int D.46862;
  const char * D.46859;
  unsigned int D.46858;
  const char * D.46855;
  unsigned int D.46854;
  switch_rtp_bug_flag_t D.46853;
  const char * D.46850;
  const char * D.46847;

<bb 2>:
  D.46847_2 = switch_stristr ("clear", str_1(D));
  if (D.46847_2 != 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  *flag_pole_3(D) = 0;

<bb 4>:
  D.46850_4 = switch_stristr ("CISCO_SKIP_MARK_BIT_2833", str_1(D));
  if (D.46850_4 != 0B)
    goto <bb 5>;
  else
    goto <bb 6>;

<bb 5>:
  D.46853_5 = *flag_pole_3(D);
  D.46854_6 = D.46853_5 | 1;
  *flag_pole_3(D) = D.46854_6;

<bb 6>:
  D.46855_7 = switch_stristr ("~CISCO_SKIP_MARK_BIT_2833", str_1(D));
  if (D.46855_7 != 0B)
    goto <bb 7>;
  else
    goto <bb 8>;

<bb 7>:
  D.46853_8 = *flag_pole_3(D);
  D.46858_9 = D.46853_8 & 4294967294;
  *flag_pole_3(D) = D.46858_9;

<bb 8>:
  D.46859_10 = switch_stristr ("SONUS_SEND_INVALID_TIMESTAMP_2833", str_1(D));
  if (D.46859_10 != 0B)
    goto <bb 9>;
  else
    goto <bb 10>;

<bb 9>:
  D.46853_11 = *flag_pole_3(D);
  D.46862_12 = D.46853_11 | 2;
  *flag_pole_3(D) = D.46862_12;

<bb 10>:
  D.46863_13 = switch_stristr ("~SONUS_SEND_INVALID_TIMESTAMP_2833", str_1(D));
  if (D.46863_13 != 0B)
    goto <bb 11>;
  else
    goto <bb 12>;

<bb 11>:
  D.46853_14 = *flag_pole_3(D);
  D.46866_15 = D.46853_14 & 4294967293;
  *flag_pole_3(D) = D.46866_15;

<bb 12>:
  D.46867_16 = switch_stristr ("IGNORE_MARK_BIT", str_1(D));
  if (D.46867_16 != 0B)
    goto <bb 13>;
  else
    goto <bb 14>;

<bb 13>:
  D.46853_17 = *flag_pole_3(D);
  D.46870_18 = D.46853_17 | 4;
  *flag_pole_3(D) = D.46870_18;

<bb 14>:
  D.46871_19 = switch_stristr ("~IGNORE_MARK_BIT", str_1(D));
  if (D.46871_19 != 0B)
    goto <bb 15>;
  else
    goto <bb 16>;

<bb 15>:
  D.46853_20 = *flag_pole_3(D);
  D.46874_21 = D.46853_20 & 4294967291;
  *flag_pole_3(D) = D.46874_21;

<bb 16>:
  D.46875_22 = switch_stristr ("SEND_LINEAR_TIMESTAMPS", str_1(D));
  if (D.46875_22 != 0B)
    goto <bb 17>;
  else
    goto <bb 18>;

<bb 17>:
  D.46853_23 = *flag_pole_3(D);
  D.46878_24 = D.46853_23 | 8;
  *flag_pole_3(D) = D.46878_24;

<bb 18>:
  D.46879_25 = switch_stristr ("~SEND_LINEAR_TIMESTAMPS", str_1(D));
  if (D.46879_25 != 0B)
    goto <bb 19>;
  else
    goto <bb 20>;

<bb 19>:
  D.46853_26 = *flag_pole_3(D);
  D.46882_27 = D.46853_26 & 4294967287;
  *flag_pole_3(D) = D.46882_27;

<bb 20>:
  D.46883_28 = switch_stristr ("START_SEQ_AT_ZERO", str_1(D));
  if (D.46883_28 != 0B)
    goto <bb 21>;
  else
    goto <bb 22>;

<bb 21>:
  D.46853_29 = *flag_pole_3(D);
  D.46886_30 = D.46853_29 | 16;
  *flag_pole_3(D) = D.46886_30;

<bb 22>:
  D.46887_31 = switch_stristr ("~START_SEQ_AT_ZERO", str_1(D));
  if (D.46887_31 != 0B)
    goto <bb 23>;
  else
    goto <bb 24>;

<bb 23>:
  D.46853_32 = *flag_pole_3(D);
  D.46890_33 = D.46853_32 & 4294967279;
  *flag_pole_3(D) = D.46890_33;

<bb 24>:
  D.46891_34 = switch_stristr ("NEVER_SEND_MARKER", str_1(D));
  if (D.46891_34 != 0B)
    goto <bb 25>;
  else
    goto <bb 26>;

<bb 25>:
  D.46853_35 = *flag_pole_3(D);
  D.46894_36 = D.46853_35 | 32;
  *flag_pole_3(D) = D.46894_36;

<bb 26>:
  D.46895_37 = switch_stristr ("~NEVER_SEND_MARKER", str_1(D));
  if (D.46895_37 != 0B)
    goto <bb 27>;
  else
    goto <bb 28>;

<bb 27>:
  D.46853_38 = *flag_pole_3(D);
  D.46898_39 = D.46853_38 & 4294967263;
  *flag_pole_3(D) = D.46898_39;

<bb 28>:
  D.46899_40 = switch_stristr ("IGNORE_DTMF_DURATION", str_1(D));
  if (D.46899_40 != 0B)
    goto <bb 29>;
  else
    goto <bb 30>;

<bb 29>:
  D.46853_41 = *flag_pole_3(D);
  D.46902_42 = D.46853_41 | 64;
  *flag_pole_3(D) = D.46902_42;

<bb 30>:
  D.46903_43 = switch_stristr ("~IGNORE_DTMF_DURATION", str_1(D));
  if (D.46903_43 != 0B)
    goto <bb 31>;
  else
    goto <bb 32>;

<bb 31>:
  D.46853_44 = *flag_pole_3(D);
  D.46906_45 = D.46853_44 & 4294967231;
  *flag_pole_3(D) = D.46906_45;

<bb 32>:
  D.46907_46 = switch_stristr ("ACCEPT_ANY_PACKETS", str_1(D));
  if (D.46907_46 != 0B)
    goto <bb 33>;
  else
    goto <bb 34>;

<bb 33>:
  D.46853_47 = *flag_pole_3(D);
  D.46910_48 = D.46853_47 | 128;
  *flag_pole_3(D) = D.46910_48;

<bb 34>:
  D.46911_49 = switch_stristr ("~ACCEPT_ANY_PACKETS", str_1(D));
  if (D.46911_49 != 0B)
    goto <bb 35>;
  else
    goto <bb 36>;

<bb 35>:
  D.46853_50 = *flag_pole_3(D);
  D.46914_51 = D.46853_50 & 4294967167;
  *flag_pole_3(D) = D.46914_51;

<bb 36>:
  D.46915_52 = switch_stristr ("ACCEPT_ANY_PAYLOAD", str_1(D));
  if (D.46915_52 != 0B)
    goto <bb 37>;
  else
    goto <bb 38>;

<bb 37>:
  D.46853_53 = *flag_pole_3(D);
  D.46918_54 = D.46853_53 | 2048;
  *flag_pole_3(D) = D.46918_54;

<bb 38>:
  D.46919_55 = switch_stristr ("~ACCEPT_ANY_PAYLOAD", str_1(D));
  if (D.46919_55 != 0B)
    goto <bb 39>;
  else
    goto <bb 40>;

<bb 39>:
  D.46853_56 = *flag_pole_3(D);
  D.46922_57 = D.46853_56 & 4294965247;
  *flag_pole_3(D) = D.46922_57;

<bb 40>:
  D.46923_58 = switch_stristr ("GEN_ONE_GEN_ALL", str_1(D));
  if (D.46923_58 != 0B)
    goto <bb 41>;
  else
    goto <bb 42>;

<bb 41>:
  D.46853_59 = *flag_pole_3(D);
  D.46926_60 = D.46853_59 | 256;
  *flag_pole_3(D) = D.46926_60;

<bb 42>:
  D.46927_61 = switch_stristr ("~GEN_ONE_GEN_ALL", str_1(D));
  if (D.46927_61 != 0B)
    goto <bb 43>;
  else
    goto <bb 44>;

<bb 43>:
  D.46853_62 = *flag_pole_3(D);
  D.46930_63 = D.46853_62 & 4294967039;
  *flag_pole_3(D) = D.46930_63;

<bb 44>:
  D.46931_64 = switch_stristr ("CHANGE_SSRC_ON_MARKER", str_1(D));
  if (D.46931_64 != 0B)
    goto <bb 45>;
  else
    goto <bb 46>;

<bb 45>:
  D.46853_65 = *flag_pole_3(D);
  D.46934_66 = D.46853_65 | 512;
  *flag_pole_3(D) = D.46934_66;

<bb 46>:
  D.46935_67 = switch_stristr ("~CHANGE_SSRC_ON_MARKER", str_1(D));
  if (D.46935_67 != 0B)
    goto <bb 47>;
  else
    goto <bb 48>;

<bb 47>:
  D.46853_68 = *flag_pole_3(D);
  D.46938_69 = D.46853_68 & 4294966783;
  *flag_pole_3(D) = D.46938_69;

<bb 48>:
  D.46939_70 = switch_stristr ("FLUSH_JB_ON_DTMF", str_1(D));
  if (D.46939_70 != 0B)
    goto <bb 49>;
  else
    goto <bb 50>;

<bb 49>:
  D.46853_71 = *flag_pole_3(D);
  D.46942_72 = D.46853_71 | 1024;
  *flag_pole_3(D) = D.46942_72;

<bb 50>:
  D.46943_73 = switch_stristr ("~FLUSH_JB_ON_DTMF", str_1(D));
  if (D.46943_73 != 0B)
    goto <bb 51>;
  else
    goto <bb 52>;

<bb 51>:
  D.46853_74 = *flag_pole_3(D);
  D.46946_75 = D.46853_74 & 4294966271;
  *flag_pole_3(D) = D.46946_75;

<bb 52>:
  return;

}



;; Function switch_core_media_add_crypto (switch_core_media_add_crypto)

switch_core_media_add_crypto (struct switch_secure_settings_t * ssec, const char * key_str, switch_rtp_crypto_direction_t direction)
{
  static const char __func__[29] = "switch_core_media_add_crypto";
  char * p;
  switch_rtp_crypto_key_type_t type;
  unsigned char key[64];
  switch_status_t D.46845;
  void * restrict D.46844;
  unsigned char * D.46843;
  size_t D.46841;
  int D.46840;
  void * restrict D.46838;
  unsigned char * D.46837;
  int D.46832;
  char D.46821;
  char D.46817;

<bb 2>:
  p_3 = __builtin_strchr (key_str_2(D), 32);
  # DEBUG p => p_3
  if (p_3 != 0B)
    goto <bb 3>;
  else
    goto <bb 15> (bad);

<bb 3>:
  D.46817_4 = *p_3;
  if (D.46817_4 != 0)
    goto <bb 4>;
  else
    goto <bb 15> (bad);

<bb 4>:
  D.46821_6 = MEM[(char *)p_3 + 1B];
  if (D.46821_6 != 0)
    goto <bb 5>;
  else
    goto <bb 15> (bad);

<bb 5>:
  p_7 = p_3 + 1;
  # DEBUG p => p_7
  type_8 = switch_core_media_crypto_str2type (p_7);
  # DEBUG type => type_8
  if (type_8 == 9)
    goto <bb 6>;
  else
    goto <bb 7>;

<bb 6>:
  switch_log_printf (0, "src/switch_core_media.c", &__func__, 949, 0B, 3, "Parse Error near [%s]\n", p_7);
  goto <bb 15> (bad);

<bb 7>:
  p_9 = __builtin_strchr (p_7, 32);
  # DEBUG p => p_9
  if (p_9 != 0B)
    goto <bb 8>;
  else
    goto <bb 15> (bad);

<bb 8>:
  D.46817_10 = *p_9;
  if (D.46817_10 != 0)
    goto <bb 9>;
  else
    goto <bb 15> (bad);

<bb 9>:
  D.46821_12 = MEM[(char *)p_9 + 1B];
  if (D.46821_12 != 0)
    goto <bb 10>;
  else
    goto <bb 15> (bad);

<bb 10>:
  p_13 = p_9 + 1;
  # DEBUG p => p_13
  D.46832_14 = strncasecmp (p_13, "inline:", 7);
  if (D.46832_14 != 0)
    goto <bb 11>;
  else
    goto <bb 12>;

<bb 11>:
  switch_log_printf (0, "src/switch_core_media.c", &__func__, 957, 0B, 3, "Parse Error near [%s]\n", p_13);
  goto <bb 15> (bad);

<bb 12>:
  p_15 = &MEM[(void *)p_9 + 8B];
  # DEBUG p => p_15
  switch_b64_decode (p_15, &key, 64);
  if (direction_16(D) == 0)
    goto <bb 13>;
  else
    goto <bb 14>;

<bb 13>:
  D.46837_18 = &ssec_17(D)->local_raw_key[0];
  D.46838_19 = (void * restrict) D.46837_18;
  D.46840_21 = SUITES[type_8].keylen;
  D.46841_22 = (size_t) D.46840_21;
  memcpy (D.46838_19, &key[0], D.46841_22);
  goto <bb 16>;

<bb 14>:
  D.46843_23 = &ssec_17(D)->remote_raw_key[0];
  D.46844_24 = (void * restrict) D.46843_23;
  D.46840_26 = SUITES[type_8].keylen;
  D.46841_27 = (size_t) D.46840_26;
  memcpy (D.46844_24, &key[0], D.46841_27);
  goto <bb 16>;

bad:
  switch_log_printf (0, "src/switch_core_media.c", &__func__, 976, 0B, 3, "Error!\n");

<bb 16>:
  # D.46845_1 = PHI <0(14), 1(15), 0(13)>
  return D.46845_1;

}



;; Function switch_core_session_apply_crypto (switch_core_session_apply_crypto)

switch_core_session_apply_crypto (struct switch_core_session_t * session, switch_media_type_t type)
{
  const char * varname;
  struct switch_rtp_engine_t * engine;
  char * D.43903;
  unsigned char[64] * D.43902;
  uint32_t D.43901;
  int D.43900;
  switch_size_t D.43899;
  int D.43898;
  unsigned char[64] * D.43897;
  switch_rtp_crypto_key_type_t D.43896;
  struct switch_rtp_t * D.43895;
  struct switch_secure_settings_t * D.43894;
  uint32_t D.43889;
  char * D.43886;
  switch_rtp_crypto_key_type_t D.43885;
  uint32_t D.43882;
  struct switch_channel_t * D.43881;
  struct switch_media_handle_t * D.43876;

<bb 2>:
  if (type_2(D) == 0)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:

<bb 4>:
  # varname_1 = PHI <"rtp_secure_audio_confirmed"(3), "rtp_secure_video_confirmed"(2)>
  # DEBUG varname => varname_1
  D.43876_6 = session_5(D)->media_handle;
  if (D.43876_6 == 0B)
    goto <bb 9>;
  else
    goto <bb 5>;

<bb 5>:
  engine_10 = &D.43876_6->engines[type_2(D)]{lb: 0 sz: 11416};
  # DEBUG engine => engine_10
  D.43881_11 = session_5(D)->channel;
  D.43882_12 = switch_channel_test_flag (D.43881_11, 84);
  if (D.43882_12 != 0)
    goto <bb 9>;
  else
    goto <bb 6>;

<bb 6>:
  D.43885_13 = engine_10->crypto_type;
  D.43886_14 = engine_10->ssec[D.43885_13].remote_crypto_key;
  if (D.43886_14 != 0B)
    goto <bb 7>;
  else
    goto <bb 9>;

<bb 7>:
  D.43881_15 = session_5(D)->channel;
  D.43889_16 = switch_channel_test_flag (D.43881_15, 92);
  if (D.43889_16 != 0)
    goto <bb 8>;
  else
    goto <bb 9>;

<bb 8>:
  D.43885_18 = engine_10->crypto_type;
  D.43894_20 = &engine_10->ssec[D.43885_18]{lb: 0 sz: 144};
  D.43886_22 = engine_10->ssec[D.43885_18].remote_crypto_key;
  switch_core_media_add_crypto (D.43894_20, D.43886_22, 1);
  D.43895_23 = engine_10->rtp_session;
  D.43885_26 = engine_10->crypto_type;
  D.43897_27 = &engine_10->ssec[D.43885_26].local_raw_key;
  D.43896_29 = engine_10->ssec[D.43885_26].crypto_type;
  D.43898_30 = SUITES[D.43896_29].keylen;
  D.43899_31 = (switch_size_t) D.43898_30;
  switch_rtp_add_crypto_key (D.43895_23, 0, 1, D.43896_29, D.43897_27, D.43899_31);
  D.43895_32 = engine_10->rtp_session;
  D.43885_33 = engine_10->crypto_type;
  D.43900_34 = engine_10->ssec[D.43885_33].crypto_tag;
  D.43901_35 = (uint32_t) D.43900_34;
  D.43902_39 = &engine_10->ssec[D.43885_33].remote_raw_key;
  D.43896_41 = engine_10->ssec[D.43885_33].crypto_type;
  D.43898_42 = SUITES[D.43896_41].keylen;
  D.43899_43 = (switch_size_t) D.43898_42;
  switch_rtp_add_crypto_key (D.43895_32, 1, D.43901_35, D.43896_41, D.43902_39, D.43899_43);
  D.43881_44 = session_5(D)->channel;
  switch_channel_set_variable_var_check (D.43881_44, varname_1, "true", 1);
  D.43881_45 = session_5(D)->channel;
  D.43885_46 = engine_10->crypto_type;
  D.43903_47 = SUITES[D.43885_46].name;
  switch_channel_set_variable_var_check (D.43881_45, "rtp_secure_media_negotiated", D.43903_47, 1);

<bb 9>:
  return;

}



;; Function switch_core_media_set_rtp_session (switch_core_media_set_rtp_session)

switch_core_media_set_rtp_session (struct switch_core_session_t * session, switch_media_type_t type, struct switch_rtp_t * rtp_session)
{
  struct switch_rtp_engine_t * engine;
  unsigned int D.46813;
  struct switch_media_handle_t * D.46809;

<bb 2>:
  D.46809_2 = session_1(D)->media_handle;
  if (D.46809_2 == 0B)
    goto <bb 4>;
  else
    goto <bb 3>;

<bb 3>:
  engine_7 = &D.46809_2->engines[type_5(D)]{lb: 0 sz: 11416};
  # DEBUG engine => engine_7
  engine_7->rtp_session = rtp_session_8(D);
  engine_7->type = type_5(D);

<bb 4>:
  return;

}



;; Function switch_core_session_check_incoming_crypto (switch_core_session_check_incoming_crypto)

switch_core_session_check_incoming_crypto (struct switch_core_session_t * session, const char * varname, switch_media_type_t type, const char * crypto, int crypto_tag, switch_sdp_type_t sdp_type)
{
  const char D.47415;
  int D.47411;
  const char * b;
  const char * a;
  switch_rtp_crypto_key_type_t j;
  static const char __func__[42] = "switch_core_session_check_incoming_crypto";
  struct switch_media_handle_t * smh;
  struct switch_rtp_engine_t * engine;
  const char * vval;
  int ctype;
  int i;
  int got_crypto;
  char * D.46804;
  struct switch_channel_t * D.46803;
  struct switch_core_session_t * D.46802;
  const char * D.46801;
  const char * D.46797;
  char * D.46794;
  uint8_t D.46789;
  switch_size_t D.46788;
  int D.46787;
  unsigned char[64] * D.46786;
  uint32_t D.46785;
  int D.46784;
  struct switch_secure_settings_t * D.46783;
  uint32_t D.46778;
  uint8_t D.46775;
  const char * D.46774;
  const char * D.46770;
  switch_media_type_t D.46767;
  char * D.46766;
  int D.46764;
  _Bool D.46762;
  _Bool D.46761;
  _Bool D.46760;
  switch_size_t D.46757;
  int D.46756;
  unsigned char[64] * D.46755;
  switch_rtp_crypto_key_type_t D.46754;
  uint32_t D.46753;
  switch_rtp_crypto_key_type_t ctype.166;
  int D.38621;
  uint8_t D.46740;
  struct switch_rtp_t * D.46739;
  char * D.46737;
  switch_rtp_crypto_key_type_t D.46736;
  struct switch_channel_t * D.46733;
  switch_rtp_crypto_key_type_t D.46732;
  const char * D.46729;
  char * D.46728;
  switch_rtp_crypto_key_type_t D.46727;
  struct switch_media_handle_t * D.46724;
  switch_rtp_crypto_mode_t D.46721;

<bb 2>:
  # DEBUG got_crypto => 0
  # DEBUG i => 0
  # DEBUG ctype => 0
  # DEBUG vval => 0B
  smh_11 = session_10(D)->media_handle;
  # DEBUG smh => smh_11
  if (smh_11 == 0B)
    goto <bb 38>;
  else
    goto <bb 3>;

<bb 3>:
  D.46721_13 = smh_11->crypto_mode;
  if (D.46721_13 == 2)
    goto <bb 38>;
  else
    goto <bb 4>;

<bb 4>:
  engine_19 = &smh_11->engines[type_17(D)]{lb: 0 sz: 11416};
  # DEBUG engine => engine_19
  # DEBUG i => 0
  # DEBUG i => 0
  D.46727_99 = smh_11->crypto_suite_order[0];
  if (D.46727_99 != 9)
    goto <bb 5>;
  else
    goto <bb 8>;

<bb 5>:
  # i_74 = PHI <i_32(7), 0(4)>
  # D.46727_198 = PHI <D.46727_21(7), D.46727_99(4)>
  j_23 = SUITES[D.46727_198].type;
  # DEBUG j => j_23
  D.46728_24 = SUITES[j_23].name;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1179, session_10(D), 7, "looking for crypto suite [%s] in [%s]\n", D.46728_24, crypto_25(D));
  D.46729_27 = switch_stristr (D.46728_24, crypto_25(D));
  if (D.46729_27 != 0B)
    goto <bb 6>;
  else
    goto <bb 7>;

<bb 6>:
  # j_1 = PHI <j_23(5)>
  # D.46728_130 = PHI <D.46728_24(5)>
  D.46732_28 = SUITES[j_1].type;
  ctype_29 = (int) D.46732_28;
  # DEBUG ctype => ctype_29
  vval_30 = D.46728_130;
  # DEBUG vval => vval_30
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1184, session_10(D), 7, "Found suite %s\n", vval_30);
  D.46733_31 = session_10(D)->channel;
  switch_channel_set_variable_var_check (D.46733_31, "rtp_secure_media_negotiated", vval_30, 1);
  goto <bb 8>;

<bb 7>:
  i_32 = i_74 + 1;
  # DEBUG i => i_32
  # DEBUG i => i_32
  D.46727_21 = smh_11->crypto_suite_order[i_32];
  if (D.46727_21 != 9)
    goto <bb 5>;
  else
    goto <bb 8>;

<bb 8>:
  # ctype_3 = PHI <ctype_29(6), 0(7), 0(4)>
  # vval_4 = PHI <vval_30(6), 0B(7), 0B(4)>
  # DEBUG vval => vval_4
  # DEBUG ctype => ctype_3
  D.46736_33 = engine_19->crypto_type;
  D.46737_34 = engine_19->ssec[D.46736_33].remote_crypto_key;
  if (D.46737_34 != 0B)
    goto <bb 9>;
  else
    goto <bb 28>;

<bb 9>:
  D.46739_35 = engine_19->rtp_session;
  D.46740_36 = switch_rtp_ready (D.46739_35);
  if (D.46740_36 != 0)
    goto <bb 10>;
  else
    goto <bb 28>;

<bb 10>:
  if (crypto_25(D) != 0B)
    goto <bb 11>;
  else
    goto <bb 14>;

<bb 11>:
  D.46736_37 = engine_19->crypto_type;
  if (D.46736_37 != 9)
    goto <bb 12>;
  else
    goto <bb 14>;

<bb 12>:
  D.46737_39 = engine_19->ssec[D.46736_37].remote_crypto_key;
  D.38621_40 = __builtin_strcmp (crypto_25(D), D.46737_39);
  if (D.38621_40 == 0)
    goto <bb 13>;
  else
    goto <bb 14>;

<bb 13>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1193, session_10(D), 7, "Existing key is still valid.\n");
  # DEBUG got_crypto => 1
  goto <bb 38>;

<bb 14>:
  D.46736_42 = engine_19->crypto_type;
  D.46737_43 = engine_19->ssec[D.46736_42].remote_crypto_key;
  a_44 = switch_stristr ("AE", D.46737_43);
  # DEBUG a => a_44
  b_45 = switch_stristr ("AE", crypto_25(D));
  # DEBUG b => b_45
  if (sdp_type_46(D) == 0)
    goto <bb 15>;
  else
    goto <bb 18>;

<bb 15>:
  if (vval_4 == 0B)
    goto <bb 16>;
  else
    goto <bb 17>;

<bb 16>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1201, session_10(D), 7, "Unsupported Crypto [%s]\n", crypto_25(D));
  goto <bb 38>;

<bb 17>:
  D.46733_47 = session_10(D)->channel;
  switch_channel_set_variable_var_check (D.46733_47, varname_48(D), vval_4, 1);
  D.46724_49 = session_10(D)->media_handle;
  ctype.166_50 = (switch_rtp_crypto_key_type_t) ctype_3;
  switch_core_media_build_crypto.constprop.8 (D.46724_49, type_17(D), crypto_tag_51(D), ctype.166_50, 1);
  D.46739_52 = engine_19->rtp_session;
  # DEBUG __nptr => crypto_25(D)
  D.47411_185 = strtol (crypto_25(D), 0B, 10);
  D.46753_54 = (uint32_t) D.47411_185;
  D.46736_55 = engine_19->crypto_type;
  D.46754_56 = engine_19->ssec[D.46736_55].crypto_type;
  D.46755_58 = &engine_19->ssec[D.46736_55].local_raw_key;
  D.46756_59 = SUITES[ctype_3].keylen;
  D.46757_60 = (switch_size_t) D.46756_59;
  switch_rtp_add_crypto_key (D.46739_52, 0, D.46753_54, D.46754_56, D.46755_58, D.46757_60);

<bb 18>:
  D.46760_61 = a_44 != 0B;
  D.46761_62 = b_45 != 0B;
  D.46762_63 = D.46760_61 & D.46761_62;
  if (D.46762_63 != 0)
    goto <bb 19>;
  else
    goto <bb 27>;

<bb 19>:
  D.46764_64 = strncasecmp (a_44, b_45, 23);
  if (D.46764_64 == 0)
    goto <bb 20>;
  else
    goto <bb 27>;

<bb 20>:
  ctype.166_65 = (switch_rtp_crypto_key_type_t) ctype_3;
  engine_19->crypto_type = ctype.166_65;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1214, session_10(D), 7, "Change Remote key to [%s]\n", crypto_25(D));
  D.46736_66 = engine_19->crypto_type;
  D.46766_67 = switch_core_perform_session_strdup (session_10(D), crypto_25(D), "src/switch_core_media.c", &__func__, 1215);
  engine_19->ssec[D.46736_66].remote_crypto_key = D.46766_67;
  D.46767_68 = engine_19->type;
  if (D.46767_68 == 0)
    goto <bb 21>;
  else
    goto <bb 22>;

<bb 21>:
  D.46733_69 = session_10(D)->channel;
  switch_channel_set_variable_var_check (D.46733_69, "srtp_remote_audio_crypto_key", crypto_25(D), 1);
  D.46733_70 = session_10(D)->channel;
  switch_channel_set_variable_printf (D.46733_70, "srtp_remote_audio_crypto_tag", "%d", crypto_tag_51(D));
  D.46733_71 = session_10(D)->channel;
  D.46770_73 = switch_core_media_crypto_type2str (ctype.166_65);
  switch_channel_set_variable_printf (D.46733_71, "srtp_remote_audio_crypto_type", "%s", D.46770_73);
  goto <bb 24>;

<bb 22>:
  if (D.46767_68 == 1)
    goto <bb 23>;
  else
    goto <bb 24>;

<bb 23>:
  D.46733_75 = session_10(D)->channel;
  switch_channel_set_variable_var_check (D.46733_75, "srtp_remote_video_crypto_key", crypto_25(D), 1);
  D.46733_76 = session_10(D)->channel;
  switch_channel_set_variable_printf (D.46733_76, "srtp_remote_video_crypto_tag", "%d", crypto_tag_51(D));
  D.46733_77 = session_10(D)->channel;
  D.46774_79 = switch_core_media_crypto_type2str (ctype.166_65);
  switch_channel_set_variable_printf (D.46733_77, "srtp_remote_video_crypto_type", "%s", D.46774_79);

<bb 24>:
  D.46736_80 = engine_19->crypto_type;
  engine_19->ssec[D.46736_80].crypto_tag = crypto_tag_51(D);
  D.46739_81 = engine_19->rtp_session;
  D.46775_82 = switch_rtp_ready (D.46739_81);
  if (D.46775_82 != 0)
    goto <bb 25>;
  else
    goto <bb 38>;

<bb 25>:
  D.46733_83 = session_10(D)->channel;
  D.46778_84 = switch_channel_test_flag (D.46733_83, 92);
  if (D.46778_84 != 0)
    goto <bb 26>;
  else
    goto <bb 38>;

<bb 26>:
  D.46736_86 = engine_19->crypto_type;
  D.46783_88 = &engine_19->ssec[D.46736_86]{lb: 0 sz: 144};
  D.46737_90 = engine_19->ssec[D.46736_86].remote_crypto_key;
  switch_core_media_add_crypto (D.46783_88, D.46737_90, 1);
  D.46739_91 = engine_19->rtp_session;
  D.46736_92 = engine_19->crypto_type;
  D.46784_93 = engine_19->ssec[D.46736_92].crypto_tag;
  D.46785_94 = (uint32_t) D.46784_93;
  D.46786_98 = &engine_19->ssec[D.46736_92].remote_raw_key;
  D.46754_100 = engine_19->ssec[D.46736_92].crypto_type;
  D.46787_101 = SUITES[D.46754_100].keylen;
  D.46788_102 = (switch_size_t) D.46787_101;
  switch_rtp_add_crypto_key (D.46739_91, 1, D.46785_94, D.46754_100, D.46786_98, D.46788_102);
  goto <bb 38>;

<bb 27>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1238, session_10(D), 7, "Ignoring unacceptable key\n");
  goto <bb 38>;

<bb 28>:
  D.46739_104 = engine_19->rtp_session;
  D.46789_105 = switch_rtp_ready (D.46739_104);
  if (D.46789_105 == 0)
    goto <bb 29>;
  else
    goto <bb 38>;

<bb 29>:
  if (vval_4 == 0B)
    goto <bb 30>;
  else
    goto <bb 31>;

<bb 30>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1244, session_10(D), 7, "Unsupported Crypto [%s]\n", crypto_25(D));
  goto <bb 38>;

<bb 31>:
  ctype.166_106 = (switch_rtp_crypto_key_type_t) ctype_3;
  engine_19->crypto_type = ctype.166_106;
  D.46794_108 = switch_core_perform_session_strdup (session_10(D), crypto_25(D), "src/switch_core_media.c", &__func__, 1249);
  engine_19->ssec[ctype.166_106].remote_crypto_key = D.46794_108;
  D.46736_109 = engine_19->crypto_type;
  D.46737_110 = engine_19->ssec[D.46736_109].remote_crypto_key;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1250, session_10(D), 7, "Set Remote Key [%s]\n", D.46737_110);
  D.46767_111 = engine_19->type;
  if (D.46767_111 == 0)
    goto <bb 32>;
  else
    goto <bb 33>;

<bb 32>:
  D.46733_112 = session_10(D)->channel;
  switch_channel_set_variable_var_check (D.46733_112, "srtp_remote_audio_crypto_key", crypto_25(D), 1);
  D.46733_113 = session_10(D)->channel;
  D.46797_115 = switch_core_media_crypto_type2str (ctype.166_106);
  switch_channel_set_variable_printf (D.46733_113, "srtp_remote_audio_crypto_type", "%s", D.46797_115);
  goto <bb 35>;

<bb 33>:
  if (D.46767_111 == 1)
    goto <bb 34>;
  else
    goto <bb 35>;

<bb 34>:
  D.46733_117 = session_10(D)->channel;
  switch_channel_set_variable_var_check (D.46733_117, "srtp_remote_video_crypto_key", crypto_25(D), 1);
  D.46733_118 = session_10(D)->channel;
  D.46801_120 = switch_core_media_crypto_type2str (ctype.166_106);
  switch_channel_set_variable_printf (D.46733_118, "srtp_remote_video_crypto_type", "%s", D.46801_120);

<bb 35>:
  D.46736_121 = engine_19->crypto_type;
  engine_19->ssec[D.46736_121].crypto_tag = crypto_tag_51(D);
  # DEBUG got_crypto => 1
  D.46733_123 = session_10(D)->channel;
  switch_channel_set_variable_var_check (D.46733_123, varname_48(D), vval_4, 1);
  D.46802_124 = smh_11->session;
  D.46803_125 = D.46802_124->channel;
  switch_channel_set_flag_value (D.46803_125, 92, 1);
  D.46736_126 = engine_19->crypto_type;
  D.46804_127 = engine_19->ssec[D.46736_126].local_crypto_key;
  # DEBUG s => D.46804_127
  if (D.46804_127 == 0B)
    goto <bb 37>;
  else
    goto <bb 36>;

<bb 36>:
  D.47415_186 = MEM[(const char *)D.46804_127];
  if (D.47415_186 == 0)
    goto <bb 37>;
  else
    goto <bb 38>;

<bb 37>:
  D.46724_129 = session_10(D)->media_handle;
  switch_core_media_build_crypto.constprop.8 (D.46724_129, type_17(D), crypto_tag_51(D), ctype.166_106, 1);

<bb 38>:
  # got_crypto_5 = PHI <0(2), -1(3), 1(25), 0(16), 1(26), 1(24), 0(27), 1(13), 1(37), 1(36), 0(30), 0(28)>
  return got_crypto_5;

}



;; Function switch_media_handle_create (switch_media_handle_create)

switch_media_handle_create (struct switch_media_handle_t * * smhp, struct switch_core_session_t * session, struct switch_core_media_params_t * params)
{
  const char D.47420;
  static const char __func__[27] = "switch_media_handle_create";
  int i;
  switch_status_t status;
  struct switch_channel_t * D.46495;
  struct payload_map_t * D.46493;
  void * D.46492;
  struct payload_map_t * D.46490;
  void * D.46489;
  struct switch_memory_pool_t * D.46488;
  unsigned int D.46487;
  unsigned int D.46486;
  unsigned int D.46485;
  time_t D.46484;
  unsigned int D.46483;
  struct switch_rtp_engine_t * D.46482;
  unsigned int D.46481;
  unsigned int D.46480;
  time_t D.46479;
  unsigned int D.46478;
  struct switch_rtp_engine_t[2] * D.46477;
  struct switch_memory_pool_t * D.46476;
  struct switch_mutex_t * * D.46475;
  struct switch_memory_pool_t * D.46474;
  struct switch_mutex_t * * D.46473;
  switch_rtp_crypto_key_type_t i.136;
  unsigned int D.46471;
  smh_flag_t D.46470;
  struct switch_media_handle_t * D.46467;
  void * D.46466;
  char * D.46462;

<bb 2>:
  # DEBUG status => 1
  # DEBUG smh => 0B
  *smhp_7(D) = 0B;
  D.46462_9 = params_8(D)->sdp_username;
  # DEBUG s => D.46462_9
  if (D.46462_9 == 0B)
    goto <bb 4>;
  else
    goto <bb 3>;

<bb 3>:
  D.47420_119 = MEM[(const char *)D.46462_9];
  if (D.47420_119 == 0)
    goto <bb 4>;
  else
    goto <bb 5>;

<bb 4>:
Invalid sum of incoming frequencies 582, should be 152
  params_8(D)->sdp_username = "FreeSWITCH";

<bb 5>:
Invalid sum of incoming frequencies 582, should be 1012
  D.46466_12 = switch_core_perform_session_alloc (session_11(D), 23856, "src/switch_core_media.c", &__func__, 1426);
  session_11(D)->media_handle = D.46466_12;
  if (D.46466_12 != 0B)
    goto <bb 6>;
  else
    goto <bb 13>;

<bb 6>:
  MEM[(struct switch_media_handle_t *)D.46466_12].session = session_11(D);
  *smhp_7(D) = D.46466_12;
  D.46467_17 = session_11(D)->media_handle;
  D.46470_18 = D.46467_17->flags;
  D.46471_19 = D.46470_18 | 1;
  D.46467_17->flags = D.46471_19;
  D.46467_17->media_flags[0] = 1;
  D.46467_17->engines[0].read_frame.buflen = 16384;
  D.46467_17->engines[0].type = 0;
  D.46467_17->engines[0].crypto_type = 9;
  # DEBUG i => 0
  # DEBUG i => 0

<bb 7>:
  # i_30 = PHI <i_27(7), 0(6)>
  i.136_26 = (switch_rtp_crypto_key_type_t) i_30;
  D.46467_17->engines[0].ssec[i_30].crypto_type = i.136_26;
  i_27 = i_30 + 1;
  # DEBUG i => i_27
  # DEBUG i => i_27
  if (i_27 != 9)
    goto <bb 7>;
  else
    goto <bb 8>;

<bb 8>:
  D.46467_17->engines[1].read_frame.buflen = 16384;
  D.46467_17->engines[1].type = 1;
  D.46467_17->engines[1].crypto_type = 9;
  # DEBUG i => 0
  # DEBUG i => 0

<bb 9>:
  # i_66 = PHI <i_34(9), 0(8)>
  i.136_33 = (switch_rtp_crypto_key_type_t) i_66;
  D.46467_17->engines[1].ssec[i_66].crypto_type = i.136_33;
  i_34 = i_66 + 1;
  # DEBUG i => i_34
  # DEBUG i => i_34
  if (i_34 != 9)
    goto <bb 9>;
  else
    goto <bb 10>;

<bb 10>:
  D.46467_17->mparams = params_8(D);
  # DEBUG i => 0
  # DEBUG i => 0

<bb 11>:
  # i_29 = PHI <i_38(11), 0(10)>
  D.46467_17->crypto_suite_order[i_29] = 9;
  i_38 = i_29 + 1;
  # DEBUG i => i_38
  # DEBUG i => i_38
  if (i_38 != 10)
    goto <bb 11>;
  else
    goto <bb 12>;

<bb 12>:
  D.46473_40 = &D.46467_17->mutex;
  D.46474_41 = switch_core_session_get_pool (session_11(D));
  switch_mutex_init (D.46473_40, 1, D.46474_41);
  D.46467_42 = session_11(D)->media_handle;
  D.46475_43 = &D.46467_42->sdp_mutex;
  D.46476_44 = switch_core_session_get_pool (session_11(D));
  switch_mutex_init (D.46475_43, 1, D.46476_44);
  D.46467_46 = session_11(D)->media_handle;
  D.46477_47 = &D.46467_46->engines;
  D.46478_48 = (unsigned int) D.46477_47;
  D.46479_49 = time (0B);
  D.46480_50 = (unsigned int) D.46479_49;
  D.46481_51 = D.46478_48 + D.46480_50;
  D.46467_46->engines[0].ssrc = D.46481_51;
  D.46467_53 = session_11(D)->media_handle;
  D.46482_54 = &D.46467_53->engines[1];
  D.46483_55 = (unsigned int) D.46482_54;
  D.46484_56 = time (0B);
  D.46485_57 = (unsigned int) D.46484_56;
  D.46486_58 = D.46485_57 >> 1;
  D.46487_59 = D.46483_55 + D.46486_58;
  D.46467_53->engines[1].ssrc = D.46487_59;
  D.46467_60 = session_11(D)->media_handle;
  D.46488_61 = session_11(D)->pool;
  D.46489_62 = switch_core_perform_alloc (D.46488_61, 84, "src/switch_core_media.c", &__func__, 1464);
  D.46467_60->engines[0].payload_map = D.46489_62;
  D.46467_64 = session_11(D)->media_handle;
  D.46490_65 = D.46467_64->engines[0].payload_map;
  D.46467_64->engines[0].cur_payload_map = D.46490_65;
  D.46490_65->current = 1;
  D.46467_68 = session_11(D)->media_handle;
  D.46488_69 = session_11(D)->pool;
  D.46492_70 = switch_core_perform_alloc (D.46488_69, 84, "src/switch_core_media.c", &__func__, 1467);
  D.46467_68->engines[1].payload_map = D.46492_70;
  D.46467_72 = session_11(D)->media_handle;
  D.46493_73 = D.46467_72->engines[1].payload_map;
  D.46467_72->engines[1].cur_payload_map = D.46493_73;
  D.46493_73->current = 1;
  D.46495_76 = session_11(D)->channel;
  switch_channel_set_flag_value (D.46495_76, 111, 1);
  # DEBUG status => 0

<bb 13>:
  # status_1 = PHI <1(5), 0(12)>
  # DEBUG status => status_1
  return status_1;

}



;; Function switch_media_handle_set_media_flag (switch_media_handle_set_media_flag)

switch_media_handle_set_media_flag (struct switch_media_handle_t * smh, switch_core_media_flag_t flag)
{
<bb 2>:
  if (smh_1(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("smh", "src/switch_core_media.c", 1482, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_1(D)->media_flags[flag_2(D)] = 1;
  return;

}



;; Function switch_media_handle_set_media_flags (switch_media_handle_set_media_flags)

switch_media_handle_set_media_flags (struct switch_media_handle_t * smh, switch_core_media_flag_t * flags)
{
  static const char __PRETTY_FUNCTION__[36] = "switch_media_handle_set_media_flags";
  int i;
  switch_core_media_flag_t D.46457;
  switch_core_media_flag_t * D.46456;
  unsigned int D.46455;
  unsigned int i.135;

<bb 2>:
  if (smh_2(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 8>;

<bb 3>:
  __assert_fail ("smh", "src/switch_core_media.c", 1491, &__PRETTY_FUNCTION__);

<bb 4>:
  # i_12 = PHI <i_13(6), i_3(8)>
  i.135_4 = (unsigned int) i_12;
  D.46455_5 = i.135_4 * 4;
  D.46456_7 = flags_6(D) + D.46455_5;
  D.46457_8 = *D.46456_7;
  if (D.46457_8 != 0)
    goto <bb 5>;
  else
    goto <bb 6>;

<bb 5>:
  smh_2(D)->media_flags[i_12] = D.46457_8;

<bb 6>:
  i_13 = i_12 + 1;
  # DEBUG i => i_13
  # DEBUG i => i_13
  if (i_13 != 17)
    goto <bb 4>;
  else
    goto <bb 7>;

<bb 7>:
  return;

<bb 8>:
  # i_3 = PHI <0(2)>
  # DEBUG i => i_3
  goto <bb 4>;

}



;; Function switch_media_handle_clear_media_flag (switch_media_handle_clear_media_flag)

switch_media_handle_clear_media_flag (struct switch_media_handle_t * smh, switch_core_media_flag_t flag)
{
  static const char __PRETTY_FUNCTION__[37] = "switch_media_handle_clear_media_flag";

<bb 2>:
  if (smh_1(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("smh", "src/switch_core_media.c", 1503, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_1(D)->media_flags[flag_2(D)] = 0;
  return;

}



;; Function switch_media_handle_test_media_flag (switch_media_handle_test_media_flag)

switch_media_handle_test_media_flag (struct switch_media_handle_t * smh, switch_core_media_flag_t flag)
{
  switch_core_media_flag_t D.46448;
  int32_t D.46447;

<bb 2>:
  if (smh_1(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("smh", "src/switch_core_media.c", 1510, &__PRETTY_FUNCTION__);

<bb 4>:
  D.46448_3 = smh_1(D)->media_flags[flag_2(D)];
  D.46447_4 = (int32_t) D.46448_3;
  return D.46447_4;

}



;; Function generate_m.isra.4 (generate_m.isra.4)

generate_m.isra.4 (struct switch_core_session_t * session, char * buf, size_t buflen, switch_port_t port, const char * family, const char * ip, int cur_ptime, const char * append_audio, const char * sr, int use_cng, int cng_type, struct switch_event_t * map, int secure)
{
  size_t D.47710;
  char * D.47709;
  size_t D.47707;
  int D.47706;
  int iftmp.40;
  struct switch_channel_t * D.47704;
  switch_call_direction_t D.47703;
  switch_rtp_crypto_key_type_t D.47702;
  const char * D.47701;
  const int D.47700;
  char * const D.47699;
  int D.47698;
  int D.47697;
  const switch_codec_type_t D.47696;
  switch_payload_t D.47695;
  signed char D.47694;
  int D.47693;
  int D.47692;
  size_t D.47691;
  char * D.47690;
  size_t D.47688;
  struct switch_core_media_params_t * D.47687;
  int D.47686;
  switch_core_media_dtmf_t D.47685;
  switch_payload_t D.47684;
  size_t D.47683;
  char * D.47682;
  size_t D.47680;
  int D.47679;
  int32_t D.47678;
  _Bool D.47677;
  _Bool D.47676;
  _Bool D.47675;
  size_t D.47674;
  char * D.47673;
  size_t D.47671;
  size_t D.47670;
  char * D.47669;
  size_t D.47667;
  const int D.47666;
  const switch_codec_type_t D.47665;
  char * const D.47664;
  int D.47663;
  int D.47662;
  const uint32_t D.47661;
  const int D.47660;
  char * D.47659;
  uint32_t D.47658;
  const uint8_t D.47657;
  int D.47656;
  size_t D.47655;
  char * D.47654;
  size_t D.47652;
  size_t D.47651;
  char * D.47650;
  size_t D.47648;
  size_t D.47647;
  char * D.47646;
  size_t D.47644;
  int32_t D.47643;
  uint32_t D.47642;
  uint32_t D.47641;
  size_t D.47640;
  char * D.47639;
  size_t D.47637;
  size_t D.47636;
  char * D.47635;
  size_t D.47633;
  char * D.47632;
  size_t D.47631;
  char * D.47630;
  size_t D.47628;
  char[192] * D.47627;
  char * D.47626;
  int8_t D.47625;
  size_t D.47624;
  char * D.47623;
  size_t D.47621;
  size_t D.47620;
  char * D.47619;
  size_t D.47617;
  size_t D.47616;
  char * D.47615;
  size_t D.47613;
  int D.47612;
  uint8_t D.47611;
  size_t D.47610;
  char * D.47609;
  size_t D.47607;
  uint32_t D.47606;
  char * D.47605;
  size_t D.47604;
  char * D.47603;
  size_t D.47601;
  char * D.47600;
  size_t D.47599;
  char * D.47598;
  size_t D.47596;
  size_t D.47595;
  char * D.47594;
  size_t D.47592;
  size_t D.47591;
  char * D.47590;
  size_t D.47588;
  char * D.47587;
  size_t D.47586;
  char * D.47585;
  size_t D.47583;
  char * D.47582;
  size_t D.47581;
  char * D.47580;
  size_t D.47578;
  char * D.47577;
  char * D.47576;
  switch_port_t D.47575;
  int D.47574;
  char * D.47573;
  int D.47572;
  switch_port_t D.47571;
  size_t D.47570;
  char * D.47569;
  size_t D.47567;
  int D.47566;
  switch_call_direction_t D.47565;
  size_t D.47564;
  char * D.47563;
  size_t D.47561;
  int D.47560;
  int D.47559;
  char * D.47558;
  int D.47557;
  switch_port_t D.47556;
  size_t D.47555;
  char * D.47554;
  size_t D.47552;
  int D.47551;
  uint32_t D.47550;
  switch_rtp_crypto_key_type_t D.47549;
  char * D.47548;
  size_t D.47547;
  char * D.47546;
  size_t D.47544;
  int32_t D.47543;
  size_t D.47542;
  char * D.47541;
  size_t D.47539;
  size_t D.47538;
  char * D.47537;
  size_t D.47535;
  char * iftmp.41;
  const char D.47533;
  size_t D.47532;
  unsigned int D.47531;
  const char D.47530;
  size_t D.47529;
  char * D.47528;
  size_t D.47526;
  size_t D.47525;
  char * D.47524;
  size_t D.47522;
  size_t D.47521;
  char * D.47520;
  size_t D.47518;
  int i;
  int rate;
  int already_did[128];
  const char * local_sdp_audio_zrtp_hash;
  struct switch_media_handle_t * smh;
  static const char __PRETTY_FUNCTION__[11] = "generate_m";
  static const char __func__[11] = "generate_m";
  const struct switch_codec_implementation_t * imp;
  const struct switch_codec_implementation_t * imp;
  char * fmtp;
  char key[128];
  int channels;
  char tmp1[11];
  char tmp2[11];
  int i;
  switch_rtp_crypto_key_type_t j;
  const char D.47516;
  const char D.47514;
  const char D.47512;
  const char D.47510;
  const char D.47508;
  const char D.47506;
  const char D.47504;
  static const char __func__[11] = "generate_m";
  static const char __PRETTY_FUNCTION__[11] = "generate_m";

<bb 2>:
  # DEBUG i => 0
  already_did = {};
  # DEBUG ptime => 0
  # DEBUG noptime => 0
  if (session_1(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 5614, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_2 = session_1(D)->media_handle;
  # DEBUG smh => smh_2
  if (smh_2 == 0B)
    goto <bb 106>;
  else
    goto <bb 5>;

<bb 5>:
  # DEBUG D#4 => &smh_2->engines
  # DEBUG a_engine => D#4
  D.47710_4 = strlen (buf_3(D));
  D.47709_5 = buf_3(D) + D.47710_4;
  D.47707_8 = buflen_7(D) - D.47710_4;
  D.47706_10 = (int) port_9(D);
  if (secure_11(D) != 0)
    goto <bb 6>;
  else
    goto <bb 7>;

<bb 6>:
  D.47704_12 = session_1(D)->channel;
  D.47703_13 = switch_channel_direction (D.47704_12);
  if (D.47703_13 == 1)
    goto <bb 9>;
  else
    goto <bb 7>;

<bb 7>:
  D.47702_14 = MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].crypto_type;
  if (D.47702_14 != 9)
    goto <bb 8>;
  else
    goto <bb 9>;

<bb 8>:

<bb 9>:
  # iftmp.40_15 = PHI <1(6), 0(7), 1(8)>
  D.47701_16 = get_media_profile_name (session_1(D), iftmp.40_15);
  switch_snprintf (D.47709_5, D.47707_8, "m=audio %d %s", D.47706_10, D.47701_16);
  # DEBUG i => 0
  # DEBUG ptime => 0
  # DEBUG i => 0
  D.47687_446 = smh_2->mparams;
  D.47686_301 = D.47687_446->num_codecs;
  if (D.47686_301 > 0)
    goto <bb 10>;
  else
    goto <bb 23>;

<bb 10>:
  # i_440 = PHI <i_42(22), 0(9)>
  # cur_ptime_438 = PHI <cur_ptime_341(22), 0(9)>
  imp_18 = smh_2->codecs[i_440];
  # DEBUG imp => imp_18
  D.47700_19 = imp_18->microseconds_per_packet;
  cur_ptime_20 = D.47700_19 / 1000;
  # DEBUG this_ptime => cur_ptime_20
  D.47699_21 = imp_18->iananame;
  D.47698_22 = strcasecmp (D.47699_21, "ilbc");
  if (D.47698_22 == 0)
    goto <bb 12>;
  else
    goto <bb 11>;

<bb 11>:
  D.47697_24 = strcasecmp (D.47699_21, "isac");
  if (D.47697_24 == 0)
    goto <bb 12>;
  else
    goto <bb 13>;

<bb 12>:
  # DEBUG this_ptime => 20

<bb 13>:
  # cur_ptime_28 = PHI <cur_ptime_20(11), 20(12)>
  # DEBUG this_ptime => cur_ptime_28
  D.47696_25 = imp_18->codec_type;
  if (D.47696_25 != 0)
    goto <bb 22>;
  else
    goto <bb 14>;

<bb 14>:
  if (cur_ptime_26(D) == 0)
    goto <bb 15>;
  else
    goto <bb 17>;

<bb 15>:
  if (cur_ptime_438 == 0)
    goto <bb 18>;
  else
    goto <bb 16>;

<bb 16>:
  goto <bb 18>;

<bb 17>:
  if (cur_ptime_26(D) != cur_ptime_28)
    goto <bb 22>;
  else
    goto <bb 18>;

<bb 18>:
  # cur_ptime_340 = PHI <cur_ptime_438(16), cur_ptime_28(15), cur_ptime_438(17)>
  # DEBUG ptime => cur_ptime_340
  D.47695_29 = smh_2->ianacodes[i_440];
  D.47694_30 = (signed char) D.47695_29;
  if (D.47694_30 >= 0)
    goto <bb 19>;
  else
    goto <bb 21>;

<bb 19>:
  D.47693_32 = (int) D.47695_29;
  D.47692_33 = already_did[D.47693_32];
  if (D.47692_33 != 0)
    goto <bb 22>;
  else
    goto <bb 20>;

<bb 20>:
  already_did[D.47693_32] = 1;

<bb 21>:
  D.47691_36 = strlen (buf_3(D));
  D.47690_37 = buf_3(D) + D.47691_36;
  D.47688_39 = buflen_7(D) - D.47691_36;
  D.47693_41 = (int) D.47695_29;
  switch_snprintf (D.47690_37, D.47688_39, " %d", D.47693_41);

<bb 22>:
  # cur_ptime_341 = PHI <cur_ptime_438(13), cur_ptime_438(17), cur_ptime_340(19), cur_ptime_340(21)>
  # DEBUG ptime => cur_ptime_341
  i_42 = i_440 + 1;
  # DEBUG i => i_42
  # DEBUG ptime => cur_ptime_341
  # DEBUG i => i_42
  D.47687_43 = smh_2->mparams;
  D.47686_44 = D.47687_43->num_codecs;
  if (i_42 < D.47686_44)
    goto <bb 10>;
  else
    goto <bb 23>;

<bb 23>:
  # cur_ptime_338 = PHI <cur_ptime_341(22), 0(9)>
  # D.47687_331 = PHI <D.47687_43(22), D.47687_446(9)>
  D.47687_45 = D.47687_331;
  D.47685_46 = D.47687_45->dtmf_type;
  if (D.47685_46 == 0)
    goto <bb 24>;
  else
    goto <bb 26>;

<bb 24>:
  D.47687_47 = D.47687_331;
  D.47684_48 = D.47687_47->te;
  if (D.47684_48 > 95)
    goto <bb 25>;
  else
    goto <bb 26>;

<bb 25>:
  D.47683_49 = strlen (buf_3(D));
  D.47682_50 = buf_3(D) + D.47683_49;
  D.47680_52 = buflen_7(D) - D.47683_49;
  D.47679_55 = (int) D.47684_48;
  switch_snprintf (D.47682_50, D.47680_52, " %d", D.47679_55);

<bb 26>:
  D.47678_56 = switch_media_handle_test_media_flag (smh_2, 9);
  if (D.47678_56 == 0)
    goto <bb 27>;
  else
    goto <bb 29>;

<bb 27>:
  D.47677_58 = cng_type_57(D) != 0;
  D.47676_60 = use_cng_59(D) != 0;
  D.47675_61 = D.47677_58 & D.47676_60;
  if (D.47675_61 != 0)
    goto <bb 28>;
  else
    goto <bb 29>;

<bb 28>:
  D.47674_62 = strlen (buf_3(D));
  D.47673_63 = buf_3(D) + D.47674_62;
  D.47671_65 = buflen_7(D) - D.47674_62;
  switch_snprintf (D.47673_63, D.47671_65, " %d", cng_type_57(D));

<bb 29>:
  D.47670_66 = strlen (buf_3(D));
  D.47669_67 = buf_3(D) + D.47670_66;
  D.47667_69 = buflen_7(D) - D.47670_66;
  switch_snprintf (D.47669_67, D.47667_69, "\n");
  memset (&already_did, 0, 512);
  # DEBUG i => 0
  # DEBUG ptime => cur_ptime_338
  # DEBUG i => 0
  D.47687_263 = smh_2->mparams;
  D.47686_230 = D.47687_263->num_codecs;
  if (D.47686_230 > 0)
    goto <bb 30>;
  else
    goto <bb 55>;

<bb 30>:
  # i_227 = PHI <i_127(54), 0(29)>
  # cur_ptime_155 = PHI <cur_ptime_345(54), cur_ptime_338(29)>
  imp_71 = smh_2->codecs[i_227];
  # DEBUG imp => imp_71
  fmtp_72 = imp_71->fmtp;
  # DEBUG fmtp => fmtp_72
  D.47666_73 = imp_71->microseconds_per_packet;
  cur_ptime_74 = D.47666_73 / 1000;
  # DEBUG this_ptime => cur_ptime_74
  D.47665_75 = imp_71->codec_type;
  if (D.47665_75 != 0)
    goto <bb 54>;
  else
    goto <bb 31>;

<bb 31>:
  D.47664_76 = imp_71->iananame;
  D.47663_77 = strcasecmp (D.47664_76, "ilbc");
  if (D.47663_77 == 0)
    goto <bb 33>;
  else
    goto <bb 32>;

<bb 32>:
  D.47662_79 = strcasecmp (D.47664_76, "isac");
  if (D.47662_79 == 0)
    goto <bb 33>;
  else
    goto <bb 34>;

<bb 33>:
  # DEBUG this_ptime => 20

<bb 34>:
  # cur_ptime_81 = PHI <cur_ptime_74(32), 20(33)>
  # DEBUG this_ptime => cur_ptime_81
  if (cur_ptime_26(D) == 0)
    goto <bb 35>;
  else
    goto <bb 37>;

<bb 35>:
  if (cur_ptime_155 == 0)
    goto <bb 38>;
  else
    goto <bb 36>;

<bb 36>:
  goto <bb 38>;

<bb 37>:
  if (cur_ptime_26(D) != cur_ptime_81)
    goto <bb 54>;
  else
    goto <bb 38>;

<bb 38>:
  # cur_ptime_342 = PHI <cur_ptime_155(36), cur_ptime_81(35), cur_ptime_155(37)>
  # DEBUG ptime => cur_ptime_342
  D.47695_82 = smh_2->ianacodes[i_227];
  D.47694_83 = (signed char) D.47695_82;
  if (D.47694_83 >= 0)
    goto <bb 39>;
  else
    goto <bb 41>;

<bb 39>:
  D.47693_85 = (int) D.47695_82;
  D.47692_86 = already_did[D.47693_85];
  if (D.47692_86 != 0)
    goto <bb 54>;
  else
    goto <bb 40>;

<bb 40>:
  already_did[D.47693_85] = 1;

<bb 41>:
  D.47661_89 = imp_71->samples_per_second;
  rate_90 = (int) D.47661_89;
  # DEBUG rate => rate_90
  if (map_91(D) != 0B)
    goto <bb 42>;
  else
    goto <bb 45>;

<bb 42>:
  key = "";
  # DEBUG check => 0B
  D.47664_92 = imp_71->iananame;
  D.47660_93 = imp_71->bits_per_second;
  switch_snprintf (&key, 128, "%s:%u", D.47664_92, D.47660_93);
  fmtp_94 = switch_event_get_header_idx (map_91(D), &key, -1);
  # DEBUG check => fmtp_94
  if (fmtp_94 != 0B)
    goto <bb 45>;
  else
    goto <bb 43>;

<bb 43>:
  D.47664_95 = imp_71->iananame;
  fmtp_96 = switch_event_get_header_idx (map_91(D), D.47664_95, -1);
  # DEBUG check => fmtp_96
  if (fmtp_96 != 0B)
    goto <bb 45>;
  else
    goto <bb 44>;

<bb 44>:

<bb 45>:
  # fmtp_344 = PHI <fmtp_72(41), fmtp_72(44), fmtp_96(43), fmtp_94(42)>
  # DEBUG fmtp => fmtp_344
  D.47659_97 = smh_2->fmtps[i_227];
  if (D.47659_97 != 0B)
    goto <bb 46>;
  else
    goto <bb 47>;

<bb 46>:
  # DEBUG fmtp => D.47659_97

<bb 47>:
  # fmtp_120 = PHI <fmtp_344(45), D.47659_97(46)>
  # DEBUG fmtp => fmtp_120
  D.47695_99 = smh_2->ianacodes[i_227];
  if (D.47695_99 > 95)
    goto <bb 49>;
  else
    goto <bb 48>;

<bb 48>:
  D.47704_100 = session_1(D)->channel;
  D.47658_101 = switch_channel_test_flag (D.47704_100, 110);
  if (D.47658_101 != 0)
    goto <bb 49>;
  else
    goto <bb 52>;

<bb 49>:
  D.47664_102 = imp_71->iananame;
  D.47657_103 = imp_71->number_of_channels;
  D.47656_104 = (int) D.47657_103;
  channels_105 = get_channels (D.47664_102, D.47656_104);
  # DEBUG channels => channels_105
  if (channels_105 > 1)
    goto <bb 50>;
  else
    goto <bb 51>;

<bb 50>:
  D.47655_106 = strlen (buf_3(D));
  D.47654_107 = buf_3(D) + D.47655_106;
  D.47652_109 = buflen_7(D) - D.47655_106;
  D.47695_110 = smh_2->ianacodes[i_227];
  D.47693_111 = (int) D.47695_110;
  D.47664_112 = imp_71->iananame;
  switch_snprintf (D.47654_107, D.47652_109, "a=rtpmap:%d %s/%d/%d\n", D.47693_111, D.47664_112, rate_90, channels_105);
  goto <bb 52>;

<bb 51>:
  D.47651_113 = strlen (buf_3(D));
  D.47650_114 = buf_3(D) + D.47651_113;
  D.47648_116 = buflen_7(D) - D.47651_113;
  D.47695_117 = smh_2->ianacodes[i_227];
  D.47693_118 = (int) D.47695_117;
  D.47664_119 = imp_71->iananame;
  switch_snprintf (D.47650_114, D.47648_116, "a=rtpmap:%d %s/%d\n", D.47693_118, D.47664_119, rate_90);

<bb 52>:
  if (fmtp_120 != 0B)
    goto <bb 53>;
  else
    goto <bb 54>;

<bb 53>:
  D.47647_121 = strlen (buf_3(D));
  D.47646_122 = buf_3(D) + D.47647_121;
  D.47644_124 = buflen_7(D) - D.47647_121;
  D.47695_125 = smh_2->ianacodes[i_227];
  D.47693_126 = (int) D.47695_125;
  switch_snprintf (D.47646_122, D.47644_124, "a=fmtp:%d %s\n", D.47693_126, fmtp_120);

<bb 54>:
  # cur_ptime_345 = PHI <cur_ptime_155(30), cur_ptime_155(37), cur_ptime_342(39), cur_ptime_342(52), cur_ptime_342(53)>
  # DEBUG ptime => cur_ptime_345
  i_127 = i_227 + 1;
  # DEBUG i => i_127
  # DEBUG ptime => cur_ptime_345
  # DEBUG i => i_127
  D.47687_128 = smh_2->mparams;
  D.47686_129 = D.47687_128->num_codecs;
  if (i_127 < D.47686_129)
    goto <bb 30>;
  else
    goto <bb 55>;

<bb 55>:
  # cur_ptime_326 = PHI <cur_ptime_345(54), cur_ptime_338(29)>
  # D.47687_314 = PHI <D.47687_128(54), D.47687_263(29)>
  D.47687_130 = D.47687_314;
  D.47685_131 = D.47687_130->dtmf_type;
  if (D.47685_131 == 0)
    goto <bb 58>;
  else
    goto <bb 56>;

<bb 56>:
  D.47643_132 = switch_media_handle_test_media_flag (smh_2, 8);
  if (D.47643_132 != 0)
    goto <bb 58>;
  else
    goto <bb 57>;

<bb 57>:
  D.47704_133 = session_1(D)->channel;
  D.47642_134 = switch_channel_test_flag (D.47704_133, 93);
  if (D.47642_134 != 0)
    goto <bb 58>;
  else
    goto <bb 62>;

<bb 58>:
  D.47687_135 = smh_2->mparams;
  D.47684_136 = D.47687_135->te;
  if (D.47684_136 > 95)
    goto <bb 59>;
  else
    goto <bb 62>;

<bb 59>:
  D.47704_137 = session_1(D)->channel;
  D.47641_138 = switch_channel_test_flag (D.47704_137, 106);
  if (D.47641_138 != 0)
    goto <bb 60>;
  else
    goto <bb 61>;

<bb 60>:
  D.47640_139 = strlen (buf_3(D));
  D.47639_140 = buf_3(D) + D.47640_139;
  D.47637_142 = buflen_7(D) - D.47640_139;
  D.47687_143 = smh_2->mparams;
  D.47684_144 = D.47687_143->te;
  D.47679_145 = (int) D.47684_144;
  switch_snprintf (D.47639_140, D.47637_142, "a=rtpmap:%d telephone-event/8000\n", D.47679_145);
  goto <bb 62>;

<bb 61>:
  D.47636_146 = strlen (buf_3(D));
  D.47635_147 = buf_3(D) + D.47636_146;
  D.47633_149 = buflen_7(D) - D.47636_146;
  D.47687_150 = smh_2->mparams;
  D.47684_151 = D.47687_150->te;
  D.47679_152 = (int) D.47684_151;
  switch_snprintf (D.47635_147, D.47633_149, "a=rtpmap:%d telephone-event/8000\na=fmtp:%d 0-16\n", D.47679_152, D.47679_152);

<bb 62>:
  D.47632_153 = MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].local_dtls_fingerprint.type;
  # DEBUG s => D.47632_153
  if (D.47632_153 == 0B)
    goto <bb 65>;
  else
    goto <bb 63>;

<bb 63>:
  D.47516_154 = MEM[(const char *)D.47632_153];
  if (D.47516_154 == 0)
    goto <bb 65>;
  else
    goto <bb 107>;

<bb 64>:
  D.47631_156 = strlen (buf_3(D));
  D.47630_157 = buf_3(D) + D.47631_156;
  D.47628_159 = buflen_7(D) - D.47631_156;
  D.47627_161 = &MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].local_dtls_fingerprint.str;
  switch_snprintf (D.47630_157, D.47628_159, "a=fingerprint:%s %s\n", D.47632_153, D.47627_161);

<bb 65>:
  D.47687_162 = smh_2->mparams;
  D.47626_163 = D.47687_162->rtcp_audio_interval_msec;
  if (D.47626_163 != 0B)
    goto <bb 66>;
  else
    goto <bb 69>;

<bb 66>:
  D.47625_164 = MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].rtcp_mux;
  if (D.47625_164 > 0)
    goto <bb 67>;
  else
    goto <bb 68>;

<bb 67>:
  D.47624_165 = strlen (buf_3(D));
  D.47623_166 = buf_3(D) + D.47624_165;
  D.47621_168 = buflen_7(D) - D.47624_165;
  switch_snprintf (D.47623_166, D.47621_168, "a=rtcp-mux\n");
  D.47620_169 = strlen (buf_3(D));
  D.47619_170 = buf_3(D) + D.47620_169;
  D.47617_172 = buflen_7(D) - D.47620_169;
  switch_snprintf (D.47619_170, D.47617_172, "a=rtcp:%d IN %s %s\n", D.47706_10, family_174(D), ip_175(D));
  goto <bb 69>;

<bb 68>:
  D.47616_176 = strlen (buf_3(D));
  D.47615_177 = buf_3(D) + D.47616_176;
  D.47613_179 = buflen_7(D) - D.47616_176;
  D.47612_181 = D.47706_10 + 1;
  switch_snprintf (D.47615_177, D.47613_179, "a=rtcp:%d IN %s %s\n", D.47612_181, family_174(D), ip_175(D));

<bb 69>:
  D.47611_182 = MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].ice_out.cands[0][0].ready;
  if (D.47611_182 != 0)
    goto <bb 70>;
  else
    goto <bb 82>;

<bb 70>:
  tmp1 = "";
  tmp2 = "";
  # DEBUG c1 => 659136
  # DEBUG c2 => 659134
  tmp1[10] = 0;
  tmp2[10] = 0;
  switch_stun_random_string (&tmp1, 10, "0123456789");
  switch_stun_random_string (&tmp2, 10, "0123456789");
  gen_ice (session_1(D), 0, 0B, 0);
  # DEBUG D#5 => &MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].ice_out
  # DEBUG ice_out => D#5
  D.47610_183 = strlen (buf_3(D));
  D.47609_184 = buf_3(D) + D.47610_183;
  D.47607_186 = buflen_7(D) - D.47610_183;
  D.47606_187 = MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].ssrc;
  D.47605_188 = smh_2->cname;
  switch_snprintf (D.47609_184, D.47607_186, "a=ssrc:%u cname:%s\n", D.47606_187, D.47605_188);
  D.47604_189 = strlen (buf_3(D));
  D.47603_190 = buf_3(D) + D.47604_189;
  D.47601_192 = buflen_7(D) - D.47604_189;
  D.47606_193 = MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].ssrc;
  D.47600_194 = smh_2->msid;
  switch_snprintf (D.47603_190, D.47601_192, "a=ssrc:%u msid:%s a0\n", D.47606_193, D.47600_194);
  D.47599_195 = strlen (buf_3(D));
  D.47598_196 = buf_3(D) + D.47599_195;
  D.47596_198 = buflen_7(D) - D.47599_195;
  D.47606_199 = MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].ssrc;
  D.47600_200 = smh_2->msid;
  switch_snprintf (D.47598_196, D.47596_198, "a=ssrc:%u mslabel:%s\n", D.47606_199, D.47600_200);
  D.47595_201 = strlen (buf_3(D));
  D.47594_202 = buf_3(D) + D.47595_201;
  D.47592_204 = buflen_7(D) - D.47595_201;
  D.47606_205 = MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].ssrc;
  D.47600_206 = smh_2->msid;
  switch_snprintf (D.47594_202, D.47592_204, "a=ssrc:%u label:%sa0\n", D.47606_205, D.47600_206);
  D.47591_207 = strlen (buf_3(D));
  D.47590_208 = buf_3(D) + D.47591_207;
  D.47588_210 = buflen_7(D) - D.47591_207;
  D.47587_211 = MEM[(struct ice_t *)smh_2 + 6480B].ufrag;
  switch_snprintf (D.47590_208, D.47588_210, "a=ice-ufrag:%s\n", D.47587_211);
  D.47586_212 = strlen (buf_3(D));
  D.47585_213 = buf_3(D) + D.47586_212;
  D.47583_215 = buflen_7(D) - D.47586_212;
  D.47582_216 = MEM[(struct ice_t *)smh_2 + 6480B].pwd;
  switch_snprintf (D.47585_213, D.47583_215, "a=ice-pwd:%s\n", D.47582_216);
  D.47581_217 = strlen (buf_3(D));
  D.47580_218 = buf_3(D) + D.47581_217;
  D.47578_220 = buflen_7(D) - D.47581_217;
  D.47577_221 = MEM[(struct ice_t *)smh_2 + 6480B].cands[0][0].transport;
  D.47576_222 = MEM[(struct ice_t *)smh_2 + 6480B].cands[0][0].con_addr;
  D.47575_223 = MEM[(struct ice_t *)smh_2 + 6480B].cands[0][0].con_port;
  D.47574_224 = (int) D.47575_223;
  switch_snprintf (D.47580_218, D.47578_220, "a=candidate:%s 1 %s %u %s %d typ host generation 0\n", &tmp1, D.47577_221, 659136, D.47576_222, D.47574_224);
  D.47573_225 = MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].local_sdp_ip;
  # DEBUG s => D.47573_225
  if (D.47573_225 == 0B)
    goto <bb 75>;
  else
    goto <bb 71>;

<bb 71>:
  D.47514_226 = MEM[(const char *)D.47573_225];
  if (D.47514_226 == 0)
    goto <bb 75>;
  else
    goto <bb 108>;

<bb 72>:
  D.47512_229 = MEM[(const char *)D.47576_228];
  if (D.47512_229 == 0)
    goto <bb 75>;
  else
    goto <bb 109>;

<bb 73>:
  D.47571_234 = MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].local_sdp_port;
  D.47575_235 = MEM[(struct ice_t *)smh_2 + 6480B].cands[0][0].con_port;
  if (D.47571_234 != D.47575_235)
    goto <bb 74>;
  else
    goto <bb 75>;

<bb 74>:
  D.47570_236 = strlen (buf_3(D));
  D.47569_237 = buf_3(D) + D.47570_236;
  D.47567_239 = buflen_7(D) - D.47570_236;
  D.47577_240 = MEM[(struct ice_t *)smh_2 + 6480B].cands[0][0].transport;
  D.47574_243 = (int) D.47575_235;
  D.47566_246 = (int) D.47571_234;
  switch_snprintf (D.47569_237, D.47567_239, "a=candidate:%s 1 %s %u %s %d typ srflx raddr %s rport %d generation 0\n", &tmp2, D.47577_240, 659134, D.47576_228, D.47574_243, D.47573_225, D.47566_246);

<bb 75>:
  D.47625_247 = MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].rtcp_mux;
  if (D.47625_247 <= 0)
    goto <bb 77>;
  else
    goto <bb 76>;

<bb 76>:
  D.47704_248 = session_1(D)->channel;
  D.47565_249 = switch_channel_direction (D.47704_248);
  if (D.47565_249 == 1)
    goto <bb 77>;
  else
    goto <bb 82>;

<bb 77>:
  D.47564_250 = strlen (buf_3(D));
  D.47563_251 = buf_3(D) + D.47564_250;
  D.47561_253 = buflen_7(D) - D.47564_250;
  D.47577_254 = MEM[(struct ice_t *)smh_2 + 6480B].cands[0][0].transport;
  D.47576_255 = MEM[(struct ice_t *)smh_2 + 6480B].cands[0][0].con_addr;
  D.47575_256 = MEM[(struct ice_t *)smh_2 + 6480B].cands[0][0].con_port;
  D.47574_257 = (int) D.47575_256;
  D.47625_258 = MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].rtcp_mux;
  D.47560_259 = D.47625_258 <= 0;
  D.47559_260 = D.47574_257 + D.47560_259;
  switch_snprintf (D.47563_251, D.47561_253, "a=candidate:%s 2 %s %u %s %d typ host generation 0\n", &tmp1, D.47577_254, 659136, D.47576_255, D.47559_260);
  D.47573_261 = MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].local_sdp_ip;
  # DEBUG s => D.47573_261
  if (D.47573_261 == 0B)
    goto <bb 82>;
  else
    goto <bb 78>;

<bb 78>:
  D.47510_262 = MEM[(const char *)D.47573_261];
  if (D.47510_262 == 0)
    goto <bb 82>;
  else
    goto <bb 110>;

<bb 79>:
  D.47508_265 = MEM[(const char *)D.47558_264];
  if (D.47508_265 == 0)
    goto <bb 82>;
  else
    goto <bb 111>;

<bb 80>:
  D.47571_270 = MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].local_sdp_port;
  D.47556_271 = MEM[(struct ice_t *)smh_2 + 6480B].cands[0][1].con_port;
  if (D.47571_270 != D.47556_271)
    goto <bb 81>;
  else
    goto <bb 82>;

<bb 81>:
  D.47555_272 = strlen (buf_3(D));
  D.47554_273 = buf_3(D) + D.47555_272;
  D.47552_275 = buflen_7(D) - D.47555_272;
  D.47577_276 = MEM[(struct ice_t *)smh_2 + 6480B].cands[0][0].transport;
  D.47576_277 = MEM[(struct ice_t *)smh_2 + 6480B].cands[0][0].con_addr;
  D.47575_278 = MEM[(struct ice_t *)smh_2 + 6480B].cands[0][0].con_port;
  D.47574_279 = (int) D.47575_278;
  D.47625_280 = MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].rtcp_mux;
  D.47560_281 = D.47625_280 <= 0;
  D.47559_282 = D.47574_279 + D.47560_281;
  D.47566_285 = (int) D.47571_270;
  D.47551_288 = D.47560_281 + D.47566_285;
  switch_snprintf (D.47554_273, D.47552_275, "a=candidate:%s 2 %s %u %s %d typ srflx raddr %s rport %d generation 0\n", &tmp2, D.47577_276, 659134, D.47576_277, D.47559_282, D.47573_261, D.47551_288);

<bb 82>:
  if (secure_11(D) != 0)
    goto <bb 83>;
  else
    goto <bb 90>;

<bb 83>:
  D.47704_289 = session_1(D)->channel;
  D.47550_290 = switch_channel_test_flag (D.47704_289, 109);
  if (D.47550_290 == 0)
    goto <bb 84>;
  else
    goto <bb 90>;

<bb 84>:
  # i_444 = PHI <0(83)>
  # DEBUG i => i_444
  D.47549_449 = smh_2->crypto_suite_order[i_444];
  if (D.47549_449 != 9)
    goto <bb 85>;
  else
    goto <bb 90>;

<bb 85>:
  # i_451 = PHI <i_304(89), i_444(84)>
  # D.47549_450 = PHI <D.47549_305(89), D.47549_449(84)>
  j_293 = SUITES[D.47549_450].type;
  # DEBUG j => j_293
  D.47702_294 = MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].crypto_type;
  if (j_293 == D.47702_294)
    goto <bb 87>;
  else
    goto <bb 86>;

<bb 86>:
  if (D.47702_294 == 9)
    goto <bb 87>;
  else
    goto <bb 89>;

<bb 87>:
  D.47548_296 = MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].ssec[j_293].local_crypto_key;
  # DEBUG s => D.47548_296
  if (D.47548_296 == 0B)
    goto <bb 89>;
  else
    goto <bb 88>;

<bb 88>:
  D.47506_297 = MEM[(const char *)D.47548_296];
  if (D.47506_297 == 0)
    goto <bb 89>;
  else
    goto <bb 112>;

<bb 89>:
  i_304 = i_451 + 1;
  # DEBUG i => i_304
  # DEBUG i => i_304
  D.47549_305 = smh_2->crypto_suite_order[i_304];
  if (D.47549_305 != 9)
    goto <bb 85>;
  else
    goto <bb 90>;

<bb 90>:
  if (cng_type_57(D) == 0)
    goto <bb 91>;
  else
    goto <bb 93>;

<bb 91>:
  D.47543_306 = switch_media_handle_test_media_flag (smh_2, 9);
  if (D.47543_306 != 0)
    goto <bb 92>;
  else
    goto <bb 93>;

<bb 92>:
  D.47542_307 = strlen (buf_3(D));
  D.47541_308 = buf_3(D) + D.47542_307;
  D.47539_310 = buflen_7(D) - D.47542_307;
  switch_snprintf (D.47541_308, D.47539_310, "a=silenceSupp:off - - - -\n");

<bb 93>:
  if (append_audio_311(D) != 0B)
    goto <bb 94>;
  else
    goto <bb 99>;

<bb 94>:
  D.47538_312 = strlen (buf_3(D));
  D.47537_313 = buf_3(D) + D.47538_312;
  D.47535_315 = buflen_7(D) - D.47538_312;
  D.47533_316 = *append_audio_311(D);
  if (D.47533_316 != 0)
    goto <bb 95>;
  else
    goto <bb 96>;

<bb 95>:
  D.47532_317 = strlen (append_audio_311(D));
  D.47531_318 = D.47532_317 + -1;
  append_audio_319 = append_audio_311(D) + D.47531_318;

<bb 96>:
  # append_audio_320 = PHI <append_audio_311(D)(94), append_audio_319(95)>
  D.47530_321 = *append_audio_320;
  if (D.47530_321 == 10)
    goto <bb 98>;
  else
    goto <bb 97>;

<bb 97>:

<bb 98>:
  # iftmp.41_322 = PHI <""(96), "\n"(97)>
  switch_snprintf (D.47537_313, D.47535_315, "%s%s", append_audio_311(D), iftmp.41_322);

<bb 99>:
  if (cur_ptime_26(D) == 0)
    goto <bb 100>;
  else
    goto <bb 113>;

<bb 100>:
  # cur_ptime_323 = PHI <cur_ptime_326(99)>
  # DEBUG cur_ptime => cur_ptime_326
  # DEBUG cur_ptime => cur_ptime_323
  if (cur_ptime_323 != 0)
    goto <bb 101>;
  else
    goto <bb 102>;

<bb 101>:
  # cur_ptime_445 = PHI <cur_ptime_323(100), cur_ptime_447(113)>
  D.47529_324 = strlen (buf_3(D));
  D.47528_325 = buf_3(D) + D.47529_324;
  D.47526_327 = buflen_7(D) - D.47529_324;
  switch_snprintf (D.47528_325, D.47526_327, "a=ptime:%d\n", cur_ptime_445);

<bb 102>:
  local_sdp_audio_zrtp_hash_328 = switch_core_media_get_zrtp_hash (session_1(D), 0, 1);
  # DEBUG local_sdp_audio_zrtp_hash => local_sdp_audio_zrtp_hash_328
  if (local_sdp_audio_zrtp_hash_328 != 0B)
    goto <bb 103>;
  else
    goto <bb 104>;

<bb 103>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5882, session_1(D), 7, "Adding audio a=zrtp-hash:%s\n", local_sdp_audio_zrtp_hash_328);
  D.47525_329 = strlen (buf_3(D));
  D.47524_330 = buf_3(D) + D.47525_329;
  D.47522_332 = buflen_7(D) - D.47525_329;
  switch_snprintf (D.47524_330, D.47522_332, "a=zrtp-hash:%s\n", local_sdp_audio_zrtp_hash_328);

<bb 104>:
  # DEBUG s => sr_333(D)
  if (sr_333(D) == 0B)
    goto <bb 106>;
  else
    goto <bb 105>;

<bb 105>:
  D.47504_334 = *sr_333(D);
  if (D.47504_334 == 0)
    goto <bb 106>;
  else
    goto <bb 114>;

<bb 106>:
  return;

<bb 107>:
  if (secure_11(D) != 0)
    goto <bb 64>;
  else
    goto <bb 65>;

<bb 108>:
  D.47576_228 = MEM[(struct ice_t *)smh_2 + 6480B].cands[0][0].con_addr;
  # DEBUG s => D.47576_228
  if (D.47576_228 == 0B)
    goto <bb 75>;
  else
    goto <bb 72>;

<bb 109>:
  D.47572_233 = __builtin_strcmp (D.47573_225, D.47576_228);
  if (D.47572_233 != 0)
    goto <bb 73>;
  else
    goto <bb 75>;

<bb 110>:
  D.47558_264 = MEM[(struct ice_t *)smh_2 + 6480B].cands[0][1].con_addr;
  # DEBUG s => D.47558_264
  if (D.47558_264 == 0B)
    goto <bb 82>;
  else
    goto <bb 79>;

<bb 111>:
  D.47557_269 = __builtin_strcmp (D.47573_261, D.47558_264);
  if (D.47557_269 != 0)
    goto <bb 80>;
  else
    goto <bb 82>;

<bb 112>:
  D.47547_299 = strlen (buf_3(D));
  D.47546_300 = buf_3(D) + D.47547_299;
  D.47544_302 = buflen_7(D) - D.47547_299;
  switch_snprintf (D.47546_300, D.47544_302, "a=crypto:%s\n", D.47548_296);
  goto <bb 89>;

<bb 113>:
  # cur_ptime_447 = PHI <cur_ptime_26(D)(99)>
  # DEBUG cur_ptime => cur_ptime_447
  goto <bb 101>;

<bb 114>:
  D.47521_336 = strlen (buf_3(D));
  D.47520_337 = buf_3(D) + D.47521_336;
  D.47518_339 = buflen_7(D) - D.47521_336;
  switch_snprintf (D.47520_337, D.47518_339, "a=%s\n", sr_333(D));
  goto <bb 106>;

}



;; Function switch_core_session_media_handle_ready (switch_core_session_media_handle_ready)

switch_core_session_media_handle_ready (struct switch_core_session_t * session)
{
  switch_status_t D.46443;
  int D.46439;
  int D.46438;
  smh_flag_t D.46437;
  struct switch_media_handle_t * D.46434;

<bb 2>:
  D.46434_3 = session_2(D)->media_handle;
  if (D.46434_3 != 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  D.46437_5 = D.46434_3->flags;
  D.46438_6 = (int) D.46437_5;
  D.46439_7 = D.46438_6 & 1;
  if (D.46439_7 != 0)
    goto <bb 5>;
  else
    goto <bb 4>;

<bb 4>:

<bb 5>:
  # D.46443_1 = PHI <0(3), 1(4)>
  return D.46443_1;

}



;; Function switch_core_session_check_outgoing_crypto (switch_core_session_check_outgoing_crypto)

switch_core_session_check_outgoing_crypto (struct switch_core_session_t * session)
{
  int i;
  struct switch_media_handle_t * smh;
  struct switch_channel_t * channel;
  switch_rtp_crypto_key_type_t D.46671;
  struct switch_media_handle_t * D.46670;
  switch_rtp_crypto_mode_t D.46667;
  switch_status_t D.46662;

<bb 2>:
  channel_3 = switch_core_session_get_channel (session_2(D));
  # DEBUG channel => channel_3
  D.46662_4 = switch_core_session_media_handle_ready (session_2(D));
  if (D.46662_4 != 0)
    goto <bb 7>;
  else
    goto <bb 3>;

<bb 3>:
  smh_5 = session_2(D)->media_handle;
  # DEBUG smh => smh_5
  if (smh_5 == 0B)
    goto <bb 7>;
  else
    goto <bb 4>;

<bb 4>:
  D.46667_6 = smh_5->crypto_mode;
  if (D.46667_6 > 1)
    goto <bb 7>;
  else
    goto <bb 5>;

<bb 5>:
  switch_channel_set_flag_value (channel_3, 92, 1);
  # DEBUG i => 0
  # DEBUG i => 0
  D.46671_10 = smh_5->crypto_suite_order[0];
  if (D.46671_10 != 9)
    goto <bb 6>;
  else
    goto <bb 7>;

<bb 6>:
  # i_23 = PHI <i_13(6), 0(5)>
  # D.46671_24 = PHI <D.46671_8(6), D.46671_10(5)>
  D.46670_9 = session_2(D)->media_handle;
  switch_core_media_build_crypto.constprop.8 (D.46670_9, 0, 0, D.46671_24, 0);
  D.46670_11 = session_2(D)->media_handle;
  D.46671_12 = smh_5->crypto_suite_order[i_23];
  switch_core_media_build_crypto.constprop.8 (D.46670_11, 1, 0, D.46671_12, 0);
  i_13 = i_23 + 1;
  # DEBUG i => i_13
  # DEBUG i => i_13
  D.46671_8 = smh_5->crypto_suite_order[i_13];
  if (D.46671_8 != 9)
    goto <bb 6>;
  else
    goto <bb 7>;

<bb 7>:
  return;

}



;; Function switch_core_session_get_media_handle (switch_core_session_get_media_handle)

switch_core_session_get_media_handle (struct switch_core_session_t * session)
{
  struct switch_media_handle_t * D.46432;
  switch_status_t D.46429;

<bb 2>:
  D.46429_3 = switch_core_session_media_handle_ready (session_2(D));
  if (D.46429_3 == 0)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  D.46432_4 = session_2(D)->media_handle;

<bb 4>:
  # D.46432_1 = PHI <D.46432_4(3), 0B(2)>
  return D.46432_1;

}



;; Function switch_core_session_clear_media_handle (switch_core_session_clear_media_handle)

switch_core_session_clear_media_handle (struct switch_core_session_t * session)
{
  switch_status_t D.49233;
  _Bool D.49232;
  struct switch_media_handle_t * D.46424;

<bb 2>:
  D.46424_3 = session_2(D)->media_handle;
  D.49232_7 = D.46424_3 == 0B;
  D.49233_8 = (switch_status_t) D.49232_7;
  return D.49233_8;

}



;; Function switch_core_media_get_mparams (switch_core_media_get_mparams)

switch_core_media_get_mparams (struct switch_media_handle_t * smh)
{
  static const char __PRETTY_FUNCTION__[30] = "switch_core_media_get_mparams";
  struct switch_core_media_params_t * D.46422;

<bb 2>:
  if (smh_1(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("smh", "src/switch_core_media.c", 1545, &__PRETTY_FUNCTION__);

<bb 4>:
  D.46422_2 = smh_1(D)->mparams;
  return D.46422_2;

}



;; Function switch_core_media_prepare_codecs (switch_core_media_prepare_codecs)

switch_core_media_prepare_codecs (struct switch_core_session_t * session, switch_bool_t force)
{
  char * tmp_codec_string;
  static const char __func__[33] = "switch_core_media_prepare_codecs";
  static const char __PRETTY_FUNCTION__[33] = "switch_core_media_prepare_codecs";
  struct switch_media_handle_t * smh;
  const char * ocodec;
  const char * codec_string;
  const char * abs;
  int D.46418;
  int D.46416;
  const struct switch_codec_implementation_t *[50] * D.46414;
  int D.46413;
  unsigned int D.46412;
  char *[50] * D.46411;
  switch_core_media_flag_t D.46406;
  const char D.46397;
  struct switch_core_session_t * D.46388;
  int D.46385;
  struct switch_core_media_params_t * D.46384;
  uint32_t D.46381;
  uint32_t D.46379;
  struct switch_channel_t * D.46378;

<bb 2>:
  # DEBUG codec_string => 0B
  # DEBUG ocodec => 0B
  if (session_5(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 1555, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_6 = session_5(D)->media_handle;
  # DEBUG smh => smh_6
  if (smh_6 == 0B)
    goto <bb 26>;
  else
    goto <bb 5>;

<bb 5>:
  if (force_7(D) == 0)
    goto <bb 6>;
  else
    goto <bb 8>;

<bb 6>:
  D.46378_8 = session_5(D)->channel;
  D.46379_9 = switch_channel_test_flag (D.46378_8, 15);
  if (D.46379_9 != 0)
    goto <bb 26>;
  else
    goto <bb 7>;

<bb 7>:
  D.46378_10 = session_5(D)->channel;
  D.46381_11 = switch_channel_test_flag (D.46378_10, 29);
  if (D.46381_11 != 0)
    goto <bb 26>;
  else
    goto <bb 9>;

<bb 8>:
  D.46384_12 = smh_6->mparams;
  D.46384_12->num_codecs = 0;

<bb 9>:
  D.46384_13 = smh_6->mparams;
  D.46385_14 = D.46384_13->num_codecs;
  if (D.46385_14 != 0)
    goto <bb 26>;
  else
    goto <bb 10>;

<bb 10>:
  smh_6->payload_space = 0;
  D.46388_15 = smh_6->session;
  if (D.46388_15 == 0B)
    goto <bb 11>;
  else
    goto <bb 12>;

<bb 11>:
  __assert_fail ("smh->session != ((void *)0)", "src/switch_core_media.c", 1575, &__PRETTY_FUNCTION__);

<bb 12>:
  D.46378_16 = session_5(D)->channel;
  abs_17 = switch_channel_get_variable_dup (D.46378_16, "absolute_codec_string", 1, -1);
  # DEBUG abs => abs_17
  if (abs_17 != 0B)
    goto <bb 23> (ready);
  else
    goto <bb 13>;

<bb 13>:
  D.46378_19 = session_5(D)->channel;
  codec_string_20 = switch_channel_get_variable_dup (D.46378_19, "codec_string", 1, -1);
  # DEBUG codec_string => codec_string_20
  if (codec_string_20 == 0B)
    goto <bb 14>;
  else
    goto <bb 15>;

<bb 14>:
  D.46388_21 = smh_6->session;
  codec_string_22 = switch_core_media_get_codec_string (D.46388_21);
  # DEBUG codec_string => codec_string_22

<bb 15>:
  # codec_string_1 = PHI <codec_string_20(13), codec_string_22(14)>
  # DEBUG codec_string => codec_string_1
  if (codec_string_1 != 0B)
    goto <bb 16>;
  else
    goto <bb 18>;

<bb 16>:
  D.46397_23 = *codec_string_1;
  if (D.46397_23 == 61)
    goto <bb 17>;
  else
    goto <bb 18>;

<bb 17>:
  codec_string_24 = codec_string_1 + 1;
  # DEBUG codec_string => codec_string_24
  goto <bb 23> (ready);

<bb 18>:
  D.46378_25 = session_5(D)->channel;
  ocodec_26 = switch_channel_get_variable_dup (D.46378_25, "originator_codec", 1, -1);
  # DEBUG ocodec => ocodec_26
  if (ocodec_26 != 0B)
    goto <bb 19>;
  else
    goto <bb 23> (ready);

<bb 19>:
  if (codec_string_1 == 0B)
    goto <bb 23> (ready);
  else
    goto <bb 20>;

<bb 20>:
  D.46406_27 = smh_6->media_flags[1];
  if (D.46406_27 != 0)
    goto <bb 23> (ready);
  else
    goto <bb 21>;

<bb 21>:
  D.46388_28 = smh_6->session;
  codec_string_29 = switch_core_session_sprintf (D.46388_28, "%s,%s", ocodec_26, codec_string_1);
  # DEBUG codec_string => codec_string_29
  if (codec_string_29 == 0B)
    goto <bb 23> (ready);
  else
    goto <bb 22>;

<bb 22>:

  # codec_string_2 = PHI <abs_17(12), codec_string_24(17), codec_string_1(18), ocodec_26(20), codec_string_29(22), ocodec_26(21), ocodec_26(19)>
ready:
  # DEBUG codec_string => codec_string_2
  if (codec_string_2 != 0B)
    goto <bb 24>;
  else
    goto <bb 25>;

<bb 24>:
  D.46388_32 = smh_6->session;
  tmp_codec_string_33 = switch_core_perform_session_strdup (D.46388_32, codec_string_2, "src/switch_core_media.c", &__func__, 1603);
  # DEBUG tmp_codec_string => tmp_codec_string_33
  D.46378_34 = session_5(D)->channel;
  switch_channel_set_variable_var_check (D.46378_34, "rtp_use_codec_string", codec_string_2, 1);
  D.46411_35 = &smh_6->codec_order;
  D.46412_36 = switch_separate_string (tmp_codec_string_33, 44, D.46411_35, 50);
  D.46413_37 = (int) D.46412_36;
  smh_6->codec_order_last = D.46413_37;
  D.46384_38 = smh_6->mparams;
  D.46414_39 = &smh_6->codecs;
  D.46416_42 = switch_loadable_module_get_codecs_sorted (D.46414_39, 50, D.46411_35, D.46413_37);
  D.46384_38->num_codecs = D.46416_42;
  goto <bb 26>;

<bb 25>:
  D.46384_43 = smh_6->mparams;
  D.46414_44 = &smh_6->codecs;
  D.46418_45 = switch_loadable_module_get_codecs (D.46414_44, 50);
  D.46384_43->num_codecs = D.46418_45;

<bb 26>:
  return;

}



;; Function switch_core_media_write_frame (switch_core_media_write_frame)

switch_core_media_write_frame (struct switch_core_session_t * session, struct switch_frame_t * frame, switch_io_flag_t flags, int stream_id, switch_media_type_t type)
{
  switch_status_t D.49249;
  _Bool D.49248;
  uint32_t D.47734;
  uint32_t D.47733;
  struct switch_mutex_t * D.47732;
  struct switch_codec_interface_t * D.47731;
  uint32_t D.47725;
  uint32_t D.47724;
  struct switch_mutex_t * D.47723;
  struct switch_codec_interface_t * D.47722;
  static const char __PRETTY_FUNCTION__[30] = "switch_core_media_write_frame";
  struct switch_media_handle_t * smh;
  struct switch_rtp_engine_t * engine;
  int frames;
  int samples;
  int bytes;
  switch_status_t status;
  int D.46119;
  uint32_t D.46118;
  uint32_t samples.128;
  uint32_t D.46116;
  uint32_t D.46115;
  uint32_t frames.127;
  uint32_t D.46113;
  int D.46111;
  uint32_t D.46110;
  uint32_t D.46107;
  unsigned int D.46104;
  unsigned int D.46103;
  uint8_t D.46093;
  struct switch_rtp_t * D.46092;
  const struct switch_codec_implementation_t * D.46090;
  int D.46086;
  struct switch_channel_t * D.46085;
  switch_core_media_flag_t D.46080;

<bb 2>:
  # DEBUG status => 0
  # DEBUG bytes => 0
  # DEBUG samples => 0
  # DEBUG frames => 0
  if (session_9(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 1996, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_10 = session_9(D)->media_handle;
  # DEBUG smh => smh_10
  if (smh_10 == 0B)
    goto <bb 23>;
  else
    goto <bb 5>;

<bb 5>:
  D.46080_12 = smh_10->media_flags[0];
  if (D.46080_12 == 0)
    goto <bb 23>;
  else
    goto <bb 6>;

<bb 6>:
  engine_17 = &smh_10->engines[type_15(D)]{lb: 0 sz: 11416};
  # DEBUG engine => engine_17
  goto <bb 9>;

<bb 7>:
  D.46085_50 = session_9(D)->channel;
  D.46086_51 = switch_channel_test_ready (D.46085_50, 1, 0);
  if (D.46086_51 != 0)
    goto <bb 8>;
  else
    goto <bb 23>;

<bb 8>:
  switch_sleep (10000);

<bb 9>:
  D.46090_18 = engine_17->read_codec.implementation;
  if (D.46090_18 == 0B)
    goto <bb 7>;
  else
    goto <bb 10>;

<bb 10>:
  D.46092_19 = engine_17->rtp_session;
  D.46093_20 = switch_rtp_ready (D.46092_19);
  if (D.46093_20 == 0)
    goto <bb 7>;
  else
    goto <bb 11>;

<bb 11>:
  D.46090_21 = engine_17->read_codec.implementation;
  if (D.46090_21 == 0B)
    goto <bb 23>;
  else
    goto <bb 12>;

<bb 12>:
  # DEBUG D#67 => &engine_17->read_codec
  # DEBUG codec => D#67
  D.47725_61 = MEM[(struct switch_codec_t *)engine_17 + 1524B].flags;
  D.47724_62 = D.47725_61 & 256;
  if (D.47724_62 != 0)
    goto <bb 13>;
  else
    goto <bb 23>;

<bb 13>:
  D.47723_63 = MEM[(struct switch_codec_t *)engine_17 + 1524B].mutex;
  if (D.47723_63 != 0B)
    goto <bb 14>;
  else
    goto <bb 23>;

<bb 14>:
  D.47722_64 = MEM[(struct switch_codec_t *)engine_17 + 1524B].codec_interface;
  if (D.47722_64 != 0B)
    goto <bb 15>;
  else
    goto <bb 23>;

<bb 15>:
  # DEBUG codec => D#67
  D.47734_68 = MEM[(struct switch_codec_t *)engine_17 + 1524B].flags;
  D.47733_69 = D.47734_68 & 256;
  if (D.47733_69 != 0)
    goto <bb 16>;
  else
    goto <bb 23>;

<bb 16>:
  D.47732_70 = MEM[(struct switch_codec_t *)engine_17 + 1524B].mutex;
  if (D.47732_70 != 0B)
    goto <bb 17>;
  else
    goto <bb 23>;

<bb 17>:
  D.47731_71 = MEM[(struct switch_codec_t *)engine_17 + 1524B].codec_interface;
  if (D.47731_71 != 0B)
    goto <bb 18>;
  else
    goto <bb 23>;

<bb 18>:
  D.46103_28 = BIT_FIELD_REF <*frame_27(D), 32, 480>;
  D.46104_29 = D.46103_28 & 33;
  if (D.46104_29 == 0)
    goto <bb 19>;
  else
    goto <bb 22>;

<bb 19>:
  D.46107_30 = engine_17->read_impl.encoded_bytes_per_packet;
  if (D.46107_30 != 0)
    goto <bb 20>;
  else
    goto <bb 21>;

<bb 20>:
  bytes_32 = (int) D.46107_30;
  # DEBUG bytes => bytes_32
  D.46110_33 = frame_27(D)->datalen;
  D.46111_34 = (int) D.46110_33;
  frames_35 = D.46111_34 / bytes_32;
  # DEBUG frames => frames_35

<bb 21>:
  # frames_3 = PHI <frames_35(20), 1(19)>
  # DEBUG frames => frames_3
  D.46113_37 = engine_17->read_impl.samples_per_packet;
  frames.127_38 = (uint32_t) frames_3;
  D.46115_39 = D.46113_37 * frames.127_38;
  samples_40 = (int) D.46115_39;
  # DEBUG samples => samples_40

<bb 22>:
  # samples_2 = PHI <0(18), samples_40(21)>
  # DEBUG samples => samples_2
  D.46116_41 = engine_17->timestamp_send;
  samples.128_42 = (uint32_t) samples_2;
  D.46118_43 = D.46116_41 + samples.128_42;
  engine_17->timestamp_send = D.46118_43;
  D.46092_44 = engine_17->rtp_session;
  D.46119_45 = switch_rtp_write_frame (D.46092_44, frame_27(D));
  D.49248_25 = D.46119_45 < 0;
  D.49249_83 = (switch_status_t) D.49248_25;

<bb 23>:
  # status_4 = PHI <1(4), 1(5), 9(7), 9(14), 1(17), 1(16), 9(11), D.49249_83(22), 9(12), 9(13), 1(15)>
  return status_4;

}



;; Function switch_core_media_copy_t38_options (switch_core_media_copy_t38_options)

switch_core_media_copy_t38_options (struct switch_t38_options_t * t38_options, struct switch_core_session_t * session)
{
  static const char __func__[35] = "switch_core_media_copy_t38_options";
  static const char __PRETTY_FUNCTION__[35] = "switch_core_media_copy_t38_options";
  struct switch_t38_options_t * local_t38_options;
  struct switch_channel_t * channel;
  uint16_t D.46074;
  char * D.46073;
  const char * D.46072;
  char * D.46071;
  const char * D.46070;
  char * D.46069;
  const char * D.46068;
  uint32_t D.46067;
  uint32_t D.46066;
  char * D.46065;
  const char * D.46064;
  switch_bool_t D.46063;
  switch_bool_t D.46062;
  switch_bool_t D.46061;
  uint32_t D.46060;

<bb 2>:
  channel_3 = switch_core_session_get_channel (session_2(D));
  # DEBUG channel => channel_3
  local_t38_options_4 = switch_channel_get_private (channel_3, "t38_options");
  # DEBUG local_t38_options => local_t38_options_4
  if (t38_options_5(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("t38_options", "src/switch_core_media.c", 2052, &__PRETTY_FUNCTION__);

<bb 4>:
  if (local_t38_options_4 == 0B)
    goto <bb 5>;
  else
    goto <bb 6>;

<bb 5>:
  local_t38_options_6 = switch_core_perform_session_alloc (session_2(D), 60, "src/switch_core_media.c", &__func__, 2055);
  # DEBUG local_t38_options => local_t38_options_6

<bb 6>:
  # local_t38_options_1 = PHI <local_t38_options_4(4), local_t38_options_6(5)>
  # DEBUG local_t38_options => local_t38_options_1
  D.46060_7 = t38_options_5(D)->T38MaxBitRate;
  local_t38_options_1->T38MaxBitRate = D.46060_7;
  D.46061_8 = t38_options_5(D)->T38FaxFillBitRemoval;
  local_t38_options_1->T38FaxFillBitRemoval = D.46061_8;
  D.46062_9 = t38_options_5(D)->T38FaxTranscodingMMR;
  local_t38_options_1->T38FaxTranscodingMMR = D.46062_9;
  D.46063_10 = t38_options_5(D)->T38FaxTranscodingJBIG;
  local_t38_options_1->T38FaxTranscodingJBIG = D.46063_10;
  D.46064_11 = t38_options_5(D)->T38FaxRateManagement;
  D.46065_12 = switch_core_perform_session_strdup (session_2(D), D.46064_11, "src/switch_core_media.c", &__func__, 2062);
  local_t38_options_1->T38FaxRateManagement = D.46065_12;
  D.46066_13 = t38_options_5(D)->T38FaxMaxBuffer;
  local_t38_options_1->T38FaxMaxBuffer = D.46066_13;
  D.46067_14 = t38_options_5(D)->T38FaxMaxDatagram;
  local_t38_options_1->T38FaxMaxDatagram = D.46067_14;
  D.46068_15 = t38_options_5(D)->T38FaxUdpEC;
  D.46069_16 = switch_core_perform_session_strdup (session_2(D), D.46068_15, "src/switch_core_media.c", &__func__, 2065);
  local_t38_options_1->T38FaxUdpEC = D.46069_16;
  D.46070_17 = t38_options_5(D)->T38VendorInfo;
  D.46071_18 = switch_core_perform_session_strdup (session_2(D), D.46070_17, "src/switch_core_media.c", &__func__, 2066);
  local_t38_options_1->T38VendorInfo = D.46071_18;
  D.46072_19 = t38_options_5(D)->remote_ip;
  D.46073_20 = switch_core_perform_session_strdup (session_2(D), D.46072_19, "src/switch_core_media.c", &__func__, 2067);
  local_t38_options_1->remote_ip = D.46073_20;
  D.46074_21 = t38_options_5(D)->remote_port;
  local_t38_options_1->remote_port = D.46074_21;
  switch_channel_set_private (channel_3, "t38_options", local_t38_options_1);
  return;

}



;; Function switch_core_media_process_t38_passthru (switch_core_media_process_t38_passthru)

switch_core_media_process_t38_passthru (struct switch_core_session_t * session, struct switch_core_session_t * other_session, struct switch_t38_options_t * t38_options)
{
  const char * err;
  static const char __func__[39] = "switch_core_media_process_t38_passthru";
  static const char __PRETTY_FUNCTION__[39] = "switch_core_media_process_t38_passthru";
  struct switch_media_handle_t * smh;
  char tmp[32];
  switch_port_t remote_port;
  char * remote_host;
  const char * err.171;
  switch_status_t D.47129;
  int D.47128;
  int D.47127;
  char * D.47126;
  char * D.47125;
  struct switch_channel_t * D.47124;
  switch_port_t D.47122;
  char * D.47120;
  int D.38429;
  _Bool D.47118;
  _Bool D.47117;
  _Bool D.47116;
  uint16_t D.47113;
  char * D.47112;
  const char * D.47111;
  struct payload_map_t * D.47110;
  struct switch_rtp_t * D.47109;
  switch_status_t D.47108;

<bb 2>:
  tmp = "";
  if (session_2(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 473, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_3 = session_2(D)->media_handle;
  # DEBUG smh => smh_3
  if (smh_3 == 0B)
    goto <bb 12>;
  else
    goto <bb 5>;

<bb 5>:
  # DEBUG D#6 => &smh_3->engines
  # DEBUG a_engine => D#6
  D.47109_6 = MEM[(struct switch_rtp_engine_t *)smh_3 + 80B].rtp_session;
  remote_host_7 = switch_rtp_get_remote_host (D.47109_6);
  # DEBUG remote_host => remote_host_7
  D.47109_8 = MEM[(struct switch_rtp_engine_t *)smh_3 + 80B].rtp_session;
  remote_port_9 = switch_rtp_get_remote_port (D.47109_8);
  # DEBUG remote_port => remote_port_9
  D.47110_10 = MEM[(struct switch_rtp_engine_t *)smh_3 + 80B].cur_payload_map;
  D.47111_12 = t38_options_11(D)->remote_ip;
  D.47112_13 = switch_core_perform_session_strdup (session_2(D), D.47111_12, "src/switch_core_media.c", &__func__, 484);
  D.47110_10->remote_sdp_ip = D.47112_13;
  D.47110_14 = MEM[(struct switch_rtp_engine_t *)smh_3 + 80B].cur_payload_map;
  D.47113_15 = t38_options_11(D)->remote_port;
  D.47110_14->remote_sdp_port = D.47113_15;
  D.47116_16 = remote_host_7 != 0B;
  D.47117_17 = remote_port_9 != 0;
  D.47118_18 = D.47116_16 & D.47117_17;
  if (D.47118_18 != 0)
    goto <bb 6>;
  else
    goto <bb 9>;

<bb 6>:
  D.47120_20 = D.47110_14->remote_sdp_ip;
  D.38429_21 = __builtin_strcmp (remote_host_7, D.47120_20);
  if (D.38429_21 == 0)
    goto <bb 7>;
  else
    goto <bb 9>;

<bb 7>:
  if (remote_port_9 == D.47113_15)
    goto <bb 8>;
  else
    goto <bb 9>;

<bb 8>:
  D.47124_24 = session_2(D)->channel;
  D.47125_25 = switch_channel_get_name (D.47124_24);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 489, session_2(D), 7, "Audio params are unchanged for %s.\n", D.47125_25);
  goto <bb 11>;

<bb 9>:
  err = 0B;
  D.47124_26 = session_2(D)->channel;
  D.47126_27 = switch_channel_get_name (D.47124_26);
  D.47127_28 = (int) remote_port_9;
  D.47110_29 = MEM[(struct switch_rtp_engine_t *)smh_3 + 80B].cur_payload_map;
  D.47120_30 = D.47110_29->remote_sdp_ip;
  D.47122_32 = D.47110_29->remote_sdp_port;
  D.47128_33 = (int) D.47122_32;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 495, session_2(D), 7, "Audio params changed for %s from %s:%d to %s:%d\n", D.47126_27, remote_host_7, D.47127_28, D.47120_30, D.47128_33);
  D.47110_34 = MEM[(struct switch_rtp_engine_t *)smh_3 + 80B].cur_payload_map;
  D.47122_35 = D.47110_34->remote_sdp_port;
  D.47128_36 = (int) D.47122_35;
  switch_snprintf (&tmp, 32, "%d", D.47128_36);
  D.47124_37 = session_2(D)->channel;
  D.47110_38 = MEM[(struct switch_rtp_engine_t *)smh_3 + 80B].cur_payload_map;
  D.47120_39 = D.47110_38->remote_sdp_ip;
  switch_channel_set_variable_var_check (D.47124_37, "remote_media_ip", D.47120_39, 1);
  D.47124_40 = session_2(D)->channel;
  switch_channel_set_variable_var_check (D.47124_40, "remote_media_port", &tmp, 1);
  D.47109_41 = MEM[(struct switch_rtp_engine_t *)smh_3 + 80B].rtp_session;
  D.47110_42 = MEM[(struct switch_rtp_engine_t *)smh_3 + 80B].cur_payload_map;
  D.47120_43 = D.47110_42->remote_sdp_ip;
  D.47122_45 = D.47110_42->remote_sdp_port;
  D.47129_46 = switch_rtp_set_remote_address (D.47109_41, D.47120_43, D.47122_45, 0, 1, &err);
  if (D.47129_46 != 0)
    goto <bb 10>;
  else
    goto <bb 11>;

<bb 10>:
  err.171_47 = err;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 505, session_2(D), 3, "AUDIO RTP REPORTS ERROR: [%s]\n", err.171_47);
  D.47124_48 = session_2(D)->channel;
  switch_channel_perform_hangup (D.47124_48, "src/switch_core_media.c", &__func__, 506, 88);

<bb 11>:
  switch_core_media_copy_t38_options (t38_options_11(D), other_session_49(D));

<bb 12>:
  # D.47108_1 = PHI <1(4), 0(11)>
  return D.47108_1;

}



;; Function switch_core_media_get_offered_pt (switch_core_media_get_offered_pt)

switch_core_media_get_offered_pt (struct switch_core_session_t * session, const struct switch_codec_implementation_t * mimp, switch_payload_t * pt)
{
  const struct switch_codec_implementation_t * imp;
  static const char __PRETTY_FUNCTION__[33] = "switch_core_media_get_offered_pt";
  struct switch_media_handle_t * smh;
  int i;
  int D.46054;
  struct switch_core_media_params_t * D.46053;
  switch_payload_t D.46052;
  const uint32_t D.46049;
  const uint32_t D.46048;
  int D.46045;
  char * const D.46044;
  char * const D.46043;
  switch_status_t D.46042;

<bb 2>:
  # DEBUG i => 0
  if (session_4(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 2081, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_5 = session_4(D)->media_handle;
  # DEBUG smh => smh_5
  if (smh_5 == 0B)
    goto <bb 11>;
  else
    goto <bb 5>;

<bb 5>:
  if (mimp_6(D) == 0B)
    goto <bb 11>;
  else
    goto <bb 6>;

<bb 6>:
  # i_20 = PHI <0(5)>
  # DEBUG i => i_20
  D.46053_25 = smh_5->mparams;
  D.46054_28 = D.46053_25->num_codecs;
  if (i_20 < D.46054_28)
    goto <bb 7>;
  else
    goto <bb 11>;

<bb 7>:
  # i_27 = PHI <i_19(10), i_20(6)>
  imp_10 = smh_5->codecs[i_27];
  # DEBUG imp => imp_10
  D.46043_11 = imp_10->iananame;
  D.46044_12 = mimp_6(D)->iananame;
  D.46045_13 = strcasecmp (D.46043_11, D.46044_12);
  if (D.46045_13 == 0)
    goto <bb 8>;
  else
    goto <bb 10>;

<bb 8>:
  D.46048_14 = imp_10->actual_samples_per_second;
  D.46049_15 = mimp_6(D)->actual_samples_per_second;
  if (D.46048_14 == D.46049_15)
    goto <bb 9>;
  else
    goto <bb 10>;

<bb 9>:
  # i_24 = PHI <i_27(8)>
  D.46052_16 = smh_5->ianacodes[i_24];
  *pt_17(D) = D.46052_16;
  goto <bb 11>;

<bb 10>:
  i_19 = i_27 + 1;
  # DEBUG i => i_19
  # DEBUG i => i_19
  D.46053_8 = smh_5->mparams;
  D.46054_9 = D.46053_8->num_codecs;
  if (D.46054_9 > i_19)
    goto <bb 7>;
  else
    goto <bb 11>;

<bb 11>:
  # D.46042_2 = PHI <1(5), 0(9), 1(10), 1(4), 1(6)>
  return D.46042_2;

}



;; Function switch_core_media_set_video_codec (switch_core_media_set_video_codec)

switch_core_media_set_video_codec (struct switch_core_session_t * session, int force)
{
  uint32_t D.47747;
  uint32_t D.47746;
  struct switch_mutex_t * D.47745;
  struct switch_codec_interface_t * D.47744;
  struct switch_core_session_message_t msg;
  static const char __func__[34] = "switch_core_media_set_video_codec";
  static const char __PRETTY_FUNCTION__[34] = "switch_core_media_set_video_codec";
  struct switch_media_handle_t * smh;
  uint8_t D.46033;
  struct switch_rtp_t * D.46032;
  switch_payload_t D.46031;
  char * D.46030;
  char * D.46029;
  uint32_t D.46028;
  char * D.46027;
  struct switch_channel_t * D.46026;
  switch_status_t D.46023;
  struct switch_memory_pool_t * D.46022;
  switch_status_t D.46019;
  struct switch_memory_pool_t * D.46018;
  char * D.46017;
  struct switch_codec_t * D.46016;
  long unsigned int D.46015;
  const uint32_t D.46014;
  int D.46012;
  char * D.46011;
  struct payload_map_t * D.46010;
  char * const D.46009;
  struct switch_codec_t * D.46000;
  const struct switch_codec_implementation_t * D.45997;
  uint8_t D.45994;
  switch_status_t D.45993;

<bb 2>:
  if (session_2(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 2109, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_3 = session_2(D)->media_handle;
  # DEBUG smh => smh_3
  if (smh_3 == 0B)
    goto <bb 22>;
  else
    goto <bb 5>;

<bb 5>:
  # DEBUG D#7 => &smh_3->engines[1]
  # DEBUG v_engine => D#7
  D.45994_6 = MEM[(struct switch_rtp_engine_t *)smh_3 + 11496B].codec_negotiated;
  if (D.45994_6 == 0)
    goto <bb 22>;
  else
    goto <bb 6>;

<bb 6>:
  D.45997_8 = MEM[(struct switch_rtp_engine_t *)smh_3 + 11496B].read_codec.implementation;
  if (D.45997_8 != 0B)
    goto <bb 7>;
  else
    goto <bb 15>;

<bb 7>:
  D.46000_9 = &MEM[(struct switch_rtp_engine_t *)smh_3 + 11496B].read_codec;
  # DEBUG codec => D.46000_9
  D.47747_125 = MEM[(struct switch_codec_t *)smh_3 + 13020B].flags;
  D.47746_126 = D.47747_125 & 256;
  if (D.47746_126 != 0)
    goto <bb 8>;
  else
    goto <bb 15>;

<bb 8>:
Invalid sum of incoming frequencies 2556, should be 2172
  D.47745_127 = MEM[(struct switch_codec_t *)smh_3 + 13020B].mutex;
  if (D.47745_127 != 0B)
    goto <bb 9>;
  else
    goto <bb 15>;

<bb 9>:
  D.47744_128 = MEM[(struct switch_codec_t *)smh_3 + 13020B].codec_interface;
  if (D.47744_128 != 0B)
    goto <bb 10>;
  else
    goto <bb 15>;

<bb 10>:
Invalid sum of incoming frequencies 1569, should be 1334
  if (force_11(D) == 0)
    goto <bb 22>;
  else
    goto <bb 11>;

<bb 11>:
Invalid sum of incoming frequencies 814, should be 1559
  D.46009_14 = D.45997_8->iananame;
  D.46010_15 = MEM[(struct switch_rtp_engine_t *)smh_3 + 11496B].cur_payload_map;
  D.46011_16 = D.46010_15->rm_encoding;
  D.46012_17 = strcasecmp (D.46009_14, D.46011_16);
  if (D.46012_17 != 0)
    goto <bb 13>;
  else
    goto <bb 12>;

<bb 12>:
  D.46014_19 = D.45997_8->samples_per_second;
  D.46015_21 = D.46010_15->rm_rate;
  if (D.46014_19 != D.46015_21)
    goto <bb 13>;
  else
    goto <bb 14>;

<bb 13>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2128, session_2(D), 7, "Changing Codec from %s to %s\n", D.46009_14, D.46011_16);
  switch_core_codec_destroy (D.46000_9);
  D.46016_30 = &MEM[(struct switch_rtp_engine_t *)smh_3 + 11496B].write_codec;
  switch_core_codec_destroy (D.46016_30);
  goto <bb 15>;

<bb 14>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2133, session_2(D), 7, "Already using %s\n", D.46009_14);
  goto <bb 22>;

<bb 15>:
Invalid sum of incoming frequencies 4984, should be 4381
  D.46000_31 = &MEM[(struct switch_rtp_engine_t *)smh_3 + 11496B].read_codec;
  D.46010_32 = MEM[(struct switch_rtp_engine_t *)smh_3 + 11496B].cur_payload_map;
  D.46011_33 = D.46010_32->rm_encoding;
  D.46017_35 = D.46010_32->rm_fmtp;
  D.46015_37 = D.46010_32->rm_rate;
  D.46018_38 = switch_core_session_get_pool (session_2(D));
  D.46019_39 = switch_core_codec_init_with_bitrate (D.46000_31, D.46011_33, D.46017_35, D.46015_37, 0, 1, 0, 3, 0B, D.46018_38);
  if (D.46019_39 != 0)
    goto <bb 16>;
  else
    goto <bb 17>;

<bb 16>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2149, session_2(D), 3, "Can\'t load codec?\n");
  goto <bb 22>;

<bb 17>:
  D.46016_41 = &MEM[(struct switch_rtp_engine_t *)smh_3 + 11496B].write_codec;
  D.46010_42 = MEM[(struct switch_rtp_engine_t *)smh_3 + 11496B].cur_payload_map;
  D.46011_43 = D.46010_42->rm_encoding;
  D.46017_45 = D.46010_42->rm_fmtp;
  D.46015_47 = D.46010_42->rm_rate;
  D.46022_48 = switch_core_session_get_pool (session_2(D));
  D.46023_49 = switch_core_codec_init_with_bitrate (D.46016_41, D.46011_43, D.46017_45, D.46015_47, 0, 1, 0, 3, 0B, D.46022_48);
  if (D.46023_49 != 0)
    goto <bb 18>;
  else
    goto <bb 19>;

<bb 18>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2160, session_2(D), 3, "Can\'t load codec?\n");
  goto <bb 22>;

<bb 19>:
  D.46010_51 = MEM[(struct switch_rtp_engine_t *)smh_3 + 11496B].cur_payload_map;
  D.46015_52 = D.46010_51->rm_rate;
  MEM[(struct switch_rtp_engine_t *)smh_3 + 11496B].read_frame.rate = D.46015_52;
  D.46026_53 = session_2(D)->channel;
  D.46027_54 = switch_channel_get_name (D.46026_53);
  D.46010_55 = MEM[(struct switch_rtp_engine_t *)smh_3 + 11496B].cur_payload_map;
  D.46011_56 = D.46010_55->rm_encoding;
  D.46015_58 = D.46010_55->rm_rate;
  D.46028_60 = D.46010_55->codec_ms;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2164, session_2(D), 7, "Set VIDEO Codec %s %s/%ld %d ms\n", D.46027_54, D.46011_56, D.46015_58, D.46028_60);
  MEM[(struct switch_rtp_engine_t *)smh_3 + 11496B].read_frame.codec = D.46000_31;
  D.46029_62 = MEM[(struct switch_rtp_engine_t *)smh_3 + 11496B].write_codec.fmtp_out;
  D.46030_63 = switch_core_perform_session_strdup (session_2(D), D.46029_62, "src/switch_core_media.c", &__func__, 2169);
  MEM[(struct switch_rtp_engine_t *)smh_3 + 11496B].write_codec.fmtp_out = D.46030_63;
  D.46010_64 = MEM[(struct switch_rtp_engine_t *)smh_3 + 11496B].cur_payload_map;
  D.46031_65 = D.46010_64->agreed_pt;
  MEM[(struct switch_rtp_engine_t *)smh_3 + 11496B].write_codec.agreed_pt = D.46031_65;
  D.46031_67 = D.46010_64->agreed_pt;
  MEM[(struct switch_rtp_engine_t *)smh_3 + 11496B].read_codec.agreed_pt = D.46031_67;
  switch_core_session_set_video_read_codec (session_2(D), D.46000_31);
  switch_core_session_set_video_write_codec (session_2(D), D.46016_41);
  D.46026_70 = session_2(D)->channel;
  D.46010_71 = MEM[(struct switch_rtp_engine_t *)smh_3 + 11496B].cur_payload_map;
  D.46011_72 = D.46010_71->rm_encoding;
  D.46015_74 = D.46010_71->rm_rate;
  switch_channel_set_variable_printf (D.46026_70, "rtp_last_video_codec_string", "%s@%dh", D.46011_72, D.46015_74);
  D.46032_75 = MEM[(struct switch_rtp_engine_t *)smh_3 + 11496B].rtp_session;
  D.46033_76 = switch_rtp_ready (D.46032_75);
  if (D.46033_76 != 0)
    goto <bb 20>;
  else
    goto <bb 21>;

<bb 20>:
  msg = {};
  msg.from = "src/switch_core_media.c";
  msg.message_id = 17;
  D.46032_77 = MEM[(struct switch_rtp_engine_t *)smh_3 + 11496B].rtp_session;
  D.46010_78 = MEM[(struct switch_rtp_engine_t *)smh_3 + 11496B].cur_payload_map;
  D.46031_79 = D.46010_78->agreed_pt;
  switch_rtp_set_default_payload (D.46032_77, D.46031_79);
  switch_core_session_perform_receive_message (session_2(D), &msg, "src/switch_core_media.c", &__func__, 2191);

<bb 21>:
  D.46026_80 = session_2(D)->channel;
  D.46010_81 = MEM[(struct switch_rtp_engine_t *)smh_3 + 11496B].cur_payload_map;
  D.46011_82 = D.46010_81->rm_encoding;
  switch_channel_set_variable_var_check (D.46026_80, "rtp_use_video_codec_name", D.46011_82, 1);
  D.46026_83 = session_2(D)->channel;
  D.46010_84 = MEM[(struct switch_rtp_engine_t *)smh_3 + 11496B].cur_payload_map;
  D.46017_85 = D.46010_84->rm_fmtp;
  switch_channel_set_variable_var_check (D.46026_83, "rtp_use_video_codec_fmtp", D.46017_85, 1);
  D.46026_86 = session_2(D)->channel;
  D.46010_87 = MEM[(struct switch_rtp_engine_t *)smh_3 + 11496B].cur_payload_map;
  D.46015_88 = D.46010_87->rm_rate;
  switch_channel_set_variable_printf (D.46026_86, "rtp_use_video_codec_rate", "%d", D.46015_88);
  D.46026_89 = session_2(D)->channel;
  switch_channel_set_variable_printf (D.46026_89, "rtp_use_video_codec_ptime", "%d", 0);

<bb 22>:
Invalid sum of incoming frequencies 9519, should be 9996
  # D.45993_1 = PHI <1(4), 1(5), 0(10), 0(14), 1(16), 1(18), 0(21)>
  return D.45993_1;

}



;; Function switch_core_media_set_codec (switch_core_media_set_codec)

switch_core_media_set_codec (struct switch_core_session_t * session, int force, uint32_t codec_flags)
{
  uint32_t D.47766;
  uint32_t D.47765;
  struct switch_mutex_t * D.47764;
  struct switch_codec_interface_t * D.47763;
  const struct switch_codec_implementation_t * D.47762;
  uint32_t D.47757;
  uint32_t D.47756;
  struct switch_mutex_t * D.47755;
  struct switch_codec_interface_t * D.47754;
  const struct switch_codec_implementation_t * D.47753;
  static const char __func__[28] = "switch_core_media_set_codec";
  static const char __PRETTY_FUNCTION__[28] = "switch_core_media_set_codec";
  struct switch_media_handle_t * smh;
  int resetting;
  switch_status_t status;
  switch_payload_t D.45985;
  uint8_t D.45982;
  char * D.45981;
  char * D.45980;
  switch_payload_t D.45977;
  int D.45976;
  char * D.45975;
  switch_status_t D.45969;
  uint32_t D.45968;
  uint32_t D.45967;
  uint8_t D.45962;
  struct switch_rtp_t * D.45961;
  const struct switch_codec_implementation_t * D.45958;
  const struct switch_codec_implementation_t * D.45955;
  switch_status_t D.45952;
  struct switch_memory_pool_t * D.45951;
  switch_status_t D.45948;
  struct switch_memory_pool_t * D.45947;
  uint32_t D.45946;
  uint32_t D.45945;
  int D.45944;
  int D.45943;
  char * D.45942;
  struct switch_codec_t * D.45941;
  switch_interval_time_t D.45940;
  int D.45939;
  struct switch_channel_t * D.45938;
  struct switch_audio_resampler_t * * D.45937;
  struct switch_audio_resampler_t * D.45934;
  struct switch_audio_resampler_t * * D.45933;
  struct switch_mutex_t * D.45932;
  struct switch_audio_resampler_t * D.45929;
  long unsigned int D.45928;
  uint32_t D.45927;
  uint32_t D.45925;
  unsigned int D.45924;
  unsigned int D.45923;
  int D.45922;
  int D.45920;
  char * D.45919;
  struct switch_codec_t * D.45910;
  char * D.45907;
  struct payload_map_t * D.45906;

<bb 2>:
  # DEBUG status => 0
  # DEBUG resetting => 0
  if (session_7(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 2215, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_8 = session_7(D)->media_handle;
  # DEBUG smh => smh_8
  if (smh_8 == 0B)
    goto <bb 44>;
  else
    goto <bb 5>;

<bb 5>:
  # DEBUG D#8 => &smh_8->engines
  # DEBUG a_engine => D#8
  D.45906_11 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].cur_payload_map;
  D.45907_12 = D.45906_11->iananame;
  if (D.45907_12 == 0B)
    goto <bb 6>;
  else
    goto <bb 7>;

<bb 6>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2223, session_7(D), 7, "No audio codec available\n");
  # DEBUG status => 1
  goto <bb 46>;

<bb 7>:
  D.45910_14 = &MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].read_codec;
  # DEBUG codec => D.45910_14
  D.47757_228 = MEM[(struct switch_codec_t *)smh_8 + 1604B].flags;
  D.47756_229 = D.47757_228 & 256;
  if (D.47756_229 != 0)
    goto <bb 8>;
  else
    goto <bb 21>;

<bb 8>:
Invalid sum of incoming frequencies 4190, should be 3561
  D.47755_230 = MEM[(struct switch_codec_t *)smh_8 + 1604B].mutex;
  if (D.47755_230 != 0B)
    goto <bb 9>;
  else
    goto <bb 21>;

<bb 9>:
  D.47754_231 = MEM[(struct switch_codec_t *)smh_8 + 1604B].codec_interface;
  if (D.47754_231 != 0B)
    goto <bb 10>;
  else
    goto <bb 21>;

<bb 10>:
  D.47753_232 = MEM[(struct switch_codec_t *)smh_8 + 1604B].implementation;
  if (D.47753_232 != 0B)
    goto <bb 11>;
  else
    goto <bb 21>;

<bb 11>:
  if (force_16(D) == 0)
    goto <bb 46>;
  else
    goto <bb 12>;

<bb 12>:
Invalid sum of incoming frequencies 1094, should be 2974
  D.45919_18 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].read_impl.iananame;
  D.45920_21 = strcasecmp (D.45919_18, D.45907_12);
  if (D.45920_21 != 0)
    goto <bb 15>;
  else
    goto <bb 13>;

<bb 13>:
  D.45922_22 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].read_impl.microseconds_per_packet;
  D.45923_23 = (unsigned int) D.45922_22;
  D.45924_24 = D.45923_23 / 1000;
  D.45925_26 = D.45906_11->codec_ms;
  if (D.45924_24 != D.45925_26)
    goto <bb 15>;
  else
    goto <bb 14>;

<bb 14>:
  D.45927_27 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].read_impl.samples_per_second;
  D.45928_29 = D.45906_11->rm_rate;
  if (D.45927_27 != D.45928_29)
    goto <bb 15>;
  else
    goto <bb 20>;

<bb 15>:
  D.45929_32 = session_7(D)->read_resampler;
  if (D.45929_32 != 0B)
    goto <bb 16>;
  else
    goto <bb 17>;

<bb 16>:
  D.45932_33 = session_7(D)->resample_mutex;
  switch_mutex_lock (D.45932_33);
  D.45933_34 = &session_7(D)->read_resampler;
  switch_resample_destroy (D.45933_34);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2238, session_7(D), 5, "Deactivating read resampler\n");
  D.45932_35 = session_7(D)->resample_mutex;
  switch_mutex_unlock (D.45932_35);

<bb 17>:
  D.45934_36 = session_7(D)->write_resampler;
  if (D.45934_36 != 0B)
    goto <bb 18>;
  else
    goto <bb 19>;

<bb 18>:
  D.45932_37 = session_7(D)->resample_mutex;
  switch_mutex_lock (D.45932_37);
  D.45937_38 = &session_7(D)->write_resampler;
  switch_resample_destroy (D.45937_38);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2245, session_7(D), 5, "Deactivating write resampler\n");
  D.45932_39 = session_7(D)->resample_mutex;
  switch_mutex_unlock (D.45932_39);

<bb 19>:
  switch_core_session_reset (session_7(D), 0, 0);
  D.45938_40 = session_7(D)->channel;
  switch_channel_perform_audio_sync (D.45938_40, "src/switch_core_media.c", &__func__, 2250);
  D.45919_41 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].read_impl.iananame;
  D.45922_42 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].read_impl.microseconds_per_packet;
  D.45939_43 = D.45922_42 / 1000;
  D.45927_44 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].read_impl.samples_per_second;
  D.45906_45 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].cur_payload_map;
  D.45907_46 = D.45906_45->iananame;
  D.45925_48 = D.45906_45->codec_ms;
  D.45928_50 = D.45906_45->rm_rate;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2252, session_7(D), 7, "Changing Codec from %s@%dms@%dhz to %s@%dms@%luhz\n", D.45919_41, D.45939_43, D.45927_44, D.45907_46, D.45925_48, D.45928_50);
  D.45922_51 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].read_impl.microseconds_per_packet;
  D.45940_52 = (switch_interval_time_t) D.45922_51;
  switch_sleep (D.45940_52);
  switch_core_session_lock_codec_write (session_7(D));
  switch_core_session_lock_codec_read (session_7(D));
  # DEBUG resetting => 1
  D.45922_54 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].read_impl.microseconds_per_packet;
  D.45940_55 = (switch_interval_time_t) D.45922_54;
  switch_sleep (D.45940_55);
  switch_core_codec_destroy (D.45910_14);
  D.45941_57 = &MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].write_codec;
  switch_core_codec_destroy (D.45941_57);
  D.45938_58 = session_7(D)->channel;
  switch_channel_perform_audio_sync (D.45938_58, "src/switch_core_media.c", &__func__, 2269);
  goto <bb 21>;

<bb 20>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2271, session_7(D), 7, "Already using %s\n", D.45919_18);
  # DEBUG status => 0
  goto <bb 46>;

<bb 21>:
Invalid sum of incoming frequencies 8481, should be 5347
  # resetting_2 = PHI <0(10), 1(19), 0(7), 0(8), 0(9)>
  # DEBUG resetting => resetting_2
  D.45906_60 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].cur_payload_map;
  D.45907_61 = D.45906_60->iananame;
  D.45942_63 = D.45906_60->rm_fmtp;
  D.45928_65 = D.45906_60->rm_rate;
  D.45925_67 = D.45906_60->codec_ms;
  D.45943_68 = (int) D.45925_67;
  D.45944_70 = D.45906_60->channels;
  D.45945_72 = D.45906_60->bitrate;
  D.45946_74 = codec_flags_73(D) | 3;
  D.45947_75 = switch_core_session_get_pool (session_7(D));
  D.45948_76 = switch_core_codec_init_with_bitrate (D.45910_14, D.45907_61, D.45942_63, D.45928_65, D.45943_68, D.45944_70, D.45945_72, D.45946_74, 0B, D.45947_75);
  if (D.45948_76 != 0)
    goto <bb 22>;
  else
    goto <bb 23>;

<bb 22>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2285, session_7(D), 3, "Can\'t load codec?\n");
  D.45938_77 = session_7(D)->channel;
  switch_channel_perform_hangup (D.45938_77, "src/switch_core_media.c", &__func__, 2286, 88);
  # DEBUG status => 1
  goto <bb 42> (end);

<bb 23>:
  MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].read_codec.session = session_7(D);
  D.45941_79 = &MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].write_codec;
  D.45906_80 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].cur_payload_map;
  D.45907_81 = D.45906_80->iananame;
  D.45942_83 = D.45906_80->rm_fmtp;
  D.45928_85 = D.45906_80->rm_rate;
  D.45925_87 = D.45906_80->codec_ms;
  D.45943_88 = (int) D.45925_87;
  D.45944_90 = D.45906_80->channels;
  D.45945_92 = D.45906_80->bitrate;
  D.45951_94 = switch_core_session_get_pool (session_7(D));
  D.45952_95 = switch_core_codec_init_with_bitrate (D.45941_79, D.45907_81, D.45942_83, D.45928_85, D.45943_88, D.45944_90, D.45945_92, D.45946_74, 0B, D.45951_94);
  if (D.45952_95 != 0)
    goto <bb 24>;
  else
    goto <bb 25>;

<bb 24>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2302, session_7(D), 3, "Can\'t load codec?\n");
  D.45938_96 = session_7(D)->channel;
  switch_channel_perform_hangup (D.45938_96, "src/switch_core_media.c", &__func__, 2303, 88);
  # DEBUG status => 1
  goto <bb 42> (end);

<bb 25>:
  MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].write_codec.session = session_7(D);
  D.45938_98 = session_7(D)->channel;
  D.45906_99 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].cur_payload_map;
  D.45907_100 = D.45906_99->iananame;
  switch_channel_set_variable_var_check (D.45938_98, "rtp_use_codec_name", D.45907_100, 1);
  D.45938_101 = session_7(D)->channel;
  D.45906_102 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].cur_payload_map;
  D.45942_103 = D.45906_102->rm_fmtp;
  switch_channel_set_variable_var_check (D.45938_101, "rtp_use_codec_fmtp", D.45942_103, 1);
  D.45938_104 = session_7(D)->channel;
  D.45906_105 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].cur_payload_map;
  D.45928_106 = D.45906_105->rm_rate;
  switch_channel_set_variable_printf (D.45938_104, "rtp_use_codec_rate", "%d", D.45928_106);
  D.45938_107 = session_7(D)->channel;
  D.45906_108 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].cur_payload_map;
  D.45925_109 = D.45906_108->codec_ms;
  switch_channel_set_variable_printf (D.45938_107, "rtp_use_codec_ptime", "%d", D.45925_109);
  D.45938_110 = session_7(D)->channel;
  D.45906_111 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].cur_payload_map;
  D.45907_112 = D.45906_111->iananame;
  D.45928_114 = D.45906_111->rm_rate;
  D.45925_116 = D.45906_111->codec_ms;
  switch_channel_set_variable_printf (D.45938_110, "rtp_last_audio_codec_string", "%s@%dh@%di", D.45907_112, D.45928_114, D.45925_116);
  D.45955_117 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].read_codec.implementation;
  if (D.45955_117 == 0B)
    goto <bb 26>;
  else
    goto <bb 27>;

<bb 26>:
  __assert_fail ("a_engine->read_codec.implementation", "src/switch_core_media.c", 2316, &__PRETTY_FUNCTION__);

<bb 27>:
  D.45958_118 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].write_codec.implementation;
  if (D.45958_118 == 0B)
    goto <bb 28>;
  else
    goto <bb 29>;

<bb 28>:
  __assert_fail ("a_engine->write_codec.implementation", "src/switch_core_media.c", 2317, &__PRETTY_FUNCTION__);

<bb 29>:
  MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].read_impl = *D.45955_117;
  MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].write_impl = *D.45958_118;
  switch_core_session_set_read_impl (session_7(D), D.45955_117);
  D.45958_122 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].write_codec.implementation;
  switch_core_session_set_write_impl (session_7(D), D.45958_122);
  D.45961_123 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].rtp_session;
  D.45962_124 = switch_rtp_ready (D.45961_123);
  if (D.45962_124 != 0)
    goto <bb 30>;
  else
    goto <bb 34>;

<bb 30>:
  D.45955_125 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].read_codec.implementation;
  if (D.45955_125 == 0B)
    goto <bb 31>;
  else
    goto <bb 32>;

<bb 31>:
  __assert_fail ("a_engine->read_codec.implementation", "src/switch_core_media.c", 2326, &__PRETTY_FUNCTION__);

<bb 32>:
  D.45961_126 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].rtp_session;
  D.45922_127 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].read_impl.microseconds_per_packet;
  D.45967_128 = (uint32_t) D.45922_127;
  D.45968_129 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].read_impl.samples_per_packet;
  D.45969_130 = switch_rtp_change_interval (D.45961_126, D.45967_128, D.45968_129);
  if (D.45969_130 != 0)
    goto <bb 33>;
  else
    goto <bb 34>;

<bb 33>:
  D.45938_131 = session_7(D)->channel;
  switch_channel_perform_hangup (D.45938_131, "src/switch_core_media.c", &__func__, 2331, 27);
  # DEBUG status => 1
  goto <bb 42> (end);

<bb 34>:
  D.45906_133 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].cur_payload_map;
  D.45928_134 = D.45906_133->rm_rate;
  MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].read_frame.rate = D.45928_134;
  # DEBUG codec => D.45910_14
  D.47766_235 = MEM[(struct switch_codec_t *)smh_8 + 1604B].flags;
  D.47765_236 = D.47766_235 & 256;
  if (D.47765_236 != 0)
    goto <bb 35>;
  else
    goto <bb 45>;

<bb 35>:
  D.47764_237 = MEM[(struct switch_codec_t *)smh_8 + 1604B].mutex;
  if (D.47764_237 != 0B)
    goto <bb 36>;
  else
    goto <bb 45>;

<bb 36>:
  D.47763_238 = MEM[(struct switch_codec_t *)smh_8 + 1604B].codec_interface;
  if (D.47763_238 != 0B)
    goto <bb 37>;
  else
    goto <bb 45>;

<bb 37>:
  D.47762_239 = MEM[(struct switch_codec_t *)smh_8 + 1604B].implementation;
  if (D.47762_239 != 0B)
    goto <bb 38>;
  else
    goto <bb 45>;

<bb 38>:
  D.45938_138 = session_7(D)->channel;
  D.45975_139 = switch_channel_get_name (D.45938_138);
  D.45906_140 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].cur_payload_map;
  D.45907_141 = D.45906_140->iananame;
  D.45928_143 = D.45906_140->rm_rate;
  D.45925_145 = D.45906_140->codec_ms;
  D.45968_146 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].read_impl.samples_per_packet;
  D.45976_147 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].read_impl.bits_per_second;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2343, session_7(D), 7, "Set Codec %s %s/%ld %d ms %d samples %d bits\n", D.45975_139, D.45907_141, D.45928_143, D.45925_145, D.45968_146, D.45976_147);
  MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].read_frame.codec = D.45910_14;
  D.45906_149 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].cur_payload_map;
  D.45977_150 = D.45906_149->agreed_pt;
  MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].write_codec.agreed_pt = D.45977_150;
  D.45977_152 = D.45906_149->agreed_pt;
  MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].read_codec.agreed_pt = D.45977_152;
  if (force_16(D) != 2)
    goto <bb 39>;
  else
    goto <bb 40>;

<bb 39>:
Invalid sum of incoming frequencies 153, should be 292
  switch_core_session_set_real_read_codec (session_7(D), D.45910_14);
  switch_core_session_set_write_codec (session_7(D), D.45941_79);

<bb 40>:
Invalid sum of incoming frequencies 437, should be 571
  D.45906_155 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].cur_payload_map;
  D.45980_156 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].write_codec.fmtp_out;
  D.45981_157 = switch_core_perform_session_strdup (session_7(D), D.45980_156, "src/switch_core_media.c", &__func__, 2357);
  D.45906_155->fmtp_out = D.45981_157;
  D.45961_158 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].rtp_session;
  D.45982_159 = switch_rtp_ready (D.45961_158);
  if (D.45982_159 != 0)
    goto <bb 41>;
  else
    goto <bb 42> (end);

<bb 41>:
  D.45961_160 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].rtp_session;
  D.45906_161 = MEM[(struct switch_rtp_engine_t *)smh_8 + 80B].cur_payload_map;
  D.45985_162 = D.45906_161->pt;
  switch_rtp_set_default_payload (D.45961_160, D.45985_162);

Invalid sum of incoming frequencies 5620, should be 5345
  # status_1 = PHI <1(45), 0(40), 0(41), 1(22), 1(24), 1(33)>
  # resetting_3 = PHI <resetting_2(45), resetting_2(40), resetting_2(41), resetting_2(22), resetting_2(24), resetting_2(33)>
end:
  # DEBUG resetting => resetting_3
  # DEBUG status => status_1
  if (resetting_3 != 0)
    goto <bb 43>;
  else
    goto <bb 44>;

<bb 43>:
  switch_core_session_unlock_codec_write (session_7(D));
  switch_core_session_unlock_codec_read (session_7(D));

<bb 44>:
  # status_4 = PHI <1(4), status_1(43), status_1(42), status_144(46)>
  return status_4;

<bb 45>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2339, session_7(D), 3, "Can\'t load codec?\n");
  # DEBUG status => 1
  goto <bb 42> (end);

<bb 46>:
Invalid sum of incoming frequencies 1755, should be 3636
  # status_144 = PHI <0(20), 0(11), 1(6)>
  # DEBUG resetting => 0
  # DEBUG status => status_144
  goto <bb 44>;

}



;; Function switch_core_media_read_frame (switch_core_media_read_frame)

switch_core_media_read_frame (struct switch_core_session_t * session, struct switch_frame_t * * frame, switch_io_flag_t flags, int stream_id, switch_media_type_t type)
{
  uint32_t D.47791;
  uint32_t D.47790;
  struct switch_mutex_t * D.47789;
  struct switch_codec_interface_t * D.47788;
  uint32_t D.47776;
  uint32_t D.47775;
  struct switch_mutex_t * D.47774;
  struct switch_codec_interface_t * D.47773;
  struct payload_map_t * pmap;
  uint32_t codec_ms;
  int frames;
  uint32_t bytes;
  struct switch_dtmf_t dtmf;
  char * uuid;
  int i;
  char header[50];
  char value[30];
  struct switch_event_t * event;
  int v;
  int v;
  int rtp_hold_timeout_sec;
  int rtp_timeout_sec;
  const char * val;
  static const char __func__[29] = "switch_core_media_read_frame";
  static const char __PRETTY_FUNCTION__[29] = "switch_core_media_read_frame";
  struct switch_media_handle_t * smh;
  switch_status_t status;
  struct switch_rtp_engine_t * engine;
  struct switch_rtcp_frame_t rtcp_frame;
  uint32_t D.46361;
  uint32_t frames.134;
  uint32_t D.46359;
  int D.46354;
  switch_payload_t D.46353;
  char * D.46352;
  uint8_t D.46349;
  switch_payload_t D.46346;
  struct switch_mutex_t * D.46345;
  int D.46344;
  int D.46343;
  switch_payload_t D.46340;
  switch_payload_t D.46337;
  switch_payload_t D.46334;
  switch_payload_t D.46332;
  switch_payload_t D.46330;
  switch_payload_t D.46329;
  switch_payload_t D.46327;
  struct switch_core_media_params_t * D.46326;
  uint8_t D.46323;
  int D.46316;
  int codec_ms.133;
  uint32_t D.46308;
  struct payload_map_t * D.46307;
  uint32_t D.46304;
  uint32_t D.46303;
  uint32_t D.46298;
  uint32_t D.46297;
  uint32_t D.46295;
  uint32_t D.46292;
  switch_size_t D.46291;
  switch_size_t D.46288;
  uint32_t D.46284;
  uint32_t D.46278;
  uint32_t D.46275;
  switch_core_media_flag_t D.46272;
  switch_frame_flag_t D.46265;
  uint32_t D.46262;
  switch_size_t D.46259;
  switch_frame_flag_t D.46256;
  switch_frame_flag_t D.46255;
  int D.46254;
  uint16_t D.46253;
  uint32_t D.46252;
  uint32_t D.46250;
  uint32_t D.46248;
  uint32_t D.46246;
  uint32_t D.46244;
  int D.46242;
  uint8_t D.46241;
  uint32_t D.46239;
  switch_time_t D.46237;
  uint32_t D.46235;
  switch_size_t D.46234;
  uint32_t D.46232;
  uint32_t D.46231;
  uint32_t D.46230;
  uint32_t D.46229;
  uint32_t D.46228;
  uint32_t D.46226;
  char * D.46224;
  struct switch_event_t * event.132;
  switch_status_t D.46218;
  switch_status_t D.46215;
  uint32_t D.46212;
  uint32_t D.46211;
  uint32_t rtp_hold_timeout_sec.131;
  uint32_t D.46204;
  uint32_t D.46203;
  uint32_t D.46202;
  uint32_t rtp_timeout_sec.130;
  uint32_t D.46200;
  switch_status_t D.46187;
  uint8_t D.46181;
  uint8_t D.46178;
  void * D.46176;
  uint32_t D.46175;
  switch_frame_flag_t D.46174;
  switch_frame_flag_t D.46173;
  struct switch_frame_t * D.46172;
  const char * D.46169;
  _Bool D.46164;
  _Bool D.46163;
  _Bool D.46162;
  struct switch_frame_t * D.46161;
  char * iftmp.129;
  char * D.46156;
  switch_status_t D.46153;
  struct switch_mutex_t * D.46150;
  uint32_t D.46149;
  uint8_t D.46147;
  switch_channel_state_t D.46145;
  struct switch_channel_t * D.46144;
  struct switch_rtp_t * D.46139;
  const struct switch_codec_implementation_t * D.46135;
  switch_core_media_flag_t D.46128;

<bb 2>:
  # DEBUG do_cng => 0
  if (session_13(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 1623, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_14 = session_13(D)->media_handle;
  # DEBUG smh => smh_14
  if (smh_14 == 0B)
    goto <bb 112>;
  else
    goto <bb 5>;

<bb 5>:
  D.46128_16 = smh_14->media_flags[0];
  if (D.46128_16 == 0)
    goto <bb 112>;
  else
    goto <bb 6>;

<bb 6>:
  engine_21 = &smh_14->engines[type_19(D)]{lb: 0 sz: 11416};
  # DEBUG engine => engine_21
  engine_21->read_frame.datalen = 0;
  D.46135_22 = engine_21->read_codec.implementation;
  if (D.46135_22 == 0B)
    goto <bb 112>;
  else
    goto <bb 7>;

<bb 7>:
  # DEBUG D#69 => &engine_21->read_codec
  # DEBUG codec => D#69
  D.47776_424 = MEM[(struct switch_codec_t *)engine_21 + 1524B].flags;
  D.47775_425 = D.47776_424 & 256;
  if (D.47775_425 != 0)
    goto <bb 8>;
  else
    goto <bb 112>;

<bb 8>:
Invalid sum of incoming frequencies 2462, should be 2093
  D.47774_426 = MEM[(struct switch_codec_t *)engine_21 + 1524B].mutex;
  if (D.47774_426 != 0B)
    goto <bb 9>;
  else
    goto <bb 112>;

<bb 9>:
  D.47773_427 = MEM[(struct switch_codec_t *)engine_21 + 1524B].codec_interface;
  if (D.47773_427 != 0B)
    goto <bb 10>;
  else
    goto <bb 112>;

<bb 10>:
Invalid sum of incoming frequencies 1512, should be 1285
  D.46139_25 = engine_21->rtp_session;
  if (D.46139_25 == 0B)
    goto <bb 11>;
  else
    goto <bb 12>;

<bb 11>:
  __assert_fail ("engine->rtp_session != ((void *)0)", "src/switch_core_media.c", 1641, &__PRETTY_FUNCTION__);

<bb 12>:
Invalid sum of incoming frequencies 1284, should be 3002
  D.46144_26 = session_13(D)->channel;
  D.46145_27 = switch_channel_get_state (D.46144_26);
  if (D.46145_27 > 9)
    goto <bb 112>;
  else
    goto <bb 13>;

<bb 13>:
  D.46139_28 = engine_21->rtp_session;
  D.46147_29 = switch_rtp_ready (D.46139_28);
  if (D.46147_29 == 0)
    goto <bb 112>;
  else
    goto <bb 14>;

<bb 14>:
  D.46144_30 = session_13(D)->channel;
  D.46149_31 = switch_channel_test_flag (D.46144_30, 45);
  if (D.46149_31 != 0)
    goto <bb 112>;
  else
    goto <bb 15>;

<bb 15>:
  D.46150_32 = engine_21->read_mutex[type_19(D)];
  if (D.46150_32 != 0B)
    goto <bb 17>;
  else
    goto <bb 16>;

<bb 16>:
  goto <bb 105>;

<bb 17>:
  D.46153_34 = switch_mutex_trylock (D.46150_32);
  if (D.46153_34 != 0)
    goto <bb 18>;
  else
    goto <bb 16>;

<bb 18>:
  D.46144_35 = session_13(D)->channel;
  D.46156_36 = switch_channel_get_name (D.46144_35);
  if (type_19(D) == 1)
    goto <bb 20>;
  else
    goto <bb 19>;

<bb 19>:

<bb 20>:
  # iftmp.129_11 = PHI <"video"(18), "audio"(19)>
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1650, session_13(D), 101, "%s is already being read for %s\n", D.46156_36, iftmp.129_11);
  goto <bb 112>;

<bb 21>:
  engine_21->read_frame.flags = 0;
  D.46139_42 = engine_21->rtp_session;
  D.46161_43 = &engine_21->read_frame;
  status_45 = switch_rtp_zerocopy_read_frame (D.46139_42, D.46161_43, flags_44(D));
  # DEBUG status => status_45
  D.46162_46 = status_45 != 0;
  D.46163_47 = status_45 != 11;
  D.46164_48 = D.46162_46 & D.46163_47;
  if (D.46164_48 != 0)
    goto <bb 22>;
  else
    goto <bb 26>;

<bb 22>:
  # D.46161_259 = PHI <D.46161_43(21)>
  # status_250 = PHI <status_45(21)>
  if (status_250 == 2)
    goto <bb 23>;
  else
    goto <bb 110> (end);

<bb 23>:
  D.46144_49 = session_13(D)->channel;
  D.46169_50 = switch_channel_get_variable_dup (D.46144_49, "execute_on_media_timeout", 1, -1);
  if (D.46169_50 != 0B)
    goto <bb 24>;
  else
    goto <bb 25>;

<bb 24>:
  D.46161_51 = D.46161_259;
  *frame_52(D) = D.46161_51;
  D.46172_54 = D.46161_259;
  D.46173_55 = D.46172_54->flags;
  D.46174_56 = D.46173_55 | 1;
  D.46172_54->flags = D.46174_56;
  D.46172_57 = D.46161_259;
  D.46175_58 = engine_21->read_impl.encoded_bytes_per_packet;
  D.46172_57->datalen = D.46175_58;
  D.46172_59 = D.46161_259;
  D.46176_60 = D.46172_59->data;
  memset (D.46176_60, 0, D.46175_58);
  D.46144_63 = session_13(D)->channel;
  switch_channel_execute_on (D.46144_63, "execute_on_media_timeout");
  # DEBUG status => 0
  goto <bb 110> (end);

<bb 25>:
  D.46144_65 = session_13(D)->channel;
  switch_channel_perform_hangup (D.46144_65, "src/switch_core_media.c", &__func__, 1674, 604);
  goto <bb 110> (end);

<bb 26>:
  D.46178_66 = engine_21->reset_codec;
  if (D.46178_66 != 0)
    goto <bb 27>;
  else
    goto <bb 44>;

<bb 27>:
  # DEBUG rtp_timeout_sec => 0
  # DEBUG rtp_hold_timeout_sec => 0
  engine_21->reset_codec = 0;
  D.46139_69 = engine_21->rtp_session;
  D.46181_70 = switch_rtp_ready (D.46139_69);
  if (D.46181_70 != 0)
    goto <bb 28>;
  else
    goto <bb 43>;

<bb 28>:
  if (type_19(D) == 1)
    goto <bb 29>;
  else
    goto <bb 30>;

<bb 29>:
  switch_core_media_set_video_codec (session_13(D), 1);
  goto <bb 32>;

<bb 30>:
  D.46187_71 = switch_core_media_set_codec (session_13(D), 1, 0);
  if (D.46187_71 != 0)
    goto <bb 31>;
  else
    goto <bb 32>;

<bb 31>:
  *frame_52(D) = 0B;
  # DEBUG status => 9
  goto <bb 110> (end);

<bb 32>:
  D.46144_73 = session_13(D)->channel;
  val_74 = switch_channel_get_variable_dup (D.46144_73, "rtp_timeout_sec", 1, -1);
  # DEBUG val => val_74
  if (val_74 != 0B)
    goto <bb 33>;
  else
    goto <bb 35>;

<bb 33>:
  # DEBUG __nptr => val_74
  v_431 = strtol (val_74, 0B, 10);
  # DEBUG v => NULL
  if (v_431 >= 0)
    goto <bb 35>;
  else
    goto <bb 34>;

<bb 34>:

<bb 35>:
  # rtp_timeout_sec_4 = PHI <0(32), 0(34), v_431(33)>
  # DEBUG rtp_timeout_sec => rtp_timeout_sec_4
  D.46144_77 = session_13(D)->channel;
  val_78 = switch_channel_get_variable_dup (D.46144_77, "rtp_hold_timeout_sec", 1, -1);
  # DEBUG val => val_78
  if (val_78 != 0B)
    goto <bb 36>;
  else
    goto <bb 38>;

<bb 36>:
  # DEBUG __nptr => val_78
  v_432 = strtol (val_78, 0B, 10);
  # DEBUG v => NULL
  if (v_432 >= 0)
    goto <bb 38>;
  else
    goto <bb 37>;

<bb 37>:

<bb 38>:
  # rtp_hold_timeout_sec_5 = PHI <0(35), 0(37), v_432(36)>
  # DEBUG rtp_hold_timeout_sec => rtp_hold_timeout_sec_5
  if (rtp_timeout_sec_4 != 0)
    goto <bb 39>;
  else
    goto <bb 41>;

<bb 39>:
  D.46200_81 = engine_21->read_impl.samples_per_second;
  rtp_timeout_sec.130_82 = (uint32_t) rtp_timeout_sec_4;
  D.46202_83 = D.46200_81 * rtp_timeout_sec.130_82;
  D.46203_84 = engine_21->read_impl.samples_per_packet;
  D.46204_85 = D.46202_83 / D.46203_84;
  engine_21->max_missed_packets = D.46204_85;
  D.46139_86 = engine_21->rtp_session;
  switch_rtp_set_max_missed_packets (D.46139_86, D.46204_85);
  if (rtp_hold_timeout_sec_5 == 0)
    goto <bb 40>;
  else
    goto <bb 113>;

<bb 40>:
  rtp_hold_timeout_sec_88 = rtp_timeout_sec_4 * 10;
  # DEBUG rtp_hold_timeout_sec => rtp_hold_timeout_sec_88
  goto <bb 113>;

<bb 41>:
  # rtp_hold_timeout_sec_6 = PHI <rtp_hold_timeout_sec_5(38)>
  # DEBUG rtp_hold_timeout_sec => rtp_hold_timeout_sec_6
  if (rtp_hold_timeout_sec_6 != 0)
    goto <bb 42>;
  else
    goto <bb 43>;

<bb 42>:
  # rtp_hold_timeout_sec_501 = PHI <rtp_hold_timeout_sec_6(41), rtp_hold_timeout_sec_468(113)>
  D.46200_89 = engine_21->read_impl.samples_per_second;
  rtp_hold_timeout_sec.131_90 = (uint32_t) rtp_hold_timeout_sec_501;
  D.46211_91 = D.46200_89 * rtp_hold_timeout_sec.131_90;
  D.46203_92 = engine_21->read_impl.samples_per_packet;
  D.46212_93 = D.46211_91 / D.46203_92;
  engine_21->max_missed_hold_packets = D.46212_93;

<bb 43>:
  engine_21->check_frames = 0;
  engine_21->last_ts = 0;
  # DEBUG do_cng => 1
  # DEBUG do_cng => 1
  D.46161_95 = D.46161_43;
  *frame_52(D) = D.46161_95;
  D.46172_97 = D.46161_43;
  D.46173_98 = D.46172_97->flags;
  D.46174_99 = D.46173_98 | 1;
  D.46172_97->flags = D.46174_99;
  D.46172_100 = D.46161_43;
  D.46175_101 = engine_21->read_impl.encoded_bytes_per_packet;
  D.46172_100->datalen = D.46175_101;
  D.46172_102 = D.46161_43;
  D.46176_103 = D.46172_102->data;
  memset (D.46176_103, 0, D.46175_101);
  # DEBUG status => 0
  goto <bb 110> (end);

<bb 44>:
  # DEBUG do_cng => 0
  D.46139_107 = engine_21->rtp_session;
  D.46215_108 = switch_rtcp_zerocopy_read_frame (D.46139_107, &rtcp_frame);
  if (D.46215_108 == 0)
    goto <bb 45>;
  else
    goto <bb 51>;

<bb 45>:
  D.46218_109 = switch_event_create_subclass_detailed ("src/switch_core_media.c", &__func__, 1747, &event, 71, 0B);
  if (D.46218_109 == 0)
    goto <bb 46>;
  else
    goto <bb 51>;

<bb 46>:
  uuid_110 = switch_core_session_get_uuid (session_13(D));
  # DEBUG uuid => uuid_110
  if (uuid_110 != 0B)
    goto <bb 47>;
  else
    goto <bb 48>;

<bb 47>:
  event.132_111 = event;
  D.46224_112 = switch_core_session_get_uuid (session_13(D));
  switch_event_add_header_string (event.132_111, 1, "Unique-ID", D.46224_112);

<bb 48>:
  D.46226_114 = rtcp_frame.ssrc;
  snprintf (&value, 30, &"%.8x"[0], D.46226_114);
  event.132_115 = event;
  switch_event_add_header_string (event.132_115, 1, "SSRC", &value);
  D.46228_117 = rtcp_frame.ntp_msw;
  snprintf (&value, 30, &"%u"[0], D.46228_117);
  event.132_118 = event;
  switch_event_add_header_string (event.132_118, 1, "NTP-Most-Significant-Word", &value);
  D.46229_120 = rtcp_frame.ntp_lsw;
  snprintf (&value, 30, &"%u"[0], D.46229_120);
  event.132_121 = event;
  switch_event_add_header_string (event.132_121, 1, "NTP-Least-Significant-Word", &value);
  D.46230_123 = rtcp_frame.timestamp;
  snprintf (&value, 30, &"%u"[0], D.46230_123);
  event.132_124 = event;
  switch_event_add_header_string (event.132_124, 1, "RTP-Timestamp", &value);
  D.46231_126 = rtcp_frame.packet_count;
  snprintf (&value, 30, &"%u"[0], D.46231_126);
  event.132_127 = event;
  switch_event_add_header_string (event.132_127, 1, "Sender-Packet-Count", &value);
  D.46232_129 = rtcp_frame.octect_count;
  snprintf (&value, 30, &"%u"[0], D.46232_129);
  event.132_130 = event;
  switch_event_add_header_string (event.132_130, 1, "Octect-Packet-Count", &value);
  D.46234_132 = engine_21->read_frame.timestamp;
  snprintf (&value, 30, &"%d"[0], D.46234_132);
  event.132_133 = event;
  switch_event_add_header_string (event.132_133, 1, "Last-RTP-Timestamp", &value);
  D.46235_135 = engine_21->read_frame.rate;
  snprintf (&value, 30, &"%u"[0], D.46235_135);
  event.132_136 = event;
  switch_event_add_header_string (event.132_136, 1, "RTP-Rate", &value);
  D.46237_138 = switch_time_now ();
  snprintf (&value, 30, &"%lld"[0], D.46237_138);
  event.132_139 = event;
  switch_event_add_header_string (event.132_139, 1, "Capture-Time", &value);
  # DEBUG i => 0
  # DEBUG i => 0
  D.46253_469 = rtcp_frame.report_count;
  D.46254_502 = (int) D.46253_469;
  if (D.46254_502 > 0)
    goto <bb 49>;
  else
    goto <bb 50>;

<bb 49>:
  # i_438 = PHI <i_172(49), 0(48)>
  snprintf (&header, 50, &"Source%u-SSRC"[0], i_438);
  D.46239_145 = rtcp_frame.reports[i_438].ssrc;
  snprintf (&value, 30, &"%.8x"[0], D.46239_145);
  event.132_146 = event;
  switch_event_add_header_string (event.132_146, 1, &header, &value);
  snprintf (&header, 50, &"Source%u-Fraction"[0], i_438);
  D.46241_149 = rtcp_frame.reports[i_438].fraction;
  D.46242_150 = (int) D.46241_149;
  snprintf (&value, 30, &"%u"[0], D.46242_150);
  event.132_151 = event;
  switch_event_add_header_string (event.132_151, 1, &header, &value);
  snprintf (&header, 50, &"Source%u-Lost"[0], i_438);
  D.46244_154 = rtcp_frame.reports[i_438].lost;
  snprintf (&value, 30, &"%u"[0], D.46244_154);
  event.132_155 = event;
  switch_event_add_header_string (event.132_155, 1, &header, &value);
  snprintf (&header, 50, &"Source%u-Highest-Sequence-Number-Received"[0], i_438);
  D.46246_158 = rtcp_frame.reports[i_438].highest_sequence_number_received;
  snprintf (&value, 30, &"%u"[0], D.46246_158);
  event.132_159 = event;
  switch_event_add_header_string (event.132_159, 1, &header, &value);
  snprintf (&header, 50, &"Source%u-Jitter"[0], i_438);
  D.46248_162 = rtcp_frame.reports[i_438].jitter;
  snprintf (&value, 30, &"%u"[0], D.46248_162);
  event.132_163 = event;
  switch_event_add_header_string (event.132_163, 1, &header, &value);
  snprintf (&header, 50, &"Source%u-LSR"[0], i_438);
  D.46250_166 = rtcp_frame.reports[i_438].lsr;
  snprintf (&value, 30, &"%u"[0], D.46250_166);
  event.132_167 = event;
  switch_event_add_header_string (event.132_167, 1, &header, &value);
  snprintf (&header, 50, &"Source%u-DLSR"[0], i_438);
  D.46252_170 = rtcp_frame.reports[i_438].dlsr;
  snprintf (&value, 30, &"%u"[0], D.46252_170);
  event.132_171 = event;
  switch_event_add_header_string (event.132_171, 1, &header, &value);
  i_172 = i_438 + 1;
  # DEBUG i => i_172
  # DEBUG i => i_172
  D.46253_141 = rtcp_frame.report_count;
  D.46254_142 = (int) D.46253_141;
  if (D.46254_142 > i_172)
    goto <bb 49>;
  else
    goto <bb 50>;

<bb 50>:
  switch_event_fire_detailed ("src/switch_core_media.c", &__func__, 1809, &event, 0B);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1810, session_13(D), 110, "Dispatched RTCP event\n");

<bb 51>:
Invalid sum of incoming frequencies 419, should be 520
  D.46255_173 = engine_21->read_frame.flags;
  D.46256_174 = D.46255_173 & 32;
  if (D.46256_174 != 0)
    goto <bb 52>;
  else
    goto <bb 53>;

<bb 52>:
  # D.46161_254 = PHI <D.46161_43(51)>
  D.46161_175 = D.46161_254;
  *frame_52(D) = D.46161_175;
  # DEBUG status => 0
  goto <bb 110> (end);

<bb 53>:
  D.46139_177 = engine_21->rtp_session;
  D.46259_178 = switch_rtp_has_dtmf (D.46139_177);
  if (D.46259_178 != 0)
    goto <bb 54>;
  else
    goto <bb 55>;

<bb 54>:
  dtmf = {};
  D.46139_179 = engine_21->rtp_session;
  switch_rtp_dequeue_dtmf (D.46139_179, &dtmf);
  D.46144_180 = session_13(D)->channel;
  switch_channel_queue_dtmf (D.46144_180, &dtmf);

<bb 55>:
  D.46262_181 = engine_21->read_frame.datalen;
  if (D.46262_181 != 0)
    goto <bb 56>;
  else
    goto <bb 104>;

<bb 56>:
  # DEBUG bytes => 0
  # DEBUG frames => 1
  D.46255_184 = engine_21->read_frame.flags;
  D.46265_185 = D.46255_184 & 1;
  if (D.46265_185 == 0)
    goto <bb 57>;
  else
    goto <bb 107>;

<bb 57>:
  D.46135_186 = engine_21->read_codec.implementation;
  if (D.46135_186 == 0B)
    goto <bb 62>;
  else
    goto <bb 58>;

<bb 58>:
  # DEBUG codec => D#69
  D.47791_433 = MEM[(struct switch_codec_t *)engine_21 + 1524B].flags;
  D.47790_434 = D.47791_433 & 256;
  if (D.47790_434 != 0)
    goto <bb 59>;
  else
    goto <bb 62>;

<bb 59>:
  D.47789_435 = MEM[(struct switch_codec_t *)engine_21 + 1524B].mutex;
  if (D.47789_435 != 0B)
    goto <bb 60>;
  else
    goto <bb 62>;

<bb 60>:
  D.47788_436 = MEM[(struct switch_codec_t *)engine_21 + 1524B].codec_interface;
  if (D.47788_436 != 0B)
    goto <bb 61>;
  else
    goto <bb 62>;

<bb 61>:
  D.46272_189 = smh_14->media_flags[2];
  if (D.46272_189 != 0)
    goto <bb 63>;
  else
    goto <bb 83>;

<bb 62>:
Invalid sum of incoming frequencies 138, should be 10
  *frame_52(D) = 0B;
  # DEBUG status => 9
  goto <bb 110> (end);

<bb 63>:
  D.46275_190 = engine_21->check_frames;
  if (D.46275_190 <= 49)
    goto <bb 64>;
  else
    goto <bb 83>;

<bb 64>:
  D.46278_192 = D.46275_190 + 1;
  engine_21->check_frames = D.46278_192;
  D.46175_193 = engine_21->read_impl.encoded_bytes_per_packet;
  if (D.46175_193 == 0)
    goto <bb 65>;
  else
    goto <bb 66>;

<bb 65>:
  engine_21->check_frames = 50;
  goto <bb 101> (skip);

<bb 66>:
  D.46284_196 = D.46262_181 % 10;
  if (D.46284_196 == 0)
    goto <bb 67>;
  else
    goto <bb 82>;

<bb 67>:
  D.46288_197 = engine_21->last_ts;
  if (D.46288_197 != 0)
    goto <bb 68>;
  else
    goto <bb 80>;

<bb 68>:
  if (D.46262_181 != D.46175_193)
    goto <bb 69>;
  else
    goto <bb 80>;

<bb 69>:
  D.46234_200 = engine_21->read_frame.timestamp;
  D.46291_202 = D.46234_200 - D.46288_197;
  D.46200_203 = engine_21->read_impl.samples_per_second;
  D.46292_204 = D.46200_203 / 1000;
  codec_ms_205 = D.46291_202 / D.46292_204;
  # DEBUG codec_ms => codec_ms_205
  D.46295_206 = codec_ms_205 % 10;
  if (D.46295_206 != 0)
    goto <bb 71>;
  else
    goto <bb 70>;

<bb 70>:
  D.46203_207 = engine_21->read_impl.samples_per_packet;
  D.46297_208 = D.46203_207 * 10;
  if (D.46297_208 < codec_ms_205)
    goto <bb 71>;
  else
    goto <bb 72>;

<bb 71>:
  engine_21->last_ts = 0;
  goto <bb 101> (skip);

<bb 72>:
  D.46298_209 = engine_21->last_codec_ms;
  if (D.46298_209 != 0)
    goto <bb 73>;
  else
    goto <bb 75>;

<bb 73>:
  if (codec_ms_205 == D.46298_209)
    goto <bb 74>;
  else
    goto <bb 75>;

<bb 74>:
  D.46303_211 = engine_21->mismatch_count;
  D.46304_212 = D.46303_211 + 1;
  engine_21->mismatch_count = D.46304_212;

<bb 75>:
  engine_21->last_codec_ms = codec_ms_205;
  D.46303_213 = engine_21->mismatch_count;
  if (D.46303_213 > 5)
    goto <bb 76>;
  else
    goto <bb 81>;

<bb 76>:
  D.46307_214 = engine_21->cur_payload_map;
  D.46308_215 = D.46307_214->codec_ms;
  if (D.46308_215 != codec_ms_205)
    goto <bb 77>;
  else
    goto <bb 81>;

<bb 77>:
  if (codec_ms_205 > 120)
    goto <bb 78>;
  else
    goto <bb 79>;

<bb 78>:
  codec_ms.133_216 = (int) codec_ms_205;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1871, session_13(D), 4, "Your phone is trying to send timestamps that suggest an increment of %dms per packet\nThat seems hard to believe so I am going to go on ahead and um ignore that, mmkay?\n", codec_ms.133_216);
  engine_21->check_frames = 50;
  goto <bb 101> (skip);

<bb 79>:
  engine_21->read_frame.datalen = 0;
  D.46316_221 = (int) D.46308_215;
  codec_ms.133_222 = (int) codec_ms_205;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1882, session_13(D), 4, "Asynchronous PTIME not supported, changing our end from %d to %d\n", D.46316_221, codec_ms.133_222);
  D.46144_223 = session_13(D)->channel;
  D.46307_224 = engine_21->cur_payload_map;
  D.46308_225 = D.46307_224->codec_ms;
  D.46316_226 = (int) D.46308_225;
  switch_channel_set_variable_printf (D.46144_223, "rtp_h_X-Broken-PTIME", "Adv=%d;Sent=%d", D.46316_226, codec_ms.133_222);
  D.46307_228 = engine_21->cur_payload_map;
  D.46307_228->codec_ms = codec_ms_205;
  engine_21->reset_codec = 2;
  goto <bb 81>;

<bb 80>:
  engine_21->mismatch_count = 0;

<bb 81>:
  D.46234_229 = engine_21->read_frame.timestamp;
  engine_21->last_ts = D.46234_229;
  goto <bb 83>;

<bb 82>:
  engine_21->mismatch_count = 0;
  engine_21->last_ts = 0;

<bb 83>:
  D.46178_230 = engine_21->reset_codec;
  if (D.46178_230 == 0)
    goto <bb 84>;
  else
    goto <bb 101> (skip);

<bb 84>:
  D.46323_231 = engine_21->codec_negotiated;
  if (D.46323_231 != 0)
    goto <bb 85>;
  else
    goto <bb 101> (skip);

<bb 85>:
  D.46326_232 = smh_14->mparams;
  D.46327_233 = D.46326_232->cng_pt;
  if (D.46327_233 == 0)
    goto <bb 87>;
  else
    goto <bb 86>;

<bb 86>:
  D.46329_234 = engine_21->read_frame.payload;
  if (D.46327_233 != D.46329_234)
    goto <bb 87>;
  else
    goto <bb 101> (skip);

<bb 87>:
  D.46330_238 = D.46326_232->recv_te;
  if (D.46330_238 == 0)
    goto <bb 89>;
  else
    goto <bb 88>;

<bb 88>:
  D.46329_239 = engine_21->read_frame.payload;
  if (D.46330_238 != D.46329_239)
    goto <bb 89>;
  else
    goto <bb 101> (skip);

<bb 89>:
  D.46332_243 = D.46326_232->te;
  if (D.46332_243 == 0)
    goto <bb 91>;
  else
    goto <bb 90>;

<bb 90>:
  D.46329_244 = engine_21->read_frame.payload;
  if (D.46332_243 != D.46329_244)
    goto <bb 91>;
  else
    goto <bb 101> (skip);

<bb 91>:
  D.46329_247 = engine_21->read_frame.payload;
  D.46307_248 = engine_21->cur_payload_map;
  D.46334_249 = D.46307_248->recv_pt;
  if (D.46329_247 != D.46334_249)
    goto <bb 92>;
  else
    goto <bb 101> (skip);

<bb 92>:
  D.46337_252 = D.46307_248->agreed_pt;
  if (D.46329_247 != D.46337_252)
    goto <bb 93>;
  else
    goto <bb 101> (skip);

<bb 93>:
  D.46340_255 = D.46307_248->pt;
  if (D.46329_247 != D.46340_255)
    goto <bb 94>;
  else
    goto <bb 101> (skip);

<bb 94>:
  D.46343_257 = (int) D.46329_247;
  D.46344_260 = (int) D.46337_252;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1926, session_13(D), 7, "alternate payload received (received %d, expecting %d)\n", D.46343_257, D.46344_260);
  D.46345_261 = smh_14->sdp_mutex;
  switch_mutex_lock (D.46345_261);
  pmap_262 = engine_21->payload_map;
  # DEBUG pmap => pmap_262
  # DEBUG pmap => pmap_262
  if (pmap_262 != 0B)
    goto <bb 95>;
  else
    goto <bb 99>;

<bb 95>:
  # pmap_187 = PHI <pmap_270(98), pmap_262(94)>
  D.46329_263 = engine_21->read_frame.payload;
  D.46346_264 = pmap_187->recv_pt;
  if (D.46329_263 == D.46346_264)
    goto <bb 96>;
  else
    goto <bb 98>;

<bb 96>:
  D.46349_265 = pmap_187->negotiated;
  if (D.46349_265 != 0)
    goto <bb 97>;
  else
    goto <bb 98>;

<bb 97>:
  # pmap_258 = PHI <pmap_187(96)>
  engine_21->cur_payload_map = pmap_258;
  D.46307_266 = pmap_258;
  D.46307_266->current = 1;
  D.46352_267 = pmap_258->iananame;
  D.46353_268 = pmap_258->pt;
  D.46354_269 = (int) D.46353_268;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1937, session_13(D), 4, "Changing current codec to %s (payload type %d).\n", D.46352_267, D.46354_269);
  engine_21->reset_codec = 1;
  goto <bb 99>;

<bb 98>:
  pmap_270 = pmap_187->next;
  # DEBUG pmap => pmap_270
  # DEBUG pmap => pmap_270
  if (pmap_270 != 0B)
    goto <bb 95>;
  else
    goto <bb 99>;

<bb 99>:
  D.46345_271 = smh_14->sdp_mutex;
  switch_mutex_unlock (D.46345_271);
  D.46178_272 = engine_21->reset_codec;
  if (D.46178_272 == 0)
    goto <bb 100>;
  else
    goto <bb 101> (skip);

<bb 100>:
  D.46329_273 = engine_21->read_frame.payload;
  D.46343_274 = (int) D.46329_273;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1949, session_13(D), 4, "Could not change to payload type %d, ignoring...\n", D.46343_274);

skip:
  bytes_275 = engine_21->read_impl.encoded_bytes_per_packet;
  # DEBUG bytes => bytes_275
  if (bytes_275 != 0)
    goto <bb 102>;
  else
    goto <bb 103>;

<bb 102>:
  D.46262_276 = engine_21->read_frame.datalen;
  D.46359_277 = D.46262_276 / bytes_275;
  frames_278 = (int) D.46359_277;
  # DEBUG frames => frames_278

<bb 103>:
  # frames_8 = PHI <1(101), frames_278(102)>
  # DEBUG frames => frames_8
  D.46203_279 = engine_21->read_impl.samples_per_packet;
  frames.134_280 = (uint32_t) frames_8;
  D.46361_281 = D.46203_279 * frames.134_280;
  engine_21->read_frame.samples = D.46361_281;
  D.46262_282 = engine_21->read_frame.datalen;
  if (D.46262_282 == 0)
    goto <bb 104>;
  else
    goto <bb 107>;

<bb 104>:

<bb 105>:
  # DEBUG do_cng => 0
  D.46128_40 = smh_14->media_flags[0];
  if (D.46128_40 != 0)
    goto <bb 106>;
  else
    goto <bb 107>;

<bb 106>:
  D.46262_41 = engine_21->read_frame.datalen;
  if (D.46262_41 == 0)
    goto <bb 21>;
  else
    goto <bb 107>;

<bb 107>:
  D.46262_284 = engine_21->read_frame.datalen;
  if (D.46262_284 == 0)
    goto <bb 108>;
  else
    goto <bb 109>;

<bb 108>:
  *frame_52(D) = 0B;

<bb 109>:
  D.46161_285 = &engine_21->read_frame;
  *frame_52(D) = D.46161_285;
  # DEBUG status => 0

Invalid sum of incoming frequencies 331, should be 190
  # status_1 = PHI <0(24), 2(25), 9(31), 0(43), 0(52), 9(62), 0(109), status_250(22)>
end:
  # DEBUG status => status_1
  D.46150_287 = engine_21->read_mutex[type_19(D)];
  if (D.46150_287 != 0B)
    goto <bb 111>;
  else
    goto <bb 112>;

<bb 111>:
  switch_mutex_unlock (D.46150_287);

<bb 112>:
Invalid sum of incoming frequencies 11118, should be 9995
  # status_10 = PHI <1(4), 1(5), 1(9), 1(13), 10(20), status_1(111), 1(6), 1(12), 1(14), status_1(110), 1(7), 1(8)>
  return status_10;

<bb 113>:
  # rtp_hold_timeout_sec_468 = PHI <rtp_hold_timeout_sec_88(40), rtp_hold_timeout_sec_5(39)>
  # DEBUG rtp_hold_timeout_sec => rtp_hold_timeout_sec_468
  goto <bb 42>;

}



;; Function switch_core_media_add_ice_acl (switch_core_media_add_ice_acl)

switch_core_media_add_ice_acl (struct switch_core_session_t * session, switch_media_type_t type, const char * acl_name)
{
  static const char __func__[30] = "switch_core_media_add_ice_acl";
  static const char __PRETTY_FUNCTION__[30] = "switch_core_media_add_ice_acl";
  struct switch_rtp_engine_t * engine;
  struct switch_media_handle_t * smh;
  char * D.45899;
  int D.45898;
  int D.45895;
  switch_status_t D.45892;

<bb 2>:
  if (session_2(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 2379, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_3 = session_2(D)->media_handle;
  # DEBUG smh => smh_3
  if (smh_3 == 0B)
    goto <bb 7>;
  else
    goto <bb 5>;

<bb 5>:
  engine_8 = &smh_3->engines[type_6(D)]{lb: 0 sz: 11416};
  # DEBUG engine => engine_8
  D.45895_9 = engine_8->cand_acl_count;
  if (D.45895_9 <= 24)
    goto <bb 6>;
  else
    goto <bb 7>;

<bb 6>:
  D.45899_12 = switch_core_perform_session_strdup (session_2(D), acl_name_11(D), "src/switch_core_media.c", &__func__, 2388);
  engine_8->cand_acl[D.45895_9] = D.45899_12;
  D.45898_13 = D.45895_9 + 1;
  engine_8->cand_acl_count = D.45898_13;

<bb 7>:
  # D.45892_1 = PHI <1(4), 0(6), 1(5)>
  return D.45892_1;

}



;; Function switch_core_media_check_video_codecs (switch_core_media_check_video_codecs)

switch_core_media_check_video_codecs (struct switch_core_session_t * session)
{
  int i;
  static const char __PRETTY_FUNCTION__[37] = "switch_core_media_check_video_codecs";
  struct switch_media_handle_t * smh;
  int D.45884;
  int D.45883;
  uint32_t D.45880;
  switch_call_direction_t D.45877;
  const switch_codec_type_t D.45874;
  const struct switch_codec_implementation_t * D.45873;
  uint32_t D.45870;
  struct switch_channel_t * D.45869;
  int D.45866;
  struct switch_core_media_params_t * D.45865;

<bb 2>:
  if (session_2(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 2400, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_3 = session_2(D)->media_handle;
  # DEBUG smh => smh_3
  if (smh_3 == 0B)
    goto <bb 15>;
  else
    goto <bb 5>;

<bb 5>:
  D.45865_4 = smh_3->mparams;
  D.45866_5 = D.45865_4->num_codecs;
  if (D.45866_5 != 0)
    goto <bb 6>;
  else
    goto <bb 15>;

<bb 6>:
  D.45869_6 = session_2(D)->channel;
  D.45870_7 = switch_channel_test_flag (D.45869_6, 98);
  if (D.45870_7 == 0)
    goto <bb 7>;
  else
    goto <bb 15>;

<bb 7>:
  smh_3->video_count = 0;
  # DEBUG i => 0
  # DEBUG i => 0
  D.45865_32 = smh_3->mparams;
  D.45866_35 = D.45865_32->num_codecs;
  if (D.45866_35 > 0)
    goto <bb 8>;
  else
    goto <bb 13>;

<bb 8>:
  # i_33 = PHI <i_19(12), 0(7)>
  D.45873_11 = smh_3->codecs[i_33];
  D.45874_12 = D.45873_11->codec_type;
  if (D.45874_12 == 1)
    goto <bb 9>;
  else
    goto <bb 12>;

<bb 9>:
  D.45869_13 = session_2(D)->channel;
  D.45877_14 = switch_channel_direction (D.45869_13);
  if (D.45877_14 == 0)
    goto <bb 10>;
  else
    goto <bb 11>;

<bb 10>:
  D.45869_15 = session_2(D)->channel;
  D.45880_16 = switch_channel_test_flag (D.45869_15, 114);
  if (D.45880_16 != 0)
    goto <bb 12>;
  else
    goto <bb 11>;

<bb 11>:
  D.45883_17 = smh_3->video_count;
  D.45884_18 = D.45883_17 + 1;
  smh_3->video_count = D.45884_18;

<bb 12>:
  i_19 = i_33 + 1;
  # DEBUG i => i_19
  # DEBUG i => i_19
  D.45865_9 = smh_3->mparams;
  D.45866_10 = D.45865_9->num_codecs;
  if (D.45866_10 > i_19)
    goto <bb 8>;
  else
    goto <bb 13>;

<bb 13>:
  D.45883_20 = smh_3->video_count;
  if (D.45883_20 != 0)
    goto <bb 14>;
  else
    goto <bb 15>;

<bb 14>:
  D.45869_21 = session_2(D)->channel;
  switch_channel_set_flag_value (D.45869_21, 98, 1);

<bb 15>:
  return;

}



;; Function switch_ice_direction (switch_ice_direction)

switch_ice_direction (struct switch_core_session_t * session)
{
  switch_call_direction_t r;
  uint32_t D.45856;
  uint32_t D.45855;
  uint32_t D.45853;
  uint32_t D.45848;
  struct switch_channel_t * D.45847;

<bb 2>:
  D.45847_4 = session_3(D)->channel;
  r_5 = switch_channel_direction (D.45847_4);
  # DEBUG r => r_5
  D.45847_6 = session_3(D)->channel;
  D.45848_7 = switch_channel_test_flag (D.45847_6, 112);
  if (D.45848_7 != 0)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  r_8 = r_5 == 0;
  # DEBUG r => r_8

<bb 4>:
  # r_1 = PHI <r_5(2), r_8(3)>
  # DEBUG r => r_1
  D.45847_9 = session_3(D)->channel;
  D.45853_10 = switch_channel_test_flag (D.45847_9, 103);
  if (D.45853_10 != 0)
    goto <bb 6>;
  else
    goto <bb 5>;

<bb 5>:
  D.45847_11 = session_3(D)->channel;
  D.45855_12 = switch_channel_test_flag (D.45847_11, 84);
  if (D.45855_12 != 0)
    goto <bb 6>;
  else
    goto <bb 8>;

<bb 6>:
  D.45847_13 = session_3(D)->channel;
  D.45856_14 = switch_channel_test_flag (D.45847_13, 106);
  if (D.45856_14 != 0)
    goto <bb 7>;
  else
    goto <bb 8>;

<bb 7>:
  # DEBUG r => 1

<bb 8>:
  # r_2 = PHI <r_1(5), r_1(6), 1(7)>
  # DEBUG r => r_2
  return r_2;

}



;; Function check_dtls_reinvite (check_dtls_reinvite)

check_dtls_reinvite (struct switch_core_session_t * session, struct switch_rtp_engine_t * engine)
{
  dtls_type_t dtype;
  dtls_type_t xtype;
  unsigned int D.49440;
  struct dtls_fingerprint_t * D.49439;
  struct dtls_fingerprint_t * D.49438;
  struct switch_rtp_t * D.49437;
  int8_t D.49436;
  switch_media_type_t D.49435;
  char * iftmp.75;
  switch_call_direction_t D.49433;
  const char D.47800;
  int D.43916;
  int D.43913;
  char[192] * D.43909;
  uint32_t D.43906;
  struct switch_channel_t * D.43905;

<bb 2>:
  D.43905_5 = session_4(D)->channel;
  D.43906_6 = switch_channel_test_flag (D.43905_5, 103);
  if (D.43906_6 != 0)
    goto <bb 3>;
  else
    goto <bb 14>;

<bb 3>:
  D.43909_8 = &engine_7(D)->local_dtls_fingerprint.str;
  # DEBUG s => D.43909_8
  if (D.43909_8 == 0B)
    goto <bb 14>;
  else
    goto <bb 4>;

<bb 4>:
  D.47800_40 = MEM[(const char *)engine_7(D) + 10904B];
  if (D.47800_40 == 0)
    goto <bb 14>;
  else
    goto <bb 15>;

<bb 5>:
  D.43916_11 = dtls_ok (session_4(D));
  if (D.43916_11 != 0)
    goto <bb 6>;
  else
    goto <bb 14>;

<bb 6>:
  # DEBUG session => session_4(D)
  # DEBUG engine => engine_7(D)
  D.49433_43 = switch_ice_direction (session_4(D));
  if (D.49433_43 == 0)
    goto <bb 8>;
  else
    goto <bb 7>;

<bb 7>:

<bb 8>:
  # dtype_51 = PHI <1(6), 2(7)>
  # DEBUG dtype => dtype_51
  D.49435_44 = engine_7(D)->type;
  if (D.49435_44 == 1)
    goto <bb 10>;
  else
    goto <bb 9>;

<bb 9>:

<bb 10>:
  # iftmp.75_45 = PHI <"video"(8), "audio"(9)>
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4701, session_4(D), 6, "RE-SETTING %s DTLS\n", iftmp.75_45);
  # DEBUG xtype => 4
  D.49436_46 = engine_7(D)->rtcp_mux;
  if (D.49436_46 > 0)
    goto <bb 11>;
  else
    goto <bb 12>;

<bb 11>:
  # DEBUG xtype => 12

<bb 12>:
  # xtype_50 = PHI <4(10), 12(11)>
  # DEBUG xtype => xtype_50
  D.49437_47 = engine_7(D)->rtp_session;
  D.49438_48 = &engine_7(D)->local_dtls_fingerprint;
  D.49439_49 = &engine_7(D)->remote_dtls_fingerprint;
  D.49440_52 = xtype_50 | dtype_51;
  switch_rtp_add_dtls (D.49437_47, D.49438_48, D.49439_49, D.49440_52);
  D.49436_53 = engine_7(D)->rtcp_mux;
  if (D.49436_53 <= 0)
    goto <bb 13>;
  else
    goto <bb 14>;

<bb 13>:
  # DEBUG xtype => 8
  D.49437_54 = engine_7(D)->rtp_session;
  D.49440_57 = dtype_51 | 8;
  switch_rtp_add_dtls (D.49437_54, D.49438_48, D.49439_49, D.49440_57);

<bb 14>:
  return;

<bb 15>:
  D.43913_10 = switch_rtp_has_dtls ();
  if (D.43913_10 != 0)
    goto <bb 5>;
  else
    goto <bb 14>;

}



;; Function check_ice (check_ice)

check_ice (struct switch_media_handle_t * smh, switch_media_type_t type, struct sdp_session_t * sdp, struct sdp_media_t * m)
{
  int D.47861;
  const char D.47858;
  const char D.47854;
  int D.47850;
  int D.47847;
  long int D.47844;
  int D.47841;
  int D.47838;
  long int D.47835;
  const char D.47832;
  const char D.47828;
  int interval;
  switch_port_t remote_rtcp_port;
  const char * rport;
  char tmp[80];
  char * p;
  int cid;
  int j;
  int argc;
  char * fields[15];
  char * data;
  static const char __func__[10] = "check_ice";
  const char * val;
  int got_rtcp_mux;
  int i;
  struct sdp_attribute_t * attr;
  struct switch_rtp_engine_t * engine;
  switch_call_direction_t D.45835;
  switch_core_media_ice_type_t iftmp.126;
  char * iftmp.125;
  char * iftmp.124;
  int D.38904;
  char * iftmp.123;
  unsigned int D.45812;
  unsigned int interval.122;
  switch_bool_t D.45809;
  int8_t D.45808;
  int D.45807;
  char * iftmp.121;
  int D.45800;
  _Bool D.45796;
  _Bool D.45795;
  _Bool D.45794;
  char[27] * iftmp.120;
  struct switch_core_media_params_t * D.45788;
  char[25] * iftmp.118;
  struct ice_t * D.45775;
  switch_call_direction_t D.45771;
  switch_core_media_ice_type_t iftmp.117;
  char * D.45769;
  char * D.45768;
  char * iftmp.116;
  uint8_t D.45759;
  uint32_t D.45756;
  _Bool D.45753;
  _Bool D.45752;
  _Bool D.45751;
  char * D.45750;
  char * iftmp.115;
  char * D.45743;
  int D.45742;
  switch_port_t D.45739;
  char * D.45738;
  char * D.45737;
  int D.45736;
  char * iftmp.114;
  char * D.45731;
  switch_port_t D.45728;
  char * D.45725;
  char * D.45723;
  char * D.45720;
  uint8_t D.45715;
  int D.45714;
  char * iftmp.113;
  char * iftmp.112;
  int D.45693;
  switch_port_t D.45692;
  char * D.45691;
  char * iftmp.111;
  const void * restrict D.45686;
  void * restrict D.45682;
  unsigned int D.45681;
  unsigned int D.45680;
  unsigned int D.45679;
  void * restrict D.45678;
  struct icand_t * D.45677;
  _Bool D.45674;
  _Bool D.45673;
  _Bool D.45672;
  char * iftmp.110;
  char * iftmp.109;
  char * iftmp.108;
  uint8_t D.45639;
  uint8_t D.45638;
  switch_bool_t D.45635;
  char * D.45634;
  switch_port_t D.45631;
  int D.45628;
  char * iftmp.107;
  uint8_t D.45621;
  uint8_t D.45620;
  switch_bool_t D.45617;
  char * D.45616;
  switch_port_t D.45613;
  int D.45610;
  uint8_t D.45605;
  uint8_t D.45604;
  char * D.45600;
  int D.45597;
  short unsigned int D.45595;
  int D.45591;
  char * D.45589;
  int D.45586;
  char * D.45584;
  char * D.45583;
  int D.45582;
  int D.45579;
  char * D.45578;
  short unsigned int D.45577;
  char * D.45575;
  uint32_t D.45574;
  char * D.45572;
  char * D.45571;
  char * D.45569;
  char * D.45568;
  char * iftmp.106;
  char * iftmp.105;
  switch_bool_t D.45558;
  char * D.45557;
  int D.45555;
  int D.45552;
  char * D.45551;
  char * D.45550;
  char * D.45549;
  char * D.45548;
  char * D.45546;
  char * D.45544;
  int D.45543;
  unsigned int D.45539;
  const char * D.45536;
  int D.45532;
  int D.45529;
  switch_port_t D.45527;
  struct payload_map_t * D.45526;
  int D.45523;
  struct switch_rtp_t * D.45518;
  unsigned int D.45517;
  int D.45513;
  uint32_t D.45511;
  char[192] * D.45508;
  char * D.45504;
  int D.45500;
  int D.45498;
  int D.45496;
  char * D.45492;
  int D.45489;
  char * D.45487;
  int D.45484;
  char * D.45482;
  const char * D.45481;
  int D.45478;
  const char * D.45474;
  uint32_t D.45468;
  struct switch_channel_t * D.45467;
  struct switch_core_session_t * D.45466;
  int D.45463;
  int D.45460;

<bb 2>:
  engine_38 = &smh_34(D)->engines[type_36(D)]{lb: 0 sz: 11416};
  # DEBUG engine => engine_38
  # DEBUG i => 0
  # DEBUG got_rtcp_mux => 0
  D.45460_41 = engine_38->ice_in.chosen[0];
  if (D.45460_41 != 0)
    goto <bb 3>;
  else
    goto <bb 5>;

<bb 3>:
  D.45463_42 = engine_38->ice_in.chosen[1];
  if (D.45463_42 != 0)
    goto <bb 4>;
  else
    goto <bb 5>;

<bb 4>:
  D.45466_43 = smh_34(D)->session;
  D.45467_44 = D.45466_43->channel;
  D.45468_45 = switch_channel_test_flag (D.45467_44, 103);
  if (D.45468_45 == 0)
    goto <bb 181>;
  else
    goto <bb 5>;

<bb 5>:
  engine_38->ice_in.chosen[0] = 0;
  engine_38->ice_in.chosen[1] = 0;
  engine_38->ice_in.cand_idx = 0;
  if (m_46(D) != 0B)
    goto <bb 6>;
  else
    goto <bb 7>;

<bb 6>:
  attr_47 = m_46(D)->m_attributes;
  # DEBUG attr => attr_47
  goto <bb 8>;

<bb 7>:
  attr_49 = sdp_48(D)->sdp_attributes;
  # DEBUG attr => attr_49

<bb 8>:
  # attr_392 = PHI <attr_47(6), attr_49(7)>
  # DEBUG got_rtcp_mux => 0
  # DEBUG attr => attr_392
  if (attr_392 != 0B)
    goto <bb 9>;
  else
    goto <bb 64>;

<bb 9>:
  # attr_470 = PHI <attr_216(63), attr_392(8)>
  # got_rtcp_mux_108 = PHI <got_rtcp_mux_7(63), 0(8)>
  # DEBUG argc => 0
  # DEBUG j => 0
  # DEBUG cid => 0
  D.45474_53 = attr_470->a_name;
  # DEBUG s => D.45474_53
  if (D.45474_53 == 0B)
    goto <bb 63>;
  else
    goto <bb 10>;

<bb 10>:
  D.47828_640 = *D.45474_53;
  if (D.47828_640 == 0)
    goto <bb 63>;
  else
    goto <bb 182>;

<bb 11>:
Invalid sum of incoming frequencies 1105, should be 1300
  D.45466_57 = smh_34(D)->session;
  D.45481_58 = attr_470->a_value;
  D.45482_59 = switch_core_perform_session_strdup (D.45466_57, D.45481_58, "src/switch_core_media.c", &__func__, 2503);
  engine_38->ice_in.ufrag = D.45482_59;
  goto <bb 63>;

<bb 12>:
Invalid sum of incoming frequencies 2704, should be 3182
  D.45484_61 = strcasecmp (D.45474_53, "ice-pwd");
  if (D.45484_61 == 0)
    goto <bb 13>;
  else
    goto <bb 14>;

<bb 13>:
  D.45466_62 = smh_34(D)->session;
  D.45481_63 = attr_470->a_value;
  D.45487_64 = switch_core_perform_session_strdup (D.45466_62, D.45481_63, "src/switch_core_media.c", &__func__, 2505);
  engine_38->ice_in.pwd = D.45487_64;
  goto <bb 63>;

<bb 14>:
  D.45489_66 = strcasecmp (D.45474_53, "ice-options");
  if (D.45489_66 == 0)
    goto <bb 15>;
  else
    goto <bb 16>;

<bb 15>:
  D.45466_67 = smh_34(D)->session;
  D.45481_68 = attr_470->a_value;
  D.45492_69 = switch_core_perform_session_strdup (D.45466_67, D.45481_68, "src/switch_core_media.c", &__func__, 2507);
  engine_38->ice_in.options = D.45492_69;
  goto <bb 63>;

<bb 16>:
  D.45496_70 = switch_rtp_has_dtls ();
  if (D.45496_70 != 0)
    goto <bb 17>;
  else
    goto <bb 23>;

<bb 17>:
  D.45466_71 = smh_34(D)->session;
  D.45498_72 = dtls_ok (D.45466_71);
  if (D.45498_72 != 0)
    goto <bb 18>;
  else
    goto <bb 23>;

<bb 18>:
  D.45474_73 = attr_470->a_name;
  D.45500_74 = strcasecmp (D.45474_73, "fingerprint");
  if (D.45500_74 == 0)
    goto <bb 19>;
  else
    goto <bb 23>;

<bb 19>:
  D.45481_75 = attr_470->a_value;
  # DEBUG s => D.45481_75
  if (D.45481_75 == 0B)
    goto <bb 23>;
  else
    goto <bb 20>;

<bb 20>:
  D.47832_642 = *D.45481_75;
  if (D.47832_642 == 0)
    goto <bb 23>;
  else
    goto <bb 183>;

<bb 21>:
  *p_81 = 0;
  p_82 = p_81 + 1;
  # DEBUG p => p_82
  D.45508_83 = &engine_38->local_dtls_fingerprint.str;
  switch_copy_string (D.45508_83, p_82, 192);

<bb 22>:
  generate_local_fingerprint (smh_34(D), type_36(D));
  D.45466_84 = smh_34(D)->session;
  D.45467_85 = D.45466_84->channel;
  switch_channel_set_flag_value (D.45467_85, 109, 1);
  goto <bb 63>;

<bb 23>:
  D.45511_86 = engine_38->remote_ssrc;
  if (D.45511_86 == 0)
    goto <bb 24>;
  else
    goto <bb 29>;

<bb 24>:
  D.45474_87 = attr_470->a_name;
  D.45513_88 = strcasecmp (D.45474_87, "ssrc");
  if (D.45513_88 == 0)
    goto <bb 25>;
  else
    goto <bb 29>;

<bb 25>:
  D.45481_89 = attr_470->a_value;
  if (D.45481_89 != 0B)
    goto <bb 26>;
  else
    goto <bb 29>;

<bb 26>:
  # DEBUG __nptr => D.45481_89
  D.47835_644 = strtol (D.45481_89, 0B, 10);
  D.45517_92 = (unsigned int) D.47835_644;
  engine_38->remote_ssrc = D.45517_92;
  D.45518_93 = engine_38->rtp_session;
  if (D.45518_93 != 0B)
    goto <bb 27>;
  else
    goto <bb 63>;

<bb 27>:
  if (D.45517_92 != 0)
    goto <bb 28>;
  else
    goto <bb 63>;

<bb 28>:
  switch_rtp_set_remote_ssrc (D.45518_93, D.45517_92);
  goto <bb 63>;

<bb 29>:
  D.45474_97 = attr_470->a_name;
  D.45523_98 = strcasecmp (D.45474_97, "rtcp-mux");
  if (D.45523_98 == 0)
    goto <bb 30>;
  else
    goto <bb 31>;

<bb 30>:
  engine_38->rtcp_mux = 1;
  D.45526_99 = engine_38->cur_payload_map;
  D.45527_100 = D.45526_99->remote_sdp_port;
  engine_38->remote_rtcp_port = D.45527_100;
  got_rtcp_mux_101 = got_rtcp_mux_108 + 1;
  # DEBUG got_rtcp_mux => got_rtcp_mux_101
  goto <bb 63>;

<bb 31>:
  D.45529_103 = strcasecmp (D.45474_97, "candidate");
  if (D.45529_103 == 0)
    goto <bb 32>;
  else
    goto <bb 63>;

<bb 32>:
  D.45466_104 = smh_34(D)->session;
  D.45467_105 = D.45466_104->channel;
  switch_channel_set_flag_value (D.45467_105, 108, 1);
  D.45532_106 = engine_38->cand_acl_count;
  if (D.45532_106 == 0)
    goto <bb 33>;
  else
    goto <bb 34>;

<bb 33>:
  engine_38->cand_acl[0] = "wan.auto";
  engine_38->cand_acl_count = 1;
  D.45466_109 = smh_34(D)->session;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2548, D.45466_109, 4, "NO candidate ACL defined, Defaulting to wan.auto\n");

<bb 34>:
  D.45481_110 = attr_470->a_value;
  D.45536_111 = switch_stristr (" udp ", D.45481_110);
  if (D.45536_111 == 0B)
    goto <bb 63>;
  else
    goto <bb 35>;

<bb 35>:
  D.45466_112 = smh_34(D)->session;
  D.45481_113 = attr_470->a_value;
  data_114 = switch_core_perform_session_strdup (D.45466_112, D.45481_113, "src/switch_core_media.c", &__func__, 2556);
  # DEBUG data => data_114
  D.45539_115 = switch_separate_string (data_114, 32, &fields, 15);
  argc_116 = (int) D.45539_115;
  # DEBUG argc => argc_116
  if (argc_116 <= 4)
    goto <bb 37>;
  else
    goto <bb 36>;

<bb 36>:
  D.45543_117 = engine_38->ice_in.cand_idx;
  if (D.45543_117 > 48)
    goto <bb 37>;
  else
    goto <bb 38>;

<bb 37>:
  D.45466_215 = smh_34(D)->session;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2561, D.45466_215, 4, "Invalid data\n");
  goto <bb 63>;

<bb 38>:
  D.45544_118 = fields[1];
  # DEBUG __nptr => D.45544_118
  D.47838_645 = strtol (D.45544_118, 0B, 10);
  cid_120 = D.47838_645 + -1;
  # DEBUG cid => cid_120
  # DEBUG i => 0
  # DEBUG i => 0

<bb 39>:
  # i_761 = PHI <i_124(39), 0(38)>
  D.45466_122 = smh_34(D)->session;
  D.45546_123 = fields[i_761];
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2569, D.45466_122, 101, "CAND %d [%s]\n", i_761, D.45546_123);
  i_124 = i_761 + 1;
  # DEBUG i => i_124
  # DEBUG i => i_124
  if (argc_116 > i_124)
    goto <bb 39>;
  else
    goto <bb 40>;

<bb 40>:
  D.45466_125 = smh_34(D)->session;
  D.45548_127 = fields[2];
  D.45549_128 = fields[7];
  D.45550_129 = fields[4];
  D.45551_130 = fields[5];
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2572, D.45466_125, 7, "Checking Candidate cid: %d proto: %s type: %s addr: %s:%s\n", D.47838_645, D.45548_127, D.45549_128, D.45550_129, D.45551_130);
  D.45543_131 = engine_38->ice_in.cand_idx;
  D.45552_132 = D.45543_131 + 1;
  engine_38->ice_in.cand_idx = D.45552_132;
  # DEBUG i => 0
  D.45532_134 = engine_38->cand_acl_count;
  if (D.45532_134 > 0)
    goto <bb 41>;
  else
    goto <bb 63>;

<bb 41>:
  D.45555_135 = engine_38->ice_in.chosen[cid_120];
  if (D.45555_135 == 0)
    goto <bb 42>;
  else
    goto <bb 46>;

<bb 42>:
  D.45550_136 = fields[4];
  D.45557_137 = engine_38->cand_acl[0];
  D.45558_138 = switch_check_network_list_ip_token (D.45550_136, D.45557_137, 0B);
  if (D.45558_138 != 0)
    goto <bb 43>;
  else
    goto <bb 46>;

<bb 43>:
  D.45543_139 = engine_38->ice_in.cand_idx;
  engine_38->ice_in.chosen[cid_120] = D.45543_139;
  D.45466_140 = smh_34(D)->session;
  if (type_36(D) == 1)
    goto <bb 45>;
  else
    goto <bb 44>;

<bb 44>:

<bb 45>:
  # iftmp.105_13 = PHI <"video"(43), "audio"(44)>
  D.45548_144 = fields[2];
  D.45549_145 = fields[7];
  D.45550_146 = fields[4];
  D.45551_147 = fields[5];
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2581, D.45466_140, 5, "Choose %s Candidate cid: %d proto: %s type: %s addr: %s:%s\n", iftmp.105_13, D.47838_645, D.45548_144, D.45549_145, D.45550_146, D.45551_147);
  goto <bb 49>;

<bb 46>:
  D.45466_148 = smh_34(D)->session;
  if (type_36(D) == 1)
    goto <bb 48>;
  else
    goto <bb 47>;

<bb 47>:

<bb 48>:
  # iftmp.106_14 = PHI <"video"(46), "audio"(47)>
  D.45548_152 = fields[2];
  D.45549_153 = fields[7];
  D.45550_154 = fields[4];
  D.45551_155 = fields[5];
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2586, D.45466_148, 5, "Save %s Candidate cid: %d proto: %s type: %s addr: %s:%s\n", iftmp.106_14, D.47838_645, D.45548_152, D.45549_153, D.45550_154, D.45551_155);

<bb 49>:
  D.45543_156 = engine_38->ice_in.cand_idx;
  D.45466_157 = smh_34(D)->session;
  D.45568_158 = fields[0];
  D.45569_159 = switch_core_perform_session_strdup (D.45466_157, D.45568_158, "src/switch_core_media.c", &__func__, 2592);
  engine_38->ice_in.cands[D.45543_156][cid_120].foundation = D.45569_159;
  D.45543_160 = engine_38->ice_in.cand_idx;
  D.45544_161 = fields[1];
  # DEBUG __nptr => D.45544_161
  D.47841_646 = strtol (D.45544_161, 0B, 10);
  engine_38->ice_in.cands[D.45543_160][cid_120].component_id = D.47841_646;
  D.45543_163 = engine_38->ice_in.cand_idx;
  D.45466_164 = smh_34(D)->session;
  D.45548_165 = fields[2];
  D.45571_166 = switch_core_perform_session_strdup (D.45466_164, D.45548_165, "src/switch_core_media.c", &__func__, 2594);
  engine_38->ice_in.cands[D.45543_163][cid_120].transport = D.45571_166;
  D.45543_167 = engine_38->ice_in.cand_idx;
  D.45572_168 = fields[3];
  # DEBUG __nptr => D.45572_168
  D.47844_647 = strtol (D.45572_168, 0B, 10);
  D.45574_170 = (uint32_t) D.47844_647;
  engine_38->ice_in.cands[D.45543_167][cid_120].priority = D.45574_170;
  D.45543_171 = engine_38->ice_in.cand_idx;
  D.45466_172 = smh_34(D)->session;
  D.45550_173 = fields[4];
  D.45575_174 = switch_core_perform_session_strdup (D.45466_172, D.45550_173, "src/switch_core_media.c", &__func__, 2596);
  engine_38->ice_in.cands[D.45543_171][cid_120].con_addr = D.45575_174;
  D.45543_175 = engine_38->ice_in.cand_idx;
  D.45551_176 = fields[5];
  # DEBUG __nptr => D.45551_176
  D.47847_648 = strtol (D.45551_176, 0B, 10);
  D.45577_178 = (short unsigned int) D.47847_648;
  engine_38->ice_in.cands[D.45543_175][cid_120].con_port = D.45577_178;
  # DEBUG j => 6
  # DEBUG j => 6
  if (argc_116 > 6)
    goto <bb 50>;
  else
    goto <bb 61>;

<bb 50>:
  D.45582_296 = 7;
  D.45583_194 = fields[D.45582_296];
  if (D.45583_194 != 0B)
    goto <bb 51>;
  else
    goto <bb 61>;

<bb 51>:
  # j_680 = PHI <j_210(60), 6(50)>
  # D.45583_193 = PHI <D.45583_181(60), D.45583_194(50)>
  D.45578_182 = fields[j_680];
  D.45579_183 = strcasecmp (D.45578_182, "typ");
  if (D.45579_183 == 0)
    goto <bb 52>;
  else
    goto <bb 53>;

<bb 52>:
  D.45543_184 = engine_38->ice_in.cand_idx;
  D.45466_185 = smh_34(D)->session;
  D.45584_188 = switch_core_perform_session_strdup (D.45466_185, D.45583_193, "src/switch_core_media.c", &__func__, 2604);
  engine_38->ice_in.cands[D.45543_184][cid_120].cand_type = D.45584_188;
  goto <bb 59>;

<bb 53>:
  D.45586_190 = strcasecmp (D.45578_182, "raddr");
  if (D.45586_190 == 0)
    goto <bb 54>;
  else
    goto <bb 55>;

<bb 54>:
  D.45543_191 = engine_38->ice_in.cand_idx;
  D.45466_192 = smh_34(D)->session;
  D.45589_195 = switch_core_perform_session_strdup (D.45466_192, D.45583_193, "src/switch_core_media.c", &__func__, 2606);
  engine_38->ice_in.cands[D.45543_191][cid_120].raddr = D.45589_195;
  goto <bb 59>;

<bb 55>:
  D.45591_197 = strcasecmp (D.45578_182, "rport");
  if (D.45591_197 == 0)
    goto <bb 56>;
  else
    goto <bb 57>;

<bb 56>:
  D.45543_198 = engine_38->ice_in.cand_idx;
  # DEBUG __nptr => D.45583_193
  D.47850_649 = strtol (D.45583_193, 0B, 10);
  D.45595_202 = (short unsigned int) D.47850_649;
  engine_38->ice_in.cands[D.45543_198][cid_120].rport = D.45595_202;
  goto <bb 59>;

<bb 57>:
  D.45597_204 = strcasecmp (D.45578_182, "generation");
  if (D.45597_204 == 0)
    goto <bb 58>;
  else
    goto <bb 59>;

<bb 58>:
  D.45543_205 = engine_38->ice_in.cand_idx;
  D.45466_206 = smh_34(D)->session;
  D.45600_209 = switch_core_perform_session_strdup (D.45466_206, D.45583_193, "src/switch_core_media.c", &__func__, 2610);
  engine_38->ice_in.cands[D.45543_205][cid_120].generation = D.45600_209;

<bb 59>:
  j_210 = j_680 + 2;
  # DEBUG j => j_210
  # DEBUG j => j_210
  if (argc_116 > j_210)
    goto <bb 60>;
  else
    goto <bb 61>;

<bb 60>:
  D.45582_180 = j_210 + 1;
  D.45583_181 = fields[D.45582_180];
  if (D.45583_181 != 0B)
    goto <bb 51>;
  else
    goto <bb 61>;

<bb 61>:
  D.45555_211 = engine_38->ice_in.chosen[cid_120];
  if (D.45555_211 != 0)
    goto <bb 62>;
  else
    goto <bb 63>;

<bb 62>:
  D.45604_213 = engine_38->ice_in.cands[D.45555_211][cid_120].ready;
  D.45605_214 = D.45604_213 + 1;
  engine_38->ice_in.cands[D.45555_211][cid_120].ready = D.45605_214;

<bb 63>:
Invalid sum of incoming frequencies 9637, should be 8964
  # got_rtcp_mux_7 = PHI <got_rtcp_mux_108(10), got_rtcp_mux_108(11), got_rtcp_mux_108(13), got_rtcp_mux_108(15), got_rtcp_mux_108(22), got_rtcp_mux_108(27), got_rtcp_mux_101(30), got_rtcp_mux_108(31), got_rtcp_mux_108(34), got_rtcp_mux_108(37), got_rtcp_mux_108(62), got_rtcp_mux_108(40), got_rtcp_mux_108(26), got_rtcp_mux_108(28), got_rtcp_mux_108(61), got_rtcp_mux_108(9)>
  # DEBUG got_rtcp_mux => got_rtcp_mux_7
  attr_216 = attr_470->a_next;
  # DEBUG attr => attr_216
  # DEBUG got_rtcp_mux => got_rtcp_mux_7
  # DEBUG attr => attr_216
  if (attr_216 != 0B)
    goto <bb 9>;
  else
    goto <bb 64>;

<bb 64>:
  # got_rtcp_mux_368 = PHI <got_rtcp_mux_7(63), 0(8)>
  D.45460_217 = engine_38->ice_in.chosen[0];
  if (D.45460_217 == 0)
    goto <bb 66>;
  else
    goto <bb 65>;

<bb 65>:
  D.45463_218 = engine_38->ice_in.chosen[1];
  if (D.45463_218 == 0)
    goto <bb 66>;
  else
    goto <bb 83>;

<bb 66>:
  # i_760 = PHI <0(65), 0(64)>
  # DEBUG i => i_760
  D.45543_641 = engine_38->ice_in.cand_idx;
  if (D.45543_641 >= i_760)
    goto <bb 81>;
  else
    goto <bb 83>;

<bb 67>:
Invalid sum of incoming frequencies 4775, should be 4668
  D.45610_224 = engine_38->ice_in.cands[i_371][0].component_id;
  if (D.45610_224 == 1)
    goto <bb 68>;
  else
    goto <bb 73>;

<bb 68>:
  D.45613_225 = engine_38->ice_in.cands[i_371][0].rport;
  if (D.45613_225 == 0)
    goto <bb 69>;
  else
    goto <bb 73>;

<bb 69>:
  D.45616_226 = engine_38->ice_in.cands[i_371][0].con_addr;
  D.45617_227 = switch_check_network_list_ip_token (D.45616_226, "localnet.auto", 0B);
  if (D.45617_227 != 0)
    goto <bb 70>;
  else
    goto <bb 73>;

<bb 70>:
  engine_38->ice_in.chosen[0] = i_371;
  D.45620_229 = engine_38->ice_in.cands[i_371][0].ready;
  D.45621_230 = D.45620_229 + 1;
  engine_38->ice_in.cands[i_371][0].ready = D.45621_230;
  D.45466_231 = smh_34(D)->session;
  if (type_36(D) == 1)
    goto <bb 71>;
  else
    goto <bb 72>;

<bb 71>:

<bb 72>:
  # iftmp.107_15 = PHI <"video"(71), "audio"(70)>
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2636, D.45466_231, 5, "No %s RTP candidate found; defaulting to the first local one.\n", iftmp.107_15);

<bb 73>:
Invalid sum of incoming frequencies 9229, should be 9335
  D.45463_234 = engine_38->ice_in.chosen[1];
  if (D.45463_234 == 0)
    goto <bb 74>;
  else
    goto <bb 80>;

<bb 74>:
  D.45628_235 = engine_38->ice_in.cands[i_371][1].component_id;
  if (D.45628_235 == 2)
    goto <bb 75>;
  else
    goto <bb 80>;

<bb 75>:
  D.45631_236 = engine_38->ice_in.cands[i_371][1].rport;
  if (D.45631_236 == 0)
    goto <bb 76>;
  else
    goto <bb 80>;

<bb 76>:
  D.45634_237 = engine_38->ice_in.cands[i_371][1].con_addr;
  D.45635_238 = switch_check_network_list_ip_token (D.45634_237, "localnet.auto", 0B);
  if (D.45635_238 != 0)
    goto <bb 77>;
  else
    goto <bb 80>;

<bb 77>:
  engine_38->ice_in.chosen[1] = i_371;
  D.45638_240 = engine_38->ice_in.cands[i_371][1].ready;
  D.45639_241 = D.45638_240 + 1;
  engine_38->ice_in.cands[i_371][1].ready = D.45639_241;
  D.45466_242 = smh_34(D)->session;
  if (type_36(D) == 1)
    goto <bb 79>;
  else
    goto <bb 78>;

<bb 78>:

<bb 79>:
  # iftmp.108_16 = PHI <"video"(77), "audio"(78)>
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2643, D.45466_242, 5, "No %s RTCP candidate found; defaulting to the first local one.\n", iftmp.108_16);

<bb 80>:
  i_245 = i_371 + 1;
  # DEBUG i => i_245
  # DEBUG i => i_245
  D.45543_220 = engine_38->ice_in.cand_idx;
  if (D.45543_220 >= i_245)
    goto <bb 81>;
  else
    goto <bb 83>;

<bb 81>:
  # i_371 = PHI <i_245(80), i_760(66)>
  D.45460_221 = engine_38->ice_in.chosen[0];
  if (D.45460_221 == 0)
    goto <bb 67>;
  else
    goto <bb 82>;

<bb 82>:
  D.45463_222 = engine_38->ice_in.chosen[1];
  if (D.45463_222 == 0)
    goto <bb 73>;
  else
    goto <bb 83>;

<bb 83>:
  D.45460_246 = engine_38->ice_in.chosen[0];
  if (D.45460_246 == 0)
    goto <bb 85>;
  else
    goto <bb 84>;

<bb 84>:
  D.45463_247 = engine_38->ice_in.chosen[1];
  if (D.45463_247 == 0)
    goto <bb 85>;
  else
    goto <bb 100>;

<bb 85>:
  # i_2 = PHI <0(84), 0(83)>
  # DEBUG i => i_2
  D.45543_472 = engine_38->ice_in.cand_idx;
  if (i_2 <= D.45543_472)
    goto <bb 98>;
  else
    goto <bb 100>;

<bb 86>:
Invalid sum of incoming frequencies 4775, should be 4668
  D.45610_253 = engine_38->ice_in.cands[i_384][0].component_id;
  if (D.45610_253 == 1)
    goto <bb 87>;
  else
    goto <bb 91>;

<bb 87>:
  D.45613_254 = engine_38->ice_in.cands[i_384][0].rport;
  if (D.45613_254 != 0)
    goto <bb 88>;
  else
    goto <bb 91>;

<bb 88>:
  engine_38->ice_in.chosen[0] = i_384;
  D.45620_256 = engine_38->ice_in.cands[i_384][0].ready;
  D.45621_257 = D.45620_256 + 1;
  engine_38->ice_in.cands[i_384][0].ready = D.45621_257;
  D.45466_258 = smh_34(D)->session;
  if (type_36(D) == 1)
    goto <bb 89>;
  else
    goto <bb 90>;

<bb 89>:

<bb 90>:
  # iftmp.109_17 = PHI <"video"(89), "audio"(88)>
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2655, D.45466_258, 5, "No %s RTP candidate found; defaulting to the first srflx one.\n", iftmp.109_17);

<bb 91>:
Invalid sum of incoming frequencies 9228, should be 9335
  D.45463_261 = engine_38->ice_in.chosen[1];
  if (D.45463_261 == 0)
    goto <bb 92>;
  else
    goto <bb 97>;

<bb 92>:
  D.45628_262 = engine_38->ice_in.cands[i_384][1].component_id;
  if (D.45628_262 == 2)
    goto <bb 93>;
  else
    goto <bb 97>;

<bb 93>:
  D.45631_263 = engine_38->ice_in.cands[i_384][1].rport;
  if (D.45631_263 != 0)
    goto <bb 94>;
  else
    goto <bb 97>;

<bb 94>:
  engine_38->ice_in.chosen[1] = i_384;
  D.45638_265 = engine_38->ice_in.cands[i_384][1].ready;
  D.45639_266 = D.45638_265 + 1;
  engine_38->ice_in.cands[i_384][1].ready = D.45639_266;
  D.45466_267 = smh_34(D)->session;
  if (type_36(D) == 1)
    goto <bb 96>;
  else
    goto <bb 95>;

<bb 95>:

<bb 96>:
  # iftmp.110_18 = PHI <"video"(94), "audio"(95)>
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2661, D.45466_267, 5, "No %s RTCP candidate found; defaulting to the first srflx one.\n", iftmp.110_18);

<bb 97>:
  i_270 = i_384 + 1;
  # DEBUG i => i_270
  # DEBUG i => i_270
  D.45543_249 = engine_38->ice_in.cand_idx;
  if (D.45543_249 >= i_270)
    goto <bb 98>;
  else
    goto <bb 100>;

<bb 98>:
  # i_384 = PHI <i_270(97), i_2(85)>
  D.45460_250 = engine_38->ice_in.chosen[0];
  if (D.45460_250 == 0)
    goto <bb 86>;
  else
    goto <bb 99>;

<bb 99>:
  D.45463_251 = engine_38->ice_in.chosen[1];
  if (D.45463_251 == 0)
    goto <bb 91>;
  else
    goto <bb 100>;

<bb 100>:
  D.45460_271 = engine_38->ice_in.chosen[0];
  if (D.45460_271 != 0)
    goto <bb 101>;
  else
    goto <bb 105>;

<bb 101>:
  D.45463_272 = engine_38->ice_in.chosen[1];
  D.45672_273 = D.45463_272 == 0;
  D.45673_274 = got_rtcp_mux_368 != 0;
  D.45674_275 = D.45672_273 & D.45673_274;
  if (D.45674_275 != 0)
    goto <bb 102>;
  else
    goto <bb 105>;

<bb 102>:
  engine_38->ice_in.chosen[1] = D.45460_271;
  D.45677_277 = &engine_38->ice_in.cands[0][0];
  D.45678_278 = (void * restrict) D.45677_277;
  D.45679_280 = (unsigned int) D.45460_271;
  D.45680_281 = D.45679_280 * 88;
  D.45681_282 = D.45680_281 + 44;
  D.45682_283 = D.45678_278 + D.45681_282;
  D.45686_289 = D.45678_278 + D.45680_281;
  memcpy (D.45682_283, D.45686_289, 44);
  D.45463_290 = engine_38->ice_in.chosen[1];
  D.45638_291 = engine_38->ice_in.cands[D.45463_290][1].ready;
  D.45639_292 = D.45638_291 + 1;
  engine_38->ice_in.cands[D.45463_290][1].ready = D.45639_292;
  D.45466_293 = smh_34(D)->session;
  if (type_36(D) == 1)
    goto <bb 103>;
  else
    goto <bb 104>;

<bb 103>:

<bb 104>:
  # iftmp.111_19 = PHI <"video"(103), "audio"(102)>
  D.45691_297 = engine_38->ice_in.cands[D.45463_290][1].con_addr;
  D.45692_299 = engine_38->ice_in.cands[D.45463_290][1].con_port;
  D.45693_300 = (int) D.45692_299;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2675, D.45466_293, 5, "No %s RTCP candidate found; defaulting to the same as RTP [%s:%d]\n", iftmp.111_19, D.45691_297, D.45693_300);

<bb 105>:
  D.45460_301 = engine_38->ice_in.chosen[0];
  if (D.45460_301 == 0)
    goto <bb 107>;
  else
    goto <bb 106>;

<bb 106>:
  D.45463_302 = engine_38->ice_in.chosen[1];
  if (D.45463_302 == 0)
    goto <bb 107>;
  else
    goto <bb 120>;

<bb 107>:
  # i_6 = PHI <0(106), 0(105)>
  # DEBUG i => i_6
  D.45543_713 = engine_38->ice_in.cand_idx;
  if (i_6 <= D.45543_713)
    goto <bb 118>;
  else
    goto <bb 120>;

<bb 108>:
Invalid sum of incoming frequencies 4775, should be 4668
  D.45610_308 = engine_38->ice_in.cands[i_203][0].component_id;
  if (D.45610_308 == 1)
    goto <bb 109>;
  else
    goto <bb 112>;

<bb 109>:
  engine_38->ice_in.chosen[0] = i_203;
  D.45620_310 = engine_38->ice_in.cands[i_203][0].ready;
  D.45621_311 = D.45620_310 + 1;
  engine_38->ice_in.cands[i_203][0].ready = D.45621_311;
  D.45466_312 = smh_34(D)->session;
  if (type_36(D) == 1)
    goto <bb 110>;
  else
    goto <bb 111>;

<bb 110>:

<bb 111>:
  # iftmp.112_20 = PHI <"video"(110), "audio"(109)>
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2686, D.45466_312, 5, "No %s RTP candidate found; defaulting to the first one.\n", iftmp.112_20);

<bb 112>:
Invalid sum of incoming frequencies 9228, should be 9335
  D.45463_315 = engine_38->ice_in.chosen[1];
  if (D.45463_315 == 0)
    goto <bb 113>;
  else
    goto <bb 117>;

<bb 113>:
  D.45628_316 = engine_38->ice_in.cands[i_203][1].component_id;
  if (D.45628_316 == 2)
    goto <bb 114>;
  else
    goto <bb 117>;

<bb 114>:
  engine_38->ice_in.chosen[1] = i_203;
  D.45638_318 = engine_38->ice_in.cands[i_203][1].ready;
  D.45639_319 = D.45638_318 + 1;
  engine_38->ice_in.cands[i_203][1].ready = D.45639_319;
  D.45466_320 = smh_34(D)->session;
  if (type_36(D) == 1)
    goto <bb 116>;
  else
    goto <bb 115>;

<bb 115>:

<bb 116>:
  # iftmp.113_21 = PHI <"video"(114), "audio"(115)>
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2692, D.45466_320, 5, "No %s RTCP candidate found; defaulting to the first one.\n", iftmp.113_21);

<bb 117>:
  i_323 = i_203 + 1;
  # DEBUG i => i_323
  # DEBUG i => i_323
  D.45543_304 = engine_38->ice_in.cand_idx;
  if (D.45543_304 >= i_323)
    goto <bb 118>;
  else
    goto <bb 120>;

<bb 118>:
  # i_203 = PHI <i_323(117), i_6(107)>
  D.45460_305 = engine_38->ice_in.chosen[0];
  if (D.45460_305 == 0)
    goto <bb 108>;
  else
    goto <bb 119>;

<bb 119>:
  D.45463_306 = engine_38->ice_in.chosen[1];
  if (D.45463_306 == 0)
    goto <bb 112>;
  else
    goto <bb 120>;

<bb 120>:
  # DEBUG i => 0

<bb 121>:
  # i_60 = PHI <i_332(126), 0(120)>
  D.45714_325 = engine_38->ice_in.chosen[i_60];
  D.45715_326 = engine_38->ice_in.cands[D.45714_325][i_60].ready;
  if (D.45715_326 != 0)
    goto <bb 122>;
  else
    goto <bb 126>;

<bb 122>:
  D.45720_327 = engine_38->ice_in.ufrag;
  # DEBUG s => D.45720_327
  if (D.45720_327 == 0B)
    goto <bb 125>;
  else
    goto <bb 123>;

<bb 123>:
  D.47854_650 = MEM[(const char *)D.45720_327];
  if (D.47854_650 == 0)
    goto <bb 125>;
  else
    goto <bb 184>;

<bb 124>:
  D.47858_652 = MEM[(const char *)D.45723_329];
  if (D.47858_652 == 0)
    goto <bb 125>;
  else
    goto <bb 126>;

<bb 125>:
  engine_38->ice_in.cands[D.45714_325][i_60].ready = 0;

<bb 126>:
  i_332 = i_60 + 1;
  # DEBUG i => i_332
  # DEBUG i => i_332
  if (i_332 != 2)
    goto <bb 121>;
  else
    goto <bb 127>;

<bb 127>:
  D.45460_333 = engine_38->ice_in.chosen[0];
  D.45725_334 = engine_38->ice_in.cands[D.45460_333][0].con_addr;
  if (D.45725_334 != 0B)
    goto <bb 128>;
  else
    goto <bb 134>;

<bb 128>:
  D.45728_336 = engine_38->ice_in.cands[D.45460_333][0].con_port;
  if (D.45728_336 != 0)
    goto <bb 129>;
  else
    goto <bb 134>;

<bb 129>:
  tmp = "";
  D.45526_337 = engine_38->cur_payload_map;
  D.45466_338 = smh_34(D)->session;
  D.45731_341 = switch_core_perform_session_strdup (D.45466_338, D.45725_334, "src/switch_core_media.c", &__func__, 2709);
  D.45526_337->remote_sdp_ip = D.45731_341;
  D.45466_342 = smh_34(D)->session;
  if (type_36(D) == 1)
    goto <bb 130>;
  else
    goto <bb 131>;

<bb 130>:

<bb 131>:
  # iftmp.114_22 = PHI <"video"(130), "audio"(129)>
  D.45460_345 = engine_38->ice_in.chosen[0];
  D.45725_346 = engine_38->ice_in.cands[D.45460_345][0].con_addr;
  D.45728_348 = engine_38->ice_in.cands[D.45460_345][0].con_port;
  D.45736_349 = (int) D.45728_348;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2710, D.45466_342, 5, "setting remote %s ice addr to %s:%d based on candidate\n", iftmp.114_22, D.45725_346, D.45736_349);
  D.45460_350 = engine_38->ice_in.chosen[0];
  D.45620_351 = engine_38->ice_in.cands[D.45460_350][0].ready;
  D.45621_352 = D.45620_351 + 1;
  engine_38->ice_in.cands[D.45460_350][0].ready = D.45621_352;
  D.45728_354 = engine_38->ice_in.cands[D.45460_350][0].con_port;
  engine_38->remote_rtp_ice_port = D.45728_354;
  D.45466_355 = smh_34(D)->session;
  D.45725_357 = engine_38->ice_in.cands[D.45460_350][0].con_addr;
  D.45737_358 = switch_core_perform_session_strdup (D.45466_355, D.45725_357, "src/switch_core_media.c", &__func__, 2716);
  engine_38->remote_rtp_ice_addr = D.45737_358;
  D.45526_359 = engine_38->cur_payload_map;
  D.45466_360 = smh_34(D)->session;
  D.45460_361 = engine_38->ice_in.chosen[0];
  D.45725_362 = engine_38->ice_in.cands[D.45460_361][0].con_addr;
  D.45738_363 = switch_core_perform_session_strdup (D.45466_360, D.45725_362, "src/switch_core_media.c", &__func__, 2718);
  D.45526_359->remote_sdp_ip = D.45738_363;
  D.45526_364 = engine_38->cur_payload_map;
  D.45460_365 = engine_38->ice_in.chosen[0];
  D.45728_366 = engine_38->ice_in.cands[D.45460_365][0].con_port;
  D.45526_364->remote_sdp_port = D.45728_366;
  D.45739_367 = engine_38->remote_rtcp_port;
  if (D.45739_367 != 0)
    goto <bb 132>;
  else
    goto <bb 133>;

<bb 132>:
  engine_38->remote_rtcp_port = D.45728_366;

<bb 133>:
  D.45742_372 = (int) D.45728_366;
  switch_snprintf (&tmp, 80, "%d", D.45742_372);
  D.45466_373 = smh_34(D)->session;
  D.45467_374 = D.45466_373->channel;
  D.45526_375 = engine_38->cur_payload_map;
  D.45743_376 = D.45526_375->remote_sdp_ip;
  switch_channel_set_variable_var_check (D.45467_374, "remote_media_ip", D.45743_376, 1);
  D.45466_377 = smh_34(D)->session;
  D.45467_378 = D.45466_377->channel;
  switch_channel_set_variable_var_check (D.45467_378, "remote_media_port", &tmp, 1);

<bb 134>:
  D.45463_379 = engine_38->ice_in.chosen[1];
  D.45692_380 = engine_38->ice_in.cands[D.45463_379][1].con_port;
  if (D.45692_380 != 0)
    goto <bb 135>;
  else
    goto <bb 138>;

<bb 135>:
  D.45466_381 = smh_34(D)->session;
  if (type_36(D) == 1)
    goto <bb 136>;
  else
    goto <bb 137>;

<bb 136>:

<bb 137>:
  # iftmp.115_23 = PHI <"video"(136), "audio"(135)>
  D.45691_385 = engine_38->ice_in.cands[D.45463_379][1].con_addr;
  D.45693_388 = (int) D.45692_380;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2730, D.45466_381, 5, "setting remote rtcp %s addr to %s:%d based on candidate\n", iftmp.115_23, D.45691_385, D.45693_388);
  D.45463_389 = engine_38->ice_in.chosen[1];
  D.45692_390 = engine_38->ice_in.cands[D.45463_389][1].con_port;
  engine_38->remote_rtcp_ice_port = D.45692_390;
  D.45466_391 = smh_34(D)->session;
  D.45691_393 = engine_38->ice_in.cands[D.45463_389][1].con_addr;
  D.45750_394 = switch_core_perform_session_strdup (D.45466_391, D.45691_393, "src/switch_core_media.c", &__func__, 2734);
  engine_38->remote_rtcp_ice_addr = D.45750_394;
  D.45463_395 = engine_38->ice_in.chosen[1];
  D.45692_396 = engine_38->ice_in.cands[D.45463_395][1].con_port;
  engine_38->remote_rtcp_port = D.45692_396;

<bb 138>:
  D.45751_397 = m_46(D) != 0B;
  D.45752_398 = got_rtcp_mux_368 == 0;
  D.45753_399 = D.45751_397 & D.45752_398;
  if (D.45753_399 != 0)
    goto <bb 139>;
  else
    goto <bb 140>;

<bb 139>:
  engine_38->rtcp_mux = -1;

<bb 140>:
  D.45466_400 = smh_34(D)->session;
  D.45467_401 = D.45466_400->channel;
  D.45756_402 = switch_channel_test_flag (D.45467_401, 103);
  if (D.45756_402 != 0)
    goto <bb 141>;
  else
    goto <bb 181>;

<bb 141>:
  D.45518_403 = engine_38->rtp_session;
  D.45759_404 = switch_rtp_ready (D.45518_403);
  if (D.45759_404 != 0)
    goto <bb 142>;
  else
    goto <bb 148>;

<bb 142>:
  D.45460_405 = engine_38->ice_in.chosen[0];
  D.45620_406 = engine_38->ice_in.cands[D.45460_405][0].ready;
  if (D.45620_406 != 0)
    goto <bb 143>;
  else
    goto <bb 148>;

<bb 143>:
  D.45466_407 = smh_34(D)->session;
  if (type_36(D) == 1)
    goto <bb 144>;
  else
    goto <bb 145>;

<bb 144>:

<bb 145>:
  # iftmp.116_24 = PHI <"video"(144), "audio"(143)>
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2749, D.45466_407, 6, "RE-Activating %s ICE\n", iftmp.116_24);
  D.45518_410 = engine_38->rtp_session;
  D.45720_411 = engine_38->ice_in.ufrag;
  D.45768_412 = engine_38->ice_out.ufrag;
  D.45769_413 = engine_38->ice_out.pwd;
  D.45723_414 = engine_38->ice_in.pwd;
  D.45466_415 = smh_34(D)->session;
  D.45771_416 = switch_ice_direction (D.45466_415);
  if (D.45771_416 == 1)
    goto <bb 147>;
  else
    goto <bb 146>;

<bb 146>:

<bb 147>:
  # iftmp.117_25 = PHI <2(145), 6(146)>
  D.45775_419 = &engine_38->ice_in;
  switch_rtp_activate_ice (D.45518_410, D.45720_411, D.45768_412, D.45769_413, D.45723_414, 0, iftmp.117_25, D.45775_419);

<bb 148>:
  D.45518_420 = engine_38->rtp_session;
  if (D.45518_420 != 0B)
    goto <bb 149>;
  else
    goto <bb 169>;

<bb 149>:
  D.45466_421 = smh_34(D)->session;
  D.45467_422 = D.45466_421->channel;
  if (type_36(D) == 1)
    goto <bb 150>;
  else
    goto <bb 151>;

<bb 150>:

<bb 151>:
  # iftmp.118_26 = PHI <"rtcp_video_interval_msec"(150), "rtcp_audio_interval_msec"(149)>
  val_425 = switch_channel_get_variable_dup (D.45467_422, iftmp.118_26, 1, -1);
  # DEBUG val => val_425
  if (val_425 != 0B)
    goto <bb 156>;
  else
    goto <bb 152>;

<bb 152>:
  if (type_36(D) == 1)
    goto <bb 153>;
  else
    goto <bb 154>;

<bb 153>:
  D.45788_426 = smh_34(D)->mparams;
  val_427 = D.45788_426->rtcp_video_interval_msec;
  goto <bb 155>;

<bb 154>:
  D.45788_428 = smh_34(D)->mparams;
  val_429 = D.45788_428->rtcp_audio_interval_msec;

<bb 155>:
  # val_27 = PHI <val_427(153), val_429(154)>
  # DEBUG val => val_27
  if (val_27 != 0B)
    goto <bb 156>;
  else
    goto <bb 169>;

<bb 156>:
  # val_9 = PHI <val_425(151), val_27(155)>
  # DEBUG val => val_9
  D.45466_431 = smh_34(D)->session;
  D.45467_432 = D.45466_431->channel;
  if (type_36(D) == 1)
    goto <bb 157>;
  else
    goto <bb 158>;

<bb 157>:

<bb 158>:
  # iftmp.120_28 = PHI <"rtp_remote_video_rtcp_port"(157), "rtp_remote_audio_rtcp_port"(156)>
  rport_435 = switch_channel_get_variable_dup (D.45467_432, iftmp.120_28, 1, -1);
  # DEBUG rport => rport_435
  remote_rtcp_port_436 = engine_38->remote_rtcp_port;
  # DEBUG remote_rtcp_port => remote_rtcp_port_436
  D.45794_437 = remote_rtcp_port_436 == 0;
  D.45795_438 = rport_435 != 0B;
  D.45796_439 = D.45794_437 & D.45795_438;
  if (D.45796_439 != 0)
    goto <bb 159>;
  else
    goto <bb 160>;

<bb 159>:
  # DEBUG __nptr => rport_435
  D.47861_654 = strtol (rport_435, 0B, 10);
  remote_rtcp_port_441 = (switch_port_t) D.47861_654;
  # DEBUG remote_rtcp_port => remote_rtcp_port_441

<bb 160>:
  # remote_rtcp_port_11 = PHI <remote_rtcp_port_436(158), remote_rtcp_port_441(159)>
  # DEBUG remote_rtcp_port => remote_rtcp_port_11
  D.45800_442 = strcasecmp (val_9, "passthru");
  if (D.45800_442 == 0)
    goto <bb 161>;
  else
    goto <bb 164>;

<bb 161>:
  D.45466_443 = smh_34(D)->session;
  if (type_36(D) == 1)
    goto <bb 162>;
  else
    goto <bb 163>;

<bb 162>:

<bb 163>:
  # iftmp.121_29 = PHI <"video"(162), "audio"(161)>
  D.45807_446 = (int) remote_rtcp_port_11;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2787, D.45466_443, 6, "Activating %s RTCP PASSTHRU PORT %d\n", iftmp.121_29, D.45807_446);
  D.45518_447 = engine_38->rtp_session;
  D.45808_448 = engine_38->rtcp_mux;
  D.45809_449 = D.45808_448 > 0;
  switch_rtp_activate_rtcp (D.45518_447, -1, remote_rtcp_port_11, D.45809_449);
  goto <bb 169>;

<bb 164>:
  # DEBUG __nptr => val_9
  interval_655 = strtol (val_9, 0B, 10);
  # DEBUG interval => NULL
  interval.122_451 = (unsigned int) interval_655;
  D.45812_452 = interval.122_451 + 4294967196;
  if (D.45812_452 > 499900)
    goto <bb 165>;
  else
    goto <bb 166>;

<bb 165>:
  D.45466_453 = smh_34(D)->session;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2793, D.45466_453, 3, "Invalid rtcp interval spec [%d] must be between 100 and 500000\n", interval_655);
  # DEBUG interval => 10000

<bb 166>:
  # interval_12 = PHI <interval_655(164), 10000(165)>
  # DEBUG interval => interval_12
  D.45466_455 = smh_34(D)->session;
  if (type_36(D) == 1)
    goto <bb 167>;
  else
    goto <bb 168>;

<bb 167>:

<bb 168>:
  # iftmp.123_30 = PHI <"video"(167), "audio"(166)>
  D.45807_458 = (int) remote_rtcp_port_11;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2798, D.45466_455, 6, "Activating %s RTCP PORT %d\n", iftmp.123_30, D.45807_458);
  D.45518_459 = engine_38->rtp_session;
  D.45808_460 = engine_38->rtcp_mux;
  D.45809_461 = D.45808_460 > 0;
  switch_rtp_activate_rtcp (D.45518_459, interval_12, remote_rtcp_port_11, D.45809_461);

<bb 169>:
  D.45463_462 = engine_38->ice_in.chosen[1];
  D.45638_463 = engine_38->ice_in.cands[D.45463_462][1].ready;
  if (D.45638_463 != 0)
    goto <bb 170>;
  else
    goto <bb 181>;

<bb 170>:
  D.45808_464 = engine_38->rtcp_mux;
  if (D.45808_464 > 0)
    goto <bb 171>;
  else
    goto <bb 176>;

<bb 171>:
  D.45691_466 = engine_38->ice_in.cands[D.45463_462][1].con_addr;
  D.45460_467 = engine_38->ice_in.chosen[0];
  D.45725_468 = engine_38->ice_in.cands[D.45460_467][0].con_addr;
  D.38904_469 = __builtin_strcmp (D.45691_466, D.45725_468);
  if (D.38904_469 == 0)
    goto <bb 172>;
  else
    goto <bb 176>;

<bb 172>:
  D.45692_471 = engine_38->ice_in.cands[D.45463_462][1].con_port;
  D.45728_473 = engine_38->ice_in.cands[D.45460_467][0].con_port;
  if (D.45692_471 == D.45728_473)
    goto <bb 173>;
  else
    goto <bb 176>;

<bb 173>:
  D.45466_474 = smh_34(D)->session;
  if (type_36(D) == 1)
    goto <bb 175>;
  else
    goto <bb 174>;

<bb 174>:

<bb 175>:
  # iftmp.124_31 = PHI <"video"(173), "audio"(174)>
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2806, D.45466_474, 6, "Skipping %s RTCP ICE (Same as RTP)\n", iftmp.124_31);
  goto <bb 181>;

<bb 176>:
  D.45466_477 = smh_34(D)->session;
  if (type_36(D) == 1)
    goto <bb 178>;
  else
    goto <bb 177>;

<bb 177>:

<bb 178>:
  # iftmp.125_32 = PHI <"video"(176), "audio"(177)>
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2808, D.45466_477, 6, "Activating %s RTCP ICE\n", iftmp.125_32);
  D.45518_480 = engine_38->rtp_session;
  D.45720_481 = engine_38->ice_in.ufrag;
  D.45768_482 = engine_38->ice_out.ufrag;
  D.45769_483 = engine_38->ice_out.pwd;
  D.45723_484 = engine_38->ice_in.pwd;
  D.45466_485 = smh_34(D)->session;
  D.45835_486 = switch_ice_direction (D.45466_485);
  if (D.45835_486 == 1)
    goto <bb 180>;
  else
    goto <bb 179>;

<bb 179>:

<bb 180>:
  # iftmp.126_33 = PHI <2(178), 6(179)>
  D.45775_489 = &engine_38->ice_in;
  switch_rtp_activate_ice (D.45518_480, D.45720_481, D.45768_482, D.45769_483, D.45723_484, 1, iftmp.126_33, D.45775_489);

<bb 181>:
  return;

<bb 182>:
  D.45478_56 = strcasecmp (D.45474_53, "ice-ufrag");
  if (D.45478_56 == 0)
    goto <bb 11>;
  else
    goto <bb 12>;

<bb 183>:
  D.45466_77 = smh_34(D)->session;
  D.45504_79 = switch_core_perform_session_strdup (D.45466_77, D.45481_75, "src/switch_core_media.c", &__func__, 2512);
  engine_38->remote_dtls_fingerprint.type = D.45504_79;
  p_81 = __builtin_strchr (D.45504_79, 32);
  # DEBUG p => p_81
  if (p_81 != 0B)
    goto <bb 21>;
  else
    goto <bb 22>;

<bb 184>:
  D.45723_329 = engine_38->ice_in.pwd;
  # DEBUG s => D.45723_329
  if (D.45723_329 == 0B)
    goto <bb 125>;
  else
    goto <bb 124>;

}



;; Function switch_core_session_set_ice (switch_core_session_set_ice)

switch_core_session_set_ice (struct switch_core_session_t * session)
{
  static const char __PRETTY_FUNCTION__[28] = "switch_core_session_set_ice";
  struct switch_media_handle_t * smh;
  struct switch_core_media_params_t * D.45845;
  struct switch_channel_t * D.45844;

<bb 2>:
  if (session_1(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 2840, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_2 = session_1(D)->media_handle;
  # DEBUG smh => smh_2
  if (smh_2 == 0B)
    goto <bb 6>;
  else
    goto <bb 5>;

<bb 5>:
  D.45844_3 = session_1(D)->channel;
  switch_channel_set_flag_value (D.45844_3, 110, 1);
  D.45844_4 = session_1(D)->channel;
  switch_channel_set_flag_value (D.45844_4, 106, 1);
  D.45844_5 = session_1(D)->channel;
  switch_channel_set_flag_value (D.45844_5, 108, 1);
  D.45845_6 = smh_2->mparams;
  D.45845_6->rtcp_audio_interval_msec = "10000";
  D.45845_6->rtcp_video_interval_msec = "10000";

<bb 6>:
  return;

}



;; Function switch_core_media_toggle_hold (switch_core_media_toggle_hold)

switch_core_media_toggle_hold (struct switch_core_session_t * session, int sendonly)
{
  int D.49660;
  switch_bool_t D.49659;
  int D.49658;
  int D.49657;
  int D.49656;
  int D.49655;
  int D.49654;
  int D.49653;
  int D.49652;
  const char * val;
  const char * info;
  const char * msg;
  const char * stream;
  static const char __func__[30] = "switch_core_media_toggle_hold";
  static const char __PRETTY_FUNCTION__[30] = "switch_core_media_toggle_hold";
  struct switch_channel_t * b_channel;
  struct switch_core_session_t * b_session;
  struct switch_media_handle_t * smh;
  int changed;
  uint32_t D.44454;
  int32_t D.44449;
  uint32_t D.44444;
  uint32_t D.44440;
  uint32_t D.44433;
  char * D.44432;
  uint32_t D.44431;
  uint32_t D.44429;
  uint32_t D.44422;
  uint32_t D.44415;
  char * D.44414;
  char * D.44412;
  int D.44409;
  uint32_t D.44408;
  int D.44404;
  uint32_t D.44393;
  struct switch_rtp_t * D.44390;
  struct switch_rtp_t * D.44387;
  const char * D.44384;
  switch_bool_t sendonly.87;
  uint32_t D.44380;
  uint32_t D.44378;
  uint32_t D.44376;
  uint32_t D.44370;
  uint32_t D.44368;
  struct switch_channel_t * D.44367;
  struct switch_core_session_t * b_session.86;
  switch_status_t D.44360;

<bb 2>:
  # DEBUG changed => 0
  b_session = 0B;
  # DEBUG b_channel => 0B
  if (session_9(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 3872, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_10 = session_9(D)->media_handle;
  # DEBUG smh => smh_10
  if (smh_10 == 0B)
    goto <bb 73>;
  else
    goto <bb 5>;

<bb 5>:
  # DEBUG D#9 => &smh_10->engines
  # DEBUG a_engine => D#9
  # DEBUG D#10 => &smh_10->engines[1]
  # DEBUG v_engine => D#10
  D.44360_14 = switch_core_session_perform_get_partner (session_9(D), &b_session, "src/switch_core_media.c", &__func__, 3882);
  if (D.44360_14 == 0)
    goto <bb 6>;
  else
    goto <bb 7>;

<bb 6>:
  b_session.86_15 = b_session;
  b_channel_16 = switch_core_session_get_channel (b_session.86_15);
  # DEBUG b_channel => b_channel_16

<bb 7>:
  # b_channel_3 = PHI <0B(5), b_channel_16(6)>
  # DEBUG b_channel => b_channel_3
  if (sendonly_17(D) != 0)
    goto <bb 8>;
  else
    goto <bb 33>;

<bb 8>:
  D.44367_18 = session_9(D)->channel;
  D.44368_19 = switch_channel_test_flag (D.44367_18, 1);
  if (D.44368_19 != 0)
    goto <bb 9>;
  else
    goto <bb 33>;

<bb 9>:
  D.44367_20 = session_9(D)->channel;
  D.44370_21 = switch_channel_test_flag (D.44367_20, 96);
  if (D.44370_21 == 0)
    goto <bb 10>;
  else
    goto <bb 71> (end);

<bb 10>:
  # DEBUG msg => "hold"
  D.44367_23 = session_9(D)->channel;
  D.44376_24 = switch_channel_test_flag (D.44367_23, 94);
  if (D.44376_24 != 0)
    goto <bb 12>;
  else
    goto <bb 11>;

<bb 11>:
  D.44367_25 = session_9(D)->channel;
  D.44378_26 = switch_channel_test_flag (D.44367_25, 95);
  if (D.44378_26 != 0)
    goto <bb 12>;
  else
    goto <bb 15>;

<bb 12>:
  if (b_channel_3 == 0B)
    goto <bb 14>;
  else
    goto <bb 13>;

<bb 13>:
  D.44380_27 = switch_channel_test_flag (b_channel_3, 25);
  if (D.44380_27 != 0)
    goto <bb 14>;
  else
    goto <bb 15>;

<bb 14>:
  D.44367_28 = session_9(D)->channel;
  sendonly.87_29 = (switch_bool_t) sendonly_17(D);
  switch_channel_mark_hold (D.44367_28, sendonly.87_29);
  D.44367_30 = session_9(D)->channel;
  switch_channel_set_flag_value (D.44367_30, 96, 1);
  # DEBUG changed => 0
  goto <bb 71> (end);

<bb 15>:
  D.44367_32 = session_9(D)->channel;
  info_33 = switch_channel_get_variable_dup (D.44367_32, "presence_call_info", 1, -1);
  # DEBUG info => info_33
  if (info_33 != 0B)
    goto <bb 16>;
  else
    goto <bb 18>;

<bb 16>:
  D.44384_34 = switch_stristr ("private", info_33);
  if (D.44384_34 != 0B)
    goto <bb 17>;
  else
    goto <bb 18>;

<bb 17>:
  # DEBUG msg => "hold-private"

<bb 18>:
  # msg_5 = PHI <"hold"(15), "hold"(16), "hold-private"(17)>
  # DEBUG msg => msg_5
  D.44387_36 = MEM[(struct switch_rtp_engine_t *)smh_10 + 80B].rtp_session;
  if (D.44387_36 != 0B)
    goto <bb 19>;
  else
    goto <bb 20>;

<bb 19>:
  switch_rtp_set_flag (D.44387_36, 35);

<bb 20>:
  D.44390_38 = MEM[(struct switch_rtp_engine_t *)smh_10 + 11496B].rtp_session;
  if (D.44390_38 != 0B)
    goto <bb 21>;
  else
    goto <bb 22>;

<bb 21>:
  switch_rtp_set_flag (D.44390_38, 35);

<bb 22>:
  D.44367_40 = session_9(D)->channel;
  switch_channel_set_flag_value (D.44367_40, 96, 1);
  D.44367_41 = session_9(D)->channel;
  switch_channel_mark_hold (D.44367_41, 1);
  D.44367_42 = session_9(D)->channel;
  switch_channel_perform_presence (D.44367_42, "unknown", msg_5, 0B, "src/switch_core_media.c", &__func__, 3918);
  # DEBUG changed => 1
  D.44393_44 = MEM[(struct switch_rtp_engine_t *)smh_10 + 80B].max_missed_hold_packets;
  if (D.44393_44 != 0)
    goto <bb 23>;
  else
    goto <bb 25>;

<bb 23>:
  D.44387_45 = MEM[(struct switch_rtp_engine_t *)smh_10 + 80B].rtp_session;
  if (D.44387_45 != 0B)
    goto <bb 24>;
  else
    goto <bb 25>;

<bb 24>:
  switch_rtp_set_max_missed_packets (D.44387_45, D.44393_44);

<bb 25>:
  D.44367_48 = session_9(D)->channel;
  stream_49 = switch_channel_get_hold_music (D.44367_48);
  # DEBUG stream => stream_49
  if (stream_49 == 0B)
    goto <bb 27>;
  else
    goto <bb 26>;

<bb 26>:

<bb 27>:
  # stream_4 = PHI <stream_49(26), "local_stream://moh"(25)>
  # DEBUG stream => stream_4
  D.44404_51 = strcasecmp (stream_4, "silence");
  if (D.44404_51 != 0)
    goto <bb 28>;
  else
    goto <bb 71> (end);

<bb 28>:
  if (b_channel_3 == 0B)
    goto <bb 30>;
  else
    goto <bb 29>;

<bb 29>:
  D.44408_52 = switch_channel_test_flag (b_channel_3, 25);
  if (D.44408_52 == 0)
    goto <bb 30>;
  else
    goto <bb 71> (end);

<bb 30>:
  D.44409_53 = strcasecmp (stream_4, "indicate_hold");
  if (D.44409_53 == 0)
    goto <bb 31>;
  else
    goto <bb 32>;

<bb 31>:
  D.44367_54 = session_9(D)->channel;
  switch_channel_set_flag_value (D.44367_54, 16, 1);
  D.44367_55 = session_9(D)->channel;
  switch_channel_set_flag_value (D.44367_55, 10, 1);
  b_session.86_56 = b_session;
  D.44412_57 = switch_core_session_get_uuid (b_session.86_56);
  switch_ivr_hold_uuid (D.44412_57, 0B, 0);
  goto <bb 71> (end);

<bb 32>:
  b_session.86_58 = b_session;
  D.44414_59 = switch_core_session_get_uuid (b_session.86_58);
  switch_ivr_broadcast (D.44414_59, stream_4, 274);
  switch_sleep (250000);
  goto <bb 71> (end);

<bb 33>:
  D.44367_60 = session_9(D)->channel;
  D.44415_61 = switch_channel_test_flag (D.44367_60, 97);
  if (D.44415_61 != 0)
    goto <bb 34>;
  else
    goto <bb 38>;

<bb 34>:
  D.44367_62 = session_9(D)->channel;
  switch_channel_set_flag_value (D.44367_62, 96, 1);
  D.44367_63 = session_9(D)->channel;
  switch_channel_mark_hold (D.44367_63, 1);
  D.44387_64 = MEM[(struct switch_rtp_engine_t *)smh_10 + 80B].rtp_session;
  if (D.44387_64 != 0B)
    goto <bb 35>;
  else
    goto <bb 36>;

<bb 35>:
  switch_rtp_set_flag (D.44387_64, 35);

<bb 36>:
  D.44390_66 = MEM[(struct switch_rtp_engine_t *)smh_10 + 11496B].rtp_session;
  if (D.44390_66 != 0B)
    goto <bb 37>;
  else
    goto <bb 38>;

<bb 37>:
  switch_rtp_set_flag (D.44390_66, 35);

<bb 38>:
  # changed_1 = PHI <0(33), 1(37), 1(36)>
  # DEBUG changed => changed_1
  D.44367_69 = session_9(D)->channel;
  switch_channel_clear_flag (D.44367_69, 97);
  D.44367_70 = session_9(D)->channel;
  D.44422_71 = switch_channel_test_flag (D.44367_70, 96);
  if (D.44422_71 != 0)
    goto <bb 39>;
  else
    goto <bb 71> (end);

<bb 39>:
  switch_sleep (250000);
  if (b_channel_3 != 0B)
    goto <bb 40>;
  else
    goto <bb 43>;

<bb 40>:
  D.44367_72 = session_9(D)->channel;
  D.44429_73 = switch_channel_test_flag (D.44367_72, 120);
  if (D.44429_73 != 0)
    goto <bb 42>;
  else
    goto <bb 41>;

<bb 41>:
  D.44431_74 = switch_channel_test_flag (b_channel_3, 120);
  if (D.44431_74 != 0)
    goto <bb 42>;
  else
    goto <bb 43>;

<bb 42>:
  D.44432_75 = switch_core_session_get_uuid (session_9(D));
  switch_ivr_nomedia (D.44432_75, 1);

<bb 43>:
  D.44433_76 = MEM[(struct switch_rtp_engine_t *)smh_10 + 80B].max_missed_packets;
  if (D.44433_76 != 0)
    goto <bb 44>;
  else
    goto <bb 46>;

<bb 44>:
  D.44387_77 = MEM[(struct switch_rtp_engine_t *)smh_10 + 80B].rtp_session;
  if (D.44387_77 != 0B)
    goto <bb 45>;
  else
    goto <bb 46>;

<bb 45>:
  switch_rtp_reset_media_timer (D.44387_77);
  D.44387_79 = MEM[(struct switch_rtp_engine_t *)smh_10 + 80B].rtp_session;
  D.44433_80 = MEM[(struct switch_rtp_engine_t *)smh_10 + 80B].max_missed_packets;
  switch_rtp_set_max_missed_packets (D.44387_79, D.44433_80);

<bb 46>:
  if (b_channel_3 != 0B)
    goto <bb 47>;
  else
    goto <bb 52>;

<bb 47>:
  D.44367_81 = session_9(D)->channel;
  D.44440_82 = switch_channel_test_flag (D.44367_81, 10);
  if (D.44440_82 != 0)
    goto <bb 48>;
  else
    goto <bb 49>;

<bb 48>:
  b_session.86_83 = b_session;
  switch_ivr_unhold (b_session.86_83);
  D.44367_84 = session_9(D)->channel;
  switch_channel_clear_flag (D.44367_84, 16);
  D.44367_85 = session_9(D)->channel;
  switch_channel_clear_flag (D.44367_85, 10);
  goto <bb 52>;

<bb 49>:
  D.44444_86 = switch_channel_test_flag (b_channel_3, 21);
  if (D.44444_86 != 0)
    goto <bb 50>;
  else
    goto <bb 51>;

<bb 50>:
  switch_channel_set_flag_value (b_channel_3, 28, 1);
  switch_channel_set_flag_value (b_channel_3, 20, 1);

<bb 51>:
  switch_channel_wait_for_flag (b_channel_3, 21, 0, 5000, 0B);

<bb 52>:
  D.44449_87 = switch_media_handle_test_media_flag (smh_10, 10);
  if (D.44449_87 == 0)
    goto <bb 53>;
  else
    goto <bb 69>;

<bb 53>:
  D.44367_88 = session_9(D)->channel;
  val_89 = switch_channel_get_variable_dup (D.44367_88, "disable_rtp_auto_adjust", 1, -1);
  # DEBUG val => val_89
  if (val_89 == 0B)
    goto <bb 64>;
  else
    goto <bb 54>;

<bb 54>:
  # DEBUG expr => val_89
  D.49652_192 = strcasecmp (val_89, "yes");
  if (D.49652_192 == 0)
    goto <bb 63>;
  else
    goto <bb 55>;

<bb 55>:
  D.49653_193 = strcasecmp (val_89, "on");
  if (D.49653_193 == 0)
    goto <bb 63>;
  else
    goto <bb 56>;

<bb 56>:
  D.49654_194 = strcasecmp (val_89, "true");
  if (D.49654_194 == 0)
    goto <bb 63>;
  else
    goto <bb 57>;

<bb 57>:
  D.49655_195 = strcasecmp (val_89, "t");
  if (D.49655_195 == 0)
    goto <bb 63>;
  else
    goto <bb 58>;

<bb 58>:
  D.49656_196 = strcasecmp (val_89, "enabled");
  if (D.49656_196 == 0)
    goto <bb 63>;
  else
    goto <bb 59>;

<bb 59>:
  D.49657_197 = strcasecmp (val_89, "active");
  if (D.49657_197 == 0)
    goto <bb 63>;
  else
    goto <bb 60>;

<bb 60>:
  D.49658_198 = strcasecmp (val_89, "allow");
  if (D.49658_198 == 0)
    goto <bb 63>;
  else
    goto <bb 61>;

<bb 61>:
  D.49659_199 = switch_is_number (val_89);
  if (D.49659_199 != 0)
    goto <bb 62>;
  else
    goto <bb 74>;

<bb 62>:
  # DEBUG __nptr => val_89
  D.49660_200 = strtol (val_89, 0B, 10);
  if (D.49660_200 != 0)
    goto <bb 63>;
  else
    goto <bb 74>;

<bb 63>:
Invalid sum of outgoing probabilities 0.0%
Invalid sum of incoming frequencies 400, should be 159
  goto <bb 69>;

<bb 64>:
Invalid sum of incoming frequencies 163, should be 324
  D.44367_91 = session_9(D)->channel;
  D.44454_92 = switch_channel_test_flag (D.44367_91, 106);
  if (D.44454_92 == 0)
    goto <bb 65>;
  else
    goto <bb 69>;

<bb 65>:
  D.44387_93 = MEM[(struct switch_rtp_engine_t *)smh_10 + 80B].rtp_session;
  if (D.44387_93 != 0B)
    goto <bb 66>;
  else
    goto <bb 67>;

<bb 66>:
  switch_rtp_set_flag (D.44387_93, 7);

<bb 67>:
  D.44390_95 = MEM[(struct switch_rtp_engine_t *)smh_10 + 11496B].rtp_session;
  if (D.44390_95 != 0B)
    goto <bb 68>;
  else
    goto <bb 69>;

<bb 68>:
  switch_rtp_set_flag (D.44390_95, 7);

<bb 69>:
Invalid sum of incoming frequencies 1703, should be 1942
  D.44367_97 = session_9(D)->channel;
  switch_channel_clear_flag (D.44367_97, 96);
  D.44367_98 = session_9(D)->channel;
  switch_channel_mark_hold (D.44367_98, 0);
  D.44367_99 = session_9(D)->channel;
  switch_channel_perform_presence (D.44367_99, "unknown", "unhold", 0B, "src/switch_core_media.c", &__func__, 4004);
  D.44387_100 = MEM[(struct switch_rtp_engine_t *)smh_10 + 80B].rtp_session;
  switch_rtp_clear_flag (D.44387_100, 35);
  D.44390_101 = MEM[(struct switch_rtp_engine_t *)smh_10 + 11496B].rtp_session;
  if (D.44390_101 != 0B)
    goto <bb 70>;
  else
    goto <bb 71> (end);

<bb 70>:
  switch_rtp_clear_flag (D.44390_101, 35);

  # changed_2 = PHI <0(14), 1(69), changed_1(38), 1(70), 0(9), 1(32), 1(31), 1(29), 1(27)>
end:
  # DEBUG changed => changed_2
  b_session.86_104 = b_session;
  if (b_session.86_104 != 0B)
    goto <bb 72>;
  else
    goto <bb 73>;

<bb 72>:
  switch_core_session_rwunlock (b_session.86_104);

<bb 73>:
  # changed_6 = PHI <0(4), changed_2(72), changed_2(71)>
  return changed_6;

<bb 74>:
  goto <bb 64>;

}



;; Function switch_core_media_negotiate_sdp (switch_core_media_negotiate_sdp)

switch_core_media_negotiate_sdp (struct switch_core_session_t * session, const char * r_sdp, uint8_t * proceed, switch_sdp_type_t sdp_type)
{
  int D.49758;
  _Bool D.49757;
  int D.49755;
  switch_bool_t D.49754;
  int D.49753;
  int D.49752;
  int D.49751;
  int D.49750;
  int D.49749;
  int D.49748;
  int D.49747;
  int D.49743;
  switch_bool_t D.49742;
  int D.49741;
  int D.49740;
  int D.49739;
  int D.49738;
  int D.49737;
  int D.49736;
  int D.49735;
  int D.49731;
  switch_bool_t D.49730;
  int D.49729;
  int D.49728;
  int D.49727;
  int D.49726;
  int D.49725;
  int D.49724;
  int D.49723;
  int D.49719;
  switch_bool_t D.49718;
  int D.49717;
  int D.49716;
  int D.49715;
  int D.49714;
  int D.49713;
  int D.49712;
  int D.49711;
  int D.49707;
  switch_bool_t D.49706;
  int D.49705;
  int D.49704;
  int D.49703;
  int D.49702;
  int D.49701;
  int D.49700;
  int D.49699;
  int D.49695;
  switch_bool_t D.49694;
  int D.49693;
  int D.49692;
  int D.49691;
  int D.49690;
  int D.49689;
  int D.49688;
  int D.49687;
  int D.49683;
  switch_bool_t D.49682;
  int D.49681;
  int D.49680;
  int D.49679;
  int D.49678;
  int D.49677;
  int D.49676;
  int D.49675;
  uint32_t D.47965;
  uint32_t D.47964;
  struct switch_mutex_t * D.47963;
  struct switch_codec_interface_t * D.47962;
  const struct switch_codec_implementation_t * D.47961;
  const char D.47957;
  const char D.47950;
  int D.47946;
  const char D.47943;
  const char D.47939;
  uint32_t D.47934;
  uint32_t D.47933;
  struct switch_mutex_t * D.47932;
  struct switch_codec_interface_t * D.47931;
  const struct switch_codec_implementation_t * D.47930;
  const char D.47926;
  int D.47922;
  const char D.47919;
  const char D.47915;
  unsigned char csui.173;
  const char D.47900;
  int D.47890;
  const char D.47887;
  const char D.47877;
  uint8_t D.47874;
  struct payload_map_t * pmap;
  uint8_t D.47871;
  struct payload_map_t * pmap;
  struct payload_map_t * pmap;
  int j;
  char tmp[50];
  const struct switch_codec_implementation_t * imp;
  int crypto_tag;
  register int __result;
  int i;
  int vmatch;
  const struct switch_codec_implementation_t * mimp;
  const char * rm_encoding;
  struct sdp_rtpmap_t * map;
  char tmp[50];
  struct payload_map_t * pmap;
  int j;
  const struct switch_codec_implementation_t * timp;
  int num;
  char tmp[80];
  char * prefs[1];
  const struct switch_codec_implementation_t * search[1];
  int j;
  uint32_t codec_rate;
  uint32_t bit_rate;
  const struct switch_codec_implementation_t * imp;
  struct switch_codec_fmtp_t codec_fmtp;
  uint32_t map_bit_rate;
  const char * rm_encoding;
  int32_t i;
  int crypto_tag;
  struct sdp_rtpmap_t * map;
  const char * err;
  char tmp[32];
  switch_port_t remote_port;
  char * remote_host;
  struct switch_core_session_message_t * msg;
  struct switch_channel_t * other_channel;
  int pass;
  const char * var;
  struct switch_t38_options_t * t38_options;
  struct switch_core_session_t * other_session;
  struct sdp_connection_t * connection;
  register int __result;
  static const char __func__[32] = "switch_core_media_negotiate_sdp";
  static const char __PRETTY_FUNCTION__[32] = "switch_core_media_negotiate_sdp";
  int nm_idx;
  int m_idx;
  const char * tmp;
  uint32_t fmtp_remote_codec_rate;
  uint32_t remote_codec_rate;
  int codec_ms;
  struct matches near_matches[30];
  struct matches matches[30];
  struct sdp_rtpmap_t * near_map;
  struct sdp_rtpmap_t * mmap;
  const struct switch_codec_implementation_t * near_match;
  const struct switch_codec_implementation_t * mimp;
  uint32_t near_rate;
  struct switch_media_handle_t * smh;
  int total_codecs;
  const struct switch_codec_implementation_t * * codec_array;
  int reneg;
  struct sdp_session_t * sdp;
  struct sdp_parser_t * parser;
  int scrooge;
  int got_webrtc;
  int got_udptl;
  int got_savp;
  int got_avp;
  int got_audio;
  int got_video_crypto;
  int got_crypto;
  const char * crypto;
  const char * val;
  struct switch_channel_t * channel;
  int greedy;
  int recvonly;
  int sendonly;
  int dmaxptime;
  int maxptime;
  int dptime;
  int ptime;
  struct sdp_attribute_t * attr;
  struct sdp_media_t * m;
  switch_payload_t cng_pt;
  switch_payload_t best_te;
  uint8_t match;
  switch_status_t D.45316;
  int D.45306;
  switch_payload_t D.45305;
  int D.45304;
  switch_payload_t D.45303;
  char * D.45302;
  char * D.45301;
  int D.45300;
  switch_port_t D.45299;
  char * D.45298;
  const char * D.45297;
  char * D.45296;
  uint32_t D.45295;
  int D.45294;
  const int D.45293;
  unsigned char D.45292;
  char * D.45291;
  switch_payload_t D.45290;
  struct switch_rtp_t * D.45287;
  struct payload_map_t * D.45286;
  uint32_t D.45283;
  int D.45282;
  const int D.45281;
  const uint32_t D.45280;
  const struct switch_codec_implementation_t * D.45279;
  uint32_t D.45278;
  <unnamed-unsigned:7> D.45277;
  const char * D.45276;
  const char * D.45275;
  struct sdp_rtpmap_t * D.45274;
  _Bool D.45267;
  _Bool D.45266;
  const uint32_t D.45263;
  long unsigned int D.45262;
  int D.45259;
  const char * D.45255;
  int D.45251;
  const switch_payload_t D.45250;
  char * const D.45249;
  int D.45248;
  <unnamed-unsigned:7> D.45247;
  uint32_t D.45244;
  switch_call_direction_t D.45241;
  const switch_codec_type_t D.45238;
  const struct switch_codec_implementation_t * * D.45237;
  unsigned int D.45236;
  unsigned int i.99;
  const char * D.45227;
  int D.45219;
  char * D.45214;
  short unsigned int D.45213;
  const unsigned char D.45185;
  int D.45175;
  const unsigned char D.45174;
  int D.45168;
  uint8_t D.45164;
  uint8_t D.45163;
  const char * D.45160;
  int D.45154;
  int D.45151;
  int D.45143;
  int D.45140;
  int D.45137;
  const char * D.45124;
  int D.45120;
  switch_call_direction_t D.45114;
  int D.45111;
  switch_payload_t D.45110;
  uint32_t D.45109;
  int32_t D.45107;
  switch_status_t D.45099;
  uint32_t D.45098;
  int D.45093;
  switch_payload_t D.45092;
  int D.45089;
  char * D.45088;
  short unsigned int D.45087;
  char * D.45086;
  const char * D.45085;
  const char * D.45082;
  const char * D.45079;
  int D.45070;
  const char * D.45066;
  uint32_t D.45064;
  const int D.45063;
  uint32_t D.45062;
  int D.45061;
  const int D.45060;
  const uint32_t D.45059;
  int D.45056;
  const uint32_t D.45055;
  unsigned char D.45054;
  <unnamed-unsigned:7> D.45053;
  char * D.45052;
  char * const D.45051;
  char * D.45050;
  const char * D.45049;
  switch_payload_t D.45048;
  uint32_t D.45043;
  int D.45042;
  const int D.45041;
  const uint32_t D.45040;
  const struct switch_codec_implementation_t * D.45039;
  uint32_t D.45038;
  <unnamed-unsigned:7> D.45037;
  const char * D.45036;
  const char * D.45035;
  struct sdp_rtpmap_t * D.45034;
  int near_rate.96;
  int D.45028;
  const uint32_t D.45027;
  char * const D.45026;
  int D.45025;
  const int D.45024;
  char * const D.45013;
  int D.45012;
  _Bool D.45009;
  _Bool D.45008;
  _Bool D.45007;
  _Bool D.45004;
  _Bool D.45003;
  _Bool D.45002;
  switch_rtp_crypto_mode_t D.45001;
  _Bool D.44999;
  _Bool D.44998;
  _Bool D.44997;
  int D.44996;
  int codec_rate.94;
  int D.44993;
  _Bool D.44991;
  _Bool D.44990;
  _Bool D.44989;
  const uint32_t D.44984;
  int D.44979;
  int D.44977;
  _Bool D.44974;
  _Bool D.44973;
  _Bool D.44972;
  _Bool D.44969;
  _Bool D.44968;
  int D.44963;
  int D.44960;
  _Bool D.44957;
  _Bool D.44956;
  _Bool D.44955;
  _Bool D.44952;
  _Bool D.44951;
  _Bool D.44950;
  const uint32_t D.44947;
  int D.44944;
  int iftmp.93;
  int D.44937;
  int D.44936;
  int D.44930;
  const int D.44929;
  int D.44928;
  const switch_payload_t D.44927;
  char * const D.44926;
  int remote_codec_rate.92;
  int D.44924;
  const switch_codec_type_t D.44921;
  const int D.44920;
  const struct switch_codec_implementation_t * * D.44919;
  unsigned int D.44918;
  unsigned int i.91;
  uint32_t D.44914;
  int D.44911;
  int D.44908;
  switch_status_t D.44905;
  int D.44901;
  int D.44897;
  const char * D.44893;
  int D.44890;
  const char * D.44889;
  uint32_t D.44885;
  uint32_t D.44884;
  _Bool D.44879;
  _Bool D.44878;
  _Bool D.44877;
  switch_payload_t D.44869;
  int D.44868;
  int D.44863;
  int32_t D.44858;
  int D.44857;
  <unnamed-unsigned:7> D.44856;
  long unsigned int D.44855;
  long unsigned int D.44854;
  int D.44848;
  int D.44839;
  _Bool D.44836;
  _Bool D.44835;
  _Bool D.44834;
  _Bool D.44831;
  _Bool D.44830;
  _Bool D.44829;
  const char * D.44825;
  unsigned int D.44822;
  switch_core_media_NDLB_t D.44821;
  int D.44815;
  int D.44810;
  int D.44805;
  char * D.44800;
  short unsigned int D.44799;
  int D.44795;
  int D.44787;
  int D.44784;
  int D.44781;
  _Bool D.44779;
  _Bool D.44778;
  _Bool D.44777;
  char * D.44773;
  struct switch_channel_t * D.44772;
  const char * err.90;
  switch_status_t D.44768;
  int D.44767;
  int D.44766;
  char * D.44765;
  char * D.44764;
  switch_port_t D.44762;
  char * D.44760;
  int D.39032;
  _Bool D.44758;
  _Bool D.44757;
  _Bool D.44756;
  uint16_t D.44753;
  char * D.44752;
  const char * D.44751;
  struct payload_map_t * D.44750;
  int D.44747;
  const char * D.44746;
  int D.44743;
  const char * D.44742;
  char * D.44741;
  char * D.44740;
  uint32_t D.44737;
  struct switch_core_session_t * other_session.89;
  switch_status_t D.44733;
  uint8_t D.44730;
  uint32_t D.44728;
  uint32_t D.44726;
  uint32_t D.44724;
  uint32_t D.44723;
  int D.44716;
  int D.44707;
  uint32_t D.44706;
  int D.44703;
  const char * D.44702;
  int D.44699;
  long unsigned int D.44697;
  sdp_media_e D.44681;
  _Bool D.44678;
  _Bool D.44677;
  _Bool D.44676;
  sdp_proto_e D.44675;
  int D.44672;
  const char * D.44669;
  sdp_proto_e D.44666;
  const char * D.44665;
  const char * D.44663;
  const char * D.44661;
  int D.44655;
  struct switch_media_bug_t * D.44649;
  int D.44640;
  int D.44636;
  int32_t D.44631;
  _Bool D.44626;
  _Bool D.44625;
  _Bool D.44624;
  int D.44621;
  const char * D.44619;
  int D.44616;
  int D.44614;
  uint8_t D.44606;
  struct switch_rtp_t * D.44605;
  int D.44602;
  int D.44598;
  int D.44594;
  const char * D.44590;
  const char * D.44548;
  struct sdp_connection_t * D.44546;
  _Bool D.44544;
  _Bool D.44543;
  _Bool D.44542;
  unsigned char D.44541;
  unsigned char D.44540;
  struct switch_channel_t * D.44530;
  unsigned int D.44529;
  char * D.44526;
  unsigned int D.44523;
  unsigned int D.44522;
  switch_rtp_bug_flag_t D.44521;
  char * D.44518;
  int D.44514;
  int D.44513;
  switch_rtp_bug_flag_t D.44512;
  char * D.44509;
  char * D.44508;
  const char * D.44507;
  struct sdp_origin_t * D.44506;
  int D.44502;
  int D.44498;
  int D.44494;
  int32_t D.44491;
  int32_t D.44490;
  struct switch_channel_t * D.44482;
  struct switch_core_session_t * D.44481;
  int D.44478;
  int D.44473;
  size_t D.44472;
  struct switch_core_media_params_t * D.44471;

<bb 2>:
  # DEBUG match => 0
  # DEBUG best_te => 0
  # DEBUG te => 0
  # DEBUG cng_pt => 0
  # DEBUG ptime => 0
  # DEBUG dptime => 0
  # DEBUG maxptime => 0
  # DEBUG dmaxptime => 0
  # DEBUG sendonly => 0
  # DEBUG recvonly => 0
  # DEBUG greedy => 0
  # DEBUG x => 0
  # DEBUG skip => 0
  channel_162 = switch_core_session_get_channel (session_161(D));
  # DEBUG channel => channel_162
  # DEBUG crypto => 0B
  # DEBUG got_crypto => 0
  # DEBUG got_video_crypto => 0
  # DEBUG got_audio => 0
  # DEBUG got_avp => 0
  # DEBUG got_video_avp => 0
  # DEBUG got_video_savp => 0
  # DEBUG got_savp => 0
  # DEBUG got_udptl => 0
  # DEBUG got_webrtc => 0
  # DEBUG scrooge => 0
  # DEBUG parser => 0B
  # DEBUG reneg => 1
  # DEBUG near_rate => 0
  # DEBUG mimp => 0B
  # DEBUG near_match => 0B
  # DEBUG mmap => 0B
  # DEBUG near_map => 0B
  matches = {};
  near_matches = {};
  # DEBUG codec_ms => 0
  # DEBUG remote_codec_rate => 0
  # DEBUG fmtp_remote_codec_rate => 0
  # DEBUG m_idx => 0
  # DEBUG nm_idx => 0
  if (session_161(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 2922, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_186 = session_161(D)->media_handle;
  # DEBUG smh => smh_186
  if (smh_186 == 0B)
    goto <bb 417>;
  else
    goto <bb 5>;

<bb 5>:
  # DEBUG D#15 => &smh_186->engines
  # DEBUG a_engine => D#15
  # DEBUG D#14 => &smh_186->engines[1]
  # DEBUG v_engine => D#14
  codec_array_190 = &smh_186->codecs;
  # DEBUG codec_array => codec_array_190
  D.44471_191 = smh_186->mparams;
  total_codecs_192 = D.44471_191->num_codecs;
  # DEBUG total_codecs => total_codecs_192
  D.44472_194 = strlen (r_sdp_193(D));
  D.44473_195 = (int) D.44472_194;
  parser_196 = sdp_parse (0B, r_sdp_193(D), D.44473_195, 0);
  # DEBUG parser => parser_196
  if (parser_196 == 0B)
    goto <bb 417>;
  else
    goto <bb 6>;

<bb 6>:
  sdp_198 = sdp_session (parser_196);
  # DEBUG sdp => sdp_198
  if (sdp_198 == 0B)
    goto <bb 7>;
  else
    goto <bb 8>;

<bb 7>:
  sdp_parser_free (parser_196);
  goto <bb 417>;

<bb 8>:
  D.44478_200 = dtls_ok (session_161(D));
  if (D.44478_200 != 0)
    goto <bb 9>;
  else
    goto <bb 20>;

<bb 9>:
  D.44481_201 = smh_186->session;
  D.44482_202 = D.44481_201->channel;
  tmp_203 = switch_channel_get_variable_dup (D.44482_202, "webrtc_enable_dtls", 1, -1);
  # DEBUG tmp => tmp_203
  if (tmp_203 != 0B)
    goto <bb 10>;
  else
    goto <bb 20>;

<bb 10>:
  # DEBUG expr => tmp_203
  D.49675_1550 = strcasecmp (tmp_203, "no");
  if (D.49675_1550 == 0)
    goto <bb 19>;
  else
    goto <bb 11>;

<bb 11>:
  D.49676_1551 = strcasecmp (tmp_203, "off");
  if (D.49676_1551 == 0)
    goto <bb 19>;
  else
    goto <bb 12>;

<bb 12>:
  D.49677_1552 = strcasecmp (tmp_203, "false");
  if (D.49677_1552 == 0)
    goto <bb 19>;
  else
    goto <bb 13>;

<bb 13>:
  D.49678_1553 = strcasecmp (tmp_203, "f");
  if (D.49678_1553 == 0)
    goto <bb 19>;
  else
    goto <bb 14>;

<bb 14>:
  D.49679_1554 = strcasecmp (tmp_203, "disabled");
  if (D.49679_1554 == 0)
    goto <bb 19>;
  else
    goto <bb 15>;

<bb 15>:
  D.49680_1555 = strcasecmp (tmp_203, "inactive");
  if (D.49680_1555 == 0)
    goto <bb 19>;
  else
    goto <bb 16>;

<bb 16>:
  D.49681_1556 = strcasecmp (tmp_203, "disallow");
  if (D.49681_1556 == 0)
    goto <bb 19>;
  else
    goto <bb 17>;

<bb 17>:
  D.49682_1557 = switch_is_number (tmp_203);
  if (D.49682_1557 != 0)
    goto <bb 18>;
  else
    goto <bb 418>;

<bb 18>:
  # DEBUG __nptr => tmp_203
  D.49683_1558 = strtol (tmp_203, 0B, 10);
  if (D.49683_1558 == 0)
    goto <bb 19>;
  else
    goto <bb 418>;

<bb 19>:
  D.44481_205 = smh_186->session;
  D.44482_206 = D.44481_205->channel;
  switch_channel_clear_flag (D.44482_206, 111);
  D.44481_207 = smh_186->session;
  D.44482_208 = D.44481_207->channel;
  switch_channel_clear_flag (D.44482_208, 109);

<bb 20>:
  switch_core_session_parse_crypto_prefs (session_161(D));
  # DEBUG engine => D#15
  pmap_1457 = MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].payload_map;
  # DEBUG pmap => pmap_1457
  # DEBUG pmap => pmap_1457
  if (pmap_1457 != 0B)
    goto <bb 21>;
  else
    goto <bb 24>;

<bb 21>:
  D.47871_1661 = pmap_1457->allocated;
  if (D.47871_1661 != 0)
    goto <bb 22>;
  else
    goto <bb 24>;

<bb 22>:
  # pmap_1747 = PHI <pmap_1459(23), pmap_1457(21)>
  pmap_1747->negotiated = 0;
  pmap_1747->current = 0;
  pmap_1459 = pmap_1747->next;
  # DEBUG pmap => pmap_1459
  # DEBUG pmap => pmap_1459
  if (pmap_1459 != 0B)
    goto <bb 23>;
  else
    goto <bb 24>;

<bb 23>:
  D.47871_1460 = pmap_1459->allocated;
  if (D.47871_1460 != 0)
    goto <bb 22>;
  else
    goto <bb 24>;

<bb 24>:
  # DEBUG engine => D#14
  pmap_1461 = MEM[(struct switch_rtp_engine_t *)smh_186 + 11496B].payload_map;
  # DEBUG pmap => pmap_1461
  # DEBUG pmap => pmap_1461
  if (pmap_1461 != 0B)
    goto <bb 25>;
  else
    goto <bb 28>;

<bb 25>:
  D.47874_1670 = pmap_1461->allocated;
  if (D.47874_1670 != 0)
    goto <bb 26>;
  else
    goto <bb 28>;

<bb 26>:
  # pmap_1672 = PHI <pmap_1463(27), pmap_1461(25)>
  pmap_1672->negotiated = 0;
  pmap_1672->current = 0;
  pmap_1463 = pmap_1672->next;
  # DEBUG pmap => pmap_1463
  # DEBUG pmap => pmap_1463
  if (pmap_1463 != 0B)
    goto <bb 27>;
  else
    goto <bb 28>;

<bb 27>:
  D.47874_1464 = pmap_1463->allocated;
  if (D.47874_1464 != 0)
    goto <bb 26>;
  else
    goto <bb 28>;

<bb 28>:
  if (proceed_209(D) != 0B)
    goto <bb 29>;
  else
    goto <bb 30>;

<bb 29>:
  *proceed_209(D) = 1;

<bb 30>:
  D.44490_210 = switch_media_handle_test_media_flag (smh_186, 3);
  greedy_211 = D.44490_210 != 0;
  # DEBUG greedy => greedy_211
  D.44491_212 = switch_media_handle_test_media_flag (smh_186, 4);
  scrooge_213 = D.44491_212 != 0;
  # DEBUG scrooge => scrooge_213
  val_214 = switch_channel_get_variable_dup (channel_162, "rtp_codec_negotiation", 1, -1);
  # DEBUG val => val_214
  if (val_214 != 0B)
    goto <bb 31>;
  else
    goto <bb 35>;

<bb 31>:
  D.44494_215 = strcasecmp (val_214, "generous");
  if (D.44494_215 == 0)
    goto <bb 35>;
  else
    goto <bb 32>;

<bb 32>:
  D.44498_218 = strcasecmp (val_214, "greedy");
  if (D.44498_218 == 0)
    goto <bb 35>;
  else
    goto <bb 33>;

<bb 33>:
  D.44502_221 = strcasecmp (val_214, "scrooge");
  if (D.44502_221 == 0)
    goto <bb 35>;
  else
    goto <bb 34>;

<bb 34>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2969, session_161(D), 7, "rtp_codec_negotiation ignored invalid value : \'%s\' \n", val_214);

<bb 35>:
  # greedy_47 = PHI <greedy_211(30), 0(31), 1(32), 1(33), greedy_211(34)>
  # scrooge_80 = PHI <scrooge_213(30), 0(31), 0(32), 1(33), scrooge_213(34)>
  # DEBUG scrooge => scrooge_80
  # DEBUG greedy => greedy_47
  D.44506_224 = sdp_198->sdp_origin;
  D.44507_225 = D.44506_224->o_username;
  D.44508_226 = switch_core_perform_session_strdup (session_161(D), D.44507_225, "src/switch_core_media.c", &__func__, 2973);
  smh_186->origin = D.44508_226;
  if (D.44508_226 != 0B)
    goto <bb 36>;
  else
    goto <bb 42>;

<bb 36>:
  D.44471_228 = smh_186->mparams;
  D.44512_229 = D.44471_228->auto_rtp_bugs;
  D.44513_230 = (int) D.44512_229;
  D.44514_231 = D.44513_230 & 1;
  if (D.44514_231 != 0)
    goto <bb 37>;
  else
    goto <bb 39>;

<bb 37>:
  D.44518_234 = strstr (D.44508_226, "CiscoSystemsSIP-GW-UserAgent");
  if (D.44518_234 != 0B)
    goto <bb 38>;
  else
    goto <bb 39>;

<bb 38>:
  D.44521_235 = MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].rtp_bugs;
  D.44522_236 = D.44521_235 | 1;
  MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].rtp_bugs = D.44522_236;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2979, session_161(D), 7, "Activate Buggy RFC2833 Mode!\n");

<bb 39>:
  D.44471_237 = smh_186->mparams;
  D.44512_238 = D.44471_237->auto_rtp_bugs;
  D.44523_239 = D.44512_238 & 2;
  if (D.44523_239 != 0)
    goto <bb 40>;
  else
    goto <bb 42>;

<bb 40>:
  D.44509_240 = smh_186->origin;
  D.44526_241 = strstr (D.44509_240, "Sonus_UAC");
  if (D.44526_241 != 0B)
    goto <bb 41>;
  else
    goto <bb 42>;

<bb 41>:
  D.44521_242 = MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].rtp_bugs;
  D.44529_243 = D.44521_242 | 2;
  MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].rtp_bugs = D.44529_243;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2986, session_161(D), 4, "Hello,\nI see you have a Sonus!\nFYI, Sonus cannot follow the RFC on the proper way to send DTMF.\nSadly, my creator had to spend several hours figuring this out so I thought you\'d like to know that!\nDon\'t worry, DTMF will work but you may want to ask them to fix it......\n");

<bb 42>:
  D.44530_244 = session_161(D)->channel;
  val_245 = switch_channel_get_variable_dup (D.44530_244, "rtp_liberal_dtmf", 1, -1);
  # DEBUG val => val_245
  if (val_245 != 0B)
    goto <bb 43>;
  else
    goto <bb 53>;

<bb 43>:
  # DEBUG expr => val_245
  D.49687_1560 = strcasecmp (val_245, "yes");
  if (D.49687_1560 == 0)
    goto <bb 52>;
  else
    goto <bb 44>;

<bb 44>:
  D.49688_1561 = strcasecmp (val_245, "on");
  if (D.49688_1561 == 0)
    goto <bb 52>;
  else
    goto <bb 45>;

<bb 45>:
  D.49689_1562 = strcasecmp (val_245, "true");
  if (D.49689_1562 == 0)
    goto <bb 52>;
  else
    goto <bb 46>;

<bb 46>:
  D.49690_1563 = strcasecmp (val_245, "t");
  if (D.49690_1563 == 0)
    goto <bb 52>;
  else
    goto <bb 47>;

<bb 47>:
  D.49691_1564 = strcasecmp (val_245, "enabled");
  if (D.49691_1564 == 0)
    goto <bb 52>;
  else
    goto <bb 48>;

<bb 48>:
  D.49692_1565 = strcasecmp (val_245, "active");
  if (D.49692_1565 == 0)
    goto <bb 52>;
  else
    goto <bb 49>;

<bb 49>:
  D.49693_1566 = strcasecmp (val_245, "allow");
  if (D.49693_1566 == 0)
    goto <bb 52>;
  else
    goto <bb 50>;

<bb 50>:
  D.49694_1567 = switch_is_number (val_245);
  if (D.49694_1567 != 0)
    goto <bb 51>;
  else
    goto <bb 419>;

<bb 51>:
  # DEBUG __nptr => val_245
  D.49695_1568 = strtol (val_245, 0B, 10);
  if (D.49695_1568 != 0)
    goto <bb 52>;
  else
    goto <bb 419>;

<bb 52>:
  D.44530_247 = session_161(D)->channel;
  switch_channel_set_flag_value (D.44530_247, 93, 1);

<bb 53>:
  m_248 = sdp_198->sdp_media;
  # DEBUG m => m_248
  if (m_248 != 0B)
    goto <bb 54>;
  else
    goto <bb 59>;

<bb 54>:
  D.44540_249 = BIT_FIELD_REF <*m_248, 8, 544>;
  D.44541_250 = D.44540_249 & 6;
  D.44542_251 = D.44541_250 == 2;
  D.44543_252 = D.44541_250 == 0;
  D.44544_253 = D.44542_251 | D.44543_252;
  if (D.44544_253 != 0)
    goto <bb 58>;
  else
    goto <bb 55>;

<bb 55>:
  D.44546_254 = m_248->m_connections;
  if (D.44546_254 != 0B)
    goto <bb 56>;
  else
    goto <bb 59>;

<bb 56>:
  D.44548_256 = D.44546_254->c_address;
  if (D.44548_256 != 0B)
    goto <bb 57>;
  else
    goto <bb 59>;

<bb 57>:
  # DEBUG __s2_len => 7
  __result_300 = __builtin_strcmp (D.44548_256, "0.0.0.0");
  if (__result_300 == 0)
    goto <bb 58>;
  else
    goto <bb 59>;

<bb 58>:
  # DEBUG sendonly => 2

<bb 59>:
  # sendonly_42 = PHI <0(53), 0(55), 0(56), 0(57), 2(58)>
  # DEBUG sendonly => sendonly_42
  attr_303 = sdp_198->sdp_attributes;
  # DEBUG attr => attr_303
  # DEBUG recvonly => 0
  # DEBUG sendonly => sendonly_42
  # DEBUG dmaxptime => 0
  # DEBUG dptime => 0
  # DEBUG attr => attr_303
  if (attr_303 != 0B)
    goto <bb 60>;
  else
    goto <bb 76>;

<bb 60>:
  # attr_1666 = PHI <attr_334(75), attr_303(59)>
  # dptime_1671 = PHI <dptime_36(75), 0(59)>
  # dmaxptime_1865 = PHI <dmaxptime_40(75), 0(59)>
  # sendonly_1689 = PHI <sendonly_43(75), sendonly_42(59)>
  # recvonly_1894 = PHI <recvonly_45(75), 0(59)>
  D.44590_304 = attr_1666->a_name;
  # DEBUG s => D.44590_304
  if (D.44590_304 == 0B)
    goto <bb 75>;
  else
    goto <bb 61>;

<bb 61>:
  D.47877_1465 = *D.44590_304;
  if (D.47877_1465 == 0)
    goto <bb 75>;
  else
    goto <bb 420>;

<bb 62>:
  # DEBUG sendonly => 1
  D.44530_309 = session_161(D)->channel;
  switch_channel_set_variable_var_check (D.44530_309, "media_audio_mode", "recvonly", 1);
  goto <bb 75>;

<bb 63>:
  D.44598_311 = strcasecmp (D.44590_304, "inactive");
  if (D.44598_311 == 0)
    goto <bb 64>;
  else
    goto <bb 65>;

<bb 64>:
  # DEBUG sendonly => 1
  D.44530_313 = session_161(D)->channel;
  switch_channel_set_variable_var_check (D.44530_313, "media_audio_mode", "inactive", 1);
  goto <bb 75>;

<bb 65>:
  D.44602_315 = strcasecmp (D.44590_304, "recvonly");
  if (D.44602_315 == 0)
    goto <bb 66>;
  else
    goto <bb 69>;

<bb 66>:
  D.44530_316 = session_161(D)->channel;
  switch_channel_set_variable_var_check (D.44530_316, "media_audio_mode", "sendonly", 1);
  # DEBUG recvonly => 1
  D.44605_318 = MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].rtp_session;
  D.44606_319 = switch_rtp_ready (D.44605_318);
  if (D.44606_319 != 0)
    goto <bb 67>;
  else
    goto <bb 68>;

<bb 67>:
  D.44605_320 = MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].rtp_session;
  switch_rtp_set_max_missed_packets (D.44605_320, 0);
  MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].max_missed_hold_packets = 0;
  MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].max_missed_packets = 0;
  goto <bb 75>;

<bb 68>:
  D.44530_321 = session_161(D)->channel;
  switch_channel_set_variable_var_check (D.44530_321, "rtp_timeout_sec", "0", 1);
  D.44530_322 = session_161(D)->channel;
  switch_channel_set_variable_var_check (D.44530_322, "rtp_hold_timeout_sec", "0", 1);
  goto <bb 75>;

<bb 69>:
  if (sendonly_1689 != 2)
    goto <bb 70>;
  else
    goto <bb 71>;

<bb 70>:
  D.44614_324 = strcasecmp (D.44590_304, "sendrecv");
  if (D.44614_324 == 0)
    goto <bb 75>;
  else
    goto <bb 71>;

<bb 71>:
  D.44616_327 = strcasecmp (D.44590_304, "ptime");
  if (D.44616_327 == 0)
    goto <bb 72>;
  else
    goto <bb 73>;

<bb 72>:
  D.44619_328 = attr_1666->a_value;
  # DEBUG __nptr => D.44619_328
  dptime_1467 = strtol (D.44619_328, 0B, 10);
  # DEBUG dptime => NULL
  goto <bb 75>;

<bb 73>:
  D.44621_331 = strcasecmp (D.44590_304, "maxptime");
  if (D.44621_331 == 0)
    goto <bb 74>;
  else
    goto <bb 75>;

<bb 74>:
  D.44619_332 = attr_1666->a_value;
  # DEBUG __nptr => D.44619_332
  dmaxptime_1468 = strtol (D.44619_332, 0B, 10);
  # DEBUG dmaxptime => NULL

<bb 75>:
  # dptime_36 = PHI <dptime_1671(61), dptime_1671(62), dptime_1671(64), dptime_1671(68), dptime_1671(70), dptime_1467(72), dptime_1671(73), dptime_1671(74), dptime_1671(67), dptime_1671(60)>
  # dmaxptime_40 = PHI <dmaxptime_1865(61), dmaxptime_1865(62), dmaxptime_1865(64), dmaxptime_1865(68), dmaxptime_1865(70), dmaxptime_1865(72), dmaxptime_1865(73), dmaxptime_1468(74), dmaxptime_1865(67), dmaxptime_1865(60)>
  # sendonly_43 = PHI <sendonly_1689(61), 1(62), 1(64), sendonly_1689(68), 0(70), sendonly_1689(72), sendonly_1689(73), sendonly_1689(74), sendonly_1689(67), sendonly_1689(60)>
  # recvonly_45 = PHI <recvonly_1894(61), recvonly_1894(62), recvonly_1894(64), 1(68), recvonly_1894(70), recvonly_1894(72), recvonly_1894(73), recvonly_1894(74), 1(67), recvonly_1894(60)>
  # DEBUG recvonly => recvonly_45
  # DEBUG sendonly => sendonly_43
  # DEBUG dmaxptime => dmaxptime_40
  # DEBUG dptime => dptime_36
  attr_334 = attr_1666->a_next;
  # DEBUG attr => attr_334
  # DEBUG recvonly => recvonly_45
  # DEBUG sendonly => sendonly_43
  # DEBUG dmaxptime => dmaxptime_40
  # DEBUG dptime => dptime_36
  # DEBUG attr => attr_334
  if (attr_334 != 0B)
    goto <bb 60>;
  else
    goto <bb 76>;

<bb 76>:
  # dptime_1035 = PHI <dptime_36(75), 0(59)>
  # dmaxptime_1005 = PHI <dmaxptime_40(75), 0(59)>
  # sendonly_1006 = PHI <sendonly_43(75), sendonly_42(59)>
  # recvonly_1654 = PHI <recvonly_45(75), 0(59)>
  D.44624_335 = sendonly_1006 != 1;
  D.44625_336 = recvonly_1654 != 1;
  D.44626_337 = D.44624_335 & D.44625_336;
  if (D.44626_337 != 0)
    goto <bb 77>;
  else
    goto <bb 78>;

<bb 77>:
  D.44530_338 = session_161(D)->channel;
  switch_channel_set_variable_var_check (D.44530_338, "media_audio_mode", 0B, 1);

<bb 78>:
  D.44631_339 = switch_media_handle_test_media_flag (smh_186, 5);
  if (D.44631_339 == 0)
    goto <bb 79>;
  else
    goto <bb 422>;

<bb 79>:
  D.44530_340 = session_161(D)->channel;
  val_341 = switch_channel_get_variable_dup (D.44530_340, "rtp_disable_hold", 1, -1);
  # DEBUG val => val_341
  if (val_341 == 0B)
    goto <bb 90>;
  else
    goto <bb 80>;

<bb 80>:
  # DEBUG expr => val_341
  D.49699_1570 = strcasecmp (val_341, "yes");
  if (D.49699_1570 == 0)
    goto <bb 89>;
  else
    goto <bb 81>;

<bb 81>:
  D.49700_1571 = strcasecmp (val_341, "on");
  if (D.49700_1571 == 0)
    goto <bb 89>;
  else
    goto <bb 82>;

<bb 82>:
  D.49701_1572 = strcasecmp (val_341, "true");
  if (D.49701_1572 == 0)
    goto <bb 89>;
  else
    goto <bb 83>;

<bb 83>:
  D.49702_1573 = strcasecmp (val_341, "t");
  if (D.49702_1573 == 0)
    goto <bb 89>;
  else
    goto <bb 84>;

<bb 84>:
  D.49703_1574 = strcasecmp (val_341, "enabled");
  if (D.49703_1574 == 0)
    goto <bb 89>;
  else
    goto <bb 85>;

<bb 85>:
  D.49704_1575 = strcasecmp (val_341, "active");
  if (D.49704_1575 == 0)
    goto <bb 89>;
  else
    goto <bb 86>;

<bb 86>:
  D.49705_1576 = strcasecmp (val_341, "allow");
  if (D.49705_1576 == 0)
    goto <bb 89>;
  else
    goto <bb 87>;

<bb 87>:
  D.49706_1577 = switch_is_number (val_341);
  if (D.49706_1577 != 0)
    goto <bb 88>;
  else
    goto <bb 421>;

<bb 88>:
  # DEBUG __nptr => val_341
  D.49707_1578 = strtol (val_341, 0B, 10);
  if (D.49707_1578 != 0)
    goto <bb 89>;
  else
    goto <bb 421>;

<bb 89>:
Invalid sum of outgoing probabilities 25.0%
  goto <bb 422>;

<bb 90>:
  D.44471_343 = smh_186->mparams;
  D.44636_344 = D.44471_343->hold_laps;
  if (D.44636_344 == 0)
    goto <bb 91>;
  else
    goto <bb 422>;

<bb 91>:
  D.44471_343->hold_laps = 1;
  D.44640_348 = switch_core_media_toggle_hold (session_161(D), sendonly_1006);
  if (D.44640_348 != 0)
    goto <bb 92>;
  else
    goto <bb 422>;

<bb 92>:
  reneg_349 = switch_media_handle_test_media_flag (smh_186, 6);
  # DEBUG reneg => reneg_349
  D.44530_350 = session_161(D)->channel;
  val_351 = switch_channel_get_variable_dup (D.44530_350, "rtp_renegotiate_codec_on_hold", 1, -1);
  # DEBUG val => val_351
  if (val_351 != 0B)
    goto <bb 93>;
  else
    goto <bb 94>;

<bb 93>:
  reneg_352 = switch_true (val_351);
  # DEBUG reneg => reneg_352

<bb 94>:
  # reneg_81 = PHI <reneg_349(92), reneg_352(93)>
  # DEBUG reneg => reneg_81
  if (reneg_81 != 0)
    goto <bb 95>;
  else
    goto <bb 107>;

<bb 95>:
  reneg_353 = switch_media_handle_test_media_flag (smh_186, 7);
  # DEBUG reneg => reneg_353
  D.44530_354 = session_161(D)->channel;
  val_355 = switch_channel_get_variable_dup (D.44530_354, "rtp_renegotiate_codec_on_reinvite", 1, -1);
  # DEBUG val => val_355
  if (val_355 != 0B)
    goto <bb 96>;
  else
    goto <bb 107>;

<bb 96>:
  # DEBUG expr => val_355
  D.49711_1580 = strcasecmp (val_355, "yes");
  if (D.49711_1580 == 0)
    goto <bb 106>;
  else
    goto <bb 97>;

<bb 97>:
  D.49712_1581 = strcasecmp (val_355, "on");
  if (D.49712_1581 == 0)
    goto <bb 106>;
  else
    goto <bb 98>;

<bb 98>:
  D.49713_1582 = strcasecmp (val_355, "true");
  if (D.49713_1582 == 0)
    goto <bb 106>;
  else
    goto <bb 99>;

<bb 99>:
  D.49714_1583 = strcasecmp (val_355, "t");
  if (D.49714_1583 == 0)
    goto <bb 106>;
  else
    goto <bb 100>;

<bb 100>:
  D.49715_1584 = strcasecmp (val_355, "enabled");
  if (D.49715_1584 == 0)
    goto <bb 106>;
  else
    goto <bb 101>;

<bb 101>:
  D.49716_1585 = strcasecmp (val_355, "active");
  if (D.49716_1585 == 0)
    goto <bb 106>;
  else
    goto <bb 102>;

<bb 102>:
  D.49717_1586 = strcasecmp (val_355, "allow");
  if (D.49717_1586 == 0)
    goto <bb 106>;
  else
    goto <bb 103>;

<bb 103>:
  D.49718_1587 = switch_is_number (val_355);
  if (D.49718_1587 != 0)
    goto <bb 104>;
  else
    goto <bb 106>;

<bb 104>:
  # DEBUG __nptr => val_355
  D.49719_1588 = strtol (val_355, 0B, 10);
  if (D.49719_1588 != 0)
    goto <bb 106>;
  else
    goto <bb 105>;

<bb 105>:

<bb 106>:
  # reneg_1589 = PHI <1(96), 1(97), 1(98), 1(99), 1(100), 1(101), 1(102), 1(104), 0(103), 0(105)>
  # DEBUG reneg => NULL

<bb 107>:
  # reneg_82 = PHI <0(94), reneg_353(95), reneg_1589(106)>
  # DEBUG reneg => reneg_82
  D.44649_357 = session_161(D)->bugs;
  if (D.44649_357 != 0B)
    goto <bb 108>;
  else
    goto <bb 109>;

<bb 108>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3063, session_161(D), 7, "Session is connected to a media bug. Re-Negotiation implicitly disabled.\n");
  # DEBUG reneg => 0
  # DEBUG reneg => 0
  goto <bb 110>;

<bb 109>:
  # reneg_83 = PHI <reneg_82(107)>
  # DEBUG reneg => reneg_83
  if (reneg_83 == 0)
    goto <bb 110>;
  else
    goto <bb 112>;

<bb 110>:
  D.44655_359 = smh_186->num_negotiated_codecs;
  if (D.44655_359 != 0)
    goto <bb 111>;
  else
    goto <bb 113>;

<bb 111>:
  codec_array_360 = &smh_186->negotiated_codecs;
  # DEBUG codec_array => codec_array_360
  # DEBUG total_codecs => D.44655_359
  goto <bb 113>;

<bb 112>:
  D.44471_362 = smh_186->mparams;
  D.44471_362->num_codecs = 0;
  switch_core_media_prepare_codecs (session_161(D), 0);
  # DEBUG codec_array => codec_array_190
  D.44471_364 = smh_186->mparams;
  total_codecs_365 = D.44471_364->num_codecs;
  # DEBUG total_codecs => total_codecs_365

<bb 113>:
  # codec_array_84 = PHI <codec_array_360(111), codec_array_190(110), codec_array_190(112)>
  # total_codecs_85 = PHI <D.44655_359(111), total_codecs_192(110), total_codecs_365(112)>
  # DEBUG total_codecs => total_codecs_85
  # DEBUG codec_array => codec_array_84
  D.44661_366 = switch_stristr ("T38FaxFillBitRemoval:", r_sdp_193(D));
  if (D.44661_366 != 0B)
    goto <bb 116>;
  else
    goto <bb 114>;

<bb 114>:
  D.44663_367 = switch_stristr ("T38FaxTranscodingMMR:", r_sdp_193(D));
  if (D.44663_367 != 0B)
    goto <bb 116>;
  else
    goto <bb 115>;

<bb 115>:
  D.44665_368 = switch_stristr ("T38FaxTranscodingJBIG:", r_sdp_193(D));
  if (D.44665_368 != 0B)
    goto <bb 116>;
  else
    goto <bb 117>;

<bb 116>:
  D.44530_369 = session_161(D)->channel;
  switch_channel_set_variable_var_check (D.44530_369, "t38_broken_boolean", "true", 1);

<bb 117>:
  switch_core_media_find_zrtp_hash (session_161(D), sdp_198);
  switch_core_media_pass_zrtp_hash (session_161(D));
  check_ice (smh_186, 0, sdp_198, 0B);
  check_ice (smh_186, 1, sdp_198, 0B);
  m_370 = sdp_198->sdp_media;
  # DEBUG m => m_370
  # DEBUG nm_idx => 0
  # DEBUG m_idx => 0
  # DEBUG codec_ms => 0
  # DEBUG got_webrtc => 0
  # DEBUG got_udptl => 0
  # DEBUG got_savp => 0
  # DEBUG got_video_savp => NULL
  # DEBUG got_video_avp => NULL
  # DEBUG got_avp => 0
  # DEBUG got_audio => 0
  # DEBUG got_video_crypto => 0
  # DEBUG got_crypto => 0
  # DEBUG m => m_370
  # DEBUG cng_pt => 0
  # DEBUG best_te => 0
  # DEBUG match => 0
  if (m_370 != 0B)
    goto <bb 118>;
  else
    goto <bb 416> (done);

<bb 118>:
  # match_1800 = PHI <match_15(415), 0(117)>
  # best_te_680 = PHI <best_te_22(415), 0(117)>
  # cng_pt_1717 = PHI <cng_pt_26(415), 0(117)>
  # m_1764 = PHI <m_1093(415), m_370(117)>
  # got_crypto_1866 = PHI <got_crypto_55(415), 0(117)>
  # got_video_crypto_1674 = PHI <got_video_crypto_63(415), 0(117)>
  # got_audio_1693 = PHI <got_audio_66(415), 0(117)>
  # got_avp_671 = PHI <got_avp_1859(415), 0(117)>
  # got_savp_512 = PHI <got_savp_1739(415), 0(117)>
  # got_udptl_1868 = PHI <got_udptl_1743(415), 0(117)>
  # got_webrtc_452 = PHI <got_webrtc_78(415), 0(117)>
  # codec_ms_477 = PHI <codec_ms_94(415), 0(117)>
  # m_idx_1869 = PHI <m_idx_113(415), 0(117)>
  # nm_idx_1749 = PHI <nm_idx_121(415), 0(117)>
  # DEBUG ptime => dptime_1035
  # DEBUG maxptime => dmaxptime_1005
  D.44666_373 = m_1764->m_proto;
  if (D.44666_373 == 261)
    goto <bb 119>;
  else
    goto <bb 120>;

<bb 119>:
  got_webrtc_374 = got_webrtc_452 + 1;
  # DEBUG got_webrtc => got_webrtc_374
  switch_core_session_set_ice (session_161(D));

<bb 120>:
  # got_webrtc_78 = PHI <got_webrtc_452(118), got_webrtc_374(119)>
  # DEBUG got_webrtc => got_webrtc_78
  D.44669_375 = m_1764->m_proto_name;
  if (D.44669_375 != 0B)
    goto <bb 121>;
  else
    goto <bb 123>;

<bb 121>:
  D.44672_377 = strcasecmp (D.44669_375, "UDP/TLS/RTP/SAVPF");
  if (D.44672_377 == 0)
    goto <bb 122>;
  else
    goto <bb 123>;

<bb 122>:
  D.44530_378 = session_161(D)->channel;
  switch_channel_set_flag_value (D.44530_378, 107, 1);

<bb 123>:
  D.44675_379 = m_1764->m_proto;
  D.44676_380 = D.44675_379 == 257;
  D.44677_381 = D.44675_379 == 261;
  D.44678_382 = D.44676_380 | D.44677_381;
  if (D.44678_382 != 0)
    goto <bb 124>;
  else
    goto <bb 126>;

<bb 124>:
  D.44681_383 = m_1764->m_type;
  if (D.44681_383 == 2)
    goto <bb 125>;
  else
    goto <bb 131>;

<bb 125>:
  got_savp_384 = got_savp_512 + 1;
  # DEBUG got_savp => got_savp_384
  goto <bb 131>;

<bb 126>:
  if (D.44675_379 == 256)
    goto <bb 127>;
  else
    goto <bb 129>;

<bb 127>:
  D.44681_387 = m_1764->m_type;
  if (D.44681_387 == 2)
    goto <bb 128>;
  else
    goto <bb 131>;

<bb 128>:
  got_avp_388 = got_avp_671 + 1;
  # DEBUG got_avp => got_avp_388
  goto <bb 131>;

<bb 129>:
  if (D.44675_379 == 258)
    goto <bb 130>;
  else
    goto <bb 131>;

<bb 130>:
  got_udptl_391 = got_udptl_1868 + 1;
  # DEBUG got_udptl => got_udptl_391
  # DEBUG got_udptl => got_udptl_391
  # DEBUG got_savp => got_savp_512
  # DEBUG got_video_savp => NULL
  # DEBUG got_video_avp => NULL
  # DEBUG got_avp => got_avp_671
  goto <bb 132>;

<bb 131>:
  # got_avp_68 = PHI <got_avp_671(124), got_avp_671(127), got_avp_671(129), got_avp_388(128), got_avp_671(125)>
  # got_savp_74 = PHI <got_savp_512(124), got_savp_512(127), got_savp_512(129), got_savp_512(128), got_savp_384(125)>
  # got_udptl_76 = PHI <got_udptl_1868(124), got_udptl_1868(127), got_udptl_1868(129), got_udptl_1868(128), got_udptl_1868(125)>
  # DEBUG got_udptl => got_udptl_76
  # DEBUG got_savp => got_savp_74
  # DEBUG got_video_savp => NULL
  # DEBUG got_video_avp => NULL
  # DEBUG got_avp => got_avp_68
  if (got_udptl_76 != 0)
    goto <bb 132>;
  else
    goto <bb 163>;

<bb 132>:
  # got_avp_1740 = PHI <got_avp_68(131), got_avp_671(130)>
  # got_savp_1711 = PHI <got_savp_74(131), got_savp_512(130)>
  # got_udptl_774 = PHI <got_udptl_76(131), got_udptl_391(130)>
  D.44681_392 = m_1764->m_type;
  if (D.44681_392 == 8)
    goto <bb 133>;
  else
    goto <bb 163>;

<bb 133>:
  D.44697_393 = m_1764->m_port;
  if (D.44697_393 != 0)
    goto <bb 134>;
  else
    goto <bb 163>;

<bb 134>:
  # cng_pt_1628 = PHI <cng_pt_1717(133)>
  # m_1045 = PHI <m_1764(133)>
  t38_options_394 = switch_core_media_process_udptl (session_161(D), sdp_198, m_1045);
  # DEBUG t38_options => t38_options_394
  D.44530_395 = session_161(D)->channel;
  D.44699_396 = switch_channel_test_app_flag_key ("T38", D.44530_395, 16);
  if (D.44699_396 != 0)
    goto <bb 416> (done);
  else
    goto <bb 135>;

<bb 135>:
  D.44702_398 = switch_channel_get_variable_dup (channel_162, "refuse_t38", 1, -1);
  D.44703_399 = switch_true (D.44702_398);
  if (D.44703_399 != 0)
    goto <bb 136>;
  else
    goto <bb 137>;

<bb 136>:
  D.44530_400 = session_161(D)->channel;
  switch_channel_clear_app_flag_key ("T38", D.44530_400, 2);
  # DEBUG match => 0
  goto <bb 416> (done);

<bb 137>:
  var_402 = switch_channel_get_variable_dup (channel_162, "t38_passthru", 1, -1);
  # DEBUG var => var_402
  D.44481_403 = smh_186->session;
  D.44482_404 = D.44481_403->channel;
  D.44706_405 = switch_channel_test_flag (D.44482_404, 101);
  pass_406 = (int) D.44706_405;
  # DEBUG pass => pass_406
  D.44530_407 = session_161(D)->channel;
  D.44707_408 = switch_channel_test_app_flag_key ("T38", D.44530_407, 2);
  if (D.44707_408 != 0)
    goto <bb 138>;
  else
    goto <bb 140>;

<bb 138>:
  if (proceed_209(D) != 0B)
    goto <bb 139>;
  else
    goto <bb 140>;

<bb 139>:
  *proceed_209(D) = 0;

<bb 140>:
  if (var_402 != 0B)
    goto <bb 141>;
  else
    goto <bb 143>;

<bb 141>:
  pass_409 = switch_true (var_402);
  # DEBUG pass => pass_409
  if (pass_409 == 0)
    goto <bb 142>;
  else
    goto <bb 143>;

<bb 142>:
  D.44716_410 = strcasecmp (var_402, "once");
  if (D.44716_410 == 0)
    goto <bb 423>;
  else
    goto <bb 424>;

<bb 143>:
  # pass_126 = PHI <pass_406(140), pass_409(141)>
  # DEBUG pass => pass_126
  if (pass_126 == 2)
    goto <bb 144>;
  else
    goto <bb 145>;

<bb 144>:
  # pass_1664 = PHI <pass_126(143), pass_1698(423)>
  D.44481_412 = smh_186->session;
  D.44482_413 = D.44481_412->channel;
  D.44723_414 = switch_channel_test_flag (D.44482_413, 101);
  if (D.44723_414 != 0)
    goto <bb 425>;
  else
    goto <bb 145>;

<bb 145>:
  # pass_1848 = PHI <pass_1888(424), pass_1664(144), pass_126(143)>
  D.44530_415 = session_161(D)->channel;
  D.44724_416 = switch_channel_test_flag (D.44530_415, 103);
  if (D.44724_416 == 0)
    goto <bb 425>;
  else
    goto <bb 146>;

<bb 146>:
  D.44530_417 = session_161(D)->channel;
  D.44726_418 = switch_channel_test_flag (D.44530_417, 15);
  if (D.44726_418 != 0)
    goto <bb 425>;
  else
    goto <bb 147>;

<bb 147>:
  D.44530_419 = session_161(D)->channel;
  D.44728_420 = switch_channel_test_flag (D.44530_419, 29);
  if (D.44728_420 != 0)
    goto <bb 425>;
  else
    goto <bb 148>;

<bb 148>:
  D.44605_421 = MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].rtp_session;
  D.44730_422 = switch_rtp_ready (D.44605_421);
  if (D.44730_422 == 0)
    goto <bb 425>;
  else
    goto <bb 149>;

<bb 149>:
  # pass_127 = PHI <pass_1848(148)>
  # DEBUG pass => pass_127
  if (pass_127 != 0)
    goto <bb 150>;
  else
    goto <bb 416> (done);

<bb 150>:
  D.44733_424 = switch_core_session_perform_get_partner (session_161(D), &other_session, "src/switch_core_media.c", &__func__, 3161);
  if (D.44733_424 == 0)
    goto <bb 151>;
  else
    goto <bb 416> (done);

<bb 151>:
  other_session.89_425 = other_session;
  other_channel_426 = switch_core_session_get_channel (other_session.89_425);
  # DEBUG other_channel => other_channel_426
  D.44605_427 = MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].rtp_session;
  remote_host_428 = switch_rtp_get_remote_host (D.44605_427);
  # DEBUG remote_host => remote_host_428
  D.44605_429 = MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].rtp_session;
  remote_port_430 = switch_rtp_get_remote_port (D.44605_429);
  # DEBUG remote_port => remote_port_430
  tmp = "";
  D.44737_431 = switch_channel_test_flag (other_channel_426, 1);
  if (D.44737_431 == 0)
    goto <bb 152>;
  else
    goto <bb 153>;

<bb 152>:
  D.44530_432 = session_161(D)->channel;
  D.44740_433 = switch_channel_get_name (D.44530_432);
  D.44741_434 = switch_channel_get_name (other_channel_426);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3170, session_161(D), 4, "%s Error Passing T.38 to unanswered channel %s\n", D.44740_433, D.44741_434);
  other_session.89_435 = other_session;
  switch_core_session_rwunlock (other_session.89_435);
  # DEBUG pass => 0
  # DEBUG match => 0
  goto <bb 416> (done);

<bb 153>:
  D.44530_438 = session_161(D)->channel;
  D.44742_439 = switch_channel_get_variable_dup (D.44530_438, "t38_broken_boolean", 1, -1);
  D.44743_440 = switch_true (D.44742_439);
  if (D.44743_440 != 0)
    goto <bb 154>;
  else
    goto <bb 156>;

<bb 154>:
  D.44530_441 = session_161(D)->channel;
  D.44746_442 = switch_channel_get_variable_dup (D.44530_441, "t38_pass_broken_boolean", 1, -1);
  D.44747_443 = switch_true (D.44746_442);
  if (D.44747_443 != 0)
    goto <bb 155>;
  else
    goto <bb 156>;

<bb 155>:
  switch_channel_set_variable_var_check (other_channel_426, "t38_broken_boolean", "true", 1);

<bb 156>:
  D.44750_444 = MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].cur_payload_map;
  D.44751_445 = t38_options_394->remote_ip;
  D.44752_446 = switch_core_perform_session_strdup (session_161(D), D.44751_445, "src/switch_core_media.c", &__func__, 3186);
  D.44750_444->remote_sdp_ip = D.44752_446;
  D.44750_447 = MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].cur_payload_map;
  D.44753_448 = t38_options_394->remote_port;
  D.44750_447->remote_sdp_port = D.44753_448;
  D.44756_449 = remote_host_428 != 0B;
  D.44757_450 = remote_port_430 != 0;
  D.44758_451 = D.44756_449 & D.44757_450;
  if (D.44758_451 != 0)
    goto <bb 157>;
  else
    goto <bb 160>;

<bb 157>:
  D.44760_453 = D.44750_447->remote_sdp_ip;
  D.39032_454 = __builtin_strcmp (remote_host_428, D.44760_453);
  if (D.39032_454 == 0)
    goto <bb 158>;
  else
    goto <bb 160>;

<bb 158>:
  if (remote_port_430 == D.44753_448)
    goto <bb 159>;
  else
    goto <bb 160>;

<bb 159>:
  D.44530_457 = session_161(D)->channel;
  D.44764_458 = switch_channel_get_name (D.44530_457);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3190, session_161(D), 7, "Audio params are unchanged for %s.\n", D.44764_458);
  goto <bb 162>;

<bb 160>:
  err = 0B;
  D.44530_459 = session_161(D)->channel;
  D.44765_460 = switch_channel_get_name (D.44530_459);
  D.44766_461 = (int) remote_port_430;
  D.44750_462 = MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].cur_payload_map;
  D.44760_463 = D.44750_462->remote_sdp_ip;
  D.44762_465 = D.44750_462->remote_sdp_port;
  D.44767_466 = (int) D.44762_465;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3195, session_161(D), 7, "Audio params changed for %s from %s:%d to %s:%d\n", D.44765_460, remote_host_428, D.44766_461, D.44760_463, D.44767_466);
  D.44750_467 = MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].cur_payload_map;
  D.44762_468 = D.44750_467->remote_sdp_port;
  D.44767_469 = (int) D.44762_468;
  switch_snprintf (&tmp, 32, "%d", D.44767_469);
  D.44530_470 = session_161(D)->channel;
  D.44750_471 = MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].cur_payload_map;
  D.44760_472 = D.44750_471->remote_sdp_ip;
  switch_channel_set_variable_var_check (D.44530_470, "remote_media_ip", D.44760_472, 1);
  D.44530_473 = session_161(D)->channel;
  switch_channel_set_variable_var_check (D.44530_473, "remote_media_port", &tmp, 1);
  D.44605_474 = MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].rtp_session;
  D.44750_475 = MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].cur_payload_map;
  D.44760_476 = D.44750_475->remote_sdp_ip;
  D.44762_478 = D.44750_475->remote_sdp_port;
  D.44768_479 = switch_rtp_set_remote_address (D.44605_474, D.44760_476, D.44762_478, 0, 1, &err);
  if (D.44768_479 != 0)
    goto <bb 161>;
  else
    goto <bb 162>;

<bb 161>:
  err.90_480 = err;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3205, session_161(D), 3, "AUDIO RTP REPORTS ERROR: [%s]\n", err.90_480);
  switch_channel_perform_hangup (channel_162, "src/switch_core_media.c", &__func__, 3206, 88);

<bb 162>:
  other_session.89_481 = other_session;
  switch_core_media_copy_t38_options (t38_options_394, other_session.89_481);
  D.44481_482 = smh_186->session;
  D.44482_483 = D.44481_482->channel;
  switch_channel_set_flag_value (D.44482_483, 101, 1);
  other_session.89_484 = other_session;
  D.44772_485 = other_session.89_484->channel;
  switch_channel_set_flag_value (D.44772_485, 101, 1);
  other_session.89_486 = other_session;
  msg_487 = switch_core_perform_session_alloc (other_session.89_486, 108, "src/switch_core_media.c", &__func__, 3218);
  # DEBUG msg => msg_487
  msg_487->message_id = 21;
  msg_487->from = "src/switch_core_media.c";
  other_session.89_488 = other_session;
  D.44773_489 = switch_core_perform_session_strdup (other_session.89_488, r_sdp_193(D), "src/switch_core_media.c", &__func__, 3221);
  msg_487->string_arg = D.44773_489;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3222, session_161(D), 7, "Passing T38 req to other leg.\n%s\n", r_sdp_193(D));
  other_session.89_490 = other_session;
  switch_core_session_queue_message (other_session.89_490, msg_487);
  other_session.89_491 = other_session;
  switch_core_session_rwunlock (other_session.89_491);
  goto <bb 416> (done);

<bb 163>:
  # got_avp_1859 = PHI <got_avp_68(131), got_avp_1740(132), got_avp_1740(133)>
  # got_savp_1739 = PHI <got_savp_74(131), got_savp_1711(132), got_savp_1711(133)>
  # got_udptl_1743 = PHI <got_udptl_76(131), got_udptl_774(132), got_udptl_774(133)>
  D.44681_493 = m_1764->m_type;
  if (D.44681_493 == 2)
    goto <bb 164>;
  else
    goto <bb 333>;

<bb 164>:
  D.44697_494 = m_1764->m_port;
  D.44777_495 = D.44697_494 != 0;
  D.44778_496 = got_audio_1693 == 0;
  D.44779_497 = D.44777_495 & D.44778_496;
  if (D.44779_497 != 0)
    goto <bb 165>;
  else
    goto <bb 415>;

<bb 165>:
  D.44781_498 = switch_rtp_has_dtls ();
  if (D.44781_498 != 0)
    goto <bb 166>;
  else
    goto <bb 172>;

<bb 166>:
  D.44784_499 = dtls_ok (session_161(D));
  if (D.44784_499 != 0)
    goto <bb 167>;
  else
    goto <bb 172>;

<bb 167>:
  attr_500 = m_1764->m_attributes;
  # DEBUG attr => attr_500
  # DEBUG got_crypto => got_crypto_1866
  # DEBUG attr => attr_500
  if (attr_500 != 0B)
    goto <bb 168>;
  else
    goto <bb 172>;

<bb 168>:
  # attr_1559 = PHI <attr_506(171), attr_500(167)>
  # got_crypto_361 = PHI <got_crypto_50(171), got_crypto_1866(167)>
  D.44590_501 = attr_1559->a_name;
  D.44787_502 = strcasecmp (D.44590_501, "fingerprint");
  if (D.44787_502 == 0)
    goto <bb 169>;
  else
    goto <bb 171>;

<bb 169>:
  D.44619_503 = attr_1559->a_value;
  # DEBUG s => D.44619_503
  if (D.44619_503 == 0B)
    goto <bb 171>;
  else
    goto <bb 170>;

<bb 170>:
  D.47887_1469 = *D.44619_503;
  if (D.47887_1469 == 0)
    goto <bb 171>;
  else
    goto <bb 426>;

<bb 171>:
  # got_crypto_50 = PHI <got_crypto_361(168), got_crypto_361(170), 1(426), got_crypto_361(169)>
  # DEBUG got_crypto => got_crypto_50
  attr_506 = attr_1559->a_next;
  # DEBUG attr => attr_506
  # DEBUG got_crypto => got_crypto_50
  # DEBUG attr => attr_506
  if (attr_506 != 0B)
    goto <bb 168>;
  else
    goto <bb 172>;

<bb 172>:
  # got_crypto_52 = PHI <got_crypto_1866(165), got_crypto_1866(166), got_crypto_50(171), got_crypto_1866(167)>
  # DEBUG got_crypto => got_crypto_52
  attr_507 = m_1764->m_attributes;
  # DEBUG attr => attr_507
  # DEBUG got_crypto => got_crypto_52
  # DEBUG maxptime => dmaxptime_1005
  # DEBUG ptime => dptime_1035
  # DEBUG attr => attr_507
  if (attr_507 != 0B)
    goto <bb 173>;
  else
    goto <bb 201>;

<bb 173>:
  # attr_1599 = PHI <attr_548(200), attr_507(172)>
  # ptime_1475 = PHI <ptime_34(200), dptime_1035(172)>
  # maxptime_1470 = PHI <maxptime_38(200), dmaxptime_1005(172)>
  # got_crypto_1118 = PHI <got_crypto_53(200), got_crypto_52(172)>
  D.44590_508 = attr_1599->a_name;
  D.44795_509 = strcasecmp (D.44590_508, "rtcp");
  if (D.44795_509 == 0)
    goto <bb 174>;
  else
    goto <bb 177>;

<bb 174>:
  D.44619_510 = attr_1599->a_value;
  if (D.44619_510 != 0B)
    goto <bb 175>;
  else
    goto <bb 177>;

<bb 175>:
  D.44530_511 = session_161(D)->channel;
  switch_channel_set_variable_var_check (D.44530_511, "rtp_remote_audio_rtcp_port", D.44619_510, 1);
  D.44619_513 = attr_1599->a_value;
  # DEBUG __nptr => D.44619_513
  D.47890_1471 = strtol (D.44619_513, 0B, 10);
  D.44799_515 = (short unsigned int) D.47890_1471;
  MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].remote_rtcp_port = D.44799_515;
  D.44471_516 = smh_186->mparams;
  D.44800_517 = D.44471_516->rtcp_audio_interval_msec;
  if (D.44800_517 == 0B)
    goto <bb 176>;
  else
    goto <bb 200>;

<bb 176>:
  D.44471_516->rtcp_audio_interval_msec = "5000";
  goto <bb 200>;

<bb 177>:
  D.44805_520 = strcasecmp (D.44590_508, "ptime");
  if (D.44805_520 == 0)
    goto <bb 178>;
  else
    goto <bb 180>;

<bb 178>:
  D.44619_521 = attr_1599->a_value;
  if (D.44619_521 != 0B)
    goto <bb 179>;
  else
    goto <bb 180>;

<bb 179>:
  # DEBUG __nptr => D.44619_521
  ptime_1472 = strtol (D.44619_521, 0B, 10);
  # DEBUG ptime => NULL
  goto <bb 200>;

<bb 180>:
  D.44810_525 = strcasecmp (D.44590_508, "maxptime");
  if (D.44810_525 == 0)
    goto <bb 181>;
  else
    goto <bb 183>;

<bb 181>:
  D.44619_526 = attr_1599->a_value;
  if (D.44619_526 != 0B)
    goto <bb 182>;
  else
    goto <bb 183>;

<bb 182>:
  # DEBUG __nptr => D.44619_526
  maxptime_1473 = strtol (D.44619_526, 0B, 10);
  # DEBUG maxptime => NULL
  goto <bb 200>;

<bb 183>:
  if (got_crypto_1118 <= 0)
    goto <bb 184>;
  else
    goto <bb 200>;

<bb 184>:
  D.44815_530 = strcasecmp (D.44590_508, "crypto");
  if (D.44815_530 == 0)
    goto <bb 185>;
  else
    goto <bb 200>;

<bb 185>:
  D.44619_531 = attr_1599->a_value;
  # DEBUG s => D.44619_531
  if (D.44619_531 == 0B)
    goto <bb 200>;
  else
    goto <bb 186>;

<bb 186>:
  D.47900_1474 = *D.44619_531;
  if (D.47900_1474 == 0)
    goto <bb 200>;
  else
    goto <bb 427>;

<bb 187>:
  D.44530_536 = session_161(D)->channel;
  D.44825_537 = switch_channel_get_variable_dup (D.44530_536, "rtp_allow_crypto_in_avp", 1, -1);
  # DEBUG expr => D.44825_537
  if (D.44825_537 != 0B)
    goto <bb 188>;
  else
    goto <bb 428>;

<bb 188>:
  D.49723_1590 = strcasecmp (D.44825_537, "yes");
  if (D.49723_1590 == 0)
    goto <bb 197>;
  else
    goto <bb 189>;

<bb 189>:
  D.49724_1591 = strcasecmp (D.44825_537, "on");
  if (D.49724_1591 == 0)
    goto <bb 197>;
  else
    goto <bb 190>;

<bb 190>:
  D.49725_1592 = strcasecmp (D.44825_537, "true");
  if (D.49725_1592 == 0)
    goto <bb 197>;
  else
    goto <bb 191>;

<bb 191>:
  D.49726_1593 = strcasecmp (D.44825_537, "t");
  if (D.49726_1593 == 0)
    goto <bb 197>;
  else
    goto <bb 192>;

<bb 192>:
  D.49727_1594 = strcasecmp (D.44825_537, "enabled");
  if (D.49727_1594 == 0)
    goto <bb 197>;
  else
    goto <bb 193>;

<bb 193>:
  D.49728_1595 = strcasecmp (D.44825_537, "active");
  if (D.49728_1595 == 0)
    goto <bb 197>;
  else
    goto <bb 194>;

<bb 194>:
  D.49729_1596 = strcasecmp (D.44825_537, "allow");
  if (D.49729_1596 == 0)
    goto <bb 197>;
  else
    goto <bb 195>;

<bb 195>:
  D.49730_1597 = switch_is_number (D.44825_537);
  if (D.49730_1597 != 0)
    goto <bb 196>;
  else
    goto <bb 428>;

<bb 196>:
  # DEBUG __nptr => D.44825_537
  D.49731_1598 = strtol (D.44825_537, 0B, 10);
  if (D.49731_1598 != 0)
    goto <bb 197>;
  else
    goto <bb 428>;

<bb 197>:
Invalid sum of outgoing probabilities 0.0%
  goto <bb 199>;

<bb 198>:
  # cng_pt_1126 = PHI <cng_pt_1717(428)>
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3262, session_161(D), 3, "a=crypto in RTP/AVP, refer to rfc3711\n");
  # DEBUG match => 0
  goto <bb 416> (done);

<bb 199>:
  crypto_544 = attr_1599->a_value;
  # DEBUG crypto => crypto_544
  # DEBUG __nptr => crypto_544
  crypto_tag_1476 = strtol (crypto_544, 0B, 10);
  # DEBUG crypto_tag => NULL
  got_crypto_547 = switch_core_session_check_incoming_crypto (session_161(D), "rtp_has_crypto", 0, crypto_544, crypto_tag_1476, sdp_type_546(D));
  # DEBUG got_crypto => got_crypto_547

<bb 200>:
  # ptime_34 = PHI <ptime_1475(176), ptime_1472(179), ptime_1475(182), ptime_1475(183), ptime_1475(184), ptime_1475(186), ptime_1475(199), ptime_1475(175), ptime_1475(185)>
  # maxptime_38 = PHI <maxptime_1470(176), maxptime_1470(179), maxptime_1473(182), maxptime_1470(183), maxptime_1470(184), maxptime_1470(186), maxptime_1470(199), maxptime_1470(175), maxptime_1470(185)>
  # got_crypto_53 = PHI <got_crypto_1118(176), got_crypto_1118(179), got_crypto_1118(182), got_crypto_1118(183), got_crypto_1118(184), got_crypto_1118(186), got_crypto_547(199), got_crypto_1118(175), got_crypto_1118(185)>
  # DEBUG got_crypto => got_crypto_53
  # DEBUG maxptime => maxptime_38
  # DEBUG ptime => ptime_34
  attr_548 = attr_1599->a_next;
  # DEBUG attr => attr_548
  # DEBUG got_crypto => got_crypto_53
  # DEBUG maxptime => maxptime_38
  # DEBUG ptime => ptime_34
  # DEBUG attr => attr_548
  if (attr_548 != 0B)
    goto <bb 173>;
  else
    goto <bb 201>;

<bb 201>:
  # ptime_1033 = PHI <ptime_34(200), dptime_1035(172)>
  # maxptime_1040 = PHI <maxptime_38(200), dmaxptime_1005(172)>
  # got_crypto_969 = PHI <got_crypto_53(200), got_crypto_52(172)>
  D.44834_549 = got_crypto_969 == -1;
  D.44835_550 = got_savp_1739 != 0;
  D.44836_551 = D.44834_549 & D.44835_550;
  if (D.44836_551 != 0)
    goto <bb 202>;
  else
    goto <bb 204>;

<bb 202>:
  D.44839_552 = got_avp_1859 | got_webrtc_78;
  if (D.44839_552 == 0)
    goto <bb 203>;
  else
    goto <bb 204>;

<bb 203>:
  # cng_pt_18 = PHI <cng_pt_1717(202)>
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3277, session_161(D), 4, "Declining invite with only SAVP because secure media is administratively disabled\n");
  # DEBUG match => 0
  goto <bb 416> (done);

<bb 204>:
  connection_554 = sdp_198->sdp_connection;
  # DEBUG connection => connection_554
  D.44546_555 = m_1764->m_connections;
  if (D.44546_555 != 0B)
    goto <bb 205>;
  else
    goto <bb 206>;

<bb 205>:
  # DEBUG connection => D.44546_555

<bb 206>:
  # connection_124 = PHI <connection_554(204), D.44546_555(205)>
  # DEBUG connection => connection_124
  if (connection_124 == 0B)
    goto <bb 207>;
  else
    goto <bb 208>;

<bb 207>:
  # cng_pt_1127 = PHI <cng_pt_1717(206)>
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3288, session_161(D), 3, "Cannot find a c= line in the sdp at media or session level!\n");
  # DEBUG match => 0
  goto <bb 416> (done);

<bb 208>:
  # DEBUG x => 0
  map_559 = m_1764->m_rtpmaps;
  # DEBUG map => map_559
  # DEBUG map => map_559
  # DEBUG nm_idx => nm_idx_1749
  # DEBUG m_idx => m_idx_1869
  # DEBUG codec_ms => codec_ms_477
  # DEBUG x => NULL
  # DEBUG cng_pt => cng_pt_1717
  # DEBUG best_te => best_te_680
  # DEBUG match => match_1800
  if (map_559 != 0B)
    goto <bb 209>;
  else
    goto <bb 273>;

<bb 209>:
  # match_1901 = PHI <match_7(272), match_1800(208)>
  # best_te_1898 = PHI <best_te_19(272), best_te_680(208)>
  # cng_pt_1667 = PHI <cng_pt_24(272), cng_pt_1717(208)>
  # codec_ms_1720 = PHI <codec_ms_91(272), codec_ms_477(208)>
  # m_idx_792 = PHI <m_idx_103(272), m_idx_1869(208)>
  # nm_idx_1755 = PHI <nm_idx_117(272), nm_idx_1749(208)>
  # map_1728 = PHI <map_711(272), map_559(208)>
  # DEBUG map_bit_rate => 0
  codec_fmtp = {};
  rm_encoding_561 = map_1728->rm_encoding;
  # DEBUG rm_encoding => rm_encoding_561
  if (rm_encoding_561 == 0B)
    goto <bb 211>;
  else
    goto <bb 210>;

<bb 210>:

<bb 211>:
  # rm_encoding_130 = PHI <rm_encoding_561(210), ""(209)>
  # DEBUG rm_encoding => rm_encoding_130
  D.44848_563 = strcasecmp (rm_encoding_130, "telephone-event");
  if (D.44848_563 == 0)
    goto <bb 212>;
  else
    goto <bb 215>;

<bb 212>:
  if (best_te_1898 == 0)
    goto <bb 214>;
  else
    goto <bb 213>;

<bb 213>:
  D.44854_564 = map_1728->rm_rate;
  D.44750_565 = MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].cur_payload_map;
  D.44855_566 = D.44750_565->rm_rate;
  if (D.44854_564 == D.44855_566)
    goto <bb 214>;
  else
    goto <bb 272>;

<bb 214>:
  D.44856_567 = map_1728->rm_pt;
  best_te_568 = (switch_payload_t) D.44856_567;
  # DEBUG best_te => best_te_568
  D.44857_569 = (int) best_te_568;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3309, session_161(D), 7, "Set telephone-event payload to %u\n", D.44857_569);
  goto <bb 272>;

<bb 215>:
  D.44858_570 = switch_media_handle_test_media_flag (smh_186, 9);
  if (D.44858_570 == 0)
    goto <bb 216>;
  else
    goto <bb 220>;

<bb 216>:
  if (cng_pt_1667 == 0)
    goto <bb 217>;
  else
    goto <bb 220>;

<bb 217>:
  D.44863_571 = strcasecmp (rm_encoding_130, "CN");
  if (D.44863_571 == 0)
    goto <bb 218>;
  else
    goto <bb 220>;

<bb 218>:
  D.44856_572 = map_1728->rm_pt;
  cng_pt_573 = (switch_payload_t) D.44856_572;
  # DEBUG cng_pt => cng_pt_573
  D.44605_574 = MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].rtp_session;
  if (D.44605_574 != 0B)
    goto <bb 219>;
  else
    goto <bb 272>;

<bb 219>:
  D.44868_575 = (int) cng_pt_573;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3317, session_161(D), 7, "Set comfort noise payload to %u\n", D.44868_575);
  D.44605_576 = MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].rtp_session;
  D.44471_577 = smh_186->mparams;
  D.44869_578 = D.44471_577->cng_pt;
  switch_rtp_set_cng_pt (D.44605_576, D.44869_578);
  goto <bb 272>;

<bb 220>:
  # DEBUG x => NULL
  if (match_1901 != 0)
    goto <bb 272>;
  else
    goto <bb 221>;

<bb 221>:
  # DEBUG codec_ms => ptime_1033
  if (maxptime_1040 != 0)
    goto <bb 222>;
  else
    goto <bb 224>;

<bb 222>:
  D.44877_582 = ptime_1033 == 0;
  D.44878_583 = ptime_1033 > maxptime_1040;
  D.44879_584 = D.44877_582 | D.44878_583;
  if (D.44879_584 != 0)
    goto <bb 429>;
  else
    goto <bb 223>;

<bb 223>:
  goto <bb 429>;

<bb 224>:
  # codec_ms_86 = PHI <ptime_1033(221)>
  # DEBUG codec_ms => codec_ms_86
  if (codec_ms_86 == 0)
    goto <bb 225>;
  else
    goto <bb 226>;

<bb 225>:
  D.44856_586 = map_1728->rm_pt;
  D.44884_587 = (uint32_t) D.44856_586;
  D.44885_588 = switch_default_ptime (rm_encoding_130, D.44884_587);
  codec_ms_589 = (int) D.44885_588;
  # DEBUG codec_ms => codec_ms_589

<bb 226>:
  # codec_ms_87 = PHI <codec_ms_1883(429), codec_ms_589(225), codec_ms_86(224)>
  # DEBUG codec_ms => codec_ms_87
  D.44856_590 = map_1728->rm_pt;
  csui.173_591 = (unsigned char) D.44856_590;
  # DEBUG payload => csui.173_591
  if (csui.173_591 <= 18)
    goto <bb 227> (<L499>);
  else
    goto <bb 228> (<L500>);

<L499>:
  map_bit_rate_1479 = CSWTCH.174[csui.173_591];

  # map_bit_rate_1480 = PHI <0(226), map_bit_rate_1479(227)>
<L500>:
<L501>:
  # DEBUG map_bit_rate => NULL
  if (ptime_1033 == 0)
    goto <bb 229>;
  else
    goto <bb 231>;

<bb 229>:
  D.44889_593 = map_1728->rm_encoding;
  D.44890_594 = strcasecmp (D.44889_593, "g723");
  if (D.44890_594 == 0)
    goto <bb 230>;
  else
    goto <bb 231>;

<bb 230>:
  # DEBUG codec_ms => 33

<bb 231>:
  # codec_ms_88 = PHI <codec_ms_87(228), codec_ms_87(229), 33(230)>
  # DEBUG codec_ms => codec_ms_88
  remote_codec_rate_596 = map_1728->rm_rate;
  # DEBUG remote_codec_rate => remote_codec_rate_596
  # DEBUG fmtp_remote_codec_rate => 0
  memset (&codec_fmtp, 0, 16);
  D.44893_598 = map_1728->rm_fmtp;
  # DEBUG s => D.44893_598
  if (D.44893_598 == 0B)
    goto <bb 233>;
  else
    goto <bb 232>;

<bb 232>:
  D.47915_1481 = *D.44893_598;
  if (D.47915_1481 == 0)
    goto <bb 233>;
  else
    goto <bb 430>;

<bb 233>:
  D.44889_600 = map_1728->rm_encoding;
  D.44897_601 = strcasecmp (D.44889_600, "ilbc");
  if (D.44897_601 == 0)
    goto <bb 242>;
  else
    goto <bb 234>;

<bb 234>:
  D.44901_605 = strcasecmp (D.44889_600, "isac");
  if (D.44901_605 == 0)
    goto <bb 235>;
  else
    goto <bb 242>;

<bb 235>:
  # DEBUG codec_ms => 39
  # DEBUG map_bit_rate => 32001
  goto <bb 242>;

<bb 236>:
  D.44908_612 = codec_fmtp.bits_per_second;
  if (D.44908_612 != 0)
    goto <bb 237>;
  else
    goto <bb 238>;

<bb 237>:
  map_bit_rate_614 = (uint32_t) D.44908_612;
  # DEBUG map_bit_rate => map_bit_rate_614

<bb 238>:
  # map_bit_rate_131 = PHI <map_bit_rate_1480(236), map_bit_rate_614(237)>
  # DEBUG map_bit_rate => map_bit_rate_131
  D.44911_615 = codec_fmtp.microseconds_per_packet;
  if (D.44911_615 != 0)
    goto <bb 239>;
  else
    goto <bb 240>;

<bb 239>:
  codec_ms_617 = D.44911_615 / 1000;
  # DEBUG codec_ms => codec_ms_617

<bb 240>:
  # codec_ms_89 = PHI <codec_ms_88(238), codec_ms_617(239)>
  # DEBUG codec_ms => codec_ms_89
  D.44914_618 = codec_fmtp.actual_samples_per_second;
  if (D.44914_618 != 0)
    goto <bb 241>;
  else
    goto <bb 242>;

<bb 241>:
  # DEBUG fmtp_remote_codec_rate => D.44914_618

<bb 242>:
  # codec_ms_90 = PHI <codec_ms_88(234), codec_ms_88(430), codec_ms_89(240), codec_ms_89(241), 32(233), 39(235)>
  # fmtp_remote_codec_rate_99 = PHI <0(234), 0(430), 0(240), D.44914_618(241), 0(233), 0(235)>
  # map_bit_rate_132 = PHI <map_bit_rate_1480(234), map_bit_rate_1480(430), map_bit_rate_131(240), map_bit_rate_131(241), 13332(233), 32001(235)>
  # DEBUG map_bit_rate => map_bit_rate_132
  # DEBUG fmtp_remote_codec_rate => fmtp_remote_codec_rate_99
  # DEBUG codec_ms => codec_ms_90
  # DEBUG i => 0
  # DEBUG i => 0
  # DEBUG nm_idx => nm_idx_1755
  # DEBUG m_idx => m_idx_792
  # DEBUG remote_codec_rate => remote_codec_rate_596
  # DEBUG match => 0
  D.44471_1501 = smh_186->mparams;
  D.44996_1498 = D.44471_1501->num_codecs;
  D.44997_1496 = D.44996_1498 > 0;
  D.44998_1609 = total_codecs_85 > 0;
  D.44999_1152 = D.44997_1496 & D.44998_1609;
  if (D.44999_1152 != 0)
    goto <bb 243>;
  else
    goto <bb 271>;

<bb 243>:
  # remote_codec_rate_1493 = PHI <remote_codec_rate_97(270), remote_codec_rate_596(242)>
  # m_idx_1487 = PHI <m_idx_100(270), m_idx_792(242)>
  # nm_idx_1139 = PHI <nm_idx_115(270), nm_idx_1755(242)>
  # i_1622 = PHI <i_710(270), 0(242)>
  i.91_626 = (unsigned int) i_1622;
  D.44918_627 = i.91_626 * 4;
  D.44919_628 = codec_array_84 + D.44918_627;
  imp_629 = *D.44919_628;
  # DEBUG imp => imp_629
  D.44920_630 = imp_629->bits_per_second;
  bit_rate_631 = (uint32_t) D.44920_630;
  # DEBUG bit_rate => bit_rate_631
  codec_rate_632 = imp_629->samples_per_second;
  # DEBUG codec_rate => codec_rate_632
  D.44921_633 = imp_629->codec_type;
  if (D.44921_633 != 0)
    goto <bb 270>;
  else
    goto <bb 244>;

<bb 244>:
  D.44856_634 = map_1728->rm_pt;
  D.44924_635 = (int) D.44856_634;
  remote_codec_rate.92_636 = (int) remote_codec_rate_1493;
  D.44926_637 = imp_629->iananame;
  D.44927_638 = imp_629->ianacode;
  D.44928_639 = (int) D.44927_638;
  D.44929_640 = imp_629->microseconds_per_packet;
  D.44930_641 = D.44929_640 / 1000;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3383, session_161(D), 7, "Audio Codec Compare [%s:%d:%u:%d:%u]/[%s:%d:%u:%d:%u]\n", rm_encoding_130, D.44924_635, remote_codec_rate.92_636, codec_ms_90, map_bit_rate_132, D.44926_637, D.44928_639, codec_rate_632, D.44930_641, bit_rate_631);
  D.44889_642 = map_1728->rm_encoding;
  # DEBUG s => D.44889_642
  if (D.44889_642 == 0B)
    goto <bb 246>;
  else
    goto <bb 245>;

<bb 245>:
  D.47919_1483 = *D.44889_642;
  if (D.47919_1483 == 0)
    goto <bb 246>;
  else
    goto <bb 431>;

<bb 246>:
  D.44856_649 = map_1728->rm_pt;
  D.44924_650 = (int) D.44856_649;
  if (D.44924_650 <= 95)
    goto <bb 247>;
  else
    goto <bb 248>;

<bb 247>:
  D.44927_653 = imp_629->ianacode;
  D.44928_654 = (int) D.44927_653;
  match_655 = D.44924_650 == D.44928_654;
  # DEBUG match => match_655
  goto <bb 253>;

<bb 248>:
  D.44926_656 = imp_629->iananame;
  D.44944_657 = strcasecmp (rm_encoding_130, D.44926_656);
  if (D.44944_657 == 0)
    goto <bb 249>;
  else
    goto <bb 251>;

<bb 249>:
  if (remote_codec_rate_1493 == codec_rate_632)
    goto <bb 251>;
  else
    goto <bb 250>;

<bb 250>:
  D.44947_658 = imp_629->actual_samples_per_second;
  D.49757_141 = fmtp_remote_codec_rate_99 == D.44947_658;
  D.49758_765 = (int) D.49757_141;

<bb 251>:
  # iftmp.93_144 = PHI <D.49758_765(250), 0(248), 1(249)>
  match_661 = (uint8_t) iftmp.93_144;
  # DEBUG match => match_661
  if (fmtp_remote_codec_rate_99 != 0)
    goto <bb 253>;
  else
    goto <bb 252>;

<bb 252>:

<bb 253>:
  # match_1 = PHI <match_655(247), match_661(252), match_661(251)>
  # remote_codec_rate_96 = PHI <remote_codec_rate_1493(247), remote_codec_rate_1493(252), fmtp_remote_codec_rate_99(251)>
  # DEBUG remote_codec_rate => remote_codec_rate_96
  # DEBUG match => match_1
  D.44950_663 = (_Bool) match_1;
  D.44951_664 = bit_rate_631 != 0;
  D.44952_665 = D.44950_663 & D.44951_664;
  if (D.44952_665 != 0)
    goto <bb 254>;
  else
    goto <bb 257>;

<bb 254>:
  D.44955_666 = map_bit_rate_132 != 0;
  D.44956_667 = map_bit_rate_132 != bit_rate_631;
  D.44957_668 = D.44955_666 & D.44956_667;
  if (D.44957_668 != 0)
    goto <bb 255>;
  else
    goto <bb 257>;

<bb 255>:
  D.44960_670 = strcasecmp (D.44889_642, "ilbc");
  if (D.44960_670 != 0)
    goto <bb 256>;
  else
    goto <bb 257>;

<bb 256>:
  D.44963_672 = strcasecmp (D.44889_642, "isac");
  if (D.44963_672 != 0)
    goto <bb 432>;
  else
    goto <bb 257>;

<bb 257>:
  # match_2 = PHI <match_1(253), 1(254), 1(255), 1(256)>
  # DEBUG match => match_2
  D.44950_674 = (_Bool) match_2;
  D.44968_675 = remote_codec_rate_96 != 0;
  D.44969_676 = D.44950_674 & D.44968_675;
  if (D.44969_676 != 0)
    goto <bb 258>;
  else
    goto <bb 262>;

<bb 258>:
  D.44972_677 = codec_rate_632 != 0;
  D.44973_678 = remote_codec_rate_96 != codec_rate_632;
  D.44974_679 = D.44972_677 & D.44973_678;
  if (D.44974_679 != 0)
    goto <bb 259>;
  else
    goto <bb 263>;

<bb 259>:
  D.44977_681 = strcasecmp (D.44889_642, "pcma");
  if (D.44977_681 == 0)
    goto <bb 261>;
  else
    goto <bb 260>;

<bb 260>:
  D.44979_683 = strcasecmp (D.44889_642, "pcmu");
  if (D.44979_683 == 0)
    goto <bb 261>;
  else
    goto <bb 263>;

<bb 261>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3405, session_161(D), 7, "sampling rates have to match for G.711\n");
  # DEBUG match => 0
  # DEBUG match => 0
  goto <bb 270>;

<bb 262>:
  # match_3 = PHI <match_2(257), match_1752(432)>
  # DEBUG match => match_3
  if (match_3 != 0)
    goto <bb 263>;
  else
    goto <bb 270>;

<bb 263>:
  if (scrooge_80 != 0)
    goto <bb 264>;
  else
    goto <bb 265>;

<bb 264>:
  D.44926_685 = imp_629->iananame;
  D.44984_686 = imp_629->samples_per_second;
  D.44929_687 = imp_629->microseconds_per_packet;
  D.44930_688 = D.44929_687 / 1000;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3411, session_161(D), 7, "Bah HUMBUG! Sticking with %s@%uh@%ui\n", D.44926_685, D.44984_686, D.44930_688);
  goto <bb 269>;

<bb 265>:
  D.44989_689 = ptime_1033 != 0;
  D.44990_690 = codec_ms_90 != 0;
  D.44991_691 = D.44989_689 & D.44990_690;
  if (D.44991_691 != 0)
    goto <bb 266>;
  else
    goto <bb 267>;

<bb 266>:
  D.44993_692 = codec_ms_90 * 1000;
  D.44929_693 = imp_629->microseconds_per_packet;
  if (D.44993_692 != D.44929_693)
    goto <bb 268>;
  else
    goto <bb 267>;

<bb 267>:
  if (remote_codec_rate_96 != codec_rate_632)
    goto <bb 268>;
  else
    goto <bb 269>;

<bb 268>:
  # DEBUG match => 0
  D.44926_695 = imp_629->iananame;
  D.44927_696 = imp_629->ianacode;
  D.44928_697 = (int) D.44927_696;
  D.44929_698 = imp_629->microseconds_per_packet;
  D.44930_699 = D.44929_698 / 1000;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3418, session_161(D), 7, "Audio Codec Compare [%s:%d:%u:%d:%u] is saved as a near-match\n", D.44926_695, D.44928_697, codec_rate_632, D.44930_699, bit_rate_631);
  near_matches[nm_idx_1139].codec_idx = i_1622;
  remote_codec_rate.92_700 = (int) remote_codec_rate_96;
  near_matches[nm_idx_1139].rate = remote_codec_rate.92_700;
  near_matches[nm_idx_1139].imp = imp_629;
  near_matches[nm_idx_1139].map = map_1728;
  nm_idx_701 = nm_idx_1139 + 1;
  # DEBUG nm_idx => nm_idx_701
  goto <bb 270>;

<bb 269>:
  matches[m_idx_1487].codec_idx = i_1622;
  codec_rate.94_702 = (int) codec_rate_632;
  matches[m_idx_1487].rate = codec_rate.94_702;
  matches[m_idx_1487].imp = imp_629;
  matches[m_idx_1487].map = map_1728;
  m_idx_703 = m_idx_1487 + 1;
  # DEBUG m_idx => m_idx_703
  D.44926_704 = imp_629->iananame;
  D.44927_705 = imp_629->ianacode;
  D.44928_706 = (int) D.44927_705;
  D.44929_707 = imp_629->microseconds_per_packet;
  D.44930_708 = D.44929_707 / 1000;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3437, session_161(D), 7, "Audio Codec Compare [%s:%d:%u:%d:%u] ++++ is saved as a match\n", D.44926_704, D.44928_706, codec_rate_632, D.44930_708, bit_rate_631);
  if (m_idx_703 > 29)
    goto <bb 433>;
  else
    goto <bb 270>;

<bb 270>:
  # remote_codec_rate_97 = PHI <remote_codec_rate_1493(243), remote_codec_rate_96(261), remote_codec_rate_96(268), remote_codec_rate_96(269), remote_codec_rate_96(262)>
  # m_idx_100 = PHI <m_idx_1487(243), m_idx_1487(261), m_idx_1487(268), m_idx_703(269), m_idx_1487(262)>
  # nm_idx_115 = PHI <nm_idx_1139(243), nm_idx_1139(261), nm_idx_701(268), nm_idx_1139(269), nm_idx_1139(262)>
  # DEBUG nm_idx => nm_idx_115
  # DEBUG m_idx => m_idx_100
  # DEBUG remote_codec_rate => remote_codec_rate_97
  # DEBUG match => 0
  i_710 = i_1622 + 1;
  # DEBUG i => i_710
  # DEBUG i => i_710
  # DEBUG nm_idx => nm_idx_115
  # DEBUG m_idx => m_idx_100
  # DEBUG remote_codec_rate => remote_codec_rate_97
  # DEBUG match => 0
  D.44471_621 = smh_186->mparams;
  D.44996_622 = D.44471_621->num_codecs;
  D.44997_623 = D.44996_622 > i_710;
  D.44998_624 = total_codecs_85 > i_710;
  D.44999_625 = D.44997_623 & D.44998_624;
  if (D.44999_625 != 0)
    goto <bb 243>;
  else
    goto <bb 271>;

<bb 271>:
  # match_6 = PHI <0(270), 0(242)>
  # m_idx_102 = PHI <m_idx_100(270), m_idx_792(242)>
  # nm_idx_901 = PHI <nm_idx_115(270), nm_idx_1755(242)>
  # DEBUG m_idx => m_idx_102
  # DEBUG match => match_6
  if (m_idx_102 > 29)
    goto <bb 273>;
  else
    goto <bb 272>;

<bb 272>:
  # match_7 = PHI <match_1901(214), match_1901(219), match_1901(213), match_1901(220), match_6(271), match_1901(218)>
  # best_te_19 = PHI <best_te_568(214), best_te_1898(219), best_te_1898(213), best_te_1898(220), best_te_1898(271), best_te_1898(218)>
  # cng_pt_24 = PHI <cng_pt_1667(214), cng_pt_573(219), cng_pt_1667(213), cng_pt_1667(220), cng_pt_1667(271), cng_pt_573(218)>
  # codec_ms_91 = PHI <codec_ms_1720(214), codec_ms_1720(219), codec_ms_1720(213), codec_ms_1720(220), codec_ms_90(271), codec_ms_1720(218)>
  # m_idx_103 = PHI <m_idx_792(214), m_idx_792(219), m_idx_792(213), m_idx_792(220), m_idx_102(271), m_idx_792(218)>
  # nm_idx_117 = PHI <nm_idx_1755(214), nm_idx_1755(219), nm_idx_1755(213), nm_idx_1755(220), nm_idx_901(271), nm_idx_1755(218)>
  # DEBUG nm_idx => nm_idx_117
  # DEBUG m_idx => m_idx_103
  # DEBUG codec_ms => codec_ms_91
  # DEBUG x => NULL
  # DEBUG cng_pt => cng_pt_24
  # DEBUG best_te => best_te_19
  # DEBUG match => match_7
  map_711 = map_1728->rm_next;
  # DEBUG map => map_711
  # DEBUG map => map_711
  # DEBUG nm_idx => nm_idx_117
  # DEBUG m_idx => m_idx_103
  # DEBUG codec_ms => codec_ms_91
  # DEBUG x => NULL
  # DEBUG cng_pt => cng_pt_24
  # DEBUG best_te => best_te_19
  # DEBUG match => match_7
  if (map_711 != 0B)
    goto <bb 209>;
  else
    goto <bb 273>;

<bb 273>:
  # match_9 = PHI <match_1718(433), match_7(272), match_6(271), match_1800(208)>
  # codec_ms_93 = PHI <codec_ms_90(433), codec_ms_91(272), codec_ms_90(271), codec_ms_477(208)>
  # m_idx_105 = PHI <m_idx_1751(433), m_idx_103(272), m_idx_102(271), m_idx_1869(208)>
  # nm_idx_119 = PHI <nm_idx_456(433), nm_idx_117(272), nm_idx_901(271), nm_idx_1749(208)>
  # best_te_1624 = PHI <best_te_1898(433), best_te_19(272), best_te_1898(271), best_te_680(208)>
  # cng_pt_1626 = PHI <cng_pt_1667(433), cng_pt_24(272), cng_pt_1667(271), cng_pt_1717(208)>
  # DEBUG nm_idx => nm_idx_119
  # DEBUG m_idx => m_idx_105
  # DEBUG codec_ms => codec_ms_93
  # DEBUG match => match_9
  D.45001_712 = smh_186->crypto_mode;
  D.45002_713 = D.45001_712 == 1;
  D.45003_714 = got_crypto_969 <= 0;
  D.45004_715 = D.45002_713 & D.45003_714;
  if (D.45004_715 != 0)
    goto <bb 274>;
  else
    goto <bb 275>;

<bb 274>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3455, session_161(D), 4, "Crypto not negotiated but required.\n");
  # DEBUG match => 0
  # DEBUG nm_idx => 0
  # DEBUG m_idx => 0
  # DEBUG nm_idx => 0
  # DEBUG m_idx => 0
  # DEBUG match => 0
  goto <bb 284>;

<bb 275>:
  # match_10 = PHI <match_9(273)>
  # m_idx_106 = PHI <m_idx_105(273)>
  # nm_idx_120 = PHI <nm_idx_119(273)>
  # DEBUG nm_idx => nm_idx_120
  # DEBUG m_idx => m_idx_106
  # DEBUG match => match_10
  D.45007_719 = m_idx_106 == 0;
  D.45008_720 = nm_idx_120 != 0;
  D.45009_721 = D.45007_719 & D.45008_720;
  if (D.45009_721 != 0)
    goto <bb 444>;
  else
    goto <bb 284>;

<bb 276>:
  # j_1845 = PHI <j_736(283), j_1713(444)>
  # DEBUG timp => 0B
  D.45012_724 = near_matches[j_1845].rate;
  near_rate_725 = (uint32_t) D.45012_724;
  # DEBUG near_rate => near_rate_725
  near_match_726 = near_matches[j_1845].imp;
  # DEBUG near_match => near_match_726
  near_map_727 = near_matches[j_1845].map;
  # DEBUG near_map => near_map_727
  D.45013_728 = near_match_726->iananame;
  if (near_rate_725 == 0)
    goto <bb 277>;
  else
    goto <bb 278>;

<bb 277>:
  near_rate_729 = near_match_726->samples_per_second;

<bb 278>:
  # near_rate_145 = PHI <near_rate_729(277), near_rate_725(276)>
  switch_snprintf (&tmp, 80, "%s@%uh@%ui", D.45013_728, near_rate_145, codec_ms_93);
  prefs[0] = &tmp;
  num_731 = switch_loadable_module_get_codecs_sorted (&search, 1, &prefs, 1);
  # DEBUG num => num_731
  if (num_731 != 0)
    goto <bb 279>;
  else
    goto <bb 280>;

<bb 279>:
  timp_732 = search[0];
  # DEBUG timp => timp_732

<bb 280>:
  # timp_134 = PHI <timp_732(279), near_match_726(278)>
  # DEBUG timp => timp_134
  if (maxptime_1040 == 0)
    goto <bb 282>;
  else
    goto <bb 281>;

<bb 281>:
  D.45024_734 = timp_134->microseconds_per_packet;
  D.45025_735 = D.45024_734 / 1000;
  if (D.45025_735 <= maxptime_1040)
    goto <bb 282>;
  else
    goto <bb 283>;

<bb 282>:
  # j_897 = PHI <j_1845(280), j_1845(281)>
  # timp_872 = PHI <timp_134(280), timp_134(281)>
  # D.45012_869 = PHI <D.45012_724(280), D.45012_724(281)>
  # near_map_863 = PHI <near_map_727(280), near_map_727(281)>
  D.45026_737 = timp_872->iananame;
  D.45024_738 = timp_872->microseconds_per_packet;
  D.45025_739 = D.45024_738 / 1000;
  D.45027_740 = timp_872->actual_samples_per_second;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3488, session_161(D), 7, "Substituting codec %s@%ui@%uh\n", D.45026_737, D.45025_739, D.45027_740);
  # DEBUG match => 1
  D.45028_742 = near_matches[j_897].codec_idx;
  matches[0].codec_idx = D.45028_742;
  near_rate.96_743 = D.45012_869;
  matches[0].rate = near_rate.96_743;
  matches[0].imp = timp_872;
  matches[0].map = near_map_863;
  # DEBUG m_idx => 1
  # DEBUG m_idx => 1
  # DEBUG match => 1
  goto <bb 285>;

<bb 283>:
  j_736 = j_1845 + 1;
  # DEBUG j => j_736
  # DEBUG j => j_736
  if (nm_idx_120 > j_736)
    goto <bb 276>;
  else
    goto <bb 434>;

<bb 284>:
  # match_11 = PHI <match_10(275), 0(274)>
  # m_idx_107 = PHI <m_idx_106(275), 0(274)>
  # nm_idx_1746 = PHI <nm_idx_120(275), 0(274)>
  # DEBUG m_idx => m_idx_107
  # DEBUG match => match_11
  if (m_idx_107 != 0)
    goto <bb 285>;
  else
    goto <bb 305>;

<bb 285>:
  # m_idx_1715 = PHI <m_idx_107(284), 1(282)>
  # nm_idx_1716 = PHI <nm_idx_1746(284), nm_idx_120(282)>
  if (greedy_47 != 0)
    goto <bb 286>;
  else
    goto <bb 287>;

<bb 286>:
  greedy_sort (smh_186, &matches, m_idx_1715, codec_array_84, total_codecs_85);

<bb 287>:
  # DEBUG match => 1
  MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].codec_negotiated = 1;
  smh_186->num_negotiated_codecs = 0;
  # DEBUG j => 0
  # DEBUG j => 0
  if (m_idx_1715 > 0)
    goto <bb 288>;
  else
    goto <bb 436>;

<bb 288>:
  # j_1881 = PHI <j_807(304), 0(287)>
  D.45034_747 = matches[j_1881].map;
  D.45035_748 = D.45034_747->rm_encoding;
  D.45036_750 = D.45034_747->rm_fmtp;
  D.45037_752 = D.45034_747->rm_pt;
  D.45038_753 = (uint32_t) D.45037_752;
  D.45039_754 = matches[j_1881].imp;
  D.45040_755 = D.45039_754->samples_per_second;
  D.45041_757 = D.45039_754->microseconds_per_packet;
  D.45042_758 = D.45041_757 / 1000;
  D.45043_759 = (uint32_t) D.45042_758;
  pmap_760 = switch_core_media_add_payload_map (session_161(D), 0, D.45035_748, D.45036_750, sdp_type_546(D), D.45038_753, D.45040_755, D.45043_759, 1);
  # DEBUG pmap => pmap_760
  mimp_761 = matches[j_1881].imp;
  # DEBUG mimp => mimp_761
  mmap_762 = matches[j_1881].map;
  # DEBUG mmap => mmap_762
  if (j_1881 == 0)
    goto <bb 289>;
  else
    goto <bb 291>;

<bb 289>:
  MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].cur_payload_map = pmap_760;
  pmap_760->current = 1;
  D.44605_764 = MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].rtp_session;
  if (D.44605_764 != 0B)
    goto <bb 290>;
  else
    goto <bb 291>;

<bb 290>:
  D.45048_766 = pmap_760->pt;
  switch_rtp_set_default_payload (D.44605_764, D.45048_766);

<bb 291>:
  D.45049_767 = mmap_762->rm_encoding;
  D.45050_768 = switch_core_perform_session_strdup (session_161(D), D.45049_767, "src/switch_core_media.c", &__func__, 3535);
  pmap_760->rm_encoding = D.45050_768;
  D.45051_769 = mimp_761->iananame;
  D.45052_770 = switch_core_perform_session_strdup (session_161(D), D.45051_769, "src/switch_core_media.c", &__func__, 3536);
  pmap_760->iananame = D.45052_770;
  D.45053_771 = mmap_762->rm_pt;
  D.45054_772 = (unsigned char) D.45053_771;
  pmap_760->recv_pt = D.45054_772;
  D.45055_773 = mimp_761->samples_per_second;
  pmap_760->rm_rate = D.45055_773;
  pmap_760->adv_rm_rate = D.45055_773;
  D.45051_775 = mimp_761->iananame;
  D.45056_776 = strcasecmp (D.45051_775, "g722");
  if (D.45056_776 != 0)
    goto <bb 292>;
  else
    goto <bb 293>;

<bb 292>:
  D.45059_777 = mimp_761->actual_samples_per_second;
  pmap_760->rm_rate = D.45059_777;

<bb 293>:
  D.45060_778 = mimp_761->microseconds_per_packet;
  D.45061_779 = D.45060_778 / 1000;
  D.45062_780 = (uint32_t) D.45061_779;
  pmap_760->codec_ms = D.45062_780;
  D.45063_781 = mimp_761->bits_per_second;
  D.45064_782 = (uint32_t) D.45063_781;
  pmap_760->bitrate = D.45064_782;
  D.45066_783 = mmap_762->rm_params;
  if (D.45066_783 != 0B)
    goto <bb 294>;
  else
    goto <bb 295>;

<bb 294>:
  # DEBUG __nptr => D.45066_783
  D.47922_1485 = strtol (D.45066_783, 0B, 10);

<bb 295>:
  # D.47922_146 = PHI <D.47922_1485(294), 1(293)>
  pmap_760->channels = D.47922_146;
  D.45049_787 = mmap_762->rm_encoding;
  D.45070_788 = strcasecmp (D.45049_787, "opus");
  if (D.45070_788 == 0)
    goto <bb 296>;
  else
    goto <bb 303>;

<bb 296>:
  if (D.47922_146 == 1)
    goto <bb 297>;
  else
    goto <bb 298>;

<bb 297>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3549, session_161(D), 4, "Invalid SDP for opus.  Don\'t ask.. but it needs a /2\n");
  pmap_760->adv_channels = 1;
  goto <bb 299>;

<bb 298>:
  pmap_760->adv_channels = 2;

<bb 299>:
  D.45079_790 = mmap_762->rm_fmtp;
  # DEBUG s => D.45079_790
  if (D.45079_790 == 0B)
    goto <bb 302>;
  else
    goto <bb 300>;

<bb 300>:
  D.47926_1486 = *D.45079_790;
  if (D.47926_1486 == 0)
    goto <bb 302>;
  else
    goto <bb 435>;

<bb 301>:
  pmap_760->channels = 2;
  goto <bb 304>;

<bb 302>:
  pmap_760->channels = 1;
  goto <bb 304>;

<bb 303>:
  pmap_760->adv_channels = D.47922_146;

<bb 304>:
  D.45085_795 = connection_124->c_address;
  D.45086_796 = switch_core_perform_session_strdup (session_161(D), D.45085_795, "src/switch_core_media.c", &__func__, 3563);
  pmap_760->remote_sdp_ip = D.45086_796;
  D.44697_797 = m_1764->m_port;
  D.45087_798 = (short unsigned int) D.44697_797;
  pmap_760->remote_sdp_port = D.45087_798;
  D.45079_799 = mmap_762->rm_fmtp;
  D.45088_800 = switch_core_perform_session_strdup (session_161(D), D.45079_799, "src/switch_core_media.c", &__func__, 3565);
  pmap_760->rm_fmtp = D.45088_800;
  D.45053_801 = mmap_762->rm_pt;
  D.45054_802 = (unsigned char) D.45053_801;
  pmap_760->agreed_pt = D.45054_802;
  D.44655_803 = smh_186->num_negotiated_codecs;
  smh_186->negotiated_codecs[D.44655_803] = mimp_761;
  D.45089_804 = D.44655_803 + 1;
  smh_186->num_negotiated_codecs = D.45089_804;
  D.45053_805 = mmap_762->rm_pt;
  D.45054_806 = (unsigned char) D.45053_805;
  pmap_760->recv_pt = D.45054_806;
  j_807 = j_1881 + 1;
  # DEBUG j => j_807
  # DEBUG j => j_807
  if (j_807 < m_idx_1715)
    goto <bb 288>;
  else
    goto <bb 436>;

<bb 305>:
  # match_12 = PHI <match_455(434), match_11(284)>
  # m_idx_1904 = PHI <m_idx_1748(434), m_idx_107(284)>
  # nm_idx_1744 = PHI <nm_idx_120(434), nm_idx_1746(284)>
  # DEBUG match => match_12
  if (match_12 != 0)
    goto <bb 306>;
  else
    goto <bb 313>;

<bb 306>:
  # match_1712 = PHI <match_12(305), match_464(436)>
  # m_idx_1905 = PHI <m_idx_1904(305), m_idx_1715(436)>
  # nm_idx_841 = PHI <nm_idx_1744(305), nm_idx_1716(436)>
  D.44750_808 = MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].cur_payload_map;
  D.44762_809 = D.44750_808->remote_sdp_port;
  D.44767_810 = (int) D.44762_809;
  switch_snprintf (&tmp, 50, "%d", D.44767_810);
  D.44530_811 = session_161(D)->channel;
  D.44750_812 = MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].cur_payload_map;
  D.44760_813 = D.44750_812->remote_sdp_ip;
  switch_channel_set_variable_var_check (D.44530_811, "remote_media_ip", D.44760_813, 1);
  D.44530_814 = session_161(D)->channel;
  switch_channel_set_variable_var_check (D.44530_814, "remote_media_port", &tmp, 1);
  D.44750_815 = MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].cur_payload_map;
  D.45092_816 = D.44750_815->recv_pt;
  D.45093_817 = (int) D.45092_816;
  switch_snprintf (&tmp, 50, "%d", D.45093_817);
  D.44530_818 = session_161(D)->channel;
  switch_channel_set_variable_var_check (D.44530_818, "rtp_audio_recv_pt", &tmp, 1);
  # DEBUG D#75 => &MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].read_codec
  # DEBUG codec => D#75
  D.47934_1488 = MEM[(struct switch_codec_t *)smh_186 + 1604B].flags;
  D.47933_1489 = D.47934_1488 & 256;
  if (D.47933_1489 != 0)
    goto <bb 307>;
  else
    goto <bb 311>;

<bb 307>:
  D.47932_1490 = MEM[(struct switch_codec_t *)smh_186 + 1604B].mutex;
  if (D.47932_1490 != 0B)
    goto <bb 308>;
  else
    goto <bb 311>;

<bb 308>:
  D.47931_1491 = MEM[(struct switch_codec_t *)smh_186 + 1604B].codec_interface;
  if (D.47931_1491 != 0B)
    goto <bb 309>;
  else
    goto <bb 311>;

<bb 309>:
  D.47930_1492 = MEM[(struct switch_codec_t *)smh_186 + 1604B].implementation;
  if (D.47930_1492 != 0B)
    goto <bb 310>;
  else
    goto <bb 311>;

<bb 310>:
  MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].reset_codec = 1;

<bb 311>:
  D.44471_821 = smh_186->mparams;
  D.45098_822 = D.44471_821->codec_flags;
  D.45099_823 = switch_core_media_set_codec (session_161(D), 0, D.45098_822);
  if (D.45099_823 == 0)
    goto <bb 312>;
  else
    goto <bb 313>;

<bb 312>:
  # DEBUG got_audio => 1
  check_ice (smh_186, 0, sdp_198, m_1764);

<bb 313>:
  # match_13 = PHI <0(305), match_1712(312), 0(311)>
  # got_audio_65 = PHI <0(305), 1(312), 0(311)>
  # m_idx_1745 = PHI <m_idx_1904(305), m_idx_1905(312), m_idx_1905(311)>
  # nm_idx_843 = PHI <nm_idx_1744(305), nm_idx_841(312), nm_idx_841(311)>
  # DEBUG got_audio => got_audio_65
  # DEBUG match => match_13
  if (best_te_1624 == 0)
    goto <bb 314>;
  else
    goto <bb 437>;

<bb 314>:
  D.45107_826 = switch_media_handle_test_media_flag (smh_186, 8);
  if (D.45107_826 != 0)
    goto <bb 316>;
  else
    goto <bb 315>;

<bb 315>:
  D.44530_827 = session_161(D)->channel;
  D.45109_828 = switch_channel_test_flag (D.44530_827, 93);
  if (D.45109_828 != 0)
    goto <bb 316>;
  else
    goto <bb 322>;

<bb 316>:
  D.44471_829 = smh_186->mparams;
  D.45110_830 = D.44471_829->te;
  D.45111_831 = (int) D.45110_830;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3609, session_161(D), 7, "No 2833 in SDP. Liberal DTMF mode adding %d as telephone-event.\n", D.45111_831);
  D.44471_832 = smh_186->mparams;
  best_te_833 = D.44471_832->te;
  # DEBUG best_te => best_te_833
  # DEBUG best_te => best_te_833
  if (best_te_833 != 0)
    goto <bb 317>;
  else
    goto <bb 322>;

<bb 317>:
  # best_te_1860 = PHI <best_te_833(316), best_te_518(437)>
  D.45114_834 = switch_channel_direction (channel_162);
  if (D.45114_834 == 1)
    goto <bb 318>;
  else
    goto <bb 320>;

<bb 318>:
  D.44471_835 = smh_186->mparams;
  D.44471_835->te = best_te_1860;
  # DEBUG D#11 => D.44471_835->te
  # DEBUG te => D#11
  D.44857_837 = (int) best_te_1860;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3617, session_161(D), 7, "Set 2833 dtmf send payload to %u\n", D.44857_837);
  D.44530_838 = session_161(D)->channel;
  switch_channel_set_variable_var_check (D.44530_838, "dtmf_type", "rfc2833", 1);
  D.44471_839 = smh_186->mparams;
  D.44471_839->dtmf_type = 0;
  D.44605_840 = MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].rtp_session;
  if (D.44605_840 != 0B)
    goto <bb 319>;
  else
    goto <bb 415>;

<bb 319>:
  switch_rtp_set_telephony_event (D.44605_840, best_te_1860);
  D.44530_842 = session_161(D)->channel;
  switch_channel_set_variable_printf (D.44530_842, "rtp_2833_send_payload", "%d", D.44857_837);
  goto <bb 415>;

<bb 320>:
  D.44471_845 = smh_186->mparams;
  D.44471_845->te = best_te_1860;
  D.44471_845->recv_te = best_te_1860;
  # DEBUG te => best_te_1860
  D.45120_848 = (int) best_te_1860;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3626, session_161(D), 7, "Set 2833 dtmf send/recv payload to %u\n", D.45120_848);
  D.44530_849 = session_161(D)->channel;
  switch_channel_set_variable_var_check (D.44530_849, "dtmf_type", "rfc2833", 1);
  D.44471_850 = smh_186->mparams;
  D.44471_850->dtmf_type = 0;
  D.44605_851 = MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].rtp_session;
  if (D.44605_851 != 0B)
    goto <bb 321>;
  else
    goto <bb 415>;

<bb 321>:
  switch_rtp_set_telephony_event (D.44605_851, best_te_1860);
  D.44530_853 = session_161(D)->channel;
  switch_channel_set_variable_printf (D.44530_853, "rtp_2833_send_payload", "%d", D.45120_848);
  D.44605_855 = MEM[(struct switch_rtp_engine_t *)smh_186 + 80B].rtp_session;
  switch_rtp_set_telephony_recv_event (D.44605_855, best_te_1860);
  D.44530_856 = session_161(D)->channel;
  switch_channel_set_variable_printf (D.44530_856, "rtp_2833_recv_payload", "%d", D.45120_848);
  goto <bb 415>;

<bb 322>:
  D.45124_858 = switch_channel_get_variable_dup (channel_162, "rtp_info_when_no_2833", 1, -1);
  # DEBUG expr => D.45124_858
  if (D.45124_858 != 0B)
    goto <bb 323>;
  else
    goto <bb 438>;

<bb 323>:
  D.49735_1600 = strcasecmp (D.45124_858, "no");
  if (D.49735_1600 == 0)
    goto <bb 332>;
  else
    goto <bb 324>;

<bb 324>:
  D.49736_1601 = strcasecmp (D.45124_858, "off");
  if (D.49736_1601 == 0)
    goto <bb 332>;
  else
    goto <bb 325>;

<bb 325>:
  D.49737_1602 = strcasecmp (D.45124_858, "false");
  if (D.49737_1602 == 0)
    goto <bb 332>;
  else
    goto <bb 326>;

<bb 326>:
  D.49738_1603 = strcasecmp (D.45124_858, "f");
  if (D.49738_1603 == 0)
    goto <bb 332>;
  else
    goto <bb 327>;

<bb 327>:
  D.49739_1604 = strcasecmp (D.45124_858, "disabled");
  if (D.49739_1604 == 0)
    goto <bb 332>;
  else
    goto <bb 328>;

<bb 328>:
  D.49740_1605 = strcasecmp (D.45124_858, "inactive");
  if (D.49740_1605 == 0)
    goto <bb 332>;
  else
    goto <bb 329>;

<bb 329>:
  D.49741_1606 = strcasecmp (D.45124_858, "disallow");
  if (D.49741_1606 == 0)
    goto <bb 332>;
  else
    goto <bb 330>;

<bb 330>:
  D.49742_1607 = switch_is_number (D.45124_858);
  if (D.49742_1607 != 0)
    goto <bb 331>;
  else
    goto <bb 438>;

<bb 331>:
  # DEBUG __nptr => D.45124_858
  D.49743_1608 = strtol (D.45124_858, 0B, 10);
  if (D.49743_1608 == 0)
    goto <bb 332>;
  else
    goto <bb 438>;

<bb 332>:
  D.44530_866 = session_161(D)->channel;
  switch_channel_set_variable_var_check (D.44530_866, "dtmf_type", "none", 1);
  D.44471_867 = smh_186->mparams;
  D.44471_867->dtmf_type = 2;
  D.44471_867->te = 0;
  D.44471_867->recv_te = 0;
  # DEBUG D#13 => D.44471_867->recv_te
  # DEBUG te => D#13
  goto <bb 415>;

<bb 333>:
  if (D.44681_493 == 3)
    goto <bb 334>;
  else
    goto <bb 415>;

<bb 334>:
  D.44697_873 = m_1764->m_port;
  if (D.44697_873 != 0)
    goto <bb 335>;
  else
    goto <bb 415>;

<bb 335>:
  # DEBUG mimp => 0B
  # DEBUG vmatch => 0
  # DEBUG nm_idx => 0
  # DEBUG m_idx => 0
  memset (&matches, 0, 480);
  memset (&near_matches, 0, 480);
  D.44530_878 = session_161(D)->channel;
  switch_channel_set_variable_var_check (D.44530_878, "video_possible", "true", 1);
  connection_879 = sdp_198->sdp_connection;
  # DEBUG connection => connection_879
  D.44546_880 = m_1764->m_connections;
  if (D.44546_880 != 0B)
    goto <bb 336>;
  else
    goto <bb 337>;

<bb 336>:
  # DEBUG connection => D.44546_880

<bb 337>:
  # connection_125 = PHI <connection_879(335), D.44546_880(336)>
  # DEBUG connection => connection_125
  if (connection_125 == 0B)
    goto <bb 338>;
  else
    goto <bb 339>;

<bb 338>:
  # cng_pt_1630 = PHI <cng_pt_1717(337)>
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3669, session_161(D), 3, "Cannot find a c= line in the sdp at media or session level!\n");
  # DEBUG match => 0
  goto <bb 416> (done);

<bb 339>:
  map_883 = m_1764->m_rtpmaps;
  # DEBUG map => map_883
  # DEBUG map => map_883
  # DEBUG m_idx => 0
  # DEBUG got_video_crypto => got_video_crypto_1674
  if (map_883 != 0B)
    goto <bb 340>;
  else
    goto <bb 396>;

<bb 340>:
  # got_video_crypto_556 = PHI <got_video_crypto_960(395), got_video_crypto_1674(339)>
  # m_idx_819 = PHI <m_idx_953(395), 0(339)>
  # map_1620 = PHI <map_1021(395), map_883(339)>
  D.45137_884 = switch_rtp_has_dtls ();
  if (D.45137_884 != 0)
    goto <bb 341>;
  else
    goto <bb 347>;

<bb 341>:
  D.45140_885 = dtls_ok (session_161(D));
  if (D.45140_885 != 0)
    goto <bb 342>;
  else
    goto <bb 347>;

<bb 342>:
  attr_886 = m_1764->m_attributes;
  # DEBUG attr => attr_886
  # DEBUG got_video_crypto => got_video_crypto_556
  # DEBUG attr => attr_886
  if (attr_886 != 0B)
    goto <bb 343>;
  else
    goto <bb 347>;

<bb 343>:
  # attr_1850 = PHI <attr_892(346), attr_886(342)>
  # got_video_crypto_1738 = PHI <got_video_crypto_57(346), got_video_crypto_556(342)>
  D.44590_887 = attr_1850->a_name;
  D.45143_888 = strcasecmp (D.44590_887, "fingerprint");
  if (D.45143_888 == 0)
    goto <bb 344>;
  else
    goto <bb 346>;

<bb 344>:
  D.44619_889 = attr_1850->a_value;
  # DEBUG s => D.44619_889
  if (D.44619_889 == 0B)
    goto <bb 346>;
  else
    goto <bb 345>;

<bb 345>:
  D.47939_1495 = *D.44619_889;
  if (D.47939_1495 == 0)
    goto <bb 346>;
  else
    goto <bb 439>;

<bb 346>:
  # got_video_crypto_57 = PHI <got_video_crypto_1738(343), got_video_crypto_1738(345), 1(439), got_video_crypto_1738(344)>
  # DEBUG got_video_crypto => got_video_crypto_57
  attr_892 = attr_1850->a_next;
  # DEBUG attr => attr_892
  # DEBUG got_video_crypto => got_video_crypto_57
  # DEBUG attr => attr_892
  if (attr_892 != 0B)
    goto <bb 343>;
  else
    goto <bb 347>;

<bb 347>:
  # got_video_crypto_59 = PHI <got_video_crypto_556(340), got_video_crypto_556(341), got_video_crypto_57(346), got_video_crypto_556(342)>
  # DEBUG got_video_crypto => got_video_crypto_59
  attr_893 = m_1764->m_attributes;
  # DEBUG attr => attr_893
  # DEBUG got_video_crypto => got_video_crypto_59
  # DEBUG attr => attr_893
  if (attr_893 != 0B)
    goto <bb 348>;
  else
    goto <bb 380>;

<bb 348>:
  # attr_619 = PHI <attr_978(379), attr_893(347)>
  # got_video_crypto_1885 = PHI <got_video_crypto_60(379), got_video_crypto_59(347)>
  D.44590_894 = attr_619->a_name;
  D.45151_895 = strcasecmp (D.44590_894, "framerate");
  if (D.45151_895 == 0)
    goto <bb 349>;
  else
    goto <bb 350>;

<bb 349>:
  D.44619_896 = attr_619->a_value;
  if (D.44619_896 != 0B)
    goto <bb 379>;
  else
    goto <bb 350>;

<bb 350>:
  D.45154_898 = strcasecmp (D.44590_894, "rtcp-fb");
  if (D.45154_898 == 0)
    goto <bb 351>;
  else
    goto <bb 355>;

<bb 351>:
  D.44619_899 = attr_619->a_value;
  # DEBUG s => D.44619_899
  if (D.44619_899 == 0B)
    goto <bb 379>;
  else
    goto <bb 352>;

<bb 352>:
  D.47943_1497 = *D.44619_899;
  if (D.47943_1497 == 0)
    goto <bb 379>;
  else
    goto <bb 440>;

<bb 353>:
Invalid sum of incoming frequencies 992, should be 677
  D.45163_903 = MEM[(struct switch_rtp_engine_t *)smh_186 + 11496B].fir;
  D.45164_904 = D.45163_903 + 1;
  MEM[(struct switch_rtp_engine_t *)smh_186 + 11496B].fir = D.45164_904;

<bb 354>:
  D.44471_905 = smh_186->mparams;
  D.44471_905->rtcp_video_interval_msec = "10000";
  goto <bb 379>;

<bb 355>:
  D.45168_907 = strcasecmp (D.44590_894, "rtcp");
  if (D.45168_907 == 0)
    goto <bb 356>;
  else
    goto <bb 362>;

<bb 356>:
  D.44619_908 = attr_619->a_value;
  if (D.44619_908 != 0B)
    goto <bb 357>;
  else
    goto <bb 362>;

<bb 357>:
  # DEBUG __s2_len => 1
  # DEBUG __s1 => D.44619_908
  D.45174_911 = MEM[(const unsigned char *)D.44619_908];
  D.45175_912 = (int) D.45174_911;
  __result_916 = D.45175_912 + -49;
  # DEBUG __result => __result_916
  if (__result_916 == 0)
    goto <bb 358>;
  else
    goto <bb 359>;

<bb 358>:
  D.45185_921 = MEM[(const unsigned char *)D.44619_908 + 1B];
  __result_922 = (int) D.45185_921;
  # DEBUG __result => __result_922

<bb 359>:
  # __result_140 = PHI <__result_916(357), __result_922(358)>
  # DEBUG __result => __result_140
  if (__result_140 == 0)
    goto <bb 360>;
  else
    goto <bb 362>;

<bb 360>:
  D.44530_952 = session_161(D)->channel;
  switch_channel_set_variable_var_check (D.44530_952, "rtp_remote_video_rtcp_port", D.44619_908, 1);
  D.44619_954 = attr_619->a_value;
  # DEBUG __nptr => D.44619_954
  D.47946_1499 = strtol (D.44619_954, 0B, 10);
  D.45213_956 = (short unsigned int) D.47946_1499;
  MEM[(struct switch_rtp_engine_t *)smh_186 + 11496B].remote_rtcp_port = D.45213_956;
  D.44471_957 = smh_186->mparams;
  D.45214_958 = D.44471_957->rtcp_video_interval_msec;
  if (D.45214_958 == 0B)
    goto <bb 361>;
  else
    goto <bb 379>;

<bb 361>:
  D.44471_957->rtcp_video_interval_msec = "5000";
  goto <bb 379>;

<bb 362>:
  if (got_video_crypto_1885 == 0)
    goto <bb 363>;
  else
    goto <bb 379>;

<bb 363>:
  D.45219_961 = strcasecmp (D.44590_894, "crypto");
  if (D.45219_961 == 0)
    goto <bb 364>;
  else
    goto <bb 379>;

<bb 364>:
  D.44619_962 = attr_619->a_value;
  # DEBUG s => D.44619_962
  if (D.44619_962 == 0B)
    goto <bb 379>;
  else
    goto <bb 365>;

<bb 365>:
  D.47950_1500 = *D.44619_962;
  if (D.47950_1500 == 0)
    goto <bb 379>;
  else
    goto <bb 441>;

<bb 366>:
  D.44530_967 = session_161(D)->channel;
  D.45227_968 = switch_channel_get_variable_dup (D.44530_967, "rtp_allow_crypto_in_avp", 1, -1);
  # DEBUG expr => D.45227_968
  if (D.45227_968 != 0B)
    goto <bb 367>;
  else
    goto <bb 442>;

<bb 367>:
  D.49747_1610 = strcasecmp (D.45227_968, "yes");
  if (D.49747_1610 == 0)
    goto <bb 376>;
  else
    goto <bb 368>;

<bb 368>:
  D.49748_1611 = strcasecmp (D.45227_968, "on");
  if (D.49748_1611 == 0)
    goto <bb 376>;
  else
    goto <bb 369>;

<bb 369>:
  D.49749_1612 = strcasecmp (D.45227_968, "true");
  if (D.49749_1612 == 0)
    goto <bb 376>;
  else
    goto <bb 370>;

<bb 370>:
  D.49750_1613 = strcasecmp (D.45227_968, "t");
  if (D.49750_1613 == 0)
    goto <bb 376>;
  else
    goto <bb 371>;

<bb 371>:
  D.49751_1614 = strcasecmp (D.45227_968, "enabled");
  if (D.49751_1614 == 0)
    goto <bb 376>;
  else
    goto <bb 372>;

<bb 372>:
  D.49752_1615 = strcasecmp (D.45227_968, "active");
  if (D.49752_1615 == 0)
    goto <bb 376>;
  else
    goto <bb 373>;

<bb 373>:
  D.49753_1616 = strcasecmp (D.45227_968, "allow");
  if (D.49753_1616 == 0)
    goto <bb 376>;
  else
    goto <bb 374>;

<bb 374>:
  D.49754_1617 = switch_is_number (D.45227_968);
  if (D.49754_1617 != 0)
    goto <bb 375>;
  else
    goto <bb 442>;

<bb 375>:
  # DEBUG __nptr => D.45227_968
  D.49755_1618 = strtol (D.45227_968, 0B, 10);
  if (D.49755_1618 != 0)
    goto <bb 376>;
  else
    goto <bb 442>;

<bb 376>:
Invalid sum of outgoing probabilities 0.0%
  goto <bb 378>;

<bb 377>:
  # cng_pt_1632 = PHI <cng_pt_1717(442)>
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3711, session_161(D), 3, "a=crypto in RTP/AVP, refer to rfc3711\n");
  # DEBUG match => 0
  goto <bb 416> (done);

<bb 378>:
Invalid sum of incoming frequencies 153, should be 298
  crypto_975 = attr_619->a_value;
  # DEBUG crypto => crypto_975
  # DEBUG __nptr => crypto_975
  crypto_tag_1502 = strtol (crypto_975, 0B, 10);
  # DEBUG crypto_tag => NULL
  got_video_crypto_977 = switch_core_session_check_incoming_crypto (session_161(D), "rtp_has_video_crypto", 1, crypto_975, crypto_tag_1502, sdp_type_546(D));
  # DEBUG got_video_crypto => got_video_crypto_977

<bb 379>:
Invalid sum of incoming frequencies 9222, should be 9547
  # got_video_crypto_60 = PHI <got_video_crypto_1885(349), got_video_crypto_1885(354), got_video_crypto_1885(361), got_video_crypto_1885(362), 0(363), 0(365), got_video_crypto_977(378), got_video_crypto_1885(352), got_video_crypto_1885(360), got_video_crypto_1885(351), 0(364)>
  # DEBUG got_video_crypto => got_video_crypto_60
  attr_978 = attr_619->a_next;
  # DEBUG attr => attr_978
  # DEBUG got_video_crypto => got_video_crypto_60
  # DEBUG attr => attr_978
  if (attr_978 != 0B)
    goto <bb 348>;
  else
    goto <bb 380>;

<bb 380>:
  # got_video_crypto_960 = PHI <got_video_crypto_60(379), got_video_crypto_59(347)>
  rm_encoding_979 = map_1620->rm_encoding;
  # DEBUG rm_encoding => rm_encoding_979
  if (rm_encoding_979 == 0B)
    goto <bb 382>;
  else
    goto <bb 381>;

<bb 381>:

<bb 382>:
  # rm_encoding_137 = PHI <rm_encoding_979(381), ""(380)>
  # DEBUG rm_encoding => rm_encoding_137
  # DEBUG i => 0
  # DEBUG i => 0
  # DEBUG m_idx => m_idx_819
  if (total_codecs_85 > 0)
    goto <bb 383>;
  else
    goto <bb 395>;

<bb 383>:
  # m_idx_910 = PHI <m_idx_109(394), m_idx_819(382)>
  # i_864 = PHI <i_1020(394), 0(382)>
  i.99_982 = (unsigned int) i_864;
  D.45236_983 = i.99_982 * 4;
  D.45237_984 = codec_array_84 + D.45236_983;
  imp_985 = *D.45237_984;
  # DEBUG imp => imp_985
  D.45238_986 = imp_985->codec_type;
  if (D.45238_986 != 1)
    goto <bb 394>;
  else
    goto <bb 384>;

<bb 384>:
  D.44530_987 = session_161(D)->channel;
  D.45241_988 = switch_channel_direction (D.44530_987);
  if (D.45241_988 == 0)
    goto <bb 385>;
  else
    goto <bb 386>;

<bb 385>:
  D.44530_989 = session_161(D)->channel;
  D.45244_990 = switch_channel_test_flag (D.44530_989, 114);
  if (D.45244_990 != 0)
    goto <bb 394>;
  else
    goto <bb 386>;

<bb 386>:
  D.45247_991 = map_1620->rm_pt;
  D.45248_992 = (int) D.45247_991;
  D.45249_993 = imp_985->iananame;
  D.45250_994 = imp_985->ianacode;
  D.45251_995 = (int) D.45250_994;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3743, session_161(D), 7, "Video Codec Compare [%s:%d]/[%s:%d]\n", rm_encoding_137, D.45248_992, D.45249_993, D.45251_995);
  D.45255_996 = map_1620->rm_encoding;
  # DEBUG s => D.45255_996
  if (D.45255_996 == 0B)
    goto <bb 388>;
  else
    goto <bb 387>;

<bb 387>:
  D.47957_1503 = *D.45255_996;
  if (D.47957_1503 == 0)
    goto <bb 388>;
  else
    goto <bb 443>;

<bb 388>:
  D.45247_1003 = map_1620->rm_pt;
  D.45248_1004 = (int) D.45247_1003;
  if (D.45248_1004 <= 95)
    goto <bb 389>;
  else
    goto <bb 390>;

<bb 389>:
  D.45250_1007 = imp_985->ianacode;
  D.45251_1008 = (int) D.45250_1007;
  vmatch_1009 = D.45248_1004 == D.45251_1008;
  # DEBUG vmatch => vmatch_1009
  goto <bb 391>;

<bb 390>:
  D.45249_1010 = imp_985->iananame;
  D.45259_1011 = strcasecmp (rm_encoding_137, D.45249_1010);
  vmatch_1012 = D.45259_1011 == 0;
  # DEBUG vmatch => vmatch_1012

<bb 391>:
  # vmatch_138 = PHI <vmatch_1009(389), vmatch_1012(390)>
  # DEBUG vmatch => vmatch_138
  if (vmatch_138 != 0)
    goto <bb 392>;
  else
    goto <bb 394>;

<bb 392>:
  D.45262_1013 = map_1620->rm_rate;
  D.45263_1014 = imp_985->samples_per_second;
  if (D.45262_1013 == D.45263_1014)
    goto <bb 393>;
  else
    goto <bb 394>;

<bb 393>:
  matches[m_idx_910].imp = imp_985;
  matches[m_idx_910].map = map_1620;
  D.45249_1015 = imp_985->iananame;
  D.45250_1016 = imp_985->ianacode;
  D.45251_1017 = (int) D.45250_1016;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3756, session_161(D), 7, "Video Codec Compare [%s:%d] +++ is saved as a match\n", D.45249_1015, D.45251_1017);
  m_idx_1018 = m_idx_910 + 1;
  # DEBUG m_idx => m_idx_1018

<bb 394>:
  # m_idx_109 = PHI <m_idx_910(383), m_idx_910(385), m_idx_910(392), m_idx_910(391), m_idx_1018(393)>
  # DEBUG m_idx => m_idx_109
  i_1020 = i_864 + 1;
  # DEBUG i => i_1020
  # DEBUG i => i_1020
  # DEBUG m_idx => m_idx_109
  if (total_codecs_85 > i_1020)
    goto <bb 383>;
  else
    goto <bb 395>;

<bb 395>:
  # m_idx_953 = PHI <m_idx_109(394), m_idx_819(382)>
  map_1021 = map_1620->rm_next;
  # DEBUG map => map_1021
  # DEBUG map => map_1021
  # DEBUG m_idx => m_idx_953
  # DEBUG got_video_crypto => got_video_crypto_960
  if (map_1021 != 0B)
    goto <bb 340>;
  else
    goto <bb 396>;

<bb 396>:
  # got_video_crypto_959 = PHI <got_video_crypto_960(395), got_video_crypto_1674(339)>
  # m_idx_906 = PHI <m_idx_953(395), 0(339)>
  D.45001_1022 = smh_186->crypto_mode;
  D.45002_1023 = D.45001_1022 == 1;
  D.45266_1024 = got_video_crypto_959 <= 0;
  D.45267_1025 = D.45002_1023 & D.45266_1024;
  if (D.45267_1025 != 0)
    goto <bb 397>;
  else
    goto <bb 398>;

<bb 397>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3766, session_161(D), 4, "Crypto not negotiated but required.\n");
  # DEBUG vmatch => 0
  # DEBUG m_idx => 0
  # DEBUG m_idx => 0
  goto <bb 415>;

<bb 398>:
  # m_idx_112 = PHI <m_idx_906(396)>
  # DEBUG m_idx => m_idx_112
  if (m_idx_112 != 0)
    goto <bb 399>;
  else
    goto <bb 415>;

<bb 399>:
  # DEBUG j => 0
  if (greedy_47 != 0)
    goto <bb 400>;
  else
    goto <bb 401>;

<bb 400>:
  greedy_sort (smh_186, &matches, m_idx_112, codec_array_84, total_codecs_85);

<bb 401>:
  # DEBUG vmatch => 1
  MEM[(struct switch_rtp_engine_t *)smh_186 + 11496B].codec_negotiated = 1;
  # DEBUG j => 0
  # DEBUG j => 0

<bb 402>:
  # j_1844 = PHI <j_1067(405), 0(401)>
  D.45274_1031 = matches[j_1844].map;
  D.45275_1032 = D.45274_1031->rm_encoding;
  D.45276_1034 = D.45274_1031->rm_fmtp;
  D.45277_1036 = D.45274_1031->rm_pt;
  D.45278_1037 = (uint32_t) D.45277_1036;
  D.45279_1038 = matches[j_1844].imp;
  D.45280_1039 = D.45279_1038->samples_per_second;
  D.45281_1041 = D.45279_1038->microseconds_per_packet;
  D.45282_1042 = D.45281_1041 / 1000;
  D.45283_1043 = (uint32_t) D.45282_1042;
  pmap_1044 = switch_core_media_add_payload_map (session_161(D), 1, D.45275_1032, D.45276_1034, sdp_type_546(D), D.45278_1037, D.45280_1039, D.45283_1043, 1);
  # DEBUG pmap => pmap_1044
  if (j_1844 == 0)
    goto <bb 403>;
  else
    goto <bb 405>;

<bb 403>:
  MEM[(struct switch_rtp_engine_t *)smh_186 + 11496B].cur_payload_map = pmap_1044;
  pmap_1044->current = 1;
  D.45287_1046 = MEM[(struct switch_rtp_engine_t *)smh_186 + 11496B].rtp_session;
  if (D.45287_1046 != 0B)
    goto <bb 404>;
  else
    goto <bb 405>;

<bb 404>:
  D.45290_1048 = pmap_1044->pt;
  switch_rtp_set_default_payload (D.45287_1046, D.45290_1048);

<bb 405>:
  mimp_1049 = matches[j_1844].imp;
  # DEBUG mimp => mimp_1049
  map_1050 = matches[j_1844].map;
  # DEBUG map => map_1050
  D.45255_1051 = map_1050->rm_encoding;
  D.45291_1052 = switch_core_perform_session_strdup (session_161(D), D.45255_1051, "src/switch_core_media.c", &__func__, 3804);
  pmap_1044->rm_encoding = D.45291_1052;
  D.45247_1053 = map_1050->rm_pt;
  D.45292_1054 = (unsigned char) D.45247_1053;
  pmap_1044->recv_pt = D.45292_1054;
  D.45262_1055 = map_1050->rm_rate;
  pmap_1044->rm_rate = D.45262_1055;
  D.45293_1056 = mimp_1049->microseconds_per_packet;
  D.45294_1057 = D.45293_1056 / 1000;
  D.45295_1058 = (uint32_t) D.45294_1057;
  pmap_1044->codec_ms = D.45295_1058;
  D.45085_1059 = connection_125->c_address;
  D.45296_1060 = switch_core_perform_session_strdup (session_161(D), D.45085_1059, "src/switch_core_media.c", &__func__, 3810);
  pmap_1044->remote_sdp_ip = D.45296_1060;
  D.44697_1061 = m_1764->m_port;
  D.45087_1062 = (short unsigned int) D.44697_1061;
  pmap_1044->remote_sdp_port = D.45087_1062;
  D.45297_1063 = map_1050->rm_fmtp;
  D.45298_1064 = switch_core_perform_session_strdup (session_161(D), D.45297_1063, "src/switch_core_media.c", &__func__, 3813);
  pmap_1044->rm_fmtp = D.45298_1064;
  D.45247_1065 = map_1050->rm_pt;
  D.45292_1066 = (unsigned char) D.45247_1065;
  pmap_1044->agreed_pt = D.45292_1066;
  j_1067 = j_1844 + 1;
  # DEBUG j => j_1067
  # DEBUG j => j_1067
  if (m_idx_112 > j_1067)
    goto <bb 402>;
  else
    goto <bb 406>;

<bb 406>:
  D.45286_1068 = MEM[(struct switch_rtp_engine_t *)smh_186 + 11496B].cur_payload_map;
  D.45299_1069 = D.45286_1068->remote_sdp_port;
  D.45300_1070 = (int) D.45299_1069;
  switch_snprintf (&tmp, 50, "%d", D.45300_1070);
  D.44530_1071 = session_161(D)->channel;
  D.45286_1072 = MEM[(struct switch_rtp_engine_t *)smh_186 + 11496B].cur_payload_map;
  D.45301_1073 = D.45286_1072->remote_sdp_ip;
  switch_channel_set_variable_var_check (D.44530_1071, "remote_video_ip", D.45301_1073, 1);
  D.44530_1074 = session_161(D)->channel;
  switch_channel_set_variable_var_check (D.44530_1074, "remote_video_port", &tmp, 1);
  D.44530_1075 = session_161(D)->channel;
  D.45286_1076 = MEM[(struct switch_rtp_engine_t *)smh_186 + 11496B].cur_payload_map;
  D.45302_1077 = D.45286_1076->rm_fmtp;
  switch_channel_set_variable_var_check (D.44530_1075, "rtp_video_fmtp", D.45302_1077, 1);
  D.45286_1078 = MEM[(struct switch_rtp_engine_t *)smh_186 + 11496B].cur_payload_map;
  D.45303_1079 = D.45286_1078->agreed_pt;
  D.45304_1080 = (int) D.45303_1079;
  switch_snprintf (&tmp, 50, "%d", D.45304_1080);
  D.44530_1081 = session_161(D)->channel;
  switch_channel_set_variable_var_check (D.44530_1081, "rtp_video_pt", &tmp, 1);
  switch_core_media_check_video_codecs (session_161(D));
  D.45286_1082 = MEM[(struct switch_rtp_engine_t *)smh_186 + 11496B].cur_payload_map;
  D.45305_1083 = D.45286_1082->recv_pt;
  D.45306_1084 = (int) D.45305_1083;
  switch_snprintf (&tmp, 50, "%d", D.45306_1084);
  D.44530_1085 = session_161(D)->channel;
  switch_channel_set_variable_var_check (D.44530_1085, "rtp_video_recv_pt", &tmp, 1);
  if (match_1800 == 0)
    goto <bb 408>;
  else
    goto <bb 407>;

<bb 407>:

<bb 408>:
  # match_14 = PHI <match_1800(407), 1(406)>
  # DEBUG match => match_14
  # DEBUG D#74 => &MEM[(struct switch_rtp_engine_t *)smh_186 + 11496B].read_codec
  # DEBUG codec => D#74
  D.47965_1505 = MEM[(struct switch_codec_t *)smh_186 + 13020B].flags;
  D.47964_1506 = D.47965_1505 & 256;
  if (D.47964_1506 != 0)
    goto <bb 409>;
  else
    goto <bb 413>;

<bb 409>:
  D.47963_1507 = MEM[(struct switch_codec_t *)smh_186 + 13020B].mutex;
  if (D.47963_1507 != 0B)
    goto <bb 410>;
  else
    goto <bb 413>;

<bb 410>:
  D.47962_1508 = MEM[(struct switch_codec_t *)smh_186 + 13020B].codec_interface;
  if (D.47962_1508 != 0B)
    goto <bb 411>;
  else
    goto <bb 413>;

<bb 411>:
  D.47961_1509 = MEM[(struct switch_codec_t *)smh_186 + 13020B].implementation;
  if (D.47961_1509 != 0B)
    goto <bb 412>;
  else
    goto <bb 413>;

<bb 412>:
  MEM[(struct switch_rtp_engine_t *)smh_186 + 11496B].reset_codec = 1;

<bb 413>:
  D.45316_1092 = switch_core_media_set_video_codec (session_161(D), 0);
  if (D.45316_1092 == 0)
    goto <bb 414>;
  else
    goto <bb 415>;

<bb 414>:
  check_ice (smh_186, 1, sdp_198, m_1764);

<bb 415>:
  # match_15 = PHI <match_13(438), match_1800(333), match_1800(334), match_1800(397), match_14(413), match_14(414), match_13(320), match_13(321), match_13(318), match_13(319), match_13(332), match_1800(164), match_1800(398)>
  # best_te_22 = PHI <0(438), best_te_680(333), best_te_680(334), best_te_680(397), best_te_680(413), best_te_680(414), best_te_1860(320), best_te_1860(321), best_te_1860(318), best_te_1860(319), 0(332), best_te_680(164), best_te_680(398)>
  # cng_pt_26 = PHI <cng_pt_1626(438), cng_pt_1717(333), cng_pt_1717(334), cng_pt_1717(397), cng_pt_1717(413), cng_pt_1717(414), cng_pt_1626(320), cng_pt_1626(321), cng_pt_1626(318), cng_pt_1626(319), cng_pt_1626(332), cng_pt_1717(164), cng_pt_1717(398)>
  # got_crypto_55 = PHI <got_crypto_969(438), got_crypto_1866(333), got_crypto_1866(334), got_crypto_1866(397), got_crypto_1866(413), got_crypto_1866(414), got_crypto_969(320), got_crypto_969(321), got_crypto_969(318), got_crypto_969(319), got_crypto_969(332), got_crypto_1866(164), got_crypto_1866(398)>
  # got_video_crypto_63 = PHI <got_video_crypto_1674(438), got_video_crypto_1674(333), got_video_crypto_1674(334), got_video_crypto_959(397), got_video_crypto_959(413), got_video_crypto_959(414), got_video_crypto_1674(320), got_video_crypto_1674(321), got_video_crypto_1674(318), got_video_crypto_1674(319), got_video_crypto_1674(332), got_video_crypto_1674(164), got_video_crypto_959(398)>
  # got_audio_66 = PHI <got_audio_65(438), got_audio_1693(333), got_audio_1693(334), got_audio_1693(397), got_audio_1693(413), got_audio_1693(414), got_audio_65(320), got_audio_65(321), got_audio_65(318), got_audio_65(319), got_audio_65(332), got_audio_1693(164), got_audio_1693(398)>
  # codec_ms_94 = PHI <codec_ms_93(438), codec_ms_477(333), codec_ms_477(334), codec_ms_477(397), codec_ms_477(413), codec_ms_477(414), codec_ms_93(320), codec_ms_93(321), codec_ms_93(318), codec_ms_93(319), codec_ms_93(332), codec_ms_477(164), codec_ms_477(398)>
  # m_idx_113 = PHI <m_idx_1745(438), m_idx_1869(333), m_idx_1869(334), 0(397), m_idx_112(413), m_idx_112(414), m_idx_1745(320), m_idx_1745(321), m_idx_1745(318), m_idx_1745(319), m_idx_1745(332), m_idx_1869(164), 0(398)>
  # nm_idx_121 = PHI <nm_idx_843(438), nm_idx_1749(333), nm_idx_1749(334), 0(397), 0(413), 0(414), nm_idx_843(320), nm_idx_843(321), nm_idx_843(318), nm_idx_843(319), nm_idx_843(332), nm_idx_1749(164), 0(398)>
  # DEBUG nm_idx => nm_idx_121
  # DEBUG m_idx => m_idx_113
  # DEBUG codec_ms => codec_ms_94
  # DEBUG got_audio => got_audio_66
  # DEBUG got_video_crypto => got_video_crypto_63
  # DEBUG got_crypto => got_crypto_55
  # DEBUG cng_pt => cng_pt_26
  # DEBUG best_te => best_te_22
  # DEBUG match => match_15
  m_1093 = m_1764->m_next;
  # DEBUG m => m_1093
  # DEBUG nm_idx => nm_idx_121
  # DEBUG m_idx => m_idx_113
  # DEBUG codec_ms => codec_ms_94
  # DEBUG got_webrtc => got_webrtc_78
  # DEBUG got_udptl => got_udptl_1743
  # DEBUG got_savp => got_savp_1739
  # DEBUG got_video_savp => NULL
  # DEBUG got_video_avp => NULL
  # DEBUG got_avp => got_avp_1859
  # DEBUG got_audio => got_audio_66
  # DEBUG got_video_crypto => got_video_crypto_63
  # DEBUG got_crypto => got_crypto_55
  # DEBUG m => m_1093
  # DEBUG cng_pt => cng_pt_26
  # DEBUG best_te => best_te_22
  # DEBUG match => match_15
  if (m_1093 != 0B)
    goto <bb 118>;
  else
    goto <bb 416> (done);

  # match_17 = PHI <1(134), 0(136), 0(152), 1(150), 0(198), 0(203), 0(207), 0(338), 0(377), match_15(415), 1(149), 1(162), 1(425), 0(117)>
  # cng_pt_1047 = PHI <cng_pt_1628(134), cng_pt_1628(136), cng_pt_1628(152), cng_pt_1628(150), cng_pt_1126(198), cng_pt_18(203), cng_pt_1127(207), cng_pt_1630(338), cng_pt_1632(377), cng_pt_26(415), cng_pt_1628(149), cng_pt_1628(162), cng_pt_1628(425), 0(117)>
done:
  # DEBUG match => match_17
  sdp_parser_free (parser_196);
  D.44471_1094 = smh_186->mparams;
  D.44471_1094->cng_pt = cng_pt_1047;

<bb 417>:
  # match_142 = PHI <0(4), 0(5), 0(7), match_17(416)>
  return match_142;

<bb 418>:
  goto <bb 20>;

<bb 419>:
  goto <bb 53>;

<bb 420>:
  D.44594_307 = strcasecmp (D.44590_304, "sendonly");
  if (D.44594_307 == 0)
    goto <bb 62>;
  else
    goto <bb 63>;

<bb 421>:
  goto <bb 90>;

<bb 422>:
  # DEBUG reneg => 1
  goto <bb 95>;

<bb 423>:
  # pass_1698 = PHI <2(142)>
  # DEBUG pass => 2
  # DEBUG pass => pass_1698
  goto <bb 144>;

<bb 424>:
  # pass_1888 = PHI <0(142)>
  # DEBUG pass => pass_1888
  goto <bb 145>;

<bb 425>:
  # DEBUG pass => 0
  goto <bb 416> (done);

<bb 426>:
  goto <bb 171>;

<bb 427>:
  D.44471_533 = smh_186->mparams;
  D.44821_534 = D.44471_533->ndlb;
  D.44822_535 = D.44821_534 & 4;
  if (D.44822_535 == 0)
    goto <bb 187>;
  else
    goto <bb 199>;

<bb 428>:
  D.44666_539 = m_1764->m_proto;
  D.44829_540 = D.44666_539 != 257;
  D.44830_541 = got_webrtc_78 == 0;
  D.44831_542 = D.44829_540 & D.44830_541;
  if (D.44831_542 != 0)
    goto <bb 198>;
  else
    goto <bb 199>;

<bb 429>:
  # codec_ms_1883 = PHI <maxptime_1040(222), ptime_1033(223)>
  # DEBUG codec_ms => codec_ms_1883
  goto <bb 226>;

<bb 430>:
  D.44889_608 = map_1728->rm_encoding;
  D.44854_610 = map_1728->rm_rate;
  D.44905_611 = switch_core_codec_parse_fmtp (D.44889_608, D.44893_598, D.44854_610, &codec_fmtp);
  if (D.44905_611 == 0)
    goto <bb 236>;
  else
    goto <bb 242>;

<bb 431>:
  D.44471_644 = smh_186->mparams;
  D.44821_645 = D.44471_644->ndlb;
  D.44936_646 = (int) D.44821_645;
  D.44937_647 = D.44936_646 & 1;
  if (D.44937_647 != 0)
    goto <bb 246>;
  else
    goto <bb 248>;

<bb 432>:
  # match_1752 = PHI <0(256)>
  # DEBUG match => 0
  # DEBUG match => match_1752
  goto <bb 262>;

<bb 433>:
  # match_1718 = PHI <1(269)>
  # m_idx_1751 = PHI <m_idx_703(269)>
  # nm_idx_456 = PHI <nm_idx_1139(269)>
  # DEBUG m_idx => m_idx_1751
  # DEBUG match => match_1718
  goto <bb 273>;

<bb 434>:
  # match_455 = PHI <match_10(283)>
  # m_idx_1748 = PHI <0(283)>
  # DEBUG m_idx => m_idx_1748
  # DEBUG match => match_455
  goto <bb 305>;

<bb 435>:
  D.45082_793 = switch_stristr ("stereo=1", D.45079_790);
  if (D.45082_793 != 0B)
    goto <bb 301>;
  else
    goto <bb 302>;

<bb 436>:
  # match_464 = PHI <1(304), 1(287)>
  # DEBUG match => match_464
  goto <bb 306>;

<bb 437>:
  # best_te_518 = PHI <best_te_1624(313)>
  # DEBUG best_te => best_te_518
  goto <bb 317>;

<bb 438>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3639, session_161(D), 7, "No 2833 in SDP.  Disable 2833 dtmf and switch to INFO\n");
  D.44530_860 = session_161(D)->channel;
  switch_channel_set_variable_var_check (D.44530_860, "dtmf_type", "info", 1);
  D.44471_861 = smh_186->mparams;
  D.44471_861->dtmf_type = 1;
  D.44471_861->te = 0;
  D.44471_861->recv_te = 0;
  # DEBUG D#12 => D.44471_861->recv_te
  # DEBUG te => D#12
  goto <bb 415>;

<bb 439>:
  goto <bb 346>;

<bb 440>:
  D.45160_902 = switch_stristr ("fir", D.44619_899);
  if (D.45160_902 != 0B)
    goto <bb 353>;
  else
    goto <bb 354>;

<bb 441>:
  D.44471_964 = smh_186->mparams;
  D.44821_965 = D.44471_964->ndlb;
  D.44822_966 = D.44821_965 & 4;
  if (D.44822_966 == 0)
    goto <bb 366>;
  else
    goto <bb 378>;

<bb 442>:
  D.44666_970 = m_1764->m_proto;
  D.44829_971 = D.44666_970 != 257;
  D.44830_972 = got_webrtc_78 == 0;
  D.44831_973 = D.44829_971 & D.44830_972;
  if (D.44831_973 != 0)
    goto <bb 377>;
  else
    goto <bb 378>;

<bb 443>:
  D.44471_998 = smh_186->mparams;
  D.44821_999 = D.44471_998->ndlb;
  D.44936_1000 = (int) D.44821_999;
  D.44937_1001 = D.44936_1000 & 1;
  if (D.44937_1001 != 0)
    goto <bb 388>;
  else
    goto <bb 390>;

<bb 444>:
  # j_1713 = PHI <0(275)>
  # DEBUG j => j_1713
  goto <bb 276>;

}



;; Function switch_core_media_proxy_remote_addr (switch_core_media_proxy_remote_addr)

switch_core_media_proxy_remote_addr (struct switch_core_session_t * session, const char * sdp_str)
{
  int D.47993;
  int D.47990;
  int D.47987;
  int D.47984;
  int D.47981;
  int D.47978;
  const char D.47975;
  const char D.47971;
  register int __result;
  register int __result;
  switch_port_t remote_rtcp_port;
  const char * rport;
  switch_port_t remote_port;
  char * remote_host;
  switch_port_t remote_rtcp_port;
  const char * rport;
  char * tmp;
  static const char __func__[36] = "switch_core_media_proxy_remote_addr";
  static const char __PRETTY_FUNCTION__[36] = "switch_core_media_proxy_remote_addr";
  struct switch_media_handle_t * smh;
  switch_status_t status;
  const char * val;
  int x;
  char * pe;
  char * vid_port_ptr;
  char * port_ptr;
  char * ip_ptr;
  char * p;
  char rvp[512];
  char rp[512];
  char rip[512];
  const char * err;
  int32_t D.44351;
  uint32_t D.44348;
  int D.44347;
  int32_t D.44343;
  switch_status_t D.44337;
  int D.44260;
  switch_port_t D.44258;
  char * D.44256;
  int D.39206;
  _Bool D.44254;
  _Bool D.44253;
  _Bool D.44252;
  uint8_t D.44248;
  struct switch_rtp_t * D.44247;
  int32_t D.44244;
  uint32_t D.44241;
  int D.44240;
  uint32_t D.44236;
  int32_t D.44233;
  const char * err.83;
  switch_status_t D.44226;
  uint8_t D.44218;
  struct switch_rtp_t * D.44217;
  int D.44215;
  int D.39191;
  switch_port_t D.44208;
  char * D.44205;
  struct switch_channel_t * D.44204;
  short unsigned int D.44203;
  char * D.44201;
  struct payload_map_t * D.44200;
  char D.44197;
  short unsigned int D.44196;
  char * D.44194;
  struct payload_map_t * D.44193;
  char D.44192;
  char D.44190;
  char D.44184;
  char D.44180;
  char D.44178;
  _Bool D.44175;
  _Bool D.44174;
  _Bool D.44173;
  char D.44172;
  _Bool D.44168;
  _Bool D.44167;
  _Bool D.44166;
  unsigned int x.82;
  char D.44163;
  size_t D.44162;
  _Bool D.44160;
  _Bool D.44159;
  _Bool D.44158;
  struct switch_core_media_params_t * D.44141;

<bb 2>:
  rip = "";
  rp = "";
  rvp = "";
  # DEBUG ip_ptr => 0B
  # DEBUG port_ptr => 0B
  # DEBUG vid_port_ptr => 0B
  # DEBUG status => 1
  if (session_25(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 4152, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_26 = session_25(D)->media_handle;
  # DEBUG smh => smh_26
  if (smh_26 == 0B)
    goto <bb 83>;
  else
    goto <bb 5>;

<bb 5>:
  # DEBUG D#17 => &smh_26->engines
  # DEBUG a_engine => D#17
  # DEBUG D#16 => &smh_26->engines[1]
  # DEBUG v_engine => D#16
  # DEBUG s => sdp_str_30(D)
  if (sdp_str_30(D) == 0B)
    goto <bb 7>;
  else
    goto <bb 6>;

<bb 6>:
  D.47971_363 = *sdp_str_30(D);
  if (D.47971_363 == 0)
    goto <bb 7>;
  else
    goto <bb 8>;

<bb 7>:
Invalid sum of incoming frequencies 5165, should be 1347
  D.44141_32 = smh_26->mparams;
  sdp_str_33 = D.44141_32->remote_sdp_str;
  # DEBUG sdp_str => sdp_str_33

<bb 8>:
Invalid sum of incoming frequencies 5165, should be 8982
  # sdp_str_1 = PHI <sdp_str_30(D)(6), sdp_str_33(7)>
  # DEBUG sdp_str => sdp_str_1
  # DEBUG s => sdp_str_1
  if (sdp_str_1 == 0B)
    goto <bb 83>;
  else
    goto <bb 9>;

<bb 9>:
  D.47975_365 = *sdp_str_1;
  if (D.47975_365 == 0)
    goto <bb 83>;
  else
    goto <bb 84>;

<bb 10>:
  p_36 = switch_stristr ("c=IN IP6 ", sdp_str_1);
  # DEBUG p => p_36
  if (p_36 != 0B)
    goto <bb 11>;
  else
    goto <bb 12>;

<bb 11>:
Invalid sum of incoming frequencies 3710, should be 2579
  # p_2 = PHI <p_35(84), p_36(10)>
  # DEBUG p => p_2
  ip_ptr_37 = p_2 + 9;
  # DEBUG ip_ptr => ip_ptr_37

<bb 12>:
  # ip_ptr_6 = PHI <0B(10), ip_ptr_37(11)>
  # DEBUG ip_ptr => ip_ptr_6
  p_38 = switch_stristr ("m=audio ", sdp_str_1);
  # DEBUG p => p_38
  if (p_38 != 0B)
    goto <bb 13>;
  else
    goto <bb 14>;

<bb 13>:
  port_ptr_39 = p_38 + 8;
  # DEBUG port_ptr => port_ptr_39

<bb 14>:
  # port_ptr_7 = PHI <0B(12), port_ptr_39(13)>
  # DEBUG port_ptr => port_ptr_7
  p_40 = switch_stristr ("m=image ", sdp_str_1);
  # DEBUG p => p_40
  if (p_40 != 0B)
    goto <bb 15>;
  else
    goto <bb 18>;

<bb 15>:
  tmp_41 = p_40 + 8;
  # DEBUG tmp => tmp_41
  if (tmp_41 != 0B)
    goto <bb 16>;
  else
    goto <bb 18>;

<bb 16>:
  # DEBUG __nptr => tmp_41
  D.47978_367 = strtol (tmp_41, 0B, 10);
  if (D.47978_367 != 0)
    goto <bb 17>;
  else
    goto <bb 18>;

<bb 17>:
  # DEBUG port_ptr => tmp_41

<bb 18>:
  # port_ptr_8 = PHI <port_ptr_7(14), port_ptr_7(15), port_ptr_7(16), tmp_41(17)>
  # DEBUG port_ptr => port_ptr_8
  p_44 = switch_stristr ("m=video ", sdp_str_1);
  # DEBUG p => p_44
  if (p_44 != 0B)
    goto <bb 19>;
  else
    goto <bb 20>;

<bb 19>:
  vid_port_ptr_45 = p_44 + 8;
  # DEBUG vid_port_ptr => vid_port_ptr_45

<bb 20>:
  # vid_port_ptr_9 = PHI <0B(18), vid_port_ptr_45(19)>
  # DEBUG vid_port_ptr => vid_port_ptr_9
  D.44158_46 = ip_ptr_6 == 0B;
  D.44159_47 = port_ptr_8 == 0B;
  D.44160_48 = D.44158_46 | D.44159_47;
  if (D.44160_48 != 0)
    goto <bb 83>;
  else
    goto <bb 21>;

<bb 21>:
  # DEBUG p => ip_ptr_6
  D.44162_50 = strlen (ip_ptr_6);
  pe_51 = ip_ptr_6 + D.44162_50;
  # DEBUG pe => pe_51
  # DEBUG x => 0
  goto <bb 23>;

<bb 22>:
  rip[x_10] = D.44163_57;
  x_69 = x_10 + 1;
  # DEBUG x => x_69
  p_70 = p_3 + 1;
  # DEBUG p => p_70
  if (p_70 >= pe_51)
    goto <bb 83>;
  else
    goto <bb 23>;

<bb 23>:
  # p_3 = PHI <ip_ptr_6(21), p_70(22)>
  # x_10 = PHI <0(21), x_69(22)>
  # DEBUG x => x_10
  # DEBUG p => p_3
  x.82_53 = (unsigned int) x_10;
  D.44166_54 = x.82_53 <= 510;
  D.44167_55 = p_3 != 0B;
  D.44168_56 = D.44166_54 & D.44167_55;
  if (D.44168_56 != 0)
    goto <bb 24>;
  else
    goto <bb 30>;

<bb 24>:
  D.44163_57 = *p_3;
  if (D.44163_57 != 0)
    goto <bb 25>;
  else
    goto <bb 30>;

<bb 25>:
  D.44172_59 = D.44163_57 + 208;
  D.44173_60 = D.44172_59 <= 9;
  D.44174_61 = D.44163_57 == 46;
  D.44175_62 = D.44173_60 | D.44174_61;
  if (D.44175_62 != 0)
    goto <bb 22>;
  else
    goto <bb 26>;

<bb 26>:
  if (D.44163_57 == 58)
    goto <bb 22>;
  else
    goto <bb 27>;

<bb 27>:
  D.44178_65 = D.44163_57 + 159;
  if (D.44178_65 <= 5)
    goto <bb 22>;
  else
    goto <bb 28>;

<bb 28>:
  D.44180_67 = D.44163_57 + 191;
  if (D.44180_67 <= 5)
    goto <bb 22>;
  else
    goto <bb 30>;

<bb 29>:
  rp[x_11] = D.44163_77;
  x_81 = x_11 + 1;
  # DEBUG x => x_81
  p_82 = p_4 + 1;
  # DEBUG p => p_82
  if (p_82 >= pe_51)
    goto <bb 83>;
  else
    goto <bb 31>;

<bb 30>:
  # p_284 = PHI <port_ptr_8(28), port_ptr_8(23), port_ptr_8(24)>

<bb 31>:
  # p_4 = PHI <p_284(30), p_82(29)>
  # x_11 = PHI <0(30), x_81(29)>
  # DEBUG x => x_11
  # DEBUG p => p_4
  x.82_73 = (unsigned int) x_11;
  D.44166_74 = x.82_73 <= 510;
  D.44167_75 = p_4 != 0B;
  D.44168_76 = D.44166_74 & D.44167_75;
  if (D.44168_76 != 0)
    goto <bb 32>;
  else
    goto <bb 35>;

<bb 32>:
  D.44163_77 = *p_4;
  if (D.44163_77 != 0)
    goto <bb 33>;
  else
    goto <bb 35>;

<bb 33>:
  D.44184_79 = D.44163_77 + 208;
  if (D.44184_79 <= 9)
    goto <bb 29>;
  else
    goto <bb 35>;

<bb 34>:
  rvp[x_12] = D.44163_89;
  x_93 = x_12 + 1;
  # DEBUG x => x_93
  p_94 = p_5 + 1;
  # DEBUG p => p_94
  if (p_94 >= pe_51)
    goto <bb 83>;
  else
    goto <bb 36>;

<bb 35>:
  # p_295 = PHI <vid_port_ptr_9(33), vid_port_ptr_9(31), vid_port_ptr_9(32)>

<bb 36>:
  # p_5 = PHI <p_295(35), p_94(34)>
  # x_12 = PHI <0(35), x_93(34)>
  # DEBUG x => x_12
  # DEBUG p => p_5
  x.82_85 = (unsigned int) x_12;
  D.44166_86 = x.82_85 <= 510;
  D.44167_87 = p_5 != 0B;
  D.44168_88 = D.44166_86 & D.44167_87;
  if (D.44168_88 != 0)
    goto <bb 37>;
  else
    goto <bb 39>;

<bb 37>:
  D.44163_89 = *p_5;
  if (D.44163_89 != 0)
    goto <bb 38>;
  else
    goto <bb 39>;

<bb 38>:
  D.44184_91 = D.44163_89 + 208;
  if (D.44184_91 <= 9)
    goto <bb 34>;
  else
    goto <bb 39>;

<bb 39>:
  D.44190_95 = rip[0];
  if (D.44190_95 == 0)
    goto <bb 41>;
  else
    goto <bb 40>;

<bb 40>:
  D.44192_96 = rp[0];
  if (D.44192_96 == 0)
    goto <bb 41>;
  else
    goto <bb 42>;

<bb 41>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4225, session_25(D), 3, "invalid SDP\n");
  goto <bb 83>;

<bb 42>:
  D.44193_97 = MEM[(struct switch_rtp_engine_t *)smh_26 + 80B].cur_payload_map;
  D.44194_98 = switch_core_perform_session_strdup (session_25(D), &rip, "src/switch_core_media.c", &__func__, 4229);
  D.44193_97->remote_sdp_ip = D.44194_98;
  D.44193_99 = MEM[(struct switch_rtp_engine_t *)smh_26 + 80B].cur_payload_map;
  # DEBUG __nptr => &rp
  D.47981_368 = strtol (&rp, 0B, 10);
  D.44196_101 = (short unsigned int) D.47981_368;
  D.44193_99->remote_sdp_port = D.44196_101;
  D.44197_102 = rvp[0];
  if (D.44197_102 != 0)
    goto <bb 43>;
  else
    goto <bb 44>;

<bb 43>:
  D.44200_103 = MEM[(struct switch_rtp_engine_t *)smh_26 + 11496B].cur_payload_map;
  D.44201_104 = switch_core_perform_session_strdup (session_25(D), &rip, "src/switch_core_media.c", &__func__, 4233);
  D.44200_103->remote_sdp_ip = D.44201_104;
  D.44200_105 = MEM[(struct switch_rtp_engine_t *)smh_26 + 11496B].cur_payload_map;
  # DEBUG __nptr => &rvp
  D.47984_369 = strtol (&rvp, 0B, 10);
  D.44203_107 = (short unsigned int) D.47984_369;
  D.44200_105->remote_sdp_port = D.44203_107;
  D.44204_108 = session_25(D)->channel;
  switch_channel_set_flag_value (D.44204_108, 98, 1);
  D.44204_109 = session_25(D)->channel;
  switch_channel_set_flag_value (D.44204_109, 23, 1);

<bb 44>:
  D.44200_110 = MEM[(struct switch_rtp_engine_t *)smh_26 + 11496B].cur_payload_map;
  D.44205_111 = D.44200_110->remote_sdp_ip;
  if (D.44205_111 != 0B)
    goto <bb 45>;
  else
    goto <bb 63>;

<bb 45>:
  D.44208_113 = D.44200_110->remote_sdp_port;
  if (D.44208_113 != 0)
    goto <bb 46>;
  else
    goto <bb 63>;

<bb 46>:
  D.39191_116 = __builtin_strcmp (D.44205_111, &rip);
  if (D.39191_116 == 0)
    goto <bb 47>;
  else
    goto <bb 49>;

<bb 47>:
  # DEBUG __nptr => &rvp
  D.47987_370 = strtol (&rvp, 0B, 10);
  D.44200_118 = MEM[(struct switch_rtp_engine_t *)smh_26 + 11496B].cur_payload_map;
  D.44208_119 = D.44200_118->remote_sdp_port;
  D.44215_120 = (int) D.44208_119;
  if (D.44215_120 == D.47987_370)
    goto <bb 48>;
  else
    goto <bb 49>;

<bb 48>:
  D.44205_122 = D.44200_118->remote_sdp_ip;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4241, session_25(D), 7, "Remote video address:port [%s:%d] has not changed.\n", D.44205_122, D.44215_120);
  goto <bb 63>;

<bb 49>:
  D.44204_126 = session_25(D)->channel;
  switch_channel_set_flag_value (D.44204_126, 98, 1);
  D.44204_127 = session_25(D)->channel;
  switch_channel_set_flag_value (D.44204_127, 23, 1);
  D.44217_128 = MEM[(struct switch_rtp_engine_t *)smh_26 + 11496B].rtp_session;
  D.44218_129 = switch_rtp_ready (D.44217_128);
  if (D.44218_129 != 0)
    goto <bb 50>;
  else
    goto <bb 63>;

<bb 50>:
  # DEBUG rport => 0B
  remote_rtcp_port_131 = MEM[(struct switch_rtp_engine_t *)smh_26 + 11496B].remote_rtcp_port;
  # DEBUG remote_rtcp_port => remote_rtcp_port_131
  if (remote_rtcp_port_131 == 0)
    goto <bb 51>;
  else
    goto <bb 53>;

<bb 51>:
  D.44204_132 = session_25(D)->channel;
  rport_133 = switch_channel_get_variable_dup (D.44204_132, "rtp_remote_video_rtcp_port", 1, -1);
  # DEBUG rport => rport_133
  if (rport_133 != 0B)
    goto <bb 52>;
  else
    goto <bb 53>;

<bb 52>:
  # DEBUG __nptr => rport_133
  D.47990_371 = strtol (rport_133, 0B, 10);
  remote_rtcp_port_135 = (switch_port_t) D.47990_371;
  # DEBUG remote_rtcp_port => remote_rtcp_port_135

<bb 53>:
  # remote_rtcp_port_14 = PHI <remote_rtcp_port_131(50), 0(51), remote_rtcp_port_135(52)>
  # DEBUG remote_rtcp_port => remote_rtcp_port_14
  D.44217_136 = MEM[(struct switch_rtp_engine_t *)smh_26 + 11496B].rtp_session;
  D.44200_137 = MEM[(struct switch_rtp_engine_t *)smh_26 + 11496B].cur_payload_map;
  D.44205_138 = D.44200_137->remote_sdp_ip;
  D.44208_140 = D.44200_137->remote_sdp_port;
  D.44226_141 = switch_rtp_set_remote_address (D.44217_136, D.44205_138, D.44208_140, remote_rtcp_port_14, 1, &err);
  if (D.44226_141 != 0)
    goto <bb 54>;
  else
    goto <bb 55>;

<bb 54>:
  err.83_142 = err;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4259, session_25(D), 3, "VIDEO RTP REPORTS ERROR: [%s]\n", err.83_142);
  goto <bb 63>;

<bb 55>:
  D.44200_143 = MEM[(struct switch_rtp_engine_t *)smh_26 + 11496B].cur_payload_map;
  D.44205_144 = D.44200_143->remote_sdp_ip;
  D.44208_146 = D.44200_143->remote_sdp_port;
  D.44215_147 = (int) D.44208_146;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4261, session_25(D), 7, "VIDEO RTP CHANGING DEST TO: [%s:%d]\n", D.44205_144, D.44215_147);
  D.44233_148 = switch_media_handle_test_media_flag (smh_26, 10);
  if (D.44233_148 == 0)
    goto <bb 56>;
  else
    goto <bb 61>;

<bb 56>:
  D.44204_149 = session_25(D)->channel;
  D.44236_150 = switch_channel_test_flag (D.44204_149, 15);
  if (D.44236_150 == 0)
    goto <bb 57>;
  else
    goto <bb 61>;

<bb 57>:
  D.44204_151 = session_25(D)->channel;
  val_152 = switch_channel_get_variable_dup (D.44204_151, "disable_rtp_auto_adjust", 1, -1);
  # DEBUG val => val_152
  if (val_152 == 0B)
    goto <bb 59>;
  else
    goto <bb 58>;

<bb 58>:
  D.44240_153 = switch_true (val_152);
  if (D.44240_153 == 0)
    goto <bb 59>;
  else
    goto <bb 61>;

<bb 59>:
  D.44204_154 = session_25(D)->channel;
  D.44241_155 = switch_channel_test_flag (D.44204_154, 106);
  if (D.44241_155 == 0)
    goto <bb 60>;
  else
    goto <bb 61>;

<bb 60>:
  D.44217_156 = MEM[(struct switch_rtp_engine_t *)smh_26 + 11496B].rtp_session;
  switch_rtp_set_flag (D.44217_156, 7);
  start_video_thread (session_25(D));

<bb 61>:
  D.44244_157 = switch_media_handle_test_media_flag (smh_26, 2);
  if (D.44244_157 != 0)
    goto <bb 62>;
  else
    goto <bb 63>;

<bb 62>:
  MEM[(struct switch_rtp_engine_t *)smh_26 + 11496B].check_frames = 0;

<bb 63>:
  D.44247_158 = MEM[(struct switch_rtp_engine_t *)smh_26 + 80B].rtp_session;
  D.44248_159 = switch_rtp_ready (D.44247_158);
  if (D.44248_159 != 0)
    goto <bb 64>;
  else
    goto <bb 83>;

<bb 64>:
  D.44247_160 = MEM[(struct switch_rtp_engine_t *)smh_26 + 80B].rtp_session;
  remote_host_161 = switch_rtp_get_remote_host (D.44247_160);
  # DEBUG remote_host => remote_host_161
  D.44247_162 = MEM[(struct switch_rtp_engine_t *)smh_26 + 80B].rtp_session;
  remote_port_163 = switch_rtp_get_remote_port (D.44247_162);
  # DEBUG remote_port => remote_port_163
  # DEBUG rport => 0B
  # DEBUG remote_rtcp_port => 0
  D.44252_166 = remote_host_161 != 0B;
  D.44253_167 = remote_port_163 != 0;
  D.44254_168 = D.44252_166 & D.44253_167;
  if (D.44254_168 != 0)
    goto <bb 65>;
  else
    goto <bb 68>;

<bb 65>:
  D.44193_169 = MEM[(struct switch_rtp_engine_t *)smh_26 + 80B].cur_payload_map;
  D.44256_170 = D.44193_169->remote_sdp_ip;
  D.39206_171 = __builtin_strcmp (remote_host_161, D.44256_170);
  if (D.39206_171 == 0)
    goto <bb 66>;
  else
    goto <bb 68>;

<bb 66>:
  D.44258_173 = D.44193_169->remote_sdp_port;
  if (D.44258_173 == remote_port_163)
    goto <bb 67>;
  else
    goto <bb 68>;

<bb 67>:
  D.44260_178 = (int) D.44258_173;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4286, session_25(D), 7, "Remote address:port [%s:%d] has not changed.\n", D.44256_170, D.44260_178);
  # DEBUG status => 11
  goto <bb 83>;

<bb 68>:
  if (remote_host_161 != 0B)
    goto <bb 69>;
  else
    goto <bb 72>;

<bb 69>:
  # DEBUG __s2_len => 7
  __result_220 = __builtin_strcmp (remote_host_161, "0.0.0.0");
  if (__result_220 == 0)
    goto <bb 71>;
  else
    goto <bb 70>;

<bb 70>:
  # DEBUG __s2_len => 7
  D.44193_263 = MEM[(struct switch_rtp_engine_t *)smh_26 + 80B].cur_payload_map;
  D.44256_264 = D.44193_263->remote_sdp_ip;
  __result_265 = __builtin_strcmp (D.44256_264, "0.0.0.0");
  if (__result_265 == 0)
    goto <bb 71>;
  else
    goto <bb 72>;

<bb 71>:
  D.44193_267 = MEM[(struct switch_rtp_engine_t *)smh_26 + 80B].cur_payload_map;
  D.44256_268 = D.44193_267->remote_sdp_ip;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4292, session_25(D), 7, "Remote address changed from [%s] to [%s]. Ignoring...\n", D.44256_268, remote_host_161);
  # DEBUG status => 11
  goto <bb 83>;

<bb 72>:
  D.44204_270 = session_25(D)->channel;
  rport_271 = switch_channel_get_variable_dup (D.44204_270, "rtp_remote_audio_rtcp_port", 1, -1);
  # DEBUG rport => rport_271
  if (rport_271 != 0B)
    goto <bb 73>;
  else
    goto <bb 74>;

<bb 73>:
  # DEBUG __nptr => rport_271
  D.47993_372 = strtol (rport_271, 0B, 10);
  remote_rtcp_port_273 = (switch_port_t) D.47993_372;
  # DEBUG remote_rtcp_port => remote_rtcp_port_273

<bb 74>:
  # remote_rtcp_port_15 = PHI <0(72), remote_rtcp_port_273(73)>
  # DEBUG remote_rtcp_port => remote_rtcp_port_15
  D.44247_274 = MEM[(struct switch_rtp_engine_t *)smh_26 + 80B].rtp_session;
  D.44193_275 = MEM[(struct switch_rtp_engine_t *)smh_26 + 80B].cur_payload_map;
  D.44256_276 = D.44193_275->remote_sdp_ip;
  D.44258_278 = D.44193_275->remote_sdp_port;
  D.44337_279 = switch_rtp_set_remote_address (D.44247_274, D.44256_276, D.44258_278, remote_rtcp_port_15, 1, &err);
  if (D.44337_279 != 0)
    goto <bb 75>;
  else
    goto <bb 76>;

<bb 75>:
  err.83_280 = err;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4305, session_25(D), 3, "AUDIO RTP REPORTS ERROR: [%s]\n", err.83_280);
  # DEBUG status => 9
  goto <bb 83>;

<bb 76>:
  D.44193_282 = MEM[(struct switch_rtp_engine_t *)smh_26 + 80B].cur_payload_map;
  D.44256_283 = D.44193_282->remote_sdp_ip;
  D.44258_285 = D.44193_282->remote_sdp_port;
  D.44260_286 = (int) D.44258_285;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4308, session_25(D), 7, "AUDIO RTP CHANGING DEST TO: [%s:%d]\n", D.44256_283, D.44260_286);
  D.44343_287 = switch_media_handle_test_media_flag (smh_26, 10);
  if (D.44343_287 == 0)
    goto <bb 77>;
  else
    goto <bb 81>;

<bb 77>:
  D.44204_288 = session_25(D)->channel;
  val_289 = switch_channel_get_variable_dup (D.44204_288, "disable_rtp_auto_adjust", 1, -1);
  # DEBUG val => val_289
  if (val_289 == 0B)
    goto <bb 79>;
  else
    goto <bb 78>;

<bb 78>:
  D.44347_290 = switch_true (val_289);
  if (D.44347_290 == 0)
    goto <bb 79>;
  else
    goto <bb 81>;

<bb 79>:
  D.44204_291 = session_25(D)->channel;
  D.44348_292 = switch_channel_test_flag (D.44204_291, 106);
  if (D.44348_292 == 0)
    goto <bb 80>;
  else
    goto <bb 81>;

<bb 80>:
  D.44247_293 = MEM[(struct switch_rtp_engine_t *)smh_26 + 80B].rtp_session;
  switch_rtp_set_flag (D.44247_293, 7);

<bb 81>:
  D.44351_294 = switch_media_handle_test_media_flag (smh_26, 2);
  if (D.44351_294 != 0)
    goto <bb 82>;
  else
    goto <bb 83>;

<bb 82>:
  MEM[(struct switch_rtp_engine_t *)smh_26 + 80B].check_frames = 0;

<bb 83>:
Invalid sum of incoming frequencies 8784, should be 9996
  # status_18 = PHI <1(4), 1(20), 1(9), 0(81), 0(82), 9(75), 11(71), 11(67), 1(63), 1(41), 1(34), 1(29), 1(22), 1(8)>
  return status_18;

<bb 84>:
  p_35 = switch_stristr ("c=IN IP4 ", sdp_str_1);
  # DEBUG p => p_35
  if (p_35 != 0B)
    goto <bb 11>;
  else
    goto <bb 10>;

}



;; Function switch_core_media_check_nat (switch_core_media_check_nat)

switch_core_media_check_nat (struct switch_media_handle_t * smh, const char * network_ip)
{
  switch_bool_t D.44130;
  char * D.44129;
  switch_bool_t D.44127;
  char * D.44125;
  struct switch_core_media_params_t * D.44124;
  int D.44120;

<bb 2>:
  if (network_ip_2(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("network_ip", "src/switch_core_media.c", 4331, &__PRETTY_FUNCTION__);

<bb 4>:
  D.44124_4 = smh_3(D)->mparams;
  D.44125_5 = D.44124_4->extsipip;
  if (D.44125_5 != 0B)
    goto <bb 5>;
  else
    goto <bb 7>;

<bb 5>:
  D.44127_6 = switch_check_network_list_ip_token (network_ip_2(D), "loopback.auto", 0B);
  if (D.44127_6 == 0)
    goto <bb 6>;
  else
    goto <bb 7>;

<bb 6>:
  D.44124_7 = smh_3(D)->mparams;
  D.44129_8 = D.44124_7->local_network;
  D.44130_9 = switch_check_network_list_ip_token (network_ip_2(D), D.44129_8, 0B);
  if (D.44130_9 == 0)
    goto <bb 8>;
  else
    goto <bb 7>;

<bb 7>:

<bb 8>:
  # D.44120_1 = PHI <1(6), 0(7)>
  return D.44120_1;

}



;; Function switch_core_media_ext_address_lookup (switch_core_media_ext_address_lookup)

switch_core_media_ext_address_lookup (struct switch_core_session_t * session, char * * ip, switch_port_t * port, const char * sourceip)
{
  const char D.48013;
  int iport;
  char * p;
  static const char __func__[37] = "switch_core_media_ext_address_lookup";
  static const char __PRETTY_FUNCTION__[37] = "switch_core_media_ext_address_lookup";
  struct switch_memory_pool_t * pool;
  struct switch_media_handle_t * smh;
  char * stun_ip;
  switch_port_t stun_port;
  switch_port_t myport;
  int x;
  switch_status_t status;
  char * error;
  uint32_t D.44113;
  uint32_t D.44112;
  char * D.44111;
  char * D.44109;
  struct switch_core_media_params_t * D.44108;
  int D.39263;
  int D.44104;
  switch_port_t D.44103;
  char * error.80;
  int D.44099;
  unsigned int D.44090;
  unsigned int iport.79;
  int D.44084;
  char * D.44082;
  char * D.44081;
  const char * D.44080;
  int D.44077;

<bb 2>:
  error = "";
  # DEBUG status => 1
  myport_10 = *port_9(D);
  # DEBUG myport => myport_10
  # DEBUG stun_port => 3478
  # DEBUG stun_ip => 0B
  pool_14 = switch_core_session_get_pool (session_13(D));
  # DEBUG pool => pool_14
  if (session_13(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 4351, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_15 = session_13(D)->media_handle;
  # DEBUG smh => smh_15
  if (smh_15 == 0B)
    goto <bb 28>;
  else
    goto <bb 5>;

<bb 5>:
  if (sourceip_17(D) == 0B)
    goto <bb 28>;
  else
    goto <bb 6>;

<bb 6>:
  D.44077_19 = strncasecmp (sourceip_17(D), "host:", 5);
  if (D.44077_19 == 0)
    goto <bb 7>;
  else
    goto <bb 8>;

<bb 7>:
  D.44080_20 = sourceip_17(D) + 5;
  D.44081_21 = switch_stun_host_lookup (D.44080_20, pool_14);
  *ip_22(D) = D.44081_21;
  status_24 = D.44081_21 == 0B;
  # DEBUG status => status_24
  goto <bb 26> (out);

<bb 8>:
  D.44084_25 = strncasecmp (sourceip_17(D), "stun:", 5);
  if (D.44084_25 == 0)
    goto <bb 9>;
  else
    goto <bb 25>;

<bb 9>:
  D.44080_26 = sourceip_17(D) + 5;
  stun_ip_27 = __strdup (D.44080_26);
  # DEBUG stun_ip => stun_ip_27
  p_28 = __builtin_strchr (stun_ip_27, 58);
  # DEBUG p => p_28
  if (p_28 != 0B)
    goto <bb 10>;
  else
    goto <bb 12>;

<bb 10>:
  *p_28 = 0;
  p_29 = p_28 + 1;
  # DEBUG p => p_29
  # DEBUG __nptr => p_29
  iport_87 = strtol (p_29, 0B, 10);
  # DEBUG iport => NULL
  iport.79_31 = (unsigned int) iport_87;
  D.44090_32 = iport.79_31 + 4294967295;
  if (D.44090_32 <= 65533)
    goto <bb 11>;
  else
    goto <bb 12>;

<bb 11>:
  stun_port_33 = (switch_port_t) iport_87;
  # DEBUG stun_port => stun_port_33

<bb 12>:
  # stun_port_5 = PHI <3478(9), 3478(10), stun_port_33(11)>
  # DEBUG stun_port => stun_port_5
  # DEBUG s => stun_ip_27
  if (stun_ip_27 == 0B)
    goto <bb 14>;
  else
    goto <bb 13>;

<bb 13>:
  D.48013_88 = MEM[(const char *)stun_ip_27];
  if (D.48013_88 == 0)
    goto <bb 14>;
  else
    goto <bb 29>;

<bb 14>:
Invalid sum of incoming frequencies 956, should be 249
  switch_log_printf (0, "src/switch_core_media.c", &__func__, 4378, 0B, 3, "STUN Failed! NO STUN SERVER\n");
  goto <bb 26> (out);

<bb 15>:
  # x_99 = PHI <x_37(16), x_106(29)>
  status_36 = switch_stun_lookup (ip_22(D), port_9(D), stun_ip_27, stun_port_5, &error, pool_14);
  # DEBUG status => status_36
  if (status_36 != 0)
    goto <bb 16>;
  else
    goto <bb 19>;

<bb 16>:
  switch_sleep (100000);
  x_37 = x_99 + 1;
  # DEBUG x => x_37
  # DEBUG x => x_37
  # DEBUG status => status_36
  if (x_37 != 5)
    goto <bb 15>;
  else
    goto <bb 17>;

<bb 17>:
  # status_2 = PHI <status_36(16)>
  # DEBUG status => status_2
  if (status_2 != 0)
    goto <bb 18>;
  else
    goto <bb 19>;

<bb 18>:
  D.44099_38 = (int) stun_port_5;
  error.80_39 = error;
  switch_log_printf (0, "src/switch_core_media.c", &__func__, 4390, 0B, 3, "STUN Failed! %s:%d [%s]\n", stun_ip_27, D.44099_38, error.80_39);
  goto <bb 26> (out);

<bb 19>:
  D.44082_40 = *ip_22(D);
  if (D.44082_40 == 0B)
    goto <bb 20>;
  else
    goto <bb 21>;

<bb 20>:
  switch_log_printf (0, "src/switch_core_media.c", &__func__, 4394, 0B, 3, "STUN Failed! No IP returned\n");
  goto <bb 26> (out);

<bb 21>:
  D.44103_42 = *port_9(D);
  D.44104_43 = (int) D.44103_42;
  switch_log_printf (0, "src/switch_core_media.c", &__func__, 4397, 0B, 7, "STUN Success [%s]:[%d]\n", D.44082_40, D.44104_43);
  # DEBUG status => 0
  D.44103_45 = *port_9(D);
  if (D.44103_45 == myport_10)
    goto <bb 22>;
  else
    goto <bb 24>;

<bb 22>:
  D.44082_46 = *ip_22(D);
  D.44108_47 = smh_15->mparams;
  D.44109_48 = D.44108_47->rtpip;
  D.39263_49 = __builtin_strcmp (D.44082_46, D.44109_48);
  if (D.39263_49 == 0)
    goto <bb 23>;
  else
    goto <bb 24>;

<bb 23>:
  D.44104_52 = (int) D.44103_45;
  switch_log_printf (0, "src/switch_core_media.c", &__func__, 4401, 0B, 7, "STUN Not Required ip and port match. [%s]:[%d]\n", D.44082_46, D.44104_52);
  goto <bb 26> (out);

<bb 24>:
  D.44108_53 = smh_15->mparams;
  D.44111_54 = switch_core_perform_session_strdup (session_13(D), stun_ip_27, "src/switch_core_media.c", &__func__, 4403);
  D.44108_53->stun_ip = D.44111_54;
  D.44108_55 = smh_15->mparams;
  D.44108_55->stun_port = stun_port_5;
  D.44112_58 = D.44108_55->stun_flags;
  D.44113_59 = D.44112_58 | 1;
  D.44108_55->stun_flags = D.44113_59;
  goto <bb 26> (out);

<bb 25>:
  *ip_22(D) = sourceip_17(D);
  # DEBUG status => 0

Invalid sum of incoming frequencies 7839, should be 8072
  # status_3 = PHI <status_24(7), 1(14), status_2(18), 0(20), 0(24), 0(25), 0(23)>
  # stun_ip_6 = PHI <0B(7), stun_ip_27(14), stun_ip_27(18), stun_ip_27(20), stun_ip_27(24), 0B(25), stun_ip_27(23)>
out:
  # DEBUG stun_ip => stun_ip_6
  # DEBUG status => status_3
  if (stun_ip_6 != 0B)
    goto <bb 27>;
  else
    goto <bb 28>;

<bb 27>:
  free (stun_ip_6);
  # DEBUG stun_ip => 0B

<bb 28>:
  # status_7 = PHI <1(4), 1(5), status_3(27), status_3(26)>
  return status_7;

<bb 29>:
Invalid sum of incoming frequencies 707, should be 1180
  # x_106 = PHI <0(13)>
  # DEBUG x => x_106
  # DEBUG status => 1
  goto <bb 15>;

}



;; Function switch_core_media_reset_autofix (switch_core_media_reset_autofix)

switch_core_media_reset_autofix (struct switch_core_session_t * session, switch_media_type_t type)
{
  static const char __PRETTY_FUNCTION__[32] = "switch_core_media_reset_autofix";
  struct switch_media_handle_t * smh;
  struct switch_rtp_engine_t * engine;
  unsigned int D.44068;

<bb 2>:
  if (session_1(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 4425, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_2 = session_1(D)->media_handle;
  # DEBUG smh => smh_2
  if (smh_2 == 0B)
    goto <bb 6>;
  else
    goto <bb 5>;

<bb 5>:
  engine_6 = &smh_2->engines[type_4(D)]{lb: 0 sz: 11416};
  # DEBUG engine => engine_6
  engine_6->check_frames = 0;
  engine_6->last_ts = 0;

<bb 6>:
  return;

}



;; Function switch_core_media_choose_port (switch_core_media_choose_port)

switch_core_media_choose_port (struct switch_core_session_t * session, switch_media_type_t type, int force)
{
  const char D.48030;
  const char D.48026;
  static const char __func__[30] = "switch_core_media_choose_port";
  static const char __PRETTY_FUNCTION__[30] = "switch_core_media_choose_port";
  char vname[128];
  const char * tstr;
  struct switch_media_handle_t * smh;
  struct switch_rtp_engine_t * engine;
  const char * use_ip;
  switch_port_t sdp_port;
  char * lookup_rtpip;
  char * D.44058;
  int D.44057;
  char * D.44056;
  char * D.44052;
  switch_port_t sdp_port.78;
  switch_status_t D.44047;
  char * D.44041;
  int D.44037;
  char * D.44034;
  switch_port_t D.44029;
  switch_port_t sdp_port.77;
  switch_port_t D.44025;
  uint32_t D.44023;
  uint32_t D.44021;
  struct switch_channel_t * D.44020;
  char * lookup_rtpip.76;
  struct switch_core_media_params_t * D.44014;
  switch_status_t D.44011;

<bb 2>:
  # DEBUG use_ip => 0B
  # DEBUG type => type_5(D)
  switch (type_5(D)) <default: <L32>, case 0: <L34>, case 1: <L33>>

<L34>:
  goto <bb 5> (<L33>);

<L32>:

  # tstr_104 = PHI <"audio"(3), "video"(2), "!ERR"(4)>
<L33>:
  # DEBUG tstr => NULL
  vname = "";
  if (session_7(D) == 0B)
    goto <bb 6>;
  else
    goto <bb 7>;

<bb 6>:
  __assert_fail ("session", "src/switch_core_media.c", 4450, &__PRETTY_FUNCTION__);

<bb 7>:
  smh_8 = session_7(D)->media_handle;
  # DEBUG smh => smh_8
  if (smh_8 == 0B)
    goto <bb 29>;
  else
    goto <bb 8>;

<bb 8>:
  engine_12 = &smh_8->engines[type_5(D)]{lb: 0 sz: 11416};
  # DEBUG engine => engine_12
  D.44014_13 = smh_8->mparams;
  lookup_rtpip.76_14 = D.44014_13->rtpip;
  lookup_rtpip = lookup_rtpip.76_14;
  if (force_15(D) == 0)
    goto <bb 9>;
  else
    goto <bb 12>;

<bb 9>:
  D.44020_16 = session_7(D)->channel;
  D.44021_17 = switch_channel_test_flag (D.44020_16, 15);
  if (D.44021_17 != 0)
    goto <bb 29>;
  else
    goto <bb 10>;

<bb 10>:
  D.44020_18 = session_7(D)->channel;
  D.44023_19 = switch_channel_test_flag (D.44020_18, 29);
  if (D.44023_19 != 0)
    goto <bb 29>;
  else
    goto <bb 11>;

<bb 11>:
  D.44025_20 = engine_12->adv_sdp_port;
  if (D.44025_20 != 0)
    goto <bb 29>;
  else
    goto <bb 12>;

<bb 12>:
  sdp_port.77_22 = engine_12->local_sdp_port;
  if (sdp_port.77_22 != 0)
    goto <bb 13>;
  else
    goto <bb 14>;

<bb 13>:
  D.44014_23 = smh_8->mparams;
  lookup_rtpip.76_24 = D.44014_23->rtpip;
  switch_rtp_release_port (lookup_rtpip.76_24, sdp_port.77_22);

<bb 14>:
  D.44014_26 = smh_8->mparams;
  lookup_rtpip.76_27 = D.44014_26->rtpip;
  D.44029_28 = switch_rtp_request_port (lookup_rtpip.76_27);
  engine_12->local_sdp_port = D.44029_28;
  if (D.44029_28 == 0)
    goto <bb 15>;
  else
    goto <bb 16>;

<bb 15>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4475, session_7(D), 2, "No %s RTP ports available!\n", tstr_104);
  goto <bb 29>;

<bb 16>:
  D.44014_31 = smh_8->mparams;
  lookup_rtpip.76_32 = D.44014_31->rtpip;
  engine_12->local_sdp_ip = lookup_rtpip.76_32;
  sdp_port = D.44029_28;
  D.44034_35 = D.44014_31->remote_ip;
  # DEBUG s => D.44034_35
  if (D.44034_35 == 0B)
    goto <bb 25>;
  else
    goto <bb 17>;

<bb 17>:
  D.48026_105 = MEM[(const char *)D.44034_35];
  if (D.48026_105 == 0)
    goto <bb 25>;
  else
    goto <bb 30>;

<bb 18>:
Invalid sum of incoming frequencies 660, should be 450
  sdp_port.77_40 = engine_12->local_sdp_port;
  switch_nat_add_mapping (sdp_port.77_40, 0, &sdp_port, 0);
  switch_snprintf (&vname, 128, "rtp_adv_%s_ip", tstr_104);
  D.44020_41 = session_7(D)->channel;
  use_ip_42 = switch_channel_get_variable_dup (D.44020_41, &vname, 1, -1);
  # DEBUG use_ip => use_ip_42
  if (use_ip_42 == 0B)
    goto <bb 19>;
  else
    goto <bb 21>;

<bb 19>:
  D.44014_43 = smh_8->mparams;
  D.44041_44 = D.44014_43->extrtpip;
  # DEBUG s => D.44041_44
  if (D.44041_44 == 0B)
    goto <bb 21>;
  else
    goto <bb 20>;

<bb 20>:
  D.48030_107 = MEM[(const char *)D.44041_44];
  if (D.48030_107 == 0)
    goto <bb 21>;
  else
    goto <bb 31>;

<bb 21>:
  # use_ip_1 = PHI <use_ip_42(18), 0B(20), D.44041_44(31), 0B(19)>
  # DEBUG use_ip => use_ip_1
  if (use_ip_1 != 0B)
    goto <bb 22>;
  else
    goto <bb 24>;

<bb 22>:
  D.44047_48 = switch_core_media_ext_address_lookup (session_7(D), &lookup_rtpip, &sdp_port, use_ip_1);
  if (D.44047_48 != 0)
    goto <bb 29>;
  else
    goto <bb 23>;

<bb 23>:
  use_ip_50 = lookup_rtpip;
  # DEBUG use_ip => use_ip_50
  goto <bb 26>;

<bb 24>:
  D.44014_51 = smh_8->mparams;
  use_ip_52 = D.44014_51->rtpip;
  # DEBUG use_ip => use_ip_52
  goto <bb 26>;

<bb 25>:
Invalid sum of incoming frequencies 4695, should be 4905
  D.44014_53 = smh_8->mparams;
  use_ip_54 = D.44014_53->rtpip;
  # DEBUG use_ip => use_ip_54

<bb 26>:
  # use_ip_2 = PHI <use_ip_52(24), use_ip_54(25), use_ip_50(23)>
  # DEBUG use_ip => use_ip_2
  sdp_port.78_55 = sdp_port;
  engine_12->adv_sdp_port = sdp_port.78_55;
  D.44014_57 = smh_8->mparams;
  D.44052_58 = switch_core_perform_session_strdup (session_7(D), use_ip_2, "src/switch_core_media.c", &__func__, 4515);
  D.44014_57->extrtpip = D.44052_58;
  D.44014_57->adv_sdp_audio_ip = D.44052_58;
  engine_12->adv_sdp_ip = D.44052_58;
  if (type_5(D) == 0)
    goto <bb 27>;
  else
    goto <bb 28>;

<bb 27>:
  D.44020_61 = session_7(D)->channel;
  D.44056_62 = engine_12->local_sdp_ip;
  switch_channel_set_variable_var_check (D.44020_61, "local_media_ip", D.44056_62, 1);
  D.44020_63 = session_7(D)->channel;
  sdp_port.78_64 = sdp_port;
  D.44057_65 = (int) sdp_port.78_64;
  switch_channel_set_variable_printf (D.44020_63, "local_media_port", "%d", D.44057_65);
  D.44020_66 = session_7(D)->channel;
  D.44058_67 = engine_12->adv_sdp_ip;
  switch_channel_set_variable_var_check (D.44020_66, "advertised_media_ip", D.44058_67, 1);
  goto <bb 29>;

<bb 28>:
  D.44020_68 = session_7(D)->channel;
  switch_channel_set_variable_var_check (D.44020_68, "local_video_ip", D.44052_58, 1);
  D.44020_70 = session_7(D)->channel;
  sdp_port.78_71 = sdp_port;
  D.44057_72 = (int) sdp_port.78_71;
  switch_channel_set_variable_printf (D.44020_70, "local_video_port", "%d", D.44057_72);

<bb 29>:
  # D.44011_3 = PHI <1(7), 0(10), 1(15), 1(22), 0(28), 0(9), 0(11), 0(27)>
  return D.44011_3;

<bb 30>:
  D.44037_39 = switch_core_media_check_nat (smh_8, D.44034_35);
  if (D.44037_39 != 0)
    goto <bb 18>;
  else
    goto <bb 25>;

<bb 31>:
  # DEBUG use_ip => D.44041_44
  goto <bb 21>;

}



;; Function switch_core_media_choose_ports (switch_core_media_choose_ports)

switch_core_media_choose_ports (struct switch_core_session_t * session, switch_bool_t audio, switch_bool_t video)
{
  switch_status_t status;
  uint32_t D.44002;
  struct switch_channel_t * D.44001;

<bb 2>:
  # DEBUG status => 0
  if (audio_3(D) != 0)
    goto <bb 3>;
  else
    goto <bb 7>;

<bb 3>:
  status_5 = switch_core_media_choose_port (session_4(D), 0, 0);
  # DEBUG status => status_5
  if (status_5 == 0)
    goto <bb 4>;
  else
    goto <bb 7>;

<bb 4>:
  if (video_6(D) != 0)
    goto <bb 5>;
  else
    goto <bb 7>;

<bb 5>:
  switch_core_media_check_video_codecs (session_4(D));
  D.44001_7 = session_4(D)->channel;
  D.44002_8 = switch_channel_test_flag (D.44001_7, 98);
  if (D.44002_8 != 0)
    goto <bb 6>;
  else
    goto <bb 7>;

<bb 6>:
  switch_core_media_choose_port (session_4(D), 1, 0);

<bb 7>:
  # status_1 = PHI <0(2), status_5(3), 0(4), 0(5), 0(6)>
  # DEBUG status => status_1
  return status_1;

}



;; Function switch_core_media_deactivate_rtp (switch_core_media_deactivate_rtp)

switch_core_media_deactivate_rtp (struct switch_core_session_t * session)
{
  const char D.48040;
  const char D.48036;
  switch_status_t st;
  static const char __PRETTY_FUNCTION__[33] = "switch_core_media_deactivate_rtp";
  struct switch_media_handle_t * smh;
  switch_port_t D.43993;
  int D.43990;
  switch_port_t D.43982;
  struct switch_rtp_t * * D.43980;
  struct switch_rtp_t * D.43977;
  switch_port_t D.43976;
  int D.43973;
  char * D.43969;
  char * D.43966;
  struct switch_core_media_params_t * D.43965;
  switch_port_t D.43962;
  struct switch_rtp_t * * D.43960;
  struct switch_rtp_t * D.43957;
  struct switch_channel_t * D.43956;
  struct switch_thread_t * D.43953;

<bb 2>:
  if (session_1(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 4554, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_2 = session_1(D)->media_handle;
  # DEBUG smh => smh_2
  if (smh_2 == 0B)
    goto <bb 23>;
  else
    goto <bb 5>;

<bb 5>:
  # DEBUG D#18 => &smh_2->engines
  # DEBUG a_engine => D#18
  # DEBUG D#19 => &smh_2->engines[1]
  # DEBUG v_engine => D#19
  D.43953_5 = MEM[(struct switch_rtp_engine_t *)smh_2 + 11496B].media_thread;
  if (D.43953_5 != 0B)
    goto <bb 6>;
  else
    goto <bb 7>;

<bb 6>:
  D.43956_6 = session_1(D)->channel;
  switch_channel_clear_flag (D.43956_6, 113);
  MEM[(struct switch_rtp_engine_t *)smh_2 + 11496B].mh.up = 0;
  D.43953_7 = MEM[(struct switch_rtp_engine_t *)smh_2 + 11496B].media_thread;
  switch_thread_join (&st, D.43953_7);
  MEM[(struct switch_rtp_engine_t *)smh_2 + 11496B].media_thread = 0B;

<bb 7>:
  D.43957_8 = MEM[(struct switch_rtp_engine_t *)smh_2 + 11496B].rtp_session;
  if (D.43957_8 != 0B)
    goto <bb 8>;
  else
    goto <bb 9>;

<bb 8>:
  D.43960_9 = &MEM[(struct switch_rtp_engine_t *)smh_2 + 11496B].rtp_session;
  switch_rtp_destroy (D.43960_9);
  goto <bb 11>;

<bb 9>:
  D.43962_10 = MEM[(struct switch_rtp_engine_t *)smh_2 + 11496B].local_sdp_port;
  if (D.43962_10 != 0)
    goto <bb 10>;
  else
    goto <bb 11>;

<bb 10>:
  D.43965_11 = smh_2->mparams;
  D.43966_12 = D.43965_11->rtpip;
  switch_rtp_release_port (D.43966_12, D.43962_10);

<bb 11>:
  D.43962_14 = MEM[(struct switch_rtp_engine_t *)smh_2 + 11496B].local_sdp_port;
  if (D.43962_14 != 0)
    goto <bb 12>;
  else
    goto <bb 15>;

<bb 12>:
  D.43965_15 = smh_2->mparams;
  D.43969_16 = D.43965_15->remote_ip;
  # DEBUG s => D.43969_16
  if (D.43969_16 == 0B)
    goto <bb 15>;
  else
    goto <bb 13>;

<bb 13>:
  D.48036_59 = MEM[(const char *)D.43969_16];
  if (D.48036_59 == 0)
    goto <bb 15>;
  else
    goto <bb 24>;

<bb 14>:
Invalid sum of incoming frequencies 554, should be 378
  D.43962_21 = MEM[(struct switch_rtp_engine_t *)smh_2 + 11496B].local_sdp_port;
  switch_nat_del_mapping (D.43962_21, 0);
  D.43962_22 = MEM[(struct switch_rtp_engine_t *)smh_2 + 11496B].local_sdp_port;
  D.43976_23 = D.43962_22 + 1;
  switch_nat_del_mapping (D.43976_23, 0);

<bb 15>:
Invalid sum of incoming frequencies 8807, should be 8982
  D.43977_24 = MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].rtp_session;
  if (D.43977_24 != 0B)
    goto <bb 16>;
  else
    goto <bb 17>;

<bb 16>:
  D.43980_25 = &MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].rtp_session;
  switch_rtp_destroy (D.43980_25);
  goto <bb 19>;

<bb 17>:
  D.43982_26 = MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].local_sdp_port;
  if (D.43982_26 != 0)
    goto <bb 18>;
  else
    goto <bb 19>;

<bb 18>:
  D.43965_27 = smh_2->mparams;
  D.43966_28 = D.43965_27->rtpip;
  switch_rtp_release_port (D.43966_28, D.43982_26);

<bb 19>:
  D.43982_30 = MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].local_sdp_port;
  if (D.43982_30 != 0)
    goto <bb 20>;
  else
    goto <bb 23>;

<bb 20>:
  D.43965_31 = smh_2->mparams;
  D.43969_32 = D.43965_31->remote_ip;
  # DEBUG s => D.43969_32
  if (D.43969_32 == 0B)
    goto <bb 23>;
  else
    goto <bb 21>;

<bb 21>:
  D.48040_61 = MEM[(const char *)D.43969_32];
  if (D.48040_61 == 0)
    goto <bb 23>;
  else
    goto <bb 25>;

<bb 22>:
  D.43982_37 = MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].local_sdp_port;
  switch_nat_del_mapping (D.43982_37, 0);
  D.43982_38 = MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].local_sdp_port;
  D.43993_39 = D.43982_38 + 1;
  switch_nat_del_mapping (D.43993_39, 0);

<bb 23>:
  return;

<bb 24>:
  D.43973_20 = switch_core_media_check_nat (smh_2, D.43969_16);
  if (D.43973_20 != 0)
    goto <bb 14>;
  else
    goto <bb 15>;

<bb 25>:
  D.43990_36 = switch_core_media_check_nat (smh_2, D.43969_32);
  if (D.43990_36 != 0)
    goto <bb 22>;
  else
    goto <bb 23>;

}



;; Function switch_media_handle_destroy (switch_media_handle_destroy)

switch_media_handle_destroy (struct switch_core_session_t * session)
{
  uint32_t D.48076;
  uint32_t D.48075;
  struct switch_mutex_t * D.48074;
  struct switch_codec_interface_t * D.48073;
  const struct switch_codec_implementation_t * D.48072;
  uint32_t D.48067;
  uint32_t D.48066;
  struct switch_mutex_t * D.48065;
  struct switch_codec_interface_t * D.48064;
  const struct switch_codec_implementation_t * D.48063;
  uint32_t D.48058;
  uint32_t D.48057;
  struct switch_mutex_t * D.48056;
  struct switch_codec_interface_t * D.48055;
  const struct switch_codec_implementation_t * D.48054;
  uint32_t D.48049;
  uint32_t D.48048;
  struct switch_mutex_t * D.48047;
  struct switch_codec_interface_t * D.48046;
  const struct switch_codec_implementation_t * D.48045;
  static const char __PRETTY_FUNCTION__[28] = "switch_media_handle_destroy";
  struct switch_media_handle_t * smh;
  struct switch_codec_t * D.46514;
  struct switch_codec_t * D.46510;
  struct switch_codec_t * D.46506;
  struct switch_codec_t * D.46502;

<bb 2>:
  if (session_1(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 1378, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_2 = session_1(D)->media_handle;
  # DEBUG smh => smh_2
  if (smh_2 == 0B)
    goto <bb 26>;
  else
    goto <bb 5>;

<bb 5>:
  # DEBUG D#20 => &smh_2->engines
  # DEBUG a_engine => D#20
  # DEBUG D#21 => &smh_2->engines[1]
  # DEBUG v_engine => D#21
  D.46502_5 = &MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].read_codec;
  # DEBUG codec => D.46502_5
  D.48049_29 = MEM[(struct switch_codec_t *)smh_2 + 1604B].flags;
  D.48048_30 = D.48049_29 & 256;
  if (D.48048_30 != 0)
    goto <bb 6>;
  else
    goto <bb 10>;

<bb 6>:
Invalid sum of incoming frequencies 4491, should be 3818
  D.48047_31 = MEM[(struct switch_codec_t *)smh_2 + 1604B].mutex;
  if (D.48047_31 != 0B)
    goto <bb 7>;
  else
    goto <bb 10>;

<bb 7>:
  D.48046_32 = MEM[(struct switch_codec_t *)smh_2 + 1604B].codec_interface;
  if (D.48046_32 != 0B)
    goto <bb 8>;
  else
    goto <bb 10>;

<bb 8>:
  D.48045_33 = MEM[(struct switch_codec_t *)smh_2 + 1604B].implementation;
  if (D.48045_33 != 0B)
    goto <bb 9>;
  else
    goto <bb 10>;

<bb 9>:
  switch_core_codec_destroy (D.46502_5);

<bb 10>:
Invalid sum of incoming frequencies 8309, should be 8982
  D.46506_8 = &MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].write_codec;
  # DEBUG codec => D.46506_8
  D.48058_36 = MEM[(struct switch_codec_t *)smh_2 + 1652B].flags;
  D.48057_37 = D.48058_36 & 256;
  if (D.48057_37 != 0)
    goto <bb 11>;
  else
    goto <bb 15>;

<bb 11>:
Invalid sum of incoming frequencies 4491, should be 3818
  D.48056_38 = MEM[(struct switch_codec_t *)smh_2 + 1652B].mutex;
  if (D.48056_38 != 0B)
    goto <bb 12>;
  else
    goto <bb 15>;

<bb 12>:
  D.48055_39 = MEM[(struct switch_codec_t *)smh_2 + 1652B].codec_interface;
  if (D.48055_39 != 0B)
    goto <bb 13>;
  else
    goto <bb 15>;

<bb 13>:
  D.48054_40 = MEM[(struct switch_codec_t *)smh_2 + 1652B].implementation;
  if (D.48054_40 != 0B)
    goto <bb 14>;
  else
    goto <bb 15>;

<bb 14>:
  switch_core_codec_destroy (D.46506_8);

<bb 15>:
Invalid sum of incoming frequencies 8309, should be 8982
  D.46510_11 = &MEM[(struct switch_rtp_engine_t *)smh_2 + 11496B].read_codec;
  # DEBUG codec => D.46510_11
  D.48067_43 = MEM[(struct switch_codec_t *)smh_2 + 13020B].flags;
  D.48066_44 = D.48067_43 & 256;
  if (D.48066_44 != 0)
    goto <bb 16>;
  else
    goto <bb 20>;

<bb 16>:
Invalid sum of incoming frequencies 4491, should be 3818
  D.48065_45 = MEM[(struct switch_codec_t *)smh_2 + 13020B].mutex;
  if (D.48065_45 != 0B)
    goto <bb 17>;
  else
    goto <bb 20>;

<bb 17>:
  D.48064_46 = MEM[(struct switch_codec_t *)smh_2 + 13020B].codec_interface;
  if (D.48064_46 != 0B)
    goto <bb 18>;
  else
    goto <bb 20>;

<bb 18>:
  D.48063_47 = MEM[(struct switch_codec_t *)smh_2 + 13020B].implementation;
  if (D.48063_47 != 0B)
    goto <bb 19>;
  else
    goto <bb 20>;

<bb 19>:
  switch_core_codec_destroy (D.46510_11);

<bb 20>:
Invalid sum of incoming frequencies 8309, should be 8982
  D.46514_14 = &MEM[(struct switch_rtp_engine_t *)smh_2 + 11496B].write_codec;
  # DEBUG codec => D.46514_14
  D.48076_50 = MEM[(struct switch_codec_t *)smh_2 + 13068B].flags;
  D.48075_51 = D.48076_50 & 256;
  if (D.48075_51 != 0)
    goto <bb 21>;
  else
    goto <bb 25>;

<bb 21>:
Invalid sum of incoming frequencies 4491, should be 3818
  D.48074_52 = MEM[(struct switch_codec_t *)smh_2 + 13068B].mutex;
  if (D.48074_52 != 0B)
    goto <bb 22>;
  else
    goto <bb 25>;

<bb 22>:
  D.48073_53 = MEM[(struct switch_codec_t *)smh_2 + 13068B].codec_interface;
  if (D.48073_53 != 0B)
    goto <bb 23>;
  else
    goto <bb 25>;

<bb 23>:
  D.48072_54 = MEM[(struct switch_codec_t *)smh_2 + 13068B].implementation;
  if (D.48072_54 != 0B)
    goto <bb 24>;
  else
    goto <bb 25>;

<bb 24>:
  switch_core_codec_destroy (D.46514_14);

<bb 25>:
Invalid sum of incoming frequencies 8309, should be 8982
  switch_core_session_unset_read_codec (session_1(D));
  switch_core_session_unset_write_codec (session_1(D));
  switch_core_media_deactivate_rtp (session_1(D));

<bb 26>:
  return;

}



;; Function switch_core_session_wake_video_thread (switch_core_session_wake_video_thread)

switch_core_session_wake_video_thread (struct switch_core_session_t * session)
{
  struct switch_media_handle_t * smh;
  struct switch_thread_cond_t * D.43947;
  switch_status_t D.43944;
  struct switch_mutex_t * D.43943;
  struct switch_rtp_t * D.43940;

<bb 2>:
  smh_2 = session_1(D)->media_handle;
  # DEBUG smh => smh_2
  if (smh_2 == 0B)
    goto <bb 6>;
  else
    goto <bb 3>;

<bb 3>:
  # DEBUG D#22 => &smh_2->engines[1]
  # DEBUG v_engine => D#22
  D.43940_4 = MEM[(struct switch_rtp_engine_t *)smh_2 + 11496B].rtp_session;
  if (D.43940_4 == 0B)
    goto <bb 6>;
  else
    goto <bb 4>;

<bb 4>:
  D.43943_5 = MEM[(struct switch_rtp_engine_t *)smh_2 + 11496B].mh.cond_mutex;
  D.43944_6 = switch_mutex_trylock (D.43943_5);
  if (D.43944_6 == 0)
    goto <bb 5>;
  else
    goto <bb 6>;

<bb 5>:
  D.43947_7 = MEM[(struct switch_rtp_engine_t *)smh_2 + 11496B].mh.cond;
  switch_thread_cond_broadcast (D.43947_7);
  D.43943_8 = MEM[(struct switch_rtp_engine_t *)smh_2 + 11496B].mh.cond_mutex;
  switch_mutex_unlock (D.43943_8);

<bb 6>:
  return;

}



;; Function switch_core_media_activate_rtp (switch_core_media_activate_rtp)

switch_core_media_activate_rtp (struct switch_core_session_t * session)
{
  int D.50253;
  switch_bool_t D.50252;
  int D.50251;
  int D.50250;
  int D.50249;
  int D.50248;
  int D.50247;
  int D.50246;
  int D.50245;
  const char D.48123;
  int D.48116;
  int D.48113;
  int D.48101;
  const char D.48092;
  int D.48085;
  int D.48082;
  dtls_type_t dtype;
  dtls_type_t xtype;
  int interval;
  switch_port_t remote_port;
  const char * rport;
  uint32_t ssrc_ul;
  const char * ssrc;
  switch_port_t remote_rtcp_port;
  const char * rport;
  switch_port_t remote_port;
  char * remote_host;
  int delayi;
  int v;
  int v;
  int maxqlen;
  int qlen;
  char * q;
  char * p;
  int max_drift;
  int maxlen;
  int jb_msec;
  dtls_type_t dtype;
  dtls_type_t xtype;
  int interval;
  switch_port_t remote_rtcp_port;
  const char * rport;
  uint32_t ssrc_ul;
  const char * ssrc;
  uint8_t inb;
  uint8_t vad_out;
  uint8_t vad_in;
  register int __result;
  switch_port_t remote_rtcp_port;
  const char * rport;
  switch_port_t remote_port;
  char * remote_host;
  static const char __func__[31] = "switch_core_media_activate_rtp";
  static const char __PRETTY_FUNCTION__[31] = "switch_core_media_activate_rtp";
  struct switch_media_handle_t * smh;
  struct switch_rtp_engine_t * v_engine;
  struct switch_rtp_engine_t * a_engine;
  const char * var;
  char * timer_name;
  char tmp[50];
  switch_status_t status;
  switch_rtp_flag_t flags[39];
  const char * val;
  const char * err;
  const char * iftmp.68;
  const char * iftmp.67;
  uint32_t D.43777;
  uint32_t D.43776;
  unsigned int D.43775;
  switch_rtp_bug_flag_t D.43774;
  switch_rtp_bug_flag_t D.43773;
  switch_rtp_bug_flag_t * D.43772;
  unsigned int D.43765;
  struct dtls_fingerprint_t * D.43764;
  struct dtls_fingerprint_t * D.43763;
  char * D.43760;
  switch_call_direction_t D.43754;
  int D.43750;
  int D.43747;
  switch_call_direction_t D.43739;
  switch_core_media_ice_type_t iftmp.65;
  switch_port_t D.43736;
  switch_port_t D.43735;
  char * D.43733;
  char * D.43732;
  int D.39417;
  uint8_t D.43726;
  int D.43725;
  int D.43724;
  unsigned int D.43721;
  unsigned int interval.64;
  switch_bool_t D.43718;
  int8_t D.43717;
  int D.43716;
  int D.43713;
  struct ice_t * D.43706;
  switch_call_direction_t D.43702;
  switch_core_media_ice_type_t iftmp.63;
  char * D.43700;
  char * D.43699;
  char * D.43698;
  char * D.43697;
  uint8_t D.43694;
  int D.43693;
  uint32_t D.43690;
  uint32_t D.43689;
  struct payload_map_t * * D.43685;
  uint8_t D.43682;
  uint8_t D.43679;
  uint8_t D.43676;
  uint8_t D.43672;
  const char * iftmp.62;
  char * D.43670;
  uint32_t D.43666;
  char * iftmp.61;
  struct switch_rtp_t * D.43664;
  struct switch_memory_pool_t * D.43663;
  switch_rtp_flag_t D.43662;
  switch_rtp_flag_t D.43661;
  uint32_t D.43658;
  uint32_t D.43655;
  int D.43654;
  uint32_t D.43650;
  int32_t D.43647;
  uint8_t D.43636;
  int D.43635;
  int D.43634;
  char * D.43633;
  int D.43632;
  uint32_t D.43628;
  int32_t D.43625;
  uint32_t D.43620;
  int D.43619;
  uint32_t D.43615;
  int32_t D.43612;
  switch_status_t D.43606;
  uint32_t D.43598;
  int D.43595;
  switch_payload_t D.43594;
  int D.43593;
  switch_port_t D.43592;
  char * D.43591;
  uint8_t D.43588;
  uint32_t D.43585;
  int D.43584;
  int D.43583;
  char * D.43582;
  char * D.43581;
  char * D.43578;
  int D.39400;
  _Bool D.43576;
  _Bool D.43575;
  _Bool D.43574;
  uint32_t D.43570;
  switch_port_t D.43565;
  char * D.43562;
  struct payload_map_t * D.43561;
  uint32_t D.43558;
  switch_call_direction_t D.43555;
  uint32_t D.43552;
  int D.43551;
  int32_t D.43548;
  char * D.43545;
  uint32_t D.43542;
  unsigned int delayi.60;
  int D.43536;
  int D.43534;
  int32_t D.43531;
  int D.43527;
  switch_payload_t D.43524;
  int D.43523;
  switch_payload_t D.43520;
  uint32_t D.43519;
  uint32_t D.43518;
  uint32_t D.43515;
  uint32_t D.43512;
  uint32_t D.43510;
  uint32_t D.43509;
  uint32_t D.43506;
  uint32_t v.59;
  uint32_t v.58;
  int D.43492;
  const char * D.43491;
  switch_status_t D.43488;
  uint32_t max_drift.57;
  uint32_t D.43486;
  uint32_t maxqlen.56;
  uint32_t qlen.55;
  unsigned int D.43474;
  int D.43473;
  int D.43472;
  const int D.43471;
  const struct switch_codec_implementation_t * D.43470;
  unsigned int D.43467;
  unsigned int jb_msec.54;
  unsigned int D.43453;
  struct dtls_fingerprint_t * D.43452;
  struct dtls_fingerprint_t * D.43451;
  char * D.43448;
  uint32_t D.43439;
  switch_call_direction_t D.43435;
  struct switch_channel_t * D.43434;
  int D.43430;
  struct switch_core_session_t * D.43429;
  int D.43426;
  switch_call_direction_t D.43418;
  switch_core_media_ice_type_t iftmp.51;
  switch_port_t D.43415;
  switch_port_t D.43414;
  char * D.43412;
  char * D.43411;
  int D.39377;
  uint8_t D.43405;
  int D.43404;
  unsigned int D.43401;
  unsigned int interval.50;
  switch_bool_t D.43398;
  int8_t D.43397;
  int D.43396;
  int D.43393;
  _Bool D.43389;
  _Bool D.43388;
  _Bool D.43387;
  struct ice_t * D.43383;
  switch_call_direction_t D.43379;
  switch_core_media_ice_type_t iftmp.49;
  char * D.43377;
  char * D.43376;
  char * D.43375;
  char * D.43374;
  uint8_t D.43371;
  int D.43370;
  char * iftmp.48;
  char * iftmp.47;
  char * D.43361;
  struct switch_channel_t * D.43360;
  struct switch_codec_t * D.43359;
  _Bool D.43358;
  _Bool D.43357;
  _Bool D.43356;
  _Bool D.43354;
  _Bool D.43353;
  _Bool D.43352;
  unsigned int D.43349;
  switch_rtp_bug_flag_t D.43348;
  switch_rtp_bug_flag_t * D.43347;
  unsigned int D.43344;
  switch_rtp_bug_flag_t D.43343;
  unsigned int D.43340;
  switch_rtp_bug_flag_t D.43339;
  uint32_t D.43338;
  int D.43335;
  int D.43330;
  int D.43325;
  int D.43320;
  uint32_t D.43315;
  uint32_t D.43314;
  struct switch_memory_pool_t * D.43310;
  struct switch_mutex_t *[2] * D.43309;
  switch_call_direction_t D.43308;
  uint8_t D.43307;
  switch_core_media_vflag_t D.43306;
  uint8_t D.43303;
  struct payload_map_t * * D.43302;
  uint8_t D.43299;
  struct switch_rtp_t * D.43298;
  struct switch_memory_pool_t * D.43297;
  uint32_t D.43296;
  uint32_t D.43295;
  uint32_t D.43294;
  switch_channel_state_t D.43293;
  int D.43291;
  uint8_t D.43283;
  char * D.43282;
  int D.43281;
  uint32_t D.43277;
  int32_t D.43274;
  switch_rtp_flag_t D.43271;
  switch_rtp_flag_t D.43270;
  uint32_t D.43267;
  uint32_t D.43259;
  int D.43258;
  int32_t D.43254;
  uint32_t D.43207;
  const char * err.45;
  switch_status_t D.43202;
  uint32_t D.43194;
  char * D.43191;
  int D.43190;
  int D.43189;
  int D.43188;
  switch_payload_t D.43187;
  int D.43186;
  switch_port_t D.43185;
  char * D.43184;
  char * D.43183;
  uint32_t D.43180;
  int D.43179;
  int D.43178;
  char * D.43177;
  char * D.43176;
  switch_port_t D.43174;
  char * D.43172;
  struct payload_map_t * D.43171;
  int D.39348;
  _Bool D.43169;
  _Bool D.43168;
  _Bool D.43167;
  uint32_t D.43163;
  int D.43158;
  switch_rtp_flag_t D.43153;
  switch_rtp_flag_t D.43152;
  int D.43149;
  char * D.43148;
  switch_rtp_flag_t D.43147;
  switch_rtp_flag_t D.43146;
  switch_payload_t D.43143;
  int32_t D.43139;
  switch_rtp_flag_t D.43138;
  switch_rtp_flag_t D.43137;
  int D.43136;
  int32_t D.43132;
  switch_rtp_flag_t D.43129;
  switch_rtp_flag_t D.43128;
  int D.43127;
  int32_t D.43124;
  int32_t D.43118;
  switch_rtp_flag_t D.43115;
  switch_rtp_flag_t D.43114;
  int D.43113;
  uint32_t D.43109;
  int32_t D.43106;
  uint32_t D.43100;
  struct switch_core_media_params_t * D.43099;
  uint8_t D.43097;
  struct switch_rtp_t * D.43096;
  uint32_t D.43093;
  uint8_t D.43090;
  uint32_t D.43087;
  uint32_t D.43084;
  switch_rtp_crypto_key_type_t D.43081;
  uint8_t D.43078;
  struct switch_rtp_t * D.43077;
  switch_channel_state_t D.43076;
  int D.43074;
  struct switch_channel_t * D.43073;

<bb 2>:
  err = 0B;
  # DEBUG val => 0B
  flags = {};
  # DEBUG status => 0
  # DEBUG timer_name => 0B
  if (session_45(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 4731, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_46 = session_45(D)->media_handle;
  # DEBUG smh => smh_46
  if (smh_46 == 0B)
    goto <bb 308>;
  else
    goto <bb 5>;

<bb 5>:
  a_engine_48 = &smh_46->engines;
  # DEBUG a_engine => a_engine_48
  v_engine_49 = &smh_46->engines[1];
  # DEBUG v_engine => v_engine_49
  D.43073_50 = session_45(D)->channel;
  D.43074_51 = switch_channel_check_signal (D.43073_50, 1);
  if (D.43074_51 != 0)
    goto <bb 308>;
  else
    goto <bb 6>;

<bb 6>:
  D.43073_52 = session_45(D)->channel;
  D.43076_53 = switch_channel_get_state (D.43073_52);
  if (D.43076_53 > 9)
    goto <bb 308>;
  else
    goto <bb 7>;

<bb 7>:
  D.43077_54 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  D.43078_55 = switch_rtp_ready (D.43077_54);
  if (D.43078_55 != 0)
    goto <bb 8>;
  else
    goto <bb 9>;

<bb 8>:
  D.43077_56 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  switch_rtp_reset_media_timer (D.43077_56);

<bb 9>:
  D.43081_57 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].crypto_type;
  if (D.43081_57 != 9)
    goto <bb 10>;
  else
    goto <bb 11>;

<bb 10>:
  D.43073_58 = session_45(D)->channel;
  switch_channel_set_flag_value (D.43073_58, 92, 1);

<bb 11>:
  D.43073_59 = session_45(D)->channel;
  D.43084_60 = switch_channel_test_flag (D.43073_59, 15);
  if (D.43084_60 != 0)
    goto <bb 307> (end);
  else
    goto <bb 12>;

<bb 12>:
  D.43073_62 = session_45(D)->channel;
  D.43087_63 = switch_channel_test_flag (D.43073_62, 103);
  if (D.43087_63 == 0)
    goto <bb 13>;
  else
    goto <bb 16>;

<bb 13>:
  D.43077_64 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  D.43090_65 = switch_rtp_ready (D.43077_64);
  if (D.43090_65 != 0)
    goto <bb 14>;
  else
    goto <bb 16>;

<bb 14>:
  D.43073_66 = session_45(D)->channel;
  D.43093_67 = switch_channel_test_flag (D.43073_66, 98);
  if (D.43093_67 != 0)
    goto <bb 15>;
  else
    goto <bb 307> (end);

<bb 15>:
  D.43096_68 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtp_session;
  D.43097_69 = switch_rtp_ready (D.43096_68);
  if (D.43097_69 == 0)
    goto <bb 204> (video);
  else
    goto <bb 307> (end);

<bb 16>:
  D.43099_71 = smh_46->mparams;
  D.43100_72 = D.43099_71->codec_flags;
  status_73 = switch_core_media_set_codec (session_45(D), 0, D.43100_72);
  # DEBUG status => status_73
  if (status_73 != 0)
    goto <bb 307> (end);
  else
    goto <bb 17>;

<bb 17>:
  switch_core_media_set_video_codec (session_45(D), 0);
  memset (&flags, 0, 156);
  flags[13] = 1;
  D.43106_76 = switch_media_handle_test_media_flag (smh_46, 10);
  if (D.43106_76 == 0)
    goto <bb 18>;
  else
    goto <bb 22>;

<bb 18>:
  D.43073_77 = session_45(D)->channel;
  D.43109_78 = switch_channel_test_flag (D.43073_77, 106);
  if (D.43109_78 == 0)
    goto <bb 19>;
  else
    goto <bb 22>;

<bb 19>:
  D.43073_79 = session_45(D)->channel;
  val_80 = switch_channel_get_variable_dup (D.43073_79, "disable_rtp_auto_adjust", 1, -1);
  # DEBUG val => val_80
  if (val_80 == 0B)
    goto <bb 21>;
  else
    goto <bb 20>;

<bb 20>:
  D.43113_81 = switch_true (val_80);
  if (D.43113_81 == 0)
    goto <bb 21>;
  else
    goto <bb 22>;

<bb 21>:
  D.43114_82 = flags[7];
  D.43115_83 = D.43114_82 + 1;
  flags[7] = D.43115_83;

<bb 22>:
  D.43118_84 = switch_media_handle_test_media_flag (smh_46, 11);
  if (D.43118_84 != 0)
    goto <bb 34>;
  else
    goto <bb 23>;

<bb 23>:
  D.43073_85 = session_45(D)->channel;
  val_86 = switch_channel_get_variable_dup (D.43073_85, "pass_rfc2833", 1, -1);
  # DEBUG val => val_86
  if (val_86 != 0B)
    goto <bb 24>;
  else
    goto <bb 35>;

<bb 24>:
  # DEBUG expr => val_86
  D.50245_1382 = strcasecmp (val_86, "yes");
  if (D.50245_1382 == 0)
    goto <bb 33>;
  else
    goto <bb 25>;

<bb 25>:
  D.50246_1383 = strcasecmp (val_86, "on");
  if (D.50246_1383 == 0)
    goto <bb 33>;
  else
    goto <bb 26>;

<bb 26>:
  D.50247_1384 = strcasecmp (val_86, "true");
  if (D.50247_1384 == 0)
    goto <bb 33>;
  else
    goto <bb 27>;

<bb 27>:
  D.50248_1385 = strcasecmp (val_86, "t");
  if (D.50248_1385 == 0)
    goto <bb 33>;
  else
    goto <bb 28>;

<bb 28>:
  D.50249_1386 = strcasecmp (val_86, "enabled");
  if (D.50249_1386 == 0)
    goto <bb 33>;
  else
    goto <bb 29>;

<bb 29>:
  D.50250_1387 = strcasecmp (val_86, "active");
  if (D.50250_1387 == 0)
    goto <bb 33>;
  else
    goto <bb 30>;

<bb 30>:
  D.50251_1388 = strcasecmp (val_86, "allow");
  if (D.50251_1388 == 0)
    goto <bb 33>;
  else
    goto <bb 31>;

<bb 31>:
  D.50252_1389 = switch_is_number (val_86);
  if (D.50252_1389 != 0)
    goto <bb 32>;
  else
    goto <bb 309>;

<bb 32>:
  # DEBUG __nptr => val_86
  D.50253_1390 = strtol (val_86, 0B, 10);
  if (D.50253_1390 != 0)
    goto <bb 33>;
  else
    goto <bb 309>;

<bb 33>:

<bb 34>:
  D.43073_88 = session_45(D)->channel;
  switch_channel_set_flag_value (D.43073_88, 100, 1);

<bb 35>:
  D.43124_89 = switch_media_handle_test_media_flag (smh_46, 12);
  if (D.43124_89 != 0)
    goto <bb 38>;
  else
    goto <bb 36>;

<bb 36>:
  D.43073_90 = session_45(D)->channel;
  val_91 = switch_channel_get_variable_dup (D.43073_90, "rtp_autoflush", 1, -1);
  # DEBUG val => val_91
  if (val_91 != 0B)
    goto <bb 37>;
  else
    goto <bb 39>;

<bb 37>:
  D.43127_92 = switch_true (val_91);
  if (D.43127_92 != 0)
    goto <bb 38>;
  else
    goto <bb 39>;

<bb 38>:
  D.43128_93 = flags[22];
  D.43129_94 = D.43128_93 + 1;
  flags[22] = D.43129_94;

<bb 39>:
  D.43132_95 = switch_media_handle_test_media_flag (smh_46, 13);
  if (D.43132_95 == 0)
    goto <bb 40>;
  else
    goto <bb 43>;

<bb 40>:
  D.43073_96 = session_45(D)->channel;
  val_97 = switch_channel_get_variable_dup (D.43073_96, "rtp_rewrite_timestamps", 1, -1);
  # DEBUG val => val_97
  if (val_97 == 0B)
    goto <bb 42>;
  else
    goto <bb 41>;

<bb 41>:
  D.43136_98 = switch_true (val_97);
  if (D.43136_98 == 0)
    goto <bb 42>;
  else
    goto <bb 43>;

<bb 42>:
  D.43137_99 = flags[8];
  D.43138_100 = D.43137_99 + 1;
  flags[8] = D.43138_100;

<bb 43>:
  D.43139_101 = switch_media_handle_test_media_flag (smh_46, 9);
  if (D.43139_101 != 0)
    goto <bb 44>;
  else
    goto <bb 45>;

<bb 44>:
  D.43099_102 = smh_46->mparams;
  D.43099_102->cng_pt = 0;
  goto <bb 47>;

<bb 45>:
  D.43099_103 = smh_46->mparams;
  D.43143_104 = D.43099_103->cng_pt;
  if (D.43143_104 != 0)
    goto <bb 46>;
  else
    goto <bb 47>;

<bb 46>:
  D.43146_105 = flags[16];
  D.43147_106 = D.43146_105 + 1;
  flags[16] = D.43147_106;

<bb 47>:
  D.43148_107 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].read_impl.iananame;
  D.43149_108 = strcasecmp (D.43148_107, "L16");
  if (D.43149_108 == 0)
    goto <bb 48>;
  else
    goto <bb 49>;

<bb 48>:
  D.43152_109 = flags[14];
  D.43153_110 = D.43152_109 + 1;
  flags[14] = D.43153_110;

<bb 49>:
  D.43152_111 = flags[14];
  if (D.43152_111 != 0)
    goto <bb 50>;
  else
    goto <bb 53>;

<bb 50>:
  D.43073_112 = session_45(D)->channel;
  val_113 = switch_channel_get_variable_dup (D.43073_112, "rtp_disable_byteswap", 1, -1);
  # DEBUG val => val_113
  if (val_113 != 0B)
    goto <bb 51>;
  else
    goto <bb 53>;

<bb 51>:
  D.43158_114 = switch_true (val_113);
  if (D.43158_114 != 0)
    goto <bb 52>;
  else
    goto <bb 53>;

<bb 52>:
  flags[14] = 0;

<bb 53>:
  D.43077_115 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  if (D.43077_115 != 0B)
    goto <bb 54>;
  else
    goto <bb 60>;

<bb 54>:
  D.43073_116 = session_45(D)->channel;
  D.43163_117 = switch_channel_test_flag (D.43073_116, 103);
  if (D.43163_117 != 0)
    goto <bb 55>;
  else
    goto <bb 60>;

<bb 55>:
  D.43077_118 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  remote_host_119 = switch_rtp_get_remote_host (D.43077_118);
  # DEBUG remote_host => remote_host_119
  D.43077_120 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  remote_port_121 = switch_rtp_get_remote_port (D.43077_120);
  # DEBUG remote_port => remote_port_121
  D.43167_122 = remote_host_119 != 0B;
  D.43168_123 = remote_port_121 != 0;
  D.43169_124 = D.43167_122 & D.43168_123;
  if (D.43169_124 != 0)
    goto <bb 56>;
  else
    goto <bb 59>;

<bb 56>:
  D.43171_125 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].cur_payload_map;
  D.43172_126 = D.43171_125->remote_sdp_ip;
  D.39348_127 = __builtin_strcmp (remote_host_119, D.43172_126);
  if (D.39348_127 == 0)
    goto <bb 57>;
  else
    goto <bb 59>;

<bb 57>:
  D.43174_129 = D.43171_125->remote_sdp_port;
  if (D.43174_129 == remote_port_121)
    goto <bb 58>;
  else
    goto <bb 59>;

<bb 58>:
  D.43073_130 = session_45(D)->channel;
  D.43176_131 = switch_channel_get_name (D.43073_130);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4825, session_45(D), 7, "Audio params are unchanged for %s.\n", D.43176_131);
  goto <bb 204> (video);

<bb 59>:
  D.43073_132 = session_45(D)->channel;
  D.43177_133 = switch_channel_get_name (D.43073_132);
  D.43178_134 = (int) remote_port_121;
  D.43171_135 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].cur_payload_map;
  D.43172_136 = D.43171_135->remote_sdp_ip;
  D.43174_138 = D.43171_135->remote_sdp_port;
  D.43179_139 = (int) D.43174_138;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4830, session_45(D), 7, "Audio params changed for %s from %s:%d to %s:%d\n", D.43177_133, remote_host_119, D.43178_134, D.43172_136, D.43179_139);
  D.43171_140 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].cur_payload_map;
  D.43174_141 = D.43171_140->remote_sdp_port;
  D.43179_142 = (int) D.43174_141;
  switch_snprintf (&tmp, 50, "%d", D.43179_142);
  D.43073_143 = session_45(D)->channel;
  D.43171_144 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].cur_payload_map;
  D.43172_145 = D.43171_144->remote_sdp_ip;
  switch_channel_set_variable_var_check (D.43073_143, "remote_media_ip", D.43172_145, 1);
  D.43073_146 = session_45(D)->channel;
  switch_channel_set_variable_var_check (D.43073_146, "remote_media_port", &tmp, 1);

<bb 60>:
  D.43073_147 = session_45(D)->channel;
  D.43180_148 = switch_channel_test_flag (D.43073_147, 29);
  if (D.43180_148 == 0)
    goto <bb 61>;
  else
    goto <bb 62>;

<bb 61>:
  D.43073_149 = session_45(D)->channel;
  D.43183_150 = switch_channel_get_name (D.43073_149);
  D.43184_151 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].local_sdp_ip;
  D.43185_152 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].local_sdp_port;
  D.43186_153 = (int) D.43185_152;
  D.43171_154 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].cur_payload_map;
  D.43172_155 = D.43171_154->remote_sdp_ip;
  D.43174_157 = D.43171_154->remote_sdp_port;
  D.43179_158 = (int) D.43174_157;
  D.43187_160 = D.43171_154->agreed_pt;
  D.43188_161 = (int) D.43187_160;
  D.43189_162 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].read_impl.microseconds_per_packet;
  D.43190_163 = D.43189_162 / 1000;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4841, session_45(D), 7, "AUDIO RTP [%s] %s port %d -> %s port %d codec: %u ms: %d\n", D.43183_150, D.43184_151, D.43186_153, D.43172_155, D.43179_158, D.43188_161, D.43190_163);

<bb 62>:
  D.43185_164 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].local_sdp_port;
  D.43186_165 = (int) D.43185_164;
  switch_snprintf (&tmp, 50, "%d", D.43186_165);
  D.43073_166 = session_45(D)->channel;
  D.43184_167 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].local_sdp_ip;
  switch_channel_set_variable_var_check (D.43073_166, "local_media_ip", D.43184_167, 1);
  D.43073_168 = session_45(D)->channel;
  switch_channel_set_variable_var_check (D.43073_168, "local_media_port", &tmp, 1);
  D.43073_169 = session_45(D)->channel;
  D.43191_170 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].adv_sdp_ip;
  switch_channel_set_variable_var_check (D.43073_169, "advertised_media_ip", D.43191_170, 1);
  D.43077_171 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  if (D.43077_171 != 0B)
    goto <bb 63>;
  else
    goto <bb 78>;

<bb 63>:
  D.43073_172 = session_45(D)->channel;
  D.43194_173 = switch_channel_test_flag (D.43073_172, 103);
  if (D.43194_173 != 0)
    goto <bb 64>;
  else
    goto <bb 78>;

<bb 64>:
  # DEBUG rport => 0B
  remote_rtcp_port_175 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].remote_rtcp_port;
  # DEBUG remote_rtcp_port => remote_rtcp_port_175
  if (remote_rtcp_port_175 == 0)
    goto <bb 65>;
  else
    goto <bb 67>;

<bb 65>:
  D.43073_176 = session_45(D)->channel;
  rport_177 = switch_channel_get_variable_dup (D.43073_176, "rtp_remote_audio_rtcp_port", 1, -1);
  # DEBUG rport => rport_177
  if (rport_177 != 0B)
    goto <bb 66>;
  else
    goto <bb 67>;

<bb 66>:
  # DEBUG __nptr => rport_177
  D.48082_1337 = strtol (rport_177, 0B, 10);
  remote_rtcp_port_179 = (switch_port_t) D.48082_1337;
  # DEBUG remote_rtcp_port => remote_rtcp_port_179

<bb 67>:
  # remote_rtcp_port_7 = PHI <remote_rtcp_port_175(64), 0(65), remote_rtcp_port_179(66)>
  # DEBUG remote_rtcp_port => remote_rtcp_port_7
  D.43077_180 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  D.43171_181 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].cur_payload_map;
  D.43172_182 = D.43171_181->remote_sdp_ip;
  D.43174_184 = D.43171_181->remote_sdp_port;
  D.43202_185 = switch_rtp_set_remote_address (D.43077_180, D.43172_182, D.43174_184, remote_rtcp_port_7, 1, &err);
  if (D.43202_185 != 0)
    goto <bb 68>;
  else
    goto <bb 69>;

<bb 68>:
  err.45_186 = err;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4868, session_45(D), 3, "AUDIO RTP REPORTS ERROR: [%s]\n", err.45_186);
  goto <bb 77>;

<bb 69>:
  D.43171_187 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].cur_payload_map;
  D.43172_188 = D.43171_187->remote_sdp_ip;
  D.43174_190 = D.43171_187->remote_sdp_port;
  D.43179_191 = (int) D.43174_190;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4870, session_45(D), 7, "AUDIO RTP CHANGING DEST TO: [%s:%d]\n", D.43172_188, D.43179_191);
  D.43073_192 = session_45(D)->channel;
  D.43207_193 = switch_channel_test_flag (D.43073_192, 96);
  if (D.43207_193 != 0)
    goto <bb 70>;
  else
    goto <bb 72>;

<bb 70>:
  # DEBUG __s2_len => 7
  D.43171_235 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].cur_payload_map;
  D.43172_236 = D.43171_235->remote_sdp_ip;
  __result_237 = __builtin_strcmp (D.43172_236, "0.0.0.0");
  if (__result_237 != 0)
    goto <bb 71>;
  else
    goto <bb 72>;

<bb 71>:
  switch_core_media_toggle_hold (session_45(D), 0);

<bb 72>:
  D.43254_239 = switch_media_handle_test_media_flag (smh_46, 10);
  if (D.43254_239 == 0)
    goto <bb 73>;
  else
    goto <bb 77>;

<bb 73>:
  D.43073_240 = session_45(D)->channel;
  val_241 = switch_channel_get_variable_dup (D.43073_240, "disable_rtp_auto_adjust", 1, -1);
  # DEBUG val => val_241
  if (val_241 == 0B)
    goto <bb 75>;
  else
    goto <bb 74>;

<bb 74>:
  D.43258_242 = switch_true (val_241);
  if (D.43258_242 == 0)
    goto <bb 75>;
  else
    goto <bb 77>;

<bb 75>:
  D.43073_243 = session_45(D)->channel;
  D.43259_244 = switch_channel_test_flag (D.43073_243, 106);
  if (D.43259_244 == 0)
    goto <bb 76>;
  else
    goto <bb 77>;

<bb 76>:
  D.43077_245 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  switch_rtp_set_flag (D.43077_245, 7);

<bb 77>:
  check_dtls_reinvite (session_45(D), a_engine_48);
  goto <bb 204> (video);

<bb 78>:
  D.43073_249 = session_45(D)->channel;
  D.43267_250 = switch_channel_test_flag (D.43073_249, 29);
  if (D.43267_250 != 0)
    goto <bb 79>;
  else
    goto <bb 86>;

<bb 79>:
  switch_core_media_proxy_remote_addr (session_45(D), 0B);
  memset (&flags, 0, 156);
  flags[13] = 1;
  flags[19] = 1;
  D.43274_255 = switch_media_handle_test_media_flag (smh_46, 10);
  if (D.43274_255 == 0)
    goto <bb 80>;
  else
    goto <bb 84>;

<bb 80>:
  D.43073_256 = session_45(D)->channel;
  D.43277_257 = switch_channel_test_flag (D.43073_256, 106);
  if (D.43277_257 == 0)
    goto <bb 81>;
  else
    goto <bb 84>;

<bb 81>:
  D.43073_258 = session_45(D)->channel;
  val_259 = switch_channel_get_variable_dup (D.43073_258, "disable_rtp_auto_adjust", 1, -1);
  # DEBUG val => val_259
  if (val_259 == 0B)
    goto <bb 83>;
  else
    goto <bb 82>;

<bb 82>:
  D.43281_260 = switch_true (val_259);
  if (D.43281_260 == 0)
    goto <bb 83>;
  else
    goto <bb 84>;

<bb 83>:
  D.43114_261 = flags[7];
  D.43115_262 = D.43114_261 + 1;
  flags[7] = D.43115_262;

<bb 84>:
  # DEBUG timer_name => 0B
  D.43073_264 = session_45(D)->channel;
  D.43282_265 = switch_channel_get_name (D.43073_264);
  D.43171_271 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].cur_payload_map;
  D.43172_272 = D.43171_271->remote_sdp_ip;
  D.43174_274 = D.43171_271->remote_sdp_port;
  D.43179_275 = (int) D.43174_274;
  D.43187_277 = D.43171_271->agreed_pt;
  D.43188_278 = (int) D.43187_277;
  D.43189_279 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].read_impl.microseconds_per_packet;
  D.43190_280 = D.43189_279 / 1000;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4906, session_45(D), 7, "PROXY AUDIO RTP [%s] %s:%d->%s:%d codec: %u ms: %d\n", D.43282_265, D.43172_272, D.43179_275, D.43172_272, D.43179_275, D.43188_278, D.43190_280);
  D.43077_281 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  D.43283_282 = switch_rtp_ready (D.43077_281);
  if (D.43283_282 != 0)
    goto <bb 85>;
  else
    goto <bb 88>;

<bb 85>:
  D.43077_283 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  D.43171_284 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].cur_payload_map;
  D.43187_285 = D.43171_284->agreed_pt;
  switch_rtp_set_default_payload (D.43077_283, D.43187_285);
  goto <bb 88>;

<bb 86>:
  D.43099_286 = smh_46->mparams;
  timer_name_287 = D.43099_286->timer_name;
  # DEBUG timer_name => timer_name_287
  D.43073_288 = session_45(D)->channel;
  var_289 = switch_channel_get_variable_dup (D.43073_288, "rtp_timer_name", 1, -1);
  # DEBUG var => var_289
  if (var_289 != 0B)
    goto <bb 88>;
  else
    goto <bb 87>;

<bb 87>:

<bb 88>:
  # timer_name_6 = PHI <0B(85), timer_name_287(87), var_289(86), 0B(84)>
  # DEBUG timer_name => timer_name_6
  D.43073_291 = session_45(D)->channel;
  D.43291_292 = switch_channel_check_signal (D.43073_291, 1);
  if (D.43291_292 != 0)
    goto <bb 90>;
  else
    goto <bb 89>;

<bb 89>:
  D.43073_293 = session_45(D)->channel;
  D.43293_294 = switch_channel_get_state (D.43073_293);
  if (D.43293_294 <= 9)
    goto <bb 90>;
  else
    goto <bb 92>;

<bb 90>:
  D.43184_295 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].local_sdp_ip;
  D.43185_296 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].local_sdp_port;
  D.43171_297 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].cur_payload_map;
  D.43172_298 = D.43171_297->remote_sdp_ip;
  D.43174_300 = D.43171_297->remote_sdp_port;
  D.43187_302 = D.43171_297->agreed_pt;
  D.43294_303 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].read_impl.samples_per_packet;
  D.43295_305 = D.43171_297->codec_ms;
  D.43296_306 = D.43295_305 * 1000;
  D.43297_307 = switch_core_session_get_pool (session_45(D));
  D.43298_308 = switch_rtp_new (D.43184_295, D.43185_296, D.43172_298, D.43174_300, D.43187_302, D.43294_303, D.43296_306, &flags, timer_name_6, &err, D.43297_307);
  MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session = D.43298_308;
  D.43299_310 = switch_rtp_ready (D.43298_308);
  if (D.43299_310 != 0)
    goto <bb 91>;
  else
    goto <bb 92>;

<bb 91>:
  D.43077_311 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  D.43302_312 = &MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].payload_map;
  switch_rtp_set_payload_map (D.43077_311, D.43302_312);

<bb 92>:
  D.43077_313 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  D.43303_314 = switch_rtp_ready (D.43077_313);
  if (D.43303_314 != 0)
    goto <bb 93>;
  else
    goto <bb 303>;

<bb 93>:
  D.43099_315 = smh_46->mparams;
  D.43306_316 = D.43099_315->vflags;
  D.43307_317 = (uint8_t) D.43306_316;
  vad_in_318 = D.43307_317 & 1;
  # DEBUG vad_in => vad_in_318
  vad_out_322 = D.43307_317 & 2;
  # DEBUG vad_out => vad_out_322
  D.43073_323 = session_45(D)->channel;
  D.43308_324 = switch_channel_direction (D.43073_323);
  inb_325 = D.43308_324 == 0;
  # DEBUG inb => inb_325
  D.43309_326 = &MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].read_mutex;
  D.43310_327 = switch_core_session_get_pool (session_45(D));
  switch_mutex_init (D.43309_326, 1, D.43310_327);
  D.43073_328 = session_45(D)->channel;
  ssrc_329 = switch_channel_get_variable_dup (D.43073_328, "rtp_use_ssrc", 1, -1);
  # DEBUG ssrc => ssrc_329
  if (ssrc_329 != 0B)
    goto <bb 94>;
  else
    goto <bb 95>;

<bb 94>:
  ssrc_ul_330 = strtoul (ssrc_329, 0B, 10);
  # DEBUG ssrc_ul => ssrc_ul_330
  D.43077_331 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  switch_rtp_set_ssrc (D.43077_331, ssrc_ul_330);
  MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].ssrc = ssrc_ul_330;
  goto <bb 96>;

<bb 95>:
  D.43077_332 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  D.43314_333 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].ssrc;
  switch_rtp_set_ssrc (D.43077_332, D.43314_333);

<bb 96>:
  D.43315_334 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].remote_ssrc;
  if (D.43315_334 != 0)
    goto <bb 97>;
  else
    goto <bb 98>;

<bb 97>:
  D.43077_335 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  switch_rtp_set_remote_ssrc (D.43077_335, D.43315_334);

<bb 98>:
  D.43073_337 = session_45(D)->channel;
  switch_channel_set_flag_value (D.43073_337, 36, 1);
  D.43073_338 = session_45(D)->channel;
  D.43171_339 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].cur_payload_map;
  D.43187_340 = D.43171_339->agreed_pt;
  D.43188_341 = (int) D.43187_340;
  switch_channel_set_variable_printf (D.43073_338, "rtp_use_pt", "%d", D.43188_341);
  D.43073_342 = session_45(D)->channel;
  val_343 = switch_channel_get_variable_dup (D.43073_342, "rtp_enable_vad_in", 1, -1);
  # DEBUG val => val_343
  if (val_343 != 0B)
    goto <bb 99>;
  else
    goto <bb 101>;

<bb 99>:
  D.43320_344 = switch_true (val_343);
  if (D.43320_344 != 0)
    goto <bb 100>;
  else
    goto <bb 101>;

<bb 100>:
  # DEBUG vad_in => 1

<bb 101>:
  # vad_in_9 = PHI <vad_in_318(98), vad_in_318(99), 1(100)>
  # DEBUG vad_in => vad_in_9
  D.43073_346 = session_45(D)->channel;
  val_347 = switch_channel_get_variable_dup (D.43073_346, "rtp_enable_vad_out", 1, -1);
  # DEBUG val => val_347
  if (val_347 != 0B)
    goto <bb 102>;
  else
    goto <bb 104>;

<bb 102>:
  D.43325_348 = switch_true (val_347);
  if (D.43325_348 != 0)
    goto <bb 103>;
  else
    goto <bb 104>;

<bb 103>:
  # DEBUG vad_out => 1

<bb 104>:
  # vad_out_11 = PHI <vad_out_322(101), vad_out_322(102), 1(103)>
  # DEBUG vad_out => vad_out_11
  D.43073_350 = session_45(D)->channel;
  val_351 = switch_channel_get_variable_dup (D.43073_350, "rtp_disable_vad_in", 1, -1);
  # DEBUG val => val_351
  if (val_351 != 0B)
    goto <bb 105>;
  else
    goto <bb 107>;

<bb 105>:
  D.43330_352 = switch_true (val_351);
  if (D.43330_352 != 0)
    goto <bb 106>;
  else
    goto <bb 107>;

<bb 106>:
  # DEBUG vad_in => 0

<bb 107>:
  # vad_in_10 = PHI <vad_in_9(104), vad_in_9(105), 0(106)>
  # DEBUG vad_in => vad_in_10
  D.43073_354 = session_45(D)->channel;
  val_355 = switch_channel_get_variable_dup (D.43073_354, "rtp_disable_vad_out", 1, -1);
  # DEBUG val => val_355
  if (val_355 != 0B)
    goto <bb 108>;
  else
    goto <bb 110>;

<bb 108>:
  D.43335_356 = switch_true (val_355);
  if (D.43335_356 != 0)
    goto <bb 109>;
  else
    goto <bb 110>;

<bb 109>:
  # DEBUG vad_out => 0

<bb 110>:
  # vad_out_12 = PHI <vad_out_11(107), vad_out_11(108), 0(109)>
  # DEBUG vad_out => vad_out_12
  D.43077_358 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  D.43338_359 = switch_rtp_get_ssrc (D.43077_358);
  MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].ssrc = D.43338_359;
  D.43073_360 = session_45(D)->channel;
  switch_channel_set_variable_printf (D.43073_360, "rtp_use_ssrc", "%u", D.43338_359);
  D.43099_362 = smh_46->mparams;
  D.43339_363 = D.43099_362->auto_rtp_bugs;
  D.43340_364 = D.43339_363 & 4;
  if (D.43340_364 != 0)
    goto <bb 111>;
  else
    goto <bb 112>;

<bb 111>:
  D.43343_365 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_bugs;
  D.43344_366 = D.43343_365 | 4;
  MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_bugs = D.43344_366;

<bb 112>:
  D.43073_367 = session_45(D)->channel;
  val_368 = switch_channel_get_variable_dup (D.43073_367, "rtp_manual_rtp_bugs", 1, -1);
  # DEBUG val => val_368
  if (val_368 != 0B)
    goto <bb 113>;
  else
    goto <bb 114>;

<bb 113>:
  D.43347_369 = &MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_bugs;
  switch_core_media_parse_rtp_bugs (D.43347_369, val_368);

<bb 114>:
  D.43077_370 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  D.43343_371 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_bugs;
  D.43099_372 = smh_46->mparams;
  D.43348_373 = D.43099_372->manual_rtp_bugs;
  D.43349_374 = D.43343_371 | D.43348_373;
  switch_rtp_intentional_bugs (D.43077_370, D.43349_374);
  D.43352_375 = (_Bool) vad_in_10;
  D.43353_376 = (_Bool) inb_325;
  D.43354_377 = D.43352_375 & D.43353_376;
  if (D.43354_377 != 0)
    goto <bb 310>;
  else
    goto <bb 115>;

<bb 115>:
  D.43356_378 = vad_out_12 != 0;
  D.43357_379 = inb_325 == 0;
  D.43358_380 = D.43356_378 & D.43357_379;
  if (D.43358_380 != 0)
    goto <bb 116>;
  else
    goto <bb 121>;

<bb 116>:
  D.43077_381 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  D.43359_382 = &MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].read_codec;
  switch_rtp_enable_vad (D.43077_381, session_45(D), D.43359_382, 7);
  D.43360_383 = switch_core_session_get_channel (session_45(D));
  D.43361_384 = switch_channel_get_name (D.43360_383);
  if (vad_in_10 != 0)
    goto <bb 118>;
  else
    goto <bb 117>;

<bb 117>:

<bb 118>:
  # iftmp.47_29 = PHI <"in"(116), ""(117), "in"(310)>
  # D.43361_251 = PHI <D.43361_384(116), D.43361_384(117), D.43361_309(310)>
  if (vad_out_12 != 0)
    goto <bb 120>;
  else
    goto <bb 119>;

<bb 119>:

<bb 120>:
  # iftmp.48_30 = PHI <"out"(118), ""(119)>
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5001, session_45(D), 7, "AUDIO RTP Engage VAD for %s ( %s %s )\n", D.43361_251, iftmp.47_29, iftmp.48_30);

<bb 121>:
  D.43370_389 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].ice_in.chosen[0];
  D.43371_390 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].ice_in.cands[D.43370_389][0].ready;
  if (D.43371_390 != 0)
    goto <bb 122>;
  else
    goto <bb 125>;

<bb 122>:
  gen_ice (session_45(D), 0, 0B, 0);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5010, session_45(D), 6, "Activating Audio ICE\n");
  D.43077_391 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  D.43374_392 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].ice_in.ufrag;
  D.43375_393 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].ice_out.ufrag;
  D.43376_394 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].ice_out.pwd;
  D.43377_395 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].ice_in.pwd;
  D.43379_396 = switch_ice_direction (session_45(D));
  if (D.43379_396 == 1)
    goto <bb 124>;
  else
    goto <bb 123>;

<bb 123>:

<bb 124>:
  # iftmp.49_31 = PHI <2(122), 6(123)>
  D.43383_399 = &MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].ice_in;
  switch_rtp_activate_ice (D.43077_391, D.43374_392, D.43375_393, D.43376_394, D.43377_395, 0, iftmp.49_31, D.43383_399);

<bb 125>:
  D.43073_400 = session_45(D)->channel;
  val_401 = switch_channel_get_variable_dup (D.43073_400, "rtcp_audio_interval_msec", 1, -1);
  # DEBUG val => val_401
  if (val_401 != 0B)
    goto <bb 127>;
  else
    goto <bb 126>;

<bb 126>:
  D.43099_402 = smh_46->mparams;
  val_403 = D.43099_402->rtcp_audio_interval_msec;
  # DEBUG val => val_403
  if (val_403 != 0B)
    goto <bb 127>;
  else
    goto <bb 142>;

<bb 127>:
  # val_1 = PHI <val_401(125), val_403(126)>
  # DEBUG val => val_1
  D.43073_404 = session_45(D)->channel;
  rport_405 = switch_channel_get_variable_dup (D.43073_404, "rtp_remote_audio_rtcp_port", 1, -1);
  # DEBUG rport => rport_405
  remote_rtcp_port_406 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].remote_rtcp_port;
  # DEBUG remote_rtcp_port => remote_rtcp_port_406
  D.43387_407 = remote_rtcp_port_406 == 0;
  D.43388_408 = rport_405 != 0B;
  D.43389_409 = D.43387_407 & D.43388_408;
  if (D.43389_409 != 0)
    goto <bb 128>;
  else
    goto <bb 129>;

<bb 128>:
  # DEBUG __nptr => rport_405
  D.48085_1338 = strtol (rport_405, 0B, 10);
  remote_rtcp_port_411 = (switch_port_t) D.48085_1338;
  # DEBUG remote_rtcp_port => remote_rtcp_port_411

<bb 129>:
  # remote_rtcp_port_13 = PHI <remote_rtcp_port_406(127), remote_rtcp_port_411(128)>
  # DEBUG remote_rtcp_port => remote_rtcp_port_13
  D.43393_412 = strcasecmp (val_1, "passthru");
  if (D.43393_412 == 0)
    goto <bb 130>;
  else
    goto <bb 131>;

<bb 130>:
  D.43396_413 = (int) remote_rtcp_port_13;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5043, session_45(D), 6, "Activating RTCP PASSTHRU PORT %d\n", D.43396_413);
  D.43077_414 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  D.43397_415 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtcp_mux;
  D.43398_416 = D.43397_415 > 0;
  switch_rtp_activate_rtcp (D.43077_414, -1, remote_rtcp_port_13, D.43398_416);
  goto <bb 134>;

<bb 131>:
  # DEBUG __nptr => val_1
  interval_1339 = strtol (val_1, 0B, 10);
  # DEBUG interval => NULL
  interval.50_418 = (unsigned int) interval_1339;
  D.43401_419 = interval.50_418 + 4294967196;
  if (D.43401_419 > 499900)
    goto <bb 132>;
  else
    goto <bb 133>;

<bb 132>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5048, session_45(D), 3, "Invalid rtcp interval spec [%d] must be between 100 and 500000\n", interval_1339);
  # DEBUG interval => 10000

<bb 133>:
  # interval_14 = PHI <interval_1339(131), 10000(132)>
  # DEBUG interval => interval_14
  D.43396_421 = (int) remote_rtcp_port_13;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5053, session_45(D), 6, "Activating RTCP PORT %d\n", D.43396_421);
  D.43077_422 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  D.43397_423 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtcp_mux;
  D.43398_424 = D.43397_423 > 0;
  switch_rtp_activate_rtcp (D.43077_422, interval_14, remote_rtcp_port_13, D.43398_424);

<bb 134>:
  D.43404_425 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].ice_in.chosen[1];
  D.43405_426 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].ice_in.cands[D.43404_425][1].ready;
  if (D.43405_426 != 0)
    goto <bb 135>;
  else
    goto <bb 142>;

<bb 135>:
  D.43397_427 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtcp_mux;
  if (D.43397_427 > 0)
    goto <bb 136>;
  else
    goto <bb 139>;

<bb 136>:
  D.43411_429 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].ice_in.cands[D.43404_425][1].con_addr;
  D.43370_430 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].ice_in.chosen[0];
  D.43412_431 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].ice_in.cands[D.43370_430][0].con_addr;
  D.39377_432 = __builtin_strcmp (D.43411_429, D.43412_431);
  if (D.39377_432 == 0)
    goto <bb 137>;
  else
    goto <bb 139>;

<bb 137>:
  D.43414_434 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].ice_in.cands[D.43404_425][1].con_port;
  D.43415_436 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].ice_in.cands[D.43370_430][0].con_port;
  if (D.43414_434 == D.43415_436)
    goto <bb 138>;
  else
    goto <bb 139>;

<bb 138>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5061, session_45(D), 6, "Skipping RTCP ICE (Same as RTP)\n");
  goto <bb 142>;

<bb 139>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5063, session_45(D), 6, "Activating RTCP ICE\n");
  D.43077_437 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  D.43374_438 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].ice_in.ufrag;
  D.43375_439 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].ice_out.ufrag;
  D.43376_440 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].ice_out.pwd;
  D.43377_441 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].ice_in.pwd;
  D.43418_442 = switch_ice_direction (session_45(D));
  if (D.43418_442 == 1)
    goto <bb 141>;
  else
    goto <bb 140>;

<bb 140>:

<bb 141>:
  # iftmp.51_32 = PHI <2(139), 6(140)>
  D.43383_445 = &MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].ice_in;
  switch_rtp_activate_ice (D.43077_437, D.43374_438, D.43375_439, D.43376_440, D.43377_441, 1, iftmp.51_32, D.43383_445);

<bb 142>:
  # DEBUG D#90 => &MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].local_dtls_fingerprint.str
  # DEBUG s => D#90
  D.48092_1340 = MEM[(const char *)smh_46 + 10984B];
  if (D.48092_1340 == 0)
    goto <bb 155>;
  else
    goto <bb 311>;

<bb 143>:
  D.43429_449 = smh_46->session;
  D.43430_450 = dtls_ok (D.43429_449);
  if (D.43430_450 != 0)
    goto <bb 144>;
  else
    goto <bb 155>;

<bb 144>:
  D.43429_451 = smh_46->session;
  D.43434_452 = D.43429_451->channel;
  D.43435_453 = switch_channel_direction (D.43434_452);
  if (D.43435_453 == 0)
    goto <bb 146>;
  else
    goto <bb 145>;

<bb 145>:

<bb 146>:
  # dtype_33 = PHI <1(144), 2(145)>
  # DEBUG dtype => dtype_33
  D.43429_457 = smh_46->session;
  D.43434_458 = D.43429_457->channel;
  D.43439_459 = switch_channel_test_flag (D.43434_458, 112);
  if (D.43439_459 != 0)
    goto <bb 147>;
  else
    goto <bb 149>;

<bb 147>:
  if (dtype_33 == 1)
    goto <bb 148>;
  else
    goto <bb 149>;

<bb 148>:

<bb 149>:
  # dtype_16 = PHI <dtype_33(146), 1(147), 2(148)>
  # DEBUG dtype => dtype_16
  # DEBUG xtype => 4
  D.43397_464 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtcp_mux;
  if (D.43397_464 > 0)
    goto <bb 150>;
  else
    goto <bb 152>;

<bb 150>:
  D.43099_465 = smh_46->mparams;
  D.43448_466 = D.43099_465->rtcp_audio_interval_msec;
  if (D.43448_466 != 0B)
    goto <bb 151>;
  else
    goto <bb 152>;

<bb 151>:
  # DEBUG xtype => 12

<bb 152>:
  # xtype_15 = PHI <4(149), 4(150), 12(151)>
  # DEBUG xtype => xtype_15
  D.43077_468 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  D.43451_469 = &MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].local_dtls_fingerprint;
  D.43452_470 = &MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].remote_dtls_fingerprint;
  D.43453_471 = dtype_16 | xtype_15;
  switch_rtp_add_dtls (D.43077_468, D.43451_469, D.43452_470, D.43453_471);
  D.43397_472 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtcp_mux;
  if (D.43397_472 <= 0)
    goto <bb 153>;
  else
    goto <bb 155>;

<bb 153>:
  D.43099_473 = smh_46->mparams;
  D.43448_474 = D.43099_473->rtcp_audio_interval_msec;
  if (D.43448_474 != 0B)
    goto <bb 154>;
  else
    goto <bb 155>;

<bb 154>:
  # DEBUG xtype => 8
  D.43077_476 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  D.43453_479 = dtype_16 | 8;
  switch_rtp_add_dtls (D.43077_476, D.43451_469, D.43452_470, D.43453_479);

<bb 155>:
  D.43073_480 = session_45(D)->channel;
  val_481 = switch_channel_get_variable_dup (D.43073_480, "jitterbuffer_msec", 1, -1);
  # DEBUG val => val_481
  if (val_481 != 0B)
    goto <bb 157>;
  else
    goto <bb 156>;

<bb 156>:
  D.43099_482 = smh_46->mparams;
  val_483 = D.43099_482->jb_msec;
  # DEBUG val => val_483
  if (val_483 != 0B)
    goto <bb 157>;
  else
    goto <bb 174>;

<bb 157>:
  # val_2 = PHI <val_481(155), val_483(156)>
  # DEBUG val => val_2
  # DEBUG __nptr => val_2
  jb_msec_1342 = strtol (val_2, 0B, 10);
  # DEBUG jb_msec => NULL
  # DEBUG maxlen => 0
  # DEBUG max_drift => 0
  p_487 = __builtin_strchr (val_2, 58);
  # DEBUG p => p_487
  if (p_487 != 0B)
    goto <bb 158>;
  else
    goto <bb 160>;

<bb 158>:
  p_488 = p_487 + 1;
  # DEBUG p => p_488
  # DEBUG __nptr => p_488
  maxlen_1343 = strtol (p_488, 0B, 10);
  # DEBUG maxlen => NULL
  q_490 = __builtin_strchr (p_488, 58);
  # DEBUG q => q_490
  if (q_490 != 0B)
    goto <bb 159>;
  else
    goto <bb 160>;

<bb 159>:
  q_491 = q_490 + 1;
  # DEBUG q => q_491
  # DEBUG __nptr => q_491
  D.48101_1344 = strtol (q_491, 0B, 10);
  max_drift_493 = ABS_EXPR <D.48101_1344>;
  # DEBUG max_drift => max_drift_493

<bb 160>:
  # maxlen_18 = PHI <0(157), maxlen_1343(158), maxlen_1343(159)>
  # max_drift_19 = PHI <0(157), 0(158), max_drift_493(159)>
  # DEBUG max_drift => max_drift_19
  # DEBUG maxlen => maxlen_18
  jb_msec.54_494 = (unsigned int) jb_msec_1342;
  D.43467_495 = jb_msec.54_494 + 9;
  if (D.43467_495 <= 8)
    goto <bb 161>;
  else
    goto <bb 162>;

<bb 161>:
  D.43470_496 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].read_codec.implementation;
  D.43471_497 = D.43470_496->microseconds_per_packet;
  D.43472_498 = D.43471_497 / 1000;
  D.43473_499 = -jb_msec_1342;
  jb_msec_500 = D.43472_498 * D.43473_499;
  # DEBUG jb_msec => jb_msec_500

<bb 162>:
  # jb_msec_17 = PHI <jb_msec_1342(160), jb_msec_500(161)>
  # DEBUG jb_msec => jb_msec_17
  jb_msec.54_501 = (unsigned int) jb_msec_17;
  D.43474_502 = jb_msec.54_501 + 4294967276;
  if (D.43474_502 > 9980)
    goto <bb 163>;
  else
    goto <bb 164>;

<bb 163>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5125, session_45(D), 3, "Invalid Jitterbuffer spec [%d] must be between 20 and 10000\n", jb_msec_17);
  goto <bb 174>;

<bb 164>:
  # DEBUG maxqlen => 50
  D.43189_504 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].read_impl.microseconds_per_packet;
  D.43190_505 = D.43189_504 / 1000;
  qlen_506 = jb_msec_17 / D.43190_505;
  # DEBUG qlen => qlen_506
  if (qlen_506 <= 0)
    goto <bb 166>;
  else
    goto <bb 165>;

<bb 165>:

<bb 166>:
  # qlen_20 = PHI <qlen_506(165), 3(164)>
  # DEBUG qlen => qlen_20
  if (maxlen_18 != 0)
    goto <bb 167>;
  else
    goto <bb 168>;

<bb 167>:
  maxqlen_510 = maxlen_18 / D.43190_505;
  # DEBUG maxqlen => maxqlen_510

<bb 168>:
  # maxqlen_21 = PHI <50(166), maxqlen_510(167)>
  # DEBUG maxqlen => maxqlen_21
  if (maxqlen_21 < qlen_20)
    goto <bb 169>;
  else
    goto <bb 170>;

<bb 169>:
  maxqlen_511 = qlen_20 * 5;
  # DEBUG maxqlen => maxqlen_511

<bb 170>:
  # maxqlen_22 = PHI <maxqlen_21(168), maxqlen_511(169)>
  # DEBUG maxqlen => maxqlen_22
  D.43077_512 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  qlen.55_513 = (uint32_t) qlen_20;
  maxqlen.56_514 = (uint32_t) maxqlen_22;
  D.43294_515 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].read_impl.samples_per_packet;
  D.43486_516 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].read_impl.samples_per_second;
  max_drift.57_517 = (uint32_t) max_drift_19;
  D.43488_518 = switch_rtp_activate_jitter_buffer (D.43077_512, qlen.55_513, maxqlen.56_514, D.43294_515, D.43486_516, max_drift.57_517);
  if (D.43488_518 == 0)
    goto <bb 171>;
  else
    goto <bb 173>;

<bb 171>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5146, session_45(D), 7, "Setting Jitterbuffer to %dms (%d frames)\n", jb_msec_17, qlen_20);
  D.43073_519 = session_45(D)->channel;
  switch_channel_set_flag_value (D.43073_519, 57, 1);
  D.43073_520 = session_45(D)->channel;
  D.43491_521 = switch_channel_get_variable_dup (D.43073_520, "rtp_jitter_buffer_plc", 1, -1);
  D.43492_522 = switch_false (D.43491_521);
  if (D.43492_522 == 0)
    goto <bb 172>;
  else
    goto <bb 174>;

<bb 172>:
  D.43073_523 = session_45(D)->channel;
  switch_channel_set_flag_value (D.43073_523, 58, 1);
  goto <bb 174>;

<bb 173>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5153, session_45(D), 4, "Error Setting Jitterbuffer to %dms (%d frames)\n", jb_msec_17, qlen_20);

<bb 174>:
  D.43073_524 = session_45(D)->channel;
  val_525 = switch_channel_get_variable_dup (D.43073_524, "rtp_timeout_sec", 1, -1);
  # DEBUG val => val_525
  if (val_525 != 0B)
    goto <bb 175>;
  else
    goto <bb 177>;

<bb 175>:
  # DEBUG __nptr => val_525
  v_1345 = strtol (val_525, 0B, 10);
  # DEBUG v => NULL
  if (v_1345 >= 0)
    goto <bb 176>;
  else
    goto <bb 177>;

<bb 176>:
  D.43099_527 = smh_46->mparams;
  v.58_528 = (uint32_t) v_1345;
  D.43099_527->rtp_timeout_sec = v.58_528;

<bb 177>:
  D.43073_529 = session_45(D)->channel;
  val_530 = switch_channel_get_variable_dup (D.43073_529, "rtp_hold_timeout_sec", 1, -1);
  # DEBUG val => val_530
  if (val_530 != 0B)
    goto <bb 178>;
  else
    goto <bb 180>;

<bb 178>:
  # DEBUG __nptr => val_530
  v_1346 = strtol (val_530, 0B, 10);
  # DEBUG v => NULL
  if (v_1346 >= 0)
    goto <bb 179>;
  else
    goto <bb 180>;

<bb 179>:
  D.43099_532 = smh_46->mparams;
  v.59_533 = (uint32_t) v_1346;
  D.43099_532->rtp_hold_timeout_sec = v.59_533;

<bb 180>:
  D.43099_534 = smh_46->mparams;
  D.43506_535 = D.43099_534->rtp_timeout_sec;
  if (D.43506_535 != 0)
    goto <bb 181>;
  else
    goto <bb 183>;

<bb 181>:
  D.43486_536 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].read_impl.samples_per_second;
  D.43509_539 = D.43506_535 * D.43486_536;
  D.43294_540 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].read_impl.samples_per_packet;
  D.43510_541 = D.43509_539 / D.43294_540;
  MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].max_missed_packets = D.43510_541;
  D.43077_542 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  switch_rtp_set_max_missed_packets (D.43077_542, D.43510_541);
  D.43099_544 = smh_46->mparams;
  D.43512_545 = D.43099_544->rtp_hold_timeout_sec;
  if (D.43512_545 == 0)
    goto <bb 182>;
  else
    goto <bb 183>;

<bb 182>:
  D.43506_548 = D.43099_544->rtp_timeout_sec;
  D.43515_549 = D.43506_548 * 10;
  D.43099_544->rtp_hold_timeout_sec = D.43515_549;

<bb 183>:
  D.43099_550 = smh_46->mparams;
  D.43512_551 = D.43099_550->rtp_hold_timeout_sec;
  if (D.43512_551 != 0)
    goto <bb 184>;
  else
    goto <bb 185>;

<bb 184>:
  D.43486_552 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].read_impl.samples_per_second;
  D.43518_555 = D.43512_551 * D.43486_552;
  D.43294_556 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].read_impl.samples_per_packet;
  D.43519_557 = D.43518_555 / D.43294_556;
  MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].max_missed_hold_packets = D.43519_557;

<bb 185>:
  D.43520_559 = D.43099_550->te;
  if (D.43520_559 != 0)
    goto <bb 186>;
  else
    goto <bb 187>;

<bb 186>:
  D.43523_562 = (int) D.43520_559;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5188, session_45(D), 7, "Set 2833 dtmf send payload to %u\n", D.43523_562);
  D.43077_563 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  D.43099_564 = smh_46->mparams;
  D.43520_565 = D.43099_564->te;
  switch_rtp_set_telephony_event (D.43077_563, D.43520_565);
  D.43073_566 = session_45(D)->channel;
  D.43099_567 = smh_46->mparams;
  D.43520_568 = D.43099_567->te;
  D.43523_569 = (int) D.43520_568;
  switch_channel_set_variable_printf (D.43073_566, "rtp_2833_send_payload", "%d", D.43523_569);

<bb 187>:
  D.43099_570 = smh_46->mparams;
  D.43524_571 = D.43099_570->recv_te;
  if (D.43524_571 != 0)
    goto <bb 188>;
  else
    goto <bb 189>;

<bb 188>:
  D.43527_574 = (int) D.43524_571;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5194, session_45(D), 7, "Set 2833 dtmf receive payload to %u\n", D.43527_574);
  D.43077_575 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  D.43099_576 = smh_46->mparams;
  D.43524_577 = D.43099_576->recv_te;
  switch_rtp_set_telephony_recv_event (D.43077_575, D.43524_577);
  D.43073_578 = session_45(D)->channel;
  D.43099_579 = smh_46->mparams;
  D.43524_580 = D.43099_579->recv_te;
  D.43527_581 = (int) D.43524_580;
  switch_channel_set_variable_printf (D.43073_578, "rtp_2833_recv_payload", "%d", D.43527_581);

<bb 189>:
  D.43531_582 = switch_media_handle_test_media_flag (smh_46, 9);
  if (D.43531_582 != 0)
    goto <bb 194>;
  else
    goto <bb 190>;

<bb 190>:
  D.43073_583 = session_45(D)->channel;
  val_584 = switch_channel_get_variable_dup (D.43073_583, "supress_cng", 1, -1);
  # DEBUG val => val_584
  if (val_584 != 0B)
    goto <bb 191>;
  else
    goto <bb 192>;

<bb 191>:
  D.43534_585 = switch_true (val_584);
  if (D.43534_585 != 0)
    goto <bb 194>;
  else
    goto <bb 192>;

<bb 192>:
  D.43073_586 = session_45(D)->channel;
  val_587 = switch_channel_get_variable_dup (D.43073_586, "suppress_cng", 1, -1);
  # DEBUG val => val_587
  if (val_587 != 0B)
    goto <bb 193>;
  else
    goto <bb 195>;

<bb 193>:
  D.43536_588 = switch_true (val_587);
  if (D.43536_588 != 0)
    goto <bb 194>;
  else
    goto <bb 195>;

<bb 194>:
  D.43099_589 = smh_46->mparams;
  D.43099_589->cng_pt = 0;

<bb 195>:
  D.43073_590 = session_45(D)->channel;
  val_591 = switch_channel_get_variable_dup (D.43073_590, "rtp_digit_delay", 1, -1);
  # DEBUG val => val_591
  if (val_591 != 0B)
    goto <bb 196>;
  else
    goto <bb 197>;

<bb 196>:
  # DEBUG __nptr => val_591
  delayi_1347 = strtol (val_591, 0B, 10);
  # DEBUG delayi => NULL
  delayi_273 = MAX_EXPR <delayi_1347, 0>;
  # DEBUG delayi => delayi_273
  D.43099_594 = smh_46->mparams;
  delayi.60_595 = (unsigned int) delayi_273;
  D.43099_594->dtmf_delay = delayi.60_595;

<bb 197>:
  D.43099_596 = smh_46->mparams;
  D.43542_597 = D.43099_596->dtmf_delay;
  if (D.43542_597 != 0)
    goto <bb 198>;
  else
    goto <bb 199>;

<bb 198>:
  D.43077_598 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  switch_rtp_set_interdigit_delay (D.43077_598, D.43542_597);
  D.43073_601 = session_45(D)->channel;
  D.43545_602 = switch_channel_get_name (D.43073_601);
  D.43099_603 = smh_46->mparams;
  D.43542_604 = D.43099_603->dtmf_delay;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5216, session_45(D), 7, "%s Set rtp dtmf delay to %u\n", D.43545_602, D.43542_604);

<bb 199>:
  D.43099_605 = smh_46->mparams;
  D.43143_606 = D.43099_605->cng_pt;
  if (D.43143_606 != 0)
    goto <bb 200>;
  else
    goto <bb 202>;

<bb 200>:
  D.43548_607 = switch_media_handle_test_media_flag (smh_46, 9);
  if (D.43548_607 == 0)
    goto <bb 201>;
  else
    goto <bb 202>;

<bb 201>:
  D.43099_608 = smh_46->mparams;
  D.43143_609 = D.43099_608->cng_pt;
  D.43551_610 = (int) D.43143_609;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5222, session_45(D), 7, "Set comfort noise payload to %u\n", D.43551_610);
  D.43077_611 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  D.43099_612 = smh_46->mparams;
  D.43143_613 = D.43099_612->cng_pt;
  switch_rtp_set_cng_pt (D.43077_611, D.43143_613);

<bb 202>:
  switch_core_session_apply_crypto (session_45(D), 0);
  D.43171_614 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].cur_payload_map;
  D.43174_615 = D.43171_614->remote_sdp_port;
  D.43179_616 = (int) D.43174_615;
  switch_snprintf (&tmp, 50, "%d", D.43179_616);
  D.43073_617 = session_45(D)->channel;
  D.43171_618 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].cur_payload_map;
  D.43172_619 = D.43171_618->remote_sdp_ip;
  switch_channel_set_variable_var_check (D.43073_617, "remote_media_ip", D.43172_619, 1);
  D.43073_620 = session_45(D)->channel;
  switch_channel_set_variable_var_check (D.43073_620, "remote_media_port", &tmp, 1);
  D.43073_621 = session_45(D)->channel;
  D.43552_622 = switch_channel_test_flag (D.43073_621, 74);
  if (D.43552_622 != 0)
    goto <bb 203>;
  else
    goto <bb 204> (video);

<bb 203>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5234, session_45(D), 6, "Activating ZRTP PROXY MODE\n");
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5235, session_45(D), 7, "Disable NOTIMER_DURING_BRIDGE\n");
  D.43073_623 = session_45(D)->channel;
  switch_channel_clear_flag (D.43073_623, 99);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5237, session_45(D), 7, "Activating audio UDPTL mode\n");
  D.43077_624 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  switch_rtp_udptl_mode (D.43077_624);

video:
  # DEBUG status => 0
  D.43073_630 = session_45(D)->channel;
  D.43555_631 = switch_channel_direction (D.43073_630);
  if (D.43555_631 == 1)
    goto <bb 205>;
  else
    goto <bb 206>;

<bb 205>:
  switch_core_media_check_video_codecs (session_45(D));

<bb 206>:
  D.43073_632 = session_45(D)->channel;
  D.43558_633 = switch_channel_test_flag (D.43073_632, 98);
  if (D.43558_633 != 0)
    goto <bb 207>;
  else
    goto <bb 306> (video_up);

<bb 207>:
  D.43561_634 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].cur_payload_map;
  D.43562_635 = D.43561_634->rm_encoding;
  if (D.43562_635 != 0B)
    goto <bb 208>;
  else
    goto <bb 306> (video_up);

<bb 208>:
  D.43565_637 = D.43561_634->remote_sdp_port;
  if (D.43565_637 != 0)
    goto <bb 209>;
  else
    goto <bb 306> (video_up);

<bb 209>:
  D.43096_638 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtp_session;
  if (D.43096_638 != 0B)
    goto <bb 210>;
  else
    goto <bb 216>;

<bb 210>:
  D.43073_639 = session_45(D)->channel;
  D.43570_640 = switch_channel_test_flag (D.43073_639, 103);
  if (D.43570_640 != 0)
    goto <bb 211>;
  else
    goto <bb 216>;

<bb 211>:
  D.43096_641 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtp_session;
  remote_host_642 = switch_rtp_get_remote_host (D.43096_641);
  # DEBUG remote_host => remote_host_642
  D.43096_643 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtp_session;
  remote_port_644 = switch_rtp_get_remote_port (D.43096_643);
  # DEBUG remote_port => remote_port_644
  D.43574_645 = remote_host_642 != 0B;
  D.43575_646 = remote_port_644 != 0;
  D.43576_647 = D.43574_645 & D.43575_646;
  if (D.43576_647 != 0)
    goto <bb 212>;
  else
    goto <bb 215>;

<bb 212>:
  D.43561_648 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].cur_payload_map;
  D.43578_649 = D.43561_648->remote_sdp_ip;
  D.39400_650 = __builtin_strcmp (remote_host_642, D.43578_649);
  if (D.39400_650 == 0)
    goto <bb 213>;
  else
    goto <bb 215>;

<bb 213>:
  D.43565_652 = D.43561_648->remote_sdp_port;
  if (D.43565_652 == remote_port_644)
    goto <bb 214>;
  else
    goto <bb 215>;

<bb 214>:
  D.43073_653 = session_45(D)->channel;
  D.43581_654 = switch_channel_get_name (D.43073_653);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5263, session_45(D), 7, "Video params are unchanged for %s.\n", D.43581_654);
  goto <bb 306> (video_up);

<bb 215>:
  D.43073_655 = session_45(D)->channel;
  D.43582_656 = switch_channel_get_name (D.43073_655);
  D.43583_657 = (int) remote_port_644;
  D.43561_658 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].cur_payload_map;
  D.43578_659 = D.43561_658->remote_sdp_ip;
  D.43565_661 = D.43561_658->remote_sdp_port;
  D.43584_662 = (int) D.43565_661;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5267, session_45(D), 7, "Video params changed for %s from %s:%d to %s:%d\n", D.43582_656, remote_host_642, D.43583_657, D.43578_659, D.43584_662);

<bb 216>:
  D.43073_663 = session_45(D)->channel;
  D.43585_664 = switch_channel_test_flag (D.43073_663, 29);
  if (D.43585_664 == 0)
    goto <bb 217>;
  else
    goto <bb 219>;

<bb 217>:
  D.43096_665 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtp_session;
  D.43588_666 = switch_rtp_ready (D.43096_665);
  if (D.43588_666 != 0)
    goto <bb 218>;
  else
    goto <bb 219>;

<bb 218>:
  D.43073_667 = session_45(D)->channel;
  D.43591_668 = switch_channel_get_name (D.43073_667);
  D.43171_669 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].cur_payload_map;
  D.43172_670 = D.43171_669->remote_sdp_ip;
  D.43592_671 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].local_sdp_port;
  D.43593_672 = (int) D.43592_671;
  D.43561_673 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].cur_payload_map;
  D.43578_674 = D.43561_673->remote_sdp_ip;
  D.43565_676 = D.43561_673->remote_sdp_port;
  D.43584_677 = (int) D.43565_676;
  D.43594_679 = D.43561_673->agreed_pt;
  D.43595_680 = (int) D.43594_679;
  D.43189_681 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].read_impl.microseconds_per_packet;
  D.43190_682 = D.43189_681 / 1000;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5275, session_45(D), 7, "VIDEO RTP [%s] %s port %d -> %s port %d codec: %u ms: %d\n", D.43591_668, D.43172_670, D.43593_672, D.43578_674, D.43584_677, D.43595_680, D.43190_682);
  start_video_thread (session_45(D));
  D.43096_683 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtp_session;
  D.43561_684 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].cur_payload_map;
  D.43594_685 = D.43561_684->agreed_pt;
  switch_rtp_set_default_payload (D.43096_683, D.43594_685);

<bb 219>:
  D.43592_686 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].local_sdp_port;
  D.43593_687 = (int) D.43592_686;
  switch_snprintf (&tmp, 50, "%d", D.43593_687);
  D.43073_688 = session_45(D)->channel;
  D.43191_689 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].adv_sdp_ip;
  switch_channel_set_variable_var_check (D.43073_688, "local_video_ip", D.43191_689, 1);
  D.43073_690 = session_45(D)->channel;
  switch_channel_set_variable_var_check (D.43073_690, "local_video_port", &tmp, 1);
  D.43096_691 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtp_session;
  if (D.43096_691 != 0B)
    goto <bb 220>;
  else
    goto <bb 231>;

<bb 220>:
  D.43073_692 = session_45(D)->channel;
  D.43598_693 = switch_channel_test_flag (D.43073_692, 103);
  if (D.43598_693 != 0)
    goto <bb 221>;
  else
    goto <bb 231>;

<bb 221>:
  # DEBUG rport => 0B
  remote_rtcp_port_695 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].remote_rtcp_port;
  # DEBUG remote_rtcp_port => remote_rtcp_port_695
  if (remote_rtcp_port_695 == 0)
    goto <bb 222>;
  else
    goto <bb 224>;

<bb 222>:
  D.43073_696 = session_45(D)->channel;
  rport_697 = switch_channel_get_variable_dup (D.43073_696, "rtp_remote_video_rtcp_port", 1, -1);
  # DEBUG rport => rport_697
  if (rport_697 != 0B)
    goto <bb 223>;
  else
    goto <bb 224>;

<bb 223>:
  # DEBUG __nptr => rport_697
  D.48113_1348 = strtol (rport_697, 0B, 10);
  remote_rtcp_port_699 = (switch_port_t) D.48113_1348;
  # DEBUG remote_rtcp_port => remote_rtcp_port_699

<bb 224>:
  # remote_rtcp_port_24 = PHI <remote_rtcp_port_695(221), 0(222), remote_rtcp_port_699(223)>
  # DEBUG remote_rtcp_port => remote_rtcp_port_24
  D.43096_700 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtp_session;
  D.43561_701 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].cur_payload_map;
  D.43578_702 = D.43561_701->remote_sdp_ip;
  D.43565_704 = D.43561_701->remote_sdp_port;
  D.43606_705 = switch_rtp_set_remote_address (D.43096_700, D.43578_702, D.43565_704, remote_rtcp_port_24, 1, &err);
  if (D.43606_705 != 0)
    goto <bb 225>;
  else
    goto <bb 226>;

<bb 225>:
  err.45_706 = err;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5306, session_45(D), 3, "VIDEO RTP REPORTS ERROR: [%s]\n", err.45_706);
  goto <bb 306> (video_up);

<bb 226>:
  D.43561_707 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].cur_payload_map;
  D.43578_708 = D.43561_707->remote_sdp_ip;
  D.43565_710 = D.43561_707->remote_sdp_port;
  D.43584_711 = (int) D.43565_710;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5308, session_45(D), 7, "VIDEO RTP CHANGING DEST TO: [%s:%d]\n", D.43578_708, D.43584_711);
  D.43612_712 = switch_media_handle_test_media_flag (smh_46, 10);
  if (D.43612_712 == 0)
    goto <bb 227>;
  else
    goto <bb 306> (video_up);

<bb 227>:
  D.43073_713 = session_45(D)->channel;
  D.43615_714 = switch_channel_test_flag (D.43073_713, 106);
  if (D.43615_714 == 0)
    goto <bb 228>;
  else
    goto <bb 306> (video_up);

<bb 228>:
  D.43073_715 = session_45(D)->channel;
  val_716 = switch_channel_get_variable_dup (D.43073_715, "disable_rtp_auto_adjust", 1, -1);
  # DEBUG val => val_716
  if (val_716 == 0B)
    goto <bb 230>;
  else
    goto <bb 229>;

<bb 229>:
  D.43619_717 = switch_true (val_716);
  if (D.43619_717 == 0)
    goto <bb 230>;
  else
    goto <bb 306> (video_up);

<bb 230>:
  D.43096_718 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtp_session;
  switch_rtp_set_flag (D.43096_718, 7);
  start_video_thread (session_45(D));
  goto <bb 306> (video_up);

<bb 231>:
  D.43073_719 = session_45(D)->channel;
  D.43620_720 = switch_channel_test_flag (D.43073_719, 29);
  if (D.43620_720 != 0)
    goto <bb 232>;
  else
    goto <bb 239>;

<bb 232>:
  switch_core_media_proxy_remote_addr (session_45(D), 0B);
  memset (&flags, 0, 156);
  flags[19] = 1;
  flags[13] = 1;
  D.43625_725 = switch_media_handle_test_media_flag (smh_46, 10);
  if (D.43625_725 == 0)
    goto <bb 233>;
  else
    goto <bb 237>;

<bb 233>:
  D.43073_726 = session_45(D)->channel;
  D.43628_727 = switch_channel_test_flag (D.43073_726, 106);
  if (D.43628_727 == 0)
    goto <bb 234>;
  else
    goto <bb 237>;

<bb 234>:
  D.43073_728 = session_45(D)->channel;
  val_729 = switch_channel_get_variable_dup (D.43073_728, "disable_rtp_auto_adjust", 1, -1);
  # DEBUG val => val_729
  if (val_729 == 0B)
    goto <bb 236>;
  else
    goto <bb 235>;

<bb 235>:
  D.43632_730 = switch_true (val_729);
  if (D.43632_730 == 0)
    goto <bb 236>;
  else
    goto <bb 237>;

<bb 236>:
  D.43114_731 = flags[7];
  D.43115_732 = D.43114_731 + 1;
  flags[7] = D.43115_732;

<bb 237>:
  # DEBUG timer_name => 0B
  D.43073_734 = session_45(D)->channel;
  D.43633_735 = switch_channel_get_name (D.43073_734);
  D.43171_736 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].cur_payload_map;
  D.43172_737 = D.43171_736->remote_sdp_ip;
  D.43592_738 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].local_sdp_port;
  D.43593_739 = (int) D.43592_738;
  D.43561_740 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].cur_payload_map;
  D.43578_741 = D.43561_740->remote_sdp_ip;
  D.43565_743 = D.43561_740->remote_sdp_port;
  D.43584_744 = (int) D.43565_743;
  D.43594_746 = D.43561_740->agreed_pt;
  D.43595_747 = (int) D.43594_746;
  D.43634_748 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].read_impl.microseconds_per_packet;
  D.43635_749 = D.43634_748 / 1000;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5334, session_45(D), 7, "PROXY VIDEO RTP [%s] %s:%d->%s:%d codec: %u ms: %d\n", D.43633_735, D.43172_737, D.43593_739, D.43578_741, D.43584_744, D.43595_747, D.43635_749);
  D.43096_750 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtp_session;
  D.43636_751 = switch_rtp_ready (D.43096_750);
  if (D.43636_751 != 0)
    goto <bb 238>;
  else
    goto <bb 240>;

<bb 238>:
  D.43096_752 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtp_session;
  D.43561_753 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].cur_payload_map;
  D.43594_754 = D.43561_753->agreed_pt;
  switch_rtp_set_default_payload (D.43096_752, D.43594_754);
  goto <bb 240>;

<bb 239>:
  # DEBUG D#24 => smh_46->mparams
  # DEBUG D#23 => D#24->timer_name
  # DEBUG timer_name => D#23
  D.43073_757 = session_45(D)->channel;
  switch_channel_get_variable_dup (D.43073_757, "rtp_timer_name", 1, -1);
  # DEBUG var => NULL

<bb 240>:
  D.43096_760 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtp_session;
  if (D.43096_760 != 0B)
    goto <bb 306> (video_up);
  else
    goto <bb 241>;

<bb 241>:
  D.43592_761 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].local_sdp_port;
  if (D.43592_761 == 0)
    goto <bb 242>;
  else
    goto <bb 243>;

<bb 242>:
  switch_core_media_choose_port (session_45(D), 1, 1);

<bb 243>:
  memset (&flags, 0, 156);
  flags[13] = 1;
  flags[8] = 1;
  D.43647_766 = switch_media_handle_test_media_flag (smh_46, 10);
  if (D.43647_766 == 0)
    goto <bb 244>;
  else
    goto <bb 249>;

<bb 244>:
  D.43073_767 = session_45(D)->channel;
  D.43650_768 = switch_channel_test_flag (D.43073_767, 15);
  if (D.43650_768 == 0)
    goto <bb 245>;
  else
    goto <bb 249>;

<bb 245>:
  D.43073_769 = session_45(D)->channel;
  val_770 = switch_channel_get_variable_dup (D.43073_769, "disable_rtp_auto_adjust", 1, -1);
  # DEBUG val => val_770
  if (val_770 == 0B)
    goto <bb 247>;
  else
    goto <bb 246>;

<bb 246>:
  D.43654_771 = switch_true (val_770);
  if (D.43654_771 == 0)
    goto <bb 247>;
  else
    goto <bb 249>;

<bb 247>:
  D.43073_772 = session_45(D)->channel;
  D.43655_773 = switch_channel_test_flag (D.43073_772, 106);
  if (D.43655_773 == 0)
    goto <bb 248>;
  else
    goto <bb 249>;

<bb 248>:
  D.43114_774 = flags[7];
  D.43115_775 = D.43114_774 + 1;
  flags[7] = D.43115_775;

<bb 249>:
  D.43073_776 = session_45(D)->channel;
  D.43658_777 = switch_channel_test_flag (D.43073_776, 29);
  if (D.43658_777 != 0)
    goto <bb 250>;
  else
    goto <bb 251>;

<bb 250>:
  D.43270_778 = flags[19];
  D.43271_779 = D.43270_778 + 1;
  flags[19] = D.43271_779;

<bb 251>:
  switch_core_media_set_video_codec (session_45(D), 0);
  flags[3] = 0;
  flags[0] = 0;
  D.43661_780 = flags[30];
  D.43662_781 = D.43661_780 + 1;
  flags[30] = D.43662_781;
  D.43184_782 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].local_sdp_ip;
  D.43592_783 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].local_sdp_port;
  D.43561_784 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].cur_payload_map;
  D.43578_785 = D.43561_784->remote_sdp_ip;
  D.43565_787 = D.43561_784->remote_sdp_port;
  D.43594_789 = D.43561_784->agreed_pt;
  D.43663_790 = switch_core_session_get_pool (session_45(D));
  D.43664_791 = switch_rtp_new (D.43184_782, D.43592_783, D.43578_785, D.43565_787, D.43594_789, 1, 90000, &flags, 0B, &err, D.43663_790);
  MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtp_session = D.43664_791;
  D.43073_792 = session_45(D)->channel;
  D.43666_793 = switch_channel_test_flag (D.43073_792, 29);
  if (D.43666_793 != 0)
    goto <bb 253>;
  else
    goto <bb 252>;

<bb 252>:

<bb 253>:
  # iftmp.61_35 = PHI <"PROXY "(251), ""(252)>
  D.43073_796 = session_45(D)->channel;
  D.43670_797 = switch_channel_get_name (D.43073_796);
  D.43171_798 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].cur_payload_map;
  D.43172_799 = D.43171_798->remote_sdp_ip;
  D.43592_800 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].local_sdp_port;
  D.43593_801 = (int) D.43592_800;
  D.43561_802 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].cur_payload_map;
  D.43578_803 = D.43561_802->remote_sdp_ip;
  D.43565_805 = D.43561_802->remote_sdp_port;
  D.43584_806 = (int) D.43565_805;
  D.43594_808 = D.43561_802->agreed_pt;
  D.43595_809 = (int) D.43594_808;
  D.43096_810 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtp_session;
  D.43672_811 = switch_rtp_ready (D.43096_810);
  if (D.43672_811 == 0)
    goto <bb 254>;
  else
    goto <bb 255>;

<bb 254>:
  iftmp.62_812 = err;

<bb 255>:
  # iftmp.62_36 = PHI <iftmp.62_812(254), "SUCCESS"(253)>
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5391, session_45(D), 7, "%sVIDEO RTP [%s] %s:%d->%s:%d codec: %u ms: %d [%s]\n", iftmp.61_35, D.43670_797, D.43172_799, D.43593_801, D.43578_803, D.43584_806, D.43595_809, 0, iftmp.62_36);
  D.43096_814 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtp_session;
  D.43676_815 = switch_rtp_ready (D.43096_814);
  if (D.43676_815 != 0)
    goto <bb 256>;
  else
    goto <bb 300>;

<bb 256>:
  D.43679_816 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].fir;
  if (D.43679_816 != 0)
    goto <bb 257>;
  else
    goto <bb 258>;

<bb 257>:
  D.43096_817 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtp_session;
  switch_rtp_set_flag (D.43096_817, 36);

<bb 258>:
  D.43682_818 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].pli;
  if (D.43682_818 != 0)
    goto <bb 259>;
  else
    goto <bb 260>;

<bb 259>:
  D.43096_819 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtp_session;
  switch_rtp_set_flag (D.43096_819, 37);

<bb 260>:
  D.43096_820 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtp_session;
  D.43685_821 = &MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].payload_map;
  switch_rtp_set_payload_map (D.43096_820, D.43685_821);
  start_video_thread (session_45(D));
  D.43073_822 = session_45(D)->channel;
  switch_channel_set_flag_value (D.43073_822, 23, 1);
  D.43073_823 = session_45(D)->channel;
  ssrc_824 = switch_channel_get_variable_dup (D.43073_823, "rtp_use_video_ssrc", 1, -1);
  # DEBUG ssrc => ssrc_824
  if (ssrc_824 != 0B)
    goto <bb 261>;
  else
    goto <bb 262>;

<bb 261>:
  ssrc_ul_825 = strtoul (ssrc_824, 0B, 10);
  # DEBUG ssrc_ul => ssrc_ul_825
  D.43096_826 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtp_session;
  switch_rtp_set_ssrc (D.43096_826, ssrc_ul_825);
  MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].ssrc = ssrc_ul_825;
  goto <bb 263>;

<bb 262>:
  D.43096_827 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtp_session;
  D.43689_828 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].ssrc;
  switch_rtp_set_ssrc (D.43096_827, D.43689_828);

<bb 263>:
  D.43690_829 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].remote_ssrc;
  if (D.43690_829 != 0)
    goto <bb 264>;
  else
    goto <bb 265>;

<bb 264>:
  D.43096_830 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtp_session;
  switch_rtp_set_remote_ssrc (D.43096_830, D.43690_829);

<bb 265>:
  D.43693_832 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].ice_in.chosen[0];
  D.43694_833 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].ice_in.cands[D.43693_832][0].ready;
  if (D.43694_833 != 0)
    goto <bb 266>;
  else
    goto <bb 269>;

<bb 266>:
  gen_ice (session_45(D), 1, 0B, 0);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5433, session_45(D), 6, "Activating Video ICE\n");
  D.43096_834 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtp_session;
  D.43697_835 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].ice_in.ufrag;
  D.43698_836 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].ice_out.ufrag;
  D.43699_837 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].ice_out.pwd;
  D.43700_838 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].ice_in.pwd;
  D.43702_839 = switch_ice_direction (session_45(D));
  if (D.43702_839 == 1)
    goto <bb 268>;
  else
    goto <bb 267>;

<bb 267>:

<bb 268>:
  # iftmp.63_37 = PHI <2(266), 6(267)>
  D.43706_842 = &MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].ice_in;
  switch_rtp_activate_ice (D.43096_834, D.43697_835, D.43698_836, D.43699_837, D.43700_838, 0, iftmp.63_37, D.43706_842);

<bb 269>:
  D.43073_843 = session_45(D)->channel;
  val_844 = switch_channel_get_variable_dup (D.43073_843, "rtcp_video_interval_msec", 1, -1);
  # DEBUG val => val_844
  if (val_844 != 0B)
    goto <bb 271>;
  else
    goto <bb 270>;

<bb 270>:
  D.43099_845 = smh_46->mparams;
  val_846 = D.43099_845->rtcp_video_interval_msec;
  # DEBUG val => val_846
  if (val_846 != 0B)
    goto <bb 271>;
  else
    goto <bb 286>;

<bb 271>:
  # val_3 = PHI <val_844(269), val_846(270)>
  # DEBUG val => val_3
  D.43073_847 = session_45(D)->channel;
  rport_848 = switch_channel_get_variable_dup (D.43073_847, "rtp_remote_video_rtcp_port", 1, -1);
  # DEBUG rport => rport_848
  remote_port_849 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].remote_rtcp_port;
  # DEBUG remote_port => remote_port_849
  if (rport_848 != 0B)
    goto <bb 272>;
  else
    goto <bb 273>;

<bb 272>:
  # DEBUG __nptr => rport_848
  D.48116_1349 = strtol (rport_848, 0B, 10);
  remote_port_851 = (switch_port_t) D.48116_1349;
  # DEBUG remote_port => remote_port_851

<bb 273>:
  # remote_port_25 = PHI <remote_port_849(271), remote_port_851(272)>
  # DEBUG remote_port => remote_port_25
  D.43713_852 = strcasecmp (val_3, "passthru");
  if (D.43713_852 == 0)
    goto <bb 274>;
  else
    goto <bb 275>;

<bb 274>:
  D.43716_853 = (int) remote_port_25;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5462, session_45(D), 6, "Activating VIDEO RTCP PASSTHRU PORT %d\n", D.43716_853);
  D.43096_854 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtp_session;
  D.43717_855 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtcp_mux;
  D.43718_856 = D.43717_855 > 0;
  switch_rtp_activate_rtcp (D.43096_854, -1, remote_port_25, D.43718_856);
  goto <bb 278>;

<bb 275>:
  # DEBUG __nptr => val_3
  interval_1350 = strtol (val_3, 0B, 10);
  # DEBUG interval => NULL
  interval.64_858 = (unsigned int) interval_1350;
  D.43721_859 = interval.64_858 + 4294967196;
  if (D.43721_859 > 499900)
    goto <bb 276>;
  else
    goto <bb 277>;

<bb 276>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5467, session_45(D), 3, "Invalid rtcp interval spec [%d] must be between 100 and 500000\n", interval_1350);

<bb 277>:
  # DEBUG interval => 10000
  D.43716_861 = (int) remote_port_25;
  D.43717_862 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtcp_mux;
  D.43724_863 = (int) D.43717_862;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5471, session_45(D), 6, "Activating VIDEO RTCP PORT %d mux %d\n", D.43716_861, D.43724_863);
  D.43096_864 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtp_session;
  D.43717_865 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtcp_mux;
  D.43718_866 = D.43717_865 > 0;
  switch_rtp_activate_rtcp (D.43096_864, 10000, remote_port_25, D.43718_866);

<bb 278>:
  D.43725_867 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].ice_in.chosen[1];
  D.43726_868 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].ice_in.cands[D.43725_867][1].ready;
  if (D.43726_868 != 0)
    goto <bb 279>;
  else
    goto <bb 286>;

<bb 279>:
  D.43717_869 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtcp_mux;
  if (D.43717_869 > 0)
    goto <bb 280>;
  else
    goto <bb 283>;

<bb 280>:
  D.43732_871 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].ice_in.cands[D.43725_867][1].con_addr;
  D.43693_872 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].ice_in.chosen[0];
  D.43733_873 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].ice_in.cands[D.43693_872][0].con_addr;
  D.39417_874 = __builtin_strcmp (D.43732_871, D.43733_873);
  if (D.39417_874 == 0)
    goto <bb 281>;
  else
    goto <bb 283>;

<bb 281>:
  D.43735_876 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].ice_in.cands[D.43725_867][1].con_port;
  D.43736_878 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].ice_in.cands[D.43693_872][0].con_port;
  if (D.43735_876 == D.43736_878)
    goto <bb 282>;
  else
    goto <bb 283>;

<bb 282>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5481, session_45(D), 6, "Skipping VIDEO RTCP ICE (Same as VIDEO RTP)\n");
  goto <bb 286>;

<bb 283>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5484, session_45(D), 6, "Activating VIDEO RTCP ICE\n");
  D.43096_879 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtp_session;
  D.43697_880 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].ice_in.ufrag;
  D.43698_881 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].ice_out.ufrag;
  D.43699_882 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].ice_out.pwd;
  D.43700_883 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].ice_in.pwd;
  D.43739_884 = switch_ice_direction (session_45(D));
  if (D.43739_884 == 1)
    goto <bb 285>;
  else
    goto <bb 284>;

<bb 284>:

<bb 285>:
  # iftmp.65_38 = PHI <2(283), 6(284)>
  D.43706_887 = &MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].ice_in;
  switch_rtp_activate_ice (D.43096_879, D.43697_880, D.43698_881, D.43699_882, D.43700_883, 1, iftmp.65_38, D.43706_887);

<bb 286>:
  # DEBUG D#91 => &MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].local_dtls_fingerprint.str
  # DEBUG s => D#91
  D.48123_1351 = MEM[(const char *)smh_46 + 22400B];
  if (D.48123_1351 == 0)
    goto <bb 296>;
  else
    goto <bb 312>;

<bb 287>:
  D.43429_891 = smh_46->session;
  D.43750_892 = dtls_ok (D.43429_891);
  if (D.43750_892 != 0)
    goto <bb 288>;
  else
    goto <bb 296>;

<bb 288>:
  D.43429_893 = smh_46->session;
  D.43434_894 = D.43429_893->channel;
  D.43754_895 = switch_channel_direction (D.43434_894);
  if (D.43754_895 == 0)
    goto <bb 290>;
  else
    goto <bb 289>;

<bb 289>:

<bb 290>:
  # dtype_39 = PHI <1(288), 2(289)>
  # DEBUG dtype => dtype_39
  # DEBUG xtype => 4
  D.43717_900 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtcp_mux;
  if (D.43717_900 > 0)
    goto <bb 291>;
  else
    goto <bb 293>;

<bb 291>:
  D.43099_901 = smh_46->mparams;
  D.43760_902 = D.43099_901->rtcp_video_interval_msec;
  if (D.43760_902 != 0B)
    goto <bb 292>;
  else
    goto <bb 293>;

<bb 292>:
  # DEBUG xtype => 12

<bb 293>:
  # xtype_26 = PHI <4(290), 4(291), 12(292)>
  # DEBUG xtype => xtype_26
  D.43096_904 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtp_session;
  D.43763_905 = &MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].local_dtls_fingerprint;
  D.43764_906 = &MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].remote_dtls_fingerprint;
  D.43765_907 = xtype_26 | dtype_39;
  switch_rtp_add_dtls (D.43096_904, D.43763_905, D.43764_906, D.43765_907);
  D.43717_908 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtcp_mux;
  if (D.43717_908 <= 0)
    goto <bb 294>;
  else
    goto <bb 296>;

<bb 294>:
  D.43099_909 = smh_46->mparams;
  D.43760_910 = D.43099_909->rtcp_video_interval_msec;
  if (D.43760_910 != 0B)
    goto <bb 295>;
  else
    goto <bb 296>;

<bb 295>:
  # DEBUG xtype => 8
  D.43096_912 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtp_session;
  D.43765_915 = dtype_39 | 8;
  switch_rtp_add_dtls (D.43096_912, D.43763_905, D.43764_906, D.43765_915);

<bb 296>:
  D.43073_916 = session_45(D)->channel;
  val_917 = switch_channel_get_variable_dup (D.43073_916, "rtp_manual_video_rtp_bugs", 1, -1);
  # DEBUG val => val_917
  if (val_917 != 0B)
    goto <bb 297>;
  else
    goto <bb 298>;

<bb 297>:
  D.43772_918 = &MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtp_bugs;
  switch_core_media_parse_rtp_bugs (D.43772_918, val_917);

<bb 298>:
  D.43096_919 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtp_session;
  D.43773_920 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtp_bugs;
  D.43099_921 = smh_46->mparams;
  D.43774_922 = D.43099_921->manual_video_rtp_bugs;
  D.43775_923 = D.43773_920 | D.43774_922;
  switch_rtp_intentional_bugs (D.43096_919, D.43775_923);
  D.43073_924 = session_45(D)->channel;
  D.43561_925 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].cur_payload_map;
  D.43594_926 = D.43561_925->agreed_pt;
  D.43595_927 = (int) D.43594_926;
  switch_channel_set_variable_printf (D.43073_924, "rtp_use_video_pt", "%d", D.43595_927);
  D.43096_928 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtp_session;
  D.43776_929 = switch_rtp_get_ssrc (D.43096_928);
  MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].ssrc = D.43776_929;
  D.43073_930 = session_45(D)->channel;
  switch_channel_set_variable_printf (D.43073_930, "rtp_use_video_ssrc", "%u", D.43776_929);
  switch_core_session_apply_crypto (session_45(D), 1);
  D.43073_932 = session_45(D)->channel;
  D.43777_933 = switch_channel_test_flag (D.43073_932, 74);
  if (D.43777_933 != 0)
    goto <bb 299>;
  else
    goto <bb 306> (video_up);

<bb 299>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5542, session_45(D), 7, "Activating video UDPTL mode\n");
  D.43096_934 = MEM[(struct switch_rtp_engine_t *)smh_46 + 11496B].rtp_session;
  switch_rtp_udptl_mode (D.43096_934);
  goto <bb 306> (video_up);

<bb 300>:
  err.45_935 = err;
  if (err.45_935 != 0B)
    goto <bb 301>;
  else
    goto <bb 302>;

<bb 301>:

<bb 302>:
  # iftmp.67_40 = PHI <err.45_935(301), ""(300)>
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5547, session_45(D), 3, "VIDEO RTP REPORTS ERROR: [%s]\n", iftmp.67_40);
  D.43073_938 = session_45(D)->channel;
  switch_channel_perform_hangup (D.43073_938, "src/switch_core_media.c", &__func__, 5548, 27);
  goto <bb 307> (end);

<bb 303>:
  err.45_625 = err;
  if (err.45_625 != 0B)
    goto <bb 304>;
  else
    goto <bb 305>;

<bb 304>:

<bb 305>:
  # iftmp.68_41 = PHI <err.45_625(304), ""(303)>
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5554, session_45(D), 3, "AUDIO RTP REPORTS ERROR: [%s]\n", iftmp.68_41);
  D.43073_628 = session_45(D)->channel;
  switch_channel_perform_hangup (D.43073_628, "src/switch_core_media.c", &__func__, 5555, 27);
  # DEBUG status => 1
  goto <bb 307> (end);

video_up:
  check_dtls_reinvite (session_45(D), v_engine_49);

  # status_5 = PHI <0(11), 0(15), status_73(16), 0(302), 1(305), 0(306), 0(14)>
end:
  # DEBUG status => status_5
  D.43073_943 = session_45(D)->channel;
  switch_channel_clear_flag (D.43073_943, 103);
  switch_core_recovery_track (session_45(D));

<bb 308>:
  # status_27 = PHI <1(4), 1(6), status_5(307), 1(5)>
  return status_27;

<bb 309>:
  goto <bb 35>;

<bb 310>:
  D.43077_1497 = MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].rtp_session;
  D.43359_1498 = &MEM[(struct switch_rtp_engine_t *)smh_46 + 80B].read_codec;
  switch_rtp_enable_vad (D.43077_1497, session_45(D), D.43359_1498, 7);
  D.43360_1525 = switch_core_session_get_channel (session_45(D));
  D.43361_309 = switch_channel_get_name (D.43360_1525);
  goto <bb 118>;

<bb 311>:
  D.43426_448 = switch_rtp_has_dtls ();
  if (D.43426_448 != 0)
    goto <bb 143>;
  else
    goto <bb 155>;

<bb 312>:
  D.43747_890 = switch_rtp_has_dtls ();
  if (D.43747_890 != 0)
    goto <bb 287>;
  else
    goto <bb 296>;

}



;; Function switch_core_media_check_dtmf_type (switch_core_media_check_dtmf_type)

switch_core_media_check_dtmf_type (struct switch_core_session_t * session)
{
  static const char __PRETTY_FUNCTION__[34] = "switch_core_media_check_dtmf_type";
  struct switch_media_handle_t * smh;
  const char * val;
  int D.43062;
  int D.43058;
  struct switch_core_media_params_t * D.43056;
  int D.43053;
  struct switch_channel_t * D.43050;

<bb 2>:
  if (session_1(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 5897, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_2 = session_1(D)->media_handle;
  # DEBUG smh => smh_2
  if (smh_2 == 0B)
    goto <bb 12>;
  else
    goto <bb 5>;

<bb 5>:
  D.43050_3 = session_1(D)->channel;
  val_4 = switch_channel_get_variable_dup (D.43050_3, "dtmf_type", 1, -1);
  # DEBUG val => val_4
  if (val_4 != 0B)
    goto <bb 6>;
  else
    goto <bb 12>;

<bb 6>:
  D.43053_5 = strcasecmp (val_4, "rfc2833");
  if (D.43053_5 == 0)
    goto <bb 7>;
  else
    goto <bb 8>;

<bb 7>:
  D.43056_6 = smh_2->mparams;
  D.43056_6->dtmf_type = 0;
  goto <bb 12>;

<bb 8>:
  D.43058_7 = strcasecmp (val_4, "info");
  if (D.43058_7 == 0)
    goto <bb 9>;
  else
    goto <bb 10>;

<bb 9>:
  D.43056_8 = smh_2->mparams;
  D.43056_8->dtmf_type = 1;
  goto <bb 12>;

<bb 10>:
  D.43062_9 = strcasecmp (val_4, "none");
  if (D.43062_9 == 0)
    goto <bb 11>;
  else
    goto <bb 12>;

<bb 11>:
  D.43056_10 = smh_2->mparams;
  D.43056_10->dtmf_type = 2;

<bb 12>:
  return;

}



;; Function switch_core_media_sdp_map (switch_core_media_sdp_map)

switch_core_media_sdp_map (const char * r_sdp, struct switch_event_t * * fmtp, struct switch_event_t * * pt)
{
  char * br;
  char key[128];
  char buf[25];
  struct sdp_rtpmap_t * map;
  static const char __func__[26] = "switch_core_media_sdp_map";
  struct sdp_session_t * sdp;
  struct sdp_parser_t * parser;
  struct sdp_media_t * m;
  struct switch_event_t * D.43044;
  struct switch_event_t * D.43041;
  int D.43037;
  <unnamed-unsigned:7> D.43036;
  const char * D.43031;
  const char * D.43028;
  sdp_proto_e D.43025;
  switch_status_t D.43022;
  int D.43019;
  size_t D.43018;

<bb 2>:
  # DEBUG parser => 0B
  D.43018_7 = strlen (r_sdp_6(D));
  D.43019_8 = (int) D.43018_7;
  parser_9 = sdp_parse (0B, r_sdp_6(D), D.43019_8, 0);
  # DEBUG parser => parser_9
  if (parser_9 == 0B)
    goto <bb 20>;
  else
    goto <bb 3>;

<bb 3>:
  sdp_11 = sdp_session (parser_9);
  # DEBUG sdp => sdp_11
  if (sdp_11 == 0B)
    goto <bb 4>;
  else
    goto <bb 5>;

<bb 4>:
  sdp_parser_free (parser_9);
  goto <bb 20>;

<bb 5>:
  switch_event_create_subclass_detailed ("src/switch_core_media.c", &__func__, 5930, fmtp_13(D), 62, 0B);
  switch_event_create_subclass_detailed ("src/switch_core_media.c", &__func__, 5931, pt_14(D), 62, 0B);
  m_15 = sdp_11->sdp_media;
  # DEBUG m => m_15
  # DEBUG m => m_15
  if (m_15 != 0B)
    goto <bb 6>;
  else
    goto <bb 19>;

<bb 6>:
  # m_62 = PHI <m_33(18), m_15(5)>
  D.43025_16 = m_62->m_proto;
  if (D.43025_16 == 256)
    goto <bb 7>;
  else
    goto <bb 18>;

<bb 7>:
  map_17 = m_62->m_rtpmaps;
  # DEBUG map => map_17
  # DEBUG map => map_17
  if (map_17 != 0B)
    goto <bb 8>;
  else
    goto <bb 18>;

<bb 8>:
  # map_65 = PHI <map_32(17), map_17(7)>
  D.43028_18 = map_65->rm_encoding;
  if (D.43028_18 != 0B)
    goto <bb 9>;
  else
    goto <bb 17>;

<bb 9>:
  buf = "";
  key = "";
  # DEBUG br => 0B
  D.43031_20 = map_65->rm_fmtp;
  if (D.43031_20 != 0B)
    goto <bb 10>;
  else
    goto <bb 12>;

<bb 10>:
  br_22 = strstr (D.43031_20, "bitrate=");
  # DEBUG br => br_22
  if (br_22 != 0B)
    goto <bb 11>;
  else
    goto <bb 12>;

<bb 11>:
  br_23 = br_22 + 8;
  # DEBUG br => br_23

<bb 12>:
  # br_3 = PHI <0B(9), 0B(10), br_23(11)>
  # DEBUG br => br_3
  D.43036_24 = map_65->rm_pt;
  D.43037_25 = (int) D.43036_24;
  switch_snprintf (&buf, 25, "%d", D.43037_25);
  if (br_3 != 0B)
    goto <bb 13>;
  else
    goto <bb 14>;

<bb 13>:
  D.43028_26 = map_65->rm_encoding;
  switch_snprintf (&key, 128, "%s:%s", D.43028_26, br_3);
  goto <bb 15>;

<bb 14>:
  D.43028_27 = map_65->rm_encoding;
  switch_snprintf (&key, 128, "%s", D.43028_27);

<bb 15>:
  D.43041_28 = *pt_14(D);
  switch_event_add_header_string (D.43041_28, 1, &key, &buf);
  D.43031_29 = map_65->rm_fmtp;
  if (D.43031_29 != 0B)
    goto <bb 16>;
  else
    goto <bb 17>;

<bb 16>:
  D.43044_30 = *fmtp_13(D);
  switch_event_add_header_string (D.43044_30, 1, &key, D.43031_29);

<bb 17>:
  map_32 = map_65->rm_next;
  # DEBUG map => map_32
  # DEBUG map => map_32
  if (map_32 != 0B)
    goto <bb 8>;
  else
    goto <bb 18>;

<bb 18>:
  m_33 = m_62->m_next;
  # DEBUG m => m_33
  # DEBUG m => m_33
  if (m_33 != 0B)
    goto <bb 6>;
  else
    goto <bb 19>;

<bb 19>:
  sdp_parser_free (parser_9);

<bb 20>:
  # D.43022_4 = PHI <1(2), 1(4), 0(19)>
  return D.43022_4;

}



;; Function switch_core_media_set_local_sdp (switch_core_media_set_local_sdp)

switch_core_media_set_local_sdp (struct switch_core_session_t * session, const char * sdp_str, switch_bool_t dup)
{
  static const char __func__[32] = "switch_core_media_set_local_sdp";
  static const char __PRETTY_FUNCTION__[32] = "switch_core_media_set_local_sdp";
  struct switch_media_handle_t * smh;
  char * D.43014;
  struct switch_channel_t * D.43013;
  struct switch_core_media_params_t * D.43008;
  struct switch_mutex_t * D.43005;

<bb 2>:
  if (session_2(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 5978, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_3 = session_2(D)->media_handle;
  # DEBUG smh => smh_3
  if (smh_3 == 0B)
    goto <bb 11>;
  else
    goto <bb 5>;

<bb 5>:
  D.43005_4 = smh_3->sdp_mutex;
  if (D.43005_4 != 0B)
    goto <bb 6>;
  else
    goto <bb 7>;

<bb 6>:
  switch_mutex_lock (D.43005_4);

<bb 7>:
  D.43008_6 = smh_3->mparams;
  if (dup_7(D) != 0)
    goto <bb 8>;
  else
    goto <bb 9>;

<bb 8>:
  sdp_str_9 = switch_core_perform_session_strdup (session_2(D), sdp_str_8(D), "src/switch_core_media.c", &__func__, 5985);

<bb 9>:
  # sdp_str_1 = PHI <sdp_str_9(8), sdp_str_8(D)(7)>
  D.43008_6->local_sdp_str = sdp_str_1;
  D.43013_11 = session_2(D)->channel;
  D.43008_12 = smh_3->mparams;
  D.43014_13 = D.43008_12->local_sdp_str;
  switch_channel_set_variable_var_check (D.43013_11, "rtp_local_sdp_str", D.43014_13, 1);
  D.43005_14 = smh_3->sdp_mutex;
  if (D.43005_14 != 0B)
    goto <bb 10>;
  else
    goto <bb 11>;

<bb 10>:
  switch_mutex_unlock (D.43005_14);

<bb 11>:
  return;

}



;; Function switch_core_media_gen_local_sdp (switch_core_media_gen_local_sdp)

Candidate (39628): already_did
Candidate (39640): already_did
! Disqualifying already_did - No scalar replacements to be created.
! Disqualifying already_did - No scalar replacements to be created.
switch_core_media_gen_local_sdp (struct switch_core_session_t * session, switch_sdp_type_t sdp_type, const char * ip, switch_port_t port, const char * sr, int force)
{
  int cstore.1250;
  int D.50486;
  switch_bool_t D.50485;
  int D.50484;
  int D.50483;
  int D.50482;
  int D.50481;
  int D.50480;
  int D.50479;
  int D.50478;
  int D.50474;
  switch_bool_t D.50473;
  int D.50472;
  int D.50471;
  int D.50470;
  int D.50469;
  int D.50468;
  int D.50467;
  int D.50466;
  int D.50462;
  switch_bool_t D.50461;
  int D.50460;
  int D.50459;
  int D.50458;
  int D.50457;
  int D.50456;
  int D.50455;
  int D.50454;
  int D.50450;
  switch_bool_t D.50449;
  int D.50448;
  int D.50447;
  int D.50446;
  int D.50445;
  int D.50444;
  int D.50443;
  int D.50442;
  int D.50438;
  switch_bool_t D.50437;
  int D.50436;
  int D.50435;
  int D.50434;
  int D.50433;
  int D.50432;
  int D.50431;
  int D.50430;
  int D.50426;
  switch_bool_t D.50425;
  int D.50424;
  int D.50423;
  int D.50422;
  int D.50421;
  int D.50420;
  int D.50419;
  int D.50418;
  int D.50414;
  switch_bool_t D.50413;
  int D.50412;
  int D.50411;
  int D.50410;
  int D.50409;
  int D.50408;
  int D.50407;
  int D.50406;
  int D.50402;
  switch_bool_t D.50401;
  int D.50400;
  int D.50399;
  int D.50398;
  int D.50397;
  int D.50396;
  int D.50395;
  int D.50394;
  int D.50390;
  switch_bool_t D.50389;
  int D.50388;
  int D.50387;
  int D.50386;
  int D.50385;
  int D.50384;
  int D.50383;
  int D.50382;
  int D.50378;
  switch_bool_t D.50377;
  int D.50376;
  int D.50375;
  int D.50374;
  int D.50373;
  int D.50372;
  int D.50371;
  int D.50370;
  const char D.48210;
  const char D.48206;
  const char D.48202;
  const char D.48198;
  const char D.48194;
  const char D.48187;
  const char D.48183;
  const char D.48179;
  const char D.48175;
  const char D.48171;
  const char D.48167;
  const char D.48163;
  const char D.48159;
  const char D.48155;
  const char D.48151;
  const char D.48147;
  const char D.48143;
  const char D.48139;
  const char D.48135;
  const char D.48131;
  switch_rtp_crypto_key_type_t j;
  int i;
  int v;
  int bw;
  const char * vbw;
  char tmp2[11];
  char tmp1[11];
  int channels;
  uint32_t ianacode;
  char * fmtp;
  const struct switch_codec_implementation_t * imp;
  int already_did[128];
  int i;
  struct payload_map_t * pmap;
  const struct switch_codec_implementation_t * imp;
  int already_did[128];
  int i;
  struct payload_map_t * pmap;
  int loops;
  int both;
  char * bp;
  const struct switch_codec_implementation_t * imp;
  int both;
  char * bp;
  const char * mult;
  int cng_type;
  int this_ptime;
  int cur_ptime;
  int i;
  char tmp2[11];
  char tmp1[11];
  char * orig_fmtp;
  switch_payload_t orig_pt;
  const struct switch_codec_implementation_t * imp;
  struct switch_core_session_t * orig_session;
  int i;
  static const char __func__[32] = "switch_core_media_gen_local_sdp";
  static const char __PRETTY_FUNCTION__[32] = "switch_core_media_gen_local_sdp";
  int is_outbound;
  struct payload_map_t * pmap;
  int red;
  int vp8;
  struct switch_media_handle_t * smh;
  const char * tmp;
  const char * local_sdp_video_zrtp_hash;
  const char * local_sdp_audio_zrtp_hash;
  struct switch_event_t * ptmap;
  struct switch_event_t * map;
  const char * fmtp_out_var;
  const char * fmtp_out;
  const char * username;
  const char * var_val;
  char srbuf[128];
  const char * append_video;
  const char * append_audio;
  const char * ov_fmtp;
  const char * pass_fmtp;
  const char * family;
  const char * val;
  int use_cng;
  uint32_t v_port;
  uint32_t rate;
  int ptime;
  char * buf;
  struct switch_event_t * ptmap.39;
  uint32_t D.42507;
  uint32_t D.42505;
  size_t D.42504;
  char * D.42502;
  size_t D.42501;
  char * D.42498;
  size_t D.42497;
  char * D.42495;
  size_t D.42494;
  char * D.42490;
  switch_rtp_crypto_key_type_t D.42486;
  uint32_t D.42483;
  uint32_t D.42480;
  int D.42477;
  size_t D.42476;
  char * D.42474;
  size_t D.42473;
  switch_port_t D.42470;
  int D.39675;
  char * D.42464;
  int D.42460;
  int D.42459;
  size_t D.42458;
  char * D.42456;
  size_t D.42455;
  uint32_t D.42454;
  _Bool D.42452;
  _Bool D.42451;
  int D.42448;
  size_t D.42447;
  char * D.42445;
  size_t D.42444;
  int D.39666;
  char * D.42433;
  size_t D.42432;
  char * D.42430;
  size_t D.42429;
  size_t D.42428;
  char * D.42426;
  size_t D.42425;
  size_t D.42424;
  char * D.42422;
  size_t D.42421;
  size_t D.42420;
  char * D.42418;
  size_t D.42417;
  size_t D.42416;
  char * D.42414;
  size_t D.42413;
  size_t D.42412;
  char * D.42410;
  size_t D.42409;
  uint32_t D.42408;
  size_t D.42407;
  char * D.42405;
  size_t D.42404;
  size_t D.42403;
  char * D.42401;
  size_t D.42400;
  size_t D.42397;
  char * D.42395;
  size_t D.42394;
  uint32_t D.42391;
  size_t D.42388;
  char * D.42386;
  size_t D.42385;
  uint8_t D.42378;
  uint8_t D.42374;
  char * iftmp.38;
  uint8_t D.42369;
  char * iftmp.37;
  size_t D.42367;
  char * D.42365;
  size_t D.42364;
  short unsigned int D.42361;
  short unsigned int D.42360;
  uint32_t D.42359;
  size_t D.42358;
  char * D.42356;
  size_t D.42355;
  size_t D.42353;
  char * D.42351;
  size_t D.42350;
  size_t D.42349;
  char * D.42347;
  size_t D.42346;
  int8_t D.42343;
  char[192] * D.42340;
  size_t D.42339;
  char * D.42337;
  size_t D.42336;
  char * D.42332;
  uint32_t D.42329;
  uint32_t D.42328;
  size_t D.42324;
  char * D.42322;
  size_t D.42321;
  int D.42318;
  char * D.42306;
  size_t D.42299;
  char * D.42297;
  size_t D.42296;
  const uint32_t D.42294;
  size_t D.42293;
  char * D.42291;
  size_t D.42290;
  int D.42285;
  int D.42282;
  int D.42281;
  const uint8_t D.42280;
  char * const D.42279;
  int D.42274;
  uint32_t D.42269;
  switch_call_direction_t D.42266;
  const switch_codec_type_t D.42263;
  switch_payload_t D.42262;
  const char D.42255;
  unsigned int D.42253;
  size_t D.42252;
  const char D.42249;
  char * iftmp.35;
  size_t D.42246;
  char * D.42244;
  size_t D.42243;
  uint8_t D.42240;
  uint32_t D.42238;
  char * D.42237;
  int D.42236;
  size_t D.42235;
  char * D.42233;
  size_t D.42232;
  uint8_t D.42229;
  switch_payload_t D.42226;
  int32_t D.42223;
  size_t D.42222;
  char * D.42220;
  size_t D.42219;
  const char * D.42209;
  uint32_t D.42205;
  long unsigned int D.42204;
  int D.42203;
  size_t D.42202;
  char * D.42200;
  size_t D.42199;
  int D.42196;
  int D.42193;
  char * D.42192;
  size_t D.42189;
  char * D.42187;
  size_t D.42186;
  size_t D.42182;
  char * D.42180;
  size_t D.42179;
  int D.42176;
  int D.42175;
  signed char D.42172;
  switch_payload_t D.42171;
  uint32_t D.42168;
  switch_call_direction_t D.42165;
  const switch_codec_type_t D.42162;
  uint8_t D.42158;
  int D.42156;
  size_t D.42155;
  char * D.42153;
  size_t D.42152;
  switch_payload_t D.42149;
  switch_payload_t D.42148;
  int32_t D.42145;
  int D.42144;
  switch_payload_t D.42143;
  struct payload_map_t * D.42142;
  size_t D.42141;
  char * D.42139;
  size_t D.42138;
  uint8_t D.42135;
  const char * D.42134;
  uint32_t D.42133;
  switch_call_direction_t D.42131;
  uint32_t D.42129;
  int iftmp.34;
  size_t D.42122;
  char * D.42120;
  size_t D.42119;
  uint32_t D.42115;
  switch_port_t D.42112;
  uint32_t D.42109;
  switch_port_t D.42106;
  uint32_t D.42103;
  switch_call_direction_t D.42100;
  uint32_t D.42097;
  size_t D.42096;
  size_t D.42095;
  uint32_t D.42092;
  uint32_t D.42090;
  size_t D.42085;
  size_t D.42084;
  size_t D.42083;
  uint32_t D.42082;
  uint32_t D.42081;
  int D.42074;
  int D.42072;
  char * const D.42071;
  const int D.42068;
  const switch_codec_type_t D.42065;
  size_t D.42064;
  size_t D.42063;
  switch_rtp_crypto_mode_t D.42058;
  size_t D.42057;
  struct switch_event_t * map.33;
  uint32_t D.42055;
  uint32_t D.42054;
  uint32_t D.42048;
  uint32_t D.42046;
  uint32_t D.42039;
  int32_t D.42030;
  size_t D.42026;
  char * D.42024;
  size_t D.42023;
  uint32_t D.42020;
  char * D.42016;
  uint32_t D.42013;
  int D.42010;
  size_t D.42009;
  char * D.42007;
  size_t D.42006;
  int D.39607;
  int D.41995;
  int D.41994;
  size_t D.41993;
  char * D.41991;
  size_t D.41990;
  uint32_t D.41989;
  _Bool D.41987;
  _Bool D.41986;
  _Bool D.41985;
  int D.41982;
  size_t D.41981;
  char * D.41979;
  size_t D.41978;
  switch_port_t D.41975;
  int D.39598;
  char * D.41966;
  int D.41965;
  switch_port_t D.41964;
  char * D.41963;
  char * D.41962;
  size_t D.41961;
  char * D.41959;
  size_t D.41958;
  char * D.41957;
  size_t D.41956;
  char * D.41954;
  size_t D.41953;
  char * D.41952;
  size_t D.41951;
  char * D.41949;
  size_t D.41948;
  size_t D.41947;
  char * D.41945;
  size_t D.41944;
  size_t D.41943;
  char * D.41941;
  size_t D.41940;
  size_t D.41939;
  char * D.41937;
  size_t D.41936;
  char * D.41935;
  uint32_t D.41934;
  size_t D.41933;
  char * D.41931;
  size_t D.41930;
  uint8_t D.41927;
  int D.41926;
  size_t D.41925;
  char * D.41923;
  size_t D.41922;
  size_t D.41920;
  char * D.41918;
  size_t D.41917;
  size_t D.41916;
  char * D.41914;
  size_t D.41913;
  int8_t D.41910;
  char[192] * D.41907;
  size_t D.41906;
  char * D.41904;
  size_t D.41903;
  char * D.41899;
  size_t D.41898;
  char * D.41896;
  size_t D.41895;
  size_t D.41891;
  char * D.41889;
  size_t D.41888;
  size_t D.41885;
  char * D.41883;
  size_t D.41882;
  const char D.41876;
  unsigned int D.41874;
  size_t D.41873;
  const char D.41870;
  char * iftmp.30;
  size_t D.41867;
  char * D.41865;
  size_t D.41864;
  size_t D.41859;
  char * D.41857;
  size_t D.41856;
  size_t D.41852;
  char * D.41850;
  size_t D.41849;
  int32_t D.41846;
  size_t D.41845;
  char * D.41843;
  size_t D.41842;
  size_t D.41840;
  char * D.41838;
  size_t D.41837;
  uint32_t D.41834;
  uint32_t D.41831;
  int32_t D.41829;
  const int D.41825;
  const struct switch_codec_implementation_t * D.41819;
  uint32_t D.41817;
  char * D.41816;
  size_t D.41815;
  char * D.41813;
  size_t D.41812;
  int32_t D.41807;
  size_t D.41806;
  char * D.41804;
  size_t D.41803;
  size_t D.41800;
  char * D.41798;
  size_t D.41797;
  int D.41795;
  switch_payload_t D.41794;
  size_t D.41793;
  char * D.41791;
  size_t D.41790;
  int D.41787;
  char * D.41786;
  int D.41783;
  size_t D.41782;
  char * D.41780;
  size_t D.41779;
  size_t D.41778;
  char * D.41776;
  size_t D.41775;
  int32_t D.41770;
  size_t D.41769;
  char * D.41767;
  size_t D.41766;
  uint32_t D.41763;
  int32_t D.41761;
  uint8_t D.41757;
  int D.41755;
  size_t D.41754;
  char * D.41752;
  size_t D.41751;
  switch_payload_t D.41748;
  struct switch_mutex_t * D.41747;
  int32_t D.41744;
  int D.41743;
  switch_payload_t D.41742;
  size_t D.41741;
  char * D.41739;
  size_t D.41738;
  const char * D.41737;
  switch_rtp_crypto_key_type_t D.41736;
  uint32_t D.41734;
  uint8_t D.41732;
  int iftmp.29;
  int D.41727;
  size_t D.41726;
  char * D.41724;
  size_t D.41723;
  uint8_t D.41720;
  char * D.41719;
  size_t D.41718;
  char * D.41716;
  size_t D.41715;
  uint32_t D.41712;
  char * D.41708;
  unsigned int D.41700;
  switch_core_media_NDLB_t D.41699;
  uint32_t D.41696;
  const char * D.41692;
  uint32_t D.41689;
  unsigned int D.41688;
  unsigned int D.41687;
  unsigned int D.41686;
  time_t D.41685;
  uint32_t D.41682;
  char * D.41673;
  char * D.41664;
  uint32_t D.41655;
  uint32_t D.41653;
  _Bool D.41647;
  _Bool D.41646;
  _Bool D.41645;
  uint32_t D.41634;
  int D.41633;
  const int D.41632;
  const uint32_t D.41631;
  uint32_t D.41630;
  unsigned char D.41629;
  char * D.41628;
  char * orig_fmtp.27;
  switch_payload_t orig_pt.26;
  switch_status_t D.41622;
  char * const D.41621;
  switch_media_type_t D.41620;
  const switch_codec_type_t D.41619;
  struct switch_core_session_t * orig_session.25;
  int D.41612;
  _Bool D.41609;
  _Bool D.41608;
  _Bool D.41607;
  switch_payload_t D.41606;
  int32_t D.41603;
  int D.41602;
  int D.41599;
  switch_payload_t D.41596;
  switch_core_media_dtmf_t D.41593;
  switch_payload_t D.41590;
  int D.41587;
  const switch_payload_t D.41586;
  const struct switch_codec_implementation_t * D.41585;
  uint32_t D.41581;
  int D.41578;
  int32_t D.41572;
  struct payload_map_t * D.41566;
  const char * D.41564;
  uint32_t D.41562;
  int D.41557;
  int D.41554;
  const char * D.41550;
  uint32_t D.41547;
  uint32_t D.41546;
  uint32_t D.41544;
  struct switch_channel_t * D.41535;
  struct switch_core_session_t * D.41534;
  int D.41531;
  const char * D.41530;
  char * D.41527;
  const char * D.41526;
  char * D.41523;
  struct switch_core_media_params_t * D.41522;
  const char * D.41518;
  switch_call_direction_t D.41513;
  struct switch_channel_t * D.41512;

<bb 2>:
  # DEBUG ptime => 0
  # DEBUG rate => 0
  # DEBUG use_cng => 1
  D.41512_73 = session_72(D)->channel;
  pass_fmtp_74 = switch_channel_get_variable_dup (D.41512_73, "rtp_video_fmtp", 1, -1);
  # DEBUG pass_fmtp => pass_fmtp_74
  D.41512_75 = session_72(D)->channel;
  ov_fmtp_76 = switch_channel_get_variable_dup (D.41512_75, "rtp_force_video_fmtp", 1, -1);
  # DEBUG ov_fmtp => ov_fmtp_76
  D.41512_77 = session_72(D)->channel;
  append_audio_78 = switch_channel_get_variable_dup (D.41512_77, "rtp_append_audio_sdp", 1, -1);
  # DEBUG append_audio => append_audio_78
  D.41512_79 = session_72(D)->channel;
  append_video_80 = switch_channel_get_variable_dup (D.41512_79, "rtp_append_video_sdp", 1, -1);
  # DEBUG append_video => append_video_80
  srbuf = "";
  D.41512_81 = session_72(D)->channel;
  fmtp_out_var_82 = switch_channel_get_variable_dup (D.41512_81, "rtp_force_audio_fmtp", 1, -1);
  # DEBUG fmtp_out_var => fmtp_out_var_82
  map = 0B;
  ptmap = 0B;
  local_sdp_audio_zrtp_hash_83 = switch_core_media_get_zrtp_hash (session_72(D), 0, 1);
  # DEBUG local_sdp_audio_zrtp_hash => local_sdp_audio_zrtp_hash_83
  local_sdp_video_zrtp_hash_84 = switch_core_media_get_zrtp_hash (session_72(D), 1, 1);
  # DEBUG local_sdp_video_zrtp_hash => local_sdp_video_zrtp_hash_84
  # DEBUG vp8 => 0
  # DEBUG red => 0
  D.41512_87 = session_72(D)->channel;
  D.41513_88 = switch_channel_direction (D.41512_87);
  is_outbound_89 = D.41513_88 == 1;
  # DEBUG is_outbound => is_outbound_89
  smh_90 = session_72(D)->media_handle;
  # DEBUG smh => smh_90
  if (smh_90 == 0B)
    goto <bb 457>;
  else
    goto <bb 3>;

<bb 3>:
  # DEBUG D#28 => &smh_90->engines
  # DEBUG a_engine => D#28
  # DEBUG D#27 => &smh_90->engines[1]
  # DEBUG v_engine => D#27
  D.41512_93 = session_72(D)->channel;
  D.41518_94 = switch_channel_get_variable_dup (D.41512_93, "rtcp_mux", 1, -1);
  # DEBUG expr => D.41518_94
  if (D.41518_94 != 0B)
    goto <bb 4>;
  else
    goto <bb 458>;

<bb 4>:
  D.50370_1580 = strcasecmp (D.41518_94, "yes");
  if (D.50370_1580 == 0)
    goto <bb 13>;
  else
    goto <bb 5>;

<bb 5>:
  D.50371_1581 = strcasecmp (D.41518_94, "on");
  if (D.50371_1581 == 0)
    goto <bb 13>;
  else
    goto <bb 6>;

<bb 6>:
  D.50372_1582 = strcasecmp (D.41518_94, "true");
  if (D.50372_1582 == 0)
    goto <bb 13>;
  else
    goto <bb 7>;

<bb 7>:
  D.50373_1583 = strcasecmp (D.41518_94, "t");
  if (D.50373_1583 == 0)
    goto <bb 13>;
  else
    goto <bb 8>;

<bb 8>:
  D.50374_1584 = strcasecmp (D.41518_94, "enabled");
  if (D.50374_1584 == 0)
    goto <bb 13>;
  else
    goto <bb 9>;

<bb 9>:
  D.50375_1585 = strcasecmp (D.41518_94, "active");
  if (D.50375_1585 == 0)
    goto <bb 13>;
  else
    goto <bb 10>;

<bb 10>:
  D.50376_1586 = strcasecmp (D.41518_94, "allow");
  if (D.50376_1586 == 0)
    goto <bb 13>;
  else
    goto <bb 11>;

<bb 11>:
  D.50377_1587 = switch_is_number (D.41518_94);
  if (D.50377_1587 != 0)
    goto <bb 12>;
  else
    goto <bb 458>;

<bb 12>:
  # DEBUG __nptr => D.41518_94
  D.50378_1588 = strtol (D.41518_94, 0B, 10);
  if (D.50378_1588 != 0)
    goto <bb 13>;
  else
    goto <bb 458>;

<bb 13>:
Invalid sum of incoming frequencies 564, should be 224
  MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].rtcp_mux = 1;
  MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].rtcp_mux = 1;

<bb 14>:
Invalid sum of incoming frequencies 336, should be 676
  D.41522_96 = smh_90->mparams;
  D.41523_97 = D.41522_96->rtcp_audio_interval_msec;
  if (D.41523_97 == 0B)
    goto <bb 15>;
  else
    goto <bb 16>;

<bb 15>:
  D.41512_99 = session_72(D)->channel;
  D.41526_100 = switch_channel_get_variable_dup (D.41512_99, "rtcp_audio_interval_msec", 1, -1);
  D.41522_96->rtcp_audio_interval_msec = D.41526_100;

<bb 16>:
  D.41522_101 = smh_90->mparams;
  D.41527_102 = D.41522_101->rtcp_video_interval_msec;
  if (D.41527_102 == 0B)
    goto <bb 17>;
  else
    goto <bb 18>;

<bb 17>:
  D.41512_104 = session_72(D)->channel;
  D.41530_105 = switch_channel_get_variable_dup (D.41512_104, "rtcp_video_interval_msec", 1, -1);
  D.41522_101->rtcp_video_interval_msec = D.41530_105;

<bb 18>:
  D.41531_106 = dtls_ok (session_72(D));
  if (D.41531_106 != 0)
    goto <bb 19>;
  else
    goto <bb 30>;

<bb 19>:
  D.41534_107 = smh_90->session;
  D.41535_108 = D.41534_107->channel;
  tmp_109 = switch_channel_get_variable_dup (D.41535_108, "webrtc_enable_dtls", 1, -1);
  # DEBUG tmp => tmp_109
  if (tmp_109 != 0B)
    goto <bb 20>;
  else
    goto <bb 30>;

<bb 20>:
  # DEBUG expr => tmp_109
  D.50382_1590 = strcasecmp (tmp_109, "no");
  if (D.50382_1590 == 0)
    goto <bb 29>;
  else
    goto <bb 21>;

<bb 21>:
  D.50383_1591 = strcasecmp (tmp_109, "off");
  if (D.50383_1591 == 0)
    goto <bb 29>;
  else
    goto <bb 22>;

<bb 22>:
  D.50384_1592 = strcasecmp (tmp_109, "false");
  if (D.50384_1592 == 0)
    goto <bb 29>;
  else
    goto <bb 23>;

<bb 23>:
  D.50385_1593 = strcasecmp (tmp_109, "f");
  if (D.50385_1593 == 0)
    goto <bb 29>;
  else
    goto <bb 24>;

<bb 24>:
  D.50386_1594 = strcasecmp (tmp_109, "disabled");
  if (D.50386_1594 == 0)
    goto <bb 29>;
  else
    goto <bb 25>;

<bb 25>:
  D.50387_1595 = strcasecmp (tmp_109, "inactive");
  if (D.50387_1595 == 0)
    goto <bb 29>;
  else
    goto <bb 26>;

<bb 26>:
  D.50388_1596 = strcasecmp (tmp_109, "disallow");
  if (D.50388_1596 == 0)
    goto <bb 29>;
  else
    goto <bb 27>;

<bb 27>:
  D.50389_1597 = switch_is_number (tmp_109);
  if (D.50389_1597 != 0)
    goto <bb 28>;
  else
    goto <bb 459>;

<bb 28>:
  # DEBUG __nptr => tmp_109
  D.50390_1598 = strtol (tmp_109, 0B, 10);
  if (D.50390_1598 == 0)
    goto <bb 29>;
  else
    goto <bb 459>;

<bb 29>:
  D.41534_111 = smh_90->session;
  D.41535_112 = D.41534_111->channel;
  switch_channel_clear_flag (D.41535_112, 111);
  D.41534_113 = smh_90->session;
  D.41535_114 = D.41534_113->channel;
  switch_channel_clear_flag (D.41535_114, 109);

<bb 30>:
  if (is_outbound_89 != 0)
    goto <bb 33>;
  else
    goto <bb 31>;

<bb 31>:
  D.41512_115 = session_72(D)->channel;
  D.41544_116 = switch_channel_test_flag (D.41512_115, 84);
  if (D.41544_116 != 0)
    goto <bb 33>;
  else
    goto <bb 32>;

<bb 32>:
  D.41512_117 = session_72(D)->channel;
  D.41546_118 = switch_channel_test_flag (D.41512_117, 112);
  if (D.41546_118 != 0)
    goto <bb 33>;
  else
    goto <bb 61>;

<bb 33>:
  D.41512_119 = session_72(D)->channel;
  D.41547_120 = switch_channel_test_flag (D.41512_119, 106);
  if (D.41547_120 == 0)
    goto <bb 34>;
  else
    goto <bb 45>;

<bb 34>:
  D.41512_121 = session_72(D)->channel;
  D.41550_122 = switch_channel_get_variable_dup (D.41512_121, "media_webrtc", 1, -1);
  # DEBUG expr => D.41550_122
  if (D.41550_122 != 0B)
    goto <bb 35>;
  else
    goto <bb 460>;

<bb 35>:
  D.50394_1600 = strcasecmp (D.41550_122, "yes");
  if (D.50394_1600 == 0)
    goto <bb 44>;
  else
    goto <bb 36>;

<bb 36>:
  D.50395_1601 = strcasecmp (D.41550_122, "on");
  if (D.50395_1601 == 0)
    goto <bb 44>;
  else
    goto <bb 37>;

<bb 37>:
  D.50396_1602 = strcasecmp (D.41550_122, "true");
  if (D.50396_1602 == 0)
    goto <bb 44>;
  else
    goto <bb 38>;

<bb 38>:
  D.50397_1603 = strcasecmp (D.41550_122, "t");
  if (D.50397_1603 == 0)
    goto <bb 44>;
  else
    goto <bb 39>;

<bb 39>:
  D.50398_1604 = strcasecmp (D.41550_122, "enabled");
  if (D.50398_1604 == 0)
    goto <bb 44>;
  else
    goto <bb 40>;

<bb 40>:
  D.50399_1605 = strcasecmp (D.41550_122, "active");
  if (D.50399_1605 == 0)
    goto <bb 44>;
  else
    goto <bb 41>;

<bb 41>:
  D.50400_1606 = strcasecmp (D.41550_122, "allow");
  if (D.50400_1606 == 0)
    goto <bb 44>;
  else
    goto <bb 42>;

<bb 42>:
  D.50401_1607 = switch_is_number (D.41550_122);
  if (D.50401_1607 != 0)
    goto <bb 43>;
  else
    goto <bb 460>;

<bb 43>:
  # DEBUG __nptr => D.41550_122
  D.50402_1608 = strtol (D.41550_122, 0B, 10);
  if (D.50402_1608 != 0)
    goto <bb 44>;
  else
    goto <bb 460>;

<bb 44>:
  D.41512_124 = session_72(D)->channel;
  switch_channel_set_flag_value (D.41512_124, 106, 1);
  D.41512_125 = session_72(D)->channel;
  switch_channel_set_flag_value (D.41512_125, 108, 1);
  D.41522_126 = smh_90->mparams;
  D.41522_126->rtcp_audio_interval_msec = "5000";
  D.41522_126->rtcp_video_interval_msec = "5000";

<bb 45>:
  D.41554_128 = switch_rtp_has_dtls ();
  if (D.41554_128 != 0)
    goto <bb 46>;
  else
    goto <bb 60>;

<bb 46>:
  D.41557_129 = dtls_ok (session_72(D));
  if (D.41557_129 != 0)
    goto <bb 47>;
  else
    goto <bb 60>;

<bb 47>:
  D.41512_130 = session_72(D)->channel;
  D.41562_131 = switch_channel_test_flag (D.41512_130, 106);
  if (D.41562_131 != 0)
    goto <bb 59>;
  else
    goto <bb 48>;

<bb 48>:
  D.41534_132 = smh_90->session;
  D.41535_133 = D.41534_132->channel;
  D.41564_134 = switch_channel_get_variable_dup (D.41535_133, "rtp_use_dtls", 1, -1);
  # DEBUG expr => D.41564_134
  if (D.41564_134 != 0B)
    goto <bb 49>;
  else
    goto <bb 461>;

<bb 49>:
  D.50406_1610 = strcasecmp (D.41564_134, "yes");
  if (D.50406_1610 == 0)
    goto <bb 58>;
  else
    goto <bb 50>;

<bb 50>:
  D.50407_1611 = strcasecmp (D.41564_134, "on");
  if (D.50407_1611 == 0)
    goto <bb 58>;
  else
    goto <bb 51>;

<bb 51>:
  D.50408_1612 = strcasecmp (D.41564_134, "true");
  if (D.50408_1612 == 0)
    goto <bb 58>;
  else
    goto <bb 52>;

<bb 52>:
  D.50409_1613 = strcasecmp (D.41564_134, "t");
  if (D.50409_1613 == 0)
    goto <bb 58>;
  else
    goto <bb 53>;

<bb 53>:
  D.50410_1614 = strcasecmp (D.41564_134, "enabled");
  if (D.50410_1614 == 0)
    goto <bb 58>;
  else
    goto <bb 54>;

<bb 54>:
  D.50411_1615 = strcasecmp (D.41564_134, "active");
  if (D.50411_1615 == 0)
    goto <bb 58>;
  else
    goto <bb 55>;

<bb 55>:
  D.50412_1616 = strcasecmp (D.41564_134, "allow");
  if (D.50412_1616 == 0)
    goto <bb 58>;
  else
    goto <bb 56>;

<bb 56>:
  D.50413_1617 = switch_is_number (D.41564_134);
  if (D.50413_1617 != 0)
    goto <bb 57>;
  else
    goto <bb 461>;

<bb 57>:
  # DEBUG __nptr => D.41564_134
  D.50414_1618 = strtol (D.41564_134, 0B, 10);
  if (D.50414_1618 != 0)
    goto <bb 58>;
  else
    goto <bb 461>;

<bb 58>:

<bb 59>:
  D.41534_136 = smh_90->session;
  D.41535_137 = D.41534_136->channel;
  switch_channel_set_flag_value (D.41535_137, 109, 1);
  D.41534_138 = smh_90->session;
  D.41535_139 = D.41534_138->channel;
  switch_channel_set_flag_value (D.41535_139, 92, 1);
  generate_local_fingerprint (smh_90, 0);

<bb 60>:
  switch_core_session_parse_crypto_prefs (session_72(D));
  switch_core_session_check_outgoing_crypto (session_72(D));

<bb 61>:
  D.41566_140 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].cur_payload_map;
  fmtp_out_141 = D.41566_140->fmtp_out;
  # DEBUG fmtp_out => fmtp_out_141
  D.41522_142 = smh_90->mparams;
  username_143 = D.41522_142->sdp_username;
  # DEBUG username => username_143
  buf_144 = calloc (1, 65536);
  # DEBUG buf => buf_144
  if (buf_144 == 0B)
    goto <bb 62>;
  else
    goto <bb 63>;

<bb 62>:
  __assert_fail ("(buf = calloc(1, (65536)))", "src/switch_core_media.c", 6078, &__PRETTY_FUNCTION__);

<bb 63>:
  switch_core_media_check_dtmf_type (session_72(D));
  D.41572_145 = switch_media_handle_test_media_flag (smh_90, 9);
  if (D.41572_145 != 0)
    goto <bb 86>;
  else
    goto <bb 64>;

<bb 64>:
  D.41512_146 = session_72(D)->channel;
  val_147 = switch_channel_get_variable_dup (D.41512_146, "supress_cng", 1, -1);
  # DEBUG val => val_147
  if (val_147 != 0B)
    goto <bb 65>;
  else
    goto <bb 75>;

<bb 65>:
  # DEBUG expr => val_147
  D.50418_1620 = strcasecmp (val_147, "yes");
  if (D.50418_1620 == 0)
    goto <bb 74>;
  else
    goto <bb 66>;

<bb 66>:
  D.50419_1621 = strcasecmp (val_147, "on");
  if (D.50419_1621 == 0)
    goto <bb 74>;
  else
    goto <bb 67>;

<bb 67>:
  D.50420_1622 = strcasecmp (val_147, "true");
  if (D.50420_1622 == 0)
    goto <bb 74>;
  else
    goto <bb 68>;

<bb 68>:
  D.50421_1623 = strcasecmp (val_147, "t");
  if (D.50421_1623 == 0)
    goto <bb 74>;
  else
    goto <bb 69>;

<bb 69>:
  D.50422_1624 = strcasecmp (val_147, "enabled");
  if (D.50422_1624 == 0)
    goto <bb 74>;
  else
    goto <bb 70>;

<bb 70>:
  D.50423_1625 = strcasecmp (val_147, "active");
  if (D.50423_1625 == 0)
    goto <bb 74>;
  else
    goto <bb 71>;

<bb 71>:
  D.50424_1626 = strcasecmp (val_147, "allow");
  if (D.50424_1626 == 0)
    goto <bb 74>;
  else
    goto <bb 72>;

<bb 72>:
  D.50425_1627 = switch_is_number (val_147);
  if (D.50425_1627 != 0)
    goto <bb 73>;
  else
    goto <bb 462>;

<bb 73>:
  # DEBUG __nptr => val_147
  D.50426_1628 = strtol (val_147, 0B, 10);
  if (D.50426_1628 != 0)
    goto <bb 74>;
  else
    goto <bb 462>;

<bb 74>:
  goto <bb 86>;

<bb 75>:
  D.41512_149 = session_72(D)->channel;
  val_150 = switch_channel_get_variable_dup (D.41512_149, "suppress_cng", 1, -1);
  # DEBUG val => val_150
  if (val_150 != 0B)
    goto <bb 76>;
  else
    goto <bb 87>;

<bb 76>:
  # DEBUG expr => val_150
  D.50430_1630 = strcasecmp (val_150, "yes");
  if (D.50430_1630 == 0)
    goto <bb 85>;
  else
    goto <bb 77>;

<bb 77>:
  D.50431_1631 = strcasecmp (val_150, "on");
  if (D.50431_1631 == 0)
    goto <bb 85>;
  else
    goto <bb 78>;

<bb 78>:
  D.50432_1632 = strcasecmp (val_150, "true");
  if (D.50432_1632 == 0)
    goto <bb 85>;
  else
    goto <bb 79>;

<bb 79>:
  D.50433_1633 = strcasecmp (val_150, "t");
  if (D.50433_1633 == 0)
    goto <bb 85>;
  else
    goto <bb 80>;

<bb 80>:
  D.50434_1634 = strcasecmp (val_150, "enabled");
  if (D.50434_1634 == 0)
    goto <bb 85>;
  else
    goto <bb 81>;

<bb 81>:
  D.50435_1635 = strcasecmp (val_150, "active");
  if (D.50435_1635 == 0)
    goto <bb 85>;
  else
    goto <bb 82>;

<bb 82>:
  D.50436_1636 = strcasecmp (val_150, "allow");
  if (D.50436_1636 == 0)
    goto <bb 85>;
  else
    goto <bb 83>;

<bb 83>:
  D.50437_1637 = switch_is_number (val_150);
  if (D.50437_1637 != 0)
    goto <bb 84>;
  else
    goto <bb 463>;

<bb 84>:
  # DEBUG __nptr => val_150
  D.50438_1638 = strtol (val_150, 0B, 10);
  if (D.50438_1638 != 0)
    goto <bb 85>;
  else
    goto <bb 463>;

<bb 85>:

<bb 86>:
  # DEBUG use_cng => 0
  D.41522_153 = smh_90->mparams;
  D.41522_153->cng_pt = 0;

<bb 87>:
  # use_cng_17 = PHI <1(75), 1(463), 0(86)>
  # DEBUG use_cng => use_cng_17
  D.41578_154 = smh_90->payload_space;
  if (D.41578_154 == 0)
    goto <bb 88>;
  else
    goto <bb 111>;

<bb 88>:
  D.41512_155 = session_72(D)->channel;
  D.41581_156 = switch_channel_test_flag (D.41512_155, 106);
  if (D.41581_156 != 0)
    goto <bb 90>;
  else
    goto <bb 89>;

<bb 89>:

<bb 90>:
  # cstore.1250_1307 = PHI <102(88), 98(89)>
  smh_90->payload_space = cstore.1250_1307;
  # DEBUG i => 0
  D.41522_1659 = smh_90->mparams;
  D.41587_1519 = D.41522_1659->num_codecs;
  if (D.41587_1519 > 0)
    goto <bb 91>;
  else
    goto <bb 92>;

<bb 91>:
  # i_1517 = PHI <i_162(91), 0(90)>
  D.41585_160 = smh_90->codecs[i_1517];
  D.41586_161 = D.41585_160->ianacode;
  smh_90->ianacodes[i_1517] = D.41586_161;
  i_162 = i_1517 + 1;
  # DEBUG i => i_162
  # DEBUG i => i_162
  D.41522_158 = smh_90->mparams;
  D.41587_159 = D.41522_158->num_codecs;
  if (D.41587_159 > i_162)
    goto <bb 91>;
  else
    goto <bb 92>;

<bb 92>:
  if (sdp_type_163(D) == 0)
    goto <bb 93>;
  else
    goto <bb 111>;

<bb 93>:
  orig_session = 0B;
  switch_core_session_perform_get_partner (session_72(D), &orig_session, "src/switch_core_media.c", &__func__, 6108);
  # DEBUG i => 0
  # DEBUG i => 0
  D.41522_1533 = smh_90->mparams;
  D.41587_1531 = D.41522_1533->num_codecs;
  if (D.41587_1531 > 0)
    goto <bb 94>;
  else
    goto <bb 109>;

<bb 94>:
  # i_1529 = PHI <i_213(108), 0(93)>
  # D.41522_1527 = PHI <D.41522_165(108), D.41522_1533(93)>
  imp_167 = smh_90->codecs[i_1529];
  # DEBUG imp => imp_167
  orig_pt = 0;
  orig_fmtp = 0B;
  D.41590_168 = smh_90->ianacodes[i_1529];
  if (D.41590_168 > 64)
    goto <bb 95>;
  else
    goto <bb 108>;

<bb 95>:
  D.41593_170 = D.41522_1527->dtmf_type;
  if (D.41593_170 == 0)
    goto <bb 96>;
  else
    goto <bb 99>;

<bb 96>:
  D.41596_172 = D.41522_1527->te;
  if (D.41596_172 > 95)
    goto <bb 97>;
  else
    goto <bb 99>;

<bb 97>:
  D.41599_175 = (int) D.41596_172;
  D.41578_176 = smh_90->payload_space;
  if (D.41599_175 == D.41578_176)
    goto <bb 98>;
  else
    goto <bb 99>;

<bb 98>:
  D.41602_178 = D.41578_176 + 1;
  smh_90->payload_space = D.41602_178;

<bb 99>:
  D.41603_179 = switch_media_handle_test_media_flag (smh_90, 9);
  if (D.41603_179 == 0)
    goto <bb 100>;
  else
    goto <bb 103>;

<bb 100>:
  D.41522_180 = smh_90->mparams;
  D.41606_181 = D.41522_180->cng_pt;
  D.41607_182 = D.41606_181 != 0;
  D.41608_183 = (_Bool) use_cng_17;
  D.41609_184 = D.41607_182 & D.41608_183;
  if (D.41609_184 != 0)
    goto <bb 101>;
  else
    goto <bb 103>;

<bb 101>:
  D.41612_187 = (int) D.41606_181;
  D.41578_188 = smh_90->payload_space;
  if (D.41612_187 == D.41578_188)
    goto <bb 102>;
  else
    goto <bb 103>;

<bb 102>:
  D.41602_190 = D.41578_188 + 1;
  smh_90->payload_space = D.41602_190;

<bb 103>:
  orig_session.25_191 = orig_session;
  if (orig_session.25_191 != 0B)
    goto <bb 104>;
  else
    goto <bb 107>;

<bb 104>:
  D.41619_193 = imp_167->codec_type;
  D.41620_194 = D.41619_193 != 0;
  D.41621_195 = imp_167->iananame;
  D.41622_196 = switch_core_session_get_payload_code (orig_session.25_191, D.41620_194, D.41621_195, &orig_pt, 0B, &orig_fmtp);
  if (D.41622_196 == 0)
    goto <bb 105>;
  else
    goto <bb 107>;

<bb 105>:
  orig_pt.26_197 = orig_pt;
  smh_90->ianacodes[i_1529] = orig_pt.26_197;
  orig_fmtp.27_198 = orig_fmtp;
  if (orig_fmtp.27_198 != 0B)
    goto <bb 106>;
  else
    goto <bb 108>;

<bb 106>:
  D.41628_200 = switch_core_perform_session_strdup (session_72(D), orig_fmtp.27_198, "src/switch_core_media.c", &__func__, 6133);
  smh_90->fmtps[i_1529] = D.41628_200;
  goto <bb 108>;

<bb 107>:
  D.41578_201 = smh_90->payload_space;
  D.41629_202 = (unsigned char) D.41578_201;
  smh_90->ianacodes[i_1529] = D.41629_202;
  D.41602_203 = D.41578_201 + 1;
  smh_90->payload_space = D.41602_203;

<bb 108>:
  D.41619_204 = imp_167->codec_type;
  D.41620_205 = D.41619_204 != 0;
  D.41621_206 = imp_167->iananame;
  D.41590_207 = smh_90->ianacodes[i_1529];
  D.41630_208 = (uint32_t) D.41590_207;
  D.41631_209 = imp_167->samples_per_second;
  D.41632_210 = imp_167->microseconds_per_packet;
  D.41633_211 = D.41632_210 / 1000;
  D.41634_212 = (uint32_t) D.41633_211;
  switch_core_media_add_payload_map (session_72(D), D.41620_205, D.41621_206, 0B, 0, D.41630_208, D.41631_209, D.41634_212, 0);
  i_213 = i_1529 + 1;
  # DEBUG i => i_213
  # DEBUG i => i_213
  D.41522_165 = smh_90->mparams;
  D.41587_166 = D.41522_165->num_codecs;
  if (D.41587_166 > i_213)
    goto <bb 94>;
  else
    goto <bb 109>;

<bb 109>:
  orig_session.25_214 = orig_session;
  if (orig_session.25_214 != 0B)
    goto <bb 110>;
  else
    goto <bb 111>;

<bb 110>:
  switch_core_session_rwunlock (orig_session.25_214);

<bb 111>:
  if (fmtp_out_var_82 != 0B)
    goto <bb 113>;
  else
    goto <bb 112>;

<bb 112>:

<bb 113>:
  # fmtp_out_21 = PHI <fmtp_out_141(112), fmtp_out_var_82(111)>
  # DEBUG fmtp_out => fmtp_out_21
  D.41512_217 = session_72(D)->channel;
  val_218 = switch_channel_get_variable_dup (D.41512_217, "verbose_sdp", 1, -1);
  # DEBUG val => val_218
  if (val_218 == 0B)
    goto <bb 124>;
  else
    goto <bb 114>;

<bb 114>:
  # DEBUG expr => val_218
  D.50442_1640 = strcasecmp (val_218, "yes");
  if (D.50442_1640 == 0)
    goto <bb 123>;
  else
    goto <bb 115>;

<bb 115>:
  D.50443_1641 = strcasecmp (val_218, "on");
  if (D.50443_1641 == 0)
    goto <bb 123>;
  else
    goto <bb 116>;

<bb 116>:
  D.50444_1642 = strcasecmp (val_218, "true");
  if (D.50444_1642 == 0)
    goto <bb 123>;
  else
    goto <bb 117>;

<bb 117>:
  D.50445_1643 = strcasecmp (val_218, "t");
  if (D.50445_1643 == 0)
    goto <bb 123>;
  else
    goto <bb 118>;

<bb 118>:
  D.50446_1644 = strcasecmp (val_218, "enabled");
  if (D.50446_1644 == 0)
    goto <bb 123>;
  else
    goto <bb 119>;

<bb 119>:
  D.50447_1645 = strcasecmp (val_218, "active");
  if (D.50447_1645 == 0)
    goto <bb 123>;
  else
    goto <bb 120>;

<bb 120>:
  D.50448_1646 = strcasecmp (val_218, "allow");
  if (D.50448_1646 == 0)
    goto <bb 123>;
  else
    goto <bb 121>;

<bb 121>:
  D.50449_1647 = switch_is_number (val_218);
  if (D.50449_1647 != 0)
    goto <bb 122>;
  else
    goto <bb 464>;

<bb 122>:
  # DEBUG __nptr => val_218
  D.50450_1648 = strtol (val_218, 0B, 10);
  if (D.50450_1648 != 0)
    goto <bb 123>;
  else
    goto <bb 464>;

<bb 123>:
Invalid sum of incoming frequencies 479, should be 190

<bb 124>:
  D.41512_220 = session_72(D)->channel;
  switch_channel_set_flag_value (D.41512_220, 110, 1);

<bb 125>:
Invalid sum of incoming frequencies 484, should be 676
  D.41645_222 = force_221(D) == 0;
  D.41646_224 = ip_223(D) == 0B;
  D.41647_225 = D.41645_222 & D.41646_224;
  if (D.41647_225 != 0)
    goto <bb 126>;
  else
    goto <bb 131>;

<bb 126>:
  # DEBUG s => sr_226(D)
  if (sr_226(D) == 0B)
    goto <bb 128>;
  else
    goto <bb 127>;

<bb 127>:
  D.48131_1516 = *sr_226(D);
  if (D.48131_1516 == 0)
    goto <bb 128>;
  else
    goto <bb 131>;

<bb 128>:
Invalid sum of incoming frequencies 195, should be 51
  D.41512_228 = session_72(D)->channel;
  D.41653_229 = switch_channel_test_flag (D.41512_228, 15);
  if (D.41653_229 != 0)
    goto <bb 130>;
  else
    goto <bb 129>;

<bb 129>:
  D.41512_230 = session_72(D)->channel;
  D.41655_231 = switch_channel_test_flag (D.41512_230, 29);
  if (D.41655_231 != 0)
    goto <bb 130>;
  else
    goto <bb 131>;

<bb 130>:
  free (buf_144);
  # DEBUG buf => 0B
  goto <bb 457>;

<bb 131>:
  if (ip_223(D) == 0B)
    goto <bb 132>;
  else
    goto <bb 134>;

<bb 132>:
  ip_233 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].adv_sdp_ip;
  # DEBUG ip => ip_233
  if (ip_233 == 0B)
    goto <bb 133>;
  else
    goto <bb 134>;

<bb 133>:
  ip_234 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].proxy_sdp_ip;
  # DEBUG ip => ip_234

<bb 134>:
  # ip_1 = PHI <ip_223(D)(131), ip_233(132), ip_234(133)>
  # DEBUG ip => ip_1
  if (ip_1 == 0B)
    goto <bb 135>;
  else
    goto <bb 136>;

<bb 135>:
  D.41512_235 = session_72(D)->channel;
  D.41664_236 = switch_channel_get_name (D.41512_235);
  switch_log_printf (0, "src/switch_core_media.c", &__func__, 6182, 0B, 2, "%s NO IP!\n", D.41664_236);
  free (buf_144);
  # DEBUG buf => 0B
  goto <bb 457>;

<bb 136>:
  if (port_238(D) == 0)
    goto <bb 137>;
  else
    goto <bb 465>;

<bb 137>:
  port_239 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].adv_sdp_port;
  # DEBUG port => port_239
  if (port_239 == 0)
    goto <bb 138>;
  else
    goto <bb 465>;

<bb 138>:
  port_240 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].proxy_sdp_port;
  # DEBUG port => port_240
  # DEBUG port => port_240
  if (port_240 == 0)
    goto <bb 139>;
  else
    goto <bb 140>;

<bb 139>:
  D.41512_241 = session_72(D)->channel;
  D.41673_242 = switch_channel_get_name (D.41512_241);
  switch_log_printf (0, "src/switch_core_media.c", &__func__, 6194, 0B, 2, "%s NO PORT!\n", D.41673_242);
  free (buf_144);
  # DEBUG buf => 0B
  goto <bb 457>;

<bb 140>:
  # port_1771 = PHI <port_240(138), port_1788(465)>
  # DEBUG s => sr_226(D)
  if (sr_226(D) == 0B)
    goto <bb 142>;
  else
    goto <bb 141>;

<bb 141>:
  D.48135_1518 = *sr_226(D);
  if (D.48135_1518 == 0)
    goto <bb 142>;
  else
    goto <bb 144>;

<bb 142>:
Invalid sum of incoming frequencies 226, should be 59
  D.41512_245 = session_72(D)->channel;
  var_val_246 = switch_channel_get_variable_dup (D.41512_245, "media_audio_mode", 1, -1);
  # DEBUG var_val => var_val_246
  if (var_val_246 != 0B)
    goto <bb 144>;
  else
    goto <bb 143>;

<bb 143>:

<bb 144>:
Invalid sum of incoming frequencies 234, should be 392
  # sr_3 = PHI <sr_226(D)(141), var_val_246(142), "sendrecv"(143)>
  # DEBUG sr => sr_3
  D.41682_249 = smh_90->owner_id;
  if (D.41682_249 == 0)
    goto <bb 145>;
  else
    goto <bb 146>;

<bb 145>:
  D.41685_250 = switch_epoch_time_now (0B);
  D.41686_251 = (unsigned int) D.41685_250;
  D.41687_252 = (unsigned int) port_1771;
  D.41688_253 = D.41686_251 - D.41687_252;
  smh_90->owner_id = D.41688_253;

<bb 146>:
  D.41689_254 = smh_90->session_id;
  if (D.41689_254 == 0)
    goto <bb 147>;
  else
    goto <bb 148>;

<bb 147>:
  D.41682_255 = smh_90->owner_id;
  smh_90->session_id = D.41682_255;

<bb 148>:
  D.41512_256 = session_72(D)->channel;
  D.41692_257 = switch_channel_get_variable_dup (D.41512_256, "drop_dtmf", 0, -1);
  # DEBUG expr => D.41692_257
  if (D.41692_257 != 0B)
    goto <bb 149>;
  else
    goto <bb 466>;

<bb 149>:
  D.50454_1650 = strcasecmp (D.41692_257, "yes");
  if (D.50454_1650 == 0)
    goto <bb 158>;
  else
    goto <bb 150>;

<bb 150>:
  D.50455_1651 = strcasecmp (D.41692_257, "on");
  if (D.50455_1651 == 0)
    goto <bb 158>;
  else
    goto <bb 151>;

<bb 151>:
  D.50456_1652 = strcasecmp (D.41692_257, "true");
  if (D.50456_1652 == 0)
    goto <bb 158>;
  else
    goto <bb 152>;

<bb 152>:
  D.50457_1653 = strcasecmp (D.41692_257, "t");
  if (D.50457_1653 == 0)
    goto <bb 158>;
  else
    goto <bb 153>;

<bb 153>:
  D.50458_1654 = strcasecmp (D.41692_257, "enabled");
  if (D.50458_1654 == 0)
    goto <bb 158>;
  else
    goto <bb 154>;

<bb 154>:
  D.50459_1655 = strcasecmp (D.41692_257, "active");
  if (D.50459_1655 == 0)
    goto <bb 158>;
  else
    goto <bb 155>;

<bb 155>:
  D.50460_1656 = strcasecmp (D.41692_257, "allow");
  if (D.50460_1656 == 0)
    goto <bb 158>;
  else
    goto <bb 156>;

<bb 156>:
  D.50461_1657 = switch_is_number (D.41692_257);
  if (D.50461_1657 != 0)
    goto <bb 157>;
  else
    goto <bb 466>;

<bb 157>:
  # DEBUG __nptr => D.41692_257
  D.50462_1658 = strtol (D.41692_257, 0B, 10);
  if (D.50462_1658 != 0)
    goto <bb 158>;
  else
    goto <bb 466>;

<bb 158>:
Invalid sum of incoming frequencies 327, should be 130
  D.41512_259 = session_72(D)->channel;
  switch_channel_set_flag_value (D.41512_259, 102, 1);

<bb 159>:
Invalid sum of incoming frequencies 195, should be 392
  D.41689_260 = smh_90->session_id;
  D.41696_261 = D.41689_260 + 1;
  smh_90->session_id = D.41696_261;
  D.41522_262 = smh_90->mparams;
  D.41699_263 = D.41522_262->ndlb;
  D.41700_264 = D.41699_263 & 16;
  if (D.41700_264 != 0)
    goto <bb 171>;
  else
    goto <bb 160>;

<bb 160>:
  D.41512_265 = session_72(D)->channel;
  var_val_266 = switch_channel_get_variable_dup (D.41512_265, "ndlb_sendrecv_in_session", 1, -1);
  # DEBUG var_val => var_val_266
  if (var_val_266 != 0B)
    goto <bb 161>;
  else
    goto <bb 173>;

<bb 161>:
  # DEBUG expr => var_val_266
  D.50466_1660 = strcasecmp (var_val_266, "yes");
  if (D.50466_1660 == 0)
    goto <bb 170>;
  else
    goto <bb 162>;

<bb 162>:
  D.50467_1661 = strcasecmp (var_val_266, "on");
  if (D.50467_1661 == 0)
    goto <bb 170>;
  else
    goto <bb 163>;

<bb 163>:
  D.50468_1662 = strcasecmp (var_val_266, "true");
  if (D.50468_1662 == 0)
    goto <bb 170>;
  else
    goto <bb 164>;

<bb 164>:
  D.50469_1663 = strcasecmp (var_val_266, "t");
  if (D.50469_1663 == 0)
    goto <bb 170>;
  else
    goto <bb 165>;

<bb 165>:
  D.50470_1664 = strcasecmp (var_val_266, "enabled");
  if (D.50470_1664 == 0)
    goto <bb 170>;
  else
    goto <bb 166>;

<bb 166>:
  D.50471_1665 = strcasecmp (var_val_266, "active");
  if (D.50471_1665 == 0)
    goto <bb 170>;
  else
    goto <bb 167>;

<bb 167>:
  D.50472_1666 = strcasecmp (var_val_266, "allow");
  if (D.50472_1666 == 0)
    goto <bb 170>;
  else
    goto <bb 168>;

<bb 168>:
  D.50473_1667 = switch_is_number (var_val_266);
  if (D.50473_1667 != 0)
    goto <bb 169>;
  else
    goto <bb 467>;

<bb 169>:
  # DEBUG __nptr => var_val_266
  D.50474_1668 = strtol (var_val_266, 0B, 10);
  if (D.50474_1668 != 0)
    goto <bb 170>;
  else
    goto <bb 467>;

<bb 170>:

<bb 171>:
  # DEBUG s => sr_3
  if (sr_3 == 0B)
    goto <bb 173>;
  else
    goto <bb 172>;

<bb 172>:
  D.48139_1520 = *sr_3;
  if (D.48139_1520 == 0)
    goto <bb 173>;
  else
    goto <bb 468>;

<bb 173>:
  # sr_4 = PHI <sr_3(160), sr_3(467), 0B(468), 0B(172), 0B(171)>
  # DEBUG sr => sr_4
  D.41708_270 = __builtin_strchr (ip_1, 58);
  if (D.41708_270 != 0B)
    goto <bb 175>;
  else
    goto <bb 174>;

<bb 174>:

<bb 175>:
  # family_59 = PHI <"IP6"(173), "IP4"(174)>
  # DEBUG family => family_59
  D.41682_274 = smh_90->owner_id;
  D.41689_275 = smh_90->session_id;
  switch_snprintf (buf_144, 65536, "v=0\no=%s %010u %010u IN %s %s\ns=%s\nc=IN %s %s\nt=0 0\n%s", username_143, D.41682_274, D.41689_275, family_59, ip_1, username_143, family_59, ip_1, &srbuf);
  D.41534_276 = smh_90->session;
  D.41535_277 = D.41534_276->channel;
  D.41712_278 = switch_channel_test_flag (D.41535_277, 108);
  if (D.41712_278 != 0)
    goto <bb 176>;
  else
    goto <bb 177>;

<bb 176>:
  gen_ice (session_72(D), 0, ip_1, port_1771);
  D.41715_279 = strlen (buf_144);
  D.41716_280 = buf_144 + D.41715_279;
  D.41718_282 = 65536 - D.41715_279;
  D.41719_283 = smh_90->msid;
  switch_snprintf (D.41716_280, D.41718_282, "a=msid-semantic: WMS %s\n", D.41719_283);

<bb 177>:
  D.41720_284 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].codec_negotiated;
  if (D.41720_284 != 0)
    goto <bb 178>;
  else
    goto <bb 263>;

<bb 178>:
  D.41723_285 = strlen (buf_144);
  D.41724_286 = buf_144 + D.41723_285;
  D.41726_288 = 65536 - D.41723_285;
  D.41727_289 = (int) port_1771;
  D.41732_290 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].no_crypto;
  if (D.41732_290 == 0)
    goto <bb 179>;
  else
    goto <bb 182>;

<bb 179>:
  D.41512_291 = session_72(D)->channel;
  D.41734_292 = switch_channel_test_flag (D.41512_291, 109);
  if (D.41734_292 != 0)
    goto <bb 182>;
  else
    goto <bb 180>;

<bb 180>:
  D.41736_293 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].crypto_type;
  if (D.41736_293 != 9)
    goto <bb 182>;
  else
    goto <bb 181>;

<bb 181>:

<bb 182>:
  # iftmp.29_60 = PHI <1(180), 0(181), 1(179), 0(178)>
  D.41737_296 = get_media_profile_name (session_72(D), iftmp.29_60);
  switch_snprintf (D.41724_286, D.41726_288, "m=audio %d %s", D.41727_289, D.41737_296);
  D.41738_297 = strlen (buf_144);
  D.41739_298 = buf_144 + D.41738_297;
  D.41741_300 = 65536 - D.41738_297;
  D.41566_301 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].cur_payload_map;
  D.41742_302 = D.41566_301->pt;
  D.41743_303 = (int) D.41742_302;
  switch_snprintf (D.41739_298, D.41741_300, " %d", D.41743_303);
  D.41744_304 = switch_media_handle_test_media_flag (smh_90, 15);
  if (D.41744_304 != 0)
    goto <bb 183>;
  else
    goto <bb 190>;

<bb 183>:
  D.41747_305 = smh_90->sdp_mutex;
  switch_mutex_lock (D.41747_305);
  pmap_306 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].cur_payload_map;
  # DEBUG pmap => pmap_306
  # DEBUG pmap => pmap_306
  if (pmap_306 != 0B)
    goto <bb 184>;
  else
    goto <bb 189>;

<bb 184>:
  D.41757_1682 = pmap_306->allocated;
  if (D.41757_1682 != 0)
    goto <bb 185>;
  else
    goto <bb 189>;

<bb 185>:
  # pmap_1554 = PHI <pmap_317(188), pmap_306(184)>
  D.41748_308 = pmap_1554->pt;
  D.41566_309 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].cur_payload_map;
  D.41742_310 = D.41566_309->pt;
  if (D.41748_308 != D.41742_310)
    goto <bb 186>;
  else
    goto <bb 187>;

<bb 186>:
  D.41751_311 = strlen (buf_144);
  D.41752_312 = buf_144 + D.41751_311;
  D.41754_314 = 65536 - D.41751_311;
  D.41755_316 = (int) D.41748_308;
  switch_snprintf (D.41752_312, D.41754_314, " %d", D.41755_316);

<bb 187>:
  pmap_317 = pmap_1554->next;
  # DEBUG pmap => pmap_317
  # DEBUG pmap => pmap_317
  if (pmap_317 != 0B)
    goto <bb 188>;
  else
    goto <bb 189>;

<bb 188>:
  D.41757_307 = pmap_317->allocated;
  if (D.41757_307 != 0)
    goto <bb 185>;
  else
    goto <bb 189>;

<bb 189>:
  D.41747_318 = smh_90->sdp_mutex;
  switch_mutex_unlock (D.41747_318);

<bb 190>:
  D.41522_319 = smh_90->mparams;
  D.41593_320 = D.41522_319->dtmf_type;
  if (D.41593_320 == 0)
    goto <bb 193>;
  else
    goto <bb 191>;

<bb 191>:
  D.41761_321 = switch_media_handle_test_media_flag (smh_90, 8);
  if (D.41761_321 != 0)
    goto <bb 193>;
  else
    goto <bb 192>;

<bb 192>:
  D.41512_322 = session_72(D)->channel;
  D.41763_323 = switch_channel_test_flag (D.41512_322, 93);
  if (D.41763_323 != 0)
    goto <bb 193>;
  else
    goto <bb 195>;

<bb 193>:
  D.41522_324 = smh_90->mparams;
  D.41596_325 = D.41522_324->te;
  if (D.41596_325 > 95)
    goto <bb 194>;
  else
    goto <bb 195>;

<bb 194>:
  D.41766_326 = strlen (buf_144);
  D.41767_327 = buf_144 + D.41766_326;
  D.41769_329 = 65536 - D.41766_326;
  D.41599_332 = (int) D.41596_325;
  switch_snprintf (D.41767_327, D.41769_329, " %d", D.41599_332);

<bb 195>:
  D.41770_333 = switch_media_handle_test_media_flag (smh_90, 9);
  if (D.41770_333 == 0)
    goto <bb 196>;
  else
    goto <bb 198>;

<bb 196>:
  D.41522_334 = smh_90->mparams;
  D.41606_335 = D.41522_334->cng_pt;
  D.41607_336 = D.41606_335 != 0;
  D.41608_337 = (_Bool) use_cng_17;
  D.41609_338 = D.41607_336 & D.41608_337;
  if (D.41609_338 != 0)
    goto <bb 197>;
  else
    goto <bb 198>;

<bb 197>:
  D.41775_339 = strlen (buf_144);
  D.41776_340 = buf_144 + D.41775_339;
  D.41778_342 = 65536 - D.41775_339;
  D.41612_345 = (int) D.41606_335;
  switch_snprintf (D.41776_340, D.41778_342, " %d", D.41612_345);

<bb 198>:
  D.41779_346 = strlen (buf_144);
  D.41780_347 = buf_144 + D.41779_346;
  D.41782_349 = 65536 - D.41779_346;
  switch_snprintf (D.41780_347, D.41782_349, "\n");
  D.41566_350 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].cur_payload_map;
  rate_351 = D.41566_350->adv_rm_rate;
  # DEBUG rate => rate_351
  D.41783_353 = D.41566_350->adv_channels;
  if (D.41783_353 == 0)
    goto <bb 199>;
  else
    goto <bb 200>;

<bb 199>:
  D.41786_356 = D.41566_350->rm_encoding;
  D.41787_357 = get_channels (D.41786_356, 1);
  D.41566_350->adv_channels = D.41787_357;

<bb 200>:
  D.41566_358 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].cur_payload_map;
  D.41783_359 = D.41566_358->adv_channels;
  if (D.41783_359 > 1)
    goto <bb 201>;
  else
    goto <bb 202>;

<bb 201>:
  D.41790_360 = strlen (buf_144);
  D.41791_361 = buf_144 + D.41790_360;
  D.41793_363 = 65536 - D.41790_360;
  D.41794_365 = D.41566_358->agreed_pt;
  D.41795_366 = (int) D.41794_365;
  D.41786_368 = D.41566_358->rm_encoding;
  switch_snprintf (D.41791_361, D.41793_363, "a=rtpmap:%d %s/%d/%d\n", D.41795_366, D.41786_368, rate_351, D.41783_359);
  goto <bb 203>;

<bb 202>:
  D.41797_371 = strlen (buf_144);
  D.41798_372 = buf_144 + D.41797_371;
  D.41800_374 = 65536 - D.41797_371;
  D.41794_376 = D.41566_358->agreed_pt;
  D.41795_377 = (int) D.41794_376;
  D.41786_379 = D.41566_358->rm_encoding;
  switch_snprintf (D.41798_372, D.41800_374, "a=rtpmap:%d %s/%d\n", D.41795_377, D.41786_379, rate_351);

<bb 203>:
  if (fmtp_out_21 != 0B)
    goto <bb 204>;
  else
    goto <bb 205>;

<bb 204>:
  D.41803_380 = strlen (buf_144);
  D.41804_381 = buf_144 + D.41803_380;
  D.41806_383 = 65536 - D.41803_380;
  D.41566_384 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].cur_payload_map;
  D.41794_385 = D.41566_384->agreed_pt;
  D.41795_386 = (int) D.41794_385;
  switch_snprintf (D.41804_381, D.41806_383, "a=fmtp:%d %s\n", D.41795_386, fmtp_out_21);

<bb 205>:
  D.41807_387 = switch_media_handle_test_media_flag (smh_90, 15);
  if (D.41807_387 != 0)
    goto <bb 206>;
  else
    goto <bb 213>;

<bb 206>:
  D.41747_388 = smh_90->sdp_mutex;
  switch_mutex_lock (D.41747_388);
  pmap_389 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].cur_payload_map;
  # DEBUG pmap => pmap_389
  # DEBUG pmap => pmap_389
  if (pmap_389 != 0B)
    goto <bb 207>;
  else
    goto <bb 212>;

<bb 207>:
  D.41757_1795 = pmap_389->allocated;
  if (D.41757_1795 != 0)
    goto <bb 208>;
  else
    goto <bb 212>;

<bb 208>:
  # pmap_1797 = PHI <pmap_402(211), pmap_389(207)>
  D.41748_391 = pmap_1797->pt;
  D.41566_392 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].cur_payload_map;
  D.41742_393 = D.41566_392->pt;
  if (D.41748_391 != D.41742_393)
    goto <bb 209>;
  else
    goto <bb 210>;

<bb 209>:
  D.41812_394 = strlen (buf_144);
  D.41813_395 = buf_144 + D.41812_394;
  D.41815_397 = 65536 - D.41812_394;
  D.41755_399 = (int) D.41748_391;
  D.41816_400 = pmap_1797->iananame;
  D.41817_401 = pmap_1797->rate;
  switch_snprintf (D.41813_395, D.41815_397, "a=rtpmap:%d %s/%ld\n", D.41755_399, D.41816_400, D.41817_401);

<bb 210>:
  pmap_402 = pmap_1797->next;
  # DEBUG pmap => pmap_402
  # DEBUG pmap => pmap_402
  if (pmap_402 != 0B)
    goto <bb 211>;
  else
    goto <bb 212>;

<bb 211>:
  D.41757_390 = pmap_402->allocated;
  if (D.41757_390 != 0)
    goto <bb 208>;
  else
    goto <bb 212>;

<bb 212>:
  D.41747_403 = smh_90->sdp_mutex;
  switch_mutex_unlock (D.41747_403);

<bb 213>:
  D.41819_404 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].read_codec.implementation;
  if (D.41819_404 != 0B)
    goto <bb 214>;
  else
    goto <bb 215>;

<bb 214>:
  D.41825_409 = D.41819_404->microseconds_per_packet;
  ptime_410 = D.41825_409 / 1000;
  # DEBUG ptime => ptime_410

<bb 215>:
  # ptime_5 = PHI <0(213), ptime_410(214)>
  # DEBUG ptime => ptime_5
  D.41522_411 = smh_90->mparams;
  D.41593_412 = D.41522_411->dtmf_type;
  if (D.41593_412 == 0)
    goto <bb 218>;
  else
    goto <bb 216>;

<bb 216>:
  D.41829_413 = switch_media_handle_test_media_flag (smh_90, 8);
  if (D.41829_413 != 0)
    goto <bb 218>;
  else
    goto <bb 217>;

<bb 217>:
  D.41512_414 = session_72(D)->channel;
  D.41831_415 = switch_channel_test_flag (D.41512_414, 93);
  if (D.41831_415 != 0)
    goto <bb 218>;
  else
    goto <bb 222>;

<bb 218>:
  D.41522_416 = smh_90->mparams;
  D.41596_417 = D.41522_416->te;
  if (D.41596_417 > 95)
    goto <bb 219>;
  else
    goto <bb 222>;

<bb 219>:
  D.41512_418 = session_72(D)->channel;
  D.41834_419 = switch_channel_test_flag (D.41512_418, 106);
  if (D.41834_419 != 0)
    goto <bb 220>;
  else
    goto <bb 221>;

<bb 220>:
  D.41837_420 = strlen (buf_144);
  D.41838_421 = buf_144 + D.41837_420;
  D.41840_423 = 65536 - D.41837_420;
  D.41522_424 = smh_90->mparams;
  D.41596_425 = D.41522_424->te;
  D.41599_426 = (int) D.41596_425;
  switch_snprintf (D.41838_421, D.41840_423, "a=rtpmap:%d telephone-event/8000\n", D.41599_426);
  goto <bb 222>;

<bb 221>:
  D.41842_427 = strlen (buf_144);
  D.41843_428 = buf_144 + D.41842_427;
  D.41845_430 = 65536 - D.41842_427;
  D.41522_434 = smh_90->mparams;
  D.41596_435 = D.41522_434->te;
  D.41599_436 = (int) D.41596_435;
  switch_snprintf (D.41843_428, D.41845_430, "a=rtpmap:%d telephone-event/8000\na=fmtp:%d 0-16\n", D.41599_436, D.41599_436);

<bb 222>:
  D.41846_437 = switch_media_handle_test_media_flag (smh_90, 9);
  if (D.41846_437 != 0)
    goto <bb 223>;
  else
    goto <bb 224>;

<bb 223>:
  D.41849_438 = strlen (buf_144);
  D.41850_439 = buf_144 + D.41849_438;
  D.41852_441 = 65536 - D.41849_438;
  switch_snprintf (D.41850_439, D.41852_441, "a=silenceSupp:off - - - -\n");
  goto <bb 227>;

<bb 224>:
  D.41522_442 = smh_90->mparams;
  D.41606_443 = D.41522_442->cng_pt;
  D.41607_444 = D.41606_443 != 0;
  D.41608_445 = (_Bool) use_cng_17;
  D.41609_446 = D.41607_444 & D.41608_445;
  if (D.41609_446 != 0)
    goto <bb 225>;
  else
    goto <bb 227>;

<bb 225>:
  D.41856_447 = strlen (buf_144);
  D.41857_448 = buf_144 + D.41856_447;
  D.41859_450 = 65536 - D.41856_447;
  D.41612_453 = (int) D.41606_443;
  switch_snprintf (D.41857_448, D.41859_450, "a=rtpmap:%d CN/8000\n", D.41612_453);
  D.41720_454 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].codec_negotiated;
  if (D.41720_454 == 0)
    goto <bb 226>;
  else
    goto <bb 227>;

<bb 226>:
  D.41522_455 = smh_90->mparams;
  D.41522_455->cng_pt = 0;

<bb 227>:
  if (append_audio_78 != 0B)
    goto <bb 228>;
  else
    goto <bb 233>;

<bb 228>:
  D.41864_456 = strlen (buf_144);
  D.41865_457 = buf_144 + D.41864_456;
  D.41867_459 = 65536 - D.41864_456;
  D.41870_460 = *append_audio_78;
  if (D.41870_460 != 0)
    goto <bb 229>;
  else
    goto <bb 230>;

<bb 229>:
  D.41873_461 = strlen (append_audio_78);
  D.41874_462 = D.41873_461 + -1;
  append_audio_463 = append_audio_78 + D.41874_462;

<bb 230>:
  # append_audio_62 = PHI <append_audio_463(229), append_audio_78(228)>
  D.41876_465 = *append_audio_62;
  if (D.41876_465 == 10)
    goto <bb 232>;
  else
    goto <bb 231>;

<bb 231>:

<bb 232>:
  # iftmp.30_61 = PHI <""(230), "\n"(231)>
  switch_snprintf (D.41865_457, D.41867_459, "%s%s", append_audio_78, iftmp.30_61);

<bb 233>:
  if (ptime_5 != 0)
    goto <bb 234>;
  else
    goto <bb 235>;

<bb 234>:
  D.41882_468 = strlen (buf_144);
  D.41883_469 = buf_144 + D.41882_468;
  D.41885_471 = 65536 - D.41882_468;
  switch_snprintf (D.41883_469, D.41885_471, "a=ptime:%d\n", ptime_5);

<bb 235>:
  if (local_sdp_audio_zrtp_hash_83 != 0B)
    goto <bb 236>;
  else
    goto <bb 237>;

<bb 236>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 6350, session_72(D), 7, "Adding audio a=zrtp-hash:%s\n", local_sdp_audio_zrtp_hash_83);
  D.41888_472 = strlen (buf_144);
  D.41889_473 = buf_144 + D.41888_472;
  D.41891_475 = 65536 - D.41888_472;
  switch_snprintf (D.41889_473, D.41891_475, "a=zrtp-hash:%s\n", local_sdp_audio_zrtp_hash_83);

<bb 237>:
  # DEBUG s => sr_4
  if (sr_4 == 0B)
    goto <bb 239>;
  else
    goto <bb 238>;

<bb 238>:
  D.48143_1522 = *sr_4;
  if (D.48143_1522 == 0)
    goto <bb 239>;
  else
    goto <bb 469>;

<bb 239>:
  D.41899_481 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].local_dtls_fingerprint.type;
  # DEBUG s => D.41899_481
  if (D.41899_481 == 0B)
    goto <bb 241>;
  else
    goto <bb 240>;

<bb 240>:
  D.48147_1524 = MEM[(const char *)D.41899_481];
  if (D.48147_1524 == 0)
    goto <bb 241>;
  else
    goto <bb 470>;

<bb 241>:
  D.41522_489 = smh_90->mparams;
  D.41523_490 = D.41522_489->rtcp_audio_interval_msec;
  if (D.41523_490 != 0B)
    goto <bb 242>;
  else
    goto <bb 245>;

<bb 242>:
  D.41910_491 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].rtcp_mux;
  if (D.41910_491 > 0)
    goto <bb 243>;
  else
    goto <bb 244>;

<bb 243>:
  D.41913_492 = strlen (buf_144);
  D.41914_493 = buf_144 + D.41913_492;
  D.41916_495 = 65536 - D.41913_492;
  switch_snprintf (D.41914_493, D.41916_495, "a=rtcp-mux\n");
  D.41917_496 = strlen (buf_144);
  D.41918_497 = buf_144 + D.41917_496;
  D.41920_499 = 65536 - D.41917_496;
  switch_snprintf (D.41918_497, D.41920_499, "a=rtcp:%d IN %s %s\n", D.41727_289, family_59, ip_1);
  goto <bb 245>;

<bb 244>:
  D.41922_501 = strlen (buf_144);
  D.41923_502 = buf_144 + D.41922_501;
  D.41925_504 = 65536 - D.41922_501;
  D.41926_506 = D.41727_289 + 1;
  switch_snprintf (D.41923_502, D.41925_504, "a=rtcp:%d IN %s %s\n", D.41926_506, family_59, ip_1);

<bb 245>:
  D.41927_507 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].ice_out.cands[0][0].ready;
  if (D.41927_507 != 0)
    goto <bb 246>;
  else
    goto <bb 258>;

<bb 246>:
  tmp1 = "";
  tmp2 = "";
  # DEBUG c1 => 659136
  # DEBUG c2 => 659134
  # DEBUG c3 => 659126
  # DEBUG c4 => 659124
  tmp1[10] = 0;
  tmp2[10] = 0;
  switch_stun_random_string (&tmp1, 10, "0123456789");
  switch_stun_random_string (&tmp2, 10, "0123456789");
  # DEBUG D#25 => &MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].ice_out
  # DEBUG ice_out => D#25
  D.41930_513 = strlen (buf_144);
  D.41931_514 = buf_144 + D.41930_513;
  D.41933_516 = 65536 - D.41930_513;
  D.41934_517 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].ssrc;
  D.41935_518 = smh_90->cname;
  switch_snprintf (D.41931_514, D.41933_516, "a=ssrc:%u cname:%s\n", D.41934_517, D.41935_518);
  D.41936_519 = strlen (buf_144);
  D.41937_520 = buf_144 + D.41936_519;
  D.41939_522 = 65536 - D.41936_519;
  D.41934_523 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].ssrc;
  D.41719_524 = smh_90->msid;
  switch_snprintf (D.41937_520, D.41939_522, "a=ssrc:%u msid:%s a0\n", D.41934_523, D.41719_524);
  D.41940_525 = strlen (buf_144);
  D.41941_526 = buf_144 + D.41940_525;
  D.41943_528 = 65536 - D.41940_525;
  D.41934_529 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].ssrc;
  D.41719_530 = smh_90->msid;
  switch_snprintf (D.41941_526, D.41943_528, "a=ssrc:%u mslabel:%s\n", D.41934_529, D.41719_530);
  D.41944_531 = strlen (buf_144);
  D.41945_532 = buf_144 + D.41944_531;
  D.41947_534 = 65536 - D.41944_531;
  D.41934_535 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].ssrc;
  D.41719_536 = smh_90->msid;
  switch_snprintf (D.41945_532, D.41947_534, "a=ssrc:%u label:%sa0\n", D.41934_535, D.41719_536);
  D.41948_537 = strlen (buf_144);
  D.41949_538 = buf_144 + D.41948_537;
  D.41951_540 = 65536 - D.41948_537;
  D.41952_541 = MEM[(struct ice_t *)smh_90 + 6480B].ufrag;
  switch_snprintf (D.41949_538, D.41951_540, "a=ice-ufrag:%s\n", D.41952_541);
  D.41953_542 = strlen (buf_144);
  D.41954_543 = buf_144 + D.41953_542;
  D.41956_545 = 65536 - D.41953_542;
  D.41957_546 = MEM[(struct ice_t *)smh_90 + 6480B].pwd;
  switch_snprintf (D.41954_543, D.41956_545, "a=ice-pwd:%s\n", D.41957_546);
  D.41958_547 = strlen (buf_144);
  D.41959_548 = buf_144 + D.41958_547;
  D.41961_550 = 65536 - D.41958_547;
  D.41962_551 = MEM[(struct ice_t *)smh_90 + 6480B].cands[0][0].transport;
  D.41963_552 = MEM[(struct ice_t *)smh_90 + 6480B].cands[0][0].con_addr;
  D.41964_553 = MEM[(struct ice_t *)smh_90 + 6480B].cands[0][0].con_port;
  D.41965_554 = (int) D.41964_553;
  switch_snprintf (D.41959_548, D.41961_550, "a=candidate:%s 1 %s %u %s %d typ host generation 0\n", &tmp1, D.41962_551, 659136, D.41963_552, D.41965_554);
  D.41966_555 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].local_sdp_ip;
  # DEBUG s => D.41966_555
  if (D.41966_555 == 0B)
    goto <bb 251>;
  else
    goto <bb 247>;

<bb 247>:
  D.48151_1526 = MEM[(const char *)D.41966_555];
  if (D.48151_1526 == 0)
    goto <bb 251>;
  else
    goto <bb 471>;

<bb 248>:
  D.48155_1528 = MEM[(const char *)D.41963_557];
  if (D.48155_1528 == 0)
    goto <bb 251>;
  else
    goto <bb 472>;

<bb 249>:
  D.41975_562 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].local_sdp_port;
  D.41964_563 = MEM[(struct ice_t *)smh_90 + 6480B].cands[0][0].con_port;
  if (D.41975_562 != D.41964_563)
    goto <bb 250>;
  else
    goto <bb 251>;

<bb 250>:
  D.41978_564 = strlen (buf_144);
  D.41979_565 = buf_144 + D.41978_564;
  D.41981_567 = 65536 - D.41978_564;
  D.41962_568 = MEM[(struct ice_t *)smh_90 + 6480B].cands[0][0].transport;
  D.41965_571 = (int) D.41964_563;
  D.41982_574 = (int) D.41975_562;
  switch_snprintf (D.41979_565, D.41981_567, "a=candidate:%s 1 %s %u %s %d typ srflx raddr %s rport %d generation 0\n", &tmp2, D.41962_568, 659126, D.41963_557, D.41965_571, D.41966_555, D.41982_574);

<bb 251>:
  D.41910_575 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].rtcp_mux;
  D.41985_576 = D.41910_575 <= 0;
  D.41986_577 = (_Bool) is_outbound_89;
  D.41987_578 = D.41985_576 | D.41986_577;
  if (D.41987_578 != 0)
    goto <bb 253>;
  else
    goto <bb 252>;

<bb 252>:
  D.41512_579 = session_72(D)->channel;
  D.41989_580 = switch_channel_test_flag (D.41512_579, 84);
  if (D.41989_580 != 0)
    goto <bb 253>;
  else
    goto <bb 258>;

<bb 253>:
  D.41990_581 = strlen (buf_144);
  D.41991_582 = buf_144 + D.41990_581;
  D.41993_584 = 65536 - D.41990_581;
  D.41962_585 = MEM[(struct ice_t *)smh_90 + 6480B].cands[0][0].transport;
  D.41963_586 = MEM[(struct ice_t *)smh_90 + 6480B].cands[0][0].con_addr;
  D.41964_587 = MEM[(struct ice_t *)smh_90 + 6480B].cands[0][0].con_port;
  D.41965_588 = (int) D.41964_587;
  D.41910_589 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].rtcp_mux;
  D.41994_590 = D.41910_589 <= 0;
  D.41995_591 = D.41965_588 + D.41994_590;
  switch_snprintf (D.41991_582, D.41993_584, "a=candidate:%s 2 %s %u %s %d typ host generation 0\n", &tmp1, D.41962_585, 659134, D.41963_586, D.41995_591);
  D.41966_592 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].local_sdp_ip;
  # DEBUG s => D.41966_592
  if (D.41966_592 == 0B)
    goto <bb 258>;
  else
    goto <bb 254>;

<bb 254>:
  D.48159_1530 = MEM[(const char *)D.41966_592];
  if (D.48159_1530 == 0)
    goto <bb 258>;
  else
    goto <bb 473>;

<bb 255>:
  D.48163_1532 = MEM[(const char *)D.41963_594];
  if (D.48163_1532 == 0)
    goto <bb 258>;
  else
    goto <bb 474>;

<bb 256>:
  D.41975_599 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].local_sdp_port;
  D.41964_600 = MEM[(struct ice_t *)smh_90 + 6480B].cands[0][0].con_port;
  if (D.41975_599 != D.41964_600)
    goto <bb 257>;
  else
    goto <bb 258>;

<bb 257>:
  D.42006_601 = strlen (buf_144);
  D.42007_602 = buf_144 + D.42006_601;
  D.42009_604 = 65536 - D.42006_601;
  D.41962_605 = MEM[(struct ice_t *)smh_90 + 6480B].cands[0][0].transport;
  D.41965_608 = (int) D.41964_600;
  D.41910_609 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].rtcp_mux;
  D.41994_610 = D.41910_609 <= 0;
  D.41995_611 = D.41965_608 + D.41994_610;
  D.41982_614 = (int) D.41975_599;
  D.42010_617 = D.41994_610 + D.41982_614;
  switch_snprintf (D.42007_602, D.42009_604, "a=candidate:%s 2 %s %u %s %d typ srflx raddr %s rport %d generation 0\n", &tmp2, D.41962_605, 659124, D.41963_594, D.41995_611, D.41966_592, D.42010_617);

<bb 258>:
  D.41736_618 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].crypto_type;
  if (D.41736_618 != 9)
    goto <bb 259>;
  else
    goto <bb 305>;

<bb 259>:
  D.41512_619 = session_72(D)->channel;
  D.42013_620 = switch_channel_test_flag (D.41512_619, 109);
  if (D.42013_620 == 0)
    goto <bb 260>;
  else
    goto <bb 305>;

<bb 260>:
  D.41736_621 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].crypto_type;
  D.42016_622 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].ssec[D.41736_621].local_crypto_key;
  # DEBUG s => D.42016_622
  if (D.42016_622 == 0B)
    goto <bb 305>;
  else
    goto <bb 261>;

<bb 261>:
  D.48167_1534 = MEM[(const char *)D.42016_622];
  if (D.48167_1534 == 0)
    goto <bb 305>;
  else
    goto <bb 475>;

<bb 262>:
  D.42023_626 = strlen (buf_144);
  D.42024_627 = buf_144 + D.42023_626;
  D.42026_629 = 65536 - D.42023_626;
  D.41736_630 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].crypto_type;
  D.42016_631 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].ssec[D.41736_630].local_crypto_key;
  switch_snprintf (D.42024_627, D.42026_629, "a=crypto:%s\n", D.42016_631);
  goto <bb 305>;

<bb 263>:
  D.41522_632 = smh_90->mparams;
  D.41587_633 = D.41522_632->num_codecs;
  if (D.41587_633 != 0)
    goto <bb 264>;
  else
    goto <bb 305>;

<bb 264>:
  # DEBUG cur_ptime => 0
  # DEBUG this_ptime => 0
  # DEBUG cng_type => 0
  D.42030_637 = switch_media_handle_test_media_flag (smh_90, 9);
  if (D.42030_637 == 0)
    goto <bb 265>;
  else
    goto <bb 268>;

<bb 265>:
  D.41522_638 = smh_90->mparams;
  D.41606_639 = D.41522_638->cng_pt;
  D.41607_640 = D.41606_639 != 0;
  D.41608_641 = (_Bool) use_cng_17;
  D.41609_642 = D.41607_640 & D.41608_641;
  if (D.41609_642 != 0)
    goto <bb 266>;
  else
    goto <bb 268>;

<bb 266>:
  cng_type_645 = (int) D.41606_639;
  # DEBUG cng_type => cng_type_645
  D.41720_646 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].codec_negotiated;
  if (D.41720_646 == 0)
    goto <bb 267>;
  else
    goto <bb 268>;

<bb 267>:
  D.41522_638->cng_pt = 0;

<bb 268>:
  # cng_type_42 = PHI <0(264), 0(265), cng_type_645(266), cng_type_645(267)>
  # DEBUG cng_type => cng_type_42
  D.41512_648 = session_72(D)->channel;
  mult_649 = switch_channel_get_variable_dup (D.41512_648, "sdp_m_per_ptime", 1, -1);
  # DEBUG mult => mult_649
  D.41512_650 = session_72(D)->channel;
  D.42039_651 = switch_channel_test_flag (D.41512_650, 106);
  if (D.42039_651 != 0)
    goto <bb 281>;
  else
    goto <bb 269>;

<bb 269>:
  if (mult_649 != 0B)
    goto <bb 271>;
  else
    goto <bb 270>;

<bb 270>:
  # DEBUG cur_ptime => 0
  # DEBUG i => 0
  D.41522_1543 = smh_90->mparams;
  D.41587_1541 = D.41522_1543->num_codecs;
  if (D.41587_1541 > 0)
    goto <bb 290>;
  else
    goto <bb 305>;

<bb 271>:
  # DEBUG expr => mult_649
  D.50478_1670 = strcasecmp (mult_649, "no");
  if (D.50478_1670 == 0)
    goto <bb 280>;
  else
    goto <bb 272>;

<bb 272>:
  D.50479_1671 = strcasecmp (mult_649, "off");
  if (D.50479_1671 == 0)
    goto <bb 280>;
  else
    goto <bb 273>;

<bb 273>:
  D.50480_1672 = strcasecmp (mult_649, "false");
  if (D.50480_1672 == 0)
    goto <bb 280>;
  else
    goto <bb 274>;

<bb 274>:
  D.50481_1673 = strcasecmp (mult_649, "f");
  if (D.50481_1673 == 0)
    goto <bb 280>;
  else
    goto <bb 275>;

<bb 275>:
  D.50482_1674 = strcasecmp (mult_649, "disabled");
  if (D.50482_1674 == 0)
    goto <bb 280>;
  else
    goto <bb 276>;

<bb 276>:
  D.50483_1675 = strcasecmp (mult_649, "inactive");
  if (D.50483_1675 == 0)
    goto <bb 280>;
  else
    goto <bb 277>;

<bb 277>:
  D.50484_1676 = strcasecmp (mult_649, "disallow");
  if (D.50484_1676 == 0)
    goto <bb 280>;
  else
    goto <bb 278>;

<bb 278>:
  D.50485_1677 = switch_is_number (mult_649);
  if (D.50485_1677 != 0)
    goto <bb 279>;
  else
    goto <bb 476>;

<bb 279>:
  # DEBUG __nptr => mult_649
  D.50486_1678 = strtol (mult_649, 0B, 10);
  if (D.50486_1678 == 0)
    goto <bb 280>;
  else
    goto <bb 476>;

<bb 280>:

<bb 281>:
  # DEBUG bp => buf_144
  D.41512_690 = session_72(D)->channel;
  D.42046_691 = switch_channel_test_flag (D.41512_690, 106);
  if (D.42046_691 == 0)
    goto <bb 282>;
  else
    goto <bb 284>;

<bb 282>:
  D.41512_692 = session_72(D)->channel;
  D.42048_693 = switch_channel_test_flag (D.41512_692, 109);
  if (D.42048_693 == 0)
    goto <bb 284>;
  else
    goto <bb 283>;

<bb 283>:

<bb 284>:
  # both_63 = PHI <1(282), 0(283), 0(281)>
  # DEBUG both => both_63
  D.41732_697 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].no_crypto;
  if (D.41732_697 == 0)
    goto <bb 285>;
  else
    goto <bb 286>;

<bb 285>:
  D.41512_698 = session_72(D)->channel;
  D.42054_699 = switch_channel_test_flag (D.41512_698, 92);
  if (D.42054_699 != 0)
    goto <bb 287>;
  else
    goto <bb 286>;

<bb 286>:
  D.41512_700 = session_72(D)->channel;
  D.42055_701 = switch_channel_test_flag (D.41512_700, 109);
  if (D.42055_701 != 0)
    goto <bb 287>;
  else
    goto <bb 288>;

<bb 287>:
  map.33_702 = map;
  generate_m.isra.4 (session_72(D), buf_144, 65536, port_1771, family_59, ip_1, 0, append_audio_78, sr_4, use_cng_17, cng_type_42, map.33_702, 1);
  D.42057_703 = strlen (buf_144);
  bp_704 = buf_144 + D.42057_703;
  # DEBUG bp => bp_704
  D.42058_705 = smh_90->crypto_mode;
  if (D.42058_705 == 1)
    goto <bb 305>;
  else
    goto <bb 288>;

<bb 288>:
  # bp_43 = PHI <buf_144(286), bp_704(287)>
  # both_44 = PHI <both_63(286), both_63(287)>
  # DEBUG both => both_44
  # DEBUG bp => bp_43
  if (both_44 != 0)
    goto <bb 289>;
  else
    goto <bb 305>;

<bb 289>:
  D.42063_707 = strlen (buf_144);
  D.42064_708 = 65536 - D.42063_707;
  map.33_709 = map;
  generate_m.isra.4 (session_72(D), bp_43, D.42064_708, port_1771, family_59, ip_1, 0, append_audio_78, sr_4, use_cng_17, cng_type_42, map.33_709, 0);
  goto <bb 305>;

<bb 290>:
  # i_1539 = PHI <i_688(304), 0(270)>
  # cur_ptime_1537 = PHI <cur_ptime_39(304), 0(270)>
  imp_656 = smh_90->codecs[i_1539];
  # DEBUG imp => imp_656
  D.42065_657 = imp_656->codec_type;
  if (D.42065_657 != 0)
    goto <bb 304>;
  else
    goto <bb 291>;

<bb 291>:
  D.42068_658 = imp_656->microseconds_per_packet;
  this_ptime_659 = D.42068_658 / 1000;
  # DEBUG this_ptime => this_ptime_659
  D.42071_660 = imp_656->iananame;
  D.42072_661 = strcasecmp (D.42071_660, "ilbc");
  if (D.42072_661 == 0)
    goto <bb 293>;
  else
    goto <bb 292>;

<bb 292>:
  D.42074_663 = strcasecmp (D.42071_660, "isac");
  if (D.42074_663 == 0)
    goto <bb 293>;
  else
    goto <bb 294>;

<bb 293>:
  # DEBUG this_ptime => 20

<bb 294>:
  # this_ptime_41 = PHI <this_ptime_659(292), 20(293)>
  # DEBUG this_ptime => this_ptime_41
  if (cur_ptime_1537 != this_ptime_41)
    goto <bb 295>;
  else
    goto <bb 304>;

<bb 295>:
  # DEBUG bp => buf_144
  # DEBUG both => 1
  # DEBUG cur_ptime => this_ptime_41
  D.41732_668 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].no_crypto;
  if (D.41732_668 == 0)
    goto <bb 296>;
  else
    goto <bb 297>;

<bb 296>:
  D.41512_669 = session_72(D)->channel;
  D.42081_670 = switch_channel_test_flag (D.41512_669, 92);
  if (D.42081_670 != 0)
    goto <bb 298>;
  else
    goto <bb 297>;

<bb 297>:
  D.41512_671 = session_72(D)->channel;
  D.42082_672 = switch_channel_test_flag (D.41512_671, 109);
  if (D.42082_672 != 0)
    goto <bb 298>;
  else
    goto <bb 300>;

<bb 298>:
  D.42083_673 = strlen (buf_144);
  D.42084_674 = 65536 - D.42083_673;
  map.33_675 = map;
  generate_m.isra.4 (session_72(D), buf_144, D.42084_674, port_1771, family_59, ip_1, this_ptime_41, append_audio_78, sr_4, use_cng_17, cng_type_42, map.33_675, 1);
  D.42085_676 = strlen (buf_144);
  bp_677 = buf_144 + D.42085_676;
  # DEBUG bp => bp_677
  D.42058_678 = smh_90->crypto_mode;
  if (D.42058_678 == 1)
    goto <bb 299>;
  else
    goto <bb 300>;

<bb 299>:
  # DEBUG both => 0

<bb 300>:
  # bp_45 = PHI <buf_144(297), bp_677(298), bp_677(299)>
  # both_46 = PHI <1(297), 1(298), 0(299)>
  # DEBUG both => both_46
  # DEBUG bp => bp_45
  D.41512_680 = session_72(D)->channel;
  D.42090_681 = switch_channel_test_flag (D.41512_680, 106);
  if (D.42090_681 != 0)
    goto <bb 477>;
  else
    goto <bb 301>;

<bb 301>:
  D.41512_682 = session_72(D)->channel;
  D.42092_683 = switch_channel_test_flag (D.41512_682, 109);
  if (D.42092_683 != 0)
    goto <bb 477>;
  else
    goto <bb 302>;

<bb 302>:
  # both_47 = PHI <both_46(301)>
  # DEBUG both => both_47
  if (both_47 != 0)
    goto <bb 303>;
  else
    goto <bb 304>;

<bb 303>:
  D.42095_685 = strlen (buf_144);
  D.42096_686 = 65536 - D.42095_685;
  map.33_687 = map;
  generate_m.isra.4 (session_72(D), bp_45, D.42096_686, port_1771, family_59, ip_1, this_ptime_41, append_audio_78, sr_4, use_cng_17, cng_type_42, map.33_687, 0);

<bb 304>:
  # cur_ptime_39 = PHI <cur_ptime_1537(290), cur_ptime_1537(294), this_ptime_41(302), this_ptime_41(303), this_ptime_41(477)>
  # DEBUG cur_ptime => cur_ptime_39
  i_688 = i_1539 + 1;
  # DEBUG i => i_688
  # DEBUG cur_ptime => cur_ptime_39
  # DEBUG i => i_688
  D.41522_654 = smh_90->mparams;
  D.41587_655 = D.41522_654->num_codecs;
  if (D.41587_655 > i_688)
    goto <bb 290>;
  else
    goto <bb 305>;

<bb 305>:
  # DEBUG rate => NULL
  # DEBUG ptime => NULL
  D.41512_710 = session_72(D)->channel;
  D.42097_711 = switch_channel_test_flag (D.41512_710, 98);
  if (D.42097_711 != 0)
    goto <bb 306>;
  else
    goto <bb 452>;

<bb 306>:
  D.41512_712 = session_72(D)->channel;
  D.42100_713 = switch_channel_direction (D.41512_712);
  if (D.42100_713 == 0)
    goto <bb 307>;
  else
    goto <bb 309>;

<bb 307>:
  D.41534_714 = smh_90->session;
  D.41535_715 = D.41534_714->channel;
  D.42103_716 = switch_channel_test_flag (D.41535_715, 109);
  if (D.42103_716 != 0)
    goto <bb 308>;
  else
    goto <bb 309>;

<bb 308>:
  MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].no_crypto = 1;

<bb 309>:
  D.42106_717 = MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].local_sdp_port;
  if (D.42106_717 == 0)
    goto <bb 310>;
  else
    goto <bb 311>;

<bb 310>:
  switch_core_media_choose_port (session_72(D), 1, 0);

<bb 311>:
  D.41512_718 = session_72(D)->channel;
  D.42109_719 = switch_channel_test_flag (D.41512_718, 106);
  if (D.42109_719 != 0)
    goto <bb 312>;
  else
    goto <bb 313>;

<bb 312>:
  switch_media_handle_set_media_flag (smh_90, 16);

<bb 313>:
  D.42112_720 = MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].adv_sdp_port;
  v_port_721 = (uint32_t) D.42112_720;
  # DEBUG v_port => v_port_721
  if (v_port_721 != 0)
    goto <bb 487>;
  else
    goto <bb 452>;

<bb 314>:
  # pass_fmtp_1775 = PHI <pass_fmtp_19(451), pass_fmtp_1770(487)>
  # vp8_1773 = PHI <vp8_26(451), vp8_1776(487)>
  # red_1774 = PHI <red_32(451), red_652(487)>
  # loops_851 = PHI <loops_1128(451), loops_647(487)>
  D.41534_723 = smh_90->session;
  D.41535_724 = D.41534_723->channel;
  D.42115_725 = switch_channel_test_flag (D.41535_724, 108);
  if (D.42115_725 != 0)
    goto <bb 315>;
  else
    goto <bb 316>;

<bb 315>:
  gen_ice (session_72(D), 1, ip_1, D.42112_720);

<bb 316>:
  D.42119_727 = strlen (buf_144);
  D.42120_728 = buf_144 + D.42119_727;
  D.42122_730 = 65536 - D.42119_727;
  if (loops_851 == 0)
    goto <bb 317>;
  else
    goto <bb 319>;

<bb 317>:
  D.41512_731 = session_72(D)->channel;
  D.42129_732 = switch_channel_test_flag (D.41512_731, 92);
  if (D.42129_732 != 0)
    goto <bb 318>;
  else
    goto <bb 319>;

<bb 318>:
  D.41512_733 = session_72(D)->channel;
  D.42131_734 = switch_channel_direction (D.41512_733);
  if (D.42131_734 == 1)
    goto <bb 322>;
  else
    goto <bb 319>;

<bb 319>:
  D.41736_735 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].crypto_type;
  if (D.41736_735 != 9)
    goto <bb 322>;
  else
    goto <bb 320>;

<bb 320>:
  D.41512_736 = session_72(D)->channel;
  D.42133_737 = switch_channel_test_flag (D.41512_736, 109);
  if (D.42133_737 != 0)
    goto <bb 321>;
  else
    goto <bb 322>;

<bb 321>:

<bb 322>:
  # iftmp.34_64 = PHI <1(319), 0(320), 1(318), 1(321)>
  D.42134_740 = get_media_profile_name (session_72(D), iftmp.34_64);
  switch_snprintf (D.42120_728, D.42122_730, "m=video %d %s", v_port_721, D.42134_740);
  D.42135_741 = MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].codec_negotiated;
  if (D.42135_741 != 0)
    goto <bb 323>;
  else
    goto <bb 331>;

<bb 323>:
  switch_core_media_set_video_codec (session_72(D), 0);
  D.42138_742 = strlen (buf_144);
  D.42139_743 = buf_144 + D.42138_742;
  D.42141_745 = 65536 - D.42138_742;
  D.42142_746 = MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].cur_payload_map;
  D.42143_747 = D.42142_746->agreed_pt;
  D.42144_748 = (int) D.42143_747;
  switch_snprintf (D.42139_743, D.42141_745, " %d", D.42144_748);
  D.42145_749 = switch_media_handle_test_media_flag (smh_90, 16);
  if (D.42145_749 != 0)
    goto <bb 324>;
  else
    goto <bb 341>;

<bb 324>:
  D.41747_750 = smh_90->sdp_mutex;
  switch_mutex_lock (D.41747_750);
  pmap_751 = MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].cur_payload_map;
  # DEBUG pmap => pmap_751
  # DEBUG pmap => pmap_751
  if (pmap_751 != 0B)
    goto <bb 325>;
  else
    goto <bb 330>;

<bb 325>:
  D.42158_899 = pmap_751->allocated;
  if (D.42158_899 != 0)
    goto <bb 326>;
  else
    goto <bb 330>;

<bb 326>:
  # pmap_1783 = PHI <pmap_762(329), pmap_751(325)>
  D.42148_753 = pmap_1783->pt;
  D.42142_754 = MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].cur_payload_map;
  D.42149_755 = D.42142_754->pt;
  if (D.42148_753 != D.42149_755)
    goto <bb 327>;
  else
    goto <bb 328>;

<bb 327>:
  D.42152_756 = strlen (buf_144);
  D.42153_757 = buf_144 + D.42152_756;
  D.42155_759 = 65536 - D.42152_756;
  D.42156_761 = (int) D.42148_753;
  switch_snprintf (D.42153_757, D.42155_759, " %d", D.42156_761);

<bb 328>:
  pmap_762 = pmap_1783->next;
  # DEBUG pmap => pmap_762
  # DEBUG pmap => pmap_762
  if (pmap_762 != 0B)
    goto <bb 329>;
  else
    goto <bb 330>;

<bb 329>:
  D.42158_752 = pmap_762->allocated;
  if (D.42158_752 != 0)
    goto <bb 326>;
  else
    goto <bb 330>;

<bb 330>:
  D.41747_763 = smh_90->sdp_mutex;
  switch_mutex_unlock (D.41747_763);
  goto <bb 341>;

<bb 331>:
  D.41522_764 = smh_90->mparams;
  D.41587_765 = D.41522_764->num_codecs;
  if (D.41587_765 != 0)
    goto <bb 332>;
  else
    goto <bb 341>;

<bb 332>:
  already_did = {};
  # DEBUG i => 0
  # DEBUG i => 0
  # DEBUG ptime => NULL
  D.41522_907 = smh_90->mparams;
  D.41587_1789 = D.41522_907->num_codecs;
  if (D.41587_1789 > 0)
    goto <bb 333>;
  else
    goto <bb 341>;

<bb 333>:
  # i_1791 = PHI <i_790(340), 0(332)>
  imp_769 = smh_90->codecs[i_1791];
  # DEBUG imp => imp_769
  D.42162_770 = imp_769->codec_type;
  if (D.42162_770 != 1)
    goto <bb 340>;
  else
    goto <bb 334>;

<bb 334>:
  D.41512_771 = session_72(D)->channel;
  D.42165_772 = switch_channel_direction (D.41512_771);
  if (D.42165_772 == 0)
    goto <bb 335>;
  else
    goto <bb 336>;

<bb 335>:
  D.41512_773 = session_72(D)->channel;
  D.42168_774 = switch_channel_test_flag (D.41512_773, 114);
  if (D.42168_774 != 0)
    goto <bb 340>;
  else
    goto <bb 336>;

<bb 336>:
  D.42171_775 = smh_90->ianacodes[i_1791];
  D.42172_776 = (signed char) D.42171_775;
  if (D.42172_776 >= 0)
    goto <bb 337>;
  else
    goto <bb 339>;

<bb 337>:
  D.42175_778 = (int) D.42171_775;
  D.42176_779 = already_did[D.42175_778];
  if (D.42176_779 != 0)
    goto <bb 340>;
  else
    goto <bb 338>;

<bb 338>:
  already_did[D.42175_778] = 1;

<bb 339>:
  D.42179_782 = strlen (buf_144);
  D.42180_783 = buf_144 + D.42179_782;
  D.42182_785 = 65536 - D.42179_782;
  D.42175_787 = (int) D.42171_775;
  switch_snprintf (D.42180_783, D.42182_785, " %d", D.42175_787);

<bb 340>:
  # DEBUG ptime => NULL
  i_790 = i_1791 + 1;
  # DEBUG i => i_790
  # DEBUG i => i_790
  # DEBUG ptime => NULL
  D.41522_767 = smh_90->mparams;
  D.41587_768 = D.41522_767->num_codecs;
  if (D.41587_768 > i_790)
    goto <bb 333>;
  else
    goto <bb 341>;

<bb 341>:
  # DEBUG ptime => NULL
  D.42186_791 = strlen (buf_144);
  D.42187_792 = buf_144 + D.42186_791;
  D.42189_794 = 65536 - D.42186_791;
  switch_snprintf (D.42187_792, D.42189_794, "\n");
  D.42135_795 = MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].codec_negotiated;
  if (D.42135_795 != 0)
    goto <bb 342>;
  else
    goto <bb 369>;

<bb 342>:
  D.42142_796 = MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].cur_payload_map;
  D.42192_797 = D.42142_796->rm_encoding;
  D.42193_798 = strcasecmp (D.42192_797, "VP8");
  if (D.42193_798 == 0)
    goto <bb 343>;
  else
    goto <bb 344>;

<bb 343>:
  D.42149_800 = D.42142_796->pt;
  vp8_801 = (int) D.42149_800;
  # DEBUG vp8 => vp8_801

<bb 344>:
  # vp8_22 = PHI <vp8_1773(342), vp8_801(343)>
  # DEBUG vp8 => vp8_22
  D.42196_804 = strcasecmp (D.42192_797, "red");
  if (D.42196_804 == 0)
    goto <bb 345>;
  else
    goto <bb 346>;

<bb 345>:
  D.42149_806 = D.42142_796->pt;
  red_807 = (int) D.42149_806;
  # DEBUG red => red_807

<bb 346>:
  # red_28 = PHI <red_1774(344), red_807(345)>
  # DEBUG red => red_28
  # DEBUG D#32 => MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].cur_payload_map
  # DEBUG D#31 => D#32->rm_rate
  # DEBUG rate => D#31
  D.42199_810 = strlen (buf_144);
  D.42200_811 = buf_144 + D.42199_810;
  D.42202_813 = 65536 - D.42199_810;
  D.42149_815 = D.42142_796->pt;
  D.42203_816 = (int) D.42149_815;
  D.42204_820 = D.42142_796->rm_rate;
  switch_snprintf (D.42200_811, D.42202_813, "a=rtpmap:%d %s/%ld\n", D.42203_816, D.42192_797, D.42204_820);
  D.41512_821 = session_72(D)->channel;
  D.42205_822 = switch_channel_test_flag (D.41512_821, 84);
  if (D.42205_822 != 0)
    goto <bb 347>;
  else
    goto <bb 348>;

<bb 347>:
  D.42142_823 = MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].cur_payload_map;
  pass_fmtp_824 = D.42142_823->rm_fmtp;
  # DEBUG pass_fmtp => pass_fmtp_824
  goto <bb 352>;

<bb 348>:
  # DEBUG pass_fmtp => 0B
  D.41512_826 = session_72(D)->channel;
  D.42209_827 = switch_channel_get_partner_uuid (D.41512_826);
  if (D.42209_827 != 0B)
    goto <bb 349>;
  else
    goto <bb 350>;

<bb 349>:
  D.41512_828 = session_72(D)->channel;
  switch_channel_get_variable_partner (D.41512_828, "rtp_video_fmtp");
  # DEBUG of => NULL

<bb 350>:
  if (ov_fmtp_76 != 0B)
    goto <bb 352>;
  else
    goto <bb 351>;

<bb 351>:
  D.41512_832 = session_72(D)->channel;
  pass_fmtp_833 = switch_channel_get_variable_dup (D.41512_832, "rtp_video_fmtp", 1, -1);
  # DEBUG pass_fmtp => pass_fmtp_833

<bb 352>:
  # pass_fmtp_18 = PHI <pass_fmtp_824(347), ov_fmtp_76(350), pass_fmtp_833(351)>
  # DEBUG pass_fmtp => pass_fmtp_18
  if (pass_fmtp_18 != 0B)
    goto <bb 353>;
  else
    goto <bb 354>;

<bb 353>:
  D.42219_834 = strlen (buf_144);
  D.42220_835 = buf_144 + D.42219_834;
  D.42222_837 = 65536 - D.42219_834;
  D.42142_838 = MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].cur_payload_map;
  D.42149_839 = D.42142_838->pt;
  D.42203_840 = (int) D.42149_839;
  switch_snprintf (D.42220_835, D.42222_837, "a=fmtp:%d %s\n", D.42203_840, pass_fmtp_18);

<bb 354>:
  D.42223_841 = switch_media_handle_test_media_flag (smh_90, 16);
  if (D.42223_841 != 0)
    goto <bb 355>;
  else
    goto <bb 363>;

<bb 355>:
  D.41747_842 = smh_90->sdp_mutex;
  switch_mutex_lock (D.41747_842);
  pmap_843 = MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].cur_payload_map;
  # DEBUG pmap => pmap_843
  # DEBUG pmap => pmap_843
  if (pmap_843 != 0B)
    goto <bb 356>;
  else
    goto <bb 362>;

<bb 356>:
  D.42240_989 = pmap_843->allocated;
  if (D.42240_989 != 0)
    goto <bb 357>;
  else
    goto <bb 362>;

<bb 357>:
  # pmap_954 = PHI <pmap_857(361), pmap_843(356)>
  D.42226_845 = pmap_954->pt;
  D.42142_846 = MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].cur_payload_map;
  D.42149_847 = D.42142_846->pt;
  if (D.42226_845 != D.42149_847)
    goto <bb 358>;
  else
    goto <bb 360>;

<bb 358>:
  D.42229_848 = pmap_954->negotiated;
  if (D.42229_848 != 0)
    goto <bb 359>;
  else
    goto <bb 360>;

<bb 359>:
  D.42232_849 = strlen (buf_144);
  D.42233_850 = buf_144 + D.42232_849;
  D.42235_852 = 65536 - D.42232_849;
  D.42236_854 = (int) D.42226_845;
  D.42237_855 = pmap_954->iananame;
  D.42238_856 = pmap_954->rate;
  switch_snprintf (D.42233_850, D.42235_852, "a=rtpmap:%d %s/%ld\n", D.42236_854, D.42237_855, D.42238_856);

<bb 360>:
  pmap_857 = pmap_954->next;
  # DEBUG pmap => pmap_857
  # DEBUG pmap => pmap_857
  if (pmap_857 != 0B)
    goto <bb 361>;
  else
    goto <bb 362>;

<bb 361>:
  D.42240_844 = pmap_857->allocated;
  if (D.42240_844 != 0)
    goto <bb 357>;
  else
    goto <bb 362>;

<bb 362>:
  D.41747_858 = smh_90->sdp_mutex;
  switch_mutex_unlock (D.41747_858);

<bb 363>:
  if (append_video_80 != 0B)
    goto <bb 364>;
  else
    goto <bb 399>;

<bb 364>:
  D.42243_859 = strlen (buf_144);
  D.42244_860 = buf_144 + D.42243_859;
  D.42246_862 = 65536 - D.42243_859;
  D.42249_863 = *append_video_80;
  if (D.42249_863 != 0)
    goto <bb 365>;
  else
    goto <bb 366>;

<bb 365>:
  D.42252_864 = strlen (append_video_80);
  D.42253_865 = D.42252_864 + -1;
  append_video_866 = append_video_80 + D.42253_865;

<bb 366>:
  # append_video_66 = PHI <append_video_866(365), append_video_80(364)>
  D.42255_868 = *append_video_66;
  if (D.42255_868 == 10)
    goto <bb 368>;
  else
    goto <bb 367>;

<bb 367>:

<bb 368>:
  # iftmp.35_65 = PHI <""(366), "\n"(367)>
  switch_snprintf (D.42244_860, D.42246_862, "%s%s", append_video_80, iftmp.35_65);
  goto <bb 399>;

<bb 369>:
  D.41522_871 = smh_90->mparams;
  D.41587_872 = D.41522_871->num_codecs;
  if (D.41587_872 != 0)
    goto <bb 370>;
  else
    goto <bb 399>;

<bb 370>:
  already_did = {};
  # DEBUG i => 0
  # DEBUG i => 0
  # DEBUG red => red_1774
  # DEBUG vp8 => vp8_1773
  # DEBUG rate => NULL
  D.41522_1780 = smh_90->mparams;
  D.41587_1779 = D.41522_1780->num_codecs;
  if (D.41587_1779 > 0)
    goto <bb 371>;
  else
    goto <bb 399>;

<bb 371>:
  # vp8_549 = PHI <vp8_24(398), vp8_1773(370)>
  # red_544 = PHI <red_30(398), red_1774(370)>
  # i_1781 = PHI <i_927(398), 0(370)>
  imp_876 = smh_90->codecs[i_1781];
  # DEBUG imp => imp_876
  # DEBUG fmtp => 0B
  D.42262_878 = smh_90->ianacodes[i_1781];
  ianacode_879 = (uint32_t) D.42262_878;
  # DEBUG ianacode => ianacode_879
  D.42263_880 = imp_876->codec_type;
  if (D.42263_880 != 1)
    goto <bb 398>;
  else
    goto <bb 372>;

<bb 372>:
  D.41512_881 = session_72(D)->channel;
  D.42266_882 = switch_channel_direction (D.41512_881);
  if (D.42266_882 == 0)
    goto <bb 373>;
  else
    goto <bb 374>;

<bb 373>:
  D.41512_883 = session_72(D)->channel;
  D.42269_884 = switch_channel_test_flag (D.41512_883, 114);
  if (D.42269_884 != 0)
    goto <bb 398>;
  else
    goto <bb 374>;

<bb 374>:
  if (ianacode_879 <= 127)
    goto <bb 375>;
  else
    goto <bb 377>;

<bb 375>:
  D.42274_885 = already_did[ianacode_879];
  if (D.42274_885 != 0)
    goto <bb 398>;
  else
    goto <bb 376>;

<bb 376>:
  already_did[ianacode_879] = 1;

<bb 377>:
  # DEBUG rate => NULL
  D.42279_887 = imp_876->iananame;
  D.42280_888 = imp_876->number_of_channels;
  D.42281_889 = (int) D.42280_888;
  channels_890 = get_channels (D.42279_887, D.42281_889);
  # DEBUG channels => channels_890
  D.42279_891 = imp_876->iananame;
  D.42282_892 = strcasecmp (D.42279_891, "VP8");
  if (D.42282_892 == 0)
    goto <bb 378>;
  else
    goto <bb 379>;

<bb 378>:
  vp8_893 = (int) ianacode_879;
  # DEBUG vp8 => vp8_893

<bb 379>:
  # vp8_23 = PHI <vp8_549(377), vp8_893(378)>
  # DEBUG vp8 => vp8_23
  D.42285_895 = strcasecmp (D.42279_891, "red");
  if (D.42285_895 == 0)
    goto <bb 380>;
  else
    goto <bb 381>;

<bb 380>:
  red_896 = (int) ianacode_879;
  # DEBUG red => red_896

<bb 381>:
  # red_29 = PHI <red_544(379), red_896(380)>
  # DEBUG red => red_29
  if (channels_890 > 1)
    goto <bb 382>;
  else
    goto <bb 383>;

<bb 382>:
  D.42290_897 = strlen (buf_144);
  D.42291_898 = buf_144 + D.42290_897;
  D.42293_900 = 65536 - D.42290_897;
  D.42294_902 = imp_876->samples_per_second;
  switch_snprintf (D.42291_898, D.42293_900, "a=rtpmap:%d %s/%d/%d\n", ianacode_879, D.42279_891, D.42294_902, channels_890);
  goto <bb 384>;

<bb 383>:
  D.42296_903 = strlen (buf_144);
  D.42297_904 = buf_144 + D.42296_903;
  D.42299_906 = 65536 - D.42296_903;
  D.42294_908 = imp_876->samples_per_second;
  switch_snprintf (D.42297_904, D.42299_906, "a=rtpmap:%d %s/%d\n", ianacode_879, D.42279_891, D.42294_908);

<bb 384>:
  # DEBUG s => ov_fmtp_76
  if (ov_fmtp_76 == 0B)
    goto <bb 386>;
  else
    goto <bb 385>;

<bb 385>:
  D.48171_1536 = *ov_fmtp_76;
  if (D.48171_1536 == 0)
    goto <bb 386>;
  else
    goto <bb 395>;

<bb 386>:
  map.33_911 = map;
  if (map.33_911 != 0B)
    goto <bb 387>;
  else
    goto <bb 388>;

<bb 387>:
  D.42279_913 = imp_876->iananame;
  fmtp_914 = switch_event_get_header_idx (map.33_911, D.42279_913, -1);
  # DEBUG fmtp => fmtp_914

<bb 388>:
  # fmtp_53 = PHI <0B(386), fmtp_914(387)>
  # DEBUG fmtp => fmtp_53
  D.42306_915 = smh_90->fmtps[i_1781];
  if (D.42306_915 != 0B)
    goto <bb 389>;
  else
    goto <bb 390>;

<bb 389>:
  # DEBUG fmtp => D.42306_915

<bb 390>:
  # fmtp_54 = PHI <fmtp_53(388), D.42306_915(389)>
  # DEBUG fmtp => fmtp_54
  # DEBUG s => fmtp_54
  if (fmtp_54 == 0B)
    goto <bb 392>;
  else
    goto <bb 391>;

<bb 391>:
  D.48175_1538 = MEM[(const char *)fmtp_54];
  if (D.48175_1538 == 0)
    goto <bb 392>;
  else
    goto <bb 393>;

<bb 392>:
  fmtp_918 = imp_876->fmtp;
  # DEBUG fmtp => fmtp_918

<bb 393>:
  # fmtp_55 = PHI <fmtp_54(391), fmtp_918(392)>
  # DEBUG fmtp => fmtp_55
  # DEBUG s => fmtp_55
  if (fmtp_55 == 0B)
    goto <bb 395>;
  else
    goto <bb 394>;

<bb 394>:
  D.48179_1540 = MEM[(const char *)fmtp_55];
  if (D.48179_1540 == 0)
    goto <bb 395>;
  else
    goto <bb 478>;

<bb 395>:
  # fmtp_56 = PHI <ov_fmtp_76(385), fmtp_55(478), pass_fmtp_1775(394), pass_fmtp_1775(393)>
  # DEBUG fmtp => fmtp_56
  # DEBUG s => fmtp_56
  if (fmtp_56 == 0B)
    goto <bb 398>;
  else
    goto <bb 396>;

<bb 396>:
  D.48183_1542 = MEM[(const char *)fmtp_56];
  if (D.48183_1542 == 0)
    goto <bb 398>;
  else
    goto <bb 479>;

<bb 397>:
  D.42321_923 = strlen (buf_144);
  D.42322_924 = buf_144 + D.42321_923;
  D.42324_926 = 65536 - D.42321_923;
  switch_snprintf (D.42322_924, D.42324_926, "a=fmtp:%d %s\n", ianacode_879, fmtp_56);

<bb 398>:
  # vp8_24 = PHI <vp8_549(371), vp8_549(373), vp8_549(375), vp8_23(396), vp8_23(479), vp8_23(397), vp8_23(395)>
  # red_30 = PHI <red_544(371), red_544(373), red_544(375), red_29(396), red_29(479), red_29(397), red_29(395)>
  # DEBUG red => red_30
  # DEBUG vp8 => vp8_24
  # DEBUG rate => NULL
  i_927 = i_1781 + 1;
  # DEBUG i => i_927
  # DEBUG i => i_927
  # DEBUG red => red_30
  # DEBUG vp8 => vp8_24
  # DEBUG rate => NULL
  D.41522_874 = smh_90->mparams;
  D.41587_875 = D.41522_874->num_codecs;
  if (D.41587_875 > i_927)
    goto <bb 371>;
  else
    goto <bb 399>;

<bb 399>:
  # pass_fmtp_19 = PHI <pass_fmtp_18(368), pass_fmtp_1775(369), pass_fmtp_1775(398), pass_fmtp_18(363), pass_fmtp_1775(370)>
  # vp8_26 = PHI <vp8_22(368), vp8_1773(369), vp8_24(398), vp8_22(363), vp8_1773(370)>
  # red_32 = PHI <red_28(368), red_1774(369), red_30(398), red_28(363), red_1774(370)>
  # DEBUG red => red_32
  # DEBUG vp8 => vp8_26
  # DEBUG pass_fmtp => pass_fmtp_19
  # DEBUG rate => NULL
  if (is_outbound_89 != 0)
    goto <bb 401>;
  else
    goto <bb 400>;

<bb 400>:
  D.41512_928 = session_72(D)->channel;
  D.42328_929 = switch_channel_test_flag (D.41512_928, 84);
  if (D.42328_929 != 0)
    goto <bb 401>;
  else
    goto <bb 403>;

<bb 401>:
  D.41534_930 = smh_90->session;
  D.41535_931 = D.41534_930->channel;
  D.42329_932 = switch_channel_test_flag (D.41535_931, 109);
  if (D.42329_932 != 0)
    goto <bb 402>;
  else
    goto <bb 403>;

<bb 402>:
  generate_local_fingerprint (smh_90, 1);

<bb 403>:
  D.42332_933 = MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].local_dtls_fingerprint.type;
  # DEBUG s => D.42332_933
  if (D.42332_933 == 0B)
    goto <bb 405>;
  else
    goto <bb 404>;

<bb 404>:
  D.48187_1544 = MEM[(const char *)D.42332_933];
  if (D.48187_1544 == 0)
    goto <bb 405>;
  else
    goto <bb 480>;

<bb 405>:
  D.41522_941 = smh_90->mparams;
  D.41527_942 = D.41522_941->rtcp_video_interval_msec;
  if (D.41527_942 != 0B)
    goto <bb 406>;
  else
    goto <bb 409>;

<bb 406>:
  D.42343_943 = MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].rtcp_mux;
  if (D.42343_943 > 0)
    goto <bb 407>;
  else
    goto <bb 408>;

<bb 407>:
  D.42346_944 = strlen (buf_144);
  D.42347_945 = buf_144 + D.42346_944;
  D.42349_947 = 65536 - D.42346_944;
  switch_snprintf (D.42347_945, D.42349_947, "a=rtcp-mux\n");
  D.42350_948 = strlen (buf_144);
  D.42351_949 = buf_144 + D.42350_948;
  D.42353_951 = 65536 - D.42350_948;
  switch_snprintf (D.42351_949, D.42353_951, "a=rtcp:%d IN %s %s\n", v_port_721, family_59, ip_1);
  goto <bb 409>;

<bb 408>:
  D.42355_952 = strlen (buf_144);
  D.42356_953 = buf_144 + D.42355_952;
  D.42358_955 = 65536 - D.42355_952;
  D.42359_956 = v_port_721 + 1;
  switch_snprintf (D.42356_953, D.42358_955, "a=rtcp:%d IN %s %s\n", D.42359_956, family_59, ip_1);

<bb 409>:
  D.42360_957 = BIT_FIELD_REF <MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B], 16, 91280>;
  D.42361_958 = D.42360_957 & 65535;
  if (D.42361_958 != 0)
    goto <bb 410>;
  else
    goto <bb 415>;

<bb 410>:
  D.42364_959 = strlen (buf_144);
  D.42365_960 = buf_144 + D.42364_959;
  D.42367_962 = 65536 - D.42364_959;
  D.42369_963 = MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].fir;
  if (D.42369_963 != 0)
    goto <bb 412>;
  else
    goto <bb 411>;

<bb 411>:

<bb 412>:
  # iftmp.37_67 = PHI <"fir "(410), ""(411)>
  D.42374_966 = MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].pli;
  if (D.42374_966 != 0)
    goto <bb 414>;
  else
    goto <bb 413>;

<bb 413>:

<bb 414>:
  # iftmp.38_68 = PHI <"pli"(412), ""(413)>
  switch_snprintf (D.42365_960, D.42367_962, "a=rtcp-fb:* %s%s\n", iftmp.37_67, iftmp.38_68);

<bb 415>:
  D.42378_969 = MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].ice_out.cands[0][0].ready;
  if (D.42378_969 != 0)
    goto <bb 416>;
  else
    goto <bb 436>;

<bb 416>:
  tmp1 = "";
  tmp2 = "";
  # DEBUG c1 => 659136
  # DEBUG c2 => 659134
  # DEBUG c3 => 659126
  # DEBUG c4 => 659124
  # DEBUG bw => 256
  tmp1[10] = 0;
  tmp2[10] = 0;
  switch_stun_random_string (&tmp1, 10, "0123456789");
  switch_stun_random_string (&tmp2, 10, "0123456789");
  # DEBUG D#26 => &MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].ice_out
  # DEBUG ice_out => D#26
  D.41534_976 = smh_90->session;
  D.41535_977 = D.41534_976->channel;
  vbw_978 = switch_channel_get_variable_dup (D.41535_977, "rtp_video_max_bandwidth", 1, -1);
  # DEBUG vbw => vbw_978
  if (vbw_978 != 0B)
    goto <bb 417>;
  else
    goto <bb 481>;

<bb 417>:
  # DEBUG __nptr => vbw_978
  v_1546 = strtol (vbw_978, 0B, 10);
  # DEBUG v => NULL
  # DEBUG bw => v_1546
  # DEBUG bw => v_1546
  if (v_1546 > 0)
    goto <bb 418>;
  else
    goto <bb 419>;

<bb 418>:
  # bw_1769 = PHI <v_1546(417), bw_950(481)>
  D.42385_981 = strlen (buf_144);
  D.42386_982 = buf_144 + D.42385_981;
  D.42388_984 = 65536 - D.42385_981;
  switch_snprintf (D.42386_982, D.42388_984, "b=AS:%d\n", bw_1769);

<bb 419>:
  if (vp8_26 != 0)
    goto <bb 420>;
  else
    goto <bb 422>;

<bb 420>:
  D.41512_985 = session_72(D)->channel;
  D.42391_986 = switch_channel_test_flag (D.41512_985, 106);
  if (D.42391_986 != 0)
    goto <bb 421>;
  else
    goto <bb 422>;

<bb 421>:
  D.42394_987 = strlen (buf_144);
  D.42395_988 = buf_144 + D.42394_987;
  D.42397_990 = 65536 - D.42394_987;
  switch_snprintf (D.42395_988, D.42397_990, "a=rtcp-fb:%d ccm fir\n", vp8_26);

<bb 422>:
  if (red_32 != 0)
    goto <bb 423>;
  else
    goto <bb 424>;

<bb 423>:
  D.42400_991 = strlen (buf_144);
  D.42401_992 = buf_144 + D.42400_991;
  D.42403_994 = 65536 - D.42400_991;
  switch_snprintf (D.42401_992, D.42403_994, "a=rtcp-fb:%d nack\n", vp8_26);

<bb 424>:
  D.42404_995 = strlen (buf_144);
  D.42405_996 = buf_144 + D.42404_995;
  D.42407_998 = 65536 - D.42404_995;
  D.42408_999 = MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].ssrc;
  D.41935_1000 = smh_90->cname;
  switch_snprintf (D.42405_996, D.42407_998, "a=ssrc:%u cname:%s\n", D.42408_999, D.41935_1000);
  D.42409_1001 = strlen (buf_144);
  D.42410_1002 = buf_144 + D.42409_1001;
  D.42412_1004 = 65536 - D.42409_1001;
  D.42408_1005 = MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].ssrc;
  D.41719_1006 = smh_90->msid;
  switch_snprintf (D.42410_1002, D.42412_1004, "a=ssrc:%u msid:%s v0\n", D.42408_1005, D.41719_1006);
  D.42413_1007 = strlen (buf_144);
  D.42414_1008 = buf_144 + D.42413_1007;
  D.42416_1010 = 65536 - D.42413_1007;
  D.42408_1011 = MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].ssrc;
  D.41719_1012 = smh_90->msid;
  switch_snprintf (D.42414_1008, D.42416_1010, "a=ssrc:%u mslabel:%s\n", D.42408_1011, D.41719_1012);
  D.42417_1013 = strlen (buf_144);
  D.42418_1014 = buf_144 + D.42417_1013;
  D.42420_1016 = 65536 - D.42417_1013;
  D.42408_1017 = MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].ssrc;
  D.41719_1018 = smh_90->msid;
  switch_snprintf (D.42418_1014, D.42420_1016, "a=ssrc:%u label:%sv0\n", D.42408_1017, D.41719_1018);
  D.42421_1019 = strlen (buf_144);
  D.42422_1020 = buf_144 + D.42421_1019;
  D.42424_1022 = 65536 - D.42421_1019;
  D.41952_1023 = MEM[(struct ice_t *)smh_90 + 17896B].ufrag;
  switch_snprintf (D.42422_1020, D.42424_1022, "a=ice-ufrag:%s\n", D.41952_1023);
  D.42425_1024 = strlen (buf_144);
  D.42426_1025 = buf_144 + D.42425_1024;
  D.42428_1027 = 65536 - D.42425_1024;
  D.41957_1028 = MEM[(struct ice_t *)smh_90 + 17896B].pwd;
  switch_snprintf (D.42426_1025, D.42428_1027, "a=ice-pwd:%s\n", D.41957_1028);
  D.42429_1029 = strlen (buf_144);
  D.42430_1030 = buf_144 + D.42429_1029;
  D.42432_1032 = 65536 - D.42429_1029;
  D.41962_1033 = MEM[(struct ice_t *)smh_90 + 17896B].cands[0][0].transport;
  D.41963_1034 = MEM[(struct ice_t *)smh_90 + 17896B].cands[0][0].con_addr;
  D.41964_1035 = MEM[(struct ice_t *)smh_90 + 17896B].cands[0][0].con_port;
  D.41965_1036 = (int) D.41964_1035;
  switch_snprintf (D.42430_1030, D.42432_1032, "a=candidate:%s 1 %s %u %s %d typ host generation 0\n", &tmp1, D.41962_1033, 659136, D.41963_1034, D.41965_1036);
  D.42433_1037 = MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].local_sdp_ip;
  # DEBUG s => D.42433_1037
  if (D.42433_1037 == 0B)
    goto <bb 429>;
  else
    goto <bb 425>;

<bb 425>:
  D.48194_1547 = MEM[(const char *)D.42433_1037];
  if (D.48194_1547 == 0)
    goto <bb 429>;
  else
    goto <bb 482>;

<bb 426>:
  D.48198_1549 = MEM[(const char *)D.41963_1039];
  if (D.48198_1549 == 0)
    goto <bb 429>;
  else
    goto <bb 483>;

<bb 427>:
  D.42106_1044 = MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].local_sdp_port;
  D.41964_1045 = MEM[(struct ice_t *)smh_90 + 17896B].cands[0][0].con_port;
  if (D.42106_1044 != D.41964_1045)
    goto <bb 428>;
  else
    goto <bb 429>;

<bb 428>:
  D.42444_1046 = strlen (buf_144);
  D.42445_1047 = buf_144 + D.42444_1046;
  D.42447_1049 = 65536 - D.42444_1046;
  D.41962_1050 = MEM[(struct ice_t *)smh_90 + 17896B].cands[0][0].transport;
  D.41965_1053 = (int) D.41964_1045;
  D.42448_1056 = (int) D.42106_1044;
  switch_snprintf (D.42445_1047, D.42447_1049, "a=candidate:%s 1 %s %u %s %d typ srflx raddr %s rport %d generation 0\n", &tmp2, D.41962_1050, 659126, D.41963_1039, D.41965_1053, D.42433_1037, D.42448_1056);

<bb 429>:
  D.42343_1057 = MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].rtcp_mux;
  D.42451_1058 = D.42343_1057 <= 0;
  D.41986_1059 = (_Bool) is_outbound_89;
  D.42452_1060 = D.42451_1058 | D.41986_1059;
  if (D.42452_1060 != 0)
    goto <bb 431>;
  else
    goto <bb 430>;

<bb 430>:
  D.41512_1061 = session_72(D)->channel;
  D.42454_1062 = switch_channel_test_flag (D.41512_1061, 84);
  if (D.42454_1062 != 0)
    goto <bb 431>;
  else
    goto <bb 436>;

<bb 431>:
  D.42455_1063 = strlen (buf_144);
  D.42456_1064 = buf_144 + D.42455_1063;
  D.42458_1066 = 65536 - D.42455_1063;
  D.41962_1067 = MEM[(struct ice_t *)smh_90 + 17896B].cands[0][0].transport;
  D.41963_1068 = MEM[(struct ice_t *)smh_90 + 17896B].cands[0][0].con_addr;
  D.41964_1069 = MEM[(struct ice_t *)smh_90 + 17896B].cands[0][0].con_port;
  D.41965_1070 = (int) D.41964_1069;
  D.42343_1071 = MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].rtcp_mux;
  D.42459_1072 = D.42343_1071 <= 0;
  D.42460_1073 = D.41965_1070 + D.42459_1072;
  switch_snprintf (D.42456_1064, D.42458_1066, "a=candidate:%s 2 %s %u %s %d typ host generation 0\n", &tmp1, D.41962_1067, 659134, D.41963_1068, D.42460_1073);
  D.42433_1074 = MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].local_sdp_ip;
  # DEBUG s => D.42433_1074
  if (D.42433_1074 == 0B)
    goto <bb 436>;
  else
    goto <bb 432>;

<bb 432>:
  D.48202_1551 = MEM[(const char *)D.42433_1074];
  if (D.48202_1551 == 0)
    goto <bb 436>;
  else
    goto <bb 484>;

<bb 433>:
  D.48206_1553 = MEM[(const char *)D.42464_1076];
  if (D.48206_1553 == 0)
    goto <bb 436>;
  else
    goto <bb 485>;

<bb 434>:
  D.42106_1081 = MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].local_sdp_port;
  D.42470_1082 = MEM[(struct ice_t *)smh_90 + 17896B].cands[0][1].con_port;
  if (D.42106_1081 != D.42470_1082)
    goto <bb 435>;
  else
    goto <bb 436>;

<bb 435>:
  D.42473_1083 = strlen (buf_144);
  D.42474_1084 = buf_144 + D.42473_1083;
  D.42476_1086 = 65536 - D.42473_1083;
  D.41962_1087 = MEM[(struct ice_t *)smh_90 + 17896B].cands[0][0].transport;
  D.41963_1088 = MEM[(struct ice_t *)smh_90 + 17896B].cands[0][0].con_addr;
  D.41964_1089 = MEM[(struct ice_t *)smh_90 + 17896B].cands[0][0].con_port;
  D.41965_1090 = (int) D.41964_1089;
  D.42343_1091 = MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].rtcp_mux;
  D.42459_1092 = D.42343_1091 <= 0;
  D.42460_1093 = D.41965_1090 + D.42459_1092;
  D.42448_1096 = (int) D.42106_1081;
  D.42477_1099 = D.42459_1092 + D.42448_1096;
  switch_snprintf (D.42474_1084, D.42476_1086, "a=candidate:%s 2 %s %u %s %d typ srflx generation 0\n", &tmp2, D.41962_1087, 659124, D.41963_1088, D.42460_1093, D.42433_1074, D.42477_1099);

<bb 436>:
  if (loops_851 == 0)
    goto <bb 437>;
  else
    goto <bb 445>;

<bb 437>:
  D.41512_1100 = session_72(D)->channel;
  D.42480_1101 = switch_channel_test_flag (D.41512_1100, 92);
  if (D.42480_1101 != 0)
    goto <bb 438>;
  else
    goto <bb 445>;

<bb 438>:
  D.41512_1102 = session_72(D)->channel;
  D.42483_1103 = switch_channel_test_flag (D.41512_1102, 109);
  if (D.42483_1103 == 0)
    goto <bb 439>;
  else
    goto <bb 445>;

<bb 439>:
  # i_48 = PHI <0(438)>
  # DEBUG i => i_48
  D.42486_57 = smh_90->crypto_suite_order[i_48];
  if (D.42486_57 != 9)
    goto <bb 440>;
  else
    goto <bb 445>;

<bb 440>:
  # i_2 = PHI <i_1117(444), i_48(439)>
  # D.42486_1772 = PHI <D.42486_1105(444), D.42486_57(439)>
  j_1107 = SUITES[D.42486_1772].type;
  # DEBUG j => j_1107
  D.41736_1108 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].crypto_type;
  if (D.41736_1108 == j_1107)
    goto <bb 442>;
  else
    goto <bb 441>;

<bb 441>:
  if (D.41736_1108 == 9)
    goto <bb 442>;
  else
    goto <bb 444>;

<bb 442>:
  D.42490_1110 = MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].ssec[j_1107].local_crypto_key;
  # DEBUG s => D.42490_1110
  if (D.42490_1110 == 0B)
    goto <bb 444>;
  else
    goto <bb 443>;

<bb 443>:
  D.48210_1555 = MEM[(const char *)D.42490_1110];
  if (D.48210_1555 == 0)
    goto <bb 444>;
  else
    goto <bb 486>;

<bb 444>:
  i_1117 = i_2 + 1;
  # DEBUG i => i_1117
  # DEBUG i => i_1117
  D.42486_1105 = smh_90->crypto_suite_order[i_1117];
  if (D.42486_1105 != 9)
    goto <bb 440>;
  else
    goto <bb 445>;

<bb 445>:
  if (local_sdp_video_zrtp_hash_84 != 0B)
    goto <bb 446>;
  else
    goto <bb 447>;

<bb 446>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 6892, session_72(D), 7, "Adding video a=zrtp-hash:%s\n", local_sdp_video_zrtp_hash_84);
  D.42501_1118 = strlen (buf_144);
  D.42502_1119 = buf_144 + D.42501_1118;
  D.42504_1121 = 65536 - D.42501_1118;
  switch_snprintf (D.42502_1119, D.42504_1121, "a=zrtp-hash:%s\n", local_sdp_video_zrtp_hash_84);

<bb 447>:
  D.41512_1122 = session_72(D)->channel;
  D.42505_1123 = switch_channel_test_flag (D.41512_1122, 109);
  if (D.42505_1123 != 0)
    goto <bb 452>;
  else
    goto <bb 448>;

<bb 448>:
  D.41512_1124 = session_72(D)->channel;
  D.42507_1125 = switch_channel_test_flag (D.41512_1124, 92);
  if (D.42507_1125 == 0)
    goto <bb 452>;
  else
    goto <bb 449>;

<bb 449>:
  D.42058_1126 = smh_90->crypto_mode;
  if (D.42058_1126 == 1)
    goto <bb 452>;
  else
    goto <bb 450>;

<bb 450>:
  if (D.42058_1126 == 2)
    goto <bb 452>;
  else
    goto <bb 451>;

<bb 451>:
  loops_1128 = loops_851 + 1;
  # DEBUG loops => loops_1128
  # DEBUG loops => loops_1128
  # DEBUG red => red_32
  # DEBUG vp8 => vp8_26
  # DEBUG pass_fmtp => pass_fmtp_19
  # DEBUG rate => NULL
  # DEBUG ptime => NULL
  if (loops_1128 != 2)
    goto <bb 314>;
  else
    goto <bb 452>;

<bb 452>:
  map.33_1129 = map;
  if (map.33_1129 != 0B)
    goto <bb 453>;
  else
    goto <bb 454>;

<bb 453>:
  switch_event_destroy (&map);

<bb 454>:
  ptmap.39_1130 = ptmap;
  if (ptmap.39_1130 != 0B)
    goto <bb 455>;
  else
    goto <bb 456>;

<bb 455>:
  switch_event_destroy (&ptmap);

<bb 456>:
  switch_core_media_set_local_sdp (session_72(D), buf_144, 1);
  free (buf_144);
  # DEBUG buf => 0B

<bb 457>:
  return;

<bb 458>:
  goto <bb 14>;

<bb 459>:
  goto <bb 30>;

<bb 460>:
  goto <bb 45>;

<bb 461>:
  goto <bb 60>;

<bb 462>:
  goto <bb 75>;

<bb 463>:
  goto <bb 87>;

<bb 464>:
  goto <bb 125>;

<bb 465>:
  # port_1788 = PHI <port_239(137), port_238(D)(136)>
  # DEBUG port => port_1788
  goto <bb 140>;

<bb 466>:
  goto <bb 159>;

<bb 467>:
  goto <bb 173>;

<bb 468>:
  switch_snprintf (&srbuf, 128, "a=%s\n", sr_3);
  goto <bb 173>;

<bb 469>:
  D.41895_477 = strlen (buf_144);
  D.41896_478 = buf_144 + D.41895_477;
  D.41898_480 = 65536 - D.41895_477;
  switch_snprintf (D.41896_478, D.41898_480, "a=%s\n", sr_4);
  goto <bb 239>;

<bb 470>:
  D.41903_483 = strlen (buf_144);
  D.41904_484 = buf_144 + D.41903_483;
  D.41906_486 = 65536 - D.41903_483;
  D.41907_488 = &MEM[(struct switch_rtp_engine_t *)smh_90 + 80B].local_dtls_fingerprint.str;
  switch_snprintf (D.41904_484, D.41906_486, "a=fingerprint:%s %s\n", D.41899_481, D.41907_488);
  goto <bb 241>;

<bb 471>:
  D.41963_557 = MEM[(struct ice_t *)smh_90 + 6480B].cands[0][0].con_addr;
  # DEBUG s => D.41963_557
  if (D.41963_557 == 0B)
    goto <bb 251>;
  else
    goto <bb 248>;

<bb 472>:
  D.39598_561 = __builtin_strcmp (D.41966_555, D.41963_557);
  if (D.39598_561 != 0)
    goto <bb 249>;
  else
    goto <bb 251>;

<bb 473>:
  D.41963_594 = MEM[(struct ice_t *)smh_90 + 6480B].cands[0][0].con_addr;
  # DEBUG s => D.41963_594
  if (D.41963_594 == 0B)
    goto <bb 258>;
  else
    goto <bb 255>;

<bb 474>:
  D.39607_598 = __builtin_strcmp (D.41966_592, D.41963_594);
  if (D.39607_598 != 0)
    goto <bb 256>;
  else
    goto <bb 258>;

<bb 475>:
  D.41512_624 = session_72(D)->channel;
  D.42020_625 = switch_channel_test_flag (D.41512_624, 92);
  if (D.42020_625 != 0)
    goto <bb 262>;
  else
    goto <bb 305>;

<bb 476>:
  goto <bb 270>;

<bb 477>:
  # DEBUG both => 0
  goto <bb 304>;

<bb 478>:
  goto <bb 395>;

<bb 479>:
  D.42318_922 = strcasecmp (fmtp_56, "_blank_");
  if (D.42318_922 != 0)
    goto <bb 397>;
  else
    goto <bb 398>;

<bb 480>:
  D.42336_935 = strlen (buf_144);
  D.42337_936 = buf_144 + D.42336_935;
  D.42339_938 = 65536 - D.42336_935;
  D.42340_940 = &MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].local_dtls_fingerprint.str;
  switch_snprintf (D.42337_936, D.42339_938, "a=fingerprint:%s %s\n", D.42332_933, D.42340_940);
  goto <bb 405>;

<bb 481>:
  # bw_950 = PHI <256(416)>
  # DEBUG bw => bw_950
  goto <bb 418>;

<bb 482>:
  D.41963_1039 = MEM[(struct ice_t *)smh_90 + 17896B].cands[0][0].con_addr;
  # DEBUG s => D.41963_1039
  if (D.41963_1039 == 0B)
    goto <bb 429>;
  else
    goto <bb 426>;

<bb 483>:
  D.39666_1043 = __builtin_strcmp (D.42433_1037, D.41963_1039);
  if (D.39666_1043 != 0)
    goto <bb 427>;
  else
    goto <bb 429>;

<bb 484>:
  D.42464_1076 = MEM[(struct ice_t *)smh_90 + 17896B].cands[0][1].con_addr;
  # DEBUG s => D.42464_1076
  if (D.42464_1076 == 0B)
    goto <bb 436>;
  else
    goto <bb 433>;

<bb 485>:
  D.39675_1080 = __builtin_strcmp (D.42433_1074, D.42464_1076);
  if (D.39675_1080 != 0)
    goto <bb 434>;
  else
    goto <bb 436>;

<bb 486>:
  D.42494_1112 = strlen (buf_144);
  D.42495_1113 = buf_144 + D.42494_1112;
  D.42497_1115 = 65536 - D.42494_1112;
  D.42498_1116 = MEM[(struct switch_rtp_engine_t *)smh_90 + 11496B].ssec[j_1107].local_crypto_key;
  switch_snprintf (D.42495_1113, D.42497_1115, "a=crypto:%s\n", D.42498_1116);
  goto <bb 444>;

<bb 487>:
  # pass_fmtp_1770 = PHI <pass_fmtp_74(313)>
  # vp8_1776 = PHI <0(313)>
  # red_652 = PHI <0(313)>
  # loops_647 = PHI <0(313)>
  # DEBUG loops => loops_647
  # DEBUG red => red_652
  # DEBUG vp8 => vp8_1776
  # DEBUG pass_fmtp => pass_fmtp_1770
  # DEBUG rate => NULL
  # DEBUG ptime => NULL
  goto <bb 314>;

}



;; Function switch_core_media_absorb_sdp (switch_core_media_absorb_sdp)

switch_core_media_absorb_sdp (struct switch_core_session_t * session)
{
  struct sdp_connection_t * connection;
  struct sdp_media_t * m;
  struct sdp_session_t * sdp;
  struct sdp_parser_t * parser;
  static const char __func__[29] = "switch_core_media_absorb_sdp";
  static const char __PRETTY_FUNCTION__[29] = "switch_core_media_absorb_sdp";
  struct switch_media_handle_t * smh;
  const char * sdp_str;
  char * D.41506;
  short unsigned int D.41505;
  char * D.41504;
  const char * D.41503;
  struct sdp_connection_t * D.41498;
  long unsigned int D.41497;
  sdp_media_e D.41495;
  int D.41488;
  size_t D.41487;
  struct switch_channel_t * D.41484;

<bb 2>:
  if (session_3(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 6930, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_4 = session_3(D)->media_handle;
  # DEBUG smh => smh_4
  if (smh_4 == 0B)
    goto <bb 20>;
  else
    goto <bb 5>;

<bb 5>:
  # DEBUG D#33 => &smh_4->engines
  # DEBUG a_engine => D#33
  D.41484_6 = session_3(D)->channel;
  sdp_str_7 = switch_channel_get_variable_dup (D.41484_6, "switch_m_sdp", 1, -1);
  # DEBUG sdp_str => sdp_str_7
  if (sdp_str_7 != 0B)
    goto <bb 6>;
  else
    goto <bb 20>;

<bb 6>:
  D.41487_8 = strlen (sdp_str_7);
  D.41488_9 = (int) D.41487_8;
  parser_10 = sdp_parse (0B, sdp_str_7, D.41488_9, 0);
  # DEBUG parser => parser_10
  if (parser_10 != 0B)
    goto <bb 7>;
  else
    goto <bb 19>;

<bb 7>:
  sdp_11 = sdp_session (parser_10);
  # DEBUG sdp => sdp_11
  if (sdp_11 != 0B)
    goto <bb 8>;
  else
    goto <bb 18>;

<bb 8>:
  m_12 = sdp_11->sdp_media;
  # DEBUG m => m_12
  # DEBUG m => m_12
  if (m_12 != 0B)
    goto <bb 9>;
  else
    goto <bb 18>;

<bb 9>:
  # m_40 = PHI <m_24(17), m_12(8)>
  D.41495_13 = m_40->m_type;
  if (D.41495_13 != 2)
    goto <bb 17>;
  else
    goto <bb 10>;

<bb 10>:
  D.41497_14 = m_40->m_port;
  if (D.41497_14 == 0)
    goto <bb 17>;
  else
    goto <bb 11>;

<bb 11>:
  connection_15 = sdp_11->sdp_connection;
  # DEBUG connection => connection_15
  D.41498_16 = m_40->m_connections;
  if (D.41498_16 != 0B)
    goto <bb 12>;
  else
    goto <bb 13>;

<bb 12>:
  # DEBUG connection => D.41498_16

<bb 13>:
  # connection_2 = PHI <connection_15(11), D.41498_16(12)>
  # DEBUG connection => connection_2
  if (connection_2 != 0B)
    goto <bb 14>;
  else
    goto <bb 15>;

<bb 14>:
  D.41503_18 = connection_2->c_address;
  D.41504_19 = switch_core_perform_session_strdup (session_3(D), D.41503_18, "src/switch_core_media.c", &__func__, 6957);
  MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].proxy_sdp_ip = D.41504_19;

<bb 15>:
  D.41497_20 = m_40->m_port;
  D.41505_21 = (short unsigned int) D.41497_20;
  MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].proxy_sdp_port = D.41505_21;
  D.41506_22 = MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].proxy_sdp_ip;
  if (D.41506_22 != 0B)
    goto <bb 16>;
  else
    goto <bb 17>;

<bb 16>:
  if (D.41505_21 != 0)
    goto <bb 18>;
  else
    goto <bb 17>;

<bb 17>:
  m_24 = m_40->m_next;
  # DEBUG m => m_24
  # DEBUG m => m_24
  if (m_24 != 0B)
    goto <bb 9>;
  else
    goto <bb 18>;

<bb 18>:
  sdp_parser_free (parser_10);

<bb 19>:
  switch_core_media_set_local_sdp (session_3(D), sdp_str_7, 1);

<bb 20>:
  return;

}



;; Function switch_core_media_set_udptl_image_sdp (switch_core_media_set_udptl_image_sdp)

switch_core_media_set_udptl_image_sdp (struct switch_core_session_t * session, struct switch_t38_options_t * t38_options, int insist)
{
  int D.50819;
  switch_bool_t D.50818;
  int D.50817;
  int D.50816;
  int D.50815;
  int D.50814;
  int D.50813;
  int D.50812;
  int D.50811;
  static const char __func__[38] = "switch_core_media_set_udptl_image_sdp";
  static const char __PRETTY_FUNCTION__[38] = "switch_core_media_set_udptl_image_sdp";
  struct switch_media_handle_t * smh;
  int broken_boolean;
  const char * var;
  const char * jbig_off;
  const char * jbig_on;
  const char * mmr_off;
  const char * mmr_on;
  const char * bit_removal_off;
  const char * bit_removal_on;
  const char * username;
  const char * family;
  uint32_t port;
  const char * ip;
  char max_data[128];
  char max_buf[128];
  char buf[2048];
  char * D.41478;
  char * D.41477;
  unsigned int D.41476;
  char * D.41474;
  size_t D.41473;
  const char * D.41470;
  const char * D.41469;
  switch_bool_t D.41465;
  switch_bool_t D.41460;
  switch_bool_t D.41455;
  uint32_t D.41453;
  int D.41452;
  uint16_t D.41451;
  unsigned int D.41450;
  char * D.41448;
  size_t D.41447;
  uint32_t D.41442;
  uint32_t D.41439;
  char * D.41435;
  uint32_t D.41433;
  uint32_t D.41430;
  unsigned int D.41429;
  unsigned int D.41428;
  time_t D.41427;
  uint32_t D.41424;
  char * D.41423;
  switch_port_t D.41420;
  switch_port_t D.41417;
  char * D.41414;
  struct switch_channel_t * D.41407;
  struct switch_core_media_params_t * D.41406;
  uint16_t D.41405;

<bb 2>:
  buf = "";
  max_buf = "";
  max_data = "";
  # DEBUG family => "IP4"
  # DEBUG bit_removal_on => "a=T38FaxFillBitRemoval\n"
  # DEBUG bit_removal_off => ""
  # DEBUG mmr_on => "a=T38FaxTranscodingMMR\n"
  # DEBUG mmr_off => ""
  # DEBUG jbig_on => "a=T38FaxTranscodingJBIG\n"
  # DEBUG jbig_off => ""
  if (session_20(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 6995, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_21 = session_20(D)->media_handle;
  # DEBUG smh => smh_21
  if (smh_21 == 0B)
    goto <bb 48>;
  else
    goto <bb 5>;

<bb 5>:
  # DEBUG D#34 => &smh_21->engines
  # DEBUG a_engine => D#34
  if (t38_options_23(D) == 0B)
    goto <bb 6>;
  else
    goto <bb 7>;

<bb 6>:
  __assert_fail ("t38_options", "src/switch_core_media.c", 7004, &__PRETTY_FUNCTION__);

<bb 7>:
  ip_24 = t38_options_23(D)->local_ip;
  # DEBUG ip => ip_24
  D.41405_25 = t38_options_23(D)->local_port;
  port_26 = (uint32_t) D.41405_25;
  # DEBUG port => port_26
  D.41406_27 = smh_21->mparams;
  username_28 = D.41406_27->sdp_username;
  # DEBUG username => username_28
  D.41407_29 = session_20(D)->channel;
  var_30 = switch_channel_get_variable_dup (D.41407_29, "t38_broken_boolean", 1, -1);
  # DEBUG var => var_30
  # DEBUG expr => var_30
  if (var_30 != 0B)
    goto <bb 8>;
  else
    goto <bb 18>;

<bb 8>:
  D.50811_120 = strcasecmp (var_30, "yes");
  if (D.50811_120 == 0)
    goto <bb 18>;
  else
    goto <bb 9>;

<bb 9>:
  D.50812_121 = strcasecmp (var_30, "on");
  if (D.50812_121 == 0)
    goto <bb 18>;
  else
    goto <bb 10>;

<bb 10>:
  D.50813_122 = strcasecmp (var_30, "true");
  if (D.50813_122 == 0)
    goto <bb 18>;
  else
    goto <bb 11>;

<bb 11>:
  D.50814_123 = strcasecmp (var_30, "t");
  if (D.50814_123 == 0)
    goto <bb 18>;
  else
    goto <bb 12>;

<bb 12>:
  D.50815_124 = strcasecmp (var_30, "enabled");
  if (D.50815_124 == 0)
    goto <bb 18>;
  else
    goto <bb 13>;

<bb 13>:
  D.50816_125 = strcasecmp (var_30, "active");
  if (D.50816_125 == 0)
    goto <bb 18>;
  else
    goto <bb 14>;

<bb 14>:
  D.50817_126 = strcasecmp (var_30, "allow");
  if (D.50817_126 == 0)
    goto <bb 18>;
  else
    goto <bb 15>;

<bb 15>:
  D.50818_127 = switch_is_number (var_30);
  if (D.50818_127 != 0)
    goto <bb 16>;
  else
    goto <bb 18>;

<bb 16>:
  # DEBUG __nptr => var_30
  D.50819_128 = strtol (var_30, 0B, 10);
  if (D.50819_128 != 0)
    goto <bb 18>;
  else
    goto <bb 17>;

<bb 17>:

<bb 18>:
  # broken_boolean_129 = PHI <1(8), 1(9), 1(10), 1(11), 1(12), 1(13), 1(14), 1(16), 0(15), 0(7), 0(17)>
  # DEBUG broken_boolean => NULL
  if (ip_24 == 0B)
    goto <bb 19>;
  else
    goto <bb 21>;

<bb 19>:
  ip_32 = MEM[(struct switch_rtp_engine_t *)smh_21 + 80B].adv_sdp_ip;
  # DEBUG ip => ip_32
  if (ip_32 == 0B)
    goto <bb 20>;
  else
    goto <bb 21>;

<bb 20>:
  ip_33 = MEM[(struct switch_rtp_engine_t *)smh_21 + 80B].proxy_sdp_ip;
  # DEBUG ip => ip_33

<bb 21>:
  # ip_1 = PHI <ip_24(18), ip_32(19), ip_33(20)>
  # DEBUG ip => ip_1
  if (ip_1 == 0B)
    goto <bb 22>;
  else
    goto <bb 23>;

<bb 22>:
  D.41407_34 = session_20(D)->channel;
  D.41414_35 = switch_channel_get_name (D.41407_34);
  switch_log_printf (0, "src/switch_core_media.c", &__func__, 7022, 0B, 2, "%s NO IP!\n", D.41414_35);
  goto <bb 48>;

<bb 23>:
  if (port_26 == 0)
    goto <bb 24>;
  else
    goto <bb 49>;

<bb 24>:
  D.41417_36 = MEM[(struct switch_rtp_engine_t *)smh_21 + 80B].adv_sdp_port;
  port_37 = (uint32_t) D.41417_36;
  # DEBUG port => port_37
  if (port_37 == 0)
    goto <bb 25>;
  else
    goto <bb 49>;

<bb 25>:
  D.41420_38 = MEM[(struct switch_rtp_engine_t *)smh_21 + 80B].proxy_sdp_port;
  port_39 = (uint32_t) D.41420_38;
  # DEBUG port => port_39
  # DEBUG port => port_39
  if (port_39 == 0)
    goto <bb 26>;
  else
    goto <bb 27>;

<bb 26>:
  D.41407_40 = session_20(D)->channel;
  D.41423_41 = switch_channel_get_name (D.41407_40);
  switch_log_printf (0, "src/switch_core_media.c", &__func__, 7033, 0B, 2, "%s NO PORT!\n", D.41423_41);
  goto <bb 48>;

<bb 27>:
  # port_149 = PHI <port_39(25), port_57(49)>
  D.41424_42 = smh_21->owner_id;
  if (D.41424_42 == 0)
    goto <bb 28>;
  else
    goto <bb 29>;

<bb 28>:
  D.41427_43 = switch_epoch_time_now (0B);
  D.41428_44 = (unsigned int) D.41427_43;
  D.41429_45 = D.41428_44 - port_149;
  smh_21->owner_id = D.41429_45;

<bb 29>:
  D.41430_46 = smh_21->session_id;
  if (D.41430_46 == 0)
    goto <bb 30>;
  else
    goto <bb 31>;

<bb 30>:
  D.41424_47 = smh_21->owner_id;
  smh_21->session_id = D.41424_47;

<bb 31>:
  D.41430_48 = smh_21->session_id;
  D.41433_49 = D.41430_48 + 1;
  smh_21->session_id = D.41433_49;
  D.41435_50 = __builtin_strchr (ip_1, 58);
  if (D.41435_50 != 0B)
    goto <bb 33>;
  else
    goto <bb 32>;

<bb 32>:

<bb 33>:
  # family_9 = PHI <"IP6"(31), "IP4"(32)>
  # DEBUG family => family_9
  D.41424_54 = smh_21->owner_id;
  switch_snprintf (&buf, 2048, "v=0\no=%s %010u %010u IN %s %s\ns=%s\nc=IN %s %s\nt=0 0\n", username_28, D.41424_54, D.41433_49, family_9, ip_1, username_28, family_9, ip_1);
  D.41439_56 = t38_options_23(D)->T38FaxMaxBuffer;
  if (D.41439_56 != 0)
    goto <bb 34>;
  else
    goto <bb 35>;

<bb 34>:
  switch_snprintf (&max_buf, 128, "a=T38FaxMaxBuffer:%d\n", D.41439_56);

<bb 35>:
  D.41442_58 = t38_options_23(D)->T38FaxMaxDatagram;
  if (D.41442_58 != 0)
    goto <bb 36>;
  else
    goto <bb 37>;

<bb 36>:
  switch_snprintf (&max_data, 128, "a=T38FaxMaxDatagram:%d\n", D.41442_58);

<bb 37>:
  if (broken_boolean_129 != 0)
    goto <bb 38>;
  else
    goto <bb 39>;

<bb 38>:
  # DEBUG bit_removal_on => "a=T38FaxFillBitRemoval:1\n"
  # DEBUG bit_removal_off => "a=T38FaxFillBitRemoval:0\n"
  # DEBUG mmr_on => "a=T38FaxTranscodingMMR:1\n"
  # DEBUG mmr_off => "a=T38FaxTranscodingMMR:0\n"
  # DEBUG jbig_on => "a=T38FaxTranscodingJBIG:1\n"
  # DEBUG jbig_off => "a=T38FaxTranscodingJBIG:0\n"

<bb 39>:
  # bit_removal_on_3 = PHI <"a=T38FaxFillBitRemoval\n"(37), "a=T38FaxFillBitRemoval:1\n"(38)>
  # bit_removal_off_4 = PHI <""(37), "a=T38FaxFillBitRemoval:0\n"(38)>
  # mmr_on_5 = PHI <"a=T38FaxTranscodingMMR\n"(37), "a=T38FaxTranscodingMMR:1\n"(38)>
  # mmr_off_6 = PHI <""(37), "a=T38FaxTranscodingMMR:0\n"(38)>
  # jbig_on_7 = PHI <"a=T38FaxTranscodingJBIG\n"(37), "a=T38FaxTranscodingJBIG:1\n"(38)>
  # jbig_off_8 = PHI <""(37), "a=T38FaxTranscodingJBIG:0\n"(38)>
  # DEBUG jbig_off => jbig_off_8
  # DEBUG jbig_on => jbig_on_7
  # DEBUG mmr_off => mmr_off_6
  # DEBUG mmr_on => mmr_on_5
  # DEBUG bit_removal_off => bit_removal_off_4
  # DEBUG bit_removal_on => bit_removal_on_3
  D.41447_66 = strlen (&buf);
  D.41448_67 = &buf + D.41447_66;
  D.41450_69 = 2048 - D.41447_66;
  D.41451_70 = t38_options_23(D)->T38FaxVersion;
  D.41452_71 = (int) D.41451_70;
  D.41453_72 = t38_options_23(D)->T38MaxBitRate;
  D.41455_73 = t38_options_23(D)->T38FaxFillBitRemoval;
  if (D.41455_73 != 0)
    goto <bb 41>;
  else
    goto <bb 40>;

<bb 40>:

<bb 41>:
  # bit_removal_on_10 = PHI <bit_removal_on_3(39), bit_removal_off_4(40)>
  D.41460_76 = t38_options_23(D)->T38FaxTranscodingMMR;
  if (D.41460_76 != 0)
    goto <bb 43>;
  else
    goto <bb 42>;

<bb 42>:

<bb 43>:
  # mmr_on_11 = PHI <mmr_on_5(41), mmr_off_6(42)>
  D.41465_79 = t38_options_23(D)->T38FaxTranscodingJBIG;
  if (D.41465_79 != 0)
    goto <bb 45>;
  else
    goto <bb 44>;

<bb 44>:

<bb 45>:
  # jbig_on_12 = PHI <jbig_on_7(43), jbig_off_8(44)>
  D.41469_82 = t38_options_23(D)->T38FaxRateManagement;
  D.41470_83 = t38_options_23(D)->T38FaxUdpEC;
  switch_snprintf (D.41448_67, D.41450_69, "m=image %d udptl t38\na=T38FaxVersion:%d\na=T38MaxBitRate:%d\n%s%s%sa=T38FaxRateManagement:%s\n%s%sa=T38FaxUdpEC:%s\n", port_149, D.41452_71, D.41453_72, bit_removal_on_10, mmr_on_11, jbig_on_12, D.41469_82, &max_buf, &max_data, D.41470_83);
  if (insist_84(D) != 0)
    goto <bb 46>;
  else
    goto <bb 47>;

<bb 46>:
  D.41473_85 = strlen (&buf);
  D.41474_86 = &buf + D.41473_85;
  D.41476_88 = 2048 - D.41473_85;
  switch_snprintf (D.41474_86, D.41476_88, "m=audio 0 RTP/AVP 19\n");

<bb 47>:
  switch_core_media_set_local_sdp (session_20(D), &buf, 1);
  D.41407_89 = session_20(D)->channel;
  D.41477_90 = switch_channel_get_name (D.41407_89);
  D.41406_91 = smh_21->mparams;
  D.41478_92 = D.41406_91->local_sdp_str;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7113, session_20(D), 7, "%s image media sdp:\n%s\n", D.41477_90, D.41478_92);

<bb 48>:
  return;

<bb 49>:
  # port_57 = PHI <port_37(24), port_26(23)>
  # DEBUG port => port_57
  goto <bb 27>;

}



;; Function switch_core_media_patch_sdp (switch_core_media_patch_sdp)

switch_core_media_patch_sdp (struct switch_core_session_t * session)
{
  const char D.48222;
  const char D.48218;
  char s_line[1024];
  switch_size_t len;
  char * se;
  char o_line[1024];
  const char * family;
  switch_size_t len;
  char * oe;
  static const char __func__[28] = "switch_core_media_patch_sdp";
  static const char __PRETTY_FUNCTION__[28] = "switch_core_media_patch_sdp";
  struct switch_media_handle_t * smh;
  char * new_sdp;
  char vport_buf[25];
  char port_buf[25];
  int has_ip;
  int has_audio;
  int has_video;
  char * qe;
  char * pe;
  char * q;
  char * p;
  switch_size_t len;
  char * D.41397;
  char * D.41396;
  int D.41393;
  char * D.41392;
  switch_channel_state_t D.41391;
  int D.41389;
  size_t D.41367;
  size_t D.41366;
  uint8_t D.41359;
  struct switch_rtp_t * D.41358;
  int D.41355;
  int D.41354;
  switch_port_t D.41353;
  struct payload_map_t * D.41352;
  int D.41345;
  char D.41344;
  size_t D.41337;
  size_t D.41336;
  char D.41330;
  int D.41328;
  int D.41326;
  unsigned int D.41321;
  size_t D.41320;
  size_t D.41319;
  int D.41317;
  int se.20;
  int D.41309;
  unsigned int D.41307;
  size_t D.41306;
  size_t D.41305;
  char * D.41304;
  uint32_t D.41302;
  uint32_t D.41299;
  unsigned int D.41298;
  unsigned int D.41297;
  unsigned int D.41296;
  time_t D.41295;
  uint32_t D.41292;
  char * D.41288;
  char * D.41287;
  int D.41285;
  int p.18;
  int oe.17;
  int D.41276;
  char D.41275;
  char D.41273;
  _Bool D.41270;
  _Bool D.41269;
  _Bool D.41268;
  char D.41267;
  char D.41264;
  size_t D.41260;
  size_t D.41259;
  char * D.41255;
  char * D.41254;
  char[3] * iftmp.16;
  int D.41251;
  unsigned int D.41243;
  size_t D.41242;
  int D.41241;
  char * D.41240;
  struct payload_map_t * D.41239;
  char * D.41238;
  switch_status_t D.41235;
  switch_port_t D.41234;
  char * D.41231;
  const char * D.41228;
  const char * D.41226;
  uint32_t D.41223;
  struct switch_channel_t * D.41222;
  unsigned int D.41217;
  switch_core_media_NDLB_t D.41216;
  size_t D.41215;
  char * D.41211;
  struct switch_core_media_params_t * D.41210;

<bb 2>:
  # DEBUG has_video => 0
  # DEBUG has_audio => 0
  # DEBUG has_ip => 0
  port_buf = "";
  vport_buf = "";
  # DEBUG bad => 0
  if (session_23(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 7134, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_24 = session_23(D)->media_handle;
  # DEBUG smh => smh_24
  if (smh_24 == 0B)
    goto <bb 103>;
  else
    goto <bb 5>;

<bb 5>:
  # DEBUG D#35 => &smh_24->engines
  # DEBUG a_engine => D#35
  # DEBUG D#36 => &smh_24->engines[1]
  # DEBUG v_engine => D#36
  D.41210_27 = smh_24->mparams;
  D.41211_28 = D.41210_27->local_sdp_str;
  # DEBUG s => D.41211_28
  if (D.41211_28 == 0B)
    goto <bb 103>;
  else
    goto <bb 6>;

<bb 6>:
  D.48218_289 = MEM[(const char *)D.41211_28];
  if (D.48218_289 == 0)
    goto <bb 103>;
  else
    goto <bb 104>;

<bb 7>:
  D.41222_37 = session_23(D)->channel;
  D.41223_38 = switch_channel_test_flag (D.41222_37, 1);
  if (D.41223_38 != 0)
    goto <bb 8>;
  else
    goto <bb 11>;

<bb 8>:
  D.41210_39 = smh_24->mparams;
  D.41211_40 = D.41210_39->local_sdp_str;
  D.41226_41 = switch_stristr ("sendonly", D.41211_40);
  if (D.41226_41 != 0B)
    goto <bb 10>;
  else
    goto <bb 9>;

<bb 9>:
  D.41210_42 = smh_24->mparams;
  D.41211_43 = D.41210_42->local_sdp_str;
  D.41228_44 = switch_stristr ("0.0.0.0", D.41211_43);
  if (D.41228_44 != 0B)
    goto <bb 10>;
  else
    goto <bb 11>;

<bb 10>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7152, session_23(D), 7, "Skip patch on hold SDP\n");
  goto <bb 103>;

<bb 11>:
Invalid sum of incoming frequencies 631, should be 823
  D.41231_45 = MEM[(struct switch_rtp_engine_t *)smh_24 + 80B].local_sdp_ip;
  # DEBUG s => D.41231_45
  if (D.41231_45 == 0B)
    goto <bb 13>;
  else
    goto <bb 12>;

<bb 12>:
  D.48222_291 = MEM[(const char *)D.41231_45];
  if (D.48222_291 == 0)
    goto <bb 13>;
  else
    goto <bb 105>;

<bb 13>:
Invalid sum of incoming frequencies 648, should be 531
  D.41235_48 = switch_core_media_choose_port (session_23(D), 0, 1);
  if (D.41235_48 != 0)
    goto <bb 14>;
  else
    goto <bb 15>;

<bb 14>:
  D.41222_49 = session_23(D)->channel;
  D.41238_50 = switch_channel_get_name (D.41222_49);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7159, session_23(D), 3, "%s I/O Error\n", D.41238_50);
  goto <bb 103>;

<bb 15>:
  D.41239_51 = MEM[(struct switch_rtp_engine_t *)smh_24 + 80B].cur_payload_map;
  D.41240_52 = switch_core_perform_session_strdup (session_23(D), "PROXY", "src/switch_core_media.c", &__func__, 7163);
  D.41239_51->iananame = D.41240_52;
  D.41239_53 = MEM[(struct switch_rtp_engine_t *)smh_24 + 80B].cur_payload_map;
  D.41239_53->rm_rate = 8000;
  D.41239_53->adv_rm_rate = 8000;
  D.41239_53->codec_ms = 20;

<bb 16>:
Invalid sum of incoming frequencies 499, should be 616
  new_sdp_56 = switch_core_perform_session_alloc (session_23(D), len_33, "src/switch_core_media.c", &__func__, 7169);
  # DEBUG new_sdp => new_sdp_56
  D.41234_57 = MEM[(struct switch_rtp_engine_t *)smh_24 + 80B].local_sdp_port;
  D.41241_58 = (int) D.41234_57;
  switch_snprintf (&port_buf, 25, "%u", D.41241_58);
  D.41210_59 = smh_24->mparams;
  p_60 = D.41210_59->local_sdp_str;
  # DEBUG p => p_60
  # DEBUG q => new_sdp_56
  D.41242_62 = strlen (p_60);
  pe_63 = p_60 + D.41242_62;
  # DEBUG pe => pe_63
  D.41243_64 = len_33 + -1;
  qe_65 = new_sdp_56 + D.41243_64;
  # DEBUG qe => qe_65
  # DEBUG has_ip => 0
  # DEBUG has_audio => 0
  # DEBUG has_video => 0
  # DEBUG q => new_sdp_56
  # DEBUG p => p_60
  if (p_60 != 0B)
    goto <bb 17>;
  else
    goto <bb 106>;

<bb 17>:
  D.41264_290 = *p_60;
  if (D.41264_290 != 0)
    goto <bb 18>;
  else
    goto <bb 106>;

<bb 18>:
  if (p_60 >= pe_63)
    goto <bb 97> (end);
  else
    goto <bb 19>;

<bb 19>:
  if (new_sdp_56 >= qe_65)
    goto <bb 97> (end);
  else
    goto <bb 22>;

<bb 20>:
  if (pe_63 <= p_207)
    goto <bb 97> (end);
  else
    goto <bb 21>;

<bb 21>:
  if (qe_65 <= q_206)
    goto <bb 97> (end);
  else
    goto <bb 22>;

<bb 22>:
  # p_13 = PHI <p_207(21), p_60(19)>
  # q_10 = PHI <q_206(21), new_sdp_56(19)>
  # has_video_185 = PHI <has_video_199(21), 0(19)>
  # has_audio_183 = PHI <has_audio_198(21), 0(19)>
  # has_ip_348 = PHI <has_ip_193(21), 0(19)>
  D.41231_69 = MEM[(struct switch_rtp_engine_t *)smh_24 + 80B].local_sdp_ip;
  if (D.41231_69 != 0B)
    goto <bb 23>;
  else
    goto <bb 36>;

<bb 23>:
  D.41251_70 = strncmp ("c=IN IP", p_13, 7);
  if (D.41251_70 == 0)
    goto <bb 24>;
  else
    goto <bb 36>;

<bb 24>:
  __builtin_strncpy (q_10, p_13, 7);
  # DEBUG p => p_13 + 7
  q_72 = q_10 + 7;
  # DEBUG q => q_72
  D.41254_73 = MEM[(struct switch_rtp_engine_t *)smh_24 + 80B].adv_sdp_ip;
  D.41255_74 = __builtin_strchr (D.41254_73, 58);
  if (D.41255_74 != 0B)
    goto <bb 26>;
  else
    goto <bb 25>;

<bb 25>:

<bb 26>:
  # iftmp.16_17 = PHI <"6 "(24), "4 "(25)>
  __builtin_memcpy (q_72, iftmp.16_17, 2);
  p_77 = &MEM[(void *)p_13 + 9B];
  # DEBUG p => p_77
  q_78 = &MEM[(void *)q_10 + 9B];
  # DEBUG q => q_78
  D.41254_80 = MEM[(struct switch_rtp_engine_t *)smh_24 + 80B].adv_sdp_ip;
  D.41259_81 = strlen (D.41254_80);
  __builtin_strncpy (q_78, D.41254_80, D.41259_81);
  D.41254_82 = MEM[(struct switch_rtp_engine_t *)smh_24 + 80B].adv_sdp_ip;
  D.41260_83 = strlen (D.41254_82);
  q_84 = q_78 + D.41260_83;
  # DEBUG q => q_84
  # DEBUG p => p_77
  if (p_77 != 0B)
    goto <bb 27>;
  else
    goto <bb 35>;

<bb 27>:
  D.41264_91 = *p_77;
  if (D.41264_91 != 0)
    goto <bb 31>;
  else
    goto <bb 35>;

<bb 28>:
  if (p_354 >= pe_63)
    goto <bb 97> (end);
  else
    goto <bb 29>;

<bb 29>:
  p_97 = p_354 + 1;
  # DEBUG p => p_97
  # DEBUG p => p_97
  if (p_97 != 0B)
    goto <bb 30>;
  else
    goto <bb 35>;

<bb 30>:
  D.41264_85 = *p_97;
  if (D.41264_85 != 0)
    goto <bb 31>;
  else
    goto <bb 35>;

<bb 31>:
  # p_354 = PHI <p_97(30), p_77(27)>
  # D.41264_330 = PHI <D.41264_85(30), D.41264_91(27)>
  D.41267_87 = D.41264_330 + 208;
  D.41268_88 = D.41267_87 <= 9;
  D.41269_89 = D.41264_330 == 46;
  D.41270_90 = D.41268_88 | D.41269_89;
  if (D.41270_90 != 0)
    goto <bb 28>;
  else
    goto <bb 32>;

<bb 32>:
  if (D.41264_330 == 58)
    goto <bb 28>;
  else
    goto <bb 33>;

<bb 33>:
  D.41273_93 = D.41264_330 + 191;
  if (D.41273_93 <= 5)
    goto <bb 28>;
  else
    goto <bb 34>;

<bb 34>:
  D.41275_95 = D.41264_330 + 159;
  if (D.41275_95 <= 5)
    goto <bb 28>;
  else
    goto <bb 35>;

<bb 35>:
  # p_197 = PHI <0B(29), p_97(30), p_354(34), 0B(26), p_77(27)>
  has_ip_98 = has_ip_348 + 1;
  # DEBUG has_ip => has_ip_98
  goto <bb 50>;

<bb 36>:
  D.41276_99 = strncmp ("o=", p_13, 2);
  if (D.41276_99 == 0)
    goto <bb 37>;
  else
    goto <bb 46>;

<bb 37>:
  oe_100 = __builtin_strchr (p_13, 10);
  # DEBUG oe => oe_100
  if (oe_100 != 0B)
    goto <bb 38>;
  else
    goto <bb 50>;

<bb 38>:
  # DEBUG family => "IP4"
  o_line = "";
  if (oe_100 >= pe_63)
    goto <bb 97> (end);
  else
    goto <bb 39>;

<bb 39>:
  oe.17_103 = (int) oe_100;
  p.18_104 = (int) p_13;
  D.41285_105 = oe.17_103 - p.18_104;
  len_106 = (switch_size_t) D.41285_105;
  # DEBUG len => len_106
  p_107 = p_13 + len_106;
  # DEBUG p => p_107
  D.41210_108 = smh_24->mparams;
  D.41287_109 = D.41210_108->sipip;
  D.41288_110 = __builtin_strchr (D.41287_109, 58);
  if (D.41288_110 != 0B)
    goto <bb 41>;
  else
    goto <bb 40>;

<bb 40>:

<bb 41>:
  # family_18 = PHI <"IP6"(39), "IP4"(40)>
  # DEBUG family => family_18
  D.41292_114 = smh_24->owner_id;
  if (D.41292_114 == 0)
    goto <bb 42>;
  else
    goto <bb 43>;

<bb 42>:
  D.41295_115 = switch_epoch_time_now (0B);
  D.41296_116 = (unsigned int) D.41295_115;
  D.41297_117 = D.41296_116 * 31821;
  D.41298_118 = D.41297_117 + 13849;
  smh_24->owner_id = D.41298_118;

<bb 43>:
  D.41299_119 = smh_24->session_id;
  if (D.41299_119 == 0)
    goto <bb 44>;
  else
    goto <bb 45>;

<bb 44>:
  D.41292_120 = smh_24->owner_id;
  smh_24->session_id = D.41292_120;

<bb 45>:
  D.41299_121 = smh_24->session_id;
  D.41302_122 = D.41299_121 + 1;
  smh_24->session_id = D.41302_122;
  D.41210_124 = smh_24->mparams;
  D.41304_125 = D.41210_124->sdp_username;
  D.41292_126 = smh_24->owner_id;
  D.41287_129 = D.41210_124->sipip;
  snprintf (&o_line, 1024, &"o=%s %010u %010u IN %s %s\n"[0], D.41304_125, D.41292_126, D.41302_122, family_18, D.41287_129);
  D.41305_130 = strlen (&o_line);
  __builtin_strncpy (q_10, &o_line, D.41305_130);
  D.41306_131 = strlen (&o_line);
  D.41307_132 = D.41306_131 + -1;
  q_133 = q_10 + D.41307_132;
  # DEBUG q => q_133
  goto <bb 50>;

<bb 46>:
  D.41309_134 = strncmp ("s=", p_13, 2);
  if (D.41309_134 == 0)
    goto <bb 47>;
  else
    goto <bb 55>;

<bb 47>:
  se_135 = __builtin_strchr (p_13, 10);
  # DEBUG se => se_135
  if (se_135 != 0B)
    goto <bb 48>;
  else
    goto <bb 50>;

<bb 48>:
  s_line = "";
  if (se_135 >= pe_63)
    goto <bb 97> (end);
  else
    goto <bb 49>;

<bb 49>:
  se.20_137 = (int) se_135;
  p.18_138 = (int) p_13;
  D.41317_139 = se.20_137 - p.18_138;
  len_140 = (switch_size_t) D.41317_139;
  # DEBUG len => len_140
  p_141 = p_13 + len_140;
  # DEBUG p => p_141
  D.41210_143 = smh_24->mparams;
  D.41304_144 = D.41210_143->sdp_username;
  snprintf (&s_line, 1024, &"s=%s\n"[0], D.41304_144);
  D.41319_145 = strlen (&s_line);
  __builtin_strncpy (q_10, &s_line, D.41319_145);
  D.41320_146 = strlen (&s_line);
  D.41321_147 = D.41320_146 + -1;
  q_148 = q_10 + D.41321_147;
  # DEBUG q => q_148

<bb 50>:
  # p_204 = PHI <p_107(45), p_141(49), p_197(35), p_13(47), p_13(37), p_191(87), p_13(71), p_13(70), p_200(69)>
  # q_203 = PHI <q_133(45), q_148(49), q_84(35), q_10(47), q_10(37), q_188(87), q_10(71), q_10(70), q_159(69)>
  # has_video_199 = PHI <has_video_185(45), has_video_185(49), has_video_185(35), has_video_185(47), has_video_185(37), has_video_195(87), has_video_185(71), has_video_185(70), has_video_185(69)>
  # has_audio_198 = PHI <has_audio_183(45), has_audio_183(49), has_audio_183(35), has_audio_183(47), has_audio_183(37), has_audio_183(87), has_audio_183(71), has_audio_183(70), has_audio_166(69)>
  # has_ip_193 = PHI <has_ip_348(45), has_ip_348(49), has_ip_98(35), has_ip_348(47), has_ip_348(37), has_ip_348(87), has_ip_348(71), has_ip_348(70), has_ip_348(69)>
  # DEBUG has_ip => has_ip_193
  # DEBUG has_audio => has_audio_198
  # DEBUG has_video => has_video_199
  # DEBUG q => q_203
  # DEBUG p => p_204
  if (p_204 != 0B)
    goto <bb 51>;
  else
    goto <bb 93>;

<bb 51>:
  D.41264_296 = *p_204;
  if (D.41264_296 != 0)
    goto <bb 52>;
  else
    goto <bb 93>;

<bb 52>:
  if (D.41264_296 != 10)
    goto <bb 53>;
  else
    goto <bb 93>;

<bb 53>:
  if (pe_63 <= p_204)
    goto <bb 97> (end);
  else
    goto <bb 54>;

<bb 54>:
  if (qe_65 <= q_203)
    goto <bb 97> (end);
  else
    goto <bb 90>;

<bb 55>:
  D.41326_149 = strncmp ("m=audio ", p_13, 8);
  if (D.41326_149 == 0)
    goto <bb 57>;
  else
    goto <bb 56>;

<bb 56>:
  D.41328_150 = strncmp ("m=image ", p_13, 8);
  if (D.41328_150 == 0)
    goto <bb 57>;
  else
    goto <bb 70>;

<bb 57>:
  D.41330_152 = MEM[(char *)p_13 + 8B];
  if (D.41330_152 != 48)
    goto <bb 58>;
  else
    goto <bb 70>;

<bb 58>:
  __builtin_strncpy (q_10, p_13, 8);
  p_153 = p_13 + 8;
  # DEBUG p => p_153
  if (p_153 >= pe_63)
    goto <bb 97> (end);
  else
    goto <bb 59>;

<bb 59>:
  q_155 = q_10 + 8;
  # DEBUG q => q_155
  if (q_155 >= qe_65)
    goto <bb 97> (end);
  else
    goto <bb 60>;

<bb 60>:
  D.41336_157 = strlen (&port_buf);
  __builtin_strncpy (q_155, &port_buf, D.41336_157);
  D.41337_158 = strlen (&port_buf);
  q_159 = q_155 + D.41337_158;
  # DEBUG q => q_159
  if (q_159 >= qe_65)
    goto <bb 97> (end);
  else
    goto <bb 61>;

<bb 61>:
  # p_350 = PHI <p_153(60)>
  # DEBUG p => p_350
  if (p_350 != 0B)
    goto <bb 62>;
  else
    goto <bb 69>;

<bb 62>:
  D.41264_331 = *p_350;
  if (D.41264_331 != 0)
    goto <bb 63>;
  else
    goto <bb 69>;

<bb 63>:
  D.41344_352 = D.41264_331 + 208;
  if (D.41344_352 <= 9)
    goto <bb 64>;
  else
    goto <bb 69>;

<bb 64>:
  if (pe_63 <= p_350)
    goto <bb 97> (end);
  else
    goto <bb 66>;

<bb 65>:
  if (pe_63 <= p_165)
    goto <bb 97> (end);
  else
    goto <bb 66>;

<bb 66>:
  # p_326 = PHI <p_165(65), p_350(64)>
  p_165 = p_326 + 1;
  # DEBUG p => p_165
  # DEBUG p => p_165
  if (p_165 != 0B)
    goto <bb 67>;
  else
    goto <bb 69>;

<bb 67>:
  D.41264_161 = *p_165;
  if (D.41264_161 != 0)
    goto <bb 68>;
  else
    goto <bb 69>;

<bb 68>:
  D.41344_163 = D.41264_161 + 208;
  if (D.41344_163 <= 9)
    goto <bb 65>;
  else
    goto <bb 69>;

<bb 69>:
  # p_200 = PHI <0B(66), p_165(67), p_165(68), 0B(61), p_350(62), p_350(63)>
  has_audio_166 = has_audio_183 + 1;
  # DEBUG has_audio => has_audio_166
  goto <bb 50>;

<bb 70>:
  D.41345_167 = strncmp ("m=video ", p_13, 8);
  if (D.41345_167 == 0)
    goto <bb 71>;
  else
    goto <bb 50>;

<bb 71>:
  D.41330_169 = MEM[(char *)p_13 + 8B];
  if (D.41330_169 != 48)
    goto <bb 72>;
  else
    goto <bb 50>;

<bb 72>:
  if (has_video_185 == 0)
    goto <bb 73>;
  else
    goto <bb 76>;

<bb 73>:
  switch_core_media_choose_port (session_23(D), 1, 1);
  D.41352_170 = MEM[(struct switch_rtp_engine_t *)smh_24 + 11496B].cur_payload_map;
  D.41352_170->rm_encoding = "PROXY-VID";
  D.41352_170->rm_rate = 90000;
  D.41352_170->adv_rm_rate = 90000;
  D.41352_170->codec_ms = 0;
  D.41353_174 = MEM[(struct switch_rtp_engine_t *)smh_24 + 11496B].adv_sdp_port;
  D.41354_175 = (int) D.41353_174;
  switch_snprintf (&vport_buf, 25, "%u", D.41354_175);
  D.41222_176 = session_23(D)->channel;
  D.41355_177 = switch_channel_test_ready (D.41222_176, 1, 1);
  if (D.41355_177 != 0)
    goto <bb 74>;
  else
    goto <bb 76>;

<bb 74>:
  D.41358_178 = MEM[(struct switch_rtp_engine_t *)smh_24 + 11496B].rtp_session;
  D.41359_179 = switch_rtp_ready (D.41358_178);
  if (D.41359_179 == 0)
    goto <bb 75>;
  else
    goto <bb 76>;

<bb 75>:
  D.41222_180 = session_23(D)->channel;
  switch_channel_set_flag_value (D.41222_180, 98, 1);
  D.41222_181 = session_23(D)->channel;
  switch_channel_set_flag_value (D.41222_181, 103, 1);
  switch_core_media_activate_rtp (session_23(D));

<bb 76>:
  __builtin_strncpy (q_10, p_13, 8);
  p_182 = p_13 + 8;
  # DEBUG p => p_182
  if (p_182 >= pe_63)
    goto <bb 97> (end);
  else
    goto <bb 77>;

<bb 77>:
  q_184 = q_10 + 8;
  # DEBUG q => q_184
  if (q_184 >= qe_65)
    goto <bb 97> (end);
  else
    goto <bb 78>;

<bb 78>:
  D.41366_186 = strlen (&vport_buf);
  __builtin_strncpy (q_184, &vport_buf, D.41366_186);
  D.41367_187 = strlen (&vport_buf);
  q_188 = q_184 + D.41367_187;
  # DEBUG q => q_188
  if (q_188 >= qe_65)
    goto <bb 97> (end);
  else
    goto <bb 79>;

<bb 79>:
  # p_34 = PHI <p_182(78)>
  # DEBUG p => p_34
  if (p_34 != 0B)
    goto <bb 80>;
  else
    goto <bb 87>;

<bb 80>:
  D.41264_347 = *p_34;
  if (D.41264_347 != 0)
    goto <bb 81>;
  else
    goto <bb 87>;

<bb 81>:
  D.41344_314 = D.41264_347 + 208;
  if (D.41344_314 <= 9)
    goto <bb 82>;
  else
    goto <bb 87>;

<bb 82>:
  if (p_34 >= pe_63)
    goto <bb 97> (end);
  else
    goto <bb 84>;

<bb 83>:
  if (pe_63 <= p_194)
    goto <bb 97> (end);
  else
    goto <bb 84>;

<bb 84>:
  # p_299 = PHI <p_194(83), p_34(82)>
  p_194 = p_299 + 1;
  # DEBUG p => p_194
  # DEBUG p => p_194
  if (p_194 != 0B)
    goto <bb 85>;
  else
    goto <bb 87>;

<bb 85>:
  D.41264_190 = *p_194;
  if (D.41264_190 != 0)
    goto <bb 86>;
  else
    goto <bb 87>;

<bb 86>:
  D.41344_192 = D.41264_190 + 208;
  if (D.41344_192 <= 9)
    goto <bb 83>;
  else
    goto <bb 87>;

<bb 87>:
  # p_191 = PHI <0B(84), p_194(85), p_194(86), 0B(79), p_34(80), p_34(81)>
  has_video_195 = has_video_185 + 1;
  # DEBUG has_video => has_video_195
  goto <bb 50>;

<bb 88>:
  if (pe_63 <= p_202)
    goto <bb 97> (end);
  else
    goto <bb 89>;

<bb 89>:
  if (qe_65 <= q_201)
    goto <bb 97> (end);
  else
    goto <bb 90>;

<bb 90>:
  # p_297 = PHI <p_202(89), p_204(54)>
  # q_55 = PHI <q_201(89), q_203(54)>
  # D.41264_356 = PHI <D.41264_196(89), D.41264_296(54)>
  *q_55 = D.41264_356;
  q_201 = q_55 + 1;
  # DEBUG q => q_201
  p_202 = p_297 + 1;
  # DEBUG p => p_202
  # DEBUG has_ip => has_ip_193
  # DEBUG has_audio => has_audio_198
  # DEBUG has_video => has_video_199
  # DEBUG q => q_201
  # DEBUG p => p_202
  if (p_202 != 0B)
    goto <bb 91>;
  else
    goto <bb 93>;

<bb 91>:
  D.41264_196 = *p_202;
  if (D.41264_196 != 0)
    goto <bb 92>;
  else
    goto <bb 93>;

<bb 92>:
  if (D.41264_196 != 10)
    goto <bb 88>;
  else
    goto <bb 93>;

<bb 93>:
  # p_171 = PHI <0B(90), p_202(91), p_202(92), 0B(50), p_204(51), p_204(52)>
  # q_172 = PHI <q_201(90), q_201(91), q_201(92), q_203(50), q_203(51), q_203(52)>
  if (p_171 >= pe_63)
    goto <bb 97> (end);
  else
    goto <bb 94>;

<bb 94>:
  if (q_172 >= qe_65)
    goto <bb 97> (end);
  else
    goto <bb 95>;

<bb 95>:
  D.41264_205 = *p_171;
  *q_172 = D.41264_205;
  q_206 = q_172 + 1;
  # DEBUG q => q_206
  p_207 = p_171 + 1;
  # DEBUG p => p_207
  # DEBUG has_ip => has_ip_193
  # DEBUG has_audio => has_audio_198
  # DEBUG has_video => has_video_199
  # DEBUG q => q_206
  # DEBUG p => p_207
  if (p_207 != 0B)
    goto <bb 96>;
  else
    goto <bb 106>;

<bb 96>:
  D.41264_66 = *p_207;
  if (D.41264_66 != 0)
    goto <bb 20>;
  else
    goto <bb 106>;

Invalid sum of incoming frequencies 572, should be 23
end:
  # DEBUG bad => NULL
  # DEBUG has_ip => NULL
  # DEBUG has_audio => NULL
  goto <bb 103>;

<bb 98>:
Invalid sum of incoming frequencies 29, should be 146
  D.41222_210 = session_23(D)->channel;
  D.41391_211 = switch_channel_get_state (D.41222_210);
  if (D.41391_211 > 9)
    goto <bb 99>;
  else
    goto <bb 100>;

<bb 99>:
  D.41222_221 = session_23(D)->channel;
  D.41392_222 = switch_channel_get_name (D.41222_221);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7394, session_23(D), 7, "%s too late.\n", D.41392_222);
  goto <bb 103>;

<bb 100>:
  D.41393_212 = has_ip_302 | has_audio_303;
  if (D.41393_212 == 0)
    goto <bb 101>;
  else
    goto <bb 102>;

<bb 101>:
  D.41222_213 = session_23(D)->channel;
  D.41396_214 = switch_channel_get_name (D.41222_213);
  D.41210_215 = smh_24->mparams;
  D.41211_216 = D.41210_215->local_sdp_str;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7400, session_23(D), 7, "%s SDP has no audio in it.\n%s\n", D.41396_214, D.41211_216);
  goto <bb 103>;

<bb 102>:
  D.41222_217 = session_23(D)->channel;
  D.41397_218 = switch_channel_get_name (D.41222_217);
  D.41210_219 = smh_24->mparams;
  D.41211_220 = D.41210_219->local_sdp_str;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7406, session_23(D), 7, "%s Patched SDP\n---\n%s\n+++\n%s\n", D.41397_218, D.41211_220, new_sdp_56);
  switch_core_media_set_local_sdp (session_23(D), new_sdp_56, 0);

<bb 103>:
  return;

<bb 104>:
  D.41215_32 = strlen (D.41211_28);
  len_33 = D.41215_32 * 2;
  # DEBUG len => len_33
  D.41216_35 = D.41210_27->ndlb;
  D.41217_36 = D.41216_35 & 32;
  if (D.41217_36 == 0)
    goto <bb 7>;
  else
    goto <bb 11>;

<bb 105>:
  D.41234_47 = MEM[(struct switch_rtp_engine_t *)smh_24 + 80B].local_sdp_port;
  if (D.41234_47 == 0)
    goto <bb 13>;
  else
    goto <bb 16>;

<bb 106>:
  # has_audio_303 = PHI <has_audio_198(96), has_audio_198(95), 0(16), 0(17)>
  # has_ip_302 = PHI <has_ip_193(96), has_ip_193(95), 0(16), 0(17)>
  # DEBUG bad => 0
  # DEBUG has_ip => has_ip_302
  # DEBUG has_audio => has_audio_303
  D.41222_208 = session_23(D)->channel;
  D.41389_209 = switch_channel_check_signal (D.41222_208, 1);
  if (D.41389_209 != 0)
    goto <bb 99>;
  else
    goto <bb 98>;

}



;; Function switch_core_media_start_udptl (switch_core_media_start_udptl)

switch_core_media_start_udptl (struct switch_core_session_t * session, struct switch_t38_options_t * t38_options)
{
  int D.50956;
  switch_bool_t D.50955;
  int D.50954;
  int D.50953;
  int D.50952;
  int D.50951;
  int D.50950;
  int D.50949;
  int D.50948;
  const char * val;
  const char * err;
  switch_port_t remote_port;
  char * remote_host;
  static const char __func__[30] = "switch_core_media_start_udptl";
  static const char __PRETTY_FUNCTION__[30] = "switch_core_media_start_udptl";
  struct switch_media_handle_t * smh;
  uint32_t D.41200;
  int32_t D.41197;
  const char * err.15;
  switch_status_t D.41190;
  int D.41189;
  int D.39841;
  uint16_t D.41184;
  _Bool D.41181;
  _Bool D.41180;
  _Bool D.41179;
  const char * D.41178;
  uint8_t D.41172;
  struct switch_rtp_t * D.41171;
  switch_channel_state_t D.41170;
  int D.41168;
  struct switch_channel_t * D.41167;

<bb 2>:
  if (session_1(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 7419, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_2 = session_1(D)->media_handle;
  # DEBUG smh => smh_2
  if (smh_2 == 0B)
    goto <bb 31>;
  else
    goto <bb 5>;

<bb 5>:
  D.41167_3 = session_1(D)->channel;
  D.41168_4 = switch_channel_check_signal (D.41167_3, 1);
  if (D.41168_4 != 0)
    goto <bb 31>;
  else
    goto <bb 6>;

<bb 6>:
  D.41167_5 = session_1(D)->channel;
  D.41170_6 = switch_channel_get_state (D.41167_5);
  if (D.41170_6 > 9)
    goto <bb 31>;
  else
    goto <bb 7>;

<bb 7>:
  # DEBUG D#37 => &smh_2->engines
  # DEBUG a_engine => D#37
  D.41171_8 = MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].rtp_session;
  D.41172_9 = switch_rtp_ready (D.41171_8);
  if (D.41172_9 != 0)
    goto <bb 8>;
  else
    goto <bb 31>;

<bb 8>:
  D.41171_10 = MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].rtp_session;
  remote_host_11 = switch_rtp_get_remote_host (D.41171_10);
  # DEBUG remote_host => remote_host_11
  D.41171_12 = MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].rtp_session;
  remote_port_13 = switch_rtp_get_remote_port (D.41171_12);
  # DEBUG remote_port => remote_port_13
  D.41167_14 = session_1(D)->channel;
  switch_channel_clear_flag (D.41167_14, 99);
  D.41171_15 = MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].rtp_session;
  switch_rtp_udptl_mode (D.41171_15);
  if (t38_options_16(D) == 0B)
    goto <bb 10>;
  else
    goto <bb 9>;

<bb 9>:
  D.41178_17 = t38_options_16(D)->remote_ip;
  if (D.41178_17 == 0B)
    goto <bb 10>;
  else
    goto <bb 11>;

<bb 10>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7441, session_1(D), 7, "No remote address\n");
  goto <bb 31>;

<bb 11>:
  D.41179_18 = remote_host_11 != 0B;
  D.41180_19 = remote_port_13 != 0;
  D.41181_20 = D.41179_18 & D.41180_19;
  if (D.41181_20 != 0)
    goto <bb 12>;
  else
    goto <bb 15>;

<bb 12>:
  D.41184_21 = t38_options_16(D)->remote_port;
  if (D.41184_21 == remote_port_13)
    goto <bb 13>;
  else
    goto <bb 15>;

<bb 13>:
  D.39841_23 = __builtin_strcmp (remote_host_11, D.41178_17);
  if (D.39841_23 == 0)
    goto <bb 14>;
  else
    goto <bb 15>;

<bb 14>:
  D.41189_26 = (int) D.41184_21;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7446, session_1(D), 7, "Remote address:port [%s:%d] has not changed.\n", D.41178_17, D.41189_26);
  goto <bb 31>;

<bb 15>:
  D.41171_27 = MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].rtp_session;
  D.41184_29 = t38_options_16(D)->remote_port;
  D.41190_30 = switch_rtp_set_remote_address (D.41171_27, D.41178_17, D.41184_29, 0, 1, &err);
  if (D.41190_30 != 0)
    goto <bb 16>;
  else
    goto <bb 17>;

<bb 16>:
  err.15_31 = err;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7453, session_1(D), 3, "IMAGE UDPTL REPORTS ERROR: [%s]\n", err.15_31);
  goto <bb 31>;

<bb 17>:
  D.41178_32 = t38_options_16(D)->remote_ip;
  D.41184_33 = t38_options_16(D)->remote_port;
  D.41189_34 = (int) D.41184_33;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7455, session_1(D), 7, "IMAGE UDPTL CHANGING DEST TO: [%s:%d]\n", D.41178_32, D.41189_34);
  D.41197_35 = switch_media_handle_test_media_flag (smh_2, 10);
  if (D.41197_35 == 0)
    goto <bb 18>;
  else
    goto <bb 31>;

<bb 18>:
  D.41167_36 = session_1(D)->channel;
  D.41200_37 = switch_channel_test_flag (D.41167_36, 106);
  if (D.41200_37 == 0)
    goto <bb 19>;
  else
    goto <bb 31>;

<bb 19>:
  D.41167_38 = session_1(D)->channel;
  val_39 = switch_channel_get_variable_dup (D.41167_38, "disable_udptl_auto_adjust", 1, -1);
  # DEBUG val => val_39
  if (val_39 == 0B)
    goto <bb 30>;
  else
    goto <bb 20>;

<bb 20>:
  # DEBUG expr => val_39
  D.50948_61 = strcasecmp (val_39, "yes");
  if (D.50948_61 == 0)
    goto <bb 29>;
  else
    goto <bb 21>;

<bb 21>:
  D.50949_62 = strcasecmp (val_39, "on");
  if (D.50949_62 == 0)
    goto <bb 29>;
  else
    goto <bb 22>;

<bb 22>:
  D.50950_63 = strcasecmp (val_39, "true");
  if (D.50950_63 == 0)
    goto <bb 29>;
  else
    goto <bb 23>;

<bb 23>:
  D.50951_64 = strcasecmp (val_39, "t");
  if (D.50951_64 == 0)
    goto <bb 29>;
  else
    goto <bb 24>;

<bb 24>:
  D.50952_65 = strcasecmp (val_39, "enabled");
  if (D.50952_65 == 0)
    goto <bb 29>;
  else
    goto <bb 25>;

<bb 25>:
  D.50953_66 = strcasecmp (val_39, "active");
  if (D.50953_66 == 0)
    goto <bb 29>;
  else
    goto <bb 26>;

<bb 26>:
  D.50954_67 = strcasecmp (val_39, "allow");
  if (D.50954_67 == 0)
    goto <bb 29>;
  else
    goto <bb 27>;

<bb 27>:
  D.50955_68 = switch_is_number (val_39);
  if (D.50955_68 != 0)
    goto <bb 28>;
  else
    goto <bb 32>;

<bb 28>:
  # DEBUG __nptr => val_39
  D.50956_69 = strtol (val_39, 0B, 10);
  if (D.50956_69 != 0)
    goto <bb 29>;
  else
    goto <bb 32>;

<bb 29>:
Invalid sum of outgoing probabilities 0.0%
  goto <bb 31>;

<bb 30>:
  D.41171_41 = MEM[(struct switch_rtp_engine_t *)smh_2 + 80B].rtp_session;
  switch_rtp_set_flag (D.41171_41, 7);

<bb 31>:
  return;

<bb 32>:
  goto <bb 30>;

}



;; Function switch_core_media_receive_message (switch_core_media_receive_message)

switch_core_media_receive_message (struct switch_core_session_t * session, struct switch_core_session_message_t * msg)
{
  int D.51012;
  switch_bool_t D.51011;
  int D.51010;
  int D.51009;
  int D.51008;
  int D.51007;
  int D.51006;
  int D.51005;
  int D.51004;
  int D.51000;
  switch_bool_t D.50999;
  int D.50998;
  int D.50997;
  int D.50996;
  int D.50995;
  int D.50994;
  int D.50993;
  int D.50992;
  int D.50988;
  switch_bool_t D.50987;
  int D.50986;
  int D.50985;
  int D.50984;
  int D.50983;
  int D.50982;
  int D.50981;
  int D.50980;
  int D.50976;
  switch_bool_t D.50975;
  int D.50974;
  int D.50973;
  int D.50972;
  int D.50971;
  int D.50970;
  int D.50969;
  int D.50968;
  int D.48250;
  uint8_t D.48248;
  struct payload_map_t * pmap;
  uint8_t D.48245;
  struct payload_map_t * pmap;
  const char D.48241;
  const char D.48237;
  long int D.48233;
  struct switch_t38_options_t * t38_options;
  struct switch_core_session_t * nsession;
  const char * port;
  const char * ip;
  struct switch_channel_t * other_channel;
  struct switch_core_session_t * other_session;
  const char * uuid;
  int ok;
  const char * val;
  int set;
  int both;
  switch_rtp_flag_t flags[39];
  const char * direction;
  struct switch_rtp_t * rtp;
  register int __result;
  const char * s;
  char * q;
  char * p;
  int max_drift;
  int maxqlen;
  int qlen;
  int maxlen;
  int len;
  static const char __func__[34] = "switch_core_media_receive_message";
  static const char __PRETTY_FUNCTION__[34] = "switch_core_media_receive_message";
  switch_status_t status;
  struct switch_media_handle_t * smh;
  switch_channel_state_t D.41130;
  int D.41128;
  uint32_t D.41119;
  uint32_t D.41113;
  uint8_t D.41108;
  struct switch_core_session_t * nsession.13;
  switch_status_t D.41104;
  char * D.41101;
  struct payload_map_t * D.41100;
  char * iftmp.12;
  char * D.41092;
  struct payload_map_t * D.41091;
  char * iftmp.11;
  const char D.41086;
  switch_channel_state_t D.41083;
  int D.41081;
  struct switch_mutex_t * D.41076;
  char * D.41071;
  struct switch_core_media_params_t * D.41070;
  short unsigned int D.41069;
  _Bool D.41065;
  _Bool D.41064;
  _Bool D.41063;
  const char * D.41058;
  const char * D.41054;
  uint32_t D.41051;
  uint8_t D.41048;
  uint32_t D.41044;
  uint32_t D.41041;
  uint32_t D.41038;
  uint32_t D.41035;
  char * D.41034;
  uint32_t D.41031;
  char * D.41030;
  uint32_t D.41027;
  unsigned int D.41026;
  unsigned int D.41023;
  uint8_t D.41020;
  switch_core_media_flag_t D.41016;
  uint32_t D.41011;
  uint32_t D.41003;
  uint32_t D.41000;
  char * D.40996;
  uint32_t D.40993;
  uint32_t D.40990;
  unsigned int D.40989;
  smh_flag_t D.40988;
  char * D.40987;
  uint32_t D.40984;
  uint32_t D.40981;
  uint8_t D.40974;
  uint32_t D.40971;
  int D.40964;
  int D.40959;
  int D.40953;
  int D.40949;
  const char * D.40945;
  uint8_t D.40939;
  const char D.40936;
  int D.40929;
  const char * D.40928;
  switch_status_t D.40925;
  uint32_t max_drift.10;
  uint32_t D.40923;
  uint32_t D.40922;
  uint32_t maxqlen.9;
  uint32_t qlen.8;
  int D.40904;
  int D.40903;
  const unsigned char D.40893;
  int D.40884;
  const unsigned char D.40883;
  int D.40874;
  const unsigned char D.40873;
  int D.40863;
  const unsigned char D.40862;
  int D.40854;
  int D.40851;
  int D.40848;
  const char * D.40845;
  uint8_t D.40842;
  int D.40838;
  uint8_t D.40835;
  struct switch_rtp_t * D.40834;
  struct switch_rtp_t * D.40831;
  uint32_t D.40828;
  switch_core_session_message_types_t D.40827;
  switch_channel_state_t D.40826;
  int D.40824;
  struct switch_channel_t * D.40823;

<bb 2>:
  # DEBUG status => 0
  if (session_26(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 7477, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_27 = session_26(D)->media_handle;
  # DEBUG smh => smh_27
  if (smh_27 == 0B)
    goto <bb 193>;
  else
    goto <bb 5>;

<bb 5>:
  D.40823_29 = session_26(D)->channel;
  D.40824_30 = switch_channel_check_signal (D.40823_29, 1);
  if (D.40824_30 != 0)
    goto <bb 193>;
  else
    goto <bb 6>;

<bb 6>:
  D.40823_31 = session_26(D)->channel;
  D.40826_32 = switch_channel_get_state (D.40823_31);
  if (D.40826_32 > 9)
    goto <bb 193>;
  else
    goto <bb 7>;

<bb 7>:
  # DEBUG D#39 => &smh_27->engines
  # DEBUG a_engine => D#39
  # DEBUG D#38 => &smh_27->engines[1]
  # DEBUG v_engine => D#38
  D.40827_36 = msg_35(D)->message_id;
  switch (D.40827_36) <default: <L211>, case 4: <L93>, case 5: <L126>, case 8: <L147>, case 9: <L150>, case 17: <L10>, case 19: <L88>, case 20: <L144>, case 24: <L65>, case 25: <L13>, case 32: <L19>, case 46: <L7>>

<L7>:
  D.40823_37 = session_26(D)->channel;
  D.40828_38 = switch_channel_test_flag (D.40823_37, 82);
  if (D.40828_38 != 0)
    goto <bb 9>;
  else
    goto <bb 161> (<L211>);

<bb 9>:
  D.40823_39 = session_26(D)->channel;
  switch_channel_set_flag_value (D.40823_39, 122, 1);
  goto <bb 161> (<L211>);

<L10>:
  D.40831_40 = MEM[(struct switch_rtp_engine_t *)smh_27 + 11496B].rtp_session;
  if (D.40831_40 != 0B)
    goto <bb 11>;
  else
    goto <bb 161> (<L211>);

<bb 11>:
  switch_rtp_video_refresh (D.40831_40);
  goto <bb 161> (<L211>);

<L13>:
  D.40834_42 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  D.40835_43 = switch_rtp_ready (D.40834_42);
  if (D.40835_43 != 0)
    goto <bb 13>;
  else
    goto <bb 161> (<L211>);

<bb 13>:
  D.40838_44 = msg_35(D)->numeric_arg;
  if (D.40838_44 != 0)
    goto <bb 14>;
  else
    goto <bb 15>;

<bb 14>:
  D.40834_45 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  switch_rtp_set_flag (D.40834_45, 19);
  goto <bb 161> (<L211>);

<bb 15>:
  D.40834_46 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  switch_rtp_clear_flag (D.40834_46, 19);
  goto <bb 161> (<L211>);

<L19>:
  D.40834_47 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  D.40842_48 = switch_rtp_ready (D.40834_47);
  if (D.40842_48 != 0)
    goto <bb 17>;
  else
    goto <bb 161> (<L211>);

<bb 17>:
  # DEBUG len => 0
  # DEBUG maxlen => 0
  # DEBUG qlen => 0
  # DEBUG maxqlen => 50
  # DEBUG max_drift => 0
  D.40845_54 = msg_35(D)->string_arg;
  if (D.40845_54 != 0B)
    goto <bb 18>;
  else
    goto <bb 46>;

<bb 18>:
  D.40848_56 = strcasecmp (D.40845_54, "pause");
  if (D.40848_56 == 0)
    goto <bb 19>;
  else
    goto <bb 20>;

<bb 19>:
  D.40834_57 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  switch_rtp_pause_jitter_buffer (D.40834_57, 1);
  goto <bb 190> (end);

<bb 20>:
  D.40851_59 = strcasecmp (D.40845_54, "resume");
  if (D.40851_59 == 0)
    goto <bb 21>;
  else
    goto <bb 22>;

<bb 21>:
  D.40834_60 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  switch_rtp_pause_jitter_buffer (D.40834_60, 0);
  goto <bb 190> (end);

<bb 22>:
  D.40854_62 = strncasecmp (D.40845_54, "debug:", 6);
  if (D.40854_62 == 0)
    goto <bb 23>;
  else
    goto <bb 31>;

<bb 23>:
  s_64 = D.40845_54 + 6;
  # DEBUG s => s_64
  if (s_64 != 0B)
    goto <bb 24>;
  else
    goto <bb 30>;

<bb 24>:
  # DEBUG __s2_len => 3
  # DEBUG __s1 => s_64
  D.40862_67 = MEM[(const unsigned char *)D.40845_54 + 6B];
  D.40863_68 = (int) D.40862_67;
  __result_72 = D.40863_68 + -111;
  # DEBUG __result => __result_72
  if (__result_72 == 0)
    goto <bb 25>;
  else
    goto <bb 28>;

<bb 25>:
  D.40873_77 = MEM[(const unsigned char *)D.40845_54 + 7B];
  D.40874_78 = (int) D.40873_77;
  __result_82 = D.40874_78 + -102;
  # DEBUG __result => __result_82
  if (__result_82 == 0)
    goto <bb 26>;
  else
    goto <bb 28>;

<bb 26>:
  D.40883_87 = MEM[(const unsigned char *)D.40845_54 + 8B];
  D.40884_88 = (int) D.40883_87;
  __result_92 = D.40884_88 + -102;
  # DEBUG __result => __result_92
  if (__result_92 == 0)
    goto <bb 27>;
  else
    goto <bb 28>;

<bb 27>:
  D.40893_97 = MEM[(const unsigned char *)D.40845_54 + 9B];
  __result_98 = (int) D.40893_97;
  # DEBUG __result => __result_98

<bb 28>:
  # __result_13 = PHI <__result_72(24), __result_82(25), __result_92(26), __result_98(27)>
  # DEBUG __result => __result_13
  if (__result_13 == 0)
    goto <bb 29>;
  else
    goto <bb 30>;

<bb 29>:
  # DEBUG s => 0B

<bb 30>:
  # s_12 = PHI <0B(23), s_64(28), 0B(29)>
  # DEBUG s => s_12
  D.40834_108 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  status_109 = switch_rtp_debug_jitter_buffer (D.40834_108, s_12);
  # DEBUG status => status_109
  goto <bb 190> (end);

<bb 31>:
  # DEBUG __nptr => D.40845_54
  len_481 = strtol (D.40845_54, 0B, 10);
  # DEBUG len => NULL
  if (len_481 != 0)
    goto <bb 32>;
  else
    goto <bb 34>;

<bb 32>:
  D.40903_112 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].read_impl.microseconds_per_packet;
  D.40904_113 = D.40903_112 / 1000;
  qlen_114 = len_481 / D.40904_113;
  # DEBUG qlen => qlen_114
  if (qlen_114 <= 0)
    goto <bb 194>;
  else
    goto <bb 33>;

<bb 33>:
  goto <bb 194>;

<bb 34>:
  # qlen_6 = PHI <0(31)>
  # DEBUG qlen => qlen_6
  goto <bb 195>;

<bb 35>:
  p_118 = p_117 + 1;
  # DEBUG p => p_118
  # DEBUG __nptr => p_118
  maxlen_482 = strtol (p_118, 0B, 10);
  # DEBUG maxlen => NULL
  q_120 = __builtin_strchr (p_118, 58);
  # DEBUG q => q_120
  if (q_120 != 0B)
    goto <bb 36>;
  else
    goto <bb 37>;

<bb 36>:
  q_121 = q_120 + 1;
  # DEBUG q => q_121
  # DEBUG __nptr => q_121
  D.48233_483 = strtol (q_121, 0B, 10);
  max_drift_123 = ABS_EXPR <D.48233_483>;
  # DEBUG max_drift => max_drift_123

<bb 37>:
  # maxlen_5 = PHI <maxlen_482(35), maxlen_482(36)>
  # max_drift_10 = PHI <0(35), max_drift_123(36)>
  # DEBUG max_drift => max_drift_10
  # DEBUG maxlen => maxlen_5
  if (maxlen_5 != 0)
    goto <bb 38>;
  else
    goto <bb 39>;

<bb 38>:
  D.40903_124 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].read_impl.microseconds_per_packet;
  D.40904_125 = D.40903_124 / 1000;
  maxqlen_126 = maxlen_5 / D.40904_125;
  # DEBUG maxqlen => maxqlen_126

<bb 39>:
  # len_4 = PHI <len_481(195), len_481(37), len_481(38)>
  # qlen_7 = PHI <qlen_650(195), qlen_658(37), qlen_658(38)>
  # maxqlen_8 = PHI <50(195), 50(37), maxqlen_126(38)>
  # max_drift_11 = PHI <max_drift_214(195), max_drift_10(37), max_drift_10(38)>
  # DEBUG max_drift => max_drift_11
  # DEBUG maxqlen => maxqlen_8
  # DEBUG qlen => qlen_7
  # DEBUG len => len_4
  if (qlen_7 != 0)
    goto <bb 40>;
  else
    goto <bb 46>;

<bb 40>:
  if (maxqlen_8 < qlen_7)
    goto <bb 41>;
  else
    goto <bb 42>;

<bb 41>:
  maxqlen_127 = qlen_7 * 5;
  # DEBUG maxqlen => maxqlen_127

<bb 42>:
  # maxqlen_9 = PHI <maxqlen_8(40), maxqlen_127(41)>
  # DEBUG maxqlen => maxqlen_9
  D.40834_128 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  qlen.8_129 = (uint32_t) qlen_7;
  maxqlen.9_130 = (uint32_t) maxqlen_9;
  D.40922_131 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].read_impl.samples_per_packet;
  D.40923_132 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].read_impl.samples_per_second;
  max_drift.10_133 = (uint32_t) max_drift_11;
  D.40925_134 = switch_rtp_activate_jitter_buffer (D.40834_128, qlen.8_129, maxqlen.9_130, D.40922_131, D.40923_132, max_drift.10_133);
  if (D.40925_134 == 0)
    goto <bb 43>;
  else
    goto <bb 45>;

<bb 43>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7577, session_26(D), 7, "Setting Jitterbuffer to %dms (%d frames) (%d max frames) (%d max drift)\n", len_4, qlen_7, maxqlen_9, max_drift_11);
  D.40823_135 = session_26(D)->channel;
  switch_channel_set_flag_value (D.40823_135, 57, 1);
  D.40823_136 = session_26(D)->channel;
  D.40928_137 = switch_channel_get_variable_dup (D.40823_136, "rtp_jitter_buffer_plc", 1, -1);
  D.40929_138 = switch_false (D.40928_137);
  if (D.40929_138 == 0)
    goto <bb 44>;
  else
    goto <bb 161> (<L211>);

<bb 44>:
  D.40823_139 = session_26(D)->channel;
  switch_channel_set_flag_value (D.40823_139, 58, 1);
  goto <bb 161> (<L211>);

<bb 45>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7585, session_26(D), 4, "Error Setting Jitterbuffer to %dms (%d frames)\n", len_4, qlen_7);
  goto <bb 161> (<L211>);

<bb 46>:
  D.40834_140 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  switch_rtp_deactivate_jitter_buffer (D.40834_140);
  goto <bb 161> (<L211>);

<L65>:
  rtp_141 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  # DEBUG rtp => rtp_141
  direction_142 = msg_35(D)->string_array_arg[0];
  # DEBUG direction => direction_142
  if (direction_142 != 0B)
    goto <bb 48>;
  else
    goto <bb 50>;

<bb 48>:
  D.40936_143 = *direction_142;
  if (D.40936_143 == 118)
    goto <bb 49>;
  else
    goto <bb 50>;

<bb 49>:
  direction_144 = direction_142 + 1;
  # DEBUG direction => direction_144
  rtp_145 = MEM[(struct switch_rtp_engine_t *)smh_27 + 11496B].rtp_session;
  # DEBUG rtp => rtp_145

<bb 50>:
  # rtp_14 = PHI <rtp_141(47), rtp_141(48), rtp_145(49)>
  # direction_15 = PHI <0B(47), direction_142(48), direction_144(49)>
  # DEBUG direction => direction_15
  # DEBUG rtp => rtp_14
  D.40939_146 = switch_rtp_ready (rtp_14);
  if (D.40939_146 != 0)
    goto <bb 51>;
  else
    goto <bb 190> (end);

<bb 51>:
  # DEBUG s => direction_15
  if (direction_15 == 0B)
    goto <bb 190> (end);
  else
    goto <bb 52>;

<bb 52>:
  D.48237_484 = *direction_15;
  if (D.48237_484 == 0)
    goto <bb 190> (end);
  else
    goto <bb 196>;

<bb 53>:
  D.48241_486 = *D.40945_148;
  if (D.48241_486 == 0)
    goto <bb 190> (end);
  else
    goto <bb 197>;

<bb 54>:
  D.40953_153 = strcasecmp (direction_15, "read");
  if (D.40953_153 == 0)
    goto <bb 55>;
  else
    goto <bb 198>;

<bb 55>:
  flags[28] = 1;
  # DEBUG set => 1
  # DEBUG set => 1
  if (both_151 != 0)
    goto <bb 57>;
  else
    goto <bb 56>;

<bb 56>:
  # set_649 = PHI <1(55), set_586(198)>
  D.40959_157 = strcasecmp (direction_15, "write");
  if (D.40959_157 == 0)
    goto <bb 57>;
  else
    goto <bb 58>;

<bb 57>:
  flags[29] = 1;
  # DEBUG set => NULL
  # DEBUG set => NULL
  goto <bb 59>;

<bb 58>:
  # set_17 = PHI <set_649(56)>
  # DEBUG set => set_17
  if (set_17 != 0)
    goto <bb 59>;
  else
    goto <bb 62>;

<bb 59>:
  D.40964_162 = switch_true (D.40945_148);
  if (D.40964_162 != 0)
    goto <bb 60>;
  else
    goto <bb 61>;

<bb 60>:
  switch_rtp_set_flags (rtp_14, &flags);
  goto <bb 190> (end);

<bb 61>:
  switch_rtp_clear_flags (rtp_14, &flags);
  goto <bb 190> (end);

<bb 62>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7627, session_26(D), 3, "Invalid Options\n");
  goto <bb 190> (end);

<L88>:
  D.40834_163 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  if (D.40834_163 != 0B)
    goto <bb 64>;
  else
    goto <bb 190> (end);

<bb 64>:
  D.40971_165 = switch_rtp_test_flag (D.40834_163, 15);
  if (D.40971_165 != 0)
    goto <bb 65>;
  else
    goto <bb 190> (end);

<bb 65>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7634, session_26(D), 4, "Pass 2833 mode may not work on a transcoded call.\n");
  goto <bb 190> (end);

<L93>:
  D.40834_166 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  D.40974_167 = switch_rtp_ready (D.40834_166);
  if (D.40974_167 != 0)
    goto <bb 67>;
  else
    goto <bb 190> (end);

<bb 67>:
  # DEBUG ok => 0
  D.40823_169 = session_26(D)->channel;
  val_170 = switch_channel_get_variable_dup (D.40823_169, "rtp_jitter_buffer_during_bridge", 1, -1);
  # DEBUG val => val_170
  if (val_170 == 0B)
    goto <bb 78>;
  else
    goto <bb 68>;

<bb 68>:
  # DEBUG expr => val_170
  D.50968_515 = strcasecmp (val_170, "no");
  if (D.50968_515 == 0)
    goto <bb 77>;
  else
    goto <bb 69>;

<bb 69>:
  D.50969_516 = strcasecmp (val_170, "off");
  if (D.50969_516 == 0)
    goto <bb 77>;
  else
    goto <bb 70>;

<bb 70>:
  D.50970_517 = strcasecmp (val_170, "false");
  if (D.50970_517 == 0)
    goto <bb 77>;
  else
    goto <bb 71>;

<bb 71>:
  D.50971_518 = strcasecmp (val_170, "f");
  if (D.50971_518 == 0)
    goto <bb 77>;
  else
    goto <bb 72>;

<bb 72>:
  D.50972_519 = strcasecmp (val_170, "disabled");
  if (D.50972_519 == 0)
    goto <bb 77>;
  else
    goto <bb 73>;

<bb 73>:
  D.50973_520 = strcasecmp (val_170, "inactive");
  if (D.50973_520 == 0)
    goto <bb 77>;
  else
    goto <bb 74>;

<bb 74>:
  D.50974_521 = strcasecmp (val_170, "disallow");
  if (D.50974_521 == 0)
    goto <bb 77>;
  else
    goto <bb 75>;

<bb 75>:
  D.50975_522 = switch_is_number (val_170);
  if (D.50975_522 != 0)
    goto <bb 76>;
  else
    goto <bb 199>;

<bb 76>:
  # DEBUG __nptr => val_170
  D.50976_523 = strtol (val_170, 0B, 10);
  if (D.50976_523 == 0)
    goto <bb 77>;
  else
    goto <bb 199>;

<bb 77>:

<bb 78>:
  D.40823_172 = session_26(D)->channel;
  D.40981_173 = switch_channel_test_flag (D.40823_172, 57);
  if (D.40981_173 != 0)
    goto <bb 79>;
  else
    goto <bb 81>;

<bb 79>:
  D.40823_174 = session_26(D)->channel;
  D.40984_175 = switch_channel_test_cap_partner (D.40823_174, 5);
  if (D.40984_175 != 0)
    goto <bb 80>;
  else
    goto <bb 81>;

<bb 80>:
  D.40823_176 = session_26(D)->channel;
  D.40987_177 = switch_channel_get_name (D.40823_176);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7647, session_26(D), 7, "%s PAUSE Jitterbuffer\n", D.40987_177);
  D.40834_178 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  switch_rtp_pause_jitter_buffer (D.40834_178, 1);
  D.40988_179 = smh_27->flags;
  D.40989_180 = D.40988_179 | 4;
  smh_27->flags = D.40989_180;

<bb 81>:
  D.40823_181 = session_26(D)->channel;
  D.40990_182 = switch_channel_test_flag (D.40823_181, 100);
  if (D.40990_182 != 0)
    goto <bb 82>;
  else
    goto <bb 84>;

<bb 82>:
  D.40823_183 = session_26(D)->channel;
  D.40993_184 = switch_channel_test_flag_partner (D.40823_183, 36);
  if (D.40993_184 != 0)
    goto <bb 83>;
  else
    goto <bb 84>;

<bb 83>:
  D.40834_185 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  switch_rtp_set_flag (D.40834_185, 15);
  D.40823_186 = session_26(D)->channel;
  D.40996_187 = switch_channel_get_name (D.40823_186);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7656, session_26(D), 7, "%s activate passthru 2833 mode.\n", D.40996_187);

<bb 84>:
  D.40823_188 = session_26(D)->channel;
  val_189 = switch_channel_get_variable_dup (D.40823_188, "rtp_notimer_during_bridge", 1, -1);
  # DEBUG val => val_189
  if (val_189 != 0B)
    goto <bb 85>;
  else
    goto <bb 96>;

<bb 85>:
  # DEBUG expr => val_189
  D.50980_525 = strcasecmp (val_189, "yes");
  if (D.50980_525 == 0)
    goto <bb 95>;
  else
    goto <bb 86>;

<bb 86>:
  D.50981_526 = strcasecmp (val_189, "on");
  if (D.50981_526 == 0)
    goto <bb 95>;
  else
    goto <bb 87>;

<bb 87>:
  D.50982_527 = strcasecmp (val_189, "true");
  if (D.50982_527 == 0)
    goto <bb 95>;
  else
    goto <bb 88>;

<bb 88>:
  D.50983_528 = strcasecmp (val_189, "t");
  if (D.50983_528 == 0)
    goto <bb 95>;
  else
    goto <bb 89>;

<bb 89>:
  D.50984_529 = strcasecmp (val_189, "enabled");
  if (D.50984_529 == 0)
    goto <bb 95>;
  else
    goto <bb 90>;

<bb 90>:
  D.50985_530 = strcasecmp (val_189, "active");
  if (D.50985_530 == 0)
    goto <bb 95>;
  else
    goto <bb 91>;

<bb 91>:
  D.50986_531 = strcasecmp (val_189, "allow");
  if (D.50986_531 == 0)
    goto <bb 95>;
  else
    goto <bb 92>;

<bb 92>:
  D.50987_532 = switch_is_number (val_189);
  if (D.50987_532 != 0)
    goto <bb 93>;
  else
    goto <bb 95>;

<bb 93>:
  # DEBUG __nptr => val_189
  D.50988_533 = strtol (val_189, 0B, 10);
  if (D.50988_533 != 0)
    goto <bb 95>;
  else
    goto <bb 94>;

<bb 94>:

<bb 95>:
  # ok_534 = PHI <1(85), 1(86), 1(87), 1(88), 1(89), 1(90), 1(91), 1(93), 0(92), 0(94)>
  # DEBUG ok => NULL
  goto <bb 97>;

<bb 96>:
  D.40823_191 = session_26(D)->channel;
  D.41000_192 = switch_channel_test_flag (D.40823_191, 105);
  ok_193 = (int) D.41000_192;
  # DEBUG ok => ok_193

<bb 97>:
  # ok_18 = PHI <ok_534(95), ok_193(96)>
  # DEBUG ok => ok_18
  if (ok_18 != 0)
    goto <bb 98>;
  else
    goto <bb 99>;

<bb 98>:
  D.40834_194 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  D.41003_195 = switch_rtp_test_flag (D.40834_194, 3);
  if (D.41003_195 == 0)
    goto <bb 99>;
  else
    goto <bb 200>;

<bb 99>:
Invalid sum of outgoing probabilities 0.0%
  # DEBUG ok => 0

<bb 100>:
  D.40823_202 = session_26(D)->channel;
  val_203 = switch_channel_get_variable_dup (D.40823_202, "rtp_autoflush_during_bridge", 1, -1);
  # DEBUG val => val_203
  if (val_203 != 0B)
    goto <bb 101>;
  else
    goto <bb 112>;

<bb 101>:
  # DEBUG expr => val_203
  D.50992_535 = strcasecmp (val_203, "yes");
  if (D.50992_535 == 0)
    goto <bb 111>;
  else
    goto <bb 102>;

<bb 102>:
  D.50993_536 = strcasecmp (val_203, "on");
  if (D.50993_536 == 0)
    goto <bb 111>;
  else
    goto <bb 103>;

<bb 103>:
  D.50994_537 = strcasecmp (val_203, "true");
  if (D.50994_537 == 0)
    goto <bb 111>;
  else
    goto <bb 104>;

<bb 104>:
  D.50995_538 = strcasecmp (val_203, "t");
  if (D.50995_538 == 0)
    goto <bb 111>;
  else
    goto <bb 105>;

<bb 105>:
  D.50996_539 = strcasecmp (val_203, "enabled");
  if (D.50996_539 == 0)
    goto <bb 111>;
  else
    goto <bb 106>;

<bb 106>:
  D.50997_540 = strcasecmp (val_203, "active");
  if (D.50997_540 == 0)
    goto <bb 111>;
  else
    goto <bb 107>;

<bb 107>:
  D.50998_541 = strcasecmp (val_203, "allow");
  if (D.50998_541 == 0)
    goto <bb 111>;
  else
    goto <bb 108>;

<bb 108>:
  D.50999_542 = switch_is_number (val_203);
  if (D.50999_542 != 0)
    goto <bb 109>;
  else
    goto <bb 111>;

<bb 109>:
  # DEBUG __nptr => val_203
  D.51000_543 = strtol (val_203, 0B, 10);
  if (D.51000_543 != 0)
    goto <bb 111>;
  else
    goto <bb 110>;

<bb 110>:

<bb 111>:
  # ok_544 = PHI <1(101), 1(102), 1(103), 1(104), 1(105), 1(106), 1(107), 1(109), 0(108), 0(110)>
  # DEBUG ok => NULL
  goto <bb 113>;

<bb 112>:
  D.41016_205 = smh_27->media_flags[14];
  ok_206 = (int) D.41016_205;
  # DEBUG ok => ok_206

<bb 113>:
  # ok_20 = PHI <ok_206(112), ok_544(111)>
  # DEBUG ok => ok_20
  if (ok_20 != 0)
    goto <bb 114>;
  else
    goto <bb 115>;

<bb 114>:
  D.40834_207 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  rtp_flush_read_buffer (D.40834_207, 1);
  D.40823_208 = session_26(D)->channel;
  switch_channel_set_flag_value (D.40823_208, 104, 1);
  goto <bb 190> (end);

<bb 115>:
  D.40834_209 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  rtp_flush_read_buffer (D.40834_209, 0);
  goto <bb 190> (end);

<L126>:
  D.40834_210 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  D.41020_211 = switch_rtp_ready (D.40834_210);
  if (D.41020_211 != 0)
    goto <bb 117>;
  else
    goto <bb 190> (end);

<bb 117>:
  D.40988_212 = smh_27->flags;
  D.41023_213 = D.40988_212 & 4;
  if (D.41023_213 != 0)
    goto <bb 118>;
  else
    goto <bb 120>;

<bb 118>:
  D.41026_215 = D.40988_212 & 4294967291;
  smh_27->flags = D.41026_215;
  D.40823_216 = session_26(D)->channel;
  D.41027_217 = switch_channel_test_flag (D.40823_216, 57);
  if (D.41027_217 != 0)
    goto <bb 119>;
  else
    goto <bb 120>;

<bb 119>:
  D.40823_218 = session_26(D)->channel;
  D.41030_219 = switch_channel_get_name (D.40823_218);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7704, session_26(D), 7, "%s RESUME Jitterbuffer\n", D.41030_219);
  D.40834_220 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  switch_rtp_pause_jitter_buffer (D.40834_220, 0);

<bb 120>:
  D.40834_221 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  D.41031_222 = switch_rtp_test_flag (D.40834_221, 15);
  if (D.41031_222 != 0)
    goto <bb 121>;
  else
    goto <bb 122>;

<bb 121>:
  D.40823_223 = session_26(D)->channel;
  D.41034_224 = switch_channel_get_name (D.40823_223);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7712, session_26(D), 7, "%s deactivate passthru 2833 mode.\n", D.41034_224);
  D.40834_225 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  switch_rtp_clear_flag (D.40834_225, 15);

<bb 122>:
  D.40823_226 = session_26(D)->channel;
  D.41035_227 = switch_channel_test_flag (D.40823_226, 99);
  if (D.41035_227 != 0)
    goto <bb 123>;
  else
    goto <bb 127>;

<bb 123>:
  D.40834_228 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  D.41038_229 = switch_rtp_test_flag (D.40834_228, 12);
  if (D.41038_229 == 0)
    goto <bb 124>;
  else
    goto <bb 126>;

<bb 124>:
  D.40834_230 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  D.41041_231 = switch_rtp_test_flag (D.40834_230, 19);
  if (D.41041_231 == 0)
    goto <bb 125>;
  else
    goto <bb 126>;

<bb 125>:
  D.40834_232 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  switch_rtp_set_flag (D.40834_232, 3);

<bb 126>:
  D.40823_233 = session_26(D)->channel;
  switch_channel_clear_flag (D.40823_233, 99);

<bb 127>:
  D.40823_234 = session_26(D)->channel;
  D.41044_235 = switch_channel_test_flag (D.40823_234, 104);
  if (D.41044_235 != 0)
    goto <bb 128>;
  else
    goto <bb 129>;

<bb 128>:
  D.40834_236 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  rtp_flush_read_buffer (D.40834_236, 2);
  D.40823_237 = session_26(D)->channel;
  switch_channel_clear_flag (D.40823_237, 104);
  goto <bb 190> (end);

<bb 129>:
  D.40834_238 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  rtp_flush_read_buffer (D.40834_238, 0);
  goto <bb 190> (end);

<L144>:
  D.40834_239 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  D.41048_240 = switch_rtp_ready (D.40834_239);
  if (D.41048_240 != 0)
    goto <bb 131>;
  else
    goto <bb 190> (end);

<bb 131>:
  D.40834_241 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  rtp_flush_read_buffer (D.40834_241, 0);
  goto <bb 190> (end);

<L147>:
  D.41051_242 = session_26(D)->track_duration;
  if (D.41051_242 != 0)
    goto <bb 133>;
  else
    goto <bb 161> (<L211>);

<bb 133>:
  switch_core_session_enable_heartbeat (session_26(D), D.41051_242);
  goto <bb 161> (<L211>);

<L150>:
  # DEBUG ip => 0B
  # DEBUG port => 0B
  D.40823_246 = session_26(D)->channel;
  switch_channel_set_flag_value (D.40823_246, 15, 1);
  MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].codec_negotiated = 0;
  MEM[(struct switch_rtp_engine_t *)smh_27 + 11496B].codec_negotiated = 0;
  switch_core_media_set_local_sdp (session_26(D), 0B, 0);
  D.40823_247 = session_26(D)->channel;
  D.41054_248 = switch_channel_get_variable_dup (D.40823_247, "bypass_keep_codec", 1, -1);
  # DEBUG expr => D.41054_248
  if (D.41054_248 != 0B)
    goto <bb 135>;
  else
    goto <bb 201>;

<bb 135>:
  D.51004_545 = strcasecmp (D.41054_248, "yes");
  if (D.51004_545 == 0)
    goto <bb 144>;
  else
    goto <bb 136>;

<bb 136>:
  D.51005_546 = strcasecmp (D.41054_248, "on");
  if (D.51005_546 == 0)
    goto <bb 144>;
  else
    goto <bb 137>;

<bb 137>:
  D.51006_547 = strcasecmp (D.41054_248, "true");
  if (D.51006_547 == 0)
    goto <bb 144>;
  else
    goto <bb 138>;

<bb 138>:
  D.51007_548 = strcasecmp (D.41054_248, "t");
  if (D.51007_548 == 0)
    goto <bb 144>;
  else
    goto <bb 139>;

<bb 139>:
  D.51008_549 = strcasecmp (D.41054_248, "enabled");
  if (D.51008_549 == 0)
    goto <bb 144>;
  else
    goto <bb 140>;

<bb 140>:
  D.51009_550 = strcasecmp (D.41054_248, "active");
  if (D.51009_550 == 0)
    goto <bb 144>;
  else
    goto <bb 141>;

<bb 141>:
  D.51010_551 = strcasecmp (D.41054_248, "allow");
  if (D.51010_551 == 0)
    goto <bb 144>;
  else
    goto <bb 142>;

<bb 142>:
  D.51011_552 = switch_is_number (D.41054_248);
  if (D.51011_552 != 0)
    goto <bb 143>;
  else
    goto <bb 201>;

<bb 143>:
  # DEBUG __nptr => D.41054_248
  D.51012_553 = strtol (D.41054_248, 0B, 10);
  if (D.51012_553 != 0)
    goto <bb 144>;
  else
    goto <bb 201>;

<bb 144>:
  D.40823_251 = session_26(D)->channel;
  D.41058_252 = switch_channel_get_variable_dup (D.40823_251, "ep_codec_string", 1, -1);
  switch_channel_set_variable_var_check (D.40823_251, "absolute_codec_string", D.41058_252, 1);

<bb 145>:
  D.40823_253 = session_26(D)->channel;
  uuid_254 = switch_channel_get_partner_uuid (D.40823_253);
  # DEBUG uuid => uuid_254
  if (uuid_254 != 0B)
    goto <bb 146>;
  else
    goto <bb 157>;

<bb 146>:
  other_session_255 = switch_core_session_perform_locate (uuid_254, "src/switch_core_media.c", &__func__, 7768);
  # DEBUG other_session => other_session_255
  if (other_session_255 != 0B)
    goto <bb 147>;
  else
    goto <bb 157>;

<bb 147>:
  other_channel_256 = switch_core_session_get_channel (other_session_255);
  # DEBUG other_channel => other_channel_256
  ip_257 = switch_channel_get_variable_dup (other_channel_256, "remote_media_ip", 1, -1);
  # DEBUG ip => ip_257
  port_258 = switch_channel_get_variable_dup (other_channel_256, "remote_media_port", 1, -1);
  # DEBUG port => port_258
  switch_core_session_rwunlock (other_session_255);
  D.41063_259 = ip_257 != 0B;
  D.41064_260 = port_258 != 0B;
  D.41065_261 = D.41063_259 & D.41064_260;
  if (D.41065_261 != 0)
    goto <bb 148>;
  else
    goto <bb 157>;

<bb 148>:
  switch_core_media_prepare_codecs (session_26(D), 1);
  # DEBUG engine => D#39
  pmap_488 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].payload_map;
  # DEBUG pmap => pmap_488
  # DEBUG pmap => pmap_488
  if (pmap_488 != 0B)
    goto <bb 149>;
  else
    goto <bb 152>;

<bb 149>:
  D.48245_653 = pmap_488->allocated;
  if (D.48245_653 != 0)
    goto <bb 150>;
  else
    goto <bb 152>;

<bb 150>:
  # pmap_568 = PHI <pmap_490(151), pmap_488(149)>
  pmap_568->negotiated = 0;
  pmap_568->current = 0;
  pmap_490 = pmap_568->next;
  # DEBUG pmap => pmap_490
  # DEBUG pmap => pmap_490
  if (pmap_490 != 0B)
    goto <bb 151>;
  else
    goto <bb 152>;

<bb 151>:
  D.48245_491 = pmap_490->allocated;
  if (D.48245_491 != 0)
    goto <bb 150>;
  else
    goto <bb 152>;

<bb 152>:
  # DEBUG engine => D#38
  pmap_492 = MEM[(struct switch_rtp_engine_t *)smh_27 + 11496B].payload_map;
  # DEBUG pmap => pmap_492
  # DEBUG pmap => pmap_492
  if (pmap_492 != 0B)
    goto <bb 153>;
  else
    goto <bb 156>;

<bb 153>:
  D.48248_662 = pmap_492->allocated;
  if (D.48248_662 != 0)
    goto <bb 154>;
  else
    goto <bb 156>;

<bb 154>:
  # pmap_651 = PHI <pmap_494(155), pmap_492(153)>
  pmap_651->negotiated = 0;
  pmap_651->current = 0;
  pmap_494 = pmap_651->next;
  # DEBUG pmap => pmap_494
  # DEBUG pmap => pmap_494
  if (pmap_494 != 0B)
    goto <bb 155>;
  else
    goto <bb 156>;

<bb 155>:
  D.48248_495 = pmap_494->allocated;
  if (D.48248_495 != 0)
    goto <bb 154>;
  else
    goto <bb 156>;

<bb 156>:
  # DEBUG __nptr => port_258
  D.48250_496 = strtol (port_258, 0B, 10);
  D.41069_263 = (short unsigned int) D.48250_496;
  switch_core_media_gen_local_sdp (session_26(D), 0, ip_257, D.41069_263, 0B, 1);

<bb 157>:
  D.41070_264 = smh_27->mparams;
  D.41071_265 = D.41070_264->local_sdp_str;
  if (D.41071_265 == 0B)
    goto <bb 158>;
  else
    goto <bb 159>;

<bb 158>:
  switch_core_media_absorb_sdp (session_26(D));

<bb 159>:
  D.41051_266 = session_26(D)->track_duration;
  if (D.41051_266 != 0)
    goto <bb 160>;
  else
    goto <bb 161> (<L211>);

<bb 160>:
  switch_core_session_enable_heartbeat (session_26(D), D.41051_266);

<L211>:
  D.41076_268 = smh_27->mutex;
  if (D.41076_268 != 0B)
    goto <bb 162>;
  else
    goto <bb 163>;

<bb 162>:
  switch_mutex_lock (D.41076_268);

<bb 163>:
  D.40823_270 = session_26(D)->channel;
  D.41081_271 = switch_channel_check_signal (D.40823_270, 1);
  if (D.41081_271 != 0)
    goto <bb 188> (end_lock);
  else
    goto <bb 164>;

<bb 164>:
  D.40823_272 = session_26(D)->channel;
  D.41083_273 = switch_channel_get_state (D.40823_272);
  if (D.41083_273 > 9)
    goto <bb 188> (end_lock);
  else
    goto <bb 165>;

<bb 165>:
  D.40827_274 = msg_35(D)->message_id;
  switch (D.40827_274) <default: end_lock, case 30: <L198>, case 37: <L186>, case 40: <L170>>

<L170>:
  D.40845_275 = msg_35(D)->string_arg;
  if (D.40845_275 != 0B)
    goto <bb 167>;
  else
    goto <bb 175>;

<bb 167>:
  D.40823_276 = session_26(D)->channel;
  switch_channel_set_variable_var_check (D.40823_276, "absolute_codec_string", 0B, 1);
  D.40845_277 = msg_35(D)->string_arg;
  D.41086_278 = *D.40845_277;
  if (D.41086_278 == 61)
    goto <bb 168>;
  else
    goto <bb 169>;

<bb 168>:
  D.40823_279 = session_26(D)->channel;
  switch_channel_set_variable_var_check (D.40823_279, "codec_string", D.40845_277, 1);
  goto <bb 174>;

<bb 169>:
  D.40823_281 = session_26(D)->channel;
  D.41091_282 = MEM[(struct switch_rtp_engine_t *)smh_27 + 11496B].cur_payload_map;
  D.41092_283 = D.41091_282->rm_encoding;
  if (D.41092_283 != 0B)
    goto <bb 170>;
  else
    goto <bb 171>;

<bb 170>:

<bb 171>:
  # iftmp.11_23 = PHI <D.41092_283(170), ""(169)>
  if (D.41092_283 != 0B)
    goto <bb 173>;
  else
    goto <bb 172>;

<bb 172>:

<bb 173>:
  # iftmp.12_24 = PHI <","(171), ""(172)>
  D.41100_291 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].cur_payload_map;
  D.41101_292 = D.41100_291->rm_encoding;
  switch_channel_set_variable_printf (D.40823_281, "codec_string", "=%s%s%s,%s", iftmp.11_23, iftmp.12_24, D.41101_292, D.40845_277);

<bb 174>:
  MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].codec_negotiated = 0;
  MEM[(struct switch_rtp_engine_t *)smh_27 + 11496B].codec_negotiated = 0;
  D.40823_294 = session_26(D)->channel;
  switch_channel_clear_flag (D.40823_294, 98);
  switch_core_media_prepare_codecs (session_26(D), 1);
  switch_core_media_check_video_codecs (session_26(D));
  switch_core_media_gen_local_sdp (session_26(D), 0, 0B, 0, 0B, 1);

<bb 175>:
  switch_media_handle_set_media_flag (smh_27, 7);
  D.40838_295 = msg_35(D)->numeric_arg;
  if (D.40838_295 != 0)
    goto <bb 176>;
  else
    goto <bb 188> (end_lock);

<bb 176>:
  D.41104_296 = switch_core_session_perform_get_partner (session_26(D), &nsession, "src/switch_core_media.c", &__func__, 7835);
  if (D.41104_296 == 0)
    goto <bb 177>;
  else
    goto <bb 188> (end_lock);

<bb 177>:
  msg_35(D)->numeric_arg = 0;
  nsession.13_297 = nsession;
  switch_core_session_perform_receive_message (nsession.13_297, msg_35(D), "src/switch_core_media.c", &__func__, 7837);
  nsession.13_298 = nsession;
  switch_core_session_rwunlock (nsession.13_298);
  goto <bb 188> (end_lock);

<L186>:
  D.40834_299 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  D.41108_300 = switch_rtp_ready (D.40834_299);
  if (D.41108_300 != 0)
    goto <bb 179>;
  else
    goto <bb 188> (end_lock);

<bb 179>:
  D.40838_301 = msg_35(D)->numeric_arg;
  if (D.40838_301 != 0)
    goto <bb 180>;
  else
    goto <bb 183>;

<bb 180>:
  D.40823_302 = session_26(D)->channel;
  D.41113_303 = switch_channel_test_flag (D.40823_302, 57);
  if (D.41113_303 != 0)
    goto <bb 181>;
  else
    goto <bb 182>;

<bb 181>:
  D.40834_304 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  switch_rtp_pause_jitter_buffer (D.40834_304, 1);
  D.40988_305 = smh_27->flags;
  D.40989_306 = D.40988_305 | 4;
  smh_27->flags = D.40989_306;

<bb 182>:
  D.40834_307 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  rtp_flush_read_buffer (D.40834_307, 2);
  goto <bb 188> (end_lock);

<bb 183>:
  D.40988_308 = smh_27->flags;
  D.41023_309 = D.40988_308 & 4;
  if (D.41023_309 != 0)
    goto <bb 184>;
  else
    goto <bb 188> (end_lock);

<bb 184>:
  D.41026_311 = D.40988_308 & 4294967291;
  smh_27->flags = D.41026_311;
  D.40823_312 = session_26(D)->channel;
  D.41119_313 = switch_channel_test_flag (D.40823_312, 57);
  if (D.41119_313 != 0)
    goto <bb 185>;
  else
    goto <bb 188> (end_lock);

<bb 185>:
  D.40834_314 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  switch_rtp_pause_jitter_buffer (D.40834_314, 0);
  goto <bb 188> (end_lock);

<L198>:
  D.40823_315 = session_26(D)->channel;
  t38_options_316 = switch_channel_get_private (D.40823_315, "t38_options");
  # DEBUG t38_options => t38_options_316
  if (t38_options_316 != 0B)
    goto <bb 187>;
  else
    goto <bb 188> (end_lock);

<bb 187>:
  switch_core_media_start_udptl (session_26(D), t38_options_316);

  # status_1 = PHI <1(164), 0(176), 0(182), 0(186), 0(175), 0(177), 0(178), 0(185), 0(184), 0(183), 0(165), 0(187), 1(163)>
end_lock:
  # DEBUG status => status_1
  D.41076_318 = smh_27->mutex;
  if (D.41076_318 != 0B)
    goto <bb 189>;
  else
    goto <bb 190> (end);

<bb 189>:
  switch_mutex_unlock (D.41076_318);

  # status_2 = PHI <0(19), 0(21), status_109(30), 0(52), 0(64), 0(114), 0(128), 0(131), status_1(188), status_1(189), 0(50), 0(60), 0(62), 0(61), 0(53), 0(63), 0(65), 0(66), 0(115), 0(116), 0(129), 0(130), 0(51), 0(196)>
end:
  # DEBUG status => status_2
  D.40823_320 = session_26(D)->channel;
  D.41128_321 = switch_channel_check_signal (D.40823_320, 1);
  if (D.41128_321 != 0)
    goto <bb 192>;
  else
    goto <bb 191>;

<bb 191>:
  D.40823_322 = session_26(D)->channel;
  D.41130_323 = switch_channel_get_state (D.40823_322);
  if (D.41130_323 > 9)
    goto <bb 192>;
  else
    goto <bb 193>;

<bb 192>:
  # DEBUG status => 1

<bb 193>:
  # status_21 = PHI <1(4), 1(6), 1(192), 1(5), status_2(191)>
  return status_21;

<bb 194>:
  # qlen_658 = PHI <3(32), qlen_114(33)>
  # DEBUG qlen => qlen_658
  D.40845_116 = msg_35(D)->string_arg;
  p_117 = __builtin_strchr (D.40845_116, 58);
  # DEBUG p => p_117
  if (p_117 != 0B)
    goto <bb 35>;
  else
    goto <bb 195>;

<bb 195>:
  # max_drift_214 = PHI <0(194), 0(34)>
  # qlen_650 = PHI <qlen_658(194), qlen_6(34)>
  # DEBUG max_drift => max_drift_214
  # DEBUG maxlen => 0
  goto <bb 39>;

<bb 196>:
  D.40945_148 = msg_35(D)->string_array_arg[1];
  # DEBUG s => D.40945_148
  if (D.40945_148 == 0B)
    goto <bb 190> (end);
  else
    goto <bb 53>;

<bb 197>:
  flags = {};
  D.40949_150 = strcasecmp (direction_15, "both");
  both_151 = D.40949_150 == 0;
  # DEBUG both => both_151
  # DEBUG set => 0
  if (both_151 != 0)
    goto <bb 55>;
  else
    goto <bb 54>;

<bb 198>:
  # set_586 = PHI <0(54)>
  # DEBUG set => set_586
  goto <bb 56>;

<bb 199>:
  goto <bb 81>;

<bb 200>:
  # DEBUG ok => ok_18
  D.40834_197 = MEM[(struct switch_rtp_engine_t *)smh_27 + 80B].rtp_session;
  switch_rtp_clear_flag (D.40834_197, 3);
  D.40823_198 = session_26(D)->channel;
  switch_channel_set_flag_value (D.40823_198, 99, 1);
  D.40823_199 = session_26(D)->channel;
  D.41011_200 = switch_channel_test_flag (D.40823_199, 99);
  if (D.41011_200 != 0)
    goto <bb 115>;
  else
    goto <bb 100>;

<bb 201>:
  goto <bb 145>;

}



;; Function switch_core_media_break (switch_core_media_break)

switch_core_media_break (struct switch_core_session_t * session, switch_media_type_t type)
{
  static const char __PRETTY_FUNCTION__[24] = "switch_core_media_break";
  struct switch_media_handle_t * smh;
  uint8_t D.40812;
  struct switch_rtp_t * D.40811;

<bb 2>:
  if (session_1(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 7902, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_2 = session_1(D)->media_handle;
  # DEBUG smh => smh_2
  if (smh_2 == 0B)
    goto <bb 7>;
  else
    goto <bb 5>;

<bb 5>:
  D.40811_4 = smh_2->engines[type_3(D)].rtp_session;
  D.40812_5 = switch_rtp_ready (D.40811_4);
  if (D.40812_5 != 0)
    goto <bb 6>;
  else
    goto <bb 7>;

<bb 6>:
  D.40811_6 = smh_2->engines[type_3(D)].rtp_session;
  switch_rtp_break (D.40811_6);

<bb 7>:
  return;

}



;; Function switch_core_media_kill_socket (switch_core_media_kill_socket)

switch_core_media_kill_socket (struct switch_core_session_t * session, switch_media_type_t type)
{
  static const char __PRETTY_FUNCTION__[30] = "switch_core_media_kill_socket";
  struct switch_media_handle_t * smh;
  uint8_t D.40803;
  struct switch_rtp_t * D.40802;

<bb 2>:
  if (session_1(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 7918, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_2 = session_1(D)->media_handle;
  # DEBUG smh => smh_2
  if (smh_2 == 0B)
    goto <bb 7>;
  else
    goto <bb 5>;

<bb 5>:
  D.40802_4 = smh_2->engines[type_3(D)].rtp_session;
  D.40803_5 = switch_rtp_ready (D.40802_4);
  if (D.40803_5 != 0)
    goto <bb 6>;
  else
    goto <bb 7>;

<bb 6>:
  D.40802_6 = smh_2->engines[type_3(D)].rtp_session;
  switch_rtp_kill_socket (D.40802_6);

<bb 7>:
  return;

}



;; Function switch_core_media_queue_rfc2833 (switch_core_media_queue_rfc2833)

switch_core_media_queue_rfc2833 (struct switch_core_session_t * session, switch_media_type_t type, const struct switch_dtmf_t * dtmf)
{
  static const char __PRETTY_FUNCTION__[32] = "switch_core_media_queue_rfc2833";
  struct switch_media_handle_t * smh;
  uint8_t D.40794;
  struct switch_rtp_t * D.40793;
  switch_status_t D.40792;

<bb 2>:
  if (session_2(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 7934, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_3 = session_2(D)->media_handle;
  # DEBUG smh => smh_3
  if (smh_3 == 0B)
    goto <bb 7>;
  else
    goto <bb 5>;

<bb 5>:
  D.40793_6 = smh_3->engines[type_5(D)].rtp_session;
  D.40794_7 = switch_rtp_ready (D.40793_6);
  if (D.40794_7 != 0)
    goto <bb 6>;
  else
    goto <bb 7>;

<bb 6>:
  D.40793_8 = smh_3->engines[type_5(D)].rtp_session;
  D.40792_10 = switch_rtp_queue_rfc2833 (D.40793_8, dtmf_9(D));

<bb 7>:
  # D.40792_1 = PHI <1(4), D.40792_10(6), 1(5)>
  return D.40792_1;

}



;; Function switch_core_media_queue_rfc2833_in (switch_core_media_queue_rfc2833_in)

switch_core_media_queue_rfc2833_in (struct switch_core_session_t * session, switch_media_type_t type, const struct switch_dtmf_t * dtmf)
{
  static const char __PRETTY_FUNCTION__[35] = "switch_core_media_queue_rfc2833_in";
  struct switch_media_handle_t * smh;
  uint8_t D.40784;
  struct switch_rtp_t * D.40783;
  switch_status_t D.40782;

<bb 2>:
  if (session_2(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 7952, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_3 = session_2(D)->media_handle;
  # DEBUG smh => smh_3
  if (smh_3 == 0B)
    goto <bb 7>;
  else
    goto <bb 5>;

<bb 5>:
  D.40783_6 = smh_3->engines[type_5(D)].rtp_session;
  D.40784_7 = switch_rtp_ready (D.40783_6);
  if (D.40784_7 != 0)
    goto <bb 6>;
  else
    goto <bb 7>;

<bb 6>:
  D.40783_8 = smh_3->engines[type_5(D)].rtp_session;
  D.40782_10 = switch_rtp_queue_rfc2833_in (D.40783_8, dtmf_9(D));

<bb 7>:
  # D.40782_1 = PHI <1(4), D.40782_10(6), 1(5)>
  return D.40782_1;

}



;; Function switch_core_media_ready (switch_core_media_ready)

switch_core_media_ready (struct switch_core_session_t * session, switch_media_type_t type)
{
  static const char __PRETTY_FUNCTION__[24] = "switch_core_media_ready";
  struct switch_media_handle_t * smh;
  struct switch_rtp_t * D.40776;
  uint8_t D.40775;

<bb 2>:
  if (session_2(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 7970, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_3 = session_2(D)->media_handle;
  # DEBUG smh => smh_3
  if (smh_3 == 0B)
    goto <bb 6>;
  else
    goto <bb 5>;

<bb 5>:
  D.40776_6 = smh_3->engines[type_5(D)].rtp_session;
  D.40775_7 = switch_rtp_ready (D.40776_6);

<bb 6>:
  # D.40775_1 = PHI <0(4), D.40775_7(5)>
  return D.40775_1;

}



;; Function switch_core_media_set_rtp_flag (switch_core_media_set_rtp_flag)

switch_core_media_set_rtp_flag (struct switch_core_session_t * session, switch_media_type_t type, switch_rtp_flag_t flag)
{
  static const char __PRETTY_FUNCTION__[31] = "switch_core_media_set_rtp_flag";
  struct switch_media_handle_t * smh;
  uint8_t D.40767;
  struct switch_rtp_t * D.40766;

<bb 2>:
  if (session_1(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 7984, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_2 = session_1(D)->media_handle;
  # DEBUG smh => smh_2
  if (smh_2 == 0B)
    goto <bb 7>;
  else
    goto <bb 5>;

<bb 5>:
  D.40766_4 = smh_2->engines[type_3(D)].rtp_session;
  D.40767_5 = switch_rtp_ready (D.40766_4);
  if (D.40767_5 != 0)
    goto <bb 6>;
  else
    goto <bb 7>;

<bb 6>:
  D.40766_6 = smh_2->engines[type_3(D)].rtp_session;
  switch_rtp_set_flag (D.40766_6, flag_7(D));

<bb 7>:
  return;

}



;; Function switch_core_media_clear_rtp_flag (switch_core_media_clear_rtp_flag)

switch_core_media_clear_rtp_flag (struct switch_core_session_t * session, switch_media_type_t type, switch_rtp_flag_t flag)
{
  static const char __PRETTY_FUNCTION__[33] = "switch_core_media_clear_rtp_flag";
  struct switch_media_handle_t * smh;
  uint8_t D.40758;
  struct switch_rtp_t * D.40757;

<bb 2>:
  if (session_1(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 8000, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_2 = session_1(D)->media_handle;
  # DEBUG smh => smh_2
  if (smh_2 == 0B)
    goto <bb 7>;
  else
    goto <bb 5>;

<bb 5>:
  D.40757_4 = smh_2->engines[type_3(D)].rtp_session;
  D.40758_5 = switch_rtp_ready (D.40757_4);
  if (D.40758_5 != 0)
    goto <bb 6>;
  else
    goto <bb 7>;

<bb 6>:
  D.40757_6 = smh_2->engines[type_3(D)].rtp_session;
  switch_rtp_clear_flag (D.40757_6, flag_7(D));

<bb 7>:
  return;

}



;; Function switch_core_media_set_telephony_event (switch_core_media_set_telephony_event)

switch_core_media_set_telephony_event (struct switch_core_session_t * session, switch_media_type_t type, switch_payload_t te)
{
  static const char __PRETTY_FUNCTION__[38] = "switch_core_media_set_telephony_event";
  struct switch_media_handle_t * smh;
  uint8_t D.40749;
  struct switch_rtp_t * D.40748;

<bb 2>:
  if (session_1(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 8016, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_2 = session_1(D)->media_handle;
  # DEBUG smh => smh_2
  if (smh_2 == 0B)
    goto <bb 7>;
  else
    goto <bb 5>;

<bb 5>:
  D.40748_4 = smh_2->engines[type_3(D)].rtp_session;
  D.40749_5 = switch_rtp_ready (D.40748_4);
  if (D.40749_5 != 0)
    goto <bb 6>;
  else
    goto <bb 7>;

<bb 6>:
  D.40748_6 = smh_2->engines[type_3(D)].rtp_session;
  switch_rtp_set_telephony_event (D.40748_6, te_7(D));

<bb 7>:
  return;

}



;; Function switch_core_media_set_telephony_recv_event (switch_core_media_set_telephony_recv_event)

switch_core_media_set_telephony_recv_event (struct switch_core_session_t * session, switch_media_type_t type, switch_payload_t te)
{
  static const char __PRETTY_FUNCTION__[43] = "switch_core_media_set_telephony_recv_event";
  struct switch_media_handle_t * smh;
  uint8_t D.40740;
  struct switch_rtp_t * D.40739;

<bb 2>:
  if (session_1(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 8032, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_2 = session_1(D)->media_handle;
  # DEBUG smh => smh_2
  if (smh_2 == 0B)
    goto <bb 7>;
  else
    goto <bb 5>;

<bb 5>:
  D.40739_4 = smh_2->engines[type_3(D)].rtp_session;
  D.40740_5 = switch_rtp_ready (D.40739_4);
  if (D.40740_5 != 0)
    goto <bb 6>;
  else
    goto <bb 7>;

<bb 6>:
  D.40739_6 = smh_2->engines[type_3(D)].rtp_session;
  switch_rtp_set_telephony_recv_event (D.40739_6, te_7(D));

<bb 7>:
  return;

}



;; Function switch_core_media_get_stats (switch_core_media_get_stats)

switch_core_media_get_stats (struct switch_core_session_t * session, switch_media_type_t type, struct switch_memory_pool_t * pool)
{
  static const char __PRETTY_FUNCTION__[28] = "switch_core_media_get_stats";
  struct switch_media_handle_t * smh;
  struct switch_rtp_t * D.40731;
  struct switch_rtp_stats_t * D.40730;

<bb 2>:
  if (session_2(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 8048, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_3 = session_2(D)->media_handle;
  # DEBUG smh => smh_3
  if (smh_3 == 0B)
    goto <bb 7>;
  else
    goto <bb 5>;

<bb 5>:
  D.40731_6 = smh_3->engines[type_5(D)].rtp_session;
  if (D.40731_6 != 0B)
    goto <bb 6>;
  else
    goto <bb 7>;

<bb 6>:
  D.40730_9 = switch_rtp_get_stats (D.40731_6, pool_8(D));

<bb 7>:
  # D.40730_1 = PHI <0B(4), D.40730_9(6), 0B(5)>
  return D.40730_1;

}



;; Function set_stats (set_stats)

set_stats (struct switch_core_session_t * session, switch_media_type_t type, const char * prefix)
{
  char var_val[35];
  char var_name[256];
  struct switch_channel_t * channel;
  struct switch_rtp_stats_t * stats;
  uint32_t D.46661;
  uint32_t D.46656;
  switch_size_t D.46651;
  switch_size_t D.46646;
  switch_size_t D.46641;
  switch_size_t D.46636;
  switch_size_t D.46631;
  switch_size_t D.46626;
  switch_size_t D.46621;
  double D.46616;
  double D.46611;
  switch_size_t D.46606;
  double D.46601;
  double D.46596;
  double D.46591;
  double D.46586;
  double D.46581;
  switch_size_t D.46576;
  switch_size_t D.46571;
  switch_size_t D.46566;
  switch_size_t D.46561;
  switch_size_t D.46556;
  switch_size_t D.46551;
  switch_size_t D.46546;
  switch_size_t D.46541;
  switch_size_t D.46536;
  switch_size_t D.46531;
  double D.46526;
  double D.46525;

<bb 2>:
  stats_30 = switch_core_media_get_stats (session_28(D), type_29(D), 0B);
  # DEBUG stats => stats_30
  channel_31 = switch_core_session_get_channel (session_28(D));
  # DEBUG channel => channel_31
  var_name = "";
  var_val = "";
  if (stats_30 != 0B)
    goto <bb 3>;
  else
    goto <bb 58>;

<bb 3>:
  D.46525_32 = stats_30->inbound.variance;
  D.46526_33 = sqrt (D.46525_32);
  stats_30->inbound.std_deviation = D.46526_33;
  if (prefix_34(D) != 0B)
    goto <bb 5>;
  else
    goto <bb 4>;

<bb 4>:

<bb 5>:
  # prefix_1 = PHI <prefix_34(D)(3), ""(4)>
  switch_snprintf (&var_name, 256, "rtp_%s_%s", prefix_1, "in_raw_bytes");
  D.46531_37 = stats_30->inbound.raw_bytes;
  switch_snprintf (&var_val, 35, "%d", D.46531_37);
  switch_channel_set_variable_var_check (channel_31, &var_name, &var_val, 1);
  if (prefix_34(D) != 0B)
    goto <bb 7>;
  else
    goto <bb 6>;

<bb 6>:

<bb 7>:
  # prefix_2 = PHI <prefix_34(D)(5), ""(6)>
  switch_snprintf (&var_name, 256, "rtp_%s_%s", prefix_2, "in_media_bytes");
  D.46536_40 = stats_30->inbound.media_bytes;
  switch_snprintf (&var_val, 35, "%d", D.46536_40);
  switch_channel_set_variable_var_check (channel_31, &var_name, &var_val, 1);
  if (prefix_34(D) != 0B)
    goto <bb 9>;
  else
    goto <bb 8>;

<bb 8>:

<bb 9>:
  # prefix_3 = PHI <prefix_34(D)(7), ""(8)>
  switch_snprintf (&var_name, 256, "rtp_%s_%s", prefix_3, "in_packet_count");
  D.46541_43 = stats_30->inbound.packet_count;
  switch_snprintf (&var_val, 35, "%d", D.46541_43);
  switch_channel_set_variable_var_check (channel_31, &var_name, &var_val, 1);
  if (prefix_34(D) != 0B)
    goto <bb 11>;
  else
    goto <bb 10>;

<bb 10>:

<bb 11>:
  # prefix_4 = PHI <prefix_34(D)(9), ""(10)>
  switch_snprintf (&var_name, 256, "rtp_%s_%s", prefix_4, "in_media_packet_count");
  D.46546_46 = stats_30->inbound.media_packet_count;
  switch_snprintf (&var_val, 35, "%d", D.46546_46);
  switch_channel_set_variable_var_check (channel_31, &var_name, &var_val, 1);
  if (prefix_34(D) != 0B)
    goto <bb 13>;
  else
    goto <bb 12>;

<bb 12>:

<bb 13>:
  # prefix_5 = PHI <prefix_34(D)(11), ""(12)>
  switch_snprintf (&var_name, 256, "rtp_%s_%s", prefix_5, "in_skip_packet_count");
  D.46551_49 = stats_30->inbound.skip_packet_count;
  switch_snprintf (&var_val, 35, "%d", D.46551_49);
  switch_channel_set_variable_var_check (channel_31, &var_name, &var_val, 1);
  if (prefix_34(D) != 0B)
    goto <bb 15>;
  else
    goto <bb 14>;

<bb 14>:

<bb 15>:
  # prefix_6 = PHI <prefix_34(D)(13), ""(14)>
  switch_snprintf (&var_name, 256, "rtp_%s_%s", prefix_6, "in_jitter_packet_count");
  D.46556_52 = stats_30->inbound.jb_packet_count;
  switch_snprintf (&var_val, 35, "%d", D.46556_52);
  switch_channel_set_variable_var_check (channel_31, &var_name, &var_val, 1);
  if (prefix_34(D) != 0B)
    goto <bb 17>;
  else
    goto <bb 16>;

<bb 16>:

<bb 17>:
  # prefix_7 = PHI <prefix_34(D)(15), ""(16)>
  switch_snprintf (&var_name, 256, "rtp_%s_%s", prefix_7, "in_dtmf_packet_count");
  D.46561_55 = stats_30->inbound.dtmf_packet_count;
  switch_snprintf (&var_val, 35, "%d", D.46561_55);
  switch_channel_set_variable_var_check (channel_31, &var_name, &var_val, 1);
  if (prefix_34(D) != 0B)
    goto <bb 19>;
  else
    goto <bb 18>;

<bb 18>:

<bb 19>:
  # prefix_8 = PHI <prefix_34(D)(17), ""(18)>
  switch_snprintf (&var_name, 256, "rtp_%s_%s", prefix_8, "in_cng_packet_count");
  D.46566_58 = stats_30->inbound.cng_packet_count;
  switch_snprintf (&var_val, 35, "%d", D.46566_58);
  switch_channel_set_variable_var_check (channel_31, &var_name, &var_val, 1);
  if (prefix_34(D) != 0B)
    goto <bb 21>;
  else
    goto <bb 20>;

<bb 20>:

<bb 21>:
  # prefix_9 = PHI <prefix_34(D)(19), ""(20)>
  switch_snprintf (&var_name, 256, "rtp_%s_%s", prefix_9, "in_flush_packet_count");
  D.46571_61 = stats_30->inbound.flush_packet_count;
  switch_snprintf (&var_val, 35, "%d", D.46571_61);
  switch_channel_set_variable_var_check (channel_31, &var_name, &var_val, 1);
  if (prefix_34(D) != 0B)
    goto <bb 23>;
  else
    goto <bb 22>;

<bb 22>:

<bb 23>:
  # prefix_10 = PHI <prefix_34(D)(21), ""(22)>
  switch_snprintf (&var_name, 256, "rtp_%s_%s", prefix_10, "in_largest_jb_size");
  D.46576_64 = stats_30->inbound.largest_jb_size;
  switch_snprintf (&var_val, 35, "%d", D.46576_64);
  switch_channel_set_variable_var_check (channel_31, &var_name, &var_val, 1);
  if (prefix_34(D) != 0B)
    goto <bb 25>;
  else
    goto <bb 24>;

<bb 24>:

<bb 25>:
  # prefix_11 = PHI <prefix_34(D)(23), ""(24)>
  switch_snprintf (&var_name, 256, "rtp_%s_%s", prefix_11, "in_jitter_min_variance");
  D.46581_67 = stats_30->inbound.min_variance;
  switch_snprintf (&var_val, 35, "%0.2f", D.46581_67);
  switch_channel_set_variable_var_check (channel_31, &var_name, &var_val, 1);
  if (prefix_34(D) != 0B)
    goto <bb 27>;
  else
    goto <bb 26>;

<bb 26>:

<bb 27>:
  # prefix_12 = PHI <prefix_34(D)(25), ""(26)>
  switch_snprintf (&var_name, 256, "rtp_%s_%s", prefix_12, "in_jitter_max_variance");
  D.46586_70 = stats_30->inbound.max_variance;
  switch_snprintf (&var_val, 35, "%0.2f", D.46586_70);
  switch_channel_set_variable_var_check (channel_31, &var_name, &var_val, 1);
  if (prefix_34(D) != 0B)
    goto <bb 29>;
  else
    goto <bb 28>;

<bb 28>:

<bb 29>:
  # prefix_13 = PHI <prefix_34(D)(27), ""(28)>
  switch_snprintf (&var_name, 256, "rtp_%s_%s", prefix_13, "in_jitter_loss_rate");
  D.46591_73 = stats_30->inbound.lossrate;
  switch_snprintf (&var_val, 35, "%0.2f", D.46591_73);
  switch_channel_set_variable_var_check (channel_31, &var_name, &var_val, 1);
  if (prefix_34(D) != 0B)
    goto <bb 31>;
  else
    goto <bb 30>;

<bb 30>:

<bb 31>:
  # prefix_14 = PHI <prefix_34(D)(29), ""(30)>
  switch_snprintf (&var_name, 256, "rtp_%s_%s", prefix_14, "in_jitter_burst_rate");
  D.46596_76 = stats_30->inbound.burstrate;
  switch_snprintf (&var_val, 35, "%0.2f", D.46596_76);
  switch_channel_set_variable_var_check (channel_31, &var_name, &var_val, 1);
  if (prefix_34(D) != 0B)
    goto <bb 33>;
  else
    goto <bb 32>;

<bb 32>:

<bb 33>:
  # prefix_15 = PHI <prefix_34(D)(31), ""(32)>
  switch_snprintf (&var_name, 256, "rtp_%s_%s", prefix_15, "in_mean_interval");
  D.46601_79 = stats_30->inbound.mean_interval;
  switch_snprintf (&var_val, 35, "%0.2f", D.46601_79);
  switch_channel_set_variable_var_check (channel_31, &var_name, &var_val, 1);
  if (prefix_34(D) != 0B)
    goto <bb 35>;
  else
    goto <bb 34>;

<bb 34>:

<bb 35>:
  # prefix_16 = PHI <prefix_34(D)(33), ""(34)>
  switch_snprintf (&var_name, 256, "rtp_%s_%s", prefix_16, "in_flaw_total");
  D.46606_82 = stats_30->inbound.flaws;
  switch_snprintf (&var_val, 35, "%d", D.46606_82);
  switch_channel_set_variable_var_check (channel_31, &var_name, &var_val, 1);
  if (prefix_34(D) != 0B)
    goto <bb 37>;
  else
    goto <bb 36>;

<bb 36>:

<bb 37>:
  # prefix_17 = PHI <prefix_34(D)(35), ""(36)>
  switch_snprintf (&var_name, 256, "rtp_%s_%s", prefix_17, "in_quality_percentage");
  D.46611_85 = stats_30->inbound.R;
  switch_snprintf (&var_val, 35, "%0.2f", D.46611_85);
  switch_channel_set_variable_var_check (channel_31, &var_name, &var_val, 1);
  if (prefix_34(D) != 0B)
    goto <bb 39>;
  else
    goto <bb 38>;

<bb 38>:

<bb 39>:
  # prefix_18 = PHI <prefix_34(D)(37), ""(38)>
  switch_snprintf (&var_name, 256, "rtp_%s_%s", prefix_18, "in_mos");
  D.46616_88 = stats_30->inbound.mos;
  switch_snprintf (&var_val, 35, "%0.2f", D.46616_88);
  switch_channel_set_variable_var_check (channel_31, &var_name, &var_val, 1);
  if (prefix_34(D) != 0B)
    goto <bb 41>;
  else
    goto <bb 40>;

<bb 40>:

<bb 41>:
  # prefix_19 = PHI <prefix_34(D)(39), ""(40)>
  switch_snprintf (&var_name, 256, "rtp_%s_%s", prefix_19, "out_raw_bytes");
  D.46621_91 = stats_30->outbound.raw_bytes;
  switch_snprintf (&var_val, 35, "%d", D.46621_91);
  switch_channel_set_variable_var_check (channel_31, &var_name, &var_val, 1);
  if (prefix_34(D) != 0B)
    goto <bb 43>;
  else
    goto <bb 42>;

<bb 42>:

<bb 43>:
  # prefix_20 = PHI <prefix_34(D)(41), ""(42)>
  switch_snprintf (&var_name, 256, "rtp_%s_%s", prefix_20, "out_media_bytes");
  D.46626_94 = stats_30->outbound.media_bytes;
  switch_snprintf (&var_val, 35, "%d", D.46626_94);
  switch_channel_set_variable_var_check (channel_31, &var_name, &var_val, 1);
  if (prefix_34(D) != 0B)
    goto <bb 45>;
  else
    goto <bb 44>;

<bb 44>:

<bb 45>:
  # prefix_21 = PHI <prefix_34(D)(43), ""(44)>
  switch_snprintf (&var_name, 256, "rtp_%s_%s", prefix_21, "out_packet_count");
  D.46631_97 = stats_30->outbound.packet_count;
  switch_snprintf (&var_val, 35, "%d", D.46631_97);
  switch_channel_set_variable_var_check (channel_31, &var_name, &var_val, 1);
  if (prefix_34(D) != 0B)
    goto <bb 47>;
  else
    goto <bb 46>;

<bb 46>:

<bb 47>:
  # prefix_22 = PHI <prefix_34(D)(45), ""(46)>
  switch_snprintf (&var_name, 256, "rtp_%s_%s", prefix_22, "out_media_packet_count");
  D.46636_100 = stats_30->outbound.media_packet_count;
  switch_snprintf (&var_val, 35, "%d", D.46636_100);
  switch_channel_set_variable_var_check (channel_31, &var_name, &var_val, 1);
  if (prefix_34(D) != 0B)
    goto <bb 49>;
  else
    goto <bb 48>;

<bb 48>:

<bb 49>:
  # prefix_23 = PHI <prefix_34(D)(47), ""(48)>
  switch_snprintf (&var_name, 256, "rtp_%s_%s", prefix_23, "out_skip_packet_count");
  D.46641_103 = stats_30->outbound.skip_packet_count;
  switch_snprintf (&var_val, 35, "%d", D.46641_103);
  switch_channel_set_variable_var_check (channel_31, &var_name, &var_val, 1);
  if (prefix_34(D) != 0B)
    goto <bb 51>;
  else
    goto <bb 50>;

<bb 50>:

<bb 51>:
  # prefix_24 = PHI <prefix_34(D)(49), ""(50)>
  switch_snprintf (&var_name, 256, "rtp_%s_%s", prefix_24, "out_dtmf_packet_count");
  D.46646_106 = stats_30->outbound.dtmf_packet_count;
  switch_snprintf (&var_val, 35, "%d", D.46646_106);
  switch_channel_set_variable_var_check (channel_31, &var_name, &var_val, 1);
  if (prefix_34(D) != 0B)
    goto <bb 53>;
  else
    goto <bb 52>;

<bb 52>:

<bb 53>:
  # prefix_25 = PHI <prefix_34(D)(51), ""(52)>
  switch_snprintf (&var_name, 256, "rtp_%s_%s", prefix_25, "out_cng_packet_count");
  D.46651_109 = stats_30->outbound.cng_packet_count;
  switch_snprintf (&var_val, 35, "%d", D.46651_109);
  switch_channel_set_variable_var_check (channel_31, &var_name, &var_val, 1);
  if (prefix_34(D) != 0B)
    goto <bb 55>;
  else
    goto <bb 54>;

<bb 54>:

<bb 55>:
  # prefix_26 = PHI <prefix_34(D)(53), ""(54)>
  switch_snprintf (&var_name, 256, "rtp_%s_%s", prefix_26, "rtcp_packet_count");
  D.46656_112 = stats_30->rtcp.packet_count;
  switch_snprintf (&var_val, 35, "%d", D.46656_112);
  switch_channel_set_variable_var_check (channel_31, &var_name, &var_val, 1);
  if (prefix_34(D) != 0B)
    goto <bb 57>;
  else
    goto <bb 56>;

<bb 56>:

<bb 57>:
  # prefix_27 = PHI <prefix_34(D)(55), ""(56)>
  switch_snprintf (&var_name, 256, "rtp_%s_%s", prefix_27, "rtcp_octet_count");
  D.46661_115 = stats_30->rtcp.octet_count;
  switch_snprintf (&var_val, 35, "%d", D.46661_115);
  switch_channel_set_variable_var_check (channel_31, &var_name, &var_val, 1);

<bb 58>:
  return;

}



;; Function switch_core_media_set_stats (switch_core_media_set_stats)

switch_core_media_set_stats (struct switch_core_session_t * session)
{
  struct switch_media_handle_t * D.46519;

<bb 2>:
  D.46519_2 = session_1(D)->media_handle;
  if (D.46519_2 == 0B)
    goto <bb 4>;
  else
    goto <bb 3>;

<bb 3>:
  set_stats (session_1(D), 0, "audio");
  set_stats (session_1(D), 1, "video");

<bb 4>:
  return;

}



;; Function switch_core_media_udptl_mode (switch_core_media_udptl_mode)

switch_core_media_udptl_mode (struct switch_core_session_t * session, switch_media_type_t type)
{
  static const char __PRETTY_FUNCTION__[29] = "switch_core_media_udptl_mode";
  struct switch_media_handle_t * smh;
  uint8_t D.40722;
  struct switch_rtp_t * D.40721;
  switch_status_t D.40720;

<bb 2>:
  if (session_2(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 8066, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_3 = session_2(D)->media_handle;
  # DEBUG smh => smh_3
  if (smh_3 == 0B)
    goto <bb 7>;
  else
    goto <bb 5>;

<bb 5>:
  D.40721_6 = smh_3->engines[type_5(D)].rtp_session;
  D.40722_7 = switch_rtp_ready (D.40721_6);
  if (D.40722_7 != 0)
    goto <bb 6>;
  else
    goto <bb 7>;

<bb 6>:
  D.40721_8 = smh_3->engines[type_5(D)].rtp_session;
  D.40720_9 = switch_rtp_udptl_mode (D.40721_8);

<bb 7>:
  # D.40720_1 = PHI <1(4), D.40720_9(6), 1(5)>
  return D.40720_1;

}



;; Function switch_core_media_get_jb (switch_core_media_get_jb)

switch_core_media_get_jb (struct switch_core_session_t * session, switch_media_type_t type)
{
  static const char __PRETTY_FUNCTION__[25] = "switch_core_media_get_jb";
  struct switch_media_handle_t * smh;
  uint8_t D.40712;
  struct switch_rtp_t * D.40711;
  struct stfu_instance_t * D.40710;

<bb 2>:
  if (session_2(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 8084, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_3 = session_2(D)->media_handle;
  # DEBUG smh => smh_3
  if (smh_3 == 0B)
    goto <bb 7>;
  else
    goto <bb 5>;

<bb 5>:
  D.40711_6 = smh_3->engines[type_5(D)].rtp_session;
  D.40712_7 = switch_rtp_ready (D.40711_6);
  if (D.40712_7 != 0)
    goto <bb 6>;
  else
    goto <bb 7>;

<bb 6>:
  D.40711_8 = smh_3->engines[type_5(D)].rtp_session;
  D.40710_9 = switch_rtp_get_jitter_buffer (D.40711_8);

<bb 7>:
  # D.40710_1 = PHI <0B(4), D.40710_9(6), 0B(5)>
  return D.40710_1;

}



;; Function switch_core_media_set_sdp_codec_string (switch_core_media_set_sdp_codec_string)

switch_core_media_set_sdp_codec_string (struct switch_core_session_t * session, const char * r_sdp, switch_sdp_type_t sdp_type)
{
  static const char __PRETTY_FUNCTION__[39] = "switch_core_media_set_sdp_codec_string";
  struct switch_media_handle_t * smh;
  struct sdp_session_t * sdp;
  struct sdp_parser_t * parser;
  const char * D.40404;
  int D.40399;
  size_t D.40398;

<bb 2>:
  if (session_1(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 8105, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_2 = session_1(D)->media_handle;
  # DEBUG smh => smh_2
  if (smh_2 == 0B)
    goto <bb 9>;
  else
    goto <bb 5>;

<bb 5>:
  D.40398_4 = strlen (r_sdp_3(D));
  D.40399_5 = (int) D.40398_4;
  parser_6 = sdp_parse (0B, r_sdp_3(D), D.40399_5, 0);
  # DEBUG parser => parser_6
  if (parser_6 != 0B)
    goto <bb 6>;
  else
    goto <bb 9>;

<bb 6>:
  sdp_7 = sdp_session (parser_6);
  # DEBUG sdp => sdp_7
  if (sdp_7 != 0B)
    goto <bb 7>;
  else
    goto <bb 8>;

<bb 7>:
  D.40404_8 = switch_core_media_get_codec_string (session_1(D));
  switch_core_media_set_r_sdp_codec_string (session_1(D), D.40404_8, sdp_7, sdp_type_9(D));

<bb 8>:
  sdp_parser_free (parser_6);

<bb 9>:
  return;

}



;; Function switch_core_media_codec_chosen (switch_core_media_codec_chosen)

switch_core_media_codec_chosen (struct switch_core_session_t * session, switch_media_type_t type)
{
  switch_status_t D.51102;
  _Bool D.51101;
  static const char __PRETTY_FUNCTION__[31] = "switch_core_media_codec_chosen";
  struct switch_media_handle_t * smh;
  struct switch_rtp_engine_t * engine;
  char * D.40390;
  struct payload_map_t * D.40389;
  switch_status_t D.40386;

<bb 2>:
  if (session_2(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 8407, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_3 = session_2(D)->media_handle;
  # DEBUG smh => smh_3
  if (smh_3 == 0B)
    goto <bb 6>;
  else
    goto <bb 5>;

<bb 5>:
  engine_8 = &smh_3->engines[type_6(D)]{lb: 0 sz: 11416};
  # DEBUG engine => engine_8
  D.40389_9 = engine_8->cur_payload_map;
  D.40390_10 = D.40389_9->iananame;
  D.51101_15 = D.40390_10 == 0B;
  D.51102_14 = (switch_status_t) D.51101_15;

<bb 6>:
  # D.40386_1 = PHI <1(4), D.51102_14(5)>
  return D.40386_1;

}



;; Function switch_core_media_check_outgoing_proxy (switch_core_media_check_outgoing_proxy)

switch_core_media_check_outgoing_proxy (struct switch_core_session_t * session, struct switch_core_session_t * o_session)
{
  static const char __func__[39] = "switch_core_media_check_outgoing_proxy";
  static const char __PRETTY_FUNCTION__[39] = "switch_core_media_check_outgoing_proxy";
  const char * r_sdp;
  struct switch_media_handle_t * smh;
  struct payload_map_t * D.40380;
  const char * D.40377;
  char * D.40376;
  struct payload_map_t * D.40375;
  struct switch_channel_t * D.40374;
  uint32_t D.40369;
  struct switch_channel_t * D.40368;

<bb 2>:
  # DEBUG r_sdp => 0B
  if (session_2(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 8430, &__PRETTY_FUNCTION__);

<bb 4>:
  D.40368_4 = o_session_3(D)->channel;
  D.40369_5 = switch_channel_test_flag (D.40368_4, 29);
  if (D.40369_5 == 0)
    goto <bb 8>;
  else
    goto <bb 5>;

<bb 5>:
  smh_6 = session_2(D)->media_handle;
  # DEBUG smh => smh_6
  if (smh_6 == 0B)
    goto <bb 8>;
  else
    goto <bb 6>;

<bb 6>:
  D.40368_7 = o_session_3(D)->channel;
  r_sdp_8 = switch_channel_get_variable_dup (D.40368_7, "switch_r_sdp", 1, -1);
  # DEBUG r_sdp => r_sdp_8
  # DEBUG D#40 => &smh_6->engines
  # DEBUG a_engine => D#40
  # DEBUG D#41 => &smh_6->engines[1]
  # DEBUG v_engine => D#41
  D.40374_11 = session_2(D)->channel;
  switch_channel_set_flag_value (D.40374_11, 29, 1);
  D.40375_12 = MEM[(struct switch_rtp_engine_t *)smh_6 + 80B].cur_payload_map;
  D.40376_13 = switch_core_perform_session_strdup (session_2(D), "PROXY", "src/switch_core_media.c", &__func__, 8447);
  D.40375_12->iananame = D.40376_13;
  D.40375_14 = MEM[(struct switch_rtp_engine_t *)smh_6 + 80B].cur_payload_map;
  D.40375_14->rm_rate = 8000;
  D.40375_14->adv_rm_rate = 8000;
  D.40375_14->codec_ms = 20;
  D.40377_17 = switch_stristr ("m=video", r_sdp_8);
  if (D.40377_17 != 0B)
    goto <bb 7>;
  else
    goto <bb 8>;

<bb 7>:
  switch_core_media_choose_port (session_2(D), 1, 1);
  D.40380_18 = MEM[(struct switch_rtp_engine_t *)smh_6 + 11496B].cur_payload_map;
  D.40380_18->rm_encoding = "PROXY-VID";
  D.40380_18->rm_rate = 90000;
  D.40380_18->adv_rm_rate = 90000;
  D.40380_18->codec_ms = 0;
  D.40374_22 = session_2(D)->channel;
  switch_channel_set_flag_value (D.40374_22, 23, 1);
  D.40374_23 = session_2(D)->channel;
  switch_channel_set_flag_value (D.40374_23, 98, 1);

<bb 8>:
  return;

}



;; Function switch_core_media_proxy_codec (switch_core_media_proxy_codec)

switch_core_media_proxy_codec (struct switch_core_session_t * session, const char * r_sdp)
{
  const char D.48272;
  struct sdp_rtpmap_t * map;
  static const char __func__[30] = "switch_core_media_proxy_codec";
  static const char __PRETTY_FUNCTION__[30] = "switch_core_media_proxy_codec";
  struct switch_media_handle_t * smh;
  int dptime;
  int ptime;
  struct sdp_attribute_t * attr;
  struct sdp_session_t * sdp;
  struct sdp_parser_t * parser;
  struct sdp_media_t * m;
  uint32_t D.40364;
  struct switch_core_media_params_t * D.40363;
  uint32_t ptime.4;
  long unsigned int D.40361;
  char * D.40360;
  const char * D.40359;
  struct payload_map_t * D.40358;
  int D.40347;
  sdp_proto_e D.40344;
  const char * D.40343;
  int D.40340;
  const char * D.40336;
  int D.40331;
  size_t D.40330;

<bb 2>:
  # DEBUG parser => 0B
  # DEBUG ptime => 0
  # DEBUG dptime => 0
  if (session_11(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 8482, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_12 = session_11(D)->media_handle;
  # DEBUG smh => smh_12
  if (smh_12 == 0B)
    goto <bb 25>;
  else
    goto <bb 5>;

<bb 5>:
  # DEBUG D#42 => &smh_12->engines
  # DEBUG a_engine => D#42
  D.40330_15 = strlen (r_sdp_14(D));
  D.40331_16 = (int) D.40330_15;
  parser_17 = sdp_parse (0B, r_sdp_14(D), D.40331_16, 0);
  # DEBUG parser => parser_17
  if (parser_17 == 0B)
    goto <bb 25>;
  else
    goto <bb 6>;

<bb 6>:
  sdp_18 = sdp_session (parser_17);
  # DEBUG sdp => sdp_18
  if (sdp_18 == 0B)
    goto <bb 7>;
  else
    goto <bb 8>;

<bb 7>:
  sdp_parser_free (parser_17);
  goto <bb 25>;

<bb 8>:
  attr_19 = sdp_18->sdp_attributes;
  # DEBUG attr => attr_19
  # DEBUG dptime => 0
  # DEBUG attr => attr_19
  if (attr_19 != 0B)
    goto <bb 9>;
  else
    goto <bb 13>;

<bb 9>:
  # attr_83 = PHI <attr_26(12), attr_19(8)>
  # dptime_82 = PHI <dptime_6(12), 0(8)>
  D.40336_20 = attr_83->a_name;
  # DEBUG s => D.40336_20
  if (D.40336_20 == 0B)
    goto <bb 12>;
  else
    goto <bb 10>;

<bb 10>:
  D.48272_65 = *D.40336_20;
  if (D.48272_65 == 0)
    goto <bb 12>;
  else
    goto <bb 26>;

<bb 11>:
Invalid sum of incoming frequencies 1096, should be 1290
  D.40343_24 = attr_83->a_value;
  # DEBUG __nptr => D.40343_24
  dptime_67 = strtol (D.40343_24, 0B, 10);
  # DEBUG dptime => NULL

<bb 12>:
Invalid sum of incoming frequencies 9089, should be 8895
  # dptime_6 = PHI <dptime_82(10), dptime_82(26), dptime_67(11), dptime_82(9)>
  # DEBUG dptime => dptime_6
  attr_26 = attr_83->a_next;
  # DEBUG attr => attr_26
  # DEBUG dptime => dptime_6
  # DEBUG attr => attr_26
  if (attr_26 != 0B)
    goto <bb 9>;
  else
    goto <bb 13>;

<bb 13>:
  # dptime_48 = PHI <dptime_6(12), 0(8)>
  m_27 = sdp_18->sdp_media;
  # DEBUG m => m_27
  # DEBUG m => m_27
  if (m_27 != 0B)
    goto <bb 14>;
  else
    goto <bb 24>;

<bb 14>:
  # DEBUG ptime => dptime_48
  D.40344_78 = m_27->m_proto;
  if (D.40344_78 == 256)
    goto <bb 16>;
  else
    goto <bb 23>;

<bb 15>:
  # DEBUG ptime => dptime_48
  D.40344_29 = m_52->m_proto;
  if (D.40344_29 == 256)
    goto <bb 16>;
  else
    goto <bb 23>;

<bb 16>:
  # m_46 = PHI <m_52(15), m_27(14)>
  attr_30 = m_46->m_attributes;
  # DEBUG attr => attr_30
  # DEBUG ptime => dptime_48
  # DEBUG attr => attr_30
  if (attr_30 != 0B)
    goto <bb 17>;
  else
    goto <bb 21>;

<bb 17>:
  # attr_87 = PHI <attr_39(20), attr_30(16)>
  # ptime_80 = PHI <ptime_4(20), dptime_48(16)>
  D.40336_31 = attr_87->a_name;
  D.40347_32 = strcasecmp (D.40336_31, "ptime");
  if (D.40347_32 == 0)
    goto <bb 18>;
  else
    goto <bb 20>;

<bb 18>:
  D.40343_33 = attr_87->a_value;
  if (D.40343_33 != 0B)
    goto <bb 19>;
  else
    goto <bb 20>;

<bb 19>:
  # DEBUG __nptr => D.40343_33
  ptime_68 = strtol (D.40343_33, 0B, 10);
  # DEBUG ptime => NULL

<bb 20>:
  # ptime_4 = PHI <ptime_80(17), ptime_68(19), ptime_80(18)>
  # DEBUG ptime => ptime_4
  attr_39 = attr_87->a_next;
  # DEBUG attr => attr_39
  # DEBUG ptime => ptime_4
  # DEBUG attr => attr_39
  if (attr_39 != 0B)
    goto <bb 17>;
  else
    goto <bb 21>;

<bb 21>:
  # ptime_47 = PHI <ptime_4(20), dptime_48(16)>
  map_40 = m_46->m_rtpmaps;
  # DEBUG map => map_40
  if (map_40 != 0B)
    goto <bb 22>;
  else
    goto <bb 24>;

<bb 22>:
  D.40358_41 = MEM[(struct switch_rtp_engine_t *)smh_12 + 80B].cur_payload_map;
  D.40359_42 = map_40->rm_encoding;
  D.40360_43 = switch_core_perform_session_strdup (session_11(D), D.40359_42, "src/switch_core_media.c", &__func__, 8527);
  D.40358_41->iananame = D.40360_43;
  D.40358_44 = MEM[(struct switch_rtp_engine_t *)smh_12 + 80B].cur_payload_map;
  D.40361_45 = map_40->rm_rate;
  D.40358_44->rm_rate = D.40361_45;
  D.40358_44->adv_rm_rate = D.40361_45;
  ptime.4_49 = (uint32_t) ptime_47;
  D.40358_44->codec_ms = ptime.4_49;
  D.40363_50 = smh_12->mparams;
  D.40364_51 = D.40363_50->codec_flags;
  switch_core_media_set_codec (session_11(D), 0, D.40364_51);
  goto <bb 24>;

<bb 23>:
  # m_85 = PHI <m_52(15), m_27(14)>
  m_52 = m_85->m_next;
  # DEBUG m => m_52
  # DEBUG m => m_52
  if (m_52 != 0B)
    goto <bb 15>;
  else
    goto <bb 24>;

<bb 24>:
  sdp_parser_free (parser_17);

<bb 25>:
  return;

<bb 26>:
  D.40340_23 = strcasecmp (D.40336_20, "ptime");
  if (D.40340_23 == 0)
    goto <bb 11>;
  else
    goto <bb 12>;

}



;; Function switch_core_media_recover_session (switch_core_media_recover_session)

switch_core_media_recover_session (struct switch_core_session_t * session)
{
  int D.48329;
  int D.48326;
  int D.48323;
  int D.48320;
  int D.48317;
  int D.48314;
  int D.48311;
  const char D.48308;
  const char D.48304;
  int D.48300;
  int D.48297;
  int D.48294;
  int D.48291;
  int D.48288;
  int D.48285;
  int D.48282;
  int idx;
  char * tmp_codec_string;
  const char * vtmp;
  static const char __func__[34] = "switch_core_media_recover_session";
  static const char __PRETTY_FUNCTION__[34] = "switch_core_media_recover_session";
  struct switch_media_handle_t * smh;
  const char * tmp;
  const char * r_port;
  const char * r_ip;
  const char * a_ip;
  const char * port;
  const char * ip;
  switch_payload_t D.40294;
  switch_payload_t D.40293;
  uint8_t D.40290;
  unsigned char[64] * D.40289;
  uint32_t D.40288;
  int D.40287;
  switch_size_t D.40286;
  int D.40285;
  unsigned char[64] * D.40284;
  uint32_t idx.2;
  struct switch_rtp_t * D.40282;
  struct switch_channel_t * D.40281;
  char * D.40280;
  struct switch_secure_settings_t * D.40279;
  char * D.40276;
  char * D.40273;
  switch_rtp_crypto_key_type_t D.40272;
  switch_status_t D.40267;
  short unsigned int D.40266;
  short unsigned int D.40261;
  uint32_t D.40259;
  long unsigned int D.40255;
  long unsigned int D.40254;
  const char * D.40250;
  const char * D.40249;
  unsigned char D.40248;
  unsigned char D.40243;
  struct payload_map_t * D.40241;
  uint32_t D.40236;
  short unsigned int D.40235;
  _Bool D.40231;
  _Bool D.40230;
  _Bool D.40229;
  char * D.40228;
  char * D.40223;
  short unsigned int D.40218;
  uint32_t D.40215;
  unsigned char D.40214;
  unsigned char D.40209;
  uint32_t D.40205;
  long unsigned int D.40201;
  long unsigned int D.40200;
  unsigned char D.40196;
  unsigned char D.40192;
  int D.40188;
  const struct switch_codec_implementation_t *[50] * D.40186;
  int D.40185;
  unsigned int D.40184;
  char *[50] * D.40183;
  struct switch_core_session_t * D.40182;
  char * iftmp.0;
  char * D.40169;
  struct switch_core_media_params_t * D.40168;
  const char * D.40165;
  const char * D.40163;
  struct payload_map_t * D.40162;
  _Bool D.40161;
  _Bool D.40160;
  _Bool D.40159;
  uint32_t D.40157;
  struct switch_channel_t * D.40154;

<bb 2>:
  if (session_3(D) == 0B)
    goto <bb 3>;
  else
    goto <bb 4>;

<bb 3>:
  __assert_fail ("session", "src/switch_core_media.c", 8557, &__PRETTY_FUNCTION__);

<bb 4>:
  smh_4 = session_3(D)->media_handle;
  # DEBUG smh => smh_4
  if (smh_4 == 0B)
    goto <bb 51>;
  else
    goto <bb 5>;

<bb 5>:
  D.40154_5 = session_3(D)->channel;
  ip_6 = switch_channel_get_variable_dup (D.40154_5, "local_media_ip", 1, -1);
  # DEBUG ip => ip_6
  D.40154_7 = session_3(D)->channel;
  port_8 = switch_channel_get_variable_dup (D.40154_7, "local_media_port", 1, -1);
  # DEBUG port => port_8
  D.40154_9 = session_3(D)->channel;
  D.40157_10 = switch_channel_test_flag (D.40154_9, 15);
  if (D.40157_10 != 0)
    goto <bb 51>;
  else
    goto <bb 6>;

<bb 6>:
  D.40159_11 = ip_6 == 0B;
  D.40160_12 = port_8 == 0B;
  D.40161_13 = D.40159_11 | D.40160_12;
  if (D.40161_13 != 0)
    goto <bb 51>;
  else
    goto <bb 7>;

<bb 7>:
  D.40154_14 = session_3(D)->channel;
  a_ip_15 = switch_channel_get_variable_dup (D.40154_14, "advertised_media_ip", 1, -1);
  # DEBUG a_ip => a_ip_15
  D.40154_16 = session_3(D)->channel;
  r_ip_17 = switch_channel_get_variable_dup (D.40154_16, "remote_media_ip", 1, -1);
  # DEBUG r_ip => r_ip_17
  D.40154_18 = session_3(D)->channel;
  r_port_19 = switch_channel_get_variable_dup (D.40154_18, "remote_media_port", 1, -1);
  # DEBUG r_port => r_port_19
  # DEBUG D#44 => &smh_4->engines
  # DEBUG a_engine => D#44
  # DEBUG D#43 => &smh_4->engines[1]
  # DEBUG v_engine => D#43
  D.40162_23 = MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].cur_payload_map;
  D.40154_24 = session_3(D)->channel;
  D.40163_25 = switch_channel_get_variable_dup (D.40154_24, "rtp_use_codec_name", 1, -1);
  D.40162_23->rm_encoding = D.40163_25;
  D.40162_23->iananame = D.40163_25;
  D.40162_27 = MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].cur_payload_map;
  D.40154_28 = session_3(D)->channel;
  D.40165_29 = switch_channel_get_variable_dup (D.40154_28, "rtp_use_codec_fmtp", 1, -1);
  D.40162_27->rm_fmtp = D.40165_29;
  D.40154_30 = session_3(D)->channel;
  tmp_31 = switch_channel_get_variable_dup (D.40154_30, "switch_r_sdp", 1, -1);
  # DEBUG tmp => tmp_31
  if (tmp_31 != 0B)
    goto <bb 8>;
  else
    goto <bb 9>;

<bb 8>:
  D.40168_32 = smh_4->mparams;
  D.40169_33 = switch_core_perform_session_strdup (session_3(D), tmp_31, "src/switch_core_media.c", &__func__, 8581);
  D.40168_32->remote_sdp_str = D.40169_33;

<bb 9>:
  D.40154_34 = session_3(D)->channel;
  tmp_35 = switch_channel_get_variable_dup (D.40154_34, "rtp_last_audio_codec_string", 1, -1);
  # DEBUG tmp => tmp_35
  if (tmp_35 != 0B)
    goto <bb 10>;
  else
    goto <bb 15>;

<bb 10>:
  D.40154_36 = session_3(D)->channel;
  vtmp_37 = switch_channel_get_variable_dup (D.40154_36, "rtp_last_video_codec_string", 1, -1);
  # DEBUG vtmp => vtmp_37
  D.40154_38 = session_3(D)->channel;
  if (vtmp_37 != 0B)
    goto <bb 11>;
  else
    goto <bb 12>;

<bb 11>:

<bb 12>:
  # iftmp.0_1 = PHI <","(11), ""(10)>
  if (vtmp_37 != 0B)
    goto <bb 14>;
  else
    goto <bb 13>;

<bb 13>:

<bb 14>:
  # vtmp_2 = PHI <vtmp_37(12), ""(13)>
  switch_channel_set_variable_printf (D.40154_38, "rtp_use_codec_string", "%s%s%s", tmp_35, iftmp.0_1, vtmp_2);

<bb 15>:
  D.40154_43 = session_3(D)->channel;
  tmp_44 = switch_channel_get_variable_dup (D.40154_43, "rtp_use_codec_string", 1, -1);
  # DEBUG tmp => tmp_44
  if (tmp_44 != 0B)
    goto <bb 16>;
  else
    goto <bb 17>;

<bb 16>:
  D.40182_45 = smh_4->session;
  tmp_codec_string_46 = switch_core_perform_session_strdup (D.40182_45, tmp_44, "src/switch_core_media.c", &__func__, 8591);
  # DEBUG tmp_codec_string => tmp_codec_string_46
  D.40183_47 = &smh_4->codec_order;
  D.40184_48 = switch_separate_string (tmp_codec_string_46, 44, D.40183_47, 50);
  D.40185_49 = (int) D.40184_48;
  smh_4->codec_order_last = D.40185_49;
  D.40168_50 = smh_4->mparams;
  D.40186_51 = &smh_4->codecs;
  D.40188_54 = switch_loadable_module_get_codecs_sorted (D.40186_51, 50, D.40183_47, D.40185_49);
  D.40168_50->num_codecs = D.40188_54;

<bb 17>:
  D.40154_55 = session_3(D)->channel;
  tmp_56 = switch_channel_get_variable_dup (D.40154_55, "rtp_2833_send_payload", 1, -1);
  # DEBUG tmp => tmp_56
  if (tmp_56 != 0B)
    goto <bb 18>;
  else
    goto <bb 19>;

<bb 18>:
  D.40168_57 = smh_4->mparams;
  # DEBUG __nptr => tmp_56
  D.48282_317 = strtol (tmp_56, 0B, 10);
  D.40192_59 = (unsigned char) D.48282_317;
  D.40168_57->te = D.40192_59;

<bb 19>:
  D.40154_60 = session_3(D)->channel;
  tmp_61 = switch_channel_get_variable_dup (D.40154_60, "rtp_2833_recv_payload", 1, -1);
  # DEBUG tmp => tmp_61
  if (tmp_61 != 0B)
    goto <bb 20>;
  else
    goto <bb 21>;

<bb 20>:
  D.40168_62 = smh_4->mparams;
  # DEBUG __nptr => tmp_61
  D.48285_318 = strtol (tmp_61, 0B, 10);
  D.40196_64 = (unsigned char) D.48285_318;
  D.40168_62->recv_te = D.40196_64;

<bb 21>:
  D.40154_65 = session_3(D)->channel;
  tmp_66 = switch_channel_get_variable_dup (D.40154_65, "rtp_use_codec_rate", 1, -1);
  # DEBUG tmp => tmp_66
  if (tmp_66 != 0B)
    goto <bb 22>;
  else
    goto <bb 23>;

<bb 22>:
  D.40162_67 = MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].cur_payload_map;
  # DEBUG __nptr => tmp_66
  D.48288_319 = strtol (tmp_66, 0B, 10);
  D.40200_69 = (long unsigned int) D.48288_319;
  D.40162_67->rm_rate = D.40200_69;
  D.40162_71 = MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].cur_payload_map;
  D.40201_72 = D.40162_71->rm_rate;
  D.40162_71->adv_rm_rate = D.40201_72;

<bb 23>:
  D.40154_73 = session_3(D)->channel;
  tmp_74 = switch_channel_get_variable_dup (D.40154_73, "rtp_use_codec_ptime", 1, -1);
  # DEBUG tmp => tmp_74
  if (tmp_74 != 0B)
    goto <bb 24>;
  else
    goto <bb 25>;

<bb 24>:
  D.40162_75 = MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].cur_payload_map;
  # DEBUG __nptr => tmp_74
  D.48291_320 = strtol (tmp_74, 0B, 10);
  D.40205_77 = (uint32_t) D.48291_320;
  D.40162_75->codec_ms = D.40205_77;

<bb 25>:
  D.40154_78 = session_3(D)->channel;
  tmp_79 = switch_channel_get_variable_dup (D.40154_78, "rtp_use_pt", 1, -1);
  # DEBUG tmp => tmp_79
  if (tmp_79 != 0B)
    goto <bb 26>;
  else
    goto <bb 27>;

<bb 26>:
  D.40162_81 = MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].cur_payload_map;
  # DEBUG __nptr => tmp_79
  D.48294_321 = strtol (tmp_79, 0B, 10);
  D.40209_83 = (unsigned char) D.48294_321;
  D.40162_81->agreed_pt = D.40209_83;
  D.40162_81->pt = D.40209_83;

<bb 27>:
  D.40154_85 = session_3(D)->channel;
  tmp_86 = switch_channel_get_variable_dup (D.40154_85, "rtp_audio_recv_pt", 1, -1);
  # DEBUG tmp => tmp_86
  if (tmp_86 != 0B)
    goto <bb 28>;
  else
    goto <bb 29>;

<bb 28>:
  D.40162_87 = MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].cur_payload_map;
  # DEBUG __nptr => tmp_86
  D.48297_322 = strtol (tmp_86, 0B, 10);
  D.40214_89 = (unsigned char) D.48297_322;
  D.40162_87->recv_pt = D.40214_89;

<bb 29>:
  D.40168_90 = smh_4->mparams;
  D.40215_91 = D.40168_90->codec_flags;
  switch_core_media_set_codec (session_3(D), 1, D.40215_91);
  D.40168_92 = smh_4->mparams;
  D.40168_92->extrtpip = ip_6;
  MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].adv_sdp_ip = ip_6;
  # DEBUG __nptr => port_8
  D.48300_323 = strtol (port_8, 0B, 10);
  D.40218_95 = (short unsigned int) D.48300_323;
  MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].local_sdp_port = D.40218_95;
  MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].adv_sdp_port = D.40218_95;
  # DEBUG s => ip_6
  D.48304_324 = *ip_6;
  if (D.48304_324 == 0)
    goto <bb 30>;
  else
    goto <bb 52>;

<bb 30>:
Invalid sum of incoming frequencies 1723, should be 1862
  # DEBUG s => a_ip_15
  if (a_ip_15 == 0B)
    goto <bb 32>;
  else
    goto <bb 31>;

<bb 31>:
  D.48308_326 = *a_ip_15;
  if (D.48308_326 == 0)
    goto <bb 32>;
  else
    goto <bb 53>;

<bb 32>:
  D.40229_103 = r_ip_17 != 0B;
  D.40230_104 = r_port_19 != 0B;
  D.40231_105 = D.40229_103 & D.40230_104;
  if (D.40231_105 != 0)
    goto <bb 33>;
  else
    goto <bb 34>;

<bb 33>:
  D.40162_106 = MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].cur_payload_map;
  D.40162_106->remote_sdp_ip = r_ip_17;
  # DEBUG __nptr => r_port_19
  D.48311_328 = strtol (r_port_19, 0B, 10);
  D.40235_109 = (short unsigned int) D.48311_328;
  D.40162_106->remote_sdp_port = D.40235_109;

<bb 34>:
  D.40154_110 = session_3(D)->channel;
  D.40236_111 = switch_channel_test_flag (D.40154_110, 23);
  if (D.40236_111 != 0)
    goto <bb 35>;
  else
    goto <bb 45>;

<bb 35>:
  D.40154_112 = session_3(D)->channel;
  tmp_113 = switch_channel_get_variable_dup (D.40154_112, "rtp_use_video_pt", 1, -1);
  # DEBUG tmp => tmp_113
  if (tmp_113 != 0B)
    goto <bb 36>;
  else
    goto <bb 37>;

<bb 36>:
  D.40241_115 = MEM[(struct switch_rtp_engine_t *)smh_4 + 11496B].cur_payload_map;
  # DEBUG __nptr => tmp_113
  D.48314_329 = strtol (tmp_113, 0B, 10);
  D.40243_117 = (unsigned char) D.48314_329;
  D.40241_115->agreed_pt = D.40243_117;
  D.40241_115->pt = D.40243_117;

<bb 37>:
  D.40154_119 = session_3(D)->channel;
  tmp_120 = switch_channel_get_variable_dup (D.40154_119, "rtp_video_recv_pt", 1, -1);
  # DEBUG tmp => tmp_120
  if (tmp_120 != 0B)
    goto <bb 38>;
  else
    goto <bb 39>;

<bb 38>:
  D.40241_121 = MEM[(struct switch_rtp_engine_t *)smh_4 + 11496B].cur_payload_map;
  # DEBUG __nptr => tmp_120
  D.48317_330 = strtol (tmp_120, 0B, 10);
  D.40248_123 = (unsigned char) D.48317_330;
  D.40241_121->recv_pt = D.40248_123;

<bb 39>:
  D.40241_124 = MEM[(struct switch_rtp_engine_t *)smh_4 + 11496B].cur_payload_map;
  D.40154_125 = session_3(D)->channel;
  D.40249_126 = switch_channel_get_variable_dup (D.40154_125, "rtp_use_video_codec_name", 1, -1);
  D.40241_124->rm_encoding = D.40249_126;
  D.40241_127 = MEM[(struct switch_rtp_engine_t *)smh_4 + 11496B].cur_payload_map;
  D.40154_128 = session_3(D)->channel;
  D.40250_129 = switch_channel_get_variable_dup (D.40154_128, "rtp_use_video_codec_fmtp", 1, -1);
  D.40241_127->rm_fmtp = D.40250_129;
  D.40154_130 = session_3(D)->channel;
  switch_channel_get_variable_dup (D.40154_130, "local_video_ip", 1, -1);
  # DEBUG ip => NULL
  D.40154_132 = session_3(D)->channel;
  port_133 = switch_channel_get_variable_dup (D.40154_132, "local_video_port", 1, -1);
  # DEBUG port => port_133
  D.40154_134 = session_3(D)->channel;
  r_ip_135 = switch_channel_get_variable_dup (D.40154_134, "remote_video_ip", 1, -1);
  # DEBUG r_ip => r_ip_135
  D.40154_136 = session_3(D)->channel;
  r_port_137 = switch_channel_get_variable_dup (D.40154_136, "remote_video_port", 1, -1);
  # DEBUG r_port => r_port_137
  D.40154_138 = session_3(D)->channel;
  switch_channel_set_flag_value (D.40154_138, 98, 1);
  D.40154_139 = session_3(D)->channel;
  tmp_140 = switch_channel_get_variable_dup (D.40154_139, "rtp_use_video_codec_rate", 1, -1);
  # DEBUG tmp => tmp_140
  if (tmp_140 != 0B)
    goto <bb 40>;
  else
    goto <bb 41>;

<bb 40>:
  D.40241_141 = MEM[(struct switch_rtp_engine_t *)smh_4 + 11496B].cur_payload_map;
  # DEBUG __nptr => tmp_140
  D.48320_331 = strtol (tmp_140, 0B, 10);
  D.40254_143 = (long unsigned int) D.48320_331;
  D.40241_141->rm_rate = D.40254_143;
  D.40241_145 = MEM[(struct switch_rtp_engine_t *)smh_4 + 11496B].cur_payload_map;
  D.40255_146 = D.40241_145->rm_rate;
  D.40241_145->adv_rm_rate = D.40255_146;

<bb 41>:
  D.40154_147 = session_3(D)->channel;
  tmp_148 = switch_channel_get_variable_dup (D.40154_147, "rtp_use_video_codec_ptime", 1, -1);
  # DEBUG tmp => tmp_148
  if (tmp_148 != 0B)
    goto <bb 42>;
  else
    goto <bb 43>;

<bb 42>:
  D.40241_149 = MEM[(struct switch_rtp_engine_t *)smh_4 + 11496B].cur_payload_map;
  # DEBUG __nptr => tmp_148
  D.48323_332 = strtol (tmp_148, 0B, 10);
  D.40259_151 = (uint32_t) D.48323_332;
  D.40241_149->codec_ms = D.40259_151;

<bb 43>:
  # DEBUG __nptr => port_133
  D.48326_333 = strtol (port_133, 0B, 10);
  D.40261_153 = (short unsigned int) D.48326_333;
  MEM[(struct switch_rtp_engine_t *)smh_4 + 11496B].local_sdp_port = D.40261_153;
  MEM[(struct switch_rtp_engine_t *)smh_4 + 11496B].adv_sdp_port = D.40261_153;
  D.40229_155 = r_ip_135 != 0B;
  D.40230_156 = r_port_137 != 0B;
  D.40231_157 = D.40229_155 & D.40230_156;
  if (D.40231_157 != 0)
    goto <bb 44>;
  else
    goto <bb 45>;

<bb 44>:
  D.40241_158 = MEM[(struct switch_rtp_engine_t *)smh_4 + 11496B].cur_payload_map;
  D.40241_158->remote_sdp_ip = r_ip_135;
  # DEBUG __nptr => r_port_137
  D.48329_334 = strtol (r_port_137, 0B, 10);
  D.40266_161 = (short unsigned int) D.48329_334;
  D.40241_158->remote_sdp_port = D.40266_161;

<bb 45>:
  switch_core_media_gen_local_sdp (session_3(D), 0, 0B, 0, 0B, 1);
  switch_core_media_set_video_codec (session_3(D), 1);
  D.40267_162 = switch_core_media_activate_rtp (session_3(D));
  if (D.40267_162 != 0)
    goto <bb 51>;
  else
    goto <bb 46>;

<bb 46>:
  switch_core_session_get_recovery_crypto_key (session_3(D), 0);
  switch_core_session_get_recovery_crypto_key (session_3(D), 1);
  D.40154_163 = session_3(D)->channel;
  tmp_164 = switch_channel_get_variable_dup (D.40154_163, "rtp_last_audio_local_crypto_key", 1, -1);
  # DEBUG tmp => tmp_164
  if (tmp_164 != 0B)
    goto <bb 47>;
  else
    goto <bb 49>;

<bb 47>:
  D.40272_165 = MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].crypto_type;
  D.40273_166 = MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].ssec[D.40272_165].remote_crypto_key;
  if (D.40273_166 != 0B)
    goto <bb 48>;
  else
    goto <bb 49>;

<bb 48>:
  # DEBUG __nptr => tmp_164
  idx_335 = strtol (tmp_164, 0B, 10);
  # DEBUG idx => NULL
  D.40272_168 = MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].crypto_type;
  D.40276_169 = switch_core_perform_session_strdup (session_3(D), tmp_164, "src/switch_core_media.c", &__func__, 8690);
  MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].ssec[D.40272_168].local_crypto_key = D.40276_169;
  D.40272_171 = MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].crypto_type;
  D.40279_173 = &MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].ssec[D.40272_171]{lb: 0 sz: 144};
  D.40280_175 = MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].ssec[D.40272_171].local_crypto_key;
  switch_core_media_add_crypto (D.40279_173, D.40280_175, 0);
  D.40272_177 = MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].crypto_type;
  D.40279_179 = &MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].ssec[D.40272_177]{lb: 0 sz: 144};
  D.40273_181 = MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].ssec[D.40272_177].remote_crypto_key;
  switch_core_media_add_crypto (D.40279_179, D.40273_181, 1);
  D.40182_182 = smh_4->session;
  D.40281_183 = D.40182_182->channel;
  switch_channel_set_flag_value (D.40281_183, 92, 1);
  D.40282_184 = MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].rtp_session;
  idx.2_185 = (uint32_t) idx_335;
  D.40272_187 = MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].crypto_type;
  D.40284_188 = &MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].ssec[D.40272_187].local_raw_key;
  D.40285_190 = SUITES[D.40272_187].keylen;
  D.40286_191 = (switch_size_t) D.40285_190;
  switch_rtp_add_crypto_key (D.40282_184, 0, idx.2_185, D.40272_187, D.40284_188, D.40286_191);
  D.40282_192 = MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].rtp_session;
  D.40272_193 = MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].crypto_type;
  D.40287_194 = MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].ssec[D.40272_193].crypto_tag;
  D.40288_195 = (uint32_t) D.40287_194;
  D.40289_198 = &MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].ssec[D.40272_193].remote_raw_key;
  D.40285_200 = SUITES[D.40272_193].keylen;
  D.40286_201 = (switch_size_t) D.40285_200;
  switch_rtp_add_crypto_key (D.40282_192, 1, D.40288_195, D.40272_193, D.40289_198, D.40286_201);

<bb 49>:
  D.40290_202 = switch_core_media_ready (session_3(D), 0);
  if (D.40290_202 != 0)
    goto <bb 50>;
  else
    goto <bb 51>;

<bb 50>:
  D.40282_203 = MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].rtp_session;
  D.40168_204 = smh_4->mparams;
  D.40293_205 = D.40168_204->te;
  switch_rtp_set_telephony_event (D.40282_203, D.40293_205);
  D.40282_206 = MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].rtp_session;
  D.40168_207 = smh_4->mparams;
  D.40294_208 = D.40168_207->recv_te;
  switch_rtp_set_telephony_recv_event (D.40282_206, D.40294_208);

<bb 51>:
  return;

<bb 52>:
Invalid sum of incoming frequencies 931, should be 792
  D.40223_98 = switch_core_perform_session_strdup (session_3(D), ip_6, "src/switch_core_media.c", &__func__, 8627);
  MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].local_sdp_ip = D.40223_98;
  D.40168_99 = smh_4->mparams;
  D.40168_99->rtpip = D.40223_98;
  goto <bb 30>;

<bb 53>:
  D.40228_102 = switch_core_perform_session_strdup (session_3(D), a_ip_15, "src/switch_core_media.c", &__func__, 8632);
  MEM[(struct switch_rtp_engine_t *)smh_4 + 80B].adv_sdp_ip = D.40228_102;
  goto <bb 32>;

}



;; Function switch_core_media_init (switch_core_media_init)

switch_core_media_init ()
{
<bb 2>:
  switch_core_gen_certs ("dtls-srtp.pem");
  return;

}



;; Function switch_core_media_deinit (switch_core_media_deinit)

switch_core_media_deinit ()
{
<bb 2>:
  return;

}


