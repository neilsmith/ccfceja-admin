json.teams @teams do |team|
  json.slug team.slug
  json.name team.name

  json.manager_1_position team.manager_1_position if team.manager_1_position.present?
  json.manager_1_name team.manager_1_name if team.manager_1_name.present?
  json.manager_2_position team.manager_2_position if team.manager_2_position.present?
  json.manager_2_name team.manager_2_name if team.manager_2_name.present?
  json.manager_3_position team.manager_3_position if team.manager_3_position.present?
  json.manager_3_name team.manager_3_name if team.manager_3_name.present?
  json.manager_4_position team.manager_4_position if team.manager_4_position.present?
  json.manager_4_name team.manager_4_name if team.manager_4_name.present?

  json.fa_embeds do
    json.table do
      json.lrcode team.fa_table_lrcode
      json.divisonseason team.fa_table_division_season
    end
    json.fixtures do
      json.lrcode team.fa_fixture_lrcode
      json.divisonseason team.fa_fixture_division_season
    end
  end

  json.twitter_handle team.twitter_handle if team.twitter_handle.present?
  json.players team.players.map { |p| {name: p.strip} } if team.players&.any?
  json.team_photo url_for(team.team_photo) if team.team_photo.present?
end
