require 'rails_helper'

RSpec.describe Package do

  # Validation tests
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:version) }
  it { is_expected.to validate_uniqueness_of(:version_tracker)}

end
