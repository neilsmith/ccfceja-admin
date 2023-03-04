data = JSON.load(File.open("data.json"))

data["teams"].each do |team|
  Team.create!(
    slug: team["slug"],
    name: team["name"],
    manager_1_position: team["manager_1_position"],
    manager_1_name: team["manager_1_name"],
    manager_2_position: team["manager_2_position"],
    manager_2_name: team["manager_2_name"],
    manager_3_position: team["manager_3_position"],
    manager_3_name: team["manager_3_name"],
    manager_4_position: team["manager_4_position"],
    manager_4_name: team["manager_4_name"],

    fa_table_lrcode: team["fa_embeds"]["table"]["lrcode"],
    fa_table_division_season: team["fa_embeds"]["table"]["divisionseason"],
    fa_fixture_lrcode: team["fa_embeds"]["fixtures"]["lrcode"],
    fa_fixture_division_season: team["fa_embeds"]["fixtures"]["divisionseason"],

    players: begin
      team["players"].map { |p| p["name"] }
    rescue
      nil
    end
  )
end
