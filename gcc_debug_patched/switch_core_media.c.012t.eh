
;; Function switch_core_media_deinit (switch_core_media_deinit)

switch_core_media_deinit ()
{
  return;
}



;; Function switch_core_media_init (switch_core_media_init)

switch_core_media_init ()
{
  switch_core_gen_certs ("dtls-srtp.pem");
  return;
}



;; Function switch_core_media_recover_session (switch_core_media_recover_session)

switch_core_media_recover_session (struct switch_core_session_t * session)
{
  int idx;
  char * tmp_codec_string;
  const char * vtmp;
  static const char __func__[34] = "switch_core_media_recover_session";
  static const char __PRETTY_FUNCTION__[34] = "switch_core_media_recover_session";
  struct switch_media_handle_t * smh;
  struct switch_rtp_engine_t * v_engine;
  struct switch_rtp_engine_t * a_engine;
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
  unsigned int D.40278;
  struct switch_secure_settings_t[10] * D.40277;
  char * D.40276;
  char * D.40273;
  switch_rtp_crypto_key_type_t D.40272;
  switch_status_t D.40267;
  short unsigned int D.40266;
  int D.40265;
  switch_port_t D.40262;
  short unsigned int D.40261;
  int D.40260;
  uint32_t D.40259;
  int D.40258;
  long unsigned int D.40255;
  long unsigned int D.40254;
  int D.40253;
  const char * D.40250;
  const char * D.40249;
  unsigned char D.40248;
  int D.40247;
  switch_payload_t D.40244;
  unsigned char D.40243;
  int D.40242;
  struct payload_map_t * D.40241;
  uint32_t D.40236;
  short unsigned int D.40235;
  int D.40234;
  _Bool D.40231;
  _Bool D.40230;
  _Bool D.40229;
  char * D.40228;
  int D.40225;
  char * D.40224;
  char * D.40223;
  int D.40220;
  switch_port_t D.40219;
  short unsigned int D.40218;
  int D.40217;
  char * D.40216;
  uint32_t D.40215;
  unsigned char D.40214;
  int D.40213;
  switch_payload_t D.40210;
  unsigned char D.40209;
  int D.40208;
  uint32_t D.40205;
  int D.40204;
  long unsigned int D.40201;
  long unsigned int D.40200;
  int D.40199;
  unsigned char D.40196;
  int D.40195;
  unsigned char D.40192;
  int D.40191;
  int D.40188;
  int D.40187;
  const struct switch_codec_implementation_t *[50] * D.40186;
  int D.40185;
  unsigned int D.40184;
  char *[50] * D.40183;
  struct switch_core_session_t * D.40182;
  const char * iftmp.1;
  char * iftmp.0;
  char * D.40169;
  struct switch_core_media_params_t * D.40168;
  const char * D.40165;
  char * D.40164;
  const char * D.40163;
  struct payload_map_t * D.40162;
  _Bool D.40161;
  _Bool D.40160;
  _Bool D.40159;
  uint32_t D.40157;
  struct switch_channel_t * D.40154;

  if (session == 0B) goto <D.40150>; else goto <D.40151>;
  <D.40150>:
  __assert_fail ("session", "src/switch_core_media.c", 8557, &__PRETTY_FUNCTION__);
  <D.40151>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.40152>; else goto <D.40153>;
  <D.40152>:
  goto <D.40295>;
  <D.40153>:
  D.40154 = session->channel;
  ip = switch_channel_get_variable_dup (D.40154, "local_media_ip", 1, -1);
  D.40154 = session->channel;
  port = switch_channel_get_variable_dup (D.40154, "local_media_port", 1, -1);
  D.40154 = session->channel;
  D.40157 = switch_channel_test_flag (D.40154, 15);
  if (D.40157 != 0) goto <D.40155>; else goto <D.40158>;
  <D.40158>:
  D.40159 = ip == 0B;
  D.40160 = port == 0B;
  D.40161 = D.40159 || D.40160;
  if (D.40161 != 0) goto <D.40155>; else goto <D.40156>;
  <D.40155>:
  goto <D.40295>;
  <D.40156>:
  D.40154 = session->channel;
  a_ip = switch_channel_get_variable_dup (D.40154, "advertised_media_ip", 1, -1);
  D.40154 = session->channel;
  r_ip = switch_channel_get_variable_dup (D.40154, "remote_media_ip", 1, -1);
  D.40154 = session->channel;
  r_port = switch_channel_get_variable_dup (D.40154, "remote_media_port", 1, -1);
  a_engine = &smh->engines;
  v_engine = &smh->engines[1];
  D.40162 = a_engine->cur_payload_map;
  D.40162 = a_engine->cur_payload_map;
  D.40154 = session->channel;
  D.40163 = switch_channel_get_variable_dup (D.40154, "rtp_use_codec_name", 1, -1);
  D.40162->rm_encoding = D.40163;
  D.40164 = D.40162->rm_encoding;
  D.40162->iananame = D.40164;
  D.40162 = a_engine->cur_payload_map;
  D.40154 = session->channel;
  D.40165 = switch_channel_get_variable_dup (D.40154, "rtp_use_codec_fmtp", 1, -1);
  D.40162->rm_fmtp = D.40165;
  D.40154 = session->channel;
  tmp = switch_channel_get_variable_dup (D.40154, "switch_r_sdp", 1, -1);
  if (tmp != 0B) goto <D.40166>; else goto <D.40167>;
  <D.40166>:
  D.40168 = smh->mparams;
  D.40169 = switch_core_perform_session_strdup (session, tmp, "src/switch_core_media.c", &__func__, 8581);
  D.40168->remote_sdp_str = D.40169;
  <D.40167>:
  D.40154 = session->channel;
  tmp = switch_channel_get_variable_dup (D.40154, "rtp_last_audio_codec_string", 1, -1);
  if (tmp != 0B) goto <D.40170>; else goto <D.40171>;
  <D.40170>:
  D.40154 = session->channel;
  vtmp = switch_channel_get_variable_dup (D.40154, "rtp_last_video_codec_string", 1, -1);
  D.40154 = session->channel;
  if (vtmp != 0B) goto <D.40173>; else goto <D.40174>;
  <D.40173>:
  iftmp.0 = ",";
  goto <D.40175>;
  <D.40174>:
  iftmp.0 = "";
  <D.40175>:
  if (vtmp != 0B) goto <D.40177>; else goto <D.40178>;
  <D.40177>:
  iftmp.1 = vtmp;
  goto <D.40179>;
  <D.40178>:
  iftmp.1 = "";
  <D.40179>:
  switch_channel_set_variable_printf (D.40154, "rtp_use_codec_string", "%s%s%s", tmp, iftmp.0, iftmp.1);
  <D.40171>:
  D.40154 = session->channel;
  tmp = switch_channel_get_variable_dup (D.40154, "rtp_use_codec_string", 1, -1);
  if (tmp != 0B) goto <D.40180>; else goto <D.40181>;
  <D.40180>:
  D.40182 = smh->session;
  tmp_codec_string = switch_core_perform_session_strdup (D.40182, tmp, "src/switch_core_media.c", &__func__, 8591);
  D.40183 = &smh->codec_order;
  D.40184 = switch_separate_string (tmp_codec_string, 44, D.40183, 50);
  D.40185 = (int) D.40184;
  smh->codec_order_last = D.40185;
  D.40168 = smh->mparams;
  D.40186 = &smh->codecs;
  D.40183 = &smh->codec_order;
  D.40187 = smh->codec_order_last;
  D.40188 = switch_loadable_module_get_codecs_sorted (D.40186, 50, D.40183, D.40187);
  D.40168->num_codecs = D.40188;
  <D.40181>:
  D.40154 = session->channel;
  tmp = switch_channel_get_variable_dup (D.40154, "rtp_2833_send_payload", 1, -1);
  if (tmp != 0B) goto <D.40189>; else goto <D.40190>;
  <D.40189>:
  D.40168 = smh->mparams;
  D.40191 = atoi (tmp);
  D.40192 = (unsigned char) D.40191;
  D.40168->te = D.40192;
  <D.40190>:
  D.40154 = session->channel;
  tmp = switch_channel_get_variable_dup (D.40154, "rtp_2833_recv_payload", 1, -1);
  if (tmp != 0B) goto <D.40193>; else goto <D.40194>;
  <D.40193>:
  D.40168 = smh->mparams;
  D.40195 = atoi (tmp);
  D.40196 = (unsigned char) D.40195;
  D.40168->recv_te = D.40196;
  <D.40194>:
  D.40154 = session->channel;
  tmp = switch_channel_get_variable_dup (D.40154, "rtp_use_codec_rate", 1, -1);
  if (tmp != 0B) goto <D.40197>; else goto <D.40198>;
  <D.40197>:
  D.40162 = a_engine->cur_payload_map;
  D.40199 = atoi (tmp);
  D.40200 = (long unsigned int) D.40199;
  D.40162->rm_rate = D.40200;
  D.40162 = a_engine->cur_payload_map;
  D.40162 = a_engine->cur_payload_map;
  D.40201 = D.40162->rm_rate;
  D.40162->adv_rm_rate = D.40201;
  <D.40198>:
  D.40154 = session->channel;
  tmp = switch_channel_get_variable_dup (D.40154, "rtp_use_codec_ptime", 1, -1);
  if (tmp != 0B) goto <D.40202>; else goto <D.40203>;
  <D.40202>:
  D.40162 = a_engine->cur_payload_map;
  D.40204 = atoi (tmp);
  D.40205 = (uint32_t) D.40204;
  D.40162->codec_ms = D.40205;
  <D.40203>:
  D.40154 = session->channel;
  tmp = switch_channel_get_variable_dup (D.40154, "rtp_use_pt", 1, -1);
  if (tmp != 0B) goto <D.40206>; else goto <D.40207>;
  <D.40206>:
  D.40162 = a_engine->cur_payload_map;
  D.40162 = a_engine->cur_payload_map;
  D.40208 = atoi (tmp);
  D.40209 = (unsigned char) D.40208;
  D.40162->agreed_pt = D.40209;
  D.40210 = D.40162->agreed_pt;
  D.40162->pt = D.40210;
  <D.40207>:
  D.40154 = session->channel;
  tmp = switch_channel_get_variable_dup (D.40154, "rtp_audio_recv_pt", 1, -1);
  if (tmp != 0B) goto <D.40211>; else goto <D.40212>;
  <D.40211>:
  D.40162 = a_engine->cur_payload_map;
  D.40213 = atoi (tmp);
  D.40214 = (unsigned char) D.40213;
  D.40162->recv_pt = D.40214;
  <D.40212>:
  D.40168 = smh->mparams;
  D.40215 = D.40168->codec_flags;
  switch_core_media_set_codec (session, 1, D.40215);
  D.40168 = smh->mparams;
  D.40168->extrtpip = ip;
  D.40216 = D.40168->extrtpip;
  a_engine->adv_sdp_ip = D.40216;
  D.40217 = atoi (port);
  D.40218 = (short unsigned int) D.40217;
  a_engine->local_sdp_port = D.40218;
  D.40219 = a_engine->local_sdp_port;
  a_engine->adv_sdp_port = D.40219;
  D.40220 = _zstr (ip);
  if (D.40220 == 0) goto <D.40221>; else goto <D.40222>;
  <D.40221>:
  D.40223 = switch_core_perform_session_strdup (session, ip, "src/switch_core_media.c", &__func__, 8627);
  a_engine->local_sdp_ip = D.40223;
  D.40168 = smh->mparams;
  D.40224 = a_engine->local_sdp_ip;
  D.40168->rtpip = D.40224;
  <D.40222>:
  D.40225 = _zstr (a_ip);
  if (D.40225 == 0) goto <D.40226>; else goto <D.40227>;
  <D.40226>:
  D.40228 = switch_core_perform_session_strdup (session, a_ip, "src/switch_core_media.c", &__func__, 8632);
  a_engine->adv_sdp_ip = D.40228;
  <D.40227>:
  D.40229 = r_ip != 0B;
  D.40230 = r_port != 0B;
  D.40231 = D.40229 && D.40230;
  if (D.40231 != 0) goto <D.40232>; else goto <D.40233>;
  <D.40232>:
  D.40162 = a_engine->cur_payload_map;
  D.40162->remote_sdp_ip = r_ip;
  D.40162 = a_engine->cur_payload_map;
  D.40234 = atoi (r_port);
  D.40235 = (short unsigned int) D.40234;
  D.40162->remote_sdp_port = D.40235;
  <D.40233>:
  D.40154 = session->channel;
  D.40236 = switch_channel_test_flag (D.40154, 23);
  if (D.40236 != 0) goto <D.40237>; else goto <D.40238>;
  <D.40237>:
  D.40154 = session->channel;
  tmp = switch_channel_get_variable_dup (D.40154, "rtp_use_video_pt", 1, -1);
  if (tmp != 0B) goto <D.40239>; else goto <D.40240>;
  <D.40239>:
  D.40241 = v_engine->cur_payload_map;
  D.40241 = v_engine->cur_payload_map;
  D.40242 = atoi (tmp);
  D.40243 = (unsigned char) D.40242;
  D.40241->agreed_pt = D.40243;
  D.40244 = D.40241->agreed_pt;
  D.40241->pt = D.40244;
  <D.40240>:
  D.40154 = session->channel;
  tmp = switch_channel_get_variable_dup (D.40154, "rtp_video_recv_pt", 1, -1);
  if (tmp != 0B) goto <D.40245>; else goto <D.40246>;
  <D.40245>:
  D.40241 = v_engine->cur_payload_map;
  D.40247 = atoi (tmp);
  D.40248 = (unsigned char) D.40247;
  D.40241->recv_pt = D.40248;
  <D.40246>:
  D.40241 = v_engine->cur_payload_map;
  D.40154 = session->channel;
  D.40249 = switch_channel_get_variable_dup (D.40154, "rtp_use_video_codec_name", 1, -1);
  D.40241->rm_encoding = D.40249;
  D.40241 = v_engine->cur_payload_map;
  D.40154 = session->channel;
  D.40250 = switch_channel_get_variable_dup (D.40154, "rtp_use_video_codec_fmtp", 1, -1);
  D.40241->rm_fmtp = D.40250;
  D.40154 = session->channel;
  ip = switch_channel_get_variable_dup (D.40154, "local_video_ip", 1, -1);
  D.40154 = session->channel;
  port = switch_channel_get_variable_dup (D.40154, "local_video_port", 1, -1);
  D.40154 = session->channel;
  r_ip = switch_channel_get_variable_dup (D.40154, "remote_video_ip", 1, -1);
  D.40154 = session->channel;
  r_port = switch_channel_get_variable_dup (D.40154, "remote_video_port", 1, -1);
  D.40154 = session->channel;
  switch_channel_set_flag_value (D.40154, 98, 1);
  D.40154 = session->channel;
  tmp = switch_channel_get_variable_dup (D.40154, "rtp_use_video_codec_rate", 1, -1);
  if (tmp != 0B) goto <D.40251>; else goto <D.40252>;
  <D.40251>:
  D.40241 = v_engine->cur_payload_map;
  D.40253 = atoi (tmp);
  D.40254 = (long unsigned int) D.40253;
  D.40241->rm_rate = D.40254;
  D.40241 = v_engine->cur_payload_map;
  D.40241 = v_engine->cur_payload_map;
  D.40255 = D.40241->rm_rate;
  D.40241->adv_rm_rate = D.40255;
  <D.40252>:
  D.40154 = session->channel;
  tmp = switch_channel_get_variable_dup (D.40154, "rtp_use_video_codec_ptime", 1, -1);
  if (tmp != 0B) goto <D.40256>; else goto <D.40257>;
  <D.40256>:
  D.40241 = v_engine->cur_payload_map;
  D.40258 = atoi (tmp);
  D.40259 = (uint32_t) D.40258;
  D.40241->codec_ms = D.40259;
  <D.40257>:
  D.40260 = atoi (port);
  D.40261 = (short unsigned int) D.40260;
  v_engine->local_sdp_port = D.40261;
  D.40262 = v_engine->local_sdp_port;
  v_engine->adv_sdp_port = D.40262;
  D.40229 = r_ip != 0B;
  D.40230 = r_port != 0B;
  D.40231 = D.40229 && D.40230;
  if (D.40231 != 0) goto <D.40263>; else goto <D.40264>;
  <D.40263>:
  D.40241 = v_engine->cur_payload_map;
  D.40241->remote_sdp_ip = r_ip;
  D.40241 = v_engine->cur_payload_map;
  D.40265 = atoi (r_port);
  D.40266 = (short unsigned int) D.40265;
  D.40241->remote_sdp_port = D.40266;
  <D.40264>:
  <D.40238>:
  switch_core_media_gen_local_sdp (session, 0, 0B, 0, 0B, 1);
  switch_core_media_set_video_codec (session, 1);
  D.40267 = switch_core_media_activate_rtp (session);
  if (D.40267 != 0) goto <D.40268>; else goto <D.40269>;
  <D.40268>:
  goto <D.40295>;
  <D.40269>:
  switch_core_session_get_recovery_crypto_key (session, 0);
  switch_core_session_get_recovery_crypto_key (session, 1);
  D.40154 = session->channel;
  tmp = switch_channel_get_variable_dup (D.40154, "rtp_last_audio_local_crypto_key", 1, -1);
  if (tmp != 0B) goto <D.40270>; else goto <D.40271>;
  <D.40270>:
  D.40272 = a_engine->crypto_type;
  D.40273 = a_engine->ssec[D.40272].remote_crypto_key;
  if (D.40273 != 0B) goto <D.40274>; else goto <D.40275>;
  <D.40274>:
  idx = atoi (tmp);
  D.40272 = a_engine->crypto_type;
  D.40276 = switch_core_perform_session_strdup (session, tmp, "src/switch_core_media.c", &__func__, 8690);
  a_engine->ssec[D.40272].local_crypto_key = D.40276;
  D.40277 = &a_engine->ssec;
  D.40272 = a_engine->crypto_type;
  D.40278 = D.40272 * 144;
  D.40279 = D.40277 + D.40278;
  D.40272 = a_engine->crypto_type;
  D.40280 = a_engine->ssec[D.40272].local_crypto_key;
  switch_core_media_add_crypto (D.40279, D.40280, 0);
  D.40277 = &a_engine->ssec;
  D.40272 = a_engine->crypto_type;
  D.40278 = D.40272 * 144;
  D.40279 = D.40277 + D.40278;
  D.40272 = a_engine->crypto_type;
  D.40273 = a_engine->ssec[D.40272].remote_crypto_key;
  switch_core_media_add_crypto (D.40279, D.40273, 1);
  D.40182 = smh->session;
  D.40281 = D.40182->channel;
  switch_channel_set_flag_value (D.40281, 92, 1);
  D.40282 = a_engine->rtp_session;
  idx.2 = (uint32_t) idx;
  D.40272 = a_engine->crypto_type;
  D.40272 = a_engine->crypto_type;
  D.40284 = &a_engine->ssec[D.40272].local_raw_key;
  D.40272 = a_engine->crypto_type;
  D.40285 = SUITES[D.40272].keylen;
  D.40286 = (switch_size_t) D.40285;
  switch_rtp_add_crypto_key (D.40282, 0, idx.2, D.40272, D.40284, D.40286);
  D.40282 = a_engine->rtp_session;
  D.40272 = a_engine->crypto_type;
  D.40287 = a_engine->ssec[D.40272].crypto_tag;
  D.40288 = (uint32_t) D.40287;
  D.40272 = a_engine->crypto_type;
  D.40272 = a_engine->crypto_type;
  D.40289 = &a_engine->ssec[D.40272].remote_raw_key;
  D.40272 = a_engine->crypto_type;
  D.40285 = SUITES[D.40272].keylen;
  D.40286 = (switch_size_t) D.40285;
  switch_rtp_add_crypto_key (D.40282, 1, D.40288, D.40272, D.40289, D.40286);
  <D.40275>:
  <D.40271>:
  D.40290 = switch_core_media_ready (session, 0);
  if (D.40290 != 0) goto <D.40291>; else goto <D.40292>;
  <D.40291>:
  D.40282 = a_engine->rtp_session;
  D.40168 = smh->mparams;
  D.40293 = D.40168->te;
  switch_rtp_set_telephony_event (D.40282, D.40293);
  D.40282 = a_engine->rtp_session;
  D.40168 = smh->mparams;
  D.40294 = D.40168->recv_te;
  switch_rtp_set_telephony_recv_event (D.40282, D.40294);
  <D.40292>:
  <D.40295>:
  return;
}



;; Function _zstr (_zstr)

_zstr (const char * s)
{
  const char D.40302;
  int iftmp.3;
  int D.40296;

  if (s == 0B) goto <D.40298>; else goto <D.40301>;
  <D.40301>:
  D.40302 = *s;
  if (D.40302 == 0) goto <D.40298>; else goto <D.40299>;
  <D.40298>:
  iftmp.3 = 1;
  goto <D.40300>;
  <D.40299>:
  iftmp.3 = 0;
  <D.40300>:
  D.40296 = iftmp.3;
  goto <D.40303>;
  <D.40303>:
  return D.40296;
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
  unsigned int D.40308;
  struct switch_rtp_engine_t[2] * D.40307;
  struct switch_media_handle_t * D.40304;

  D.40304 = session->media_handle;
  if (D.40304 == 0B) goto <D.40305>; else goto <D.40306>;
  <D.40305>:
  goto <D.40323>;
  <D.40306>:
  D.40304 = session->media_handle;
  D.40307 = &D.40304->engines;
  D.40308 = type * 11416;
  engine = D.40307 + D.40308;
  if (type == 0) goto <D.40309>; else goto <D.40310>;
  <D.40309>:
  keyvar = "srtp_remote_audio_crypto_key";
  tagvar = "srtp_remote_audio_crypto_tag";
  ctypevar = "srtp_remote_audio_crypto_type";
  goto <D.40311>;
  <D.40310>:
  keyvar = "srtp_remote_video_crypto_key";
  tagvar = "srtp_remote_video_crypto_tag";
  ctypevar = "srtp_remote_video_crypto_type";
  <D.40311>:
  D.40312 = session->channel;
  tmp = switch_channel_get_variable_dup (D.40312, keyvar, 1, -1);
  if (tmp != 0B) goto <D.40313>; else goto <D.40314>;
  <D.40313>:
  D.40312 = session->channel;
  tmp = switch_channel_get_variable_dup (D.40312, ctypevar, 1, -1);
  if (tmp != 0B) goto <D.40315>; else goto <D.40316>;
  <D.40315>:
  D.40317 = switch_core_media_crypto_str2type (tmp);
  engine->crypto_type = D.40317;
  <D.40316>:
  D.40318 = engine->crypto_type;
  D.40319 = switch_core_perform_session_strdup (session, tmp, "src/switch_core_media.c", &__func__, 1015);
  engine->ssec[D.40318].remote_crypto_key = D.40319;
  D.40312 = session->channel;
  tmp = switch_channel_get_variable_dup (D.40312, tagvar, 1, -1);
  if (tmp != 0B) goto <D.40320>; else goto <D.40321>;
  <D.40320>:
  tv = atoi (tmp);
  D.40318 = engine->crypto_type;
  engine->ssec[D.40318].crypto_tag = tv;
  goto <D.40322>;
  <D.40321>:
  D.40318 = engine->crypto_type;
  engine->ssec[D.40318].crypto_tag = 1;
  <D.40322>:
  D.40312 = session->channel;
  switch_channel_set_flag_value (D.40312, 92, 1);
  <D.40314>:
  <D.40323>:
  return;
}



;; Function atoi (atoi)

atoi (const char * __nptr)
{
  int D.40324;

  D.40324 = strtol (__nptr, 0B, 10);
  goto <D.40325>;
  <D.40325>:
  return D.40324;
}



;; Function switch_core_media_proxy_codec (switch_core_media_proxy_codec)

switch_core_media_proxy_codec (struct switch_core_session_t * session, const char * r_sdp)
{
  struct sdp_rtpmap_t * map;
  static const char __func__[30] = "switch_core_media_proxy_codec";
  static const char __PRETTY_FUNCTION__[30] = "switch_core_media_proxy_codec";
  struct switch_media_handle_t * smh;
  struct switch_rtp_engine_t * a_engine;
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
  int D.40353;
  int D.40347;
  sdp_proto_e D.40344;
  const char * D.40343;
  int D.40340;
  int D.40337;
  const char * D.40336;
  int D.40331;
  size_t D.40330;

  parser = 0B;
  ptime = 0;
  dptime = 0;
  if (session == 0B) goto <D.40326>; else goto <D.40327>;
  <D.40326>:
  __assert_fail ("session", "src/switch_core_media.c", 8482, &__PRETTY_FUNCTION__);
  <D.40327>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.40328>; else goto <D.40329>;
  <D.40328>:
  goto <D.40365>;
  <D.40329>:
  a_engine = &smh->engines;
  D.40330 = strlen (r_sdp);
  D.40331 = (int) D.40330;
  parser = sdp_parse (0B, r_sdp, D.40331, 0);
  if (parser == 0B) goto <D.40332>; else goto <D.40333>;
  <D.40332>:
  goto <D.40365>;
  <D.40333>:
  sdp = sdp_session (parser);
  if (sdp == 0B) goto <D.40334>; else goto <D.40335>;
  <D.40334>:
  sdp_parser_free (parser);
  goto <D.40365>;
  <D.40335>:
  attr = sdp->sdp_attributes;
  goto <D.40111>;
  <D.40110>:
  D.40336 = attr->a_name;
  D.40337 = _zstr (D.40336);
  if (D.40337 != 0) goto <D.40338>; else goto <D.40339>;
  <D.40338>:
  // predicted unlikely by continue predictor.
  goto <D.40109>;
  <D.40339>:
  D.40336 = attr->a_name;
  D.40340 = strcasecmp (D.40336, "ptime");
  if (D.40340 == 0) goto <D.40341>; else goto <D.40342>;
  <D.40341>:
  D.40343 = attr->a_value;
  dptime = atoi (D.40343);
  <D.40342>:
  <D.40109>:
  attr = attr->a_next;
  <D.40111>:
  if (attr != 0B) goto <D.40110>; else goto <D.40112>;
  <D.40112>:
  m = sdp->sdp_media;
  goto <D.40123>;
  <D.40122>:
  ptime = dptime;
  D.40344 = m->m_proto;
  if (D.40344 == 256) goto <D.40345>; else goto <D.40346>;
  <D.40345>:
  attr = m->m_attributes;
  goto <D.40115>;
  <D.40114>:
  D.40336 = attr->a_name;
  D.40347 = strcasecmp (D.40336, "ptime");
  if (D.40347 == 0) goto <D.40348>; else goto <D.40349>;
  <D.40348>:
  D.40343 = attr->a_value;
  if (D.40343 != 0B) goto <D.40350>; else goto <D.40351>;
  <D.40350>:
  D.40343 = attr->a_value;
  ptime = atoi (D.40343);
  goto <D.40352>;
  <D.40351>:
  D.40336 = attr->a_name;
  D.40353 = strcasecmp (D.40336, "maxptime");
  if (D.40353 == 0) goto <D.40354>; else goto <D.40355>;
  <D.40354>:
  D.40343 = attr->a_value;
  if (D.40343 != 0B) goto <D.40356>; else goto <D.40357>;
  <D.40356>:
  <D.40357>:
  <D.40355>:
  <D.40352>:
  <D.40349>:
  attr = attr->a_next;
  <D.40115>:
  if (attr != 0B) goto <D.40114>; else goto <D.40116>;
  <D.40116>:
  map = m->m_rtpmaps;
  goto <D.40120>;
  <D.40119>:
  D.40358 = a_engine->cur_payload_map;
  D.40359 = map->rm_encoding;
  D.40360 = switch_core_perform_session_strdup (session, D.40359, "src/switch_core_media.c", &__func__, 8527);
  D.40358->iananame = D.40360;
  D.40358 = a_engine->cur_payload_map;
  D.40361 = map->rm_rate;
  D.40358->rm_rate = D.40361;
  D.40358 = a_engine->cur_payload_map;
  D.40361 = map->rm_rate;
  D.40358->adv_rm_rate = D.40361;
  D.40358 = a_engine->cur_payload_map;
  ptime.4 = (uint32_t) ptime;
  D.40358->codec_ms = ptime.4;
  D.40363 = smh->mparams;
  D.40364 = D.40363->codec_flags;
  switch_core_media_set_codec (session, 0, D.40364);
  goto <D.40118>;
  map = map->rm_next;
  <D.40120>:
  if (map != 0B) goto <D.40119>; else goto <D.40118>;
  <D.40118>:
  goto <D.40121>;
  <D.40346>:
  m = m->m_next;
  <D.40123>:
  if (m != 0B) goto <D.40122>; else goto <D.40121>;
  <D.40121>:
  sdp_parser_free (parser);
  <D.40365>:
  return;
}



;; Function switch_core_media_check_outgoing_proxy (switch_core_media_check_outgoing_proxy)

switch_core_media_check_outgoing_proxy (struct switch_core_session_t * session, struct switch_core_session_t * o_session)
{
  static const char __func__[39] = "switch_core_media_check_outgoing_proxy";
  static const char __PRETTY_FUNCTION__[39] = "switch_core_media_check_outgoing_proxy";
  const char * r_sdp;
  struct switch_media_handle_t * smh;
  struct switch_rtp_engine_t * v_engine;
  struct switch_rtp_engine_t * a_engine;
  struct payload_map_t * D.40380;
  const char * D.40377;
  char * D.40376;
  struct payload_map_t * D.40375;
  struct switch_channel_t * D.40374;
  uint32_t D.40369;
  struct switch_channel_t * D.40368;

  r_sdp = 0B;
  if (session == 0B) goto <D.40366>; else goto <D.40367>;
  <D.40366>:
  __assert_fail ("session", "src/switch_core_media.c", 8430, &__PRETTY_FUNCTION__);
  <D.40367>:
  D.40368 = o_session->channel;
  D.40369 = switch_channel_test_flag (D.40368, 29);
  if (D.40369 == 0) goto <D.40370>; else goto <D.40371>;
  <D.40370>:
  goto <D.40381>;
  <D.40371>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.40372>; else goto <D.40373>;
  <D.40372>:
  goto <D.40381>;
  <D.40373>:
  D.40368 = o_session->channel;
  r_sdp = switch_channel_get_variable_dup (D.40368, "switch_r_sdp", 1, -1);
  a_engine = &smh->engines;
  v_engine = &smh->engines[1];
  D.40374 = session->channel;
  switch_channel_set_flag_value (D.40374, 29, 1);
  D.40375 = a_engine->cur_payload_map;
  D.40376 = switch_core_perform_session_strdup (session, "PROXY", "src/switch_core_media.c", &__func__, 8447);
  D.40375->iananame = D.40376;
  D.40375 = a_engine->cur_payload_map;
  D.40375->rm_rate = 8000;
  D.40375 = a_engine->cur_payload_map;
  D.40375->adv_rm_rate = 8000;
  D.40375 = a_engine->cur_payload_map;
  D.40375->codec_ms = 20;
  D.40377 = switch_stristr ("m=video", r_sdp);
  if (D.40377 != 0B) goto <D.40378>; else goto <D.40379>;
  <D.40378>:
  switch_core_media_choose_port (session, 1, 1);
  D.40380 = v_engine->cur_payload_map;
  D.40380->rm_encoding = "PROXY-VID";
  D.40380 = v_engine->cur_payload_map;
  D.40380->rm_rate = 90000;
  D.40380 = v_engine->cur_payload_map;
  D.40380->adv_rm_rate = 90000;
  D.40380 = v_engine->cur_payload_map;
  D.40380->codec_ms = 0;
  D.40374 = session->channel;
  switch_channel_set_flag_value (D.40374, 23, 1);
  D.40374 = session->channel;
  switch_channel_set_flag_value (D.40374, 98, 1);
  <D.40379>:
  <D.40381>:
  return;
}



;; Function switch_core_media_codec_chosen (switch_core_media_codec_chosen)

switch_core_media_codec_chosen (struct switch_core_session_t * session, switch_media_type_t type)
{
  static const char __PRETTY_FUNCTION__[31] = "switch_core_media_codec_chosen";
  struct switch_media_handle_t * smh;
  struct switch_rtp_engine_t * engine;
  char * D.40390;
  struct payload_map_t * D.40389;
  unsigned int D.40388;
  struct switch_rtp_engine_t[2] * D.40387;
  switch_status_t D.40386;

  if (session == 0B) goto <D.40382>; else goto <D.40383>;
  <D.40382>:
  __assert_fail ("session", "src/switch_core_media.c", 8407, &__PRETTY_FUNCTION__);
  <D.40383>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.40384>; else goto <D.40385>;
  <D.40384>:
  D.40386 = 1;
  goto <D.40393>;
  <D.40385>:
  D.40387 = &smh->engines;
  D.40388 = type * 11416;
  engine = D.40387 + D.40388;
  D.40389 = engine->cur_payload_map;
  D.40390 = D.40389->iananame;
  if (D.40390 != 0B) goto <D.40391>; else goto <D.40392>;
  <D.40391>:
  D.40386 = 0;
  goto <D.40393>;
  <D.40392>:
  D.40386 = 1;
  goto <D.40393>;
  <D.40393>:
  return D.40386;
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

  if (session == 0B) goto <D.40394>; else goto <D.40395>;
  <D.40394>:
  __assert_fail ("session", "src/switch_core_media.c", 8105, &__PRETTY_FUNCTION__);
  <D.40395>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.40396>; else goto <D.40397>;
  <D.40396>:
  goto <D.40405>;
  <D.40397>:
  D.40398 = strlen (r_sdp);
  D.40399 = (int) D.40398;
  parser = sdp_parse (0B, r_sdp, D.40399, 0);
  if (parser != 0B) goto <D.40400>; else goto <D.40401>;
  <D.40400>:
  sdp = sdp_session (parser);
  if (sdp != 0B) goto <D.40402>; else goto <D.40403>;
  <D.40402>:
  D.40404 = switch_core_media_get_codec_string (session);
  switch_core_media_set_r_sdp_codec_string (session, D.40404, sdp, sdp_type);
  <D.40403>:
  sdp_parser_free (parser);
  <D.40401>:
  <D.40405>:
  return;
}



;; Function switch_core_media_set_r_sdp_codec_string (switch_core_media_set_r_sdp_codec_string)

switch_core_media_set_r_sdp_codec_string (struct switch_core_session_t * session, const char * codec_string, struct sdp_session_t * sdp, switch_sdp_type_t sdp_type)
{
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
  size_t D.40589;
  char * D.40588;
  size_t D.40587;
  unsigned int D.40585;
  size_t D.40584;
  char * D.40583;
  size_t D.40582;
  int D.40576;
  char * const D.40575;
  int D.40570;
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
  int D.40529;
  int D.40522;
  int D.40521;
  signed char D.40519;
  const switch_payload_t D.40518;
  const switch_codec_type_t D.40516;
  int D.40510;
  char * const D.40509;
  int D.40506;
  const switch_payload_t D.40505;
  _Bool D.40503;
  int D.40502;
  int D.40501;
  switch_core_media_NDLB_t D.40500;
  struct switch_core_media_params_t * D.40499;
  int D.40497;
  int D.40493;
  int D.40491;
  switch_call_direction_t D.40487;
  struct switch_core_session_t * D.40484;
  struct sdp_connection_t * D.40479;
  int D.40474;
  int D.40471;
  unsigned int D.40466;
  size_t D.40465;
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
  int D.40444;
  long unsigned int D.40441;
  unsigned int D.40438;
  sdp_media_e D.40437;
  const char * D.40436;
  int D.40433;
  int D.40430;
  const char * D.40429;
  _Bool D.40426;
  _Bool D.40425;
  _Bool D.40424;
  unsigned int D.40420;
  int D.40415;
  int D.40412;

  buf = {};
  ptime = 0;
  dptime = 0;
  match = 0;
  already_did = {};
  num_codecs = 0;
  codecs = {};
  channel = switch_core_session_get_channel (session);
  prefer_sdp = 0;
  if (session == 0B) goto <D.40406>; else goto <D.40407>;
  <D.40406>:
  __assert_fail ("session", "src/switch_core_media.c", 8198, &__PRETTY_FUNCTION__);
  <D.40407>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.40408>; else goto <D.40409>;
  <D.40408>:
  goto <D.40594>;
  <D.40409>:
  var = switch_channel_get_variable_dup (channel, "ep_codec_prefer_sdp", 1, -1);
  if (var != 0B) goto <D.40410>; else goto <D.40411>;
  <D.40410>:
  D.40412 = switch_true (var);
  if (D.40412 != 0) goto <D.40413>; else goto <D.40414>;
  <D.40413>:
  prefer_sdp = 1;
  <D.40414>:
  <D.40411>:
  D.40415 = _zstr (codec_string);
  if (D.40415 == 0) goto <D.40416>; else goto <D.40417>;
  <D.40416>:
  tmp_codec_string = __strdup (codec_string);
  if (tmp_codec_string != 0B) goto <D.40418>; else goto <D.40419>;
  <D.40418>:
  D.40420 = switch_separate_string (tmp_codec_string, 44, &codec_order, 50);
  num_codecs = (int) D.40420;
  num_codecs = switch_loadable_module_get_codecs_sorted (&codecs, 50, &codec_order, num_codecs);
  if (tmp_codec_string != 0B) goto <D.40421>; else goto <D.40422>;
  <D.40421>:
  free (tmp_codec_string);
  tmp_codec_string = 0B;
  <D.40422>:
  <D.40419>:
  goto <D.40423>;
  <D.40417>:
  num_codecs = switch_loadable_module_get_codecs (&codecs, 50);
  <D.40423>:
  D.40424 = channel == 0B;
  D.40425 = num_codecs == 0;
  D.40426 = D.40424 || D.40425;
  if (D.40426 != 0) goto <D.40427>; else goto <D.40428>;
  <D.40427>:
  goto <D.40594>;
  <D.40428>:
  attr = sdp->sdp_attributes;
  goto <D.40034>;
  <D.40033>:
  D.40429 = attr->a_name;
  D.40430 = _zstr (D.40429);
  if (D.40430 != 0) goto <D.40431>; else goto <D.40432>;
  <D.40431>:
  // predicted unlikely by continue predictor.
  goto <D.40031>;
  <D.40432>:
  D.40429 = attr->a_name;
  D.40433 = strcasecmp (D.40429, "ptime");
  if (D.40433 == 0) goto <D.40434>; else goto <D.40435>;
  <D.40434>:
  D.40436 = attr->a_value;
  dptime = atoi (D.40436);
  goto <D.40032>;
  <D.40435>:
  <D.40031>:
  attr = attr->a_next;
  <D.40034>:
  if (attr != 0B) goto <D.40033>; else goto <D.40032>;
  <D.40032>:
  switch_core_media_find_zrtp_hash (session, sdp);
  switch_core_media_pass_zrtp_hash (session);
  m = sdp->sdp_media;
  goto <D.40043>;
  <D.40042>:
  ptime = dptime;
  D.40437 = m->m_type;
  D.40438 = D.40437 + 4294967294;
  if (D.40438 <= 1) goto <D.40439>; else goto <D.40440>;
  <D.40439>:
  D.40441 = m->m_port;
  if (D.40441 != 0) goto <D.40442>; else goto <D.40443>;
  <D.40442>:
  map = m->m_rtpmaps;
  goto <D.40040>;
  <D.40039>:
  attr = m->m_attributes;
  goto <D.40038>;
  <D.40037>:
  D.40429 = attr->a_name;
  D.40444 = _zstr (D.40429);
  if (D.40444 != 0) goto <D.40445>; else goto <D.40446>;
  <D.40445>:
  // predicted unlikely by continue predictor.
  goto <D.40035>;
  <D.40446>:
  D.40429 = attr->a_name;
  D.40447 = strcasecmp (D.40429, "ptime");
  if (D.40447 == 0) goto <D.40448>; else goto <D.40449>;
  <D.40448>:
  D.40436 = attr->a_value;
  if (D.40436 != 0B) goto <D.40450>; else goto <D.40451>;
  <D.40450>:
  D.40436 = attr->a_value;
  ptime = atoi (D.40436);
  goto <D.40036>;
  <D.40451>:
  <D.40449>:
  <D.40035>:
  attr = attr->a_next;
  <D.40038>:
  if (attr != 0B) goto <D.40037>; else goto <D.40036>;
  <D.40036>:
  D.40437 = m->m_type;
  D.40452 = D.40437 != 2;
  D.40453 = map->rm_encoding;
  D.40454 = map->rm_fmtp;
  D.40455 = map->rm_pt;
  D.40456 = (uint32_t) D.40455;
  D.40457 = map->rm_rate;
  ptime.5 = (uint32_t) ptime;
  switch_core_media_add_payload_map (session, D.40452, D.40453, D.40454, sdp_type, D.40456, D.40457, ptime.5, 0);
  map = map->rm_next;
  <D.40040>:
  if (map != 0B) goto <D.40039>; else goto <D.40041>;
  <D.40041>:
  <D.40443>:
  <D.40440>:
  m = m->m_next;
  <D.40043>:
  if (m != 0B) goto <D.40042>; else goto <D.40044>;
  <D.40044>:
  m = sdp->sdp_media;
  goto <D.40078>;
  <D.40077>:
  ptime = dptime;
  D.40437 = m->m_type;
  if (D.40437 == 8) goto <D.40461>; else goto <D.40459>;
  <D.40461>:
  D.40441 = m->m_port;
  if (D.40441 != 0) goto <D.40462>; else goto <D.40459>;
  <D.40462>:
  D.40463 = strlen (&buf);
  D.40464 = &buf + D.40463;
  D.40465 = strlen (&buf);
  D.40466 = 1024 - D.40465;
  switch_snprintf (D.40464, D.40466, ",t38");
  goto <D.40460>;
  <D.40459>:
  D.40437 = m->m_type;
  if (D.40437 == 2) goto <D.40469>; else goto <D.40467>;
  <D.40469>:
  D.40441 = m->m_port;
  if (D.40441 != 0) goto <D.40470>; else goto <D.40467>;
  <D.40470>:
  attr = m->m_attributes;
  goto <D.40048>;
  <D.40047>:
  D.40429 = attr->a_name;
  D.40471 = _zstr (D.40429);
  if (D.40471 != 0) goto <D.40472>; else goto <D.40473>;
  <D.40472>:
  // predicted unlikely by continue predictor.
  goto <D.40045>;
  <D.40473>:
  D.40429 = attr->a_name;
  D.40474 = strcasecmp (D.40429, "ptime");
  if (D.40474 == 0) goto <D.40475>; else goto <D.40476>;
  <D.40475>:
  D.40436 = attr->a_value;
  if (D.40436 != 0B) goto <D.40477>; else goto <D.40478>;
  <D.40477>:
  D.40436 = attr->a_value;
  ptime = atoi (D.40436);
  goto <D.40046>;
  <D.40478>:
  <D.40476>:
  <D.40045>:
  attr = attr->a_next;
  <D.40048>:
  if (attr != 0B) goto <D.40047>; else goto <D.40046>;
  <D.40046>:
  connection = sdp->sdp_connection;
  D.40479 = m->m_connections;
  if (D.40479 != 0B) goto <D.40480>; else goto <D.40481>;
  <D.40480>:
  connection = m->m_connections;
  <D.40481>:
  if (connection == 0B) goto <D.40482>; else goto <D.40483>;
  <D.40482>:
  D.40484 = switch_channel_get_session (channel);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 8285, D.40484, 3, "Cannot find a c= line in the sdp at media or session level!\n");
  goto <D.40050>;
  <D.40483>:
  D.40487 = switch_channel_direction (channel);
  if (D.40487 == 0) goto <D.40485>; else goto <D.40488>;
  <D.40488>:
  if (prefer_sdp != 0) goto <D.40485>; else goto <D.40486>;
  <D.40485>:
  map = m->m_rtpmaps;
  goto <D.40057>;
  <D.40056>:
  D.40455 = map->rm_pt;
  D.40491 = (int) D.40455;
  if (D.40491 > 127) goto <D.40489>; else goto <D.40492>;
  <D.40492>:
  D.40455 = map->rm_pt;
  D.40491 = (int) D.40455;
  D.40493 = already_did[D.40491];
  if (D.40493 != 0) goto <D.40489>; else goto <D.40490>;
  <D.40489>:
  // predicted unlikely by continue predictor.
  goto <D.40051>;
  <D.40490>:
  i = 0;
  goto <D.40055>;
  <D.40054>:
  imp = codecs[i];
  D.40453 = map->rm_encoding;
  D.40497 = _zstr (D.40453);
  if (D.40497 != 0) goto <D.40494>; else goto <D.40498>;
  <D.40498>:
  D.40499 = smh->mparams;
  D.40500 = D.40499->ndlb;
  D.40501 = (int) D.40500;
  D.40502 = D.40501 & 1;
  D.40503 = (_Bool) D.40502;
  if (D.40503 != 0) goto <D.40494>; else goto <D.40495>;
  <D.40494>:
  D.40455 = map->rm_pt;
  D.40491 = (int) D.40455;
  if (D.40491 <= 95) goto <D.40504>; else goto <D.40495>;
  <D.40504>:
  D.40455 = map->rm_pt;
  D.40491 = (int) D.40455;
  D.40505 = imp->ianacode;
  D.40506 = (int) D.40505;
  match = D.40491 == D.40506;
  goto <D.40496>;
  <D.40495>:
  D.40453 = map->rm_encoding;
  if (D.40453 != 0B) goto <D.40507>; else goto <D.40508>;
  <D.40507>:
  D.40453 = map->rm_encoding;
  D.40509 = imp->iananame;
  D.40510 = strcasecmp (D.40453, D.40509);
  match = D.40510 == 0;
  goto <D.40511>;
  <D.40508>:
  match = 0;
  <D.40511>:
  <D.40496>:
  if (match != 0) goto <D.40512>; else goto <D.40513>;
  <D.40512>:
  add_audio_codec (map, ptime, &buf, 1024);
  goto <D.40053>;
  <D.40513>:
  i = i + 1;
  <D.40055>:
  if (i < num_codecs) goto <D.40054>; else goto <D.40053>;
  <D.40053>:
  <D.40051>:
  map = map->rm_next;
  <D.40057>:
  if (map != 0B) goto <D.40056>; else goto <D.40058>;
  <D.40058>:
  goto <D.40067>;
  <D.40486>:
  i = 0;
  goto <D.40066>;
  <D.40065>:
  imp = codecs[i];
  D.40516 = imp->codec_type;
  if (D.40516 != 0) goto <D.40514>; else goto <D.40517>;
  <D.40517>:
  D.40518 = imp->ianacode;
  D.40519 = (signed char) D.40518;
  if (D.40519 < 0) goto <D.40514>; else goto <D.40520>;
  <D.40520>:
  D.40518 = imp->ianacode;
  D.40521 = (int) D.40518;
  D.40522 = already_did[D.40521];
  if (D.40522 != 0) goto <D.40514>; else goto <D.40515>;
  <D.40514>:
  // predicted unlikely by continue predictor.
  goto <D.40060>;
  <D.40515>:
  map = m->m_rtpmaps;
  goto <D.40064>;
  <D.40063>:
  D.40455 = map->rm_pt;
  D.40491 = (int) D.40455;
  if (D.40491 > 127) goto <D.40523>; else goto <D.40525>;
  <D.40525>:
  D.40455 = map->rm_pt;
  D.40491 = (int) D.40455;
  D.40493 = already_did[D.40491];
  if (D.40493 != 0) goto <D.40523>; else goto <D.40524>;
  <D.40523>:
  // predicted unlikely by continue predictor.
  goto <D.40061>;
  <D.40524>:
  D.40453 = map->rm_encoding;
  D.40529 = _zstr (D.40453);
  if (D.40529 != 0) goto <D.40526>; else goto <D.40530>;
  <D.40530>:
  D.40499 = smh->mparams;
  D.40500 = D.40499->ndlb;
  D.40501 = (int) D.40500;
  D.40502 = D.40501 & 1;
  D.40503 = (_Bool) D.40502;
  if (D.40503 != 0) goto <D.40526>; else goto <D.40527>;
  <D.40526>:
  D.40455 = map->rm_pt;
  D.40491 = (int) D.40455;
  if (D.40491 <= 95) goto <D.40531>; else goto <D.40527>;
  <D.40531>:
  D.40455 = map->rm_pt;
  D.40491 = (int) D.40455;
  D.40518 = imp->ianacode;
  D.40521 = (int) D.40518;
  match = D.40491 == D.40521;
  goto <D.40528>;
  <D.40527>:
  D.40453 = map->rm_encoding;
  if (D.40453 != 0B) goto <D.40532>; else goto <D.40533>;
  <D.40532>:
  D.40453 = map->rm_encoding;
  D.40534 = imp->iananame;
  D.40535 = strcasecmp (D.40453, D.40534);
  match = D.40535 == 0;
  goto <D.40536>;
  <D.40533>:
  match = 0;
  <D.40536>:
  <D.40528>:
  if (match != 0) goto <D.40537>; else goto <D.40538>;
  <D.40537>:
  add_audio_codec (map, ptime, &buf, 1024);
  goto <D.40062>;
  <D.40538>:
  <D.40061>:
  map = map->rm_next;
  <D.40064>:
  if (map != 0B) goto <D.40063>; else goto <D.40062>;
  <D.40062>:
  <D.40060>:
  i = i + 1;
  <D.40066>:
  if (i < num_codecs) goto <D.40065>; else goto <D.40067>;
  <D.40067>:
  goto <D.40468>;
  <D.40467>:
  D.40437 = m->m_type;
  if (D.40437 == 3) goto <D.40539>; else goto <D.40540>;
  <D.40539>:
  D.40441 = m->m_port;
  if (D.40441 != 0) goto <D.40541>; else goto <D.40542>;
  <D.40541>:
  connection = sdp->sdp_connection;
  D.40479 = m->m_connections;
  if (D.40479 != 0B) goto <D.40543>; else goto <D.40544>;
  <D.40543>:
  connection = m->m_connections;
  <D.40544>:
  if (connection == 0B) goto <D.40545>; else goto <D.40546>;
  <D.40545>:
  D.40547 = switch_channel_get_session (channel);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 8352, D.40547, 3, "Cannot find a c= line in the sdp at media or session level!\n");
  goto <D.40050>;
  <D.40546>:
  i = 0;
  goto <D.40075>;
  <D.40074>:
  imp = codecs[i];
  D.40550 = imp->codec_type;
  if (D.40550 != 1) goto <D.40548>; else goto <D.40551>;
  <D.40551>:
  D.40552 = imp->ianacode;
  D.40553 = (signed char) D.40552;
  if (D.40553 < 0) goto <D.40548>; else goto <D.40554>;
  <D.40554>:
  D.40552 = imp->ianacode;
  D.40555 = (int) D.40552;
  D.40556 = already_did[D.40555];
  if (D.40556 != 0) goto <D.40548>; else goto <D.40549>;
  <D.40548>:
  // predicted unlikely by continue predictor.
  goto <D.40069>;
  <D.40549>:
  D.40557 = session->channel;
  D.40558 = switch_channel_direction (D.40557);
  if (D.40558 == 0) goto <D.40559>; else goto <D.40560>;
  <D.40559>:
  D.40557 = session->channel;
  D.40561 = switch_channel_test_flag (D.40557, 114);
  if (D.40561 != 0) goto <D.40562>; else goto <D.40563>;
  <D.40562>:
  // predicted unlikely by continue predictor.
  goto <D.40069>;
  <D.40563>:
  <D.40560>:
  map = m->m_rtpmaps;
  goto <D.40073>;
  <D.40072>:
  D.40455 = map->rm_pt;
  D.40491 = (int) D.40455;
  if (D.40491 > 127) goto <D.40564>; else goto <D.40566>;
  <D.40566>:
  D.40455 = map->rm_pt;
  D.40491 = (int) D.40455;
  D.40493 = already_did[D.40491];
  if (D.40493 != 0) goto <D.40564>; else goto <D.40565>;
  <D.40564>:
  // predicted unlikely by continue predictor.
  goto <D.40070>;
  <D.40565>:
  D.40453 = map->rm_encoding;
  D.40570 = _zstr (D.40453);
  if (D.40570 != 0) goto <D.40567>; else goto <D.40571>;
  <D.40571>:
  D.40499 = smh->mparams;
  D.40500 = D.40499->ndlb;
  D.40501 = (int) D.40500;
  D.40502 = D.40501 & 1;
  D.40503 = (_Bool) D.40502;
  if (D.40503 != 0) goto <D.40567>; else goto <D.40568>;
  <D.40567>:
  D.40455 = map->rm_pt;
  D.40491 = (int) D.40455;
  if (D.40491 <= 95) goto <D.40572>; else goto <D.40568>;
  <D.40572>:
  D.40455 = map->rm_pt;
  D.40491 = (int) D.40455;
  D.40552 = imp->ianacode;
  D.40555 = (int) D.40552;
  match = D.40491 == D.40555;
  goto <D.40569>;
  <D.40568>:
  D.40453 = map->rm_encoding;
  if (D.40453 != 0B) goto <D.40573>; else goto <D.40574>;
  <D.40573>:
  D.40453 = map->rm_encoding;
  D.40575 = imp->iananame;
  D.40576 = strcasecmp (D.40453, D.40575);
  match = D.40576 == 0;
  goto <D.40577>;
  <D.40574>:
  match = 0;
  <D.40577>:
  <D.40569>:
  if (match != 0) goto <D.40578>; else goto <D.40579>;
  <D.40578>:
  if (ptime > 0) goto <D.40580>; else goto <D.40581>;
  <D.40580>:
  D.40582 = strlen (&buf);
  D.40583 = &buf + D.40582;
  D.40584 = strlen (&buf);
  D.40585 = 1024 - D.40584;
  D.40575 = imp->iananame;
  D.40457 = map->rm_rate;
  switch_snprintf (D.40583, D.40585, ",%s@%uh@%di", D.40575, D.40457, ptime);
  goto <D.40586>;
  <D.40581>:
  D.40587 = strlen (&buf);
  D.40588 = &buf + D.40587;
  D.40589 = strlen (&buf);
  D.40590 = 1024 - D.40589;
  D.40575 = imp->iananame;
  D.40457 = map->rm_rate;
  switch_snprintf (D.40588, D.40590, ",%s@%uh", D.40575, D.40457);
  <D.40586>:
  D.40552 = imp->ianacode;
  D.40555 = (int) D.40552;
  already_did[D.40555] = 1;
  goto <D.40071>;
  <D.40579>:
  <D.40070>:
  map = map->rm_next;
  <D.40073>:
  if (map != 0B) goto <D.40072>; else goto <D.40071>;
  <D.40071>:
  <D.40069>:
  i = i + 1;
  <D.40075>:
  if (i < num_codecs) goto <D.40074>; else goto <D.40076>;
  <D.40076>:
  <D.40542>:
  <D.40540>:
  <D.40468>:
  <D.40460>:
  m = m->m_next;
  <D.40078>:
  if (m != 0B) goto <D.40077>; else goto <D.40050>;
  <D.40050>:
  D.40591 = buf[0];
  if (D.40591 == 44) goto <D.40592>; else goto <D.40593>;
  <D.40592>:
  switch_channel_set_variable_var_check (channel, "ep_codec_string", &buf[1], 1);
  <D.40593>:
  <D.40594>:
  return;
}



;; Function switch_true (switch_true)

switch_true (const char * expr)
{
  int D.40617;
  switch_bool_t D.40615;
  int D.40613;
  int D.40611;
  int D.40609;
  int D.40607;
  int D.40605;
  int D.40603;
  int D.40601;
  int iftmp.6;
  int D.40595;

  if (expr != 0B) goto <D.40600>; else goto <D.40597>;
  <D.40600>:
  D.40601 = strcasecmp (expr, "yes");
  if (D.40601 == 0) goto <D.40598>; else goto <D.40602>;
  <D.40602>:
  D.40603 = strcasecmp (expr, "on");
  if (D.40603 == 0) goto <D.40598>; else goto <D.40604>;
  <D.40604>:
  D.40605 = strcasecmp (expr, "true");
  if (D.40605 == 0) goto <D.40598>; else goto <D.40606>;
  <D.40606>:
  D.40607 = strcasecmp (expr, "t");
  if (D.40607 == 0) goto <D.40598>; else goto <D.40608>;
  <D.40608>:
  D.40609 = strcasecmp (expr, "enabled");
  if (D.40609 == 0) goto <D.40598>; else goto <D.40610>;
  <D.40610>:
  D.40611 = strcasecmp (expr, "active");
  if (D.40611 == 0) goto <D.40598>; else goto <D.40612>;
  <D.40612>:
  D.40613 = strcasecmp (expr, "allow");
  if (D.40613 == 0) goto <D.40598>; else goto <D.40614>;
  <D.40614>:
  D.40615 = switch_is_number (expr);
  if (D.40615 != 0) goto <D.40616>; else goto <D.40597>;
  <D.40616>:
  D.40617 = atoi (expr);
  if (D.40617 != 0) goto <D.40598>; else goto <D.40597>;
  <D.40598>:
  iftmp.6 = 1;
  goto <D.40599>;
  <D.40597>:
  iftmp.6 = 0;
  <D.40599>:
  D.40595 = iftmp.6;
  goto <D.40618>;
  <D.40618>:
  return D.40595;
}



;; Function switch_core_media_find_zrtp_hash (switch_core_media_find_zrtp_hash)

switch_core_media_find_zrtp_hash (struct switch_core_session_t * session, struct sdp_session_t * sdp)
{
  static const char __func__[33] = "switch_core_media_find_zrtp_hash";
  int got_video;
  int got_audio;
  struct sdp_attribute_t * attr;
  struct sdp_media_t * m;
  struct switch_rtp_engine_t * video_engine;
  struct switch_rtp_engine_t * audio_engine;
  struct switch_channel_t * channel;
  char * D.40656;
  struct switch_core_session_t * D.40655;
  char * D.40651;
  struct switch_core_session_t * D.40650;
  const char * D.40647;
  int D.40645;
  int D.40640;
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

  channel = switch_core_session_get_channel (session);
  got_audio = 0;
  got_video = 0;
  D.40619 = session->media_handle;
  if (D.40619 == 0B) goto <D.40620>; else goto <D.40621>;
  <D.40620>:
  goto <D.40657>;
  <D.40621>:
  D.40619 = session->media_handle;
  audio_engine = &D.40619->engines;
  D.40619 = session->media_handle;
  video_engine = &D.40619->engines[1];
  D.40622 = switch_channel_get_session (channel);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 334, D.40622, 101, "Looking for zrtp-hash\n");
  m = sdp->sdp_media;
  goto <D.38386>;
  <D.38385>:
  D.40623 = got_audio != 0;
  D.40624 = got_video != 0;
  D.40625 = D.40623 && D.40624;
  if (D.40625 != 0) goto <D.38380>; else goto <D.40626>;
  <D.40626>:
  D.40628 = m->m_port;
  if (D.40628 != 0) goto <D.40629>; else goto <D.40630>;
  <D.40629>:
  D.40631 = m->m_type;
  D.40632 = D.40631 == 2;
  D.40633 = got_audio == 0;
  D.40634 = D.40632 && D.40633;
  if (D.40634 != 0) goto <D.40627>; else goto <D.40635>;
  <D.40635>:
  D.40631 = m->m_type;
  D.40636 = D.40631 == 3;
  D.40637 = got_video == 0;
  D.40638 = D.40636 && D.40637;
  if (D.40638 != 0) goto <D.40627>; else goto <D.38382>;
  <D.40627>:
  attr = m->m_attributes;
  goto <D.38384>;
  <D.38383>:
  D.40639 = attr->a_name;
  D.40640 = _zstr (D.40639);
  if (D.40640 != 0) goto <D.40641>; else goto <D.40642>;
  <D.40641>:
  // predicted unlikely by continue predictor.
  goto <D.38381>;
  <D.40642>:
  D.40639 = attr->a_name;
  D.40645 = strcasecmp (D.40639, "zrtp-hash");
  if (D.40645 != 0) goto <D.40643>; else goto <D.40646>;
  <D.40646>:
  D.40647 = attr->a_value;
  if (D.40647 == 0B) goto <D.40643>; else goto <D.40644>;
  <D.40643>:
  // predicted unlikely by continue predictor.
  goto <D.38381>;
  <D.40644>:
  D.40631 = m->m_type;
  if (D.40631 == 2) goto <D.40648>; else goto <D.40649>;
  <D.40648>:
  D.40650 = switch_channel_get_session (channel);
  D.40647 = attr->a_value;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 343, D.40650, 7, "Found audio zrtp-hash; setting r_sdp_audio_zrtp_hash=%s\n", D.40647);
  D.40647 = attr->a_value;
  switch_channel_set_variable_var_check (channel, "r_sdp_audio_zrtp_hash", D.40647, 1);
  D.40647 = attr->a_value;
  D.40651 = switch_core_perform_session_strdup (session, D.40647, "src/switch_core_media.c", &__func__, 346);
  audio_engine->remote_sdp_zrtp_hash = D.40651;
  got_audio = got_audio + 1;
  goto <D.40652>;
  <D.40649>:
  D.40631 = m->m_type;
  if (D.40631 == 3) goto <D.40653>; else goto <D.40654>;
  <D.40653>:
  D.40655 = switch_channel_get_session (channel);
  D.40647 = attr->a_value;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 349, D.40655, 7, "Found video zrtp-hash; setting r_sdp_video_zrtp_hash=%s\n", D.40647);
  D.40647 = attr->a_value;
  switch_channel_set_variable_var_check (channel, "r_sdp_video_zrtp_hash", D.40647, 1);
  D.40647 = attr->a_value;
  D.40656 = switch_core_perform_session_strdup (session, D.40647, "src/switch_core_media.c", &__func__, 352);
  video_engine->remote_sdp_zrtp_hash = D.40656;
  got_video = got_video + 1;
  <D.40654>:
  <D.40652>:
  switch_channel_set_flag_value (channel, 75, 1);
  goto <D.38382>;
  <D.38381>:
  attr = attr->a_next;
  <D.38384>:
  if (attr != 0B) goto <D.38383>; else goto <D.38382>;
  <D.38382>:
  <D.40630>:
  m = m->m_next;
  <D.38386>:
  if (m != 0B) goto <D.38385>; else goto <D.38380>;
  <D.38380>:
  <D.40657>:
  return;
}



;; Function add_audio_codec (add_audio_codec)

add_audio_codec (struct sdp_rtpmap_t * map, int ptime, char * buf, switch_size_t buflen)
{
  struct switch_codec_fmtp_t codec_fmtp;
  char bitstr[20];
  char ratestr[20];
  char ptstr[20];
  uint32_t map_bit_rate;
  int codec_ms;
  switch_size_t D.40701;
  size_t D.40700;
  char * D.40699;
  size_t D.40698;
  int D.40689;
  int D.40686;
  switch_status_t D.40683;
  long unsigned int D.40682;
  int D.40678;
  int D.40674;
  int D.40671;
  const char * D.40670;
  int D.40667;
  unsigned char D.40664;
  uint32_t D.40663;
  uint32_t D.40662;
  <unnamed-unsigned:7> D.40661;
  const char * D.40660;

  codec_ms = ptime;
  map_bit_rate = 0;
  ptstr = "";
  ratestr = "";
  bitstr = "";
  codec_fmtp = {};
  if (codec_ms == 0) goto <D.40658>; else goto <D.40659>;
  <D.40658>:
  D.40660 = map->rm_encoding;
  D.40661 = map->rm_pt;
  D.40662 = (uint32_t) D.40661;
  D.40663 = switch_default_ptime (D.40660, D.40662);
  codec_ms = (int) D.40663;
  <D.40659>:
  D.40661 = map->rm_pt;
  D.40664 = (unsigned char) D.40661;
  map_bit_rate = switch_known_bitrate (D.40664);
  if (ptime == 0) goto <D.40665>; else goto <D.40666>;
  <D.40665>:
  D.40660 = map->rm_encoding;
  D.40667 = strcasecmp (D.40660, "g723");
  if (D.40667 == 0) goto <D.40668>; else goto <D.40669>;
  <D.40668>:
  codec_ms = 30;
  ptime = codec_ms;
  <D.40669>:
  <D.40666>:
  D.40670 = map->rm_fmtp;
  D.40671 = _zstr (D.40670);
  if (D.40671 != 0) goto <D.40672>; else goto <D.40673>;
  <D.40672>:
  D.40660 = map->rm_encoding;
  D.40674 = strcasecmp (D.40660, "ilbc");
  if (D.40674 == 0) goto <D.40675>; else goto <D.40676>;
  <D.40675>:
  codec_ms = 30;
  ptime = codec_ms;
  map_bit_rate = 13330;
  goto <D.40677>;
  <D.40676>:
  D.40660 = map->rm_encoding;
  D.40678 = strcasecmp (D.40660, "isac");
  if (D.40678 == 0) goto <D.40679>; else goto <D.40680>;
  <D.40679>:
  codec_ms = 30;
  ptime = codec_ms;
  map_bit_rate = 32000;
  <D.40680>:
  <D.40677>:
  goto <D.40681>;
  <D.40673>:
  D.40660 = map->rm_encoding;
  D.40670 = map->rm_fmtp;
  D.40682 = map->rm_rate;
  D.40683 = switch_core_codec_parse_fmtp (D.40660, D.40670, D.40682, &codec_fmtp);
  if (D.40683 == 0) goto <D.40684>; else goto <D.40685>;
  <D.40684>:
  D.40686 = codec_fmtp.bits_per_second;
  if (D.40686 != 0) goto <D.40687>; else goto <D.40688>;
  <D.40687>:
  D.40686 = codec_fmtp.bits_per_second;
  map_bit_rate = (uint32_t) D.40686;
  <D.40688>:
  D.40689 = codec_fmtp.microseconds_per_packet;
  if (D.40689 != 0) goto <D.40690>; else goto <D.40691>;
  <D.40690>:
  D.40689 = codec_fmtp.microseconds_per_packet;
  codec_ms = D.40689 / 1000;
  <D.40691>:
  <D.40685>:
  <D.40681>:
  D.40682 = map->rm_rate;
  if (D.40682 != 0) goto <D.40692>; else goto <D.40693>;
  <D.40692>:
  D.40682 = map->rm_rate;
  switch_snprintf (&ratestr, 20, "@%uh", D.40682);
  <D.40693>:
  if (codec_ms != 0) goto <D.40694>; else goto <D.40695>;
  <D.40694>:
  switch_snprintf (&ptstr, 20, "@%di", codec_ms);
  <D.40695>:
  if (map_bit_rate != 0) goto <D.40696>; else goto <D.40697>;
  <D.40696>:
  switch_snprintf (&bitstr, 20, "@%db", map_bit_rate);
  <D.40697>:
  D.40698 = strlen (buf);
  D.40699 = buf + D.40698;
  D.40700 = strlen (buf);
  D.40701 = buflen - D.40700;
  D.40660 = map->rm_encoding;
  switch_snprintf (D.40699, D.40701, ",%s%s%s%s", D.40660, &ratestr, &ptstr, &bitstr);
  return;
}



;; Function switch_known_bitrate (switch_known_bitrate)

switch_known_bitrate (switch_payload_t payload)
{
  uint32_t D.40703;
  int D.40702;

  D.40702 = (int) payload;
  switch (D.40702) <default: <D.10681>, case 0: <D.10674>, case 3: <D.10675>, case 4: <D.10676>, case 7: <D.10677>, case 8: <D.10678>, case 9: <D.10679>, case 18: <D.10680>>
  <D.10674>:
  D.40703 = 64000;
  goto <D.40704>;
  <D.10675>:
  D.40703 = 13200;
  goto <D.40704>;
  <D.10676>:
  D.40703 = 6300;
  goto <D.40704>;
  <D.10677>:
  D.40703 = 2400;
  goto <D.40704>;
  <D.10678>:
  D.40703 = 64000;
  goto <D.40704>;
  <D.10679>:
  D.40703 = 64000;
  goto <D.40704>;
  <D.10680>:
  D.40703 = 8000;
  goto <D.40704>;
  <D.10681>:
  goto <D.10682>;
  <D.10682>:
  D.40703 = 0;
  goto <D.40704>;
  <D.40704>:
  return D.40703;
}



;; Function switch_core_media_get_jb (switch_core_media_get_jb)

switch_core_media_get_jb (struct switch_core_session_t * session, switch_media_type_t type)
{
  static const char __PRETTY_FUNCTION__[25] = "switch_core_media_get_jb";
  struct switch_media_handle_t * smh;
  uint8_t D.40712;
  struct switch_rtp_t * D.40711;
  struct stfu_instance_t * D.40710;

  if (session == 0B) goto <D.40706>; else goto <D.40707>;
  <D.40706>:
  __assert_fail ("session", "src/switch_core_media.c", 8084, &__PRETTY_FUNCTION__);
  <D.40707>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.40708>; else goto <D.40709>;
  <D.40708>:
  D.40710 = 0B;
  goto <D.40715>;
  <D.40709>:
  D.40711 = smh->engines[type].rtp_session;
  D.40712 = switch_rtp_ready (D.40711);
  if (D.40712 != 0) goto <D.40713>; else goto <D.40714>;
  <D.40713>:
  D.40711 = smh->engines[type].rtp_session;
  D.40710 = switch_rtp_get_jitter_buffer (D.40711);
  goto <D.40715>;
  <D.40714>:
  D.40710 = 0B;
  goto <D.40715>;
  <D.40715>:
  return D.40710;
}



;; Function switch_core_media_udptl_mode (switch_core_media_udptl_mode)

switch_core_media_udptl_mode (struct switch_core_session_t * session, switch_media_type_t type)
{
  static const char __PRETTY_FUNCTION__[29] = "switch_core_media_udptl_mode";
  struct switch_media_handle_t * smh;
  uint8_t D.40722;
  struct switch_rtp_t * D.40721;
  switch_status_t D.40720;

  if (session == 0B) goto <D.40716>; else goto <D.40717>;
  <D.40716>:
  __assert_fail ("session", "src/switch_core_media.c", 8066, &__PRETTY_FUNCTION__);
  <D.40717>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.40718>; else goto <D.40719>;
  <D.40718>:
  D.40720 = 1;
  goto <D.40725>;
  <D.40719>:
  D.40721 = smh->engines[type].rtp_session;
  D.40722 = switch_rtp_ready (D.40721);
  if (D.40722 != 0) goto <D.40723>; else goto <D.40724>;
  <D.40723>:
  D.40721 = smh->engines[type].rtp_session;
  D.40720 = switch_rtp_udptl_mode (D.40721);
  goto <D.40725>;
  <D.40724>:
  D.40720 = 1;
  goto <D.40725>;
  <D.40725>:
  return D.40720;
}



;; Function switch_core_media_get_stats (switch_core_media_get_stats)

switch_core_media_get_stats (struct switch_core_session_t * session, switch_media_type_t type, struct switch_memory_pool_t * pool)
{
  static const char __PRETTY_FUNCTION__[28] = "switch_core_media_get_stats";
  struct switch_media_handle_t * smh;
  struct switch_rtp_t * D.40731;
  struct switch_rtp_stats_t * D.40730;

  if (session == 0B) goto <D.40726>; else goto <D.40727>;
  <D.40726>:
  __assert_fail ("session", "src/switch_core_media.c", 8048, &__PRETTY_FUNCTION__);
  <D.40727>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.40728>; else goto <D.40729>;
  <D.40728>:
  D.40730 = 0B;
  goto <D.40734>;
  <D.40729>:
  D.40731 = smh->engines[type].rtp_session;
  if (D.40731 != 0B) goto <D.40732>; else goto <D.40733>;
  <D.40732>:
  D.40731 = smh->engines[type].rtp_session;
  D.40730 = switch_rtp_get_stats (D.40731, pool);
  goto <D.40734>;
  <D.40733>:
  D.40730 = 0B;
  goto <D.40734>;
  <D.40734>:
  return D.40730;
}



;; Function switch_core_media_set_telephony_recv_event (switch_core_media_set_telephony_recv_event)

switch_core_media_set_telephony_recv_event (struct switch_core_session_t * session, switch_media_type_t type, switch_payload_t te)
{
  static const char __PRETTY_FUNCTION__[43] = "switch_core_media_set_telephony_recv_event";
  struct switch_media_handle_t * smh;
  uint8_t D.40740;
  struct switch_rtp_t * D.40739;

  if (session == 0B) goto <D.40735>; else goto <D.40736>;
  <D.40735>:
  __assert_fail ("session", "src/switch_core_media.c", 8032, &__PRETTY_FUNCTION__);
  <D.40736>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.40737>; else goto <D.40738>;
  <D.40737>:
  goto <D.40743>;
  <D.40738>:
  D.40739 = smh->engines[type].rtp_session;
  D.40740 = switch_rtp_ready (D.40739);
  if (D.40740 != 0) goto <D.40741>; else goto <D.40742>;
  <D.40741>:
  D.40739 = smh->engines[type].rtp_session;
  switch_rtp_set_telephony_recv_event (D.40739, te);
  <D.40742>:
  <D.40743>:
  return;
}



;; Function switch_core_media_set_telephony_event (switch_core_media_set_telephony_event)

switch_core_media_set_telephony_event (struct switch_core_session_t * session, switch_media_type_t type, switch_payload_t te)
{
  static const char __PRETTY_FUNCTION__[38] = "switch_core_media_set_telephony_event";
  struct switch_media_handle_t * smh;
  uint8_t D.40749;
  struct switch_rtp_t * D.40748;

  if (session == 0B) goto <D.40744>; else goto <D.40745>;
  <D.40744>:
  __assert_fail ("session", "src/switch_core_media.c", 8016, &__PRETTY_FUNCTION__);
  <D.40745>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.40746>; else goto <D.40747>;
  <D.40746>:
  goto <D.40752>;
  <D.40747>:
  D.40748 = smh->engines[type].rtp_session;
  D.40749 = switch_rtp_ready (D.40748);
  if (D.40749 != 0) goto <D.40750>; else goto <D.40751>;
  <D.40750>:
  D.40748 = smh->engines[type].rtp_session;
  switch_rtp_set_telephony_event (D.40748, te);
  <D.40751>:
  <D.40752>:
  return;
}



;; Function switch_core_media_clear_rtp_flag (switch_core_media_clear_rtp_flag)

switch_core_media_clear_rtp_flag (struct switch_core_session_t * session, switch_media_type_t type, switch_rtp_flag_t flag)
{
  static const char __PRETTY_FUNCTION__[33] = "switch_core_media_clear_rtp_flag";
  struct switch_media_handle_t * smh;
  uint8_t D.40758;
  struct switch_rtp_t * D.40757;

  if (session == 0B) goto <D.40753>; else goto <D.40754>;
  <D.40753>:
  __assert_fail ("session", "src/switch_core_media.c", 8000, &__PRETTY_FUNCTION__);
  <D.40754>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.40755>; else goto <D.40756>;
  <D.40755>:
  goto <D.40761>;
  <D.40756>:
  D.40757 = smh->engines[type].rtp_session;
  D.40758 = switch_rtp_ready (D.40757);
  if (D.40758 != 0) goto <D.40759>; else goto <D.40760>;
  <D.40759>:
  D.40757 = smh->engines[type].rtp_session;
  switch_rtp_clear_flag (D.40757, flag);
  <D.40760>:
  <D.40761>:
  return;
}



;; Function switch_core_media_set_rtp_flag (switch_core_media_set_rtp_flag)

switch_core_media_set_rtp_flag (struct switch_core_session_t * session, switch_media_type_t type, switch_rtp_flag_t flag)
{
  static const char __PRETTY_FUNCTION__[31] = "switch_core_media_set_rtp_flag";
  struct switch_media_handle_t * smh;
  uint8_t D.40767;
  struct switch_rtp_t * D.40766;

  if (session == 0B) goto <D.40762>; else goto <D.40763>;
  <D.40762>:
  __assert_fail ("session", "src/switch_core_media.c", 7984, &__PRETTY_FUNCTION__);
  <D.40763>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.40764>; else goto <D.40765>;
  <D.40764>:
  goto <D.40770>;
  <D.40765>:
  D.40766 = smh->engines[type].rtp_session;
  D.40767 = switch_rtp_ready (D.40766);
  if (D.40767 != 0) goto <D.40768>; else goto <D.40769>;
  <D.40768>:
  D.40766 = smh->engines[type].rtp_session;
  switch_rtp_set_flag (D.40766, flag);
  <D.40769>:
  <D.40770>:
  return;
}



;; Function switch_core_media_ready (switch_core_media_ready)

switch_core_media_ready (struct switch_core_session_t * session, switch_media_type_t type)
{
  static const char __PRETTY_FUNCTION__[24] = "switch_core_media_ready";
  struct switch_media_handle_t * smh;
  struct switch_rtp_t * D.40776;
  uint8_t D.40775;

  if (session == 0B) goto <D.40771>; else goto <D.40772>;
  <D.40771>:
  __assert_fail ("session", "src/switch_core_media.c", 7970, &__PRETTY_FUNCTION__);
  <D.40772>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.40773>; else goto <D.40774>;
  <D.40773>:
  D.40775 = 0;
  goto <D.40777>;
  <D.40774>:
  D.40776 = smh->engines[type].rtp_session;
  D.40775 = switch_rtp_ready (D.40776);
  goto <D.40777>;
  <D.40777>:
  return D.40775;
}



;; Function switch_core_media_queue_rfc2833_in (switch_core_media_queue_rfc2833_in)

switch_core_media_queue_rfc2833_in (struct switch_core_session_t * session, switch_media_type_t type, const struct switch_dtmf_t * dtmf)
{
  static const char __PRETTY_FUNCTION__[35] = "switch_core_media_queue_rfc2833_in";
  struct switch_media_handle_t * smh;
  uint8_t D.40784;
  struct switch_rtp_t * D.40783;
  switch_status_t D.40782;

  if (session == 0B) goto <D.40778>; else goto <D.40779>;
  <D.40778>:
  __assert_fail ("session", "src/switch_core_media.c", 7952, &__PRETTY_FUNCTION__);
  <D.40779>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.40780>; else goto <D.40781>;
  <D.40780>:
  D.40782 = 1;
  goto <D.40787>;
  <D.40781>:
  D.40783 = smh->engines[type].rtp_session;
  D.40784 = switch_rtp_ready (D.40783);
  if (D.40784 != 0) goto <D.40785>; else goto <D.40786>;
  <D.40785>:
  D.40783 = smh->engines[type].rtp_session;
  D.40782 = switch_rtp_queue_rfc2833_in (D.40783, dtmf);
  goto <D.40787>;
  <D.40786>:
  D.40782 = 1;
  goto <D.40787>;
  <D.40787>:
  return D.40782;
}



;; Function switch_core_media_queue_rfc2833 (switch_core_media_queue_rfc2833)

switch_core_media_queue_rfc2833 (struct switch_core_session_t * session, switch_media_type_t type, const struct switch_dtmf_t * dtmf)
{
  static const char __PRETTY_FUNCTION__[32] = "switch_core_media_queue_rfc2833";
  struct switch_media_handle_t * smh;
  uint8_t D.40794;
  struct switch_rtp_t * D.40793;
  switch_status_t D.40792;

  if (session == 0B) goto <D.40788>; else goto <D.40789>;
  <D.40788>:
  __assert_fail ("session", "src/switch_core_media.c", 7934, &__PRETTY_FUNCTION__);
  <D.40789>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.40790>; else goto <D.40791>;
  <D.40790>:
  D.40792 = 1;
  goto <D.40797>;
  <D.40791>:
  D.40793 = smh->engines[type].rtp_session;
  D.40794 = switch_rtp_ready (D.40793);
  if (D.40794 != 0) goto <D.40795>; else goto <D.40796>;
  <D.40795>:
  D.40793 = smh->engines[type].rtp_session;
  D.40792 = switch_rtp_queue_rfc2833 (D.40793, dtmf);
  goto <D.40797>;
  <D.40796>:
  D.40792 = 1;
  goto <D.40797>;
  <D.40797>:
  return D.40792;
}



;; Function switch_core_media_kill_socket (switch_core_media_kill_socket)

switch_core_media_kill_socket (struct switch_core_session_t * session, switch_media_type_t type)
{
  static const char __PRETTY_FUNCTION__[30] = "switch_core_media_kill_socket";
  struct switch_media_handle_t * smh;
  uint8_t D.40803;
  struct switch_rtp_t * D.40802;

  if (session == 0B) goto <D.40798>; else goto <D.40799>;
  <D.40798>:
  __assert_fail ("session", "src/switch_core_media.c", 7918, &__PRETTY_FUNCTION__);
  <D.40799>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.40800>; else goto <D.40801>;
  <D.40800>:
  goto <D.40806>;
  <D.40801>:
  D.40802 = smh->engines[type].rtp_session;
  D.40803 = switch_rtp_ready (D.40802);
  if (D.40803 != 0) goto <D.40804>; else goto <D.40805>;
  <D.40804>:
  D.40802 = smh->engines[type].rtp_session;
  switch_rtp_kill_socket (D.40802);
  <D.40805>:
  <D.40806>:
  return;
}



;; Function switch_core_media_break (switch_core_media_break)

switch_core_media_break (struct switch_core_session_t * session, switch_media_type_t type)
{
  static const char __PRETTY_FUNCTION__[24] = "switch_core_media_break";
  struct switch_media_handle_t * smh;
  uint8_t D.40812;
  struct switch_rtp_t * D.40811;

  if (session == 0B) goto <D.40807>; else goto <D.40808>;
  <D.40807>:
  __assert_fail ("session", "src/switch_core_media.c", 7902, &__PRETTY_FUNCTION__);
  <D.40808>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.40809>; else goto <D.40810>;
  <D.40809>:
  goto <D.40815>;
  <D.40810>:
  D.40811 = smh->engines[type].rtp_session;
  D.40812 = switch_rtp_ready (D.40811);
  if (D.40812 != 0) goto <D.40813>; else goto <D.40814>;
  <D.40813>:
  D.40811 = smh->engines[type].rtp_session;
  switch_rtp_break (D.40811);
  <D.40814>:
  <D.40815>:
  return;
}



;; Function switch_core_media_receive_message (switch_core_media_receive_message)

switch_core_media_receive_message (struct switch_core_session_t * session, struct switch_core_session_message_t * msg)
{
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
  const unsigned char * __s1;
  size_t __s2_len;
  size_t __s1_len;
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
  struct switch_rtp_engine_t * v_engine;
  struct switch_rtp_engine_t * a_engine;
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
  int D.41068;
  _Bool D.41065;
  _Bool D.41064;
  _Bool D.41063;
  const char * D.41058;
  int D.41055;
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
  int D.40980;
  uint8_t D.40974;
  uint32_t D.40971;
  int D.40964;
  switch_rtp_flag_t D.40961;
  switch_rtp_flag_t D.40960;
  int D.40959;
  switch_rtp_flag_t D.40955;
  switch_rtp_flag_t D.40954;
  int D.40953;
  int D.40949;
  int D.40946;
  const char * D.40945;
  int D.40942;
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
  long int D.40913;
  int D.40904;
  int D.40903;
  int D.40897;
  const unsigned char D.40896;
  char * D.40895;
  int D.40894;
  const unsigned char D.40893;
  const unsigned char * D.40892;
  _Bool D.40889;
  _Bool D.40888;
  int D.40887;
  const unsigned char D.40886;
  char * D.40885;
  int D.40884;
  const unsigned char D.40883;
  const unsigned char * D.40882;
  _Bool D.40879;
  _Bool D.40878;
  int D.40877;
  const unsigned char D.40876;
  char * D.40875;
  int D.40874;
  const unsigned char D.40873;
  const unsigned char * D.40872;
  _Bool D.40869;
  _Bool D.40868;
  _Bool D.40867;
  int D.40866;
  const unsigned char D.40865;
  char[4] * D.40864;
  int D.40863;
  const unsigned char D.40862;
  int D.39872;
  int iftmp.7;
  int D.39873;
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
  switch_status_t D.40820;

  status = 0;
  if (session == 0B) goto <D.40816>; else goto <D.40817>;
  <D.40816>:
  __assert_fail ("session", "src/switch_core_media.c", 7477, &__PRETTY_FUNCTION__);
  <D.40817>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.40818>; else goto <D.40819>;
  <D.40818>:
  D.40820 = 1;
  goto <D.41131>;
  <D.40819>:
  D.40823 = session->channel;
  D.40824 = switch_channel_check_signal (D.40823, 1);
  if (D.40824 != 0) goto <D.40821>; else goto <D.40825>;
  <D.40825>:
  D.40823 = session->channel;
  D.40826 = switch_channel_get_state (D.40823);
  if (D.40826 > 9) goto <D.40821>; else goto <D.40822>;
  <D.40821>:
  D.40820 = 1;
  goto <D.41131>;
  <D.40822>:
  a_engine = &smh->engines;
  v_engine = &smh->engines[1];
  D.40827 = msg->message_id;
  switch (D.40827) <default: <D.39894>, case 4: <D.39882>, case 5: <D.39885>, case 8: <D.39887>, case 9: <D.39888>, case 17: <D.39853>, case 19: <D.39881>, case 20: <D.39886>, case 24: <D.39875>, case 25: <D.39854>, case 32: <D.39855>, case 46: <D.39851>>
  <D.39851>:
  D.40823 = session->channel;
  D.40828 = switch_channel_test_flag (D.40823, 82);
  if (D.40828 != 0) goto <D.40829>; else goto <D.40830>;
  <D.40829>:
  D.40823 = session->channel;
  switch_channel_set_flag_value (D.40823, 122, 1);
  <D.40830>:
  goto <D.39852>;
  <D.39853>:
  D.40831 = v_engine->rtp_session;
  if (D.40831 != 0B) goto <D.40832>; else goto <D.40833>;
  <D.40832>:
  D.40831 = v_engine->rtp_session;
  switch_rtp_video_refresh (D.40831);
  <D.40833>:
  goto <D.39852>;
  <D.39854>:
  D.40834 = a_engine->rtp_session;
  D.40835 = switch_rtp_ready (D.40834);
  if (D.40835 != 0) goto <D.40836>; else goto <D.40837>;
  <D.40836>:
  D.40838 = msg->numeric_arg;
  if (D.40838 != 0) goto <D.40839>; else goto <D.40840>;
  <D.40839>:
  D.40834 = a_engine->rtp_session;
  switch_rtp_set_flag (D.40834, 19);
  goto <D.40841>;
  <D.40840>:
  D.40834 = a_engine->rtp_session;
  switch_rtp_clear_flag (D.40834, 19);
  <D.40841>:
  <D.40837>:
  goto <D.39852>;
  <D.39855>:
  D.40834 = a_engine->rtp_session;
  D.40842 = switch_rtp_ready (D.40834);
  if (D.40842 != 0) goto <D.40843>; else goto <D.40844>;
  <D.40843>:
  len = 0;
  maxlen = 0;
  qlen = 0;
  maxqlen = 50;
  max_drift = 0;
  D.40845 = msg->string_arg;
  if (D.40845 != 0B) goto <D.40846>; else goto <D.40847>;
  <D.40846>:
  D.40845 = msg->string_arg;
  D.40848 = strcasecmp (D.40845, "pause");
  if (D.40848 == 0) goto <D.40849>; else goto <D.40850>;
  <D.40849>:
  D.40834 = a_engine->rtp_session;
  switch_rtp_pause_jitter_buffer (D.40834, 1);
  goto end;
  <D.40850>:
  D.40845 = msg->string_arg;
  D.40851 = strcasecmp (D.40845, "resume");
  if (D.40851 == 0) goto <D.40852>; else goto <D.40853>;
  <D.40852>:
  D.40834 = a_engine->rtp_session;
  switch_rtp_pause_jitter_buffer (D.40834, 0);
  goto end;
  <D.40853>:
  D.40845 = msg->string_arg;
  D.40854 = strncasecmp (D.40845, "debug:", 6);
  if (D.40854 == 0) goto <D.40855>; else goto <D.40856>;
  <D.40855>:
  D.40845 = msg->string_arg;
  s = D.40845 + 6;
  if (s != 0B) goto <D.40857>; else goto <D.40858>;
  <D.40857>:
  __s2_len = 3;
  if (__s2_len <= 3) goto <D.40860>; else goto <D.40861>;
  <D.40860>:
  __s1 = s;
  D.40862 = *__s1;
  D.40863 = (int) D.40862;
  D.40864 = "off";
  D.40865 = MEM[(const unsigned char *)D.40864];
  D.40866 = (int) D.40865;
  __result = D.40863 - D.40866;
  D.40867 = __s2_len != 0;
  D.40868 = __result == 0;
  D.40869 = D.40867 && D.40868;
  if (D.40869 != 0) goto <D.40870>; else goto <D.40871>;
  <D.40870>:
  D.40872 = __s1 + 1;
  D.40873 = *D.40872;
  D.40874 = (int) D.40873;
  D.40875 = &"off"[1];
  D.40876 = MEM[(const unsigned char *)D.40875];
  D.40877 = (int) D.40876;
  __result = D.40874 - D.40877;
  D.40878 = __s2_len > 1;
  D.40868 = __result == 0;
  D.40879 = D.40878 && D.40868;
  if (D.40879 != 0) goto <D.40880>; else goto <D.40881>;
  <D.40880>:
  D.40882 = __s1 + 2;
  D.40883 = *D.40882;
  D.40884 = (int) D.40883;
  D.40885 = &"off"[2];
  D.40886 = MEM[(const unsigned char *)D.40885];
  D.40887 = (int) D.40886;
  __result = D.40884 - D.40887;
  D.40888 = __s2_len > 2;
  D.40868 = __result == 0;
  D.40889 = D.40888 && D.40868;
  if (D.40889 != 0) goto <D.40890>; else goto <D.40891>;
  <D.40890>:
  D.40892 = __s1 + 3;
  D.40893 = *D.40892;
  D.40894 = (int) D.40893;
  D.40895 = &"off"[3];
  D.40896 = MEM[(const unsigned char *)D.40895];
  D.40897 = (int) D.40896;
  __result = D.40894 - D.40897;
  <D.40891>:
  <D.40881>:
  <D.40871>:
  D.39872 = __result;
  iftmp.7 = D.39872;
  goto <D.40898>;
  <D.40861>:
  iftmp.7 = __builtin_strcmp (s, "off");
  <D.40898>:
  D.39873 = iftmp.7;
  if (D.39873 == 0) goto <D.40899>; else goto <D.40900>;
  <D.40899>:
  s = 0B;
  <D.40900>:
  <D.40858>:
  D.40834 = a_engine->rtp_session;
  status = switch_rtp_debug_jitter_buffer (D.40834, s);
  goto end;
  <D.40856>:
  D.40845 = msg->string_arg;
  len = atoi (D.40845);
  if (len != 0) goto <D.40901>; else goto <D.40902>;
  <D.40901>:
  D.40903 = a_engine->read_impl.microseconds_per_packet;
  D.40904 = D.40903 / 1000;
  qlen = len / D.40904;
  if (qlen <= 0) goto <D.40905>; else goto <D.40906>;
  <D.40905>:
  qlen = 3;
  <D.40906>:
  <D.40902>:
  if (qlen != 0) goto <D.40907>; else goto <D.40908>;
  <D.40907>:
  D.40845 = msg->string_arg;
  p = __builtin_strchr (D.40845, 58);
  if (p != 0B) goto <D.40909>; else goto <D.40910>;
  <D.40909>:
  p = p + 1;
  maxlen = atol (p);
  q = __builtin_strchr (p, 58);
  if (q != 0B) goto <D.40911>; else goto <D.40912>;
  <D.40911>:
  q = q + 1;
  D.40913 = atol (q);
  max_drift = ABS_EXPR <D.40913>;
  <D.40912>:
  <D.40910>:
  <D.40908>:
  if (maxlen != 0) goto <D.40914>; else goto <D.40915>;
  <D.40914>:
  D.40903 = a_engine->read_impl.microseconds_per_packet;
  D.40904 = D.40903 / 1000;
  maxqlen = maxlen / D.40904;
  <D.40915>:
  <D.40847>:
  if (qlen != 0) goto <D.40916>; else goto <D.40917>;
  <D.40916>:
  if (maxqlen < qlen) goto <D.40918>; else goto <D.40919>;
  <D.40918>:
  maxqlen = qlen * 5;
  <D.40919>:
  D.40834 = a_engine->rtp_session;
  qlen.8 = (uint32_t) qlen;
  maxqlen.9 = (uint32_t) maxqlen;
  D.40922 = a_engine->read_impl.samples_per_packet;
  D.40923 = a_engine->read_impl.samples_per_second;
  max_drift.10 = (uint32_t) max_drift;
  D.40925 = switch_rtp_activate_jitter_buffer (D.40834, qlen.8, maxqlen.9, D.40922, D.40923, max_drift.10);
  if (D.40925 == 0) goto <D.40926>; else goto <D.40927>;
  <D.40926>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7577, session, 7, "Setting Jitterbuffer to %dms (%d frames) (%d max frames) (%d max drift)\n", len, qlen, maxqlen, max_drift);
  D.40823 = session->channel;
  switch_channel_set_flag_value (D.40823, 57, 1);
  D.40823 = session->channel;
  D.40928 = switch_channel_get_variable_dup (D.40823, "rtp_jitter_buffer_plc", 1, -1);
  D.40929 = switch_false (D.40928);
  if (D.40929 == 0) goto <D.40930>; else goto <D.40931>;
  <D.40930>:
  D.40823 = session->channel;
  switch_channel_set_flag_value (D.40823, 58, 1);
  <D.40931>:
  goto <D.40932>;
  <D.40927>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7585, session, 4, "Error Setting Jitterbuffer to %dms (%d frames)\n", len, qlen);
  <D.40932>:
  goto <D.40933>;
  <D.40917>:
  D.40834 = a_engine->rtp_session;
  switch_rtp_deactivate_jitter_buffer (D.40834);
  <D.40933>:
  <D.40844>:
  goto <D.39852>;
  <D.39875>:
  rtp = a_engine->rtp_session;
  direction = msg->string_array_arg[0];
  if (direction != 0B) goto <D.40934>; else goto <D.40935>;
  <D.40934>:
  D.40936 = *direction;
  if (D.40936 == 118) goto <D.40937>; else goto <D.40938>;
  <D.40937>:
  direction = direction + 1;
  rtp = v_engine->rtp_session;
  <D.40938>:
  <D.40935>:
  D.40939 = switch_rtp_ready (rtp);
  if (D.40939 != 0) goto <D.40940>; else goto <D.40941>;
  <D.40940>:
  D.40942 = _zstr (direction);
  if (D.40942 == 0) goto <D.40943>; else goto <D.40944>;
  <D.40943>:
  D.40945 = msg->string_array_arg[1];
  D.40946 = _zstr (D.40945);
  if (D.40946 == 0) goto <D.40947>; else goto <D.40948>;
  <D.40947>:
  flags = {};
  D.40949 = strcasecmp (direction, "both");
  both = D.40949 == 0;
  set = 0;
  if (both != 0) goto <D.40950>; else goto <D.40952>;
  <D.40952>:
  D.40953 = strcasecmp (direction, "read");
  if (D.40953 == 0) goto <D.40950>; else goto <D.40951>;
  <D.40950>:
  D.40954 = flags[28];
  D.40955 = D.40954 + 1;
  flags[28] = D.40955;
  set = set + 1;
  <D.40951>:
  if (both != 0) goto <D.40956>; else goto <D.40958>;
  <D.40958>:
  D.40959 = strcasecmp (direction, "write");
  if (D.40959 == 0) goto <D.40956>; else goto <D.40957>;
  <D.40956>:
  D.40960 = flags[29];
  D.40961 = D.40960 + 1;
  flags[29] = D.40961;
  set = set + 1;
  <D.40957>:
  if (set != 0) goto <D.40962>; else goto <D.40963>;
  <D.40962>:
  D.40945 = msg->string_array_arg[1];
  D.40964 = switch_true (D.40945);
  if (D.40964 != 0) goto <D.40965>; else goto <D.40966>;
  <D.40965>:
  switch_rtp_set_flags (rtp, &flags);
  goto <D.40967>;
  <D.40966>:
  switch_rtp_clear_flags (rtp, &flags);
  <D.40967>:
  goto <D.40968>;
  <D.40963>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7627, session, 3, "Invalid Options\n");
  <D.40968>:
  <D.40948>:
  <D.40944>:
  <D.40941>:
  goto end;
  <D.39881>:
  D.40834 = a_engine->rtp_session;
  if (D.40834 != 0B) goto <D.40969>; else goto <D.40970>;
  <D.40969>:
  D.40834 = a_engine->rtp_session;
  D.40971 = switch_rtp_test_flag (D.40834, 15);
  if (D.40971 != 0) goto <D.40972>; else goto <D.40973>;
  <D.40972>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7634, session, 4, "Pass 2833 mode may not work on a transcoded call.\n");
  <D.40973>:
  <D.40970>:
  goto end;
  <D.39882>:
  D.40834 = a_engine->rtp_session;
  D.40974 = switch_rtp_ready (D.40834);
  if (D.40974 != 0) goto <D.40975>; else goto <D.40976>;
  <D.40975>:
  ok = 0;
  D.40823 = session->channel;
  val = switch_channel_get_variable_dup (D.40823, "rtp_jitter_buffer_during_bridge", 1, -1);
  if (val == 0B) goto <D.40977>; else goto <D.40979>;
  <D.40979>:
  D.40980 = switch_false (val);
  if (D.40980 != 0) goto <D.40977>; else goto <D.40978>;
  <D.40977>:
  D.40823 = session->channel;
  D.40981 = switch_channel_test_flag (D.40823, 57);
  if (D.40981 != 0) goto <D.40982>; else goto <D.40983>;
  <D.40982>:
  D.40823 = session->channel;
  D.40984 = switch_channel_test_cap_partner (D.40823, 5);
  if (D.40984 != 0) goto <D.40985>; else goto <D.40986>;
  <D.40985>:
  D.40823 = session->channel;
  D.40987 = switch_channel_get_name (D.40823);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7647, session, 7, "%s PAUSE Jitterbuffer\n", D.40987);
  D.40834 = a_engine->rtp_session;
  switch_rtp_pause_jitter_buffer (D.40834, 1);
  D.40988 = smh->flags;
  D.40989 = D.40988 | 4;
  smh->flags = D.40989;
  <D.40986>:
  <D.40983>:
  <D.40978>:
  D.40823 = session->channel;
  D.40990 = switch_channel_test_flag (D.40823, 100);
  if (D.40990 != 0) goto <D.40991>; else goto <D.40992>;
  <D.40991>:
  D.40823 = session->channel;
  D.40993 = switch_channel_test_flag_partner (D.40823, 36);
  if (D.40993 != 0) goto <D.40994>; else goto <D.40995>;
  <D.40994>:
  D.40834 = a_engine->rtp_session;
  switch_rtp_set_flag (D.40834, 15);
  D.40823 = session->channel;
  D.40996 = switch_channel_get_name (D.40823);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7656, session, 7, "%s activate passthru 2833 mode.\n", D.40996);
  <D.40995>:
  <D.40992>:
  D.40823 = session->channel;
  val = switch_channel_get_variable_dup (D.40823, "rtp_notimer_during_bridge", 1, -1);
  if (val != 0B) goto <D.40997>; else goto <D.40998>;
  <D.40997>:
  ok = switch_true (val);
  goto <D.40999>;
  <D.40998>:
  D.40823 = session->channel;
  D.41000 = switch_channel_test_flag (D.40823, 105);
  ok = (int) D.41000;
  <D.40999>:
  if (ok != 0) goto <D.41001>; else goto <D.41002>;
  <D.41001>:
  D.40834 = a_engine->rtp_session;
  D.41003 = switch_rtp_test_flag (D.40834, 3);
  if (D.41003 == 0) goto <D.41004>; else goto <D.41005>;
  <D.41004>:
  ok = 0;
  <D.41005>:
  <D.41002>:
  if (ok != 0) goto <D.41006>; else goto <D.41007>;
  <D.41006>:
  D.40834 = a_engine->rtp_session;
  switch_rtp_clear_flag (D.40834, 3);
  D.40823 = session->channel;
  switch_channel_set_flag_value (D.40823, 99, 1);
  <D.41007>:
  if (ok != 0) goto <D.41010>; else goto <D.41008>;
  <D.41010>:
  D.40823 = session->channel;
  D.41011 = switch_channel_test_flag (D.40823, 99);
  if (D.41011 != 0) goto <D.41012>; else goto <D.41008>;
  <D.41012>:
  ok = 0;
  goto <D.41009>;
  <D.41008>:
  D.40823 = session->channel;
  val = switch_channel_get_variable_dup (D.40823, "rtp_autoflush_during_bridge", 1, -1);
  if (val != 0B) goto <D.41013>; else goto <D.41014>;
  <D.41013>:
  ok = switch_true (val);
  goto <D.41015>;
  <D.41014>:
  D.41016 = smh->media_flags[14];
  ok = (int) D.41016;
  <D.41015>:
  <D.41009>:
  if (ok != 0) goto <D.41017>; else goto <D.41018>;
  <D.41017>:
  D.40834 = a_engine->rtp_session;
  rtp_flush_read_buffer (D.40834, 1);
  D.40823 = session->channel;
  switch_channel_set_flag_value (D.40823, 104, 1);
  goto <D.41019>;
  <D.41018>:
  D.40834 = a_engine->rtp_session;
  rtp_flush_read_buffer (D.40834, 0);
  <D.41019>:
  <D.40976>:
  goto end;
  <D.39885>:
  D.40834 = a_engine->rtp_session;
  D.41020 = switch_rtp_ready (D.40834);
  if (D.41020 != 0) goto <D.41021>; else goto <D.41022>;
  <D.41021>:
  D.40988 = smh->flags;
  D.41023 = D.40988 & 4;
  if (D.41023 != 0) goto <D.41024>; else goto <D.41025>;
  <D.41024>:
  D.40988 = smh->flags;
  D.41026 = D.40988 & 4294967291;
  smh->flags = D.41026;
  D.40823 = session->channel;
  D.41027 = switch_channel_test_flag (D.40823, 57);
  if (D.41027 != 0) goto <D.41028>; else goto <D.41029>;
  <D.41028>:
  D.40823 = session->channel;
  D.41030 = switch_channel_get_name (D.40823);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7704, session, 7, "%s RESUME Jitterbuffer\n", D.41030);
  D.40834 = a_engine->rtp_session;
  switch_rtp_pause_jitter_buffer (D.40834, 0);
  <D.41029>:
  <D.41025>:
  D.40834 = a_engine->rtp_session;
  D.41031 = switch_rtp_test_flag (D.40834, 15);
  if (D.41031 != 0) goto <D.41032>; else goto <D.41033>;
  <D.41032>:
  D.40823 = session->channel;
  D.41034 = switch_channel_get_name (D.40823);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7712, session, 7, "%s deactivate passthru 2833 mode.\n", D.41034);
  D.40834 = a_engine->rtp_session;
  switch_rtp_clear_flag (D.40834, 15);
  <D.41033>:
  D.40823 = session->channel;
  D.41035 = switch_channel_test_flag (D.40823, 99);
  if (D.41035 != 0) goto <D.41036>; else goto <D.41037>;
  <D.41036>:
  D.40834 = a_engine->rtp_session;
  D.41038 = switch_rtp_test_flag (D.40834, 12);
  if (D.41038 == 0) goto <D.41039>; else goto <D.41040>;
  <D.41039>:
  D.40834 = a_engine->rtp_session;
  D.41041 = switch_rtp_test_flag (D.40834, 19);
  if (D.41041 == 0) goto <D.41042>; else goto <D.41043>;
  <D.41042>:
  D.40834 = a_engine->rtp_session;
  switch_rtp_set_flag (D.40834, 3);
  <D.41043>:
  <D.41040>:
  D.40823 = session->channel;
  switch_channel_clear_flag (D.40823, 99);
  <D.41037>:
  D.40823 = session->channel;
  D.41044 = switch_channel_test_flag (D.40823, 104);
  if (D.41044 != 0) goto <D.41045>; else goto <D.41046>;
  <D.41045>:
  D.40834 = a_engine->rtp_session;
  rtp_flush_read_buffer (D.40834, 2);
  D.40823 = session->channel;
  switch_channel_clear_flag (D.40823, 104);
  goto <D.41047>;
  <D.41046>:
  D.40834 = a_engine->rtp_session;
  rtp_flush_read_buffer (D.40834, 0);
  <D.41047>:
  <D.41022>:
  goto end;
  <D.39886>:
  D.40834 = a_engine->rtp_session;
  D.41048 = switch_rtp_ready (D.40834);
  if (D.41048 != 0) goto <D.41049>; else goto <D.41050>;
  <D.41049>:
  D.40834 = a_engine->rtp_session;
  rtp_flush_read_buffer (D.40834, 0);
  <D.41050>:
  goto end;
  <D.39887>:
  D.41051 = session->track_duration;
  if (D.41051 != 0) goto <D.41052>; else goto <D.41053>;
  <D.41052>:
  D.41051 = session->track_duration;
  switch_core_session_enable_heartbeat (session, D.41051);
  <D.41053>:
  goto <D.39852>;
  <D.39888>:
  ip = 0B;
  port = 0B;
  D.40823 = session->channel;
  switch_channel_set_flag_value (D.40823, 15, 1);
  a_engine->codec_negotiated = 0;
  v_engine->codec_negotiated = 0;
  switch_core_media_set_local_sdp (session, 0B, 0);
  D.40823 = session->channel;
  D.41054 = switch_channel_get_variable_dup (D.40823, "bypass_keep_codec", 1, -1);
  D.41055 = switch_true (D.41054);
  if (D.41055 != 0) goto <D.41056>; else goto <D.41057>;
  <D.41056>:
  D.40823 = session->channel;
  D.40823 = session->channel;
  D.41058 = switch_channel_get_variable_dup (D.40823, "ep_codec_string", 1, -1);
  switch_channel_set_variable_var_check (D.40823, "absolute_codec_string", D.41058, 1);
  <D.41057>:
  D.40823 = session->channel;
  uuid = switch_channel_get_partner_uuid (D.40823);
  if (uuid != 0B) goto <D.41059>; else goto <D.41060>;
  <D.41059>:
  other_session = switch_core_session_perform_locate (uuid, "src/switch_core_media.c", &__func__, 7768);
  if (other_session != 0B) goto <D.41061>; else goto <D.41062>;
  <D.41061>:
  other_channel = switch_core_session_get_channel (other_session);
  ip = switch_channel_get_variable_dup (other_channel, "remote_media_ip", 1, -1);
  port = switch_channel_get_variable_dup (other_channel, "remote_media_port", 1, -1);
  switch_core_session_rwunlock (other_session);
  D.41063 = ip != 0B;
  D.41064 = port != 0B;
  D.41065 = D.41063 && D.41064;
  if (D.41065 != 0) goto <D.41066>; else goto <D.41067>;
  <D.41066>:
  switch_core_media_prepare_codecs (session, 1);
  clear_pmaps (a_engine);
  clear_pmaps (v_engine);
  D.41068 = atoi (port);
  D.41069 = (short unsigned int) D.41068;
  switch_core_media_gen_local_sdp (session, 0, ip, D.41069, 0B, 1);
  <D.41067>:
  <D.41062>:
  <D.41060>:
  D.41070 = smh->mparams;
  D.41071 = D.41070->local_sdp_str;
  if (D.41071 == 0B) goto <D.41072>; else goto <D.41073>;
  <D.41072>:
  switch_core_media_absorb_sdp (session);
  <D.41073>:
  D.41051 = session->track_duration;
  if (D.41051 != 0) goto <D.41074>; else goto <D.41075>;
  <D.41074>:
  D.41051 = session->track_duration;
  switch_core_session_enable_heartbeat (session, D.41051);
  <D.41075>:
  goto <D.39852>;
  <D.39894>:
  goto <D.39852>;
  <D.39852>:
  D.41076 = smh->mutex;
  if (D.41076 != 0B) goto <D.41077>; else goto <D.41078>;
  <D.41077>:
  D.41076 = smh->mutex;
  switch_mutex_lock (D.41076);
  <D.41078>:
  D.40823 = session->channel;
  D.41081 = switch_channel_check_signal (D.40823, 1);
  if (D.41081 != 0) goto <D.41079>; else goto <D.41082>;
  <D.41082>:
  D.40823 = session->channel;
  D.41083 = switch_channel_get_state (D.40823);
  if (D.41083 > 9) goto <D.41079>; else goto <D.41080>;
  <D.41079>:
  status = 1;
  goto end_lock;
  <D.41080>:
  D.40827 = msg->message_id;
  switch (D.40827) <default: <D.39902>, case 30: <D.39900>, case 37: <D.39899>, case 40: <D.39896>>
  <D.39896>:
  D.40845 = msg->string_arg;
  if (D.40845 != 0B) goto <D.41084>; else goto <D.41085>;
  <D.41084>:
  D.40823 = session->channel;
  switch_channel_set_variable_var_check (D.40823, "absolute_codec_string", 0B, 1);
  D.40845 = msg->string_arg;
  D.41086 = *D.40845;
  if (D.41086 == 61) goto <D.41087>; else goto <D.41088>;
  <D.41087>:
  D.40823 = session->channel;
  D.40845 = msg->string_arg;
  switch_channel_set_variable_var_check (D.40823, "codec_string", D.40845, 1);
  goto <D.41089>;
  <D.41088>:
  D.40823 = session->channel;
  D.41091 = v_engine->cur_payload_map;
  D.41092 = D.41091->rm_encoding;
  if (D.41092 != 0B) goto <D.41093>; else goto <D.41094>;
  <D.41093>:
  D.41091 = v_engine->cur_payload_map;
  iftmp.11 = D.41091->rm_encoding;
  goto <D.41095>;
  <D.41094>:
  iftmp.11 = "";
  <D.41095>:
  D.41091 = v_engine->cur_payload_map;
  D.41092 = D.41091->rm_encoding;
  if (D.41092 != 0B) goto <D.41097>; else goto <D.41098>;
  <D.41097>:
  iftmp.12 = ",";
  goto <D.41099>;
  <D.41098>:
  iftmp.12 = "";
  <D.41099>:
  D.41100 = a_engine->cur_payload_map;
  D.41101 = D.41100->rm_encoding;
  D.40845 = msg->string_arg;
  switch_channel_set_variable_printf (D.40823, "codec_string", "=%s%s%s,%s", iftmp.11, iftmp.12, D.41101, D.40845);
  <D.41089>:
  a_engine->codec_negotiated = 0;
  v_engine->codec_negotiated = 0;
  D.40823 = session->channel;
  switch_channel_clear_flag (D.40823, 98);
  switch_core_media_prepare_codecs (session, 1);
  switch_core_media_check_video_codecs (session);
  switch_core_media_gen_local_sdp (session, 0, 0B, 0, 0B, 1);
  <D.41085>:
  switch_media_handle_set_media_flag (smh, 7);
  D.40838 = msg->numeric_arg;
  if (D.40838 != 0) goto <D.41102>; else goto <D.41103>;
  <D.41102>:
  D.41104 = switch_core_session_perform_get_partner (session, &nsession, "src/switch_core_media.c", &__func__, 7835);
  if (D.41104 == 0) goto <D.41105>; else goto <D.41106>;
  <D.41105>:
  msg->numeric_arg = 0;
  nsession.13 = nsession;
  switch_core_session_perform_receive_message (nsession.13, msg, "src/switch_core_media.c", &__func__, 7837);
  nsession.13 = nsession;
  switch_core_session_rwunlock (nsession.13);
  <D.41106>:
  <D.41103>:
  goto <D.39898>;
  <D.39899>:
  D.40834 = a_engine->rtp_session;
  D.41108 = switch_rtp_ready (D.40834);
  if (D.41108 != 0) goto <D.41109>; else goto <D.41110>;
  <D.41109>:
  D.40838 = msg->numeric_arg;
  if (D.40838 != 0) goto <D.41111>; else goto <D.41112>;
  <D.41111>:
  D.40823 = session->channel;
  D.41113 = switch_channel_test_flag (D.40823, 57);
  if (D.41113 != 0) goto <D.41114>; else goto <D.41115>;
  <D.41114>:
  D.40834 = a_engine->rtp_session;
  switch_rtp_pause_jitter_buffer (D.40834, 1);
  D.40988 = smh->flags;
  D.40989 = D.40988 | 4;
  smh->flags = D.40989;
  <D.41115>:
  D.40834 = a_engine->rtp_session;
  rtp_flush_read_buffer (D.40834, 2);
  goto <D.41116>;
  <D.41112>:
  D.40988 = smh->flags;
  D.41023 = D.40988 & 4;
  if (D.41023 != 0) goto <D.41117>; else goto <D.41118>;
  <D.41117>:
  D.40988 = smh->flags;
  D.41026 = D.40988 & 4294967291;
  smh->flags = D.41026;
  D.40823 = session->channel;
  D.41119 = switch_channel_test_flag (D.40823, 57);
  if (D.41119 != 0) goto <D.41120>; else goto <D.41121>;
  <D.41120>:
  D.40834 = a_engine->rtp_session;
  switch_rtp_pause_jitter_buffer (D.40834, 0);
  <D.41121>:
  <D.41118>:
  <D.41116>:
  <D.41110>:
  goto <D.39898>;
  <D.39900>:
  D.40823 = session->channel;
  t38_options = switch_channel_get_private (D.40823, "t38_options");
  if (t38_options != 0B) goto <D.41122>; else goto <D.41123>;
  <D.41122>:
  switch_core_media_start_udptl (session, t38_options);
  <D.41123>:
  <D.39902>:
  goto <D.39898>;
  <D.39898>:
  end_lock:
  D.41076 = smh->mutex;
  if (D.41076 != 0B) goto <D.41124>; else goto <D.41125>;
  <D.41124>:
  D.41076 = smh->mutex;
  switch_mutex_unlock (D.41076);
  <D.41125>:
  end:
  D.40823 = session->channel;
  D.41128 = switch_channel_check_signal (D.40823, 1);
  if (D.41128 != 0) goto <D.41126>; else goto <D.41129>;
  <D.41129>:
  D.40823 = session->channel;
  D.41130 = switch_channel_get_state (D.40823);
  if (D.41130 > 9) goto <D.41126>; else goto <D.41127>;
  <D.41126>:
  status = 1;
  <D.41127>:
  D.40820 = status;
  goto <D.41131>;
  <D.41131>:
  return D.40820;
}



;; Function atol (atol)

atol (const char * __nptr)
{
  long int D.41133;

  D.41133 = strtol (__nptr, 0B, 10);
  goto <D.41134>;
  <D.41134>:
  return D.41133;
}



;; Function switch_false (switch_false)

switch_false (const char * expr)
{
  int D.41157;
  switch_bool_t D.41155;
  int D.41153;
  int D.41151;
  int D.41149;
  int D.41147;
  int D.41145;
  int D.41143;
  int D.41141;
  int iftmp.14;
  int D.41135;

  if (expr != 0B) goto <D.41140>; else goto <D.41137>;
  <D.41140>:
  D.41141 = strcasecmp (expr, "no");
  if (D.41141 == 0) goto <D.41138>; else goto <D.41142>;
  <D.41142>:
  D.41143 = strcasecmp (expr, "off");
  if (D.41143 == 0) goto <D.41138>; else goto <D.41144>;
  <D.41144>:
  D.41145 = strcasecmp (expr, "false");
  if (D.41145 == 0) goto <D.41138>; else goto <D.41146>;
  <D.41146>:
  D.41147 = strcasecmp (expr, "f");
  if (D.41147 == 0) goto <D.41138>; else goto <D.41148>;
  <D.41148>:
  D.41149 = strcasecmp (expr, "disabled");
  if (D.41149 == 0) goto <D.41138>; else goto <D.41150>;
  <D.41150>:
  D.41151 = strcasecmp (expr, "inactive");
  if (D.41151 == 0) goto <D.41138>; else goto <D.41152>;
  <D.41152>:
  D.41153 = strcasecmp (expr, "disallow");
  if (D.41153 == 0) goto <D.41138>; else goto <D.41154>;
  <D.41154>:
  D.41155 = switch_is_number (expr);
  if (D.41155 != 0) goto <D.41156>; else goto <D.41137>;
  <D.41156>:
  D.41157 = atoi (expr);
  if (D.41157 == 0) goto <D.41138>; else goto <D.41137>;
  <D.41138>:
  iftmp.14 = 1;
  goto <D.41139>;
  <D.41137>:
  iftmp.14 = 0;
  <D.41139>:
  D.41135 = iftmp.14;
  goto <D.41158>;
  <D.41158>:
  return D.41135;
}



;; Function clear_pmaps (clear_pmaps)

clear_pmaps (struct switch_rtp_engine_t * engine)
{
  struct payload_map_t * pmap;
  uint8_t D.41160;

  pmap = engine->payload_map;
  goto <D.38941>;
  <D.38940>:
  pmap->negotiated = 0;
  pmap->current = 0;
  pmap = pmap->next;
  <D.38941>:
  if (pmap != 0B) goto <D.41159>; else goto <D.38942>;
  <D.41159>:
  D.41160 = pmap->allocated;
  if (D.41160 != 0) goto <D.38940>; else goto <D.38942>;
  <D.38942>:
  return;
}



;; Function switch_core_media_start_udptl (switch_core_media_start_udptl)

switch_core_media_start_udptl (struct switch_core_session_t * session, struct switch_t38_options_t * t38_options)
{
  size_t __s2_len;
  size_t __s1_len;
  const char * val;
  const char * err;
  switch_port_t remote_port;
  char * remote_host;
  static const char __func__[30] = "switch_core_media_start_udptl";
  static const char __PRETTY_FUNCTION__[30] = "switch_core_media_start_udptl";
  struct switch_rtp_engine_t * a_engine;
  struct switch_media_handle_t * smh;
  int D.41204;
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

  if (session == 0B) goto <D.41161>; else goto <D.41162>;
  <D.41161>:
  __assert_fail ("session", "src/switch_core_media.c", 7419, &__PRETTY_FUNCTION__);
  <D.41162>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.41163>; else goto <D.41164>;
  <D.41163>:
  goto <D.41205>;
  <D.41164>:
  D.41167 = session->channel;
  D.41168 = switch_channel_check_signal (D.41167, 1);
  if (D.41168 != 0) goto <D.41165>; else goto <D.41169>;
  <D.41169>:
  D.41167 = session->channel;
  D.41170 = switch_channel_get_state (D.41167);
  if (D.41170 > 9) goto <D.41165>; else goto <D.41166>;
  <D.41165>:
  goto <D.41205>;
  <D.41166>:
  a_engine = &smh->engines;
  D.41171 = a_engine->rtp_session;
  D.41172 = switch_rtp_ready (D.41171);
  if (D.41172 != 0) goto <D.41173>; else goto <D.41174>;
  <D.41173>:
  D.41171 = a_engine->rtp_session;
  remote_host = switch_rtp_get_remote_host (D.41171);
  D.41171 = a_engine->rtp_session;
  remote_port = switch_rtp_get_remote_port (D.41171);
  D.41167 = session->channel;
  switch_channel_clear_flag (D.41167, 99);
  D.41171 = a_engine->rtp_session;
  switch_rtp_udptl_mode (D.41171);
  if (t38_options == 0B) goto <D.41175>; else goto <D.41177>;
  <D.41177>:
  D.41178 = t38_options->remote_ip;
  if (D.41178 == 0B) goto <D.41175>; else goto <D.41176>;
  <D.41175>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7441, session, 7, "No remote address\n");
  goto <D.41205>;
  <D.41176>:
  D.41179 = remote_host != 0B;
  D.41180 = remote_port != 0;
  D.41181 = D.41179 && D.41180;
  if (D.41181 != 0) goto <D.41182>; else goto <D.41183>;
  <D.41182>:
  D.41184 = t38_options->remote_port;
  if (D.41184 == remote_port) goto <D.41185>; else goto <D.41186>;
  <D.41185>:
  D.41178 = t38_options->remote_ip;
  D.39841 = __builtin_strcmp (remote_host, D.41178);
  if (D.39841 == 0) goto <D.41187>; else goto <D.41188>;
  <D.41187>:
  D.41178 = t38_options->remote_ip;
  D.41184 = t38_options->remote_port;
  D.41189 = (int) D.41184;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7446, session, 7, "Remote address:port [%s:%d] has not changed.\n", D.41178, D.41189);
  goto <D.41205>;
  <D.41188>:
  <D.41186>:
  <D.41183>:
  D.41171 = a_engine->rtp_session;
  D.41178 = t38_options->remote_ip;
  D.41184 = t38_options->remote_port;
  D.41190 = switch_rtp_set_remote_address (D.41171, D.41178, D.41184, 0, 1, &err);
  if (D.41190 != 0) goto <D.41191>; else goto <D.41192>;
  <D.41191>:
  err.15 = err;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7453, session, 3, "IMAGE UDPTL REPORTS ERROR: [%s]\n", err.15);
  goto <D.41194>;
  <D.41192>:
  D.41178 = t38_options->remote_ip;
  D.41184 = t38_options->remote_port;
  D.41189 = (int) D.41184;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7455, session, 7, "IMAGE UDPTL CHANGING DEST TO: [%s:%d]\n", D.41178, D.41189);
  D.41197 = switch_media_handle_test_media_flag (smh, 10);
  if (D.41197 == 0) goto <D.41198>; else goto <D.41199>;
  <D.41198>:
  D.41167 = session->channel;
  D.41200 = switch_channel_test_flag (D.41167, 106);
  if (D.41200 == 0) goto <D.41201>; else goto <D.41202>;
  <D.41201>:
  D.41167 = session->channel;
  val = switch_channel_get_variable_dup (D.41167, "disable_udptl_auto_adjust", 1, -1);
  if (val == 0B) goto <D.41195>; else goto <D.41203>;
  <D.41203>:
  D.41204 = switch_true (val);
  if (D.41204 == 0) goto <D.41195>; else goto <D.41196>;
  <D.41195>:
  D.41171 = a_engine->rtp_session;
  switch_rtp_set_flag (D.41171, 7);
  <D.41196>:
  <D.41202>:
  <D.41199>:
  <D.41194>:
  <D.41174>:
  <D.41205>:
  return;
}



;; Function switch_core_media_patch_sdp (switch_core_media_patch_sdp)

switch_core_media_patch_sdp (struct switch_core_session_t * session)
{
  char s_line[1024];
  switch_size_t len;
  char * se;
  char o_line[1024];
  const char * family;
  switch_size_t len;
  char * oe;
  static const char __func__[28] = "switch_core_media_patch_sdp";
  static const char __PRETTY_FUNCTION__[28] = "switch_core_media_patch_sdp";
  struct switch_rtp_engine_t * v_engine;
  struct switch_rtp_engine_t * a_engine;
  struct switch_media_handle_t * smh;
  int bad;
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
  char * D.41329;
  int D.41328;
  int D.41326;
  unsigned int D.41321;
  size_t D.41320;
  size_t D.41319;
  const char * restrict D.41318;
  int D.41317;
  int se.20;
  int D.41309;
  unsigned int D.41307;
  size_t D.41306;
  size_t D.41305;
  char * D.41304;
  const char * restrict D.41303;
  uint32_t D.41302;
  uint32_t D.41299;
  unsigned int D.41298;
  unsigned int D.41297;
  unsigned int D.41296;
  time_t D.41295;
  uint32_t D.41292;
  char * D.41288;
  char * D.41287;
  char[4] * iftmp.19;
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
  char D.41266;
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
  int D.41232;
  char * D.41231;
  const char * D.41228;
  const char * D.41226;
  uint32_t D.41223;
  struct switch_channel_t * D.41222;
  unsigned int D.41217;
  switch_core_media_NDLB_t D.41216;
  size_t D.41215;
  int D.41212;
  char * D.41211;
  struct switch_core_media_params_t * D.41210;

  has_video = 0;
  has_audio = 0;
  has_ip = 0;
  port_buf = "";
  vport_buf = "";
  bad = 0;
  if (session == 0B) goto <D.41206>; else goto <D.41207>;
  <D.41206>:
  __assert_fail ("session", "src/switch_core_media.c", 7134, &__PRETTY_FUNCTION__);
  <D.41207>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.41208>; else goto <D.41209>;
  <D.41208>:
  goto <D.41398>;
  <D.41209>:
  a_engine = &smh->engines;
  v_engine = &smh->engines[1];
  D.41210 = smh->mparams;
  D.41211 = D.41210->local_sdp_str;
  D.41212 = _zstr (D.41211);
  if (D.41212 != 0) goto <D.41213>; else goto <D.41214>;
  <D.41213>:
  goto <D.41398>;
  <D.41214>:
  D.41210 = smh->mparams;
  D.41211 = D.41210->local_sdp_str;
  D.41215 = strlen (D.41211);
  len = D.41215 * 2;
  D.41210 = smh->mparams;
  D.41216 = D.41210->ndlb;
  D.41217 = D.41216 & 32;
  if (D.41217 == 0) goto <D.41218>; else goto <D.41219>;
  <D.41218>:
  D.41222 = session->channel;
  D.41223 = switch_channel_test_flag (D.41222, 1);
  if (D.41223 != 0) goto <D.41224>; else goto <D.41225>;
  <D.41224>:
  D.41210 = smh->mparams;
  D.41211 = D.41210->local_sdp_str;
  D.41226 = switch_stristr ("sendonly", D.41211);
  if (D.41226 != 0B) goto <D.41220>; else goto <D.41227>;
  <D.41227>:
  D.41210 = smh->mparams;
  D.41211 = D.41210->local_sdp_str;
  D.41228 = switch_stristr ("0.0.0.0", D.41211);
  if (D.41228 != 0B) goto <D.41220>; else goto <D.41221>;
  <D.41220>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7152, session, 7, "Skip patch on hold SDP\n");
  goto <D.41398>;
  <D.41221>:
  <D.41225>:
  <D.41219>:
  D.41231 = a_engine->local_sdp_ip;
  D.41232 = _zstr (D.41231);
  if (D.41232 != 0) goto <D.41229>; else goto <D.41233>;
  <D.41233>:
  D.41234 = a_engine->local_sdp_port;
  if (D.41234 == 0) goto <D.41229>; else goto <D.41230>;
  <D.41229>:
  D.41235 = switch_core_media_choose_port (session, 0, 1);
  if (D.41235 != 0) goto <D.41236>; else goto <D.41237>;
  <D.41236>:
  D.41222 = session->channel;
  D.41238 = switch_channel_get_name (D.41222);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7159, session, 3, "%s I/O Error\n", D.41238);
  goto <D.41398>;
  <D.41237>:
  D.41239 = a_engine->cur_payload_map;
  D.41240 = switch_core_perform_session_strdup (session, "PROXY", "src/switch_core_media.c", &__func__, 7163);
  D.41239->iananame = D.41240;
  D.41239 = a_engine->cur_payload_map;
  D.41239->rm_rate = 8000;
  D.41239 = a_engine->cur_payload_map;
  D.41239->adv_rm_rate = 8000;
  D.41239 = a_engine->cur_payload_map;
  D.41239->codec_ms = 20;
  <D.41230>:
  new_sdp = switch_core_perform_session_alloc (session, len, "src/switch_core_media.c", &__func__, 7169);
  D.41234 = a_engine->local_sdp_port;
  D.41241 = (int) D.41234;
  switch_snprintf (&port_buf, 25, "%u", D.41241);
  D.41210 = smh->mparams;
  p = D.41210->local_sdp_str;
  q = new_sdp;
  D.41242 = strlen (p);
  pe = p + D.41242;
  D.41243 = len + -1;
  qe = q + D.41243;
  goto <D.39819>;
  <D.39818>:
  if (p >= pe) goto <D.41244>; else goto <D.41245>;
  <D.41244>:
  bad = 1;
  goto end;
  <D.41245>:
  if (q >= qe) goto <D.41246>; else goto <D.41247>;
  <D.41246>:
  bad = 2;
  goto end;
  <D.41247>:
  D.41231 = a_engine->local_sdp_ip;
  if (D.41231 != 0B) goto <D.41250>; else goto <D.41248>;
  <D.41250>:
  D.41251 = strncmp ("c=IN IP", p, 7);
  if (D.41251 == 0) goto <D.41252>; else goto <D.41248>;
  <D.41252>:
  __builtin_strncpy (q, p, 7);
  p = p + 7;
  q = q + 7;
  D.41254 = a_engine->adv_sdp_ip;
  D.41255 = __builtin_strchr (D.41254, 58);
  if (D.41255 != 0B) goto <D.41256>; else goto <D.41257>;
  <D.41256>:
  iftmp.16 = "6 ";
  goto <D.41258>;
  <D.41257>:
  iftmp.16 = "4 ";
  <D.41258>:
  __builtin_memcpy (q, iftmp.16, 2);
  p = p + 2;
  q = q + 2;
  D.41254 = a_engine->adv_sdp_ip;
  D.41254 = a_engine->adv_sdp_ip;
  D.41259 = strlen (D.41254);
  __builtin_strncpy (q, D.41254, D.41259);
  D.41254 = a_engine->adv_sdp_ip;
  D.41260 = strlen (D.41254);
  q = q + D.41260;
  goto <D.39755>;
  <D.39754>:
  if (p >= pe) goto <D.41261>; else goto <D.41262>;
  <D.41261>:
  bad = 3;
  goto end;
  <D.41262>:
  p = p + 1;
  <D.39755>:
  if (p != 0B) goto <D.41263>; else goto <D.39756>;
  <D.41263>:
  D.41264 = *p;
  if (D.41264 != 0) goto <D.41265>; else goto <D.39756>;
  <D.41265>:
  D.41266 = *p;
  D.41267 = D.41266 + 208;
  D.41268 = D.41267 <= 9;
  D.41269 = D.41266 == 46;
  D.41270 = D.41268 || D.41269;
  if (D.41270 != 0) goto <D.39754>; else goto <D.41271>;
  <D.41271>:
  D.41264 = *p;
  if (D.41264 == 58) goto <D.39754>; else goto <D.41272>;
  <D.41272>:
  D.41264 = *p;
  D.41273 = D.41264 + 191;
  if (D.41273 <= 5) goto <D.39754>; else goto <D.41274>;
  <D.41274>:
  D.41264 = *p;
  D.41275 = D.41264 + 159;
  if (D.41275 <= 5) goto <D.39754>; else goto <D.39756>;
  <D.39756>:
  has_ip = has_ip + 1;
  goto <D.41249>;
  <D.41248>:
  D.41276 = strncmp ("o=", p, 2);
  if (D.41276 == 0) goto <D.41277>; else goto <D.41278>;
  <D.41277>:
  oe = __builtin_strchr (p, 10);
  if (oe != 0B) goto <D.41279>; else goto <D.41280>;
  <D.41279>:
  family = "IP4";
  o_line = "";
  if (oe >= pe) goto <D.41281>; else goto <D.41282>;
  <D.41281>:
  bad = 5;
  goto end;
  <D.41282>:
  oe.17 = (int) oe;
  p.18 = (int) p;
  D.41285 = oe.17 - p.18;
  len = (switch_size_t) D.41285;
  p = p + len;
  D.41210 = smh->mparams;
  D.41287 = D.41210->sipip;
  D.41288 = __builtin_strchr (D.41287, 58);
  if (D.41288 != 0B) goto <D.41289>; else goto <D.41290>;
  <D.41289>:
  iftmp.19 = "IP6";
  goto <D.41291>;
  <D.41290>:
  iftmp.19 = "IP4";
  <D.41291>:
  family = iftmp.19;
  D.41292 = smh->owner_id;
  if (D.41292 == 0) goto <D.41293>; else goto <D.41294>;
  <D.41293>:
  D.41295 = switch_epoch_time_now (0B);
  D.41296 = (unsigned int) D.41295;
  D.41297 = D.41296 * 31821;
  D.41298 = D.41297 + 13849;
  smh->owner_id = D.41298;
  <D.41294>:
  D.41299 = smh->session_id;
  if (D.41299 == 0) goto <D.41300>; else goto <D.41301>;
  <D.41300>:
  D.41292 = smh->owner_id;
  smh->session_id = D.41292;
  <D.41301>:
  D.41299 = smh->session_id;
  D.41302 = D.41299 + 1;
  smh->session_id = D.41302;
  D.41303 = (const char * restrict) &"o=%s %010u %010u IN %s %s\n"[0];
  D.41210 = smh->mparams;
  D.41304 = D.41210->sdp_username;
  D.41292 = smh->owner_id;
  D.41299 = smh->session_id;
  D.41210 = smh->mparams;
  D.41287 = D.41210->sipip;
  snprintf (&o_line, 1024, D.41303, D.41304, D.41292, D.41299, family, D.41287);
  D.41305 = strlen (&o_line);
  __builtin_strncpy (q, &o_line, D.41305);
  D.41306 = strlen (&o_line);
  D.41307 = D.41306 + -1;
  q = q + D.41307;
  <D.41280>:
  goto <D.41308>;
  <D.41278>:
  D.41309 = strncmp ("s=", p, 2);
  if (D.41309 == 0) goto <D.41310>; else goto <D.41311>;
  <D.41310>:
  se = __builtin_strchr (p, 10);
  if (se != 0B) goto <D.41312>; else goto <D.41313>;
  <D.41312>:
  s_line = "";
  if (se >= pe) goto <D.41314>; else goto <D.41315>;
  <D.41314>:
  bad = 5;
  goto end;
  <D.41315>:
  se.20 = (int) se;
  p.18 = (int) p;
  D.41317 = se.20 - p.18;
  len = (switch_size_t) D.41317;
  p = p + len;
  D.41318 = (const char * restrict) &"s=%s\n"[0];
  D.41210 = smh->mparams;
  D.41304 = D.41210->sdp_username;
  snprintf (&s_line, 1024, D.41318, D.41304);
  D.41319 = strlen (&s_line);
  __builtin_strncpy (q, &s_line, D.41319);
  D.41320 = strlen (&s_line);
  D.41321 = D.41320 + -1;
  q = q + D.41321;
  <D.41313>:
  goto <D.41322>;
  <D.41311>:
  D.41326 = strncmp ("m=audio ", p, 8);
  if (D.41326 == 0) goto <D.41323>; else goto <D.41327>;
  <D.41327>:
  D.41328 = strncmp ("m=image ", p, 8);
  if (D.41328 == 0) goto <D.41323>; else goto <D.41324>;
  <D.41323>:
  D.41329 = p + 8;
  D.41330 = *D.41329;
  if (D.41330 != 48) goto <D.41331>; else goto <D.41324>;
  <D.41331>:
  __builtin_strncpy (q, p, 8);
  p = p + 8;
  if (p >= pe) goto <D.41332>; else goto <D.41333>;
  <D.41332>:
  bad = 4;
  goto end;
  <D.41333>:
  q = q + 8;
  if (q >= qe) goto <D.41334>; else goto <D.41335>;
  <D.41334>:
  bad = 5;
  goto end;
  <D.41335>:
  D.41336 = strlen (&port_buf);
  __builtin_strncpy (q, &port_buf, D.41336);
  D.41337 = strlen (&port_buf);
  q = q + D.41337;
  if (q >= qe) goto <D.41338>; else goto <D.41339>;
  <D.41338>:
  bad = 6;
  goto end;
  <D.41339>:
  goto <D.39801>;
  <D.39800>:
  if (p >= pe) goto <D.41340>; else goto <D.41341>;
  <D.41340>:
  bad = 7;
  goto end;
  <D.41341>:
  p = p + 1;
  <D.39801>:
  if (p != 0B) goto <D.41342>; else goto <D.39802>;
  <D.41342>:
  D.41264 = *p;
  if (D.41264 != 0) goto <D.41343>; else goto <D.39802>;
  <D.41343>:
  D.41264 = *p;
  D.41344 = D.41264 + 208;
  if (D.41344 <= 9) goto <D.39800>; else goto <D.39802>;
  <D.39802>:
  has_audio = has_audio + 1;
  goto <D.41325>;
  <D.41324>:
  D.41345 = strncmp ("m=video ", p, 8);
  if (D.41345 == 0) goto <D.41346>; else goto <D.41347>;
  <D.41346>:
  D.41329 = p + 8;
  D.41330 = *D.41329;
  if (D.41330 != 48) goto <D.41348>; else goto <D.41349>;
  <D.41348>:
  if (has_video == 0) goto <D.41350>; else goto <D.41351>;
  <D.41350>:
  switch_core_media_choose_port (session, 1, 1);
  D.41352 = v_engine->cur_payload_map;
  D.41352->rm_encoding = "PROXY-VID";
  D.41352 = v_engine->cur_payload_map;
  D.41352->rm_rate = 90000;
  D.41352 = v_engine->cur_payload_map;
  D.41352->adv_rm_rate = 90000;
  D.41352 = v_engine->cur_payload_map;
  D.41352->codec_ms = 0;
  D.41353 = v_engine->adv_sdp_port;
  D.41354 = (int) D.41353;
  switch_snprintf (&vport_buf, 25, "%u", D.41354);
  D.41222 = session->channel;
  D.41355 = switch_channel_test_ready (D.41222, 1, 1);
  if (D.41355 != 0) goto <D.41356>; else goto <D.41357>;
  <D.41356>:
  D.41358 = v_engine->rtp_session;
  D.41359 = switch_rtp_ready (D.41358);
  if (D.41359 == 0) goto <D.41360>; else goto <D.41361>;
  <D.41360>:
  D.41222 = session->channel;
  switch_channel_set_flag_value (D.41222, 98, 1);
  D.41222 = session->channel;
  switch_channel_set_flag_value (D.41222, 103, 1);
  switch_core_media_activate_rtp (session);
  <D.41361>:
  <D.41357>:
  <D.41351>:
  __builtin_strncpy (q, p, 8);
  p = p + 8;
  if (p >= pe) goto <D.41362>; else goto <D.41363>;
  <D.41362>:
  bad = 8;
  goto end;
  <D.41363>:
  q = q + 8;
  if (q >= qe) goto <D.41364>; else goto <D.41365>;
  <D.41364>:
  bad = 9;
  goto end;
  <D.41365>:
  D.41366 = strlen (&vport_buf);
  __builtin_strncpy (q, &vport_buf, D.41366);
  D.41367 = strlen (&vport_buf);
  q = q + D.41367;
  if (q >= qe) goto <D.41368>; else goto <D.41369>;
  <D.41368>:
  bad = 10;
  goto end;
  <D.41369>:
  goto <D.39813>;
  <D.39812>:
  if (p >= pe) goto <D.41370>; else goto <D.41371>;
  <D.41370>:
  bad = 11;
  goto end;
  <D.41371>:
  p = p + 1;
  <D.39813>:
  if (p != 0B) goto <D.41372>; else goto <D.39814>;
  <D.41372>:
  D.41264 = *p;
  if (D.41264 != 0) goto <D.41373>; else goto <D.39814>;
  <D.41373>:
  D.41264 = *p;
  D.41344 = D.41264 + 208;
  if (D.41344 <= 9) goto <D.39812>; else goto <D.39814>;
  <D.39814>:
  has_video = has_video + 1;
  <D.41349>:
  <D.41347>:
  <D.41325>:
  <D.41322>:
  <D.41308>:
  <D.41249>:
  goto <D.39816>;
  <D.39815>:
  if (p >= pe) goto <D.41374>; else goto <D.41375>;
  <D.41374>:
  bad = 12;
  goto end;
  <D.41375>:
  if (q >= qe) goto <D.41376>; else goto <D.41377>;
  <D.41376>:
  bad = 13;
  goto end;
  <D.41377>:
  D.41264 = *p;
  *q = D.41264;
  q = q + 1;
  p = p + 1;
  <D.39816>:
  if (p != 0B) goto <D.41378>; else goto <D.39817>;
  <D.41378>:
  D.41264 = *p;
  if (D.41264 != 0) goto <D.41379>; else goto <D.39817>;
  <D.41379>:
  D.41264 = *p;
  if (D.41264 != 10) goto <D.39815>; else goto <D.39817>;
  <D.39817>:
  if (p >= pe) goto <D.41380>; else goto <D.41381>;
  <D.41380>:
  bad = 14;
  goto end;
  <D.41381>:
  if (q >= qe) goto <D.41382>; else goto <D.41383>;
  <D.41382>:
  bad = 15;
  goto end;
  <D.41383>:
  D.41264 = *p;
  *q = D.41264;
  q = q + 1;
  p = p + 1;
  <D.39819>:
  if (p != 0B) goto <D.41384>; else goto <D.39820>;
  <D.41384>:
  D.41264 = *p;
  if (D.41264 != 0) goto <D.39818>; else goto <D.39820>;
  <D.39820>:
  end:
  if (bad != 0) goto <D.41385>; else goto <D.41386>;
  <D.41385>:
  goto <D.41398>;
  <D.41386>:
  D.41222 = session->channel;
  D.41389 = switch_channel_check_signal (D.41222, 1);
  if (D.41389 != 0) goto <D.41387>; else goto <D.41390>;
  <D.41390>:
  D.41222 = session->channel;
  D.41391 = switch_channel_get_state (D.41222);
  if (D.41391 > 9) goto <D.41387>; else goto <D.41388>;
  <D.41387>:
  D.41222 = session->channel;
  D.41392 = switch_channel_get_name (D.41222);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7394, session, 7, "%s too late.\n", D.41392);
  goto <D.41398>;
  <D.41388>:
  D.41393 = has_ip | has_audio;
  if (D.41393 == 0) goto <D.41394>; else goto <D.41395>;
  <D.41394>:
  D.41222 = session->channel;
  D.41396 = switch_channel_get_name (D.41222);
  D.41210 = smh->mparams;
  D.41211 = D.41210->local_sdp_str;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7400, session, 7, "%s SDP has no audio in it.\n%s\n", D.41396, D.41211);
  goto <D.41398>;
  <D.41395>:
  D.41222 = session->channel;
  D.41397 = switch_channel_get_name (D.41222);
  D.41210 = smh->mparams;
  D.41211 = D.41210->local_sdp_str;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7406, session, 7, "%s Patched SDP\n---\n%s\n+++\n%s\n", D.41397, D.41211, new_sdp);
  switch_core_media_set_local_sdp (session, new_sdp, 0);
  <D.41398>:
  return;
}



;; Function switch_core_media_set_udptl_image_sdp (switch_core_media_set_udptl_image_sdp)

switch_core_media_set_udptl_image_sdp (struct switch_core_session_t * session, struct switch_t38_options_t * t38_options, int insist)
{
  static const char __func__[38] = "switch_core_media_set_udptl_image_sdp";
  static const char __PRETTY_FUNCTION__[38] = "switch_core_media_set_udptl_image_sdp";
  struct switch_rtp_engine_t * a_engine;
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
  size_t D.41475;
  char * D.41474;
  size_t D.41473;
  const char * D.41470;
  const char * D.41469;
  switch_bool_t D.41465;
  const char * iftmp.24;
  switch_bool_t D.41460;
  const char * iftmp.23;
  switch_bool_t D.41455;
  const char * iftmp.22;
  uint32_t D.41453;
  int D.41452;
  uint16_t D.41451;
  unsigned int D.41450;
  size_t D.41449;
  char * D.41448;
  size_t D.41447;
  uint32_t D.41442;
  uint32_t D.41439;
  char * D.41435;
  char[4] * iftmp.21;
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

  buf = "";
  max_buf = "";
  max_data = "";
  family = "IP4";
  bit_removal_on = "a=T38FaxFillBitRemoval\n";
  bit_removal_off = "";
  mmr_on = "a=T38FaxTranscodingMMR\n";
  mmr_off = "";
  jbig_on = "a=T38FaxTranscodingJBIG\n";
  jbig_off = "";
  if (session == 0B) goto <D.41399>; else goto <D.41400>;
  <D.41399>:
  __assert_fail ("session", "src/switch_core_media.c", 6995, &__PRETTY_FUNCTION__);
  <D.41400>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.41401>; else goto <D.41402>;
  <D.41401>:
  goto <D.41479>;
  <D.41402>:
  a_engine = &smh->engines;
  if (t38_options == 0B) goto <D.41403>; else goto <D.41404>;
  <D.41403>:
  __assert_fail ("t38_options", "src/switch_core_media.c", 7004, &__PRETTY_FUNCTION__);
  <D.41404>:
  ip = t38_options->local_ip;
  D.41405 = t38_options->local_port;
  port = (uint32_t) D.41405;
  D.41406 = smh->mparams;
  username = D.41406->sdp_username;
  D.41407 = session->channel;
  var = switch_channel_get_variable_dup (D.41407, "t38_broken_boolean", 1, -1);
  broken_boolean = switch_true (var);
  if (ip == 0B) goto <D.41408>; else goto <D.41409>;
  <D.41408>:
  ip = a_engine->adv_sdp_ip;
  if (ip == 0B) goto <D.41410>; else goto <D.41411>;
  <D.41410>:
  ip = a_engine->proxy_sdp_ip;
  <D.41411>:
  <D.41409>:
  if (ip == 0B) goto <D.41412>; else goto <D.41413>;
  <D.41412>:
  D.41407 = session->channel;
  D.41414 = switch_channel_get_name (D.41407);
  switch_log_printf (0, "src/switch_core_media.c", &__func__, 7022, 0B, 2, "%s NO IP!\n", D.41414);
  goto <D.41479>;
  <D.41413>:
  if (port == 0) goto <D.41415>; else goto <D.41416>;
  <D.41415>:
  D.41417 = a_engine->adv_sdp_port;
  port = (uint32_t) D.41417;
  if (port == 0) goto <D.41418>; else goto <D.41419>;
  <D.41418>:
  D.41420 = a_engine->proxy_sdp_port;
  port = (uint32_t) D.41420;
  <D.41419>:
  <D.41416>:
  if (port == 0) goto <D.41421>; else goto <D.41422>;
  <D.41421>:
  D.41407 = session->channel;
  D.41423 = switch_channel_get_name (D.41407);
  switch_log_printf (0, "src/switch_core_media.c", &__func__, 7033, 0B, 2, "%s NO PORT!\n", D.41423);
  goto <D.41479>;
  <D.41422>:
  D.41424 = smh->owner_id;
  if (D.41424 == 0) goto <D.41425>; else goto <D.41426>;
  <D.41425>:
  D.41427 = switch_epoch_time_now (0B);
  D.41428 = (unsigned int) D.41427;
  D.41429 = D.41428 - port;
  smh->owner_id = D.41429;
  <D.41426>:
  D.41430 = smh->session_id;
  if (D.41430 == 0) goto <D.41431>; else goto <D.41432>;
  <D.41431>:
  D.41424 = smh->owner_id;
  smh->session_id = D.41424;
  <D.41432>:
  D.41430 = smh->session_id;
  D.41433 = D.41430 + 1;
  smh->session_id = D.41433;
  D.41435 = __builtin_strchr (ip, 58);
  if (D.41435 != 0B) goto <D.41436>; else goto <D.41437>;
  <D.41436>:
  iftmp.21 = "IP6";
  goto <D.41438>;
  <D.41437>:
  iftmp.21 = "IP4";
  <D.41438>:
  family = iftmp.21;
  D.41424 = smh->owner_id;
  D.41430 = smh->session_id;
  switch_snprintf (&buf, 2048, "v=0\no=%s %010u %010u IN %s %s\ns=%s\nc=IN %s %s\nt=0 0\n", username, D.41424, D.41430, family, ip, username, family, ip);
  D.41439 = t38_options->T38FaxMaxBuffer;
  if (D.41439 != 0) goto <D.41440>; else goto <D.41441>;
  <D.41440>:
  D.41439 = t38_options->T38FaxMaxBuffer;
  switch_snprintf (&max_buf, 128, "a=T38FaxMaxBuffer:%d\n", D.41439);
  <D.41441>:
  D.41442 = t38_options->T38FaxMaxDatagram;
  if (D.41442 != 0) goto <D.41443>; else goto <D.41444>;
  <D.41443>:
  D.41442 = t38_options->T38FaxMaxDatagram;
  switch_snprintf (&max_data, 128, "a=T38FaxMaxDatagram:%d\n", D.41442);
  <D.41444>:
  if (broken_boolean != 0) goto <D.41445>; else goto <D.41446>;
  <D.41445>:
  bit_removal_on = "a=T38FaxFillBitRemoval:1\n";
  bit_removal_off = "a=T38FaxFillBitRemoval:0\n";
  mmr_on = "a=T38FaxTranscodingMMR:1\n";
  mmr_off = "a=T38FaxTranscodingMMR:0\n";
  jbig_on = "a=T38FaxTranscodingJBIG:1\n";
  jbig_off = "a=T38FaxTranscodingJBIG:0\n";
  <D.41446>:
  D.41447 = strlen (&buf);
  D.41448 = &buf + D.41447;
  D.41449 = strlen (&buf);
  D.41450 = 2048 - D.41449;
  D.41451 = t38_options->T38FaxVersion;
  D.41452 = (int) D.41451;
  D.41453 = t38_options->T38MaxBitRate;
  D.41455 = t38_options->T38FaxFillBitRemoval;
  if (D.41455 != 0) goto <D.41456>; else goto <D.41457>;
  <D.41456>:
  iftmp.22 = bit_removal_on;
  goto <D.41458>;
  <D.41457>:
  iftmp.22 = bit_removal_off;
  <D.41458>:
  D.41460 = t38_options->T38FaxTranscodingMMR;
  if (D.41460 != 0) goto <D.41461>; else goto <D.41462>;
  <D.41461>:
  iftmp.23 = mmr_on;
  goto <D.41463>;
  <D.41462>:
  iftmp.23 = mmr_off;
  <D.41463>:
  D.41465 = t38_options->T38FaxTranscodingJBIG;
  if (D.41465 != 0) goto <D.41466>; else goto <D.41467>;
  <D.41466>:
  iftmp.24 = jbig_on;
  goto <D.41468>;
  <D.41467>:
  iftmp.24 = jbig_off;
  <D.41468>:
  D.41469 = t38_options->T38FaxRateManagement;
  D.41470 = t38_options->T38FaxUdpEC;
  switch_snprintf (D.41448, D.41450, "m=image %d udptl t38\na=T38FaxVersion:%d\na=T38MaxBitRate:%d\n%s%s%sa=T38FaxRateManagement:%s\n%s%sa=T38FaxUdpEC:%s\n", port, D.41452, D.41453, iftmp.22, iftmp.23, iftmp.24, D.41469, &max_buf, &max_data, D.41470);
  if (insist != 0) goto <D.41471>; else goto <D.41472>;
  <D.41471>:
  D.41473 = strlen (&buf);
  D.41474 = &buf + D.41473;
  D.41475 = strlen (&buf);
  D.41476 = 2048 - D.41475;
  switch_snprintf (D.41474, D.41476, "m=audio 0 RTP/AVP 19\n");
  <D.41472>:
  switch_core_media_set_local_sdp (session, &buf, 1);
  D.41407 = session->channel;
  D.41477 = switch_channel_get_name (D.41407);
  D.41406 = smh->mparams;
  D.41478 = D.41406->local_sdp_str;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 7113, session, 7, "%s image media sdp:\n%s\n", D.41477, D.41478);
  <D.41479>:
  return;
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
  struct switch_rtp_engine_t * a_engine;
  const char * sdp_str;
  switch_port_t D.41509;
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

  if (session == 0B) goto <D.41480>; else goto <D.41481>;
  <D.41480>:
  __assert_fail ("session", "src/switch_core_media.c", 6930, &__PRETTY_FUNCTION__);
  <D.41481>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.41482>; else goto <D.41483>;
  <D.41482>:
  goto <D.41511>;
  <D.41483>:
  a_engine = &smh->engines;
  D.41484 = session->channel;
  sdp_str = switch_channel_get_variable_dup (D.41484, "switch_m_sdp", 1, -1);
  if (sdp_str != 0B) goto <D.41485>; else goto <D.41486>;
  <D.41485>:
  D.41487 = strlen (sdp_str);
  D.41488 = (int) D.41487;
  parser = sdp_parse (0B, sdp_str, D.41488, 0);
  if (parser != 0B) goto <D.41489>; else goto <D.41490>;
  <D.41489>:
  sdp = sdp_session (parser);
  if (sdp != 0B) goto <D.41491>; else goto <D.41492>;
  <D.41491>:
  m = sdp->sdp_media;
  goto <D.39699>;
  <D.39698>:
  D.41495 = m->m_type;
  if (D.41495 != 2) goto <D.41493>; else goto <D.41496>;
  <D.41496>:
  D.41497 = m->m_port;
  if (D.41497 == 0) goto <D.41493>; else goto <D.41494>;
  <D.41493>:
  // predicted unlikely by continue predictor.
  goto <D.39695>;
  <D.41494>:
  connection = sdp->sdp_connection;
  D.41498 = m->m_connections;
  if (D.41498 != 0B) goto <D.41499>; else goto <D.41500>;
  <D.41499>:
  connection = m->m_connections;
  <D.41500>:
  if (connection != 0B) goto <D.41501>; else goto <D.41502>;
  <D.41501>:
  D.41503 = connection->c_address;
  D.41504 = switch_core_perform_session_strdup (session, D.41503, "src/switch_core_media.c", &__func__, 6957);
  a_engine->proxy_sdp_ip = D.41504;
  <D.41502>:
  D.41497 = m->m_port;
  D.41505 = (short unsigned int) D.41497;
  a_engine->proxy_sdp_port = D.41505;
  D.41506 = a_engine->proxy_sdp_ip;
  if (D.41506 != 0B) goto <D.41507>; else goto <D.41508>;
  <D.41507>:
  D.41509 = a_engine->proxy_sdp_port;
  if (D.41509 != 0) goto <D.39697>; else goto <D.41510>;
  <D.41510>:
  <D.41508>:
  <D.39695>:
  m = m->m_next;
  <D.39699>:
  if (m != 0B) goto <D.39698>; else goto <D.39697>;
  <D.39697>:
  <D.41492>:
  sdp_parser_free (parser);
  <D.41490>:
  switch_core_media_set_local_sdp (session, sdp_str, 1);
  <D.41486>:
  <D.41511>:
  return;
}



;; Function switch_core_media_gen_local_sdp (switch_core_media_gen_local_sdp)

switch_core_media_gen_local_sdp (struct switch_core_session_t * session, switch_sdp_type_t sdp_type, const char * ip, switch_port_t port, const char * sr, int force)
{
  switch_rtp_crypto_key_type_t j;
  int i;
  size_t __s2_len;
  size_t __s1_len;
  size_t __s2_len;
  size_t __s1_len;
  int v;
  int bw;
  const char * vbw;
  uint32_t c4;
  uint32_t c3;
  uint32_t c2;
  uint32_t c1;
  char tmp2[11];
  char tmp1[11];
  int channels;
  uint32_t ianacode;
  char * fmtp;
  const struct switch_codec_implementation_t * imp;
  int already_did[128];
  int i;
  struct payload_map_t * pmap;
  const char * of;
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
  size_t __s2_len;
  size_t __s1_len;
  size_t __s2_len;
  size_t __s1_len;
  uint32_t c4;
  uint32_t c3;
  uint32_t c2;
  uint32_t c1;
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
  struct ice_t * ice_out;
  struct switch_media_handle_t * smh;
  struct switch_rtp_engine_t * v_engine;
  struct switch_rtp_engine_t * a_engine;
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
  size_t D.42503;
  char * D.42502;
  size_t D.42501;
  char * D.42498;
  size_t D.42497;
  size_t D.42496;
  char * D.42495;
  size_t D.42494;
  int D.42491;
  char * D.42490;
  switch_rtp_crypto_key_type_t D.42486;
  uint32_t D.42483;
  uint32_t D.42480;
  int D.42477;
  size_t D.42476;
  size_t D.42475;
  char * D.42474;
  size_t D.42473;
  switch_port_t D.42470;
  int D.39675;
  int D.42465;
  char * D.42464;
  int D.42461;
  int D.42460;
  int D.42459;
  size_t D.42458;
  size_t D.42457;
  char * D.42456;
  size_t D.42455;
  uint32_t D.42454;
  _Bool D.42452;
  _Bool D.42451;
  int D.42448;
  size_t D.42447;
  size_t D.42446;
  char * D.42445;
  size_t D.42444;
  int D.39666;
  int D.42437;
  int D.42434;
  char * D.42433;
  size_t D.42432;
  size_t D.42431;
  char * D.42430;
  size_t D.42429;
  size_t D.42428;
  size_t D.42427;
  char * D.42426;
  size_t D.42425;
  size_t D.42424;
  size_t D.42423;
  char * D.42422;
  size_t D.42421;
  size_t D.42420;
  size_t D.42419;
  char * D.42418;
  size_t D.42417;
  size_t D.42416;
  size_t D.42415;
  char * D.42414;
  size_t D.42413;
  size_t D.42412;
  size_t D.42411;
  char * D.42410;
  size_t D.42409;
  uint32_t D.42408;
  size_t D.42407;
  size_t D.42406;
  char * D.42405;
  size_t D.42404;
  size_t D.42403;
  size_t D.42402;
  char * D.42401;
  size_t D.42400;
  size_t D.42397;
  size_t D.42396;
  char * D.42395;
  size_t D.42394;
  uint32_t D.42391;
  size_t D.42388;
  size_t D.42387;
  char * D.42386;
  size_t D.42385;
  uint8_t D.42378;
  uint8_t D.42374;
  char * iftmp.38;
  uint8_t D.42369;
  char * iftmp.37;
  size_t D.42367;
  size_t D.42366;
  char * D.42365;
  size_t D.42364;
  short unsigned int D.42361;
  short unsigned int D.42360;
  uint32_t D.42359;
  size_t D.42358;
  size_t D.42357;
  char * D.42356;
  size_t D.42355;
  size_t D.42353;
  size_t D.42352;
  char * D.42351;
  size_t D.42350;
  size_t D.42349;
  size_t D.42348;
  char * D.42347;
  size_t D.42346;
  int8_t D.42343;
  char[192] * D.42340;
  size_t D.42339;
  size_t D.42338;
  char * D.42337;
  size_t D.42336;
  int D.42333;
  char * D.42332;
  uint32_t D.42329;
  uint32_t D.42328;
  size_t D.42324;
  size_t D.42323;
  char * D.42322;
  size_t D.42321;
  int D.42318;
  int D.42315;
  int D.42312;
  int D.42309;
  char * D.42306;
  int D.42300;
  size_t D.42299;
  size_t D.42298;
  char * D.42297;
  size_t D.42296;
  const uint32_t D.42294;
  size_t D.42293;
  size_t D.42292;
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
  const char * iftmp.36;
  char * iftmp.35;
  size_t D.42246;
  size_t D.42245;
  char * D.42244;
  size_t D.42243;
  uint8_t D.42240;
  uint32_t D.42238;
  char * D.42237;
  int D.42236;
  size_t D.42235;
  size_t D.42234;
  char * D.42233;
  size_t D.42232;
  uint8_t D.42229;
  switch_payload_t D.42226;
  int32_t D.42223;
  size_t D.42222;
  size_t D.42221;
  char * D.42220;
  size_t D.42219;
  const char * D.42209;
  uint32_t D.42205;
  long unsigned int D.42204;
  int D.42203;
  size_t D.42202;
  size_t D.42201;
  char * D.42200;
  size_t D.42199;
  int D.42196;
  int D.42193;
  char * D.42192;
  size_t D.42189;
  size_t D.42188;
  char * D.42187;
  size_t D.42186;
  const int D.42185;
  size_t D.42182;
  size_t D.42181;
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
  size_t D.42154;
  char * D.42153;
  size_t D.42152;
  switch_payload_t D.42149;
  switch_payload_t D.42148;
  int32_t D.42145;
  int D.42144;
  switch_payload_t D.42143;
  struct payload_map_t * D.42142;
  size_t D.42141;
  size_t D.42140;
  char * D.42139;
  size_t D.42138;
  uint8_t D.42135;
  const char * D.42134;
  uint32_t D.42133;
  switch_call_direction_t D.42131;
  uint32_t D.42129;
  int iftmp.34;
  size_t D.42122;
  size_t D.42121;
  char * D.42120;
  size_t D.42119;
  short unsigned int D.42118;
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
  int iftmp.32;
  int D.42042;
  uint32_t D.42039;
  int32_t D.42030;
  size_t D.42026;
  size_t D.42025;
  char * D.42024;
  size_t D.42023;
  uint32_t D.42020;
  int D.42017;
  char * D.42016;
  uint32_t D.42013;
  int D.42010;
  size_t D.42009;
  size_t D.42008;
  char * D.42007;
  size_t D.42006;
  int D.39607;
  int D.41999;
  int D.41996;
  int D.41995;
  int D.41994;
  size_t D.41993;
  size_t D.41992;
  char * D.41991;
  size_t D.41990;
  uint32_t D.41989;
  _Bool D.41987;
  _Bool D.41986;
  _Bool D.41985;
  int D.41982;
  size_t D.41981;
  size_t D.41980;
  char * D.41979;
  size_t D.41978;
  switch_port_t D.41975;
  int D.39598;
  int D.41970;
  int D.41967;
  char * D.41966;
  int D.41965;
  switch_port_t D.41964;
  char * D.41963;
  char * D.41962;
  size_t D.41961;
  size_t D.41960;
  char * D.41959;
  size_t D.41958;
  char * D.41957;
  size_t D.41956;
  size_t D.41955;
  char * D.41954;
  size_t D.41953;
  char * D.41952;
  size_t D.41951;
  size_t D.41950;
  char * D.41949;
  size_t D.41948;
  size_t D.41947;
  size_t D.41946;
  char * D.41945;
  size_t D.41944;
  size_t D.41943;
  size_t D.41942;
  char * D.41941;
  size_t D.41940;
  size_t D.41939;
  size_t D.41938;
  char * D.41937;
  size_t D.41936;
  char * D.41935;
  uint32_t D.41934;
  size_t D.41933;
  size_t D.41932;
  char * D.41931;
  size_t D.41930;
  uint8_t D.41927;
  int D.41926;
  size_t D.41925;
  size_t D.41924;
  char * D.41923;
  size_t D.41922;
  size_t D.41920;
  size_t D.41919;
  char * D.41918;
  size_t D.41917;
  size_t D.41916;
  size_t D.41915;
  char * D.41914;
  size_t D.41913;
  int8_t D.41910;
  char[192] * D.41907;
  size_t D.41906;
  size_t D.41905;
  char * D.41904;
  size_t D.41903;
  int D.41900;
  char * D.41899;
  size_t D.41898;
  size_t D.41897;
  char * D.41896;
  size_t D.41895;
  int D.41892;
  size_t D.41891;
  size_t D.41890;
  char * D.41889;
  size_t D.41888;
  size_t D.41885;
  size_t D.41884;
  char * D.41883;
  size_t D.41882;
  const char D.41876;
  unsigned int D.41874;
  size_t D.41873;
  const char D.41870;
  const char * iftmp.31;
  char * iftmp.30;
  size_t D.41867;
  size_t D.41866;
  char * D.41865;
  size_t D.41864;
  size_t D.41859;
  size_t D.41858;
  char * D.41857;
  size_t D.41856;
  size_t D.41852;
  size_t D.41851;
  char * D.41850;
  size_t D.41849;
  int32_t D.41846;
  size_t D.41845;
  size_t D.41844;
  char * D.41843;
  size_t D.41842;
  size_t D.41840;
  size_t D.41839;
  char * D.41838;
  size_t D.41837;
  uint32_t D.41834;
  uint32_t D.41831;
  int32_t D.41829;
  const int D.41825;
  _Bool D.41822;
  _Bool D.41821;
  _Bool D.41820;
  const struct switch_codec_implementation_t * D.41819;
  uint32_t D.41817;
  char * D.41816;
  size_t D.41815;
  size_t D.41814;
  char * D.41813;
  size_t D.41812;
  int32_t D.41807;
  size_t D.41806;
  size_t D.41805;
  char * D.41804;
  size_t D.41803;
  size_t D.41800;
  size_t D.41799;
  char * D.41798;
  size_t D.41797;
  int D.41795;
  switch_payload_t D.41794;
  size_t D.41793;
  size_t D.41792;
  char * D.41791;
  size_t D.41790;
  int D.41787;
  char * D.41786;
  int D.41783;
  size_t D.41782;
  size_t D.41781;
  char * D.41780;
  size_t D.41779;
  size_t D.41778;
  size_t D.41777;
  char * D.41776;
  size_t D.41775;
  int32_t D.41770;
  size_t D.41769;
  size_t D.41768;
  char * D.41767;
  size_t D.41766;
  uint32_t D.41763;
  int32_t D.41761;
  uint8_t D.41757;
  int D.41755;
  size_t D.41754;
  size_t D.41753;
  char * D.41752;
  size_t D.41751;
  switch_payload_t D.41748;
  struct switch_mutex_t * D.41747;
  int32_t D.41744;
  int D.41743;
  switch_payload_t D.41742;
  size_t D.41741;
  size_t D.41740;
  char * D.41739;
  size_t D.41738;
  const char * D.41737;
  switch_rtp_crypto_key_type_t D.41736;
  uint32_t D.41734;
  uint8_t D.41732;
  int iftmp.29;
  int D.41727;
  size_t D.41726;
  size_t D.41725;
  char * D.41724;
  size_t D.41723;
  uint8_t D.41720;
  char * D.41719;
  size_t D.41718;
  size_t D.41717;
  char * D.41716;
  size_t D.41715;
  uint32_t D.41712;
  char * D.41708;
  char[4] * iftmp.28;
  int D.41704;
  int D.41703;
  unsigned int D.41700;
  switch_core_media_NDLB_t D.41699;
  uint32_t D.41696;
  int D.41693;
  const char * D.41692;
  uint32_t D.41689;
  unsigned int D.41688;
  unsigned int D.41687;
  unsigned int D.41686;
  time_t D.41685;
  uint32_t D.41682;
  int D.41676;
  char * D.41673;
  char * D.41664;
  uint32_t D.41655;
  uint32_t D.41653;
  int D.41650;
  _Bool D.41647;
  _Bool D.41646;
  _Bool D.41645;
  int D.41642;
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
  int D.41577;
  int D.41575;
  int32_t D.41572;
  struct payload_map_t * D.41566;
  int D.41565;
  const char * D.41564;
  uint32_t D.41562;
  int D.41557;
  int D.41554;
  int D.41551;
  const char * D.41550;
  uint32_t D.41547;
  uint32_t D.41546;
  uint32_t D.41544;
  int D.41538;
  struct switch_channel_t * D.41535;
  struct switch_core_session_t * D.41534;
  int D.41531;
  const char * D.41530;
  char * D.41527;
  const char * D.41526;
  char * D.41523;
  struct switch_core_media_params_t * D.41522;
  int D.41519;
  const char * D.41518;
  switch_call_direction_t D.41513;
  struct switch_channel_t * D.41512;

  ptime = 0;
  rate = 0;
  use_cng = 1;
  D.41512 = session->channel;
  pass_fmtp = switch_channel_get_variable_dup (D.41512, "rtp_video_fmtp", 1, -1);
  D.41512 = session->channel;
  ov_fmtp = switch_channel_get_variable_dup (D.41512, "rtp_force_video_fmtp", 1, -1);
  D.41512 = session->channel;
  append_audio = switch_channel_get_variable_dup (D.41512, "rtp_append_audio_sdp", 1, -1);
  D.41512 = session->channel;
  append_video = switch_channel_get_variable_dup (D.41512, "rtp_append_video_sdp", 1, -1);
  srbuf = "";
  D.41512 = session->channel;
  fmtp_out_var = switch_channel_get_variable_dup (D.41512, "rtp_force_audio_fmtp", 1, -1);
  map = 0B;
  ptmap = 0B;
  local_sdp_audio_zrtp_hash = switch_core_media_get_zrtp_hash (session, 0, 1);
  local_sdp_video_zrtp_hash = switch_core_media_get_zrtp_hash (session, 1, 1);
  vp8 = 0;
  red = 0;
  D.41512 = session->channel;
  D.41513 = switch_channel_direction (D.41512);
  is_outbound = D.41513 == 1;
  if (session == 0B) goto <D.41514>; else goto <D.41515>;
  <D.41514>:
  __assert_fail ("session", "src/switch_core_media.c", 6025, &__PRETTY_FUNCTION__);
  <D.41515>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.41516>; else goto <D.41517>;
  <D.41516>:
  goto <D.42518>;
  <D.41517>:
  a_engine = &smh->engines;
  v_engine = &smh->engines[1];
  D.41512 = session->channel;
  D.41518 = switch_channel_get_variable_dup (D.41512, "rtcp_mux", 1, -1);
  D.41519 = switch_true (D.41518);
  if (D.41519 != 0) goto <D.41520>; else goto <D.41521>;
  <D.41520>:
  a_engine->rtcp_mux = 1;
  v_engine->rtcp_mux = 1;
  <D.41521>:
  D.41522 = smh->mparams;
  D.41523 = D.41522->rtcp_audio_interval_msec;
  if (D.41523 == 0B) goto <D.41524>; else goto <D.41525>;
  <D.41524>:
  D.41522 = smh->mparams;
  D.41512 = session->channel;
  D.41526 = switch_channel_get_variable_dup (D.41512, "rtcp_audio_interval_msec", 1, -1);
  D.41522->rtcp_audio_interval_msec = D.41526;
  <D.41525>:
  D.41522 = smh->mparams;
  D.41527 = D.41522->rtcp_video_interval_msec;
  if (D.41527 == 0B) goto <D.41528>; else goto <D.41529>;
  <D.41528>:
  D.41522 = smh->mparams;
  D.41512 = session->channel;
  D.41530 = switch_channel_get_variable_dup (D.41512, "rtcp_video_interval_msec", 1, -1);
  D.41522->rtcp_video_interval_msec = D.41530;
  <D.41529>:
  D.41531 = dtls_ok (session);
  if (D.41531 != 0) goto <D.41532>; else goto <D.41533>;
  <D.41532>:
  D.41534 = smh->session;
  D.41535 = D.41534->channel;
  tmp = switch_channel_get_variable_dup (D.41535, "webrtc_enable_dtls", 1, -1);
  if (tmp != 0B) goto <D.41536>; else goto <D.41537>;
  <D.41536>:
  D.41538 = switch_false (tmp);
  if (D.41538 != 0) goto <D.41539>; else goto <D.41540>;
  <D.41539>:
  D.41534 = smh->session;
  D.41535 = D.41534->channel;
  switch_channel_clear_flag (D.41535, 111);
  D.41534 = smh->session;
  D.41535 = D.41534->channel;
  switch_channel_clear_flag (D.41535, 109);
  <D.41540>:
  <D.41537>:
  <D.41533>:
  if (is_outbound != 0) goto <D.41541>; else goto <D.41543>;
  <D.41543>:
  D.41512 = session->channel;
  D.41544 = switch_channel_test_flag (D.41512, 84);
  if (D.41544 != 0) goto <D.41541>; else goto <D.41545>;
  <D.41545>:
  D.41512 = session->channel;
  D.41546 = switch_channel_test_flag (D.41512, 112);
  if (D.41546 != 0) goto <D.41541>; else goto <D.41542>;
  <D.41541>:
  D.41512 = session->channel;
  D.41547 = switch_channel_test_flag (D.41512, 106);
  if (D.41547 == 0) goto <D.41548>; else goto <D.41549>;
  <D.41548>:
  D.41512 = session->channel;
  D.41550 = switch_channel_get_variable_dup (D.41512, "media_webrtc", 1, -1);
  D.41551 = switch_true (D.41550);
  if (D.41551 != 0) goto <D.41552>; else goto <D.41553>;
  <D.41552>:
  D.41512 = session->channel;
  switch_channel_set_flag_value (D.41512, 106, 1);
  D.41512 = session->channel;
  switch_channel_set_flag_value (D.41512, 108, 1);
  D.41522 = smh->mparams;
  D.41522->rtcp_audio_interval_msec = "5000";
  D.41522 = smh->mparams;
  D.41522->rtcp_video_interval_msec = "5000";
  <D.41553>:
  <D.41549>:
  D.41554 = switch_rtp_has_dtls ();
  if (D.41554 != 0) goto <D.41555>; else goto <D.41556>;
  <D.41555>:
  D.41557 = dtls_ok (session);
  if (D.41557 != 0) goto <D.41558>; else goto <D.41559>;
  <D.41558>:
  D.41512 = session->channel;
  D.41562 = switch_channel_test_flag (D.41512, 106);
  if (D.41562 != 0) goto <D.41560>; else goto <D.41563>;
  <D.41563>:
  D.41534 = smh->session;
  D.41535 = D.41534->channel;
  D.41564 = switch_channel_get_variable_dup (D.41535, "rtp_use_dtls", 1, -1);
  D.41565 = switch_true (D.41564);
  if (D.41565 != 0) goto <D.41560>; else goto <D.41561>;
  <D.41560>:
  D.41534 = smh->session;
  D.41535 = D.41534->channel;
  switch_channel_set_flag_value (D.41535, 109, 1);
  D.41534 = smh->session;
  D.41535 = D.41534->channel;
  switch_channel_set_flag_value (D.41535, 92, 1);
  generate_local_fingerprint (smh, 0);
  <D.41561>:
  <D.41559>:
  <D.41556>:
  switch_core_session_parse_crypto_prefs (session);
  switch_core_session_check_outgoing_crypto (session);
  <D.41542>:
  D.41566 = a_engine->cur_payload_map;
  fmtp_out = D.41566->fmtp_out;
  D.41522 = smh->mparams;
  username = D.41522->sdp_username;
  buf = calloc (1, 65536);
  if (buf == 0B) goto <D.41567>; else goto <D.41568>;
  <D.41567>:
  __assert_fail ("(buf = calloc(1, (65536)))", "src/switch_core_media.c", 6078, &__PRETTY_FUNCTION__);
  <D.41568>:
  switch_core_media_check_dtmf_type (session);
  D.41572 = switch_media_handle_test_media_flag (smh, 9);
  if (D.41572 != 0) goto <D.41569>; else goto <D.41573>;
  <D.41573>:
  D.41512 = session->channel;
  val = switch_channel_get_variable_dup (D.41512, "supress_cng", 1, -1);
  if (val != 0B) goto <D.41574>; else goto <D.41570>;
  <D.41574>:
  D.41575 = switch_true (val);
  if (D.41575 != 0) goto <D.41569>; else goto <D.41570>;
  <D.41570>:
  D.41512 = session->channel;
  val = switch_channel_get_variable_dup (D.41512, "suppress_cng", 1, -1);
  if (val != 0B) goto <D.41576>; else goto <D.41571>;
  <D.41576>:
  D.41577 = switch_true (val);
  if (D.41577 != 0) goto <D.41569>; else goto <D.41571>;
  <D.41569>:
  use_cng = 0;
  D.41522 = smh->mparams;
  D.41522->cng_pt = 0;
  <D.41571>:
  D.41578 = smh->payload_space;
  if (D.41578 == 0) goto <D.41579>; else goto <D.41580>;
  <D.41579>:
  D.41512 = session->channel;
  D.41581 = switch_channel_test_flag (D.41512, 106);
  if (D.41581 != 0) goto <D.41582>; else goto <D.41583>;
  <D.41582>:
  smh->payload_space = 102;
  goto <D.41584>;
  <D.41583>:
  smh->payload_space = 98;
  <D.41584>:
  i = 0;
  goto <D.39568>;
  <D.39567>:
  D.41585 = smh->codecs[i];
  D.41586 = D.41585->ianacode;
  smh->ianacodes[i] = D.41586;
  i = i + 1;
  <D.39568>:
  D.41522 = smh->mparams;
  D.41587 = D.41522->num_codecs;
  if (D.41587 > i) goto <D.39567>; else goto <D.39569>;
  <D.39569>:
  if (sdp_type == 0) goto <D.41588>; else goto <D.41589>;
  <D.41588>:
  orig_session = 0B;
  switch_core_session_perform_get_partner (session, &orig_session, "src/switch_core_media.c", &__func__, 6108);
  i = 0;
  goto <D.39576>;
  <D.39575>:
  imp = smh->codecs[i];
  orig_pt = 0;
  orig_fmtp = 0B;
  D.41590 = smh->ianacodes[i];
  if (D.41590 > 64) goto <D.41591>; else goto <D.41592>;
  <D.41591>:
  D.41522 = smh->mparams;
  D.41593 = D.41522->dtmf_type;
  if (D.41593 == 0) goto <D.41594>; else goto <D.41595>;
  <D.41594>:
  D.41522 = smh->mparams;
  D.41596 = D.41522->te;
  if (D.41596 > 95) goto <D.41597>; else goto <D.41598>;
  <D.41597>:
  D.41522 = smh->mparams;
  D.41596 = D.41522->te;
  D.41599 = (int) D.41596;
  D.41578 = smh->payload_space;
  if (D.41599 == D.41578) goto <D.41600>; else goto <D.41601>;
  <D.41600>:
  D.41578 = smh->payload_space;
  D.41602 = D.41578 + 1;
  smh->payload_space = D.41602;
  <D.41601>:
  <D.41598>:
  <D.41595>:
  D.41603 = switch_media_handle_test_media_flag (smh, 9);
  if (D.41603 == 0) goto <D.41604>; else goto <D.41605>;
  <D.41604>:
  D.41522 = smh->mparams;
  D.41606 = D.41522->cng_pt;
  D.41607 = D.41606 != 0;
  D.41608 = use_cng != 0;
  D.41609 = D.41607 && D.41608;
  if (D.41609 != 0) goto <D.41610>; else goto <D.41611>;
  <D.41610>:
  D.41522 = smh->mparams;
  D.41606 = D.41522->cng_pt;
  D.41612 = (int) D.41606;
  D.41578 = smh->payload_space;
  if (D.41612 == D.41578) goto <D.41613>; else goto <D.41614>;
  <D.41613>:
  D.41578 = smh->payload_space;
  D.41602 = D.41578 + 1;
  smh->payload_space = D.41602;
  <D.41614>:
  <D.41611>:
  <D.41605>:
  orig_session.25 = orig_session;
  if (orig_session.25 != 0B) goto <D.41618>; else goto <D.41615>;
  <D.41618>:
  orig_session.25 = orig_session;
  D.41619 = imp->codec_type;
  D.41620 = D.41619 != 0;
  D.41621 = imp->iananame;
  D.41622 = switch_core_session_get_payload_code (orig_session.25, D.41620, D.41621, &orig_pt, 0B, &orig_fmtp);
  if (D.41622 == 0) goto <D.41623>; else goto <D.41615>;
  <D.41623>:
  orig_pt.26 = orig_pt;
  smh->ianacodes[i] = orig_pt.26;
  orig_fmtp.27 = orig_fmtp;
  if (orig_fmtp.27 != 0B) goto <D.41626>; else goto <D.41627>;
  <D.41626>:
  orig_fmtp.27 = orig_fmtp;
  D.41628 = switch_core_perform_session_strdup (session, orig_fmtp.27, "src/switch_core_media.c", &__func__, 6133);
  smh->fmtps[i] = D.41628;
  <D.41627>:
  goto <D.41616>;
  <D.41615>:
  D.41578 = smh->payload_space;
  D.41629 = (unsigned char) D.41578;
  smh->ianacodes[i] = D.41629;
  D.41602 = D.41578 + 1;
  smh->payload_space = D.41602;
  <D.41616>:
  <D.41592>:
  D.41619 = imp->codec_type;
  D.41620 = D.41619 != 0;
  D.41621 = imp->iananame;
  D.41590 = smh->ianacodes[i];
  D.41630 = (uint32_t) D.41590;
  D.41631 = imp->samples_per_second;
  D.41632 = imp->microseconds_per_packet;
  D.41633 = D.41632 / 1000;
  D.41634 = (uint32_t) D.41633;
  switch_core_media_add_payload_map (session, D.41620, D.41621, 0B, sdp_type, D.41630, D.41631, D.41634, 0);
  i = i + 1;
  <D.39576>:
  D.41522 = smh->mparams;
  D.41587 = D.41522->num_codecs;
  if (D.41587 > i) goto <D.39575>; else goto <D.39577>;
  <D.39577>:
  orig_session.25 = orig_session;
  if (orig_session.25 != 0B) goto <D.41635>; else goto <D.41636>;
  <D.41635>:
  orig_session.25 = orig_session;
  switch_core_session_rwunlock (orig_session.25);
  <D.41636>:
  <D.41589>:
  <D.41580>:
  if (fmtp_out_var != 0B) goto <D.41637>; else goto <D.41638>;
  <D.41637>:
  fmtp_out = fmtp_out_var;
  <D.41638>:
  D.41512 = session->channel;
  val = switch_channel_get_variable_dup (D.41512, "verbose_sdp", 1, -1);
  if (val == 0B) goto <D.41639>; else goto <D.41641>;
  <D.41641>:
  D.41642 = switch_true (val);
  if (D.41642 != 0) goto <D.41639>; else goto <D.41640>;
  <D.41639>:
  D.41512 = session->channel;
  switch_channel_set_flag_value (D.41512, 110, 1);
  <D.41640>:
  D.41645 = force == 0;
  D.41646 = ip == 0B;
  D.41647 = D.41645 && D.41646;
  if (D.41647 != 0) goto <D.41648>; else goto <D.41649>;
  <D.41648>:
  D.41650 = _zstr (sr);
  if (D.41650 != 0) goto <D.41651>; else goto <D.41652>;
  <D.41651>:
  D.41512 = session->channel;
  D.41653 = switch_channel_test_flag (D.41512, 15);
  if (D.41653 != 0) goto <D.41643>; else goto <D.41654>;
  <D.41654>:
  D.41512 = session->channel;
  D.41655 = switch_channel_test_flag (D.41512, 29);
  if (D.41655 != 0) goto <D.41643>; else goto <D.41644>;
  <D.41643>:
  if (buf != 0B) goto <D.41656>; else goto <D.41657>;
  <D.41656>:
  free (buf);
  buf = 0B;
  <D.41657>:
  goto <D.42518>;
  <D.41644>:
  <D.41652>:
  <D.41649>:
  if (ip == 0B) goto <D.41658>; else goto <D.41659>;
  <D.41658>:
  ip = a_engine->adv_sdp_ip;
  if (ip == 0B) goto <D.41660>; else goto <D.41661>;
  <D.41660>:
  ip = a_engine->proxy_sdp_ip;
  <D.41661>:
  <D.41659>:
  if (ip == 0B) goto <D.41662>; else goto <D.41663>;
  <D.41662>:
  D.41512 = session->channel;
  D.41664 = switch_channel_get_name (D.41512);
  switch_log_printf (0, "src/switch_core_media.c", &__func__, 6182, 0B, 2, "%s NO IP!\n", D.41664);
  if (buf != 0B) goto <D.41665>; else goto <D.41666>;
  <D.41665>:
  free (buf);
  buf = 0B;
  <D.41666>:
  goto <D.42518>;
  <D.41663>:
  if (port == 0) goto <D.41667>; else goto <D.41668>;
  <D.41667>:
  port = a_engine->adv_sdp_port;
  if (port == 0) goto <D.41669>; else goto <D.41670>;
  <D.41669>:
  port = a_engine->proxy_sdp_port;
  <D.41670>:
  <D.41668>:
  if (port == 0) goto <D.41671>; else goto <D.41672>;
  <D.41671>:
  D.41512 = session->channel;
  D.41673 = switch_channel_get_name (D.41512);
  switch_log_printf (0, "src/switch_core_media.c", &__func__, 6194, 0B, 2, "%s NO PORT!\n", D.41673);
  if (buf != 0B) goto <D.41674>; else goto <D.41675>;
  <D.41674>:
  free (buf);
  buf = 0B;
  <D.41675>:
  goto <D.42518>;
  <D.41672>:
  D.41676 = _zstr (sr);
  if (D.41676 != 0) goto <D.41677>; else goto <D.41678>;
  <D.41677>:
  D.41512 = session->channel;
  var_val = switch_channel_get_variable_dup (D.41512, "media_audio_mode", 1, -1);
  if (var_val != 0B) goto <D.41679>; else goto <D.41680>;
  <D.41679>:
  sr = var_val;
  goto <D.41681>;
  <D.41680>:
  sr = "sendrecv";
  <D.41681>:
  <D.41678>:
  D.41682 = smh->owner_id;
  if (D.41682 == 0) goto <D.41683>; else goto <D.41684>;
  <D.41683>:
  D.41685 = switch_epoch_time_now (0B);
  D.41686 = (unsigned int) D.41685;
  D.41687 = (unsigned int) port;
  D.41688 = D.41686 - D.41687;
  smh->owner_id = D.41688;
  <D.41684>:
  D.41689 = smh->session_id;
  if (D.41689 == 0) goto <D.41690>; else goto <D.41691>;
  <D.41690>:
  D.41682 = smh->owner_id;
  smh->session_id = D.41682;
  <D.41691>:
  D.41512 = session->channel;
  D.41692 = switch_channel_get_variable_dup (D.41512, "drop_dtmf", 0, -1);
  D.41693 = switch_true (D.41692);
  if (D.41693 != 0) goto <D.41694>; else goto <D.41695>;
  <D.41694>:
  D.41512 = session->channel;
  switch_channel_set_flag_value (D.41512, 102, 1);
  <D.41695>:
  D.41689 = smh->session_id;
  D.41696 = D.41689 + 1;
  smh->session_id = D.41696;
  D.41522 = smh->mparams;
  D.41699 = D.41522->ndlb;
  D.41700 = D.41699 & 16;
  if (D.41700 != 0) goto <D.41697>; else goto <D.41701>;
  <D.41701>:
  D.41512 = session->channel;
  var_val = switch_channel_get_variable_dup (D.41512, "ndlb_sendrecv_in_session", 1, -1);
  if (var_val != 0B) goto <D.41702>; else goto <D.41698>;
  <D.41702>:
  D.41703 = switch_true (var_val);
  if (D.41703 != 0) goto <D.41697>; else goto <D.41698>;
  <D.41697>:
  D.41704 = _zstr (sr);
  if (D.41704 == 0) goto <D.41705>; else goto <D.41706>;
  <D.41705>:
  switch_snprintf (&srbuf, 128, "a=%s\n", sr);
  <D.41706>:
  sr = 0B;
  <D.41698>:
  D.41708 = __builtin_strchr (ip, 58);
  if (D.41708 != 0B) goto <D.41709>; else goto <D.41710>;
  <D.41709>:
  iftmp.28 = "IP6";
  goto <D.41711>;
  <D.41710>:
  iftmp.28 = "IP4";
  <D.41711>:
  family = iftmp.28;
  D.41682 = smh->owner_id;
  D.41689 = smh->session_id;
  switch_snprintf (buf, 65536, "v=0\no=%s %010u %010u IN %s %s\ns=%s\nc=IN %s %s\nt=0 0\n%s", username, D.41682, D.41689, family, ip, username, family, ip, &srbuf);
  D.41534 = smh->session;
  D.41535 = D.41534->channel;
  D.41712 = switch_channel_test_flag (D.41535, 108);
  if (D.41712 != 0) goto <D.41713>; else goto <D.41714>;
  <D.41713>:
  gen_ice (session, 0, ip, port);
  D.41715 = strlen (buf);
  D.41716 = buf + D.41715;
  D.41717 = strlen (buf);
  D.41718 = 65536 - D.41717;
  D.41719 = smh->msid;
  switch_snprintf (D.41716, D.41718, "a=msid-semantic: WMS %s\n", D.41719);
  <D.41714>:
  D.41720 = a_engine->codec_negotiated;
  if (D.41720 != 0) goto <D.41721>; else goto <D.41722>;
  <D.41721>:
  D.41723 = strlen (buf);
  D.41724 = buf + D.41723;
  D.41725 = strlen (buf);
  D.41726 = 65536 - D.41725;
  D.41727 = (int) port;
  D.41732 = a_engine->no_crypto;
  if (D.41732 == 0) goto <D.41733>; else goto <D.41729>;
  <D.41733>:
  D.41512 = session->channel;
  D.41734 = switch_channel_test_flag (D.41512, 109);
  if (D.41734 != 0) goto <D.41730>; else goto <D.41735>;
  <D.41735>:
  D.41736 = a_engine->crypto_type;
  if (D.41736 != 9) goto <D.41730>; else goto <D.41729>;
  <D.41730>:
  iftmp.29 = 1;
  goto <D.41731>;
  <D.41729>:
  iftmp.29 = 0;
  <D.41731>:
  D.41737 = get_media_profile_name (session, iftmp.29);
  switch_snprintf (D.41724, D.41726, "m=audio %d %s", D.41727, D.41737);
  D.41738 = strlen (buf);
  D.41739 = buf + D.41738;
  D.41740 = strlen (buf);
  D.41741 = 65536 - D.41740;
  D.41566 = a_engine->cur_payload_map;
  D.41742 = D.41566->pt;
  D.41743 = (int) D.41742;
  switch_snprintf (D.41739, D.41741, " %d", D.41743);
  D.41744 = switch_media_handle_test_media_flag (smh, 15);
  if (D.41744 != 0) goto <D.41745>; else goto <D.41746>;
  <D.41745>:
  D.41747 = smh->sdp_mutex;
  switch_mutex_lock (D.41747);
  pmap = a_engine->cur_payload_map;
  goto <D.39579>;
  <D.39578>:
  D.41748 = pmap->pt;
  D.41566 = a_engine->cur_payload_map;
  D.41742 = D.41566->pt;
  if (D.41748 != D.41742) goto <D.41749>; else goto <D.41750>;
  <D.41749>:
  D.41751 = strlen (buf);
  D.41752 = buf + D.41751;
  D.41753 = strlen (buf);
  D.41754 = 65536 - D.41753;
  D.41748 = pmap->pt;
  D.41755 = (int) D.41748;
  switch_snprintf (D.41752, D.41754, " %d", D.41755);
  <D.41750>:
  pmap = pmap->next;
  <D.39579>:
  if (pmap != 0B) goto <D.41756>; else goto <D.39580>;
  <D.41756>:
  D.41757 = pmap->allocated;
  if (D.41757 != 0) goto <D.39578>; else goto <D.39580>;
  <D.39580>:
  D.41747 = smh->sdp_mutex;
  switch_mutex_unlock (D.41747);
  <D.41746>:
  D.41522 = smh->mparams;
  D.41593 = D.41522->dtmf_type;
  if (D.41593 == 0) goto <D.41758>; else goto <D.41760>;
  <D.41760>:
  D.41761 = switch_media_handle_test_media_flag (smh, 8);
  if (D.41761 != 0) goto <D.41758>; else goto <D.41762>;
  <D.41762>:
  D.41512 = session->channel;
  D.41763 = switch_channel_test_flag (D.41512, 93);
  if (D.41763 != 0) goto <D.41758>; else goto <D.41759>;
  <D.41758>:
  D.41522 = smh->mparams;
  D.41596 = D.41522->te;
  if (D.41596 > 95) goto <D.41764>; else goto <D.41765>;
  <D.41764>:
  D.41766 = strlen (buf);
  D.41767 = buf + D.41766;
  D.41768 = strlen (buf);
  D.41769 = 65536 - D.41768;
  D.41522 = smh->mparams;
  D.41596 = D.41522->te;
  D.41599 = (int) D.41596;
  switch_snprintf (D.41767, D.41769, " %d", D.41599);
  <D.41765>:
  <D.41759>:
  D.41770 = switch_media_handle_test_media_flag (smh, 9);
  if (D.41770 == 0) goto <D.41771>; else goto <D.41772>;
  <D.41771>:
  D.41522 = smh->mparams;
  D.41606 = D.41522->cng_pt;
  D.41607 = D.41606 != 0;
  D.41608 = use_cng != 0;
  D.41609 = D.41607 && D.41608;
  if (D.41609 != 0) goto <D.41773>; else goto <D.41774>;
  <D.41773>:
  D.41775 = strlen (buf);
  D.41776 = buf + D.41775;
  D.41777 = strlen (buf);
  D.41778 = 65536 - D.41777;
  D.41522 = smh->mparams;
  D.41606 = D.41522->cng_pt;
  D.41612 = (int) D.41606;
  switch_snprintf (D.41776, D.41778, " %d", D.41612);
  <D.41774>:
  <D.41772>:
  D.41779 = strlen (buf);
  D.41780 = buf + D.41779;
  D.41781 = strlen (buf);
  D.41782 = 65536 - D.41781;
  switch_snprintf (D.41780, D.41782, "\n");
  D.41566 = a_engine->cur_payload_map;
  rate = D.41566->adv_rm_rate;
  D.41566 = a_engine->cur_payload_map;
  D.41783 = D.41566->adv_channels;
  if (D.41783 == 0) goto <D.41784>; else goto <D.41785>;
  <D.41784>:
  D.41566 = a_engine->cur_payload_map;
  D.41566 = a_engine->cur_payload_map;
  D.41786 = D.41566->rm_encoding;
  D.41787 = get_channels (D.41786, 1);
  D.41566->adv_channels = D.41787;
  <D.41785>:
  D.41566 = a_engine->cur_payload_map;
  D.41783 = D.41566->adv_channels;
  if (D.41783 > 1) goto <D.41788>; else goto <D.41789>;
  <D.41788>:
  D.41790 = strlen (buf);
  D.41791 = buf + D.41790;
  D.41792 = strlen (buf);
  D.41793 = 65536 - D.41792;
  D.41566 = a_engine->cur_payload_map;
  D.41794 = D.41566->agreed_pt;
  D.41795 = (int) D.41794;
  D.41566 = a_engine->cur_payload_map;
  D.41786 = D.41566->rm_encoding;
  D.41566 = a_engine->cur_payload_map;
  D.41783 = D.41566->adv_channels;
  switch_snprintf (D.41791, D.41793, "a=rtpmap:%d %s/%d/%d\n", D.41795, D.41786, rate, D.41783);
  goto <D.41796>;
  <D.41789>:
  D.41797 = strlen (buf);
  D.41798 = buf + D.41797;
  D.41799 = strlen (buf);
  D.41800 = 65536 - D.41799;
  D.41566 = a_engine->cur_payload_map;
  D.41794 = D.41566->agreed_pt;
  D.41795 = (int) D.41794;
  D.41566 = a_engine->cur_payload_map;
  D.41786 = D.41566->rm_encoding;
  switch_snprintf (D.41798, D.41800, "a=rtpmap:%d %s/%d\n", D.41795, D.41786, rate);
  <D.41796>:
  if (fmtp_out != 0B) goto <D.41801>; else goto <D.41802>;
  <D.41801>:
  D.41803 = strlen (buf);
  D.41804 = buf + D.41803;
  D.41805 = strlen (buf);
  D.41806 = 65536 - D.41805;
  D.41566 = a_engine->cur_payload_map;
  D.41794 = D.41566->agreed_pt;
  D.41795 = (int) D.41794;
  switch_snprintf (D.41804, D.41806, "a=fmtp:%d %s\n", D.41795, fmtp_out);
  <D.41802>:
  D.41807 = switch_media_handle_test_media_flag (smh, 15);
  if (D.41807 != 0) goto <D.41808>; else goto <D.41809>;
  <D.41808>:
  D.41747 = smh->sdp_mutex;
  switch_mutex_lock (D.41747);
  pmap = a_engine->cur_payload_map;
  goto <D.39582>;
  <D.39581>:
  D.41748 = pmap->pt;
  D.41566 = a_engine->cur_payload_map;
  D.41742 = D.41566->pt;
  if (D.41748 != D.41742) goto <D.41810>; else goto <D.41811>;
  <D.41810>:
  D.41812 = strlen (buf);
  D.41813 = buf + D.41812;
  D.41814 = strlen (buf);
  D.41815 = 65536 - D.41814;
  D.41748 = pmap->pt;
  D.41755 = (int) D.41748;
  D.41816 = pmap->iananame;
  D.41817 = pmap->rate;
  switch_snprintf (D.41813, D.41815, "a=rtpmap:%d %s/%ld\n", D.41755, D.41816, D.41817);
  <D.41811>:
  pmap = pmap->next;
  <D.39582>:
  if (pmap != 0B) goto <D.41818>; else goto <D.39583>;
  <D.41818>:
  D.41757 = pmap->allocated;
  if (D.41757 != 0) goto <D.39581>; else goto <D.39583>;
  <D.39583>:
  D.41747 = smh->sdp_mutex;
  switch_mutex_unlock (D.41747);
  <D.41809>:
  D.41819 = a_engine->read_codec.implementation;
  D.41820 = D.41819 != 0B;
  D.41821 = ptime == 0;
  D.41822 = D.41820 && D.41821;
  if (D.41822 != 0) goto <D.41823>; else goto <D.41824>;
  <D.41823>:
  D.41819 = a_engine->read_codec.implementation;
  D.41825 = D.41819->microseconds_per_packet;
  ptime = D.41825 / 1000;
  <D.41824>:
  D.41522 = smh->mparams;
  D.41593 = D.41522->dtmf_type;
  if (D.41593 == 0) goto <D.41826>; else goto <D.41828>;
  <D.41828>:
  D.41829 = switch_media_handle_test_media_flag (smh, 8);
  if (D.41829 != 0) goto <D.41826>; else goto <D.41830>;
  <D.41830>:
  D.41512 = session->channel;
  D.41831 = switch_channel_test_flag (D.41512, 93);
  if (D.41831 != 0) goto <D.41826>; else goto <D.41827>;
  <D.41826>:
  D.41522 = smh->mparams;
  D.41596 = D.41522->te;
  if (D.41596 > 95) goto <D.41832>; else goto <D.41833>;
  <D.41832>:
  D.41512 = session->channel;
  D.41834 = switch_channel_test_flag (D.41512, 106);
  if (D.41834 != 0) goto <D.41835>; else goto <D.41836>;
  <D.41835>:
  D.41837 = strlen (buf);
  D.41838 = buf + D.41837;
  D.41839 = strlen (buf);
  D.41840 = 65536 - D.41839;
  D.41522 = smh->mparams;
  D.41596 = D.41522->te;
  D.41599 = (int) D.41596;
  switch_snprintf (D.41838, D.41840, "a=rtpmap:%d telephone-event/8000\n", D.41599);
  goto <D.41841>;
  <D.41836>:
  D.41842 = strlen (buf);
  D.41843 = buf + D.41842;
  D.41844 = strlen (buf);
  D.41845 = 65536 - D.41844;
  D.41522 = smh->mparams;
  D.41596 = D.41522->te;
  D.41599 = (int) D.41596;
  D.41522 = smh->mparams;
  D.41596 = D.41522->te;
  D.41599 = (int) D.41596;
  switch_snprintf (D.41843, D.41845, "a=rtpmap:%d telephone-event/8000\na=fmtp:%d 0-16\n", D.41599, D.41599);
  <D.41841>:
  <D.41833>:
  <D.41827>:
  D.41846 = switch_media_handle_test_media_flag (smh, 9);
  if (D.41846 != 0) goto <D.41847>; else goto <D.41848>;
  <D.41847>:
  D.41849 = strlen (buf);
  D.41850 = buf + D.41849;
  D.41851 = strlen (buf);
  D.41852 = 65536 - D.41851;
  switch_snprintf (D.41850, D.41852, "a=silenceSupp:off - - - -\n");
  goto <D.41853>;
  <D.41848>:
  D.41522 = smh->mparams;
  D.41606 = D.41522->cng_pt;
  D.41607 = D.41606 != 0;
  D.41608 = use_cng != 0;
  D.41609 = D.41607 && D.41608;
  if (D.41609 != 0) goto <D.41854>; else goto <D.41855>;
  <D.41854>:
  D.41856 = strlen (buf);
  D.41857 = buf + D.41856;
  D.41858 = strlen (buf);
  D.41859 = 65536 - D.41858;
  D.41522 = smh->mparams;
  D.41606 = D.41522->cng_pt;
  D.41612 = (int) D.41606;
  switch_snprintf (D.41857, D.41859, "a=rtpmap:%d CN/8000\n", D.41612);
  D.41720 = a_engine->codec_negotiated;
  if (D.41720 == 0) goto <D.41860>; else goto <D.41861>;
  <D.41860>:
  D.41522 = smh->mparams;
  D.41522->cng_pt = 0;
  <D.41861>:
  <D.41855>:
  <D.41853>:
  if (append_audio != 0B) goto <D.41862>; else goto <D.41863>;
  <D.41862>:
  D.41864 = strlen (buf);
  D.41865 = buf + D.41864;
  D.41866 = strlen (buf);
  D.41867 = 65536 - D.41866;
  D.41870 = *append_audio;
  if (D.41870 != 0) goto <D.41871>; else goto <D.41872>;
  <D.41871>:
  D.41873 = strlen (append_audio);
  D.41874 = D.41873 + -1;
  iftmp.31 = append_audio + D.41874;
  goto <D.41875>;
  <D.41872>:
  iftmp.31 = append_audio;
  <D.41875>:
  D.41876 = *iftmp.31;
  if (D.41876 == 10) goto <D.41877>; else goto <D.41878>;
  <D.41877>:
  iftmp.30 = "";
  goto <D.41879>;
  <D.41878>:
  iftmp.30 = "\n";
  <D.41879>:
  switch_snprintf (D.41865, D.41867, "%s%s", append_audio, iftmp.30);
  <D.41863>:
  if (ptime != 0) goto <D.41880>; else goto <D.41881>;
  <D.41880>:
  D.41882 = strlen (buf);
  D.41883 = buf + D.41882;
  D.41884 = strlen (buf);
  D.41885 = 65536 - D.41884;
  switch_snprintf (D.41883, D.41885, "a=ptime:%d\n", ptime);
  <D.41881>:
  if (local_sdp_audio_zrtp_hash != 0B) goto <D.41886>; else goto <D.41887>;
  <D.41886>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 6350, session, 7, "Adding audio a=zrtp-hash:%s\n", local_sdp_audio_zrtp_hash);
  D.41888 = strlen (buf);
  D.41889 = buf + D.41888;
  D.41890 = strlen (buf);
  D.41891 = 65536 - D.41890;
  switch_snprintf (D.41889, D.41891, "a=zrtp-hash:%s\n", local_sdp_audio_zrtp_hash);
  <D.41887>:
  D.41892 = _zstr (sr);
  if (D.41892 == 0) goto <D.41893>; else goto <D.41894>;
  <D.41893>:
  D.41895 = strlen (buf);
  D.41896 = buf + D.41895;
  D.41897 = strlen (buf);
  D.41898 = 65536 - D.41897;
  switch_snprintf (D.41896, D.41898, "a=%s\n", sr);
  <D.41894>:
  D.41899 = a_engine->local_dtls_fingerprint.type;
  D.41900 = _zstr (D.41899);
  if (D.41900 == 0) goto <D.41901>; else goto <D.41902>;
  <D.41901>:
  D.41903 = strlen (buf);
  D.41904 = buf + D.41903;
  D.41905 = strlen (buf);
  D.41906 = 65536 - D.41905;
  D.41899 = a_engine->local_dtls_fingerprint.type;
  D.41907 = &a_engine->local_dtls_fingerprint.str;
  switch_snprintf (D.41904, D.41906, "a=fingerprint:%s %s\n", D.41899, D.41907);
  <D.41902>:
  D.41522 = smh->mparams;
  D.41523 = D.41522->rtcp_audio_interval_msec;
  if (D.41523 != 0B) goto <D.41908>; else goto <D.41909>;
  <D.41908>:
  D.41910 = a_engine->rtcp_mux;
  if (D.41910 > 0) goto <D.41911>; else goto <D.41912>;
  <D.41911>:
  D.41913 = strlen (buf);
  D.41914 = buf + D.41913;
  D.41915 = strlen (buf);
  D.41916 = 65536 - D.41915;
  switch_snprintf (D.41914, D.41916, "a=rtcp-mux\n");
  D.41917 = strlen (buf);
  D.41918 = buf + D.41917;
  D.41919 = strlen (buf);
  D.41920 = 65536 - D.41919;
  D.41727 = (int) port;
  switch_snprintf (D.41918, D.41920, "a=rtcp:%d IN %s %s\n", D.41727, family, ip);
  goto <D.41921>;
  <D.41912>:
  D.41922 = strlen (buf);
  D.41923 = buf + D.41922;
  D.41924 = strlen (buf);
  D.41925 = 65536 - D.41924;
  D.41727 = (int) port;
  D.41926 = D.41727 + 1;
  switch_snprintf (D.41923, D.41925, "a=rtcp:%d IN %s %s\n", D.41926, family, ip);
  <D.41921>:
  <D.41909>:
  D.41927 = a_engine->ice_out.cands[0][0].ready;
  if (D.41927 != 0) goto <D.41928>; else goto <D.41929>;
  <D.41928>:
  tmp1 = "";
  tmp2 = "";
  c1 = 659136;
  c2 = 659134;
  c3 = 659126;
  c4 = 659124;
  tmp1[10] = 0;
  tmp2[10] = 0;
  switch_stun_random_string (&tmp1, 10, "0123456789");
  switch_stun_random_string (&tmp2, 10, "0123456789");
  ice_out = &a_engine->ice_out;
  D.41930 = strlen (buf);
  D.41931 = buf + D.41930;
  D.41932 = strlen (buf);
  D.41933 = 65536 - D.41932;
  D.41934 = a_engine->ssrc;
  D.41935 = smh->cname;
  switch_snprintf (D.41931, D.41933, "a=ssrc:%u cname:%s\n", D.41934, D.41935);
  D.41936 = strlen (buf);
  D.41937 = buf + D.41936;
  D.41938 = strlen (buf);
  D.41939 = 65536 - D.41938;
  D.41934 = a_engine->ssrc;
  D.41719 = smh->msid;
  switch_snprintf (D.41937, D.41939, "a=ssrc:%u msid:%s a0\n", D.41934, D.41719);
  D.41940 = strlen (buf);
  D.41941 = buf + D.41940;
  D.41942 = strlen (buf);
  D.41943 = 65536 - D.41942;
  D.41934 = a_engine->ssrc;
  D.41719 = smh->msid;
  switch_snprintf (D.41941, D.41943, "a=ssrc:%u mslabel:%s\n", D.41934, D.41719);
  D.41944 = strlen (buf);
  D.41945 = buf + D.41944;
  D.41946 = strlen (buf);
  D.41947 = 65536 - D.41946;
  D.41934 = a_engine->ssrc;
  D.41719 = smh->msid;
  switch_snprintf (D.41945, D.41947, "a=ssrc:%u label:%sa0\n", D.41934, D.41719);
  D.41948 = strlen (buf);
  D.41949 = buf + D.41948;
  D.41950 = strlen (buf);
  D.41951 = 65536 - D.41950;
  D.41952 = ice_out->ufrag;
  switch_snprintf (D.41949, D.41951, "a=ice-ufrag:%s\n", D.41952);
  D.41953 = strlen (buf);
  D.41954 = buf + D.41953;
  D.41955 = strlen (buf);
  D.41956 = 65536 - D.41955;
  D.41957 = ice_out->pwd;
  switch_snprintf (D.41954, D.41956, "a=ice-pwd:%s\n", D.41957);
  D.41958 = strlen (buf);
  D.41959 = buf + D.41958;
  D.41960 = strlen (buf);
  D.41961 = 65536 - D.41960;
  D.41962 = ice_out->cands[0][0].transport;
  D.41963 = ice_out->cands[0][0].con_addr;
  D.41964 = ice_out->cands[0][0].con_port;
  D.41965 = (int) D.41964;
  switch_snprintf (D.41959, D.41961, "a=candidate:%s 1 %s %u %s %d typ host generation 0\n", &tmp1, D.41962, c1, D.41963, D.41965);
  D.41966 = a_engine->local_sdp_ip;
  D.41967 = _zstr (D.41966);
  if (D.41967 == 0) goto <D.41968>; else goto <D.41969>;
  <D.41968>:
  D.41963 = ice_out->cands[0][0].con_addr;
  D.41970 = _zstr (D.41963);
  if (D.41970 == 0) goto <D.41971>; else goto <D.41972>;
  <D.41971>:
  D.41966 = a_engine->local_sdp_ip;
  D.41963 = ice_out->cands[0][0].con_addr;
  D.39598 = __builtin_strcmp (D.41966, D.41963);
  if (D.39598 != 0) goto <D.41973>; else goto <D.41974>;
  <D.41973>:
  D.41975 = a_engine->local_sdp_port;
  D.41964 = ice_out->cands[0][0].con_port;
  if (D.41975 != D.41964) goto <D.41976>; else goto <D.41977>;
  <D.41976>:
  D.41978 = strlen (buf);
  D.41979 = buf + D.41978;
  D.41980 = strlen (buf);
  D.41981 = 65536 - D.41980;
  D.41962 = ice_out->cands[0][0].transport;
  D.41963 = ice_out->cands[0][0].con_addr;
  D.41964 = ice_out->cands[0][0].con_port;
  D.41965 = (int) D.41964;
  D.41966 = a_engine->local_sdp_ip;
  D.41975 = a_engine->local_sdp_port;
  D.41982 = (int) D.41975;
  switch_snprintf (D.41979, D.41981, "a=candidate:%s 1 %s %u %s %d typ srflx raddr %s rport %d generation 0\n", &tmp2, D.41962, c3, D.41963, D.41965, D.41966, D.41982);
  <D.41977>:
  <D.41974>:
  <D.41972>:
  <D.41969>:
  D.41910 = a_engine->rtcp_mux;
  D.41985 = D.41910 <= 0;
  D.41986 = is_outbound != 0;
  D.41987 = D.41985 || D.41986;
  if (D.41987 != 0) goto <D.41983>; else goto <D.41988>;
  <D.41988>:
  D.41512 = session->channel;
  D.41989 = switch_channel_test_flag (D.41512, 84);
  if (D.41989 != 0) goto <D.41983>; else goto <D.41984>;
  <D.41983>:
  D.41990 = strlen (buf);
  D.41991 = buf + D.41990;
  D.41992 = strlen (buf);
  D.41993 = 65536 - D.41992;
  D.41962 = ice_out->cands[0][0].transport;
  D.41963 = ice_out->cands[0][0].con_addr;
  D.41964 = ice_out->cands[0][0].con_port;
  D.41965 = (int) D.41964;
  D.41910 = a_engine->rtcp_mux;
  D.41994 = D.41910 <= 0;
  D.41995 = D.41965 + D.41994;
  switch_snprintf (D.41991, D.41993, "a=candidate:%s 2 %s %u %s %d typ host generation 0\n", &tmp1, D.41962, c2, D.41963, D.41995);
  D.41966 = a_engine->local_sdp_ip;
  D.41996 = _zstr (D.41966);
  if (D.41996 == 0) goto <D.41997>; else goto <D.41998>;
  <D.41997>:
  D.41963 = ice_out->cands[0][0].con_addr;
  D.41999 = _zstr (D.41963);
  if (D.41999 == 0) goto <D.42000>; else goto <D.42001>;
  <D.42000>:
  D.41966 = a_engine->local_sdp_ip;
  D.41963 = ice_out->cands[0][0].con_addr;
  D.39607 = __builtin_strcmp (D.41966, D.41963);
  if (D.39607 != 0) goto <D.42002>; else goto <D.42003>;
  <D.42002>:
  D.41975 = a_engine->local_sdp_port;
  D.41964 = ice_out->cands[0][0].con_port;
  if (D.41975 != D.41964) goto <D.42004>; else goto <D.42005>;
  <D.42004>:
  D.42006 = strlen (buf);
  D.42007 = buf + D.42006;
  D.42008 = strlen (buf);
  D.42009 = 65536 - D.42008;
  D.41962 = ice_out->cands[0][0].transport;
  D.41963 = ice_out->cands[0][0].con_addr;
  D.41964 = ice_out->cands[0][0].con_port;
  D.41965 = (int) D.41964;
  D.41910 = a_engine->rtcp_mux;
  D.41994 = D.41910 <= 0;
  D.41995 = D.41965 + D.41994;
  D.41966 = a_engine->local_sdp_ip;
  D.41975 = a_engine->local_sdp_port;
  D.41982 = (int) D.41975;
  D.41910 = a_engine->rtcp_mux;
  D.41994 = D.41910 <= 0;
  D.42010 = D.41982 + D.41994;
  switch_snprintf (D.42007, D.42009, "a=candidate:%s 2 %s %u %s %d typ srflx raddr %s rport %d generation 0\n", &tmp2, D.41962, c4, D.41963, D.41995, D.41966, D.42010);
  <D.42005>:
  <D.42003>:
  <D.42001>:
  <D.41998>:
  <D.41984>:
  <D.41929>:
  D.41736 = a_engine->crypto_type;
  if (D.41736 != 9) goto <D.42011>; else goto <D.42012>;
  <D.42011>:
  D.41512 = session->channel;
  D.42013 = switch_channel_test_flag (D.41512, 109);
  if (D.42013 == 0) goto <D.42014>; else goto <D.42015>;
  <D.42014>:
  D.41736 = a_engine->crypto_type;
  D.42016 = a_engine->ssec[D.41736].local_crypto_key;
  D.42017 = _zstr (D.42016);
  if (D.42017 == 0) goto <D.42018>; else goto <D.42019>;
  <D.42018>:
  D.41512 = session->channel;
  D.42020 = switch_channel_test_flag (D.41512, 92);
  if (D.42020 != 0) goto <D.42021>; else goto <D.42022>;
  <D.42021>:
  D.42023 = strlen (buf);
  D.42024 = buf + D.42023;
  D.42025 = strlen (buf);
  D.42026 = 65536 - D.42025;
  D.41736 = a_engine->crypto_type;
  D.42016 = a_engine->ssec[D.41736].local_crypto_key;
  switch_snprintf (D.42024, D.42026, "a=crypto:%s\n", D.42016);
  <D.42022>:
  <D.42019>:
  <D.42015>:
  <D.42012>:
  goto <D.42027>;
  <D.41722>:
  D.41522 = smh->mparams;
  D.41587 = D.41522->num_codecs;
  if (D.41587 != 0) goto <D.42028>; else goto <D.42029>;
  <D.42028>:
  cur_ptime = 0;
  this_ptime = 0;
  cng_type = 0;
  D.42030 = switch_media_handle_test_media_flag (smh, 9);
  if (D.42030 == 0) goto <D.42031>; else goto <D.42032>;
  <D.42031>:
  D.41522 = smh->mparams;
  D.41606 = D.41522->cng_pt;
  D.41607 = D.41606 != 0;
  D.41608 = use_cng != 0;
  D.41609 = D.41607 && D.41608;
  if (D.41609 != 0) goto <D.42033>; else goto <D.42034>;
  <D.42033>:
  D.41522 = smh->mparams;
  D.41606 = D.41522->cng_pt;
  cng_type = (int) D.41606;
  D.41720 = a_engine->codec_negotiated;
  if (D.41720 == 0) goto <D.42035>; else goto <D.42036>;
  <D.42035>:
  D.41522 = smh->mparams;
  D.41522->cng_pt = 0;
  <D.42036>:
  <D.42034>:
  <D.42032>:
  D.41512 = session->channel;
  mult = switch_channel_get_variable_dup (D.41512, "sdp_m_per_ptime", 1, -1);
  D.41512 = session->channel;
  D.42039 = switch_channel_test_flag (D.41512, 106);
  if (D.42039 != 0) goto <D.42037>; else goto <D.42040>;
  <D.42040>:
  if (mult != 0B) goto <D.42041>; else goto <D.42038>;
  <D.42041>:
  D.42042 = switch_false (mult);
  if (D.42042 != 0) goto <D.42037>; else goto <D.42038>;
  <D.42037>:
  bp = buf;
  D.41512 = session->channel;
  D.42046 = switch_channel_test_flag (D.41512, 106);
  if (D.42046 == 0) goto <D.42047>; else goto <D.42044>;
  <D.42047>:
  D.41512 = session->channel;
  D.42048 = switch_channel_test_flag (D.41512, 109);
  if (D.42048 == 0) goto <D.42049>; else goto <D.42044>;
  <D.42049>:
  iftmp.32 = 1;
  goto <D.42045>;
  <D.42044>:
  iftmp.32 = 0;
  <D.42045>:
  both = iftmp.32;
  D.41732 = a_engine->no_crypto;
  if (D.41732 == 0) goto <D.42053>; else goto <D.42050>;
  <D.42053>:
  D.41512 = session->channel;
  D.42054 = switch_channel_test_flag (D.41512, 92);
  if (D.42054 != 0) goto <D.42051>; else goto <D.42050>;
  <D.42050>:
  D.41512 = session->channel;
  D.42055 = switch_channel_test_flag (D.41512, 109);
  if (D.42055 != 0) goto <D.42051>; else goto <D.42052>;
  <D.42051>:
  map.33 = map;
  generate_m (session, buf, 65536, port, family, ip, 0, append_audio, sr, use_cng, cng_type, map.33, 1, sdp_type);
  D.42057 = strlen (buf);
  bp = buf + D.42057;
  D.42058 = smh->crypto_mode;
  if (D.42058 == 1) goto <D.42059>; else goto <D.42060>;
  <D.42059>:
  both = 0;
  <D.42060>:
  <D.42052>:
  if (both != 0) goto <D.42061>; else goto <D.42062>;
  <D.42061>:
  D.42063 = strlen (buf);
  D.42064 = 65536 - D.42063;
  map.33 = map;
  generate_m (session, bp, D.42064, port, family, ip, 0, append_audio, sr, use_cng, cng_type, map.33, 0, sdp_type);
  <D.42062>:
  goto <D.39621>;
  <D.42038>:
  i = 0;
  goto <D.39620>;
  <D.39619>:
  imp = smh->codecs[i];
  D.42065 = imp->codec_type;
  if (D.42065 != 0) goto <D.42066>; else goto <D.42067>;
  <D.42066>:
  // predicted unlikely by continue predictor.
  goto <D.39616>;
  <D.42067>:
  D.42068 = imp->microseconds_per_packet;
  this_ptime = D.42068 / 1000;
  D.42071 = imp->iananame;
  D.42072 = strcasecmp (D.42071, "ilbc");
  if (D.42072 == 0) goto <D.42069>; else goto <D.42073>;
  <D.42073>:
  D.42071 = imp->iananame;
  D.42074 = strcasecmp (D.42071, "isac");
  if (D.42074 == 0) goto <D.42069>; else goto <D.42070>;
  <D.42069>:
  this_ptime = 20;
  <D.42070>:
  if (cur_ptime != this_ptime) goto <D.42075>; else goto <D.42076>;
  <D.42075>:
  bp = buf;
  both = 1;
  cur_ptime = this_ptime;
  D.41732 = a_engine->no_crypto;
  if (D.41732 == 0) goto <D.42080>; else goto <D.42077>;
  <D.42080>:
  D.41512 = session->channel;
  D.42081 = switch_channel_test_flag (D.41512, 92);
  if (D.42081 != 0) goto <D.42078>; else goto <D.42077>;
  <D.42077>:
  D.41512 = session->channel;
  D.42082 = switch_channel_test_flag (D.41512, 109);
  if (D.42082 != 0) goto <D.42078>; else goto <D.42079>;
  <D.42078>:
  D.42083 = strlen (buf);
  D.42084 = 65536 - D.42083;
  map.33 = map;
  generate_m (session, bp, D.42084, port, family, ip, cur_ptime, append_audio, sr, use_cng, cng_type, map.33, 1, sdp_type);
  D.42085 = strlen (buf);
  bp = buf + D.42085;
  D.42058 = smh->crypto_mode;
  if (D.42058 == 1) goto <D.42086>; else goto <D.42087>;
  <D.42086>:
  both = 0;
  <D.42087>:
  <D.42079>:
  D.41512 = session->channel;
  D.42090 = switch_channel_test_flag (D.41512, 106);
  if (D.42090 != 0) goto <D.42088>; else goto <D.42091>;
  <D.42091>:
  D.41512 = session->channel;
  D.42092 = switch_channel_test_flag (D.41512, 109);
  if (D.42092 != 0) goto <D.42088>; else goto <D.42089>;
  <D.42088>:
  both = 0;
  <D.42089>:
  if (both != 0) goto <D.42093>; else goto <D.42094>;
  <D.42093>:
  D.42095 = strlen (buf);
  D.42096 = 65536 - D.42095;
  map.33 = map;
  generate_m (session, bp, D.42096, port, family, ip, cur_ptime, append_audio, sr, use_cng, cng_type, map.33, 0, sdp_type);
  <D.42094>:
  <D.42076>:
  <D.39616>:
  i = i + 1;
  <D.39620>:
  D.41522 = smh->mparams;
  D.41587 = D.41522->num_codecs;
  if (D.41587 > i) goto <D.39619>; else goto <D.39621>;
  <D.39621>:
  <D.42029>:
  <D.42027>:
  D.41512 = session->channel;
  D.42097 = switch_channel_test_flag (D.41512, 98);
  if (D.42097 != 0) goto <D.42098>; else goto <D.42099>;
  <D.42098>:
  D.41512 = session->channel;
  D.42100 = switch_channel_direction (D.41512);
  if (D.42100 == 0) goto <D.42101>; else goto <D.42102>;
  <D.42101>:
  D.41534 = smh->session;
  D.41535 = D.41534->channel;
  D.42103 = switch_channel_test_flag (D.41535, 109);
  if (D.42103 != 0) goto <D.42104>; else goto <D.42105>;
  <D.42104>:
  v_engine->no_crypto = 1;
  <D.42105>:
  <D.42102>:
  D.42106 = v_engine->local_sdp_port;
  if (D.42106 == 0) goto <D.42107>; else goto <D.42108>;
  <D.42107>:
  switch_core_media_choose_port (session, 1, 0);
  <D.42108>:
  D.41512 = session->channel;
  D.42109 = switch_channel_test_flag (D.41512, 106);
  if (D.42109 != 0) goto <D.42110>; else goto <D.42111>;
  <D.42110>:
  switch_media_handle_set_media_flag (smh, 16);
  <D.42111>:
  D.42112 = v_engine->adv_sdp_port;
  v_port = (uint32_t) D.42112;
  if (v_port != 0) goto <D.42113>; else goto <D.42114>;
  <D.42113>:
  loops = 0;
  goto <D.39683>;
  <D.39682>:
  D.41534 = smh->session;
  D.41535 = D.41534->channel;
  D.42115 = switch_channel_test_flag (D.41535, 108);
  if (D.42115 != 0) goto <D.42116>; else goto <D.42117>;
  <D.42116>:
  D.42118 = (short unsigned int) v_port;
  gen_ice (session, 1, ip, D.42118);
  <D.42117>:
  D.42119 = strlen (buf);
  D.42120 = buf + D.42119;
  D.42121 = strlen (buf);
  D.42122 = 65536 - D.42121;
  if (loops == 0) goto <D.42128>; else goto <D.42124>;
  <D.42128>:
  D.41512 = session->channel;
  D.42129 = switch_channel_test_flag (D.41512, 92);
  if (D.42129 != 0) goto <D.42130>; else goto <D.42124>;
  <D.42130>:
  D.41512 = session->channel;
  D.42131 = switch_channel_direction (D.41512);
  if (D.42131 == 1) goto <D.42125>; else goto <D.42124>;
  <D.42124>:
  D.41736 = a_engine->crypto_type;
  if (D.41736 != 9) goto <D.42125>; else goto <D.42132>;
  <D.42132>:
  D.41512 = session->channel;
  D.42133 = switch_channel_test_flag (D.41512, 109);
  if (D.42133 != 0) goto <D.42125>; else goto <D.42126>;
  <D.42125>:
  iftmp.34 = 1;
  goto <D.42127>;
  <D.42126>:
  iftmp.34 = 0;
  <D.42127>:
  D.42134 = get_media_profile_name (session, iftmp.34);
  switch_snprintf (D.42120, D.42122, "m=video %d %s", v_port, D.42134);
  D.42135 = v_engine->codec_negotiated;
  if (D.42135 != 0) goto <D.42136>; else goto <D.42137>;
  <D.42136>:
  switch_core_media_set_video_codec (session, 0);
  D.42138 = strlen (buf);
  D.42139 = buf + D.42138;
  D.42140 = strlen (buf);
  D.42141 = 65536 - D.42140;
  D.42142 = v_engine->cur_payload_map;
  D.42143 = D.42142->agreed_pt;
  D.42144 = (int) D.42143;
  switch_snprintf (D.42139, D.42141, " %d", D.42144);
  D.42145 = switch_media_handle_test_media_flag (smh, 16);
  if (D.42145 != 0) goto <D.42146>; else goto <D.42147>;
  <D.42146>:
  D.41747 = smh->sdp_mutex;
  switch_mutex_lock (D.41747);
  pmap = v_engine->cur_payload_map;
  goto <D.39625>;
  <D.39624>:
  D.42148 = pmap->pt;
  D.42142 = v_engine->cur_payload_map;
  D.42149 = D.42142->pt;
  if (D.42148 != D.42149) goto <D.42150>; else goto <D.42151>;
  <D.42150>:
  D.42152 = strlen (buf);
  D.42153 = buf + D.42152;
  D.42154 = strlen (buf);
  D.42155 = 65536 - D.42154;
  D.42148 = pmap->pt;
  D.42156 = (int) D.42148;
  switch_snprintf (D.42153, D.42155, " %d", D.42156);
  <D.42151>:
  pmap = pmap->next;
  <D.39625>:
  if (pmap != 0B) goto <D.42157>; else goto <D.39626>;
  <D.42157>:
  D.42158 = pmap->allocated;
  if (D.42158 != 0) goto <D.39624>; else goto <D.39626>;
  <D.39626>:
  D.41747 = smh->sdp_mutex;
  switch_mutex_unlock (D.41747);
  <D.42147>:
  goto <D.42159>;
  <D.42137>:
  D.41522 = smh->mparams;
  D.41587 = D.41522->num_codecs;
  if (D.41587 != 0) goto <D.42160>; else goto <D.42161>;
  <D.42160>:
  already_did = {};
  i = 0;
  goto <D.39632>;
  <D.39631>:
  imp = smh->codecs[i];
  D.42162 = imp->codec_type;
  if (D.42162 != 1) goto <D.42163>; else goto <D.42164>;
  <D.42163>:
  // predicted unlikely by continue predictor.
  goto <D.39630>;
  <D.42164>:
  D.41512 = session->channel;
  D.42165 = switch_channel_direction (D.41512);
  if (D.42165 == 0) goto <D.42166>; else goto <D.42167>;
  <D.42166>:
  D.41512 = session->channel;
  D.42168 = switch_channel_test_flag (D.41512, 114);
  if (D.42168 != 0) goto <D.42169>; else goto <D.42170>;
  <D.42169>:
  // predicted unlikely by continue predictor.
  goto <D.39630>;
  <D.42170>:
  <D.42167>:
  D.42171 = smh->ianacodes[i];
  D.42172 = (signed char) D.42171;
  if (D.42172 >= 0) goto <D.42173>; else goto <D.42174>;
  <D.42173>:
  D.42171 = smh->ianacodes[i];
  D.42175 = (int) D.42171;
  D.42176 = already_did[D.42175];
  if (D.42176 != 0) goto <D.42177>; else goto <D.42178>;
  <D.42177>:
  // predicted unlikely by continue predictor.
  goto <D.39630>;
  <D.42178>:
  D.42171 = smh->ianacodes[i];
  D.42175 = (int) D.42171;
  already_did[D.42175] = 1;
  <D.42174>:
  D.42179 = strlen (buf);
  D.42180 = buf + D.42179;
  D.42181 = strlen (buf);
  D.42182 = 65536 - D.42181;
  D.42171 = smh->ianacodes[i];
  D.42175 = (int) D.42171;
  switch_snprintf (D.42180, D.42182, " %d", D.42175);
  if (ptime == 0) goto <D.42183>; else goto <D.42184>;
  <D.42183>:
  D.42185 = imp->microseconds_per_packet;
  ptime = D.42185 / 1000;
  <D.42184>:
  <D.39630>:
  i = i + 1;
  <D.39632>:
  D.41522 = smh->mparams;
  D.41587 = D.41522->num_codecs;
  if (D.41587 > i) goto <D.39631>; else goto <D.39633>;
  <D.39633>:
  <D.42161>:
  <D.42159>:
  D.42186 = strlen (buf);
  D.42187 = buf + D.42186;
  D.42188 = strlen (buf);
  D.42189 = 65536 - D.42188;
  switch_snprintf (D.42187, D.42189, "\n");
  D.42135 = v_engine->codec_negotiated;
  if (D.42135 != 0) goto <D.42190>; else goto <D.42191>;
  <D.42190>:
  D.42142 = v_engine->cur_payload_map;
  D.42192 = D.42142->rm_encoding;
  D.42193 = strcasecmp (D.42192, "VP8");
  if (D.42193 == 0) goto <D.42194>; else goto <D.42195>;
  <D.42194>:
  D.42142 = v_engine->cur_payload_map;
  D.42149 = D.42142->pt;
  vp8 = (int) D.42149;
  <D.42195>:
  D.42142 = v_engine->cur_payload_map;
  D.42192 = D.42142->rm_encoding;
  D.42196 = strcasecmp (D.42192, "red");
  if (D.42196 == 0) goto <D.42197>; else goto <D.42198>;
  <D.42197>:
  D.42142 = v_engine->cur_payload_map;
  D.42149 = D.42142->pt;
  red = (int) D.42149;
  <D.42198>:
  D.42142 = v_engine->cur_payload_map;
  rate = D.42142->rm_rate;
  D.42199 = strlen (buf);
  D.42200 = buf + D.42199;
  D.42201 = strlen (buf);
  D.42202 = 65536 - D.42201;
  D.42142 = v_engine->cur_payload_map;
  D.42149 = D.42142->pt;
  D.42203 = (int) D.42149;
  D.42142 = v_engine->cur_payload_map;
  D.42192 = D.42142->rm_encoding;
  D.42142 = v_engine->cur_payload_map;
  D.42204 = D.42142->rm_rate;
  switch_snprintf (D.42200, D.42202, "a=rtpmap:%d %s/%ld\n", D.42203, D.42192, D.42204);
  D.41512 = session->channel;
  D.42205 = switch_channel_test_flag (D.41512, 84);
  if (D.42205 != 0) goto <D.42206>; else goto <D.42207>;
  <D.42206>:
  D.42142 = v_engine->cur_payload_map;
  pass_fmtp = D.42142->rm_fmtp;
  goto <D.42208>;
  <D.42207>:
  pass_fmtp = 0B;
  D.41512 = session->channel;
  D.42209 = switch_channel_get_partner_uuid (D.41512);
  if (D.42209 != 0B) goto <D.42210>; else goto <D.42211>;
  <D.42210>:
  D.41512 = session->channel;
  of = switch_channel_get_variable_partner (D.41512, "rtp_video_fmtp");
  if (of != 0B) goto <D.42212>; else goto <D.42213>;
  <D.42212>:
  pass_fmtp = of;
  <D.42213>:
  <D.42211>:
  if (ov_fmtp != 0B) goto <D.42214>; else goto <D.42215>;
  <D.42214>:
  pass_fmtp = ov_fmtp;
  goto <D.42216>;
  <D.42215>:
  D.41512 = session->channel;
  pass_fmtp = switch_channel_get_variable_dup (D.41512, "rtp_video_fmtp", 1, -1);
  <D.42216>:
  <D.42208>:
  if (pass_fmtp != 0B) goto <D.42217>; else goto <D.42218>;
  <D.42217>:
  D.42219 = strlen (buf);
  D.42220 = buf + D.42219;
  D.42221 = strlen (buf);
  D.42222 = 65536 - D.42221;
  D.42142 = v_engine->cur_payload_map;
  D.42149 = D.42142->pt;
  D.42203 = (int) D.42149;
  switch_snprintf (D.42220, D.42222, "a=fmtp:%d %s\n", D.42203, pass_fmtp);
  <D.42218>:
  D.42223 = switch_media_handle_test_media_flag (smh, 16);
  if (D.42223 != 0) goto <D.42224>; else goto <D.42225>;
  <D.42224>:
  D.41747 = smh->sdp_mutex;
  switch_mutex_lock (D.41747);
  pmap = v_engine->cur_payload_map;
  goto <D.39637>;
  <D.39636>:
  D.42226 = pmap->pt;
  D.42142 = v_engine->cur_payload_map;
  D.42149 = D.42142->pt;
  if (D.42226 != D.42149) goto <D.42227>; else goto <D.42228>;
  <D.42227>:
  D.42229 = pmap->negotiated;
  if (D.42229 != 0) goto <D.42230>; else goto <D.42231>;
  <D.42230>:
  D.42232 = strlen (buf);
  D.42233 = buf + D.42232;
  D.42234 = strlen (buf);
  D.42235 = 65536 - D.42234;
  D.42226 = pmap->pt;
  D.42236 = (int) D.42226;
  D.42237 = pmap->iananame;
  D.42238 = pmap->rate;
  switch_snprintf (D.42233, D.42235, "a=rtpmap:%d %s/%ld\n", D.42236, D.42237, D.42238);
  <D.42231>:
  <D.42228>:
  pmap = pmap->next;
  <D.39637>:
  if (pmap != 0B) goto <D.42239>; else goto <D.39638>;
  <D.42239>:
  D.42240 = pmap->allocated;
  if (D.42240 != 0) goto <D.39636>; else goto <D.39638>;
  <D.39638>:
  D.41747 = smh->sdp_mutex;
  switch_mutex_unlock (D.41747);
  <D.42225>:
  if (append_video != 0B) goto <D.42241>; else goto <D.42242>;
  <D.42241>:
  D.42243 = strlen (buf);
  D.42244 = buf + D.42243;
  D.42245 = strlen (buf);
  D.42246 = 65536 - D.42245;
  D.42249 = *append_video;
  if (D.42249 != 0) goto <D.42250>; else goto <D.42251>;
  <D.42250>:
  D.42252 = strlen (append_video);
  D.42253 = D.42252 + -1;
  iftmp.36 = append_video + D.42253;
  goto <D.42254>;
  <D.42251>:
  iftmp.36 = append_video;
  <D.42254>:
  D.42255 = *iftmp.36;
  if (D.42255 == 10) goto <D.42256>; else goto <D.42257>;
  <D.42256>:
  iftmp.35 = "";
  goto <D.42258>;
  <D.42257>:
  iftmp.35 = "\n";
  <D.42258>:
  switch_snprintf (D.42244, D.42246, "%s%s", append_video, iftmp.35);
  <D.42242>:
  goto <D.42259>;
  <D.42191>:
  D.41522 = smh->mparams;
  D.41587 = D.41522->num_codecs;
  if (D.41587 != 0) goto <D.42260>; else goto <D.42261>;
  <D.42260>:
  already_did = {};
  i = 0;
  goto <D.39647>;
  <D.39646>:
  imp = smh->codecs[i];
  fmtp = 0B;
  D.42262 = smh->ianacodes[i];
  ianacode = (uint32_t) D.42262;
  D.42263 = imp->codec_type;
  if (D.42263 != 1) goto <D.42264>; else goto <D.42265>;
  <D.42264>:
  // predicted unlikely by continue predictor.
  goto <D.39645>;
  <D.42265>:
  D.41512 = session->channel;
  D.42266 = switch_channel_direction (D.41512);
  if (D.42266 == 0) goto <D.42267>; else goto <D.42268>;
  <D.42267>:
  D.41512 = session->channel;
  D.42269 = switch_channel_test_flag (D.41512, 114);
  if (D.42269 != 0) goto <D.42270>; else goto <D.42271>;
  <D.42270>:
  // predicted unlikely by continue predictor.
  goto <D.39645>;
  <D.42271>:
  <D.42268>:
  if (ianacode <= 127) goto <D.42272>; else goto <D.42273>;
  <D.42272>:
  D.42274 = already_did[ianacode];
  if (D.42274 != 0) goto <D.42275>; else goto <D.42276>;
  <D.42275>:
  // predicted unlikely by continue predictor.
  goto <D.39645>;
  <D.42276>:
  already_did[ianacode] = 1;
  <D.42273>:
  if (rate == 0) goto <D.42277>; else goto <D.42278>;
  <D.42277>:
  rate = imp->samples_per_second;
  <D.42278>:
  D.42279 = imp->iananame;
  D.42280 = imp->number_of_channels;
  D.42281 = (int) D.42280;
  channels = get_channels (D.42279, D.42281);
  D.42279 = imp->iananame;
  D.42282 = strcasecmp (D.42279, "VP8");
  if (D.42282 == 0) goto <D.42283>; else goto <D.42284>;
  <D.42283>:
  vp8 = (int) ianacode;
  <D.42284>:
  D.42279 = imp->iananame;
  D.42285 = strcasecmp (D.42279, "red");
  if (D.42285 == 0) goto <D.42286>; else goto <D.42287>;
  <D.42286>:
  red = (int) ianacode;
  <D.42287>:
  if (channels > 1) goto <D.42288>; else goto <D.42289>;
  <D.42288>:
  D.42290 = strlen (buf);
  D.42291 = buf + D.42290;
  D.42292 = strlen (buf);
  D.42293 = 65536 - D.42292;
  D.42279 = imp->iananame;
  D.42294 = imp->samples_per_second;
  switch_snprintf (D.42291, D.42293, "a=rtpmap:%d %s/%d/%d\n", ianacode, D.42279, D.42294, channels);
  goto <D.42295>;
  <D.42289>:
  D.42296 = strlen (buf);
  D.42297 = buf + D.42296;
  D.42298 = strlen (buf);
  D.42299 = 65536 - D.42298;
  D.42279 = imp->iananame;
  D.42294 = imp->samples_per_second;
  switch_snprintf (D.42297, D.42299, "a=rtpmap:%d %s/%d\n", ianacode, D.42279, D.42294);
  <D.42295>:
  D.42300 = _zstr (ov_fmtp);
  if (D.42300 == 0) goto <D.42301>; else goto <D.42302>;
  <D.42301>:
  fmtp = ov_fmtp;
  goto <D.42303>;
  <D.42302>:
  map.33 = map;
  if (map.33 != 0B) goto <D.42304>; else goto <D.42305>;
  <D.42304>:
  map.33 = map;
  D.42279 = imp->iananame;
  fmtp = switch_event_get_header_idx (map.33, D.42279, -1);
  <D.42305>:
  D.42306 = smh->fmtps[i];
  if (D.42306 != 0B) goto <D.42307>; else goto <D.42308>;
  <D.42307>:
  fmtp = smh->fmtps[i];
  <D.42308>:
  D.42309 = _zstr (fmtp);
  if (D.42309 != 0) goto <D.42310>; else goto <D.42311>;
  <D.42310>:
  fmtp = imp->fmtp;
  <D.42311>:
  D.42312 = _zstr (fmtp);
  if (D.42312 != 0) goto <D.42313>; else goto <D.42314>;
  <D.42313>:
  fmtp = pass_fmtp;
  <D.42314>:
  <D.42303>:
  D.42315 = _zstr (fmtp);
  if (D.42315 == 0) goto <D.42316>; else goto <D.42317>;
  <D.42316>:
  D.42318 = strcasecmp (fmtp, "_blank_");
  if (D.42318 != 0) goto <D.42319>; else goto <D.42320>;
  <D.42319>:
  D.42321 = strlen (buf);
  D.42322 = buf + D.42321;
  D.42323 = strlen (buf);
  D.42324 = 65536 - D.42323;
  switch_snprintf (D.42322, D.42324, "a=fmtp:%d %s\n", ianacode, fmtp);
  <D.42320>:
  <D.42317>:
  <D.39645>:
  i = i + 1;
  <D.39647>:
  D.41522 = smh->mparams;
  D.41587 = D.41522->num_codecs;
  if (D.41587 > i) goto <D.39646>; else goto <D.39648>;
  <D.39648>:
  <D.42261>:
  <D.42259>:
  if (is_outbound != 0) goto <D.42325>; else goto <D.42327>;
  <D.42327>:
  D.41512 = session->channel;
  D.42328 = switch_channel_test_flag (D.41512, 84);
  if (D.42328 != 0) goto <D.42325>; else goto <D.42326>;
  <D.42325>:
  D.41534 = smh->session;
  D.41535 = D.41534->channel;
  D.42329 = switch_channel_test_flag (D.41535, 109);
  if (D.42329 != 0) goto <D.42330>; else goto <D.42331>;
  <D.42330>:
  generate_local_fingerprint (smh, 1);
  <D.42331>:
  <D.42326>:
  D.42332 = v_engine->local_dtls_fingerprint.type;
  D.42333 = _zstr (D.42332);
  if (D.42333 == 0) goto <D.42334>; else goto <D.42335>;
  <D.42334>:
  D.42336 = strlen (buf);
  D.42337 = buf + D.42336;
  D.42338 = strlen (buf);
  D.42339 = 65536 - D.42338;
  D.42332 = v_engine->local_dtls_fingerprint.type;
  D.42340 = &v_engine->local_dtls_fingerprint.str;
  switch_snprintf (D.42337, D.42339, "a=fingerprint:%s %s\n", D.42332, D.42340);
  <D.42335>:
  D.41522 = smh->mparams;
  D.41527 = D.41522->rtcp_video_interval_msec;
  if (D.41527 != 0B) goto <D.42341>; else goto <D.42342>;
  <D.42341>:
  D.42343 = v_engine->rtcp_mux;
  if (D.42343 > 0) goto <D.42344>; else goto <D.42345>;
  <D.42344>:
  D.42346 = strlen (buf);
  D.42347 = buf + D.42346;
  D.42348 = strlen (buf);
  D.42349 = 65536 - D.42348;
  switch_snprintf (D.42347, D.42349, "a=rtcp-mux\n");
  D.42350 = strlen (buf);
  D.42351 = buf + D.42350;
  D.42352 = strlen (buf);
  D.42353 = 65536 - D.42352;
  switch_snprintf (D.42351, D.42353, "a=rtcp:%d IN %s %s\n", v_port, family, ip);
  goto <D.42354>;
  <D.42345>:
  D.42355 = strlen (buf);
  D.42356 = buf + D.42355;
  D.42357 = strlen (buf);
  D.42358 = 65536 - D.42357;
  D.42359 = v_port + 1;
  switch_snprintf (D.42356, D.42358, "a=rtcp:%d IN %s %s\n", D.42359, family, ip);
  <D.42354>:
  <D.42342>:
  D.42360 = BIT_FIELD_REF <*v_engine, 16, 91280>;
  D.42361 = D.42360 & 65535;
  if (D.42361 != 0) goto <D.42362>; else goto <D.42363>;
  <D.42362>:
  D.42364 = strlen (buf);
  D.42365 = buf + D.42364;
  D.42366 = strlen (buf);
  D.42367 = 65536 - D.42366;
  D.42369 = v_engine->fir;
  if (D.42369 != 0) goto <D.42370>; else goto <D.42371>;
  <D.42370>:
  iftmp.37 = "fir ";
  goto <D.42372>;
  <D.42371>:
  iftmp.37 = "";
  <D.42372>:
  D.42374 = v_engine->pli;
  if (D.42374 != 0) goto <D.42375>; else goto <D.42376>;
  <D.42375>:
  iftmp.38 = "pli";
  goto <D.42377>;
  <D.42376>:
  iftmp.38 = "";
  <D.42377>:
  switch_snprintf (D.42365, D.42367, "a=rtcp-fb:* %s%s\n", iftmp.37, iftmp.38);
  <D.42363>:
  D.42378 = v_engine->ice_out.cands[0][0].ready;
  if (D.42378 != 0) goto <D.42379>; else goto <D.42380>;
  <D.42379>:
  tmp1 = "";
  tmp2 = "";
  c1 = 659136;
  c2 = 659134;
  c3 = 659126;
  c4 = 659124;
  bw = 256;
  tmp1[10] = 0;
  tmp2[10] = 0;
  switch_stun_random_string (&tmp1, 10, "0123456789");
  switch_stun_random_string (&tmp2, 10, "0123456789");
  ice_out = &v_engine->ice_out;
  D.41534 = smh->session;
  D.41535 = D.41534->channel;
  vbw = switch_channel_get_variable_dup (D.41535, "rtp_video_max_bandwidth", 1, -1);
  if (vbw != 0B) goto <D.42381>; else goto <D.42382>;
  <D.42381>:
  v = atoi (vbw);
  bw = v;
  <D.42382>:
  if (bw > 0) goto <D.42383>; else goto <D.42384>;
  <D.42383>:
  D.42385 = strlen (buf);
  D.42386 = buf + D.42385;
  D.42387 = strlen (buf);
  D.42388 = 65536 - D.42387;
  switch_snprintf (D.42386, D.42388, "b=AS:%d\n", bw);
  <D.42384>:
  if (vp8 != 0) goto <D.42389>; else goto <D.42390>;
  <D.42389>:
  D.41512 = session->channel;
  D.42391 = switch_channel_test_flag (D.41512, 106);
  if (D.42391 != 0) goto <D.42392>; else goto <D.42393>;
  <D.42392>:
  D.42394 = strlen (buf);
  D.42395 = buf + D.42394;
  D.42396 = strlen (buf);
  D.42397 = 65536 - D.42396;
  switch_snprintf (D.42395, D.42397, "a=rtcp-fb:%d ccm fir\n", vp8);
  <D.42393>:
  <D.42390>:
  if (red != 0) goto <D.42398>; else goto <D.42399>;
  <D.42398>:
  D.42400 = strlen (buf);
  D.42401 = buf + D.42400;
  D.42402 = strlen (buf);
  D.42403 = 65536 - D.42402;
  switch_snprintf (D.42401, D.42403, "a=rtcp-fb:%d nack\n", vp8);
  <D.42399>:
  D.42404 = strlen (buf);
  D.42405 = buf + D.42404;
  D.42406 = strlen (buf);
  D.42407 = 65536 - D.42406;
  D.42408 = v_engine->ssrc;
  D.41935 = smh->cname;
  switch_snprintf (D.42405, D.42407, "a=ssrc:%u cname:%s\n", D.42408, D.41935);
  D.42409 = strlen (buf);
  D.42410 = buf + D.42409;
  D.42411 = strlen (buf);
  D.42412 = 65536 - D.42411;
  D.42408 = v_engine->ssrc;
  D.41719 = smh->msid;
  switch_snprintf (D.42410, D.42412, "a=ssrc:%u msid:%s v0\n", D.42408, D.41719);
  D.42413 = strlen (buf);
  D.42414 = buf + D.42413;
  D.42415 = strlen (buf);
  D.42416 = 65536 - D.42415;
  D.42408 = v_engine->ssrc;
  D.41719 = smh->msid;
  switch_snprintf (D.42414, D.42416, "a=ssrc:%u mslabel:%s\n", D.42408, D.41719);
  D.42417 = strlen (buf);
  D.42418 = buf + D.42417;
  D.42419 = strlen (buf);
  D.42420 = 65536 - D.42419;
  D.42408 = v_engine->ssrc;
  D.41719 = smh->msid;
  switch_snprintf (D.42418, D.42420, "a=ssrc:%u label:%sv0\n", D.42408, D.41719);
  D.42421 = strlen (buf);
  D.42422 = buf + D.42421;
  D.42423 = strlen (buf);
  D.42424 = 65536 - D.42423;
  D.41952 = ice_out->ufrag;
  switch_snprintf (D.42422, D.42424, "a=ice-ufrag:%s\n", D.41952);
  D.42425 = strlen (buf);
  D.42426 = buf + D.42425;
  D.42427 = strlen (buf);
  D.42428 = 65536 - D.42427;
  D.41957 = ice_out->pwd;
  switch_snprintf (D.42426, D.42428, "a=ice-pwd:%s\n", D.41957);
  D.42429 = strlen (buf);
  D.42430 = buf + D.42429;
  D.42431 = strlen (buf);
  D.42432 = 65536 - D.42431;
  D.41962 = ice_out->cands[0][0].transport;
  D.41963 = ice_out->cands[0][0].con_addr;
  D.41964 = ice_out->cands[0][0].con_port;
  D.41965 = (int) D.41964;
  switch_snprintf (D.42430, D.42432, "a=candidate:%s 1 %s %u %s %d typ host generation 0\n", &tmp1, D.41962, c1, D.41963, D.41965);
  D.42433 = v_engine->local_sdp_ip;
  D.42434 = _zstr (D.42433);
  if (D.42434 == 0) goto <D.42435>; else goto <D.42436>;
  <D.42435>:
  D.41963 = ice_out->cands[0][0].con_addr;
  D.42437 = _zstr (D.41963);
  if (D.42437 == 0) goto <D.42438>; else goto <D.42439>;
  <D.42438>:
  D.42433 = v_engine->local_sdp_ip;
  D.41963 = ice_out->cands[0][0].con_addr;
  D.39666 = __builtin_strcmp (D.42433, D.41963);
  if (D.39666 != 0) goto <D.42440>; else goto <D.42441>;
  <D.42440>:
  D.42106 = v_engine->local_sdp_port;
  D.41964 = ice_out->cands[0][0].con_port;
  if (D.42106 != D.41964) goto <D.42442>; else goto <D.42443>;
  <D.42442>:
  D.42444 = strlen (buf);
  D.42445 = buf + D.42444;
  D.42446 = strlen (buf);
  D.42447 = 65536 - D.42446;
  D.41962 = ice_out->cands[0][0].transport;
  D.41963 = ice_out->cands[0][0].con_addr;
  D.41964 = ice_out->cands[0][0].con_port;
  D.41965 = (int) D.41964;
  D.42433 = v_engine->local_sdp_ip;
  D.42106 = v_engine->local_sdp_port;
  D.42448 = (int) D.42106;
  switch_snprintf (D.42445, D.42447, "a=candidate:%s 1 %s %u %s %d typ srflx raddr %s rport %d generation 0\n", &tmp2, D.41962, c3, D.41963, D.41965, D.42433, D.42448);
  <D.42443>:
  <D.42441>:
  <D.42439>:
  <D.42436>:
  D.42343 = v_engine->rtcp_mux;
  D.42451 = D.42343 <= 0;
  D.41986 = is_outbound != 0;
  D.42452 = D.42451 || D.41986;
  if (D.42452 != 0) goto <D.42449>; else goto <D.42453>;
  <D.42453>:
  D.41512 = session->channel;
  D.42454 = switch_channel_test_flag (D.41512, 84);
  if (D.42454 != 0) goto <D.42449>; else goto <D.42450>;
  <D.42449>:
  D.42455 = strlen (buf);
  D.42456 = buf + D.42455;
  D.42457 = strlen (buf);
  D.42458 = 65536 - D.42457;
  D.41962 = ice_out->cands[0][0].transport;
  D.41963 = ice_out->cands[0][0].con_addr;
  D.41964 = ice_out->cands[0][0].con_port;
  D.41965 = (int) D.41964;
  D.42343 = v_engine->rtcp_mux;
  D.42459 = D.42343 <= 0;
  D.42460 = D.41965 + D.42459;
  switch_snprintf (D.42456, D.42458, "a=candidate:%s 2 %s %u %s %d typ host generation 0\n", &tmp1, D.41962, c2, D.41963, D.42460);
  D.42433 = v_engine->local_sdp_ip;
  D.42461 = _zstr (D.42433);
  if (D.42461 == 0) goto <D.42462>; else goto <D.42463>;
  <D.42462>:
  D.42464 = ice_out->cands[0][1].con_addr;
  D.42465 = _zstr (D.42464);
  if (D.42465 == 0) goto <D.42466>; else goto <D.42467>;
  <D.42466>:
  D.42433 = v_engine->local_sdp_ip;
  D.42464 = ice_out->cands[0][1].con_addr;
  D.39675 = __builtin_strcmp (D.42433, D.42464);
  if (D.39675 != 0) goto <D.42468>; else goto <D.42469>;
  <D.42468>:
  D.42106 = v_engine->local_sdp_port;
  D.42470 = ice_out->cands[0][1].con_port;
  if (D.42106 != D.42470) goto <D.42471>; else goto <D.42472>;
  <D.42471>:
  D.42473 = strlen (buf);
  D.42474 = buf + D.42473;
  D.42475 = strlen (buf);
  D.42476 = 65536 - D.42475;
  D.41962 = ice_out->cands[0][0].transport;
  D.41963 = ice_out->cands[0][0].con_addr;
  D.41964 = ice_out->cands[0][0].con_port;
  D.41965 = (int) D.41964;
  D.42343 = v_engine->rtcp_mux;
  D.42459 = D.42343 <= 0;
  D.42460 = D.41965 + D.42459;
  D.42433 = v_engine->local_sdp_ip;
  D.42106 = v_engine->local_sdp_port;
  D.42448 = (int) D.42106;
  D.42343 = v_engine->rtcp_mux;
  D.42459 = D.42343 <= 0;
  D.42477 = D.42448 + D.42459;
  switch_snprintf (D.42474, D.42476, "a=candidate:%s 2 %s %u %s %d typ srflx generation 0\n", &tmp2, D.41962, c4, D.41963, D.42460, D.42433, D.42477);
  <D.42472>:
  <D.42469>:
  <D.42467>:
  <D.42463>:
  <D.42450>:
  <D.42380>:
  if (loops == 0) goto <D.42478>; else goto <D.42479>;
  <D.42478>:
  D.41512 = session->channel;
  D.42480 = switch_channel_test_flag (D.41512, 92);
  if (D.42480 != 0) goto <D.42481>; else goto <D.42482>;
  <D.42481>:
  D.41512 = session->channel;
  D.42483 = switch_channel_test_flag (D.41512, 109);
  if (D.42483 == 0) goto <D.42484>; else goto <D.42485>;
  <D.42484>:
  i = 0;
  goto <D.39679>;
  <D.39678>:
  D.42486 = smh->crypto_suite_order[i];
  j = SUITES[D.42486].type;
  D.41736 = a_engine->crypto_type;
  if (D.41736 == j) goto <D.42487>; else goto <D.42489>;
  <D.42489>:
  D.41736 = a_engine->crypto_type;
  if (D.41736 == 9) goto <D.42487>; else goto <D.42488>;
  <D.42487>:
  D.42490 = a_engine->ssec[j].local_crypto_key;
  D.42491 = _zstr (D.42490);
  if (D.42491 == 0) goto <D.42492>; else goto <D.42493>;
  <D.42492>:
  D.42494 = strlen (buf);
  D.42495 = buf + D.42494;
  D.42496 = strlen (buf);
  D.42497 = 65536 - D.42496;
  D.42498 = v_engine->ssec[j].local_crypto_key;
  switch_snprintf (D.42495, D.42497, "a=crypto:%s\n", D.42498);
  <D.42493>:
  <D.42488>:
  i = i + 1;
  <D.39679>:
  D.42486 = smh->crypto_suite_order[i];
  if (D.42486 != 9) goto <D.39678>; else goto <D.39680>;
  <D.39680>:
  <D.42485>:
  <D.42482>:
  <D.42479>:
  if (local_sdp_video_zrtp_hash != 0B) goto <D.42499>; else goto <D.42500>;
  <D.42499>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 6892, session, 7, "Adding video a=zrtp-hash:%s\n", local_sdp_video_zrtp_hash);
  D.42501 = strlen (buf);
  D.42502 = buf + D.42501;
  D.42503 = strlen (buf);
  D.42504 = 65536 - D.42503;
  switch_snprintf (D.42502, D.42504, "a=zrtp-hash:%s\n", local_sdp_video_zrtp_hash);
  <D.42500>:
  D.41512 = session->channel;
  D.42505 = switch_channel_test_flag (D.41512, 109);
  if (D.42505 != 0) goto <D.39681>; else goto <D.42506>;
  <D.42506>:
  D.41512 = session->channel;
  D.42507 = switch_channel_test_flag (D.41512, 92);
  if (D.42507 == 0) goto <D.39681>; else goto <D.42508>;
  <D.42508>:
  D.42058 = smh->crypto_mode;
  if (D.42058 == 1) goto <D.39681>; else goto <D.42509>;
  <D.42509>:
  D.42058 = smh->crypto_mode;
  if (D.42058 == 2) goto <D.39681>; else goto <D.42510>;
  <D.42510>:
  loops = loops + 1;
  <D.39683>:
  if (loops <= 1) goto <D.39682>; else goto <D.39681>;
  <D.39681>:
  <D.42114>:
  <D.42099>:
  map.33 = map;
  if (map.33 != 0B) goto <D.42511>; else goto <D.42512>;
  <D.42511>:
  switch_event_destroy (&map);
  <D.42512>:
  ptmap.39 = ptmap;
  if (ptmap.39 != 0B) goto <D.42514>; else goto <D.42515>;
  <D.42514>:
  switch_event_destroy (&ptmap);
  <D.42515>:
  switch_core_media_set_local_sdp (session, buf, 1);
  if (buf != 0B) goto <D.42516>; else goto <D.42517>;
  <D.42516>:
  free (buf);
  buf = 0B;
  <D.42517>:
  <D.42518>:
  return;
}



;; Function dtls_ok (dtls_ok)

dtls_ok (struct switch_core_session_t * session)
{
  uint32_t D.42521;
  struct switch_channel_t * D.42520;
  int D.42519;

  D.42520 = session->channel;
  D.42521 = switch_channel_test_flag (D.42520, 111);
  D.42519 = (int) D.42521;
  goto <D.42522>;
  <D.42522>:
  return D.42519;
}



;; Function switch_core_session_parse_crypto_prefs (switch_core_session_parse_crypto_prefs)

switch_core_session_parse_crypto_prefs (struct switch_core_session_t * session)
{
  int ok;
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
  int D.42571;
  switch_rtp_crypto_mode_t D.42569;
  int D.42565;
  int D.42562;
  int D.42561;
  int D.42559;
  int D.42552;
  uint32_t D.42550;
  switch_call_direction_t D.42548;
  int D.42543;
  int D.42540;
  int D.42535;
  switch_call_direction_t D.42529;
  uint32_t D.42526;
  struct switch_channel_t * D.42525;

  var = 0B;
  val = 0B;
  suites = 0B;
  argc = 0;
  i = 0;
  j = 0;
  k = 0;
  smh = session->media_handle;
  if (smh == 0B) goto <D.42523>; else goto <D.42524>;
  <D.42523>:
  goto <D.42583>;
  <D.42524>:
  D.42525 = session->channel;
  D.42526 = switch_channel_test_flag (D.42525, 106);
  if (D.42526 != 0) goto <D.42527>; else goto <D.42528>;
  <D.42527>:
  goto <D.42583>;
  <D.42528>:
  D.42525 = session->channel;
  D.42529 = switch_channel_direction (D.42525);
  if (D.42529 == 0) goto <D.42530>; else goto <D.42531>;
  <D.42530>:
  var = "rtp_secure_media_inbound";
  goto <D.42532>;
  <D.42531>:
  var = "rtp_secure_media_outbound";
  <D.42532>:
  D.42525 = session->channel;
  val = switch_channel_get_variable_dup (D.42525, var, 1, -1);
  if (val == 0B) goto <D.42533>; else goto <D.42534>;
  <D.42533>:
  var = "rtp_secure_media";
  D.42525 = session->channel;
  val = switch_channel_get_variable_dup (D.42525, var, 1, -1);
  <D.42534>:
  D.42535 = _zstr (val);
  if (D.42535 == 0) goto <D.42536>; else goto <D.42537>;
  <D.42536>:
  suites = __builtin_strchr (val, 58);
  if (suites != 0B) goto <D.42538>; else goto <D.42539>;
  <D.42538>:
  *suites = 0;
  suites = suites + 1;
  <D.42539>:
  <D.42537>:
  D.42540 = _zstr (suites);
  if (D.42540 != 0) goto <D.42541>; else goto <D.42542>;
  <D.42541>:
  D.42525 = session->channel;
  suites = switch_channel_get_variable_dup (D.42525, "rtp_secure_media_suites", 1, -1);
  <D.42542>:
  D.42543 = _zstr (val);
  if (D.42543 != 0) goto <D.42544>; else goto <D.42545>;
  <D.42544>:
  D.42525 = session->channel;
  D.42548 = switch_channel_direction (D.42525);
  if (D.42548 == 0) goto <D.42549>; else goto <D.42546>;
  <D.42549>:
  D.42525 = session->channel;
  D.42550 = switch_channel_test_flag (D.42525, 84);
  if (D.42550 == 0) goto <D.42551>; else goto <D.42546>;
  <D.42551>:
  val = "optional";
  goto <D.42547>;
  <D.42546>:
  val = "forbidden";
  <D.42547>:
  <D.42545>:
  D.42552 = strcasecmp (val, "optional");
  if (D.42552 == 0) goto <D.42553>; else goto <D.42554>;
  <D.42553>:
  smh->crypto_mode = 0;
  goto <D.42555>;
  <D.42554>:
  D.42559 = switch_true (val);
  if (D.42559 != 0) goto <D.42556>; else goto <D.42560>;
  <D.42560>:
  D.42561 = strcasecmp (val, "mandatory");
  if (D.42561 == 0) goto <D.42556>; else goto <D.42557>;
  <D.42556>:
  smh->crypto_mode = 1;
  goto <D.42558>;
  <D.42557>:
  smh->crypto_mode = 2;
  D.42562 = switch_false (val);
  if (D.42562 == 0) goto <D.42563>; else goto <D.42564>;
  <D.42563>:
  D.42565 = strcasecmp (val, "forbidden");
  if (D.42565 != 0) goto <D.42566>; else goto <D.42567>;
  <D.42566>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1123, session, 4, "INVALID VALUE FOR %s defaulting to \'forbidden\'\n", var);
  <D.42567>:
  <D.42564>:
  <D.42558>:
  <D.42555>:
  D.42569 = smh->crypto_mode;
  if (D.42569 != 2) goto <D.42570>; else goto <D.42568>;
  <D.42570>:
  D.42571 = _zstr (suites);
  if (D.42571 == 0) goto <D.42572>; else goto <D.42568>;
  <D.42572>:
  D.42573 = switch_separate_string (suites, 58, &fields, 10);
  argc = (int) D.42573;
  i = 0;
  goto <D.38589>;
  <D.38588>:
  ok = 0;
  j = 0;
  goto <D.38587>;
  <D.38586>:
  D.42574 = fields[i];
  D.42575 = SUITES[j].name;
  D.42576 = strcasecmp (D.42574, D.42575);
  if (D.42576 == 0) goto <D.42577>; else goto <D.42578>;
  <D.42577>:
  D.42579 = SUITES[j].type;
  smh->crypto_suite_order[k] = D.42579;
  k = k + 1;
  ok = ok + 1;
  goto <D.38585>;
  <D.42578>:
  j = j + 1;
  <D.38587>:
  if (j <= 8) goto <D.38586>; else goto <D.38585>;
  <D.38585>:
  if (ok == 0) goto <D.42580>; else goto <D.42581>;
  <D.42580>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1142, session, 4, "INVALID SUITE SUPPLIED\n");
  <D.42581>:
  i = i + 1;
  <D.38589>:
  if (i < argc) goto <D.38588>; else goto <D.38590>;
  <D.38590>:
  goto <D.38593>;
  <D.42568>:
  i = 0;
  goto <D.38592>;
  <D.38591>:
  D.42582 = SUITES[i].type;
  smh->crypto_suite_order[k] = D.42582;
  k = k + 1;
  i = i + 1;
  <D.38592>:
  if (i <= 8) goto <D.38591>; else goto <D.38593>;
  <D.38593>:
  <D.42583>:
  return;
}



;; Function generate_m (generate_m)

generate_m (struct switch_core_session_t * session, char * buf, size_t buflen, switch_port_t port, const char * family, const char * ip, int cur_ptime, const char * append_audio, const char * sr, int use_cng, int cng_type, struct switch_event_t * map, int secure, switch_sdp_type_t sdp_type)
{
  switch_rtp_crypto_key_type_t j;
  int i;
  size_t __s2_len;
  size_t __s1_len;
  size_t __s2_len;
  size_t __s1_len;
  struct ice_t * ice_out;
  uint32_t c2;
  uint32_t c1;
  char tmp2[11];
  char tmp1[11];
  int channels;
  char * check;
  char key[128];
  int this_ptime;
  char * fmtp;
  const struct switch_codec_implementation_t * imp;
  int this_ptime;
  const struct switch_codec_implementation_t * imp;
  static const char __func__[11] = "generate_m";
  static const char __PRETTY_FUNCTION__[11] = "generate_m";
  struct switch_rtp_engine_t * a_engine;
  struct switch_media_handle_t * smh;
  const char * local_sdp_audio_zrtp_hash;
  int noptime;
  int ptime;
  int already_did[128];
  int rate;
  int i;
  size_t D.42921;
  size_t D.42920;
  char * D.42919;
  size_t D.42918;
  int D.42915;
  size_t D.42914;
  size_t D.42913;
  char * D.42912;
  size_t D.42911;
  size_t D.42908;
  size_t D.42907;
  char * D.42906;
  size_t D.42905;
  _Bool D.42902;
  _Bool D.42901;
  _Bool D.42900;
  const char D.42894;
  unsigned int D.42892;
  size_t D.42891;
  const char D.42888;
  const char * iftmp.42;
  char * iftmp.41;
  size_t D.42885;
  size_t D.42884;
  char * D.42883;
  size_t D.42882;
  size_t D.42879;
  size_t D.42878;
  char * D.42877;
  size_t D.42876;
  int32_t D.42873;
  size_t D.42870;
  size_t D.42869;
  char * D.42868;
  size_t D.42867;
  int D.42864;
  char * D.42863;
  switch_rtp_crypto_key_type_t D.42859;
  uint32_t D.42856;
  int D.42853;
  size_t D.42852;
  size_t D.42851;
  char * D.42850;
  size_t D.42849;
  switch_port_t D.42846;
  int D.39488;
  int D.42841;
  char * D.42840;
  int D.42837;
  int D.42836;
  int D.42835;
  size_t D.42834;
  size_t D.42833;
  char * D.42832;
  size_t D.42831;
  switch_call_direction_t D.42830;
  int D.42826;
  size_t D.42825;
  size_t D.42824;
  char * D.42823;
  size_t D.42822;
  switch_port_t D.42819;
  int D.39479;
  int D.42814;
  int D.42811;
  char * D.42810;
  int D.42809;
  switch_port_t D.42808;
  char * D.42807;
  char * D.42806;
  size_t D.42805;
  size_t D.42804;
  char * D.42803;
  size_t D.42802;
  char * D.42801;
  size_t D.42800;
  size_t D.42799;
  char * D.42798;
  size_t D.42797;
  char * D.42796;
  size_t D.42795;
  size_t D.42794;
  char * D.42793;
  size_t D.42792;
  size_t D.42791;
  size_t D.42790;
  char * D.42789;
  size_t D.42788;
  size_t D.42787;
  size_t D.42786;
  char * D.42785;
  size_t D.42784;
  char * D.42783;
  size_t D.42782;
  size_t D.42781;
  char * D.42780;
  size_t D.42779;
  char * D.42778;
  uint32_t D.42777;
  size_t D.42776;
  size_t D.42775;
  char * D.42774;
  size_t D.42773;
  uint8_t D.42770;
  int D.42769;
  size_t D.42768;
  size_t D.42767;
  char * D.42766;
  size_t D.42765;
  size_t D.42763;
  size_t D.42762;
  char * D.42761;
  size_t D.42760;
  size_t D.42759;
  size_t D.42758;
  char * D.42757;
  size_t D.42756;
  int8_t D.42753;
  char * D.42750;
  char[192] * D.42749;
  size_t D.42748;
  size_t D.42747;
  char * D.42746;
  size_t D.42745;
  int D.42740;
  char * D.42739;
  size_t D.42738;
  size_t D.42737;
  char * D.42736;
  size_t D.42735;
  size_t D.42733;
  size_t D.42732;
  char * D.42731;
  size_t D.42730;
  uint32_t D.42727;
  uint32_t D.42724;
  int32_t D.42722;
  size_t D.42718;
  size_t D.42717;
  char * D.42716;
  size_t D.42715;
  size_t D.42712;
  size_t D.42711;
  char * D.42710;
  size_t D.42709;
  size_t D.42707;
  size_t D.42706;
  char * D.42705;
  size_t D.42704;
  int D.42701;
  const uint8_t D.42700;
  uint32_t D.42699;
  char * D.42693;
  const int D.42689;
  const uint32_t D.42686;
  int D.42672;
  int D.42670;
  char * const D.42669;
  const switch_codec_type_t D.42664;
  const int D.42663;
  size_t D.42662;
  size_t D.42661;
  char * D.42660;
  size_t D.42659;
  size_t D.42658;
  size_t D.42657;
  char * D.42656;
  size_t D.42655;
  _Bool D.42652;
  _Bool D.42651;
  _Bool D.42650;
  int32_t D.42647;
  int D.42646;
  size_t D.42645;
  size_t D.42644;
  char * D.42643;
  size_t D.42642;
  switch_payload_t D.42639;
  switch_core_media_dtmf_t D.42636;
  int D.42635;
  struct switch_core_media_params_t * D.42634;
  size_t D.42633;
  size_t D.42632;
  char * D.42631;
  size_t D.42630;
  int D.42627;
  int D.42626;
  signed char D.42623;
  switch_payload_t D.42622;
  const switch_codec_type_t D.42610;
  int D.42609;
  int D.42607;
  char * const D.42606;
  const int D.42603;
  const char * D.42602;
  switch_rtp_crypto_key_type_t D.42601;
  switch_call_direction_t D.42600;
  struct switch_channel_t * D.42599;
  int iftmp.40;
  int D.42592;
  size_t D.42591;
  size_t D.42590;
  char * D.42589;
  size_t D.42588;

  i = 0;
  already_did = {};
  ptime = 0;
  noptime = 0;
  if (session == 0B) goto <D.42584>; else goto <D.42585>;
  <D.42584>:
  __assert_fail ("session", "src/switch_core_media.c", 5614, &__PRETTY_FUNCTION__);
  <D.42585>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.42586>; else goto <D.42587>;
  <D.42586>:
  goto <D.42922>;
  <D.42587>:
  a_engine = &smh->engines;
  D.42588 = strlen (buf);
  D.42589 = buf + D.42588;
  D.42590 = strlen (buf);
  D.42591 = buflen - D.42590;
  D.42592 = (int) port;
  if (secure != 0) goto <D.42598>; else goto <D.42594>;
  <D.42598>:
  D.42599 = session->channel;
  D.42600 = switch_channel_direction (D.42599);
  if (D.42600 == 1) goto <D.42595>; else goto <D.42594>;
  <D.42594>:
  D.42601 = a_engine->crypto_type;
  if (D.42601 != 9) goto <D.42595>; else goto <D.42596>;
  <D.42595>:
  iftmp.40 = 1;
  goto <D.42597>;
  <D.42596>:
  iftmp.40 = 0;
  <D.42597>:
  D.42602 = get_media_profile_name (session, iftmp.40);
  switch_snprintf (D.42589, D.42591, "m=audio %d %s", D.42592, D.42602);
  i = 0;
  goto <D.39454>;
  <D.39453>:
  imp = smh->codecs[i];
  D.42603 = imp->microseconds_per_packet;
  this_ptime = D.42603 / 1000;
  D.42606 = imp->iananame;
  D.42607 = strcasecmp (D.42606, "ilbc");
  if (D.42607 == 0) goto <D.42604>; else goto <D.42608>;
  <D.42608>:
  D.42606 = imp->iananame;
  D.42609 = strcasecmp (D.42606, "isac");
  if (D.42609 == 0) goto <D.42604>; else goto <D.42605>;
  <D.42604>:
  this_ptime = 20;
  <D.42605>:
  D.42610 = imp->codec_type;
  if (D.42610 != 0) goto <D.42611>; else goto <D.42612>;
  <D.42611>:
  // predicted unlikely by continue predictor.
  goto <D.39452>;
  <D.42612>:
  if (noptime == 0) goto <D.42613>; else goto <D.42614>;
  <D.42613>:
  if (cur_ptime == 0) goto <D.42615>; else goto <D.42616>;
  <D.42615>:
  if (ptime == 0) goto <D.42617>; else goto <D.42618>;
  <D.42617>:
  ptime = this_ptime;
  <D.42618>:
  goto <D.42619>;
  <D.42616>:
  if (this_ptime != cur_ptime) goto <D.42620>; else goto <D.42621>;
  <D.42620>:
  // predicted unlikely by continue predictor.
  goto <D.39452>;
  <D.42621>:
  <D.42619>:
  <D.42614>:
  D.42622 = smh->ianacodes[i];
  D.42623 = (signed char) D.42622;
  if (D.42623 >= 0) goto <D.42624>; else goto <D.42625>;
  <D.42624>:
  D.42622 = smh->ianacodes[i];
  D.42626 = (int) D.42622;
  D.42627 = already_did[D.42626];
  if (D.42627 != 0) goto <D.42628>; else goto <D.42629>;
  <D.42628>:
  // predicted unlikely by continue predictor.
  goto <D.39452>;
  <D.42629>:
  D.42622 = smh->ianacodes[i];
  D.42626 = (int) D.42622;
  already_did[D.42626] = 1;
  <D.42625>:
  D.42630 = strlen (buf);
  D.42631 = buf + D.42630;
  D.42632 = strlen (buf);
  D.42633 = buflen - D.42632;
  D.42622 = smh->ianacodes[i];
  D.42626 = (int) D.42622;
  switch_snprintf (D.42631, D.42633, " %d", D.42626);
  <D.39452>:
  i = i + 1;
  <D.39454>:
  D.42634 = smh->mparams;
  D.42635 = D.42634->num_codecs;
  if (D.42635 > i) goto <D.39453>; else goto <D.39455>;
  <D.39455>:
  D.42634 = smh->mparams;
  D.42636 = D.42634->dtmf_type;
  if (D.42636 == 0) goto <D.42637>; else goto <D.42638>;
  <D.42637>:
  D.42634 = smh->mparams;
  D.42639 = D.42634->te;
  if (D.42639 > 95) goto <D.42640>; else goto <D.42641>;
  <D.42640>:
  D.42642 = strlen (buf);
  D.42643 = buf + D.42642;
  D.42644 = strlen (buf);
  D.42645 = buflen - D.42644;
  D.42634 = smh->mparams;
  D.42639 = D.42634->te;
  D.42646 = (int) D.42639;
  switch_snprintf (D.42643, D.42645, " %d", D.42646);
  <D.42641>:
  <D.42638>:
  D.42647 = switch_media_handle_test_media_flag (smh, 9);
  if (D.42647 == 0) goto <D.42648>; else goto <D.42649>;
  <D.42648>:
  D.42650 = cng_type != 0;
  D.42651 = use_cng != 0;
  D.42652 = D.42650 && D.42651;
  if (D.42652 != 0) goto <D.42653>; else goto <D.42654>;
  <D.42653>:
  D.42655 = strlen (buf);
  D.42656 = buf + D.42655;
  D.42657 = strlen (buf);
  D.42658 = buflen - D.42657;
  switch_snprintf (D.42656, D.42658, " %d", cng_type);
  <D.42654>:
  <D.42649>:
  D.42659 = strlen (buf);
  D.42660 = buf + D.42659;
  D.42661 = strlen (buf);
  D.42662 = buflen - D.42661;
  switch_snprintf (D.42660, D.42662, "\n");
  memset (&already_did, 0, 512);
  i = 0;
  goto <D.39464>;
  <D.39463>:
  imp = smh->codecs[i];
  fmtp = imp->fmtp;
  D.42663 = imp->microseconds_per_packet;
  this_ptime = D.42663 / 1000;
  D.42664 = imp->codec_type;
  if (D.42664 != 0) goto <D.42665>; else goto <D.42666>;
  <D.42665>:
  // predicted unlikely by continue predictor.
  goto <D.39459>;
  <D.42666>:
  D.42669 = imp->iananame;
  D.42670 = strcasecmp (D.42669, "ilbc");
  if (D.42670 == 0) goto <D.42667>; else goto <D.42671>;
  <D.42671>:
  D.42669 = imp->iananame;
  D.42672 = strcasecmp (D.42669, "isac");
  if (D.42672 == 0) goto <D.42667>; else goto <D.42668>;
  <D.42667>:
  this_ptime = 20;
  <D.42668>:
  if (noptime == 0) goto <D.42673>; else goto <D.42674>;
  <D.42673>:
  if (cur_ptime == 0) goto <D.42675>; else goto <D.42676>;
  <D.42675>:
  if (ptime == 0) goto <D.42677>; else goto <D.42678>;
  <D.42677>:
  ptime = this_ptime;
  <D.42678>:
  goto <D.42679>;
  <D.42676>:
  if (this_ptime != cur_ptime) goto <D.42680>; else goto <D.42681>;
  <D.42680>:
  // predicted unlikely by continue predictor.
  goto <D.39459>;
  <D.42681>:
  <D.42679>:
  <D.42674>:
  D.42622 = smh->ianacodes[i];
  D.42623 = (signed char) D.42622;
  if (D.42623 >= 0) goto <D.42682>; else goto <D.42683>;
  <D.42682>:
  D.42622 = smh->ianacodes[i];
  D.42626 = (int) D.42622;
  D.42627 = already_did[D.42626];
  if (D.42627 != 0) goto <D.42684>; else goto <D.42685>;
  <D.42684>:
  // predicted unlikely by continue predictor.
  goto <D.39459>;
  <D.42685>:
  D.42622 = smh->ianacodes[i];
  D.42626 = (int) D.42622;
  already_did[D.42626] = 1;
  <D.42683>:
  D.42686 = imp->samples_per_second;
  rate = (int) D.42686;
  if (map != 0B) goto <D.42687>; else goto <D.42688>;
  <D.42687>:
  key = "";
  check = 0B;
  D.42669 = imp->iananame;
  D.42689 = imp->bits_per_second;
  switch_snprintf (&key, 128, "%s:%u", D.42669, D.42689);
  check = switch_event_get_header_idx (map, &key, -1);
  if (check != 0B) goto <D.42690>; else goto <D.42692>;
  <D.42692>:
  D.42669 = imp->iananame;
  check = switch_event_get_header_idx (map, D.42669, -1);
  if (check != 0B) goto <D.42690>; else goto <D.42691>;
  <D.42690>:
  fmtp = check;
  <D.42691>:
  <D.42688>:
  D.42693 = smh->fmtps[i];
  if (D.42693 != 0B) goto <D.42694>; else goto <D.42695>;
  <D.42694>:
  fmtp = smh->fmtps[i];
  <D.42695>:
  D.42622 = smh->ianacodes[i];
  if (D.42622 > 95) goto <D.42696>; else goto <D.42698>;
  <D.42698>:
  D.42599 = session->channel;
  D.42699 = switch_channel_test_flag (D.42599, 110);
  if (D.42699 != 0) goto <D.42696>; else goto <D.42697>;
  <D.42696>:
  D.42669 = imp->iananame;
  D.42700 = imp->number_of_channels;
  D.42701 = (int) D.42700;
  channels = get_channels (D.42669, D.42701);
  if (channels > 1) goto <D.42702>; else goto <D.42703>;
  <D.42702>:
  D.42704 = strlen (buf);
  D.42705 = buf + D.42704;
  D.42706 = strlen (buf);
  D.42707 = buflen - D.42706;
  D.42622 = smh->ianacodes[i];
  D.42626 = (int) D.42622;
  D.42669 = imp->iananame;
  switch_snprintf (D.42705, D.42707, "a=rtpmap:%d %s/%d/%d\n", D.42626, D.42669, rate, channels);
  goto <D.42708>;
  <D.42703>:
  D.42709 = strlen (buf);
  D.42710 = buf + D.42709;
  D.42711 = strlen (buf);
  D.42712 = buflen - D.42711;
  D.42622 = smh->ianacodes[i];
  D.42626 = (int) D.42622;
  D.42669 = imp->iananame;
  switch_snprintf (D.42710, D.42712, "a=rtpmap:%d %s/%d\n", D.42626, D.42669, rate);
  <D.42708>:
  <D.42697>:
  if (fmtp != 0B) goto <D.42713>; else goto <D.42714>;
  <D.42713>:
  D.42715 = strlen (buf);
  D.42716 = buf + D.42715;
  D.42717 = strlen (buf);
  D.42718 = buflen - D.42717;
  D.42622 = smh->ianacodes[i];
  D.42626 = (int) D.42622;
  switch_snprintf (D.42716, D.42718, "a=fmtp:%d %s\n", D.42626, fmtp);
  <D.42714>:
  <D.39459>:
  i = i + 1;
  <D.39464>:
  D.42634 = smh->mparams;
  D.42635 = D.42634->num_codecs;
  if (D.42635 > i) goto <D.39463>; else goto <D.39465>;
  <D.39465>:
  D.42634 = smh->mparams;
  D.42636 = D.42634->dtmf_type;
  if (D.42636 == 0) goto <D.42719>; else goto <D.42721>;
  <D.42721>:
  D.42722 = switch_media_handle_test_media_flag (smh, 8);
  if (D.42722 != 0) goto <D.42719>; else goto <D.42723>;
  <D.42723>:
  D.42599 = session->channel;
  D.42724 = switch_channel_test_flag (D.42599, 93);
  if (D.42724 != 0) goto <D.42719>; else goto <D.42720>;
  <D.42719>:
  D.42634 = smh->mparams;
  D.42639 = D.42634->te;
  if (D.42639 > 95) goto <D.42725>; else goto <D.42726>;
  <D.42725>:
  D.42599 = session->channel;
  D.42727 = switch_channel_test_flag (D.42599, 106);
  if (D.42727 != 0) goto <D.42728>; else goto <D.42729>;
  <D.42728>:
  D.42730 = strlen (buf);
  D.42731 = buf + D.42730;
  D.42732 = strlen (buf);
  D.42733 = buflen - D.42732;
  D.42634 = smh->mparams;
  D.42639 = D.42634->te;
  D.42646 = (int) D.42639;
  switch_snprintf (D.42731, D.42733, "a=rtpmap:%d telephone-event/8000\n", D.42646);
  goto <D.42734>;
  <D.42729>:
  D.42735 = strlen (buf);
  D.42736 = buf + D.42735;
  D.42737 = strlen (buf);
  D.42738 = buflen - D.42737;
  D.42634 = smh->mparams;
  D.42639 = D.42634->te;
  D.42646 = (int) D.42639;
  D.42634 = smh->mparams;
  D.42639 = D.42634->te;
  D.42646 = (int) D.42639;
  switch_snprintf (D.42736, D.42738, "a=rtpmap:%d telephone-event/8000\na=fmtp:%d 0-16\n", D.42646, D.42646);
  <D.42734>:
  <D.42726>:
  <D.42720>:
  D.42739 = a_engine->local_dtls_fingerprint.type;
  D.42740 = _zstr (D.42739);
  if (D.42740 == 0) goto <D.42741>; else goto <D.42742>;
  <D.42741>:
  if (secure != 0) goto <D.42743>; else goto <D.42744>;
  <D.42743>:
  D.42745 = strlen (buf);
  D.42746 = buf + D.42745;
  D.42747 = strlen (buf);
  D.42748 = buflen - D.42747;
  D.42739 = a_engine->local_dtls_fingerprint.type;
  D.42749 = &a_engine->local_dtls_fingerprint.str;
  switch_snprintf (D.42746, D.42748, "a=fingerprint:%s %s\n", D.42739, D.42749);
  <D.42744>:
  <D.42742>:
  D.42634 = smh->mparams;
  D.42750 = D.42634->rtcp_audio_interval_msec;
  if (D.42750 != 0B) goto <D.42751>; else goto <D.42752>;
  <D.42751>:
  D.42753 = a_engine->rtcp_mux;
  if (D.42753 > 0) goto <D.42754>; else goto <D.42755>;
  <D.42754>:
  D.42756 = strlen (buf);
  D.42757 = buf + D.42756;
  D.42758 = strlen (buf);
  D.42759 = buflen - D.42758;
  switch_snprintf (D.42757, D.42759, "a=rtcp-mux\n");
  D.42760 = strlen (buf);
  D.42761 = buf + D.42760;
  D.42762 = strlen (buf);
  D.42763 = buflen - D.42762;
  D.42592 = (int) port;
  switch_snprintf (D.42761, D.42763, "a=rtcp:%d IN %s %s\n", D.42592, family, ip);
  goto <D.42764>;
  <D.42755>:
  D.42765 = strlen (buf);
  D.42766 = buf + D.42765;
  D.42767 = strlen (buf);
  D.42768 = buflen - D.42767;
  D.42592 = (int) port;
  D.42769 = D.42592 + 1;
  switch_snprintf (D.42766, D.42768, "a=rtcp:%d IN %s %s\n", D.42769, family, ip);
  <D.42764>:
  <D.42752>:
  D.42770 = a_engine->ice_out.cands[0][0].ready;
  if (D.42770 != 0) goto <D.42771>; else goto <D.42772>;
  <D.42771>:
  tmp1 = "";
  tmp2 = "";
  c1 = 659136;
  c2 = 659134;
  tmp1[10] = 0;
  tmp2[10] = 0;
  switch_stun_random_string (&tmp1, 10, "0123456789");
  switch_stun_random_string (&tmp2, 10, "0123456789");
  gen_ice (session, 0, 0B, 0);
  ice_out = &a_engine->ice_out;
  D.42773 = strlen (buf);
  D.42774 = buf + D.42773;
  D.42775 = strlen (buf);
  D.42776 = buflen - D.42775;
  D.42777 = a_engine->ssrc;
  D.42778 = smh->cname;
  switch_snprintf (D.42774, D.42776, "a=ssrc:%u cname:%s\n", D.42777, D.42778);
  D.42779 = strlen (buf);
  D.42780 = buf + D.42779;
  D.42781 = strlen (buf);
  D.42782 = buflen - D.42781;
  D.42777 = a_engine->ssrc;
  D.42783 = smh->msid;
  switch_snprintf (D.42780, D.42782, "a=ssrc:%u msid:%s a0\n", D.42777, D.42783);
  D.42784 = strlen (buf);
  D.42785 = buf + D.42784;
  D.42786 = strlen (buf);
  D.42787 = buflen - D.42786;
  D.42777 = a_engine->ssrc;
  D.42783 = smh->msid;
  switch_snprintf (D.42785, D.42787, "a=ssrc:%u mslabel:%s\n", D.42777, D.42783);
  D.42788 = strlen (buf);
  D.42789 = buf + D.42788;
  D.42790 = strlen (buf);
  D.42791 = buflen - D.42790;
  D.42777 = a_engine->ssrc;
  D.42783 = smh->msid;
  switch_snprintf (D.42789, D.42791, "a=ssrc:%u label:%sa0\n", D.42777, D.42783);
  D.42792 = strlen (buf);
  D.42793 = buf + D.42792;
  D.42794 = strlen (buf);
  D.42795 = buflen - D.42794;
  D.42796 = ice_out->ufrag;
  switch_snprintf (D.42793, D.42795, "a=ice-ufrag:%s\n", D.42796);
  D.42797 = strlen (buf);
  D.42798 = buf + D.42797;
  D.42799 = strlen (buf);
  D.42800 = buflen - D.42799;
  D.42801 = ice_out->pwd;
  switch_snprintf (D.42798, D.42800, "a=ice-pwd:%s\n", D.42801);
  D.42802 = strlen (buf);
  D.42803 = buf + D.42802;
  D.42804 = strlen (buf);
  D.42805 = buflen - D.42804;
  D.42806 = ice_out->cands[0][0].transport;
  D.42807 = ice_out->cands[0][0].con_addr;
  D.42808 = ice_out->cands[0][0].con_port;
  D.42809 = (int) D.42808;
  switch_snprintf (D.42803, D.42805, "a=candidate:%s 1 %s %u %s %d typ host generation 0\n", &tmp1, D.42806, c1, D.42807, D.42809);
  D.42810 = a_engine->local_sdp_ip;
  D.42811 = _zstr (D.42810);
  if (D.42811 == 0) goto <D.42812>; else goto <D.42813>;
  <D.42812>:
  D.42807 = ice_out->cands[0][0].con_addr;
  D.42814 = _zstr (D.42807);
  if (D.42814 == 0) goto <D.42815>; else goto <D.42816>;
  <D.42815>:
  D.42810 = a_engine->local_sdp_ip;
  D.42807 = ice_out->cands[0][0].con_addr;
  D.39479 = __builtin_strcmp (D.42810, D.42807);
  if (D.39479 != 0) goto <D.42817>; else goto <D.42818>;
  <D.42817>:
  D.42819 = a_engine->local_sdp_port;
  D.42808 = ice_out->cands[0][0].con_port;
  if (D.42819 != D.42808) goto <D.42820>; else goto <D.42821>;
  <D.42820>:
  D.42822 = strlen (buf);
  D.42823 = buf + D.42822;
  D.42824 = strlen (buf);
  D.42825 = buflen - D.42824;
  D.42806 = ice_out->cands[0][0].transport;
  D.42807 = ice_out->cands[0][0].con_addr;
  D.42808 = ice_out->cands[0][0].con_port;
  D.42809 = (int) D.42808;
  D.42810 = a_engine->local_sdp_ip;
  D.42819 = a_engine->local_sdp_port;
  D.42826 = (int) D.42819;
  switch_snprintf (D.42823, D.42825, "a=candidate:%s 1 %s %u %s %d typ srflx raddr %s rport %d generation 0\n", &tmp2, D.42806, c2, D.42807, D.42809, D.42810, D.42826);
  <D.42821>:
  <D.42818>:
  <D.42816>:
  <D.42813>:
  D.42753 = a_engine->rtcp_mux;
  if (D.42753 <= 0) goto <D.42827>; else goto <D.42829>;
  <D.42829>:
  D.42599 = session->channel;
  D.42830 = switch_channel_direction (D.42599);
  if (D.42830 == 1) goto <D.42827>; else goto <D.42828>;
  <D.42827>:
  D.42831 = strlen (buf);
  D.42832 = buf + D.42831;
  D.42833 = strlen (buf);
  D.42834 = buflen - D.42833;
  D.42806 = ice_out->cands[0][0].transport;
  D.42807 = ice_out->cands[0][0].con_addr;
  D.42808 = ice_out->cands[0][0].con_port;
  D.42809 = (int) D.42808;
  D.42753 = a_engine->rtcp_mux;
  D.42835 = D.42753 <= 0;
  D.42836 = D.42809 + D.42835;
  switch_snprintf (D.42832, D.42834, "a=candidate:%s 2 %s %u %s %d typ host generation 0\n", &tmp1, D.42806, c1, D.42807, D.42836);
  D.42810 = a_engine->local_sdp_ip;
  D.42837 = _zstr (D.42810);
  if (D.42837 == 0) goto <D.42838>; else goto <D.42839>;
  <D.42838>:
  D.42840 = ice_out->cands[0][1].con_addr;
  D.42841 = _zstr (D.42840);
  if (D.42841 == 0) goto <D.42842>; else goto <D.42843>;
  <D.42842>:
  D.42810 = a_engine->local_sdp_ip;
  D.42840 = ice_out->cands[0][1].con_addr;
  D.39488 = __builtin_strcmp (D.42810, D.42840);
  if (D.39488 != 0) goto <D.42844>; else goto <D.42845>;
  <D.42844>:
  D.42819 = a_engine->local_sdp_port;
  D.42846 = ice_out->cands[0][1].con_port;
  if (D.42819 != D.42846) goto <D.42847>; else goto <D.42848>;
  <D.42847>:
  D.42849 = strlen (buf);
  D.42850 = buf + D.42849;
  D.42851 = strlen (buf);
  D.42852 = buflen - D.42851;
  D.42806 = ice_out->cands[0][0].transport;
  D.42807 = ice_out->cands[0][0].con_addr;
  D.42808 = ice_out->cands[0][0].con_port;
  D.42809 = (int) D.42808;
  D.42753 = a_engine->rtcp_mux;
  D.42835 = D.42753 <= 0;
  D.42836 = D.42809 + D.42835;
  D.42810 = a_engine->local_sdp_ip;
  D.42819 = a_engine->local_sdp_port;
  D.42826 = (int) D.42819;
  D.42753 = a_engine->rtcp_mux;
  D.42835 = D.42753 <= 0;
  D.42853 = D.42826 + D.42835;
  switch_snprintf (D.42850, D.42852, "a=candidate:%s 2 %s %u %s %d typ srflx raddr %s rport %d generation 0\n", &tmp2, D.42806, c2, D.42807, D.42836, D.42810, D.42853);
  <D.42848>:
  <D.42845>:
  <D.42843>:
  <D.42839>:
  <D.42828>:
  <D.42772>:
  if (secure != 0) goto <D.42854>; else goto <D.42855>;
  <D.42854>:
  D.42599 = session->channel;
  D.42856 = switch_channel_test_flag (D.42599, 109);
  if (D.42856 == 0) goto <D.42857>; else goto <D.42858>;
  <D.42857>:
  i = 0;
  goto <D.39492>;
  <D.39491>:
  D.42859 = smh->crypto_suite_order[i];
  j = SUITES[D.42859].type;
  D.42601 = a_engine->crypto_type;
  if (D.42601 == j) goto <D.42860>; else goto <D.42862>;
  <D.42862>:
  D.42601 = a_engine->crypto_type;
  if (D.42601 == 9) goto <D.42860>; else goto <D.42861>;
  <D.42860>:
  D.42863 = a_engine->ssec[j].local_crypto_key;
  D.42864 = _zstr (D.42863);
  if (D.42864 == 0) goto <D.42865>; else goto <D.42866>;
  <D.42865>:
  D.42867 = strlen (buf);
  D.42868 = buf + D.42867;
  D.42869 = strlen (buf);
  D.42870 = buflen - D.42869;
  D.42863 = a_engine->ssec[j].local_crypto_key;
  switch_snprintf (D.42868, D.42870, "a=crypto:%s\n", D.42863);
  <D.42866>:
  <D.42861>:
  i = i + 1;
  <D.39492>:
  D.42859 = smh->crypto_suite_order[i];
  if (D.42859 != 9) goto <D.39491>; else goto <D.39493>;
  <D.39493>:
  <D.42858>:
  <D.42855>:
  if (cng_type == 0) goto <D.42871>; else goto <D.42872>;
  <D.42871>:
  D.42873 = switch_media_handle_test_media_flag (smh, 9);
  if (D.42873 != 0) goto <D.42874>; else goto <D.42875>;
  <D.42874>:
  D.42876 = strlen (buf);
  D.42877 = buf + D.42876;
  D.42878 = strlen (buf);
  D.42879 = buflen - D.42878;
  switch_snprintf (D.42877, D.42879, "a=silenceSupp:off - - - -\n");
  <D.42875>:
  <D.42872>:
  if (append_audio != 0B) goto <D.42880>; else goto <D.42881>;
  <D.42880>:
  D.42882 = strlen (buf);
  D.42883 = buf + D.42882;
  D.42884 = strlen (buf);
  D.42885 = buflen - D.42884;
  D.42888 = *append_audio;
  if (D.42888 != 0) goto <D.42889>; else goto <D.42890>;
  <D.42889>:
  D.42891 = strlen (append_audio);
  D.42892 = D.42891 + -1;
  iftmp.42 = append_audio + D.42892;
  goto <D.42893>;
  <D.42890>:
  iftmp.42 = append_audio;
  <D.42893>:
  D.42894 = *iftmp.42;
  if (D.42894 == 10) goto <D.42895>; else goto <D.42896>;
  <D.42895>:
  iftmp.41 = "";
  goto <D.42897>;
  <D.42896>:
  iftmp.41 = "\n";
  <D.42897>:
  switch_snprintf (D.42883, D.42885, "%s%s", append_audio, iftmp.41);
  <D.42881>:
  if (cur_ptime == 0) goto <D.42898>; else goto <D.42899>;
  <D.42898>:
  cur_ptime = ptime;
  <D.42899>:
  D.42900 = noptime == 0;
  D.42901 = cur_ptime != 0;
  D.42902 = D.42900 && D.42901;
  if (D.42902 != 0) goto <D.42903>; else goto <D.42904>;
  <D.42903>:
  D.42905 = strlen (buf);
  D.42906 = buf + D.42905;
  D.42907 = strlen (buf);
  D.42908 = buflen - D.42907;
  switch_snprintf (D.42906, D.42908, "a=ptime:%d\n", cur_ptime);
  <D.42904>:
  local_sdp_audio_zrtp_hash = switch_core_media_get_zrtp_hash (session, 0, 1);
  if (local_sdp_audio_zrtp_hash != 0B) goto <D.42909>; else goto <D.42910>;
  <D.42909>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5882, session, 7, "Adding audio a=zrtp-hash:%s\n", local_sdp_audio_zrtp_hash);
  D.42911 = strlen (buf);
  D.42912 = buf + D.42911;
  D.42913 = strlen (buf);
  D.42914 = buflen - D.42913;
  switch_snprintf (D.42912, D.42914, "a=zrtp-hash:%s\n", local_sdp_audio_zrtp_hash);
  <D.42910>:
  D.42915 = _zstr (sr);
  if (D.42915 == 0) goto <D.42916>; else goto <D.42917>;
  <D.42916>:
  D.42918 = strlen (buf);
  D.42919 = buf + D.42918;
  D.42920 = strlen (buf);
  D.42921 = buflen - D.42920;
  switch_snprintf (D.42919, D.42921, "a=%s\n", sr);
  <D.42917>:
  <D.42922>:
  return;
}



;; Function gen_ice (gen_ice)

gen_ice (struct switch_core_session_t * session, switch_media_type_t type, const char * ip, switch_port_t port)
{
  static const char __func__[8] = "gen_ice";
  static const char __PRETTY_FUNCTION__[8] = "gen_ice";
  char tmp[33];
  struct switch_rtp_engine_t * engine;
  struct switch_media_handle_t * smh;
  char * D.42961;
  int D.42958;
  uint32_t D.42957;
  int D.42956;
  int D.42955;
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
  unsigned int D.42928;
  struct switch_rtp_engine_t[2] * D.42927;

  tmp = "";
  if (session == 0B) goto <D.42923>; else goto <D.42924>;
  <D.42923>:
  __assert_fail ("session", "src/switch_core_media.c", 4608, &__PRETTY_FUNCTION__);
  <D.42924>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.42925>; else goto <D.42926>;
  <D.42925>:
  goto <D.42964>;
  <D.42926>:
  D.42927 = &smh->engines;
  D.42928 = type * 11416;
  engine = D.42927 + D.42928;
  D.42929 = engine->rtcp_mux;
  if (D.42929 == 0) goto <D.42930>; else goto <D.42931>;
  <D.42930>:
  engine->rtcp_mux = 1;
  <D.42931>:
  D.42932 = smh->msid;
  if (D.42932 == 0B) goto <D.42933>; else goto <D.42934>;
  <D.42933>:
  switch_stun_random_string (&tmp, 32, 0B);
  tmp[32] = 0;
  D.42935 = switch_core_perform_session_strdup (session, &tmp, "src/switch_core_media.c", &__func__, 4625);
  smh->msid = D.42935;
  <D.42934>:
  D.42936 = smh->cname;
  if (D.42936 == 0B) goto <D.42937>; else goto <D.42938>;
  <D.42937>:
  switch_stun_random_string (&tmp, 16, 0B);
  tmp[16] = 0;
  D.42939 = switch_core_perform_session_strdup (session, &tmp, "src/switch_core_media.c", &__func__, 4631);
  smh->cname = D.42939;
  <D.42938>:
  D.42940 = engine->ice_out.ufrag;
  if (D.42940 == 0B) goto <D.42941>; else goto <D.42942>;
  <D.42941>:
  switch_stun_random_string (&tmp, 16, 0B);
  tmp[16] = 0;
  D.42943 = switch_core_perform_session_strdup (session, &tmp, "src/switch_core_media.c", &__func__, 4637);
  engine->ice_out.ufrag = D.42943;
  <D.42942>:
  D.42944 = engine->ice_out.pwd;
  if (D.42944 == 0B) goto <D.42945>; else goto <D.42946>;
  <D.42945>:
  switch_stun_random_string (&tmp, 16, 0B);
  D.42947 = switch_core_perform_session_strdup (session, &tmp, "src/switch_core_media.c", &__func__, 4642);
  engine->ice_out.pwd = D.42947;
  <D.42946>:
  D.42948 = engine->ice_out.cands[0][0].foundation;
  if (D.42948 == 0B) goto <D.42949>; else goto <D.42950>;
  <D.42949>:
  switch_stun_random_string (&tmp, 10, "0123456789");
  tmp[10] = 0;
  D.42951 = switch_core_perform_session_strdup (session, &tmp, "src/switch_core_media.c", &__func__, 4648);
  engine->ice_out.cands[0][0].foundation = D.42951;
  <D.42950>:
  engine->ice_out.cands[0][0].transport = "udp";
  D.42952 = engine->ice_out.cands[0][0].component_id;
  if (D.42952 == 0) goto <D.42953>; else goto <D.42954>;
  <D.42953>:
  engine->ice_out.cands[0][0].component_id = 1;
  D.42952 = engine->ice_out.cands[0][0].component_id;
  D.42955 = 329569 - D.42952;
  D.42956 = D.42955 * 2;
  D.42957 = (uint32_t) D.42956;
  engine->ice_out.cands[0][0].priority = D.42957;
  <D.42954>:
  D.42958 = _zstr (ip);
  if (D.42958 == 0) goto <D.42959>; else goto <D.42960>;
  <D.42959>:
  D.42961 = switch_core_perform_session_strdup (session, ip, "src/switch_core_media.c", &__func__, 4659);
  engine->ice_out.cands[0][0].con_addr = D.42961;
  <D.42960>:
  if (port != 0) goto <D.42962>; else goto <D.42963>;
  <D.42962>:
  engine->ice_out.cands[0][0].con_port = port;
  <D.42963>:
  engine->ice_out.cands[0][0].generation = "0";
  engine->ice_out.cands[0][0].ready = 1;
  <D.42964>:
  return;
}



;; Function get_media_profile_name (get_media_profile_name)

get_media_profile_name (struct switch_core_session_t * session, int secure)
{
  static const char __PRETTY_FUNCTION__[23] = "get_media_profile_name";
  const char * D.42974;
  uint32_t D.42971;
  uint32_t D.42968;
  struct switch_channel_t * D.42967;

  if (session == 0B) goto <D.42965>; else goto <D.42966>;
  <D.42965>:
  __assert_fail ("session", "src/switch_core_media.c", 5582, &__PRETTY_FUNCTION__);
  <D.42966>:
  D.42967 = session->channel;
  D.42968 = switch_channel_test_flag (D.42967, 106);
  if (D.42968 != 0) goto <D.42969>; else goto <D.42970>;
  <D.42969>:
  D.42967 = session->channel;
  D.42971 = switch_channel_test_flag (D.42967, 107);
  if (D.42971 != 0) goto <D.42972>; else goto <D.42973>;
  <D.42972>:
  D.42974 = "UDP/TLS/RTP/SAVPF";
  goto <D.42977>;
  <D.42973>:
  D.42974 = "RTP/SAVPF";
  goto <D.42977>;
  <D.42970>:
  if (secure != 0) goto <D.42975>; else goto <D.42976>;
  <D.42975>:
  D.42974 = "RTP/SAVP";
  goto <D.42977>;
  <D.42976>:
  D.42974 = "RTP/AVP";
  goto <D.42977>;
  <D.42977>:
  return D.42974;
}



;; Function get_channels (get_channels)

get_channels (const char * name, int dft)
{
  int iftmp.43;
  int D.42985;
  int D.42982;
  int D.42979;
  char * D.42978;

  D.42978 = switch_core_get_variable ("NDLB_broken_opus_sdp");
  D.42979 = switch_true (D.42978);
  if (D.42979 == 0) goto <D.42980>; else goto <D.42981>;
  <D.42980>:
  D.42982 = strcasecmp (name, "opus");
  if (D.42982 == 0) goto <D.42983>; else goto <D.42984>;
  <D.42983>:
  D.42985 = 2;
  goto <D.42990>;
  <D.42984>:
  <D.42981>:
  if (dft != 0) goto <D.42987>; else goto <D.42988>;
  <D.42987>:
  iftmp.43 = dft;
  goto <D.42989>;
  <D.42988>:
  iftmp.43 = 1;
  <D.42989>:
  D.42985 = iftmp.43;
  goto <D.42990>;
  <D.42990>:
  return D.42985;
}



;; Function generate_local_fingerprint (generate_local_fingerprint)

generate_local_fingerprint (struct switch_media_handle_t * smh, switch_media_type_t type)
{
  struct switch_rtp_engine_t * engine;
  struct dtls_fingerprint_t * D.43000;
  char * D.42996;
  uint32_t D.42993;
  unsigned int D.42992;
  struct switch_rtp_engine_t[2] * D.42991;

  D.42991 = &smh->engines;
  D.42992 = type * 11416;
  engine = D.42991 + D.42992;
  D.42993 = engine->local_dtls_fingerprint.len;
  if (D.42993 == 0) goto <D.42994>; else goto <D.42995>;
  <D.42994>:
  D.42996 = engine->remote_dtls_fingerprint.type;
  if (D.42996 != 0B) goto <D.42997>; else goto <D.42998>;
  <D.42997>:
  D.42996 = engine->remote_dtls_fingerprint.type;
  engine->local_dtls_fingerprint.type = D.42996;
  goto <D.42999>;
  <D.42998>:
  engine->local_dtls_fingerprint.type = "sha-256";
  <D.42999>:
  D.43000 = &engine->local_dtls_fingerprint;
  switch_core_cert_gen_fingerprint ("dtls-srtp", D.43000);
  <D.42995>:
  return;
}



;; Function switch_core_media_set_local_sdp (switch_core_media_set_local_sdp)

switch_core_media_set_local_sdp (struct switch_core_session_t * session, const char * sdp_str, switch_bool_t dup)
{
  static const char __func__[32] = "switch_core_media_set_local_sdp";
  static const char __PRETTY_FUNCTION__[32] = "switch_core_media_set_local_sdp";
  struct switch_media_handle_t * smh;
  char * D.43014;
  struct switch_channel_t * D.43013;
  char * iftmp.44;
  struct switch_core_media_params_t * D.43008;
  struct switch_mutex_t * D.43005;

  if (session == 0B) goto <D.43001>; else goto <D.43002>;
  <D.43001>:
  __assert_fail ("session", "src/switch_core_media.c", 5978, &__PRETTY_FUNCTION__);
  <D.43002>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.43003>; else goto <D.43004>;
  <D.43003>:
  goto <D.43017>;
  <D.43004>:
  D.43005 = smh->sdp_mutex;
  if (D.43005 != 0B) goto <D.43006>; else goto <D.43007>;
  <D.43006>:
  D.43005 = smh->sdp_mutex;
  switch_mutex_lock (D.43005);
  <D.43007>:
  D.43008 = smh->mparams;
  if (dup != 0) goto <D.43010>; else goto <D.43011>;
  <D.43010>:
  iftmp.44 = switch_core_perform_session_strdup (session, sdp_str, "src/switch_core_media.c", &__func__, 5985);
  goto <D.43012>;
  <D.43011>:
  iftmp.44 = sdp_str;
  <D.43012>:
  D.43008->local_sdp_str = iftmp.44;
  D.43013 = session->channel;
  D.43008 = smh->mparams;
  D.43014 = D.43008->local_sdp_str;
  switch_channel_set_variable_var_check (D.43013, "rtp_local_sdp_str", D.43014, 1);
  D.43005 = smh->sdp_mutex;
  if (D.43005 != 0B) goto <D.43015>; else goto <D.43016>;
  <D.43015>:
  D.43005 = smh->sdp_mutex;
  switch_mutex_unlock (D.43005);
  <D.43016>:
  <D.43017>:
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

  parser = 0B;
  D.43018 = strlen (r_sdp);
  D.43019 = (int) D.43018;
  parser = sdp_parse (0B, r_sdp, D.43019, 0);
  if (parser == 0B) goto <D.43020>; else goto <D.43021>;
  <D.43020>:
  D.43022 = 1;
  goto <D.43045>;
  <D.43021>:
  sdp = sdp_session (parser);
  if (sdp == 0B) goto <D.43023>; else goto <D.43024>;
  <D.43023>:
  sdp_parser_free (parser);
  D.43022 = 1;
  goto <D.43045>;
  <D.43024>:
  switch_event_create_subclass_detailed ("src/switch_core_media.c", &__func__, 5930, fmtp, 62, 0B);
  switch_event_create_subclass_detailed ("src/switch_core_media.c", &__func__, 5931, pt, 62, 0B);
  m = sdp->sdp_media;
  goto <D.39518>;
  <D.39517>:
  D.43025 = m->m_proto;
  if (D.43025 == 256) goto <D.43026>; else goto <D.43027>;
  <D.43026>:
  map = m->m_rtpmaps;
  goto <D.39515>;
  <D.39514>:
  D.43028 = map->rm_encoding;
  if (D.43028 != 0B) goto <D.43029>; else goto <D.43030>;
  <D.43029>:
  buf = "";
  key = "";
  br = 0B;
  D.43031 = map->rm_fmtp;
  if (D.43031 != 0B) goto <D.43032>; else goto <D.43033>;
  <D.43032>:
  D.43031 = map->rm_fmtp;
  br = strstr (D.43031, "bitrate=");
  if (br != 0B) goto <D.43034>; else goto <D.43035>;
  <D.43034>:
  br = br + 8;
  <D.43035>:
  <D.43033>:
  D.43036 = map->rm_pt;
  D.43037 = (int) D.43036;
  switch_snprintf (&buf, 25, "%d", D.43037);
  if (br != 0B) goto <D.43038>; else goto <D.43039>;
  <D.43038>:
  D.43028 = map->rm_encoding;
  switch_snprintf (&key, 128, "%s:%s", D.43028, br);
  goto <D.43040>;
  <D.43039>:
  D.43028 = map->rm_encoding;
  switch_snprintf (&key, 128, "%s", D.43028);
  <D.43040>:
  D.43041 = *pt;
  switch_event_add_header_string (D.43041, 1, &key, &buf);
  D.43031 = map->rm_fmtp;
  if (D.43031 != 0B) goto <D.43042>; else goto <D.43043>;
  <D.43042>:
  D.43044 = *fmtp;
  D.43031 = map->rm_fmtp;
  switch_event_add_header_string (D.43044, 1, &key, D.43031);
  <D.43043>:
  <D.43030>:
  map = map->rm_next;
  <D.39515>:
  if (map != 0B) goto <D.39514>; else goto <D.39516>;
  <D.39516>:
  <D.43027>:
  m = m->m_next;
  <D.39518>:
  if (m != 0B) goto <D.39517>; else goto <D.39519>;
  <D.39519>:
  sdp_parser_free (parser);
  D.43022 = 0;
  goto <D.43045>;
  <D.43045>:
  return D.43022;
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

  if (session == 0B) goto <D.43046>; else goto <D.43047>;
  <D.43046>:
  __assert_fail ("session", "src/switch_core_media.c", 5897, &__PRETTY_FUNCTION__);
  <D.43047>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.43048>; else goto <D.43049>;
  <D.43048>:
  goto <D.43065>;
  <D.43049>:
  D.43050 = session->channel;
  val = switch_channel_get_variable_dup (D.43050, "dtmf_type", 1, -1);
  if (val != 0B) goto <D.43051>; else goto <D.43052>;
  <D.43051>:
  D.43053 = strcasecmp (val, "rfc2833");
  if (D.43053 == 0) goto <D.43054>; else goto <D.43055>;
  <D.43054>:
  D.43056 = smh->mparams;
  D.43056->dtmf_type = 0;
  goto <D.43057>;
  <D.43055>:
  D.43058 = strcasecmp (val, "info");
  if (D.43058 == 0) goto <D.43059>; else goto <D.43060>;
  <D.43059>:
  D.43056 = smh->mparams;
  D.43056->dtmf_type = 1;
  goto <D.43061>;
  <D.43060>:
  D.43062 = strcasecmp (val, "none");
  if (D.43062 == 0) goto <D.43063>; else goto <D.43064>;
  <D.43063>:
  D.43056 = smh->mparams;
  D.43056->dtmf_type = 2;
  <D.43064>:
  <D.43061>:
  <D.43057>:
  <D.43052>:
  <D.43065>:
  return;
}



;; Function switch_core_media_activate_rtp (switch_core_media_activate_rtp)

switch_core_media_activate_rtp (struct switch_core_session_t * session)
{
  dtls_type_t dtype;
  dtls_type_t xtype;
  size_t __s2_len;
  size_t __s1_len;
  int interval;
  switch_port_t remote_port;
  const char * rport;
  uint32_t ssrc_ul;
  const char * ssrc;
  switch_port_t remote_rtcp_port;
  const char * rport;
  size_t __s2_len;
  size_t __s1_len;
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
  size_t __s2_len;
  size_t __s1_len;
  int interval;
  switch_port_t remote_rtcp_port;
  const char * rport;
  uint32_t ssrc_ul;
  const char * ssrc;
  uint8_t inb;
  uint8_t vad_out;
  uint8_t vad_in;
  register int __result;
  const unsigned char * __s1;
  size_t __s2_len;
  size_t __s1_len;
  switch_port_t remote_rtcp_port;
  const char * rport;
  size_t __s2_len;
  size_t __s1_len;
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
  _Bool D.43791;
  _Bool D.43790;
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
  dtls_type_t iftmp.66;
  int D.43750;
  int D.43747;
  int D.43744;
  char[192] * D.43743;
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
  int D.43712;
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
  int D.43605;
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
  uint32_t D.43511;
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
  int D.43465;
  unsigned int D.43453;
  struct dtls_fingerprint_t * D.43452;
  struct dtls_fingerprint_t * D.43451;
  char * D.43448;
  dtls_type_t iftmp.53;
  uint32_t D.43439;
  switch_call_direction_t D.43435;
  struct switch_channel_t * D.43434;
  dtls_type_t iftmp.52;
  int D.43430;
  struct switch_core_session_t * D.43429;
  int D.43426;
  int D.43423;
  char[192] * D.43422;
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
  int D.43392;
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
  _Bool D.43264;
  _Bool D.43263;
  _Bool D.43262;
  uint32_t D.43259;
  int D.43258;
  int32_t D.43254;
  int D.43248;
  const unsigned char D.43247;
  char * D.43246;
  int D.43245;
  const unsigned char D.43244;
  const unsigned char * D.43243;
  _Bool D.43240;
  _Bool D.43239;
  int D.43238;
  const unsigned char D.43237;
  char * D.43236;
  int D.43235;
  const unsigned char D.43234;
  const unsigned char * D.43233;
  _Bool D.43230;
  _Bool D.43229;
  int D.43228;
  const unsigned char D.43227;
  char * D.43226;
  int D.43225;
  const unsigned char D.43224;
  const unsigned char * D.43223;
  _Bool D.43220;
  _Bool D.43219;
  _Bool D.43218;
  int D.43217;
  const unsigned char D.43216;
  char[8] * D.43215;
  int D.43214;
  const unsigned char D.43213;
  int D.39359;
  int iftmp.46;
  int D.39360;
  uint32_t D.43207;
  const char * err.45;
  switch_status_t D.43202;
  int D.43201;
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
  int D.43121;
  int32_t D.43118;
  switch_rtp_flag_t D.43115;
  switch_rtp_flag_t D.43114;
  int D.43113;
  uint32_t D.43109;
  int32_t D.43106;
  switch_rtp_flag_t D.43103;
  switch_rtp_flag_t D.43102;
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
  switch_status_t D.43070;

  err = 0B;
  val = 0B;
  flags = {};
  status = 0;
  timer_name = 0B;
  if (session == 0B) goto <D.43066>; else goto <D.43067>;
  <D.43066>:
  __assert_fail ("session", "src/switch_core_media.c", 4731, &__PRETTY_FUNCTION__);
  <D.43067>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.43068>; else goto <D.43069>;
  <D.43068>:
  D.43070 = 1;
  goto <D.43794>;
  <D.43069>:
  a_engine = &smh->engines;
  v_engine = &smh->engines[1];
  D.43073 = session->channel;
  D.43074 = switch_channel_check_signal (D.43073, 1);
  if (D.43074 != 0) goto <D.43071>; else goto <D.43075>;
  <D.43075>:
  D.43073 = session->channel;
  D.43076 = switch_channel_get_state (D.43073);
  if (D.43076 > 9) goto <D.43071>; else goto <D.43072>;
  <D.43071>:
  D.43070 = 1;
  goto <D.43794>;
  <D.43072>:
  D.43077 = a_engine->rtp_session;
  D.43078 = switch_rtp_ready (D.43077);
  if (D.43078 != 0) goto <D.43079>; else goto <D.43080>;
  <D.43079>:
  D.43077 = a_engine->rtp_session;
  switch_rtp_reset_media_timer (D.43077);
  <D.43080>:
  D.43081 = a_engine->crypto_type;
  if (D.43081 != 9) goto <D.43082>; else goto <D.43083>;
  <D.43082>:
  D.43073 = session->channel;
  switch_channel_set_flag_value (D.43073, 92, 1);
  <D.43083>:
  D.43073 = session->channel;
  D.43084 = switch_channel_test_flag (D.43073, 15);
  if (D.43084 != 0) goto <D.43085>; else goto <D.43086>;
  <D.43085>:
  status = 0;
  goto end;
  <D.43086>:
  D.43073 = session->channel;
  D.43087 = switch_channel_test_flag (D.43073, 103);
  if (D.43087 == 0) goto <D.43088>; else goto <D.43089>;
  <D.43088>:
  D.43077 = a_engine->rtp_session;
  D.43090 = switch_rtp_ready (D.43077);
  if (D.43090 != 0) goto <D.43091>; else goto <D.43092>;
  <D.43091>:
  D.43073 = session->channel;
  D.43093 = switch_channel_test_flag (D.43073, 98);
  if (D.43093 != 0) goto <D.43094>; else goto <D.43095>;
  <D.43094>:
  D.43096 = v_engine->rtp_session;
  D.43097 = switch_rtp_ready (D.43096);
  if (D.43097 == 0) goto video; else goto <D.43098>;
  <D.43098>:
  <D.43095>:
  status = 0;
  goto end;
  <D.43092>:
  <D.43089>:
  D.43099 = smh->mparams;
  D.43100 = D.43099->codec_flags;
  status = switch_core_media_set_codec (session, 0, D.43100);
  if (status != 0) goto end; else goto <D.43101>;
  <D.43101>:
  switch_core_media_set_video_codec (session, 0);
  memset (&flags, 0, 156);
  D.43102 = flags[13];
  D.43103 = D.43102 + 1;
  flags[13] = D.43103;
  D.43106 = switch_media_handle_test_media_flag (smh, 10);
  if (D.43106 == 0) goto <D.43107>; else goto <D.43108>;
  <D.43107>:
  D.43073 = session->channel;
  D.43109 = switch_channel_test_flag (D.43073, 106);
  if (D.43109 == 0) goto <D.43110>; else goto <D.43111>;
  <D.43110>:
  D.43073 = session->channel;
  val = switch_channel_get_variable_dup (D.43073, "disable_rtp_auto_adjust", 1, -1);
  if (val == 0B) goto <D.43104>; else goto <D.43112>;
  <D.43112>:
  D.43113 = switch_true (val);
  if (D.43113 == 0) goto <D.43104>; else goto <D.43105>;
  <D.43104>:
  D.43114 = flags[7];
  D.43115 = D.43114 + 1;
  flags[7] = D.43115;
  <D.43105>:
  <D.43111>:
  <D.43108>:
  D.43118 = switch_media_handle_test_media_flag (smh, 11);
  if (D.43118 != 0) goto <D.43116>; else goto <D.43119>;
  <D.43119>:
  D.43073 = session->channel;
  val = switch_channel_get_variable_dup (D.43073, "pass_rfc2833", 1, -1);
  if (val != 0B) goto <D.43120>; else goto <D.43117>;
  <D.43120>:
  D.43121 = switch_true (val);
  if (D.43121 != 0) goto <D.43116>; else goto <D.43117>;
  <D.43116>:
  D.43073 = session->channel;
  switch_channel_set_flag_value (D.43073, 100, 1);
  <D.43117>:
  D.43124 = switch_media_handle_test_media_flag (smh, 12);
  if (D.43124 != 0) goto <D.43122>; else goto <D.43125>;
  <D.43125>:
  D.43073 = session->channel;
  val = switch_channel_get_variable_dup (D.43073, "rtp_autoflush", 1, -1);
  if (val != 0B) goto <D.43126>; else goto <D.43123>;
  <D.43126>:
  D.43127 = switch_true (val);
  if (D.43127 != 0) goto <D.43122>; else goto <D.43123>;
  <D.43122>:
  D.43128 = flags[22];
  D.43129 = D.43128 + 1;
  flags[22] = D.43129;
  <D.43123>:
  D.43132 = switch_media_handle_test_media_flag (smh, 13);
  if (D.43132 == 0) goto <D.43133>; else goto <D.43134>;
  <D.43133>:
  D.43073 = session->channel;
  val = switch_channel_get_variable_dup (D.43073, "rtp_rewrite_timestamps", 1, -1);
  if (val == 0B) goto <D.43130>; else goto <D.43135>;
  <D.43135>:
  D.43136 = switch_true (val);
  if (D.43136 == 0) goto <D.43130>; else goto <D.43131>;
  <D.43130>:
  D.43137 = flags[8];
  D.43138 = D.43137 + 1;
  flags[8] = D.43138;
  <D.43131>:
  <D.43134>:
  D.43139 = switch_media_handle_test_media_flag (smh, 9);
  if (D.43139 != 0) goto <D.43140>; else goto <D.43141>;
  <D.43140>:
  D.43099 = smh->mparams;
  D.43099->cng_pt = 0;
  goto <D.43142>;
  <D.43141>:
  D.43099 = smh->mparams;
  D.43143 = D.43099->cng_pt;
  if (D.43143 != 0) goto <D.43144>; else goto <D.43145>;
  <D.43144>:
  D.43146 = flags[16];
  D.43147 = D.43146 + 1;
  flags[16] = D.43147;
  <D.43145>:
  <D.43142>:
  D.43148 = a_engine->read_impl.iananame;
  D.43149 = strcasecmp (D.43148, "L16");
  if (D.43149 == 0) goto <D.43150>; else goto <D.43151>;
  <D.43150>:
  D.43152 = flags[14];
  D.43153 = D.43152 + 1;
  flags[14] = D.43153;
  <D.43151>:
  D.43152 = flags[14];
  if (D.43152 != 0) goto <D.43154>; else goto <D.43155>;
  <D.43154>:
  D.43073 = session->channel;
  val = switch_channel_get_variable_dup (D.43073, "rtp_disable_byteswap", 1, -1);
  if (val != 0B) goto <D.43156>; else goto <D.43157>;
  <D.43156>:
  D.43158 = switch_true (val);
  if (D.43158 != 0) goto <D.43159>; else goto <D.43160>;
  <D.43159>:
  flags[14] = 0;
  <D.43160>:
  <D.43157>:
  <D.43155>:
  D.43077 = a_engine->rtp_session;
  if (D.43077 != 0B) goto <D.43161>; else goto <D.43162>;
  <D.43161>:
  D.43073 = session->channel;
  D.43163 = switch_channel_test_flag (D.43073, 103);
  if (D.43163 != 0) goto <D.43164>; else goto <D.43165>;
  <D.43164>:
  D.43077 = a_engine->rtp_session;
  remote_host = switch_rtp_get_remote_host (D.43077);
  D.43077 = a_engine->rtp_session;
  remote_port = switch_rtp_get_remote_port (D.43077);
  D.43167 = remote_host != 0B;
  D.43168 = remote_port != 0;
  D.43169 = D.43167 && D.43168;
  if (D.43169 != 0) goto <D.43170>; else goto <D.43166>;
  <D.43170>:
  D.43171 = a_engine->cur_payload_map;
  D.43172 = D.43171->remote_sdp_ip;
  D.39348 = __builtin_strcmp (remote_host, D.43172);
  if (D.39348 == 0) goto <D.43173>; else goto <D.43166>;
  <D.43173>:
  D.43171 = a_engine->cur_payload_map;
  D.43174 = D.43171->remote_sdp_port;
  if (D.43174 == remote_port) goto <D.43175>; else goto <D.43166>;
  <D.43175>:
  D.43073 = session->channel;
  D.43176 = switch_channel_get_name (D.43073);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4825, session, 7, "Audio params are unchanged for %s.\n", D.43176);
  goto video;
  <D.43166>:
  D.43073 = session->channel;
  D.43177 = switch_channel_get_name (D.43073);
  D.43178 = (int) remote_port;
  D.43171 = a_engine->cur_payload_map;
  D.43172 = D.43171->remote_sdp_ip;
  D.43171 = a_engine->cur_payload_map;
  D.43174 = D.43171->remote_sdp_port;
  D.43179 = (int) D.43174;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4830, session, 7, "Audio params changed for %s from %s:%d to %s:%d\n", D.43177, remote_host, D.43178, D.43172, D.43179);
  D.43171 = a_engine->cur_payload_map;
  D.43174 = D.43171->remote_sdp_port;
  D.43179 = (int) D.43174;
  switch_snprintf (&tmp, 50, "%d", D.43179);
  D.43073 = session->channel;
  D.43171 = a_engine->cur_payload_map;
  D.43172 = D.43171->remote_sdp_ip;
  switch_channel_set_variable_var_check (D.43073, "remote_media_ip", D.43172, 1);
  D.43073 = session->channel;
  switch_channel_set_variable_var_check (D.43073, "remote_media_port", &tmp, 1);
  <D.43165>:
  <D.43162>:
  D.43073 = session->channel;
  D.43180 = switch_channel_test_flag (D.43073, 29);
  if (D.43180 == 0) goto <D.43181>; else goto <D.43182>;
  <D.43181>:
  D.43073 = session->channel;
  D.43183 = switch_channel_get_name (D.43073);
  D.43184 = a_engine->local_sdp_ip;
  D.43185 = a_engine->local_sdp_port;
  D.43186 = (int) D.43185;
  D.43171 = a_engine->cur_payload_map;
  D.43172 = D.43171->remote_sdp_ip;
  D.43171 = a_engine->cur_payload_map;
  D.43174 = D.43171->remote_sdp_port;
  D.43179 = (int) D.43174;
  D.43171 = a_engine->cur_payload_map;
  D.43187 = D.43171->agreed_pt;
  D.43188 = (int) D.43187;
  D.43189 = a_engine->read_impl.microseconds_per_packet;
  D.43190 = D.43189 / 1000;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4841, session, 7, "AUDIO RTP [%s] %s port %d -> %s port %d codec: %u ms: %d\n", D.43183, D.43184, D.43186, D.43172, D.43179, D.43188, D.43190);
  <D.43182>:
  D.43185 = a_engine->local_sdp_port;
  D.43186 = (int) D.43185;
  switch_snprintf (&tmp, 50, "%d", D.43186);
  D.43073 = session->channel;
  D.43184 = a_engine->local_sdp_ip;
  switch_channel_set_variable_var_check (D.43073, "local_media_ip", D.43184, 1);
  D.43073 = session->channel;
  switch_channel_set_variable_var_check (D.43073, "local_media_port", &tmp, 1);
  D.43073 = session->channel;
  D.43191 = a_engine->adv_sdp_ip;
  switch_channel_set_variable_var_check (D.43073, "advertised_media_ip", D.43191, 1);
  D.43077 = a_engine->rtp_session;
  if (D.43077 != 0B) goto <D.43192>; else goto <D.43193>;
  <D.43192>:
  D.43073 = session->channel;
  D.43194 = switch_channel_test_flag (D.43073, 103);
  if (D.43194 != 0) goto <D.43195>; else goto <D.43196>;
  <D.43195>:
  rport = 0B;
  remote_rtcp_port = a_engine->remote_rtcp_port;
  if (remote_rtcp_port == 0) goto <D.43197>; else goto <D.43198>;
  <D.43197>:
  D.43073 = session->channel;
  rport = switch_channel_get_variable_dup (D.43073, "rtp_remote_audio_rtcp_port", 1, -1);
  if (rport != 0B) goto <D.43199>; else goto <D.43200>;
  <D.43199>:
  D.43201 = atoi (rport);
  remote_rtcp_port = (switch_port_t) D.43201;
  <D.43200>:
  <D.43198>:
  D.43077 = a_engine->rtp_session;
  D.43171 = a_engine->cur_payload_map;
  D.43172 = D.43171->remote_sdp_ip;
  D.43171 = a_engine->cur_payload_map;
  D.43174 = D.43171->remote_sdp_port;
  D.43202 = switch_rtp_set_remote_address (D.43077, D.43172, D.43174, remote_rtcp_port, 1, &err);
  if (D.43202 != 0) goto <D.43203>; else goto <D.43204>;
  <D.43203>:
  err.45 = err;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4868, session, 3, "AUDIO RTP REPORTS ERROR: [%s]\n", err.45);
  goto <D.43206>;
  <D.43204>:
  D.43171 = a_engine->cur_payload_map;
  D.43172 = D.43171->remote_sdp_ip;
  D.43171 = a_engine->cur_payload_map;
  D.43174 = D.43171->remote_sdp_port;
  D.43179 = (int) D.43174;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4870, session, 7, "AUDIO RTP CHANGING DEST TO: [%s:%d]\n", D.43172, D.43179);
  D.43073 = session->channel;
  D.43207 = switch_channel_test_flag (D.43073, 96);
  if (D.43207 != 0) goto <D.43208>; else goto <D.43209>;
  <D.43208>:
  __s2_len = 7;
  if (__s2_len <= 3) goto <D.43211>; else goto <D.43212>;
  <D.43211>:
  D.43171 = a_engine->cur_payload_map;
  __s1 = D.43171->remote_sdp_ip;
  D.43213 = *__s1;
  D.43214 = (int) D.43213;
  D.43215 = "0.0.0.0";
  D.43216 = MEM[(const unsigned char *)D.43215];
  D.43217 = (int) D.43216;
  __result = D.43214 - D.43217;
  D.43218 = __s2_len != 0;
  D.43219 = __result == 0;
  D.43220 = D.43218 && D.43219;
  if (D.43220 != 0) goto <D.43221>; else goto <D.43222>;
  <D.43221>:
  D.43223 = __s1 + 1;
  D.43224 = *D.43223;
  D.43225 = (int) D.43224;
  D.43226 = &"0.0.0.0"[1];
  D.43227 = MEM[(const unsigned char *)D.43226];
  D.43228 = (int) D.43227;
  __result = D.43225 - D.43228;
  D.43229 = __s2_len > 1;
  D.43219 = __result == 0;
  D.43230 = D.43229 && D.43219;
  if (D.43230 != 0) goto <D.43231>; else goto <D.43232>;
  <D.43231>:
  D.43233 = __s1 + 2;
  D.43234 = *D.43233;
  D.43235 = (int) D.43234;
  D.43236 = &"0.0.0.0"[2];
  D.43237 = MEM[(const unsigned char *)D.43236];
  D.43238 = (int) D.43237;
  __result = D.43235 - D.43238;
  D.43239 = __s2_len > 2;
  D.43219 = __result == 0;
  D.43240 = D.43239 && D.43219;
  if (D.43240 != 0) goto <D.43241>; else goto <D.43242>;
  <D.43241>:
  D.43243 = __s1 + 3;
  D.43244 = *D.43243;
  D.43245 = (int) D.43244;
  D.43246 = &"0.0.0.0"[3];
  D.43247 = MEM[(const unsigned char *)D.43246];
  D.43248 = (int) D.43247;
  __result = D.43245 - D.43248;
  <D.43242>:
  <D.43232>:
  <D.43222>:
  D.39359 = __result;
  iftmp.46 = D.39359;
  goto <D.43249>;
  <D.43212>:
  D.43171 = a_engine->cur_payload_map;
  D.43172 = D.43171->remote_sdp_ip;
  iftmp.46 = __builtin_strcmp (D.43172, "0.0.0.0");
  <D.43249>:
  D.39360 = iftmp.46;
  if (D.39360 != 0) goto <D.43250>; else goto <D.43251>;
  <D.43250>:
  switch_core_media_toggle_hold (session, 0);
  <D.43251>:
  <D.43209>:
  D.43254 = switch_media_handle_test_media_flag (smh, 10);
  if (D.43254 == 0) goto <D.43255>; else goto <D.43256>;
  <D.43255>:
  D.43073 = session->channel;
  val = switch_channel_get_variable_dup (D.43073, "disable_rtp_auto_adjust", 1, -1);
  if (val == 0B) goto <D.43252>; else goto <D.43257>;
  <D.43257>:
  D.43258 = switch_true (val);
  if (D.43258 == 0) goto <D.43252>; else goto <D.43253>;
  <D.43252>:
  D.43073 = session->channel;
  D.43259 = switch_channel_test_flag (D.43073, 106);
  if (D.43259 == 0) goto <D.43260>; else goto <D.43261>;
  <D.43260>:
  D.43077 = a_engine->rtp_session;
  switch_rtp_set_flag (D.43077, 7);
  <D.43261>:
  <D.43253>:
  <D.43256>:
  <D.43206>:
  D.43262 = session != 0B;
  D.43263 = a_engine != 0B;
  D.43264 = D.43262 && D.43263;
  if (D.43264 != 0) goto <D.43265>; else goto <D.43266>;
  <D.43265>:
  check_dtls_reinvite (session, a_engine);
  <D.43266>:
  goto video;
  <D.43196>:
  <D.43193>:
  D.43073 = session->channel;
  D.43267 = switch_channel_test_flag (D.43073, 29);
  if (D.43267 != 0) goto <D.43268>; else goto <D.43269>;
  <D.43268>:
  switch_core_media_proxy_remote_addr (session, 0B);
  memset (&flags, 0, 156);
  D.43102 = flags[13];
  D.43103 = D.43102 + 1;
  flags[13] = D.43103;
  D.43270 = flags[19];
  D.43271 = D.43270 + 1;
  flags[19] = D.43271;
  D.43274 = switch_media_handle_test_media_flag (smh, 10);
  if (D.43274 == 0) goto <D.43275>; else goto <D.43276>;
  <D.43275>:
  D.43073 = session->channel;
  D.43277 = switch_channel_test_flag (D.43073, 106);
  if (D.43277 == 0) goto <D.43278>; else goto <D.43279>;
  <D.43278>:
  D.43073 = session->channel;
  val = switch_channel_get_variable_dup (D.43073, "disable_rtp_auto_adjust", 1, -1);
  if (val == 0B) goto <D.43272>; else goto <D.43280>;
  <D.43280>:
  D.43281 = switch_true (val);
  if (D.43281 == 0) goto <D.43272>; else goto <D.43273>;
  <D.43272>:
  D.43114 = flags[7];
  D.43115 = D.43114 + 1;
  flags[7] = D.43115;
  <D.43273>:
  <D.43279>:
  <D.43276>:
  timer_name = 0B;
  D.43073 = session->channel;
  D.43282 = switch_channel_get_name (D.43073);
  D.43171 = a_engine->cur_payload_map;
  D.43172 = D.43171->remote_sdp_ip;
  D.43171 = a_engine->cur_payload_map;
  D.43174 = D.43171->remote_sdp_port;
  D.43179 = (int) D.43174;
  D.43171 = a_engine->cur_payload_map;
  D.43172 = D.43171->remote_sdp_ip;
  D.43171 = a_engine->cur_payload_map;
  D.43174 = D.43171->remote_sdp_port;
  D.43179 = (int) D.43174;
  D.43171 = a_engine->cur_payload_map;
  D.43187 = D.43171->agreed_pt;
  D.43188 = (int) D.43187;
  D.43189 = a_engine->read_impl.microseconds_per_packet;
  D.43190 = D.43189 / 1000;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4906, session, 7, "PROXY AUDIO RTP [%s] %s:%d->%s:%d codec: %u ms: %d\n", D.43282, D.43172, D.43179, D.43172, D.43179, D.43188, D.43190);
  D.43077 = a_engine->rtp_session;
  D.43283 = switch_rtp_ready (D.43077);
  if (D.43283 != 0) goto <D.43284>; else goto <D.43285>;
  <D.43284>:
  D.43077 = a_engine->rtp_session;
  D.43171 = a_engine->cur_payload_map;
  D.43187 = D.43171->agreed_pt;
  switch_rtp_set_default_payload (D.43077, D.43187);
  <D.43285>:
  goto <D.43286>;
  <D.43269>:
  D.43099 = smh->mparams;
  timer_name = D.43099->timer_name;
  D.43073 = session->channel;
  var = switch_channel_get_variable_dup (D.43073, "rtp_timer_name", 1, -1);
  if (var != 0B) goto <D.43287>; else goto <D.43288>;
  <D.43287>:
  timer_name = var;
  <D.43288>:
  <D.43286>:
  D.43073 = session->channel;
  D.43291 = switch_channel_check_signal (D.43073, 1);
  if (D.43291 != 0) goto <D.43289>; else goto <D.43292>;
  <D.43292>:
  D.43073 = session->channel;
  D.43293 = switch_channel_get_state (D.43073);
  if (D.43293 <= 9) goto <D.43289>; else goto <D.43290>;
  <D.43289>:
  D.43184 = a_engine->local_sdp_ip;
  D.43185 = a_engine->local_sdp_port;
  D.43171 = a_engine->cur_payload_map;
  D.43172 = D.43171->remote_sdp_ip;
  D.43171 = a_engine->cur_payload_map;
  D.43174 = D.43171->remote_sdp_port;
  D.43171 = a_engine->cur_payload_map;
  D.43187 = D.43171->agreed_pt;
  D.43294 = a_engine->read_impl.samples_per_packet;
  D.43171 = a_engine->cur_payload_map;
  D.43295 = D.43171->codec_ms;
  D.43296 = D.43295 * 1000;
  D.43297 = switch_core_session_get_pool (session);
  D.43298 = switch_rtp_new (D.43184, D.43185, D.43172, D.43174, D.43187, D.43294, D.43296, &flags, timer_name, &err, D.43297);
  a_engine->rtp_session = D.43298;
  D.43077 = a_engine->rtp_session;
  D.43299 = switch_rtp_ready (D.43077);
  if (D.43299 != 0) goto <D.43300>; else goto <D.43301>;
  <D.43300>:
  D.43077 = a_engine->rtp_session;
  D.43302 = &a_engine->payload_map;
  switch_rtp_set_payload_map (D.43077, D.43302);
  <D.43301>:
  <D.43290>:
  D.43077 = a_engine->rtp_session;
  D.43303 = switch_rtp_ready (D.43077);
  if (D.43303 != 0) goto <D.43304>; else goto <D.43305>;
  <D.43304>:
  D.43099 = smh->mparams;
  D.43306 = D.43099->vflags;
  D.43307 = (uint8_t) D.43306;
  vad_in = D.43307 & 1;
  D.43099 = smh->mparams;
  D.43306 = D.43099->vflags;
  D.43307 = (uint8_t) D.43306;
  vad_out = D.43307 & 2;
  D.43073 = session->channel;
  D.43308 = switch_channel_direction (D.43073);
  inb = D.43308 == 0;
  D.43309 = &a_engine->read_mutex;
  D.43310 = switch_core_session_get_pool (session);
  switch_mutex_init (D.43309, 1, D.43310);
  D.43073 = session->channel;
  ssrc = switch_channel_get_variable_dup (D.43073, "rtp_use_ssrc", 1, -1);
  if (ssrc != 0B) goto <D.43311>; else goto <D.43312>;
  <D.43311>:
  ssrc_ul = strtoul (ssrc, 0B, 10);
  D.43077 = a_engine->rtp_session;
  switch_rtp_set_ssrc (D.43077, ssrc_ul);
  a_engine->ssrc = ssrc_ul;
  goto <D.43313>;
  <D.43312>:
  D.43077 = a_engine->rtp_session;
  D.43314 = a_engine->ssrc;
  switch_rtp_set_ssrc (D.43077, D.43314);
  <D.43313>:
  D.43315 = a_engine->remote_ssrc;
  if (D.43315 != 0) goto <D.43316>; else goto <D.43317>;
  <D.43316>:
  D.43077 = a_engine->rtp_session;
  D.43315 = a_engine->remote_ssrc;
  switch_rtp_set_remote_ssrc (D.43077, D.43315);
  <D.43317>:
  D.43073 = session->channel;
  switch_channel_set_flag_value (D.43073, 36, 1);
  D.43073 = session->channel;
  D.43171 = a_engine->cur_payload_map;
  D.43187 = D.43171->agreed_pt;
  D.43188 = (int) D.43187;
  switch_channel_set_variable_printf (D.43073, "rtp_use_pt", "%d", D.43188);
  D.43073 = session->channel;
  val = switch_channel_get_variable_dup (D.43073, "rtp_enable_vad_in", 1, -1);
  if (val != 0B) goto <D.43318>; else goto <D.43319>;
  <D.43318>:
  D.43320 = switch_true (val);
  if (D.43320 != 0) goto <D.43321>; else goto <D.43322>;
  <D.43321>:
  vad_in = 1;
  <D.43322>:
  <D.43319>:
  D.43073 = session->channel;
  val = switch_channel_get_variable_dup (D.43073, "rtp_enable_vad_out", 1, -1);
  if (val != 0B) goto <D.43323>; else goto <D.43324>;
  <D.43323>:
  D.43325 = switch_true (val);
  if (D.43325 != 0) goto <D.43326>; else goto <D.43327>;
  <D.43326>:
  vad_out = 1;
  <D.43327>:
  <D.43324>:
  D.43073 = session->channel;
  val = switch_channel_get_variable_dup (D.43073, "rtp_disable_vad_in", 1, -1);
  if (val != 0B) goto <D.43328>; else goto <D.43329>;
  <D.43328>:
  D.43330 = switch_true (val);
  if (D.43330 != 0) goto <D.43331>; else goto <D.43332>;
  <D.43331>:
  vad_in = 0;
  <D.43332>:
  <D.43329>:
  D.43073 = session->channel;
  val = switch_channel_get_variable_dup (D.43073, "rtp_disable_vad_out", 1, -1);
  if (val != 0B) goto <D.43333>; else goto <D.43334>;
  <D.43333>:
  D.43335 = switch_true (val);
  if (D.43335 != 0) goto <D.43336>; else goto <D.43337>;
  <D.43336>:
  vad_out = 0;
  <D.43337>:
  <D.43334>:
  D.43077 = a_engine->rtp_session;
  D.43338 = switch_rtp_get_ssrc (D.43077);
  a_engine->ssrc = D.43338;
  D.43073 = session->channel;
  D.43314 = a_engine->ssrc;
  switch_channel_set_variable_printf (D.43073, "rtp_use_ssrc", "%u", D.43314);
  D.43099 = smh->mparams;
  D.43339 = D.43099->auto_rtp_bugs;
  D.43340 = D.43339 & 4;
  if (D.43340 != 0) goto <D.43341>; else goto <D.43342>;
  <D.43341>:
  D.43343 = a_engine->rtp_bugs;
  D.43344 = D.43343 | 4;
  a_engine->rtp_bugs = D.43344;
  <D.43342>:
  D.43073 = session->channel;
  val = switch_channel_get_variable_dup (D.43073, "rtp_manual_rtp_bugs", 1, -1);
  if (val != 0B) goto <D.43345>; else goto <D.43346>;
  <D.43345>:
  D.43347 = &a_engine->rtp_bugs;
  switch_core_media_parse_rtp_bugs (D.43347, val);
  <D.43346>:
  D.43077 = a_engine->rtp_session;
  D.43343 = a_engine->rtp_bugs;
  D.43099 = smh->mparams;
  D.43348 = D.43099->manual_rtp_bugs;
  D.43349 = D.43343 | D.43348;
  switch_rtp_intentional_bugs (D.43077, D.43349);
  D.43352 = vad_in != 0;
  D.43353 = inb != 0;
  D.43354 = D.43352 && D.43353;
  if (D.43354 != 0) goto <D.43350>; else goto <D.43355>;
  <D.43355>:
  D.43356 = vad_out != 0;
  D.43357 = inb == 0;
  D.43358 = D.43356 && D.43357;
  if (D.43358 != 0) goto <D.43350>; else goto <D.43351>;
  <D.43350>:
  D.43077 = a_engine->rtp_session;
  D.43359 = &a_engine->read_codec;
  switch_rtp_enable_vad (D.43077, session, D.43359, 7);
  D.43360 = switch_core_session_get_channel (session);
  D.43361 = switch_channel_get_name (D.43360);
  if (vad_in != 0) goto <D.43363>; else goto <D.43364>;
  <D.43363>:
  iftmp.47 = "in";
  goto <D.43365>;
  <D.43364>:
  iftmp.47 = "";
  <D.43365>:
  if (vad_out != 0) goto <D.43367>; else goto <D.43368>;
  <D.43367>:
  iftmp.48 = "out";
  goto <D.43369>;
  <D.43368>:
  iftmp.48 = "";
  <D.43369>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5001, session, 7, "AUDIO RTP Engage VAD for %s ( %s %s )\n", D.43361, iftmp.47, iftmp.48);
  <D.43351>:
  D.43370 = a_engine->ice_in.chosen[0];
  D.43371 = a_engine->ice_in.cands[D.43370][0].ready;
  if (D.43371 != 0) goto <D.43372>; else goto <D.43373>;
  <D.43372>:
  gen_ice (session, 0, 0B, 0);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5010, session, 6, "Activating Audio ICE\n");
  D.43077 = a_engine->rtp_session;
  D.43374 = a_engine->ice_in.ufrag;
  D.43375 = a_engine->ice_out.ufrag;
  D.43376 = a_engine->ice_out.pwd;
  D.43377 = a_engine->ice_in.pwd;
  D.43379 = switch_ice_direction (session);
  if (D.43379 == 1) goto <D.43380>; else goto <D.43381>;
  <D.43380>:
  iftmp.49 = 2;
  goto <D.43382>;
  <D.43381>:
  iftmp.49 = 6;
  <D.43382>:
  D.43383 = &a_engine->ice_in;
  switch_rtp_activate_ice (D.43077, D.43374, D.43375, D.43376, D.43377, 0, iftmp.49, D.43383);
  <D.43373>:
  D.43073 = session->channel;
  val = switch_channel_get_variable_dup (D.43073, "rtcp_audio_interval_msec", 1, -1);
  if (val != 0B) goto <D.43384>; else goto <D.43386>;
  <D.43386>:
  D.43099 = smh->mparams;
  val = D.43099->rtcp_audio_interval_msec;
  if (val != 0B) goto <D.43384>; else goto <D.43385>;
  <D.43384>:
  D.43073 = session->channel;
  rport = switch_channel_get_variable_dup (D.43073, "rtp_remote_audio_rtcp_port", 1, -1);
  remote_rtcp_port = a_engine->remote_rtcp_port;
  D.43387 = remote_rtcp_port == 0;
  D.43388 = rport != 0B;
  D.43389 = D.43387 && D.43388;
  if (D.43389 != 0) goto <D.43390>; else goto <D.43391>;
  <D.43390>:
  D.43392 = atoi (rport);
  remote_rtcp_port = (switch_port_t) D.43392;
  <D.43391>:
  D.43393 = strcasecmp (val, "passthru");
  if (D.43393 == 0) goto <D.43394>; else goto <D.43395>;
  <D.43394>:
  D.43396 = (int) remote_rtcp_port;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5043, session, 6, "Activating RTCP PASSTHRU PORT %d\n", D.43396);
  D.43077 = a_engine->rtp_session;
  D.43397 = a_engine->rtcp_mux;
  D.43398 = D.43397 > 0;
  switch_rtp_activate_rtcp (D.43077, -1, remote_rtcp_port, D.43398);
  goto <D.43399>;
  <D.43395>:
  interval = atoi (val);
  interval.50 = (unsigned int) interval;
  D.43401 = interval.50 + 4294967196;
  if (D.43401 > 499900) goto <D.43402>; else goto <D.43403>;
  <D.43402>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5048, session, 3, "Invalid rtcp interval spec [%d] must be between 100 and 500000\n", interval);
  interval = 10000;
  <D.43403>:
  D.43396 = (int) remote_rtcp_port;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5053, session, 6, "Activating RTCP PORT %d\n", D.43396);
  D.43077 = a_engine->rtp_session;
  D.43397 = a_engine->rtcp_mux;
  D.43398 = D.43397 > 0;
  switch_rtp_activate_rtcp (D.43077, interval, remote_rtcp_port, D.43398);
  <D.43399>:
  D.43404 = a_engine->ice_in.chosen[1];
  D.43405 = a_engine->ice_in.cands[D.43404][1].ready;
  if (D.43405 != 0) goto <D.43406>; else goto <D.43407>;
  <D.43406>:
  D.43397 = a_engine->rtcp_mux;
  if (D.43397 > 0) goto <D.43410>; else goto <D.43408>;
  <D.43410>:
  D.43404 = a_engine->ice_in.chosen[1];
  D.43411 = a_engine->ice_in.cands[D.43404][1].con_addr;
  D.43370 = a_engine->ice_in.chosen[0];
  D.43412 = a_engine->ice_in.cands[D.43370][0].con_addr;
  D.39377 = __builtin_strcmp (D.43411, D.43412);
  if (D.39377 == 0) goto <D.43413>; else goto <D.43408>;
  <D.43413>:
  D.43404 = a_engine->ice_in.chosen[1];
  D.43414 = a_engine->ice_in.cands[D.43404][1].con_port;
  D.43370 = a_engine->ice_in.chosen[0];
  D.43415 = a_engine->ice_in.cands[D.43370][0].con_port;
  if (D.43414 == D.43415) goto <D.43416>; else goto <D.43408>;
  <D.43416>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5061, session, 6, "Skipping RTCP ICE (Same as RTP)\n");
  goto <D.43409>;
  <D.43408>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5063, session, 6, "Activating RTCP ICE\n");
  D.43077 = a_engine->rtp_session;
  D.43374 = a_engine->ice_in.ufrag;
  D.43375 = a_engine->ice_out.ufrag;
  D.43376 = a_engine->ice_out.pwd;
  D.43377 = a_engine->ice_in.pwd;
  D.43418 = switch_ice_direction (session);
  if (D.43418 == 1) goto <D.43419>; else goto <D.43420>;
  <D.43419>:
  iftmp.51 = 2;
  goto <D.43421>;
  <D.43420>:
  iftmp.51 = 6;
  <D.43421>:
  D.43383 = &a_engine->ice_in;
  switch_rtp_activate_ice (D.43077, D.43374, D.43375, D.43376, D.43377, 1, iftmp.51, D.43383);
  <D.43409>:
  <D.43407>:
  <D.43385>:
  D.43422 = &a_engine->local_dtls_fingerprint.str;
  D.43423 = _zstr (D.43422);
  if (D.43423 == 0) goto <D.43424>; else goto <D.43425>;
  <D.43424>:
  D.43426 = switch_rtp_has_dtls ();
  if (D.43426 != 0) goto <D.43427>; else goto <D.43428>;
  <D.43427>:
  D.43429 = smh->session;
  D.43430 = dtls_ok (D.43429);
  if (D.43430 != 0) goto <D.43431>; else goto <D.43432>;
  <D.43431>:
  D.43429 = smh->session;
  D.43434 = D.43429->channel;
  D.43435 = switch_channel_direction (D.43434);
  if (D.43435 == 0) goto <D.43436>; else goto <D.43437>;
  <D.43436>:
  iftmp.52 = 1;
  goto <D.43438>;
  <D.43437>:
  iftmp.52 = 2;
  <D.43438>:
  dtype = iftmp.52;
  D.43429 = smh->session;
  D.43434 = D.43429->channel;
  D.43439 = switch_channel_test_flag (D.43434, 112);
  if (D.43439 != 0) goto <D.43440>; else goto <D.43441>;
  <D.43440>:
  if (dtype == 1) goto <D.43443>; else goto <D.43444>;
  <D.43443>:
  iftmp.53 = 2;
  goto <D.43445>;
  <D.43444>:
  iftmp.53 = 1;
  <D.43445>:
  dtype = iftmp.53;
  <D.43441>:
  xtype = 4;
  D.43397 = a_engine->rtcp_mux;
  if (D.43397 > 0) goto <D.43446>; else goto <D.43447>;
  <D.43446>:
  D.43099 = smh->mparams;
  D.43448 = D.43099->rtcp_audio_interval_msec;
  if (D.43448 != 0B) goto <D.43449>; else goto <D.43450>;
  <D.43449>:
  xtype = xtype | 8;
  <D.43450>:
  <D.43447>:
  D.43077 = a_engine->rtp_session;
  D.43451 = &a_engine->local_dtls_fingerprint;
  D.43452 = &a_engine->remote_dtls_fingerprint;
  D.43453 = dtype | xtype;
  switch_rtp_add_dtls (D.43077, D.43451, D.43452, D.43453);
  D.43397 = a_engine->rtcp_mux;
  if (D.43397 <= 0) goto <D.43454>; else goto <D.43455>;
  <D.43454>:
  D.43099 = smh->mparams;
  D.43448 = D.43099->rtcp_audio_interval_msec;
  if (D.43448 != 0B) goto <D.43456>; else goto <D.43457>;
  <D.43456>:
  xtype = 8;
  D.43077 = a_engine->rtp_session;
  D.43451 = &a_engine->local_dtls_fingerprint;
  D.43452 = &a_engine->remote_dtls_fingerprint;
  D.43453 = dtype | xtype;
  switch_rtp_add_dtls (D.43077, D.43451, D.43452, D.43453);
  <D.43457>:
  <D.43455>:
  <D.43432>:
  <D.43428>:
  <D.43425>:
  D.43073 = session->channel;
  val = switch_channel_get_variable_dup (D.43073, "jitterbuffer_msec", 1, -1);
  if (val != 0B) goto <D.43458>; else goto <D.43460>;
  <D.43460>:
  D.43099 = smh->mparams;
  val = D.43099->jb_msec;
  if (val != 0B) goto <D.43458>; else goto <D.43459>;
  <D.43458>:
  jb_msec = atoi (val);
  maxlen = 0;
  max_drift = 0;
  p = __builtin_strchr (val, 58);
  if (p != 0B) goto <D.43461>; else goto <D.43462>;
  <D.43461>:
  p = p + 1;
  maxlen = atoi (p);
  q = __builtin_strchr (p, 58);
  if (q != 0B) goto <D.43463>; else goto <D.43464>;
  <D.43463>:
  q = q + 1;
  D.43465 = atoi (q);
  max_drift = ABS_EXPR <D.43465>;
  <D.43464>:
  <D.43462>:
  jb_msec.54 = (unsigned int) jb_msec;
  D.43467 = jb_msec.54 + 9;
  if (D.43467 <= 8) goto <D.43468>; else goto <D.43469>;
  <D.43468>:
  D.43470 = a_engine->read_codec.implementation;
  D.43471 = D.43470->microseconds_per_packet;
  D.43472 = D.43471 / 1000;
  D.43473 = ABS_EXPR <jb_msec>;
  jb_msec = D.43472 * D.43473;
  <D.43469>:
  jb_msec.54 = (unsigned int) jb_msec;
  D.43474 = jb_msec.54 + 4294967276;
  if (D.43474 > 9980) goto <D.43475>; else goto <D.43476>;
  <D.43475>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5125, session, 3, "Invalid Jitterbuffer spec [%d] must be between 20 and 10000\n", jb_msec);
  goto <D.43477>;
  <D.43476>:
  maxqlen = 50;
  D.43189 = a_engine->read_impl.microseconds_per_packet;
  D.43190 = D.43189 / 1000;
  qlen = jb_msec / D.43190;
  if (qlen <= 0) goto <D.43478>; else goto <D.43479>;
  <D.43478>:
  qlen = 3;
  <D.43479>:
  if (maxlen != 0) goto <D.43480>; else goto <D.43481>;
  <D.43480>:
  D.43189 = a_engine->read_impl.microseconds_per_packet;
  D.43190 = D.43189 / 1000;
  maxqlen = maxlen / D.43190;
  <D.43481>:
  if (maxqlen < qlen) goto <D.43482>; else goto <D.43483>;
  <D.43482>:
  maxqlen = qlen * 5;
  <D.43483>:
  D.43077 = a_engine->rtp_session;
  qlen.55 = (uint32_t) qlen;
  maxqlen.56 = (uint32_t) maxqlen;
  D.43294 = a_engine->read_impl.samples_per_packet;
  D.43486 = a_engine->read_impl.samples_per_second;
  max_drift.57 = (uint32_t) max_drift;
  D.43488 = switch_rtp_activate_jitter_buffer (D.43077, qlen.55, maxqlen.56, D.43294, D.43486, max_drift.57);
  if (D.43488 == 0) goto <D.43489>; else goto <D.43490>;
  <D.43489>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5146, session, 7, "Setting Jitterbuffer to %dms (%d frames)\n", jb_msec, qlen);
  D.43073 = session->channel;
  switch_channel_set_flag_value (D.43073, 57, 1);
  D.43073 = session->channel;
  D.43491 = switch_channel_get_variable_dup (D.43073, "rtp_jitter_buffer_plc", 1, -1);
  D.43492 = switch_false (D.43491);
  if (D.43492 == 0) goto <D.43493>; else goto <D.43494>;
  <D.43493>:
  D.43073 = session->channel;
  switch_channel_set_flag_value (D.43073, 58, 1);
  <D.43494>:
  goto <D.43495>;
  <D.43490>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5153, session, 4, "Error Setting Jitterbuffer to %dms (%d frames)\n", jb_msec, qlen);
  <D.43495>:
  <D.43477>:
  <D.43459>:
  D.43073 = session->channel;
  val = switch_channel_get_variable_dup (D.43073, "rtp_timeout_sec", 1, -1);
  if (val != 0B) goto <D.43496>; else goto <D.43497>;
  <D.43496>:
  v = atoi (val);
  if (v >= 0) goto <D.43498>; else goto <D.43499>;
  <D.43498>:
  D.43099 = smh->mparams;
  v.58 = (uint32_t) v;
  D.43099->rtp_timeout_sec = v.58;
  <D.43499>:
  <D.43497>:
  D.43073 = session->channel;
  val = switch_channel_get_variable_dup (D.43073, "rtp_hold_timeout_sec", 1, -1);
  if (val != 0B) goto <D.43501>; else goto <D.43502>;
  <D.43501>:
  v = atoi (val);
  if (v >= 0) goto <D.43503>; else goto <D.43504>;
  <D.43503>:
  D.43099 = smh->mparams;
  v.59 = (uint32_t) v;
  D.43099->rtp_hold_timeout_sec = v.59;
  <D.43504>:
  <D.43502>:
  D.43099 = smh->mparams;
  D.43506 = D.43099->rtp_timeout_sec;
  if (D.43506 != 0) goto <D.43507>; else goto <D.43508>;
  <D.43507>:
  D.43486 = a_engine->read_impl.samples_per_second;
  D.43099 = smh->mparams;
  D.43506 = D.43099->rtp_timeout_sec;
  D.43509 = D.43486 * D.43506;
  D.43294 = a_engine->read_impl.samples_per_packet;
  D.43510 = D.43509 / D.43294;
  a_engine->max_missed_packets = D.43510;
  D.43077 = a_engine->rtp_session;
  D.43511 = a_engine->max_missed_packets;
  switch_rtp_set_max_missed_packets (D.43077, D.43511);
  D.43099 = smh->mparams;
  D.43512 = D.43099->rtp_hold_timeout_sec;
  if (D.43512 == 0) goto <D.43513>; else goto <D.43514>;
  <D.43513>:
  D.43099 = smh->mparams;
  D.43099 = smh->mparams;
  D.43506 = D.43099->rtp_timeout_sec;
  D.43515 = D.43506 * 10;
  D.43099->rtp_hold_timeout_sec = D.43515;
  <D.43514>:
  <D.43508>:
  D.43099 = smh->mparams;
  D.43512 = D.43099->rtp_hold_timeout_sec;
  if (D.43512 != 0) goto <D.43516>; else goto <D.43517>;
  <D.43516>:
  D.43486 = a_engine->read_impl.samples_per_second;
  D.43099 = smh->mparams;
  D.43512 = D.43099->rtp_hold_timeout_sec;
  D.43518 = D.43486 * D.43512;
  D.43294 = a_engine->read_impl.samples_per_packet;
  D.43519 = D.43518 / D.43294;
  a_engine->max_missed_hold_packets = D.43519;
  <D.43517>:
  D.43099 = smh->mparams;
  D.43520 = D.43099->te;
  if (D.43520 != 0) goto <D.43521>; else goto <D.43522>;
  <D.43521>:
  D.43099 = smh->mparams;
  D.43520 = D.43099->te;
  D.43523 = (int) D.43520;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5188, session, 7, "Set 2833 dtmf send payload to %u\n", D.43523);
  D.43077 = a_engine->rtp_session;
  D.43099 = smh->mparams;
  D.43520 = D.43099->te;
  switch_rtp_set_telephony_event (D.43077, D.43520);
  D.43073 = session->channel;
  D.43099 = smh->mparams;
  D.43520 = D.43099->te;
  D.43523 = (int) D.43520;
  switch_channel_set_variable_printf (D.43073, "rtp_2833_send_payload", "%d", D.43523);
  <D.43522>:
  D.43099 = smh->mparams;
  D.43524 = D.43099->recv_te;
  if (D.43524 != 0) goto <D.43525>; else goto <D.43526>;
  <D.43525>:
  D.43099 = smh->mparams;
  D.43524 = D.43099->recv_te;
  D.43527 = (int) D.43524;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5194, session, 7, "Set 2833 dtmf receive payload to %u\n", D.43527);
  D.43077 = a_engine->rtp_session;
  D.43099 = smh->mparams;
  D.43524 = D.43099->recv_te;
  switch_rtp_set_telephony_recv_event (D.43077, D.43524);
  D.43073 = session->channel;
  D.43099 = smh->mparams;
  D.43524 = D.43099->recv_te;
  D.43527 = (int) D.43524;
  switch_channel_set_variable_printf (D.43073, "rtp_2833_recv_payload", "%d", D.43527);
  <D.43526>:
  D.43531 = switch_media_handle_test_media_flag (smh, 9);
  if (D.43531 != 0) goto <D.43528>; else goto <D.43532>;
  <D.43532>:
  D.43073 = session->channel;
  val = switch_channel_get_variable_dup (D.43073, "supress_cng", 1, -1);
  if (val != 0B) goto <D.43533>; else goto <D.43529>;
  <D.43533>:
  D.43534 = switch_true (val);
  if (D.43534 != 0) goto <D.43528>; else goto <D.43529>;
  <D.43529>:
  D.43073 = session->channel;
  val = switch_channel_get_variable_dup (D.43073, "suppress_cng", 1, -1);
  if (val != 0B) goto <D.43535>; else goto <D.43530>;
  <D.43535>:
  D.43536 = switch_true (val);
  if (D.43536 != 0) goto <D.43528>; else goto <D.43530>;
  <D.43528>:
  D.43099 = smh->mparams;
  D.43099->cng_pt = 0;
  <D.43530>:
  D.43073 = session->channel;
  val = switch_channel_get_variable_dup (D.43073, "rtp_digit_delay", 1, -1);
  if (val != 0B) goto <D.43537>; else goto <D.43538>;
  <D.43537>:
  delayi = atoi (val);
  if (delayi < 0) goto <D.43539>; else goto <D.43540>;
  <D.43539>:
  delayi = 0;
  <D.43540>:
  D.43099 = smh->mparams;
  delayi.60 = (unsigned int) delayi;
  D.43099->dtmf_delay = delayi.60;
  <D.43538>:
  D.43099 = smh->mparams;
  D.43542 = D.43099->dtmf_delay;
  if (D.43542 != 0) goto <D.43543>; else goto <D.43544>;
  <D.43543>:
  D.43077 = a_engine->rtp_session;
  D.43099 = smh->mparams;
  D.43542 = D.43099->dtmf_delay;
  switch_rtp_set_interdigit_delay (D.43077, D.43542);
  D.43073 = session->channel;
  D.43545 = switch_channel_get_name (D.43073);
  D.43099 = smh->mparams;
  D.43542 = D.43099->dtmf_delay;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5216, session, 7, "%s Set rtp dtmf delay to %u\n", D.43545, D.43542);
  <D.43544>:
  D.43099 = smh->mparams;
  D.43143 = D.43099->cng_pt;
  if (D.43143 != 0) goto <D.43546>; else goto <D.43547>;
  <D.43546>:
  D.43548 = switch_media_handle_test_media_flag (smh, 9);
  if (D.43548 == 0) goto <D.43549>; else goto <D.43550>;
  <D.43549>:
  D.43099 = smh->mparams;
  D.43143 = D.43099->cng_pt;
  D.43551 = (int) D.43143;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5222, session, 7, "Set comfort noise payload to %u\n", D.43551);
  D.43077 = a_engine->rtp_session;
  D.43099 = smh->mparams;
  D.43143 = D.43099->cng_pt;
  switch_rtp_set_cng_pt (D.43077, D.43143);
  <D.43550>:
  <D.43547>:
  switch_core_session_apply_crypto (session, 0);
  D.43171 = a_engine->cur_payload_map;
  D.43174 = D.43171->remote_sdp_port;
  D.43179 = (int) D.43174;
  switch_snprintf (&tmp, 50, "%d", D.43179);
  D.43073 = session->channel;
  D.43171 = a_engine->cur_payload_map;
  D.43172 = D.43171->remote_sdp_ip;
  switch_channel_set_variable_var_check (D.43073, "remote_media_ip", D.43172, 1);
  D.43073 = session->channel;
  switch_channel_set_variable_var_check (D.43073, "remote_media_port", &tmp, 1);
  D.43073 = session->channel;
  D.43552 = switch_channel_test_flag (D.43073, 74);
  if (D.43552 != 0) goto <D.43553>; else goto <D.43554>;
  <D.43553>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5234, session, 6, "Activating ZRTP PROXY MODE\n");
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5235, session, 7, "Disable NOTIMER_DURING_BRIDGE\n");
  D.43073 = session->channel;
  switch_channel_clear_flag (D.43073, 99);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5237, session, 7, "Activating audio UDPTL mode\n");
  D.43077 = a_engine->rtp_session;
  switch_rtp_udptl_mode (D.43077);
  <D.43554>:
  video:
  D.43073 = session->channel;
  D.43555 = switch_channel_direction (D.43073);
  if (D.43555 == 1) goto <D.43556>; else goto <D.43557>;
  <D.43556>:
  switch_core_media_check_video_codecs (session);
  <D.43557>:
  D.43073 = session->channel;
  D.43558 = switch_channel_test_flag (D.43073, 98);
  if (D.43558 != 0) goto <D.43559>; else goto <D.43560>;
  <D.43559>:
  D.43561 = v_engine->cur_payload_map;
  D.43562 = D.43561->rm_encoding;
  if (D.43562 != 0B) goto <D.43563>; else goto <D.43564>;
  <D.43563>:
  D.43561 = v_engine->cur_payload_map;
  D.43565 = D.43561->remote_sdp_port;
  if (D.43565 != 0) goto <D.43566>; else goto <D.43567>;
  <D.43566>:
  D.43096 = v_engine->rtp_session;
  if (D.43096 != 0B) goto <D.43568>; else goto <D.43569>;
  <D.43568>:
  D.43073 = session->channel;
  D.43570 = switch_channel_test_flag (D.43073, 103);
  if (D.43570 != 0) goto <D.43571>; else goto <D.43572>;
  <D.43571>:
  D.43096 = v_engine->rtp_session;
  remote_host = switch_rtp_get_remote_host (D.43096);
  D.43096 = v_engine->rtp_session;
  remote_port = switch_rtp_get_remote_port (D.43096);
  D.43574 = remote_host != 0B;
  D.43575 = remote_port != 0;
  D.43576 = D.43574 && D.43575;
  if (D.43576 != 0) goto <D.43577>; else goto <D.43573>;
  <D.43577>:
  D.43561 = v_engine->cur_payload_map;
  D.43578 = D.43561->remote_sdp_ip;
  D.39400 = __builtin_strcmp (remote_host, D.43578);
  if (D.39400 == 0) goto <D.43579>; else goto <D.43573>;
  <D.43579>:
  D.43561 = v_engine->cur_payload_map;
  D.43565 = D.43561->remote_sdp_port;
  if (D.43565 == remote_port) goto <D.43580>; else goto <D.43573>;
  <D.43580>:
  D.43073 = session->channel;
  D.43581 = switch_channel_get_name (D.43073);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5263, session, 7, "Video params are unchanged for %s.\n", D.43581);
  goto video_up;
  <D.43573>:
  D.43073 = session->channel;
  D.43582 = switch_channel_get_name (D.43073);
  D.43583 = (int) remote_port;
  D.43561 = v_engine->cur_payload_map;
  D.43578 = D.43561->remote_sdp_ip;
  D.43561 = v_engine->cur_payload_map;
  D.43565 = D.43561->remote_sdp_port;
  D.43584 = (int) D.43565;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5267, session, 7, "Video params changed for %s from %s:%d to %s:%d\n", D.43582, remote_host, D.43583, D.43578, D.43584);
  <D.43572>:
  <D.43569>:
  D.43073 = session->channel;
  D.43585 = switch_channel_test_flag (D.43073, 29);
  if (D.43585 == 0) goto <D.43586>; else goto <D.43587>;
  <D.43586>:
  D.43096 = v_engine->rtp_session;
  D.43588 = switch_rtp_ready (D.43096);
  if (D.43588 != 0) goto <D.43589>; else goto <D.43590>;
  <D.43589>:
  D.43073 = session->channel;
  D.43591 = switch_channel_get_name (D.43073);
  D.43171 = a_engine->cur_payload_map;
  D.43172 = D.43171->remote_sdp_ip;
  D.43592 = v_engine->local_sdp_port;
  D.43593 = (int) D.43592;
  D.43561 = v_engine->cur_payload_map;
  D.43578 = D.43561->remote_sdp_ip;
  D.43561 = v_engine->cur_payload_map;
  D.43565 = D.43561->remote_sdp_port;
  D.43584 = (int) D.43565;
  D.43561 = v_engine->cur_payload_map;
  D.43594 = D.43561->agreed_pt;
  D.43595 = (int) D.43594;
  D.43189 = a_engine->read_impl.microseconds_per_packet;
  D.43190 = D.43189 / 1000;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5275, session, 7, "VIDEO RTP [%s] %s port %d -> %s port %d codec: %u ms: %d\n", D.43591, D.43172, D.43593, D.43578, D.43584, D.43595, D.43190);
  start_video_thread (session);
  D.43096 = v_engine->rtp_session;
  D.43561 = v_engine->cur_payload_map;
  D.43594 = D.43561->agreed_pt;
  switch_rtp_set_default_payload (D.43096, D.43594);
  <D.43590>:
  <D.43587>:
  D.43592 = v_engine->local_sdp_port;
  D.43593 = (int) D.43592;
  switch_snprintf (&tmp, 50, "%d", D.43593);
  D.43073 = session->channel;
  D.43191 = a_engine->adv_sdp_ip;
  switch_channel_set_variable_var_check (D.43073, "local_video_ip", D.43191, 1);
  D.43073 = session->channel;
  switch_channel_set_variable_var_check (D.43073, "local_video_port", &tmp, 1);
  D.43096 = v_engine->rtp_session;
  if (D.43096 != 0B) goto <D.43596>; else goto <D.43597>;
  <D.43596>:
  D.43073 = session->channel;
  D.43598 = switch_channel_test_flag (D.43073, 103);
  if (D.43598 != 0) goto <D.43599>; else goto <D.43600>;
  <D.43599>:
  rport = 0B;
  remote_rtcp_port = v_engine->remote_rtcp_port;
  if (remote_rtcp_port == 0) goto <D.43601>; else goto <D.43602>;
  <D.43601>:
  D.43073 = session->channel;
  rport = switch_channel_get_variable_dup (D.43073, "rtp_remote_video_rtcp_port", 1, -1);
  if (rport != 0B) goto <D.43603>; else goto <D.43604>;
  <D.43603>:
  D.43605 = atoi (rport);
  remote_rtcp_port = (switch_port_t) D.43605;
  <D.43604>:
  <D.43602>:
  D.43096 = v_engine->rtp_session;
  D.43561 = v_engine->cur_payload_map;
  D.43578 = D.43561->remote_sdp_ip;
  D.43561 = v_engine->cur_payload_map;
  D.43565 = D.43561->remote_sdp_port;
  D.43606 = switch_rtp_set_remote_address (D.43096, D.43578, D.43565, remote_rtcp_port, 1, &err);
  if (D.43606 != 0) goto <D.43607>; else goto <D.43608>;
  <D.43607>:
  err.45 = err;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5306, session, 3, "VIDEO RTP REPORTS ERROR: [%s]\n", err.45);
  goto <D.43609>;
  <D.43608>:
  D.43561 = v_engine->cur_payload_map;
  D.43578 = D.43561->remote_sdp_ip;
  D.43561 = v_engine->cur_payload_map;
  D.43565 = D.43561->remote_sdp_port;
  D.43584 = (int) D.43565;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5308, session, 7, "VIDEO RTP CHANGING DEST TO: [%s:%d]\n", D.43578, D.43584);
  D.43612 = switch_media_handle_test_media_flag (smh, 10);
  if (D.43612 == 0) goto <D.43613>; else goto <D.43614>;
  <D.43613>:
  D.43073 = session->channel;
  D.43615 = switch_channel_test_flag (D.43073, 106);
  if (D.43615 == 0) goto <D.43616>; else goto <D.43617>;
  <D.43616>:
  D.43073 = session->channel;
  val = switch_channel_get_variable_dup (D.43073, "disable_rtp_auto_adjust", 1, -1);
  if (val == 0B) goto <D.43610>; else goto <D.43618>;
  <D.43618>:
  D.43619 = switch_true (val);
  if (D.43619 == 0) goto <D.43610>; else goto <D.43611>;
  <D.43610>:
  D.43096 = v_engine->rtp_session;
  switch_rtp_set_flag (D.43096, 7);
  start_video_thread (session);
  <D.43611>:
  <D.43617>:
  <D.43614>:
  <D.43609>:
  goto video_up;
  <D.43600>:
  <D.43597>:
  D.43073 = session->channel;
  D.43620 = switch_channel_test_flag (D.43073, 29);
  if (D.43620 != 0) goto <D.43621>; else goto <D.43622>;
  <D.43621>:
  switch_core_media_proxy_remote_addr (session, 0B);
  memset (&flags, 0, 156);
  D.43270 = flags[19];
  D.43271 = D.43270 + 1;
  flags[19] = D.43271;
  D.43102 = flags[13];
  D.43103 = D.43102 + 1;
  flags[13] = D.43103;
  D.43625 = switch_media_handle_test_media_flag (smh, 10);
  if (D.43625 == 0) goto <D.43626>; else goto <D.43627>;
  <D.43626>:
  D.43073 = session->channel;
  D.43628 = switch_channel_test_flag (D.43073, 106);
  if (D.43628 == 0) goto <D.43629>; else goto <D.43630>;
  <D.43629>:
  D.43073 = session->channel;
  val = switch_channel_get_variable_dup (D.43073, "disable_rtp_auto_adjust", 1, -1);
  if (val == 0B) goto <D.43623>; else goto <D.43631>;
  <D.43631>:
  D.43632 = switch_true (val);
  if (D.43632 == 0) goto <D.43623>; else goto <D.43624>;
  <D.43623>:
  D.43114 = flags[7];
  D.43115 = D.43114 + 1;
  flags[7] = D.43115;
  <D.43624>:
  <D.43630>:
  <D.43627>:
  timer_name = 0B;
  D.43073 = session->channel;
  D.43633 = switch_channel_get_name (D.43073);
  D.43171 = a_engine->cur_payload_map;
  D.43172 = D.43171->remote_sdp_ip;
  D.43592 = v_engine->local_sdp_port;
  D.43593 = (int) D.43592;
  D.43561 = v_engine->cur_payload_map;
  D.43578 = D.43561->remote_sdp_ip;
  D.43561 = v_engine->cur_payload_map;
  D.43565 = D.43561->remote_sdp_port;
  D.43584 = (int) D.43565;
  D.43561 = v_engine->cur_payload_map;
  D.43594 = D.43561->agreed_pt;
  D.43595 = (int) D.43594;
  D.43634 = v_engine->read_impl.microseconds_per_packet;
  D.43635 = D.43634 / 1000;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5334, session, 7, "PROXY VIDEO RTP [%s] %s:%d->%s:%d codec: %u ms: %d\n", D.43633, D.43172, D.43593, D.43578, D.43584, D.43595, D.43635);
  D.43096 = v_engine->rtp_session;
  D.43636 = switch_rtp_ready (D.43096);
  if (D.43636 != 0) goto <D.43637>; else goto <D.43638>;
  <D.43637>:
  D.43096 = v_engine->rtp_session;
  D.43561 = v_engine->cur_payload_map;
  D.43594 = D.43561->agreed_pt;
  switch_rtp_set_default_payload (D.43096, D.43594);
  <D.43638>:
  goto <D.43639>;
  <D.43622>:
  D.43099 = smh->mparams;
  timer_name = D.43099->timer_name;
  D.43073 = session->channel;
  var = switch_channel_get_variable_dup (D.43073, "rtp_timer_name", 1, -1);
  if (var != 0B) goto <D.43640>; else goto <D.43641>;
  <D.43640>:
  timer_name = var;
  <D.43641>:
  <D.43639>:
  D.43096 = v_engine->rtp_session;
  if (D.43096 != 0B) goto video_up; else goto <D.43642>;
  <D.43642>:
  D.43592 = v_engine->local_sdp_port;
  if (D.43592 == 0) goto <D.43643>; else goto <D.43644>;
  <D.43643>:
  switch_core_media_choose_port (session, 1, 1);
  <D.43644>:
  memset (&flags, 0, 156);
  D.43102 = flags[13];
  D.43103 = D.43102 + 1;
  flags[13] = D.43103;
  D.43137 = flags[8];
  D.43138 = D.43137 + 1;
  flags[8] = D.43138;
  D.43647 = switch_media_handle_test_media_flag (smh, 10);
  if (D.43647 == 0) goto <D.43648>; else goto <D.43649>;
  <D.43648>:
  D.43073 = session->channel;
  D.43650 = switch_channel_test_flag (D.43073, 15);
  if (D.43650 == 0) goto <D.43651>; else goto <D.43652>;
  <D.43651>:
  D.43073 = session->channel;
  val = switch_channel_get_variable_dup (D.43073, "disable_rtp_auto_adjust", 1, -1);
  if (val == 0B) goto <D.43645>; else goto <D.43653>;
  <D.43653>:
  D.43654 = switch_true (val);
  if (D.43654 == 0) goto <D.43645>; else goto <D.43646>;
  <D.43645>:
  D.43073 = session->channel;
  D.43655 = switch_channel_test_flag (D.43073, 106);
  if (D.43655 == 0) goto <D.43656>; else goto <D.43657>;
  <D.43656>:
  D.43114 = flags[7];
  D.43115 = D.43114 + 1;
  flags[7] = D.43115;
  <D.43657>:
  <D.43646>:
  <D.43652>:
  <D.43649>:
  D.43073 = session->channel;
  D.43658 = switch_channel_test_flag (D.43073, 29);
  if (D.43658 != 0) goto <D.43659>; else goto <D.43660>;
  <D.43659>:
  D.43270 = flags[19];
  D.43271 = D.43270 + 1;
  flags[19] = D.43271;
  <D.43660>:
  switch_core_media_set_video_codec (session, 0);
  flags[3] = 0;
  flags[0] = 0;
  D.43661 = flags[30];
  D.43662 = D.43661 + 1;
  flags[30] = D.43662;
  D.43184 = a_engine->local_sdp_ip;
  D.43592 = v_engine->local_sdp_port;
  D.43561 = v_engine->cur_payload_map;
  D.43578 = D.43561->remote_sdp_ip;
  D.43561 = v_engine->cur_payload_map;
  D.43565 = D.43561->remote_sdp_port;
  D.43561 = v_engine->cur_payload_map;
  D.43594 = D.43561->agreed_pt;
  D.43663 = switch_core_session_get_pool (session);
  D.43664 = switch_rtp_new (D.43184, D.43592, D.43578, D.43565, D.43594, 1, 90000, &flags, 0B, &err, D.43663);
  v_engine->rtp_session = D.43664;
  D.43073 = session->channel;
  D.43666 = switch_channel_test_flag (D.43073, 29);
  if (D.43666 != 0) goto <D.43667>; else goto <D.43668>;
  <D.43667>:
  iftmp.61 = "PROXY ";
  goto <D.43669>;
  <D.43668>:
  iftmp.61 = "";
  <D.43669>:
  D.43073 = session->channel;
  D.43670 = switch_channel_get_name (D.43073);
  D.43171 = a_engine->cur_payload_map;
  D.43172 = D.43171->remote_sdp_ip;
  D.43592 = v_engine->local_sdp_port;
  D.43593 = (int) D.43592;
  D.43561 = v_engine->cur_payload_map;
  D.43578 = D.43561->remote_sdp_ip;
  D.43561 = v_engine->cur_payload_map;
  D.43565 = D.43561->remote_sdp_port;
  D.43584 = (int) D.43565;
  D.43561 = v_engine->cur_payload_map;
  D.43594 = D.43561->agreed_pt;
  D.43595 = (int) D.43594;
  D.43096 = v_engine->rtp_session;
  D.43672 = switch_rtp_ready (D.43096);
  if (D.43672 == 0) goto <D.43673>; else goto <D.43674>;
  <D.43673>:
  iftmp.62 = err;
  goto <D.43675>;
  <D.43674>:
  iftmp.62 = "SUCCESS";
  <D.43675>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5391, session, 7, "%sVIDEO RTP [%s] %s:%d->%s:%d codec: %u ms: %d [%s]\n", iftmp.61, D.43670, D.43172, D.43593, D.43578, D.43584, D.43595, 0, iftmp.62);
  D.43096 = v_engine->rtp_session;
  D.43676 = switch_rtp_ready (D.43096);
  if (D.43676 != 0) goto <D.43677>; else goto <D.43678>;
  <D.43677>:
  D.43679 = v_engine->fir;
  if (D.43679 != 0) goto <D.43680>; else goto <D.43681>;
  <D.43680>:
  D.43096 = v_engine->rtp_session;
  switch_rtp_set_flag (D.43096, 36);
  <D.43681>:
  D.43682 = v_engine->pli;
  if (D.43682 != 0) goto <D.43683>; else goto <D.43684>;
  <D.43683>:
  D.43096 = v_engine->rtp_session;
  switch_rtp_set_flag (D.43096, 37);
  <D.43684>:
  D.43096 = v_engine->rtp_session;
  D.43685 = &v_engine->payload_map;
  switch_rtp_set_payload_map (D.43096, D.43685);
  start_video_thread (session);
  D.43073 = session->channel;
  switch_channel_set_flag_value (D.43073, 23, 1);
  D.43073 = session->channel;
  ssrc = switch_channel_get_variable_dup (D.43073, "rtp_use_video_ssrc", 1, -1);
  if (ssrc != 0B) goto <D.43686>; else goto <D.43687>;
  <D.43686>:
  ssrc_ul = strtoul (ssrc, 0B, 10);
  D.43096 = v_engine->rtp_session;
  switch_rtp_set_ssrc (D.43096, ssrc_ul);
  v_engine->ssrc = ssrc_ul;
  goto <D.43688>;
  <D.43687>:
  D.43096 = v_engine->rtp_session;
  D.43689 = v_engine->ssrc;
  switch_rtp_set_ssrc (D.43096, D.43689);
  <D.43688>:
  D.43690 = v_engine->remote_ssrc;
  if (D.43690 != 0) goto <D.43691>; else goto <D.43692>;
  <D.43691>:
  D.43096 = v_engine->rtp_session;
  D.43690 = v_engine->remote_ssrc;
  switch_rtp_set_remote_ssrc (D.43096, D.43690);
  <D.43692>:
  D.43693 = v_engine->ice_in.chosen[0];
  D.43694 = v_engine->ice_in.cands[D.43693][0].ready;
  if (D.43694 != 0) goto <D.43695>; else goto <D.43696>;
  <D.43695>:
  gen_ice (session, 1, 0B, 0);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5433, session, 6, "Activating Video ICE\n");
  D.43096 = v_engine->rtp_session;
  D.43697 = v_engine->ice_in.ufrag;
  D.43698 = v_engine->ice_out.ufrag;
  D.43699 = v_engine->ice_out.pwd;
  D.43700 = v_engine->ice_in.pwd;
  D.43702 = switch_ice_direction (session);
  if (D.43702 == 1) goto <D.43703>; else goto <D.43704>;
  <D.43703>:
  iftmp.63 = 2;
  goto <D.43705>;
  <D.43704>:
  iftmp.63 = 6;
  <D.43705>:
  D.43706 = &v_engine->ice_in;
  switch_rtp_activate_ice (D.43096, D.43697, D.43698, D.43699, D.43700, 0, iftmp.63, D.43706);
  <D.43696>:
  D.43073 = session->channel;
  val = switch_channel_get_variable_dup (D.43073, "rtcp_video_interval_msec", 1, -1);
  if (val != 0B) goto <D.43707>; else goto <D.43709>;
  <D.43709>:
  D.43099 = smh->mparams;
  val = D.43099->rtcp_video_interval_msec;
  if (val != 0B) goto <D.43707>; else goto <D.43708>;
  <D.43707>:
  D.43073 = session->channel;
  rport = switch_channel_get_variable_dup (D.43073, "rtp_remote_video_rtcp_port", 1, -1);
  remote_port = v_engine->remote_rtcp_port;
  if (rport != 0B) goto <D.43710>; else goto <D.43711>;
  <D.43710>:
  D.43712 = atoi (rport);
  remote_port = (switch_port_t) D.43712;
  <D.43711>:
  D.43713 = strcasecmp (val, "passthru");
  if (D.43713 == 0) goto <D.43714>; else goto <D.43715>;
  <D.43714>:
  D.43716 = (int) remote_port;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5462, session, 6, "Activating VIDEO RTCP PASSTHRU PORT %d\n", D.43716);
  D.43096 = v_engine->rtp_session;
  D.43717 = v_engine->rtcp_mux;
  D.43718 = D.43717 > 0;
  switch_rtp_activate_rtcp (D.43096, -1, remote_port, D.43718);
  goto <D.43719>;
  <D.43715>:
  interval = atoi (val);
  interval.64 = (unsigned int) interval;
  D.43721 = interval.64 + 4294967196;
  if (D.43721 > 499900) goto <D.43722>; else goto <D.43723>;
  <D.43722>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5467, session, 3, "Invalid rtcp interval spec [%d] must be between 100 and 500000\n", interval);
  <D.43723>:
  interval = 10000;
  D.43716 = (int) remote_port;
  D.43717 = v_engine->rtcp_mux;
  D.43724 = (int) D.43717;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5471, session, 6, "Activating VIDEO RTCP PORT %d mux %d\n", D.43716, D.43724);
  D.43096 = v_engine->rtp_session;
  D.43717 = v_engine->rtcp_mux;
  D.43718 = D.43717 > 0;
  switch_rtp_activate_rtcp (D.43096, interval, remote_port, D.43718);
  <D.43719>:
  D.43725 = v_engine->ice_in.chosen[1];
  D.43726 = v_engine->ice_in.cands[D.43725][1].ready;
  if (D.43726 != 0) goto <D.43727>; else goto <D.43728>;
  <D.43727>:
  D.43717 = v_engine->rtcp_mux;
  if (D.43717 > 0) goto <D.43731>; else goto <D.43729>;
  <D.43731>:
  D.43725 = v_engine->ice_in.chosen[1];
  D.43732 = v_engine->ice_in.cands[D.43725][1].con_addr;
  D.43693 = v_engine->ice_in.chosen[0];
  D.43733 = v_engine->ice_in.cands[D.43693][0].con_addr;
  D.39417 = __builtin_strcmp (D.43732, D.43733);
  if (D.39417 == 0) goto <D.43734>; else goto <D.43729>;
  <D.43734>:
  D.43725 = v_engine->ice_in.chosen[1];
  D.43735 = v_engine->ice_in.cands[D.43725][1].con_port;
  D.43693 = v_engine->ice_in.chosen[0];
  D.43736 = v_engine->ice_in.cands[D.43693][0].con_port;
  if (D.43735 == D.43736) goto <D.43737>; else goto <D.43729>;
  <D.43737>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5481, session, 6, "Skipping VIDEO RTCP ICE (Same as VIDEO RTP)\n");
  goto <D.43730>;
  <D.43729>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5484, session, 6, "Activating VIDEO RTCP ICE\n");
  D.43096 = v_engine->rtp_session;
  D.43697 = v_engine->ice_in.ufrag;
  D.43698 = v_engine->ice_out.ufrag;
  D.43699 = v_engine->ice_out.pwd;
  D.43700 = v_engine->ice_in.pwd;
  D.43739 = switch_ice_direction (session);
  if (D.43739 == 1) goto <D.43740>; else goto <D.43741>;
  <D.43740>:
  iftmp.65 = 2;
  goto <D.43742>;
  <D.43741>:
  iftmp.65 = 6;
  <D.43742>:
  D.43706 = &v_engine->ice_in;
  switch_rtp_activate_ice (D.43096, D.43697, D.43698, D.43699, D.43700, 1, iftmp.65, D.43706);
  <D.43730>:
  <D.43728>:
  <D.43708>:
  D.43743 = &v_engine->local_dtls_fingerprint.str;
  D.43744 = _zstr (D.43743);
  if (D.43744 == 0) goto <D.43745>; else goto <D.43746>;
  <D.43745>:
  D.43747 = switch_rtp_has_dtls ();
  if (D.43747 != 0) goto <D.43748>; else goto <D.43749>;
  <D.43748>:
  D.43429 = smh->session;
  D.43750 = dtls_ok (D.43429);
  if (D.43750 != 0) goto <D.43751>; else goto <D.43752>;
  <D.43751>:
  D.43429 = smh->session;
  D.43434 = D.43429->channel;
  D.43754 = switch_channel_direction (D.43434);
  if (D.43754 == 0) goto <D.43755>; else goto <D.43756>;
  <D.43755>:
  iftmp.66 = 1;
  goto <D.43757>;
  <D.43756>:
  iftmp.66 = 2;
  <D.43757>:
  dtype = iftmp.66;
  xtype = 4;
  D.43717 = v_engine->rtcp_mux;
  if (D.43717 > 0) goto <D.43758>; else goto <D.43759>;
  <D.43758>:
  D.43099 = smh->mparams;
  D.43760 = D.43099->rtcp_video_interval_msec;
  if (D.43760 != 0B) goto <D.43761>; else goto <D.43762>;
  <D.43761>:
  xtype = xtype | 8;
  <D.43762>:
  <D.43759>:
  D.43096 = v_engine->rtp_session;
  D.43763 = &v_engine->local_dtls_fingerprint;
  D.43764 = &v_engine->remote_dtls_fingerprint;
  D.43765 = dtype | xtype;
  switch_rtp_add_dtls (D.43096, D.43763, D.43764, D.43765);
  D.43717 = v_engine->rtcp_mux;
  if (D.43717 <= 0) goto <D.43766>; else goto <D.43767>;
  <D.43766>:
  D.43099 = smh->mparams;
  D.43760 = D.43099->rtcp_video_interval_msec;
  if (D.43760 != 0B) goto <D.43768>; else goto <D.43769>;
  <D.43768>:
  xtype = 8;
  D.43096 = v_engine->rtp_session;
  D.43763 = &v_engine->local_dtls_fingerprint;
  D.43764 = &v_engine->remote_dtls_fingerprint;
  D.43765 = dtype | xtype;
  switch_rtp_add_dtls (D.43096, D.43763, D.43764, D.43765);
  <D.43769>:
  <D.43767>:
  <D.43752>:
  <D.43749>:
  <D.43746>:
  D.43073 = session->channel;
  val = switch_channel_get_variable_dup (D.43073, "rtp_manual_video_rtp_bugs", 1, -1);
  if (val != 0B) goto <D.43770>; else goto <D.43771>;
  <D.43770>:
  D.43772 = &v_engine->rtp_bugs;
  switch_core_media_parse_rtp_bugs (D.43772, val);
  <D.43771>:
  D.43096 = v_engine->rtp_session;
  D.43773 = v_engine->rtp_bugs;
  D.43099 = smh->mparams;
  D.43774 = D.43099->manual_video_rtp_bugs;
  D.43775 = D.43773 | D.43774;
  switch_rtp_intentional_bugs (D.43096, D.43775);
  D.43073 = session->channel;
  D.43561 = v_engine->cur_payload_map;
  D.43594 = D.43561->agreed_pt;
  D.43595 = (int) D.43594;
  switch_channel_set_variable_printf (D.43073, "rtp_use_video_pt", "%d", D.43595);
  D.43096 = v_engine->rtp_session;
  D.43776 = switch_rtp_get_ssrc (D.43096);
  v_engine->ssrc = D.43776;
  D.43073 = session->channel;
  D.43689 = v_engine->ssrc;
  switch_channel_set_variable_printf (D.43073, "rtp_use_video_ssrc", "%u", D.43689);
  switch_core_session_apply_crypto (session, 1);
  D.43073 = session->channel;
  D.43777 = switch_channel_test_flag (D.43073, 74);
  if (D.43777 != 0) goto <D.43778>; else goto <D.43779>;
  <D.43778>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5542, session, 7, "Activating video UDPTL mode\n");
  D.43096 = v_engine->rtp_session;
  switch_rtp_udptl_mode (D.43096);
  <D.43779>:
  goto <D.43780>;
  <D.43678>:
  err.45 = err;
  if (err.45 != 0B) goto <D.43782>; else goto <D.43783>;
  <D.43782>:
  iftmp.67 = err;
  goto <D.43784>;
  <D.43783>:
  iftmp.67 = "";
  <D.43784>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5547, session, 3, "VIDEO RTP REPORTS ERROR: [%s]\n", iftmp.67);
  D.43073 = session->channel;
  switch_channel_perform_hangup (D.43073, "src/switch_core_media.c", &__func__, 5548, 27);
  goto end;
  <D.43780>:
  <D.43567>:
  <D.43564>:
  <D.43560>:
  goto <D.43785>;
  <D.43305>:
  err.45 = err;
  if (err.45 != 0B) goto <D.43787>; else goto <D.43788>;
  <D.43787>:
  iftmp.68 = err;
  goto <D.43789>;
  <D.43788>:
  iftmp.68 = "";
  <D.43789>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 5554, session, 3, "AUDIO RTP REPORTS ERROR: [%s]\n", iftmp.68);
  D.43073 = session->channel;
  switch_channel_perform_hangup (D.43073, "src/switch_core_media.c", &__func__, 5555, 27);
  status = 1;
  goto end;
  <D.43785>:
  video_up:
  D.43262 = session != 0B;
  D.43790 = v_engine != 0B;
  D.43791 = D.43262 && D.43790;
  if (D.43791 != 0) goto <D.43792>; else goto <D.43793>;
  <D.43792>:
  check_dtls_reinvite (session, v_engine);
  <D.43793>:
  status = 0;
  end:
  D.43073 = session->channel;
  switch_channel_clear_flag (D.43073, 103);
  switch_core_recovery_track (session);
  D.43070 = status;
  goto <D.43794>;
  <D.43794>:
  return D.43070;
}



;; Function start_video_thread (start_video_thread)

start_video_thread (struct switch_core_session_t * session)
{
  static const char __func__[19] = "start_video_thread";
  struct switch_media_handle_t * smh;
  struct switch_rtp_engine_t * v_engine;
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

  thd_attr = 0B;
  pool = switch_core_session_get_pool (session);
  v_engine = 0B;
  smh = session->media_handle;
  if (smh == 0B) goto <D.43795>; else goto <D.43796>;
  <D.43795>:
  D.43797 = 1;
  goto <D.43813>;
  <D.43796>:
  v_engine = &smh->engines[1];
  D.43798 = v_engine->media_thread;
  if (D.43798 != 0B) goto <D.43799>; else goto <D.43800>;
  <D.43799>:
  D.43797 = 1;
  goto <D.43813>;
  <D.43800>:
  D.43801 = switch_core_session_get_channel (session);
  D.43802 = switch_channel_get_name (D.43801);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4120, session, 5, "%s Starting Video thread\n", D.43802);
  D.43803 = v_engine->rtp_session;
  D.43804 = v_engine->cur_payload_map;
  D.43805 = D.43804->agreed_pt;
  switch_rtp_set_default_payload (D.43803, D.43805);
  v_engine->mh.session = session;
  switch_threadattr_create (&thd_attr, pool);
  thd_attr.69 = thd_attr;
  switch_threadattr_stacksize_set (thd_attr.69, 245760);
  D.43807 = &v_engine->mh.cond;
  switch_thread_cond_create (D.43807, pool);
  D.43808 = &v_engine->mh.cond_mutex;
  switch_mutex_init (D.43808, 1, pool);
  D.43809 = &v_engine->read_mutex[1];
  switch_mutex_init (D.43809, 1, pool);
  D.43810 = &v_engine->media_thread;
  thd_attr.69 = thd_attr;
  D.43811 = &v_engine->mh;
  D.43812 = switch_core_session_get_pool (session);
  switch_thread_create (D.43810, thd_attr.69, video_helper_thread, D.43811, D.43812);
  D.43797 = 0;
  goto <D.43813>;
  <D.43813>:
  return D.43797;
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
  struct media_helper * mh;
  char * D.43871;
  switch_channel_state_t D.43870;
  uint32_t D.43867;
  _Bool D.43864;
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
  void * D.43816;

  mh = obj;
  session = mh->session;
  channel = switch_core_session_get_channel (session);
  smh = session->media_handle;
  if (smh == 0B) goto <D.43814>; else goto <D.43815>;
  <D.43814>:
  D.43816 = 0B;
  goto <D.43872>;
  <D.43815>:
  switch_core_session_read_lock (session);
  mh->up = 1;
  D.43817 = mh->cond_mutex;
  switch_mutex_lock (D.43817);
  D.43818 = session->channel;
  D.43819 = switch_channel_get_name (D.43818);
  D.43821 = switch_channel_test_flag (channel, 115);
  if (D.43821 != 0) goto <D.43822>; else goto <D.43823>;
  <D.43822>:
  iftmp.70 = "on";
  goto <D.43824>;
  <D.43823>:
  iftmp.70 = "off";
  <D.43824>:
  switch_log_printf (0, "src/switch_core_media.c", &__func__, 4044, 0B, 7, "%s Video thread started. Echo is %s\n", D.43819, iftmp.70);
  switch_core_session_refresh_video (session);
  goto <D.39140>;
  <D.39141>:
  D.43825 = switch_channel_test_flag (channel, 113);
  if (D.43825 != 0) goto <D.43826>; else goto <D.43827>;
  <D.43826>:
  D.43818 = session->channel;
  D.43828 = switch_channel_get_name (D.43818);
  D.43830 = switch_channel_test_flag (channel, 115);
  if (D.43830 != 0) goto <D.43831>; else goto <D.43832>;
  <D.43831>:
  iftmp.71 = "on";
  goto <D.43833>;
  <D.43832>:
  iftmp.71 = "off";
  <D.43833>:
  switch_log_printf (0, "src/switch_core_media.c", &__func__, 4051, 0B, 7, "%s Video thread paused. Echo is %s\n", D.43828, iftmp.71);
  D.43834 = mh->cond;
  D.43817 = mh->cond_mutex;
  switch_thread_cond_wait (D.43834, D.43817);
  D.43818 = session->channel;
  D.43835 = switch_channel_get_name (D.43818);
  D.43837 = switch_channel_test_flag (channel, 115);
  if (D.43837 != 0) goto <D.43838>; else goto <D.43839>;
  <D.43838>:
  iftmp.72 = "on";
  goto <D.43840>;
  <D.43839>:
  iftmp.72 = "off";
  <D.43840>:
  switch_log_printf (0, "src/switch_core_media.c", &__func__, 4054, 0B, 7, "%s Video thread resumed  Echo is %s\n", D.43835, iftmp.72);
  switch_core_session_refresh_video (session);
  <D.43827>:
  D.43841 = switch_channel_test_flag (channel, 113);
  if (D.43841 != 0) goto <D.43842>; else goto <D.43843>;
  <D.43842>:
  // predicted unlikely by continue predictor.
  goto <D.39140>;
  <D.43843>:
  D.43818 = session->channel;
  D.43844 = switch_channel_test_flag (D.43818, 1);
  if (D.43844 == 0) goto <D.43845>; else goto <D.43846>;
  <D.43845>:
  D.43818 = session->channel;
  D.43847 = switch_channel_test_flag (D.43818, 3);
  if (D.43847 == 0) goto <D.43848>; else goto <D.43849>;
  <D.43848>:
  switch_sleep (10000);
  // predicted unlikely by continue predictor.
  goto <D.39140>;
  <D.43849>:
  <D.43846>:
  status = switch_core_session_read_video_frame (session, &read_frame, 0, 0);
  D.43850 = status != 0;
  D.43851 = status != 11;
  D.43852 = D.43850 && D.43851;
  if (D.43852 != 0) goto <D.43853>; else goto <D.43854>;
  <D.43853>:
  if (status != 10) goto <D.43855>; else goto <D.43856>;
  <D.43855>:
  switch_cond_next ();
  // predicted unlikely by continue predictor.
  goto <D.39140>;
  <D.43856>:
  <D.43854>:
  D.43857 = switch_channel_test_flag (channel, 70);
  if (D.43857 != 0) goto <D.43858>; else goto <D.43859>;
  <D.43858>:
  switch_core_session_refresh_video (session);
  switch_channel_clear_flag (channel, 70);
  <D.43859>:
  read_frame.73 = read_frame;
  D.43861 = read_frame.73->flags;
  D.43862 = (int) D.43861;
  D.43863 = D.43862 & 1;
  D.43864 = (_Bool) D.43863;
  if (D.43864 != 0) goto <D.43865>; else goto <D.43866>;
  <D.43865>:
  // predicted unlikely by continue predictor.
  goto <D.39140>;
  <D.43866>:
  D.43867 = switch_channel_test_flag (channel, 115);
  if (D.43867 != 0) goto <D.43868>; else goto <D.43869>;
  <D.43868>:
  read_frame.73 = read_frame;
  switch_core_session_write_video_frame (session, read_frame.73, 0, 0);
  <D.43869>:
  <D.39140>:
  D.43870 = switch_channel_get_state (channel);
  if (D.43870 <= 9) goto <D.39141>; else goto <D.39142>;
  <D.39142>:
  D.43818 = session->channel;
  D.43871 = switch_channel_get_name (D.43818);
  switch_log_printf (0, "src/switch_core_media.c", &__func__, 4093, 0B, 7, "%s Video thread ended\n", D.43871);
  D.43817 = mh->cond_mutex;
  switch_mutex_unlock (D.43817);
  switch_core_session_rwunlock (session);
  mh->up = 0;
  D.43816 = 0B;
  goto <D.43872>;
  <D.43872>:
  return D.43816;
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
  unsigned int D.43893;
  struct switch_secure_settings_t[10] * D.43892;
  uint32_t D.43889;
  char * D.43886;
  switch_rtp_crypto_key_type_t D.43885;
  uint32_t D.43882;
  struct switch_channel_t * D.43881;
  unsigned int D.43880;
  struct switch_rtp_engine_t[2] * D.43879;
  struct switch_media_handle_t * D.43876;

  if (type == 0) goto <D.43873>; else goto <D.43874>;
  <D.43873>:
  varname = "rtp_secure_audio_confirmed";
  goto <D.43875>;
  <D.43874>:
  varname = "rtp_secure_video_confirmed";
  <D.43875>:
  D.43876 = session->media_handle;
  if (D.43876 == 0B) goto <D.43877>; else goto <D.43878>;
  <D.43877>:
  goto <D.43904>;
  <D.43878>:
  D.43876 = session->media_handle;
  D.43879 = &D.43876->engines;
  D.43880 = type * 11416;
  engine = D.43879 + D.43880;
  D.43881 = session->channel;
  D.43882 = switch_channel_test_flag (D.43881, 84);
  if (D.43882 != 0) goto <D.43883>; else goto <D.43884>;
  <D.43883>:
  goto <D.43904>;
  <D.43884>:
  D.43885 = engine->crypto_type;
  D.43886 = engine->ssec[D.43885].remote_crypto_key;
  if (D.43886 != 0B) goto <D.43887>; else goto <D.43888>;
  <D.43887>:
  D.43881 = session->channel;
  D.43889 = switch_channel_test_flag (D.43881, 92);
  if (D.43889 != 0) goto <D.43890>; else goto <D.43891>;
  <D.43890>:
  D.43892 = &engine->ssec;
  D.43885 = engine->crypto_type;
  D.43893 = D.43885 * 144;
  D.43894 = D.43892 + D.43893;
  D.43885 = engine->crypto_type;
  D.43886 = engine->ssec[D.43885].remote_crypto_key;
  switch_core_media_add_crypto (D.43894, D.43886, 1);
  D.43895 = engine->rtp_session;
  D.43885 = engine->crypto_type;
  D.43896 = engine->ssec[D.43885].crypto_type;
  D.43885 = engine->crypto_type;
  D.43897 = &engine->ssec[D.43885].local_raw_key;
  D.43885 = engine->crypto_type;
  D.43896 = engine->ssec[D.43885].crypto_type;
  D.43898 = SUITES[D.43896].keylen;
  D.43899 = (switch_size_t) D.43898;
  switch_rtp_add_crypto_key (D.43895, 0, 1, D.43896, D.43897, D.43899);
  D.43895 = engine->rtp_session;
  D.43885 = engine->crypto_type;
  D.43900 = engine->ssec[D.43885].crypto_tag;
  D.43901 = (uint32_t) D.43900;
  D.43885 = engine->crypto_type;
  D.43896 = engine->ssec[D.43885].crypto_type;
  D.43885 = engine->crypto_type;
  D.43902 = &engine->ssec[D.43885].remote_raw_key;
  D.43885 = engine->crypto_type;
  D.43896 = engine->ssec[D.43885].crypto_type;
  D.43898 = SUITES[D.43896].keylen;
  D.43899 = (switch_size_t) D.43898;
  switch_rtp_add_crypto_key (D.43895, 1, D.43901, D.43896, D.43902, D.43899);
  D.43881 = session->channel;
  switch_channel_set_variable_var_check (D.43881, varname, "true", 1);
  D.43881 = session->channel;
  D.43885 = engine->crypto_type;
  D.43903 = SUITES[D.43885].name;
  switch_channel_set_variable_var_check (D.43881, "rtp_secure_media_negotiated", D.43903, 1);
  <D.43891>:
  <D.43888>:
  <D.43904>:
  return;
}



;; Function check_dtls_reinvite (check_dtls_reinvite)

check_dtls_reinvite (struct switch_core_session_t * session, struct switch_rtp_engine_t * engine)
{
  dtls_type_t dtype;
  dtls_type_t xtype;
  static const char __func__[20] = "check_dtls_reinvite";
  unsigned int D.43935;
  struct dtls_fingerprint_t * D.43934;
  struct dtls_fingerprint_t * D.43933;
  struct switch_rtp_t * D.43932;
  int8_t D.43929;
  switch_media_type_t D.43925;
  char * iftmp.75;
  switch_call_direction_t D.43920;
  dtls_type_t iftmp.74;
  int D.43916;
  int D.43913;
  int D.43910;
  char[192] * D.43909;
  uint32_t D.43906;
  struct switch_channel_t * D.43905;

  D.43905 = session->channel;
  D.43906 = switch_channel_test_flag (D.43905, 103);
  if (D.43906 != 0) goto <D.43907>; else goto <D.43908>;
  <D.43907>:
  D.43909 = &engine->local_dtls_fingerprint.str;
  D.43910 = _zstr (D.43909);
  if (D.43910 == 0) goto <D.43911>; else goto <D.43912>;
  <D.43911>:
  D.43913 = switch_rtp_has_dtls ();
  if (D.43913 != 0) goto <D.43914>; else goto <D.43915>;
  <D.43914>:
  D.43916 = dtls_ok (session);
  if (D.43916 != 0) goto <D.43917>; else goto <D.43918>;
  <D.43917>:
  D.43920 = switch_ice_direction (session);
  if (D.43920 == 0) goto <D.43921>; else goto <D.43922>;
  <D.43921>:
  iftmp.74 = 1;
  goto <D.43923>;
  <D.43922>:
  iftmp.74 = 2;
  <D.43923>:
  dtype = iftmp.74;
  D.43925 = engine->type;
  if (D.43925 == 1) goto <D.43926>; else goto <D.43927>;
  <D.43926>:
  iftmp.75 = "video";
  goto <D.43928>;
  <D.43927>:
  iftmp.75 = "audio";
  <D.43928>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4701, session, 6, "RE-SETTING %s DTLS\n", iftmp.75);
  xtype = 4;
  D.43929 = engine->rtcp_mux;
  if (D.43929 > 0) goto <D.43930>; else goto <D.43931>;
  <D.43930>:
  xtype = xtype | 8;
  <D.43931>:
  D.43932 = engine->rtp_session;
  D.43933 = &engine->local_dtls_fingerprint;
  D.43934 = &engine->remote_dtls_fingerprint;
  D.43935 = dtype | xtype;
  switch_rtp_add_dtls (D.43932, D.43933, D.43934, D.43935);
  D.43929 = engine->rtcp_mux;
  if (D.43929 <= 0) goto <D.43936>; else goto <D.43937>;
  <D.43936>:
  xtype = 8;
  D.43932 = engine->rtp_session;
  D.43933 = &engine->local_dtls_fingerprint;
  D.43934 = &engine->remote_dtls_fingerprint;
  D.43935 = dtype | xtype;
  switch_rtp_add_dtls (D.43932, D.43933, D.43934, D.43935);
  <D.43937>:
  <D.43918>:
  <D.43915>:
  <D.43912>:
  <D.43908>:
  return;
}



;; Function switch_core_session_wake_video_thread (switch_core_session_wake_video_thread)

switch_core_session_wake_video_thread (struct switch_core_session_t * session)
{
  struct switch_rtp_engine_t * v_engine;
  struct switch_media_handle_t * smh;
  struct switch_thread_cond_t * D.43947;
  switch_status_t D.43944;
  struct switch_mutex_t * D.43943;
  struct switch_rtp_t * D.43940;

  smh = session->media_handle;
  if (smh == 0B) goto <D.43938>; else goto <D.43939>;
  <D.43938>:
  goto <D.43948>;
  <D.43939>:
  v_engine = &smh->engines[1];
  D.43940 = v_engine->rtp_session;
  if (D.43940 == 0B) goto <D.43941>; else goto <D.43942>;
  <D.43941>:
  goto <D.43948>;
  <D.43942>:
  D.43943 = v_engine->mh.cond_mutex;
  D.43944 = switch_mutex_trylock (D.43943);
  if (D.43944 == 0) goto <D.43945>; else goto <D.43946>;
  <D.43945>:
  D.43947 = v_engine->mh.cond;
  switch_thread_cond_broadcast (D.43947);
  D.43943 = v_engine->mh.cond_mutex;
  switch_mutex_unlock (D.43943);
  <D.43946>:
  <D.43948>:
  return;
}



;; Function switch_core_media_deactivate_rtp (switch_core_media_deactivate_rtp)

switch_core_media_deactivate_rtp (struct switch_core_session_t * session)
{
  switch_status_t st;
  static const char __PRETTY_FUNCTION__[33] = "switch_core_media_deactivate_rtp";
  struct switch_media_handle_t * smh;
  struct switch_rtp_engine_t * v_engine;
  struct switch_rtp_engine_t * a_engine;
  switch_port_t D.43993;
  int D.43990;
  int D.43987;
  switch_port_t D.43982;
  struct switch_rtp_t * * D.43980;
  struct switch_rtp_t * D.43977;
  switch_port_t D.43976;
  int D.43973;
  int D.43970;
  char * D.43969;
  char * D.43966;
  struct switch_core_media_params_t * D.43965;
  switch_port_t D.43962;
  struct switch_rtp_t * * D.43960;
  struct switch_rtp_t * D.43957;
  struct switch_channel_t * D.43956;
  struct switch_thread_t * D.43953;

  if (session == 0B) goto <D.43949>; else goto <D.43950>;
  <D.43949>:
  __assert_fail ("session", "src/switch_core_media.c", 4554, &__PRETTY_FUNCTION__);
  <D.43950>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.43951>; else goto <D.43952>;
  <D.43951>:
  goto <D.43994>;
  <D.43952>:
  a_engine = &smh->engines;
  v_engine = &smh->engines[1];
  D.43953 = v_engine->media_thread;
  if (D.43953 != 0B) goto <D.43954>; else goto <D.43955>;
  <D.43954>:
  D.43956 = session->channel;
  switch_channel_clear_flag (D.43956, 113);
  v_engine->mh.up = 0;
  D.43953 = v_engine->media_thread;
  switch_thread_join (&st, D.43953);
  v_engine->media_thread = 0B;
  <D.43955>:
  D.43957 = v_engine->rtp_session;
  if (D.43957 != 0B) goto <D.43958>; else goto <D.43959>;
  <D.43958>:
  D.43960 = &v_engine->rtp_session;
  switch_rtp_destroy (D.43960);
  goto <D.43961>;
  <D.43959>:
  D.43962 = v_engine->local_sdp_port;
  if (D.43962 != 0) goto <D.43963>; else goto <D.43964>;
  <D.43963>:
  D.43965 = smh->mparams;
  D.43966 = D.43965->rtpip;
  D.43962 = v_engine->local_sdp_port;
  switch_rtp_release_port (D.43966, D.43962);
  <D.43964>:
  <D.43961>:
  D.43962 = v_engine->local_sdp_port;
  if (D.43962 != 0) goto <D.43967>; else goto <D.43968>;
  <D.43967>:
  D.43965 = smh->mparams;
  D.43969 = D.43965->remote_ip;
  D.43970 = _zstr (D.43969);
  if (D.43970 == 0) goto <D.43971>; else goto <D.43972>;
  <D.43971>:
  D.43965 = smh->mparams;
  D.43969 = D.43965->remote_ip;
  D.43973 = switch_core_media_check_nat (smh, D.43969);
  if (D.43973 != 0) goto <D.43974>; else goto <D.43975>;
  <D.43974>:
  D.43962 = v_engine->local_sdp_port;
  switch_nat_del_mapping (D.43962, 0);
  D.43962 = v_engine->local_sdp_port;
  D.43976 = D.43962 + 1;
  switch_nat_del_mapping (D.43976, 0);
  <D.43975>:
  <D.43972>:
  <D.43968>:
  D.43977 = a_engine->rtp_session;
  if (D.43977 != 0B) goto <D.43978>; else goto <D.43979>;
  <D.43978>:
  D.43980 = &a_engine->rtp_session;
  switch_rtp_destroy (D.43980);
  goto <D.43981>;
  <D.43979>:
  D.43982 = a_engine->local_sdp_port;
  if (D.43982 != 0) goto <D.43983>; else goto <D.43984>;
  <D.43983>:
  D.43965 = smh->mparams;
  D.43966 = D.43965->rtpip;
  D.43982 = a_engine->local_sdp_port;
  switch_rtp_release_port (D.43966, D.43982);
  <D.43984>:
  <D.43981>:
  D.43982 = a_engine->local_sdp_port;
  if (D.43982 != 0) goto <D.43985>; else goto <D.43986>;
  <D.43985>:
  D.43965 = smh->mparams;
  D.43969 = D.43965->remote_ip;
  D.43987 = _zstr (D.43969);
  if (D.43987 == 0) goto <D.43988>; else goto <D.43989>;
  <D.43988>:
  D.43965 = smh->mparams;
  D.43969 = D.43965->remote_ip;
  D.43990 = switch_core_media_check_nat (smh, D.43969);
  if (D.43990 != 0) goto <D.43991>; else goto <D.43992>;
  <D.43991>:
  D.43982 = a_engine->local_sdp_port;
  switch_nat_del_mapping (D.43982, 0);
  D.43982 = a_engine->local_sdp_port;
  D.43993 = D.43982 + 1;
  switch_nat_del_mapping (D.43993, 0);
  <D.43992>:
  <D.43989>:
  <D.43986>:
  <D.43994>:
  return;
}



;; Function switch_core_media_choose_ports (switch_core_media_choose_ports)

switch_core_media_choose_ports (struct switch_core_session_t * session, switch_bool_t audio, switch_bool_t video)
{
  switch_status_t status;
  switch_status_t D.44005;
  uint32_t D.44002;
  struct switch_channel_t * D.44001;

  status = 0;
  if (audio != 0) goto <D.43995>; else goto <D.43996>;
  <D.43995>:
  status = switch_core_media_choose_port (session, 0, 0);
  if (status == 0) goto <D.43997>; else goto <D.43998>;
  <D.43997>:
  if (video != 0) goto <D.43999>; else goto <D.44000>;
  <D.43999>:
  switch_core_media_check_video_codecs (session);
  D.44001 = session->channel;
  D.44002 = switch_channel_test_flag (D.44001, 98);
  if (D.44002 != 0) goto <D.44003>; else goto <D.44004>;
  <D.44003>:
  switch_core_media_choose_port (session, 1, 0);
  <D.44004>:
  <D.44000>:
  <D.43998>:
  <D.43996>:
  D.44005 = status;
  goto <D.44006>;
  <D.44006>:
  return D.44005;
}



;; Function switch_core_media_choose_port (switch_core_media_choose_port)

switch_core_media_choose_port (struct switch_core_session_t * session, switch_media_type_t type, int force)
{
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
  char * D.44053;
  char * D.44052;
  switch_port_t sdp_port.78;
  switch_status_t D.44047;
  int D.44042;
  char * D.44041;
  int D.44037;
  int D.44035;
  char * D.44034;
  switch_port_t D.44029;
  switch_port_t sdp_port.77;
  switch_port_t D.44025;
  uint32_t D.44023;
  uint32_t D.44021;
  struct switch_channel_t * D.44020;
  char * lookup_rtpip.76;
  struct switch_core_media_params_t * D.44014;
  unsigned int D.44013;
  struct switch_rtp_engine_t[2] * D.44012;
  switch_status_t D.44011;

  use_ip = 0B;
  tstr = switch_media_type2str (type);
  vname = "";
  if (session == 0B) goto <D.44007>; else goto <D.44008>;
  <D.44007>:
  __assert_fail ("session", "src/switch_core_media.c", 4450, &__PRETTY_FUNCTION__);
  <D.44008>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.44009>; else goto <D.44010>;
  <D.44009>:
  D.44011 = 1;
  goto <D.44060>;
  <D.44010>:
  D.44012 = &smh->engines;
  D.44013 = type * 11416;
  engine = D.44012 + D.44013;
  D.44014 = smh->mparams;
  lookup_rtpip.76 = D.44014->rtpip;
  lookup_rtpip = lookup_rtpip.76;
  if (force == 0) goto <D.44016>; else goto <D.44017>;
  <D.44016>:
  D.44020 = session->channel;
  D.44021 = switch_channel_test_flag (D.44020, 15);
  if (D.44021 != 0) goto <D.44018>; else goto <D.44022>;
  <D.44022>:
  D.44020 = session->channel;
  D.44023 = switch_channel_test_flag (D.44020, 29);
  if (D.44023 != 0) goto <D.44018>; else goto <D.44024>;
  <D.44024>:
  D.44025 = engine->adv_sdp_port;
  if (D.44025 != 0) goto <D.44018>; else goto <D.44019>;
  <D.44018>:
  D.44011 = 0;
  goto <D.44060>;
  <D.44019>:
  <D.44017>:
  sdp_port.77 = engine->local_sdp_port;
  if (sdp_port.77 != 0) goto <D.44027>; else goto <D.44028>;
  <D.44027>:
  D.44014 = smh->mparams;
  lookup_rtpip.76 = D.44014->rtpip;
  sdp_port.77 = engine->local_sdp_port;
  switch_rtp_release_port (lookup_rtpip.76, sdp_port.77);
  <D.44028>:
  D.44014 = smh->mparams;
  lookup_rtpip.76 = D.44014->rtpip;
  D.44029 = switch_rtp_request_port (lookup_rtpip.76);
  engine->local_sdp_port = D.44029;
  sdp_port.77 = engine->local_sdp_port;
  if (sdp_port.77 == 0) goto <D.44030>; else goto <D.44031>;
  <D.44030>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4475, session, 2, "No %s RTP ports available!\n", tstr);
  D.44011 = 1;
  goto <D.44060>;
  <D.44031>:
  D.44014 = smh->mparams;
  lookup_rtpip.76 = D.44014->rtpip;
  engine->local_sdp_ip = lookup_rtpip.76;
  sdp_port.77 = engine->local_sdp_port;
  sdp_port = sdp_port.77;
  D.44014 = smh->mparams;
  D.44034 = D.44014->remote_ip;
  D.44035 = _zstr (D.44034);
  if (D.44035 == 0) goto <D.44036>; else goto <D.44032>;
  <D.44036>:
  D.44014 = smh->mparams;
  D.44034 = D.44014->remote_ip;
  D.44037 = switch_core_media_check_nat (smh, D.44034);
  if (D.44037 != 0) goto <D.44038>; else goto <D.44032>;
  <D.44038>:
  sdp_port.77 = engine->local_sdp_port;
  switch_nat_add_mapping (sdp_port.77, 0, &sdp_port, 0);
  switch_snprintf (&vname, 128, "rtp_adv_%s_ip", tstr);
  D.44020 = session->channel;
  use_ip = switch_channel_get_variable_dup (D.44020, &vname, 1, -1);
  if (use_ip == 0B) goto <D.44039>; else goto <D.44040>;
  <D.44039>:
  D.44014 = smh->mparams;
  D.44041 = D.44014->extrtpip;
  D.44042 = _zstr (D.44041);
  if (D.44042 == 0) goto <D.44043>; else goto <D.44044>;
  <D.44043>:
  D.44014 = smh->mparams;
  use_ip = D.44014->extrtpip;
  <D.44044>:
  <D.44040>:
  if (use_ip != 0B) goto <D.44045>; else goto <D.44046>;
  <D.44045>:
  D.44047 = switch_core_media_ext_address_lookup (session, &lookup_rtpip, &sdp_port, use_ip);
  if (D.44047 != 0) goto <D.44048>; else goto <D.44049>;
  <D.44048>:
  D.44011 = 1;
  goto <D.44060>;
  <D.44049>:
  use_ip = lookup_rtpip;
  goto <D.44050>;
  <D.44046>:
  D.44014 = smh->mparams;
  use_ip = D.44014->rtpip;
  <D.44050>:
  goto <D.44033>;
  <D.44032>:
  D.44014 = smh->mparams;
  use_ip = D.44014->rtpip;
  <D.44033>:
  sdp_port.78 = sdp_port;
  engine->adv_sdp_port = sdp_port.78;
  D.44014 = smh->mparams;
  D.44014 = smh->mparams;
  D.44052 = switch_core_perform_session_strdup (session, use_ip, "src/switch_core_media.c", &__func__, 4515);
  D.44014->extrtpip = D.44052;
  D.44041 = D.44014->extrtpip;
  D.44014->adv_sdp_audio_ip = D.44041;
  D.44053 = D.44014->adv_sdp_audio_ip;
  engine->adv_sdp_ip = D.44053;
  if (type == 0) goto <D.44054>; else goto <D.44055>;
  <D.44054>:
  D.44020 = session->channel;
  D.44056 = engine->local_sdp_ip;
  switch_channel_set_variable_var_check (D.44020, "local_media_ip", D.44056, 1);
  D.44020 = session->channel;
  sdp_port.78 = sdp_port;
  D.44057 = (int) sdp_port.78;
  switch_channel_set_variable_printf (D.44020, "local_media_port", "%d", D.44057);
  D.44020 = session->channel;
  D.44058 = engine->adv_sdp_ip;
  switch_channel_set_variable_var_check (D.44020, "advertised_media_ip", D.44058, 1);
  goto <D.44059>;
  <D.44055>:
  D.44020 = session->channel;
  D.44058 = engine->adv_sdp_ip;
  switch_channel_set_variable_var_check (D.44020, "local_video_ip", D.44058, 1);
  D.44020 = session->channel;
  sdp_port.78 = sdp_port;
  D.44057 = (int) sdp_port.78;
  switch_channel_set_variable_printf (D.44020, "local_video_port", "%d", D.44057);
  <D.44059>:
  D.44011 = 0;
  goto <D.44060>;
  <D.44060>:
  return D.44011;
}



;; Function switch_media_type2str (switch_media_type2str)

switch_media_type2str (switch_media_type_t type)
{
  const char * D.44061;

  switch (type) <default: <D.13784>, case 0: <D.13782>, case 1: <D.13783>>
  <D.13782>:
  D.44061 = "audio";
  goto <D.44062>;
  <D.13783>:
  D.44061 = "video";
  goto <D.44062>;
  <D.13784>:
  D.44061 = "!ERR";
  goto <D.44062>;
  <D.44062>:
  return D.44061;
}



;; Function switch_core_media_reset_autofix (switch_core_media_reset_autofix)

switch_core_media_reset_autofix (struct switch_core_session_t * session, switch_media_type_t type)
{
  static const char __PRETTY_FUNCTION__[32] = "switch_core_media_reset_autofix";
  struct switch_media_handle_t * smh;
  struct switch_rtp_engine_t * engine;
  unsigned int D.44068;
  struct switch_rtp_engine_t[2] * D.44067;

  if (session == 0B) goto <D.44063>; else goto <D.44064>;
  <D.44063>:
  __assert_fail ("session", "src/switch_core_media.c", 4425, &__PRETTY_FUNCTION__);
  <D.44064>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.44065>; else goto <D.44066>;
  <D.44065>:
  goto <D.44069>;
  <D.44066>:
  D.44067 = &smh->engines;
  D.44068 = type * 11416;
  engine = D.44067 + D.44068;
  engine->check_frames = 0;
  engine->last_ts = 0;
  <D.44069>:
  return;
}



;; Function switch_core_media_ext_address_lookup (switch_core_media_ext_address_lookup)

switch_core_media_ext_address_lookup (struct switch_core_session_t * session, char * * ip, switch_port_t * port, const char * sourceip)
{
  size_t __s2_len;
  size_t __s1_len;
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
  int D.44093;
  unsigned int D.44090;
  unsigned int iport.79;
  int D.44084;
  char * D.44082;
  char * D.44081;
  const char * D.44080;
  int D.44077;
  switch_status_t D.44074;

  error = "";
  status = 1;
  myport = *port;
  stun_port = 3478;
  stun_ip = 0B;
  pool = switch_core_session_get_pool (session);
  if (session == 0B) goto <D.44070>; else goto <D.44071>;
  <D.44070>:
  __assert_fail ("session", "src/switch_core_media.c", 4351, &__PRETTY_FUNCTION__);
  <D.44071>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.44072>; else goto <D.44073>;
  <D.44072>:
  D.44074 = 1;
  goto <D.44117>;
  <D.44073>:
  if (sourceip == 0B) goto <D.44075>; else goto <D.44076>;
  <D.44075>:
  D.44074 = status;
  goto <D.44117>;
  <D.44076>:
  D.44077 = strncasecmp (sourceip, "host:", 5);
  if (D.44077 == 0) goto <D.44078>; else goto <D.44079>;
  <D.44078>:
  D.44080 = sourceip + 5;
  D.44081 = switch_stun_host_lookup (D.44080, pool);
  *ip = D.44081;
  D.44082 = *ip;
  status = D.44082 == 0B;
  goto <D.44083>;
  <D.44079>:
  D.44084 = strncasecmp (sourceip, "stun:", 5);
  if (D.44084 == 0) goto <D.44085>; else goto <D.44086>;
  <D.44085>:
  D.44080 = sourceip + 5;
  stun_ip = __strdup (D.44080);
  p = __builtin_strchr (stun_ip, 58);
  if (p != 0B) goto <D.44087>; else goto <D.44088>;
  <D.44087>:
  *p = 0;
  p = p + 1;
  iport = atoi (p);
  iport.79 = (unsigned int) iport;
  D.44090 = iport.79 + 4294967295;
  if (D.44090 <= 65533) goto <D.44091>; else goto <D.44092>;
  <D.44091>:
  stun_port = (switch_port_t) iport;
  <D.44092>:
  <D.44088>:
  D.44093 = _zstr (stun_ip);
  if (D.44093 != 0) goto <D.44094>; else goto <D.44095>;
  <D.44094>:
  switch_log_printf (0, "src/switch_core_media.c", &__func__, 4378, 0B, 3, "STUN Failed! NO STUN SERVER\n");
  goto out;
  <D.44095>:
  x = 0;
  goto <D.39254>;
  <D.39253>:
  status = switch_stun_lookup (ip, port, stun_ip, stun_port, &error, pool);
  if (status != 0) goto <D.44096>; else goto <D.39252>;
  <D.44096>:
  switch_sleep (100000);
  x = x + 1;
  <D.39254>:
  if (x <= 4) goto <D.39253>; else goto <D.39252>;
  <D.39252>:
  if (status != 0) goto <D.44097>; else goto <D.44098>;
  <D.44097>:
  D.44099 = (int) stun_port;
  error.80 = error;
  switch_log_printf (0, "src/switch_core_media.c", &__func__, 4390, 0B, 3, "STUN Failed! %s:%d [%s]\n", stun_ip, D.44099, error.80);
  goto out;
  <D.44098>:
  D.44082 = *ip;
  if (D.44082 == 0B) goto <D.44101>; else goto <D.44102>;
  <D.44101>:
  switch_log_printf (0, "src/switch_core_media.c", &__func__, 4394, 0B, 3, "STUN Failed! No IP returned\n");
  goto out;
  <D.44102>:
  D.44082 = *ip;
  D.44103 = *port;
  D.44104 = (int) D.44103;
  switch_log_printf (0, "src/switch_core_media.c", &__func__, 4397, 0B, 7, "STUN Success [%s]:[%d]\n", D.44082, D.44104);
  status = 0;
  D.44103 = *port;
  if (D.44103 == myport) goto <D.44107>; else goto <D.44105>;
  <D.44107>:
  D.44082 = *ip;
  D.44108 = smh->mparams;
  D.44109 = D.44108->rtpip;
  D.39263 = __builtin_strcmp (D.44082, D.44109);
  if (D.39263 == 0) goto <D.44110>; else goto <D.44105>;
  <D.44110>:
  D.44082 = *ip;
  D.44103 = *port;
  D.44104 = (int) D.44103;
  switch_log_printf (0, "src/switch_core_media.c", &__func__, 4401, 0B, 7, "STUN Not Required ip and port match. [%s]:[%d]\n", D.44082, D.44104);
  goto <D.44106>;
  <D.44105>:
  D.44108 = smh->mparams;
  D.44111 = switch_core_perform_session_strdup (session, stun_ip, "src/switch_core_media.c", &__func__, 4403);
  D.44108->stun_ip = D.44111;
  D.44108 = smh->mparams;
  D.44108->stun_port = stun_port;
  D.44108 = smh->mparams;
  D.44108 = smh->mparams;
  D.44112 = D.44108->stun_flags;
  D.44113 = D.44112 | 1;
  D.44108->stun_flags = D.44113;
  <D.44106>:
  goto <D.44114>;
  <D.44086>:
  *ip = sourceip;
  status = 0;
  <D.44114>:
  <D.44083>:
  out:
  if (stun_ip != 0B) goto <D.44115>; else goto <D.44116>;
  <D.44115>:
  free (stun_ip);
  stun_ip = 0B;
  <D.44116>:
  D.44074 = status;
  goto <D.44117>;
  <D.44117>:
  return D.44074;
}



;; Function switch_core_media_check_nat (switch_core_media_check_nat)

switch_core_media_check_nat (struct switch_media_handle_t * smh, const char * network_ip)
{
  static const char __PRETTY_FUNCTION__[28] = "switch_core_media_check_nat";
  switch_bool_t D.44130;
  char * D.44129;
  switch_bool_t D.44127;
  char * D.44125;
  struct switch_core_media_params_t * D.44124;
  int iftmp.81;
  int D.44120;

  if (network_ip == 0B) goto <D.44118>; else goto <D.44119>;
  <D.44118>:
  __assert_fail ("network_ip", "src/switch_core_media.c", 4331, &__PRETTY_FUNCTION__);
  <D.44119>:
  D.44124 = smh->mparams;
  D.44125 = D.44124->extsipip;
  if (D.44125 != 0B) goto <D.44126>; else goto <D.44122>;
  <D.44126>:
  D.44127 = switch_check_network_list_ip_token (network_ip, "loopback.auto", 0B);
  if (D.44127 == 0) goto <D.44128>; else goto <D.44122>;
  <D.44128>:
  D.44124 = smh->mparams;
  D.44129 = D.44124->local_network;
  D.44130 = switch_check_network_list_ip_token (network_ip, D.44129, 0B);
  if (D.44130 == 0) goto <D.44131>; else goto <D.44122>;
  <D.44131>:
  iftmp.81 = 1;
  goto <D.44123>;
  <D.44122>:
  iftmp.81 = 0;
  <D.44123>:
  D.44120 = iftmp.81;
  goto <D.44132>;
  <D.44132>:
  return D.44120;
}



;; Function switch_core_media_proxy_remote_addr (switch_core_media_proxy_remote_addr)

switch_core_media_proxy_remote_addr (struct switch_core_session_t * session, const char * sdp_str)
{
  register int __result;
  const unsigned char * __s1;
  size_t __s2_len;
  size_t __s1_len;
  register int __result;
  const unsigned char * __s1;
  size_t __s2_len;
  size_t __s1_len;
  size_t __s2_len;
  size_t __s1_len;
  switch_port_t remote_rtcp_port;
  const char * rport;
  switch_port_t remote_port;
  char * remote_host;
  switch_port_t remote_rtcp_port;
  const char * rport;
  size_t __s2_len;
  size_t __s1_len;
  char * tmp;
  static const char __func__[36] = "switch_core_media_proxy_remote_addr";
  static const char __PRETTY_FUNCTION__[36] = "switch_core_media_proxy_remote_addr";
  struct switch_media_handle_t * smh;
  struct switch_rtp_engine_t * v_engine;
  struct switch_rtp_engine_t * a_engine;
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
  int D.44336;
  int D.44332;
  const unsigned char D.44331;
  const unsigned char * D.44330;
  _Bool D.44327;
  _Bool D.44326;
  int D.44325;
  const unsigned char D.44324;
  const unsigned char * D.44323;
  _Bool D.44320;
  _Bool D.44319;
  int D.44318;
  const unsigned char D.44317;
  const unsigned char * D.44316;
  _Bool D.44313;
  _Bool D.44312;
  _Bool D.44311;
  int D.44310;
  const unsigned char D.44309;
  int D.39223;
  int iftmp.85;
  int D.39224;
  int D.44303;
  const unsigned char D.44302;
  char * D.44301;
  int D.44300;
  const unsigned char D.44299;
  const unsigned char * D.44298;
  _Bool D.44295;
  _Bool D.44294;
  int D.44293;
  const unsigned char D.44292;
  char * D.44291;
  int D.44290;
  const unsigned char D.44289;
  const unsigned char * D.44288;
  _Bool D.44285;
  _Bool D.44284;
  int D.44283;
  const unsigned char D.44282;
  char * D.44281;
  int D.44280;
  const unsigned char D.44279;
  const unsigned char * D.44278;
  _Bool D.44275;
  _Bool D.44274;
  _Bool D.44273;
  int D.44272;
  const unsigned char D.44271;
  char[8] * D.44270;
  int D.44269;
  const unsigned char D.44268;
  int D.39214;
  int iftmp.84;
  int D.39215;
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
  int D.44225;
  uint8_t D.44218;
  struct switch_rtp_t * D.44217;
  int D.44215;
  int D.44214;
  int D.39191;
  switch_port_t D.44208;
  char * D.44205;
  struct switch_channel_t * D.44204;
  short unsigned int D.44203;
  int D.44202;
  char * D.44201;
  struct payload_map_t * D.44200;
  char D.44197;
  short unsigned int D.44196;
  int D.44195;
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
  char D.44171;
  _Bool D.44168;
  _Bool D.44167;
  _Bool D.44166;
  unsigned int x.82;
  char D.44163;
  size_t D.44162;
  _Bool D.44160;
  _Bool D.44159;
  _Bool D.44158;
  int D.44153;
  int D.44142;
  struct switch_core_media_params_t * D.44141;
  int D.44138;
  switch_status_t D.44137;

  rip = "";
  rp = "";
  rvp = "";
  ip_ptr = 0B;
  port_ptr = 0B;
  vid_port_ptr = 0B;
  status = 1;
  if (session == 0B) goto <D.44133>; else goto <D.44134>;
  <D.44133>:
  __assert_fail ("session", "src/switch_core_media.c", 4152, &__PRETTY_FUNCTION__);
  <D.44134>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.44135>; else goto <D.44136>;
  <D.44135>:
  D.44137 = 1;
  goto <D.44354>;
  <D.44136>:
  a_engine = &smh->engines;
  v_engine = &smh->engines[1];
  D.44138 = _zstr (sdp_str);
  if (D.44138 != 0) goto <D.44139>; else goto <D.44140>;
  <D.44139>:
  D.44141 = smh->mparams;
  sdp_str = D.44141->remote_sdp_str;
  <D.44140>:
  D.44142 = _zstr (sdp_str);
  if (D.44142 != 0) goto end; else goto <D.44143>;
  <D.44143>:
  p = switch_stristr ("c=IN IP4 ", sdp_str);
  if (p != 0B) goto <D.44144>; else goto <D.44146>;
  <D.44146>:
  p = switch_stristr ("c=IN IP6 ", sdp_str);
  if (p != 0B) goto <D.44144>; else goto <D.44145>;
  <D.44144>:
  ip_ptr = p + 9;
  <D.44145>:
  p = switch_stristr ("m=audio ", sdp_str);
  if (p != 0B) goto <D.44147>; else goto <D.44148>;
  <D.44147>:
  port_ptr = p + 8;
  <D.44148>:
  p = switch_stristr ("m=image ", sdp_str);
  if (p != 0B) goto <D.44149>; else goto <D.44150>;
  <D.44149>:
  tmp = p + 8;
  if (tmp != 0B) goto <D.44151>; else goto <D.44152>;
  <D.44151>:
  D.44153 = atoi (tmp);
  if (D.44153 != 0) goto <D.44154>; else goto <D.44155>;
  <D.44154>:
  port_ptr = tmp;
  <D.44155>:
  <D.44152>:
  <D.44150>:
  p = switch_stristr ("m=video ", sdp_str);
  if (p != 0B) goto <D.44156>; else goto <D.44157>;
  <D.44156>:
  vid_port_ptr = p + 8;
  <D.44157>:
  D.44158 = ip_ptr == 0B;
  D.44159 = port_ptr == 0B;
  D.44160 = D.44158 || D.44159;
  if (D.44160 != 0) goto end; else goto <D.44161>;
  <D.44161>:
  p = ip_ptr;
  D.44162 = strlen (p);
  pe = p + D.44162;
  x = 0;
  goto <D.39174>;
  <D.39173>:
  D.44163 = *p;
  rip[x] = D.44163;
  x = x + 1;
  p = p + 1;
  if (p >= pe) goto end; else goto <D.44164>;
  <D.44164>:
  <D.39174>:
  x.82 = (unsigned int) x;
  D.44166 = x.82 <= 510;
  D.44167 = p != 0B;
  D.44168 = D.44166 && D.44167;
  if (D.44168 != 0) goto <D.44169>; else goto <D.39175>;
  <D.44169>:
  D.44163 = *p;
  if (D.44163 != 0) goto <D.44170>; else goto <D.39175>;
  <D.44170>:
  D.44171 = *p;
  D.44172 = D.44171 + 208;
  D.44173 = D.44172 <= 9;
  D.44174 = D.44171 == 46;
  D.44175 = D.44173 || D.44174;
  if (D.44175 != 0) goto <D.39173>; else goto <D.44176>;
  <D.44176>:
  D.44163 = *p;
  if (D.44163 == 58) goto <D.39173>; else goto <D.44177>;
  <D.44177>:
  D.44163 = *p;
  D.44178 = D.44163 + 159;
  if (D.44178 <= 5) goto <D.39173>; else goto <D.44179>;
  <D.44179>:
  D.44163 = *p;
  D.44180 = D.44163 + 191;
  if (D.44180 <= 5) goto <D.39173>; else goto <D.39175>;
  <D.39175>:
  p = port_ptr;
  x = 0;
  goto <D.39177>;
  <D.39176>:
  D.44163 = *p;
  rp[x] = D.44163;
  x = x + 1;
  p = p + 1;
  if (p >= pe) goto end; else goto <D.44181>;
  <D.44181>:
  <D.39177>:
  x.82 = (unsigned int) x;
  D.44166 = x.82 <= 510;
  D.44167 = p != 0B;
  D.44168 = D.44166 && D.44167;
  if (D.44168 != 0) goto <D.44182>; else goto <D.39178>;
  <D.44182>:
  D.44163 = *p;
  if (D.44163 != 0) goto <D.44183>; else goto <D.39178>;
  <D.44183>:
  D.44163 = *p;
  D.44184 = D.44163 + 208;
  if (D.44184 <= 9) goto <D.39176>; else goto <D.39178>;
  <D.39178>:
  p = vid_port_ptr;
  x = 0;
  goto <D.39180>;
  <D.39179>:
  D.44163 = *p;
  rvp[x] = D.44163;
  x = x + 1;
  p = p + 1;
  if (p >= pe) goto end; else goto <D.44185>;
  <D.44185>:
  <D.39180>:
  x.82 = (unsigned int) x;
  D.44166 = x.82 <= 510;
  D.44167 = p != 0B;
  D.44168 = D.44166 && D.44167;
  if (D.44168 != 0) goto <D.44186>; else goto <D.39181>;
  <D.44186>:
  D.44163 = *p;
  if (D.44163 != 0) goto <D.44187>; else goto <D.39181>;
  <D.44187>:
  D.44163 = *p;
  D.44184 = D.44163 + 208;
  if (D.44184 <= 9) goto <D.39179>; else goto <D.39181>;
  <D.39181>:
  D.44190 = rip[0];
  if (D.44190 == 0) goto <D.44188>; else goto <D.44191>;
  <D.44191>:
  D.44192 = rp[0];
  if (D.44192 == 0) goto <D.44188>; else goto <D.44189>;
  <D.44188>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4225, session, 3, "invalid SDP\n");
  goto end;
  <D.44189>:
  D.44193 = a_engine->cur_payload_map;
  D.44194 = switch_core_perform_session_strdup (session, &rip, "src/switch_core_media.c", &__func__, 4229);
  D.44193->remote_sdp_ip = D.44194;
  D.44193 = a_engine->cur_payload_map;
  D.44195 = atoi (&rp);
  D.44196 = (short unsigned int) D.44195;
  D.44193->remote_sdp_port = D.44196;
  D.44197 = rvp[0];
  if (D.44197 != 0) goto <D.44198>; else goto <D.44199>;
  <D.44198>:
  D.44200 = v_engine->cur_payload_map;
  D.44201 = switch_core_perform_session_strdup (session, &rip, "src/switch_core_media.c", &__func__, 4233);
  D.44200->remote_sdp_ip = D.44201;
  D.44200 = v_engine->cur_payload_map;
  D.44202 = atoi (&rvp);
  D.44203 = (short unsigned int) D.44202;
  D.44200->remote_sdp_port = D.44203;
  D.44204 = session->channel;
  switch_channel_set_flag_value (D.44204, 98, 1);
  D.44204 = session->channel;
  switch_channel_set_flag_value (D.44204, 23, 1);
  <D.44199>:
  D.44200 = v_engine->cur_payload_map;
  D.44205 = D.44200->remote_sdp_ip;
  if (D.44205 != 0B) goto <D.44206>; else goto <D.44207>;
  <D.44206>:
  D.44200 = v_engine->cur_payload_map;
  D.44208 = D.44200->remote_sdp_port;
  if (D.44208 != 0) goto <D.44209>; else goto <D.44210>;
  <D.44209>:
  D.44200 = v_engine->cur_payload_map;
  D.44205 = D.44200->remote_sdp_ip;
  D.39191 = __builtin_strcmp (D.44205, &rip);
  if (D.39191 == 0) goto <D.44213>; else goto <D.44211>;
  <D.44213>:
  D.44214 = atoi (&rvp);
  D.44200 = v_engine->cur_payload_map;
  D.44208 = D.44200->remote_sdp_port;
  D.44215 = (int) D.44208;
  if (D.44214 == D.44215) goto <D.44216>; else goto <D.44211>;
  <D.44216>:
  D.44200 = v_engine->cur_payload_map;
  D.44205 = D.44200->remote_sdp_ip;
  D.44200 = v_engine->cur_payload_map;
  D.44208 = D.44200->remote_sdp_port;
  D.44215 = (int) D.44208;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4241, session, 7, "Remote video address:port [%s:%d] has not changed.\n", D.44205, D.44215);
  goto <D.44212>;
  <D.44211>:
  D.44204 = session->channel;
  switch_channel_set_flag_value (D.44204, 98, 1);
  D.44204 = session->channel;
  switch_channel_set_flag_value (D.44204, 23, 1);
  D.44217 = v_engine->rtp_session;
  D.44218 = switch_rtp_ready (D.44217);
  if (D.44218 != 0) goto <D.44219>; else goto <D.44220>;
  <D.44219>:
  rport = 0B;
  remote_rtcp_port = v_engine->remote_rtcp_port;
  if (remote_rtcp_port == 0) goto <D.44221>; else goto <D.44222>;
  <D.44221>:
  D.44204 = session->channel;
  rport = switch_channel_get_variable_dup (D.44204, "rtp_remote_video_rtcp_port", 1, -1);
  if (rport != 0B) goto <D.44223>; else goto <D.44224>;
  <D.44223>:
  D.44225 = atoi (rport);
  remote_rtcp_port = (switch_port_t) D.44225;
  <D.44224>:
  <D.44222>:
  D.44217 = v_engine->rtp_session;
  D.44200 = v_engine->cur_payload_map;
  D.44205 = D.44200->remote_sdp_ip;
  D.44200 = v_engine->cur_payload_map;
  D.44208 = D.44200->remote_sdp_port;
  D.44226 = switch_rtp_set_remote_address (D.44217, D.44205, D.44208, remote_rtcp_port, 1, &err);
  if (D.44226 != 0) goto <D.44227>; else goto <D.44228>;
  <D.44227>:
  err.83 = err;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4259, session, 3, "VIDEO RTP REPORTS ERROR: [%s]\n", err.83);
  goto <D.44230>;
  <D.44228>:
  D.44200 = v_engine->cur_payload_map;
  D.44205 = D.44200->remote_sdp_ip;
  D.44200 = v_engine->cur_payload_map;
  D.44208 = D.44200->remote_sdp_port;
  D.44215 = (int) D.44208;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4261, session, 7, "VIDEO RTP CHANGING DEST TO: [%s:%d]\n", D.44205, D.44215);
  D.44233 = switch_media_handle_test_media_flag (smh, 10);
  if (D.44233 == 0) goto <D.44234>; else goto <D.44235>;
  <D.44234>:
  D.44204 = session->channel;
  D.44236 = switch_channel_test_flag (D.44204, 15);
  if (D.44236 == 0) goto <D.44237>; else goto <D.44238>;
  <D.44237>:
  D.44204 = session->channel;
  val = switch_channel_get_variable_dup (D.44204, "disable_rtp_auto_adjust", 1, -1);
  if (val == 0B) goto <D.44231>; else goto <D.44239>;
  <D.44239>:
  D.44240 = switch_true (val);
  if (D.44240 == 0) goto <D.44231>; else goto <D.44232>;
  <D.44231>:
  D.44204 = session->channel;
  D.44241 = switch_channel_test_flag (D.44204, 106);
  if (D.44241 == 0) goto <D.44242>; else goto <D.44243>;
  <D.44242>:
  D.44217 = v_engine->rtp_session;
  switch_rtp_set_flag (D.44217, 7);
  start_video_thread (session);
  <D.44243>:
  <D.44232>:
  <D.44238>:
  <D.44235>:
  D.44244 = switch_media_handle_test_media_flag (smh, 2);
  if (D.44244 != 0) goto <D.44245>; else goto <D.44246>;
  <D.44245>:
  v_engine->check_frames = 0;
  <D.44246>:
  <D.44230>:
  <D.44220>:
  <D.44212>:
  <D.44210>:
  <D.44207>:
  D.44247 = a_engine->rtp_session;
  D.44248 = switch_rtp_ready (D.44247);
  if (D.44248 != 0) goto <D.44249>; else goto <D.44250>;
  <D.44249>:
  D.44247 = a_engine->rtp_session;
  remote_host = switch_rtp_get_remote_host (D.44247);
  D.44247 = a_engine->rtp_session;
  remote_port = switch_rtp_get_remote_port (D.44247);
  rport = 0B;
  remote_rtcp_port = 0;
  D.44252 = remote_host != 0B;
  D.44253 = remote_port != 0;
  D.44254 = D.44252 && D.44253;
  if (D.44254 != 0) goto <D.44255>; else goto <D.44251>;
  <D.44255>:
  D.44193 = a_engine->cur_payload_map;
  D.44256 = D.44193->remote_sdp_ip;
  D.39206 = __builtin_strcmp (remote_host, D.44256);
  if (D.39206 == 0) goto <D.44257>; else goto <D.44251>;
  <D.44257>:
  D.44193 = a_engine->cur_payload_map;
  D.44258 = D.44193->remote_sdp_port;
  if (D.44258 == remote_port) goto <D.44259>; else goto <D.44251>;
  <D.44259>:
  D.44193 = a_engine->cur_payload_map;
  D.44256 = D.44193->remote_sdp_ip;
  D.44193 = a_engine->cur_payload_map;
  D.44258 = D.44193->remote_sdp_port;
  D.44260 = (int) D.44258;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4286, session, 7, "Remote address:port [%s:%d] has not changed.\n", D.44256, D.44260);
  status = 11;
  goto end;
  <D.44251>:
  if (remote_host != 0B) goto <D.44263>; else goto <D.44264>;
  <D.44263>:
  __s2_len = 7;
  if (__s2_len <= 3) goto <D.44266>; else goto <D.44267>;
  <D.44266>:
  __s1 = remote_host;
  D.44268 = *__s1;
  D.44269 = (int) D.44268;
  D.44270 = "0.0.0.0";
  D.44271 = MEM[(const unsigned char *)D.44270];
  D.44272 = (int) D.44271;
  __result = D.44269 - D.44272;
  D.44273 = __s2_len != 0;
  D.44274 = __result == 0;
  D.44275 = D.44273 && D.44274;
  if (D.44275 != 0) goto <D.44276>; else goto <D.44277>;
  <D.44276>:
  D.44278 = __s1 + 1;
  D.44279 = *D.44278;
  D.44280 = (int) D.44279;
  D.44281 = &"0.0.0.0"[1];
  D.44282 = MEM[(const unsigned char *)D.44281];
  D.44283 = (int) D.44282;
  __result = D.44280 - D.44283;
  D.44284 = __s2_len > 1;
  D.44274 = __result == 0;
  D.44285 = D.44284 && D.44274;
  if (D.44285 != 0) goto <D.44286>; else goto <D.44287>;
  <D.44286>:
  D.44288 = __s1 + 2;
  D.44289 = *D.44288;
  D.44290 = (int) D.44289;
  D.44291 = &"0.0.0.0"[2];
  D.44292 = MEM[(const unsigned char *)D.44291];
  D.44293 = (int) D.44292;
  __result = D.44290 - D.44293;
  D.44294 = __s2_len > 2;
  D.44274 = __result == 0;
  D.44295 = D.44294 && D.44274;
  if (D.44295 != 0) goto <D.44296>; else goto <D.44297>;
  <D.44296>:
  D.44298 = __s1 + 3;
  D.44299 = *D.44298;
  D.44300 = (int) D.44299;
  D.44301 = &"0.0.0.0"[3];
  D.44302 = MEM[(const unsigned char *)D.44301];
  D.44303 = (int) D.44302;
  __result = D.44300 - D.44303;
  <D.44297>:
  <D.44287>:
  <D.44277>:
  D.39214 = __result;
  iftmp.84 = D.39214;
  goto <D.44304>;
  <D.44267>:
  iftmp.84 = __builtin_strcmp (remote_host, "0.0.0.0");
  <D.44304>:
  D.39215 = iftmp.84;
  if (D.39215 == 0) goto <D.44261>; else goto <D.44305>;
  <D.44305>:
  __s2_len = 7;
  if (__s2_len <= 3) goto <D.44307>; else goto <D.44308>;
  <D.44307>:
  D.44193 = a_engine->cur_payload_map;
  __s1 = D.44193->remote_sdp_ip;
  D.44309 = *__s1;
  D.44310 = (int) D.44309;
  D.44270 = "0.0.0.0";
  D.44271 = MEM[(const unsigned char *)D.44270];
  D.44272 = (int) D.44271;
  __result = D.44310 - D.44272;
  D.44311 = __s2_len != 0;
  D.44312 = __result == 0;
  D.44313 = D.44311 && D.44312;
  if (D.44313 != 0) goto <D.44314>; else goto <D.44315>;
  <D.44314>:
  D.44316 = __s1 + 1;
  D.44317 = *D.44316;
  D.44318 = (int) D.44317;
  D.44281 = &"0.0.0.0"[1];
  D.44282 = MEM[(const unsigned char *)D.44281];
  D.44283 = (int) D.44282;
  __result = D.44318 - D.44283;
  D.44319 = __s2_len > 1;
  D.44312 = __result == 0;
  D.44320 = D.44319 && D.44312;
  if (D.44320 != 0) goto <D.44321>; else goto <D.44322>;
  <D.44321>:
  D.44323 = __s1 + 2;
  D.44324 = *D.44323;
  D.44325 = (int) D.44324;
  D.44291 = &"0.0.0.0"[2];
  D.44292 = MEM[(const unsigned char *)D.44291];
  D.44293 = (int) D.44292;
  __result = D.44325 - D.44293;
  D.44326 = __s2_len > 2;
  D.44312 = __result == 0;
  D.44327 = D.44326 && D.44312;
  if (D.44327 != 0) goto <D.44328>; else goto <D.44329>;
  <D.44328>:
  D.44330 = __s1 + 3;
  D.44331 = *D.44330;
  D.44332 = (int) D.44331;
  D.44301 = &"0.0.0.0"[3];
  D.44302 = MEM[(const unsigned char *)D.44301];
  D.44303 = (int) D.44302;
  __result = D.44332 - D.44303;
  <D.44329>:
  <D.44322>:
  <D.44315>:
  D.39223 = __result;
  iftmp.85 = D.39223;
  goto <D.44333>;
  <D.44308>:
  D.44193 = a_engine->cur_payload_map;
  D.44256 = D.44193->remote_sdp_ip;
  iftmp.85 = __builtin_strcmp (D.44256, "0.0.0.0");
  <D.44333>:
  D.39224 = iftmp.85;
  if (D.39224 == 0) goto <D.44261>; else goto <D.44262>;
  <D.44261>:
  D.44193 = a_engine->cur_payload_map;
  D.44256 = D.44193->remote_sdp_ip;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4292, session, 7, "Remote address changed from [%s] to [%s]. Ignoring...\n", D.44256, remote_host);
  status = 11;
  goto end;
  <D.44262>:
  <D.44264>:
  D.44204 = session->channel;
  rport = switch_channel_get_variable_dup (D.44204, "rtp_remote_audio_rtcp_port", 1, -1);
  if (rport != 0B) goto <D.44334>; else goto <D.44335>;
  <D.44334>:
  D.44336 = atoi (rport);
  remote_rtcp_port = (switch_port_t) D.44336;
  <D.44335>:
  D.44247 = a_engine->rtp_session;
  D.44193 = a_engine->cur_payload_map;
  D.44256 = D.44193->remote_sdp_ip;
  D.44193 = a_engine->cur_payload_map;
  D.44258 = D.44193->remote_sdp_port;
  D.44337 = switch_rtp_set_remote_address (D.44247, D.44256, D.44258, remote_rtcp_port, 1, &err);
  if (D.44337 != 0) goto <D.44338>; else goto <D.44339>;
  <D.44338>:
  err.83 = err;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4305, session, 3, "AUDIO RTP REPORTS ERROR: [%s]\n", err.83);
  status = 9;
  goto <D.44340>;
  <D.44339>:
  D.44193 = a_engine->cur_payload_map;
  D.44256 = D.44193->remote_sdp_ip;
  D.44193 = a_engine->cur_payload_map;
  D.44258 = D.44193->remote_sdp_port;
  D.44260 = (int) D.44258;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 4308, session, 7, "AUDIO RTP CHANGING DEST TO: [%s:%d]\n", D.44256, D.44260);
  D.44343 = switch_media_handle_test_media_flag (smh, 10);
  if (D.44343 == 0) goto <D.44344>; else goto <D.44345>;
  <D.44344>:
  D.44204 = session->channel;
  val = switch_channel_get_variable_dup (D.44204, "disable_rtp_auto_adjust", 1, -1);
  if (val == 0B) goto <D.44341>; else goto <D.44346>;
  <D.44346>:
  D.44347 = switch_true (val);
  if (D.44347 == 0) goto <D.44341>; else goto <D.44342>;
  <D.44341>:
  D.44204 = session->channel;
  D.44348 = switch_channel_test_flag (D.44204, 106);
  if (D.44348 == 0) goto <D.44349>; else goto <D.44350>;
  <D.44349>:
  D.44247 = a_engine->rtp_session;
  switch_rtp_set_flag (D.44247, 7);
  <D.44350>:
  <D.44342>:
  <D.44345>:
  D.44351 = switch_media_handle_test_media_flag (smh, 2);
  if (D.44351 != 0) goto <D.44352>; else goto <D.44353>;
  <D.44352>:
  a_engine->check_frames = 0;
  <D.44353>:
  status = 0;
  <D.44340>:
  <D.44250>:
  end:
  D.44137 = status;
  goto <D.44354>;
  <D.44354>:
  return D.44137;
}



;; Function switch_core_media_toggle_hold (switch_core_media_toggle_hold)

switch_core_media_toggle_hold (struct switch_core_session_t * session, int sendonly)
{
  const char * val;
  const char * info;
  const char * msg;
  const char * stream;
  static const char __func__[30] = "switch_core_media_toggle_hold";
  static const char __PRETTY_FUNCTION__[30] = "switch_core_media_toggle_hold";
  struct switch_channel_t * b_channel;
  struct switch_core_session_t * b_session;
  struct switch_media_handle_t * smh;
  struct switch_rtp_engine_t * v_engine;
  struct switch_rtp_engine_t * a_engine;
  int changed;
  uint32_t D.44454;
  int D.44453;
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
  int D.44359;

  changed = 0;
  b_session = 0B;
  b_channel = 0B;
  if (session == 0B) goto <D.44355>; else goto <D.44356>;
  <D.44355>:
  __assert_fail ("session", "src/switch_core_media.c", 3872, &__PRETTY_FUNCTION__);
  <D.44356>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.44357>; else goto <D.44358>;
  <D.44357>:
  D.44359 = 0;
  goto <D.44465>;
  <D.44358>:
  a_engine = &smh->engines;
  v_engine = &smh->engines[1];
  D.44360 = switch_core_session_perform_get_partner (session, &b_session, "src/switch_core_media.c", &__func__, 3882);
  if (D.44360 == 0) goto <D.44361>; else goto <D.44362>;
  <D.44361>:
  b_session.86 = b_session;
  b_channel = switch_core_session_get_channel (b_session.86);
  <D.44362>:
  if (sendonly != 0) goto <D.44366>; else goto <D.44364>;
  <D.44366>:
  D.44367 = session->channel;
  D.44368 = switch_channel_test_flag (D.44367, 1);
  if (D.44368 != 0) goto <D.44369>; else goto <D.44364>;
  <D.44369>:
  D.44367 = session->channel;
  D.44370 = switch_channel_test_flag (D.44367, 96);
  if (D.44370 == 0) goto <D.44371>; else goto <D.44372>;
  <D.44371>:
  msg = "hold";
  D.44367 = session->channel;
  D.44376 = switch_channel_test_flag (D.44367, 94);
  if (D.44376 != 0) goto <D.44375>; else goto <D.44377>;
  <D.44377>:
  D.44367 = session->channel;
  D.44378 = switch_channel_test_flag (D.44367, 95);
  if (D.44378 != 0) goto <D.44375>; else goto <D.44374>;
  <D.44375>:
  if (b_channel == 0B) goto <D.44373>; else goto <D.44379>;
  <D.44379>:
  D.44380 = switch_channel_test_flag (b_channel, 25);
  if (D.44380 != 0) goto <D.44373>; else goto <D.44374>;
  <D.44373>:
  D.44367 = session->channel;
  sendonly.87 = (switch_bool_t) sendonly;
  switch_channel_mark_hold (D.44367, sendonly.87);
  D.44367 = session->channel;
  switch_channel_set_flag_value (D.44367, 96, 1);
  changed = 0;
  goto end;
  <D.44374>:
  D.44367 = session->channel;
  info = switch_channel_get_variable_dup (D.44367, "presence_call_info", 1, -1);
  if (info != 0B) goto <D.44382>; else goto <D.44383>;
  <D.44382>:
  D.44384 = switch_stristr ("private", info);
  if (D.44384 != 0B) goto <D.44385>; else goto <D.44386>;
  <D.44385>:
  msg = "hold-private";
  <D.44386>:
  <D.44383>:
  D.44387 = a_engine->rtp_session;
  if (D.44387 != 0B) goto <D.44388>; else goto <D.44389>;
  <D.44388>:
  D.44387 = a_engine->rtp_session;
  switch_rtp_set_flag (D.44387, 35);
  <D.44389>:
  D.44390 = v_engine->rtp_session;
  if (D.44390 != 0B) goto <D.44391>; else goto <D.44392>;
  <D.44391>:
  D.44390 = v_engine->rtp_session;
  switch_rtp_set_flag (D.44390, 35);
  <D.44392>:
  D.44367 = session->channel;
  switch_channel_set_flag_value (D.44367, 96, 1);
  D.44367 = session->channel;
  switch_channel_mark_hold (D.44367, 1);
  D.44367 = session->channel;
  switch_channel_perform_presence (D.44367, "unknown", msg, 0B, "src/switch_core_media.c", &__func__, 3918);
  changed = 1;
  D.44393 = a_engine->max_missed_hold_packets;
  if (D.44393 != 0) goto <D.44394>; else goto <D.44395>;
  <D.44394>:
  D.44387 = a_engine->rtp_session;
  if (D.44387 != 0B) goto <D.44396>; else goto <D.44397>;
  <D.44396>:
  D.44387 = a_engine->rtp_session;
  D.44393 = a_engine->max_missed_hold_packets;
  switch_rtp_set_max_missed_packets (D.44387, D.44393);
  <D.44397>:
  <D.44395>:
  D.44367 = session->channel;
  stream = switch_channel_get_hold_music (D.44367);
  if (stream == 0B) goto <D.44398>; else goto <D.44399>;
  <D.44398>:
  stream = "local_stream://moh";
  <D.44399>:
  if (stream != 0B) goto <D.44402>; else goto <D.44403>;
  <D.44402>:
  D.44404 = strcasecmp (stream, "silence");
  if (D.44404 != 0) goto <D.44405>; else goto <D.44406>;
  <D.44405>:
  if (b_channel == 0B) goto <D.44400>; else goto <D.44407>;
  <D.44407>:
  D.44408 = switch_channel_test_flag (b_channel, 25);
  if (D.44408 == 0) goto <D.44400>; else goto <D.44401>;
  <D.44400>:
  D.44409 = strcasecmp (stream, "indicate_hold");
  if (D.44409 == 0) goto <D.44410>; else goto <D.44411>;
  <D.44410>:
  D.44367 = session->channel;
  switch_channel_set_flag_value (D.44367, 16, 1);
  D.44367 = session->channel;
  switch_channel_set_flag_value (D.44367, 10, 1);
  b_session.86 = b_session;
  D.44412 = switch_core_session_get_uuid (b_session.86);
  switch_ivr_hold_uuid (D.44412, 0B, 0);
  goto <D.44413>;
  <D.44411>:
  b_session.86 = b_session;
  D.44414 = switch_core_session_get_uuid (b_session.86);
  switch_ivr_broadcast (D.44414, stream, 274);
  switch_sleep (250000);
  <D.44413>:
  <D.44401>:
  <D.44406>:
  <D.44403>:
  <D.44372>:
  goto <D.44365>;
  <D.44364>:
  D.44367 = session->channel;
  D.44415 = switch_channel_test_flag (D.44367, 97);
  if (D.44415 != 0) goto <D.44416>; else goto <D.44417>;
  <D.44416>:
  D.44367 = session->channel;
  switch_channel_set_flag_value (D.44367, 96, 1);
  D.44367 = session->channel;
  switch_channel_mark_hold (D.44367, 1);
  D.44387 = a_engine->rtp_session;
  if (D.44387 != 0B) goto <D.44418>; else goto <D.44419>;
  <D.44418>:
  D.44387 = a_engine->rtp_session;
  switch_rtp_set_flag (D.44387, 35);
  <D.44419>:
  D.44390 = v_engine->rtp_session;
  if (D.44390 != 0B) goto <D.44420>; else goto <D.44421>;
  <D.44420>:
  D.44390 = v_engine->rtp_session;
  switch_rtp_set_flag (D.44390, 35);
  <D.44421>:
  changed = 1;
  <D.44417>:
  D.44367 = session->channel;
  switch_channel_clear_flag (D.44367, 97);
  D.44367 = session->channel;
  D.44422 = switch_channel_test_flag (D.44367, 96);
  if (D.44422 != 0) goto <D.44423>; else goto <D.44424>;
  <D.44423>:
  switch_sleep (250000);
  if (b_channel != 0B) goto <D.44427>; else goto <D.44428>;
  <D.44427>:
  D.44367 = session->channel;
  D.44429 = switch_channel_test_flag (D.44367, 120);
  if (D.44429 != 0) goto <D.44425>; else goto <D.44430>;
  <D.44430>:
  D.44431 = switch_channel_test_flag (b_channel, 120);
  if (D.44431 != 0) goto <D.44425>; else goto <D.44426>;
  <D.44425>:
  D.44432 = switch_core_session_get_uuid (session);
  switch_ivr_nomedia (D.44432, 1);
  <D.44426>:
  <D.44428>:
  D.44433 = a_engine->max_missed_packets;
  if (D.44433 != 0) goto <D.44434>; else goto <D.44435>;
  <D.44434>:
  D.44387 = a_engine->rtp_session;
  if (D.44387 != 0B) goto <D.44436>; else goto <D.44437>;
  <D.44436>:
  D.44387 = a_engine->rtp_session;
  switch_rtp_reset_media_timer (D.44387);
  D.44387 = a_engine->rtp_session;
  D.44433 = a_engine->max_missed_packets;
  switch_rtp_set_max_missed_packets (D.44387, D.44433);
  <D.44437>:
  <D.44435>:
  if (b_channel != 0B) goto <D.44438>; else goto <D.44439>;
  <D.44438>:
  D.44367 = session->channel;
  D.44440 = switch_channel_test_flag (D.44367, 10);
  if (D.44440 != 0) goto <D.44441>; else goto <D.44442>;
  <D.44441>:
  b_session.86 = b_session;
  switch_ivr_unhold (b_session.86);
  D.44367 = session->channel;
  switch_channel_clear_flag (D.44367, 16);
  D.44367 = session->channel;
  switch_channel_clear_flag (D.44367, 10);
  goto <D.44443>;
  <D.44442>:
  <D.39128>:
  D.44444 = switch_channel_test_flag (b_channel, 21);
  if (D.44444 != 0) goto <D.44445>; else goto <D.44446>;
  <D.44445>:
  switch_channel_set_flag_value (b_channel, 28, 1);
  switch_channel_set_flag_value (b_channel, 20, 1);
  <D.44446>:
  goto <D.39127>;
  goto <D.39128>;
  <D.39127>:
  switch_channel_wait_for_flag (b_channel, 21, 0, 5000, 0B);
  <D.44443>:
  <D.44439>:
  D.44449 = switch_media_handle_test_media_flag (smh, 10);
  if (D.44449 == 0) goto <D.44450>; else goto <D.44451>;
  <D.44450>:
  D.44367 = session->channel;
  val = switch_channel_get_variable_dup (D.44367, "disable_rtp_auto_adjust", 1, -1);
  if (val == 0B) goto <D.44447>; else goto <D.44452>;
  <D.44452>:
  D.44453 = switch_true (val);
  if (D.44453 == 0) goto <D.44447>; else goto <D.44448>;
  <D.44447>:
  D.44367 = session->channel;
  D.44454 = switch_channel_test_flag (D.44367, 106);
  if (D.44454 == 0) goto <D.44455>; else goto <D.44456>;
  <D.44455>:
  D.44387 = a_engine->rtp_session;
  if (D.44387 != 0B) goto <D.44457>; else goto <D.44458>;
  <D.44457>:
  D.44387 = a_engine->rtp_session;
  switch_rtp_set_flag (D.44387, 7);
  <D.44458>:
  D.44390 = v_engine->rtp_session;
  if (D.44390 != 0B) goto <D.44459>; else goto <D.44460>;
  <D.44459>:
  D.44390 = v_engine->rtp_session;
  switch_rtp_set_flag (D.44390, 7);
  <D.44460>:
  <D.44456>:
  <D.44448>:
  <D.44451>:
  D.44367 = session->channel;
  switch_channel_clear_flag (D.44367, 96);
  D.44367 = session->channel;
  switch_channel_mark_hold (D.44367, 0);
  D.44367 = session->channel;
  switch_channel_perform_presence (D.44367, "unknown", "unhold", 0B, "src/switch_core_media.c", &__func__, 4004);
  D.44387 = a_engine->rtp_session;
  switch_rtp_clear_flag (D.44387, 35);
  D.44390 = v_engine->rtp_session;
  if (D.44390 != 0B) goto <D.44461>; else goto <D.44462>;
  <D.44461>:
  D.44390 = v_engine->rtp_session;
  switch_rtp_clear_flag (D.44390, 35);
  <D.44462>:
  changed = 1;
  <D.44424>:
  <D.44365>:
  end:
  b_session.86 = b_session;
  if (b_session.86 != 0B) goto <D.44463>; else goto <D.44464>;
  <D.44463>:
  b_session.86 = b_session;
  switch_core_session_rwunlock (b_session.86);
  <D.44464>:
  D.44359 = changed;
  goto <D.44465>;
  <D.44465>:
  return D.44359;
}



;; Function switch_core_media_negotiate_sdp (switch_core_media_negotiate_sdp)

switch_core_media_negotiate_sdp (struct switch_core_session_t * session, const char * r_sdp, uint8_t * proceed, switch_sdp_type_t sdp_type)
{
  struct payload_map_t * pmap;
  int j;
  char tmp[50];
  const struct switch_codec_implementation_t * imp;
  int crypto_tag;
  register int __result;
  const unsigned char * __s1;
  size_t __s2_len;
  size_t __s1_len;
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
  size_t __s2_len;
  size_t __s1_len;
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
  const unsigned char * __s1;
  size_t __s2_len;
  size_t __s1_len;
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
  struct switch_rtp_engine_t * v_engine;
  struct switch_rtp_engine_t * a_engine;
  int total_codecs;
  const struct switch_codec_implementation_t * * codec_array;
  int reneg;
  struct sdp_session_t * sdp;
  struct sdp_parser_t * parser;
  int scrooge;
  int got_webrtc;
  int got_udptl;
  int got_savp;
  int got_video_savp;
  int got_video_avp;
  int got_avp;
  int got_audio;
  int got_video_crypto;
  int got_crypto;
  const char * crypto;
  const char * val;
  struct switch_channel_t * channel;
  int skip;
  int x;
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
  switch_payload_t te;
  switch_payload_t best_te;
  uint8_t match;
  switch_status_t D.45317;
  switch_bool_t D.45314;
  struct switch_codec_t * D.45313;
  _Bool D.45310;
  _Bool D.45309;
  _Bool D.45308;
  int D.45307;
  switch_payload_t D.45306;
  int D.45305;
  switch_payload_t D.45304;
  char * D.45303;
  char * D.45302;
  int D.45301;
  switch_port_t D.45300;
  char * D.45299;
  const char * D.45298;
  char * D.45297;
  uint32_t D.45296;
  int D.45295;
  const int D.45294;
  unsigned char D.45293;
  char * D.45292;
  switch_payload_t D.45291;
  struct switch_rtp_t * D.45288;
  struct payload_map_t * D.45287;
  uint32_t D.45284;
  int D.45283;
  const int D.45282;
  const uint32_t D.45281;
  const struct switch_codec_implementation_t * D.45280;
  uint32_t D.45279;
  <unnamed-unsigned:7> D.45278;
  const char * D.45277;
  const char * D.45276;
  struct sdp_rtpmap_t * D.45275;
  _Bool D.45268;
  _Bool D.45267;
  const uint32_t D.45264;
  long unsigned int D.45263;
  int D.45260;
  int D.45257;
  const char * D.45256;
  int D.45252;
  const switch_payload_t D.45251;
  char * const D.45250;
  int D.45249;
  <unnamed-unsigned:7> D.45248;
  uint32_t D.45245;
  switch_call_direction_t D.45242;
  const switch_codec_type_t D.45239;
  const struct switch_codec_implementation_t * * D.45238;
  unsigned int D.45237;
  unsigned int i.99;
  int D.45229;
  const char * D.45228;
  int D.45223;
  int D.45220;
  char * D.45215;
  short unsigned int D.45214;
  int D.45213;
  int D.45210;
  const unsigned char D.45209;
  char * D.45208;
  int D.45207;
  const unsigned char D.45206;
  const unsigned char * D.45205;
  _Bool D.45202;
  _Bool D.45201;
  int D.45200;
  const unsigned char D.45199;
  char * D.45198;
  int D.45197;
  const unsigned char D.45196;
  const unsigned char * D.45195;
  _Bool D.45192;
  _Bool D.45191;
  int D.45190;
  const unsigned char D.45189;
  char * D.45188;
  int D.45187;
  const unsigned char D.45186;
  const unsigned char * D.45185;
  _Bool D.45182;
  _Bool D.45181;
  _Bool D.45180;
  int D.45179;
  const unsigned char D.45178;
  char[2] * D.45177;
  int D.45176;
  const unsigned char D.45175;
  int D.39088;
  int iftmp.98;
  int D.39089;
  int D.45169;
  uint8_t D.45165;
  uint8_t D.45164;
  const char * D.45161;
  int D.45158;
  int D.45155;
  int D.45152;
  int D.45147;
  int D.45144;
  int D.45141;
  int D.45138;
  int D.45126;
  const char * D.45125;
  int D.45121;
  switch_call_direction_t D.45115;
  int D.45112;
  switch_payload_t D.45111;
  uint32_t D.45110;
  int32_t D.45108;
  switch_status_t D.45100;
  uint32_t D.45099;
  switch_bool_t D.45096;
  struct switch_codec_t * D.45095;
  int D.45094;
  switch_payload_t D.45093;
  int D.45090;
  char * D.45089;
  short unsigned int D.45088;
  char * D.45087;
  const char * D.45086;
  const char * D.45083;
  int D.45081;
  const char * D.45080;
  int D.45074;
  int D.45071;
  const char * D.45067;
  int iftmp.97;
  uint32_t D.45065;
  const int D.45064;
  uint32_t D.45063;
  int D.45062;
  const int D.45061;
  const uint32_t D.45060;
  int D.45057;
  const uint32_t D.45056;
  unsigned char D.45055;
  <unnamed-unsigned:7> D.45054;
  char * D.45053;
  char * const D.45052;
  char * D.45051;
  const char * D.45050;
  switch_payload_t D.45049;
  uint32_t D.45044;
  int D.45043;
  const int D.45042;
  const uint32_t D.45041;
  const struct switch_codec_implementation_t * D.45040;
  uint32_t D.45039;
  <unnamed-unsigned:7> D.45038;
  const char * D.45037;
  const char * D.45036;
  struct sdp_rtpmap_t * D.45035;
  int near_rate.96;
  int D.45029;
  const uint32_t D.45028;
  char * const D.45027;
  int D.45026;
  const int D.45025;
  const unsigned int iftmp.95;
  char * const D.45014;
  int D.45013;
  _Bool D.45010;
  _Bool D.45009;
  _Bool D.45008;
  _Bool D.45005;
  _Bool D.45004;
  _Bool D.45003;
  switch_rtp_crypto_mode_t D.45002;
  _Bool D.45000;
  _Bool D.44999;
  _Bool D.44998;
  int D.44997;
  int codec_rate.94;
  int D.44994;
  _Bool D.44992;
  _Bool D.44991;
  _Bool D.44990;
  const uint32_t D.44985;
  int D.44980;
  int D.44978;
  _Bool D.44975;
  _Bool D.44974;
  _Bool D.44973;
  _Bool D.44970;
  _Bool D.44969;
  int D.44964;
  int D.44961;
  _Bool D.44958;
  _Bool D.44957;
  _Bool D.44956;
  _Bool D.44953;
  _Bool D.44952;
  _Bool D.44951;
  const uint32_t D.44948;
  int D.44945;
  int iftmp.93;
  _Bool D.44939;
  int D.44938;
  int D.44937;
  int D.44935;
  int D.44931;
  const int D.44930;
  int D.44929;
  const switch_payload_t D.44928;
  char * const D.44927;
  int remote_codec_rate.92;
  int D.44925;
  const switch_codec_type_t D.44922;
  const int D.44921;
  const struct switch_codec_implementation_t * * D.44920;
  unsigned int D.44919;
  unsigned int i.91;
  uint32_t D.44915;
  int D.44912;
  int D.44909;
  switch_status_t D.44906;
  int D.44901;
  int D.44897;
  int D.44894;
  const char * D.44893;
  int D.44890;
  const char * D.44889;
  unsigned char D.44886;
  uint32_t D.44885;
  uint32_t D.44884;
  _Bool D.44879;
  _Bool D.44878;
  _Bool D.44877;
  _Bool D.44870;
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
  int D.44826;
  const char * D.44825;
  unsigned int D.44822;
  switch_core_media_NDLB_t D.44821;
  int D.44818;
  int D.44815;
  int D.44810;
  int D.44805;
  char * D.44800;
  short unsigned int D.44799;
  int D.44798;
  int D.44795;
  int D.44790;
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
  int D.44639;
  int D.44636;
  int D.44635;
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
  int D.44591;
  const char * D.44590;
  int D.44588;
  const unsigned char D.44587;
  char * D.44586;
  int D.44585;
  const unsigned char D.44584;
  const unsigned char * D.44583;
  _Bool D.44580;
  _Bool D.44579;
  int D.44578;
  const unsigned char D.44577;
  char * D.44576;
  int D.44575;
  const unsigned char D.44574;
  const unsigned char * D.44573;
  _Bool D.44570;
  _Bool D.44569;
  int D.44568;
  const unsigned char D.44567;
  char * D.44566;
  int D.44565;
  const unsigned char D.44564;
  const unsigned char * D.44563;
  _Bool D.44560;
  _Bool D.44559;
  _Bool D.44558;
  int D.44557;
  const unsigned char D.44556;
  char[8] * D.44555;
  int D.44554;
  const unsigned char D.44553;
  int D.39007;
  int iftmp.88;
  int D.39008;
  const char * D.44548;
  struct sdp_connection_t * D.44546;
  _Bool D.44544;
  _Bool D.44543;
  _Bool D.44542;
  unsigned char D.44541;
  unsigned char D.44540;
  int D.44533;
  struct switch_channel_t * D.44530;
  unsigned int D.44529;
  char * D.44526;
  unsigned int D.44523;
  unsigned int D.44522;
  switch_rtp_bug_flag_t D.44521;
  char * D.44518;
  _Bool D.44515;
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
  int D.44485;
  struct switch_channel_t * D.44482;
  struct switch_core_session_t * D.44481;
  int D.44478;
  int D.44473;
  size_t D.44472;
  struct switch_core_media_params_t * D.44471;
  uint8_t D.44470;

  match = 0;
  best_te = 0;
  te = 0;
  cng_pt = 0;
  ptime = 0;
  dptime = 0;
  maxptime = 0;
  dmaxptime = 0;
  sendonly = 0;
  recvonly = 0;
  greedy = 0;
  x = 0;
  skip = 0;
  channel = switch_core_session_get_channel (session);
  crypto = 0B;
  got_crypto = 0;
  got_video_crypto = 0;
  got_audio = 0;
  got_avp = 0;
  got_video_avp = 0;
  got_video_savp = 0;
  got_savp = 0;
  got_udptl = 0;
  got_webrtc = 0;
  scrooge = 0;
  parser = 0B;
  reneg = 1;
  near_rate = 0;
  mimp = 0B;
  near_match = 0B;
  mmap = 0B;
  near_map = 0B;
  matches = {};
  near_matches = {};
  codec_ms = 0;
  remote_codec_rate = 0;
  fmtp_remote_codec_rate = 0;
  m_idx = 0;
  nm_idx = 0;
  if (session == 0B) goto <D.44466>; else goto <D.44467>;
  <D.44466>:
  __assert_fail ("session", "src/switch_core_media.c", 2922, &__PRETTY_FUNCTION__);
  <D.44467>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.44468>; else goto <D.44469>;
  <D.44468>:
  D.44470 = 0;
  goto <D.45322>;
  <D.44469>:
  a_engine = &smh->engines;
  v_engine = &smh->engines[1];
  codec_array = &smh->codecs;
  D.44471 = smh->mparams;
  total_codecs = D.44471->num_codecs;
  D.44472 = strlen (r_sdp);
  D.44473 = (int) D.44472;
  parser = sdp_parse (0B, r_sdp, D.44473, 0);
  if (parser == 0B) goto <D.44474>; else goto <D.44475>;
  <D.44474>:
  D.44470 = 0;
  goto <D.45322>;
  <D.44475>:
  sdp = sdp_session (parser);
  if (sdp == 0B) goto <D.44476>; else goto <D.44477>;
  <D.44476>:
  sdp_parser_free (parser);
  D.44470 = 0;
  goto <D.45322>;
  <D.44477>:
  D.44478 = dtls_ok (session);
  if (D.44478 != 0) goto <D.44479>; else goto <D.44480>;
  <D.44479>:
  D.44481 = smh->session;
  D.44482 = D.44481->channel;
  tmp = switch_channel_get_variable_dup (D.44482, "webrtc_enable_dtls", 1, -1);
  if (tmp != 0B) goto <D.44483>; else goto <D.44484>;
  <D.44483>:
  D.44485 = switch_false (tmp);
  if (D.44485 != 0) goto <D.44486>; else goto <D.44487>;
  <D.44486>:
  D.44481 = smh->session;
  D.44482 = D.44481->channel;
  switch_channel_clear_flag (D.44482, 111);
  D.44481 = smh->session;
  D.44482 = D.44481->channel;
  switch_channel_clear_flag (D.44482, 109);
  <D.44487>:
  <D.44484>:
  <D.44480>:
  switch_core_session_parse_crypto_prefs (session);
  clear_pmaps (a_engine);
  clear_pmaps (v_engine);
  if (proceed != 0B) goto <D.44488>; else goto <D.44489>;
  <D.44488>:
  *proceed = 1;
  <D.44489>:
  D.44490 = switch_media_handle_test_media_flag (smh, 3);
  greedy = D.44490 != 0;
  D.44491 = switch_media_handle_test_media_flag (smh, 4);
  scrooge = D.44491 != 0;
  val = switch_channel_get_variable_dup (channel, "rtp_codec_negotiation", 1, -1);
  if (val != 0B) goto <D.44492>; else goto <D.44493>;
  <D.44492>:
  D.44494 = strcasecmp (val, "generous");
  if (D.44494 == 0) goto <D.44495>; else goto <D.44496>;
  <D.44495>:
  greedy = 0;
  scrooge = 0;
  goto <D.44497>;
  <D.44496>:
  D.44498 = strcasecmp (val, "greedy");
  if (D.44498 == 0) goto <D.44499>; else goto <D.44500>;
  <D.44499>:
  greedy = 1;
  scrooge = 0;
  goto <D.44501>;
  <D.44500>:
  D.44502 = strcasecmp (val, "scrooge");
  if (D.44502 == 0) goto <D.44503>; else goto <D.44504>;
  <D.44503>:
  scrooge = 1;
  greedy = 1;
  goto <D.44505>;
  <D.44504>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2969, session, 7, "rtp_codec_negotiation ignored invalid value : \'%s\' \n", val);
  <D.44505>:
  <D.44501>:
  <D.44497>:
  <D.44493>:
  D.44506 = sdp->sdp_origin;
  D.44507 = D.44506->o_username;
  D.44508 = switch_core_perform_session_strdup (session, D.44507, "src/switch_core_media.c", &__func__, 2973);
  smh->origin = D.44508;
  D.44509 = smh->origin;
  if (D.44509 != 0B) goto <D.44510>; else goto <D.44511>;
  <D.44510>:
  D.44471 = smh->mparams;
  D.44512 = D.44471->auto_rtp_bugs;
  D.44513 = (int) D.44512;
  D.44514 = D.44513 & 1;
  D.44515 = (_Bool) D.44514;
  if (D.44515 != 0) goto <D.44516>; else goto <D.44517>;
  <D.44516>:
  D.44509 = smh->origin;
  D.44518 = strstr (D.44509, "CiscoSystemsSIP-GW-UserAgent");
  if (D.44518 != 0B) goto <D.44519>; else goto <D.44520>;
  <D.44519>:
  D.44521 = a_engine->rtp_bugs;
  D.44522 = D.44521 | 1;
  a_engine->rtp_bugs = D.44522;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2979, session, 7, "Activate Buggy RFC2833 Mode!\n");
  <D.44520>:
  <D.44517>:
  D.44471 = smh->mparams;
  D.44512 = D.44471->auto_rtp_bugs;
  D.44523 = D.44512 & 2;
  if (D.44523 != 0) goto <D.44524>; else goto <D.44525>;
  <D.44524>:
  D.44509 = smh->origin;
  D.44526 = strstr (D.44509, "Sonus_UAC");
  if (D.44526 != 0B) goto <D.44527>; else goto <D.44528>;
  <D.44527>:
  D.44521 = a_engine->rtp_bugs;
  D.44529 = D.44521 | 2;
  a_engine->rtp_bugs = D.44529;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2986, session, 4, "Hello,\nI see you have a Sonus!\nFYI, Sonus cannot follow the RFC on the proper way to send DTMF.\nSadly, my creator had to spend several hours figuring this out so I thought you\'d like to know that!\nDon\'t worry, DTMF will work but you may want to ask them to fix it......\n");
  <D.44528>:
  <D.44525>:
  <D.44511>:
  D.44530 = session->channel;
  val = switch_channel_get_variable_dup (D.44530, "rtp_liberal_dtmf", 1, -1);
  if (val != 0B) goto <D.44531>; else goto <D.44532>;
  <D.44531>:
  D.44533 = switch_true (val);
  if (D.44533 != 0) goto <D.44534>; else goto <D.44535>;
  <D.44534>:
  D.44530 = session->channel;
  switch_channel_set_flag_value (D.44530, 93, 1);
  <D.44535>:
  <D.44532>:
  m = sdp->sdp_media;
  if (m != 0B) goto <D.44538>; else goto <D.44539>;
  <D.44538>:
  D.44540 = BIT_FIELD_REF <*m, 8, 544>;
  D.44541 = D.44540 & 6;
  D.44542 = D.44541 == 2;
  D.44543 = D.44541 == 0;
  D.44544 = D.44542 || D.44543;
  if (D.44544 != 0) goto <D.44536>; else goto <D.44545>;
  <D.44545>:
  D.44546 = m->m_connections;
  if (D.44546 != 0B) goto <D.44547>; else goto <D.44537>;
  <D.44547>:
  D.44546 = m->m_connections;
  D.44548 = D.44546->c_address;
  if (D.44548 != 0B) goto <D.44549>; else goto <D.44537>;
  <D.44549>:
  __s2_len = 7;
  if (__s2_len <= 3) goto <D.44551>; else goto <D.44552>;
  <D.44551>:
  D.44546 = m->m_connections;
  __s1 = D.44546->c_address;
  D.44553 = *__s1;
  D.44554 = (int) D.44553;
  D.44555 = "0.0.0.0";
  D.44556 = MEM[(const unsigned char *)D.44555];
  D.44557 = (int) D.44556;
  __result = D.44554 - D.44557;
  D.44558 = __s2_len != 0;
  D.44559 = __result == 0;
  D.44560 = D.44558 && D.44559;
  if (D.44560 != 0) goto <D.44561>; else goto <D.44562>;
  <D.44561>:
  D.44563 = __s1 + 1;
  D.44564 = *D.44563;
  D.44565 = (int) D.44564;
  D.44566 = &"0.0.0.0"[1];
  D.44567 = MEM[(const unsigned char *)D.44566];
  D.44568 = (int) D.44567;
  __result = D.44565 - D.44568;
  D.44569 = __s2_len > 1;
  D.44559 = __result == 0;
  D.44570 = D.44569 && D.44559;
  if (D.44570 != 0) goto <D.44571>; else goto <D.44572>;
  <D.44571>:
  D.44573 = __s1 + 2;
  D.44574 = *D.44573;
  D.44575 = (int) D.44574;
  D.44576 = &"0.0.0.0"[2];
  D.44577 = MEM[(const unsigned char *)D.44576];
  D.44578 = (int) D.44577;
  __result = D.44575 - D.44578;
  D.44579 = __s2_len > 2;
  D.44559 = __result == 0;
  D.44580 = D.44579 && D.44559;
  if (D.44580 != 0) goto <D.44581>; else goto <D.44582>;
  <D.44581>:
  D.44583 = __s1 + 3;
  D.44584 = *D.44583;
  D.44585 = (int) D.44584;
  D.44586 = &"0.0.0.0"[3];
  D.44587 = MEM[(const unsigned char *)D.44586];
  D.44588 = (int) D.44587;
  __result = D.44585 - D.44588;
  <D.44582>:
  <D.44572>:
  <D.44562>:
  D.39007 = __result;
  iftmp.88 = D.39007;
  goto <D.44589>;
  <D.44552>:
  D.44546 = m->m_connections;
  D.44548 = D.44546->c_address;
  iftmp.88 = __builtin_strcmp (D.44548, "0.0.0.0");
  <D.44589>:
  D.39008 = iftmp.88;
  if (D.39008 == 0) goto <D.44536>; else goto <D.44537>;
  <D.44536>:
  sendonly = 2;
  <D.44537>:
  <D.44539>:
  attr = sdp->sdp_attributes;
  goto <D.39011>;
  <D.39010>:
  D.44590 = attr->a_name;
  D.44591 = _zstr (D.44590);
  if (D.44591 != 0) goto <D.44592>; else goto <D.44593>;
  <D.44592>:
  // predicted unlikely by continue predictor.
  goto <D.39009>;
  <D.44593>:
  D.44590 = attr->a_name;
  D.44594 = strcasecmp (D.44590, "sendonly");
  if (D.44594 == 0) goto <D.44595>; else goto <D.44596>;
  <D.44595>:
  sendonly = 1;
  D.44530 = session->channel;
  switch_channel_set_variable_var_check (D.44530, "media_audio_mode", "recvonly", 1);
  goto <D.44597>;
  <D.44596>:
  D.44590 = attr->a_name;
  D.44598 = strcasecmp (D.44590, "inactive");
  if (D.44598 == 0) goto <D.44599>; else goto <D.44600>;
  <D.44599>:
  sendonly = 1;
  D.44530 = session->channel;
  switch_channel_set_variable_var_check (D.44530, "media_audio_mode", "inactive", 1);
  goto <D.44601>;
  <D.44600>:
  D.44590 = attr->a_name;
  D.44602 = strcasecmp (D.44590, "recvonly");
  if (D.44602 == 0) goto <D.44603>; else goto <D.44604>;
  <D.44603>:
  D.44530 = session->channel;
  switch_channel_set_variable_var_check (D.44530, "media_audio_mode", "sendonly", 1);
  recvonly = 1;
  D.44605 = a_engine->rtp_session;
  D.44606 = switch_rtp_ready (D.44605);
  if (D.44606 != 0) goto <D.44607>; else goto <D.44608>;
  <D.44607>:
  D.44605 = a_engine->rtp_session;
  switch_rtp_set_max_missed_packets (D.44605, 0);
  a_engine->max_missed_hold_packets = 0;
  a_engine->max_missed_packets = 0;
  goto <D.44609>;
  <D.44608>:
  D.44530 = session->channel;
  switch_channel_set_variable_var_check (D.44530, "rtp_timeout_sec", "0", 1);
  D.44530 = session->channel;
  switch_channel_set_variable_var_check (D.44530, "rtp_hold_timeout_sec", "0", 1);
  <D.44609>:
  goto <D.44610>;
  <D.44604>:
  if (sendonly <= 1) goto <D.44613>; else goto <D.44611>;
  <D.44613>:
  D.44590 = attr->a_name;
  D.44614 = strcasecmp (D.44590, "sendrecv");
  if (D.44614 == 0) goto <D.44615>; else goto <D.44611>;
  <D.44615>:
  sendonly = 0;
  goto <D.44612>;
  <D.44611>:
  D.44590 = attr->a_name;
  D.44616 = strcasecmp (D.44590, "ptime");
  if (D.44616 == 0) goto <D.44617>; else goto <D.44618>;
  <D.44617>:
  D.44619 = attr->a_value;
  dptime = atoi (D.44619);
  goto <D.44620>;
  <D.44618>:
  D.44590 = attr->a_name;
  D.44621 = strcasecmp (D.44590, "maxptime");
  if (D.44621 == 0) goto <D.44622>; else goto <D.44623>;
  <D.44622>:
  D.44619 = attr->a_value;
  dmaxptime = atoi (D.44619);
  <D.44623>:
  <D.44620>:
  <D.44612>:
  <D.44610>:
  <D.44601>:
  <D.44597>:
  <D.39009>:
  attr = attr->a_next;
  <D.39011>:
  if (attr != 0B) goto <D.39010>; else goto <D.39012>;
  <D.39012>:
  D.44624 = sendonly != 1;
  D.44625 = recvonly != 1;
  D.44626 = D.44624 && D.44625;
  if (D.44626 != 0) goto <D.44627>; else goto <D.44628>;
  <D.44627>:
  D.44530 = session->channel;
  switch_channel_set_variable_var_check (D.44530, "media_audio_mode", 0B, 1);
  <D.44628>:
  D.44631 = switch_media_handle_test_media_flag (smh, 5);
  if (D.44631 == 0) goto <D.44632>; else goto <D.44633>;
  <D.44632>:
  D.44530 = session->channel;
  val = switch_channel_get_variable_dup (D.44530, "rtp_disable_hold", 1, -1);
  if (val == 0B) goto <D.44629>; else goto <D.44634>;
  <D.44634>:
  D.44635 = switch_true (val);
  if (D.44635 == 0) goto <D.44629>; else goto <D.44630>;
  <D.44629>:
  D.44471 = smh->mparams;
  D.44636 = D.44471->hold_laps;
  if (D.44636 == 0) goto <D.44637>; else goto <D.44638>;
  <D.44637>:
  D.44471 = smh->mparams;
  D.44636 = D.44471->hold_laps;
  D.44639 = D.44636 + 1;
  D.44471->hold_laps = D.44639;
  D.44640 = switch_core_media_toggle_hold (session, sendonly);
  if (D.44640 != 0) goto <D.44641>; else goto <D.44642>;
  <D.44641>:
  reneg = switch_media_handle_test_media_flag (smh, 6);
  D.44530 = session->channel;
  val = switch_channel_get_variable_dup (D.44530, "rtp_renegotiate_codec_on_hold", 1, -1);
  if (val != 0B) goto <D.44643>; else goto <D.44644>;
  <D.44643>:
  reneg = switch_true (val);
  <D.44644>:
  <D.44642>:
  <D.44638>:
  <D.44630>:
  <D.44633>:
  if (reneg != 0) goto <D.44645>; else goto <D.44646>;
  <D.44645>:
  reneg = switch_media_handle_test_media_flag (smh, 7);
  D.44530 = session->channel;
  val = switch_channel_get_variable_dup (D.44530, "rtp_renegotiate_codec_on_reinvite", 1, -1);
  if (val != 0B) goto <D.44647>; else goto <D.44648>;
  <D.44647>:
  reneg = switch_true (val);
  <D.44648>:
  <D.44646>:
  D.44649 = session->bugs;
  if (D.44649 != 0B) goto <D.44650>; else goto <D.44651>;
  <D.44650>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3063, session, 7, "Session is connected to a media bug. Re-Negotiation implicitly disabled.\n");
  reneg = 0;
  <D.44651>:
  if (reneg == 0) goto <D.44654>; else goto <D.44652>;
  <D.44654>:
  D.44655 = smh->num_negotiated_codecs;
  if (D.44655 != 0) goto <D.44656>; else goto <D.44652>;
  <D.44656>:
  codec_array = &smh->negotiated_codecs;
  total_codecs = smh->num_negotiated_codecs;
  goto <D.44653>;
  <D.44652>:
  if (reneg != 0) goto <D.44657>; else goto <D.44658>;
  <D.44657>:
  D.44471 = smh->mparams;
  D.44471->num_codecs = 0;
  switch_core_media_prepare_codecs (session, 0);
  codec_array = &smh->codecs;
  D.44471 = smh->mparams;
  total_codecs = D.44471->num_codecs;
  <D.44658>:
  <D.44653>:
  D.44661 = switch_stristr ("T38FaxFillBitRemoval:", r_sdp);
  if (D.44661 != 0B) goto <D.44659>; else goto <D.44662>;
  <D.44662>:
  D.44663 = switch_stristr ("T38FaxTranscodingMMR:", r_sdp);
  if (D.44663 != 0B) goto <D.44659>; else goto <D.44664>;
  <D.44664>:
  D.44665 = switch_stristr ("T38FaxTranscodingJBIG:", r_sdp);
  if (D.44665 != 0B) goto <D.44659>; else goto <D.44660>;
  <D.44659>:
  D.44530 = session->channel;
  switch_channel_set_variable_var_check (D.44530, "t38_broken_boolean", "true", 1);
  <D.44660>:
  switch_core_media_find_zrtp_hash (session, sdp);
  switch_core_media_pass_zrtp_hash (session);
  check_ice (smh, 0, sdp, 0B);
  check_ice (smh, 1, sdp, 0B);
  m = sdp->sdp_media;
  goto <D.39109>;
  <D.39108>:
  ptime = dptime;
  maxptime = dmaxptime;
  D.44666 = m->m_proto;
  if (D.44666 == 261) goto <D.44667>; else goto <D.44668>;
  <D.44667>:
  got_webrtc = got_webrtc + 1;
  switch_core_session_set_ice (session);
  <D.44668>:
  D.44669 = m->m_proto_name;
  if (D.44669 != 0B) goto <D.44670>; else goto <D.44671>;
  <D.44670>:
  D.44669 = m->m_proto_name;
  D.44672 = strcasecmp (D.44669, "UDP/TLS/RTP/SAVPF");
  if (D.44672 == 0) goto <D.44673>; else goto <D.44674>;
  <D.44673>:
  D.44530 = session->channel;
  switch_channel_set_flag_value (D.44530, 107, 1);
  <D.44674>:
  <D.44671>:
  D.44675 = m->m_proto;
  D.44676 = D.44675 == 257;
  D.44677 = D.44675 == 261;
  D.44678 = D.44676 || D.44677;
  if (D.44678 != 0) goto <D.44679>; else goto <D.44680>;
  <D.44679>:
  D.44681 = m->m_type;
  if (D.44681 == 2) goto <D.44682>; else goto <D.44683>;
  <D.44682>:
  got_savp = got_savp + 1;
  goto <D.44684>;
  <D.44683>:
  got_video_savp = got_video_savp + 1;
  <D.44684>:
  goto <D.44685>;
  <D.44680>:
  D.44666 = m->m_proto;
  if (D.44666 == 256) goto <D.44686>; else goto <D.44687>;
  <D.44686>:
  D.44681 = m->m_type;
  if (D.44681 == 2) goto <D.44688>; else goto <D.44689>;
  <D.44688>:
  got_avp = got_avp + 1;
  goto <D.44690>;
  <D.44689>:
  got_video_avp = got_video_avp + 1;
  <D.44690>:
  goto <D.44691>;
  <D.44687>:
  D.44666 = m->m_proto;
  if (D.44666 == 258) goto <D.44692>; else goto <D.44693>;
  <D.44692>:
  got_udptl = got_udptl + 1;
  <D.44693>:
  <D.44691>:
  <D.44685>:
  if (got_udptl != 0) goto <D.44695>; else goto <D.44694>;
  <D.44695>:
  D.44681 = m->m_type;
  if (D.44681 == 8) goto <D.44696>; else goto <D.44694>;
  <D.44696>:
  D.44697 = m->m_port;
  if (D.44697 != 0) goto <D.44698>; else goto <D.44694>;
  <D.44698>:
  t38_options = switch_core_media_process_udptl (session, sdp, m);
  D.44530 = session->channel;
  D.44699 = switch_channel_test_app_flag_key ("T38", D.44530, 16);
  if (D.44699 != 0) goto <D.44700>; else goto <D.44701>;
  <D.44700>:
  match = 1;
  goto done;
  <D.44701>:
  D.44702 = switch_channel_get_variable_dup (channel, "refuse_t38", 1, -1);
  D.44703 = switch_true (D.44702);
  if (D.44703 != 0) goto <D.44704>; else goto <D.44705>;
  <D.44704>:
  D.44530 = session->channel;
  switch_channel_clear_app_flag_key ("T38", D.44530, 2);
  match = 0;
  goto done;
  <D.44705>:
  var = switch_channel_get_variable_dup (channel, "t38_passthru", 1, -1);
  D.44481 = smh->session;
  D.44482 = D.44481->channel;
  D.44706 = switch_channel_test_flag (D.44482, 101);
  pass = (int) D.44706;
  D.44530 = session->channel;
  D.44707 = switch_channel_test_app_flag_key ("T38", D.44530, 2);
  if (D.44707 != 0) goto <D.44708>; else goto <D.44709>;
  <D.44708>:
  if (proceed != 0B) goto <D.44710>; else goto <D.44711>;
  <D.44710>:
  *proceed = 0;
  <D.44711>:
  <D.44709>:
  if (var != 0B) goto <D.44712>; else goto <D.44713>;
  <D.44712>:
  pass = switch_true (var);
  if (pass == 0) goto <D.44714>; else goto <D.44715>;
  <D.44714>:
  D.44716 = strcasecmp (var, "once");
  if (D.44716 == 0) goto <D.44717>; else goto <D.44718>;
  <D.44717>:
  pass = 2;
  <D.44718>:
  <D.44715>:
  <D.44713>:
  if (pass == 2) goto <D.44722>; else goto <D.44719>;
  <D.44722>:
  D.44481 = smh->session;
  D.44482 = D.44481->channel;
  D.44723 = switch_channel_test_flag (D.44482, 101);
  if (D.44723 != 0) goto <D.44720>; else goto <D.44719>;
  <D.44719>:
  D.44530 = session->channel;
  D.44724 = switch_channel_test_flag (D.44530, 103);
  if (D.44724 == 0) goto <D.44720>; else goto <D.44725>;
  <D.44725>:
  D.44530 = session->channel;
  D.44726 = switch_channel_test_flag (D.44530, 15);
  if (D.44726 != 0) goto <D.44720>; else goto <D.44727>;
  <D.44727>:
  D.44530 = session->channel;
  D.44728 = switch_channel_test_flag (D.44530, 29);
  if (D.44728 != 0) goto <D.44720>; else goto <D.44729>;
  <D.44729>:
  D.44605 = a_engine->rtp_session;
  D.44730 = switch_rtp_ready (D.44605);
  if (D.44730 == 0) goto <D.44720>; else goto <D.44721>;
  <D.44720>:
  pass = 0;
  <D.44721>:
  if (pass != 0) goto <D.44731>; else goto <D.44732>;
  <D.44731>:
  D.44733 = switch_core_session_perform_get_partner (session, &other_session, "src/switch_core_media.c", &__func__, 3161);
  if (D.44733 == 0) goto <D.44734>; else goto <D.44735>;
  <D.44734>:
  other_session.89 = other_session;
  other_channel = switch_core_session_get_channel (other_session.89);
  D.44605 = a_engine->rtp_session;
  remote_host = switch_rtp_get_remote_host (D.44605);
  D.44605 = a_engine->rtp_session;
  remote_port = switch_rtp_get_remote_port (D.44605);
  tmp = "";
  D.44737 = switch_channel_test_flag (other_channel, 1);
  if (D.44737 == 0) goto <D.44738>; else goto <D.44739>;
  <D.44738>:
  D.44530 = session->channel;
  D.44740 = switch_channel_get_name (D.44530);
  D.44741 = switch_channel_get_name (other_channel);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3170, session, 4, "%s Error Passing T.38 to unanswered channel %s\n", D.44740, D.44741);
  other_session.89 = other_session;
  switch_core_session_rwunlock (other_session.89);
  pass = 0;
  match = 0;
  goto done;
  <D.44739>:
  D.44530 = session->channel;
  D.44742 = switch_channel_get_variable_dup (D.44530, "t38_broken_boolean", 1, -1);
  D.44743 = switch_true (D.44742);
  if (D.44743 != 0) goto <D.44744>; else goto <D.44745>;
  <D.44744>:
  D.44530 = session->channel;
  D.44746 = switch_channel_get_variable_dup (D.44530, "t38_pass_broken_boolean", 1, -1);
  D.44747 = switch_true (D.44746);
  if (D.44747 != 0) goto <D.44748>; else goto <D.44749>;
  <D.44748>:
  switch_channel_set_variable_var_check (other_channel, "t38_broken_boolean", "true", 1);
  <D.44749>:
  <D.44745>:
  D.44750 = a_engine->cur_payload_map;
  D.44751 = t38_options->remote_ip;
  D.44752 = switch_core_perform_session_strdup (session, D.44751, "src/switch_core_media.c", &__func__, 3186);
  D.44750->remote_sdp_ip = D.44752;
  D.44750 = a_engine->cur_payload_map;
  D.44753 = t38_options->remote_port;
  D.44750->remote_sdp_port = D.44753;
  D.44756 = remote_host != 0B;
  D.44757 = remote_port != 0;
  D.44758 = D.44756 && D.44757;
  if (D.44758 != 0) goto <D.44759>; else goto <D.44754>;
  <D.44759>:
  D.44750 = a_engine->cur_payload_map;
  D.44760 = D.44750->remote_sdp_ip;
  D.39032 = __builtin_strcmp (remote_host, D.44760);
  if (D.39032 == 0) goto <D.44761>; else goto <D.44754>;
  <D.44761>:
  D.44750 = a_engine->cur_payload_map;
  D.44762 = D.44750->remote_sdp_port;
  if (D.44762 == remote_port) goto <D.44763>; else goto <D.44754>;
  <D.44763>:
  D.44530 = session->channel;
  D.44764 = switch_channel_get_name (D.44530);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3190, session, 7, "Audio params are unchanged for %s.\n", D.44764);
  goto <D.44755>;
  <D.44754>:
  err = 0B;
  D.44530 = session->channel;
  D.44765 = switch_channel_get_name (D.44530);
  D.44766 = (int) remote_port;
  D.44750 = a_engine->cur_payload_map;
  D.44760 = D.44750->remote_sdp_ip;
  D.44750 = a_engine->cur_payload_map;
  D.44762 = D.44750->remote_sdp_port;
  D.44767 = (int) D.44762;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3195, session, 7, "Audio params changed for %s from %s:%d to %s:%d\n", D.44765, remote_host, D.44766, D.44760, D.44767);
  D.44750 = a_engine->cur_payload_map;
  D.44762 = D.44750->remote_sdp_port;
  D.44767 = (int) D.44762;
  switch_snprintf (&tmp, 32, "%d", D.44767);
  D.44530 = session->channel;
  D.44750 = a_engine->cur_payload_map;
  D.44760 = D.44750->remote_sdp_ip;
  switch_channel_set_variable_var_check (D.44530, "remote_media_ip", D.44760, 1);
  D.44530 = session->channel;
  switch_channel_set_variable_var_check (D.44530, "remote_media_port", &tmp, 1);
  D.44605 = a_engine->rtp_session;
  D.44750 = a_engine->cur_payload_map;
  D.44760 = D.44750->remote_sdp_ip;
  D.44750 = a_engine->cur_payload_map;
  D.44762 = D.44750->remote_sdp_port;
  D.44768 = switch_rtp_set_remote_address (D.44605, D.44760, D.44762, 0, 1, &err);
  if (D.44768 != 0) goto <D.44769>; else goto <D.44770>;
  <D.44769>:
  err.90 = err;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3205, session, 3, "AUDIO RTP REPORTS ERROR: [%s]\n", err.90);
  switch_channel_perform_hangup (channel, "src/switch_core_media.c", &__func__, 3206, 88);
  <D.44770>:
  <D.44755>:
  other_session.89 = other_session;
  switch_core_media_copy_t38_options (t38_options, other_session.89);
  D.44481 = smh->session;
  D.44482 = D.44481->channel;
  switch_channel_set_flag_value (D.44482, 101, 1);
  other_session.89 = other_session;
  D.44772 = other_session.89->channel;
  switch_channel_set_flag_value (D.44772, 101, 1);
  other_session.89 = other_session;
  msg = switch_core_perform_session_alloc (other_session.89, 108, "src/switch_core_media.c", &__func__, 3218);
  msg->message_id = 21;
  msg->from = "src/switch_core_media.c";
  other_session.89 = other_session;
  D.44773 = switch_core_perform_session_strdup (other_session.89, r_sdp, "src/switch_core_media.c", &__func__, 3221);
  msg->string_arg = D.44773;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3222, session, 7, "Passing T38 req to other leg.\n%s\n", r_sdp);
  other_session.89 = other_session;
  switch_core_session_queue_message (other_session.89, msg);
  other_session.89 = other_session;
  switch_core_session_rwunlock (other_session.89);
  <D.44735>:
  <D.44732>:
  match = 1;
  goto done;
  <D.44694>:
  D.44681 = m->m_type;
  if (D.44681 == 2) goto <D.44776>; else goto <D.44774>;
  <D.44776>:
  D.44697 = m->m_port;
  D.44777 = D.44697 != 0;
  D.44778 = got_audio == 0;
  D.44779 = D.44777 && D.44778;
  if (D.44779 != 0) goto <D.44780>; else goto <D.44774>;
  <D.44780>:
  D.44781 = switch_rtp_has_dtls ();
  if (D.44781 != 0) goto <D.44782>; else goto <D.44783>;
  <D.44782>:
  D.44784 = dtls_ok (session);
  if (D.44784 != 0) goto <D.44785>; else goto <D.44786>;
  <D.44785>:
  attr = m->m_attributes;
  goto <D.39036>;
  <D.39035>:
  D.44590 = attr->a_name;
  D.44787 = strcasecmp (D.44590, "fingerprint");
  if (D.44787 == 0) goto <D.44788>; else goto <D.44789>;
  <D.44788>:
  D.44619 = attr->a_value;
  D.44790 = _zstr (D.44619);
  if (D.44790 == 0) goto <D.44791>; else goto <D.44792>;
  <D.44791>:
  got_crypto = 1;
  <D.44792>:
  <D.44789>:
  attr = attr->a_next;
  <D.39036>:
  if (attr != 0B) goto <D.39035>; else goto <D.39037>;
  <D.39037>:
  <D.44786>:
  <D.44783>:
  attr = m->m_attributes;
  goto <D.39040>;
  <D.39039>:
  D.44590 = attr->a_name;
  D.44795 = strcasecmp (D.44590, "rtcp");
  if (D.44795 == 0) goto <D.44796>; else goto <D.44793>;
  <D.44796>:
  D.44619 = attr->a_value;
  if (D.44619 != 0B) goto <D.44797>; else goto <D.44793>;
  <D.44797>:
  D.44530 = session->channel;
  D.44619 = attr->a_value;
  switch_channel_set_variable_var_check (D.44530, "rtp_remote_audio_rtcp_port", D.44619, 1);
  D.44619 = attr->a_value;
  D.44798 = atoi (D.44619);
  D.44799 = (short unsigned int) D.44798;
  a_engine->remote_rtcp_port = D.44799;
  D.44471 = smh->mparams;
  D.44800 = D.44471->rtcp_audio_interval_msec;
  if (D.44800 == 0B) goto <D.44801>; else goto <D.44802>;
  <D.44801>:
  D.44471 = smh->mparams;
  D.44471->rtcp_audio_interval_msec = "5000";
  <D.44802>:
  goto <D.44794>;
  <D.44793>:
  D.44590 = attr->a_name;
  D.44805 = strcasecmp (D.44590, "ptime");
  if (D.44805 == 0) goto <D.44806>; else goto <D.44803>;
  <D.44806>:
  D.44619 = attr->a_value;
  if (D.44619 != 0B) goto <D.44807>; else goto <D.44803>;
  <D.44807>:
  D.44619 = attr->a_value;
  ptime = atoi (D.44619);
  goto <D.44804>;
  <D.44803>:
  D.44590 = attr->a_name;
  D.44810 = strcasecmp (D.44590, "maxptime");
  if (D.44810 == 0) goto <D.44811>; else goto <D.44808>;
  <D.44811>:
  D.44619 = attr->a_value;
  if (D.44619 != 0B) goto <D.44812>; else goto <D.44808>;
  <D.44812>:
  D.44619 = attr->a_value;
  maxptime = atoi (D.44619);
  goto <D.44809>;
  <D.44808>:
  if (got_crypto <= 0) goto <D.44813>; else goto <D.44814>;
  <D.44813>:
  D.44590 = attr->a_name;
  D.44815 = strcasecmp (D.44590, "crypto");
  if (D.44815 == 0) goto <D.44816>; else goto <D.44817>;
  <D.44816>:
  D.44619 = attr->a_value;
  D.44818 = _zstr (D.44619);
  if (D.44818 == 0) goto <D.44819>; else goto <D.44820>;
  <D.44819>:
  D.44471 = smh->mparams;
  D.44821 = D.44471->ndlb;
  D.44822 = D.44821 & 4;
  if (D.44822 == 0) goto <D.44823>; else goto <D.44824>;
  <D.44823>:
  D.44530 = session->channel;
  D.44825 = switch_channel_get_variable_dup (D.44530, "rtp_allow_crypto_in_avp", 1, -1);
  D.44826 = switch_true (D.44825);
  if (D.44826 == 0) goto <D.44827>; else goto <D.44828>;
  <D.44827>:
  D.44666 = m->m_proto;
  D.44829 = D.44666 != 257;
  D.44830 = got_webrtc == 0;
  D.44831 = D.44829 && D.44830;
  if (D.44831 != 0) goto <D.44832>; else goto <D.44833>;
  <D.44832>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3262, session, 3, "a=crypto in RTP/AVP, refer to rfc3711\n");
  match = 0;
  goto done;
  <D.44833>:
  <D.44828>:
  <D.44824>:
  crypto = attr->a_value;
  crypto_tag = atoi (crypto);
  got_crypto = switch_core_session_check_incoming_crypto (session, "rtp_has_crypto", 0, crypto, crypto_tag, sdp_type);
  <D.44820>:
  <D.44817>:
  <D.44814>:
  <D.44809>:
  <D.44804>:
  <D.44794>:
  attr = attr->a_next;
  <D.39040>:
  if (attr != 0B) goto <D.39039>; else goto <D.39041>;
  <D.39041>:
  D.44834 = got_crypto == -1;
  D.44835 = got_savp != 0;
  D.44836 = D.44834 && D.44835;
  if (D.44836 != 0) goto <D.44837>; else goto <D.44838>;
  <D.44837>:
  D.44839 = got_avp | got_webrtc;
  if (D.44839 == 0) goto <D.44840>; else goto <D.44841>;
  <D.44840>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3277, session, 4, "Declining invite with only SAVP because secure media is administratively disabled\n");
  match = 0;
  goto <D.39042>;
  <D.44841>:
  <D.44838>:
  connection = sdp->sdp_connection;
  D.44546 = m->m_connections;
  if (D.44546 != 0B) goto <D.44842>; else goto <D.44843>;
  <D.44842>:
  connection = m->m_connections;
  <D.44843>:
  if (connection == 0B) goto <D.44844>; else goto <D.44845>;
  <D.44844>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3288, session, 3, "Cannot find a c= line in the sdp at media or session level!\n");
  match = 0;
  goto <D.39042>;
  <D.44845>:
  x = 0;
  map = m->m_rtpmaps;
  goto <D.39057>;
  <D.39056>:
  map_bit_rate = 0;
  codec_fmtp = {};
  rm_encoding = map->rm_encoding;
  if (rm_encoding == 0B) goto <D.44846>; else goto <D.44847>;
  <D.44846>:
  rm_encoding = "";
  <D.44847>:
  D.44848 = strcasecmp (rm_encoding, "telephone-event");
  if (D.44848 == 0) goto <D.44849>; else goto <D.44850>;
  <D.44849>:
  if (best_te == 0) goto <D.44851>; else goto <D.44853>;
  <D.44853>:
  D.44854 = map->rm_rate;
  D.44750 = a_engine->cur_payload_map;
  D.44855 = D.44750->rm_rate;
  if (D.44854 == D.44855) goto <D.44851>; else goto <D.44852>;
  <D.44851>:
  D.44856 = map->rm_pt;
  best_te = (switch_payload_t) D.44856;
  D.44857 = (int) best_te;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3309, session, 7, "Set telephone-event payload to %u\n", D.44857);
  <D.44852>:
  // predicted unlikely by continue predictor.
  goto <D.39047>;
  <D.44850>:
  D.44858 = switch_media_handle_test_media_flag (smh, 9);
  if (D.44858 == 0) goto <D.44859>; else goto <D.44860>;
  <D.44859>:
  if (cng_pt == 0) goto <D.44861>; else goto <D.44862>;
  <D.44861>:
  D.44863 = strcasecmp (rm_encoding, "CN");
  if (D.44863 == 0) goto <D.44864>; else goto <D.44865>;
  <D.44864>:
  D.44856 = map->rm_pt;
  cng_pt = (switch_payload_t) D.44856;
  D.44605 = a_engine->rtp_session;
  if (D.44605 != 0B) goto <D.44866>; else goto <D.44867>;
  <D.44866>:
  D.44868 = (int) cng_pt;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3317, session, 7, "Set comfort noise payload to %u\n", D.44868);
  D.44605 = a_engine->rtp_session;
  D.44471 = smh->mparams;
  D.44869 = D.44471->cng_pt;
  switch_rtp_set_cng_pt (D.44605, D.44869);
  <D.44867>:
  // predicted unlikely by continue predictor.
  goto <D.39047>;
  <D.44865>:
  <D.44862>:
  <D.44860>:
  D.44870 = x < skip;
  x = x + 1;
  if (D.44870 != 0) goto <D.44871>; else goto <D.44872>;
  <D.44871>:
  // predicted unlikely by continue predictor.
  goto <D.39047>;
  <D.44872>:
  if (match != 0) goto <D.44873>; else goto <D.44874>;
  <D.44873>:
  // predicted unlikely by continue predictor.
  goto <D.39047>;
  <D.44874>:
  codec_ms = ptime;
  if (maxptime != 0) goto <D.44875>; else goto <D.44876>;
  <D.44875>:
  D.44877 = codec_ms == 0;
  D.44878 = codec_ms > maxptime;
  D.44879 = D.44877 || D.44878;
  if (D.44879 != 0) goto <D.44880>; else goto <D.44881>;
  <D.44880>:
  codec_ms = maxptime;
  <D.44881>:
  <D.44876>:
  if (codec_ms == 0) goto <D.44882>; else goto <D.44883>;
  <D.44882>:
  D.44856 = map->rm_pt;
  D.44884 = (uint32_t) D.44856;
  D.44885 = switch_default_ptime (rm_encoding, D.44884);
  codec_ms = (int) D.44885;
  <D.44883>:
  D.44856 = map->rm_pt;
  D.44886 = (unsigned char) D.44856;
  map_bit_rate = switch_known_bitrate (D.44886);
  if (ptime == 0) goto <D.44887>; else goto <D.44888>;
  <D.44887>:
  D.44889 = map->rm_encoding;
  D.44890 = strcasecmp (D.44889, "g723");
  if (D.44890 == 0) goto <D.44891>; else goto <D.44892>;
  <D.44891>:
  codec_ms = 33;
  <D.44892>:
  <D.44888>:
  remote_codec_rate = map->rm_rate;
  fmtp_remote_codec_rate = 0;
  memset (&codec_fmtp, 0, 16);
  D.44893 = map->rm_fmtp;
  D.44894 = _zstr (D.44893);
  if (D.44894 != 0) goto <D.44895>; else goto <D.44896>;
  <D.44895>:
  D.44889 = map->rm_encoding;
  D.44897 = strcasecmp (D.44889, "ilbc");
  if (D.44897 == 0) goto <D.44898>; else goto <D.44899>;
  <D.44898>:
  codec_ms = 32;
  map_bit_rate = 13332;
  goto <D.44900>;
  <D.44899>:
  D.44889 = map->rm_encoding;
  D.44901 = strcasecmp (D.44889, "isac");
  if (D.44901 == 0) goto <D.44902>; else goto <D.44903>;
  <D.44902>:
  codec_ms = 39;
  map_bit_rate = 32001;
  goto <D.44904>;
  <D.44903>:
  map_bit_rate = 32099;
  <D.44904>:
  <D.44900>:
  goto <D.44905>;
  <D.44896>:
  D.44889 = map->rm_encoding;
  D.44893 = map->rm_fmtp;
  D.44854 = map->rm_rate;
  D.44906 = switch_core_codec_parse_fmtp (D.44889, D.44893, D.44854, &codec_fmtp);
  if (D.44906 == 0) goto <D.44907>; else goto <D.44908>;
  <D.44907>:
  D.44909 = codec_fmtp.bits_per_second;
  if (D.44909 != 0) goto <D.44910>; else goto <D.44911>;
  <D.44910>:
  D.44909 = codec_fmtp.bits_per_second;
  map_bit_rate = (uint32_t) D.44909;
  <D.44911>:
  D.44912 = codec_fmtp.microseconds_per_packet;
  if (D.44912 != 0) goto <D.44913>; else goto <D.44914>;
  <D.44913>:
  D.44912 = codec_fmtp.microseconds_per_packet;
  codec_ms = D.44912 / 1000;
  <D.44914>:
  D.44915 = codec_fmtp.actual_samples_per_second;
  if (D.44915 != 0) goto <D.44916>; else goto <D.44917>;
  <D.44916>:
  fmtp_remote_codec_rate = codec_fmtp.actual_samples_per_second;
  <D.44917>:
  <D.44908>:
  <D.44905>:
  i = 0;
  goto <D.39054>;
  <D.39053>:
  i.91 = (unsigned int) i;
  D.44919 = i.91 * 4;
  D.44920 = codec_array + D.44919;
  imp = *D.44920;
  D.44921 = imp->bits_per_second;
  bit_rate = (uint32_t) D.44921;
  codec_rate = imp->samples_per_second;
  D.44922 = imp->codec_type;
  if (D.44922 != 0) goto <D.44923>; else goto <D.44924>;
  <D.44923>:
  // predicted unlikely by continue predictor.
  goto <D.39051>;
  <D.44924>:
  D.44856 = map->rm_pt;
  D.44925 = (int) D.44856;
  remote_codec_rate.92 = (int) remote_codec_rate;
  D.44927 = imp->iananame;
  D.44928 = imp->ianacode;
  D.44929 = (int) D.44928;
  D.44930 = imp->microseconds_per_packet;
  D.44931 = D.44930 / 1000;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3383, session, 7, "Audio Codec Compare [%s:%d:%u:%d:%u]/[%s:%d:%u:%d:%u]\n", rm_encoding, D.44925, remote_codec_rate.92, codec_ms, map_bit_rate, D.44927, D.44929, codec_rate, D.44931, bit_rate);
  D.44889 = map->rm_encoding;
  D.44935 = _zstr (D.44889);
  if (D.44935 != 0) goto <D.44932>; else goto <D.44936>;
  <D.44936>:
  D.44471 = smh->mparams;
  D.44821 = D.44471->ndlb;
  D.44937 = (int) D.44821;
  D.44938 = D.44937 & 1;
  D.44939 = (_Bool) D.44938;
  if (D.44939 != 0) goto <D.44932>; else goto <D.44933>;
  <D.44932>:
  D.44856 = map->rm_pt;
  D.44925 = (int) D.44856;
  if (D.44925 <= 95) goto <D.44940>; else goto <D.44933>;
  <D.44940>:
  D.44856 = map->rm_pt;
  D.44925 = (int) D.44856;
  D.44928 = imp->ianacode;
  D.44929 = (int) D.44928;
  match = D.44925 == D.44929;
  goto <D.44934>;
  <D.44933>:
  D.44927 = imp->iananame;
  D.44945 = strcasecmp (rm_encoding, D.44927);
  if (D.44945 == 0) goto <D.44946>; else goto <D.44942>;
  <D.44946>:
  if (remote_codec_rate == codec_rate) goto <D.44943>; else goto <D.44947>;
  <D.44947>:
  D.44948 = imp->actual_samples_per_second;
  if (D.44948 == fmtp_remote_codec_rate) goto <D.44943>; else goto <D.44942>;
  <D.44943>:
  iftmp.93 = 1;
  goto <D.44944>;
  <D.44942>:
  iftmp.93 = 0;
  <D.44944>:
  match = (uint8_t) iftmp.93;
  if (fmtp_remote_codec_rate != 0) goto <D.44949>; else goto <D.44950>;
  <D.44949>:
  remote_codec_rate = fmtp_remote_codec_rate;
  <D.44950>:
  <D.44934>:
  D.44951 = match != 0;
  D.44952 = bit_rate != 0;
  D.44953 = D.44951 && D.44952;
  if (D.44953 != 0) goto <D.44954>; else goto <D.44955>;
  <D.44954>:
  D.44956 = map_bit_rate != 0;
  D.44957 = map_bit_rate != bit_rate;
  D.44958 = D.44956 && D.44957;
  if (D.44958 != 0) goto <D.44959>; else goto <D.44960>;
  <D.44959>:
  D.44889 = map->rm_encoding;
  D.44961 = strcasecmp (D.44889, "ilbc");
  if (D.44961 != 0) goto <D.44962>; else goto <D.44963>;
  <D.44962>:
  D.44889 = map->rm_encoding;
  D.44964 = strcasecmp (D.44889, "isac");
  if (D.44964 != 0) goto <D.44965>; else goto <D.44966>;
  <D.44965>:
  match = 0;
  <D.44966>:
  <D.44963>:
  <D.44960>:
  <D.44955>:
  D.44951 = match != 0;
  D.44969 = remote_codec_rate != 0;
  D.44970 = D.44951 && D.44969;
  if (D.44970 != 0) goto <D.44971>; else goto <D.44972>;
  <D.44971>:
  D.44973 = codec_rate != 0;
  D.44974 = remote_codec_rate != codec_rate;
  D.44975 = D.44973 && D.44974;
  if (D.44975 != 0) goto <D.44976>; else goto <D.44977>;
  <D.44976>:
  D.44889 = map->rm_encoding;
  D.44978 = strcasecmp (D.44889, "pcma");
  if (D.44978 == 0) goto <D.44967>; else goto <D.44979>;
  <D.44979>:
  D.44889 = map->rm_encoding;
  D.44980 = strcasecmp (D.44889, "pcmu");
  if (D.44980 == 0) goto <D.44967>; else goto <D.44968>;
  <D.44967>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3405, session, 7, "sampling rates have to match for G.711\n");
  match = 0;
  <D.44968>:
  <D.44977>:
  <D.44972>:
  if (match != 0) goto <D.44981>; else goto <D.44982>;
  <D.44981>:
  if (scrooge != 0) goto <D.44983>; else goto <D.44984>;
  <D.44983>:
  D.44927 = imp->iananame;
  D.44985 = imp->samples_per_second;
  D.44930 = imp->microseconds_per_packet;
  D.44931 = D.44930 / 1000;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3411, session, 7, "Bah HUMBUG! Sticking with %s@%uh@%ui\n", D.44927, D.44985, D.44931);
  goto <D.44986>;
  <D.44984>:
  D.44990 = ptime != 0;
  D.44991 = codec_ms != 0;
  D.44992 = D.44990 && D.44991;
  if (D.44992 != 0) goto <D.44993>; else goto <D.44987>;
  <D.44993>:
  D.44994 = codec_ms * 1000;
  D.44930 = imp->microseconds_per_packet;
  if (D.44994 != D.44930) goto <D.44988>; else goto <D.44987>;
  <D.44987>:
  if (remote_codec_rate != codec_rate) goto <D.44988>; else goto <D.44989>;
  <D.44988>:
  match = 0;
  D.44927 = imp->iananame;
  D.44928 = imp->ianacode;
  D.44929 = (int) D.44928;
  D.44930 = imp->microseconds_per_packet;
  D.44931 = D.44930 / 1000;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3418, session, 7, "Audio Codec Compare [%s:%d:%u:%d:%u] is saved as a near-match\n", D.44927, D.44929, codec_rate, D.44931, bit_rate);
  near_matches[nm_idx].codec_idx = i;
  remote_codec_rate.92 = (int) remote_codec_rate;
  near_matches[nm_idx].rate = remote_codec_rate.92;
  near_matches[nm_idx].imp = imp;
  near_matches[nm_idx].map = map;
  nm_idx = nm_idx + 1;
  // predicted unlikely by continue predictor.
  goto <D.39051>;
  <D.44989>:
  <D.44986>:
  matches[m_idx].codec_idx = i;
  codec_rate.94 = (int) codec_rate;
  matches[m_idx].rate = codec_rate.94;
  matches[m_idx].imp = imp;
  matches[m_idx].map = map;
  m_idx = m_idx + 1;
  D.44927 = imp->iananame;
  D.44928 = imp->ianacode;
  D.44929 = (int) D.44928;
  D.44930 = imp->microseconds_per_packet;
  D.44931 = D.44930 / 1000;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3437, session, 7, "Audio Codec Compare [%s:%d:%u:%d:%u] ++++ is saved as a match\n", D.44927, D.44929, codec_rate, D.44931, bit_rate);
  if (m_idx > 29) goto <D.39052>; else goto <D.44996>;
  <D.44996>:
  match = 0;
  <D.44982>:
  <D.39051>:
  i = i + 1;
  <D.39054>:
  D.44471 = smh->mparams;
  D.44997 = D.44471->num_codecs;
  D.44998 = D.44997 > i;
  D.44999 = i < total_codecs;
  D.45000 = D.44998 && D.44999;
  if (D.45000 != 0) goto <D.39053>; else goto <D.39052>;
  <D.39052>:
  if (m_idx > 29) goto <D.39055>; else goto <D.45001>;
  <D.45001>:
  <D.39047>:
  map = map->rm_next;
  <D.39057>:
  if (map != 0B) goto <D.39056>; else goto <D.39055>;
  <D.39055>:
  D.45002 = smh->crypto_mode;
  D.45003 = D.45002 == 1;
  D.45004 = got_crypto <= 0;
  D.45005 = D.45003 && D.45004;
  if (D.45005 != 0) goto <D.45006>; else goto <D.45007>;
  <D.45006>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3455, session, 4, "Crypto not negotiated but required.\n");
  match = 0;
  nm_idx = 0;
  m_idx = nm_idx;
  <D.45007>:
  D.45008 = m_idx == 0;
  D.45009 = nm_idx != 0;
  D.45010 = D.45008 && D.45009;
  if (D.45010 != 0) goto <D.45011>; else goto <D.45012>;
  <D.45011>:
  j = 0;
  goto <D.39066>;
  <D.39065>:
  timp = 0B;
  D.45013 = near_matches[j].rate;
  near_rate = (uint32_t) D.45013;
  near_match = near_matches[j].imp;
  near_map = near_matches[j].map;
  D.45014 = near_match->iananame;
  if (near_rate == 0) goto <D.45016>; else goto <D.45017>;
  <D.45016>:
  iftmp.95 = near_match->samples_per_second;
  goto <D.45018>;
  <D.45017>:
  iftmp.95 = near_rate;
  <D.45018>:
  switch_snprintf (&tmp, 80, "%s@%uh@%ui", D.45014, iftmp.95, codec_ms);
  prefs[0] = &tmp;
  num = switch_loadable_module_get_codecs_sorted (&search, 1, &prefs, 1);
  if (num != 0) goto <D.45019>; else goto <D.45020>;
  <D.45019>:
  timp = search[0];
  goto <D.45021>;
  <D.45020>:
  timp = near_match;
  <D.45021>:
  if (maxptime == 0) goto <D.45022>; else goto <D.45024>;
  <D.45024>:
  D.45025 = timp->microseconds_per_packet;
  D.45026 = D.45025 / 1000;
  if (D.45026 <= maxptime) goto <D.45022>; else goto <D.45023>;
  <D.45022>:
  D.45027 = timp->iananame;
  D.45025 = timp->microseconds_per_packet;
  D.45026 = D.45025 / 1000;
  D.45028 = timp->actual_samples_per_second;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3488, session, 7, "Substituting codec %s@%ui@%uh\n", D.45027, D.45026, D.45028);
  match = 1;
  D.45029 = near_matches[j].codec_idx;
  matches[m_idx].codec_idx = D.45029;
  near_rate.96 = (int) near_rate;
  matches[m_idx].rate = near_rate.96;
  matches[m_idx].imp = timp;
  matches[m_idx].map = near_map;
  m_idx = m_idx + 1;
  goto <D.39064>;
  <D.45023>:
  j = j + 1;
  <D.39066>:
  if (j < nm_idx) goto <D.39065>; else goto <D.39064>;
  <D.39064>:
  <D.45012>:
  if (m_idx != 0) goto <D.45031>; else goto <D.45032>;
  <D.45031>:
  if (greedy != 0) goto <D.45033>; else goto <D.45034>;
  <D.45033>:
  greedy_sort (smh, &matches, m_idx, codec_array, total_codecs);
  <D.45034>:
  match = 1;
  a_engine->codec_negotiated = 1;
  smh->num_negotiated_codecs = 0;
  j = 0;
  goto <D.39070>;
  <D.39069>:
  D.45035 = matches[j].map;
  D.45036 = D.45035->rm_encoding;
  D.45035 = matches[j].map;
  D.45037 = D.45035->rm_fmtp;
  D.45035 = matches[j].map;
  D.45038 = D.45035->rm_pt;
  D.45039 = (uint32_t) D.45038;
  D.45040 = matches[j].imp;
  D.45041 = D.45040->samples_per_second;
  D.45040 = matches[j].imp;
  D.45042 = D.45040->microseconds_per_packet;
  D.45043 = D.45042 / 1000;
  D.45044 = (uint32_t) D.45043;
  pmap = switch_core_media_add_payload_map (session, 0, D.45036, D.45037, sdp_type, D.45039, D.45041, D.45044, 1);
  mimp = matches[j].imp;
  mmap = matches[j].map;
  if (j == 0) goto <D.45045>; else goto <D.45046>;
  <D.45045>:
  a_engine->cur_payload_map = pmap;
  D.44750 = a_engine->cur_payload_map;
  D.44750->current = 1;
  D.44605 = a_engine->rtp_session;
  if (D.44605 != 0B) goto <D.45047>; else goto <D.45048>;
  <D.45047>:
  D.44605 = a_engine->rtp_session;
  D.45049 = pmap->pt;
  switch_rtp_set_default_payload (D.44605, D.45049);
  <D.45048>:
  <D.45046>:
  D.45050 = mmap->rm_encoding;
  D.45051 = switch_core_perform_session_strdup (session, D.45050, "src/switch_core_media.c", &__func__, 3535);
  pmap->rm_encoding = D.45051;
  D.45052 = mimp->iananame;
  D.45053 = switch_core_perform_session_strdup (session, D.45052, "src/switch_core_media.c", &__func__, 3536);
  pmap->iananame = D.45053;
  D.45054 = mmap->rm_pt;
  D.45055 = (unsigned char) D.45054;
  pmap->recv_pt = D.45055;
  D.45056 = mimp->samples_per_second;
  pmap->rm_rate = D.45056;
  D.45056 = mimp->samples_per_second;
  pmap->adv_rm_rate = D.45056;
  D.45052 = mimp->iananame;
  D.45057 = strcasecmp (D.45052, "g722");
  if (D.45057 != 0) goto <D.45058>; else goto <D.45059>;
  <D.45058>:
  D.45060 = mimp->actual_samples_per_second;
  pmap->rm_rate = D.45060;
  <D.45059>:
  D.45061 = mimp->microseconds_per_packet;
  D.45062 = D.45061 / 1000;
  D.45063 = (uint32_t) D.45062;
  pmap->codec_ms = D.45063;
  D.45064 = mimp->bits_per_second;
  D.45065 = (uint32_t) D.45064;
  pmap->bitrate = D.45065;
  D.45067 = mmap->rm_params;
  if (D.45067 != 0B) goto <D.45068>; else goto <D.45069>;
  <D.45068>:
  D.45067 = mmap->rm_params;
  iftmp.97 = atoi (D.45067);
  goto <D.45070>;
  <D.45069>:
  iftmp.97 = 1;
  <D.45070>:
  pmap->channels = iftmp.97;
  D.45050 = mmap->rm_encoding;
  D.45071 = strcasecmp (D.45050, "opus");
  if (D.45071 == 0) goto <D.45072>; else goto <D.45073>;
  <D.45072>:
  D.45074 = pmap->channels;
  if (D.45074 == 1) goto <D.45075>; else goto <D.45076>;
  <D.45075>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3549, session, 4, "Invalid SDP for opus.  Don\'t ask.. but it needs a /2\n");
  pmap->adv_channels = 1;
  goto <D.45077>;
  <D.45076>:
  pmap->adv_channels = 2;
  <D.45077>:
  D.45080 = mmap->rm_fmtp;
  D.45081 = _zstr (D.45080);
  if (D.45081 == 0) goto <D.45082>; else goto <D.45078>;
  <D.45082>:
  D.45080 = mmap->rm_fmtp;
  D.45083 = switch_stristr ("stereo=1", D.45080);
  if (D.45083 != 0B) goto <D.45084>; else goto <D.45078>;
  <D.45084>:
  pmap->channels = 2;
  goto <D.45079>;
  <D.45078>:
  pmap->channels = 1;
  <D.45079>:
  goto <D.45085>;
  <D.45073>:
  D.45074 = pmap->channels;
  pmap->adv_channels = D.45074;
  <D.45085>:
  D.45086 = connection->c_address;
  D.45087 = switch_core_perform_session_strdup (session, D.45086, "src/switch_core_media.c", &__func__, 3563);
  pmap->remote_sdp_ip = D.45087;
  D.44697 = m->m_port;
  D.45088 = (short unsigned int) D.44697;
  pmap->remote_sdp_port = D.45088;
  D.45080 = mmap->rm_fmtp;
  D.45089 = switch_core_perform_session_strdup (session, D.45080, "src/switch_core_media.c", &__func__, 3565);
  pmap->rm_fmtp = D.45089;
  D.45054 = mmap->rm_pt;
  D.45055 = (unsigned char) D.45054;
  pmap->agreed_pt = D.45055;
  D.44655 = smh->num_negotiated_codecs;
  smh->negotiated_codecs[D.44655] = mimp;
  D.45090 = D.44655 + 1;
  smh->num_negotiated_codecs = D.45090;
  D.45054 = mmap->rm_pt;
  D.45055 = (unsigned char) D.45054;
  pmap->recv_pt = D.45055;
  j = j + 1;
  <D.39070>:
  if (j < m_idx) goto <D.39069>; else goto <D.39071>;
  <D.39071>:
  <D.45032>:
  if (match != 0) goto <D.45091>; else goto <D.45092>;
  <D.45091>:
  D.44750 = a_engine->cur_payload_map;
  D.44762 = D.44750->remote_sdp_port;
  D.44767 = (int) D.44762;
  switch_snprintf (&tmp, 50, "%d", D.44767);
  D.44530 = session->channel;
  D.44750 = a_engine->cur_payload_map;
  D.44760 = D.44750->remote_sdp_ip;
  switch_channel_set_variable_var_check (D.44530, "remote_media_ip", D.44760, 1);
  D.44530 = session->channel;
  switch_channel_set_variable_var_check (D.44530, "remote_media_port", &tmp, 1);
  D.44750 = a_engine->cur_payload_map;
  D.45093 = D.44750->recv_pt;
  D.45094 = (int) D.45093;
  switch_snprintf (&tmp, 50, "%d", D.45094);
  D.44530 = session->channel;
  switch_channel_set_variable_var_check (D.44530, "rtp_audio_recv_pt", &tmp, 1);
  D.45095 = &a_engine->read_codec;
  D.45096 = switch_core_codec_ready (D.45095);
  if (D.45096 != 0) goto <D.45097>; else goto <D.45098>;
  <D.45097>:
  a_engine->reset_codec = 1;
  <D.45098>:
  D.44471 = smh->mparams;
  D.45099 = D.44471->codec_flags;
  D.45100 = switch_core_media_set_codec (session, 0, D.45099);
  if (D.45100 == 0) goto <D.45101>; else goto <D.45102>;
  <D.45101>:
  got_audio = 1;
  check_ice (smh, 0, sdp, m);
  goto <D.45103>;
  <D.45102>:
  match = 0;
  <D.45103>:
  <D.45092>:
  if (best_te == 0) goto <D.45106>; else goto <D.45107>;
  <D.45106>:
  D.45108 = switch_media_handle_test_media_flag (smh, 8);
  if (D.45108 != 0) goto <D.45104>; else goto <D.45109>;
  <D.45109>:
  D.44530 = session->channel;
  D.45110 = switch_channel_test_flag (D.44530, 93);
  if (D.45110 != 0) goto <D.45104>; else goto <D.45105>;
  <D.45104>:
  D.44471 = smh->mparams;
  D.45111 = D.44471->te;
  D.45112 = (int) D.45111;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3609, session, 7, "No 2833 in SDP. Liberal DTMF mode adding %d as telephone-event.\n", D.45112);
  D.44471 = smh->mparams;
  best_te = D.44471->te;
  <D.45105>:
  <D.45107>:
  if (best_te != 0) goto <D.45113>; else goto <D.45114>;
  <D.45113>:
  D.45115 = switch_channel_direction (channel);
  if (D.45115 == 1) goto <D.45116>; else goto <D.45117>;
  <D.45116>:
  D.44471 = smh->mparams;
  D.44471->te = best_te;
  te = D.44471->te;
  D.44857 = (int) best_te;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3617, session, 7, "Set 2833 dtmf send payload to %u\n", D.44857);
  D.44530 = session->channel;
  switch_channel_set_variable_var_check (D.44530, "dtmf_type", "rfc2833", 1);
  D.44471 = smh->mparams;
  D.44471->dtmf_type = 0;
  D.44605 = a_engine->rtp_session;
  if (D.44605 != 0B) goto <D.45118>; else goto <D.45119>;
  <D.45118>:
  D.44605 = a_engine->rtp_session;
  switch_rtp_set_telephony_event (D.44605, best_te);
  D.44530 = session->channel;
  D.44857 = (int) best_te;
  switch_channel_set_variable_printf (D.44530, "rtp_2833_send_payload", "%d", D.44857);
  <D.45119>:
  goto <D.45120>;
  <D.45117>:
  D.44471 = smh->mparams;
  D.44471 = smh->mparams;
  D.44471->te = best_te;
  D.45111 = D.44471->te;
  D.44471->recv_te = D.45111;
  te = D.44471->recv_te;
  D.45121 = (int) te;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3626, session, 7, "Set 2833 dtmf send/recv payload to %u\n", D.45121);
  D.44530 = session->channel;
  switch_channel_set_variable_var_check (D.44530, "dtmf_type", "rfc2833", 1);
  D.44471 = smh->mparams;
  D.44471->dtmf_type = 0;
  D.44605 = a_engine->rtp_session;
  if (D.44605 != 0B) goto <D.45122>; else goto <D.45123>;
  <D.45122>:
  D.44605 = a_engine->rtp_session;
  switch_rtp_set_telephony_event (D.44605, te);
  D.44530 = session->channel;
  D.45121 = (int) te;
  switch_channel_set_variable_printf (D.44530, "rtp_2833_send_payload", "%d", D.45121);
  D.44605 = a_engine->rtp_session;
  switch_rtp_set_telephony_recv_event (D.44605, te);
  D.44530 = session->channel;
  D.45121 = (int) te;
  switch_channel_set_variable_printf (D.44530, "rtp_2833_recv_payload", "%d", D.45121);
  <D.45123>:
  <D.45120>:
  goto <D.45124>;
  <D.45114>:
  D.45125 = switch_channel_get_variable_dup (channel, "rtp_info_when_no_2833", 1, -1);
  D.45126 = switch_false (D.45125);
  if (D.45126 == 0) goto <D.45127>; else goto <D.45128>;
  <D.45127>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3639, session, 7, "No 2833 in SDP.  Disable 2833 dtmf and switch to INFO\n");
  D.44530 = session->channel;
  switch_channel_set_variable_var_check (D.44530, "dtmf_type", "info", 1);
  D.44471 = smh->mparams;
  D.44471->dtmf_type = 1;
  D.44471 = smh->mparams;
  D.44471 = smh->mparams;
  D.44471->te = 0;
  D.45111 = D.44471->te;
  D.44471->recv_te = D.45111;
  te = D.44471->recv_te;
  goto <D.45129>;
  <D.45128>:
  D.44530 = session->channel;
  switch_channel_set_variable_var_check (D.44530, "dtmf_type", "none", 1);
  D.44471 = smh->mparams;
  D.44471->dtmf_type = 2;
  D.44471 = smh->mparams;
  D.44471 = smh->mparams;
  D.44471->te = 0;
  D.45111 = D.44471->te;
  D.44471->recv_te = D.45111;
  te = D.44471->recv_te;
  <D.45129>:
  <D.45124>:
  goto <D.44775>;
  <D.44774>:
  D.44681 = m->m_type;
  if (D.44681 == 3) goto <D.45130>; else goto <D.45131>;
  <D.45130>:
  D.44697 = m->m_port;
  if (D.44697 != 0) goto <D.45132>; else goto <D.45133>;
  <D.45132>:
  mimp = 0B;
  vmatch = 0;
  nm_idx = 0;
  m_idx = 0;
  memset (&matches, 0, 480);
  memset (&near_matches, 0, 480);
  D.44530 = session->channel;
  switch_channel_set_variable_var_check (D.44530, "video_possible", "true", 1);
  connection = sdp->sdp_connection;
  D.44546 = m->m_connections;
  if (D.44546 != 0B) goto <D.45134>; else goto <D.45135>;
  <D.45134>:
  connection = m->m_connections;
  <D.45135>:
  if (connection == 0B) goto <D.45136>; else goto <D.45137>;
  <D.45136>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3669, session, 3, "Cannot find a c= line in the sdp at media or session level!\n");
  match = 0;
  goto <D.39042>;
  <D.45137>:
  map = m->m_rtpmaps;
  goto <D.39100>;
  <D.39099>:
  D.45138 = switch_rtp_has_dtls ();
  if (D.45138 != 0) goto <D.45139>; else goto <D.45140>;
  <D.45139>:
  D.45141 = dtls_ok (session);
  if (D.45141 != 0) goto <D.45142>; else goto <D.45143>;
  <D.45142>:
  attr = m->m_attributes;
  goto <D.39079>;
  <D.39078>:
  D.44590 = attr->a_name;
  D.45144 = strcasecmp (D.44590, "fingerprint");
  if (D.45144 == 0) goto <D.45145>; else goto <D.45146>;
  <D.45145>:
  D.44619 = attr->a_value;
  D.45147 = _zstr (D.44619);
  if (D.45147 == 0) goto <D.45148>; else goto <D.45149>;
  <D.45148>:
  got_video_crypto = 1;
  <D.45149>:
  <D.45146>:
  attr = attr->a_next;
  <D.39079>:
  if (attr != 0B) goto <D.39078>; else goto <D.39080>;
  <D.39080>:
  <D.45143>:
  <D.45140>:
  attr = m->m_attributes;
  goto <D.39092>;
  <D.39091>:
  D.44590 = attr->a_name;
  D.45152 = strcasecmp (D.44590, "framerate");
  if (D.45152 == 0) goto <D.45153>; else goto <D.45150>;
  <D.45153>:
  D.44619 = attr->a_value;
  if (D.44619 != 0B) goto <D.45154>; else goto <D.45150>;
  <D.45154>:
  goto <D.45151>;
  <D.45150>:
  D.44590 = attr->a_name;
  D.45155 = strcasecmp (D.44590, "rtcp-fb");
  if (D.45155 == 0) goto <D.45156>; else goto <D.45157>;
  <D.45156>:
  D.44619 = attr->a_value;
  D.45158 = _zstr (D.44619);
  if (D.45158 == 0) goto <D.45159>; else goto <D.45160>;
  <D.45159>:
  D.44619 = attr->a_value;
  D.45161 = switch_stristr ("fir", D.44619);
  if (D.45161 != 0B) goto <D.45162>; else goto <D.45163>;
  <D.45162>:
  D.45164 = v_engine->fir;
  D.45165 = D.45164 + 1;
  v_engine->fir = D.45165;
  <D.45163>:
  D.44471 = smh->mparams;
  D.44471->rtcp_video_interval_msec = "10000";
  <D.45160>:
  goto <D.45166>;
  <D.45157>:
  D.44590 = attr->a_name;
  D.45169 = strcasecmp (D.44590, "rtcp");
  if (D.45169 == 0) goto <D.45170>; else goto <D.45167>;
  <D.45170>:
  D.44619 = attr->a_value;
  if (D.44619 != 0B) goto <D.45171>; else goto <D.45167>;
  <D.45171>:
  __s2_len = 1;
  if (__s2_len <= 3) goto <D.45173>; else goto <D.45174>;
  <D.45173>:
  __s1 = attr->a_value;
  D.45175 = *__s1;
  D.45176 = (int) D.45175;
  D.45177 = "1";
  D.45178 = MEM[(const unsigned char *)D.45177];
  D.45179 = (int) D.45178;
  __result = D.45176 - D.45179;
  D.45180 = __s2_len != 0;
  D.45181 = __result == 0;
  D.45182 = D.45180 && D.45181;
  if (D.45182 != 0) goto <D.45183>; else goto <D.45184>;
  <D.45183>:
  D.45185 = __s1 + 1;
  D.45186 = *D.45185;
  D.45187 = (int) D.45186;
  D.45188 = &"1"[1];
  D.45189 = MEM[(const unsigned char *)D.45188];
  D.45190 = (int) D.45189;
  __result = D.45187 - D.45190;
  D.45191 = __s2_len > 1;
  D.45181 = __result == 0;
  D.45192 = D.45191 && D.45181;
  if (D.45192 != 0) goto <D.45193>; else goto <D.45194>;
  <D.45193>:
  D.45195 = __s1 + 2;
  D.45196 = *D.45195;
  D.45197 = (int) D.45196;
  D.45198 = &"1"[2];
  D.45199 = MEM[(const unsigned char *)D.45198];
  D.45200 = (int) D.45199;
  __result = D.45197 - D.45200;
  D.45201 = __s2_len > 2;
  D.45181 = __result == 0;
  D.45202 = D.45201 && D.45181;
  if (D.45202 != 0) goto <D.45203>; else goto <D.45204>;
  <D.45203>:
  D.45205 = __s1 + 3;
  D.45206 = *D.45205;
  D.45207 = (int) D.45206;
  D.45208 = &"1"[3];
  D.45209 = MEM[(const unsigned char *)D.45208];
  D.45210 = (int) D.45209;
  __result = D.45207 - D.45210;
  <D.45204>:
  <D.45194>:
  <D.45184>:
  D.39088 = __result;
  iftmp.98 = D.39088;
  goto <D.45211>;
  <D.45174>:
  D.44619 = attr->a_value;
  iftmp.98 = __builtin_strcmp (D.44619, "1");
  <D.45211>:
  D.39089 = iftmp.98;
  if (D.39089 == 0) goto <D.45212>; else goto <D.45167>;
  <D.45212>:
  D.44530 = session->channel;
  D.44619 = attr->a_value;
  switch_channel_set_variable_var_check (D.44530, "rtp_remote_video_rtcp_port", D.44619, 1);
  D.44619 = attr->a_value;
  D.45213 = atoi (D.44619);
  D.45214 = (short unsigned int) D.45213;
  v_engine->remote_rtcp_port = D.45214;
  D.44471 = smh->mparams;
  D.45215 = D.44471->rtcp_video_interval_msec;
  if (D.45215 == 0B) goto <D.45216>; else goto <D.45217>;
  <D.45216>:
  D.44471 = smh->mparams;
  D.44471->rtcp_video_interval_msec = "5000";
  <D.45217>:
  goto <D.45168>;
  <D.45167>:
  if (got_video_crypto == 0) goto <D.45218>; else goto <D.45219>;
  <D.45218>:
  D.44590 = attr->a_name;
  D.45220 = strcasecmp (D.44590, "crypto");
  if (D.45220 == 0) goto <D.45221>; else goto <D.45222>;
  <D.45221>:
  D.44619 = attr->a_value;
  D.45223 = _zstr (D.44619);
  if (D.45223 == 0) goto <D.45224>; else goto <D.45225>;
  <D.45224>:
  D.44471 = smh->mparams;
  D.44821 = D.44471->ndlb;
  D.44822 = D.44821 & 4;
  if (D.44822 == 0) goto <D.45226>; else goto <D.45227>;
  <D.45226>:
  D.44530 = session->channel;
  D.45228 = switch_channel_get_variable_dup (D.44530, "rtp_allow_crypto_in_avp", 1, -1);
  D.45229 = switch_true (D.45228);
  if (D.45229 == 0) goto <D.45230>; else goto <D.45231>;
  <D.45230>:
  D.44666 = m->m_proto;
  D.44829 = D.44666 != 257;
  D.44830 = got_webrtc == 0;
  D.44831 = D.44829 && D.44830;
  if (D.44831 != 0) goto <D.45232>; else goto <D.45233>;
  <D.45232>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3711, session, 3, "a=crypto in RTP/AVP, refer to rfc3711\n");
  match = 0;
  goto done;
  <D.45233>:
  <D.45231>:
  <D.45227>:
  crypto = attr->a_value;
  crypto_tag = atoi (crypto);
  got_video_crypto = switch_core_session_check_incoming_crypto (session, "rtp_has_video_crypto", 1, crypto, crypto_tag, sdp_type);
  <D.45225>:
  <D.45222>:
  <D.45219>:
  <D.45168>:
  <D.45166>:
  <D.45151>:
  attr = attr->a_next;
  <D.39092>:
  if (attr != 0B) goto <D.39091>; else goto <D.39093>;
  <D.39093>:
  rm_encoding = map->rm_encoding;
  if (rm_encoding == 0B) goto <D.45234>; else goto <D.45235>;
  <D.45234>:
  rm_encoding = "";
  <D.45235>:
  i = 0;
  goto <D.39097>;
  <D.39096>:
  i.99 = (unsigned int) i;
  D.45237 = i.99 * 4;
  D.45238 = codec_array + D.45237;
  imp = *D.45238;
  D.45239 = imp->codec_type;
  if (D.45239 != 1) goto <D.45240>; else goto <D.45241>;
  <D.45240>:
  // predicted unlikely by continue predictor.
  goto <D.39095>;
  <D.45241>:
  D.44530 = session->channel;
  D.45242 = switch_channel_direction (D.44530);
  if (D.45242 == 0) goto <D.45243>; else goto <D.45244>;
  <D.45243>:
  D.44530 = session->channel;
  D.45245 = switch_channel_test_flag (D.44530, 114);
  if (D.45245 != 0) goto <D.45246>; else goto <D.45247>;
  <D.45246>:
  // predicted unlikely by continue predictor.
  goto <D.39095>;
  <D.45247>:
  <D.45244>:
  D.45248 = map->rm_pt;
  D.45249 = (int) D.45248;
  D.45250 = imp->iananame;
  D.45251 = imp->ianacode;
  D.45252 = (int) D.45251;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3743, session, 7, "Video Codec Compare [%s:%d]/[%s:%d]\n", rm_encoding, D.45249, D.45250, D.45252);
  D.45256 = map->rm_encoding;
  D.45257 = _zstr (D.45256);
  if (D.45257 != 0) goto <D.45253>; else goto <D.45258>;
  <D.45258>:
  D.44471 = smh->mparams;
  D.44821 = D.44471->ndlb;
  D.44937 = (int) D.44821;
  D.44938 = D.44937 & 1;
  D.44939 = (_Bool) D.44938;
  if (D.44939 != 0) goto <D.45253>; else goto <D.45254>;
  <D.45253>:
  D.45248 = map->rm_pt;
  D.45249 = (int) D.45248;
  if (D.45249 <= 95) goto <D.45259>; else goto <D.45254>;
  <D.45259>:
  D.45248 = map->rm_pt;
  D.45249 = (int) D.45248;
  D.45251 = imp->ianacode;
  D.45252 = (int) D.45251;
  vmatch = D.45249 == D.45252;
  goto <D.45255>;
  <D.45254>:
  D.45250 = imp->iananame;
  D.45260 = strcasecmp (rm_encoding, D.45250);
  vmatch = D.45260 == 0;
  <D.45255>:
  if (vmatch != 0) goto <D.45261>; else goto <D.45262>;
  <D.45261>:
  D.45263 = map->rm_rate;
  D.45264 = imp->samples_per_second;
  if (D.45263 == D.45264) goto <D.45265>; else goto <D.45266>;
  <D.45265>:
  matches[m_idx].imp = imp;
  matches[m_idx].map = map;
  D.45250 = imp->iananame;
  D.45251 = imp->ianacode;
  D.45252 = (int) D.45251;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3756, session, 7, "Video Codec Compare [%s:%d] +++ is saved as a match\n", D.45250, D.45252);
  m_idx = m_idx + 1;
  <D.45266>:
  <D.45262>:
  vmatch = 0;
  <D.39095>:
  i = i + 1;
  <D.39097>:
  if (i < total_codecs) goto <D.39096>; else goto <D.39098>;
  <D.39098>:
  map = map->rm_next;
  <D.39100>:
  if (map != 0B) goto <D.39099>; else goto <D.39101>;
  <D.39101>:
  D.45002 = smh->crypto_mode;
  D.45003 = D.45002 == 1;
  D.45267 = got_video_crypto <= 0;
  D.45268 = D.45003 && D.45267;
  if (D.45268 != 0) goto <D.45269>; else goto <D.45270>;
  <D.45269>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 3766, session, 4, "Crypto not negotiated but required.\n");
  vmatch = 0;
  m_idx = 0;
  <D.45270>:
  if (m_idx != 0) goto <D.45271>; else goto <D.45272>;
  <D.45271>:
  j = 0;
  if (greedy != 0) goto <D.45273>; else goto <D.45274>;
  <D.45273>:
  greedy_sort (smh, &matches, m_idx, codec_array, total_codecs);
  <D.45274>:
  vmatch = 1;
  v_engine->codec_negotiated = 1;
  j = 0;
  goto <D.39106>;
  <D.39105>:
  D.45275 = matches[j].map;
  D.45276 = D.45275->rm_encoding;
  D.45275 = matches[j].map;
  D.45277 = D.45275->rm_fmtp;
  D.45275 = matches[j].map;
  D.45278 = D.45275->rm_pt;
  D.45279 = (uint32_t) D.45278;
  D.45280 = matches[j].imp;
  D.45281 = D.45280->samples_per_second;
  D.45280 = matches[j].imp;
  D.45282 = D.45280->microseconds_per_packet;
  D.45283 = D.45282 / 1000;
  D.45284 = (uint32_t) D.45283;
  pmap = switch_core_media_add_payload_map (session, 1, D.45276, D.45277, sdp_type, D.45279, D.45281, D.45284, 1);
  if (j == 0) goto <D.45285>; else goto <D.45286>;
  <D.45285>:
  v_engine->cur_payload_map = pmap;
  D.45287 = v_engine->cur_payload_map;
  D.45287->current = 1;
  D.45288 = v_engine->rtp_session;
  if (D.45288 != 0B) goto <D.45289>; else goto <D.45290>;
  <D.45289>:
  D.45288 = v_engine->rtp_session;
  D.45291 = pmap->pt;
  switch_rtp_set_default_payload (D.45288, D.45291);
  <D.45290>:
  <D.45286>:
  mimp = matches[j].imp;
  map = matches[j].map;
  D.45256 = map->rm_encoding;
  D.45292 = switch_core_perform_session_strdup (session, D.45256, "src/switch_core_media.c", &__func__, 3804);
  pmap->rm_encoding = D.45292;
  D.45248 = map->rm_pt;
  D.45293 = (unsigned char) D.45248;
  pmap->recv_pt = D.45293;
  D.45263 = map->rm_rate;
  pmap->rm_rate = D.45263;
  D.45294 = mimp->microseconds_per_packet;
  D.45295 = D.45294 / 1000;
  D.45296 = (uint32_t) D.45295;
  pmap->codec_ms = D.45296;
  D.45086 = connection->c_address;
  D.45297 = switch_core_perform_session_strdup (session, D.45086, "src/switch_core_media.c", &__func__, 3810);
  pmap->remote_sdp_ip = D.45297;
  D.44697 = m->m_port;
  D.45088 = (short unsigned int) D.44697;
  pmap->remote_sdp_port = D.45088;
  D.45298 = map->rm_fmtp;
  D.45299 = switch_core_perform_session_strdup (session, D.45298, "src/switch_core_media.c", &__func__, 3813);
  pmap->rm_fmtp = D.45299;
  D.45248 = map->rm_pt;
  D.45293 = (unsigned char) D.45248;
  pmap->agreed_pt = D.45293;
  j = j + 1;
  <D.39106>:
  if (j < m_idx) goto <D.39105>; else goto <D.39107>;
  <D.39107>:
  D.45287 = v_engine->cur_payload_map;
  D.45300 = D.45287->remote_sdp_port;
  D.45301 = (int) D.45300;
  switch_snprintf (&tmp, 50, "%d", D.45301);
  D.44530 = session->channel;
  D.45287 = v_engine->cur_payload_map;
  D.45302 = D.45287->remote_sdp_ip;
  switch_channel_set_variable_var_check (D.44530, "remote_video_ip", D.45302, 1);
  D.44530 = session->channel;
  switch_channel_set_variable_var_check (D.44530, "remote_video_port", &tmp, 1);
  D.44530 = session->channel;
  D.45287 = v_engine->cur_payload_map;
  D.45303 = D.45287->rm_fmtp;
  switch_channel_set_variable_var_check (D.44530, "rtp_video_fmtp", D.45303, 1);
  D.45287 = v_engine->cur_payload_map;
  D.45304 = D.45287->agreed_pt;
  D.45305 = (int) D.45304;
  switch_snprintf (&tmp, 50, "%d", D.45305);
  D.44530 = session->channel;
  switch_channel_set_variable_var_check (D.44530, "rtp_video_pt", &tmp, 1);
  switch_core_media_check_video_codecs (session);
  D.45287 = v_engine->cur_payload_map;
  D.45306 = D.45287->recv_pt;
  D.45307 = (int) D.45306;
  switch_snprintf (&tmp, 50, "%d", D.45307);
  D.44530 = session->channel;
  switch_channel_set_variable_var_check (D.44530, "rtp_video_recv_pt", &tmp, 1);
  D.45308 = match == 0;
  D.45309 = vmatch != 0;
  D.45310 = D.45308 && D.45309;
  if (D.45310 != 0) goto <D.45311>; else goto <D.45312>;
  <D.45311>:
  match = 1;
  <D.45312>:
  D.45313 = &v_engine->read_codec;
  D.45314 = switch_core_codec_ready (D.45313);
  if (D.45314 != 0) goto <D.45315>; else goto <D.45316>;
  <D.45315>:
  v_engine->reset_codec = 1;
  <D.45316>:
  D.45317 = switch_core_media_set_video_codec (session, 0);
  if (D.45317 == 0) goto <D.45318>; else goto <D.45319>;
  <D.45318>:
  check_ice (smh, 1, sdp, m);
  <D.45319>:
  <D.45272>:
  <D.45133>:
  <D.45131>:
  <D.44775>:
  m = m->m_next;
  <D.39109>:
  if (m != 0B) goto <D.39108>; else goto <D.39042>;
  <D.39042>:
  done:
  if (parser != 0B) goto <D.45320>; else goto <D.45321>;
  <D.45320>:
  sdp_parser_free (parser);
  <D.45321>:
  D.44471 = smh->mparams;
  D.44471->cng_pt = cng_pt;
  D.44470 = match;
  goto <D.45322>;
  <D.45322>:
  return D.44470;
}



;; Function switch_core_media_process_udptl (switch_core_media_process_udptl)

switch_core_media_process_udptl (struct switch_core_session_t * session, struct sdp_session_t * sdp, struct sdp_media_t * m)
{
  static const char __func__[32] = "switch_core_media_process_udptl";
  struct sdp_attribute_t * attr;
  struct switch_t38_options_t * t38_options;
  struct switch_t38_options_t * D.45418;
  char * D.45417;
  int D.45412;
  char * D.45411;
  int D.45408;
  unsigned int D.45405;
  int D.45404;
  int D.45401;
  unsigned int D.45398;
  int D.45397;
  int D.45394;
  char * D.45391;
  int D.45388;
  switch_bool_t D.45384;
  int D.45383;
  int D.45380;
  switch_bool_t D.45378;
  int D.45377;
  int D.45374;
  switch_bool_t D.45372;
  int D.45371;
  int D.45368;
  unsigned int D.45367;
  int D.45366;
  int D.45363;
  short unsigned int D.45360;
  int D.45359;
  const char * D.45357;
  int D.45355;
  const char * D.45354;
  char * D.45351;
  const char * D.45348;
  struct sdp_connection_t * D.45345;
  char * D.45342;
  const char * D.45340;
  struct sdp_connection_t * D.45338;
  char * D.45334;
  const char * D.45333;
  struct sdp_origin_t * D.45330;
  short unsigned int D.45329;
  long unsigned int D.45328;
  char * D.45327;
  char * D.45326;
  struct switch_channel_t * D.45323;

  D.45323 = session->channel;
  t38_options = switch_channel_get_private (D.45323, "t38_options");
  if (t38_options == 0B) goto <D.45324>; else goto <D.45325>;
  <D.45324>:
  t38_options = switch_core_perform_session_alloc (session, 60, "src/switch_core_media.c", &__func__, 369);
  t38_options->T38FaxVersion = 0;
  t38_options->T38MaxBitRate = 14400;
  D.45326 = switch_core_perform_session_strdup (session, "transferredTCF", "src/switch_core_media.c", &__func__, 374);
  t38_options->T38FaxRateManagement = D.45326;
  D.45327 = switch_core_perform_session_strdup (session, "t38UDPRedundancy", "src/switch_core_media.c", &__func__, 375);
  t38_options->T38FaxUdpEC = D.45327;
  t38_options->T38FaxMaxBuffer = 500;
  t38_options->T38FaxMaxDatagram = 500;
  <D.45325>:
  D.45328 = m->m_port;
  D.45329 = (short unsigned int) D.45328;
  t38_options->remote_port = D.45329;
  D.45330 = sdp->sdp_origin;
  if (D.45330 != 0B) goto <D.45331>; else goto <D.45332>;
  <D.45331>:
  D.45330 = sdp->sdp_origin;
  D.45333 = D.45330->o_username;
  D.45334 = switch_core_perform_session_strdup (session, D.45333, "src/switch_core_media.c", &__func__, 383);
  t38_options->sdp_o_line = D.45334;
  goto <D.45335>;
  <D.45332>:
  t38_options->sdp_o_line = "unknown";
  <D.45335>:
  D.45338 = m->m_connections;
  if (D.45338 != 0B) goto <D.45339>; else goto <D.45336>;
  <D.45339>:
  D.45338 = m->m_connections;
  D.45340 = D.45338->c_address;
  if (D.45340 != 0B) goto <D.45341>; else goto <D.45336>;
  <D.45341>:
  D.45338 = m->m_connections;
  D.45340 = D.45338->c_address;
  D.45342 = switch_core_perform_session_strdup (session, D.45340, "src/switch_core_media.c", &__func__, 389);
  t38_options->remote_ip = D.45342;
  goto <D.45337>;
  <D.45336>:
  if (sdp != 0B) goto <D.45343>; else goto <D.45344>;
  <D.45343>:
  D.45345 = sdp->sdp_connection;
  if (D.45345 != 0B) goto <D.45346>; else goto <D.45347>;
  <D.45346>:
  D.45345 = sdp->sdp_connection;
  D.45348 = D.45345->c_address;
  if (D.45348 != 0B) goto <D.45349>; else goto <D.45350>;
  <D.45349>:
  D.45345 = sdp->sdp_connection;
  D.45348 = D.45345->c_address;
  D.45351 = switch_core_perform_session_strdup (session, D.45348, "src/switch_core_media.c", &__func__, 391);
  t38_options->remote_ip = D.45351;
  <D.45350>:
  <D.45347>:
  <D.45344>:
  <D.45337>:
  attr = m->m_attributes;
  goto <D.38396>;
  <D.38395>:
  D.45354 = attr->a_name;
  D.45355 = strcasecmp (D.45354, "T38FaxVersion");
  if (D.45355 == 0) goto <D.45356>; else goto <D.45352>;
  <D.45356>:
  D.45357 = attr->a_value;
  if (D.45357 != 0B) goto <D.45358>; else goto <D.45352>;
  <D.45358>:
  D.45357 = attr->a_value;
  D.45359 = atoi (D.45357);
  D.45360 = (short unsigned int) D.45359;
  t38_options->T38FaxVersion = D.45360;
  goto <D.45353>;
  <D.45352>:
  D.45354 = attr->a_name;
  D.45363 = strcasecmp (D.45354, "T38MaxBitRate");
  if (D.45363 == 0) goto <D.45364>; else goto <D.45361>;
  <D.45364>:
  D.45357 = attr->a_value;
  if (D.45357 != 0B) goto <D.45365>; else goto <D.45361>;
  <D.45365>:
  D.45357 = attr->a_value;
  D.45366 = atoi (D.45357);
  D.45367 = (unsigned int) D.45366;
  t38_options->T38MaxBitRate = D.45367;
  goto <D.45362>;
  <D.45361>:
  D.45354 = attr->a_name;
  D.45368 = strcasecmp (D.45354, "T38FaxFillBitRemoval");
  if (D.45368 == 0) goto <D.45369>; else goto <D.45370>;
  <D.45369>:
  D.45357 = attr->a_value;
  D.45371 = switch_safe_atoi (D.45357, 1);
  D.45372 = (switch_bool_t) D.45371;
  t38_options->T38FaxFillBitRemoval = D.45372;
  goto <D.45373>;
  <D.45370>:
  D.45354 = attr->a_name;
  D.45374 = strcasecmp (D.45354, "T38FaxTranscodingMMR");
  if (D.45374 == 0) goto <D.45375>; else goto <D.45376>;
  <D.45375>:
  D.45357 = attr->a_value;
  D.45377 = switch_safe_atoi (D.45357, 1);
  D.45378 = (switch_bool_t) D.45377;
  t38_options->T38FaxTranscodingMMR = D.45378;
  goto <D.45379>;
  <D.45376>:
  D.45354 = attr->a_name;
  D.45380 = strcasecmp (D.45354, "T38FaxTranscodingJBIG");
  if (D.45380 == 0) goto <D.45381>; else goto <D.45382>;
  <D.45381>:
  D.45357 = attr->a_value;
  D.45383 = switch_safe_atoi (D.45357, 1);
  D.45384 = (switch_bool_t) D.45383;
  t38_options->T38FaxTranscodingJBIG = D.45384;
  goto <D.45385>;
  <D.45382>:
  D.45354 = attr->a_name;
  D.45388 = strcasecmp (D.45354, "T38FaxRateManagement");
  if (D.45388 == 0) goto <D.45389>; else goto <D.45386>;
  <D.45389>:
  D.45357 = attr->a_value;
  if (D.45357 != 0B) goto <D.45390>; else goto <D.45386>;
  <D.45390>:
  D.45357 = attr->a_value;
  D.45391 = switch_core_perform_session_strdup (session, D.45357, "src/switch_core_media.c", &__func__, 406);
  t38_options->T38FaxRateManagement = D.45391;
  goto <D.45387>;
  <D.45386>:
  D.45354 = attr->a_name;
  D.45394 = strcasecmp (D.45354, "T38FaxMaxBuffer");
  if (D.45394 == 0) goto <D.45395>; else goto <D.45392>;
  <D.45395>:
  D.45357 = attr->a_value;
  if (D.45357 != 0B) goto <D.45396>; else goto <D.45392>;
  <D.45396>:
  D.45357 = attr->a_value;
  D.45397 = atoi (D.45357);
  D.45398 = (unsigned int) D.45397;
  t38_options->T38FaxMaxBuffer = D.45398;
  goto <D.45393>;
  <D.45392>:
  D.45354 = attr->a_name;
  D.45401 = strcasecmp (D.45354, "T38FaxMaxDatagram");
  if (D.45401 == 0) goto <D.45402>; else goto <D.45399>;
  <D.45402>:
  D.45357 = attr->a_value;
  if (D.45357 != 0B) goto <D.45403>; else goto <D.45399>;
  <D.45403>:
  D.45357 = attr->a_value;
  D.45404 = atoi (D.45357);
  D.45405 = (unsigned int) D.45404;
  t38_options->T38FaxMaxDatagram = D.45405;
  goto <D.45400>;
  <D.45399>:
  D.45354 = attr->a_name;
  D.45408 = strcasecmp (D.45354, "T38FaxUdpEC");
  if (D.45408 == 0) goto <D.45409>; else goto <D.45406>;
  <D.45409>:
  D.45357 = attr->a_value;
  if (D.45357 != 0B) goto <D.45410>; else goto <D.45406>;
  <D.45410>:
  D.45357 = attr->a_value;
  D.45411 = switch_core_perform_session_strdup (session, D.45357, "src/switch_core_media.c", &__func__, 412);
  t38_options->T38FaxUdpEC = D.45411;
  goto <D.45407>;
  <D.45406>:
  D.45354 = attr->a_name;
  D.45412 = strcasecmp (D.45354, "T38VendorInfo");
  if (D.45412 == 0) goto <D.45413>; else goto <D.45414>;
  <D.45413>:
  D.45357 = attr->a_value;
  if (D.45357 != 0B) goto <D.45415>; else goto <D.45416>;
  <D.45415>:
  D.45357 = attr->a_value;
  D.45417 = switch_core_perform_session_strdup (session, D.45357, "src/switch_core_media.c", &__func__, 414);
  t38_options->T38VendorInfo = D.45417;
  <D.45416>:
  <D.45414>:
  <D.45407>:
  <D.45400>:
  <D.45393>:
  <D.45387>:
  <D.45385>:
  <D.45379>:
  <D.45373>:
  <D.45362>:
  <D.45353>:
  attr = attr->a_next;
  <D.38396>:
  if (attr != 0B) goto <D.38395>; else goto <D.38397>;
  <D.38397>:
  D.45323 = session->channel;
  switch_channel_set_variable_var_check (D.45323, "has_t38", "true", 1);
  D.45323 = session->channel;
  switch_channel_set_private (D.45323, "t38_options", t38_options);
  D.45323 = session->channel;
  switch_channel_set_app_flag_key ("T38", D.45323, 2);
  D.45323 = session->channel;
  switch_channel_execute_on (D.45323, "sip_execute_on_image");
  D.45323 = session->channel;
  switch_channel_api_on (D.45323, "sip_api_on_image");
  D.45418 = t38_options;
  goto <D.45419>;
  <D.45419>:
  return D.45418;
}



;; Function switch_safe_atoi (switch_safe_atoi)

switch_safe_atoi (const char * nptr, int dft)
{
  int iftmp.100;
  int D.45420;

  if (nptr != 0B) goto <D.45422>; else goto <D.45423>;
  <D.45422>:
  iftmp.100 = atoi (nptr);
  goto <D.45424>;
  <D.45423>:
  iftmp.100 = dft;
  <D.45424>:
  D.45420 = iftmp.100;
  goto <D.45425>;
  <D.45425>:
  return D.45420;
}



;; Function greedy_sort (greedy_sort)

greedy_sort (struct switch_media_handle_t * smh, struct matches * matches, int m_idx, const struct switch_codec_implementation_t * * codec_array, int total_codecs)
{
  const struct switch_codec_implementation_t * imp;
  struct matches mtmp[30];
  int g;
  int f;
  int j;
  _Bool D.45443;
  _Bool D.45442;
  _Bool D.45441;
  int D.45440;
  struct switch_core_media_params_t * D.45439;
  struct matches * D.45438;
  unsigned int D.45437;
  unsigned int f.103;
  const struct switch_codec_implementation_t * D.45433;
  const struct switch_codec_implementation_t * * D.45432;
  unsigned int D.45431;
  unsigned int g.102;
  struct matches * D.45429;
  struct matches * D.45428;
  unsigned int D.45427;
  unsigned int j.101;

  j = 0;
  f = 0;
  mtmp = {};
  j = 0;
  goto <D.38927>;
  <D.38926>:
  j.101 = (unsigned int) j;
  D.45427 = j.101 * 16;
  D.45428 = &mtmp + D.45427;
  j.101 = (unsigned int) j;
  D.45427 = j.101 * 16;
  D.45429 = matches + D.45427;
  *D.45428 = *D.45429;
  j = j + 1;
  <D.38927>:
  if (j < m_idx) goto <D.38926>; else goto <D.38928>;
  <D.38928>:
  g = 0;
  goto <D.38934>;
  <D.38933>:
  g.102 = (unsigned int) g;
  D.45431 = g.102 * 4;
  D.45432 = codec_array + D.45431;
  imp = *D.45432;
  j = 0;
  goto <D.38931>;
  <D.38930>:
  D.45433 = mtmp[j].imp;
  if (D.45433 == imp) goto <D.45434>; else goto <D.45435>;
  <D.45434>:
  f.103 = (unsigned int) f;
  D.45437 = f.103 * 16;
  D.45438 = matches + D.45437;
  j.101 = (unsigned int) j;
  D.45427 = j.101 * 16;
  D.45428 = &mtmp + D.45427;
  *D.45438 = *D.45428;
  f = f + 1;
  <D.45435>:
  j = j + 1;
  <D.38931>:
  if (j < m_idx) goto <D.38930>; else goto <D.38932>;
  <D.38932>:
  g = g + 1;
  <D.38934>:
  D.45439 = smh->mparams;
  D.45440 = D.45439->num_codecs;
  D.45441 = D.45440 > g;
  D.45442 = g < total_codecs;
  D.45443 = D.45441 && D.45442;
  if (D.45443 != 0) goto <D.38933>; else goto <D.38935>;
  <D.38935>:
  return;
}



;; Function switch_core_codec_ready (switch_core_codec_ready)

switch_core_codec_ready (struct switch_codec_t * codec)
{
  const struct switch_codec_implementation_t * D.45456;
  struct switch_codec_interface_t * D.45454;
  struct switch_mutex_t * D.45452;
  uint32_t D.45450;
  uint32_t D.45449;
  int iftmp.104;
  switch_bool_t D.45444;

  if (codec != 0B) goto <D.45448>; else goto <D.45446>;
  <D.45448>:
  D.45449 = codec->flags;
  D.45450 = D.45449 & 256;
  if (D.45450 != 0) goto <D.45451>; else goto <D.45446>;
  <D.45451>:
  D.45452 = codec->mutex;
  if (D.45452 != 0B) goto <D.45453>; else goto <D.45446>;
  <D.45453>:
  D.45454 = codec->codec_interface;
  if (D.45454 != 0B) goto <D.45455>; else goto <D.45446>;
  <D.45455>:
  D.45456 = codec->implementation;
  if (D.45456 != 0B) goto <D.45457>; else goto <D.45446>;
  <D.45457>:
  iftmp.104 = 1;
  goto <D.45447>;
  <D.45446>:
  iftmp.104 = 0;
  <D.45447>:
  D.45444 = (switch_bool_t) iftmp.104;
  goto <D.45458>;
  <D.45458>:
  return D.45444;
}



;; Function check_ice (check_ice)

check_ice (struct switch_media_handle_t * smh, switch_media_type_t type, struct sdp_session_t * sdp, struct sdp_media_t * m)
{
  size_t __s2_len;
  size_t __s1_len;
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
  switch_call_direction_t D.45836;
  switch_core_media_ice_type_t iftmp.126;
  char * iftmp.125;
  char * iftmp.124;
  int D.38904;
  char * iftmp.123;
  unsigned int D.45813;
  unsigned int interval.122;
  switch_bool_t D.45810;
  int8_t D.45809;
  int D.45808;
  char * iftmp.121;
  int D.45801;
  int D.45800;
  _Bool D.45797;
  _Bool D.45796;
  _Bool D.45795;
  char[27] * iftmp.120;
  struct switch_core_media_params_t * D.45789;
  char * iftmp.119;
  char[25] * iftmp.118;
  struct ice_t * D.45776;
  switch_call_direction_t D.45772;
  switch_core_media_ice_type_t iftmp.117;
  char * D.45770;
  char * D.45769;
  char * iftmp.116;
  uint8_t D.45760;
  uint32_t D.45757;
  _Bool D.45754;
  _Bool D.45753;
  _Bool D.45752;
  char * D.45751;
  char * iftmp.115;
  char * D.45744;
  int D.45743;
  switch_port_t D.45740;
  char * D.45739;
  char * D.45738;
  int D.45737;
  char * iftmp.114;
  char * D.45732;
  switch_port_t D.45729;
  char * D.45726;
  int D.45725;
  char * D.45724;
  int D.45722;
  char * D.45721;
  uint8_t D.45716;
  int D.45715;
  char * iftmp.113;
  char * iftmp.112;
  int D.45694;
  switch_port_t D.45693;
  char * D.45692;
  char * iftmp.111;
  const void * restrict D.45687;
  unsigned int D.45686;
  unsigned int D.45685;
  const void * restrict D.45684;
  void * restrict D.45683;
  unsigned int D.45682;
  unsigned int D.45681;
  unsigned int D.45680;
  void * restrict D.45679;
  struct icand_t * D.45678;
  _Bool D.45675;
  _Bool D.45674;
  _Bool D.45673;
  char * iftmp.110;
  char * iftmp.109;
  char * iftmp.108;
  uint8_t D.45640;
  uint8_t D.45639;
  switch_bool_t D.45636;
  char * D.45635;
  switch_port_t D.45632;
  int D.45629;
  char * iftmp.107;
  uint8_t D.45622;
  uint8_t D.45621;
  switch_bool_t D.45618;
  char * D.45617;
  switch_port_t D.45614;
  int D.45611;
  uint8_t D.45606;
  uint8_t D.45605;
  char * D.45601;
  int D.45598;
  short unsigned int D.45596;
  int D.45595;
  int D.45592;
  char * D.45590;
  int D.45587;
  char * D.45585;
  char * D.45584;
  int D.45583;
  int D.45580;
  char * D.45579;
  short unsigned int D.45578;
  int D.45577;
  char * D.45576;
  uint32_t D.45575;
  long int D.45574;
  char * D.45573;
  char * D.45572;
  int D.45571;
  char * D.45570;
  char * D.45569;
  char * iftmp.106;
  char * iftmp.105;
  switch_bool_t D.45559;
  char * D.45558;
  int D.45556;
  int D.45553;
  char * D.45552;
  char * D.45551;
  char * D.45550;
  char * D.45549;
  int D.45548;
  char * D.45547;
  int D.45546;
  char * D.45545;
  int D.45544;
  unsigned int D.45540;
  const char * D.45537;
  int D.45536;
  int D.45533;
  int D.45530;
  switch_port_t D.45528;
  struct payload_map_t * D.45527;
  int D.45524;
  struct switch_rtp_t * D.45519;
  unsigned int D.45518;
  long int D.45517;
  int D.45514;
  uint32_t D.45512;
  char[192] * D.45509;
  char * D.45506;
  char * D.45505;
  int D.45503;
  int D.45501;
  int D.45499;
  int D.45497;
  char * D.45493;
  int D.45490;
  char * D.45488;
  int D.45485;
  char * D.45483;
  const char * D.45482;
  int D.45479;
  int D.45476;
  const char * D.45475;
  uint32_t D.45469;
  struct switch_channel_t * D.45468;
  struct switch_core_session_t * D.45467;
  int D.45464;
  int D.45461;
  unsigned int D.45460;
  struct switch_rtp_engine_t[2] * D.45459;

  D.45459 = &smh->engines;
  D.45460 = type * 11416;
  engine = D.45459 + D.45460;
  i = 0;
  got_rtcp_mux = 0;
  D.45461 = engine->ice_in.chosen[0];
  if (D.45461 != 0) goto <D.45462>; else goto <D.45463>;
  <D.45462>:
  D.45464 = engine->ice_in.chosen[1];
  if (D.45464 != 0) goto <D.45465>; else goto <D.45466>;
  <D.45465>:
  D.45467 = smh->session;
  D.45468 = D.45467->channel;
  D.45469 = switch_channel_test_flag (D.45468, 103);
  if (D.45469 == 0) goto <D.45470>; else goto <D.45471>;
  <D.45470>:
  goto <D.45840>;
  <D.45471>:
  <D.45466>:
  <D.45463>:
  engine->ice_in.chosen[0] = 0;
  engine->ice_in.chosen[1] = 0;
  engine->ice_in.cand_idx = 0;
  if (m != 0B) goto <D.45472>; else goto <D.45473>;
  <D.45472>:
  attr = m->m_attributes;
  goto <D.45474>;
  <D.45473>:
  attr = sdp->sdp_attributes;
  <D.45474>:
  goto <D.38878>;
  <D.38877>:
  argc = 0;
  j = 0;
  cid = 0;
  D.45475 = attr->a_name;
  D.45476 = _zstr (D.45475);
  if (D.45476 != 0) goto <D.45477>; else goto <D.45478>;
  <D.45477>:
  // predicted unlikely by continue predictor.
  goto <D.38865>;
  <D.45478>:
  D.45475 = attr->a_name;
  D.45479 = strcasecmp (D.45475, "ice-ufrag");
  if (D.45479 == 0) goto <D.45480>; else goto <D.45481>;
  <D.45480>:
  D.45467 = smh->session;
  D.45482 = attr->a_value;
  D.45483 = switch_core_perform_session_strdup (D.45467, D.45482, "src/switch_core_media.c", &__func__, 2503);
  engine->ice_in.ufrag = D.45483;
  goto <D.45484>;
  <D.45481>:
  D.45475 = attr->a_name;
  D.45485 = strcasecmp (D.45475, "ice-pwd");
  if (D.45485 == 0) goto <D.45486>; else goto <D.45487>;
  <D.45486>:
  D.45467 = smh->session;
  D.45482 = attr->a_value;
  D.45488 = switch_core_perform_session_strdup (D.45467, D.45482, "src/switch_core_media.c", &__func__, 2505);
  engine->ice_in.pwd = D.45488;
  goto <D.45489>;
  <D.45487>:
  D.45475 = attr->a_name;
  D.45490 = strcasecmp (D.45475, "ice-options");
  if (D.45490 == 0) goto <D.45491>; else goto <D.45492>;
  <D.45491>:
  D.45467 = smh->session;
  D.45482 = attr->a_value;
  D.45493 = switch_core_perform_session_strdup (D.45467, D.45482, "src/switch_core_media.c", &__func__, 2507);
  engine->ice_in.options = D.45493;
  goto <D.45494>;
  <D.45492>:
  D.45497 = switch_rtp_has_dtls ();
  if (D.45497 != 0) goto <D.45498>; else goto <D.45495>;
  <D.45498>:
  D.45467 = smh->session;
  D.45499 = dtls_ok (D.45467);
  if (D.45499 != 0) goto <D.45500>; else goto <D.45495>;
  <D.45500>:
  D.45475 = attr->a_name;
  D.45501 = strcasecmp (D.45475, "fingerprint");
  if (D.45501 == 0) goto <D.45502>; else goto <D.45495>;
  <D.45502>:
  D.45482 = attr->a_value;
  D.45503 = _zstr (D.45482);
  if (D.45503 == 0) goto <D.45504>; else goto <D.45495>;
  <D.45504>:
  D.45467 = smh->session;
  D.45482 = attr->a_value;
  D.45505 = switch_core_perform_session_strdup (D.45467, D.45482, "src/switch_core_media.c", &__func__, 2512);
  engine->remote_dtls_fingerprint.type = D.45505;
  D.45506 = engine->remote_dtls_fingerprint.type;
  p = __builtin_strchr (D.45506, 32);
  if (p != 0B) goto <D.45507>; else goto <D.45508>;
  <D.45507>:
  *p = 0;
  p = p + 1;
  D.45509 = &engine->local_dtls_fingerprint.str;
  switch_copy_string (D.45509, p, 192);
  <D.45508>:
  generate_local_fingerprint (smh, type);
  D.45467 = smh->session;
  D.45468 = D.45467->channel;
  switch_channel_set_flag_value (D.45468, 109, 1);
  goto <D.45496>;
  <D.45495>:
  D.45512 = engine->remote_ssrc;
  if (D.45512 == 0) goto <D.45513>; else goto <D.45510>;
  <D.45513>:
  D.45475 = attr->a_name;
  D.45514 = strcasecmp (D.45475, "ssrc");
  if (D.45514 == 0) goto <D.45515>; else goto <D.45510>;
  <D.45515>:
  D.45482 = attr->a_value;
  if (D.45482 != 0B) goto <D.45516>; else goto <D.45510>;
  <D.45516>:
  D.45482 = attr->a_value;
  D.45517 = atol (D.45482);
  D.45518 = (unsigned int) D.45517;
  engine->remote_ssrc = D.45518;
  D.45519 = engine->rtp_session;
  if (D.45519 != 0B) goto <D.45520>; else goto <D.45521>;
  <D.45520>:
  D.45512 = engine->remote_ssrc;
  if (D.45512 != 0) goto <D.45522>; else goto <D.45523>;
  <D.45522>:
  D.45519 = engine->rtp_session;
  D.45512 = engine->remote_ssrc;
  switch_rtp_set_remote_ssrc (D.45519, D.45512);
  <D.45523>:
  <D.45521>:
  goto <D.45511>;
  <D.45510>:
  D.45475 = attr->a_name;
  D.45524 = strcasecmp (D.45475, "rtcp-mux");
  if (D.45524 == 0) goto <D.45525>; else goto <D.45526>;
  <D.45525>:
  engine->rtcp_mux = 1;
  D.45527 = engine->cur_payload_map;
  D.45528 = D.45527->remote_sdp_port;
  engine->remote_rtcp_port = D.45528;
  got_rtcp_mux = got_rtcp_mux + 1;
  goto <D.45529>;
  <D.45526>:
  D.45475 = attr->a_name;
  D.45530 = strcasecmp (D.45475, "candidate");
  if (D.45530 == 0) goto <D.45531>; else goto <D.45532>;
  <D.45531>:
  D.45467 = smh->session;
  D.45468 = D.45467->channel;
  switch_channel_set_flag_value (D.45468, 108, 1);
  D.45533 = engine->cand_acl_count;
  if (D.45533 == 0) goto <D.45534>; else goto <D.45535>;
  <D.45534>:
  D.45533 = engine->cand_acl_count;
  engine->cand_acl[D.45533] = "wan.auto";
  D.45536 = D.45533 + 1;
  engine->cand_acl_count = D.45536;
  D.45467 = smh->session;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2548, D.45467, 4, "NO candidate ACL defined, Defaulting to wan.auto\n");
  <D.45535>:
  D.45482 = attr->a_value;
  D.45537 = switch_stristr (" udp ", D.45482);
  if (D.45537 == 0B) goto <D.45538>; else goto <D.45539>;
  <D.45538>:
  // predicted unlikely by continue predictor.
  goto <D.38865>;
  <D.45539>:
  D.45467 = smh->session;
  D.45482 = attr->a_value;
  data = switch_core_perform_session_strdup (D.45467, D.45482, "src/switch_core_media.c", &__func__, 2556);
  D.45540 = switch_separate_string (data, 32, &fields, 15);
  argc = (int) D.45540;
  if (argc <= 4) goto <D.45541>; else goto <D.45543>;
  <D.45543>:
  D.45544 = engine->ice_in.cand_idx;
  if (D.45544 > 48) goto <D.45541>; else goto <D.45542>;
  <D.45541>:
  D.45467 = smh->session;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2561, D.45467, 4, "Invalid data\n");
  // predicted unlikely by continue predictor.
  goto <D.38865>;
  <D.45542>:
  D.45545 = fields[1];
  D.45546 = atoi (D.45545);
  cid = D.45546 + -1;
  i = 0;
  goto <D.38869>;
  <D.38868>:
  D.45467 = smh->session;
  D.45547 = fields[i];
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2569, D.45467, 101, "CAND %d [%s]\n", i, D.45547);
  i = i + 1;
  <D.38869>:
  if (i < argc) goto <D.38868>; else goto <D.38870>;
  <D.38870>:
  D.45467 = smh->session;
  D.45548 = cid + 1;
  D.45549 = fields[2];
  D.45550 = fields[7];
  D.45551 = fields[4];
  D.45552 = fields[5];
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2572, D.45467, 7, "Checking Candidate cid: %d proto: %s type: %s addr: %s:%s\n", D.45548, D.45549, D.45550, D.45551, D.45552);
  D.45544 = engine->ice_in.cand_idx;
  D.45553 = D.45544 + 1;
  engine->ice_in.cand_idx = D.45553;
  i = 0;
  goto <D.38876>;
  <D.38875>:
  D.45556 = engine->ice_in.chosen[cid];
  if (D.45556 == 0) goto <D.45557>; else goto <D.45554>;
  <D.45557>:
  D.45551 = fields[4];
  D.45558 = engine->cand_acl[i];
  D.45559 = switch_check_network_list_ip_token (D.45551, D.45558, 0B);
  if (D.45559 != 0) goto <D.45560>; else goto <D.45554>;
  <D.45560>:
  D.45544 = engine->ice_in.cand_idx;
  engine->ice_in.chosen[cid] = D.45544;
  D.45467 = smh->session;
  if (type == 1) goto <D.45562>; else goto <D.45563>;
  <D.45562>:
  iftmp.105 = "video";
  goto <D.45564>;
  <D.45563>:
  iftmp.105 = "audio";
  <D.45564>:
  D.45548 = cid + 1;
  D.45549 = fields[2];
  D.45550 = fields[7];
  D.45551 = fields[4];
  D.45552 = fields[5];
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2581, D.45467, 5, "Choose %s Candidate cid: %d proto: %s type: %s addr: %s:%s\n", iftmp.105, D.45548, D.45549, D.45550, D.45551, D.45552);
  goto <D.45555>;
  <D.45554>:
  D.45467 = smh->session;
  if (type == 1) goto <D.45566>; else goto <D.45567>;
  <D.45566>:
  iftmp.106 = "video";
  goto <D.45568>;
  <D.45567>:
  iftmp.106 = "audio";
  <D.45568>:
  D.45548 = cid + 1;
  D.45549 = fields[2];
  D.45550 = fields[7];
  D.45551 = fields[4];
  D.45552 = fields[5];
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2586, D.45467, 5, "Save %s Candidate cid: %d proto: %s type: %s addr: %s:%s\n", iftmp.106, D.45548, D.45549, D.45550, D.45551, D.45552);
  <D.45555>:
  D.45544 = engine->ice_in.cand_idx;
  D.45467 = smh->session;
  D.45569 = fields[0];
  D.45570 = switch_core_perform_session_strdup (D.45467, D.45569, "src/switch_core_media.c", &__func__, 2592);
  engine->ice_in.cands[D.45544][cid].foundation = D.45570;
  D.45544 = engine->ice_in.cand_idx;
  D.45545 = fields[1];
  D.45571 = atoi (D.45545);
  engine->ice_in.cands[D.45544][cid].component_id = D.45571;
  D.45544 = engine->ice_in.cand_idx;
  D.45467 = smh->session;
  D.45549 = fields[2];
  D.45572 = switch_core_perform_session_strdup (D.45467, D.45549, "src/switch_core_media.c", &__func__, 2594);
  engine->ice_in.cands[D.45544][cid].transport = D.45572;
  D.45544 = engine->ice_in.cand_idx;
  D.45573 = fields[3];
  D.45574 = atol (D.45573);
  D.45575 = (uint32_t) D.45574;
  engine->ice_in.cands[D.45544][cid].priority = D.45575;
  D.45544 = engine->ice_in.cand_idx;
  D.45467 = smh->session;
  D.45551 = fields[4];
  D.45576 = switch_core_perform_session_strdup (D.45467, D.45551, "src/switch_core_media.c", &__func__, 2596);
  engine->ice_in.cands[D.45544][cid].con_addr = D.45576;
  D.45544 = engine->ice_in.cand_idx;
  D.45552 = fields[5];
  D.45577 = atoi (D.45552);
  D.45578 = (short unsigned int) D.45577;
  engine->ice_in.cands[D.45544][cid].con_port = D.45578;
  j = 6;
  goto <D.38872>;
  <D.38871>:
  D.45579 = fields[j];
  D.45580 = strcasecmp (D.45579, "typ");
  if (D.45580 == 0) goto <D.45581>; else goto <D.45582>;
  <D.45581>:
  D.45544 = engine->ice_in.cand_idx;
  D.45467 = smh->session;
  D.45583 = j + 1;
  D.45584 = fields[D.45583];
  D.45585 = switch_core_perform_session_strdup (D.45467, D.45584, "src/switch_core_media.c", &__func__, 2604);
  engine->ice_in.cands[D.45544][cid].cand_type = D.45585;
  goto <D.45586>;
  <D.45582>:
  D.45579 = fields[j];
  D.45587 = strcasecmp (D.45579, "raddr");
  if (D.45587 == 0) goto <D.45588>; else goto <D.45589>;
  <D.45588>:
  D.45544 = engine->ice_in.cand_idx;
  D.45467 = smh->session;
  D.45583 = j + 1;
  D.45584 = fields[D.45583];
  D.45590 = switch_core_perform_session_strdup (D.45467, D.45584, "src/switch_core_media.c", &__func__, 2606);
  engine->ice_in.cands[D.45544][cid].raddr = D.45590;
  goto <D.45591>;
  <D.45589>:
  D.45579 = fields[j];
  D.45592 = strcasecmp (D.45579, "rport");
  if (D.45592 == 0) goto <D.45593>; else goto <D.45594>;
  <D.45593>:
  D.45544 = engine->ice_in.cand_idx;
  D.45583 = j + 1;
  D.45584 = fields[D.45583];
  D.45595 = atoi (D.45584);
  D.45596 = (short unsigned int) D.45595;
  engine->ice_in.cands[D.45544][cid].rport = D.45596;
  goto <D.45597>;
  <D.45594>:
  D.45579 = fields[j];
  D.45598 = strcasecmp (D.45579, "generation");
  if (D.45598 == 0) goto <D.45599>; else goto <D.45600>;
  <D.45599>:
  D.45544 = engine->ice_in.cand_idx;
  D.45467 = smh->session;
  D.45583 = j + 1;
  D.45584 = fields[D.45583];
  D.45601 = switch_core_perform_session_strdup (D.45467, D.45584, "src/switch_core_media.c", &__func__, 2610);
  engine->ice_in.cands[D.45544][cid].generation = D.45601;
  <D.45600>:
  <D.45597>:
  <D.45591>:
  <D.45586>:
  j = j + 2;
  <D.38872>:
  if (j < argc) goto <D.45602>; else goto <D.38873>;
  <D.45602>:
  D.45583 = j + 1;
  D.45584 = fields[D.45583];
  if (D.45584 != 0B) goto <D.38871>; else goto <D.38873>;
  <D.38873>:
  D.45556 = engine->ice_in.chosen[cid];
  if (D.45556 != 0) goto <D.45603>; else goto <D.45604>;
  <D.45603>:
  D.45556 = engine->ice_in.chosen[cid];
  D.45605 = engine->ice_in.cands[D.45556][cid].ready;
  D.45606 = D.45605 + 1;
  engine->ice_in.cands[D.45556][cid].ready = D.45606;
  <D.45604>:
  goto <D.38874>;
  i = i + 1;
  <D.38876>:
  D.45533 = engine->cand_acl_count;
  if (D.45533 > i) goto <D.38875>; else goto <D.38874>;
  <D.38874>:
  <D.45532>:
  <D.45529>:
  <D.45511>:
  <D.45496>:
  <D.45494>:
  <D.45489>:
  <D.45484>:
  <D.38865>:
  attr = attr->a_next;
  <D.38878>:
  if (attr != 0B) goto <D.38877>; else goto <D.38879>;
  <D.38879>:
  D.45461 = engine->ice_in.chosen[0];
  if (D.45461 == 0) goto <D.45607>; else goto <D.45608>;
  <D.45608>:
  D.45464 = engine->ice_in.chosen[1];
  if (D.45464 == 0) goto <D.45607>; else goto <D.38882>;
  <D.45607>:
  i = 0;
  goto <D.38881>;
  <D.38880>:
  D.45461 = engine->ice_in.chosen[0];
  if (D.45461 == 0) goto <D.45609>; else goto <D.45610>;
  <D.45609>:
  D.45611 = engine->ice_in.cands[i][0].component_id;
  if (D.45611 == 1) goto <D.45612>; else goto <D.45613>;
  <D.45612>:
  D.45614 = engine->ice_in.cands[i][0].rport;
  if (D.45614 == 0) goto <D.45615>; else goto <D.45616>;
  <D.45615>:
  D.45617 = engine->ice_in.cands[i][0].con_addr;
  D.45618 = switch_check_network_list_ip_token (D.45617, "localnet.auto", 0B);
  if (D.45618 != 0) goto <D.45619>; else goto <D.45620>;
  <D.45619>:
  engine->ice_in.chosen[0] = i;
  D.45461 = engine->ice_in.chosen[0];
  D.45621 = engine->ice_in.cands[D.45461][0].ready;
  D.45622 = D.45621 + 1;
  engine->ice_in.cands[D.45461][0].ready = D.45622;
  D.45467 = smh->session;
  if (type == 1) goto <D.45624>; else goto <D.45625>;
  <D.45624>:
  iftmp.107 = "video";
  goto <D.45626>;
  <D.45625>:
  iftmp.107 = "audio";
  <D.45626>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2636, D.45467, 5, "No %s RTP candidate found; defaulting to the first local one.\n", iftmp.107);
  <D.45620>:
  <D.45616>:
  <D.45613>:
  <D.45610>:
  D.45464 = engine->ice_in.chosen[1];
  if (D.45464 == 0) goto <D.45627>; else goto <D.45628>;
  <D.45627>:
  D.45629 = engine->ice_in.cands[i][1].component_id;
  if (D.45629 == 2) goto <D.45630>; else goto <D.45631>;
  <D.45630>:
  D.45632 = engine->ice_in.cands[i][1].rport;
  if (D.45632 == 0) goto <D.45633>; else goto <D.45634>;
  <D.45633>:
  D.45635 = engine->ice_in.cands[i][1].con_addr;
  D.45636 = switch_check_network_list_ip_token (D.45635, "localnet.auto", 0B);
  if (D.45636 != 0) goto <D.45637>; else goto <D.45638>;
  <D.45637>:
  engine->ice_in.chosen[1] = i;
  D.45464 = engine->ice_in.chosen[1];
  D.45639 = engine->ice_in.cands[D.45464][1].ready;
  D.45640 = D.45639 + 1;
  engine->ice_in.cands[D.45464][1].ready = D.45640;
  D.45467 = smh->session;
  if (type == 1) goto <D.45642>; else goto <D.45643>;
  <D.45642>:
  iftmp.108 = "video";
  goto <D.45644>;
  <D.45643>:
  iftmp.108 = "audio";
  <D.45644>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2643, D.45467, 5, "No %s RTCP candidate found; defaulting to the first local one.\n", iftmp.108);
  <D.45638>:
  <D.45634>:
  <D.45631>:
  <D.45628>:
  i = i + 1;
  <D.38881>:
  D.45544 = engine->ice_in.cand_idx;
  if (D.45544 >= i) goto <D.45645>; else goto <D.38882>;
  <D.45645>:
  D.45461 = engine->ice_in.chosen[0];
  if (D.45461 == 0) goto <D.38880>; else goto <D.45646>;
  <D.45646>:
  D.45464 = engine->ice_in.chosen[1];
  if (D.45464 == 0) goto <D.38880>; else goto <D.38882>;
  <D.38882>:
  D.45461 = engine->ice_in.chosen[0];
  if (D.45461 == 0) goto <D.45647>; else goto <D.45648>;
  <D.45648>:
  D.45464 = engine->ice_in.chosen[1];
  if (D.45464 == 0) goto <D.45647>; else goto <D.38885>;
  <D.45647>:
  i = 0;
  goto <D.38884>;
  <D.38883>:
  D.45461 = engine->ice_in.chosen[0];
  if (D.45461 == 0) goto <D.45649>; else goto <D.45650>;
  <D.45649>:
  D.45611 = engine->ice_in.cands[i][0].component_id;
  if (D.45611 == 1) goto <D.45651>; else goto <D.45652>;
  <D.45651>:
  D.45614 = engine->ice_in.cands[i][0].rport;
  if (D.45614 != 0) goto <D.45653>; else goto <D.45654>;
  <D.45653>:
  engine->ice_in.chosen[0] = i;
  D.45461 = engine->ice_in.chosen[0];
  D.45621 = engine->ice_in.cands[D.45461][0].ready;
  D.45622 = D.45621 + 1;
  engine->ice_in.cands[D.45461][0].ready = D.45622;
  D.45467 = smh->session;
  if (type == 1) goto <D.45656>; else goto <D.45657>;
  <D.45656>:
  iftmp.109 = "video";
  goto <D.45658>;
  <D.45657>:
  iftmp.109 = "audio";
  <D.45658>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2655, D.45467, 5, "No %s RTP candidate found; defaulting to the first srflx one.\n", iftmp.109);
  <D.45654>:
  <D.45652>:
  <D.45650>:
  D.45464 = engine->ice_in.chosen[1];
  if (D.45464 == 0) goto <D.45659>; else goto <D.45660>;
  <D.45659>:
  D.45629 = engine->ice_in.cands[i][1].component_id;
  if (D.45629 == 2) goto <D.45661>; else goto <D.45662>;
  <D.45661>:
  D.45632 = engine->ice_in.cands[i][1].rport;
  if (D.45632 != 0) goto <D.45663>; else goto <D.45664>;
  <D.45663>:
  engine->ice_in.chosen[1] = i;
  D.45464 = engine->ice_in.chosen[1];
  D.45639 = engine->ice_in.cands[D.45464][1].ready;
  D.45640 = D.45639 + 1;
  engine->ice_in.cands[D.45464][1].ready = D.45640;
  D.45467 = smh->session;
  if (type == 1) goto <D.45666>; else goto <D.45667>;
  <D.45666>:
  iftmp.110 = "video";
  goto <D.45668>;
  <D.45667>:
  iftmp.110 = "audio";
  <D.45668>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2661, D.45467, 5, "No %s RTCP candidate found; defaulting to the first srflx one.\n", iftmp.110);
  <D.45664>:
  <D.45662>:
  <D.45660>:
  i = i + 1;
  <D.38884>:
  D.45544 = engine->ice_in.cand_idx;
  if (D.45544 >= i) goto <D.45669>; else goto <D.38885>;
  <D.45669>:
  D.45461 = engine->ice_in.chosen[0];
  if (D.45461 == 0) goto <D.38883>; else goto <D.45670>;
  <D.45670>:
  D.45464 = engine->ice_in.chosen[1];
  if (D.45464 == 0) goto <D.38883>; else goto <D.38885>;
  <D.38885>:
  D.45461 = engine->ice_in.chosen[0];
  if (D.45461 != 0) goto <D.45671>; else goto <D.45672>;
  <D.45671>:
  D.45464 = engine->ice_in.chosen[1];
  D.45673 = D.45464 == 0;
  D.45674 = got_rtcp_mux != 0;
  D.45675 = D.45673 && D.45674;
  if (D.45675 != 0) goto <D.45676>; else goto <D.45677>;
  <D.45676>:
  D.45461 = engine->ice_in.chosen[0];
  engine->ice_in.chosen[1] = D.45461;
  D.45678 = &engine->ice_in.cands[0][0];
  D.45679 = (void * restrict) D.45678;
  D.45464 = engine->ice_in.chosen[1];
  D.45680 = (unsigned int) D.45464;
  D.45681 = D.45680 * 88;
  D.45682 = D.45681 + 44;
  D.45683 = D.45679 + D.45682;
  D.45678 = &engine->ice_in.cands[0][0];
  D.45684 = (const void * restrict) D.45678;
  D.45461 = engine->ice_in.chosen[0];
  D.45685 = (unsigned int) D.45461;
  D.45686 = D.45685 * 88;
  D.45687 = D.45684 + D.45686;
  memcpy (D.45683, D.45687, 44);
  D.45464 = engine->ice_in.chosen[1];
  D.45639 = engine->ice_in.cands[D.45464][1].ready;
  D.45640 = D.45639 + 1;
  engine->ice_in.cands[D.45464][1].ready = D.45640;
  D.45467 = smh->session;
  if (type == 1) goto <D.45689>; else goto <D.45690>;
  <D.45689>:
  iftmp.111 = "video";
  goto <D.45691>;
  <D.45690>:
  iftmp.111 = "audio";
  <D.45691>:
  D.45464 = engine->ice_in.chosen[1];
  D.45692 = engine->ice_in.cands[D.45464][1].con_addr;
  D.45464 = engine->ice_in.chosen[1];
  D.45693 = engine->ice_in.cands[D.45464][1].con_port;
  D.45694 = (int) D.45693;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2675, D.45467, 5, "No %s RTCP candidate found; defaulting to the same as RTP [%s:%d]\n", iftmp.111, D.45692, D.45694);
  <D.45677>:
  <D.45672>:
  D.45461 = engine->ice_in.chosen[0];
  if (D.45461 == 0) goto <D.45695>; else goto <D.45696>;
  <D.45696>:
  D.45464 = engine->ice_in.chosen[1];
  if (D.45464 == 0) goto <D.45695>; else goto <D.38888>;
  <D.45695>:
  i = 0;
  goto <D.38887>;
  <D.38886>:
  D.45461 = engine->ice_in.chosen[0];
  if (D.45461 == 0) goto <D.45697>; else goto <D.45698>;
  <D.45697>:
  D.45611 = engine->ice_in.cands[i][0].component_id;
  if (D.45611 == 1) goto <D.45699>; else goto <D.45700>;
  <D.45699>:
  engine->ice_in.chosen[0] = i;
  D.45461 = engine->ice_in.chosen[0];
  D.45621 = engine->ice_in.cands[D.45461][0].ready;
  D.45622 = D.45621 + 1;
  engine->ice_in.cands[D.45461][0].ready = D.45622;
  D.45467 = smh->session;
  if (type == 1) goto <D.45702>; else goto <D.45703>;
  <D.45702>:
  iftmp.112 = "video";
  goto <D.45704>;
  <D.45703>:
  iftmp.112 = "audio";
  <D.45704>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2686, D.45467, 5, "No %s RTP candidate found; defaulting to the first one.\n", iftmp.112);
  <D.45700>:
  <D.45698>:
  D.45464 = engine->ice_in.chosen[1];
  if (D.45464 == 0) goto <D.45705>; else goto <D.45706>;
  <D.45705>:
  D.45629 = engine->ice_in.cands[i][1].component_id;
  if (D.45629 == 2) goto <D.45707>; else goto <D.45708>;
  <D.45707>:
  engine->ice_in.chosen[1] = i;
  D.45464 = engine->ice_in.chosen[1];
  D.45639 = engine->ice_in.cands[D.45464][1].ready;
  D.45640 = D.45639 + 1;
  engine->ice_in.cands[D.45464][1].ready = D.45640;
  D.45467 = smh->session;
  if (type == 1) goto <D.45710>; else goto <D.45711>;
  <D.45710>:
  iftmp.113 = "video";
  goto <D.45712>;
  <D.45711>:
  iftmp.113 = "audio";
  <D.45712>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2692, D.45467, 5, "No %s RTCP candidate found; defaulting to the first one.\n", iftmp.113);
  <D.45708>:
  <D.45706>:
  i = i + 1;
  <D.38887>:
  D.45544 = engine->ice_in.cand_idx;
  if (D.45544 >= i) goto <D.45713>; else goto <D.38888>;
  <D.45713>:
  D.45461 = engine->ice_in.chosen[0];
  if (D.45461 == 0) goto <D.38886>; else goto <D.45714>;
  <D.45714>:
  D.45464 = engine->ice_in.chosen[1];
  if (D.45464 == 0) goto <D.38886>; else goto <D.38888>;
  <D.38888>:
  i = 0;
  goto <D.38890>;
  <D.38889>:
  D.45715 = engine->ice_in.chosen[i];
  D.45716 = engine->ice_in.cands[D.45715][i].ready;
  if (D.45716 != 0) goto <D.45717>; else goto <D.45718>;
  <D.45717>:
  D.45721 = engine->ice_in.ufrag;
  D.45722 = _zstr (D.45721);
  if (D.45722 != 0) goto <D.45719>; else goto <D.45723>;
  <D.45723>:
  D.45724 = engine->ice_in.pwd;
  D.45725 = _zstr (D.45724);
  if (D.45725 != 0) goto <D.45719>; else goto <D.45720>;
  <D.45719>:
  D.45715 = engine->ice_in.chosen[i];
  engine->ice_in.cands[D.45715][i].ready = 0;
  <D.45720>:
  <D.45718>:
  i = i + 1;
  <D.38890>:
  if (i <= 1) goto <D.38889>; else goto <D.38891>;
  <D.38891>:
  D.45461 = engine->ice_in.chosen[0];
  D.45726 = engine->ice_in.cands[D.45461][0].con_addr;
  if (D.45726 != 0B) goto <D.45727>; else goto <D.45728>;
  <D.45727>:
  D.45461 = engine->ice_in.chosen[0];
  D.45729 = engine->ice_in.cands[D.45461][0].con_port;
  if (D.45729 != 0) goto <D.45730>; else goto <D.45731>;
  <D.45730>:
  tmp = "";
  D.45527 = engine->cur_payload_map;
  D.45467 = smh->session;
  D.45461 = engine->ice_in.chosen[0];
  D.45726 = engine->ice_in.cands[D.45461][0].con_addr;
  D.45732 = switch_core_perform_session_strdup (D.45467, D.45726, "src/switch_core_media.c", &__func__, 2709);
  D.45527->remote_sdp_ip = D.45732;
  D.45467 = smh->session;
  if (type == 1) goto <D.45734>; else goto <D.45735>;
  <D.45734>:
  iftmp.114 = "video";
  goto <D.45736>;
  <D.45735>:
  iftmp.114 = "audio";
  <D.45736>:
  D.45461 = engine->ice_in.chosen[0];
  D.45726 = engine->ice_in.cands[D.45461][0].con_addr;
  D.45461 = engine->ice_in.chosen[0];
  D.45729 = engine->ice_in.cands[D.45461][0].con_port;
  D.45737 = (int) D.45729;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2710, D.45467, 5, "setting remote %s ice addr to %s:%d based on candidate\n", iftmp.114, D.45726, D.45737);
  D.45461 = engine->ice_in.chosen[0];
  D.45621 = engine->ice_in.cands[D.45461][0].ready;
  D.45622 = D.45621 + 1;
  engine->ice_in.cands[D.45461][0].ready = D.45622;
  D.45461 = engine->ice_in.chosen[0];
  D.45729 = engine->ice_in.cands[D.45461][0].con_port;
  engine->remote_rtp_ice_port = D.45729;
  D.45467 = smh->session;
  D.45461 = engine->ice_in.chosen[0];
  D.45726 = engine->ice_in.cands[D.45461][0].con_addr;
  D.45738 = switch_core_perform_session_strdup (D.45467, D.45726, "src/switch_core_media.c", &__func__, 2716);
  engine->remote_rtp_ice_addr = D.45738;
  D.45527 = engine->cur_payload_map;
  D.45467 = smh->session;
  D.45461 = engine->ice_in.chosen[0];
  D.45726 = engine->ice_in.cands[D.45461][0].con_addr;
  D.45739 = switch_core_perform_session_strdup (D.45467, D.45726, "src/switch_core_media.c", &__func__, 2718);
  D.45527->remote_sdp_ip = D.45739;
  D.45527 = engine->cur_payload_map;
  D.45461 = engine->ice_in.chosen[0];
  D.45729 = engine->ice_in.cands[D.45461][0].con_port;
  D.45527->remote_sdp_port = D.45729;
  D.45740 = engine->remote_rtcp_port;
  if (D.45740 != 0) goto <D.45741>; else goto <D.45742>;
  <D.45741>:
  D.45527 = engine->cur_payload_map;
  D.45528 = D.45527->remote_sdp_port;
  engine->remote_rtcp_port = D.45528;
  <D.45742>:
  D.45527 = engine->cur_payload_map;
  D.45528 = D.45527->remote_sdp_port;
  D.45743 = (int) D.45528;
  switch_snprintf (&tmp, 80, "%d", D.45743);
  D.45467 = smh->session;
  D.45468 = D.45467->channel;
  D.45527 = engine->cur_payload_map;
  D.45744 = D.45527->remote_sdp_ip;
  switch_channel_set_variable_var_check (D.45468, "remote_media_ip", D.45744, 1);
  D.45467 = smh->session;
  D.45468 = D.45467->channel;
  switch_channel_set_variable_var_check (D.45468, "remote_media_port", &tmp, 1);
  <D.45731>:
  <D.45728>:
  D.45464 = engine->ice_in.chosen[1];
  D.45693 = engine->ice_in.cands[D.45464][1].con_port;
  if (D.45693 != 0) goto <D.45745>; else goto <D.45746>;
  <D.45745>:
  D.45467 = smh->session;
  if (type == 1) goto <D.45748>; else goto <D.45749>;
  <D.45748>:
  iftmp.115 = "video";
  goto <D.45750>;
  <D.45749>:
  iftmp.115 = "audio";
  <D.45750>:
  D.45464 = engine->ice_in.chosen[1];
  D.45692 = engine->ice_in.cands[D.45464][1].con_addr;
  D.45464 = engine->ice_in.chosen[1];
  D.45693 = engine->ice_in.cands[D.45464][1].con_port;
  D.45694 = (int) D.45693;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2730, D.45467, 5, "setting remote rtcp %s addr to %s:%d based on candidate\n", iftmp.115, D.45692, D.45694);
  D.45464 = engine->ice_in.chosen[1];
  D.45693 = engine->ice_in.cands[D.45464][1].con_port;
  engine->remote_rtcp_ice_port = D.45693;
  D.45467 = smh->session;
  D.45464 = engine->ice_in.chosen[1];
  D.45692 = engine->ice_in.cands[D.45464][1].con_addr;
  D.45751 = switch_core_perform_session_strdup (D.45467, D.45692, "src/switch_core_media.c", &__func__, 2734);
  engine->remote_rtcp_ice_addr = D.45751;
  D.45464 = engine->ice_in.chosen[1];
  D.45693 = engine->ice_in.cands[D.45464][1].con_port;
  engine->remote_rtcp_port = D.45693;
  <D.45746>:
  D.45752 = m != 0B;
  D.45753 = got_rtcp_mux == 0;
  D.45754 = D.45752 && D.45753;
  if (D.45754 != 0) goto <D.45755>; else goto <D.45756>;
  <D.45755>:
  engine->rtcp_mux = -1;
  <D.45756>:
  D.45467 = smh->session;
  D.45468 = D.45467->channel;
  D.45757 = switch_channel_test_flag (D.45468, 103);
  if (D.45757 != 0) goto <D.45758>; else goto <D.45759>;
  <D.45758>:
  D.45519 = engine->rtp_session;
  D.45760 = switch_rtp_ready (D.45519);
  if (D.45760 != 0) goto <D.45761>; else goto <D.45762>;
  <D.45761>:
  D.45461 = engine->ice_in.chosen[0];
  D.45621 = engine->ice_in.cands[D.45461][0].ready;
  if (D.45621 != 0) goto <D.45763>; else goto <D.45764>;
  <D.45763>:
  D.45467 = smh->session;
  if (type == 1) goto <D.45766>; else goto <D.45767>;
  <D.45766>:
  iftmp.116 = "video";
  goto <D.45768>;
  <D.45767>:
  iftmp.116 = "audio";
  <D.45768>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2749, D.45467, 6, "RE-Activating %s ICE\n", iftmp.116);
  D.45519 = engine->rtp_session;
  D.45721 = engine->ice_in.ufrag;
  D.45769 = engine->ice_out.ufrag;
  D.45770 = engine->ice_out.pwd;
  D.45724 = engine->ice_in.pwd;
  D.45467 = smh->session;
  D.45772 = switch_ice_direction (D.45467);
  if (D.45772 == 1) goto <D.45773>; else goto <D.45774>;
  <D.45773>:
  iftmp.117 = 2;
  goto <D.45775>;
  <D.45774>:
  iftmp.117 = 6;
  <D.45775>:
  D.45776 = &engine->ice_in;
  switch_rtp_activate_ice (D.45519, D.45721, D.45769, D.45770, D.45724, 0, iftmp.117, D.45776);
  <D.45764>:
  <D.45762>:
  D.45519 = engine->rtp_session;
  if (D.45519 != 0B) goto <D.45779>; else goto <D.45780>;
  <D.45779>:
  D.45467 = smh->session;
  D.45468 = D.45467->channel;
  if (type == 1) goto <D.45782>; else goto <D.45783>;
  <D.45782>:
  iftmp.118 = "rtcp_video_interval_msec";
  goto <D.45784>;
  <D.45783>:
  iftmp.118 = "rtcp_audio_interval_msec";
  <D.45784>:
  val = switch_channel_get_variable_dup (D.45468, iftmp.118, 1, -1);
  if (val != 0B) goto <D.45777>; else goto <D.45785>;
  <D.45785>:
  if (type == 1) goto <D.45787>; else goto <D.45788>;
  <D.45787>:
  D.45789 = smh->mparams;
  iftmp.119 = D.45789->rtcp_video_interval_msec;
  goto <D.45790>;
  <D.45788>:
  D.45789 = smh->mparams;
  iftmp.119 = D.45789->rtcp_audio_interval_msec;
  <D.45790>:
  val = iftmp.119;
  if (val != 0B) goto <D.45777>; else goto <D.45778>;
  <D.45777>:
  D.45467 = smh->session;
  D.45468 = D.45467->channel;
  if (type == 1) goto <D.45792>; else goto <D.45793>;
  <D.45792>:
  iftmp.120 = "rtp_remote_video_rtcp_port";
  goto <D.45794>;
  <D.45793>:
  iftmp.120 = "rtp_remote_audio_rtcp_port";
  <D.45794>:
  rport = switch_channel_get_variable_dup (D.45468, iftmp.120, 1, -1);
  remote_rtcp_port = engine->remote_rtcp_port;
  D.45795 = remote_rtcp_port == 0;
  D.45796 = rport != 0B;
  D.45797 = D.45795 && D.45796;
  if (D.45797 != 0) goto <D.45798>; else goto <D.45799>;
  <D.45798>:
  D.45800 = atoi (rport);
  remote_rtcp_port = (switch_port_t) D.45800;
  <D.45799>:
  D.45801 = strcasecmp (val, "passthru");
  if (D.45801 == 0) goto <D.45802>; else goto <D.45803>;
  <D.45802>:
  D.45467 = smh->session;
  if (type == 1) goto <D.45805>; else goto <D.45806>;
  <D.45805>:
  iftmp.121 = "video";
  goto <D.45807>;
  <D.45806>:
  iftmp.121 = "audio";
  <D.45807>:
  D.45808 = (int) remote_rtcp_port;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2787, D.45467, 6, "Activating %s RTCP PASSTHRU PORT %d\n", iftmp.121, D.45808);
  D.45519 = engine->rtp_session;
  D.45809 = engine->rtcp_mux;
  D.45810 = D.45809 > 0;
  switch_rtp_activate_rtcp (D.45519, -1, remote_rtcp_port, D.45810);
  goto <D.45811>;
  <D.45803>:
  interval = atoi (val);
  interval.122 = (unsigned int) interval;
  D.45813 = interval.122 + 4294967196;
  if (D.45813 > 499900) goto <D.45814>; else goto <D.45815>;
  <D.45814>:
  D.45467 = smh->session;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2793, D.45467, 3, "Invalid rtcp interval spec [%d] must be between 100 and 500000\n", interval);
  interval = 10000;
  <D.45815>:
  D.45467 = smh->session;
  if (type == 1) goto <D.45817>; else goto <D.45818>;
  <D.45817>:
  iftmp.123 = "video";
  goto <D.45819>;
  <D.45818>:
  iftmp.123 = "audio";
  <D.45819>:
  D.45808 = (int) remote_rtcp_port;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2798, D.45467, 6, "Activating %s RTCP PORT %d\n", iftmp.123, D.45808);
  D.45519 = engine->rtp_session;
  D.45809 = engine->rtcp_mux;
  D.45810 = D.45809 > 0;
  switch_rtp_activate_rtcp (D.45519, interval, remote_rtcp_port, D.45810);
  <D.45811>:
  <D.45778>:
  <D.45780>:
  D.45464 = engine->ice_in.chosen[1];
  D.45639 = engine->ice_in.cands[D.45464][1].ready;
  if (D.45639 != 0) goto <D.45820>; else goto <D.45821>;
  <D.45820>:
  D.45809 = engine->rtcp_mux;
  if (D.45809 > 0) goto <D.45824>; else goto <D.45822>;
  <D.45824>:
  D.45464 = engine->ice_in.chosen[1];
  D.45692 = engine->ice_in.cands[D.45464][1].con_addr;
  D.45461 = engine->ice_in.chosen[0];
  D.45726 = engine->ice_in.cands[D.45461][0].con_addr;
  D.38904 = __builtin_strcmp (D.45692, D.45726);
  if (D.38904 == 0) goto <D.45825>; else goto <D.45822>;
  <D.45825>:
  D.45464 = engine->ice_in.chosen[1];
  D.45693 = engine->ice_in.cands[D.45464][1].con_port;
  D.45461 = engine->ice_in.chosen[0];
  D.45729 = engine->ice_in.cands[D.45461][0].con_port;
  if (D.45693 == D.45729) goto <D.45826>; else goto <D.45822>;
  <D.45826>:
  D.45467 = smh->session;
  if (type == 1) goto <D.45828>; else goto <D.45829>;
  <D.45828>:
  iftmp.124 = "video";
  goto <D.45830>;
  <D.45829>:
  iftmp.124 = "audio";
  <D.45830>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2806, D.45467, 6, "Skipping %s RTCP ICE (Same as RTP)\n", iftmp.124);
  goto <D.45823>;
  <D.45822>:
  D.45467 = smh->session;
  if (type == 1) goto <D.45832>; else goto <D.45833>;
  <D.45832>:
  iftmp.125 = "video";
  goto <D.45834>;
  <D.45833>:
  iftmp.125 = "audio";
  <D.45834>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2808, D.45467, 6, "Activating %s RTCP ICE\n", iftmp.125);
  D.45519 = engine->rtp_session;
  D.45721 = engine->ice_in.ufrag;
  D.45769 = engine->ice_out.ufrag;
  D.45770 = engine->ice_out.pwd;
  D.45724 = engine->ice_in.pwd;
  D.45467 = smh->session;
  D.45836 = switch_ice_direction (D.45467);
  if (D.45836 == 1) goto <D.45837>; else goto <D.45838>;
  <D.45837>:
  iftmp.126 = 2;
  goto <D.45839>;
  <D.45838>:
  iftmp.126 = 6;
  <D.45839>:
  D.45776 = &engine->ice_in;
  switch_rtp_activate_ice (D.45519, D.45721, D.45769, D.45770, D.45724, 1, iftmp.126, D.45776);
  <D.45823>:
  <D.45821>:
  <D.45759>:
  <D.45840>:
  return;
}



;; Function switch_core_session_set_ice (switch_core_session_set_ice)

switch_core_session_set_ice (struct switch_core_session_t * session)
{
  static const char __PRETTY_FUNCTION__[28] = "switch_core_session_set_ice";
  struct switch_media_handle_t * smh;
  struct switch_core_media_params_t * D.45846;
  struct switch_channel_t * D.45845;

  if (session == 0B) goto <D.45841>; else goto <D.45842>;
  <D.45841>:
  __assert_fail ("session", "src/switch_core_media.c", 2840, &__PRETTY_FUNCTION__);
  <D.45842>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.45843>; else goto <D.45844>;
  <D.45843>:
  goto <D.45847>;
  <D.45844>:
  D.45845 = session->channel;
  switch_channel_set_flag_value (D.45845, 110, 1);
  D.45845 = session->channel;
  switch_channel_set_flag_value (D.45845, 106, 1);
  D.45845 = session->channel;
  switch_channel_set_flag_value (D.45845, 108, 1);
  D.45846 = smh->mparams;
  D.45846->rtcp_audio_interval_msec = "10000";
  D.45846 = smh->mparams;
  D.45846->rtcp_video_interval_msec = "10000";
  <D.45847>:
  return;
}



;; Function switch_ice_direction (switch_ice_direction)

switch_ice_direction (struct switch_core_session_t * session)
{
  switch_call_direction_t r;
  switch_call_direction_t D.45860;
  uint32_t D.45857;
  uint32_t D.45856;
  uint32_t D.45854;
  uint32_t D.45849;
  struct switch_channel_t * D.45848;

  D.45848 = session->channel;
  r = switch_channel_direction (D.45848);
  D.45848 = session->channel;
  D.45849 = switch_channel_test_flag (D.45848, 112);
  if (D.45849 != 0) goto <D.45850>; else goto <D.45851>;
  <D.45850>:
  r = r == 0;
  <D.45851>:
  D.45848 = session->channel;
  D.45854 = switch_channel_test_flag (D.45848, 103);
  if (D.45854 != 0) goto <D.45852>; else goto <D.45855>;
  <D.45855>:
  D.45848 = session->channel;
  D.45856 = switch_channel_test_flag (D.45848, 84);
  if (D.45856 != 0) goto <D.45852>; else goto <D.45853>;
  <D.45852>:
  D.45848 = session->channel;
  D.45857 = switch_channel_test_flag (D.45848, 106);
  if (D.45857 != 0) goto <D.45858>; else goto <D.45859>;
  <D.45858>:
  r = 1;
  <D.45859>:
  <D.45853>:
  D.45860 = r;
  goto <D.45861>;
  <D.45861>:
  return D.45860;
}



;; Function switch_core_media_check_video_codecs (switch_core_media_check_video_codecs)

switch_core_media_check_video_codecs (struct switch_core_session_t * session)
{
  int i;
  static const char __PRETTY_FUNCTION__[37] = "switch_core_media_check_video_codecs";
  struct switch_media_handle_t * smh;
  int D.45885;
  int D.45884;
  uint32_t D.45881;
  switch_call_direction_t D.45878;
  const switch_codec_type_t D.45875;
  const struct switch_codec_implementation_t * D.45874;
  uint32_t D.45871;
  struct switch_channel_t * D.45870;
  int D.45867;
  struct switch_core_media_params_t * D.45866;

  if (session == 0B) goto <D.45862>; else goto <D.45863>;
  <D.45862>:
  __assert_fail ("session", "src/switch_core_media.c", 2400, &__PRETTY_FUNCTION__);
  <D.45863>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.45864>; else goto <D.45865>;
  <D.45864>:
  goto <D.45888>;
  <D.45865>:
  D.45866 = smh->mparams;
  D.45867 = D.45866->num_codecs;
  if (D.45867 != 0) goto <D.45868>; else goto <D.45869>;
  <D.45868>:
  D.45870 = session->channel;
  D.45871 = switch_channel_test_flag (D.45870, 98);
  if (D.45871 == 0) goto <D.45872>; else goto <D.45873>;
  <D.45872>:
  smh->video_count = 0;
  i = 0;
  goto <D.38835>;
  <D.38834>:
  D.45874 = smh->codecs[i];
  D.45875 = D.45874->codec_type;
  if (D.45875 == 1) goto <D.45876>; else goto <D.45877>;
  <D.45876>:
  D.45870 = session->channel;
  D.45878 = switch_channel_direction (D.45870);
  if (D.45878 == 0) goto <D.45879>; else goto <D.45880>;
  <D.45879>:
  D.45870 = session->channel;
  D.45881 = switch_channel_test_flag (D.45870, 114);
  if (D.45881 != 0) goto <D.45882>; else goto <D.45883>;
  <D.45882>:
  // predicted unlikely by continue predictor.
  goto <D.38833>;
  <D.45883>:
  <D.45880>:
  D.45884 = smh->video_count;
  D.45885 = D.45884 + 1;
  smh->video_count = D.45885;
  <D.45877>:
  <D.38833>:
  i = i + 1;
  <D.38835>:
  D.45866 = smh->mparams;
  D.45867 = D.45866->num_codecs;
  if (D.45867 > i) goto <D.38834>; else goto <D.38836>;
  <D.38836>:
  D.45884 = smh->video_count;
  if (D.45884 != 0) goto <D.45886>; else goto <D.45887>;
  <D.45886>:
  D.45870 = session->channel;
  switch_channel_set_flag_value (D.45870, 98, 1);
  <D.45887>:
  <D.45873>:
  <D.45869>:
  <D.45888>:
  return;
}



;; Function switch_core_media_add_ice_acl (switch_core_media_add_ice_acl)

switch_core_media_add_ice_acl (struct switch_core_session_t * session, switch_media_type_t type, const char * acl_name)
{
  static const char __func__[30] = "switch_core_media_add_ice_acl";
  static const char __PRETTY_FUNCTION__[30] = "switch_core_media_add_ice_acl";
  struct switch_rtp_engine_t * engine;
  struct switch_media_handle_t * smh;
  char * D.45900;
  int D.45899;
  int D.45896;
  unsigned int D.45895;
  struct switch_rtp_engine_t[2] * D.45894;
  switch_status_t D.45893;

  if (session == 0B) goto <D.45889>; else goto <D.45890>;
  <D.45889>:
  __assert_fail ("session", "src/switch_core_media.c", 2379, &__PRETTY_FUNCTION__);
  <D.45890>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.45891>; else goto <D.45892>;
  <D.45891>:
  D.45893 = 1;
  goto <D.45901>;
  <D.45892>:
  D.45894 = &smh->engines;
  D.45895 = type * 11416;
  engine = D.45894 + D.45895;
  D.45896 = engine->cand_acl_count;
  if (D.45896 <= 24) goto <D.45897>; else goto <D.45898>;
  <D.45897>:
  D.45896 = engine->cand_acl_count;
  D.45900 = switch_core_perform_session_strdup (session, acl_name, "src/switch_core_media.c", &__func__, 2388);
  engine->cand_acl[D.45896] = D.45900;
  D.45899 = D.45896 + 1;
  engine->cand_acl_count = D.45899;
  D.45893 = 0;
  goto <D.45901>;
  <D.45898>:
  D.45893 = 1;
  goto <D.45901>;
  <D.45901>:
  return D.45893;
}



;; Function switch_core_media_set_codec (switch_core_media_set_codec)

switch_core_media_set_codec (struct switch_core_session_t * session, int force, uint32_t codec_flags)
{
  static const char __func__[28] = "switch_core_media_set_codec";
  static const char __PRETTY_FUNCTION__[28] = "switch_core_media_set_codec";
  struct switch_rtp_engine_t * a_engine;
  struct switch_media_handle_t * smh;
  int resetting;
  switch_status_t status;
  switch_payload_t D.45986;
  uint8_t D.45983;
  char * D.45982;
  char * D.45981;
  switch_payload_t D.45978;
  int D.45977;
  char * D.45976;
  switch_bool_t D.45973;
  switch_status_t D.45970;
  uint32_t D.45969;
  uint32_t D.45968;
  uint8_t D.45963;
  struct switch_rtp_t * D.45962;
  const struct switch_codec_implementation_t * D.45959;
  const struct switch_codec_implementation_t * D.45956;
  switch_status_t D.45953;
  struct switch_memory_pool_t * D.45952;
  switch_status_t D.45949;
  struct switch_memory_pool_t * D.45948;
  uint32_t D.45947;
  uint32_t D.45946;
  int D.45945;
  int D.45944;
  char * D.45943;
  struct switch_codec_t * D.45942;
  switch_interval_time_t D.45941;
  int D.45940;
  struct switch_channel_t * D.45939;
  struct switch_audio_resampler_t * * D.45938;
  struct switch_audio_resampler_t * D.45935;
  struct switch_audio_resampler_t * * D.45934;
  struct switch_mutex_t * D.45933;
  struct switch_audio_resampler_t * D.45930;
  long unsigned int D.45929;
  uint32_t D.45928;
  uint32_t D.45926;
  unsigned int D.45925;
  unsigned int D.45924;
  int D.45923;
  int D.45921;
  char * D.45920;
  switch_bool_t D.45912;
  struct switch_codec_t * D.45911;
  char * D.45908;
  struct payload_map_t * D.45907;
  switch_status_t D.45906;

  status = 0;
  resetting = 0;
  if (session == 0B) goto <D.45902>; else goto <D.45903>;
  <D.45902>:
  __assert_fail ("session", "src/switch_core_media.c", 2215, &__PRETTY_FUNCTION__);
  <D.45903>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.45904>; else goto <D.45905>;
  <D.45904>:
  D.45906 = 1;
  goto <D.45989>;
  <D.45905>:
  a_engine = &smh->engines;
  D.45907 = a_engine->cur_payload_map;
  D.45908 = D.45907->iananame;
  if (D.45908 == 0B) goto <D.45909>; else goto <D.45910>;
  <D.45909>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2223, session, 7, "No audio codec available\n");
  status = 1;
  goto end;
  <D.45910>:
  D.45911 = &a_engine->read_codec;
  D.45912 = switch_core_codec_ready (D.45911);
  if (D.45912 != 0) goto <D.45913>; else goto <D.45914>;
  <D.45913>:
  if (force == 0) goto <D.45915>; else goto <D.45916>;
  <D.45915>:
  status = 0;
  goto end;
  <D.45916>:
  D.45920 = a_engine->read_impl.iananame;
  D.45907 = a_engine->cur_payload_map;
  D.45908 = D.45907->iananame;
  D.45921 = strcasecmp (D.45920, D.45908);
  if (D.45921 != 0) goto <D.45917>; else goto <D.45922>;
  <D.45922>:
  D.45923 = a_engine->read_impl.microseconds_per_packet;
  D.45924 = (unsigned int) D.45923;
  D.45925 = D.45924 / 1000;
  D.45907 = a_engine->cur_payload_map;
  D.45926 = D.45907->codec_ms;
  if (D.45925 != D.45926) goto <D.45917>; else goto <D.45927>;
  <D.45927>:
  D.45928 = a_engine->read_impl.samples_per_second;
  D.45907 = a_engine->cur_payload_map;
  D.45929 = D.45907->rm_rate;
  if (D.45928 != D.45929) goto <D.45917>; else goto <D.45918>;
  <D.45917>:
  D.45930 = session->read_resampler;
  if (D.45930 != 0B) goto <D.45931>; else goto <D.45932>;
  <D.45931>:
  D.45933 = session->resample_mutex;
  switch_mutex_lock (D.45933);
  D.45934 = &session->read_resampler;
  switch_resample_destroy (D.45934);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2238, session, 5, "Deactivating read resampler\n");
  D.45933 = session->resample_mutex;
  switch_mutex_unlock (D.45933);
  <D.45932>:
  D.45935 = session->write_resampler;
  if (D.45935 != 0B) goto <D.45936>; else goto <D.45937>;
  <D.45936>:
  D.45933 = session->resample_mutex;
  switch_mutex_lock (D.45933);
  D.45938 = &session->write_resampler;
  switch_resample_destroy (D.45938);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2245, session, 5, "Deactivating write resampler\n");
  D.45933 = session->resample_mutex;
  switch_mutex_unlock (D.45933);
  <D.45937>:
  switch_core_session_reset (session, 0, 0);
  D.45939 = session->channel;
  switch_channel_perform_audio_sync (D.45939, "src/switch_core_media.c", &__func__, 2250);
  D.45920 = a_engine->read_impl.iananame;
  D.45923 = a_engine->read_impl.microseconds_per_packet;
  D.45940 = D.45923 / 1000;
  D.45928 = a_engine->read_impl.samples_per_second;
  D.45907 = a_engine->cur_payload_map;
  D.45908 = D.45907->iananame;
  D.45907 = a_engine->cur_payload_map;
  D.45926 = D.45907->codec_ms;
  D.45907 = a_engine->cur_payload_map;
  D.45929 = D.45907->rm_rate;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2252, session, 7, "Changing Codec from %s@%dms@%dhz to %s@%dms@%luhz\n", D.45920, D.45940, D.45928, D.45908, D.45926, D.45929);
  D.45923 = a_engine->read_impl.microseconds_per_packet;
  D.45941 = (switch_interval_time_t) D.45923;
  switch_sleep (D.45941);
  switch_core_session_lock_codec_write (session);
  switch_core_session_lock_codec_read (session);
  resetting = 1;
  D.45923 = a_engine->read_impl.microseconds_per_packet;
  D.45941 = (switch_interval_time_t) D.45923;
  switch_sleep (D.45941);
  D.45911 = &a_engine->read_codec;
  switch_core_codec_destroy (D.45911);
  D.45942 = &a_engine->write_codec;
  switch_core_codec_destroy (D.45942);
  D.45939 = session->channel;
  switch_channel_perform_audio_sync (D.45939, "src/switch_core_media.c", &__func__, 2269);
  goto <D.45919>;
  <D.45918>:
  D.45920 = a_engine->read_impl.iananame;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2271, session, 7, "Already using %s\n", D.45920);
  status = 0;
  goto end;
  <D.45919>:
  <D.45914>:
  D.45911 = &a_engine->read_codec;
  D.45907 = a_engine->cur_payload_map;
  D.45908 = D.45907->iananame;
  D.45907 = a_engine->cur_payload_map;
  D.45943 = D.45907->rm_fmtp;
  D.45907 = a_engine->cur_payload_map;
  D.45929 = D.45907->rm_rate;
  D.45907 = a_engine->cur_payload_map;
  D.45926 = D.45907->codec_ms;
  D.45944 = (int) D.45926;
  D.45907 = a_engine->cur_payload_map;
  D.45945 = D.45907->channels;
  D.45907 = a_engine->cur_payload_map;
  D.45946 = D.45907->bitrate;
  D.45947 = codec_flags | 3;
  D.45948 = switch_core_session_get_pool (session);
  D.45949 = switch_core_codec_init_with_bitrate (D.45911, D.45908, D.45943, D.45929, D.45944, D.45945, D.45946, D.45947, 0B, D.45948);
  if (D.45949 != 0) goto <D.45950>; else goto <D.45951>;
  <D.45950>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2285, session, 3, "Can\'t load codec?\n");
  D.45939 = session->channel;
  switch_channel_perform_hangup (D.45939, "src/switch_core_media.c", &__func__, 2286, 88);
  status = 1;
  goto end;
  <D.45951>:
  a_engine->read_codec.session = session;
  D.45942 = &a_engine->write_codec;
  D.45907 = a_engine->cur_payload_map;
  D.45908 = D.45907->iananame;
  D.45907 = a_engine->cur_payload_map;
  D.45943 = D.45907->rm_fmtp;
  D.45907 = a_engine->cur_payload_map;
  D.45929 = D.45907->rm_rate;
  D.45907 = a_engine->cur_payload_map;
  D.45926 = D.45907->codec_ms;
  D.45944 = (int) D.45926;
  D.45907 = a_engine->cur_payload_map;
  D.45945 = D.45907->channels;
  D.45907 = a_engine->cur_payload_map;
  D.45946 = D.45907->bitrate;
  D.45947 = codec_flags | 3;
  D.45952 = switch_core_session_get_pool (session);
  D.45953 = switch_core_codec_init_with_bitrate (D.45942, D.45908, D.45943, D.45929, D.45944, D.45945, D.45946, D.45947, 0B, D.45952);
  if (D.45953 != 0) goto <D.45954>; else goto <D.45955>;
  <D.45954>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2302, session, 3, "Can\'t load codec?\n");
  D.45939 = session->channel;
  switch_channel_perform_hangup (D.45939, "src/switch_core_media.c", &__func__, 2303, 88);
  status = 1;
  goto end;
  <D.45955>:
  a_engine->write_codec.session = session;
  D.45939 = session->channel;
  D.45907 = a_engine->cur_payload_map;
  D.45908 = D.45907->iananame;
  switch_channel_set_variable_var_check (D.45939, "rtp_use_codec_name", D.45908, 1);
  D.45939 = session->channel;
  D.45907 = a_engine->cur_payload_map;
  D.45943 = D.45907->rm_fmtp;
  switch_channel_set_variable_var_check (D.45939, "rtp_use_codec_fmtp", D.45943, 1);
  D.45939 = session->channel;
  D.45907 = a_engine->cur_payload_map;
  D.45929 = D.45907->rm_rate;
  switch_channel_set_variable_printf (D.45939, "rtp_use_codec_rate", "%d", D.45929);
  D.45939 = session->channel;
  D.45907 = a_engine->cur_payload_map;
  D.45926 = D.45907->codec_ms;
  switch_channel_set_variable_printf (D.45939, "rtp_use_codec_ptime", "%d", D.45926);
  D.45939 = session->channel;
  D.45907 = a_engine->cur_payload_map;
  D.45908 = D.45907->iananame;
  D.45907 = a_engine->cur_payload_map;
  D.45929 = D.45907->rm_rate;
  D.45907 = a_engine->cur_payload_map;
  D.45926 = D.45907->codec_ms;
  switch_channel_set_variable_printf (D.45939, "rtp_last_audio_codec_string", "%s@%dh@%di", D.45908, D.45929, D.45926);
  D.45956 = a_engine->read_codec.implementation;
  if (D.45956 == 0B) goto <D.45957>; else goto <D.45958>;
  <D.45957>:
  __assert_fail ("a_engine->read_codec.implementation", "src/switch_core_media.c", 2316, &__PRETTY_FUNCTION__);
  <D.45958>:
  D.45959 = a_engine->write_codec.implementation;
  if (D.45959 == 0B) goto <D.45960>; else goto <D.45961>;
  <D.45960>:
  __assert_fail ("a_engine->write_codec.implementation", "src/switch_core_media.c", 2317, &__PRETTY_FUNCTION__);
  <D.45961>:
  D.45956 = a_engine->read_codec.implementation;
  a_engine->read_impl = *D.45956;
  D.45959 = a_engine->write_codec.implementation;
  a_engine->write_impl = *D.45959;
  D.45956 = a_engine->read_codec.implementation;
  switch_core_session_set_read_impl (session, D.45956);
  D.45959 = a_engine->write_codec.implementation;
  switch_core_session_set_write_impl (session, D.45959);
  D.45962 = a_engine->rtp_session;
  D.45963 = switch_rtp_ready (D.45962);
  if (D.45963 != 0) goto <D.45964>; else goto <D.45965>;
  <D.45964>:
  D.45956 = a_engine->read_codec.implementation;
  if (D.45956 == 0B) goto <D.45966>; else goto <D.45967>;
  <D.45966>:
  __assert_fail ("a_engine->read_codec.implementation", "src/switch_core_media.c", 2326, &__PRETTY_FUNCTION__);
  <D.45967>:
  D.45962 = a_engine->rtp_session;
  D.45923 = a_engine->read_impl.microseconds_per_packet;
  D.45968 = (uint32_t) D.45923;
  D.45969 = a_engine->read_impl.samples_per_packet;
  D.45970 = switch_rtp_change_interval (D.45962, D.45968, D.45969);
  if (D.45970 != 0) goto <D.45971>; else goto <D.45972>;
  <D.45971>:
  D.45939 = session->channel;
  switch_channel_perform_hangup (D.45939, "src/switch_core_media.c", &__func__, 2331, 27);
  status = 1;
  goto end;
  <D.45972>:
  <D.45965>:
  D.45907 = a_engine->cur_payload_map;
  D.45929 = D.45907->rm_rate;
  a_engine->read_frame.rate = D.45929;
  D.45911 = &a_engine->read_codec;
  D.45973 = switch_core_codec_ready (D.45911);
  if (D.45973 == 0) goto <D.45974>; else goto <D.45975>;
  <D.45974>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2339, session, 3, "Can\'t load codec?\n");
  status = 1;
  goto end;
  <D.45975>:
  D.45939 = session->channel;
  D.45976 = switch_channel_get_name (D.45939);
  D.45907 = a_engine->cur_payload_map;
  D.45908 = D.45907->iananame;
  D.45907 = a_engine->cur_payload_map;
  D.45929 = D.45907->rm_rate;
  D.45907 = a_engine->cur_payload_map;
  D.45926 = D.45907->codec_ms;
  D.45969 = a_engine->read_impl.samples_per_packet;
  D.45977 = a_engine->read_impl.bits_per_second;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2343, session, 7, "Set Codec %s %s/%ld %d ms %d samples %d bits\n", D.45976, D.45908, D.45929, D.45926, D.45969, D.45977);
  D.45911 = &a_engine->read_codec;
  a_engine->read_frame.codec = D.45911;
  D.45907 = a_engine->cur_payload_map;
  D.45978 = D.45907->agreed_pt;
  a_engine->write_codec.agreed_pt = D.45978;
  D.45907 = a_engine->cur_payload_map;
  D.45978 = D.45907->agreed_pt;
  a_engine->read_codec.agreed_pt = D.45978;
  if (force != 2) goto <D.45979>; else goto <D.45980>;
  <D.45979>:
  D.45911 = &a_engine->read_codec;
  switch_core_session_set_real_read_codec (session, D.45911);
  D.45942 = &a_engine->write_codec;
  switch_core_session_set_write_codec (session, D.45942);
  <D.45980>:
  D.45907 = a_engine->cur_payload_map;
  D.45981 = a_engine->write_codec.fmtp_out;
  D.45982 = switch_core_perform_session_strdup (session, D.45981, "src/switch_core_media.c", &__func__, 2357);
  D.45907->fmtp_out = D.45982;
  D.45962 = a_engine->rtp_session;
  D.45983 = switch_rtp_ready (D.45962);
  if (D.45983 != 0) goto <D.45984>; else goto <D.45985>;
  <D.45984>:
  D.45962 = a_engine->rtp_session;
  D.45907 = a_engine->cur_payload_map;
  D.45986 = D.45907->pt;
  switch_rtp_set_default_payload (D.45962, D.45986);
  <D.45985>:
  end:
  if (resetting != 0) goto <D.45987>; else goto <D.45988>;
  <D.45987>:
  switch_core_session_unlock_codec_write (session);
  switch_core_session_unlock_codec_read (session);
  <D.45988>:
  D.45906 = status;
  goto <D.45989>;
  <D.45989>:
  return D.45906;
}



;; Function switch_core_media_set_video_codec (switch_core_media_set_video_codec)

switch_core_media_set_video_codec (struct switch_core_session_t * session, int force)
{
  struct switch_core_session_message_t msg;
  static const char __func__[34] = "switch_core_media_set_video_codec";
  static const char __PRETTY_FUNCTION__[34] = "switch_core_media_set_video_codec";
  struct switch_rtp_engine_t * v_engine;
  struct switch_media_handle_t * smh;
  uint8_t D.46034;
  struct switch_rtp_t * D.46033;
  switch_payload_t D.46032;
  char * D.46031;
  char * D.46030;
  uint32_t D.46029;
  char * D.46028;
  struct switch_channel_t * D.46027;
  switch_status_t D.46024;
  struct switch_memory_pool_t * D.46023;
  switch_status_t D.46020;
  struct switch_memory_pool_t * D.46019;
  char * D.46018;
  struct switch_codec_t * D.46017;
  long unsigned int D.46016;
  const uint32_t D.46015;
  int D.46013;
  char * D.46012;
  struct payload_map_t * D.46011;
  char * const D.46010;
  switch_bool_t D.46002;
  struct switch_codec_t * D.46001;
  const struct switch_codec_implementation_t * D.45998;
  uint8_t D.45995;
  switch_status_t D.45994;

  if (session == 0B) goto <D.45990>; else goto <D.45991>;
  <D.45990>:
  __assert_fail ("session", "src/switch_core_media.c", 2109, &__PRETTY_FUNCTION__);
  <D.45991>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.45992>; else goto <D.45993>;
  <D.45992>:
  D.45994 = 1;
  goto <D.46037>;
  <D.45993>:
  v_engine = &smh->engines[1];
  D.45995 = v_engine->codec_negotiated;
  if (D.45995 == 0) goto <D.45996>; else goto <D.45997>;
  <D.45996>:
  D.45994 = 1;
  goto <D.46037>;
  <D.45997>:
  D.45998 = v_engine->read_codec.implementation;
  if (D.45998 != 0B) goto <D.45999>; else goto <D.46000>;
  <D.45999>:
  D.46001 = &v_engine->read_codec;
  D.46002 = switch_core_codec_ready (D.46001);
  if (D.46002 != 0) goto <D.46003>; else goto <D.46004>;
  <D.46003>:
  if (force == 0) goto <D.46005>; else goto <D.46006>;
  <D.46005>:
  D.45994 = 0;
  goto <D.46037>;
  <D.46006>:
  D.45998 = v_engine->read_codec.implementation;
  D.46010 = D.45998->iananame;
  D.46011 = v_engine->cur_payload_map;
  D.46012 = D.46011->rm_encoding;
  D.46013 = strcasecmp (D.46010, D.46012);
  if (D.46013 != 0) goto <D.46007>; else goto <D.46014>;
  <D.46014>:
  D.45998 = v_engine->read_codec.implementation;
  D.46015 = D.45998->samples_per_second;
  D.46011 = v_engine->cur_payload_map;
  D.46016 = D.46011->rm_rate;
  if (D.46015 != D.46016) goto <D.46007>; else goto <D.46008>;
  <D.46007>:
  D.45998 = v_engine->read_codec.implementation;
  D.46010 = D.45998->iananame;
  D.46011 = v_engine->cur_payload_map;
  D.46012 = D.46011->rm_encoding;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2128, session, 7, "Changing Codec from %s to %s\n", D.46010, D.46012);
  D.46001 = &v_engine->read_codec;
  switch_core_codec_destroy (D.46001);
  D.46017 = &v_engine->write_codec;
  switch_core_codec_destroy (D.46017);
  goto <D.46009>;
  <D.46008>:
  D.45998 = v_engine->read_codec.implementation;
  D.46010 = D.45998->iananame;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2133, session, 7, "Already using %s\n", D.46010);
  D.45994 = 0;
  goto <D.46037>;
  <D.46009>:
  <D.46004>:
  <D.46000>:
  D.46001 = &v_engine->read_codec;
  D.46011 = v_engine->cur_payload_map;
  D.46012 = D.46011->rm_encoding;
  D.46011 = v_engine->cur_payload_map;
  D.46018 = D.46011->rm_fmtp;
  D.46011 = v_engine->cur_payload_map;
  D.46016 = D.46011->rm_rate;
  D.46019 = switch_core_session_get_pool (session);
  D.46020 = switch_core_codec_init_with_bitrate (D.46001, D.46012, D.46018, D.46016, 0, 1, 0, 3, 0B, D.46019);
  if (D.46020 != 0) goto <D.46021>; else goto <D.46022>;
  <D.46021>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2149, session, 3, "Can\'t load codec?\n");
  D.45994 = 1;
  goto <D.46037>;
  <D.46022>:
  D.46017 = &v_engine->write_codec;
  D.46011 = v_engine->cur_payload_map;
  D.46012 = D.46011->rm_encoding;
  D.46011 = v_engine->cur_payload_map;
  D.46018 = D.46011->rm_fmtp;
  D.46011 = v_engine->cur_payload_map;
  D.46016 = D.46011->rm_rate;
  D.46023 = switch_core_session_get_pool (session);
  D.46024 = switch_core_codec_init_with_bitrate (D.46017, D.46012, D.46018, D.46016, 0, 1, 0, 3, 0B, D.46023);
  if (D.46024 != 0) goto <D.46025>; else goto <D.46026>;
  <D.46025>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2160, session, 3, "Can\'t load codec?\n");
  D.45994 = 1;
  goto <D.46037>;
  <D.46026>:
  D.46011 = v_engine->cur_payload_map;
  D.46016 = D.46011->rm_rate;
  v_engine->read_frame.rate = D.46016;
  D.46027 = session->channel;
  D.46028 = switch_channel_get_name (D.46027);
  D.46011 = v_engine->cur_payload_map;
  D.46012 = D.46011->rm_encoding;
  D.46011 = v_engine->cur_payload_map;
  D.46016 = D.46011->rm_rate;
  D.46011 = v_engine->cur_payload_map;
  D.46029 = D.46011->codec_ms;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 2164, session, 7, "Set VIDEO Codec %s %s/%ld %d ms\n", D.46028, D.46012, D.46016, D.46029);
  D.46001 = &v_engine->read_codec;
  v_engine->read_frame.codec = D.46001;
  D.46030 = v_engine->write_codec.fmtp_out;
  D.46031 = switch_core_perform_session_strdup (session, D.46030, "src/switch_core_media.c", &__func__, 2169);
  v_engine->write_codec.fmtp_out = D.46031;
  D.46011 = v_engine->cur_payload_map;
  D.46032 = D.46011->agreed_pt;
  v_engine->write_codec.agreed_pt = D.46032;
  D.46011 = v_engine->cur_payload_map;
  D.46032 = D.46011->agreed_pt;
  v_engine->read_codec.agreed_pt = D.46032;
  D.46001 = &v_engine->read_codec;
  switch_core_session_set_video_read_codec (session, D.46001);
  D.46017 = &v_engine->write_codec;
  switch_core_session_set_video_write_codec (session, D.46017);
  D.46027 = session->channel;
  D.46011 = v_engine->cur_payload_map;
  D.46012 = D.46011->rm_encoding;
  D.46011 = v_engine->cur_payload_map;
  D.46016 = D.46011->rm_rate;
  switch_channel_set_variable_printf (D.46027, "rtp_last_video_codec_string", "%s@%dh", D.46012, D.46016);
  D.46033 = v_engine->rtp_session;
  D.46034 = switch_rtp_ready (D.46033);
  if (D.46034 != 0) goto <D.46035>; else goto <D.46036>;
  <D.46035>:
  msg = {};
  msg.from = "src/switch_core_media.c";
  msg.message_id = 17;
  D.46033 = v_engine->rtp_session;
  D.46011 = v_engine->cur_payload_map;
  D.46032 = D.46011->agreed_pt;
  switch_rtp_set_default_payload (D.46033, D.46032);
  switch_core_session_perform_receive_message (session, &msg, "src/switch_core_media.c", &__func__, 2191);
  <D.46036>:
  D.46027 = session->channel;
  D.46011 = v_engine->cur_payload_map;
  D.46012 = D.46011->rm_encoding;
  switch_channel_set_variable_var_check (D.46027, "rtp_use_video_codec_name", D.46012, 1);
  D.46027 = session->channel;
  D.46011 = v_engine->cur_payload_map;
  D.46018 = D.46011->rm_fmtp;
  switch_channel_set_variable_var_check (D.46027, "rtp_use_video_codec_fmtp", D.46018, 1);
  D.46027 = session->channel;
  D.46011 = v_engine->cur_payload_map;
  D.46016 = D.46011->rm_rate;
  switch_channel_set_variable_printf (D.46027, "rtp_use_video_codec_rate", "%d", D.46016);
  D.46027 = session->channel;
  switch_channel_set_variable_printf (D.46027, "rtp_use_video_codec_ptime", "%d", 0);
  D.45994 = 0;
  goto <D.46037>;
  <D.46037>:
  return D.45994;
}



;; Function switch_core_media_get_offered_pt (switch_core_media_get_offered_pt)

switch_core_media_get_offered_pt (struct switch_core_session_t * session, const struct switch_codec_implementation_t * mimp, switch_payload_t * pt)
{
  const struct switch_codec_implementation_t * imp;
  static const char __PRETTY_FUNCTION__[33] = "switch_core_media_get_offered_pt";
  struct switch_media_handle_t * smh;
  int i;
  int D.46055;
  struct switch_core_media_params_t * D.46054;
  switch_payload_t D.46053;
  const uint32_t D.46050;
  const uint32_t D.46049;
  int D.46046;
  char * const D.46045;
  char * const D.46044;
  switch_status_t D.46043;

  i = 0;
  if (session == 0B) goto <D.46038>; else goto <D.46039>;
  <D.46038>:
  __assert_fail ("session", "src/switch_core_media.c", 2081, &__PRETTY_FUNCTION__);
  <D.46039>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.46040>; else goto <D.46042>;
  <D.46042>:
  if (mimp == 0B) goto <D.46040>; else goto <D.46041>;
  <D.46040>:
  D.46043 = 1;
  goto <D.46056>;
  <D.46041>:
  i = 0;
  goto <D.38795>;
  <D.38794>:
  imp = smh->codecs[i];
  D.46044 = imp->iananame;
  D.46045 = mimp->iananame;
  D.46046 = strcasecmp (D.46044, D.46045);
  if (D.46046 == 0) goto <D.46047>; else goto <D.46048>;
  <D.46047>:
  D.46049 = imp->actual_samples_per_second;
  D.46050 = mimp->actual_samples_per_second;
  if (D.46049 == D.46050) goto <D.46051>; else goto <D.46052>;
  <D.46051>:
  D.46053 = smh->ianacodes[i];
  *pt = D.46053;
  D.46043 = 0;
  goto <D.46056>;
  <D.46052>:
  <D.46048>:
  i = i + 1;
  <D.38795>:
  D.46054 = smh->mparams;
  D.46055 = D.46054->num_codecs;
  if (D.46055 > i) goto <D.38794>; else goto <D.38796>;
  <D.38796>:
  D.46043 = 1;
  goto <D.46056>;
  <D.46056>:
  return D.46043;
}



;; Function switch_core_media_copy_t38_options (switch_core_media_copy_t38_options)

switch_core_media_copy_t38_options (struct switch_t38_options_t * t38_options, struct switch_core_session_t * session)
{
  static const char __func__[35] = "switch_core_media_copy_t38_options";
  static const char __PRETTY_FUNCTION__[35] = "switch_core_media_copy_t38_options";
  struct switch_t38_options_t * local_t38_options;
  struct switch_channel_t * channel;
  uint16_t D.46075;
  char * D.46074;
  const char * D.46073;
  char * D.46072;
  const char * D.46071;
  char * D.46070;
  const char * D.46069;
  uint32_t D.46068;
  uint32_t D.46067;
  char * D.46066;
  const char * D.46065;
  switch_bool_t D.46064;
  switch_bool_t D.46063;
  switch_bool_t D.46062;
  uint32_t D.46061;

  channel = switch_core_session_get_channel (session);
  local_t38_options = switch_channel_get_private (channel, "t38_options");
  if (t38_options == 0B) goto <D.46057>; else goto <D.46058>;
  <D.46057>:
  __assert_fail ("t38_options", "src/switch_core_media.c", 2052, &__PRETTY_FUNCTION__);
  <D.46058>:
  if (local_t38_options == 0B) goto <D.46059>; else goto <D.46060>;
  <D.46059>:
  local_t38_options = switch_core_perform_session_alloc (session, 60, "src/switch_core_media.c", &__func__, 2055);
  <D.46060>:
  D.46061 = t38_options->T38MaxBitRate;
  local_t38_options->T38MaxBitRate = D.46061;
  D.46062 = t38_options->T38FaxFillBitRemoval;
  local_t38_options->T38FaxFillBitRemoval = D.46062;
  D.46063 = t38_options->T38FaxTranscodingMMR;
  local_t38_options->T38FaxTranscodingMMR = D.46063;
  D.46064 = t38_options->T38FaxTranscodingJBIG;
  local_t38_options->T38FaxTranscodingJBIG = D.46064;
  D.46065 = t38_options->T38FaxRateManagement;
  D.46066 = switch_core_perform_session_strdup (session, D.46065, "src/switch_core_media.c", &__func__, 2062);
  local_t38_options->T38FaxRateManagement = D.46066;
  D.46067 = t38_options->T38FaxMaxBuffer;
  local_t38_options->T38FaxMaxBuffer = D.46067;
  D.46068 = t38_options->T38FaxMaxDatagram;
  local_t38_options->T38FaxMaxDatagram = D.46068;
  D.46069 = t38_options->T38FaxUdpEC;
  D.46070 = switch_core_perform_session_strdup (session, D.46069, "src/switch_core_media.c", &__func__, 2065);
  local_t38_options->T38FaxUdpEC = D.46070;
  D.46071 = t38_options->T38VendorInfo;
  D.46072 = switch_core_perform_session_strdup (session, D.46071, "src/switch_core_media.c", &__func__, 2066);
  local_t38_options->T38VendorInfo = D.46072;
  D.46073 = t38_options->remote_ip;
  D.46074 = switch_core_perform_session_strdup (session, D.46073, "src/switch_core_media.c", &__func__, 2067);
  local_t38_options->remote_ip = D.46074;
  D.46075 = t38_options->remote_port;
  local_t38_options->remote_port = D.46075;
  switch_channel_set_private (channel, "t38_options", local_t38_options);
  return;
}



;; Function switch_core_media_write_frame (switch_core_media_write_frame)

switch_core_media_write_frame (struct switch_core_session_t * session, struct switch_frame_t * frame, switch_io_flag_t flags, int stream_id, switch_media_type_t type)
{
  static const char __PRETTY_FUNCTION__[30] = "switch_core_media_write_frame";
  struct switch_media_handle_t * smh;
  struct switch_rtp_engine_t * engine;
  int frames;
  int samples;
  int bytes;
  switch_status_t status;
  int D.46120;
  uint32_t D.46119;
  uint32_t samples.128;
  uint32_t D.46117;
  uint32_t D.46116;
  uint32_t frames.127;
  uint32_t D.46114;
  int D.46112;
  uint32_t D.46111;
  uint32_t D.46108;
  unsigned int D.46105;
  unsigned int D.46104;
  switch_bool_t D.46103;
  switch_bool_t D.46099;
  struct switch_codec_t * D.46098;
  uint8_t D.46094;
  struct switch_rtp_t * D.46093;
  const struct switch_codec_implementation_t * D.46091;
  int D.46087;
  struct switch_channel_t * D.46086;
  unsigned int D.46085;
  struct switch_rtp_engine_t[2] * D.46084;
  switch_core_media_flag_t D.46081;
  switch_status_t D.46080;

  status = 0;
  bytes = 0;
  samples = 0;
  frames = 0;
  if (session == 0B) goto <D.46076>; else goto <D.46077>;
  <D.46076>:
  __assert_fail ("session", "src/switch_core_media.c", 1996, &__PRETTY_FUNCTION__);
  <D.46077>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.46078>; else goto <D.46079>;
  <D.46078>:
  D.46080 = 1;
  goto <D.46123>;
  <D.46079>:
  D.46081 = smh->media_flags[0];
  if (D.46081 == 0) goto <D.46082>; else goto <D.46083>;
  <D.46082>:
  D.46080 = 1;
  goto <D.46123>;
  <D.46083>:
  D.46084 = &smh->engines;
  D.46085 = type * 11416;
  engine = D.46084 + D.46085;
  goto <D.38775>;
  <D.38774>:
  D.46086 = session->channel;
  D.46087 = switch_channel_test_ready (D.46086, 1, 0);
  if (D.46087 != 0) goto <D.46088>; else goto <D.46089>;
  <D.46088>:
  switch_sleep (10000);
  goto <D.46090>;
  <D.46089>:
  D.46080 = 9;
  goto <D.46123>;
  <D.46090>:
  <D.38775>:
  D.46091 = engine->read_codec.implementation;
  if (D.46091 == 0B) goto <D.38774>; else goto <D.46092>;
  <D.46092>:
  D.46093 = engine->rtp_session;
  D.46094 = switch_rtp_ready (D.46093);
  if (D.46094 == 0) goto <D.38774>; else goto <D.38776>;
  <D.38776>:
  D.46091 = engine->read_codec.implementation;
  if (D.46091 == 0B) goto <D.46095>; else goto <D.46097>;
  <D.46097>:
  D.46098 = &engine->read_codec;
  D.46099 = switch_core_codec_ready (D.46098);
  if (D.46099 == 0) goto <D.46095>; else goto <D.46096>;
  <D.46095>:
  D.46080 = 9;
  goto <D.46123>;
  <D.46096>:
  D.46091 = engine->read_codec.implementation;
  if (D.46091 == 0B) goto <D.46100>; else goto <D.46102>;
  <D.46102>:
  D.46098 = &engine->read_codec;
  D.46103 = switch_core_codec_ready (D.46098);
  if (D.46103 == 0) goto <D.46100>; else goto <D.46101>;
  <D.46100>:
  D.46080 = 1;
  goto <D.46123>;
  <D.46101>:
  D.46104 = BIT_FIELD_REF <*frame, 32, 480>;
  D.46105 = D.46104 & 33;
  if (D.46105 == 0) goto <D.46106>; else goto <D.46107>;
  <D.46106>:
  D.46108 = engine->read_impl.encoded_bytes_per_packet;
  if (D.46108 != 0) goto <D.46109>; else goto <D.46110>;
  <D.46109>:
  D.46108 = engine->read_impl.encoded_bytes_per_packet;
  bytes = (int) D.46108;
  D.46111 = frame->datalen;
  D.46112 = (int) D.46111;
  frames = D.46112 / bytes;
  goto <D.46113>;
  <D.46110>:
  frames = 1;
  <D.46113>:
  D.46114 = engine->read_impl.samples_per_packet;
  frames.127 = (uint32_t) frames;
  D.46116 = D.46114 * frames.127;
  samples = (int) D.46116;
  <D.46107>:
  D.46117 = engine->timestamp_send;
  samples.128 = (uint32_t) samples;
  D.46119 = D.46117 + samples.128;
  engine->timestamp_send = D.46119;
  D.46093 = engine->rtp_session;
  D.46120 = switch_rtp_write_frame (D.46093, frame);
  if (D.46120 < 0) goto <D.46121>; else goto <D.46122>;
  <D.46121>:
  status = 1;
  <D.46122>:
  D.46080 = status;
  goto <D.46123>;
  <D.46123>:
  return D.46080;
}



;; Function switch_core_media_read_frame (switch_core_media_read_frame)

switch_core_media_read_frame (struct switch_core_session_t * session, struct switch_frame_t * * frame, switch_io_flag_t flags, int stream_id, switch_media_type_t type)
{
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
  int do_cng;
  struct switch_media_handle_t * smh;
  switch_status_t status;
  struct switch_rtp_engine_t * engine;
  struct switch_rtcp_frame_t rtcp_frame;
  uint32_t D.46362;
  uint32_t frames.134;
  uint32_t D.46360;
  int D.46355;
  switch_payload_t D.46354;
  char * D.46353;
  uint8_t D.46350;
  switch_payload_t D.46347;
  struct switch_mutex_t * D.46346;
  int D.46345;
  int D.46344;
  switch_payload_t D.46341;
  switch_payload_t D.46338;
  switch_payload_t D.46335;
  switch_payload_t D.46333;
  switch_payload_t D.46331;
  switch_payload_t D.46330;
  switch_payload_t D.46328;
  struct switch_core_media_params_t * D.46327;
  uint8_t D.46324;
  int D.46317;
  int codec_ms.133;
  uint32_t D.46309;
  struct payload_map_t * D.46308;
  uint32_t D.46305;
  uint32_t D.46304;
  uint32_t D.46299;
  uint32_t D.46298;
  uint32_t D.46296;
  uint32_t D.46293;
  switch_size_t D.46292;
  switch_size_t D.46289;
  uint32_t D.46285;
  uint32_t D.46279;
  uint32_t D.46276;
  switch_core_media_flag_t D.46273;
  switch_bool_t D.46272;
  switch_frame_flag_t D.46266;
  uint32_t D.46263;
  switch_size_t D.46260;
  switch_frame_flag_t D.46257;
  switch_frame_flag_t D.46256;
  int D.46255;
  uint16_t D.46254;
  uint32_t D.46253;
  const char * restrict D.46252;
  uint32_t D.46251;
  const char * restrict D.46250;
  uint32_t D.46249;
  const char * restrict D.46248;
  uint32_t D.46247;
  const char * restrict D.46246;
  uint32_t D.46245;
  const char * restrict D.46244;
  int D.46243;
  uint8_t D.46242;
  const char * restrict D.46241;
  uint32_t D.46240;
  const char * restrict D.46239;
  switch_time_t D.46238;
  const char * restrict D.46237;
  uint32_t D.46236;
  switch_size_t D.46235;
  const char * restrict D.46234;
  uint32_t D.46233;
  uint32_t D.46232;
  uint32_t D.46231;
  uint32_t D.46230;
  uint32_t D.46229;
  const char * restrict D.46228;
  uint32_t D.46227;
  const char * restrict D.46226;
  char * D.46225;
  struct switch_event_t * event.132;
  switch_status_t D.46219;
  switch_status_t D.46216;
  uint32_t D.46213;
  uint32_t D.46212;
  uint32_t rtp_hold_timeout_sec.131;
  uint32_t D.46206;
  uint32_t D.46205;
  uint32_t D.46204;
  uint32_t D.46203;
  uint32_t rtp_timeout_sec.130;
  uint32_t D.46201;
  switch_status_t D.46188;
  uint8_t D.46182;
  uint8_t D.46179;
  uint32_t D.46178;
  void * D.46177;
  uint32_t D.46176;
  switch_frame_flag_t D.46175;
  switch_frame_flag_t D.46174;
  struct switch_frame_t * D.46173;
  const char * D.46170;
  _Bool D.46165;
  _Bool D.46164;
  _Bool D.46163;
  struct switch_frame_t * D.46162;
  char * iftmp.129;
  char * D.46157;
  switch_status_t D.46154;
  struct switch_mutex_t * D.46151;
  uint32_t D.46150;
  uint8_t D.46148;
  switch_channel_state_t D.46146;
  struct switch_channel_t * D.46145;
  struct switch_rtp_t * D.46140;
  switch_bool_t D.46139;
  struct switch_codec_t * D.46138;
  const struct switch_codec_implementation_t * D.46136;
  unsigned int D.46133;
  struct switch_rtp_engine_t[2] * D.46132;
  switch_core_media_flag_t D.46129;
  switch_status_t D.46128;

  do_cng = 0;
  if (session == 0B) goto <D.46124>; else goto <D.46125>;
  <D.46124>:
  __assert_fail ("session", "src/switch_core_media.c", 1623, &__PRETTY_FUNCTION__);
  <D.46125>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.46126>; else goto <D.46127>;
  <D.46126>:
  D.46128 = 1;
  goto <D.46370>;
  <D.46127>:
  D.46129 = smh->media_flags[0];
  if (D.46129 == 0) goto <D.46130>; else goto <D.46131>;
  <D.46130>:
  D.46128 = 1;
  goto <D.46370>;
  <D.46131>:
  D.46132 = &smh->engines;
  D.46133 = type * 11416;
  engine = D.46132 + D.46133;
  engine->read_frame.datalen = 0;
  D.46136 = engine->read_codec.implementation;
  if (D.46136 == 0B) goto <D.46134>; else goto <D.46137>;
  <D.46137>:
  D.46138 = &engine->read_codec;
  D.46139 = switch_core_codec_ready (D.46138);
  if (D.46139 == 0) goto <D.46134>; else goto <D.46135>;
  <D.46134>:
  D.46128 = 1;
  goto <D.46370>;
  <D.46135>:
  D.46140 = engine->rtp_session;
  if (D.46140 == 0B) goto <D.46141>; else goto <D.46142>;
  <D.46141>:
  __assert_fail ("engine->rtp_session != ((void *)0)", "src/switch_core_media.c", 1641, &__PRETTY_FUNCTION__);
  <D.46142>:
  engine->read_frame.datalen = 0;
  D.46145 = session->channel;
  D.46146 = switch_channel_get_state (D.46145);
  if (D.46146 > 9) goto <D.46143>; else goto <D.46147>;
  <D.46147>:
  D.46140 = engine->rtp_session;
  D.46148 = switch_rtp_ready (D.46140);
  if (D.46148 == 0) goto <D.46143>; else goto <D.46149>;
  <D.46149>:
  D.46145 = session->channel;
  D.46150 = switch_channel_test_flag (D.46145, 45);
  if (D.46150 != 0) goto <D.46143>; else goto <D.46144>;
  <D.46143>:
  D.46128 = 1;
  goto <D.46370>;
  <D.46144>:
  D.46151 = engine->read_mutex[type];
  if (D.46151 != 0B) goto <D.46152>; else goto <D.46153>;
  <D.46152>:
  D.46151 = engine->read_mutex[type];
  D.46154 = switch_mutex_trylock (D.46151);
  if (D.46154 != 0) goto <D.46155>; else goto <D.46156>;
  <D.46155>:
  D.46145 = session->channel;
  D.46157 = switch_channel_get_name (D.46145);
  if (type == 1) goto <D.46159>; else goto <D.46160>;
  <D.46159>:
  iftmp.129 = "video";
  goto <D.46161>;
  <D.46160>:
  iftmp.129 = "audio";
  <D.46161>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1650, session, 101, "%s is already being read for %s\n", D.46157, iftmp.129);
  D.46128 = 10;
  goto <D.46370>;
  <D.46156>:
  <D.46153>:
  goto <D.38757>;
  <D.38759>:
  engine->read_frame.flags = 0;
  D.46140 = engine->rtp_session;
  D.46162 = &engine->read_frame;
  status = switch_rtp_zerocopy_read_frame (D.46140, D.46162, flags);
  D.46163 = status != 0;
  D.46164 = status != 11;
  D.46165 = D.46163 && D.46164;
  if (D.46165 != 0) goto <D.46166>; else goto <D.46167>;
  <D.46166>:
  if (status == 2) goto <D.46168>; else goto <D.46169>;
  <D.46168>:
  D.46145 = session->channel;
  D.46170 = switch_channel_get_variable_dup (D.46145, "execute_on_media_timeout", 1, -1);
  if (D.46170 != 0B) goto <D.46171>; else goto <D.46172>;
  <D.46171>:
  D.46162 = &engine->read_frame;
  *frame = D.46162;
  D.46173 = *frame;
  D.46173 = *frame;
  D.46174 = D.46173->flags;
  D.46175 = D.46174 | 1;
  D.46173->flags = D.46175;
  D.46173 = *frame;
  D.46176 = engine->read_impl.encoded_bytes_per_packet;
  D.46173->datalen = D.46176;
  D.46173 = *frame;
  D.46177 = D.46173->data;
  D.46173 = *frame;
  D.46178 = D.46173->datalen;
  memset (D.46177, 0, D.46178);
  D.46145 = session->channel;
  switch_channel_execute_on (D.46145, "execute_on_media_timeout");
  status = 0;
  goto end;
  <D.46172>:
  D.46145 = session->channel;
  switch_channel_perform_hangup (D.46145, "src/switch_core_media.c", &__func__, 1674, 604);
  <D.46169>:
  goto end;
  <D.46167>:
  D.46179 = engine->reset_codec;
  if (D.46179 != 0) goto <D.46180>; else goto <D.46181>;
  <D.46180>:
  rtp_timeout_sec = 0;
  rtp_hold_timeout_sec = 0;
  engine->reset_codec = 0;
  D.46140 = engine->rtp_session;
  D.46182 = switch_rtp_ready (D.46140);
  if (D.46182 != 0) goto <D.46183>; else goto <D.46184>;
  <D.46183>:
  if (type == 1) goto <D.46185>; else goto <D.46186>;
  <D.46185>:
  switch_core_media_set_video_codec (session, 1);
  goto <D.46187>;
  <D.46186>:
  D.46188 = switch_core_media_set_codec (session, 1, 0);
  if (D.46188 != 0) goto <D.46189>; else goto <D.46190>;
  <D.46189>:
  *frame = 0B;
  status = 9;
  goto end;
  <D.46190>:
  <D.46187>:
  D.46145 = session->channel;
  val = switch_channel_get_variable_dup (D.46145, "rtp_timeout_sec", 1, -1);
  if (val != 0B) goto <D.46191>; else goto <D.46192>;
  <D.46191>:
  v = atoi (val);
  if (v >= 0) goto <D.46193>; else goto <D.46194>;
  <D.46193>:
  rtp_timeout_sec = v;
  <D.46194>:
  <D.46192>:
  D.46145 = session->channel;
  val = switch_channel_get_variable_dup (D.46145, "rtp_hold_timeout_sec", 1, -1);
  if (val != 0B) goto <D.46195>; else goto <D.46196>;
  <D.46195>:
  v = atoi (val);
  if (v >= 0) goto <D.46197>; else goto <D.46198>;
  <D.46197>:
  rtp_hold_timeout_sec = v;
  <D.46198>:
  <D.46196>:
  if (rtp_timeout_sec != 0) goto <D.46199>; else goto <D.46200>;
  <D.46199>:
  D.46201 = engine->read_impl.samples_per_second;
  rtp_timeout_sec.130 = (uint32_t) rtp_timeout_sec;
  D.46203 = D.46201 * rtp_timeout_sec.130;
  D.46204 = engine->read_impl.samples_per_packet;
  D.46205 = D.46203 / D.46204;
  engine->max_missed_packets = D.46205;
  D.46140 = engine->rtp_session;
  D.46206 = engine->max_missed_packets;
  switch_rtp_set_max_missed_packets (D.46140, D.46206);
  if (rtp_hold_timeout_sec == 0) goto <D.46207>; else goto <D.46208>;
  <D.46207>:
  rtp_hold_timeout_sec = rtp_timeout_sec * 10;
  <D.46208>:
  <D.46200>:
  if (rtp_hold_timeout_sec != 0) goto <D.46209>; else goto <D.46210>;
  <D.46209>:
  D.46201 = engine->read_impl.samples_per_second;
  rtp_hold_timeout_sec.131 = (uint32_t) rtp_hold_timeout_sec;
  D.46212 = D.46201 * rtp_hold_timeout_sec.131;
  D.46204 = engine->read_impl.samples_per_packet;
  D.46213 = D.46212 / D.46204;
  engine->max_missed_hold_packets = D.46213;
  <D.46210>:
  <D.46184>:
  engine->check_frames = 0;
  engine->last_ts = 0;
  do_cng = 1;
  <D.46181>:
  if (do_cng != 0) goto <D.46214>; else goto <D.46215>;
  <D.46214>:
  D.46162 = &engine->read_frame;
  *frame = D.46162;
  D.46173 = *frame;
  D.46173 = *frame;
  D.46174 = D.46173->flags;
  D.46175 = D.46174 | 1;
  D.46173->flags = D.46175;
  D.46173 = *frame;
  D.46176 = engine->read_impl.encoded_bytes_per_packet;
  D.46173->datalen = D.46176;
  D.46173 = *frame;
  D.46177 = D.46173->data;
  D.46173 = *frame;
  D.46178 = D.46173->datalen;
  memset (D.46177, 0, D.46178);
  status = 0;
  goto end;
  <D.46215>:
  D.46140 = engine->rtp_session;
  D.46216 = switch_rtcp_zerocopy_read_frame (D.46140, &rtcp_frame);
  if (D.46216 == 0) goto <D.46217>; else goto <D.46218>;
  <D.46217>:
  D.46219 = switch_event_create_subclass_detailed ("src/switch_core_media.c", &__func__, 1747, &event, 71, 0B);
  if (D.46219 == 0) goto <D.46220>; else goto <D.46221>;
  <D.46220>:
  uuid = switch_core_session_get_uuid (session);
  if (uuid != 0B) goto <D.46222>; else goto <D.46223>;
  <D.46222>:
  event.132 = event;
  D.46225 = switch_core_session_get_uuid (session);
  switch_event_add_header_string (event.132, 1, "Unique-ID", D.46225);
  <D.46223>:
  D.46226 = (const char * restrict) &"%.8x"[0];
  D.46227 = rtcp_frame.ssrc;
  snprintf (&value, 30, D.46226, D.46227);
  event.132 = event;
  switch_event_add_header_string (event.132, 1, "SSRC", &value);
  D.46228 = (const char * restrict) &"%u"[0];
  D.46229 = rtcp_frame.ntp_msw;
  snprintf (&value, 30, D.46228, D.46229);
  event.132 = event;
  switch_event_add_header_string (event.132, 1, "NTP-Most-Significant-Word", &value);
  D.46228 = (const char * restrict) &"%u"[0];
  D.46230 = rtcp_frame.ntp_lsw;
  snprintf (&value, 30, D.46228, D.46230);
  event.132 = event;
  switch_event_add_header_string (event.132, 1, "NTP-Least-Significant-Word", &value);
  D.46228 = (const char * restrict) &"%u"[0];
  D.46231 = rtcp_frame.timestamp;
  snprintf (&value, 30, D.46228, D.46231);
  event.132 = event;
  switch_event_add_header_string (event.132, 1, "RTP-Timestamp", &value);
  D.46228 = (const char * restrict) &"%u"[0];
  D.46232 = rtcp_frame.packet_count;
  snprintf (&value, 30, D.46228, D.46232);
  event.132 = event;
  switch_event_add_header_string (event.132, 1, "Sender-Packet-Count", &value);
  D.46228 = (const char * restrict) &"%u"[0];
  D.46233 = rtcp_frame.octect_count;
  snprintf (&value, 30, D.46228, D.46233);
  event.132 = event;
  switch_event_add_header_string (event.132, 1, "Octect-Packet-Count", &value);
  D.46234 = (const char * restrict) &"%d"[0];
  D.46235 = engine->read_frame.timestamp;
  snprintf (&value, 30, D.46234, D.46235);
  event.132 = event;
  switch_event_add_header_string (event.132, 1, "Last-RTP-Timestamp", &value);
  D.46228 = (const char * restrict) &"%u"[0];
  D.46236 = engine->read_frame.rate;
  snprintf (&value, 30, D.46228, D.46236);
  event.132 = event;
  switch_event_add_header_string (event.132, 1, "RTP-Rate", &value);
  D.46237 = (const char * restrict) &"%lld"[0];
  D.46238 = switch_time_now ();
  snprintf (&value, 30, D.46237, D.46238);
  event.132 = event;
  switch_event_add_header_string (event.132, 1, "Capture-Time", &value);
  i = 0;
  goto <D.38746>;
  <D.38745>:
  D.46239 = (const char * restrict) &"Source%u-SSRC"[0];
  snprintf (&header, 50, D.46239, i);
  D.46226 = (const char * restrict) &"%.8x"[0];
  D.46240 = rtcp_frame.reports[i].ssrc;
  snprintf (&value, 30, D.46226, D.46240);
  event.132 = event;
  switch_event_add_header_string (event.132, 1, &header, &value);
  D.46241 = (const char * restrict) &"Source%u-Fraction"[0];
  snprintf (&header, 50, D.46241, i);
  D.46228 = (const char * restrict) &"%u"[0];
  D.46242 = rtcp_frame.reports[i].fraction;
  D.46243 = (int) D.46242;
  snprintf (&value, 30, D.46228, D.46243);
  event.132 = event;
  switch_event_add_header_string (event.132, 1, &header, &value);
  D.46244 = (const char * restrict) &"Source%u-Lost"[0];
  snprintf (&header, 50, D.46244, i);
  D.46228 = (const char * restrict) &"%u"[0];
  D.46245 = rtcp_frame.reports[i].lost;
  snprintf (&value, 30, D.46228, D.46245);
  event.132 = event;
  switch_event_add_header_string (event.132, 1, &header, &value);
  D.46246 = (const char * restrict) &"Source%u-Highest-Sequence-Number-Received"[0];
  snprintf (&header, 50, D.46246, i);
  D.46228 = (const char * restrict) &"%u"[0];
  D.46247 = rtcp_frame.reports[i].highest_sequence_number_received;
  snprintf (&value, 30, D.46228, D.46247);
  event.132 = event;
  switch_event_add_header_string (event.132, 1, &header, &value);
  D.46248 = (const char * restrict) &"Source%u-Jitter"[0];
  snprintf (&header, 50, D.46248, i);
  D.46228 = (const char * restrict) &"%u"[0];
  D.46249 = rtcp_frame.reports[i].jitter;
  snprintf (&value, 30, D.46228, D.46249);
  event.132 = event;
  switch_event_add_header_string (event.132, 1, &header, &value);
  D.46250 = (const char * restrict) &"Source%u-LSR"[0];
  snprintf (&header, 50, D.46250, i);
  D.46228 = (const char * restrict) &"%u"[0];
  D.46251 = rtcp_frame.reports[i].lsr;
  snprintf (&value, 30, D.46228, D.46251);
  event.132 = event;
  switch_event_add_header_string (event.132, 1, &header, &value);
  D.46252 = (const char * restrict) &"Source%u-DLSR"[0];
  snprintf (&header, 50, D.46252, i);
  D.46228 = (const char * restrict) &"%u"[0];
  D.46253 = rtcp_frame.reports[i].dlsr;
  snprintf (&value, 30, D.46228, D.46253);
  event.132 = event;
  switch_event_add_header_string (event.132, 1, &header, &value);
  i = i + 1;
  <D.38746>:
  D.46254 = rtcp_frame.report_count;
  D.46255 = (int) D.46254;
  if (D.46255 > i) goto <D.38745>; else goto <D.38747>;
  <D.38747>:
  switch_event_fire_detailed ("src/switch_core_media.c", &__func__, 1809, &event, 0B);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1810, session, 110, "Dispatched RTCP event\n");
  <D.46221>:
  <D.46218>:
  D.46256 = engine->read_frame.flags;
  D.46257 = D.46256 & 32;
  if (D.46257 != 0) goto <D.46258>; else goto <D.46259>;
  <D.46258>:
  D.46162 = &engine->read_frame;
  *frame = D.46162;
  status = 0;
  goto end;
  <D.46259>:
  D.46140 = engine->rtp_session;
  D.46260 = switch_rtp_has_dtmf (D.46140);
  if (D.46260 != 0) goto <D.46261>; else goto <D.46262>;
  <D.46261>:
  dtmf = {};
  D.46140 = engine->rtp_session;
  switch_rtp_dequeue_dtmf (D.46140, &dtmf);
  D.46145 = session->channel;
  switch_channel_queue_dtmf (D.46145, &dtmf);
  <D.46262>:
  D.46263 = engine->read_frame.datalen;
  if (D.46263 != 0) goto <D.46264>; else goto <D.46265>;
  <D.46264>:
  bytes = 0;
  frames = 1;
  D.46256 = engine->read_frame.flags;
  D.46266 = D.46256 & 1;
  if (D.46266 == 0) goto <D.46267>; else goto <D.46268>;
  <D.46267>:
  D.46136 = engine->read_codec.implementation;
  if (D.46136 == 0B) goto <D.46269>; else goto <D.46271>;
  <D.46271>:
  D.46138 = &engine->read_codec;
  D.46272 = switch_core_codec_ready (D.46138);
  if (D.46272 == 0) goto <D.46269>; else goto <D.46270>;
  <D.46269>:
  *frame = 0B;
  status = 9;
  goto end;
  <D.46270>:
  D.46273 = smh->media_flags[2];
  if (D.46273 != 0) goto <D.46274>; else goto <D.46275>;
  <D.46274>:
  D.46276 = engine->check_frames;
  if (D.46276 <= 49) goto <D.46277>; else goto <D.46278>;
  <D.46277>:
  D.46276 = engine->check_frames;
  D.46279 = D.46276 + 1;
  engine->check_frames = D.46279;
  D.46176 = engine->read_impl.encoded_bytes_per_packet;
  if (D.46176 == 0) goto <D.46280>; else goto <D.46281>;
  <D.46280>:
  engine->check_frames = 50;
  goto skip;
  <D.46281>:
  D.46273 = smh->media_flags[2];
  if (D.46273 != 0) goto <D.46284>; else goto <D.46282>;
  <D.46284>:
  D.46263 = engine->read_frame.datalen;
  D.46285 = D.46263 % 10;
  if (D.46285 == 0) goto <D.46286>; else goto <D.46282>;
  <D.46286>:
  D.46289 = engine->last_ts;
  if (D.46289 != 0) goto <D.46290>; else goto <D.46287>;
  <D.46290>:
  D.46263 = engine->read_frame.datalen;
  D.46176 = engine->read_impl.encoded_bytes_per_packet;
  if (D.46263 != D.46176) goto <D.46291>; else goto <D.46287>;
  <D.46291>:
  D.46235 = engine->read_frame.timestamp;
  D.46289 = engine->last_ts;
  D.46292 = D.46235 - D.46289;
  D.46201 = engine->read_impl.samples_per_second;
  D.46293 = D.46201 / 1000;
  codec_ms = D.46292 / D.46293;
  D.46296 = codec_ms % 10;
  if (D.46296 != 0) goto <D.46294>; else goto <D.46297>;
  <D.46297>:
  D.46204 = engine->read_impl.samples_per_packet;
  D.46298 = D.46204 * 10;
  if (D.46298 < codec_ms) goto <D.46294>; else goto <D.46295>;
  <D.46294>:
  engine->last_ts = 0;
  goto skip;
  <D.46295>:
  D.46299 = engine->last_codec_ms;
  if (D.46299 != 0) goto <D.46300>; else goto <D.46301>;
  <D.46300>:
  D.46299 = engine->last_codec_ms;
  if (D.46299 == codec_ms) goto <D.46302>; else goto <D.46303>;
  <D.46302>:
  D.46304 = engine->mismatch_count;
  D.46305 = D.46304 + 1;
  engine->mismatch_count = D.46305;
  <D.46303>:
  <D.46301>:
  engine->last_codec_ms = codec_ms;
  D.46304 = engine->mismatch_count;
  if (D.46304 > 5) goto <D.46306>; else goto <D.46307>;
  <D.46306>:
  D.46308 = engine->cur_payload_map;
  D.46309 = D.46308->codec_ms;
  if (D.46309 != codec_ms) goto <D.46310>; else goto <D.46311>;
  <D.46310>:
  if (codec_ms > 120) goto <D.46312>; else goto <D.46313>;
  <D.46312>:
  codec_ms.133 = (int) codec_ms;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1871, session, 4, "Your phone is trying to send timestamps that suggest an increment of %dms per packet\nThat seems hard to believe so I am going to go on ahead and um ignore that, mmkay?\n", codec_ms.133);
  engine->check_frames = 50;
  goto skip;
  <D.46313>:
  engine->read_frame.datalen = 0;
  D.46308 = engine->cur_payload_map;
  D.46309 = D.46308->codec_ms;
  if (D.46309 != codec_ms) goto <D.46315>; else goto <D.46316>;
  <D.46315>:
  D.46308 = engine->cur_payload_map;
  D.46309 = D.46308->codec_ms;
  D.46317 = (int) D.46309;
  codec_ms.133 = (int) codec_ms;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1882, session, 4, "Asynchronous PTIME not supported, changing our end from %d to %d\n", D.46317, codec_ms.133);
  D.46145 = session->channel;
  D.46308 = engine->cur_payload_map;
  D.46309 = D.46308->codec_ms;
  D.46317 = (int) D.46309;
  codec_ms.133 = (int) codec_ms;
  switch_channel_set_variable_printf (D.46145, "rtp_h_X-Broken-PTIME", "Adv=%d;Sent=%d", D.46317, codec_ms.133);
  D.46308 = engine->cur_payload_map;
  D.46308->codec_ms = codec_ms;
  engine->reset_codec = 2;
  <D.46316>:
  <D.46311>:
  <D.46307>:
  goto <D.46288>;
  <D.46287>:
  engine->mismatch_count = 0;
  <D.46288>:
  D.46235 = engine->read_frame.timestamp;
  engine->last_ts = D.46235;
  goto <D.46283>;
  <D.46282>:
  engine->mismatch_count = 0;
  engine->last_ts = 0;
  <D.46283>:
  <D.46278>:
  <D.46275>:
  D.46179 = engine->reset_codec;
  if (D.46179 == 0) goto <D.46322>; else goto <D.46323>;
  <D.46322>:
  D.46324 = engine->codec_negotiated;
  if (D.46324 != 0) goto <D.46325>; else goto <D.46326>;
  <D.46325>:
  D.46327 = smh->mparams;
  D.46328 = D.46327->cng_pt;
  if (D.46328 == 0) goto <D.46321>; else goto <D.46329>;
  <D.46329>:
  D.46330 = engine->read_frame.payload;
  D.46327 = smh->mparams;
  D.46328 = D.46327->cng_pt;
  if (D.46330 != D.46328) goto <D.46321>; else goto <D.46319>;
  <D.46321>:
  D.46327 = smh->mparams;
  D.46331 = D.46327->recv_te;
  if (D.46331 == 0) goto <D.46320>; else goto <D.46332>;
  <D.46332>:
  D.46330 = engine->read_frame.payload;
  D.46327 = smh->mparams;
  D.46331 = D.46327->recv_te;
  if (D.46330 != D.46331) goto <D.46320>; else goto <D.46319>;
  <D.46320>:
  D.46327 = smh->mparams;
  D.46333 = D.46327->te;
  if (D.46333 == 0) goto <D.46318>; else goto <D.46334>;
  <D.46334>:
  D.46330 = engine->read_frame.payload;
  D.46327 = smh->mparams;
  D.46333 = D.46327->te;
  if (D.46330 != D.46333) goto <D.46318>; else goto <D.46319>;
  <D.46318>:
  D.46330 = engine->read_frame.payload;
  D.46308 = engine->cur_payload_map;
  D.46335 = D.46308->recv_pt;
  if (D.46330 != D.46335) goto <D.46336>; else goto <D.46337>;
  <D.46336>:
  D.46330 = engine->read_frame.payload;
  D.46308 = engine->cur_payload_map;
  D.46338 = D.46308->agreed_pt;
  if (D.46330 != D.46338) goto <D.46339>; else goto <D.46340>;
  <D.46339>:
  D.46330 = engine->read_frame.payload;
  D.46308 = engine->cur_payload_map;
  D.46341 = D.46308->pt;
  if (D.46330 != D.46341) goto <D.46342>; else goto <D.46343>;
  <D.46342>:
  D.46330 = engine->read_frame.payload;
  D.46344 = (int) D.46330;
  D.46308 = engine->cur_payload_map;
  D.46338 = D.46308->agreed_pt;
  D.46345 = (int) D.46338;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1926, session, 7, "alternate payload received (received %d, expecting %d)\n", D.46344, D.46345);
  D.46346 = smh->sdp_mutex;
  switch_mutex_lock (D.46346);
  pmap = engine->payload_map;
  goto <D.38756>;
  <D.38755>:
  D.46330 = engine->read_frame.payload;
  D.46347 = pmap->recv_pt;
  if (D.46330 == D.46347) goto <D.46348>; else goto <D.46349>;
  <D.46348>:
  D.46350 = pmap->negotiated;
  if (D.46350 != 0) goto <D.46351>; else goto <D.46352>;
  <D.46351>:
  engine->cur_payload_map = pmap;
  D.46308 = engine->cur_payload_map;
  D.46308->current = 1;
  D.46353 = pmap->iananame;
  D.46354 = pmap->pt;
  D.46355 = (int) D.46354;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1937, session, 4, "Changing current codec to %s (payload type %d).\n", D.46353, D.46355);
  engine->reset_codec = 1;
  goto <D.38754>;
  <D.46352>:
  <D.46349>:
  pmap = pmap->next;
  <D.38756>:
  if (pmap != 0B) goto <D.38755>; else goto <D.38754>;
  <D.38754>:
  D.46346 = smh->sdp_mutex;
  switch_mutex_unlock (D.46346);
  D.46179 = engine->reset_codec;
  if (D.46179 == 0) goto <D.46356>; else goto <D.46357>;
  <D.46356>:
  D.46330 = engine->read_frame.payload;
  D.46344 = (int) D.46330;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1949, session, 4, "Could not change to payload type %d, ignoring...\n", D.46344);
  <D.46357>:
  <D.46343>:
  <D.46340>:
  <D.46337>:
  <D.46319>:
  <D.46326>:
  <D.46323>:
  skip:
  bytes = engine->read_impl.encoded_bytes_per_packet;
  if (bytes != 0) goto <D.46358>; else goto <D.46359>;
  <D.46358>:
  D.46263 = engine->read_frame.datalen;
  D.46360 = D.46263 / bytes;
  frames = (int) D.46360;
  <D.46359>:
  D.46204 = engine->read_impl.samples_per_packet;
  frames.134 = (uint32_t) frames;
  D.46362 = D.46204 * frames.134;
  engine->read_frame.samples = D.46362;
  D.46263 = engine->read_frame.datalen;
  if (D.46263 == 0) goto <D.46363>; else goto <D.46364>;
  <D.46363>:
  // predicted unlikely by continue predictor.
  goto <D.38757>;
  <D.46364>:
  <D.46268>:
  goto <D.38758>;
  <D.46265>:
  <D.38757>:
  D.46129 = smh->media_flags[0];
  if (D.46129 != 0) goto <D.46365>; else goto <D.38758>;
  <D.46365>:
  D.46263 = engine->read_frame.datalen;
  if (D.46263 == 0) goto <D.38759>; else goto <D.38758>;
  <D.38758>:
  D.46263 = engine->read_frame.datalen;
  if (D.46263 == 0) goto <D.46366>; else goto <D.46367>;
  <D.46366>:
  *frame = 0B;
  <D.46367>:
  D.46162 = &engine->read_frame;
  *frame = D.46162;
  status = 0;
  end:
  D.46151 = engine->read_mutex[type];
  if (D.46151 != 0B) goto <D.46368>; else goto <D.46369>;
  <D.46368>:
  D.46151 = engine->read_mutex[type];
  switch_mutex_unlock (D.46151);
  <D.46369>:
  D.46128 = status;
  goto <D.46370>;
  <D.46370>:
  return D.46128;
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
  int D.46419;
  int D.46417;
  int D.46416;
  const struct switch_codec_implementation_t *[50] * D.46415;
  int D.46414;
  unsigned int D.46413;
  char *[50] * D.46412;
  switch_core_media_flag_t D.46407;
  const char D.46398;
  struct switch_core_session_t * D.46389;
  int D.46386;
  struct switch_core_media_params_t * D.46385;
  uint32_t D.46382;
  uint32_t D.46380;
  struct switch_channel_t * D.46379;

  codec_string = 0B;
  ocodec = 0B;
  if (session == 0B) goto <D.46371>; else goto <D.46372>;
  <D.46371>:
  __assert_fail ("session", "src/switch_core_media.c", 1555, &__PRETTY_FUNCTION__);
  <D.46372>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.46373>; else goto <D.46374>;
  <D.46373>:
  goto <D.46420>;
  <D.46374>:
  if (force == 0) goto <D.46377>; else goto <D.46378>;
  <D.46377>:
  D.46379 = session->channel;
  D.46380 = switch_channel_test_flag (D.46379, 15);
  if (D.46380 != 0) goto <D.46375>; else goto <D.46381>;
  <D.46381>:
  D.46379 = session->channel;
  D.46382 = switch_channel_test_flag (D.46379, 29);
  if (D.46382 != 0) goto <D.46375>; else goto <D.46376>;
  <D.46375>:
  goto <D.46420>;
  <D.46376>:
  <D.46378>:
  if (force != 0) goto <D.46383>; else goto <D.46384>;
  <D.46383>:
  D.46385 = smh->mparams;
  D.46385->num_codecs = 0;
  <D.46384>:
  D.46385 = smh->mparams;
  D.46386 = D.46385->num_codecs;
  if (D.46386 != 0) goto <D.46387>; else goto <D.46388>;
  <D.46387>:
  goto <D.46420>;
  <D.46388>:
  smh->payload_space = 0;
  D.46389 = smh->session;
  if (D.46389 == 0B) goto <D.46390>; else goto <D.46391>;
  <D.46390>:
  __assert_fail ("smh->session != ((void *)0)", "src/switch_core_media.c", 1575, &__PRETTY_FUNCTION__);
  <D.46391>:
  D.46379 = session->channel;
  abs = switch_channel_get_variable_dup (D.46379, "absolute_codec_string", 1, -1);
  if (abs != 0B) goto <D.46392>; else goto <D.46393>;
  <D.46392>:
  codec_string = abs;
  goto ready;
  <D.46393>:
  D.46379 = session->channel;
  codec_string = switch_channel_get_variable_dup (D.46379, "codec_string", 1, -1);
  if (codec_string == 0B) goto <D.46394>; else goto <D.46395>;
  <D.46394>:
  D.46389 = smh->session;
  codec_string = switch_core_media_get_codec_string (D.46389);
  <D.46395>:
  if (codec_string != 0B) goto <D.46396>; else goto <D.46397>;
  <D.46396>:
  D.46398 = *codec_string;
  if (D.46398 == 61) goto <D.46399>; else goto <D.46400>;
  <D.46399>:
  codec_string = codec_string + 1;
  goto ready;
  <D.46400>:
  <D.46397>:
  D.46379 = session->channel;
  ocodec = switch_channel_get_variable_dup (D.46379, "originator_codec", 1, -1);
  if (ocodec != 0B) goto <D.46401>; else goto <D.46402>;
  <D.46401>:
  if (codec_string == 0B) goto <D.46403>; else goto <D.46406>;
  <D.46406>:
  D.46407 = smh->media_flags[1];
  if (D.46407 != 0) goto <D.46403>; else goto <D.46404>;
  <D.46403>:
  codec_string = ocodec;
  goto <D.46405>;
  <D.46404>:
  D.46389 = smh->session;
  codec_string = switch_core_session_sprintf (D.46389, "%s,%s", ocodec, codec_string);
  if (codec_string == 0B) goto <D.46408>; else goto <D.46409>;
  <D.46408>:
  codec_string = ocodec;
  <D.46409>:
  <D.46405>:
  <D.46402>:
  ready:
  if (codec_string != 0B) goto <D.46410>; else goto <D.46411>;
  <D.46410>:
  D.46389 = smh->session;
  tmp_codec_string = switch_core_perform_session_strdup (D.46389, codec_string, "src/switch_core_media.c", &__func__, 1603);
  D.46379 = session->channel;
  switch_channel_set_variable_var_check (D.46379, "rtp_use_codec_string", codec_string, 1);
  D.46412 = &smh->codec_order;
  D.46413 = switch_separate_string (tmp_codec_string, 44, D.46412, 50);
  D.46414 = (int) D.46413;
  smh->codec_order_last = D.46414;
  D.46385 = smh->mparams;
  D.46415 = &smh->codecs;
  D.46412 = &smh->codec_order;
  D.46416 = smh->codec_order_last;
  D.46417 = switch_loadable_module_get_codecs_sorted (D.46415, 50, D.46412, D.46416);
  D.46385->num_codecs = D.46417;
  goto <D.46418>;
  <D.46411>:
  D.46385 = smh->mparams;
  D.46415 = &smh->codecs;
  D.46419 = switch_loadable_module_get_codecs (D.46415, 50);
  D.46385->num_codecs = D.46419;
  <D.46418>:
  <D.46420>:
  return;
}



;; Function switch_core_media_get_mparams (switch_core_media_get_mparams)

switch_core_media_get_mparams (struct switch_media_handle_t * smh)
{
  static const char __PRETTY_FUNCTION__[30] = "switch_core_media_get_mparams";
  struct switch_core_media_params_t * D.46423;

  if (smh == 0B) goto <D.46421>; else goto <D.46422>;
  <D.46421>:
  __assert_fail ("smh", "src/switch_core_media.c", 1545, &__PRETTY_FUNCTION__);
  <D.46422>:
  D.46423 = smh->mparams;
  goto <D.46424>;
  <D.46424>:
  return D.46423;
}



;; Function switch_core_session_clear_media_handle (switch_core_session_clear_media_handle)

switch_core_session_clear_media_handle (struct switch_core_session_t * session)
{
  switch_status_t D.46428;
  struct switch_media_handle_t * D.46425;

  D.46425 = session->media_handle;
  if (D.46425 == 0B) goto <D.46426>; else goto <D.46427>;
  <D.46426>:
  D.46428 = 1;
  goto <D.46429>;
  <D.46427>:
  D.46428 = 0;
  goto <D.46429>;
  <D.46429>:
  return D.46428;
}



;; Function switch_core_session_get_media_handle (switch_core_session_get_media_handle)

switch_core_session_get_media_handle (struct switch_core_session_t * session)
{
  struct switch_media_handle_t * D.46433;
  switch_status_t D.46430;

  D.46430 = switch_core_session_media_handle_ready (session);
  if (D.46430 == 0) goto <D.46431>; else goto <D.46432>;
  <D.46431>:
  D.46433 = session->media_handle;
  goto <D.46434>;
  <D.46432>:
  D.46433 = 0B;
  goto <D.46434>;
  <D.46434>:
  return D.46433;
}



;; Function switch_core_session_media_handle_ready (switch_core_session_media_handle_ready)

switch_core_session_media_handle_ready (struct switch_core_session_t * session)
{
  switch_status_t D.46444;
  _Bool D.46441;
  int D.46440;
  int D.46439;
  smh_flag_t D.46438;
  struct switch_media_handle_t * D.46435;

  D.46435 = session->media_handle;
  if (D.46435 != 0B) goto <D.46436>; else goto <D.46437>;
  <D.46436>:
  D.46435 = session->media_handle;
  D.46438 = D.46435->flags;
  D.46439 = (int) D.46438;
  D.46440 = D.46439 & 1;
  D.46441 = (_Bool) D.46440;
  if (D.46441 != 0) goto <D.46442>; else goto <D.46443>;
  <D.46442>:
  D.46444 = 0;
  goto <D.46445>;
  <D.46443>:
  <D.46437>:
  D.46444 = 1;
  goto <D.46445>;
  <D.46445>:
  return D.46444;
}



;; Function switch_media_handle_test_media_flag (switch_media_handle_test_media_flag)

switch_media_handle_test_media_flag (struct switch_media_handle_t * smh, switch_core_media_flag_t flag)
{
  static const char __PRETTY_FUNCTION__[36] = "switch_media_handle_test_media_flag";
  switch_core_media_flag_t D.46449;
  int32_t D.46448;

  if (smh == 0B) goto <D.46446>; else goto <D.46447>;
  <D.46446>:
  __assert_fail ("smh", "src/switch_core_media.c", 1510, &__PRETTY_FUNCTION__);
  <D.46447>:
  D.46449 = smh->media_flags[flag];
  D.46448 = (int32_t) D.46449;
  goto <D.46450>;
  <D.46450>:
  return D.46448;
}



;; Function switch_media_handle_clear_media_flag (switch_media_handle_clear_media_flag)

switch_media_handle_clear_media_flag (struct switch_media_handle_t * smh, switch_core_media_flag_t flag)
{
  static const char __PRETTY_FUNCTION__[37] = "switch_media_handle_clear_media_flag";

  if (smh == 0B) goto <D.46451>; else goto <D.46452>;
  <D.46451>:
  __assert_fail ("smh", "src/switch_core_media.c", 1503, &__PRETTY_FUNCTION__);
  <D.46452>:
  smh->media_flags[flag] = 0;
  return;
}



;; Function switch_media_handle_set_media_flags (switch_media_handle_set_media_flags)

switch_media_handle_set_media_flags (struct switch_media_handle_t * smh, switch_core_media_flag_t * flags)
{
  static const char __PRETTY_FUNCTION__[36] = "switch_media_handle_set_media_flags";
  int i;
  switch_core_media_flag_t D.46458;
  switch_core_media_flag_t * D.46457;
  unsigned int D.46456;
  unsigned int i.135;

  if (smh == 0B) goto <D.46453>; else goto <D.46454>;
  <D.46453>:
  __assert_fail ("smh", "src/switch_core_media.c", 1491, &__PRETTY_FUNCTION__);
  <D.46454>:
  i = 0;
  goto <D.38683>;
  <D.38682>:
  i.135 = (unsigned int) i;
  D.46456 = i.135 * 4;
  D.46457 = flags + D.46456;
  D.46458 = *D.46457;
  if (D.46458 != 0) goto <D.46459>; else goto <D.46460>;
  <D.46459>:
  i.135 = (unsigned int) i;
  D.46456 = i.135 * 4;
  D.46457 = flags + D.46456;
  D.46458 = *D.46457;
  smh->media_flags[i] = D.46458;
  <D.46460>:
  i = i + 1;
  <D.38683>:
  if (i <= 16) goto <D.38682>; else goto <D.38684>;
  <D.38684>:
  return;
}



;; Function switch_media_handle_set_media_flag (switch_media_handle_set_media_flag)

switch_media_handle_set_media_flag (struct switch_media_handle_t * smh, switch_core_media_flag_t flag)
{
  static const char __PRETTY_FUNCTION__[35] = "switch_media_handle_set_media_flag";

  if (smh == 0B) goto <D.46461>; else goto <D.46462>;
  <D.46461>:
  __assert_fail ("smh", "src/switch_core_media.c", 1482, &__PRETTY_FUNCTION__);
  <D.46462>:
  smh->media_flags[flag] = 1;
  return;
}



;; Function switch_media_handle_create (switch_media_handle_create)

switch_media_handle_create (struct switch_media_handle_t * * smhp, struct switch_core_session_t * session, struct switch_core_media_params_t * params)
{
  static const char __func__[27] = "switch_media_handle_create";
  int i;
  struct switch_media_handle_t * smh;
  switch_status_t status;
  switch_status_t D.46497;
  struct switch_channel_t * D.46496;
  struct payload_map_t * D.46495;
  struct payload_map_t * D.46494;
  void * D.46493;
  struct payload_map_t * D.46492;
  struct payload_map_t * D.46491;
  void * D.46490;
  struct switch_memory_pool_t * D.46489;
  unsigned int D.46488;
  unsigned int D.46487;
  unsigned int D.46486;
  time_t D.46485;
  unsigned int D.46484;
  struct switch_rtp_engine_t * D.46483;
  unsigned int D.46482;
  unsigned int D.46481;
  time_t D.46480;
  unsigned int D.46479;
  struct switch_rtp_engine_t[2] * D.46478;
  struct switch_memory_pool_t * D.46477;
  struct switch_mutex_t * * D.46476;
  struct switch_memory_pool_t * D.46475;
  struct switch_mutex_t * * D.46474;
  switch_rtp_crypto_key_type_t i.136;
  unsigned int D.46472;
  smh_flag_t D.46471;
  struct switch_media_handle_t * D.46468;
  void * D.46467;
  int D.46464;
  char * D.46463;

  status = 1;
  smh = 0B;
  *smhp = 0B;
  D.46463 = params->sdp_username;
  D.46464 = _zstr (D.46463);
  if (D.46464 != 0) goto <D.46465>; else goto <D.46466>;
  <D.46465>:
  params->sdp_username = "FreeSWITCH";
  <D.46466>:
  D.46467 = switch_core_perform_session_alloc (session, 23856, "src/switch_core_media.c", &__func__, 1426);
  session->media_handle = D.46467;
  D.46468 = session->media_handle;
  if (D.46468 != 0B) goto <D.46469>; else goto <D.46470>;
  <D.46469>:
  D.46468 = session->media_handle;
  D.46468->session = session;
  D.46468 = session->media_handle;
  *smhp = D.46468;
  D.46468 = session->media_handle;
  D.46468 = session->media_handle;
  D.46471 = D.46468->flags;
  D.46472 = D.46471 | 1;
  D.46468->flags = D.46472;
  D.46468 = session->media_handle;
  D.46468->media_flags[0] = 1;
  D.46468 = session->media_handle;
  D.46468->engines[0].read_frame.buflen = 16384;
  D.46468 = session->media_handle;
  D.46468->engines[0].type = 0;
  D.46468 = session->media_handle;
  D.46468->engines[0].crypto_type = 9;
  i = 0;
  goto <D.38663>;
  <D.38662>:
  D.46468 = session->media_handle;
  i.136 = (switch_rtp_crypto_key_type_t) i;
  D.46468->engines[0].ssec[i].crypto_type = i.136;
  i = i + 1;
  <D.38663>:
  if (i <= 8) goto <D.38662>; else goto <D.38664>;
  <D.38664>:
  D.46468 = session->media_handle;
  D.46468->engines[1].read_frame.buflen = 16384;
  D.46468 = session->media_handle;
  D.46468->engines[1].type = 1;
  D.46468 = session->media_handle;
  D.46468->engines[1].crypto_type = 9;
  i = 0;
  goto <D.38666>;
  <D.38665>:
  D.46468 = session->media_handle;
  i.136 = (switch_rtp_crypto_key_type_t) i;
  D.46468->engines[1].ssec[i].crypto_type = i.136;
  i = i + 1;
  <D.38666>:
  if (i <= 8) goto <D.38665>; else goto <D.38667>;
  <D.38667>:
  D.46468 = session->media_handle;
  D.46468->mparams = params;
  i = 0;
  goto <D.38669>;
  <D.38668>:
  D.46468 = session->media_handle;
  D.46468->crypto_suite_order[i] = 9;
  i = i + 1;
  <D.38669>:
  if (i <= 9) goto <D.38668>; else goto <D.38670>;
  <D.38670>:
  D.46468 = session->media_handle;
  D.46474 = &D.46468->mutex;
  D.46475 = switch_core_session_get_pool (session);
  switch_mutex_init (D.46474, 1, D.46475);
  D.46468 = session->media_handle;
  D.46476 = &D.46468->sdp_mutex;
  D.46477 = switch_core_session_get_pool (session);
  switch_mutex_init (D.46476, 1, D.46477);
  D.46468 = session->media_handle;
  D.46468 = session->media_handle;
  D.46478 = &D.46468->engines;
  D.46479 = (unsigned int) D.46478;
  D.46480 = time (0B);
  D.46481 = (unsigned int) D.46480;
  D.46482 = D.46479 + D.46481;
  D.46468->engines[0].ssrc = D.46482;
  D.46468 = session->media_handle;
  D.46468 = session->media_handle;
  D.46483 = &D.46468->engines[1];
  D.46484 = (unsigned int) D.46483;
  D.46485 = time (0B);
  D.46486 = (unsigned int) D.46485;
  D.46487 = D.46486 / 2;
  D.46488 = D.46484 + D.46487;
  D.46468->engines[1].ssrc = D.46488;
  D.46468 = session->media_handle;
  D.46489 = session->pool;
  D.46490 = switch_core_perform_alloc (D.46489, 84, "src/switch_core_media.c", &__func__, 1464);
  D.46468->engines[0].payload_map = D.46490;
  D.46468 = session->media_handle;
  D.46468 = session->media_handle;
  D.46491 = D.46468->engines[0].payload_map;
  D.46468->engines[0].cur_payload_map = D.46491;
  D.46468 = session->media_handle;
  D.46492 = D.46468->engines[0].cur_payload_map;
  D.46492->current = 1;
  D.46468 = session->media_handle;
  D.46489 = session->pool;
  D.46493 = switch_core_perform_alloc (D.46489, 84, "src/switch_core_media.c", &__func__, 1467);
  D.46468->engines[1].payload_map = D.46493;
  D.46468 = session->media_handle;
  D.46468 = session->media_handle;
  D.46494 = D.46468->engines[1].payload_map;
  D.46468->engines[1].cur_payload_map = D.46494;
  D.46468 = session->media_handle;
  D.46495 = D.46468->engines[1].cur_payload_map;
  D.46495->current = 1;
  D.46496 = session->channel;
  switch_channel_set_flag_value (D.46496, 111, 1);
  status = 0;
  <D.46470>:
  D.46497 = status;
  goto <D.46498>;
  <D.46498>:
  return D.46497;
}



;; Function switch_media_handle_destroy (switch_media_handle_destroy)

switch_media_handle_destroy (struct switch_core_session_t * session)
{
  static const char __PRETTY_FUNCTION__[28] = "switch_media_handle_destroy";
  struct switch_rtp_engine_t * v_engine;
  struct switch_rtp_engine_t * a_engine;
  struct switch_media_handle_t * smh;
  switch_bool_t D.46516;
  struct switch_codec_t * D.46515;
  switch_bool_t D.46512;
  struct switch_codec_t * D.46511;
  switch_bool_t D.46508;
  struct switch_codec_t * D.46507;
  switch_bool_t D.46504;
  struct switch_codec_t * D.46503;

  if (session == 0B) goto <D.46499>; else goto <D.46500>;
  <D.46499>:
  __assert_fail ("session", "src/switch_core_media.c", 1378, &__PRETTY_FUNCTION__);
  <D.46500>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.46501>; else goto <D.46502>;
  <D.46501>:
  goto <D.46519>;
  <D.46502>:
  a_engine = &smh->engines;
  v_engine = &smh->engines[1];
  D.46503 = &a_engine->read_codec;
  D.46504 = switch_core_codec_ready (D.46503);
  if (D.46504 != 0) goto <D.46505>; else goto <D.46506>;
  <D.46505>:
  D.46503 = &a_engine->read_codec;
  switch_core_codec_destroy (D.46503);
  <D.46506>:
  D.46507 = &a_engine->write_codec;
  D.46508 = switch_core_codec_ready (D.46507);
  if (D.46508 != 0) goto <D.46509>; else goto <D.46510>;
  <D.46509>:
  D.46507 = &a_engine->write_codec;
  switch_core_codec_destroy (D.46507);
  <D.46510>:
  D.46511 = &v_engine->read_codec;
  D.46512 = switch_core_codec_ready (D.46511);
  if (D.46512 != 0) goto <D.46513>; else goto <D.46514>;
  <D.46513>:
  D.46511 = &v_engine->read_codec;
  switch_core_codec_destroy (D.46511);
  <D.46514>:
  D.46515 = &v_engine->write_codec;
  D.46516 = switch_core_codec_ready (D.46515);
  if (D.46516 != 0) goto <D.46517>; else goto <D.46518>;
  <D.46517>:
  D.46515 = &v_engine->write_codec;
  switch_core_codec_destroy (D.46515);
  <D.46518>:
  switch_core_session_unset_read_codec (session);
  switch_core_session_unset_write_codec (session);
  switch_core_media_deactivate_rtp (session);
  <D.46519>:
  return;
}



;; Function switch_core_media_set_stats (switch_core_media_set_stats)

switch_core_media_set_stats (struct switch_core_session_t * session)
{
  struct switch_media_handle_t * D.46520;

  D.46520 = session->media_handle;
  if (D.46520 == 0B) goto <D.46521>; else goto <D.46522>;
  <D.46521>:
  goto <D.46523>;
  <D.46522>:
  set_stats (session, 0, "audio");
  set_stats (session, 1, "video");
  <D.46523>:
  return;
}



;; Function set_stats (set_stats)

set_stats (struct switch_core_session_t * session, switch_media_type_t type, const char * prefix)
{
  char var_val[35];
  char var_name[256];
  struct switch_channel_t * channel;
  struct switch_rtp_stats_t * stats;
  uint32_t D.46662;
  const char * iftmp.163;
  uint32_t D.46657;
  const char * iftmp.162;
  switch_size_t D.46652;
  const char * iftmp.161;
  switch_size_t D.46647;
  const char * iftmp.160;
  switch_size_t D.46642;
  const char * iftmp.159;
  switch_size_t D.46637;
  const char * iftmp.158;
  switch_size_t D.46632;
  const char * iftmp.157;
  switch_size_t D.46627;
  const char * iftmp.156;
  switch_size_t D.46622;
  const char * iftmp.155;
  double D.46617;
  const char * iftmp.154;
  double D.46612;
  const char * iftmp.153;
  switch_size_t D.46607;
  const char * iftmp.152;
  double D.46602;
  const char * iftmp.151;
  double D.46597;
  const char * iftmp.150;
  double D.46592;
  const char * iftmp.149;
  double D.46587;
  const char * iftmp.148;
  double D.46582;
  const char * iftmp.147;
  switch_size_t D.46577;
  const char * iftmp.146;
  switch_size_t D.46572;
  const char * iftmp.145;
  switch_size_t D.46567;
  const char * iftmp.144;
  switch_size_t D.46562;
  const char * iftmp.143;
  switch_size_t D.46557;
  const char * iftmp.142;
  switch_size_t D.46552;
  const char * iftmp.141;
  switch_size_t D.46547;
  const char * iftmp.140;
  switch_size_t D.46542;
  const char * iftmp.139;
  switch_size_t D.46537;
  const char * iftmp.138;
  switch_size_t D.46532;
  const char * iftmp.137;
  double D.46527;
  double D.46526;

  stats = switch_core_media_get_stats (session, type, 0B);
  channel = switch_core_session_get_channel (session);
  var_name = "";
  var_val = "";
  if (stats != 0B) goto <D.46524>; else goto <D.46525>;
  <D.46524>:
  D.46526 = stats->inbound.variance;
  D.46527 = sqrt (D.46526);
  stats->inbound.std_deviation = D.46527;
  if (prefix != 0B) goto <D.46529>; else goto <D.46530>;
  <D.46529>:
  iftmp.137 = prefix;
  goto <D.46531>;
  <D.46530>:
  iftmp.137 = "";
  <D.46531>:
  switch_snprintf (&var_name, 256, "rtp_%s_%s", iftmp.137, "in_raw_bytes");
  D.46532 = stats->inbound.raw_bytes;
  switch_snprintf (&var_val, 35, "%d", D.46532);
  switch_channel_set_variable_var_check (channel, &var_name, &var_val, 1);
  if (prefix != 0B) goto <D.46534>; else goto <D.46535>;
  <D.46534>:
  iftmp.138 = prefix;
  goto <D.46536>;
  <D.46535>:
  iftmp.138 = "";
  <D.46536>:
  switch_snprintf (&var_name, 256, "rtp_%s_%s", iftmp.138, "in_media_bytes");
  D.46537 = stats->inbound.media_bytes;
  switch_snprintf (&var_val, 35, "%d", D.46537);
  switch_channel_set_variable_var_check (channel, &var_name, &var_val, 1);
  if (prefix != 0B) goto <D.46539>; else goto <D.46540>;
  <D.46539>:
  iftmp.139 = prefix;
  goto <D.46541>;
  <D.46540>:
  iftmp.139 = "";
  <D.46541>:
  switch_snprintf (&var_name, 256, "rtp_%s_%s", iftmp.139, "in_packet_count");
  D.46542 = stats->inbound.packet_count;
  switch_snprintf (&var_val, 35, "%d", D.46542);
  switch_channel_set_variable_var_check (channel, &var_name, &var_val, 1);
  if (prefix != 0B) goto <D.46544>; else goto <D.46545>;
  <D.46544>:
  iftmp.140 = prefix;
  goto <D.46546>;
  <D.46545>:
  iftmp.140 = "";
  <D.46546>:
  switch_snprintf (&var_name, 256, "rtp_%s_%s", iftmp.140, "in_media_packet_count");
  D.46547 = stats->inbound.media_packet_count;
  switch_snprintf (&var_val, 35, "%d", D.46547);
  switch_channel_set_variable_var_check (channel, &var_name, &var_val, 1);
  if (prefix != 0B) goto <D.46549>; else goto <D.46550>;
  <D.46549>:
  iftmp.141 = prefix;
  goto <D.46551>;
  <D.46550>:
  iftmp.141 = "";
  <D.46551>:
  switch_snprintf (&var_name, 256, "rtp_%s_%s", iftmp.141, "in_skip_packet_count");
  D.46552 = stats->inbound.skip_packet_count;
  switch_snprintf (&var_val, 35, "%d", D.46552);
  switch_channel_set_variable_var_check (channel, &var_name, &var_val, 1);
  if (prefix != 0B) goto <D.46554>; else goto <D.46555>;
  <D.46554>:
  iftmp.142 = prefix;
  goto <D.46556>;
  <D.46555>:
  iftmp.142 = "";
  <D.46556>:
  switch_snprintf (&var_name, 256, "rtp_%s_%s", iftmp.142, "in_jitter_packet_count");
  D.46557 = stats->inbound.jb_packet_count;
  switch_snprintf (&var_val, 35, "%d", D.46557);
  switch_channel_set_variable_var_check (channel, &var_name, &var_val, 1);
  if (prefix != 0B) goto <D.46559>; else goto <D.46560>;
  <D.46559>:
  iftmp.143 = prefix;
  goto <D.46561>;
  <D.46560>:
  iftmp.143 = "";
  <D.46561>:
  switch_snprintf (&var_name, 256, "rtp_%s_%s", iftmp.143, "in_dtmf_packet_count");
  D.46562 = stats->inbound.dtmf_packet_count;
  switch_snprintf (&var_val, 35, "%d", D.46562);
  switch_channel_set_variable_var_check (channel, &var_name, &var_val, 1);
  if (prefix != 0B) goto <D.46564>; else goto <D.46565>;
  <D.46564>:
  iftmp.144 = prefix;
  goto <D.46566>;
  <D.46565>:
  iftmp.144 = "";
  <D.46566>:
  switch_snprintf (&var_name, 256, "rtp_%s_%s", iftmp.144, "in_cng_packet_count");
  D.46567 = stats->inbound.cng_packet_count;
  switch_snprintf (&var_val, 35, "%d", D.46567);
  switch_channel_set_variable_var_check (channel, &var_name, &var_val, 1);
  if (prefix != 0B) goto <D.46569>; else goto <D.46570>;
  <D.46569>:
  iftmp.145 = prefix;
  goto <D.46571>;
  <D.46570>:
  iftmp.145 = "";
  <D.46571>:
  switch_snprintf (&var_name, 256, "rtp_%s_%s", iftmp.145, "in_flush_packet_count");
  D.46572 = stats->inbound.flush_packet_count;
  switch_snprintf (&var_val, 35, "%d", D.46572);
  switch_channel_set_variable_var_check (channel, &var_name, &var_val, 1);
  if (prefix != 0B) goto <D.46574>; else goto <D.46575>;
  <D.46574>:
  iftmp.146 = prefix;
  goto <D.46576>;
  <D.46575>:
  iftmp.146 = "";
  <D.46576>:
  switch_snprintf (&var_name, 256, "rtp_%s_%s", iftmp.146, "in_largest_jb_size");
  D.46577 = stats->inbound.largest_jb_size;
  switch_snprintf (&var_val, 35, "%d", D.46577);
  switch_channel_set_variable_var_check (channel, &var_name, &var_val, 1);
  if (prefix != 0B) goto <D.46579>; else goto <D.46580>;
  <D.46579>:
  iftmp.147 = prefix;
  goto <D.46581>;
  <D.46580>:
  iftmp.147 = "";
  <D.46581>:
  switch_snprintf (&var_name, 256, "rtp_%s_%s", iftmp.147, "in_jitter_min_variance");
  D.46582 = stats->inbound.min_variance;
  switch_snprintf (&var_val, 35, "%0.2f", D.46582);
  switch_channel_set_variable_var_check (channel, &var_name, &var_val, 1);
  if (prefix != 0B) goto <D.46584>; else goto <D.46585>;
  <D.46584>:
  iftmp.148 = prefix;
  goto <D.46586>;
  <D.46585>:
  iftmp.148 = "";
  <D.46586>:
  switch_snprintf (&var_name, 256, "rtp_%s_%s", iftmp.148, "in_jitter_max_variance");
  D.46587 = stats->inbound.max_variance;
  switch_snprintf (&var_val, 35, "%0.2f", D.46587);
  switch_channel_set_variable_var_check (channel, &var_name, &var_val, 1);
  if (prefix != 0B) goto <D.46589>; else goto <D.46590>;
  <D.46589>:
  iftmp.149 = prefix;
  goto <D.46591>;
  <D.46590>:
  iftmp.149 = "";
  <D.46591>:
  switch_snprintf (&var_name, 256, "rtp_%s_%s", iftmp.149, "in_jitter_loss_rate");
  D.46592 = stats->inbound.lossrate;
  switch_snprintf (&var_val, 35, "%0.2f", D.46592);
  switch_channel_set_variable_var_check (channel, &var_name, &var_val, 1);
  if (prefix != 0B) goto <D.46594>; else goto <D.46595>;
  <D.46594>:
  iftmp.150 = prefix;
  goto <D.46596>;
  <D.46595>:
  iftmp.150 = "";
  <D.46596>:
  switch_snprintf (&var_name, 256, "rtp_%s_%s", iftmp.150, "in_jitter_burst_rate");
  D.46597 = stats->inbound.burstrate;
  switch_snprintf (&var_val, 35, "%0.2f", D.46597);
  switch_channel_set_variable_var_check (channel, &var_name, &var_val, 1);
  if (prefix != 0B) goto <D.46599>; else goto <D.46600>;
  <D.46599>:
  iftmp.151 = prefix;
  goto <D.46601>;
  <D.46600>:
  iftmp.151 = "";
  <D.46601>:
  switch_snprintf (&var_name, 256, "rtp_%s_%s", iftmp.151, "in_mean_interval");
  D.46602 = stats->inbound.mean_interval;
  switch_snprintf (&var_val, 35, "%0.2f", D.46602);
  switch_channel_set_variable_var_check (channel, &var_name, &var_val, 1);
  if (prefix != 0B) goto <D.46604>; else goto <D.46605>;
  <D.46604>:
  iftmp.152 = prefix;
  goto <D.46606>;
  <D.46605>:
  iftmp.152 = "";
  <D.46606>:
  switch_snprintf (&var_name, 256, "rtp_%s_%s", iftmp.152, "in_flaw_total");
  D.46607 = stats->inbound.flaws;
  switch_snprintf (&var_val, 35, "%d", D.46607);
  switch_channel_set_variable_var_check (channel, &var_name, &var_val, 1);
  if (prefix != 0B) goto <D.46609>; else goto <D.46610>;
  <D.46609>:
  iftmp.153 = prefix;
  goto <D.46611>;
  <D.46610>:
  iftmp.153 = "";
  <D.46611>:
  switch_snprintf (&var_name, 256, "rtp_%s_%s", iftmp.153, "in_quality_percentage");
  D.46612 = stats->inbound.R;
  switch_snprintf (&var_val, 35, "%0.2f", D.46612);
  switch_channel_set_variable_var_check (channel, &var_name, &var_val, 1);
  if (prefix != 0B) goto <D.46614>; else goto <D.46615>;
  <D.46614>:
  iftmp.154 = prefix;
  goto <D.46616>;
  <D.46615>:
  iftmp.154 = "";
  <D.46616>:
  switch_snprintf (&var_name, 256, "rtp_%s_%s", iftmp.154, "in_mos");
  D.46617 = stats->inbound.mos;
  switch_snprintf (&var_val, 35, "%0.2f", D.46617);
  switch_channel_set_variable_var_check (channel, &var_name, &var_val, 1);
  if (prefix != 0B) goto <D.46619>; else goto <D.46620>;
  <D.46619>:
  iftmp.155 = prefix;
  goto <D.46621>;
  <D.46620>:
  iftmp.155 = "";
  <D.46621>:
  switch_snprintf (&var_name, 256, "rtp_%s_%s", iftmp.155, "out_raw_bytes");
  D.46622 = stats->outbound.raw_bytes;
  switch_snprintf (&var_val, 35, "%d", D.46622);
  switch_channel_set_variable_var_check (channel, &var_name, &var_val, 1);
  if (prefix != 0B) goto <D.46624>; else goto <D.46625>;
  <D.46624>:
  iftmp.156 = prefix;
  goto <D.46626>;
  <D.46625>:
  iftmp.156 = "";
  <D.46626>:
  switch_snprintf (&var_name, 256, "rtp_%s_%s", iftmp.156, "out_media_bytes");
  D.46627 = stats->outbound.media_bytes;
  switch_snprintf (&var_val, 35, "%d", D.46627);
  switch_channel_set_variable_var_check (channel, &var_name, &var_val, 1);
  if (prefix != 0B) goto <D.46629>; else goto <D.46630>;
  <D.46629>:
  iftmp.157 = prefix;
  goto <D.46631>;
  <D.46630>:
  iftmp.157 = "";
  <D.46631>:
  switch_snprintf (&var_name, 256, "rtp_%s_%s", iftmp.157, "out_packet_count");
  D.46632 = stats->outbound.packet_count;
  switch_snprintf (&var_val, 35, "%d", D.46632);
  switch_channel_set_variable_var_check (channel, &var_name, &var_val, 1);
  if (prefix != 0B) goto <D.46634>; else goto <D.46635>;
  <D.46634>:
  iftmp.158 = prefix;
  goto <D.46636>;
  <D.46635>:
  iftmp.158 = "";
  <D.46636>:
  switch_snprintf (&var_name, 256, "rtp_%s_%s", iftmp.158, "out_media_packet_count");
  D.46637 = stats->outbound.media_packet_count;
  switch_snprintf (&var_val, 35, "%d", D.46637);
  switch_channel_set_variable_var_check (channel, &var_name, &var_val, 1);
  if (prefix != 0B) goto <D.46639>; else goto <D.46640>;
  <D.46639>:
  iftmp.159 = prefix;
  goto <D.46641>;
  <D.46640>:
  iftmp.159 = "";
  <D.46641>:
  switch_snprintf (&var_name, 256, "rtp_%s_%s", iftmp.159, "out_skip_packet_count");
  D.46642 = stats->outbound.skip_packet_count;
  switch_snprintf (&var_val, 35, "%d", D.46642);
  switch_channel_set_variable_var_check (channel, &var_name, &var_val, 1);
  if (prefix != 0B) goto <D.46644>; else goto <D.46645>;
  <D.46644>:
  iftmp.160 = prefix;
  goto <D.46646>;
  <D.46645>:
  iftmp.160 = "";
  <D.46646>:
  switch_snprintf (&var_name, 256, "rtp_%s_%s", iftmp.160, "out_dtmf_packet_count");
  D.46647 = stats->outbound.dtmf_packet_count;
  switch_snprintf (&var_val, 35, "%d", D.46647);
  switch_channel_set_variable_var_check (channel, &var_name, &var_val, 1);
  if (prefix != 0B) goto <D.46649>; else goto <D.46650>;
  <D.46649>:
  iftmp.161 = prefix;
  goto <D.46651>;
  <D.46650>:
  iftmp.161 = "";
  <D.46651>:
  switch_snprintf (&var_name, 256, "rtp_%s_%s", iftmp.161, "out_cng_packet_count");
  D.46652 = stats->outbound.cng_packet_count;
  switch_snprintf (&var_val, 35, "%d", D.46652);
  switch_channel_set_variable_var_check (channel, &var_name, &var_val, 1);
  if (prefix != 0B) goto <D.46654>; else goto <D.46655>;
  <D.46654>:
  iftmp.162 = prefix;
  goto <D.46656>;
  <D.46655>:
  iftmp.162 = "";
  <D.46656>:
  switch_snprintf (&var_name, 256, "rtp_%s_%s", iftmp.162, "rtcp_packet_count");
  D.46657 = stats->rtcp.packet_count;
  switch_snprintf (&var_val, 35, "%d", D.46657);
  switch_channel_set_variable_var_check (channel, &var_name, &var_val, 1);
  if (prefix != 0B) goto <D.46659>; else goto <D.46660>;
  <D.46659>:
  iftmp.163 = prefix;
  goto <D.46661>;
  <D.46660>:
  iftmp.163 = "";
  <D.46661>:
  switch_snprintf (&var_name, 256, "rtp_%s_%s", iftmp.163, "rtcp_octet_count");
  D.46662 = stats->rtcp.octet_count;
  switch_snprintf (&var_val, 35, "%d", D.46662);
  switch_channel_set_variable_var_check (channel, &var_name, &var_val, 1);
  <D.46525>:
  return;
}



;; Function switch_core_session_check_outgoing_crypto (switch_core_session_check_outgoing_crypto)

switch_core_session_check_outgoing_crypto (struct switch_core_session_t * session)
{
  int i;
  struct switch_media_handle_t * smh;
  struct switch_channel_t * channel;
  switch_rtp_crypto_key_type_t D.46672;
  struct switch_media_handle_t * D.46671;
  switch_rtp_crypto_mode_t D.46668;
  switch_status_t D.46663;

  channel = switch_core_session_get_channel (session);
  D.46663 = switch_core_session_media_handle_ready (session);
  if (D.46663 != 0) goto <D.46664>; else goto <D.46665>;
  <D.46664>:
  goto <D.46673>;
  <D.46665>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.46666>; else goto <D.46667>;
  <D.46666>:
  goto <D.46673>;
  <D.46667>:
  D.46668 = smh->crypto_mode;
  if (D.46668 > 1) goto <D.46669>; else goto <D.46670>;
  <D.46669>:
  goto <D.46673>;
  <D.46670>:
  switch_channel_set_flag_value (channel, 92, 1);
  i = 0;
  goto <D.38632>;
  <D.38631>:
  D.46671 = session->media_handle;
  D.46672 = smh->crypto_suite_order[i];
  switch_core_media_build_crypto (D.46671, 0, 0, D.46672, 0, 0);
  D.46671 = session->media_handle;
  D.46672 = smh->crypto_suite_order[i];
  switch_core_media_build_crypto (D.46671, 1, 0, D.46672, 0, 0);
  i = i + 1;
  <D.38632>:
  D.46672 = smh->crypto_suite_order[i];
  if (D.46672 != 9) goto <D.38631>; else goto <D.38633>;
  <D.38633>:
  <D.46673>:
  return;
}



;; Function switch_core_media_build_crypto (switch_core_media_build_crypto)

switch_core_media_build_crypto (struct switch_media_handle_t * smh, switch_media_type_t type, int index, switch_rtp_crypto_key_type_t ctype, switch_rtp_crypto_direction_t direction, int force)
{
  static const char __func__[31] = "switch_core_media_build_crypto";
  static const char __PRETTY_FUNCTION__[31] = "switch_core_media_build_crypto";
  struct switch_rtp_engine_t * engine;
  char * p;
  struct switch_channel_t * channel;
  const char * val;
  unsigned char * key;
  unsigned char b64_key[512];
  int D.46717;
  unsigned int D.46714;
  switch_core_media_NDLB_t D.46713;
  struct switch_core_media_params_t * D.46712;
  char * iftmp.165;
  char * iftmp.164;
  char * D.46700;
  struct switch_channel_t * D.46699;
  char * D.46698;
  char * D.46697;
  unsigned int D.46696;
  char D.46692;
  switch_size_t D.46690;
  uint32_t D.46689;
  int D.46688;
  switch_status_t D.46684;
  unsigned char D.46681;
  unsigned int D.46678;
  struct switch_rtp_engine_t[2] * D.46677;
  struct switch_core_session_t * D.46676;

  b64_key = "";
  if (smh == 0B) goto <D.46674>; else goto <D.46675>;
  <D.46674>:
  __assert_fail ("smh", "src/switch_core_media.c", 869, &__PRETTY_FUNCTION__);
  <D.46675>:
  D.46676 = smh->session;
  channel = switch_core_session_get_channel (D.46676);
  D.46677 = &smh->engines;
  D.46678 = type * 11416;
  engine = D.46677 + D.46678;
  if (force == 0) goto <D.46679>; else goto <D.46680>;
  <D.46679>:
  D.46681 = engine->ssec[ctype].local_raw_key[0];
  if (D.46681 != 0) goto <D.46682>; else goto <D.46683>;
  <D.46682>:
  D.46684 = 0;
  goto <D.46718>;
  <D.46683>:
  <D.46680>:
  if (direction == 0) goto <D.46685>; else goto <D.46686>;
  <D.46685>:
  key = &engine->ssec[ctype].local_raw_key;
  goto <D.46687>;
  <D.46686>:
  key = &engine->ssec[ctype].remote_raw_key;
  <D.46687>:
  D.46688 = SUITES[ctype].keylen;
  D.46689 = (uint32_t) D.46688;
  switch_rtp_get_random (key, D.46689);
  D.46688 = SUITES[ctype].keylen;
  D.46690 = (switch_size_t) D.46688;
  switch_b64_encode (key, D.46690, &b64_key, 512);
  p = strrchr (&b64_key, 61);
  goto <D.38535>;
  <D.38534>:
  *p = 0;
  p = p + -1;
  <D.38535>:
  if (p != 0B) goto <D.46691>; else goto <D.38536>;
  <D.46691>:
  D.46692 = *p;
  if (D.46692 != 0) goto <D.46693>; else goto <D.38536>;
  <D.46693>:
  D.46692 = *p;
  if (D.46692 == 61) goto <D.38534>; else goto <D.38536>;
  <D.38536>:
  if (index == 0) goto <D.46694>; else goto <D.46695>;
  <D.46694>:
  D.46696 = ctype + 1;
  index = (int) D.46696;
  <D.46695>:
  D.46676 = smh->session;
  D.46697 = SUITES[ctype].name;
  D.46698 = switch_core_session_sprintf (D.46676, "%d %s inline:%s", index, D.46697, &b64_key);
  engine->ssec[ctype].local_crypto_key = D.46698;
  D.46676 = smh->session;
  D.46699 = D.46676->channel;
  D.46700 = engine->ssec[ctype].local_crypto_key;
  if (type == 1) goto <D.46702>; else goto <D.46703>;
  <D.46702>:
  iftmp.164 = "video";
  goto <D.46704>;
  <D.46703>:
  iftmp.164 = "audio";
  <D.46704>:
  switch_channel_set_variable_name_printf (D.46699, D.46700, "rtp_last_%s_local_crypto_key", iftmp.164);
  D.46676 = smh->session;
  D.46699 = D.46676->channel;
  switch_channel_set_flag_value (D.46699, 92, 1);
  D.46676 = smh->session;
  if (type == 1) goto <D.46706>; else goto <D.46707>;
  <D.46706>:
  iftmp.165 = "video";
  goto <D.46708>;
  <D.46707>:
  iftmp.165 = "audio";
  <D.46708>:
  D.46700 = engine->ssec[ctype].local_crypto_key;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 916, D.46676, 7, "Set Local %s crypto Key [%s]\n", iftmp.165, D.46700);
  D.46712 = smh->mparams;
  D.46713 = D.46712->ndlb;
  D.46714 = D.46713 & 8;
  if (D.46714 == 0) goto <D.46715>; else goto <D.46709>;
  <D.46715>:
  val = switch_channel_get_variable_dup (channel, "NDLB_support_asterisk_missing_srtp_auth", 1, -1);
  if (val == 0B) goto <D.46710>; else goto <D.46716>;
  <D.46716>:
  D.46717 = switch_true (val);
  if (D.46717 == 0) goto <D.46710>; else goto <D.46709>;
  <D.46710>:
  engine->ssec[ctype].crypto_type = ctype;
  goto <D.46711>;
  <D.46709>:
  engine->ssec[ctype].crypto_type = 8;
  <D.46711>:
  D.46684 = 0;
  goto <D.46718>;
  <D.46718>:
  return D.46684;
}



;; Function switch_core_session_check_incoming_crypto (switch_core_session_check_incoming_crypto)

switch_core_session_check_incoming_crypto (struct switch_core_session_t * session, const char * varname, switch_media_type_t type, const char * crypto, int crypto_tag, switch_sdp_type_t sdp_type)
{
  const char * b;
  const char * a;
  size_t __s2_len;
  size_t __s1_len;
  switch_rtp_crypto_key_type_t j;
  static const char __func__[42] = "switch_core_session_check_incoming_crypto";
  struct switch_media_handle_t * smh;
  struct switch_rtp_engine_t * engine;
  const char * vval;
  int ctype;
  int i;
  int got_crypto;
  int D.46806;
  char * D.46805;
  struct switch_channel_t * D.46804;
  struct switch_core_session_t * D.46803;
  const char * D.46802;
  const char * D.46798;
  char * D.46795;
  uint8_t D.46790;
  switch_size_t D.46789;
  int D.46788;
  unsigned char[64] * D.46787;
  uint32_t D.46786;
  int D.46785;
  struct switch_secure_settings_t * D.46784;
  unsigned int D.46783;
  struct switch_secure_settings_t[10] * D.46782;
  uint32_t D.46779;
  uint8_t D.46776;
  const char * D.46775;
  const char * D.46771;
  switch_media_type_t D.46768;
  char * D.46767;
  int D.46765;
  _Bool D.46763;
  _Bool D.46762;
  _Bool D.46761;
  switch_size_t D.46758;
  int D.46757;
  unsigned char[64] * D.46756;
  switch_rtp_crypto_key_type_t D.46755;
  uint32_t D.46754;
  int D.46753;
  switch_rtp_crypto_key_type_t ctype.166;
  int D.38621;
  uint8_t D.46741;
  struct switch_rtp_t * D.46740;
  char * D.46738;
  switch_rtp_crypto_key_type_t D.46737;
  struct switch_channel_t * D.46734;
  switch_rtp_crypto_key_type_t D.46733;
  const char * D.46730;
  char * D.46729;
  switch_rtp_crypto_key_type_t D.46728;
  unsigned int D.46727;
  struct switch_rtp_engine_t[2] * D.46726;
  struct switch_media_handle_t * D.46725;
  switch_rtp_crypto_mode_t D.46722;
  int D.46721;

  got_crypto = 0;
  i = 0;
  ctype = 0;
  vval = 0B;
  smh = session->media_handle;
  if (smh == 0B) goto <D.46719>; else goto <D.46720>;
  <D.46719>:
  D.46721 = 0;
  goto <D.46809>;
  <D.46720>:
  D.46722 = smh->crypto_mode;
  if (D.46722 == 2) goto <D.46723>; else goto <D.46724>;
  <D.46723>:
  D.46721 = -1;
  goto <D.46809>;
  <D.46724>:
  D.46725 = session->media_handle;
  D.46726 = &D.46725->engines;
  D.46727 = type * 11416;
  engine = D.46726 + D.46727;
  i = 0;
  goto <D.38612>;
  <D.38611>:
  D.46728 = smh->crypto_suite_order[i];
  j = SUITES[D.46728].type;
  D.46729 = SUITES[j].name;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1179, session, 7, "looking for crypto suite [%s] in [%s]\n", D.46729, crypto);
  D.46729 = SUITES[j].name;
  D.46730 = switch_stristr (D.46729, crypto);
  if (D.46730 != 0B) goto <D.46731>; else goto <D.46732>;
  <D.46731>:
  D.46733 = SUITES[j].type;
  ctype = (int) D.46733;
  vval = SUITES[j].name;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1184, session, 7, "Found suite %s\n", vval);
  D.46734 = session->channel;
  switch_channel_set_variable_var_check (D.46734, "rtp_secure_media_negotiated", vval, 1);
  goto <D.38610>;
  <D.46732>:
  i = i + 1;
  <D.38612>:
  D.46728 = smh->crypto_suite_order[i];
  if (D.46728 != 9) goto <D.38611>; else goto <D.38610>;
  <D.38610>:
  D.46737 = engine->crypto_type;
  D.46738 = engine->ssec[D.46737].remote_crypto_key;
  if (D.46738 != 0B) goto <D.46739>; else goto <D.46735>;
  <D.46739>:
  D.46740 = engine->rtp_session;
  D.46741 = switch_rtp_ready (D.46740);
  if (D.46741 != 0) goto <D.46742>; else goto <D.46735>;
  <D.46742>:
  if (crypto != 0B) goto <D.46745>; else goto <D.46743>;
  <D.46745>:
  D.46737 = engine->crypto_type;
  if (D.46737 != 9) goto <D.46746>; else goto <D.46743>;
  <D.46746>:
  D.46737 = engine->crypto_type;
  D.46738 = engine->ssec[D.46737].remote_crypto_key;
  D.38621 = __builtin_strcmp (crypto, D.46738);
  if (D.38621 == 0) goto <D.46747>; else goto <D.46743>;
  <D.46747>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1193, session, 7, "Existing key is still valid.\n");
  got_crypto = 1;
  goto <D.46744>;
  <D.46743>:
  D.46737 = engine->crypto_type;
  D.46738 = engine->ssec[D.46737].remote_crypto_key;
  a = switch_stristr ("AE", D.46738);
  b = switch_stristr ("AE", crypto);
  if (sdp_type == 0) goto <D.46748>; else goto <D.46749>;
  <D.46748>:
  if (vval == 0B) goto <D.46750>; else goto <D.46751>;
  <D.46750>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1201, session, 7, "Unsupported Crypto [%s]\n", crypto);
  goto end;
  <D.46751>:
  D.46734 = session->channel;
  switch_channel_set_variable_var_check (D.46734, varname, vval, 1);
  D.46725 = session->media_handle;
  ctype.166 = (switch_rtp_crypto_key_type_t) ctype;
  switch_core_media_build_crypto (D.46725, type, crypto_tag, ctype.166, 0, 1);
  D.46740 = engine->rtp_session;
  D.46753 = atoi (crypto);
  D.46754 = (uint32_t) D.46753;
  D.46737 = engine->crypto_type;
  D.46755 = engine->ssec[D.46737].crypto_type;
  D.46737 = engine->crypto_type;
  D.46756 = &engine->ssec[D.46737].local_raw_key;
  D.46757 = SUITES[ctype].keylen;
  D.46758 = (switch_size_t) D.46757;
  switch_rtp_add_crypto_key (D.46740, 0, D.46754, D.46755, D.46756, D.46758);
  <D.46749>:
  D.46761 = a != 0B;
  D.46762 = b != 0B;
  D.46763 = D.46761 && D.46762;
  if (D.46763 != 0) goto <D.46764>; else goto <D.46759>;
  <D.46764>:
  D.46765 = strncasecmp (a, b, 23);
  if (D.46765 == 0) goto <D.46766>; else goto <D.46759>;
  <D.46766>:
  ctype.166 = (switch_rtp_crypto_key_type_t) ctype;
  engine->crypto_type = ctype.166;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1214, session, 7, "Change Remote key to [%s]\n", crypto);
  D.46737 = engine->crypto_type;
  D.46767 = switch_core_perform_session_strdup (session, crypto, "src/switch_core_media.c", &__func__, 1215);
  engine->ssec[D.46737].remote_crypto_key = D.46767;
  D.46768 = engine->type;
  if (D.46768 == 0) goto <D.46769>; else goto <D.46770>;
  <D.46769>:
  D.46734 = session->channel;
  switch_channel_set_variable_var_check (D.46734, "srtp_remote_audio_crypto_key", crypto, 1);
  D.46734 = session->channel;
  switch_channel_set_variable_printf (D.46734, "srtp_remote_audio_crypto_tag", "%d", crypto_tag);
  D.46734 = session->channel;
  ctype.166 = (switch_rtp_crypto_key_type_t) ctype;
  D.46771 = switch_core_media_crypto_type2str (ctype.166);
  switch_channel_set_variable_printf (D.46734, "srtp_remote_audio_crypto_type", "%s", D.46771);
  goto <D.46772>;
  <D.46770>:
  D.46768 = engine->type;
  if (D.46768 == 1) goto <D.46773>; else goto <D.46774>;
  <D.46773>:
  D.46734 = session->channel;
  switch_channel_set_variable_var_check (D.46734, "srtp_remote_video_crypto_key", crypto, 1);
  D.46734 = session->channel;
  switch_channel_set_variable_printf (D.46734, "srtp_remote_video_crypto_tag", "%d", crypto_tag);
  D.46734 = session->channel;
  ctype.166 = (switch_rtp_crypto_key_type_t) ctype;
  D.46775 = switch_core_media_crypto_type2str (ctype.166);
  switch_channel_set_variable_printf (D.46734, "srtp_remote_video_crypto_type", "%s", D.46775);
  <D.46774>:
  <D.46772>:
  D.46737 = engine->crypto_type;
  engine->ssec[D.46737].crypto_tag = crypto_tag;
  D.46740 = engine->rtp_session;
  D.46776 = switch_rtp_ready (D.46740);
  if (D.46776 != 0) goto <D.46777>; else goto <D.46778>;
  <D.46777>:
  D.46734 = session->channel;
  D.46779 = switch_channel_test_flag (D.46734, 92);
  if (D.46779 != 0) goto <D.46780>; else goto <D.46781>;
  <D.46780>:
  D.46782 = &engine->ssec;
  D.46737 = engine->crypto_type;
  D.46783 = D.46737 * 144;
  D.46784 = D.46782 + D.46783;
  D.46737 = engine->crypto_type;
  D.46738 = engine->ssec[D.46737].remote_crypto_key;
  switch_core_media_add_crypto (D.46784, D.46738, 1);
  D.46740 = engine->rtp_session;
  D.46737 = engine->crypto_type;
  D.46785 = engine->ssec[D.46737].crypto_tag;
  D.46786 = (uint32_t) D.46785;
  D.46737 = engine->crypto_type;
  D.46755 = engine->ssec[D.46737].crypto_type;
  D.46737 = engine->crypto_type;
  D.46787 = &engine->ssec[D.46737].remote_raw_key;
  D.46737 = engine->crypto_type;
  D.46755 = engine->ssec[D.46737].crypto_type;
  D.46788 = SUITES[D.46755].keylen;
  D.46789 = (switch_size_t) D.46788;
  switch_rtp_add_crypto_key (D.46740, 1, D.46786, D.46755, D.46787, D.46789);
  <D.46781>:
  <D.46778>:
  got_crypto = got_crypto + 1;
  goto <D.46760>;
  <D.46759>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1238, session, 7, "Ignoring unacceptable key\n");
  <D.46760>:
  <D.46744>:
  goto <D.46736>;
  <D.46735>:
  D.46740 = engine->rtp_session;
  D.46790 = switch_rtp_ready (D.46740);
  if (D.46790 == 0) goto <D.46791>; else goto <D.46792>;
  <D.46791>:
  if (vval == 0B) goto <D.46793>; else goto <D.46794>;
  <D.46793>:
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1244, session, 7, "Unsupported Crypto [%s]\n", crypto);
  goto end;
  <D.46794>:
  ctype.166 = (switch_rtp_crypto_key_type_t) ctype;
  engine->crypto_type = ctype.166;
  D.46737 = engine->crypto_type;
  D.46795 = switch_core_perform_session_strdup (session, crypto, "src/switch_core_media.c", &__func__, 1249);
  engine->ssec[D.46737].remote_crypto_key = D.46795;
  D.46737 = engine->crypto_type;
  D.46738 = engine->ssec[D.46737].remote_crypto_key;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 1250, session, 7, "Set Remote Key [%s]\n", D.46738);
  D.46768 = engine->type;
  if (D.46768 == 0) goto <D.46796>; else goto <D.46797>;
  <D.46796>:
  D.46734 = session->channel;
  switch_channel_set_variable_var_check (D.46734, "srtp_remote_audio_crypto_key", crypto, 1);
  D.46734 = session->channel;
  ctype.166 = (switch_rtp_crypto_key_type_t) ctype;
  D.46798 = switch_core_media_crypto_type2str (ctype.166);
  switch_channel_set_variable_printf (D.46734, "srtp_remote_audio_crypto_type", "%s", D.46798);
  goto <D.46799>;
  <D.46797>:
  D.46768 = engine->type;
  if (D.46768 == 1) goto <D.46800>; else goto <D.46801>;
  <D.46800>:
  D.46734 = session->channel;
  switch_channel_set_variable_var_check (D.46734, "srtp_remote_video_crypto_key", crypto, 1);
  D.46734 = session->channel;
  ctype.166 = (switch_rtp_crypto_key_type_t) ctype;
  D.46802 = switch_core_media_crypto_type2str (ctype.166);
  switch_channel_set_variable_printf (D.46734, "srtp_remote_video_crypto_type", "%s", D.46802);
  <D.46801>:
  <D.46799>:
  D.46737 = engine->crypto_type;
  engine->ssec[D.46737].crypto_tag = crypto_tag;
  got_crypto = got_crypto + 1;
  D.46734 = session->channel;
  switch_channel_set_variable_var_check (D.46734, varname, vval, 1);
  D.46803 = smh->session;
  D.46804 = D.46803->channel;
  switch_channel_set_flag_value (D.46804, 92, 1);
  D.46737 = engine->crypto_type;
  D.46805 = engine->ssec[D.46737].local_crypto_key;
  D.46806 = _zstr (D.46805);
  if (D.46806 != 0) goto <D.46807>; else goto <D.46808>;
  <D.46807>:
  D.46725 = session->media_handle;
  ctype.166 = (switch_rtp_crypto_key_type_t) ctype;
  switch_core_media_build_crypto (D.46725, type, crypto_tag, ctype.166, 0, 1);
  <D.46808>:
  <D.46792>:
  <D.46736>:
  end:
  D.46721 = got_crypto;
  goto <D.46809>;
  <D.46809>:
  return D.46721;
}



;; Function switch_core_media_set_rtp_session (switch_core_media_set_rtp_session)

switch_core_media_set_rtp_session (struct switch_core_session_t * session, switch_media_type_t type, struct switch_rtp_t * rtp_session)
{
  struct switch_rtp_engine_t * engine;
  unsigned int D.46814;
  struct switch_rtp_engine_t[2] * D.46813;
  struct switch_media_handle_t * D.46810;

  D.46810 = session->media_handle;
  if (D.46810 == 0B) goto <D.46811>; else goto <D.46812>;
  <D.46811>:
  goto <D.46815>;
  <D.46812>:
  D.46810 = session->media_handle;
  D.46813 = &D.46810->engines;
  D.46814 = type * 11416;
  engine = D.46813 + D.46814;
  engine->rtp_session = rtp_session;
  engine->type = type;
  <D.46815>:
  return;
}



;; Function switch_core_media_add_crypto (switch_core_media_add_crypto)

switch_core_media_add_crypto (struct switch_secure_settings_t * ssec, const char * key_str, switch_rtp_crypto_direction_t direction)
{
  static const char __func__[29] = "switch_core_media_add_crypto";
  char * p;
  switch_rtp_crypto_key_type_t type;
  unsigned char key[64];
  switch_status_t D.46846;
  void * restrict D.46845;
  unsigned char * D.46844;
  size_t D.46842;
  int D.46841;
  const void * restrict D.46840;
  void * restrict D.46839;
  unsigned char * D.46838;
  int D.46833;
  char D.46822;
  char * D.46821;
  char D.46818;

  p = __builtin_strchr (key_str, 32);
  if (p != 0B) goto <D.46816>; else goto <D.46817>;
  <D.46816>:
  D.46818 = *p;
  if (D.46818 != 0) goto <D.46819>; else goto <D.46820>;
  <D.46819>:
  D.46821 = p + 1;
  D.46822 = *D.46821;
  if (D.46822 != 0) goto <D.46823>; else goto <D.46824>;
  <D.46823>:
  p = p + 1;
  type = switch_core_media_crypto_str2type (p);
  if (type == 9) goto <D.46825>; else goto <D.46826>;
  <D.46825>:
  switch_log_printf (0, "src/switch_core_media.c", &__func__, 949, 0B, 3, "Parse Error near [%s]\n", p);
  goto bad;
  <D.46826>:
  p = __builtin_strchr (p, 32);
  if (p != 0B) goto <D.46827>; else goto <D.46828>;
  <D.46827>:
  D.46818 = *p;
  if (D.46818 != 0) goto <D.46829>; else goto <D.46830>;
  <D.46829>:
  D.46821 = p + 1;
  D.46822 = *D.46821;
  if (D.46822 != 0) goto <D.46831>; else goto <D.46832>;
  <D.46831>:
  p = p + 1;
  D.46833 = strncasecmp (p, "inline:", 7);
  if (D.46833 != 0) goto <D.46834>; else goto <D.46835>;
  <D.46834>:
  switch_log_printf (0, "src/switch_core_media.c", &__func__, 957, 0B, 3, "Parse Error near [%s]\n", p);
  goto bad;
  <D.46835>:
  p = p + 7;
  switch_b64_decode (p, &key, 64);
  if (direction == 0) goto <D.46836>; else goto <D.46837>;
  <D.46836>:
  D.46838 = &ssec->local_raw_key[0];
  D.46839 = (void * restrict) D.46838;
  D.46840 = (const void * restrict) &key[0];
  D.46841 = SUITES[type].keylen;
  D.46842 = (size_t) D.46841;
  memcpy (D.46839, D.46840, D.46842);
  goto <D.46843>;
  <D.46837>:
  D.46844 = &ssec->remote_raw_key[0];
  D.46845 = (void * restrict) D.46844;
  D.46840 = (const void * restrict) &key[0];
  D.46841 = SUITES[type].keylen;
  D.46842 = (size_t) D.46841;
  memcpy (D.46845, D.46840, D.46842);
  <D.46843>:
  D.46846 = 0;
  goto <D.46847>;
  <D.46832>:
  <D.46830>:
  <D.46828>:
  <D.46824>:
  <D.46820>:
  <D.46817>:
  bad:
  switch_log_printf (0, "src/switch_core_media.c", &__func__, 976, 0B, 3, "Error!\n");
  D.46846 = 1;
  goto <D.46847>;
  <D.46847>:
  return D.46846;
}



;; Function switch_core_media_parse_rtp_bugs (switch_core_media_parse_rtp_bugs)

switch_core_media_parse_rtp_bugs (switch_rtp_bug_flag_t * flag_pole, const char * str)
{
  unsigned int D.46947;
  const char * D.46944;
  unsigned int D.46943;
  const char * D.46940;
  unsigned int D.46939;
  const char * D.46936;
  unsigned int D.46935;
  const char * D.46932;
  unsigned int D.46931;
  const char * D.46928;
  unsigned int D.46927;
  const char * D.46924;
  unsigned int D.46923;
  const char * D.46920;
  unsigned int D.46919;
  const char * D.46916;
  unsigned int D.46915;
  const char * D.46912;
  unsigned int D.46911;
  const char * D.46908;
  unsigned int D.46907;
  const char * D.46904;
  unsigned int D.46903;
  const char * D.46900;
  unsigned int D.46899;
  const char * D.46896;
  unsigned int D.46895;
  const char * D.46892;
  unsigned int D.46891;
  const char * D.46888;
  unsigned int D.46887;
  const char * D.46884;
  unsigned int D.46883;
  const char * D.46880;
  unsigned int D.46879;
  const char * D.46876;
  unsigned int D.46875;
  const char * D.46872;
  unsigned int D.46871;
  const char * D.46868;
  unsigned int D.46867;
  const char * D.46864;
  unsigned int D.46863;
  const char * D.46860;
  unsigned int D.46859;
  const char * D.46856;
  unsigned int D.46855;
  switch_rtp_bug_flag_t D.46854;
  const char * D.46851;
  const char * D.46848;

  D.46848 = switch_stristr ("clear", str);
  if (D.46848 != 0B) goto <D.46849>; else goto <D.46850>;
  <D.46849>:
  *flag_pole = 0;
  <D.46850>:
  D.46851 = switch_stristr ("CISCO_SKIP_MARK_BIT_2833", str);
  if (D.46851 != 0B) goto <D.46852>; else goto <D.46853>;
  <D.46852>:
  D.46854 = *flag_pole;
  D.46855 = D.46854 | 1;
  *flag_pole = D.46855;
  <D.46853>:
  D.46856 = switch_stristr ("~CISCO_SKIP_MARK_BIT_2833", str);
  if (D.46856 != 0B) goto <D.46857>; else goto <D.46858>;
  <D.46857>:
  D.46854 = *flag_pole;
  D.46859 = D.46854 & 4294967294;
  *flag_pole = D.46859;
  <D.46858>:
  D.46860 = switch_stristr ("SONUS_SEND_INVALID_TIMESTAMP_2833", str);
  if (D.46860 != 0B) goto <D.46861>; else goto <D.46862>;
  <D.46861>:
  D.46854 = *flag_pole;
  D.46863 = D.46854 | 2;
  *flag_pole = D.46863;
  <D.46862>:
  D.46864 = switch_stristr ("~SONUS_SEND_INVALID_TIMESTAMP_2833", str);
  if (D.46864 != 0B) goto <D.46865>; else goto <D.46866>;
  <D.46865>:
  D.46854 = *flag_pole;
  D.46867 = D.46854 & 4294967293;
  *flag_pole = D.46867;
  <D.46866>:
  D.46868 = switch_stristr ("IGNORE_MARK_BIT", str);
  if (D.46868 != 0B) goto <D.46869>; else goto <D.46870>;
  <D.46869>:
  D.46854 = *flag_pole;
  D.46871 = D.46854 | 4;
  *flag_pole = D.46871;
  <D.46870>:
  D.46872 = switch_stristr ("~IGNORE_MARK_BIT", str);
  if (D.46872 != 0B) goto <D.46873>; else goto <D.46874>;
  <D.46873>:
  D.46854 = *flag_pole;
  D.46875 = D.46854 & 4294967291;
  *flag_pole = D.46875;
  <D.46874>:
  D.46876 = switch_stristr ("SEND_LINEAR_TIMESTAMPS", str);
  if (D.46876 != 0B) goto <D.46877>; else goto <D.46878>;
  <D.46877>:
  D.46854 = *flag_pole;
  D.46879 = D.46854 | 8;
  *flag_pole = D.46879;
  <D.46878>:
  D.46880 = switch_stristr ("~SEND_LINEAR_TIMESTAMPS", str);
  if (D.46880 != 0B) goto <D.46881>; else goto <D.46882>;
  <D.46881>:
  D.46854 = *flag_pole;
  D.46883 = D.46854 & 4294967287;
  *flag_pole = D.46883;
  <D.46882>:
  D.46884 = switch_stristr ("START_SEQ_AT_ZERO", str);
  if (D.46884 != 0B) goto <D.46885>; else goto <D.46886>;
  <D.46885>:
  D.46854 = *flag_pole;
  D.46887 = D.46854 | 16;
  *flag_pole = D.46887;
  <D.46886>:
  D.46888 = switch_stristr ("~START_SEQ_AT_ZERO", str);
  if (D.46888 != 0B) goto <D.46889>; else goto <D.46890>;
  <D.46889>:
  D.46854 = *flag_pole;
  D.46891 = D.46854 & 4294967279;
  *flag_pole = D.46891;
  <D.46890>:
  D.46892 = switch_stristr ("NEVER_SEND_MARKER", str);
  if (D.46892 != 0B) goto <D.46893>; else goto <D.46894>;
  <D.46893>:
  D.46854 = *flag_pole;
  D.46895 = D.46854 | 32;
  *flag_pole = D.46895;
  <D.46894>:
  D.46896 = switch_stristr ("~NEVER_SEND_MARKER", str);
  if (D.46896 != 0B) goto <D.46897>; else goto <D.46898>;
  <D.46897>:
  D.46854 = *flag_pole;
  D.46899 = D.46854 & 4294967263;
  *flag_pole = D.46899;
  <D.46898>:
  D.46900 = switch_stristr ("IGNORE_DTMF_DURATION", str);
  if (D.46900 != 0B) goto <D.46901>; else goto <D.46902>;
  <D.46901>:
  D.46854 = *flag_pole;
  D.46903 = D.46854 | 64;
  *flag_pole = D.46903;
  <D.46902>:
  D.46904 = switch_stristr ("~IGNORE_DTMF_DURATION", str);
  if (D.46904 != 0B) goto <D.46905>; else goto <D.46906>;
  <D.46905>:
  D.46854 = *flag_pole;
  D.46907 = D.46854 & 4294967231;
  *flag_pole = D.46907;
  <D.46906>:
  D.46908 = switch_stristr ("ACCEPT_ANY_PACKETS", str);
  if (D.46908 != 0B) goto <D.46909>; else goto <D.46910>;
  <D.46909>:
  D.46854 = *flag_pole;
  D.46911 = D.46854 | 128;
  *flag_pole = D.46911;
  <D.46910>:
  D.46912 = switch_stristr ("~ACCEPT_ANY_PACKETS", str);
  if (D.46912 != 0B) goto <D.46913>; else goto <D.46914>;
  <D.46913>:
  D.46854 = *flag_pole;
  D.46915 = D.46854 & 4294967167;
  *flag_pole = D.46915;
  <D.46914>:
  D.46916 = switch_stristr ("ACCEPT_ANY_PAYLOAD", str);
  if (D.46916 != 0B) goto <D.46917>; else goto <D.46918>;
  <D.46917>:
  D.46854 = *flag_pole;
  D.46919 = D.46854 | 2048;
  *flag_pole = D.46919;
  <D.46918>:
  D.46920 = switch_stristr ("~ACCEPT_ANY_PAYLOAD", str);
  if (D.46920 != 0B) goto <D.46921>; else goto <D.46922>;
  <D.46921>:
  D.46854 = *flag_pole;
  D.46923 = D.46854 & 4294965247;
  *flag_pole = D.46923;
  <D.46922>:
  D.46924 = switch_stristr ("GEN_ONE_GEN_ALL", str);
  if (D.46924 != 0B) goto <D.46925>; else goto <D.46926>;
  <D.46925>:
  D.46854 = *flag_pole;
  D.46927 = D.46854 | 256;
  *flag_pole = D.46927;
  <D.46926>:
  D.46928 = switch_stristr ("~GEN_ONE_GEN_ALL", str);
  if (D.46928 != 0B) goto <D.46929>; else goto <D.46930>;
  <D.46929>:
  D.46854 = *flag_pole;
  D.46931 = D.46854 & 4294967039;
  *flag_pole = D.46931;
  <D.46930>:
  D.46932 = switch_stristr ("CHANGE_SSRC_ON_MARKER", str);
  if (D.46932 != 0B) goto <D.46933>; else goto <D.46934>;
  <D.46933>:
  D.46854 = *flag_pole;
  D.46935 = D.46854 | 512;
  *flag_pole = D.46935;
  <D.46934>:
  D.46936 = switch_stristr ("~CHANGE_SSRC_ON_MARKER", str);
  if (D.46936 != 0B) goto <D.46937>; else goto <D.46938>;
  <D.46937>:
  D.46854 = *flag_pole;
  D.46939 = D.46854 & 4294966783;
  *flag_pole = D.46939;
  <D.46938>:
  D.46940 = switch_stristr ("FLUSH_JB_ON_DTMF", str);
  if (D.46940 != 0B) goto <D.46941>; else goto <D.46942>;
  <D.46941>:
  D.46854 = *flag_pole;
  D.46943 = D.46854 | 1024;
  *flag_pole = D.46943;
  <D.46942>:
  D.46944 = switch_stristr ("~FLUSH_JB_ON_DTMF", str);
  if (D.46944 != 0B) goto <D.46945>; else goto <D.46946>;
  <D.46945>:
  D.46854 = *flag_pole;
  D.46947 = D.46854 & 4294966271;
  *flag_pole = D.46947;
  <D.46946>:
  return;
}



;; Function switch_core_session_local_crypto_key (switch_core_session_local_crypto_key)

switch_core_session_local_crypto_key (struct switch_core_session_t * session, switch_media_type_t type)
{
  switch_rtp_crypto_key_type_t D.46952;
  const char * D.46951;
  struct switch_media_handle_t * D.46948;

  D.46948 = session->media_handle;
  if (D.46948 == 0B) goto <D.46949>; else goto <D.46950>;
  <D.46949>:
  D.46951 = 0B;
  goto <D.46953>;
  <D.46950>:
  D.46948 = session->media_handle;
  D.46948 = session->media_handle;
  D.46952 = D.46948->engines[type].crypto_type;
  D.46951 = D.46948->engines[type].ssec[D.46952].local_crypto_key;
  goto <D.46953>;
  <D.46953>:
  return D.46951;
}



;; Function switch_core_session_clear_crypto (switch_core_session_clear_crypto)

switch_core_session_clear_crypto (struct switch_core_session_t * session)
{
  const char * vars[11];
  struct switch_media_handle_t * smh;
  int i;
  void * D.46974;
  struct switch_secure_settings_t[10] * D.46973;
  void * D.46972;
  unsigned int D.46971;
  unsigned int i.167;
  struct switch_secure_settings_t[10] * D.46969;
  const char * D.46966;
  struct switch_channel_t * D.46965;

  vars = *.LC10;
  i = 0;
  goto <D.38506>;
  <D.38505>:
  D.46965 = session->channel;
  D.46966 = vars[i];
  switch_channel_set_variable_var_check (D.46965, D.46966, 0B, 1);
  i = i + 1;
  <D.38506>:
  D.46966 = vars[i];
  if (D.46966 != 0B) goto <D.38505>; else goto <D.38507>;
  <D.38507>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.46967>; else goto <D.46968>;
  <D.46967>:
  goto <D.46975>;
  <D.46968>:
  i = 0;
  goto <D.38509>;
  <D.38508>:
  D.46969 = &smh->engines[0].ssec;
  i.167 = (unsigned int) i;
  D.46971 = i.167 * 144;
  D.46972 = D.46969 + D.46971;
  memset (D.46972, 0, 144);
  D.46973 = &smh->engines[1].ssec;
  i.167 = (unsigned int) i;
  D.46971 = i.167 * 144;
  D.46974 = D.46973 + D.46971;
  memset (D.46974, 0, 144);
  i = i + 1;
  <D.38509>:
  if (i <= 8) goto <D.38508>; else goto <D.38510>;
  <D.38510>:
  <D.46975>:
  return;
}



;; Function switch_core_media_get_codec_string (switch_core_media_get_codec_string)

switch_core_media_get_codec_string (struct switch_core_session_t * session)
{
  static const char __PRETTY_FUNCTION__[35] = "switch_core_media_get_codec_string";
  struct switch_media_handle_t * smh;
  const char * fallback;
  const char * preferred;
  int D.46993;
  const char * iftmp.168;
  const char * D.46991;
  struct switch_core_media_params_t * D.46989;
  switch_call_direction_t D.46986;
  struct switch_channel_t * D.46981;

  preferred = 0B;
  fallback = 0B;
  if (session == 0B) goto <D.46976>; else goto <D.46977>;
  <D.46976>:
  __assert_fail ("session", "src/switch_core_media.c", 685, &__PRETTY_FUNCTION__);
  <D.46977>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.46978>; else goto <D.46979>;
  <D.46978>:
  preferred = "PCMU";
  fallback = "PCMU";
  goto <D.46980>;
  <D.46979>:
  D.46981 = session->channel;
  preferred = switch_channel_get_variable_dup (D.46981, "absolute_codec_string", 1, -1);
  if (preferred == 0B) goto <D.46982>; else goto <D.46983>;
  <D.46982>:
  D.46981 = session->channel;
  preferred = switch_channel_get_variable_dup (D.46981, "codec_string", 1, -1);
  <D.46983>:
  if (preferred == 0B) goto <D.46984>; else goto <D.46985>;
  <D.46984>:
  D.46981 = session->channel;
  D.46986 = switch_channel_direction (D.46981);
  if (D.46986 == 1) goto <D.46987>; else goto <D.46988>;
  <D.46987>:
  D.46989 = smh->mparams;
  preferred = D.46989->outbound_codec_string;
  D.46989 = smh->mparams;
  fallback = D.46989->inbound_codec_string;
  goto <D.46990>;
  <D.46988>:
  D.46989 = smh->mparams;
  preferred = D.46989->inbound_codec_string;
  D.46989 = smh->mparams;
  fallback = D.46989->outbound_codec_string;
  <D.46990>:
  <D.46985>:
  <D.46980>:
  D.46993 = _zstr (preferred);
  if (D.46993 == 0) goto <D.46994>; else goto <D.46995>;
  <D.46994>:
  iftmp.168 = preferred;
  goto <D.46996>;
  <D.46995>:
  iftmp.168 = fallback;
  <D.46996>:
  D.46991 = iftmp.168;
  goto <D.46997>;
  <D.46997>:
  return D.46991;
}



;; Function switch_core_media_add_payload_map (switch_core_media_add_payload_map)

switch_core_media_add_payload_map (struct switch_core_session_t * session, switch_media_type_t type, const char * name, const char * fmtp, switch_sdp_type_t sdp_type, uint32_t pt, uint32_t rate, uint32_t ptime, uint8_t negotiated)
{
  size_t __s2_len;
  size_t __s1_len;
  switch_ssize_t hlen;
  size_t __s2_len;
  size_t __s1_len;
  static const char __func__[34] = "switch_core_media_add_payload_map";
  static const char __PRETTY_FUNCTION__[34] = "switch_core_media_add_payload_map";
  int local_pt;
  struct switch_rtp_engine_t * engine;
  struct switch_media_handle_t * smh;
  int exists;
  struct payload_map_t * pmap;
  struct payload_map_s * D.47076;
  struct payload_map_t * D.47074;
  unsigned char iftmp.170;
  _Bool D.47058;
  _Bool D.47057;
  _Bool D.47056;
  unsigned char D.47055;
  char * D.47054;
  int D.38491;
  int D.47052;
  int D.47049;
  unsigned int D.47042;
  char * D.47041;
  struct switch_memory_pool_t * D.47040;
  uint8_t D.47038;
  struct payload_map_t * D.47036;
  uint8_t D.47031;
  switch_payload_t D.47029;
  int D.38476;
  int D.47024;
  char * D.47023;
  int D.47020;
  uint32_t D.47016;
  uint32_t D.47014;
  int D.47012;
  char * D.47011;
  int iftmp.169;
  struct switch_mutex_t * D.47005;
  unsigned int D.47004;
  struct switch_rtp_engine_t[2] * D.47003;
  struct payload_map_t * D.47002;

  exists = 0;
  local_pt = 0;
  if (session == 0B) goto <D.46998>; else goto <D.46999>;
  <D.46998>:
  __assert_fail ("session", "src/switch_core_media.c", 589, &__PRETTY_FUNCTION__);
  <D.46999>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.47000>; else goto <D.47001>;
  <D.47000>:
  D.47002 = 0B;
  goto <D.47077>;
  <D.47001>:
  D.47003 = &smh->engines;
  D.47004 = type * 11416;
  engine = D.47003 + D.47004;
  D.47005 = smh->sdp_mutex;
  switch_mutex_lock (D.47005);
  pmap = engine->payload_map;
  goto <D.38480>;
  <D.38479>:
  D.47011 = pmap->iananame;
  D.47012 = strcasecmp (name, D.47011);
  if (D.47012 == 0) goto <D.47013>; else goto <D.47007>;
  <D.47013>:
  D.47014 = pmap->rate;
  if (D.47014 == 0) goto <D.47008>; else goto <D.47015>;
  <D.47015>:
  D.47014 = pmap->rate;
  if (D.47014 == rate) goto <D.47008>; else goto <D.47007>;
  <D.47008>:
  D.47016 = pmap->ptime;
  if (D.47016 == 0) goto <D.47009>; else goto <D.47017>;
  <D.47017>:
  D.47016 = pmap->ptime;
  if (D.47016 == ptime) goto <D.47009>; else goto <D.47007>;
  <D.47009>:
  iftmp.169 = 1;
  goto <D.47010>;
  <D.47007>:
  iftmp.169 = 0;
  <D.47010>:
  exists = iftmp.169;
  if (exists != 0) goto <D.47018>; else goto <D.47019>;
  <D.47018>:
  D.47020 = _zstr (fmtp);
  if (D.47020 == 0) goto <D.47021>; else goto <D.47022>;
  <D.47021>:
  D.47023 = pmap->rm_fmtp;
  D.47024 = _zstr (D.47023);
  if (D.47024 == 0) goto <D.47025>; else goto <D.47026>;
  <D.47025>:
  D.47023 = pmap->rm_fmtp;
  D.38476 = __builtin_strcmp (D.47023, fmtp);
  if (D.38476 != 0) goto <D.47027>; else goto <D.47028>;
  <D.47027>:
  exists = 0;
  D.47029 = pmap->pt;
  local_pt = (int) D.47029;
  // predicted unlikely by continue predictor.
  goto <D.38477>;
  <D.47028>:
  <D.47026>:
  <D.47022>:
  goto <D.38478>;
  <D.47019>:
  <D.38477>:
  pmap = pmap->next;
  <D.38480>:
  if (pmap != 0B) goto <D.47030>; else goto <D.38478>;
  <D.47030>:
  D.47031 = pmap->allocated;
  if (D.47031 != 0) goto <D.38479>; else goto <D.38478>;
  <D.38478>:
  if (exists == 0) goto <D.47032>; else goto <D.47033>;
  <D.47032>:
  hlen = -1;
  D.47036 = engine->payload_map;
  if (D.47036 != 0B) goto <D.47037>; else goto <D.47034>;
  <D.47037>:
  D.47036 = engine->payload_map;
  D.47038 = D.47036->allocated;
  if (D.47038 == 0) goto <D.47039>; else goto <D.47034>;
  <D.47039>:
  pmap = engine->payload_map;
  goto <D.47035>;
  <D.47034>:
  D.47040 = session->pool;
  pmap = switch_core_perform_alloc (D.47040, 84, "src/switch_core_media.c", &__func__, 624);
  <D.47035>:
  pmap->type = type;
  D.47040 = session->pool;
  D.47041 = switch_core_perform_strdup (D.47040, name, "src/switch_core_media.c", &__func__, 628);
  pmap->iananame = D.47041;
  D.47011 = pmap->iananame;
  pmap->rm_encoding = D.47011;
  D.47011 = pmap->iananame;
  D.47042 = switch_ci_hashfunc_default (D.47011, &hlen);
  pmap->hash = D.47042;
  <D.47033>:
  pmap->sdp_type = sdp_type;
  if (ptime != 0) goto <D.47043>; else goto <D.47044>;
  <D.47043>:
  pmap->ptime = ptime;
  <D.47044>:
  if (rate != 0) goto <D.47045>; else goto <D.47046>;
  <D.47045>:
  pmap->rate = rate;
  <D.47046>:
  D.47049 = _zstr (fmtp);
  if (D.47049 == 0) goto <D.47050>; else goto <D.47051>;
  <D.47050>:
  D.47023 = pmap->rm_fmtp;
  D.47052 = _zstr (D.47023);
  if (D.47052 != 0) goto <D.47047>; else goto <D.47053>;
  <D.47053>:
  D.47023 = pmap->rm_fmtp;
  D.38491 = __builtin_strcmp (D.47023, fmtp);
  if (D.38491 != 0) goto <D.47047>; else goto <D.47048>;
  <D.47047>:
  D.47040 = session->pool;
  D.47054 = switch_core_perform_strdup (D.47040, fmtp, "src/switch_core_media.c", &__func__, 644);
  pmap->rm_fmtp = D.47054;
  <D.47048>:
  <D.47051>:
  pmap->allocated = 1;
  D.47055 = (unsigned char) pt;
  pmap->recv_pt = D.47055;
  D.47056 = sdp_type == 0;
  D.47057 = exists == 0;
  D.47058 = D.47056 || D.47057;
  if (D.47058 != 0) goto <D.47059>; else goto <D.47060>;
  <D.47059>:
  if (local_pt != 0) goto <D.47062>; else goto <D.47063>;
  <D.47062>:
  iftmp.170 = (unsigned char) local_pt;
  goto <D.47064>;
  <D.47063>:
  iftmp.170 = (unsigned char) pt;
  <D.47064>:
  pmap->pt = iftmp.170;
  <D.47060>:
  if (negotiated != 0) goto <D.47065>; else goto <D.47066>;
  <D.47065>:
  pmap->negotiated = negotiated;
  <D.47066>:
  if (exists == 0) goto <D.47067>; else goto <D.47068>;
  <D.47067>:
  D.47036 = engine->payload_map;
  if (D.47036 == pmap) goto <D.47069>; else goto <D.47070>;
  <D.47069>:
  engine->pmap_tail = pmap;
  goto <D.47071>;
  <D.47070>:
  D.47036 = engine->payload_map;
  if (D.47036 == 0B) goto <D.47072>; else goto <D.47073>;
  <D.47072>:
  engine->pmap_tail = pmap;
  D.47074 = engine->pmap_tail;
  engine->payload_map = D.47074;
  goto <D.47075>;
  <D.47073>:
  D.47074 = engine->pmap_tail;
  D.47074->next = pmap;
  D.47074 = engine->pmap_tail;
  D.47076 = D.47074->next;
  engine->pmap_tail = D.47076;
  <D.47075>:
  <D.47071>:
  <D.47068>:
  D.47005 = smh->sdp_mutex;
  switch_mutex_unlock (D.47005);
  D.47002 = pmap;
  goto <D.47077>;
  <D.47077>:
  return D.47002;
}



;; Function switch_core_session_get_payload_code (switch_core_session_get_payload_code)

switch_core_session_get_payload_code (struct switch_core_session_t * session, switch_media_type_t type, const char * iananame, switch_payload_t * ptP, switch_payload_t * recv_ptP, char * * fmtpP)
{
  static const char __PRETTY_FUNCTION__[37] = "switch_core_session_get_payload_code";
  char * fmtp;
  int found;
  switch_payload_t recv_pt;
  switch_payload_t pt;
  struct switch_rtp_engine_t * engine;
  struct switch_media_handle_t * smh;
  struct payload_map_t * pmap;
  int D.47099;
  int D.47090;
  char * D.47089;
  uint8_t D.47086;
  struct switch_mutex_t * D.47085;
  unsigned int D.47084;
  struct switch_rtp_engine_t[2] * D.47083;
  switch_status_t D.47082;

  pt = 0;
  recv_pt = 0;
  found = 0;
  fmtp = 0B;
  if (session == 0B) goto <D.47078>; else goto <D.47079>;
  <D.47078>:
  __assert_fail ("session", "src/switch_core_media.c", 530, &__PRETTY_FUNCTION__);
  <D.47079>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.47080>; else goto <D.47081>;
  <D.47080>:
  D.47082 = 1;
  goto <D.47104>;
  <D.47081>:
  D.47083 = &smh->engines;
  D.47084 = type * 11416;
  engine = D.47083 + D.47084;
  D.47085 = smh->sdp_mutex;
  switch_mutex_lock (D.47085);
  pmap = engine->payload_map;
  goto <D.38450>;
  <D.38449>:
  D.47086 = pmap->allocated;
  if (D.47086 == 0) goto <D.47087>; else goto <D.47088>;
  <D.47087>:
  // predicted unlikely by continue predictor.
  goto <D.38447>;
  <D.47088>:
  D.47089 = pmap->iananame;
  D.47090 = strcasecmp (D.47089, iananame);
  if (D.47090 == 0) goto <D.47091>; else goto <D.47092>;
  <D.47091>:
  pt = pmap->pt;
  recv_pt = pmap->recv_pt;
  fmtp = pmap->rm_fmtp;
  found = found + 1;
  goto <D.38448>;
  <D.47092>:
  <D.38447>:
  pmap = pmap->next;
  <D.38450>:
  if (pmap != 0B) goto <D.38449>; else goto <D.38448>;
  <D.38448>:
  D.47085 = smh->sdp_mutex;
  switch_mutex_unlock (D.47085);
  if (found != 0) goto <D.47093>; else goto <D.47094>;
  <D.47093>:
  if (ptP != 0B) goto <D.47095>; else goto <D.47096>;
  <D.47095>:
  *ptP = pt;
  <D.47096>:
  if (recv_ptP != 0B) goto <D.47097>; else goto <D.47098>;
  <D.47097>:
  *recv_ptP = recv_pt;
  <D.47098>:
  D.47099 = _zstr (fmtp);
  if (D.47099 == 0) goto <D.47100>; else goto <D.47101>;
  <D.47100>:
  if (fmtpP != 0B) goto <D.47102>; else goto <D.47103>;
  <D.47102>:
  *fmtpP = fmtp;
  <D.47103>:
  <D.47101>:
  D.47082 = 0;
  goto <D.47104>;
  <D.47094>:
  D.47082 = 1;
  goto <D.47104>;
  <D.47104>:
  return D.47082;
}



;; Function switch_core_media_process_t38_passthru (switch_core_media_process_t38_passthru)

switch_core_media_process_t38_passthru (struct switch_core_session_t * session, struct switch_core_session_t * other_session, struct switch_t38_options_t * t38_options)
{
  const char * err;
  size_t __s2_len;
  size_t __s1_len;
  static const char __func__[39] = "switch_core_media_process_t38_passthru";
  static const char __PRETTY_FUNCTION__[39] = "switch_core_media_process_t38_passthru";
  struct switch_media_handle_t * smh;
  struct switch_rtp_engine_t * a_engine;
  char tmp[32];
  switch_port_t remote_port;
  char * remote_host;
  const char * err.171;
  switch_status_t D.47130;
  int D.47129;
  int D.47128;
  char * D.47127;
  char * D.47126;
  struct switch_channel_t * D.47125;
  switch_port_t D.47123;
  char * D.47121;
  int D.38429;
  _Bool D.47119;
  _Bool D.47118;
  _Bool D.47117;
  uint16_t D.47114;
  char * D.47113;
  const char * D.47112;
  struct payload_map_t * D.47111;
  struct switch_rtp_t * D.47110;
  switch_status_t D.47109;

  tmp = "";
  if (session == 0B) goto <D.47105>; else goto <D.47106>;
  <D.47105>:
  __assert_fail ("session", "src/switch_core_media.c", 473, &__PRETTY_FUNCTION__);
  <D.47106>:
  smh = session->media_handle;
  if (smh == 0B) goto <D.47107>; else goto <D.47108>;
  <D.47107>:
  D.47109 = 1;
  goto <D.47134>;
  <D.47108>:
  a_engine = &smh->engines;
  D.47110 = a_engine->rtp_session;
  remote_host = switch_rtp_get_remote_host (D.47110);
  D.47110 = a_engine->rtp_session;
  remote_port = switch_rtp_get_remote_port (D.47110);
  D.47111 = a_engine->cur_payload_map;
  D.47112 = t38_options->remote_ip;
  D.47113 = switch_core_perform_session_strdup (session, D.47112, "src/switch_core_media.c", &__func__, 484);
  D.47111->remote_sdp_ip = D.47113;
  D.47111 = a_engine->cur_payload_map;
  D.47114 = t38_options->remote_port;
  D.47111->remote_sdp_port = D.47114;
  D.47117 = remote_host != 0B;
  D.47118 = remote_port != 0;
  D.47119 = D.47117 && D.47118;
  if (D.47119 != 0) goto <D.47120>; else goto <D.47115>;
  <D.47120>:
  D.47111 = a_engine->cur_payload_map;
  D.47121 = D.47111->remote_sdp_ip;
  D.38429 = __builtin_strcmp (remote_host, D.47121);
  if (D.38429 == 0) goto <D.47122>; else goto <D.47115>;
  <D.47122>:
  D.47111 = a_engine->cur_payload_map;
  D.47123 = D.47111->remote_sdp_port;
  if (D.47123 == remote_port) goto <D.47124>; else goto <D.47115>;
  <D.47124>:
  D.47125 = session->channel;
  D.47126 = switch_channel_get_name (D.47125);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 489, session, 7, "Audio params are unchanged for %s.\n", D.47126);
  goto <D.47116>;
  <D.47115>:
  err = 0B;
  D.47125 = session->channel;
  D.47127 = switch_channel_get_name (D.47125);
  D.47128 = (int) remote_port;
  D.47111 = a_engine->cur_payload_map;
  D.47121 = D.47111->remote_sdp_ip;
  D.47111 = a_engine->cur_payload_map;
  D.47123 = D.47111->remote_sdp_port;
  D.47129 = (int) D.47123;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 495, session, 7, "Audio params changed for %s from %s:%d to %s:%d\n", D.47127, remote_host, D.47128, D.47121, D.47129);
  D.47111 = a_engine->cur_payload_map;
  D.47123 = D.47111->remote_sdp_port;
  D.47129 = (int) D.47123;
  switch_snprintf (&tmp, 32, "%d", D.47129);
  D.47125 = session->channel;
  D.47111 = a_engine->cur_payload_map;
  D.47121 = D.47111->remote_sdp_ip;
  switch_channel_set_variable_var_check (D.47125, "remote_media_ip", D.47121, 1);
  D.47125 = session->channel;
  switch_channel_set_variable_var_check (D.47125, "remote_media_port", &tmp, 1);
  D.47110 = a_engine->rtp_session;
  D.47111 = a_engine->cur_payload_map;
  D.47121 = D.47111->remote_sdp_ip;
  D.47111 = a_engine->cur_payload_map;
  D.47123 = D.47111->remote_sdp_port;
  D.47130 = switch_rtp_set_remote_address (D.47110, D.47121, D.47123, 0, 1, &err);
  if (D.47130 != 0) goto <D.47131>; else goto <D.47132>;
  <D.47131>:
  err.171 = err;
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 505, session, 3, "AUDIO RTP REPORTS ERROR: [%s]\n", err.171);
  D.47125 = session->channel;
  switch_channel_perform_hangup (D.47125, "src/switch_core_media.c", &__func__, 506, 88);
  <D.47132>:
  <D.47116>:
  switch_core_media_copy_t38_options (t38_options, other_session);
  D.47109 = 0;
  goto <D.47134>;
  <D.47134>:
  return D.47109;
}



;; Function switch_core_media_extract_t38_options (switch_core_media_extract_t38_options)

switch_core_media_extract_t38_options (struct switch_core_session_t * session, const char * r_sdp)
{
  struct switch_t38_options_t * t38_options;
  struct sdp_session_t * sdp;
  struct sdp_parser_t * parser;
  struct sdp_media_t * m;
  long unsigned int D.47148;
  sdp_media_e D.47145;
  sdp_proto_e D.47142;
  struct switch_t38_options_t * D.47139;
  int D.47136;
  size_t D.47135;

  parser = 0B;
  t38_options = 0B;
  D.47135 = strlen (r_sdp);
  D.47136 = (int) D.47135;
  parser = sdp_parse (0B, r_sdp, D.47136, 0);
  if (parser == 0B) goto <D.47137>; else goto <D.47138>;
  <D.47137>:
  D.47139 = 0B;
  goto <D.47151>;
  <D.47138>:
  sdp = sdp_session (parser);
  if (sdp == 0B) goto <D.47140>; else goto <D.47141>;
  <D.47140>:
  sdp_parser_free (parser);
  D.47139 = 0B;
  goto <D.47151>;
  <D.47141>:
  m = sdp->sdp_media;
  goto <D.38408>;
  <D.38407>:
  D.47142 = m->m_proto;
  if (D.47142 == 258) goto <D.47143>; else goto <D.47144>;
  <D.47143>:
  D.47145 = m->m_type;
  if (D.47145 == 8) goto <D.47146>; else goto <D.47147>;
  <D.47146>:
  D.47148 = m->m_port;
  if (D.47148 != 0) goto <D.47149>; else goto <D.47150>;
  <D.47149>:
  t38_options = switch_core_media_process_udptl (session, sdp, m);
  goto <D.38406>;
  <D.47150>:
  <D.47147>:
  <D.47144>:
  m = m->m_next;
  <D.38408>:
  if (m != 0B) goto <D.38407>; else goto <D.38406>;
  <D.38406>:
  sdp_parser_free (parser);
  D.47139 = t38_options;
  goto <D.47151>;
  <D.47151>:
  return D.47139;
}



;; Function switch_core_media_get_zrtp_hash (switch_core_media_get_zrtp_hash)

switch_core_media_get_zrtp_hash (struct switch_core_session_t * session, switch_media_type_t type, switch_bool_t local)
{
  struct switch_rtp_engine_t * engine;
  unsigned int D.47157;
  struct switch_rtp_engine_t[2] * D.47156;
  const char * D.47155;
  struct switch_media_handle_t * D.47152;

  D.47152 = session->media_handle;
  if (D.47152 == 0B) goto <D.47153>; else goto <D.47154>;
  <D.47153>:
  D.47155 = 0B;
  goto <D.47160>;
  <D.47154>:
  D.47152 = session->media_handle;
  D.47156 = &D.47152->engines;
  D.47157 = type * 11416;
  engine = D.47156 + D.47157;
  if (local != 0) goto <D.47158>; else goto <D.47159>;
  <D.47158>:
  D.47155 = engine->local_sdp_zrtp_hash;
  goto <D.47160>;
  <D.47159>:
  D.47155 = engine->remote_sdp_zrtp_hash;
  goto <D.47160>;
  <D.47160>:
  return D.47155;
}



;; Function switch_core_media_pass_zrtp_hash (switch_core_media_pass_zrtp_hash)

switch_core_media_pass_zrtp_hash (struct switch_core_session_t * session)
{
  static const char __func__[33] = "switch_core_media_pass_zrtp_hash";
  struct switch_core_session_t * other_session;
  struct switch_channel_t * channel;
  struct switch_core_session_t * other_session.172;
  struct switch_core_session_t * D.47170;
  struct switch_core_session_t * D.47169;
  switch_status_t D.47166;
  struct switch_core_session_t * D.47165;
  uint32_t D.47162;
  struct switch_core_session_t * D.47161;

  channel = switch_core_session_get_channel (session);
  D.47161 = switch_channel_get_session (channel);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 289, D.47161, 101, "Deciding whether to pass zrtp-hash between legs\n");
  D.47162 = switch_channel_test_flag (channel, 73);
  if (D.47162 == 0) goto <D.47163>; else goto <D.47164>;
  <D.47163>:
  D.47165 = switch_channel_get_session (channel);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 291, D.47165, 101, "CF_ZRTP_PASSTHRU_REQ not set, so not propagating zrtp-hash\n");
  goto <D.47172>;
  <D.47164>:
  D.47166 = switch_core_session_perform_get_partner (session, &other_session, "src/switch_core_media.c", &__func__, 293);
  if (D.47166 != 0) goto <D.47167>; else goto <D.47168>;
  <D.47167>:
  D.47169 = switch_channel_get_session (channel);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 294, D.47169, 101, "No partner channel found, so not propagating zrtp-hash\n");
  goto <D.47172>;
  <D.47168>:
  D.47170 = switch_channel_get_session (channel);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 297, D.47170, 101, "Found peer channel; propagating zrtp-hash if set\n");
  other_session.172 = other_session;
  switch_core_media_pass_zrtp_hash2 (session, other_session.172);
  other_session.172 = other_session;
  switch_core_session_rwunlock (other_session.172);
  <D.47172>:
  return;
}



;; Function switch_core_media_pass_zrtp_hash2 (switch_core_media_pass_zrtp_hash2)

switch_core_media_pass_zrtp_hash2 (struct switch_core_session_t * aleg_session, struct switch_core_session_t * bleg_session)
{
  _switch_core_media_pass_zrtp_hash2 (aleg_session, bleg_session, 0);
  _switch_core_media_pass_zrtp_hash2 (aleg_session, bleg_session, 1);
  return;
}



;; Function _switch_core_media_pass_zrtp_hash2 (_switch_core_media_pass_zrtp_hash2)

_switch_core_media_pass_zrtp_hash2 (struct switch_core_session_t * aleg_session, struct switch_core_session_t * bleg_session, switch_media_type_t type)
{
  static const char __func__[35] = "_switch_core_media_pass_zrtp_hash2";
  struct switch_rtp_engine_t * bleg_engine;
  struct switch_rtp_engine_t * aleg_engine;
  char * D.47199;
  char * D.47198;
  struct switch_core_session_t * D.47197;
  char * D.47194;
  char * D.47193;
  struct switch_channel_t * D.47192;
  char * D.47191;
  struct switch_core_session_t * D.47190;
  char * D.47187;
  struct switch_core_session_t * D.47186;
  uint32_t D.47183;
  struct switch_core_session_t * D.47182;
  struct switch_channel_t * D.47181;
  struct switch_rtp_engine_t[2] * D.47180;
  unsigned int D.47179;
  struct switch_rtp_engine_t[2] * D.47178;
  struct switch_media_handle_t * D.47177;
  struct switch_media_handle_t * D.47175;

  D.47175 = aleg_session->media_handle;
  if (D.47175 == 0B) goto <D.47173>; else goto <D.47176>;
  <D.47176>:
  D.47177 = bleg_session->media_handle;
  if (D.47177 == 0B) goto <D.47173>; else goto <D.47174>;
  <D.47173>:
  goto <D.47200>;
  <D.47174>:
  D.47175 = aleg_session->media_handle;
  D.47178 = &D.47175->engines;
  D.47179 = type * 11416;
  aleg_engine = D.47178 + D.47179;
  D.47177 = bleg_session->media_handle;
  D.47180 = &D.47177->engines;
  D.47179 = type * 11416;
  bleg_engine = D.47180 + D.47179;
  D.47181 = aleg_session->channel;
  D.47182 = switch_channel_get_session (D.47181);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 255, D.47182, 101, "Deciding whether to pass zrtp-hash between a-leg and b-leg\n");
  D.47181 = aleg_session->channel;
  D.47183 = switch_channel_test_flag (D.47181, 73);
  if (D.47183 == 0) goto <D.47184>; else goto <D.47185>;
  <D.47184>:
  D.47181 = aleg_session->channel;
  D.47186 = switch_channel_get_session (D.47181);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 259, D.47186, 101, "CF_ZRTP_PASSTHRU_REQ not set on a-leg, so not propagating zrtp-hash\n");
  goto <D.47200>;
  <D.47185>:
  D.47187 = aleg_engine->remote_sdp_zrtp_hash;
  if (D.47187 != 0B) goto <D.47188>; else goto <D.47189>;
  <D.47188>:
  D.47181 = aleg_session->channel;
  D.47190 = switch_channel_get_session (D.47181);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 265, D.47190, 7, "Passing a-leg remote zrtp-hash (audio) to b-leg\n");
  D.47187 = aleg_engine->remote_sdp_zrtp_hash;
  D.47191 = switch_core_perform_session_strdup (bleg_session, D.47187, "src/switch_core_media.c", &__func__, 266);
  bleg_engine->local_sdp_zrtp_hash = D.47191;
  D.47192 = bleg_session->channel;
  D.47193 = bleg_engine->local_sdp_zrtp_hash;
  switch_channel_set_variable_var_check (D.47192, "l_sdp_audio_zrtp_hash", D.47193, 1);
  <D.47189>:
  D.47194 = bleg_engine->remote_sdp_zrtp_hash;
  if (D.47194 != 0B) goto <D.47195>; else goto <D.47196>;
  <D.47195>:
  D.47181 = aleg_session->channel;
  D.47197 = switch_channel_get_session (D.47181);
  switch_log_printf (3, "src/switch_core_media.c", &__func__, 271, D.47197, 7, "Passing b-leg remote zrtp-hash (audio) to a-leg\n");
  D.47194 = bleg_engine->remote_sdp_zrtp_hash;
  D.47198 = switch_core_perform_session_strdup (aleg_session, D.47194, "src/switch_core_media.c", &__func__, 272);
  aleg_engine->local_sdp_zrtp_hash = D.47198;
  D.47181 = aleg_session->channel;
  D.47199 = aleg_engine->local_sdp_zrtp_hash;
  switch_channel_set_variable_var_check (D.47181, "l_sdp_audio_zrtp_hash", D.47199, 1);
  <D.47196>:
  <D.47200>:
  return;
}



;; Function switch_core_media_crypto_keylen (switch_core_media_crypto_keylen)

switch_core_media_crypto_keylen (switch_rtp_crypto_key_type_t type)
{
  static const char __PRETTY_FUNCTION__[32] = "switch_core_media_crypto_keylen";
  int D.47203;

  if (type > 8) goto <D.47201>; else goto <D.47202>;
  <D.47201>:
  __assert_fail ("type < CRYPTO_INVALID", "src/switch_core_media.c", 229, &__PRETTY_FUNCTION__);
  <D.47202>:
  D.47203 = SUITES[type].keylen;
  goto <D.47204>;
  <D.47204>:
  return D.47203;
}



;; Function switch_core_media_crypto_type2str (switch_core_media_crypto_type2str)

switch_core_media_crypto_type2str (switch_rtp_crypto_key_type_t type)
{
  static const char __PRETTY_FUNCTION__[34] = "switch_core_media_crypto_type2str";
  const char * D.47207;

  if (type > 8) goto <D.47205>; else goto <D.47206>;
  <D.47205>:
  __assert_fail ("type < CRYPTO_INVALID", "src/switch_core_media.c", 222, &__PRETTY_FUNCTION__);
  <D.47206>:
  D.47207 = SUITES[type].name;
  goto <D.47208>;
  <D.47208>:
  return D.47207;
}



;; Function switch_core_media_crypto_str2type (switch_core_media_crypto_str2type)

switch_core_media_crypto_str2type (const char * str)
{
  int i;
  switch_rtp_crypto_key_type_t D.47214;
  int D.47211;
  size_t D.47210;
  char * D.47209;

  i = 0;
  goto <D.38330>;
  <D.38329>:
  D.47209 = SUITES[i].name;
  D.47209 = SUITES[i].name;
  D.47210 = strlen (D.47209);
  D.47211 = strncasecmp (str, D.47209, D.47210);
  if (D.47211 == 0) goto <D.47212>; else goto <D.47213>;
  <D.47212>:
  D.47214 = SUITES[i].type;
  goto <D.47215>;
  <D.47213>:
  i = i + 1;
  <D.38330>:
  if (i <= 8) goto <D.38329>; else goto <D.38331>;
  <D.38331>:
  D.47214 = 9;
  goto <D.47215>;
  <D.47215>:
  return D.47214;
}


