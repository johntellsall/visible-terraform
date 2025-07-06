all:

show-res:
	-ls -l test.zip

plan: show-res
	TF_LOG=info terraform plan
	$(MAKE) show-res

apply: show-res
	TF_LOG=info terraform apply -auto-approve
	$(MAKE) show-res

show-all:
	./show-lockfile.sh
	./show-dotterraform.sh
	./show-providers.sh
	./show-tfstate.sh

zap-resources:
	-$(RM) test.zip