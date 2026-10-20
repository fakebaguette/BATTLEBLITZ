$data modify storage $(storage_name) player_display_hp set value "§f$(player_hp)"
$data modify storage $(storage_name) player_display_hp set value "$(absorp_icon)$(resist_icon)$(health_icon)$(effect_space)§f$(player_hp)"

$function battle:other/hp_display/5-assign_hp with storage $(storage_name)