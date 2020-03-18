# frozen_string_literal: true

class ActiveRecord::Migrator
  class << self
    def any_migrations?
      true
    end

    def schema_migrations_table_name
      'oh.' + ActiveRecord::SchemaMigration.table_name
    end
  end
end
