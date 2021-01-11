#Scipt_to_install_and_run_3tier_application_on_GCP_ComputeEngine_ 

#Create Instance Template ()
gcloud compute instance-templates create myinstancetemp1


#Create Instance from InstanceTemplate
gcloud compute instances create mycomputeeng1 --source-instance-template myinstancetemp1 \
   --metadata startup-script-url=https://github.com/VikalpBhatt/3Challenges/blob/main/Challenge1/startup-script.sh

#----------------------cloning the repo and running the application--------------------------------

git clone https://github.com/VikalpBhatt/Application3Tier

cd Application3Tier

docker-compose up -d

