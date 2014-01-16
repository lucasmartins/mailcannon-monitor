# you can run:
# $ . ./env.sample.sh
# to use these variables.
export REDIS_URL='redis://localhost:6379'

cat env.sample.sh | grep "export\s" > env.sh
chmod +x env.sh