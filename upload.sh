if [ -f ~/rom/out/target/product/sagit/DerpFest*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/sagit/ && ls DerpFest*.zip)"
      rclone copy ~/rom/out/target/product/sagit/DerpFest*.zip sagit:derpfest -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/sagit/ && ls DerpFest*.zip) Uploaded Successfully!"
fi
