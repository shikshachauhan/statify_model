require 'test_helper'

class TalkTest < ActiveSupport::TestCase
  talk = Talk.new
  talk1 = Talk.new
  talk2 = Talk.new

  test "enable" do
    talk.enable
    assert_equal true, talk.enabled
  end

  test "disable" do
    talk.disable
    assert_equal false, talk.enabled
  end

  test 'disabled? true' do
    talk.disable
    assert_equal true, talk.disabled?
  end

  test 'disabled? false' do
    talk.enable
    assert_equal false, talk.disabled?
  end

  test 'toggle_status when enabled' do
    talk.enable
    talk.toggle_status
    assert_equal true, talk.disabled?
  end

  test 'toggle_status when disabled' do
    talk.disable
    talk.toggle_status
    assert_equal true, talk.enabled?
  end

  test '.enabled' do
    talk = Talk.new
    talk1 = Talk.new
    talk2 = Talk.new
    talk.enable
    talk1.enable
    talk2.disable
    assert_equal [talk.id, talk1.id], Talk.enabled.pluck(:id)
  end

  test '.disabled' do
    talk = Talk.new
    talk1 = Talk.new
    talk2 = Talk.new
    talk.enable
    talk1.enable
    talk2.disable
    assert_equal [talk2.id], Talk.disabled.pluck(:id)
  end
end
