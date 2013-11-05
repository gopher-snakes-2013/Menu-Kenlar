require 'spec_helper'

describe Item do
  it {should validate_presence_of(:name)}
  it {should validate_uniqueness_of(:name)}
  it {should validate_presence_of(:price)}

  it {should belong_to :menu}
end