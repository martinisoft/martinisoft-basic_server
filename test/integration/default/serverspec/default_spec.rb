require 'spec_helper'

describe 'A Martini Software Server' do

  it 'has build-essential installed for compiling' do
    expect(package('build-essential')).to be_installed
  end

  it 'has openssl installed' do
    expect(command('which openssl')).to return_exit_status(0)
  end

  describe 'has a "martinisoft" user' do

    it 'that exists' do
      expect(user('martinisoft')).to exist
    end

    it 'that belongs to the "admin" group' do
      expect(user('martinisoft')).to belong_to_group('admin')
    end

  end

end
