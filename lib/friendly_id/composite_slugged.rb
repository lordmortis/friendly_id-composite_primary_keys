module FriendlyId
  module CompositeSlugged

    # FriendlyId::Config.use will invoke this method when present, to allow
    # loading dependent modules prior to overriding them when necessary.
    def self.setup(model_class)
      model_class.friendly_id_config.use :slugged
    end

    def scope_for_slug_generator
      scope = self.class.base_class.unscoped
      scope = scope.friendly unless scope.respond_to?(:exists_by_friendly_id?)
      primary_key_name = self.class.primary_key
      # if it's an array, we've got a composite key, so we need a different scope
      if primary_key_name.is_a? Array
        whereclause = nil
        primary_key_name.each do |key|
          if whereclause.blank?
            whereclause = self.class.base_class.arel_table[key].not_eq(send(key))
          else
            whereclause = whereclause.and(self.class.base_class.arel_table[key].not_eq(send(key)))
          end
        end
      else
        whereclause = self.class.base_class.arel_table[primary_key_name].not_eq(send(primary_key_name))
      end
      scope.where(whereclause)
    end
    private :scope_for_slug_generator

  end
end
