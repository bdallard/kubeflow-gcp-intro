export PROJECT=<yout-gcp-project-id>

echo "🐳 Building app"
docker build -t myapp . 
echo "✅ App builded in docker"

docker tag myapp gcr.io/$PROJECT/myapp
echo "✅ App tagged"

docker push gcr.io/$PROJECT/myapp
echo "✅ Image push on Google Cloud Registery"

