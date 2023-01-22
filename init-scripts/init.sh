#!/bin/sh

# ask for variables
echo "Name of the project?"
read PROJECT_NAME

echo "Description of the project?"
read PROJECT_DESCRIPTION

echo "Author of the package?"
read AUTHOR

echo "GitHub username / organization?"
read GITHUB_USER

echo "Add package keywords for npm: (separated by comma)"
read KEYWORDS

YEAR=$(date +"%Y")


# go through the following files
FILES="LICENSE README.md package.json"

for f in $FILES; do

	echo "Updating $f..."
	sed -i "" "s/v__PROJECT_NAME/$PROJECT_NAME/g" $f
	sed -i "" "s/v__PROJECT_DESCRIPTION/$PROJECT_DESCRIPTION/g" $f
	sed -i "" "s/v__AUTHOR/$AUTHOR/g" $f
	sed -i "" "s/v__GITHUB_USER/$GITHUB_USER/g" $f
	sed -i "" "s/v__YEAR/$YEAR/g" $f

	# wrap keywords in quotes (commas are already there)
	KEYWORDS_STRING=$(echo $KEYWORDS | sed "s/[ ]*,[ ]*/\",\"/g")
	sed -i "" "s/\"v__NPM_KEYWORDS\"/\"$KEYWORDS_STRING\"/g" $f
done

# format updated files
pnpm prettier --write .

echo "Enable github workflows? (y/n)"
read ENABLE_GITHUB_WORKFLOWS

if [ "$ENABLE_GITHUB_WORKFLOWS" = "y" ]; then
	mv .disabled.github .github
fi

echo "Delete init-scripts folder? (y/n)"
read DELETE_INIT_SCRIPTS

if [ "$DELETE_INIT_SCRIPTS" = "y" ]; then
	rm -rf ./init-scripts
fi
