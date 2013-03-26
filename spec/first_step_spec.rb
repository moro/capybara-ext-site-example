require 'spec_helper'

describe '@moro on github.com' do
  before do
    Capybara.app_host  = 'http://github.com/'
  end

  specify 'should be displayed.' do
    visit '/moro'

    page.should have_content('MOROHASHI Kyosuke')
  end
end
