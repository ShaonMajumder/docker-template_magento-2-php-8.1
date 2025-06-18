docker exec -it magento-app php bin/magento module:enable Strativ_ProductTags
docker exec -it magento-app php bin/magento setup:upgrade
docker exec -it magento-app php bin/magento setup:di:compile
docker exec -it magento-app php bin/magento setup:static-content:deploy -f
docker exec -it magento-app php bin/magento cache:clean
docker exec -it magento-app php bin/magento cache:flush