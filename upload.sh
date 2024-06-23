if [ -f ~/rom/out/target/product/X01BD/qassa*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/X01BD/ && ls qassa*.zip)"
      rclone copy ~/rom/out/target/product/X01BD/qassa*.zip qassa:qassa -P
      curl bashupload.com -T ~/rom/out/target/product/X01BD/qassa*.zip
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/X01BD/ && ls qassa*.zip) Uploaded Successfully!"
fi
