require "rails_helper"

RSpec.describe Activityitem, type: :model do
  it { is_expected.to validate_presence_of(:activity) }
  it { is_expected.to validate_presence_of(:item) }
  it { is_expected.to belong_to(:activity) }
  it { is_expected.to belong_to(:item) }
end
