require "rails_helper"

RSpec.describe Activity, type: :model do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:description) }
  it { is_expected.to validate_presence_of(:instructions) }
  it { is_expected.to have_many(:activityitems) }
  it { is_expected.to have_many(:items).through(:activityitems) }
end
