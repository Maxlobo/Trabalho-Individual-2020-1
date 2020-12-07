set -e

if [ "$FRONT_MODE" = "build" ]
then
    yarn build
elif [ "$FRONT_MODE" = "test" ]
then
    yarn test:unit
elif [ "$FRONT_MODE" = "dev" ]
then
    yarn dev
else
    echo "Unknown FRONT_MODE value..."
fi