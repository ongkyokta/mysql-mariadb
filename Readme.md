Mariadb Mysql Base Image

before run kubectl apply -f mysql-pv.yaml, makesure you have persistent-disk on your project, chek on mysql-pv.yaml on this line code `pdName: rnd-mysql-disk`
this is name for persistent-disk GCE

if you use linux : 

1. edit  `<url-registry>` image on image-build.sh, image-push.sh and mysql-deplyment.yaml
2. open run-first-k8-all.sh
3. edit for `<root-password>`, `<user-mysql>` and `<password-mysql>` in this line code mysql-secret.sh root_password user_mysql password_mysql 
4. just run : run-first-k8-all.sh


Build if other linux :

1. docker buildx build --platform linux/amd64 --rm -t `<your-url-docker-registry>`/mysql:latest .
2. docker push `<your-url-docker-registry>`/mysql:latest
3. kubectl create secret generic rnd-mysql-secret --from-literal=ROOT_PASSWORD=`<set-your-root-pass-> `--from-literal=MYSQL_USER=`<your-user-mysql>` --from-literal=MYSQL_PASSWORD=`<your-pass-mysql>`
4. kubectl apply -f mysql-pvc.yaml
5. kubectl apply -f mysql-pv.yaml
6. kubectl apply -f mongo-deployment.yaml
7. kubectl apply -f mongo-service.yaml

