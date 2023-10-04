if [ -f ~/rom/out/target/product/sagit/evolution-*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/sagit/ && ls evolution-*.zip)"
      rclone copy ~/rom/out/target/product/sagit/evolution-*.zip sagit:evolutionx -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/sagit/ && ls evolution-*.zip) Uploaded Successfully!"
fi
