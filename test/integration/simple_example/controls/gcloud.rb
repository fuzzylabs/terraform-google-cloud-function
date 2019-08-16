project_id = attribute('project_id')
service_account_email = attribute('service_account_email')

control "gcloud" do
  title "gcloud"

  describe command("gcloud --project=#{project_id} services list --enabled") do
    its(:exit_status) { should eq 0 }
    its(:stderr) { should eq "" }
    its(:stdout) { should match "cloudfunctions.googleapis.com" }
  end
end
