/// @description Create control objects and core methods

randomize();

if (!audio_group_is_loaded(sfx_run_concrete))  {audio_group_load(sfx_run_concrete)}
if (!audio_group_is_loaded(sfx_land_concrete)) {audio_group_load(sfx_land_concrete)}
if (!audio_group_is_loaded(sfx_run_grass))     {audio_group_load(sfx_run_grass)}
if (!audio_group_is_loaded(sfx_land_grass))    {audio_group_load(sfx_land_grass)}
if (!audio_group_is_loaded(sfx_run_metal))     {audio_group_load(sfx_run_metal)}
if (!audio_group_is_loaded(sfx_land_metal))    {audio_group_load(sfx_land_metal)}
if (!audio_group_is_loaded(sfx_run_carpet))    {audio_group_load(sfx_run_carpet)}
if (!audio_group_is_loaded(sfx_land_carpet))   {audio_group_load(sfx_land_carpet)}
if (!audio_group_is_loaded(sfx_player_hit))    {audio_group_load(sfx_player_hit)}

if (!instance_exists(obj_audio))       {instance_create_layer(-32, -32, "Game", obj_audio)}
if (!instance_exists(obj_camera))      {instance_create_layer(-32, -32, "Game", obj_camera)}
if (!instance_exists(obj_particle))    {instance_create_layer(-32, -32, "Game", obj_particle)}
if (!instance_exists(obj_pause_menu))  {instance_create_layer(-32, -32, "Game", obj_pause_menu)}