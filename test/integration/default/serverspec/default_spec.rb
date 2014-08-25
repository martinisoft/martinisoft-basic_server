require 'spec_helper'

describe 'A Martini Software Server' do

  it 'has build-essential installed for compiling' do
    expect(package('build-essential')).to be_installed
  end

  it 'has openssl installed' do
    expect(command('which openssl')).to return_exit_status(0)
  end

  it 'sets the hostname to the node name' do
    expect(command('hostname')).to return_stdout('walle')
  end

  it 'sets the FQDN to the full node name' do
    expect(command('hostname -f')).to return_stdout('walle.martinisoftware.com')
  end

end
