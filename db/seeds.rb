
[:superadmin, :supervisor, :student].each do |role|
  Role.create({ name: role,created_at: DateTime.now,updated_at: DateTime.now })
end

