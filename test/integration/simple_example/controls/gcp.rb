project_id = attribute('project_id')
service_account_email = attribute('service_account_email')
location = attribute('region')
cloud_function_name = attribute('cloud_function_name')

control "gcp" do
  title "GCP Resources"

  describe google_service_account(name: "projects/#{project_id}/serviceAccounts/#{service_account_email}") do
    its('project_id') { should eq "#{project_id}" }
  end

  describe google_project_iam_binding(project: "#{project_id}",  role: 'roles/viewer') do
    its('members') {should include "serviceAccount:#{service_account_email}" }
  end

  describe google_cloudfunctions_cloud_function(project: "#{project_id}", location: "#{location}", name: "#{cloud_function_name}") do
    it { should exist }
    its('description') { should eq 'Created by Terraform' }
    its('available_memory_mb') { should eq 128 }
    its('https_trigger.url') { should match /\/#{cloud_function_name}$/ }
  end

end
