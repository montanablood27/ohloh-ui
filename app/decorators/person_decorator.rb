class PersonDecorator < Cherry::Decorator
  def contributions
    object.contributions.includes([{ contributor_fact: :name }, :project])
  end
end
