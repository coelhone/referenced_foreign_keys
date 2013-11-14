module ReferencedForeignKeys
  module TableDefinition
    def self.included(base)
      base.class_eval do
        alias_method_chain :references, :foreign_key
        alias_method_chain :belongs_to, :foreign_key
      end
    end

    def references_with_foreign_key(*args)
      references_without_foreign_key(*args)
      options = args.extract_options!
      args.each { |col| foreign_key(col.to_s.pluralize) } if options.delete(:fk)
    end

    def belongs_to_with_foreign_key(*args)
      belongs_to_without_foreign_key(*args)
      options = args.extract_options!
      args.each { |col| foreign_key(col.to_s.pluralize) } if options.delete(:fk)
    end
  end
end

ActiveRecord::ConnectionAdapters::TableDefinition.class_eval { include ReferencedForeignKeys::TableDefinition }
