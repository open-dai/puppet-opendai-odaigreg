# wso2greg_version.rb:
#

require 'facter'

if  FileTest.exists?("/bin/rpm")
	Facter.add("wso2greg_version") do
		setcode do
			%x{/bin/rpm -qa --queryformat "%{VERSION}" wso2greg}
		end
	end
end