# you can run:
# $ . ./env.sample.sh
# to create an env.sh executable.
export REDIS_URL='redis://localhost:6379'
export MAILCANNON_MONITOR_USERNAME=''
export MAILCANNON_MONITOR_PASSWORD=''

cat env.sample.sh | grep "export\s" > env.sh
chmod +x env.sh