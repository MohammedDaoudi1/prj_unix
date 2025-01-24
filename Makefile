README.md: guessinggame.sh
	@echo "# Projet de Deviner le Nombre de Fichiers" > README.md
	@echo "Date et Heure d'Exécution: $(shell date)" >> README.md
	@echo "Nombre de lignes dans guessinggame.sh: $(shell wc -l < guessinggame.sh)" >> README.md
	@echo "Exécution du Makefile terminée." >> README.md
	@echo "Le projet est maintenant prêt. Veuillez consulter le dépôt GitHub." >> README.md

run:
	@bash guessinggame.sh
