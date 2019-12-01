# frozen_string_literal: true

RSpec.describe Strings::Inflect, "#singularize" do
  inflections_example("nouns") do |singular, plural|
    it "singularizes #{plural} -> #{singular}" do
      expect(Strings::Inflect.singularize(plural)).to eq(singular)
    end
  end

  it "singularizes nounlist" do
    inflections_example("nounlist") do |singular, plural|
      expect(Strings::Inflect.singularize(plural)).to eq(singular)
    end
  end

  inflections_example("verbs") do |singular, plural|
    it "singularizes #{plural} -> #{singular}" do
      expect(Strings::Inflect.singularize(plural, term: :verb)).to eq(singular)
    end
  end

  it "singularizes verblist" do
    inflections_example("verblist") do |singular, plural|
      expect(Strings::Inflect.singularize(plural, term: :verb)).to eq(singular)
    end
  end
end
