create_and_push_image:
ifdef gcloud_project
	docker build --build-arg BASE_PATH=/umami --build-arg DATABASE_TYPE=postgresql -t eu.gcr.io/$(gcloud_project)/umami .
	docker push eu.gcr.io/$(gcloud_project)/umami
else
	@echo 'gcloud_project not defined'
endif
